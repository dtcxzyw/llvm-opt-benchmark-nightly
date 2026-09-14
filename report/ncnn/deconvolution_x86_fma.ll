Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_fma?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN4ncnn21Deconvolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.vk = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 96
  %gep.us.3.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.3.i ; 8 uses
  %gep1189.us.31574.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.i
  %i.vl = load float, ptr %gep1189.us.31574.i, align 4, !tbaa !39
  store float %i.vl, ptr %i.vk, align 4, !tbaa !39
  %i.vm = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 100
  %gep1189.us.1.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.1.i
  %i.vn = load float, ptr %gep1189.us.1.3.i, align 4, !tbaa !39
  store float %i.vn, ptr %i.vm, align 4, !tbaa !39
  %i.vo = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 104
  %gep1189.us.2.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.2.i
  %i.vp = load float, ptr %gep1189.us.2.3.i, align 4, !tbaa !39
  store float %i.vp, ptr %i.vo, align 4, !tbaa !39
  %i.vq = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 108
  %gep1189.us.3.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.3.i
  %i.vr = load float, ptr %gep1189.us.3.3.i, align 4, !tbaa !39
  store float %i.vr, ptr %i.vq, align 4, !tbaa !39
  %i.vs = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 112
  %gep1189.us.4.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.4.i
  %i.vt = load float, ptr %gep1189.us.4.3.i, align 4, !tbaa !39
  store float %i.vt, ptr %i.vs, align 4, !tbaa !39
  %i.vu = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 116
  %gep1189.us.5.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.5.i
  %i.vv = load float, ptr %gep1189.us.5.3.i, align 4, !tbaa !39
  store float %i.vv, ptr %i.vu, align 4, !tbaa !39
  %i.vw = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 120
  %gep1189.us.6.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.6.i
  %i.vx = load float, ptr %gep1189.us.6.3.i, align 4, !tbaa !39
  store float %i.vx, ptr %i.vw, align 4, !tbaa !39
  %i.vy = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 124
  %gep1189.us.7.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.7.i
  %i.vz = load float, ptr %gep1189.us.7.3.i, align 4, !tbaa !39
  store float %i.vz, ptr %i.vy, align 4, !tbaa !39
  %i.wa = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 128
  %gep.us.4.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.4.i ; 8 uses
  %gep1189.us.41575.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.i
  %i.wb = load float, ptr %gep1189.us.41575.i, align 4, !tbaa !39
  store float %i.wb, ptr %i.wa, align 4, !tbaa !39
  %i.wc = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 132
  %gep1189.us.1.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.1.i
  %i.wd = load float, ptr %gep1189.us.1.4.i, align 4, !tbaa !39
  store float %i.wd, ptr %i.wc, align 4, !tbaa !39
  %i.we = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 136
  %gep1189.us.2.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.2.i
  %i.wf = load float, ptr %gep1189.us.2.4.i, align 4, !tbaa !39
  store float %i.wf, ptr %i.we, align 4, !tbaa !39
  %i.wg = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 140
  %gep1189.us.3.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.3.i
  %i.wh = load float, ptr %gep1189.us.3.4.i, align 4, !tbaa !39
  store float %i.wh, ptr %i.wg, align 4, !tbaa !39
  %i.wi = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 144
  %gep1189.us.4.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.4.i
  %i.wj = load float, ptr %gep1189.us.4.4.i, align 4, !tbaa !39
  store float %i.wj, ptr %i.wi, align 4, !tbaa !39
  %i.wk = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 148
  %gep1189.us.5.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.5.i
  %i.wl = load float, ptr %gep1189.us.5.4.i, align 4, !tbaa !39
  store float %i.wl, ptr %i.wk, align 4, !tbaa !39
  %i.wm = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 152
  %gep1189.us.6.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.6.i
  %i.wn = load float, ptr %gep1189.us.6.4.i, align 4, !tbaa !39
  store float %i.wn, ptr %i.wm, align 4, !tbaa !39
  %i.wo = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 156
  %gep1189.us.7.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.7.i
  %i.wp = load float, ptr %gep1189.us.7.4.i, align 4, !tbaa !39
  store float %i.wp, ptr %i.wo, align 4, !tbaa !39
  %i.wq = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 160
  %gep.us.5.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.5.i ; 8 uses
  %gep1189.us.51576.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.i
  %i.wr = load float, ptr %gep1189.us.51576.i, align 4, !tbaa !39
  store float %i.wr, ptr %i.wq, align 4, !tbaa !39
  %i.ws = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 164
  %gep1189.us.1.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.1.i
  %i.wt = load float, ptr %gep1189.us.1.5.i, align 4, !tbaa !39
  store float %i.wt, ptr %i.ws, align 4, !tbaa !39
  %i.wu = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 168
  %gep1189.us.2.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.2.i
  %i.wv = load float, ptr %gep1189.us.2.5.i, align 4, !tbaa !39
  store float %i.wv, ptr %i.wu, align 4, !tbaa !39
  %i.ww = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 172
  %gep1189.us.3.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.3.i
  %i.wx = load float, ptr %gep1189.us.3.5.i, align 4, !tbaa !39
  store float %i.wx, ptr %i.ww, align 4, !tbaa !39
  %i.wy = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 176
  %gep1189.us.4.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.4.i
  %i.wz = load float, ptr %gep1189.us.4.5.i, align 4, !tbaa !39
  store float %i.wz, ptr %i.wy, align 4, !tbaa !39
  %i.xa = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 180
  %gep1189.us.5.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.5.i
  %i.xb = load float, ptr %gep1189.us.5.5.i, align 4, !tbaa !39
  store float %i.xb, ptr %i.xa, align 4, !tbaa !39
  %i.xc = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 184
  %gep1189.us.6.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.6.i
  %i.xd = load float, ptr %gep1189.us.6.5.i, align 4, !tbaa !39
  store float %i.xd, ptr %i.xc, align 4, !tbaa !39
  %i.xe = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 188
  %gep1189.us.7.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.7.i
  %i.xf = load float, ptr %gep1189.us.7.5.i, align 4, !tbaa !39
  store float %i.xf, ptr %i.xe, align 4, !tbaa !39
  %i.xg = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 192
  %gep.us.6.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.6.i ; 8 uses
  %gep1189.us.61577.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.i
  %i.xh = load float, ptr %gep1189.us.61577.i, align 4, !tbaa !39
  store float %i.xh, ptr %i.xg, align 4, !tbaa !39
  %i.xi = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 196
  %gep1189.us.1.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.1.i
  %i.xj = load float, ptr %gep1189.us.1.6.i, align 4, !tbaa !39
  store float %i.xj, ptr %i.xi, align 4, !tbaa !39
  %i.xk = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 200
  %gep1189.us.2.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.2.i
  %i.xl = load float, ptr %gep1189.us.2.6.i, align 4, !tbaa !39
  store float %i.xl, ptr %i.xk, align 4, !tbaa !39
  %i.xm = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 204
  %gep1189.us.3.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.3.i
  %i.xn = load float, ptr %gep1189.us.3.6.i, align 4, !tbaa !39
  store float %i.xn, ptr %i.xm, align 4, !tbaa !39
  %i.xo = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 208
  %gep1189.us.4.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.4.i
  %i.xp = load float, ptr %gep1189.us.4.6.i, align 4, !tbaa !39
  store float %i.xp, ptr %i.xo, align 4, !tbaa !39
  %i.xq = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 212
  %gep1189.us.5.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.5.i
  %i.xr = load float, ptr %gep1189.us.5.6.i, align 4, !tbaa !39
  store float %i.xr, ptr %i.xq, align 4, !tbaa !39
  %i.xs = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 216
  %gep1189.us.6.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.6.i
  %i.xt = load float, ptr %gep1189.us.6.6.i, align 4, !tbaa !39
  store float %i.xt, ptr %i.xs, align 4, !tbaa !39
  %i.xu = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 220
  %gep1189.us.7.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.7.i
  %i.xv = load float, ptr %gep1189.us.7.6.i, align 4, !tbaa !39
  store float %i.xv, ptr %i.xu, align 4, !tbaa !39
  %i.xw = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 224
  %gep.us.7.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.7.i ; 8 uses
  %gep1189.us.71578.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.i
  %i.xx = load float, ptr %gep1189.us.71578.i, align 4, !tbaa !39
  store float %i.xx, ptr %i.xw, align 4, !tbaa !39
  %i.xy = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 228
  %gep1189.us.1.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.1.i
  %i.xz = load float, ptr %gep1189.us.1.7.i, align 4, !tbaa !39
  store float %i.xz, ptr %i.xy, align 4, !tbaa !39
  %i.ya = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 232
  %gep1189.us.2.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.2.i
  %i.yb = load float, ptr %gep1189.us.2.7.i, align 4, !tbaa !39
  store float %i.yb, ptr %i.ya, align 4, !tbaa !39
  %i.yc = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 236
  %gep1189.us.3.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.3.i
  %i.yd = load float, ptr %gep1189.us.3.7.i, align 4, !tbaa !39
  store float %i.yd, ptr %i.yc, align 4, !tbaa !39
  %i.ye = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 240
  %gep1189.us.4.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.4.i
  %i.yf = load float, ptr %gep1189.us.4.7.i, align 4, !tbaa !39
  store float %i.yf, ptr %i.ye, align 4, !tbaa !39
  %i.yg = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 244
  %gep1189.us.5.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.5.i
  %i.yh = load float, ptr %gep1189.us.5.7.i, align 4, !tbaa !39
  store float %i.yh, ptr %i.yg, align 4, !tbaa !39
  %i.yi = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 248
  %gep1189.us.6.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.6.i
  %i.yj = load float, ptr %gep1189.us.6.7.i, align 4, !tbaa !39
  store float %i.yj, ptr %i.yi, align 4, !tbaa !39
  %i.yk = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 252
  %gep1189.us.7.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.7.i
  %i.yl = load float, ptr %gep1189.us.7.7.i, align 4, !tbaa !39
  store float %i.yl, ptr %i.yk, align 4, !tbaa !39
  %i.ym = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 256 ; 3 uses
  %indvars.iv.next1580.i = add nuw nsw i64 %indvars.iv1579.i, 1 ; 2 uses
  %exitcond1583.not.i = icmp eq i64 %indvars.iv.next1580.i, %wide.trip.count1582.i
  br i1 %exitcond1583.not.i, label %._crit_edge1199.us.i, label %.preheader1174.us.i, !llvm.loop !112

._crit_edge1199.us.i:                             ; preds = %.preheader1174.us.i
  %indvars.iv.next1585.i = add nuw nsw i64 %indvars.iv1584.i, 8 ; 3 uses
  %i.yn = icmp slt i64 %indvars.iv.next1585.i, %invariant.op.i
  br i1 %i.yn, label %.preheader1178.us.i, label %.preheader1181.loopexit.i, !llvm.loop !113

.preheader1181.loopexit.i:                        ; preds = %._crit_edge1199.us.i
  %i.yo = trunc nuw nsw i64 %indvars.iv.next1585.i to i32
  br label %.preheader1181.i

.preheader1181.i:                                 ; preds = %.preheader1181.loopexit.i, %.noexc791.i
  %.0523.lcssa.i = phi ptr [ %i.sv, %.noexc791.i ], [ %i.ym, %.preheader1181.loopexit.i ] ; 3 uses
  %.0519.lcssa.i = phi i32 [ 0, %.noexc791.i ], [ %i.yo, %.preheader1181.loopexit.i ] ; 4 uses
  %i.yp = or disjoint i32 %.0519.lcssa.i, 3
  %i.yq = icmp slt i32 %i.yp, %i.bu
  br i1 %i.yq, label %.preheader1177.lr.ph.i, label %.preheader1180.i

.preheader1181.i.thread:                          ; preds = %.preheader1178.lr.ph.i
  br i1 %i.rh, label %.preheader1177.preheader.i, label %.preheader1180.i

.preheader1177.lr.ph.i:                           ; preds = %.preheader1181.i
  %i.yr = load i32, ptr %i.qz, align 4
  %i.ys = load ptr, ptr %3, align 8
  %i.yt = load i64, ptr %i.rb, align 8            ; 2 uses
  %i.yu = sext i32 %i.yr to i64
  %factor.op.mul1210.i = mul i64 %i.yt, %i.yu     ; 4 uses
  br i1 %i.qy, label %.preheader1177.us.preheader.i, label %.preheader1177.preheader.i

.preheader1177.preheader.i:                       ; preds = %.preheader1181.i.thread, %.preheader1177.lr.ph.i
  %.0523.lcssa.i124130 = phi ptr [ %.0523.lcssa.i, %.preheader1177.lr.ph.i ], [ %i.sv, %.preheader1181.i.thread ]
  %.0519.lcssa.i125129 = phi i32 [ %.0519.lcssa.i, %.preheader1177.lr.ph.i ], [ %i.rc, %.preheader1181.i.thread ] ; 2 uses
  %i.yv = add i32 %.0519.lcssa.i125129, 4
  %i.yw = sub i32 %i.re, %.0519.lcssa.i125129
  %i.yx = and i32 %i.yw, -4
  %i.yy = add i32 %i.yv, %i.yx
  br label %.preheader1180.i

.preheader1177.us.preheader.i:                    ; preds = %.preheader1177.lr.ph.i
  %i.yz = load i64, ptr %i.ra, align 8
  %factor.op.mul1205.i = mul i64 %i.yz, %i.yt     ; 8 uses
  %i.za = zext i32 %.0519.lcssa.i to i64
  %.reass.us1223.i = mul i64 %factor.op.mul1205.i, %indvars.iv1634.i ; 4 uses
  %i.zb = or disjoint i64 %indvars.iv1634.i, 1
  %.reass.us1223.1.i = mul i64 %factor.op.mul1205.i, %i.zb ; 4 uses
  %i.zc = or disjoint i64 %indvars.iv1634.i, 2
  %.reass.us1223.2.i = mul i64 %factor.op.mul1205.i, %i.zc ; 4 uses
  %i.zd = or disjoint i64 %indvars.iv1634.i, 3
  %.reass.us1223.3.i = mul i64 %factor.op.mul1205.i, %i.zd ; 4 uses
  %i.ze = or disjoint i64 %indvars.iv1634.i, 4
  %.reass.us1223.4.i = mul i64 %factor.op.mul1205.i, %i.ze ; 4 uses
  %i.zf = or disjoint i64 %indvars.iv1634.i, 5
  %.reass.us1223.5.i = mul i64 %factor.op.mul1205.i, %i.zf ; 4 uses
  %i.zg = or disjoint i64 %indvars.iv1634.i, 6
  %.reass.us1223.6.i = mul i64 %factor.op.mul1205.i, %i.zg ; 4 uses
  %i.zh = or disjoint i64 %indvars.iv1634.i, 7
  %.reass.us1223.7.i = mul i64 %factor.op.mul1205.i, %i.zh ; 4 uses
  br label %.preheader1177.us.i

.preheader1177.us.i:                              ; preds = %._crit_edge1217.us.i, %.preheader1177.us.preheader.i
  %indvars.iv1603.i = phi i64 [ %i.za, %.preheader1177.us.preheader.i ], [ %indvars.iv.next1604.i, %._crit_edge1217.us.i ] ; 5 uses
  %.45271218.us.i = phi ptr [ %.0523.lcssa.i, %.preheader1177.us.preheader.i ], [ %i.abw, %._crit_edge1217.us.i ]
  %.reass1211.us.i = mul i64 %indvars.iv1603.i, %factor.op.mul1210.i
  %i.zi = add nuw nsw i64 %indvars.iv1603.i, 1
  %.reass1211.us.1.i = mul i64 %i.zi, %factor.op.mul1210.i
  %i.zj = add nuw nsw i64 %indvars.iv1603.i, 2
  %.reass1211.us.2.i = mul i64 %i.zj, %factor.op.mul1210.i
  %i.zk = add nuw nsw i64 %indvars.iv1603.i, 3
  %.reass1211.us.3.i = mul i64 %i.zk, %factor.op.mul1210.i
  br label %.preheader1173.us.i

.preheader1173.us.i:                              ; preds = %.preheader1173.us.i, %.preheader1177.us.i
  %indvars.iv1598.i = phi i64 [ 0, %.preheader1177.us.i ], [ %indvars.iv.next1599.i, %.preheader1173.us.i ] ; 2 uses
  %.55281215.us.i = phi ptr [ %.45271218.us.i, %.preheader1177.us.i ], [ %i.abw, %.preheader1173.us.i ] ; 33 uses
  %invariant.gep1212.us.i = getelementptr [4 x i8], ptr %i.ys, i64 %indvars.iv1598.i ; 4 uses
  %gep.us1222.i = getelementptr i8, ptr %invariant.gep1212.us.i, i64 %.reass1211.us.i ; 8 uses
  %gep1207.us.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.i
  %i.zl = load float, ptr %gep1207.us.i, align 4, !tbaa !39
  store float %i.zl, ptr %.55281215.us.i, align 4, !tbaa !39
  %i.zm = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 4
  %gep1207.us.1.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.1.i
  %i.zn = load float, ptr %gep1207.us.1.i, align 4, !tbaa !39
  store float %i.zn, ptr %i.zm, align 4, !tbaa !39
  %i.zo = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 8
  %gep1207.us.2.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.2.i
  %i.zp = load float, ptr %gep1207.us.2.i, align 4, !tbaa !39
  store float %i.zp, ptr %i.zo, align 4, !tbaa !39
  %i.zq = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 12
  %gep1207.us.3.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.3.i
  %i.zr = load float, ptr %gep1207.us.3.i, align 4, !tbaa !39
  store float %i.zr, ptr %i.zq, align 4, !tbaa !39
  %i.zs = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 16
  %gep1207.us.4.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.4.i
  %i.zt = load float, ptr %gep1207.us.4.i, align 4, !tbaa !39
  store float %i.zt, ptr %i.zs, align 4, !tbaa !39
  %i.zu = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 20
  %gep1207.us.5.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.5.i
  %i.zv = load float, ptr %gep1207.us.5.i, align 4, !tbaa !39
  store float %i.zv, ptr %i.zu, align 4, !tbaa !39
  %i.zw = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 24
  %gep1207.us.6.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.6.i
  %i.zx = load float, ptr %gep1207.us.6.i, align 4, !tbaa !39
  store float %i.zx, ptr %i.zw, align 4, !tbaa !39
  %i.zy = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 28
  %gep1207.us.7.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.7.i
  %i.zz = load float, ptr %gep1207.us.7.i, align 4, !tbaa !39
  store float %i.zz, ptr %i.zy, align 4, !tbaa !39
  %i.aaa = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 32
  %gep.us1222.1.i = getelementptr i8, ptr %invariant.gep1212.us.i, i64 %.reass1211.us.1.i ; 8 uses
  %gep1207.us.11595.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.i
  %i.aab = load float, ptr %gep1207.us.11595.i, align 4, !tbaa !39
  store float %i.aab, ptr %i.aaa, align 4, !tbaa !39
  %i.aac = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 36
  %gep1207.us.1.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.1.i
  %i.aad = load float, ptr %gep1207.us.1.1.i, align 4, !tbaa !39
  store float %i.aad, ptr %i.aac, align 4, !tbaa !39
  %i.aae = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 40
  %gep1207.us.2.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.2.i
  %i.aaf = load float, ptr %gep1207.us.2.1.i, align 4, !tbaa !39
  store float %i.aaf, ptr %i.aae, align 4, !tbaa !39
  %i.aag = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 44
  %gep1207.us.3.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.3.i
  %i.aah = load float, ptr %gep1207.us.3.1.i, align 4, !tbaa !39
  store float %i.aah, ptr %i.aag, align 4, !tbaa !39
  %i.aai = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 48
  %gep1207.us.4.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.4.i
  %i.aaj = load float, ptr %gep1207.us.4.1.i, align 4, !tbaa !39
  store float %i.aaj, ptr %i.aai, align 4, !tbaa !39
  %i.aak = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 52
  %gep1207.us.5.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.5.i
  %i.aal = load float, ptr %gep1207.us.5.1.i, align 4, !tbaa !39
  store float %i.aal, ptr %i.aak, align 4, !tbaa !39
  %i.aam = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 56
  %gep1207.us.6.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.6.i
  %i.aan = load float, ptr %gep1207.us.6.1.i, align 4, !tbaa !39
  store float %i.aan, ptr %i.aam, align 4, !tbaa !39
  %i.aao = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 60
  %gep1207.us.7.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.7.i
  %i.aap = load float, ptr %gep1207.us.7.1.i, align 4, !tbaa !39
  store float %i.aap, ptr %i.aao, align 4, !tbaa !39
  %i.aaq = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 64
  %gep.us1222.2.i = getelementptr i8, ptr %invariant.gep1212.us.i, i64 %.reass1211.us.2.i ; 8 uses
  %gep1207.us.21596.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.i
  %i.aar = load float, ptr %gep1207.us.21596.i, align 4, !tbaa !39
  store float %i.aar, ptr %i.aaq, align 4, !tbaa !39
  %i.aas = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 68
  %gep1207.us.1.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.1.i
  %i.aat = load float, ptr %gep1207.us.1.2.i, align 4, !tbaa !39
  store float %i.aat, ptr %i.aas, align 4, !tbaa !39
  %i.aau = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 72
  %gep1207.us.2.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.2.i
  %i.aav = load float, ptr %gep1207.us.2.2.i, align 4, !tbaa !39
  store float %i.aav, ptr %i.aau, align 4, !tbaa !39
  %i.aaw = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 76
  %gep1207.us.3.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.3.i
  %i.aax = load float, ptr %gep1207.us.3.2.i, align 4, !tbaa !39
  store float %i.aax, ptr %i.aaw, align 4, !tbaa !39
  %i.aay = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 80
  %gep1207.us.4.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.4.i
  %i.aaz = load float, ptr %gep1207.us.4.2.i, align 4, !tbaa !39
  store float %i.aaz, ptr %i.aay, align 4, !tbaa !39
  %i.aba = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 84
  %gep1207.us.5.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.5.i
  %i.abb = load float, ptr %gep1207.us.5.2.i, align 4, !tbaa !39
  store float %i.abb, ptr %i.aba, align 4, !tbaa !39
  %i.abc = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 88
  %gep1207.us.6.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.6.i
  %i.abd = load float, ptr %gep1207.us.6.2.i, align 4, !tbaa !39
  store float %i.abd, ptr %i.abc, align 4, !tbaa !39
  %i.abe = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 92
  %gep1207.us.7.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.7.i
  %i.abf = load float, ptr %gep1207.us.7.2.i, align 4, !tbaa !39
  store float %i.abf, ptr %i.abe, align 4, !tbaa !39
  %i.abg = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 96
  %gep.us1222.3.i = getelementptr i8, ptr %invariant.gep1212.us.i, i64 %.reass1211.us.3.i ; 8 uses
  %gep1207.us.31597.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.i
  %i.abh = load float, ptr %gep1207.us.31597.i, align 4, !tbaa !39
  store float %i.abh, ptr %i.abg, align 4, !tbaa !39
  %i.abi = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 100
  %gep1207.us.1.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.1.i
  %i.abj = load float, ptr %gep1207.us.1.3.i, align 4, !tbaa !39
  store float %i.abj, ptr %i.abi, align 4, !tbaa !39
  %i.abk = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 104
  %gep1207.us.2.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.2.i
  %i.abl = load float, ptr %gep1207.us.2.3.i, align 4, !tbaa !39
  store float %i.abl, ptr %i.abk, align 4, !tbaa !39
  %i.abm = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 108
  %gep1207.us.3.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.3.i
  %i.abn = load float, ptr %gep1207.us.3.3.i, align 4, !tbaa !39
  store float %i.abn, ptr %i.abm, align 4, !tbaa !39
  %i.abo = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 112
  %gep1207.us.4.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.4.i
  %i.abp = load float, ptr %gep1207.us.4.3.i, align 4, !tbaa !39
  store float %i.abp, ptr %i.abo, align 4, !tbaa !39
  %i.abq = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 116
  %gep1207.us.5.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.5.i
  %i.abr = load float, ptr %gep1207.us.5.3.i, align 4, !tbaa !39
  store float %i.abr, ptr %i.abq, align 4, !tbaa !39
  %i.abs = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 120
  %gep1207.us.6.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.6.i
  %i.abt = load float, ptr %gep1207.us.6.3.i, align 4, !tbaa !39
  store float %i.abt, ptr %i.abs, align 4, !tbaa !39
  %i.abu = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 124
  %gep1207.us.7.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.7.i
  %i.abv = load float, ptr %gep1207.us.7.3.i, align 4, !tbaa !39
  store float %i.abv, ptr %i.abu, align 4, !tbaa !39
  %i.abw = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 128 ; 3 uses
  %indvars.iv.next1599.i = add nuw nsw i64 %indvars.iv1598.i, 1 ; 2 uses
  %exitcond1602.not.i = icmp eq i64 %indvars.iv.next1599.i, %wide.trip.count1582.i
  br i1 %exitcond1602.not.i, label %._crit_edge1217.us.i, label %.preheader1173.us.i, !llvm.loop !114

._crit_edge1217.us.i:                             ; preds = %.preheader1173.us.i
  %indvars.iv.next1604.i = add nuw nsw i64 %indvars.iv1603.i, 4 ; 2 uses
  %i.abx = trunc i64 %indvars.iv.next1604.i to i32 ; 2 uses
  %i.aby = or i32 %i.abx, 3
  %i.abz = icmp slt i32 %i.aby, %i.bu
  br i1 %i.abz, label %.preheader1177.us.i, label %.preheader1180.i, !llvm.loop !115

.preheader1180.i:                                 ; preds = %._crit_edge1217.us.i, %.preheader1181.i.thread, %.preheader1177.preheader.i, %.preheader1181.i
  %.4527.lcssa.i = phi ptr [ %.0523.lcssa.i, %.preheader1181.i ], [ %i.sv, %.preheader1181.i.thread ], [ %.0523.lcssa.i124130, %.preheader1177.preheader.i ], [ %i.abw, %._crit_edge1217.us.i ] ; 2 uses
  %.1520.lcssa.i = phi i32 [ %.0519.lcssa.i, %.preheader1181.i ], [ %i.rc, %.preheader1181.i.thread ], [ %i.yy, %.preheader1177.preheader.i ], [ %i.abx, %._crit_edge1217.us.i ] ; 3 uses
  %i.aca = or disjoint i32 %.1520.lcssa.i, 1
  %i.acb = icmp slt i32 %i.aca, %i.bu
  br i1 %i.acb, label %.preheader1176.lr.ph.i, label %.preheader1179.i

.preheader1176.lr.ph.i:                           ; preds = %.preheader1180.i
  %i.acc = load i32, ptr %i.qz, align 4
  %i.acd = load ptr, ptr %3, align 8
  %i.ace = load i64, ptr %i.rb, align 8           ; 2 uses
  %i.acf = sext i32 %i.acc to i64
  %factor.op.mul1232.i = mul i64 %i.ace, %i.acf   ; 2 uses
  br i1 %i.qy, label %.preheader1176.us.preheader.i, label %._crit_edge1259.split.i

end_hunk_0
begin_hunk_1_@_ZN4ncnn21Deconvolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.akk = or disjoint i64 %indvars.iv1703.i, 2
  %.reass1269.us.2.i = mul i64 %factor.op.mul1268.i, %i.akk ; 8 uses
  %i.akl = or disjoint i64 %indvars.iv1703.i, 3
  %.reass1269.us.3.i = mul i64 %factor.op.mul1268.i, %i.akl ; 8 uses
  br label %.preheader1163.us.i

.preheader1163.us.i:                              ; preds = %._crit_edge1282.us.i, %.preheader1163.us.preheader.i
  %indvars.iv1653.i = phi i64 [ 0, %.preheader1163.us.preheader.i ], [ %indvars.iv.next1654.i, %._crit_edge1282.us.i ] ; 9 uses
  %.04931284.us.i = phi ptr [ %i.akd, %.preheader1163.us.preheader.i ], [ %i.ane, %._crit_edge1282.us.i ]
  %.reass1276.us.i = mul i64 %indvars.iv1653.i, %factor.op.mul1275.i
  %i.akm = or disjoint i64 %indvars.iv1653.i, 1
  %.reass1276.us.1.i = mul i64 %i.akm, %factor.op.mul1275.i
  %i.akn = or disjoint i64 %indvars.iv1653.i, 2
  %.reass1276.us.2.i = mul i64 %i.akn, %factor.op.mul1275.i
  %i.ako = or disjoint i64 %indvars.iv1653.i, 3
  %.reass1276.us.3.i = mul i64 %i.ako, %factor.op.mul1275.i
  %i.akp = or disjoint i64 %indvars.iv1653.i, 4
  %.reass1276.us.4.i = mul i64 %i.akp, %factor.op.mul1275.i
  %i.akq = or disjoint i64 %indvars.iv1653.i, 5
  %.reass1276.us.5.i = mul i64 %i.akq, %factor.op.mul1275.i
  %i.akr = or disjoint i64 %indvars.iv1653.i, 6
  %.reass1276.us.6.i = mul i64 %i.akr, %factor.op.mul1275.i
  %i.aks = or disjoint i64 %indvars.iv1653.i, 7
  %.reass1276.us.7.i = mul i64 %i.aks, %factor.op.mul1275.i
  br label %.preheader1159.us.i

.preheader1159.us.i:                              ; preds = %.preheader1159.us.i, %.preheader1163.us.i
  %indvars.iv1648.i = phi i64 [ 0, %.preheader1163.us.i ], [ %indvars.iv.next1649.i, %.preheader1159.us.i ] ; 2 uses
  %.14941280.us.i = phi ptr [ %.04931284.us.i, %.preheader1163.us.i ], [ %i.ane, %.preheader1159.us.i ] ; 33 uses
  %invariant.gep1277.us.i = getelementptr [4 x i8], ptr %i.akf, i64 %indvars.iv1648.i ; 8 uses
  %gep.us1288.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.i ; 4 uses
  %gep1272.us.i = getelementptr i8, ptr %gep.us1288.i, i64 %.reass1269.us.i
  %i.akt = load float, ptr %gep1272.us.i, align 4, !tbaa !39
  store float %i.akt, ptr %.14941280.us.i, align 4, !tbaa !39
  %i.aku = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 4
  %gep1272.us.1.i = getelementptr i8, ptr %gep.us1288.i, i64 %.reass1269.us.1.i
  %i.akv = load float, ptr %gep1272.us.1.i, align 4, !tbaa !39
  store float %i.akv, ptr %i.aku, align 4, !tbaa !39
  %i.akw = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 8
  %gep1272.us.2.i = getelementptr i8, ptr %gep.us1288.i, i64 %.reass1269.us.2.i
  %i.akx = load float, ptr %gep1272.us.2.i, align 4, !tbaa !39
  store float %i.akx, ptr %i.akw, align 4, !tbaa !39
  %i.aky = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 12
  %gep1272.us.3.i = getelementptr i8, ptr %gep.us1288.i, i64 %.reass1269.us.3.i
  %i.akz = load float, ptr %gep1272.us.3.i, align 4, !tbaa !39
  store float %i.akz, ptr %i.aky, align 4, !tbaa !39
  %i.ala = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 16
  %gep.us1288.1.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.1.i ; 4 uses
  %gep1272.us.11645.i = getelementptr i8, ptr %gep.us1288.1.i, i64 %.reass1269.us.i
  %i.alb = load float, ptr %gep1272.us.11645.i, align 4, !tbaa !39
  store float %i.alb, ptr %i.ala, align 4, !tbaa !39
  %i.alc = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 20
  %gep1272.us.1.1.i = getelementptr i8, ptr %gep.us1288.1.i, i64 %.reass1269.us.1.i
  %i.ald = load float, ptr %gep1272.us.1.1.i, align 4, !tbaa !39
  store float %i.ald, ptr %i.alc, align 4, !tbaa !39
  %i.ale = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 24
  %gep1272.us.2.1.i = getelementptr i8, ptr %gep.us1288.1.i, i64 %.reass1269.us.2.i
  %i.alf = load float, ptr %gep1272.us.2.1.i, align 4, !tbaa !39
  store float %i.alf, ptr %i.ale, align 4, !tbaa !39
  %i.alg = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 28
  %gep1272.us.3.1.i = getelementptr i8, ptr %gep.us1288.1.i, i64 %.reass1269.us.3.i
  %i.alh = load float, ptr %gep1272.us.3.1.i, align 4, !tbaa !39
  store float %i.alh, ptr %i.alg, align 4, !tbaa !39
  %i.ali = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 32
  %gep.us1288.2.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.2.i ; 4 uses
  %gep1272.us.21646.i = getelementptr i8, ptr %gep.us1288.2.i, i64 %.reass1269.us.i
  %i.alj = load float, ptr %gep1272.us.21646.i, align 4, !tbaa !39
  store float %i.alj, ptr %i.ali, align 4, !tbaa !39
  %i.alk = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 36
  %gep1272.us.1.2.i = getelementptr i8, ptr %gep.us1288.2.i, i64 %.reass1269.us.1.i
  %i.all = load float, ptr %gep1272.us.1.2.i, align 4, !tbaa !39
  store float %i.all, ptr %i.alk, align 4, !tbaa !39
  %i.alm = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 40
  %gep1272.us.2.2.i = getelementptr i8, ptr %gep.us1288.2.i, i64 %.reass1269.us.2.i
  %i.aln = load float, ptr %gep1272.us.2.2.i, align 4, !tbaa !39
  store float %i.aln, ptr %i.alm, align 4, !tbaa !39
  %i.alo = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 44
  %gep1272.us.3.2.i = getelementptr i8, ptr %gep.us1288.2.i, i64 %.reass1269.us.3.i
  %i.alp = load float, ptr %gep1272.us.3.2.i, align 4, !tbaa !39
  store float %i.alp, ptr %i.alo, align 4, !tbaa !39
  %i.alq = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 48
  %gep.us1288.3.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.3.i ; 4 uses
  %gep1272.us.31647.i = getelementptr i8, ptr %gep.us1288.3.i, i64 %.reass1269.us.i
  %i.alr = load float, ptr %gep1272.us.31647.i, align 4, !tbaa !39
  store float %i.alr, ptr %i.alq, align 4, !tbaa !39
  %i.als = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 52
  %gep1272.us.1.3.i = getelementptr i8, ptr %gep.us1288.3.i, i64 %.reass1269.us.1.i
  %i.alt = load float, ptr %gep1272.us.1.3.i, align 4, !tbaa !39
  store float %i.alt, ptr %i.als, align 4, !tbaa !39
  %i.alu = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 56
  %gep1272.us.2.3.i = getelementptr i8, ptr %gep.us1288.3.i, i64 %.reass1269.us.2.i
  %i.alv = load float, ptr %gep1272.us.2.3.i, align 4, !tbaa !39
  store float %i.alv, ptr %i.alu, align 4, !tbaa !39
  %i.alw = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 60
  %gep1272.us.3.3.i = getelementptr i8, ptr %gep.us1288.3.i, i64 %.reass1269.us.3.i
  %i.alx = load float, ptr %gep1272.us.3.3.i, align 4, !tbaa !39
  store float %i.alx, ptr %i.alw, align 4, !tbaa !39
  %i.aly = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 64
  %gep.us1288.4.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.4.i ; 4 uses
  %gep1272.us.4.i = getelementptr i8, ptr %gep.us1288.4.i, i64 %.reass1269.us.i
  %i.alz = load float, ptr %gep1272.us.4.i, align 4, !tbaa !39
  store float %i.alz, ptr %i.aly, align 4, !tbaa !39
  %i.ama = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 68
  %gep1272.us.1.4.i = getelementptr i8, ptr %gep.us1288.4.i, i64 %.reass1269.us.1.i
  %i.amb = load float, ptr %gep1272.us.1.4.i, align 4, !tbaa !39
  store float %i.amb, ptr %i.ama, align 4, !tbaa !39
  %i.amc = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 72
  %gep1272.us.2.4.i = getelementptr i8, ptr %gep.us1288.4.i, i64 %.reass1269.us.2.i
  %i.amd = load float, ptr %gep1272.us.2.4.i, align 4, !tbaa !39
  store float %i.amd, ptr %i.amc, align 4, !tbaa !39
  %i.ame = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 76
  %gep1272.us.3.4.i = getelementptr i8, ptr %gep.us1288.4.i, i64 %.reass1269.us.3.i
  %i.amf = load float, ptr %gep1272.us.3.4.i, align 4, !tbaa !39
  store float %i.amf, ptr %i.ame, align 4, !tbaa !39
  %i.amg = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 80
  %gep.us1288.5.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.5.i ; 4 uses
  %gep1272.us.5.i = getelementptr i8, ptr %gep.us1288.5.i, i64 %.reass1269.us.i
  %i.amh = load float, ptr %gep1272.us.5.i, align 4, !tbaa !39
  store float %i.amh, ptr %i.amg, align 4, !tbaa !39
  %i.ami = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 84
  %gep1272.us.1.5.i = getelementptr i8, ptr %gep.us1288.5.i, i64 %.reass1269.us.1.i
  %i.amj = load float, ptr %gep1272.us.1.5.i, align 4, !tbaa !39
  store float %i.amj, ptr %i.ami, align 4, !tbaa !39
  %i.amk = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 88
  %gep1272.us.2.5.i = getelementptr i8, ptr %gep.us1288.5.i, i64 %.reass1269.us.2.i
  %i.aml = load float, ptr %gep1272.us.2.5.i, align 4, !tbaa !39
  store float %i.aml, ptr %i.amk, align 4, !tbaa !39
  %i.amm = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 92
  %gep1272.us.3.5.i = getelementptr i8, ptr %gep.us1288.5.i, i64 %.reass1269.us.3.i
  %i.amn = load float, ptr %gep1272.us.3.5.i, align 4, !tbaa !39
  store float %i.amn, ptr %i.amm, align 4, !tbaa !39
  %i.amo = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 96
  %gep.us1288.6.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.6.i ; 4 uses
  %gep1272.us.6.i = getelementptr i8, ptr %gep.us1288.6.i, i64 %.reass1269.us.i
  %i.amp = load float, ptr %gep1272.us.6.i, align 4, !tbaa !39
  store float %i.amp, ptr %i.amo, align 4, !tbaa !39
  %i.amq = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 100
  %gep1272.us.1.6.i = getelementptr i8, ptr %gep.us1288.6.i, i64 %.reass1269.us.1.i
  %i.amr = load float, ptr %gep1272.us.1.6.i, align 4, !tbaa !39
  store float %i.amr, ptr %i.amq, align 4, !tbaa !39
  %i.ams = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 104
  %gep1272.us.2.6.i = getelementptr i8, ptr %gep.us1288.6.i, i64 %.reass1269.us.2.i
  %i.amt = load float, ptr %gep1272.us.2.6.i, align 4, !tbaa !39
  store float %i.amt, ptr %i.ams, align 4, !tbaa !39
  %i.amu = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 108
  %gep1272.us.3.6.i = getelementptr i8, ptr %gep.us1288.6.i, i64 %.reass1269.us.3.i
  %i.amv = load float, ptr %gep1272.us.3.6.i, align 4, !tbaa !39
  store float %i.amv, ptr %i.amu, align 4, !tbaa !39
  %i.amw = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 112
  %gep.us1288.7.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.7.i ; 4 uses
  %gep1272.us.7.i = getelementptr i8, ptr %gep.us1288.7.i, i64 %.reass1269.us.i
  %i.amx = load float, ptr %gep1272.us.7.i, align 4, !tbaa !39
  store float %i.amx, ptr %i.amw, align 4, !tbaa !39
  %i.amy = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 116
  %gep1272.us.1.7.i = getelementptr i8, ptr %gep.us1288.7.i, i64 %.reass1269.us.1.i
  %i.amz = load float, ptr %gep1272.us.1.7.i, align 4, !tbaa !39
  store float %i.amz, ptr %i.amy, align 4, !tbaa !39
  %i.ana = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 120
  %gep1272.us.2.7.i = getelementptr i8, ptr %gep.us1288.7.i, i64 %.reass1269.us.2.i
  %i.anb = load float, ptr %gep1272.us.2.7.i, align 4, !tbaa !39
  store float %i.anb, ptr %i.ana, align 4, !tbaa !39
  %i.anc = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 124
  %gep1272.us.3.7.i = getelementptr i8, ptr %gep.us1288.7.i, i64 %.reass1269.us.3.i
  %i.and = load float, ptr %gep1272.us.3.7.i, align 4, !tbaa !39
  store float %i.and, ptr %i.anc, align 4, !tbaa !39
  %i.ane = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 128 ; 3 uses
  %indvars.iv.next1649.i = add nuw nsw i64 %indvars.iv1648.i, 1 ; 2 uses
  %exitcond1652.not.i = icmp eq i64 %indvars.iv.next1649.i, %wide.trip.count1651.i
  br i1 %exitcond1652.not.i, label %._crit_edge1282.us.i, label %.preheader1159.us.i, !llvm.loop !134

._crit_edge1282.us.i:                             ; preds = %.preheader1159.us.i
  %indvars.iv.next1654.i = add nuw nsw i64 %indvars.iv1653.i, 8 ; 3 uses
  %i.anf = icmp slt i64 %indvars.iv.next1654.i, %invariant.op1861.i
  br i1 %i.anf, label %.preheader1163.us.i, label %.preheader1166.loopexit.i, !llvm.loop !135

.preheader1166.loopexit.i:                        ; preds = %._crit_edge1282.us.i
  %i.ang = trunc nuw nsw i64 %indvars.iv.next1654.i to i32
  br label %.preheader1166.i

.preheader1166.i:                                 ; preds = %.preheader1166.loopexit.i, %.noexc781.i
  %.0493.lcssa.i = phi ptr [ %i.akd, %.noexc781.i ], [ %i.ane, %.preheader1166.loopexit.i ] ; 3 uses
  %.0489.lcssa.i = phi i32 [ 0, %.noexc781.i ], [ %i.ang, %.preheader1166.loopexit.i ] ; 4 uses
  %i.anh = or disjoint i32 %.0489.lcssa.i, 3
  %i.ani = icmp slt i32 %i.anh, %i.bu
  br i1 %i.ani, label %.preheader1162.lr.ph.i, label %.preheader1165.i

.preheader1166.i.thread:                          ; preds = %.preheader1163.lr.ph.i
  br i1 %i.se, label %.preheader1162.preheader.i, label %.preheader1165.i

.preheader1162.lr.ph.i:                           ; preds = %.preheader1166.i
  %i.anj = load i32, ptr %i.rv, align 4
  %i.ank = load ptr, ptr %3, align 8
  %i.anl = load i64, ptr %i.rx, align 8           ; 2 uses
  %i.anm = sext i32 %i.anj to i64
  %factor.op.mul1298.i = mul i64 %i.anl, %i.anm   ; 4 uses
  br i1 %i.ru, label %.preheader1162.us.preheader.i, label %.preheader1162.preheader.i

.preheader1162.preheader.i:                       ; preds = %.preheader1166.i.thread, %.preheader1162.lr.ph.i
  %.0493.lcssa.i140146 = phi ptr [ %.0493.lcssa.i, %.preheader1162.lr.ph.i ], [ %i.akd, %.preheader1166.i.thread ]
  %.0489.lcssa.i141145 = phi i32 [ %.0489.lcssa.i, %.preheader1162.lr.ph.i ], [ %i.ry, %.preheader1166.i.thread ] ; 2 uses
  %i.ann = add i32 %.0489.lcssa.i141145, 4
  %i.ano = sub i32 %i.sa, %.0489.lcssa.i141145
  %i.anp = and i32 %i.ano, -4
  %i.anq = add i32 %i.ann, %i.anp
  br label %.preheader1165.i

.preheader1162.us.preheader.i:                    ; preds = %.preheader1162.lr.ph.i
  %i.anr = load i64, ptr %i.rw, align 8
  %factor.op.mul1291.i = mul i64 %i.anr, %i.anl   ; 4 uses
  %i.ans = zext i32 %.0489.lcssa.i to i64
  %.reass1292.us.i = mul i64 %factor.op.mul1291.i, %indvars.iv1703.i ; 4 uses
  %i.ant = or disjoint i64 %indvars.iv1703.i, 1
  %.reass1292.us.1.i = mul i64 %factor.op.mul1291.i, %i.ant ; 4 uses
  %i.anu = or disjoint i64 %indvars.iv1703.i, 2
  %.reass1292.us.2.i = mul i64 %factor.op.mul1291.i, %i.anu ; 4 uses
  %i.anv = or disjoint i64 %indvars.iv1703.i, 3
  %.reass1292.us.3.i = mul i64 %factor.op.mul1291.i, %i.anv ; 4 uses
  br label %.preheader1162.us.i

.preheader1162.us.i:                              ; preds = %._crit_edge1305.us.i, %.preheader1162.us.preheader.i
  %indvars.iv1672.i = phi i64 [ %i.ans, %.preheader1162.us.preheader.i ], [ %indvars.iv.next1673.i, %._crit_edge1305.us.i ] ; 5 uses
  %.44971307.us.i = phi ptr [ %.0493.lcssa.i, %.preheader1162.us.preheader.i ], [ %i.ape, %._crit_edge1305.us.i ]
  %.reass1299.us.i = mul i64 %indvars.iv1672.i, %factor.op.mul1298.i
  %i.anw = add nuw nsw i64 %indvars.iv1672.i, 1
  %.reass1299.us.1.i = mul i64 %i.anw, %factor.op.mul1298.i
  %i.anx = add nuw nsw i64 %indvars.iv1672.i, 2
  %.reass1299.us.2.i = mul i64 %i.anx, %factor.op.mul1298.i
  %i.any = add nuw nsw i64 %indvars.iv1672.i, 3
  %.reass1299.us.3.i = mul i64 %i.any, %factor.op.mul1298.i
  br label %.preheader1158.us.i

.preheader1158.us.i:                              ; preds = %.preheader1158.us.i, %.preheader1162.us.i
  %indvars.iv1667.i = phi i64 [ 0, %.preheader1162.us.i ], [ %indvars.iv.next1668.i, %.preheader1158.us.i ] ; 2 uses
  %.54981303.us.i = phi ptr [ %.44971307.us.i, %.preheader1162.us.i ], [ %i.ape, %.preheader1158.us.i ] ; 17 uses
  %invariant.gep1300.us.i = getelementptr [4 x i8], ptr %i.ank, i64 %indvars.iv1667.i ; 4 uses
  %gep.us1311.i = getelementptr i8, ptr %invariant.gep1300.us.i, i64 %.reass1299.us.i ; 4 uses
  %gep1295.us.i = getelementptr i8, ptr %gep.us1311.i, i64 %.reass1292.us.i
  %i.anz = load float, ptr %gep1295.us.i, align 4, !tbaa !39
  store float %i.anz, ptr %.54981303.us.i, align 4, !tbaa !39
  %i.aoa = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 4
  %gep1295.us.1.i = getelementptr i8, ptr %gep.us1311.i, i64 %.reass1292.us.1.i
  %i.aob = load float, ptr %gep1295.us.1.i, align 4, !tbaa !39
  store float %i.aob, ptr %i.aoa, align 4, !tbaa !39
  %i.aoc = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 8
  %gep1295.us.2.i = getelementptr i8, ptr %gep.us1311.i, i64 %.reass1292.us.2.i
  %i.aod = load float, ptr %gep1295.us.2.i, align 4, !tbaa !39
  store float %i.aod, ptr %i.aoc, align 4, !tbaa !39
  %i.aoe = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 12
  %gep1295.us.3.i = getelementptr i8, ptr %gep.us1311.i, i64 %.reass1292.us.3.i
  %i.aof = load float, ptr %gep1295.us.3.i, align 4, !tbaa !39
  store float %i.aof, ptr %i.aoe, align 4, !tbaa !39
  %i.aog = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 16
  %gep.us1311.1.i = getelementptr i8, ptr %invariant.gep1300.us.i, i64 %.reass1299.us.1.i ; 4 uses
  %gep1295.us.11664.i = getelementptr i8, ptr %gep.us1311.1.i, i64 %.reass1292.us.i
  %i.aoh = load float, ptr %gep1295.us.11664.i, align 4, !tbaa !39
  store float %i.aoh, ptr %i.aog, align 4, !tbaa !39
  %i.aoi = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 20
  %gep1295.us.1.1.i = getelementptr i8, ptr %gep.us1311.1.i, i64 %.reass1292.us.1.i
  %i.aoj = load float, ptr %gep1295.us.1.1.i, align 4, !tbaa !39
  store float %i.aoj, ptr %i.aoi, align 4, !tbaa !39
  %i.aok = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 24
  %gep1295.us.2.1.i = getelementptr i8, ptr %gep.us1311.1.i, i64 %.reass1292.us.2.i
  %i.aol = load float, ptr %gep1295.us.2.1.i, align 4, !tbaa !39
  store float %i.aol, ptr %i.aok, align 4, !tbaa !39
  %i.aom = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 28
  %gep1295.us.3.1.i = getelementptr i8, ptr %gep.us1311.1.i, i64 %.reass1292.us.3.i
  %i.aon = load float, ptr %gep1295.us.3.1.i, align 4, !tbaa !39
  store float %i.aon, ptr %i.aom, align 4, !tbaa !39
  %i.aoo = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 32
  %gep.us1311.2.i = getelementptr i8, ptr %invariant.gep1300.us.i, i64 %.reass1299.us.2.i ; 4 uses
  %gep1295.us.21665.i = getelementptr i8, ptr %gep.us1311.2.i, i64 %.reass1292.us.i
  %i.aop = load float, ptr %gep1295.us.21665.i, align 4, !tbaa !39
  store float %i.aop, ptr %i.aoo, align 4, !tbaa !39
  %i.aoq = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 36
  %gep1295.us.1.2.i = getelementptr i8, ptr %gep.us1311.2.i, i64 %.reass1292.us.1.i
  %i.aor = load float, ptr %gep1295.us.1.2.i, align 4, !tbaa !39
  store float %i.aor, ptr %i.aoq, align 4, !tbaa !39
  %i.aos = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 40
  %gep1295.us.2.2.i = getelementptr i8, ptr %gep.us1311.2.i, i64 %.reass1292.us.2.i
  %i.aot = load float, ptr %gep1295.us.2.2.i, align 4, !tbaa !39
  store float %i.aot, ptr %i.aos, align 4, !tbaa !39
  %i.aou = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 44
  %gep1295.us.3.2.i = getelementptr i8, ptr %gep.us1311.2.i, i64 %.reass1292.us.3.i
  %i.aov = load float, ptr %gep1295.us.3.2.i, align 4, !tbaa !39
  store float %i.aov, ptr %i.aou, align 4, !tbaa !39
  %i.aow = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 48
  %gep.us1311.3.i = getelementptr i8, ptr %invariant.gep1300.us.i, i64 %.reass1299.us.3.i ; 4 uses
  %gep1295.us.31666.i = getelementptr i8, ptr %gep.us1311.3.i, i64 %.reass1292.us.i
  %i.aox = load float, ptr %gep1295.us.31666.i, align 4, !tbaa !39
  store float %i.aox, ptr %i.aow, align 4, !tbaa !39
  %i.aoy = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 52
  %gep1295.us.1.3.i = getelementptr i8, ptr %gep.us1311.3.i, i64 %.reass1292.us.1.i
  %i.aoz = load float, ptr %gep1295.us.1.3.i, align 4, !tbaa !39
  store float %i.aoz, ptr %i.aoy, align 4, !tbaa !39
  %i.apa = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 56
  %gep1295.us.2.3.i = getelementptr i8, ptr %gep.us1311.3.i, i64 %.reass1292.us.2.i
  %i.apb = load float, ptr %gep1295.us.2.3.i, align 4, !tbaa !39
  store float %i.apb, ptr %i.apa, align 4, !tbaa !39
  %i.apc = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 60
  %gep1295.us.3.3.i = getelementptr i8, ptr %gep.us1311.3.i, i64 %.reass1292.us.3.i
  %i.apd = load float, ptr %gep1295.us.3.3.i, align 4, !tbaa !39
  store float %i.apd, ptr %i.apc, align 4, !tbaa !39
  %i.ape = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 64 ; 3 uses
  %indvars.iv.next1668.i = add nuw nsw i64 %indvars.iv1667.i, 1 ; 2 uses
  %exitcond1671.not.i = icmp eq i64 %indvars.iv.next1668.i, %wide.trip.count1651.i
  br i1 %exitcond1671.not.i, label %._crit_edge1305.us.i, label %.preheader1158.us.i, !llvm.loop !136

._crit_edge1305.us.i:                             ; preds = %.preheader1158.us.i
  %indvars.iv.next1673.i = add nuw nsw i64 %indvars.iv1672.i, 4 ; 2 uses
  %i.apf = trunc i64 %indvars.iv.next1673.i to i32 ; 2 uses
  %i.apg = or i32 %i.apf, 3
  %i.aph = icmp slt i32 %i.apg, %i.bu
  br i1 %i.aph, label %.preheader1162.us.i, label %.preheader1165.i, !llvm.loop !137

.preheader1165.i:                                 ; preds = %._crit_edge1305.us.i, %.preheader1166.i.thread, %.preheader1162.preheader.i, %.preheader1166.i
  %.4497.lcssa.i = phi ptr [ %.0493.lcssa.i, %.preheader1166.i ], [ %i.akd, %.preheader1166.i.thread ], [ %.0493.lcssa.i140146, %.preheader1162.preheader.i ], [ %i.ape, %._crit_edge1305.us.i ] ; 2 uses
  %.1490.lcssa.i = phi i32 [ %.0489.lcssa.i, %.preheader1166.i ], [ %i.ry, %.preheader1166.i.thread ], [ %i.anq, %.preheader1162.preheader.i ], [ %i.apf, %._crit_edge1305.us.i ] ; 3 uses
  %i.api = or disjoint i32 %.1490.lcssa.i, 1
  %i.apj = icmp slt i32 %i.api, %i.bu
  br i1 %i.apj, label %.preheader1161.lr.ph.i, label %.preheader1164.i

.preheader1161.lr.ph.i:                           ; preds = %.preheader1165.i
  %i.apk = load i32, ptr %i.rv, align 4
  %i.apl = load ptr, ptr %3, align 8              ; 18 uses
  %i.apm = load i64, ptr %i.rx, align 8           ; 11 uses
  %i.apn = sext i32 %i.apk to i64                 ; 4 uses
  %factor.op.mul1321.i = mul i64 %i.apm, %i.apn   ; 2 uses
  br i1 %i.ru, label %.preheader1161.us.preheader.i, label %._crit_edge1350.split.i

.preheader1161.us.preheader.i:                    ; preds = %.preheader1161.lr.ph.i
  %i.apo = load i64, ptr %i.rw, align 8           ; 5 uses
  %factor.op.mul1314.i = mul i64 %i.apo, %i.apm   ; 4 uses
  %i.app = zext i32 %.1490.lcssa.i to i64         ; 3 uses
  %.reass1315.us.i = mul i64 %factor.op.mul1314.i, %indvars.iv1703.i ; 4 uses
  %i.apq = or disjoint i64 %indvars.iv1703.i, 1
  %.reass1315.us.1.i = mul i64 %factor.op.mul1314.i, %i.apq ; 4 uses
  %i.apr = or disjoint i64 %indvars.iv1703.i, 2
  %.reass1315.us.2.i = mul i64 %factor.op.mul1314.i, %i.apr ; 4 uses
  %i.aps = or disjoint i64 %indvars.iv1703.i, 3   ; 2 uses
  %.reass1315.us.3.i = mul i64 %factor.op.mul1314.i, %i.aps ; 4 uses
  %i.apt = mul i64 %i.apo, %i.aps                 ; 2 uses
  %i.apu = add nuw nsw i64 %i.app, 1
  %i.apv = mul i64 %i.apu, %i.apn                 ; 4 uses
  %i.apw = add i64 %i.apt, %i.apv
  %i.apx = mul i64 %i.apm, %i.apw                 ; 2 uses
  %i.apy = shl i64 %i.apm, 1
  %i.apz = mul i64 %i.apy, %i.apn
  %i.aqa = mul i64 %i.apo, %i.ajv                 ; 2 uses
  %i.aqb = add i64 %i.aqa, %i.apv
  %i.aqc = mul i64 %i.apm, %i.aqb                 ; 2 uses
  %i.aqd = mul i64 %i.apo, %i.ajw                 ; 2 uses
  %i.aqe = add i64 %i.aqd, %i.apv
  %i.aqf = mul i64 %i.apm, %i.aqe                 ; 2 uses
  %i.aqg = mul i64 %i.apo, %indvars.iv1703.i      ; 2 uses
  %i.aqh = add i64 %i.aqg, %i.apv
  %i.aqi = mul i64 %i.apm, %i.aqh                 ; 2 uses
  %i.aqj = mul nsw i64 %i.apn, %i.app             ; 4 uses
  %i.aqk = add i64 %i.apt, %i.aqj
  %i.aql = mul i64 %i.apm, %i.aqk                 ; 2 uses
  %i.aqm = add i64 %i.aqa, %i.aqj
  %i.aqn = mul i64 %i.apm, %i.aqm                 ; 2 uses
  %i.aqo = add i64 %i.aqd, %i.aqj
  %i.aqp = mul i64 %i.apm, %i.aqo                 ; 2 uses
  %i.aqq = add i64 %i.aqg, %i.aqj
  %i.aqr = mul i64 %i.apm, %i.aqq                 ; 2 uses
  %i.aqs = getelementptr i8, ptr %i.apl, i64 %i.sg
  %i.aqt = getelementptr i8, ptr %i.aqs, i64 %i.aqr
  %i.aqu = getelementptr i8, ptr %i.apl, i64 %i.aqr
  %i.aqv = getelementptr i8, ptr %i.apl, i64 %i.sg
  %i.aqw = getelementptr i8, ptr %i.aqv, i64 %i.aqp
  %i.aqx = getelementptr i8, ptr %i.apl, i64 %i.aqp
  %i.aqy = getelementptr i8, ptr %i.apl, i64 %i.sg
  %i.aqz = getelementptr i8, ptr %i.aqy, i64 %i.aqn
  %i.ara = getelementptr i8, ptr %i.apl, i64 %i.aqn
  %i.arb = getelementptr i8, ptr %i.apl, i64 %i.sg
  %i.arc = getelementptr i8, ptr %i.arb, i64 %i.aql
  %i.ard = getelementptr i8, ptr %i.apl, i64 %i.aql
  %i.are = getelementptr i8, ptr %i.apl, i64 %i.sg
  %i.arf = getelementptr i8, ptr %i.are, i64 %i.aqi
  %i.arg = getelementptr i8, ptr %i.apl, i64 %i.aqi
  %i.arh = getelementptr i8, ptr %i.apl, i64 %i.sg
  %i.ari = getelementptr i8, ptr %i.arh, i64 %i.aqf
  %i.arj = getelementptr i8, ptr %i.apl, i64 %i.aqf
  %i.ark = getelementptr i8, ptr %i.apl, i64 %i.sg
  %i.arl = getelementptr i8, ptr %i.ark, i64 %i.aqc
  %i.arm = getelementptr i8, ptr %i.apl, i64 %i.aqc
  %i.arn = getelementptr i8, ptr %i.apl, i64 %i.sg
  %i.aro = getelementptr i8, ptr %i.arn, i64 %i.apx
  %i.arp = getelementptr i8, ptr %i.apl, i64 %i.apx
  br label %.preheader1161.us.i

.preheader1161.us.i:                              ; preds = %._crit_edge1328.us.i, %.preheader1161.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge1328.us.i ], [ 0, %.preheader1161.us.preheader.i ] ; 2 uses
  %indvars.iv1688.i = phi i64 [ %indvars.iv.next1689.i, %._crit_edge1328.us.i ], [ %i.app, %.preheader1161.us.preheader.i ] ; 3 uses
  %.85011330.us.i = phi ptr [ %.lcssa339, %._crit_edge1328.us.i ], [ %.4497.lcssa.i, %.preheader1161.us.preheader.i ] ; 13 uses
  %.reass1322.us.i = mul i64 %indvars.iv1688.i, %factor.op.mul1321.i ; 2 uses
  %i.arq = add nuw nsw i64 %indvars.iv1688.i, 1
  %.reass1322.us.1.i = mul i64 %i.arq, %factor.op.mul1321.i ; 2 uses
  br i1 %min.iters.check548, label %.preheader1157.us.i.preheader, label %vector.memcheck496

vector.memcheck496:                               ; preds = %.preheader1161.us.i
end_hunk_1
begin_hunk_2_@_ZN4ncnn21Deconvolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.awu = shl nuw nsw i64 %wide.trip.count1774.i, 3
  %i.awv = shl nuw nsw i64 %wide.trip.count1774.i, 2 ; 13 uses
  %i.aww = shl nuw nsw i64 %wide.trip.count1774.i, 4
  %i.awx = shl nuw nsw i64 %wide.trip.count1774.i, 5
  %i.awy = add nsw i64 %i.awq, -8                 ; 3 uses
  %i.awz = and i64 %i.awy, -8                     ; 6 uses
  %i.axa = or i64 %i.awy, 7
  %i.axb = or disjoint i64 %i.awz, 6
  %i.axc = or disjoint i64 %i.awz, 5
  %i.axd = or disjoint i64 %i.awz, 4
  %i.axe = or disjoint i64 %i.awz, 3
  %i.axf = or disjoint i64 %i.awz, 2
  %i.axg = or disjoint i64 %i.awz, 1
  %i.axh = and i64 %i.awy, -8
  %min.iters.check899 = icmp ult i32 %i.bo, 16
  %n.vec901 = and i64 %wide.trip.count1774.i, 2147483640 ; 4 uses
  %i.axi = shl nuw nsw i64 %n.vec901, 5
  %cmp.n916 = icmp eq i64 %n.vec901, %wide.trip.count1774.i
  %min.iters.check819 = icmp ult i32 %i.bo, 8
  %n.vec821 = and i64 %wide.trip.count1774.i, 2147483640 ; 4 uses
  %i.axj = shl nuw nsw i64 %n.vec821, 4
  %cmp.n832 = icmp eq i64 %n.vec821, %wide.trip.count1774.i
  %xtraiter968 = and i64 %wide.trip.count1774.i, 1
  %lcmp.mod969.not = icmp eq i64 %xtraiter968, 0
  %i.axk = add nsw i64 %wide.trip.count1774.i, -1
  %min.iters.check773 = icmp ult i32 %i.bo, 6
  %n.vec775 = and i64 %wide.trip.count1774.i, 2147483644 ; 4 uses
  %i.axl = shl nuw nsw i64 %n.vec775, 3
  %cmp.n788 = icmp eq i64 %n.vec775, %wide.trip.count1774.i
  %xtraiter971 = and i64 %wide.trip.count1774.i, 3 ; 2 uses
  %lcmp.mod972.not = icmp eq i64 %xtraiter971, 0
  %min.iters.check725 = icmp ult i32 %i.bo, 8
  %min.iters.check727 = icmp ult i32 %i.bo, 32
  %i.axm = and i64 %wide.trip.count1774.i, 24
  %n.vec729 = and i64 %wide.trip.count1774.i, 2147483616 ; 5 uses
  %i.axn = shl nuw nsw i64 %n.vec729, 2
  %cmp.n739 = icmp eq i64 %n.vec729, %wide.trip.count1774.i
  %min.epilog.iters.check745 = icmp eq i64 %i.axm, 0
  %n.vec747 = and i64 %wide.trip.count1774.i, 2147483640 ; 4 uses
  %i.axo = shl nuw nsw i64 %n.vec747, 2
  %cmp.n754 = icmp eq i64 %n.vec747, %wide.trip.count1774.i
  %xtraiter974 = and i64 %wide.trip.count1774.i, 7 ; 2 uses
  %lcmp.mod975.not = icmp eq i64 %xtraiter974, 0
  br label %.noexc761.i

.noexc771.i:                                      ; preds = %._crit_edge1438.split.i, %.noexc771.lr.ph.i
  %indvars.iv1764.i = phi i64 [ %i.ajj, %.noexc771.lr.ph.i ], [ %indvars.iv.next1765.i, %._crit_edge1438.split.i ] ; 13 uses
  %i.axp = trunc i64 %indvars.iv1764.i to i32     ; 3 uses
  %i.axq = lshr i32 %i.axp, 3
  %i.axr = lshr i32 %i.axp, 2
  %i.axs = and i32 %i.axr, 1
  %i.axt = add nuw nsw i32 %i.axs, %i.axq
  %i.axu = lshr i32 %i.axp, 1
  %i.axv = and i32 %i.axu, 1
  %i.axw = add nuw nsw i32 %i.axt, %i.axv
  %i.axx = zext nneg i32 %i.axw to i64
  %.reass1446.i = mul i64 %factor.op.mul1445.i, %i.axx
  %i.axy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 %.reass1446.i ; 4 uses
  br i1 %i.ajb, label %.preheader1148.lr.ph.i, label %.preheader1151.i

.preheader1148.lr.ph.i:                           ; preds = %.noexc771.i
  %i.axz = load i32, ptr %i.ajd, align 4
  %i.aya = load ptr, ptr %3, align 8
  %i.ayb = load i64, ptr %i.ajf, align 8          ; 2 uses
  %i.ayc = sext i32 %i.axz to i64
  %factor.op.mul1359.i = mul i64 %i.ayb, %i.ayc   ; 8 uses
  br i1 %i.ajc, label %.preheader1148.us.preheader.i, label %.preheader1151.i.thread

.preheader1148.us.preheader.i:                    ; preds = %.preheader1148.lr.ph.i
  %i.ayd = load i64, ptr %i.aje, align 8
  %factor.op.mul1364.i = mul i64 %i.ayd, %i.ayb   ; 2 uses
  %.reass1365.us.i = mul i64 %factor.op.mul1364.i, %indvars.iv1764.i
  %i.aye = add nuw nsw i64 %indvars.iv1764.i, 1
  %.reass1365.us.1.i = mul i64 %factor.op.mul1364.i, %i.aye
  br label %.preheader1148.us.i

.preheader1148.us.i:                              ; preds = %._crit_edge1372.us.i, %.preheader1148.us.preheader.i
  %indvars.iv1719.i = phi i64 [ 0, %.preheader1148.us.preheader.i ], [ %indvars.iv.next1720.i, %._crit_edge1372.us.i ] ; 9 uses
  %.04671374.us.i = phi ptr [ %i.axy, %.preheader1148.us.preheader.i ], [ %i.azr, %._crit_edge1372.us.i ]
  %.reass1360.us.i = mul i64 %indvars.iv1719.i, %factor.op.mul1359.i ; 2 uses
  %i.ayf = or disjoint i64 %indvars.iv1719.i, 1
  %.reass1360.us.1.i = mul i64 %i.ayf, %factor.op.mul1359.i ; 2 uses
  %i.ayg = or disjoint i64 %indvars.iv1719.i, 2
  %.reass1360.us.2.i = mul i64 %i.ayg, %factor.op.mul1359.i ; 2 uses
  %i.ayh = or disjoint i64 %indvars.iv1719.i, 3
  %.reass1360.us.3.i = mul i64 %i.ayh, %factor.op.mul1359.i ; 2 uses
  %i.ayi = or disjoint i64 %indvars.iv1719.i, 4
  %.reass1360.us.4.i = mul i64 %i.ayi, %factor.op.mul1359.i ; 2 uses
  %i.ayj = or disjoint i64 %indvars.iv1719.i, 5
  %.reass1360.us.5.i = mul i64 %i.ayj, %factor.op.mul1359.i ; 2 uses
  %i.ayk = or disjoint i64 %indvars.iv1719.i, 6
  %.reass1360.us.6.i = mul i64 %i.ayk, %factor.op.mul1359.i ; 2 uses
  %i.ayl = or disjoint i64 %indvars.iv1719.i, 7
  %.reass1360.us.7.i = mul i64 %i.ayl, %factor.op.mul1359.i ; 2 uses
  br label %.preheader1144.us.i

.preheader1144.us.i:                              ; preds = %.preheader1144.us.i, %.preheader1148.us.i
  %indvars.iv1714.i = phi i64 [ 0, %.preheader1148.us.i ], [ %indvars.iv.next1715.i, %.preheader1144.us.i ] ; 2 uses
  %.14681370.us.i = phi ptr [ %.04671374.us.i, %.preheader1148.us.i ], [ %i.azr, %.preheader1144.us.i ] ; 17 uses
  %invariant.gep1366.us.i = getelementptr [4 x i8], ptr %i.aya, i64 %indvars.iv1714.i ; 2 uses
  %gep1367.us.i = getelementptr i8, ptr %invariant.gep1366.us.i, i64 %.reass1365.us.i ; 8 uses
  %gep.us1378.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.i
  %i.aym = load float, ptr %gep.us1378.i, align 4, !tbaa !39
  store float %i.aym, ptr %.14681370.us.i, align 4, !tbaa !39
  %i.ayn = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 4
  %gep.us1378.1.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.1.i
  %i.ayo = load float, ptr %gep.us1378.1.i, align 4, !tbaa !39
  store float %i.ayo, ptr %i.ayn, align 4, !tbaa !39
  %i.ayp = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 8
  %gep.us1378.2.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.2.i
  %i.ayq = load float, ptr %gep.us1378.2.i, align 4, !tbaa !39
  store float %i.ayq, ptr %i.ayp, align 4, !tbaa !39
  %i.ayr = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 12
  %gep.us1378.3.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.3.i
  %i.ays = load float, ptr %gep.us1378.3.i, align 4, !tbaa !39
  store float %i.ays, ptr %i.ayr, align 4, !tbaa !39
  %i.ayt = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 16
  %gep.us1378.4.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.4.i
  %i.ayu = load float, ptr %gep.us1378.4.i, align 4, !tbaa !39
  store float %i.ayu, ptr %i.ayt, align 4, !tbaa !39
  %i.ayv = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 20
  %gep.us1378.5.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.5.i
  %i.ayw = load float, ptr %gep.us1378.5.i, align 4, !tbaa !39
  store float %i.ayw, ptr %i.ayv, align 4, !tbaa !39
  %i.ayx = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 24
  %gep.us1378.6.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.6.i
  %i.ayy = load float, ptr %gep.us1378.6.i, align 4, !tbaa !39
  store float %i.ayy, ptr %i.ayx, align 4, !tbaa !39
  %i.ayz = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 28
  %gep.us1378.7.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.7.i
  %i.aza = load float, ptr %gep.us1378.7.i, align 4, !tbaa !39
  store float %i.aza, ptr %i.ayz, align 4, !tbaa !39
  %i.azb = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 32
  %gep1367.us.1.i = getelementptr i8, ptr %invariant.gep1366.us.i, i64 %.reass1365.us.1.i ; 8 uses
  %gep.us1378.11713.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.i
  %i.azc = load float, ptr %gep.us1378.11713.i, align 4, !tbaa !39
  store float %i.azc, ptr %i.azb, align 4, !tbaa !39
  %i.azd = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 36
  %gep.us1378.1.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.1.i
  %i.aze = load float, ptr %gep.us1378.1.1.i, align 4, !tbaa !39
  store float %i.aze, ptr %i.azd, align 4, !tbaa !39
  %i.azf = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 40
  %gep.us1378.2.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.2.i
  %i.azg = load float, ptr %gep.us1378.2.1.i, align 4, !tbaa !39
  store float %i.azg, ptr %i.azf, align 4, !tbaa !39
  %i.azh = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 44
  %gep.us1378.3.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.3.i
  %i.azi = load float, ptr %gep.us1378.3.1.i, align 4, !tbaa !39
  store float %i.azi, ptr %i.azh, align 4, !tbaa !39
  %i.azj = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 48
  %gep.us1378.4.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.4.i
  %i.azk = load float, ptr %gep.us1378.4.1.i, align 4, !tbaa !39
  store float %i.azk, ptr %i.azj, align 4, !tbaa !39
  %i.azl = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 52
  %gep.us1378.5.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.5.i
  %i.azm = load float, ptr %gep.us1378.5.1.i, align 4, !tbaa !39
  store float %i.azm, ptr %i.azl, align 4, !tbaa !39
  %i.azn = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 56
  %gep.us1378.6.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.6.i
  %i.azo = load float, ptr %gep.us1378.6.1.i, align 4, !tbaa !39
  store float %i.azo, ptr %i.azn, align 4, !tbaa !39
  %i.azp = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 60
  %gep.us1378.7.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.7.i
  %i.azq = load float, ptr %gep.us1378.7.1.i, align 4, !tbaa !39
  store float %i.azq, ptr %i.azp, align 4, !tbaa !39
  %i.azr = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 64 ; 3 uses
  %indvars.iv.next1715.i = add nuw nsw i64 %indvars.iv1714.i, 1 ; 2 uses
  %exitcond1718.not.i = icmp eq i64 %indvars.iv.next1715.i, %wide.trip.count1717.i
  br i1 %exitcond1718.not.i, label %._crit_edge1372.us.i, label %.preheader1144.us.i, !llvm.loop !163

._crit_edge1372.us.i:                             ; preds = %.preheader1144.us.i
  %indvars.iv.next1720.i = add nuw nsw i64 %indvars.iv1719.i, 8 ; 3 uses
  %i.azs = icmp slt i64 %indvars.iv.next1720.i, %invariant.op1863.i
  br i1 %i.azs, label %.preheader1148.us.i, label %.preheader1151.loopexit.i, !llvm.loop !164

.preheader1151.loopexit.i:                        ; preds = %._crit_edge1372.us.i
  %i.azt = trunc nuw nsw i64 %indvars.iv.next1720.i to i32
  br label %.preheader1151.i

.preheader1151.i:                                 ; preds = %.preheader1151.loopexit.i, %.noexc771.i
  %.0467.lcssa.i = phi ptr [ %i.axy, %.noexc771.i ], [ %i.azr, %.preheader1151.loopexit.i ] ; 3 uses
  %.0463.lcssa.i = phi i32 [ 0, %.noexc771.i ], [ %i.azt, %.preheader1151.loopexit.i ] ; 4 uses
  %i.azu = or disjoint i32 %.0463.lcssa.i, 3
  %i.azv = icmp slt i32 %i.azu, %i.bu
  br i1 %i.azv, label %.preheader1147.lr.ph.i, label %.preheader1150.i

.preheader1151.i.thread:                          ; preds = %.preheader1148.lr.ph.i
  br i1 %i.ajl, label %.preheader1147.preheader.i, label %.preheader1150.i

.preheader1147.lr.ph.i:                           ; preds = %.preheader1151.i
  %i.azw = load i32, ptr %i.ajd, align 4
  %i.azx = load ptr, ptr %3, align 8              ; 18 uses
  %i.azy = load i64, ptr %i.ajf, align 8          ; 11 uses
  %i.azz = sext i32 %i.azw to i64                 ; 6 uses
  %factor.op.mul1381.i = mul i64 %i.azy, %i.azz   ; 4 uses
  br i1 %i.ajc, label %.preheader1147.us.preheader.i, label %.preheader1147.preheader.i

.preheader1147.preheader.i:                       ; preds = %.preheader1151.i.thread, %.preheader1147.lr.ph.i
  %.0467.lcssa.i156162 = phi ptr [ %.0467.lcssa.i, %.preheader1147.lr.ph.i ], [ %i.axy, %.preheader1151.i.thread ]
  %.0463.lcssa.i157161 = phi i32 [ %.0463.lcssa.i, %.preheader1147.lr.ph.i ], [ %i.ajg, %.preheader1151.i.thread ] ; 2 uses
  %i.baa = add i32 %.0463.lcssa.i157161, 4
  %i.bab = sub i32 %i.aji, %.0463.lcssa.i157161
  %i.bac = and i32 %i.bab, -4
  %i.bad = add i32 %i.baa, %i.bac
  br label %.preheader1150.i

.preheader1147.us.preheader.i:                    ; preds = %.preheader1147.lr.ph.i
  %i.bae = load i64, ptr %i.aje, align 8          ; 3 uses
  %factor.op.mul1386.i = mul i64 %i.bae, %i.azy   ; 2 uses
  %i.baf = zext i32 %.0463.lcssa.i to i64         ; 5 uses
  %.reass1387.us.i = mul i64 %factor.op.mul1386.i, %indvars.iv1764.i ; 2 uses
  %i.bag = add nuw i64 %indvars.iv1764.i, 1       ; 2 uses
  %.reass1387.us.1.i = mul i64 %factor.op.mul1386.i, %i.bag ; 2 uses
  %i.bah = mul i64 %i.bae, %i.bag                 ; 4 uses
  %i.bai = add nuw nsw i64 %i.baf, 3
  %i.baj = mul i64 %i.bai, %i.azz                 ; 2 uses
  %i.bak = add i64 %i.bah, %i.baj
  %i.bal = mul i64 %i.azy, %i.bak                 ; 2 uses
  %i.bam = shl i64 %i.azy, 2
  %i.ban = mul i64 %i.bam, %i.azz
  %i.bao = add nuw nsw i64 %i.baf, 2
  %i.bap = mul i64 %i.bao, %i.azz                 ; 2 uses
  %i.baq = add i64 %i.bah, %i.bap
  %i.bar = mul i64 %i.azy, %i.baq                 ; 2 uses
  %i.bas = add nuw nsw i64 %i.baf, 1
  %i.bat = mul i64 %i.bas, %i.azz                 ; 2 uses
  %i.bau = add i64 %i.bah, %i.bat
  %i.bav = mul i64 %i.azy, %i.bau                 ; 2 uses
  %i.baw = mul nsw i64 %i.azz, %i.baf             ; 2 uses
  %i.bax = add i64 %i.bah, %i.baw
  %i.bay = mul i64 %i.azy, %i.bax                 ; 2 uses
  %i.baz = mul i64 %i.bae, %indvars.iv1764.i      ; 4 uses
  %i.bba = add i64 %i.baz, %i.baj
  %i.bbb = mul i64 %i.azy, %i.bba                 ; 2 uses
  %i.bbc = add i64 %i.baz, %i.bap
  %i.bbd = mul i64 %i.azy, %i.bbc                 ; 2 uses
  %i.bbe = add i64 %i.baz, %i.bat
  %i.bbf = mul i64 %i.azy, %i.bbe                 ; 2 uses
  %i.bbg = add i64 %i.baz, %i.baw
  %i.bbh = mul i64 %i.azy, %i.bbg                 ; 2 uses
  %i.bbi = getelementptr i8, ptr %i.azx, i64 %i.ajn
  %i.bbj = getelementptr i8, ptr %i.bbi, i64 %i.bbh
  %i.bbk = getelementptr i8, ptr %i.azx, i64 %i.bbh
  %i.bbl = getelementptr i8, ptr %i.azx, i64 %i.ajn
  %i.bbm = getelementptr i8, ptr %i.bbl, i64 %i.bbf
  %i.bbn = getelementptr i8, ptr %i.azx, i64 %i.bbf
  %i.bbo = getelementptr i8, ptr %i.azx, i64 %i.ajn
  %i.bbp = getelementptr i8, ptr %i.bbo, i64 %i.bbd
  %i.bbq = getelementptr i8, ptr %i.azx, i64 %i.bbd
  %i.bbr = getelementptr i8, ptr %i.azx, i64 %i.ajn
  %i.bbs = getelementptr i8, ptr %i.bbr, i64 %i.bbb
  %i.bbt = getelementptr i8, ptr %i.azx, i64 %i.bbb
  %i.bbu = getelementptr i8, ptr %i.azx, i64 %i.ajn
  %i.bbv = getelementptr i8, ptr %i.bbu, i64 %i.bay
  %i.bbw = getelementptr i8, ptr %i.azx, i64 %i.bay
  %i.bbx = getelementptr i8, ptr %i.azx, i64 %i.ajn
  %i.bby = getelementptr i8, ptr %i.bbx, i64 %i.bav
  %i.bbz = getelementptr i8, ptr %i.azx, i64 %i.bav
  %i.bca = getelementptr i8, ptr %i.azx, i64 %i.ajn
  %i.bcb = getelementptr i8, ptr %i.bca, i64 %i.bar
  %i.bcc = getelementptr i8, ptr %i.azx, i64 %i.bar
  %i.bcd = getelementptr i8, ptr %i.azx, i64 %i.ajn
  %i.bce = getelementptr i8, ptr %i.bcd, i64 %i.bal
  %i.bcf = getelementptr i8, ptr %i.azx, i64 %i.bal
  br label %.preheader1147.us.i

.preheader1147.us.i:                              ; preds = %._crit_edge1394.us.i, %.preheader1147.us.preheader.i
  %indvar650 = phi i64 [ %indvar.next651, %._crit_edge1394.us.i ], [ 0, %.preheader1147.us.preheader.i ] ; 2 uses
  %indvars.iv1735.i = phi i64 [ %indvars.iv.next1736.i, %._crit_edge1394.us.i ], [ %i.baf, %.preheader1147.us.preheader.i ] ; 5 uses
  %.44711396.us.i = phi ptr [ %.lcssa330, %._crit_edge1394.us.i ], [ %.0467.lcssa.i, %.preheader1147.us.preheader.i ] ; 13 uses
  %.reass1382.us.i = mul i64 %indvars.iv1735.i, %factor.op.mul1381.i ; 4 uses
  %i.bcg = or disjoint i64 %indvars.iv1735.i, 1
  %.reass1382.us.1.i = mul i64 %i.bcg, %factor.op.mul1381.i ; 4 uses
  %i.bch = or disjoint i64 %indvars.iv1735.i, 2
  %.reass1382.us.2.i = mul i64 %i.bch, %factor.op.mul1381.i ; 4 uses
  %i.bci = or disjoint i64 %indvars.iv1735.i, 3
  %.reass1382.us.3.i = mul i64 %i.bci, %factor.op.mul1381.i ; 4 uses
  br i1 %min.iters.check700, label %.preheader1143.us.i.preheader, label %vector.memcheck648

vector.memcheck648:                               ; preds = %.preheader1147.us.i
  %i.bcj = mul i64 %i.ban, %indvar650             ; 16 uses
  %scevgep667 = getelementptr i8, ptr %i.bbj, i64 %i.bcj
  %scevgep666 = getelementptr i8, ptr %i.bbk, i64 %i.bcj
  %scevgep665 = getelementptr i8, ptr %i.bbm, i64 %i.bcj
  %scevgep664 = getelementptr i8, ptr %i.bbn, i64 %i.bcj
  %scevgep663 = getelementptr i8, ptr %i.bbp, i64 %i.bcj
  %scevgep662 = getelementptr i8, ptr %i.bbq, i64 %i.bcj
  %scevgep661 = getelementptr i8, ptr %i.bbs, i64 %i.bcj
  %scevgep660 = getelementptr i8, ptr %i.bbt, i64 %i.bcj
  %scevgep659 = getelementptr i8, ptr %i.bbv, i64 %i.bcj
  %scevgep658 = getelementptr i8, ptr %i.bbw, i64 %i.bcj
  %scevgep657 = getelementptr i8, ptr %i.bby, i64 %i.bcj
  %scevgep656 = getelementptr i8, ptr %i.bbz, i64 %i.bcj
  %scevgep655 = getelementptr i8, ptr %i.bcb, i64 %i.bcj
  %scevgep654 = getelementptr i8, ptr %i.bcc, i64 %i.bcj
  %scevgep653 = getelementptr i8, ptr %i.bce, i64 %i.bcj
  %scevgep652 = getelementptr i8, ptr %i.bcf, i64 %i.bcj
  %scevgep649 = getelementptr i8, ptr %.44711396.us.i, i64 %i.ajp ; 8 uses
  %bound0668 = icmp ult ptr %.44711396.us.i, %scevgep653
  %bound1669 = icmp ult ptr %scevgep652, %scevgep649
  %found.conflict670 = and i1 %bound0668, %bound1669
  %bound0671 = icmp ult ptr %.44711396.us.i, %scevgep655
  %bound1672 = icmp ult ptr %scevgep654, %scevgep649
  %found.conflict673 = and i1 %bound0671, %bound1672
  %conflict.rdx674 = or i1 %found.conflict670, %found.conflict673
  %bound0675 = icmp ult ptr %.44711396.us.i, %scevgep657
  %bound1676 = icmp ult ptr %scevgep656, %scevgep649
  %found.conflict677 = and i1 %bound0675, %bound1676
  %conflict.rdx678 = or i1 %conflict.rdx674, %found.conflict677
  %bound0679 = icmp ult ptr %.44711396.us.i, %scevgep659
  %bound1680 = icmp ult ptr %scevgep658, %scevgep649
  %found.conflict681 = and i1 %bound0679, %bound1680
  %conflict.rdx682 = or i1 %conflict.rdx678, %found.conflict681
  %bound0683 = icmp ult ptr %.44711396.us.i, %scevgep661
  %bound1684 = icmp ult ptr %scevgep660, %scevgep649
  %found.conflict685 = and i1 %bound0683, %bound1684
  %conflict.rdx686 = or i1 %conflict.rdx682, %found.conflict685
  %bound0687 = icmp ult ptr %.44711396.us.i, %scevgep663
  %bound1688 = icmp ult ptr %scevgep662, %scevgep649
  %found.conflict689 = and i1 %bound0687, %bound1688
  %conflict.rdx690 = or i1 %conflict.rdx686, %found.conflict689
  %bound0691 = icmp ult ptr %.44711396.us.i, %scevgep665
  %bound1692 = icmp ult ptr %scevgep664, %scevgep649
  %found.conflict693 = and i1 %bound0691, %bound1692
  %conflict.rdx694 = or i1 %conflict.rdx690, %found.conflict693
  %bound0695 = icmp ult ptr %.44711396.us.i, %scevgep667
  %bound1696 = icmp ult ptr %scevgep666, %scevgep649
  %found.conflict697 = and i1 %bound0695, %bound1696
  %conflict.rdx698 = or i1 %conflict.rdx694, %found.conflict697
  br i1 %conflict.rdx698, label %.preheader1143.us.i.preheader, label %vector.ph701

vector.ph701:                                     ; preds = %vector.memcheck648
  %i.bck = getelementptr i8, ptr %.44711396.us.i, i64 %i.ajq ; 2 uses
  br label %vector.body703

vector.body703:                                   ; preds = %vector.body703, %vector.ph701
  %index704 = phi i64 [ 0, %vector.ph701 ], [ %index.next715, %vector.body703 ] ; 3 uses
  %i.bcl = shl i64 %index704, 5
  %next.gep705 = getelementptr i8, ptr %.44711396.us.i, i64 %i.bcl
  %i.bcm = getelementptr [4 x i8], ptr %i.azx, i64 %index704 ; 2 uses
  %i.bcn = getelementptr i8, ptr %i.bcm, i64 %.reass1387.us.i ; 4 uses
  %i.bco = getelementptr i8, ptr %i.bcn, i64 %.reass1382.us.i
  %wide.load706 = load <8 x float>, ptr %i.bco, align 4, !tbaa !39, !alias.scope !265
  %i.bcp = getelementptr i8, ptr %i.bcn, i64 %.reass1382.us.1.i
  %wide.load707 = load <8 x float>, ptr %i.bcp, align 4, !tbaa !39, !alias.scope !266
  %i.bcq = getelementptr i8, ptr %i.bcn, i64 %.reass1382.us.2.i
  %wide.load708 = load <8 x float>, ptr %i.bcq, align 4, !tbaa !39, !alias.scope !267
  %i.bcr = getelementptr i8, ptr %i.bcn, i64 %.reass1382.us.3.i
  %wide.load709 = load <8 x float>, ptr %i.bcr, align 4, !tbaa !39, !alias.scope !268
  %i.bcs = getelementptr i8, ptr %i.bcm, i64 %.reass1387.us.1.i ; 4 uses
  %i.bct = getelementptr i8, ptr %i.bcs, i64 %.reass1382.us.i
  %wide.load710 = load <8 x float>, ptr %i.bct, align 4, !tbaa !39, !alias.scope !269
  %i.bcu = getelementptr i8, ptr %i.bcs, i64 %.reass1382.us.1.i
  %wide.load711 = load <8 x float>, ptr %i.bcu, align 4, !tbaa !39, !alias.scope !270
  %i.bcv = getelementptr i8, ptr %i.bcs, i64 %.reass1382.us.2.i
  %wide.load712 = load <8 x float>, ptr %i.bcv, align 4, !tbaa !39, !alias.scope !271
  %i.bcw = getelementptr i8, ptr %i.bcs, i64 %.reass1382.us.3.i
  %wide.load713 = load <8 x float>, ptr %i.bcw, align 4, !tbaa !39, !alias.scope !272
  %i.bcx = shufflevector <8 x float> %wide.load706, <8 x float> %wide.load707, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcy = shufflevector <8 x float> %wide.load708, <8 x float> %wide.load709, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bcz = shufflevector <8 x float> %wide.load710, <8 x float> %wide.load711, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bda = shufflevector <8 x float> %wide.load712, <8 x float> %wide.load713, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bdb = shufflevector <16 x float> %i.bcx, <16 x float> %i.bcy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bdc = shufflevector <16 x float> %i.bcz, <16 x float> %i.bda, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec714 = shufflevector <32 x float> %i.bdb, <32 x float> %i.bdc, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec714, ptr %next.gep705, align 4, !tbaa !39, !alias.scope !273, !noalias !274
  %index.next715 = add nuw i64 %index704, 8       ; 2 uses
  %i.bdd = icmp eq i64 %index.next715, %n.vec702
  br i1 %i.bdd, label %middle.block716, label %vector.body703, !llvm.loop !175

middle.block716:                                  ; preds = %vector.body703
  br i1 %cmp.n717, label %._crit_edge1394.us.i, label %.preheader1143.us.i.preheader

.preheader1143.us.i.preheader:                    ; preds = %vector.memcheck648, %.preheader1147.us.i, %middle.block716
  %indvars.iv1730.i.ph = phi i64 [ 0, %vector.memcheck648 ], [ 0, %.preheader1147.us.i ], [ %n.vec702, %middle.block716 ]
  %.54721392.us.i.ph = phi ptr [ %.44711396.us.i, %vector.memcheck648 ], [ %.44711396.us.i, %.preheader1147.us.i ], [ %i.bck, %middle.block716 ]
  br label %.preheader1143.us.i

.preheader1143.us.i:                              ; preds = %.preheader1143.us.i.preheader, %.preheader1143.us.i
  %indvars.iv1730.i = phi i64 [ %indvars.iv.next1731.i, %.preheader1143.us.i ], [ %indvars.iv1730.i.ph, %.preheader1143.us.i.preheader ] ; 2 uses
  %.54721392.us.i = phi ptr [ %i.bdt, %.preheader1143.us.i ], [ %.54721392.us.i.ph, %.preheader1143.us.i.preheader ] ; 9 uses
  %invariant.gep1388.us.i = getelementptr [4 x i8], ptr %i.azx, i64 %indvars.iv1730.i ; 2 uses
  %gep1389.us.i = getelementptr i8, ptr %invariant.gep1388.us.i, i64 %.reass1387.us.i ; 4 uses
  %gep.us1400.i = getelementptr i8, ptr %gep1389.us.i, i64 %.reass1382.us.i
  %i.bde = load float, ptr %gep.us1400.i, align 4, !tbaa !39
  store float %i.bde, ptr %.54721392.us.i, align 4, !tbaa !39
  %i.bdf = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 4
  %gep.us1400.1.i = getelementptr i8, ptr %gep1389.us.i, i64 %.reass1382.us.1.i
  %i.bdg = load float, ptr %gep.us1400.1.i, align 4, !tbaa !39
  store float %i.bdg, ptr %i.bdf, align 4, !tbaa !39
  %i.bdh = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 8
  %gep.us1400.2.i = getelementptr i8, ptr %gep1389.us.i, i64 %.reass1382.us.2.i
  %i.bdi = load float, ptr %gep.us1400.2.i, align 4, !tbaa !39
  store float %i.bdi, ptr %i.bdh, align 4, !tbaa !39
  %i.bdj = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 12
  %gep.us1400.3.i = getelementptr i8, ptr %gep1389.us.i, i64 %.reass1382.us.3.i
  %i.bdk = load float, ptr %gep.us1400.3.i, align 4, !tbaa !39
  store float %i.bdk, ptr %i.bdj, align 4, !tbaa !39
  %i.bdl = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 16
  %gep1389.us.1.i = getelementptr i8, ptr %invariant.gep1388.us.i, i64 %.reass1387.us.1.i ; 4 uses
  %gep.us1400.11729.i = getelementptr i8, ptr %gep1389.us.1.i, i64 %.reass1382.us.i
end_hunk_2
begin_hunk_3_@_ZN4ncnn21Deconvolution_x86_fma15create_pipelineERKNS_6OptionE:bb.a
  %i.blf = mul i64 %i.bkb, %i.ble
  %scevgep848 = getelementptr i8, ptr %scevgep847, i64 %i.blf
  %i.blg = mul nsw i64 %i.bke, 3
  %i.blh = add i64 %i.bkf, %i.blg
  %i.bli = mul i64 %i.bkb, %i.blh
  %scevgep849 = getelementptr i8, ptr %i.bjy, i64 %i.bli
  %scevgep850 = getelementptr i8, ptr %i.bjy, i64 %i.awv
  %i.blj = mul i64 %i.axe, %i.bke
  %i.blk = add i64 %i.bkf, %i.blj
  %i.bll = mul i64 %i.bkb, %i.blk
  %scevgep851 = getelementptr i8, ptr %scevgep850, i64 %i.bll
  %i.blm = shl nsw i64 %i.bke, 1
  %i.bln = add i64 %i.bkf, %i.blm
  %i.blo = mul i64 %i.bkb, %i.bln
  %scevgep852 = getelementptr i8, ptr %i.bjy, i64 %i.blo
  %scevgep853 = getelementptr i8, ptr %i.bjy, i64 %i.awv
  %i.blp = mul i64 %i.axf, %i.bke
  %i.blq = add i64 %i.bkf, %i.blp
  %i.blr = mul i64 %i.bkb, %i.blq
  %scevgep854 = getelementptr i8, ptr %scevgep853, i64 %i.blr
  %i.bls = add i64 %i.bkf, %i.bke
  %i.blt = mul i64 %i.bkb, %i.bls
  %scevgep855 = getelementptr i8, ptr %i.bjy, i64 %i.blt
  %scevgep856 = getelementptr i8, ptr %i.bjy, i64 %i.awv ; 2 uses
  %i.blu = mul i64 %i.axg, %i.bke
  %i.blv = add i64 %i.bkf, %i.blu
  %i.blw = mul i64 %i.bkb, %i.blv
  %scevgep857 = getelementptr i8, ptr %scevgep856, i64 %i.blw
  %i.blx = mul i64 %i.axh, %i.bke
  %i.bly = add i64 %i.blx, %i.bkf
  %i.blz = mul i64 %i.bkb, %i.bly
  %scevgep858 = getelementptr i8, ptr %scevgep856, i64 %i.blz
  %i.bma = insertelement <8 x ptr> poison, ptr %scevgep842, i64 0
  %i.bmb = insertelement <8 x ptr> %i.bma, ptr %scevgep839, i64 1
  %i.bmc = insertelement <8 x ptr> %i.bmb, ptr %scevgep845, i64 2
  %i.bmd = insertelement <8 x ptr> %i.bmc, ptr %scevgep848, i64 3
  %i.bme = insertelement <8 x ptr> %i.bmd, ptr %scevgep851, i64 4
  %i.bmf = insertelement <8 x ptr> %i.bme, ptr %scevgep854, i64 5
  %i.bmg = insertelement <8 x ptr> %i.bmf, ptr %scevgep857, i64 6
  %i.bmh = insertelement <8 x ptr> %i.bmg, ptr %scevgep858, i64 7
  %i.bmi = insertelement <8 x ptr> poison, ptr %scevgep840, i64 0
  %i.bmj = insertelement <8 x ptr> %i.bmi, ptr %scevgep837, i64 1
  %i.bmk = insertelement <8 x ptr> %i.bmj, ptr %scevgep843, i64 2
  %i.bml = insertelement <8 x ptr> %i.bmk, ptr %scevgep846, i64 3
  %i.bmm = insertelement <8 x ptr> %i.bml, ptr %scevgep849, i64 4
  %i.bmn = insertelement <8 x ptr> %i.bmm, ptr %scevgep852, i64 5
  %i.bmo = insertelement <8 x ptr> %i.bmn, ptr %scevgep855, i64 6
  %i.bmp = insertelement <8 x ptr> %i.bmo, ptr %i.bkd, i64 7
  %stride.check866 = icmp slt i64 %i.bkn, 0
  br label %.preheader1133.us.i

.preheader1133.us.i:                              ; preds = %.preheader1133.us.i.preheader, %._crit_edge1454.us.i
  %indvars.iv1776.i = phi i64 [ %indvars.iv.next1777.i, %._crit_edge1454.us.i ], [ 0, %.preheader1133.us.i.preheader ] ; 9 uses
  %.04481456.us.i = phi ptr [ %.lcssa323, %._crit_edge1454.us.i ], [ %i.bjw, %.preheader1133.us.i.preheader ] ; 6 uses
  %.reass1448.us.i = mul i64 %indvars.iv1776.i, %factor.op.mul1447.i ; 2 uses
  %i.bmq = or disjoint i64 %indvars.iv1776.i, 1
  %.reass1448.us.1.i = mul i64 %i.bmq, %factor.op.mul1447.i ; 2 uses
  %i.bmr = or disjoint i64 %indvars.iv1776.i, 2
  %.reass1448.us.2.i = mul i64 %i.bmr, %factor.op.mul1447.i ; 2 uses
  %i.bms = or disjoint i64 %indvars.iv1776.i, 3
  %.reass1448.us.3.i = mul i64 %i.bms, %factor.op.mul1447.i ; 2 uses
  %i.bmt = or disjoint i64 %indvars.iv1776.i, 4
  %.reass1448.us.4.i = mul i64 %i.bmt, %factor.op.mul1447.i ; 2 uses
  %i.bmu = or disjoint i64 %indvars.iv1776.i, 5
  %.reass1448.us.5.i = mul i64 %i.bmu, %factor.op.mul1447.i ; 2 uses
  %i.bmv = or disjoint i64 %indvars.iv1776.i, 6
  %.reass1448.us.6.i = mul i64 %i.bmv, %factor.op.mul1447.i ; 2 uses
  %i.bmw = or disjoint i64 %indvars.iv1776.i, 7
  %.reass1448.us.7.i = mul i64 %i.bmw, %factor.op.mul1447.i ; 2 uses
  br i1 %min.iters.check899, label %.preheader1129.us.i.preheader, label %vector.memcheck835

vector.memcheck835:                               ; preds = %.preheader1133.us.i
  %scevgep836 = getelementptr i8, ptr %.04481456.us.i, i64 %i.awx
  %i.bmx = insertelement <8 x ptr> poison, ptr %.04481456.us.i, i64 0
  %i.bmy = shufflevector <8 x ptr> %i.bmx, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bmz = icmp ult <8 x ptr> %i.bmy, %i.bmh
  %i.bna = insertelement <8 x ptr> poison, ptr %scevgep836, i64 0
  %i.bnb = shufflevector <8 x ptr> %i.bna, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.bnc = icmp ult <8 x ptr> %i.bmp, %i.bnb
  %i.bnd = and <8 x i1> %i.bmz, %i.bnc
  %i.bne = bitcast <8 x i1> %i.bnd to i8
  %i.bnf = icmp ne i8 %i.bne, 0
  %op.rdx = or i1 %i.bnf, %stride.check866
  br i1 %op.rdx, label %.preheader1129.us.i.preheader, label %vector.ph900

vector.ph900:                                     ; preds = %vector.memcheck835
  %i.bng = getelementptr i8, ptr %.04481456.us.i, i64 %i.axi ; 2 uses
  br label %vector.body902

vector.body902:                                   ; preds = %vector.body902, %vector.ph900
  %index903 = phi i64 [ 0, %vector.ph900 ], [ %index.next914, %vector.body902 ] ; 3 uses
  %i.bnh = shl i64 %index903, 5
  %next.gep904 = getelementptr i8, ptr %.04481456.us.i, i64 %i.bnh
  %i.bni = getelementptr [4 x i8], ptr %i.bkd, i64 %index903 ; 8 uses
  %i.bnj = getelementptr i8, ptr %i.bni, i64 %.reass1448.us.i
  %wide.load905 = load <8 x float>, ptr %i.bnj, align 4, !tbaa !39, !alias.scope !285
  %i.bnk = getelementptr i8, ptr %i.bni, i64 %.reass1448.us.1.i
  %wide.load906 = load <8 x float>, ptr %i.bnk, align 4, !tbaa !39, !alias.scope !286
  %i.bnl = getelementptr i8, ptr %i.bni, i64 %.reass1448.us.2.i
  %wide.load907 = load <8 x float>, ptr %i.bnl, align 4, !tbaa !39, !alias.scope !287
  %i.bnm = getelementptr i8, ptr %i.bni, i64 %.reass1448.us.3.i
  %wide.load908 = load <8 x float>, ptr %i.bnm, align 4, !tbaa !39, !alias.scope !288
  %i.bnn = getelementptr i8, ptr %i.bni, i64 %.reass1448.us.4.i
  %wide.load909 = load <8 x float>, ptr %i.bnn, align 4, !tbaa !39, !alias.scope !289
  %i.bno = getelementptr i8, ptr %i.bni, i64 %.reass1448.us.5.i
  %wide.load910 = load <8 x float>, ptr %i.bno, align 4, !tbaa !39, !alias.scope !290
  %i.bnp = getelementptr i8, ptr %i.bni, i64 %.reass1448.us.6.i
  %wide.load911 = load <8 x float>, ptr %i.bnp, align 4, !tbaa !39, !alias.scope !291
  %i.bnq = getelementptr i8, ptr %i.bni, i64 %.reass1448.us.7.i
  %wide.load912 = load <8 x float>, ptr %i.bnq, align 4, !tbaa !39, !alias.scope !292
  %i.bnr = shufflevector <8 x float> %wide.load905, <8 x float> %wide.load906, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bns = shufflevector <8 x float> %wide.load907, <8 x float> %wide.load908, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bnt = shufflevector <8 x float> %wide.load909, <8 x float> %wide.load910, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bnu = shufflevector <8 x float> %wide.load911, <8 x float> %wide.load912, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bnv = shufflevector <16 x float> %i.bnr, <16 x float> %i.bns, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bnw = shufflevector <16 x float> %i.bnt, <16 x float> %i.bnu, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec913 = shufflevector <32 x float> %i.bnv, <32 x float> %i.bnw, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec913, ptr %next.gep904, align 4, !tbaa !39, !alias.scope !293, !noalias !294
  %index.next914 = add nuw i64 %index903, 8       ; 2 uses
  %i.bnx = icmp eq i64 %index.next914, %n.vec901
  br i1 %i.bnx, label %middle.block915, label %vector.body902, !llvm.loop !206

middle.block915:                                  ; preds = %vector.body902
  br i1 %cmp.n916, label %._crit_edge1454.us.i, label %.preheader1129.us.i.preheader

.preheader1129.us.i.preheader:                    ; preds = %vector.memcheck835, %.preheader1133.us.i, %middle.block915
  %indvars.iv1771.i.ph = phi i64 [ 0, %vector.memcheck835 ], [ 0, %.preheader1133.us.i ], [ %n.vec901, %middle.block915 ]
  %.14491452.us.i.ph = phi ptr [ %.04481456.us.i, %vector.memcheck835 ], [ %.04481456.us.i, %.preheader1133.us.i ], [ %i.bng, %middle.block915 ]
  br label %.preheader1129.us.i

.preheader1129.us.i:                              ; preds = %.preheader1129.us.i.preheader, %.preheader1129.us.i
  %indvars.iv1771.i = phi i64 [ %indvars.iv.next1772.i, %.preheader1129.us.i ], [ %indvars.iv1771.i.ph, %.preheader1129.us.i.preheader ] ; 2 uses
  %.14491452.us.i = phi ptr [ %i.bon, %.preheader1129.us.i ], [ %.14491452.us.i.ph, %.preheader1129.us.i.preheader ] ; 9 uses
  %invariant.gep1449.us.i = getelementptr [4 x i8], ptr %i.bkd, i64 %indvars.iv1771.i ; 8 uses
  %gep.us1460.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.i
  %i.bny = load float, ptr %gep.us1460.i, align 4, !tbaa !39
  store float %i.bny, ptr %.14491452.us.i, align 4, !tbaa !39
  %i.bnz = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 4
  %gep.us1460.1.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.1.i
  %i.boa = load float, ptr %gep.us1460.1.i, align 4, !tbaa !39
  store float %i.boa, ptr %i.bnz, align 4, !tbaa !39
  %i.bob = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 8
  %gep.us1460.2.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.2.i
  %i.boc = load float, ptr %gep.us1460.2.i, align 4, !tbaa !39
  store float %i.boc, ptr %i.bob, align 4, !tbaa !39
  %i.bod = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 12
  %gep.us1460.3.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.3.i
  %i.boe = load float, ptr %gep.us1460.3.i, align 4, !tbaa !39
  store float %i.boe, ptr %i.bod, align 4, !tbaa !39
  %i.bof = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 16
  %gep.us1460.4.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.4.i
  %i.bog = load float, ptr %gep.us1460.4.i, align 4, !tbaa !39
  store float %i.bog, ptr %i.bof, align 4, !tbaa !39
  %i.boh = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 20
  %gep.us1460.5.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.5.i
  %i.boi = load float, ptr %gep.us1460.5.i, align 4, !tbaa !39
  store float %i.boi, ptr %i.boh, align 4, !tbaa !39
  %i.boj = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 24
  %gep.us1460.6.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.6.i
  %i.bok = load float, ptr %gep.us1460.6.i, align 4, !tbaa !39
  store float %i.bok, ptr %i.boj, align 4, !tbaa !39
  %i.bol = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 28
  %gep.us1460.7.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.7.i
  %i.bom = load float, ptr %gep.us1460.7.i, align 4, !tbaa !39
  store float %i.bom, ptr %i.bol, align 4, !tbaa !39
  %i.bon = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 32 ; 2 uses
  %indvars.iv.next1772.i = add nuw nsw i64 %indvars.iv1771.i, 1 ; 2 uses
  %exitcond1775.not.i = icmp eq i64 %indvars.iv.next1772.i, %wide.trip.count1774.i
  br i1 %exitcond1775.not.i, label %._crit_edge1454.us.i, label %.preheader1129.us.i, !llvm.loop !207

._crit_edge1454.us.i:                             ; preds = %.preheader1129.us.i, %middle.block915
  %.lcssa323 = phi ptr [ %i.bng, %middle.block915 ], [ %i.bon, %.preheader1129.us.i ] ; 2 uses
  %indvars.iv.next1777.i = add nuw nsw i64 %indvars.iv1776.i, 8 ; 3 uses
  %i.boo = icmp slt i64 %indvars.iv.next1777.i, %invariant.op1864.i
  br i1 %i.boo, label %.preheader1133.us.i, label %.preheader1136.loopexit.i, !llvm.loop !208

.preheader1136.loopexit.i:                        ; preds = %._crit_edge1454.us.i
  %i.bop = trunc nuw nsw i64 %indvars.iv.next1777.i to i32
  br label %.preheader1136.i

.preheader1136.i:                                 ; preds = %.preheader1136.loopexit.i, %.preheader1133.lr.ph.i, %.noexc761.i
  %.0448.lcssa.i = phi ptr [ %i.bjw, %.noexc761.i ], [ %.lcssa323, %.preheader1136.loopexit.i ], [ %i.bjw, %.preheader1133.lr.ph.i ] ; 3 uses
  %.0447.lcssa.i = phi i32 [ 0, %.noexc761.i ], [ %i.bop, %.preheader1136.loopexit.i ], [ %i.awp, %.preheader1133.lr.ph.i ] ; 5 uses
  %i.boq = or disjoint i32 %.0447.lcssa.i, 3
  %i.bor = icmp slt i32 %i.boq, %i.bu
  br i1 %i.bor, label %.preheader1132.lr.ph.i, label %.preheader1135.i

.preheader1132.lr.ph.i:                           ; preds = %.preheader1136.i
  %i.bos = load i32, ptr %i.awm, align 4
  %i.bot = load ptr, ptr %3, align 8              ; 9 uses
  %i.bou = load i64, ptr %i.awn, align 8          ; 2 uses
  %i.bov = mul i64 %i.bou, %indvars.iv1810.i
  %i.bow = load i64, ptr %i.awo, align 8          ; 7 uses
  %i.box = mul i64 %i.bov, %i.bow
  %i.boy = getelementptr inbounds nuw i8, ptr %i.bot, i64 %i.box ; 4 uses
  %i.boz = sext i32 %i.bos to i64                 ; 6 uses
  %factor.op.mul1463.i = mul i64 %i.bow, %i.boz   ; 4 uses
  br i1 %i.awl, label %.preheader1132.us.preheader.i, label %.preheader1132.preheader.i

.preheader1132.preheader.i:                       ; preds = %.preheader1132.lr.ph.i
  %i.bpa = add i32 %.0447.lcssa.i, 4
  %i.bpb = sub i32 %i.awr, %.0447.lcssa.i
  %i.bpc = and i32 %i.bpb, -4
  %i.bpd = add i32 %i.bpa, %i.bpc
  br label %.preheader1135.i

.preheader1132.us.preheader.i:                    ; preds = %.preheader1132.lr.ph.i
  %i.bpe = zext i32 %.0447.lcssa.i to i64         ; 5 uses
  %i.bpf = mul i64 %i.bou, %indvars.iv1810.i      ; 4 uses
  %i.bpg = add nuw nsw i64 %i.bpe, 3
  %i.bph = mul i64 %i.bpg, %i.boz
  %i.bpi = add i64 %i.bpf, %i.bph
  %i.bpj = mul i64 %i.bow, %i.bpi                 ; 2 uses
  %i.bpk = shl i64 %i.bow, 2
  %i.bpl = mul i64 %i.bpk, %i.boz
  %i.bpm = add nuw nsw i64 %i.bpe, 2
  %i.bpn = mul i64 %i.bpm, %i.boz
  %i.bpo = add i64 %i.bpf, %i.bpn
  %i.bpp = mul i64 %i.bow, %i.bpo                 ; 2 uses
  %i.bpq = add nuw nsw i64 %i.bpe, 1
  %i.bpr = mul i64 %i.bpq, %i.boz
  %i.bps = add i64 %i.bpf, %i.bpr
  %i.bpt = mul i64 %i.bow, %i.bps                 ; 2 uses
  %i.bpu = mul nsw i64 %i.boz, %i.bpe
  %i.bpv = add i64 %i.bpf, %i.bpu
  %i.bpw = mul i64 %i.bow, %i.bpv                 ; 2 uses
  %i.bpx = getelementptr i8, ptr %i.bot, i64 %i.awv
  %i.bpy = getelementptr i8, ptr %i.bpx, i64 %i.bpw
  %i.bpz = getelementptr i8, ptr %i.bot, i64 %i.bpw
  %i.bqa = getelementptr i8, ptr %i.bot, i64 %i.awv
  %i.bqb = getelementptr i8, ptr %i.bqa, i64 %i.bpt
  %i.bqc = getelementptr i8, ptr %i.bot, i64 %i.bpt
  %i.bqd = getelementptr i8, ptr %i.bot, i64 %i.awv
  %i.bqe = getelementptr i8, ptr %i.bqd, i64 %i.bpp
  %i.bqf = getelementptr i8, ptr %i.bot, i64 %i.bpp
  %i.bqg = getelementptr i8, ptr %i.bot, i64 %i.awv
  %i.bqh = getelementptr i8, ptr %i.bqg, i64 %i.bpj
  %i.bqi = getelementptr i8, ptr %i.bot, i64 %i.bpj
  br label %.preheader1132.us.i

.preheader1132.us.i:                              ; preds = %._crit_edge1470.us.i, %.preheader1132.us.preheader.i
  %indvar793 = phi i64 [ %indvar.next794, %._crit_edge1470.us.i ], [ 0, %.preheader1132.us.preheader.i ] ; 2 uses
  %indvars.iv1788.i = phi i64 [ %indvars.iv.next1789.i, %._crit_edge1470.us.i ], [ %i.bpe, %.preheader1132.us.preheader.i ] ; 5 uses
  %.34511472.us.i = phi ptr [ %.lcssa324, %._crit_edge1470.us.i ], [ %.0448.lcssa.i, %.preheader1132.us.preheader.i ] ; 9 uses
  %.reass1464.us.i = mul i64 %indvars.iv1788.i, %factor.op.mul1463.i ; 4 uses
  %i.bqj = add nuw nsw i64 %indvars.iv1788.i, 1
  %.reass1464.us.1.i = mul i64 %i.bqj, %factor.op.mul1463.i ; 4 uses
  %i.bqk = add nuw nsw i64 %indvars.iv1788.i, 2
  %.reass1464.us.2.i = mul i64 %i.bqk, %factor.op.mul1463.i ; 4 uses
  %i.bql = add nuw nsw i64 %indvars.iv1788.i, 3
  %.reass1464.us.3.i = mul i64 %i.bql, %factor.op.mul1463.i ; 4 uses
  br i1 %min.iters.check819, label %.preheader1128.us.i.preheader, label %vector.memcheck791

vector.memcheck791:                               ; preds = %.preheader1132.us.i
  %i.bqm = mul i64 %i.bpl, %indvar793             ; 8 uses
  %scevgep802 = getelementptr i8, ptr %i.bpy, i64 %i.bqm
  %scevgep801 = getelementptr i8, ptr %i.bpz, i64 %i.bqm
  %scevgep800 = getelementptr i8, ptr %i.bqb, i64 %i.bqm
  %scevgep799 = getelementptr i8, ptr %i.bqc, i64 %i.bqm
  %scevgep798 = getelementptr i8, ptr %i.bqe, i64 %i.bqm
  %scevgep797 = getelementptr i8, ptr %i.bqf, i64 %i.bqm
  %scevgep796 = getelementptr i8, ptr %i.bqh, i64 %i.bqm
  %scevgep795 = getelementptr i8, ptr %i.bqi, i64 %i.bqm
  %scevgep792 = getelementptr i8, ptr %.34511472.us.i, i64 %i.aww ; 4 uses
  %bound0803 = icmp ult ptr %.34511472.us.i, %scevgep796
  %bound1804 = icmp ult ptr %scevgep795, %scevgep792
  %found.conflict805 = and i1 %bound0803, %bound1804
  %bound0806 = icmp ult ptr %.34511472.us.i, %scevgep798
  %bound1807 = icmp ult ptr %scevgep797, %scevgep792
  %found.conflict808 = and i1 %bound0806, %bound1807
  %conflict.rdx809 = or i1 %found.conflict805, %found.conflict808
  %bound0810 = icmp ult ptr %.34511472.us.i, %scevgep800
  %bound1811 = icmp ult ptr %scevgep799, %scevgep792
  %found.conflict812 = and i1 %bound0810, %bound1811
  %conflict.rdx813 = or i1 %conflict.rdx809, %found.conflict812
  %bound0814 = icmp ult ptr %.34511472.us.i, %scevgep802
  %bound1815 = icmp ult ptr %scevgep801, %scevgep792
  %found.conflict816 = and i1 %bound0814, %bound1815
  %conflict.rdx817 = or i1 %conflict.rdx813, %found.conflict816
  br i1 %conflict.rdx817, label %.preheader1128.us.i.preheader, label %vector.ph820

vector.ph820:                                     ; preds = %vector.memcheck791
  %i.bqn = getelementptr i8, ptr %.34511472.us.i, i64 %i.axj ; 2 uses
  br label %vector.body822

vector.body822:                                   ; preds = %vector.body822, %vector.ph820
  %index823 = phi i64 [ 0, %vector.ph820 ], [ %index.next830, %vector.body822 ] ; 3 uses
  %i.bqo = shl i64 %index823, 4
  %next.gep824 = getelementptr i8, ptr %.34511472.us.i, i64 %i.bqo
  %i.bqp = getelementptr [4 x i8], ptr %i.boy, i64 %index823 ; 4 uses
  %i.bqq = getelementptr i8, ptr %i.bqp, i64 %.reass1464.us.i
  %wide.load825 = load <8 x float>, ptr %i.bqq, align 4, !tbaa !39, !alias.scope !295
  %i.bqr = getelementptr i8, ptr %i.bqp, i64 %.reass1464.us.1.i
  %wide.load826 = load <8 x float>, ptr %i.bqr, align 4, !tbaa !39, !alias.scope !296
  %i.bqs = getelementptr i8, ptr %i.bqp, i64 %.reass1464.us.2.i
  %wide.load827 = load <8 x float>, ptr %i.bqs, align 4, !tbaa !39, !alias.scope !297
  %i.bqt = getelementptr i8, ptr %i.bqp, i64 %.reass1464.us.3.i
  %wide.load828 = load <8 x float>, ptr %i.bqt, align 4, !tbaa !39, !alias.scope !298
  %i.bqu = shufflevector <8 x float> %wide.load825, <8 x float> %wide.load826, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bqv = shufflevector <8 x float> %wide.load827, <8 x float> %wide.load828, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec829 = shufflevector <16 x float> %i.bqu, <16 x float> %i.bqv, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec829, ptr %next.gep824, align 4, !tbaa !39, !alias.scope !299, !noalias !300
  %index.next830 = add nuw i64 %index823, 8       ; 2 uses
  %i.bqw = icmp eq i64 %index.next830, %n.vec821
  br i1 %i.bqw, label %middle.block831, label %vector.body822, !llvm.loop !215

middle.block831:                                  ; preds = %vector.body822
  br i1 %cmp.n832, label %._crit_edge1470.us.i, label %.preheader1128.us.i.preheader

.preheader1128.us.i.preheader:                    ; preds = %vector.memcheck791, %.preheader1132.us.i, %middle.block831
  %indvars.iv1783.i.ph = phi i64 [ 0, %vector.memcheck791 ], [ 0, %.preheader1132.us.i ], [ %n.vec821, %middle.block831 ] ; 4 uses
  %.41468.us.i.ph = phi ptr [ %.34511472.us.i, %vector.memcheck791 ], [ %.34511472.us.i, %.preheader1132.us.i ], [ %i.bqn, %middle.block831 ] ; 6 uses
  br i1 %lcmp.mod969.not, label %.preheader1128.us.i.prol.loopexit, label %.preheader1128.us.i.prol

.preheader1128.us.i.prol:                         ; preds = %.preheader1128.us.i.preheader
  %invariant.gep1465.us.i.prol = getelementptr [4 x i8], ptr %i.boy, i64 %indvars.iv1783.i.ph ; 4 uses
  %gep.us1476.i.prol = getelementptr i8, ptr %invariant.gep1465.us.i.prol, i64 %.reass1464.us.i
  %i.bqx = load float, ptr %gep.us1476.i.prol, align 4, !tbaa !39
  store float %i.bqx, ptr %.41468.us.i.ph, align 4, !tbaa !39
  %i.bqy = getelementptr inbounds nuw i8, ptr %.41468.us.i.ph, i64 4
  %gep.us1476.1.i.prol = getelementptr i8, ptr %invariant.gep1465.us.i.prol, i64 %.reass1464.us.1.i
  %i.bqz = load float, ptr %gep.us1476.1.i.prol, align 4, !tbaa !39
  store float %i.bqz, ptr %i.bqy, align 4, !tbaa !39
  %i.bra = getelementptr inbounds nuw i8, ptr %.41468.us.i.ph, i64 8
  %gep.us1476.2.i.prol = getelementptr i8, ptr %invariant.gep1465.us.i.prol, i64 %.reass1464.us.2.i
  %i.brb = load float, ptr %gep.us1476.2.i.prol, align 4, !tbaa !39
  store float %i.brb, ptr %i.bra, align 4, !tbaa !39
  %i.brc = getelementptr inbounds nuw i8, ptr %.41468.us.i.ph, i64 12
  %gep.us1476.3.i.prol = getelementptr i8, ptr %invariant.gep1465.us.i.prol, i64 %.reass1464.us.3.i
  %i.brd = load float, ptr %gep.us1476.3.i.prol, align 4, !tbaa !39
  store float %i.brd, ptr %i.brc, align 4, !tbaa !39
  %i.bre = getelementptr inbounds nuw i8, ptr %.41468.us.i.ph, i64 16 ; 2 uses
  %indvars.iv.next1784.i.prol = or disjoint i64 %indvars.iv1783.i.ph, 1
  br label %.preheader1128.us.i.prol.loopexit

.preheader1128.us.i.prol.loopexit:                ; preds = %.preheader1128.us.i.prol, %.preheader1128.us.i.preheader
  %.lcssa935.unr = phi ptr [ poison, %.preheader1128.us.i.preheader ], [ %i.bre, %.preheader1128.us.i.prol ]
  %indvars.iv1783.i.unr = phi i64 [ %indvars.iv1783.i.ph, %.preheader1128.us.i.preheader ], [ %indvars.iv.next1784.i.prol, %.preheader1128.us.i.prol ]
  %.41468.us.i.unr = phi ptr [ %.41468.us.i.ph, %.preheader1128.us.i.preheader ], [ %i.bre, %.preheader1128.us.i.prol ]
  %i.brf = icmp eq i64 %indvars.iv1783.i.ph, %i.axk
  br i1 %i.brf, label %._crit_edge1470.us.i, label %.preheader1128.us.i

.preheader1128.us.i:                              ; preds = %.preheader1128.us.i.prol.loopexit, %.preheader1128.us.i
  %indvars.iv1783.i = phi i64 [ %indvars.iv.next1784.i.1, %.preheader1128.us.i ], [ %indvars.iv1783.i.unr, %.preheader1128.us.i.prol.loopexit ] ; 3 uses
  %.41468.us.i = phi ptr [ %i.brw, %.preheader1128.us.i ], [ %.41468.us.i.unr, %.preheader1128.us.i.prol.loopexit ] ; 9 uses
  %invariant.gep1465.us.i = getelementptr [4 x i8], ptr %i.boy, i64 %indvars.iv1783.i ; 4 uses
  %gep.us1476.i = getelementptr i8, ptr %invariant.gep1465.us.i, i64 %.reass1464.us.i
  %i.brg = load float, ptr %gep.us1476.i, align 4, !tbaa !39
  store float %i.brg, ptr %.41468.us.i, align 4, !tbaa !39
  %i.brh = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 4
  %gep.us1476.1.i = getelementptr i8, ptr %invariant.gep1465.us.i, i64 %.reass1464.us.1.i
  %i.bri = load float, ptr %gep.us1476.1.i, align 4, !tbaa !39
  store float %i.bri, ptr %i.brh, align 4, !tbaa !39
  %i.brj = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 8
  %gep.us1476.2.i = getelementptr i8, ptr %invariant.gep1465.us.i, i64 %.reass1464.us.2.i
  %i.brk = load float, ptr %gep.us1476.2.i, align 4, !tbaa !39
  store float %i.brk, ptr %i.brj, align 4, !tbaa !39
  %i.brl = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 12
  %gep.us1476.3.i = getelementptr i8, ptr %invariant.gep1465.us.i, i64 %.reass1464.us.3.i
  %i.brm = load float, ptr %gep.us1476.3.i, align 4, !tbaa !39
  store float %i.brm, ptr %i.brl, align 4, !tbaa !39
  %i.brn = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 16
  %i.bro = getelementptr [4 x i8], ptr %i.boy, i64 %indvars.iv1783.i
  %invariant.gep1465.us.i.1 = getelementptr i8, ptr %i.bro, i64 4 ; 4 uses
  %gep.us1476.i.1 = getelementptr i8, ptr %invariant.gep1465.us.i.1, i64 %.reass1464.us.i
  %i.brp = load float, ptr %gep.us1476.i.1, align 4, !tbaa !39
  store float %i.brp, ptr %i.brn, align 4, !tbaa !39
  %i.brq = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 20
  %gep.us1476.1.i.1 = getelementptr i8, ptr %invariant.gep1465.us.i.1, i64 %.reass1464.us.1.i
  %i.brr = load float, ptr %gep.us1476.1.i.1, align 4, !tbaa !39
  store float %i.brr, ptr %i.brq, align 4, !tbaa !39
  %i.brs = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 24
  %gep.us1476.2.i.1 = getelementptr i8, ptr %invariant.gep1465.us.i.1, i64 %.reass1464.us.2.i
  %i.brt = load float, ptr %gep.us1476.2.i.1, align 4, !tbaa !39
  store float %i.brt, ptr %i.brs, align 4, !tbaa !39
  %i.bru = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 28
  %gep.us1476.3.i.1 = getelementptr i8, ptr %invariant.gep1465.us.i.1, i64 %.reass1464.us.3.i
  %i.brv = load float, ptr %gep.us1476.3.i.1, align 4, !tbaa !39
  store float %i.brv, ptr %i.bru, align 4, !tbaa !39
  %i.brw = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 32 ; 2 uses
  %indvars.iv.next1784.i.1 = add nuw nsw i64 %indvars.iv1783.i, 2 ; 2 uses
  %exitcond1787.not.i.1 = icmp eq i64 %indvars.iv.next1784.i.1, %wide.trip.count1774.i
  br i1 %exitcond1787.not.i.1, label %._crit_edge1470.us.i, label %.preheader1128.us.i, !llvm.loop !216

._crit_edge1470.us.i:                             ; preds = %.preheader1128.us.i.prol.loopexit, %.preheader1128.us.i, %middle.block831
  %.lcssa324 = phi ptr [ %i.bqn, %middle.block831 ], [ %.lcssa935.unr, %.preheader1128.us.i.prol.loopexit ], [ %i.brw, %.preheader1128.us.i ] ; 2 uses
  %indvars.iv.next1789.i = add nuw nsw i64 %indvars.iv1788.i, 4 ; 2 uses
  %i.brx = trunc i64 %indvars.iv.next1789.i to i32 ; 2 uses
  %i.bry = or i32 %i.brx, 3
  %i.brz = icmp slt i32 %i.bry, %i.bu
  %indvar.next794 = add i64 %indvar793, 1
  br i1 %i.brz, label %.preheader1132.us.i, label %.preheader1135.i, !llvm.loop !217

.preheader1135.i:                                 ; preds = %._crit_edge1470.us.i, %.preheader1132.preheader.i, %.preheader1136.i
  %.3451.lcssa.i = phi ptr [ %.0448.lcssa.i, %.preheader1136.i ], [ %.0448.lcssa.i, %.preheader1132.preheader.i ], [ %.lcssa324, %._crit_edge1470.us.i ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0447.lcssa.i, %.preheader1136.i ], [ %i.bpd, %.preheader1132.preheader.i ], [ %i.brx, %._crit_edge1470.us.i ] ; 5 uses
  %i.bsa = or disjoint i32 %.1.lcssa.i, 1
  %i.bsb = icmp slt i32 %i.bsa, %i.bu
  br i1 %i.bsb, label %.preheader1131.lr.ph.i, label %.preheader1134.i

.preheader1131.lr.ph.i:                           ; preds = %.preheader1135.i
  %i.bsc = load i32, ptr %i.awm, align 4
  %i.bsd = load ptr, ptr %3, align 8              ; 5 uses
  %i.bse = load i64, ptr %i.awn, align 8          ; 2 uses
  %i.bsf = mul i64 %i.bse, %indvars.iv1810.i
  %i.bsg = load i64, ptr %i.awo, align 8          ; 5 uses
  %i.bsh = mul i64 %i.bsf, %i.bsg
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsd, i64 %i.bsh ; 6 uses
  %i.bsj = sext i32 %i.bsc to i64                 ; 4 uses
  %factor.op.mul1479.i = mul i64 %i.bsg, %i.bsj   ; 2 uses
  br i1 %i.awl, label %.preheader1131.us.preheader.i, label %.preheader1131.preheader.i

.preheader1131.preheader.i:                       ; preds = %.preheader1131.lr.ph.i
  %i.bsk = add i32 %.1.lcssa.i, 2
  %i.bsl = sub i32 %i.aws, %.1.lcssa.i
  %i.bsm = and i32 %i.bsl, -2
  %i.bsn = add i32 %i.bsk, %i.bsm
  br label %.preheader1134.i

.preheader1131.us.preheader.i:                    ; preds = %.preheader1131.lr.ph.i
  %i.bso = zext i32 %.1.lcssa.i to i64            ; 3 uses
  %i.bsp = mul i64 %i.bse, %indvars.iv1810.i      ; 2 uses
  %i.bsq = add nuw nsw i64 %i.bso, 1
  %i.bsr = mul i64 %i.bsq, %i.bsj
  %i.bss = add i64 %i.bsp, %i.bsr
  %i.bst = mul i64 %i.bsg, %i.bss                 ; 2 uses
  %i.bsu = shl i64 %i.bsg, 1
  %i.bsv = mul i64 %i.bsu, %i.bsj
  %i.bsw = mul nsw i64 %i.bsj, %i.bso
  %i.bsx = add i64 %i.bsp, %i.bsw
  %i.bsy = mul i64 %i.bsg, %i.bsx                 ; 2 uses
  %i.bsz = getelementptr i8, ptr %i.bsd, i64 %i.awv
  %i.bta = getelementptr i8, ptr %i.bsz, i64 %i.bsy
  %i.btb = getelementptr i8, ptr %i.bsd, i64 %i.bsy
  %i.btc = getelementptr i8, ptr %i.bsd, i64 %i.awv
  %i.btd = getelementptr i8, ptr %i.btc, i64 %i.bst
  %i.bte = getelementptr i8, ptr %i.bsd, i64 %i.bst
  br label %.preheader1131.us.i

.preheader1131.us.i:                              ; preds = %._crit_edge1486.us.i, %.preheader1131.us.preheader.i
  %indvar759 = phi i64 [ %indvar.next760, %._crit_edge1486.us.i ], [ 0, %.preheader1131.us.preheader.i ] ; 2 uses
  %indvars.iv1799.i = phi i64 [ %indvars.iv.next1800.i, %._crit_edge1486.us.i ], [ %i.bso, %.preheader1131.us.preheader.i ] ; 3 uses
  %.61488.us.i = phi ptr [ %.lcssa326, %._crit_edge1486.us.i ], [ %.3451.lcssa.i, %.preheader1131.us.preheader.i ] ; 8 uses
  %.reass1480.us.i = mul i64 %indvars.iv1799.i, %factor.op.mul1479.i ; 6 uses
  %i.btf = add nuw nsw i64 %indvars.iv1799.i, 1
  %.reass1480.us.1.i = mul i64 %i.btf, %factor.op.mul1479.i ; 6 uses
  br i1 %min.iters.check773, label %.preheader.us.i.preheader, label %vector.memcheck757

vector.memcheck757:                               ; preds = %.preheader1131.us.i
  %i.btg = mul i64 %i.bsv, %indvar759             ; 4 uses
  %scevgep764 = getelementptr i8, ptr %i.bta, i64 %i.btg
  %scevgep763 = getelementptr i8, ptr %i.btb, i64 %i.btg
  %scevgep762 = getelementptr i8, ptr %i.btd, i64 %i.btg
  %scevgep761 = getelementptr i8, ptr %i.bte, i64 %i.btg
  %scevgep758 = getelementptr i8, ptr %.61488.us.i, i64 %i.awu ; 2 uses
  %bound0765 = icmp ult ptr %.61488.us.i, %scevgep762
  %bound1766 = icmp ult ptr %scevgep761, %scevgep758
  %found.conflict767 = and i1 %bound0765, %bound1766
  %bound0768 = icmp ult ptr %.61488.us.i, %scevgep764
  %bound1769 = icmp ult ptr %scevgep763, %scevgep758
  %found.conflict770 = and i1 %bound0768, %bound1769
  %conflict.rdx771 = or i1 %found.conflict767, %found.conflict770
  br i1 %conflict.rdx771, label %.preheader.us.i.preheader, label %vector.ph774

vector.ph774:                                     ; preds = %vector.memcheck757
  %i.bth = getelementptr i8, ptr %.61488.us.i, i64 %i.axl ; 2 uses
  br label %vector.body776

vector.body776:                                   ; preds = %vector.body776, %vector.ph774
  %index777 = phi i64 [ 0, %vector.ph774 ], [ %index.next786, %vector.body776 ] ; 3 uses
  %i.bti = shl i64 %index777, 3                   ; 2 uses
  %next.gep778 = getelementptr i8, ptr %.61488.us.i, i64 %i.bti
  %i.btj = getelementptr i8, ptr %.61488.us.i, i64 %i.bti
  %next.gep779 = getelementptr i8, ptr %i.btj, i64 16
  %i.btk = getelementptr [4 x i8], ptr %i.bsi, i64 %index777 ; 2 uses
  %i.btl = getelementptr i8, ptr %i.btk, i64 %.reass1480.us.i ; 2 uses
  %i.btm = getelementptr i8, ptr %i.btl, i64 8
  %wide.load780 = load <2 x float>, ptr %i.btl, align 4, !tbaa !39, !alias.scope !301
  %wide.load781 = load <2 x float>, ptr %i.btm, align 4, !tbaa !39, !alias.scope !301
  %i.btn = getelementptr i8, ptr %i.btk, i64 %.reass1480.us.1.i ; 2 uses
  %i.bto = getelementptr i8, ptr %i.btn, i64 8
  %wide.load782 = load <2 x float>, ptr %i.btn, align 4, !tbaa !39, !alias.scope !302
  %wide.load783 = load <2 x float>, ptr %i.bto, align 4, !tbaa !39, !alias.scope !302
  %interleaved.vec784 = shufflevector <2 x float> %wide.load780, <2 x float> %wide.load782, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec784, ptr %next.gep778, align 4, !tbaa !39, !alias.scope !303, !noalias !304
  %interleaved.vec785 = shufflevector <2 x float> %wide.load781, <2 x float> %wide.load783, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %interleaved.vec785, ptr %next.gep779, align 4, !tbaa !39, !alias.scope !303, !noalias !304
  %index.next786 = add nuw i64 %index777, 4       ; 2 uses
  %i.btp = icmp eq i64 %index.next786, %n.vec775
  br i1 %i.btp, label %middle.block787, label %vector.body776, !llvm.loop !222

middle.block787:                                  ; preds = %vector.body776
  br i1 %cmp.n788, label %._crit_edge1486.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %vector.memcheck757, %.preheader1131.us.i, %middle.block787
  %indvars.iv1794.i.ph = phi i64 [ 0, %vector.memcheck757 ], [ 0, %.preheader1131.us.i ], [ %n.vec775, %middle.block787 ] ; 3 uses
  %.71484.us.i.ph = phi ptr [ %.61488.us.i, %vector.memcheck757 ], [ %.61488.us.i, %.preheader1131.us.i ], [ %i.bth, %middle.block787 ] ; 2 uses
  br i1 %lcmp.mod972.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol

.preheader.us.i.prol:                             ; preds = %.preheader.us.i.preheader, %.preheader.us.i.prol
  %indvars.iv1794.i.prol = phi i64 [ %indvars.iv.next1795.i.prol, %.preheader.us.i.prol ], [ %indvars.iv1794.i.ph, %.preheader.us.i.preheader ] ; 2 uses
  %.71484.us.i.prol = phi ptr [ %i.btt, %.preheader.us.i.prol ], [ %.71484.us.i.ph, %.preheader.us.i.preheader ] ; 3 uses
  %prol.iter973 = phi i64 [ %prol.iter973.next, %.preheader.us.i.prol ], [ 0, %.preheader.us.i.preheader ]
  %invariant.gep1481.us.i.prol = getelementptr [4 x i8], ptr %i.bsi, i64 %indvars.iv1794.i.prol ; 2 uses
  %gep.us1492.i.prol = getelementptr i8, ptr %invariant.gep1481.us.i.prol, i64 %.reass1480.us.i
  %i.btq = load float, ptr %gep.us1492.i.prol, align 4, !tbaa !39
  store float %i.btq, ptr %.71484.us.i.prol, align 4, !tbaa !39
  %i.btr = getelementptr inbounds nuw i8, ptr %.71484.us.i.prol, i64 4
  %gep.us1492.1.i.prol = getelementptr i8, ptr %invariant.gep1481.us.i.prol, i64 %.reass1480.us.1.i
  %i.bts = load float, ptr %gep.us1492.1.i.prol, align 4, !tbaa !39
  store float %i.bts, ptr %i.btr, align 4, !tbaa !39
  %i.btt = getelementptr inbounds nuw i8, ptr %.71484.us.i.prol, i64 8 ; 3 uses
  %indvars.iv.next1795.i.prol = add nuw nsw i64 %indvars.iv1794.i.prol, 1 ; 2 uses
  %prol.iter973.next = add i64 %prol.iter973, 1   ; 2 uses
  %prol.iter973.cmp.not = icmp eq i64 %prol.iter973.next, %xtraiter971
  br i1 %prol.iter973.cmp.not, label %.preheader.us.i.prol.loopexit, label %.preheader.us.i.prol, !llvm.loop !223

.preheader.us.i.prol.loopexit:                    ; preds = %.preheader.us.i.prol, %.preheader.us.i.preheader
  %.lcssa937.unr = phi ptr [ poison, %.preheader.us.i.preheader ], [ %i.btt, %.preheader.us.i.prol ]
  %indvars.iv1794.i.unr = phi i64 [ %indvars.iv1794.i.ph, %.preheader.us.i.preheader ], [ %indvars.iv.next1795.i.prol, %.preheader.us.i.prol ]
  %.71484.us.i.unr = phi ptr [ %.71484.us.i.ph, %.preheader.us.i.preheader ], [ %i.btt, %.preheader.us.i.prol ]
  %i.btu = sub nsw i64 %indvars.iv1794.i.ph, %wide.trip.count1774.i
  %i.btv = icmp ugt i64 %i.btu, -4
  br i1 %i.btv, label %._crit_edge1486.us.i, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i
  %indvars.iv1794.i = phi i64 [ %indvars.iv.next1795.i.3, %.preheader.us.i ], [ %indvars.iv1794.i.unr, %.preheader.us.i.prol.loopexit ] ; 5 uses
  %.71484.us.i = phi ptr [ %i.buo, %.preheader.us.i ], [ %.71484.us.i.unr, %.preheader.us.i.prol.loopexit ] ; 9 uses
  %invariant.gep1481.us.i = getelementptr [4 x i8], ptr %i.bsi, i64 %indvars.iv1794.i ; 2 uses
  %gep.us1492.i = getelementptr i8, ptr %invariant.gep1481.us.i, i64 %.reass1480.us.i
  %i.btw = load float, ptr %gep.us1492.i, align 4, !tbaa !39
  store float %i.btw, ptr %.71484.us.i, align 4, !tbaa !39
  %i.btx = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 4
  %gep.us1492.1.i = getelementptr i8, ptr %invariant.gep1481.us.i, i64 %.reass1480.us.1.i
  %i.bty = load float, ptr %gep.us1492.1.i, align 4, !tbaa !39
  store float %i.bty, ptr %i.btx, align 4, !tbaa !39
  %i.btz = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 8
  %i.bua = getelementptr [4 x i8], ptr %i.bsi, i64 %indvars.iv1794.i
  %invariant.gep1481.us.i.1 = getelementptr i8, ptr %i.bua, i64 4 ; 2 uses
  %gep.us1492.i.1 = getelementptr i8, ptr %invariant.gep1481.us.i.1, i64 %.reass1480.us.i
  %i.bub = load float, ptr %gep.us1492.i.1, align 4, !tbaa !39
  store float %i.bub, ptr %i.btz, align 4, !tbaa !39
  %i.buc = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 12
  %gep.us1492.1.i.1 = getelementptr i8, ptr %invariant.gep1481.us.i.1, i64 %.reass1480.us.1.i
  %i.bud = load float, ptr %gep.us1492.1.i.1, align 4, !tbaa !39
  store float %i.bud, ptr %i.buc, align 4, !tbaa !39
  %i.bue = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 16
  %i.buf = getelementptr [4 x i8], ptr %i.bsi, i64 %indvars.iv1794.i
  %invariant.gep1481.us.i.2 = getelementptr i8, ptr %i.buf, i64 8 ; 2 uses
  %gep.us1492.i.2 = getelementptr i8, ptr %invariant.gep1481.us.i.2, i64 %.reass1480.us.i
  %i.bug = load float, ptr %gep.us1492.i.2, align 4, !tbaa !39
  store float %i.bug, ptr %i.bue, align 4, !tbaa !39
  %i.buh = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 20
  %gep.us1492.1.i.2 = getelementptr i8, ptr %invariant.gep1481.us.i.2, i64 %.reass1480.us.1.i
  %i.bui = load float, ptr %gep.us1492.1.i.2, align 4, !tbaa !39
  store float %i.bui, ptr %i.buh, align 4, !tbaa !39
  %i.buj = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 24
  %i.buk = getelementptr [4 x i8], ptr %i.bsi, i64 %indvars.iv1794.i
  %invariant.gep1481.us.i.3 = getelementptr i8, ptr %i.buk, i64 12 ; 2 uses
  %gep.us1492.i.3 = getelementptr i8, ptr %invariant.gep1481.us.i.3, i64 %.reass1480.us.i
  %i.bul = load float, ptr %gep.us1492.i.3, align 4, !tbaa !39
  store float %i.bul, ptr %i.buj, align 4, !tbaa !39
  %i.bum = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 28
  %gep.us1492.1.i.3 = getelementptr i8, ptr %invariant.gep1481.us.i.3, i64 %.reass1480.us.1.i
  %i.bun = load float, ptr %gep.us1492.1.i.3, align 4, !tbaa !39
  store float %i.bun, ptr %i.bum, align 4, !tbaa !39
  %i.buo = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 32 ; 2 uses
  %indvars.iv.next1795.i.3 = add nuw nsw i64 %indvars.iv1794.i, 4 ; 2 uses
  %exitcond1798.not.i.3 = icmp eq i64 %indvars.iv.next1795.i.3, %wide.trip.count1774.i
  br i1 %exitcond1798.not.i.3, label %._crit_edge1486.us.i, label %.preheader.us.i, !llvm.loop !224

._crit_edge1486.us.i:                             ; preds = %.preheader.us.i.prol.loopexit, %.preheader.us.i, %middle.block787
  %.lcssa326 = phi ptr [ %i.bth, %middle.block787 ], [ %.lcssa937.unr, %.preheader.us.i.prol.loopexit ], [ %i.buo, %.preheader.us.i ] ; 2 uses
  %indvars.iv.next1800.i = add nuw nsw i64 %indvars.iv1799.i, 2 ; 2 uses
  %i.bup = trunc i64 %indvars.iv.next1800.i to i32 ; 2 uses
  %i.buq = or i32 %i.bup, 1
  %i.bur = icmp slt i32 %i.buq, %i.bu
  %indvar.next760 = add i64 %indvar759, 1
  br i1 %i.bur, label %.preheader1131.us.i, label %.preheader1134.i, !llvm.loop !225

.preheader1134.i:                                 ; preds = %._crit_edge1486.us.i, %.preheader1131.preheader.i, %.preheader1135.i
  %.6.lcssa.i = phi ptr [ %.3451.lcssa.i, %.preheader1135.i ], [ %.3451.lcssa.i, %.preheader1131.preheader.i ], [ %.lcssa326, %._crit_edge1486.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1135.i ], [ %i.bsn, %.preheader1131.preheader.i ], [ %i.bup, %._crit_edge1486.us.i ] ; 2 uses
  %i.bus = icmp slt i32 %.2.lcssa.i, %i.bu
  br i1 %i.bus, label %.preheader1130.lr.ph.i, label %._crit_edge1501.split.i

.preheader1130.lr.ph.i:                           ; preds = %.preheader1134.i
  %i.but = load i32, ptr %i.awm, align 4
  %i.buu = load ptr, ptr %3, align 8              ; 2 uses
  %i.buv = load i64, ptr %i.awn, align 8          ; 2 uses
  %i.buw = mul i64 %i.buv, %indvars.iv1810.i
  %i.bux = load i64, ptr %i.awo, align 8          ; 4 uses
  %i.buy = mul i64 %i.buw, %i.bux
  %i.buz = getelementptr inbounds nuw i8, ptr %i.buu, i64 %i.buy
  %i.bva = sext i32 %i.but to i64                 ; 3 uses
  %factor.op.mul1502.i = mul i64 %i.bux, %i.bva
  br i1 %i.awl, label %.preheader1130.preheader.i, label %._crit_edge1501.split.i

.preheader1130.preheader.i:                       ; preds = %.preheader1130.lr.ph.i
  %i.bvb = ptrtoaddr ptr %i.buu to i64
  %i.bvc = zext i32 %.2.lcssa.i to i64            ; 2 uses
  %i.bvd = mul i64 %i.buv, %indvars.iv1810.i
  %i.bve = mul nsw i64 %i.bva, %i.bvc
  %i.bvf = add i64 %i.bvd, %i.bve
  %i.bvg = mul i64 %i.bux, %i.bvf
  %i.bvh = add i64 %i.bvg, %i.bvb
  %i.bvi = mul i64 %i.bux, %i.bva
  br label %iter.check742

iter.check742:                                    ; preds = %._crit_edge1497.i, %.preheader1130.preheader.i
  %indvar722 = phi i64 [ %indvar.next723, %._crit_edge1497.i ], [ 0, %.preheader1130.preheader.i ] ; 2 uses
  %indvars.iv1807.i = phi i64 [ %indvars.iv.next1808.i, %._crit_edge1497.i ], [ %i.bvc, %.preheader1130.preheader.i ] ; 2 uses
  %.91499.i = phi ptr [ %.lcssa328, %._crit_edge1497.i ], [ %.6.lcssa.i, %.preheader1130.preheader.i ] ; 7 uses
  %.reass1503.i = mul i64 %factor.op.mul1502.i, %indvars.iv1807.i
end_hunk_3
begin_hunk_4_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.ra = getelementptr inbounds [4 x i8], ptr %i.qz, i64 %i.pj
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !39
  %i.rc = insertelement <4 x float> poison, float %i.rb, i64 0
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = mul i64 %i.pc, %i.ny
  %i.rf = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.ph
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.rg, i64 %i.pj
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit975.us.us.i:                 ; preds = %bb.bd
  %i.ri = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !426
  %i.rj = load ptr, ptr %1, align 8, !tbaa !20, !noalias !426 ; 2 uses
  %i.rk = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !426
  %i.rl = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !426 ; 2 uses
  %i.rm = mul i64 %i.rl, %i.rk                    ; 2 uses
  %i.rn = mul i64 %i.rm, %i.of
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rn
  %i.rp = sext i32 %i.ri to i64
  %i.rq = mul nsw i64 %i.rp, %i.oo
  %i.rr = mul i64 %i.rq, %i.rl                    ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 %i.rr
  %i.rt = shl nsw i32 %i.ot, 2
  %i.ru = sext i32 %i.rt to i64                   ; 2 uses
  %i.rv = getelementptr inbounds [4 x i8], ptr %i.rs, i64 %i.ru ; 4 uses
  %i.rw = mul i64 %i.rm, %i.og
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rw
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rr
  %i.rz = getelementptr inbounds [4 x i8], ptr %i.ry, i64 %i.ru ; 4 uses
  %i.sa = load float, ptr %i.rv, align 4, !tbaa !39
  %i.sb = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.sc = shufflevector <4 x float> %i.sb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rv, i64 4
  %i.se = load float, ptr %i.sd, align 4, !tbaa !39
  %i.sf = insertelement <4 x float> poison, float %i.se, i64 0
  %i.sg = shufflevector <4 x float> %i.sf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.si = load float, ptr %i.sh, align 4, !tbaa !39
  %i.sj = insertelement <4 x float> poison, float %i.si, i64 0
  %i.sk = shufflevector <4 x float> %i.sj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rv, i64 12
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !39
  %i.sn = insertelement <4 x float> poison, float %i.sm, i64 0
  %i.so = shufflevector <4 x float> %i.sn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sp = load float, ptr %i.rz, align 4, !tbaa !39
  %i.sq = insertelement <4 x float> poison, float %i.sp, i64 0
  %i.sr = shufflevector <4 x float> %i.sq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ss = getelementptr inbounds nuw i8, ptr %i.rz, i64 4
  %i.st = load float, ptr %i.ss, align 4, !tbaa !39
  %i.su = insertelement <4 x float> poison, float %i.st, i64 0
  %i.sv = shufflevector <4 x float> %i.su, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !39
  %i.sy = insertelement <4 x float> poison, float %i.sx, i64 0
  %i.sz = shufflevector <4 x float> %i.sy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ta = getelementptr inbounds nuw i8, ptr %i.rz, i64 12
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit976.us.us.i:                 ; preds = %bb.bd
  %i.tb = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !427
  %i.tc = load ptr, ptr %1, align 8, !tbaa !20, !noalias !427
  %i.td = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !427
  %i.te = mul i64 %i.td, %i.oh
  %i.tf = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !427 ; 2 uses
  %i.tg = mul i64 %i.te, %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 %i.tg
  %i.ti = sext i32 %i.tb to i64
  %i.tj = mul nsw i64 %i.ti, %i.oo
  %i.tk = mul i64 %i.tj, %i.tf
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tk
  %i.tm = shl nsw i32 %i.ot, 3
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %i.tl, i64 %i.tn ; 8 uses
  %i.tp = load float, ptr %i.to, align 4, !tbaa !39
  %i.tq = insertelement <4 x float> poison, float %i.tp, i64 0
  %i.tr = shufflevector <4 x float> %i.tq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ts = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !39
  %i.tu = insertelement <4 x float> poison, float %i.tt, i64 0
  %i.tv = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !39
  %i.ty = insertelement <4 x float> poison, float %i.tx, i64 0
  %i.tz = shufflevector <4 x float> %i.ty, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ua = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  %i.ub = load float, ptr %i.ua, align 4, !tbaa !39
  %i.uc = insertelement <4 x float> poison, float %i.ub, i64 0
  %i.ud = shufflevector <4 x float> %i.uc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ue = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !39
  %i.ug = insertelement <4 x float> poison, float %i.uf, i64 0
  %i.uh = shufflevector <4 x float> %i.ug, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ui = getelementptr inbounds nuw i8, ptr %i.to, i64 20
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !39
  %i.uk = insertelement <4 x float> poison, float %i.uj, i64 0
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.um = getelementptr inbounds nuw i8, ptr %i.to, i64 24
  %i.un = load float, ptr %i.um, align 4, !tbaa !39
  %i.uo = insertelement <4 x float> poison, float %i.un, i64 0
  %i.up = shufflevector <4 x float> %i.uo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uq = getelementptr inbounds nuw i8, ptr %i.to, i64 28
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit976.us.us.i, %_ZN4ncnn3MatD2Ev.exit975.us.us.i, %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  %.sink.in.i = phi ptr [ %i.uq, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ta, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.rh, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3606.i = phi <4 x float> [ %i.tr, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sc, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.pn, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3603.i = phi <4 x float> [ %i.tv, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sg, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.pu, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3600.i = phi <4 x float> [ %i.tz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sk, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qb, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3597.i = phi <4 x float> [ %i.ud, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.so, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qi, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3593.i = phi <4 x float> [ %i.uh, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sr, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qp, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3589.i = phi <4 x float> [ %i.ul, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sv, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.qw, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3585.i = phi <4 x float> [ %i.up, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.sz, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.rd, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink.i = load float, ptr %.sink.in.i, align 4, !tbaa !39
  %i.ur = insertelement <4 x float> poison, float %.sink.i, i64 0
  %i.us = shufflevector <4 x float> %i.ur, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ut = load <4 x float>, ptr %i.ox, align 16, !tbaa !82
  %i.uu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3606.i, <4 x float> nofpclass(nan inf) %i.ut, <4 x float> nofpclass(nan inf) %.323202517.us.us.i)
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.uw = load <4 x float>, ptr %i.uv, align 16, !tbaa !82
  %i.ux = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3603.i, <4 x float> nofpclass(nan inf) %i.uw, <4 x float> nofpclass(nan inf) %.223312516.us.us.i)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.uz = load <4 x float>, ptr %i.uy, align 16, !tbaa !82
  %i.va = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3600.i, <4 x float> nofpclass(nan inf) %i.uz, <4 x float> nofpclass(nan inf) %.223462515.us.us.i)
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ox, i64 48
  %i.vc = load <4 x float>, ptr %i.vb, align 16, !tbaa !82
  %i.vd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3597.i, <4 x float> nofpclass(nan inf) %i.vc, <4 x float> nofpclass(nan inf) %.223562514.us.us.i)
  %i.ve = getelementptr inbounds nuw i8, ptr %i.ox, i64 64
  %i.vf = load <4 x float>, ptr %i.ve, align 16, !tbaa !82
  %i.vg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3593.i, <4 x float> nofpclass(nan inf) %i.vf, <4 x float> nofpclass(nan inf) %i.uu)
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ox, i64 80
  %i.vi = load <4 x float>, ptr %i.vh, align 16, !tbaa !82
  %i.vj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3589.i, <4 x float> nofpclass(nan inf) %i.vi, <4 x float> nofpclass(nan inf) %i.ux)
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ox, i64 96
  %i.vl = load <4 x float>, ptr %i.vk, align 16, !tbaa !82
  %i.vm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3585.i, <4 x float> nofpclass(nan inf) %i.vl, <4 x float> nofpclass(nan inf) %i.va)
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ox, i64 112
  %i.vo = load <4 x float>, ptr %i.vn, align 16, !tbaa !82
  %i.vp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.us, <4 x float> nofpclass(nan inf) %i.vo, <4 x float> nofpclass(nan inf) %i.vd)
  br label %bb.be

bb.be:                                            ; preds = %.sink.split.i, %bb.bd, %bb.bc, %bb.bb
  %.32357.us.us.i = phi nsz <4 x float> [ %.223562514.us.us.i, %bb.bb ], [ %.223562514.us.us.i, %bb.bd ], [ %.223562514.us.us.i, %bb.bc ], [ %i.vp, %.sink.split.i ] ; 2 uses
  %.32347.us.us.i = phi nsz <4 x float> [ %.223462515.us.us.i, %bb.bb ], [ %.223462515.us.us.i, %bb.bd ], [ %.223462515.us.us.i, %bb.bc ], [ %i.vm, %.sink.split.i ] ; 2 uses
  %.32332.us.us.i = phi nsz <4 x float> [ %.223312516.us.us.i, %bb.bb ], [ %.223312516.us.us.i, %bb.bd ], [ %.223312516.us.us.i, %bb.bc ], [ %i.vj, %.sink.split.i ] ; 2 uses
  %.42321.us.us.i = phi nsz <4 x float> [ %.323202517.us.us.i, %bb.bb ], [ %.323202517.us.us.i, %bb.bd ], [ %.323202517.us.us.i, %bb.bc ], [ %i.vg, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.nx
  br i1 %exitcond.not.i, label %..loopexit2504_crit_edge.us.us.i, label %bb.bb, !llvm.loop !335

..loopexit2504_crit_edge.us.us.i:                 ; preds = %bb.be, %bb.ba, %.lr.ph2527.split.us.us.i
  %.42358.us.us.i = phi nsz <4 x float> [ %.123552522.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123552522.us.us.i, %bb.ba ], [ %.32357.us.us.i, %bb.be ] ; 2 uses
  %.42348.us.us.i = phi nsz <4 x float> [ %.123452523.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123452523.us.us.i, %bb.ba ], [ %.32347.us.us.i, %bb.be ] ; 2 uses
  %.42333.us.us.i = phi nsz <4 x float> [ %.123302524.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.123302524.us.us.i, %bb.ba ], [ %.32332.us.us.i, %bb.be ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223192525.us.us.i, %.lr.ph2527.split.us.us.i ], [ %.223192525.us.us.i, %bb.ba ], [ %.42321.us.us.i, %bb.be ] ; 2 uses
  %indvars.iv.next3267.i = add nuw nsw i64 %indvars.iv3266.i, 1 ; 2 uses
  %exitcond3270.not.i = icmp eq i64 %indvars.iv.next3267.i, %wide.trip.count3269.i
  br i1 %exitcond3270.not.i, label %._crit_edge.us.i, label %.lr.ph2527.split.us.us.i, !llvm.loop !336

._crit_edge.us.i:                                 ; preds = %..loopexit2504_crit_edge.us.us.i, %.preheader2508.us.i
  %.us-phi.us.i = phi <4 x float> [ %.023542537.us.i, %.preheader2508.us.i ], [ %.42358.us.us.i, %..loopexit2504_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2534.us.i = phi <4 x float> [ %.023442538.us.i, %.preheader2508.us.i ], [ %.42348.us.us.i, %..loopexit2504_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2535.us.i = phi <4 x float> [ %.023292539.us.i, %.preheader2508.us.i ], [ %.42333.us.us.i, %..loopexit2504_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2536.us.i = phi <4 x float> [ %.123182540.us.i, %.preheader2508.us.i ], [ %.5.us.us.i, %..loopexit2504_crit_edge.us.us.i ] ; 2 uses
  %i.vq = getelementptr inbounds [4 x i8], ptr %.07512542.us.i, i64 %i.mz ; 2 uses
  %indvars.iv.next3272.i = add nuw nsw i64 %indvars.iv3271.i, 8 ; 2 uses
  %i.vr = icmp slt i64 %indvars.iv.next3272.i, %invariant.op3579.i
  br i1 %i.vr, label %.preheader2508.us.i, label %.preheader2511.i, !llvm.loop !337

.preheader2511.i:                                 ; preds = %._crit_edge.us.i, %.preheader2508.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02354.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02344.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi2534.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02329.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2508.preheader.i ], [ %.us-phi2535.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12318.lcssa.i = phi <4 x float> [ %.02317.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02317.i, %.preheader2508.preheader.i ], [ %.us-phi2536.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0756.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.mr, %.preheader2508.preheader.i ], [ %i.mr, %._crit_edge.us.i ] ; 7 uses
  %.0751.lcssa.i = phi ptr [ %i.no, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3264.i, %.preheader2508.preheader.i ], [ %i.vq, %._crit_edge.us.i ] ; 4 uses
  %i.vs = or disjoint i32 %.0756.lcssa.i, 3       ; 2 uses
  %i.vt = icmp slt i32 %i.vs, %i.lk
  br i1 %i.vt, label %.preheader2507.lr.ph.i, label %.preheader2510.i

.preheader2507.lr.ph.i:                           ; preds = %.preheader2511.i
  %i.vu = load i32, ptr %i.d, align 4             ; 2 uses
  %i.vv = load i32, ptr %i.j, align 4
  %invariant.op2608.i = sub i32 %.neg2466.i, %i.vv ; 2 uses
  %i.vw = load i32, ptr %i.f, align 4             ; 4 uses
  %i.vx = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.vx                       ; 2 uses
  %i.vy = load i32, ptr %i.c, align 4             ; 2 uses
  %i.vz = load i32, ptr %i.i, align 4
  %.neg2464.i = add nuw nsw i32 %.07482731.i, 1
  %invariant.op2572.i = sub i32 %.neg2464.i, %i.vz ; 2 uses
  %i.wa = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.mw, label %.preheader2507.lr.ph.split.us.i, label %.preheader2507.preheader.i

.preheader2507.preheader.i:                       ; preds = %.preheader2507.lr.ph.i
  %i.wb = sub i32 %i.mt, %.0756.lcssa.i
  %i.wc = and i32 %i.wb, -4                       ; 2 uses
  %i.wd = zext i32 %i.wc to i64
  %i.we = add nuw nsw i64 %i.wd, 4
  %i.wf = mul nsw i64 %i.we, %i.nb
  %scevgep3274.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.wf
  %i.wg = add i32 %.0756.lcssa.i, 4
  %i.wh = add i32 %i.wg, %i.wc
  br label %.preheader2510.i

.preheader2507.lr.ph.split.us.i:                  ; preds = %.preheader2507.lr.ph.i
  %i.wi = icmp sgt i32 %.fr.i, 0
  br i1 %i.wi, label %.preheader2507.us.us.preheader.i, label %.preheader2507.us.preheader.i

.preheader2507.us.preheader.i:                    ; preds = %.preheader2507.lr.ph.split.us.i
  %i.wj = sub i32 %i.mt, %.0756.lcssa.i
  %i.wk = and i32 %i.wj, -4                       ; 2 uses
  %i.wl = zext i32 %i.wk to i64
  %i.wm = add nuw nsw i64 %i.wl, 4
  %i.wn = mul nsw i64 %i.wm, %i.nb
  %scevgep3275.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.wn
  %i.wo = add i32 %.0756.lcssa.i, 4
  %i.wp = add i32 %i.wo, %i.wk
  br label %.preheader2510.i

.preheader2507.us.us.preheader.i:                 ; preds = %.preheader2507.lr.ph.split.us.i
  %i.wq = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.wr = zext i32 %.0756.lcssa.i to i64
  %i.ws = zext nneg i32 %i.vs to i64
  br label %.preheader2507.us.us.i

.preheader2507.us.us.i:                           ; preds = %._crit_edge.split.us.us2644.us.i, %.preheader2507.us.us.preheader.i
  %indvars.iv3291.i = phi i64 [ %i.wr, %.preheader2507.us.us.preheader.i ], [ %indvars.iv.next3292.i, %._crit_edge.split.us.us2644.us.i ] ; 5 uses
  %i.wt = phi i64 [ %i.ws, %.preheader2507.us.us.preheader.i ], [ %i.abo, %._crit_edge.split.us.us2644.us.i ]
  %.17522629.us.us.i = phi ptr [ %.0751.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %i.abn, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %.623222627.us.us.i = phi <4 x float> [ %.12318.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi154, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %.523342626.us.us.i = phi <4 x float> [ %.02329.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi153, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %.523492625.us.us.i = phi <4 x float> [ %.02344.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi152, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %.523592624.us.us.i = phi <4 x float> [ %.02354.lcssa.i, %.preheader2507.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2644.us.i ] ; 3 uses
  %i.wu = add nuw nsw i64 %indvars.iv3291.i, 1
  %i.wv = add nuw nsw i64 %indvars.iv3291.i, 2
  %i.ww = lshr exact i64 %indvars.iv3291.i, 2
  switch i32 %.fr2597.i, label %._crit_edge.split.us.us2644.us.i [
    i32 4, label %.preheader2507.us.us.i.split.us
    i32 1, label %.preheader2507.us.us.i.split.us155
  ]

.preheader2507.us.us.i.split.us:                  ; preds = %.preheader2507.us.us.i, %..loopexit2502_crit_edge.us.us.us.i.us
  %indvars.iv3286.i.us = phi i64 [ %indvars.iv.next3287.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ 0, %.preheader2507.us.us.i ] ; 3 uses
  %.72601.us.us.us.i.us = phi <4 x float> [ %.102325.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.623222627.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623352600.us.us.us.i.us = phi <4 x float> [ %.92338.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523342626.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623502599.us.us.us.i.us = phi <4 x float> [ %.92353.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523492625.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623602598.us.us.us.i.us = phi <4 x float> [ %.92363.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523592624.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %i.wx = trunc i64 %indvars.iv3286.i.us to i32
  %i.wy = mul i32 %i.vu, %i.wx
  %.reass2609.us.us.us.i.us = add i32 %i.wy, %invariant.op2608.i ; 3 uses
  %i.wz = icmp slt i32 %.reass2609.us.us.us.i.us, 0
  br i1 %i.wz, label %..loopexit2502_crit_edge.us.us.us.i.us, label %bb.bf

bb.bf:                                            ; preds = %.preheader2507.us.us.i.split.us
  %i.xa = srem i32 %.reass2609.us.us.us.i.us, %i.vw
  %i.xb = sdiv i32 %.reass2609.us.us.us.i.us, %i.vw ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.xa, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.xb, %i.lm
  %or.cond402 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond402, label %.preheader2501.us.us.us.i.us, label %..loopexit2502_crit_edge.us.us.us.i.us

.preheader2501.us.us.us.i.us:                     ; preds = %bb.bf
  %i.xc = mul nuw nsw i64 %indvars.iv3286.i.us, %i.wq
  %i.xd = sext i32 %i.xb to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2501.us.us.us.i.us, %bb.bh
  %indvars.iv3281.i.us = phi i64 [ %indvars.iv.next3282.i.us, %bb.bh ], [ 0, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.823232566.us.us.us.us.i.us = phi <4 x float> [ %.92324.us.us.us.us.i.us, %bb.bh ], [ %.72601.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723362565.us.us.us.us.i.us = phi <4 x float> [ %.82337.us.us.us.us.i.us, %bb.bh ], [ %.623352600.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723512564.us.us.us.us.i.us = phi <4 x float> [ %.82352.us.us.us.us.i.us, %bb.bh ], [ %.623502599.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %.723612563.us.us.us.us.i.us = phi <4 x float> [ %.82362.us.us.us.us.i.us, %bb.bh ], [ %.623602598.us.us.us.i.us, %.preheader2501.us.us.us.i.us ] ; 3 uses
  %i.xe = trunc i64 %indvars.iv3281.i.us to i32
  %i.xf = mul i32 %i.vy, %i.xe
  %.reass.us.us2610.us.us.i.us = add i32 %i.xf, %invariant.op2572.i ; 3 uses
  %i.xg = icmp slt i32 %.reass.us.us2610.us.us.i.us, 0
  br i1 %i.xg, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.xh = srem i32 %.reass.us.us2610.us.us.i.us, %i.wa
  %i.xi = sdiv i32 %.reass.us.us2610.us.us.i.us, %i.wa ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.xh, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.xi, %i.ll
  %or.cond403 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond403, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.bh

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.bg
  %i.xj = add nuw nsw i64 %indvars.iv3281.i.us, %i.xc
  %i.xk = shl i64 %i.xj, 4
  %i.xl = and i64 %i.xk, 4294967280
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.17522629.us.us.i, i64 %i.xl ; 4 uses
  %i.xn = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !428
  %i.xo = load ptr, ptr %1, align 8, !tbaa !20, !noalias !428
  %i.xp = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !428
  %i.xq = mul i64 %i.xp, %i.ww
  %i.xr = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !428 ; 2 uses
  %i.xs = mul i64 %i.xq, %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xs
  %i.xu = sext i32 %i.xn to i64
  %i.xv = mul nsw i64 %i.xu, %i.xd
  %i.xw = mul i64 %i.xv, %i.xr
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.xw
  %i.xy = shl nsw i32 %i.xi, 2
  %i.xz = sext i32 %i.xy to i64
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.xx, i64 %i.xz ; 4 uses
  %i.yb = load float, ptr %i.ya, align 1, !tbaa !82
  %i.yc = insertelement <4 x float> poison, float %i.yb, i64 0
  %i.yd = shufflevector <4 x float> %i.yc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ya, i64 4
  %i.yf = load float, ptr %i.ye, align 1, !tbaa !82
  %i.yg = insertelement <4 x float> poison, float %i.yf, i64 0
  %i.yh = shufflevector <4 x float> %i.yg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yj = load float, ptr %i.yi, align 1, !tbaa !82
  %i.yk = insertelement <4 x float> poison, float %i.yj, i64 0
  %i.yl = shufflevector <4 x float> %i.yk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ya, i64 12
  %i.yn = load float, ptr %i.ym, align 1, !tbaa !82
  %i.yo = insertelement <4 x float> poison, float %i.yn, i64 0
  %i.yp = shufflevector <4 x float> %i.yo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yq = load <4 x float>, ptr %i.xm, align 16, !tbaa !82
  %i.yr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yd, <4 x float> nofpclass(nan inf) %i.yq, <4 x float> nofpclass(nan inf) %.823232566.us.us.us.us.i.us)
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %i.yt = load <4 x float>, ptr %i.ys, align 16, !tbaa !82
  %i.yu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yh, <4 x float> nofpclass(nan inf) %i.yt, <4 x float> nofpclass(nan inf) %.723362565.us.us.us.us.i.us)
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xm, i64 32
  %i.yw = load <4 x float>, ptr %i.yv, align 16, !tbaa !82
  %i.yx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yl, <4 x float> nofpclass(nan inf) %i.yw, <4 x float> nofpclass(nan inf) %.723512564.us.us.us.us.i.us)
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xm, i64 48
  %i.yz = load <4 x float>, ptr %i.yy, align 16, !tbaa !82
  %i.za = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.yp, <4 x float> nofpclass(nan inf) %i.yz, <4 x float> nofpclass(nan inf) %.723612563.us.us.us.us.i.us)
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, %bb.bg, %.lr.ph.split.us.us.us.us.i.us
  %.82362.us.us.us.us.i.us = phi nsz <4 x float> [ %.723612563.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.723612563.us.us.us.us.i.us, %bb.bg ], [ %i.za, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82352.us.us.us.us.i.us = phi nsz <4 x float> [ %.723512564.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.723512564.us.us.us.us.i.us, %bb.bg ], [ %i.yx, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82337.us.us.us.us.i.us = phi nsz <4 x float> [ %.723362565.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.723362565.us.us.us.us.i.us, %bb.bg ], [ %i.yu, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.92324.us.us.us.us.i.us = phi nsz <4 x float> [ %.823232566.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.823232566.us.us.us.us.i.us, %bb.bg ], [ %i.yr, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3282.i.us = add nuw nsw i64 %indvars.iv3281.i.us, 1 ; 2 uses
  %exitcond3285.not.i.us = icmp eq i64 %indvars.iv.next3282.i.us, %i.wq
  br i1 %exitcond3285.not.i.us, label %..loopexit2502_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !340

..loopexit2502_crit_edge.us.us.us.i.us:           ; preds = %bb.bh, %bb.bf, %.preheader2507.us.us.i.split.us
  %.92363.us.us.us.i.us = phi nsz <4 x float> [ %.623602598.us.us.us.i.us, %.preheader2507.us.us.i.split.us ], [ %.623602598.us.us.us.i.us, %bb.bf ], [ %.82362.us.us.us.us.i.us, %bb.bh ] ; 2 uses
  %.92353.us.us.us.i.us = phi nsz <4 x float> [ %.623502599.us.us.us.i.us, %.preheader2507.us.us.i.split.us ], [ %.623502599.us.us.us.i.us, %bb.bf ], [ %.82352.us.us.us.us.i.us, %bb.bh ] ; 2 uses
  %.92338.us.us.us.i.us = phi nsz <4 x float> [ %.623352600.us.us.us.i.us, %.preheader2507.us.us.i.split.us ], [ %.623352600.us.us.us.i.us, %bb.bf ], [ %.82337.us.us.us.us.i.us, %bb.bh ] ; 2 uses
  %.102325.us.us.us.i.us = phi nsz <4 x float> [ %.72601.us.us.us.i.us, %.preheader2507.us.us.i.split.us ], [ %.72601.us.us.us.i.us, %bb.bf ], [ %.92324.us.us.us.us.i.us, %bb.bh ] ; 2 uses
  %indvars.iv.next3287.i.us = add nuw nsw i64 %indvars.iv3286.i.us, 1 ; 2 uses
  %exitcond3290.not.i.us = icmp eq i64 %indvars.iv.next3287.i.us, %wide.trip.count3269.i
  br i1 %exitcond3290.not.i.us, label %._crit_edge.split.us.us2644.us.i, label %.preheader2507.us.us.i.split.us, !llvm.loop !341

.preheader2507.us.us.i.split.us155:               ; preds = %.preheader2507.us.us.i, %..loopexit2502_crit_edge.us.us.us.i.us165
  %indvars.iv3286.i.us156 = phi i64 [ %indvars.iv.next3287.i.us170, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ 0, %.preheader2507.us.us.i ] ; 3 uses
  %.72601.us.us.us.i.us157 = phi <4 x float> [ %.102325.us.us.us.i.us169, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ %.623222627.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623352600.us.us.us.i.us158 = phi <4 x float> [ %.92338.us.us.us.i.us168, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ %.523342626.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623502599.us.us.us.i.us159 = phi <4 x float> [ %.92353.us.us.us.i.us167, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ %.523492625.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %.623602598.us.us.us.i.us160 = phi <4 x float> [ %.92363.us.us.us.i.us166, %..loopexit2502_crit_edge.us.us.us.i.us165 ], [ %.523592624.us.us.i, %.preheader2507.us.us.i ] ; 3 uses
  %i.zb = trunc i64 %indvars.iv3286.i.us156 to i32
  %i.zc = mul i32 %i.vu, %i.zb
  %.reass2609.us.us.us.i.us161 = add i32 %i.zc, %invariant.op2608.i ; 3 uses
  %i.zd = icmp slt i32 %.reass2609.us.us.us.i.us161, 0
  br i1 %i.zd, label %..loopexit2502_crit_edge.us.us.us.i.us165, label %bb.bi

bb.bi:                                            ; preds = %.preheader2507.us.us.i.split.us155
  %i.ze = srem i32 %.reass2609.us.us.us.i.us161, %i.vw
  %i.zf = sdiv i32 %.reass2609.us.us.us.i.us161, %i.vw ; 2 uses
  %.not930.us.us.us.i.us162 = icmp eq i32 %i.ze, 0
  %.not931.us.us.us.i.us163 = icmp slt i32 %i.zf, %i.lm
  %or.cond404 = select i1 %.not930.us.us.us.i.us162, i1 %.not931.us.us.us.i.us163, i1 false
  br i1 %or.cond404, label %.preheader2501.us.us.us.i.us164, label %..loopexit2502_crit_edge.us.us.us.i.us165

.preheader2501.us.us.us.i.us164:                  ; preds = %bb.bi
  %i.zg = mul nuw nsw i64 %indvars.iv3286.i.us156, %i.wq
  %i.zh = sext i32 %i.zf to i64
  br label %.lr.ph.split.us2576.us.us.us.i.us

.lr.ph.split.us2576.us.us.us.i.us:                ; preds = %.preheader2501.us.us.us.i.us164, %bb.bk
  %indvars.iv3276.i.us = phi i64 [ %indvars.iv.next3277.i.us, %bb.bk ], [ 0, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %.823232566.us2578.us.us.us.i.us = phi <4 x float> [ %.92324.us2588.us.us.us.i.us, %bb.bk ], [ %.72601.us.us.us.i.us157, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %.723362565.us2579.us.us.us.i.us = phi <4 x float> [ %.82337.us2587.us.us.us.i.us, %bb.bk ], [ %.623352600.us.us.us.i.us158, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %.723512564.us2580.us.us.us.i.us = phi <4 x float> [ %.82352.us2586.us.us.us.i.us, %bb.bk ], [ %.623502599.us.us.us.i.us159, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %.723612563.us2581.us.us.us.i.us = phi <4 x float> [ %.82362.us2585.us.us.us.i.us, %bb.bk ], [ %.623602598.us.us.us.i.us160, %.preheader2501.us.us.us.i.us164 ] ; 3 uses
  %i.zi = trunc i64 %indvars.iv3276.i.us to i32
  %i.zj = mul i32 %i.vy, %i.zi
  %.reass.us2582.us.us.us.i.us = add i32 %i.zj, %invariant.op2572.i ; 3 uses
  %i.zk = icmp slt i32 %.reass.us2582.us.us.us.i.us, 0
  br i1 %i.zk, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.split.us2576.us.us.us.i.us
  %i.zl = srem i32 %.reass.us2582.us.us.us.i.us, %i.wa
  %i.zm = sdiv i32 %.reass.us2582.us.us.us.i.us, %i.wa ; 2 uses
  %.not932.us2583.us.us.us.i.us = icmp eq i32 %i.zl, 0
  %.not933.us2584.us.us.us.i.us = icmp slt i32 %i.zm, %i.ll
  %or.cond405 = select i1 %.not932.us2583.us.us.us.i.us, i1 %.not933.us2584.us.us.us.i.us, i1 false
  br i1 %or.cond405, label %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, label %bb.bk

_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us:        ; preds = %bb.bj
  %i.zn = add nuw nsw i64 %indvars.iv3276.i.us, %i.zg
  %i.zo = shl i64 %i.zn, 4
  %i.zp = and i64 %i.zo, 4294967280
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %.17522629.us.us.i, i64 %i.zp ; 4 uses
  %i.zr = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !429
  %i.zs = load ptr, ptr %1, align 8, !tbaa !20, !noalias !429 ; 4 uses
  %i.zt = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !429
  %i.zu = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !429 ; 2 uses
  %i.zv = mul i64 %i.zu, %i.zt                    ; 4 uses
  %i.zw = mul i64 %i.zv, %indvars.iv3291.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.zw
  %i.zy = sext i32 %i.zr to i64
  %i.zz = mul nsw i64 %i.zy, %i.zh
  %i.aaa = mul i64 %i.zz, %i.zu                   ; 4 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zx, i64 %i.aaa
  %i.aac = sext i32 %i.zm to i64                  ; 4 uses
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.aab, i64 %i.aac
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !39
  %i.aaf = insertelement <4 x float> poison, float %i.aae, i64 0
  %i.aag = shufflevector <4 x float> %i.aaf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aah = mul i64 %i.zv, %i.wu
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.aah
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aaa
  %i.aak = getelementptr inbounds [4 x i8], ptr %i.aaj, i64 %i.aac
  %i.aal = load float, ptr %i.aak, align 4, !tbaa !39
  %i.aam = insertelement <4 x float> poison, float %i.aal, i64 0
  %i.aan = shufflevector <4 x float> %i.aam, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aao = mul i64 %i.zv, %i.wv
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.aao
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 %i.aaa
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.aaq, i64 %i.aac
  %i.aas = load float, ptr %i.aar, align 4, !tbaa !39
  %i.aat = insertelement <4 x float> poison, float %i.aas, i64 0
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aav = mul i64 %i.zv, %i.wt
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zs, i64 %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.aaa
  %i.aay = getelementptr inbounds [4 x i8], ptr %i.aax, i64 %i.aac
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !39
  %i.aba = insertelement <4 x float> poison, float %i.aaz, i64 0
  %i.abb = shufflevector <4 x float> %i.aba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abc = load <4 x float>, ptr %i.zq, align 16, !tbaa !82
  %i.abd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aag, <4 x float> nofpclass(nan inf) %i.abc, <4 x float> nofpclass(nan inf) %.823232566.us2578.us.us.us.i.us)
  %i.abe = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.abf = load <4 x float>, ptr %i.abe, align 16, !tbaa !82
  %i.abg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aan, <4 x float> nofpclass(nan inf) %i.abf, <4 x float> nofpclass(nan inf) %.723362565.us2579.us.us.us.i.us)
  %i.abh = getelementptr inbounds nuw i8, ptr %i.zq, i64 32
  %i.abi = load <4 x float>, ptr %i.abh, align 16, !tbaa !82
  %i.abj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aau, <4 x float> nofpclass(nan inf) %i.abi, <4 x float> nofpclass(nan inf) %.723512564.us2580.us.us.us.i.us)
  %i.abk = getelementptr inbounds nuw i8, ptr %i.zq, i64 48
  %i.abl = load <4 x float>, ptr %i.abk, align 16, !tbaa !82
  %i.abm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abb, <4 x float> nofpclass(nan inf) %i.abl, <4 x float> nofpclass(nan inf) %.723612563.us2581.us.us.us.i.us)
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, %bb.bj, %.lr.ph.split.us2576.us.us.us.i.us
  %.82362.us2585.us.us.us.i.us = phi nsz <4 x float> [ %.723612563.us2581.us.us.us.i.us, %.lr.ph.split.us2576.us.us.us.i.us ], [ %i.abm, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.723612563.us2581.us.us.us.i.us, %bb.bj ] ; 2 uses
  %.82352.us2586.us.us.us.i.us = phi nsz <4 x float> [ %.723512564.us2580.us.us.us.i.us, %.lr.ph.split.us2576.us.us.us.i.us ], [ %i.abj, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.723512564.us2580.us.us.us.i.us, %bb.bj ] ; 2 uses
  %.82337.us2587.us.us.us.i.us = phi nsz <4 x float> [ %.723362565.us2579.us.us.us.i.us, %.lr.ph.split.us2576.us.us.us.i.us ], [ %i.abg, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.723362565.us2579.us.us.us.i.us, %bb.bj ] ; 2 uses
  %.92324.us2588.us.us.us.i.us = phi nsz <4 x float> [ %.823232566.us2578.us.us.us.i.us, %.lr.ph.split.us2576.us.us.us.i.us ], [ %i.abd, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.823232566.us2578.us.us.us.i.us, %bb.bj ] ; 2 uses
  %indvars.iv.next3277.i.us = add nuw nsw i64 %indvars.iv3276.i.us, 1 ; 2 uses
  %exitcond3280.not.i.us = icmp eq i64 %indvars.iv.next3277.i.us, %i.wq
  br i1 %exitcond3280.not.i.us, label %..loopexit2502_crit_edge.us.us.us.i.us165, label %.lr.ph.split.us2576.us.us.us.i.us, !llvm.loop !340

..loopexit2502_crit_edge.us.us.us.i.us165:        ; preds = %bb.bk, %bb.bi, %.preheader2507.us.us.i.split.us155
  %.92363.us.us.us.i.us166 = phi nsz <4 x float> [ %.623602598.us.us.us.i.us160, %.preheader2507.us.us.i.split.us155 ], [ %.623602598.us.us.us.i.us160, %bb.bi ], [ %.82362.us2585.us.us.us.i.us, %bb.bk ] ; 2 uses
  %.92353.us.us.us.i.us167 = phi nsz <4 x float> [ %.623502599.us.us.us.i.us159, %.preheader2507.us.us.i.split.us155 ], [ %.623502599.us.us.us.i.us159, %bb.bi ], [ %.82352.us2586.us.us.us.i.us, %bb.bk ] ; 2 uses
  %.92338.us.us.us.i.us168 = phi nsz <4 x float> [ %.623352600.us.us.us.i.us158, %.preheader2507.us.us.i.split.us155 ], [ %.623352600.us.us.us.i.us158, %bb.bi ], [ %.82337.us2587.us.us.us.i.us, %bb.bk ] ; 2 uses
  %.102325.us.us.us.i.us169 = phi nsz <4 x float> [ %.72601.us.us.us.i.us157, %.preheader2507.us.us.i.split.us155 ], [ %.72601.us.us.us.i.us157, %bb.bi ], [ %.92324.us2588.us.us.us.i.us, %bb.bk ] ; 2 uses
  %indvars.iv.next3287.i.us170 = add nuw nsw i64 %indvars.iv3286.i.us156, 1 ; 2 uses
  %exitcond3290.not.i.us171 = icmp eq i64 %indvars.iv.next3287.i.us170, %wide.trip.count3269.i
  br i1 %exitcond3290.not.i.us171, label %._crit_edge.split.us.us2644.us.i, label %.preheader2507.us.us.i.split.us155, !llvm.loop !341

._crit_edge.split.us.us2644.us.i:                 ; preds = %..loopexit2502_crit_edge.us.us.us.i.us165, %..loopexit2502_crit_edge.us.us.us.i.us, %.preheader2507.us.us.i
  %.us-phi = phi <4 x float> [ %.92363.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523592624.us.us.i, %.preheader2507.us.us.i ], [ %.92363.us.us.us.i.us166, %..loopexit2502_crit_edge.us.us.us.i.us165 ] ; 2 uses
  %.us-phi152 = phi <4 x float> [ %.92353.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523492625.us.us.i, %.preheader2507.us.us.i ], [ %.92353.us.us.us.i.us167, %..loopexit2502_crit_edge.us.us.us.i.us165 ] ; 2 uses
  %.us-phi153 = phi <4 x float> [ %.92338.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.523342626.us.us.i, %.preheader2507.us.us.i ], [ %.92338.us.us.us.i.us168, %..loopexit2502_crit_edge.us.us.us.i.us165 ] ; 2 uses
  %.us-phi154 = phi <4 x float> [ %.102325.us.us.us.i.us, %..loopexit2502_crit_edge.us.us.us.i.us ], [ %.623222627.us.us.i, %.preheader2507.us.us.i ], [ %.102325.us.us.us.i.us169, %..loopexit2502_crit_edge.us.us.us.i.us165 ] ; 2 uses
  %i.abn = getelementptr inbounds [4 x i8], ptr %.17522629.us.us.i, i64 %i.nb ; 2 uses
  %indvars.iv.next3292.i = add nuw nsw i64 %indvars.iv3291.i, 4 ; 3 uses
  %i.abo = or disjoint i64 %indvars.iv.next3292.i, 3 ; 2 uses
  %i.abp = trunc nuw i64 %i.abo to i32
  %i.abq = icmp sgt i32 %i.lk, %i.abp
  br i1 %i.abq, label %.preheader2507.us.us.i, label %.preheader2510.loopexit.i, !llvm.loop !344

.preheader2510.loopexit.i:                        ; preds = %._crit_edge.split.us.us2644.us.i
  %i.abr = trunc nuw i64 %indvars.iv.next3292.i to i32
  br label %.preheader2510.i

.preheader2510.i:                                 ; preds = %.preheader2510.loopexit.i, %.preheader2507.us.preheader.i, %.preheader2507.preheader.i, %.preheader2511.i
  %.52359.lcssa.i = phi <4 x float> [ %.02354.lcssa.i, %.preheader2511.i ], [ %.us-phi, %.preheader2510.loopexit.i ], [ %.02354.lcssa.i, %.preheader2507.us.preheader.i ], [ %.02354.lcssa.i, %.preheader2507.preheader.i ]
  %.52349.lcssa.i = phi <4 x float> [ %.02344.lcssa.i, %.preheader2511.i ], [ %.us-phi152, %.preheader2510.loopexit.i ], [ %.02344.lcssa.i, %.preheader2507.us.preheader.i ], [ %.02344.lcssa.i, %.preheader2507.preheader.i ]
  %.52334.lcssa.i = phi <4 x float> [ %.02329.lcssa.i, %.preheader2511.i ], [ %.us-phi153, %.preheader2510.loopexit.i ], [ %.02329.lcssa.i, %.preheader2507.us.preheader.i ], [ %.02329.lcssa.i, %.preheader2507.preheader.i ] ; 4 uses
  %.62322.lcssa.i = phi <4 x float> [ %.12318.lcssa.i, %.preheader2511.i ], [ %.us-phi154, %.preheader2510.loopexit.i ], [ %.12318.lcssa.i, %.preheader2507.us.preheader.i ], [ %.12318.lcssa.i, %.preheader2507.preheader.i ] ; 4 uses
  %.1757.lcssa.i = phi i32 [ %.0756.lcssa.i, %.preheader2511.i ], [ %i.abr, %.preheader2510.loopexit.i ], [ %i.wp, %.preheader2507.us.preheader.i ], [ %i.wh, %.preheader2507.preheader.i ] ; 7 uses
  %.1752.lcssa.i = phi ptr [ %.0751.lcssa.i, %.preheader2511.i ], [ %i.abn, %.preheader2510.loopexit.i ], [ %scevgep3275.i, %.preheader2507.us.preheader.i ], [ %scevgep3274.i, %.preheader2507.preheader.i ] ; 4 uses
  %i.abs = or disjoint i32 %.1757.lcssa.i, 1      ; 2 uses
  %i.abt = icmp slt i32 %i.abs, %i.lk
  br i1 %i.abt, label %.preheader2506.lr.ph.i, label %.preheader2509.i

.preheader2506.lr.ph.i:                           ; preds = %.preheader2510.i
  %i.abu = load i32, ptr %i.d, align 4
  %i.abv = load i32, ptr %i.j, align 4
  %invariant.op2669.i = sub i32 %.neg2466.i, %i.abv
  %i.abw = load i32, ptr %i.f, align 4            ; 2 uses
  %i.abx = load i32, ptr %i.a, align 4
  %.fr3166.i = freeze i32 %i.abx                  ; 2 uses
  %i.aby = load i32, ptr %i.c, align 4
  %i.abz = load i32, ptr %i.i, align 4
  %.neg2460.i = add nuw nsw i32 %.07482731.i, 1
  %invariant.op2662.i = sub i32 %.neg2460.i, %i.abz
  %i.aca = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.mw, label %.preheader2506.lr.ph.split.us.i, label %.preheader2506.preheader.i

.preheader2506.preheader.i:                       ; preds = %.preheader2506.lr.ph.i
  %i.acb = sub i32 %i.mu, %.1757.lcssa.i          ; 2 uses
  %i.acc = lshr i32 %i.acb, 1
  %i.acd = zext nneg i32 %i.acc to i64
  %i.ace = shl nuw nsw i64 %i.acd, 2
  %i.acf = add nuw nsw i64 %i.ace, 4
  %i.acg = mul i64 %i.acf, %i.nd
  %scevgep3294.i = getelementptr i8, ptr %.1752.lcssa.i, i64 %i.acg
  %i.ach = add i32 %.1757.lcssa.i, 2
  %i.aci = and i32 %i.acb, -2
  %i.acj = add i32 %i.ach, %i.aci
  br label %.preheader2509.i

.preheader2506.lr.ph.split.us.i:                  ; preds = %.preheader2506.lr.ph.i
  %i.ack = icmp sgt i32 %.fr3166.i, 0
  br i1 %i.ack, label %.preheader2506.us.us.preheader.i, label %.preheader2506.us.preheader.i

.preheader2506.us.preheader.i:                    ; preds = %.preheader2506.lr.ph.split.us.i
  %i.acl = sub i32 %i.mu, %.1757.lcssa.i          ; 2 uses
  %i.acm = lshr i32 %i.acl, 1
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = shl nuw nsw i64 %i.acn, 2
  %i.acp = add nuw nsw i64 %i.aco, 4
  %i.acq = mul i64 %i.acp, %i.nd
  %scevgep3295.i = getelementptr i8, ptr %.1752.lcssa.i, i64 %i.acq
  %i.acr = add i32 %.1757.lcssa.i, 2
  %i.acs = and i32 %i.acl, -2
  %i.act = add i32 %i.acr, %i.acs
  br label %.preheader2509.i

.preheader2506.us.us.preheader.i:                 ; preds = %.preheader2506.lr.ph.split.us.i
  %i.acu = zext nneg i32 %.fr3166.i to i64        ; 2 uses
  %i.acv = zext i32 %.1757.lcssa.i to i64
  %i.acw = zext nneg i32 %i.abs to i64
  br label %.preheader2506.us.us.i

.preheader2506.us.us.i:                           ; preds = %._crit_edge.split.us.us2691.us.i, %.preheader2506.us.us.preheader.i
  %indvars.iv3306.i = phi i64 [ %i.acv, %.preheader2506.us.us.preheader.i ], [ %indvars.iv.next3307.i, %._crit_edge.split.us.us2691.us.i ] ; 2 uses
  %i.acx = phi i64 [ %i.acw, %.preheader2506.us.us.preheader.i ], [ %i.aer, %._crit_edge.split.us.us2691.us.i ]
  %.27532677.us.us.i = phi ptr [ %.1752.lcssa.i, %.preheader2506.us.us.preheader.i ], [ %i.aeq, %._crit_edge.split.us.us2691.us.i ] ; 2 uses
  %.1123262675.us.us.i = phi <4 x float> [ %.62322.lcssa.i, %.preheader2506.us.us.preheader.i ], [ %.152328.us.us.us.i, %._crit_edge.split.us.us2691.us.i ]
  %.1023392674.us.us.i = phi <4 x float> [ %.52334.lcssa.i, %.preheader2506.us.us.preheader.i ], [ %.142343.us.us.us.i, %._crit_edge.split.us.us2691.us.i ]
  br label %bb.bl

bb.bl:                                            ; preds = %..loopexit2500_crit_edge.us.us.us.i, %.preheader2506.us.us.i
  %indvars.iv3301.i = phi i64 [ %indvars.iv.next3302.i, %..loopexit2500_crit_edge.us.us.us.i ], [ 0, %.preheader2506.us.us.i ] ; 3 uses
  %.122664.us.us.us.i = phi <4 x float> [ %.152328.us.us.us.i, %..loopexit2500_crit_edge.us.us.us.i ], [ %.1123262675.us.us.i, %.preheader2506.us.us.i ] ; 3 uses
  %.1123402663.us.us.us.i = phi <4 x float> [ %.142343.us.us.us.i, %..loopexit2500_crit_edge.us.us.us.i ], [ %.1023392674.us.us.i, %.preheader2506.us.us.i ] ; 3 uses
  %i.acy = trunc i64 %indvars.iv3301.i to i32
  %i.acz = mul i32 %i.abu, %i.acy
  %.reass2670.us.us.us.i = add i32 %i.acz, %invariant.op2669.i ; 3 uses
  %i.ada = icmp slt i32 %.reass2670.us.us.us.i, 0
  br i1 %i.ada, label %..loopexit2500_crit_edge.us.us.us.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.adb = srem i32 %.reass2670.us.us.us.i, %i.abw
  %i.adc = sdiv i32 %.reass2670.us.us.us.i, %i.abw ; 2 uses
  %.not926.us.us.us.i = icmp eq i32 %i.adb, 0
  %.not927.us.us.us.i = icmp slt i32 %i.adc, %i.lm
  %or.cond406 = select i1 %.not926.us.us.us.i, i1 %.not927.us.us.us.i, i1 false
  br i1 %or.cond406, label %.preheader2499.us.us.us.i, label %..loopexit2500_crit_edge.us.us.us.i

.preheader2499.us.us.us.i:                        ; preds = %bb.bm
  %i.add = mul nuw nsw i64 %indvars.iv3301.i, %i.acu
  %i.ade = sext i32 %i.adc to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bp, %.preheader2499.us.us.us.i
  %indvars.iv3296.i = phi i64 [ %indvars.iv.next3297.i, %bb.bp ], [ 0, %.preheader2499.us.us.us.i ] ; 3 uses
  %.1323272658.us.us.us.i = phi <4 x float> [ %.14.us.us.us.i, %bb.bp ], [ %.122664.us.us.us.i, %.preheader2499.us.us.us.i ] ; 3 uses
  %.1223412657.us.us.us.i = phi <4 x float> [ %.132342.us.us.us.i, %bb.bp ], [ %.1123402663.us.us.us.i, %.preheader2499.us.us.us.i ] ; 3 uses
  %i.adf = trunc i64 %indvars.iv3296.i to i32
  %i.adg = mul i32 %i.aby, %i.adf
  %.reass.us.us2690.us.i = add i32 %invariant.op2662.i, %i.adg ; 3 uses
  %i.adh = icmp slt i32 %.reass.us.us2690.us.i, 0
  br i1 %i.adh, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.adi = srem i32 %.reass.us.us2690.us.i, %i.aca
  %i.adj = sdiv i32 %.reass.us.us2690.us.i, %i.aca ; 2 uses
  %.not928.us.us.us.i = icmp eq i32 %i.adi, 0
  %.not929.us.us.us.i = icmp slt i32 %i.adj, %i.ll
  %or.cond407 = select i1 %.not928.us.us.us.i, i1 %.not929.us.us.us.i, i1 false
  br i1 %or.cond407, label %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i, label %bb.bp

_ZN4ncnn3MatD2Ev.exit960.us.us.us.i:              ; preds = %bb.bo
  %i.adk = add nuw nsw i64 %indvars.iv3296.i, %i.add
  %i.adl = shl i64 %i.adk, 3
  %i.adm = and i64 %i.adl, 4294967288
  %i.adn = getelementptr inbounds nuw [4 x i8], ptr %.27532677.us.us.i, i64 %i.adm ; 2 uses
  %i.ado = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !430
  %i.adp = load ptr, ptr %1, align 8, !tbaa !20, !noalias !430 ; 2 uses
  %i.adq = load i64, ptr %i.jt, align 8, !tbaa !21, !noalias !430
  %i.adr = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !430 ; 2 uses
  %i.ads = mul i64 %i.adr, %i.adq                 ; 2 uses
  %i.adt = mul i64 %i.ads, %indvars.iv3306.i
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.adt
  %i.adv = sext i32 %i.ado to i64
  %i.adw = mul nsw i64 %i.adv, %i.ade
  %i.adx = mul i64 %i.adw, %i.adr                 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adu, i64 %i.adx
  %i.adz = sext i32 %i.adj to i64                 ; 2 uses
  %i.aea = getelementptr inbounds [4 x i8], ptr %i.ady, i64 %i.adz
  %i.aeb = mul i64 %i.ads, %i.acx
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adp, i64 %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 %i.adx
  %i.aee = getelementptr inbounds [4 x i8], ptr %i.aed, i64 %i.adz
  %i.aef = load float, ptr %i.aea, align 4, !tbaa !39
  %i.aeg = insertelement <4 x float> poison, float %i.aef, i64 0
  %i.aeh = shufflevector <4 x float> %i.aeg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aei = load float, ptr %i.aee, align 4, !tbaa !39
  %i.aej = insertelement <4 x float> poison, float %i.aei, i64 0
  %i.aek = shufflevector <4 x float> %i.aej, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ael = load <4 x float>, ptr %i.adn, align 16, !tbaa !82
  %i.aem = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aeh, <4 x float> nofpclass(nan inf) %i.ael, <4 x float> nofpclass(nan inf) %.1323272658.us.us.us.i)
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adn, i64 16
  %i.aeo = load <4 x float>, ptr %i.aen, align 16, !tbaa !82
  %i.aep = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aek, <4 x float> nofpclass(nan inf) %i.aeo, <4 x float> nofpclass(nan inf) %.1223412657.us.us.us.i)
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i, %bb.bo, %bb.bn
  %.132342.us.us.us.i = phi nsz <4 x float> [ %.1223412657.us.us.us.i, %bb.bn ], [ %i.aep, %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i ], [ %.1223412657.us.us.us.i, %bb.bo ] ; 2 uses
  %.14.us.us.us.i = phi nsz <4 x float> [ %.1323272658.us.us.us.i, %bb.bn ], [ %i.aem, %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i ], [ %.1323272658.us.us.us.i, %bb.bo ] ; 2 uses
  %indvars.iv.next3297.i = add nuw nsw i64 %indvars.iv3296.i, 1 ; 2 uses
  %exitcond3300.not.i = icmp eq i64 %indvars.iv.next3297.i, %i.acu
  br i1 %exitcond3300.not.i, label %..loopexit2500_crit_edge.us.us.us.i, label %bb.bn, !llvm.loop !347

..loopexit2500_crit_edge.us.us.us.i:              ; preds = %bb.bp, %bb.bm, %bb.bl
  %.142343.us.us.us.i = phi nsz <4 x float> [ %.1123402663.us.us.us.i, %bb.bl ], [ %.1123402663.us.us.us.i, %bb.bm ], [ %.132342.us.us.us.i, %bb.bp ] ; 3 uses
  %.152328.us.us.us.i = phi nsz <4 x float> [ %.122664.us.us.us.i, %bb.bl ], [ %.122664.us.us.us.i, %bb.bm ], [ %.14.us.us.us.i, %bb.bp ] ; 3 uses
  %indvars.iv.next3302.i = add nuw nsw i64 %indvars.iv3301.i, 1 ; 2 uses
  %exitcond3305.not.i = icmp eq i64 %indvars.iv.next3302.i, %wide.trip.count3269.i
  br i1 %exitcond3305.not.i, label %._crit_edge.split.us.us2691.us.i, label %bb.bl, !llvm.loop !348

._crit_edge.split.us.us2691.us.i:                 ; preds = %..loopexit2500_crit_edge.us.us.us.i
  %i.aeq = getelementptr inbounds [4 x i8], ptr %.27532677.us.us.i, i64 %i.nd ; 2 uses
  %indvars.iv.next3307.i = add nuw nsw i64 %indvars.iv3306.i, 2 ; 3 uses
  %i.aer = or disjoint i64 %indvars.iv.next3307.i, 1 ; 2 uses
  %i.aes = trunc nuw i64 %i.aer to i32
  %i.aet = icmp sgt i32 %i.lk, %i.aes
  br i1 %i.aet, label %.preheader2506.us.us.i, label %.preheader2509.loopexit.i, !llvm.loop !349

.preheader2509.loopexit.i:                        ; preds = %._crit_edge.split.us.us2691.us.i
  %i.aeu = trunc nuw i64 %indvars.iv.next3307.i to i32
  br label %.preheader2509.i

.preheader2509.i:                                 ; preds = %.preheader2509.loopexit.i, %.preheader2506.us.preheader.i, %.preheader2506.preheader.i, %.preheader2510.i
  %.102339.lcssa.i = phi <4 x float> [ %.52334.lcssa.i, %.preheader2510.i ], [ %.142343.us.us.us.i, %.preheader2509.loopexit.i ], [ %.52334.lcssa.i, %.preheader2506.us.preheader.i ], [ %.52334.lcssa.i, %.preheader2506.preheader.i ]
  %.112326.lcssa.i = phi <4 x float> [ %.62322.lcssa.i, %.preheader2510.i ], [ %.152328.us.us.us.i, %.preheader2509.loopexit.i ], [ %.62322.lcssa.i, %.preheader2506.us.preheader.i ], [ %.62322.lcssa.i, %.preheader2506.preheader.i ] ; 3 uses
  %.2758.lcssa.i = phi i32 [ %.1757.lcssa.i, %.preheader2510.i ], [ %i.aeu, %.preheader2509.loopexit.i ], [ %i.act, %.preheader2506.us.preheader.i ], [ %i.acj, %.preheader2506.preheader.i ] ; 2 uses
  %.2753.lcssa.i = phi ptr [ %.1752.lcssa.i, %.preheader2510.i ], [ %i.aeq, %.preheader2509.loopexit.i ], [ %scevgep3295.i, %.preheader2506.us.preheader.i ], [ %scevgep3294.i, %.preheader2506.preheader.i ]
  %i.aev = icmp slt i32 %.2758.lcssa.i, %i.lk
  br i1 %i.aev, label %.preheader2505.lr.ph.i, label %._crit_edge2717.i

.preheader2505.lr.ph.i:                           ; preds = %.preheader2509.i
  %i.aew = load i32, ptr %i.d, align 4
  %i.aex = load i32, ptr %i.j, align 4
  %invariant.op2709.i = sub i32 %.neg2466.i, %i.aex
  %i.aey = load i32, ptr %i.f, align 4            ; 2 uses
  %i.aez = load i32, ptr %i.a, align 4
  %.fr3167.i = freeze i32 %i.aez                  ; 2 uses
  %i.afa = load i32, ptr %i.c, align 4
  %i.afb = load i32, ptr %i.i, align 4
  %.neg2456.i = add nuw nsw i32 %.07482731.i, 1
  %invariant.op2704.i = sub i32 %.neg2456.i, %i.afb
  %i.afc = load i32, ptr %i.e, align 4            ; 2 uses
  %i.afd = icmp sgt i32 %.fr3167.i, 0
  %or.cond.i = and i1 %i.mw, %i.afd
  br i1 %or.cond.i, label %.preheader2505.us.us.preheader.i, label %._crit_edge2717.i

.preheader2505.us.us.preheader.i:                 ; preds = %.preheader2505.lr.ph.i
  %i.afe = zext nneg i32 %.fr3167.i to i64        ; 2 uses
  %i.aff = zext i32 %.2758.lcssa.i to i64
  br label %.preheader2505.us.us.i

.preheader2505.us.us.i:                           ; preds = %._crit_edge.split.us.us2727.us.i, %.preheader2505.us.us.preheader.i
  %indvars.iv3319.i = phi i64 [ %i.aff, %.preheader2505.us.us.preheader.i ], [ %indvars.iv.next3320.i, %._crit_edge.split.us.us2727.us.i ] ; 2 uses
  %.37542715.us.us.i = phi ptr [ %.2753.lcssa.i, %.preheader2505.us.us.preheader.i ], [ %i.ago, %._crit_edge.split.us.us2727.us.i ] ; 2 uses
  %.162713.us.us.i = phi <4 x float> [ %.112326.lcssa.i, %.preheader2505.us.us.preheader.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2727.us.i ]
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2498_crit_edge.us.us.us.i, %.preheader2505.us.us.i
  %indvars.iv3314.i = phi i64 [ %indvars.iv.next3315.i, %..loopexit2498_crit_edge.us.us.us.i ], [ 0, %.preheader2505.us.us.i ] ; 3 uses
  %.172705.us.us.us.i = phi <4 x float> [ %.20.us.us.us.i, %..loopexit2498_crit_edge.us.us.us.i ], [ %.162713.us.us.i, %.preheader2505.us.us.i ] ; 3 uses
  %i.afg = trunc i64 %indvars.iv3314.i to i32
  %i.afh = mul i32 %i.aew, %i.afg
  %.reass2710.us.us.us.i = add i32 %i.afh, %invariant.op2709.i ; 3 uses
  %i.afi = icmp slt i32 %.reass2710.us.us.us.i, 0
  br i1 %i.afi, label %..loopexit2498_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.afj = srem i32 %.reass2710.us.us.us.i, %i.aey
  %i.afk = sdiv i32 %.reass2710.us.us.us.i, %i.aey ; 2 uses
  %.not922.us.us.us.i = icmp eq i32 %i.afj, 0
  %.not923.us.us.us.i = icmp slt i32 %i.afk, %i.lm
  %or.cond408 = select i1 %.not922.us.us.us.i, i1 %.not923.us.us.us.i, i1 false
  br i1 %or.cond408, label %.preheader2497.us.us.us.i, label %..loopexit2498_crit_edge.us.us.us.i

.preheader2497.us.us.us.i:                        ; preds = %bb.br
  %i.afl = mul nuw nsw i64 %indvars.iv3314.i, %i.afe
  %i.afm = sext i32 %i.afk to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %.preheader2497.us.us.us.i
  %indvars.iv3309.i = phi i64 [ %indvars.iv.next3310.i, %bb.bu ], [ 0, %.preheader2497.us.us.us.i ] ; 3 uses
  %.182701.us.us.us.i = phi <4 x float> [ %.19.us.us.us.i, %bb.bu ], [ %.172705.us.us.us.i, %.preheader2497.us.us.us.i ] ; 3 uses
  %i.afn = trunc i64 %indvars.iv3309.i to i32
  %i.afo = mul i32 %i.afa, %i.afn
  %.reass.us.us2726.us.i = add i32 %invariant.op2704.i, %i.afo ; 3 uses
  %i.afp = icmp slt i32 %.reass.us.us2726.us.i, 0
  br i1 %i.afp, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.afq = srem i32 %.reass.us.us2726.us.i, %i.afc
  %i.afr = sdiv i32 %.reass.us.us2726.us.i, %i.afc ; 2 uses
  %.not924.us.us.us.i = icmp eq i32 %i.afq, 0
  %.not925.us.us.us.i = icmp slt i32 %i.afr, %i.ll
  %or.cond409 = select i1 %.not924.us.us.us.i, i1 %.not925.us.us.us.i, i1 false
  br i1 %or.cond409, label %_ZN4ncnn3MatD2Ev.exit958.us.us.us.i, label %bb.bu

_ZN4ncnn3MatD2Ev.exit958.us.us.us.i:              ; preds = %bb.bt
  %i.afs = add nuw nsw i64 %indvars.iv3309.i, %i.afl
  %i.aft = shl i64 %i.afs, 2
  %i.afu = and i64 %i.aft, 4294967292
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.37542715.us.us.i, i64 %i.afu
  %i.afw = load i32, ptr %i.ag, align 4, !tbaa !54, !noalias !431
end_hunk_4
begin_hunk_5_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %indvars.iv3342.i = phi i64 [ %indvars.iv.next3343.i, %..loopexit2490_crit_edge.us.us.us.i ], [ 0, %.preheader2494.us.us.i ] ; 3 uses
  %.123802751.us.us.us.i = phi <8 x float> [ %.42383.us.us.us.i, %..loopexit2490_crit_edge.us.us.us.i ], [ %.023792763.us.us.i, %.preheader2494.us.us.i ] ; 3 uses
  %.123852750.us.us.us.i = phi <8 x float> [ %.42388.us.us.us.i, %..loopexit2490_crit_edge.us.us.us.i ], [ %.023842762.us.us.i, %.preheader2494.us.us.i ] ; 3 uses
  %i.aqc = trunc i64 %indvars.iv3342.i to i32
  %i.aqd = mul i32 %i.apj, %i.aqc
  %.reass2758.us.us.us.i = add i32 %i.aqd, %invariant.op2757.i ; 3 uses
  %i.aqe = icmp slt i32 %.reass2758.us.us.us.i, 0
  br i1 %i.aqe, label %..loopexit2490_crit_edge.us.us.us.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aqf = srem i32 %.reass2758.us.us.us.i, %i.apl
  %i.aqg = sdiv i32 %.reass2758.us.us.us.i, %i.apl ; 2 uses
  %.not916.us.us.us.i = icmp eq i32 %i.aqf, 0
  %.not917.us.us.us.i = icmp slt i32 %i.aqg, %i.kh
  %or.cond410 = select i1 %.not916.us.us.us.i, i1 %.not917.us.us.us.i, i1 false
  br i1 %or.cond410, label %.preheader2489.us.us.us.i, label %..loopexit2490_crit_edge.us.us.us.i

.preheader2489.us.us.us.i:                        ; preds = %bb.cg
  %i.aqh = mul nuw nsw i64 %indvars.iv3342.i, %i.apr
  %i.aqi = sext i32 %i.aqg to i64
  %i.aqj = mul nsw i64 %i.aqi, %i.lg              ; 3 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ck, %.preheader2489.us.us.us.i
  %indvars.iv3337.i = phi i64 [ %indvars.iv.next3338.i, %bb.ck ], [ 0, %.preheader2489.us.us.us.i ] ; 3 uses
  %.223812744.us.us.us.i = phi <8 x float> [ %.32382.us.us.us.i, %bb.ck ], [ %.123802751.us.us.us.i, %.preheader2489.us.us.us.i ] ; 4 uses
  %.223862743.us.us.us.i = phi <8 x float> [ %.32387.us.us.us.i, %bb.ck ], [ %.123852750.us.us.us.i, %.preheader2489.us.us.us.i ] ; 4 uses
  %i.aqk = trunc i64 %indvars.iv3337.i to i32
  %i.aql = mul i32 %i.apn, %i.aqk
  %.reass2749.us.us.us.i = add i32 %invariant.op2748.i, %i.aql ; 3 uses
  %i.aqm = icmp slt i32 %.reass2749.us.us.us.i, 0
  br i1 %i.aqm, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.aqn = srem i32 %.reass2749.us.us.us.i, %i.app
  %i.aqo = sdiv i32 %.reass2749.us.us.us.i, %i.app ; 4 uses
  %.not918.us.us.us.i = icmp eq i32 %i.aqn, 0
  %.not919.us.us.us.i = icmp slt i32 %i.aqo, %i.kg
  %or.cond411 = select i1 %.not918.us.us.us.i, i1 %.not919.us.us.us.i, i1 false
  br i1 %or.cond411, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.aqp = add nuw nsw i64 %indvars.iv3337.i, %i.aqh
  %i.aqq = shl i64 %i.aqp, 4
  %i.aqr = and i64 %i.aqq, 4294967280
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr %.07672764.us.us.i, i64 %i.aqr ; 2 uses
  switch i32 %.fr2814.i, label %bb.ck [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit951.us.us.us.i:              ; preds = %bb.cj
  %i.aqt = load ptr, ptr %1, align 8, !tbaa !20, !noalias !434
  %i.aqu = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !434
  %i.aqv = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !434 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.aqv, %i.aqu ; 8 uses
  %i.aqw = mul i64 %i.aqj, %i.aqv
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.aqt, i64 %i.aqw
  %i.aqx = sext i32 %i.aqo to i64
  %invariant.gep2740.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.aqx ; 8 uses
  %.reass.us.us2780.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv3347.i
  %gep2741.us.us.us.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.i
  %i.aqy = load float, ptr %gep2741.us.us.us.i, align 4, !tbaa !39
  %.sroa.03498.0.vec.insert.i = insertelement <8 x float> poison, float %i.aqy, i64 0
  %.reass.us.us2780.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.apv
  %gep2741.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.1.i
  %i.aqz = load float, ptr %gep2741.us.us.us.1.i, align 4, !tbaa !39
  %.sroa.03498.4.vec.insert.i = insertelement <8 x float> %.sroa.03498.0.vec.insert.i, float %i.aqz, i64 1
  %.reass.us.us2780.us.2.i = mul i64 %factor.op.mul.us.us.us.i, %i.apw
  %gep2741.us.us.us.2.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.2.i
  %i.ara = load float, ptr %gep2741.us.us.us.2.i, align 4, !tbaa !39
  %.sroa.03498.8.vec.insert.i = insertelement <8 x float> %.sroa.03498.4.vec.insert.i, float %i.ara, i64 2
  %.reass.us.us2780.us.3.i = mul i64 %factor.op.mul.us.us.us.i, %i.apx
  %gep2741.us.us.us.3.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.3.i
  %i.arb = load float, ptr %gep2741.us.us.us.3.i, align 4, !tbaa !39
  %.sroa.03498.12.vec.insert.i = insertelement <8 x float> %.sroa.03498.8.vec.insert.i, float %i.arb, i64 3
  %.reass.us.us2780.us.4.i = mul i64 %factor.op.mul.us.us.us.i, %i.apy
  %gep2741.us.us.us.4.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.4.i
  %i.arc = load float, ptr %gep2741.us.us.us.4.i, align 4, !tbaa !39
  %.sroa.03498.16.vec.insert.i = insertelement <8 x float> %.sroa.03498.12.vec.insert.i, float %i.arc, i64 4
  %.reass.us.us2780.us.5.i = mul i64 %factor.op.mul.us.us.us.i, %i.apz
  %gep2741.us.us.us.5.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.5.i
  %i.ard = load float, ptr %gep2741.us.us.us.5.i, align 4, !tbaa !39
  %.sroa.03498.20.vec.insert.i = insertelement <8 x float> %.sroa.03498.16.vec.insert.i, float %i.ard, i64 5
  %.reass.us.us2780.us.6.i = mul i64 %factor.op.mul.us.us.us.i, %i.aqa
  %gep2741.us.us.us.6.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.6.i
  %i.are = load float, ptr %gep2741.us.us.us.6.i, align 4, !tbaa !39
  %.sroa.03498.24.vec.insert.i = insertelement <8 x float> %.sroa.03498.20.vec.insert.i, float %i.are, i64 6
  %.reass.us.us2780.us.7.i = mul i64 %factor.op.mul.us.us.us.i, %i.aqb
  %gep2741.us.us.us.7.i = getelementptr i8, ptr %invariant.gep2740.us.us.us.i, i64 %.reass.us.us2780.us.7.i
  %i.arf = load float, ptr %gep2741.us.us.us.7.i, align 4, !tbaa !39
  %.sroa.03498.28.vec.insert.i = insertelement <8 x float> %.sroa.03498.24.vec.insert.i, float %i.arf, i64 7
  br label %.sink.split3610.i

_ZN4ncnn3MatD2Ev.exit953.us.us.us.i:              ; preds = %bb.cj
  %i.arg = load ptr, ptr %1, align 8, !tbaa !20, !noalias !435 ; 2 uses
  %i.arh = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !435
  %i.ari = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !435 ; 2 uses
  %i.arj = mul i64 %i.ari, %i.arh                 ; 2 uses
  %i.ark = mul i64 %i.arj, %i.aps
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.ark
  %i.arm = mul i64 %i.aqj, %i.ari                 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arm
  %i.aro = shl nsw i32 %i.aqo, 2
  %i.arp = sext i32 %i.aro to i64                 ; 2 uses
  %i.arq = getelementptr inbounds [4 x i8], ptr %i.arn, i64 %i.arp
  %i.arr = mul i64 %i.arj, %i.apt
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %i.ars, i64 %i.arm
  %i.aru = getelementptr inbounds [4 x i8], ptr %i.art, i64 %i.arp
  %i.arv = load <4 x float>, ptr %i.arq, align 16, !tbaa !82
  %i.arw = load <4 x float>, ptr %i.aru, align 16, !tbaa !82
  %i.arx = shufflevector <4 x float> %i.arv, <4 x float> %i.arw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.sink.split3610.i

_ZN4ncnn3MatD2Ev.exit954.us.us.us.i:              ; preds = %bb.cj
  %i.ary = load ptr, ptr %1, align 8, !tbaa !20, !noalias !436
  %i.arz = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !436
  %i.asa = mul i64 %i.arz, %i.apu
  %i.asb = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !436 ; 2 uses
  %i.asc = mul i64 %i.asa, %i.asb
  %i.asd = getelementptr inbounds nuw i8, ptr %i.ary, i64 %i.asc
  %i.ase = mul i64 %i.aqj, %i.asb
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asd, i64 %i.ase
  %i.asg = shl nsw i32 %i.aqo, 3
  %i.ash = sext i32 %i.asg to i64
  %i.asi = getelementptr inbounds [4 x i8], ptr %i.asf, i64 %i.ash
  %i.asj = load <8 x float>, ptr %i.asi, align 32, !tbaa !82
  br label %.sink.split3610.i

.sink.split3610.i:                                ; preds = %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  %.sink3614.i = phi <8 x float> [ %i.asj, %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i ], [ %i.arx, %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i ], [ %.sroa.03498.28.vec.insert.i, %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i ] ; 2 uses
  %i.ask = load <8 x float>, ptr %i.aqs, align 32, !tbaa !82
  %i.asl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3614.i, <8 x float> nofpclass(nan inf) %i.ask, <8 x float> nofpclass(nan inf) %.223862743.us.us.us.i)
  %i.asm = getelementptr inbounds nuw i8, ptr %i.aqs, i64 32
  %i.asn = load <8 x float>, ptr %i.asm, align 32, !tbaa !82
  %i.aso = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3614.i, <8 x float> nofpclass(nan inf) %i.asn, <8 x float> nofpclass(nan inf) %.223812744.us.us.us.i)
  br label %bb.ck

bb.ck:                                            ; preds = %.sink.split3610.i, %bb.cj, %bb.ci, %bb.ch
  %.32387.us.us.us.i = phi nsz <8 x float> [ %.223862743.us.us.us.i, %bb.ch ], [ %.223862743.us.us.us.i, %bb.cj ], [ %.223862743.us.us.us.i, %bb.ci ], [ %i.asl, %.sink.split3610.i ] ; 2 uses
  %.32382.us.us.us.i = phi nsz <8 x float> [ %.223812744.us.us.us.i, %bb.ch ], [ %.223812744.us.us.us.i, %bb.cj ], [ %.223812744.us.us.us.i, %bb.ci ], [ %i.aso, %.sink.split3610.i ] ; 2 uses
  %indvars.iv.next3338.i = add nuw nsw i64 %indvars.iv3337.i, 1 ; 2 uses
  %exitcond3341.not.i = icmp eq i64 %indvars.iv.next3338.i, %i.apr
  br i1 %exitcond3341.not.i, label %..loopexit2490_crit_edge.us.us.us.i, label %bb.ch, !llvm.loop !368

..loopexit2490_crit_edge.us.us.us.i:              ; preds = %bb.ck, %bb.cg, %bb.cf
  %.42388.us.us.us.i = phi nsz <8 x float> [ %.123852750.us.us.us.i, %bb.cf ], [ %.123852750.us.us.us.i, %bb.cg ], [ %.32387.us.us.us.i, %bb.ck ] ; 3 uses
  %.42383.us.us.us.i = phi nsz <8 x float> [ %.123802751.us.us.us.i, %bb.cf ], [ %.123802751.us.us.us.i, %bb.cg ], [ %.32382.us.us.us.i, %bb.ck ] ; 3 uses
  %indvars.iv.next3343.i = add nuw nsw i64 %indvars.iv3342.i, 1 ; 2 uses
  %exitcond3346.not.i = icmp eq i64 %indvars.iv.next3343.i, %wide.trip.count3345.i
  br i1 %exitcond3346.not.i, label %._crit_edge2754.split.us.us.us.i, label %bb.cf, !llvm.loop !369

._crit_edge2754.split.us.us.us.i:                 ; preds = %..loopexit2490_crit_edge.us.us.us.i
  %i.asp = getelementptr inbounds [4 x i8], ptr %.07672764.us.us.i, i64 %i.aoz ; 2 uses
  %indvars.iv.next3348.i = add nuw nsw i64 %indvars.iv3347.i, 8 ; 2 uses
  %i.asq = icmp slt i64 %indvars.iv.next3348.i, %invariant.op3580.i
  br i1 %i.asq, label %.preheader2494.us.us.i, label %._crit_edge2768.i, !llvm.loop !370

._crit_edge2768.i:                                ; preds = %._crit_edge2754.split.us.us.us.i, %.preheader2494.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit955.i
  %.02384.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit955.i ], [ zeroinitializer, %.preheader2494.lr.ph.i ], [ %.42388.us.us.us.i, %._crit_edge2754.split.us.us.us.i ] ; 2 uses
  %.02379.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit955.i ], [ zeroinitializer, %.preheader2494.lr.ph.i ], [ %.42383.us.us.us.i, %._crit_edge2754.split.us.us.us.i ] ; 2 uses
  %.0767.lcssa.i = phi ptr [ %i.aou, %_ZN4ncnn3MatD2Ev.exit955.i ], [ %scevgep3330.i, %.preheader2494.lr.ph.i ], [ %i.asp, %._crit_edge2754.split.us.us.us.i ] ; 4 uses
  %.0763.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit955.i ], [ %i.lb, %.preheader2494.lr.ph.i ], [ %i.lh, %._crit_edge2754.split.us.us.us.i ] ; 7 uses
  %i.asr = shufflevector <8 x float> %.02384.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ass = shufflevector <8 x float> %.02384.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ast = fadd fast <4 x float> %i.asr, %i.ass   ; 2 uses
  %i.asu = shufflevector <4 x float> %i.ast, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.asv = fadd fast <4 x float> %i.asu, %i.ast   ; 2 uses
  %i.asw = shufflevector <8 x float> %.02379.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.asx = shufflevector <8 x float> %.02379.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.asy = fadd fast <4 x float> %i.asw, %i.asx   ; 2 uses
  %i.asz = shufflevector <4 x float> %i.asy, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ata = fadd fast <4 x float> %i.asz, %i.asy   ; 2 uses
  %i.atb = or disjoint i32 %.0763.lcssa.i, 3
  %i.atc = icmp slt i32 %i.atb, %i.kf
  br i1 %i.atc, label %.preheader2493.lr.ph.i, label %._crit_edge2841.i

.preheader2493.lr.ph.i:                           ; preds = %._crit_edge2768.i
  %i.atd = load i32, ptr %i.d, align 4            ; 2 uses
  %i.ate = load i32, ptr %i.j, align 4
  %invariant.op2822.i = sub i32 %.neg2450.i, %i.ate ; 2 uses
  %i.atf = load i32, ptr %i.f, align 4            ; 4 uses
  %i.atg = load i32, ptr %i.a, align 4
  %.fr3169.i = freeze i32 %i.atg                  ; 2 uses
  %i.ath = load i32, ptr %i.c, align 4            ; 2 uses
  %i.ati = load i32, ptr %i.i, align 4
  %.neg2448.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2797.i = sub i32 %.neg2448.i, %i.ati ; 2 uses
  %i.atj = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.aow, label %.preheader2493.lr.ph.split.us.i, label %.preheader2493.preheader.i

.preheader2493.preheader.i:                       ; preds = %.preheader2493.lr.ph.i
  %i.atk = sub i32 %i.ld, %.0763.lcssa.i
  %i.atl = and i32 %i.atk, -4                     ; 2 uses
  %i.atm = zext i32 %i.atl to i64
  %i.atn = add nuw nsw i64 %i.atm, 4
  %i.ato = mul nsw i64 %i.atn, %i.apb
  %scevgep3350.i = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.ato
  %i.atp = add i32 %.0763.lcssa.i, 4
  %i.atq = add i32 %i.atp, %i.atl
  br label %._crit_edge2841.i

.preheader2493.lr.ph.split.us.i:                  ; preds = %.preheader2493.lr.ph.i
  %i.atr = icmp sgt i32 %.fr3169.i, 0
  br i1 %i.atr, label %.preheader2493.us.us.preheader.i, label %.preheader2493.us.preheader.i

.preheader2493.us.preheader.i:                    ; preds = %.preheader2493.lr.ph.split.us.i
  %i.ats = sub i32 %i.ld, %.0763.lcssa.i
  %i.att = and i32 %i.ats, -4                     ; 2 uses
  %i.atu = zext i32 %i.att to i64
  %i.atv = add nuw nsw i64 %i.atu, 4
  %i.atw = mul nsw i64 %i.atv, %i.apb
  %scevgep3351.i = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.atw
  %i.atx = add i32 %.0763.lcssa.i, 4
  %i.aty = add i32 %i.atx, %i.att
  br label %._crit_edge2841.i

.preheader2493.us.us.preheader.i:                 ; preds = %.preheader2493.lr.ph.split.us.i
  %i.atz = zext nneg i32 %.fr3169.i to i64        ; 4 uses
  %i.aua = zext i32 %.0763.lcssa.i to i64
  br label %.preheader2493.us.us.i

.preheader2493.us.us.i:                           ; preds = %._crit_edge2819.split.us.us.us.i, %.preheader2493.us.us.preheader.i
  %indvars.iv3371.i = phi i64 [ %i.aua, %.preheader2493.us.us.preheader.i ], [ %indvars.iv.next3372.i, %._crit_edge2819.split.us.us.us.i ] ; 6 uses
  %.17682837.us.us.i = phi ptr [ %.0767.lcssa.i, %.preheader2493.us.us.preheader.i ], [ %i.awt, %._crit_edge2819.split.us.us.us.i ] ; 3 uses
  %.023692836.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2493.us.us.preheader.i ], [ %.us-phi181, %._crit_edge2819.split.us.us.us.i ] ; 3 uses
  %.023742835.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2493.us.us.preheader.i ], [ %.us-phi180, %._crit_edge2819.split.us.us.us.i ] ; 3 uses
  %i.aub = lshr exact i64 %indvars.iv3371.i, 2
  %i.auc = and i64 %i.aub, 1073741823
  %i.aud = add nuw nsw i64 %indvars.iv3371.i, 1
  %i.aue = add nuw nsw i64 %indvars.iv3371.i, 2
  %i.auf = add nuw nsw i64 %indvars.iv3371.i, 3
  switch i32 %.fr2814.i, label %._crit_edge2819.split.us.us.us.i [
    i32 4, label %.preheader2493.us.us.i.split.us
    i32 1, label %.preheader2493.us.us.i.split.us182
  ]

.preheader2493.us.us.i.split.us:                  ; preds = %.preheader2493.us.us.i, %..loopexit2488_crit_edge.us.us.us.i.us
  %indvars.iv3366.i.us = phi i64 [ %indvars.iv.next3367.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ 0, %.preheader2493.us.us.i ] ; 3 uses
  %.123702816.us.us.us.i.us = phi <4 x float> [ %.42373.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023692836.us.us.i, %.preheader2493.us.us.i ] ; 3 uses
  %.123752815.us.us.us.i.us = phi <4 x float> [ %.42378.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023742835.us.us.i, %.preheader2493.us.us.i ] ; 3 uses
  %i.aug = trunc i64 %indvars.iv3366.i.us to i32
  %i.auh = mul i32 %i.atd, %i.aug
  %.reass.us2823.us.us.i.us = add i32 %i.auh, %invariant.op2822.i ; 3 uses
  %i.aui = icmp slt i32 %.reass.us2823.us.us.i.us, 0
  br i1 %i.aui, label %..loopexit2488_crit_edge.us.us.us.i.us, label %bb.cl

bb.cl:                                            ; preds = %.preheader2493.us.us.i.split.us
  %i.auj = srem i32 %.reass.us2823.us.us.i.us, %i.atf
  %i.auk = sdiv i32 %.reass.us2823.us.us.i.us, %i.atf ; 2 uses
  %.not912.us.us.us.i.us = icmp eq i32 %i.auj, 0
  %.not913.us.us.us.i.us = icmp slt i32 %i.auk, %i.kh
  %or.cond412 = select i1 %.not912.us.us.us.i.us, i1 %.not913.us.us.us.i.us, i1 false
  br i1 %or.cond412, label %.preheader2487.us.us.us.i.us, label %..loopexit2488_crit_edge.us.us.us.i.us

.preheader2487.us.us.us.i.us:                     ; preds = %bb.cl
  %i.aul = mul nuw nsw i64 %indvars.iv3366.i.us, %i.atz
  %i.aum = sext i32 %i.auk to i64
  %i.aun = mul nsw i64 %i.aum, %i.lg
  br label %.lr.ph.split.us.us.us.us2858.i.us

.lr.ph.split.us.us.us.us2858.i.us:                ; preds = %bb.cn, %.preheader2487.us.us.us.i.us
  %indvars.iv3361.i.us = phi i64 [ %indvars.iv.next3362.i.us, %bb.cn ], [ 0, %.preheader2487.us.us.us.i.us ] ; 3 uses
  %.223712793.us.us.us.us.i.us = phi <4 x float> [ %.32372.us.us.us.us.i.us, %bb.cn ], [ %.123702816.us.us.us.i.us, %.preheader2487.us.us.us.i.us ] ; 3 uses
  %.223762792.us.us.us.us.i.us = phi <4 x float> [ %.32377.us.us.us.us.i.us, %bb.cn ], [ %.123752815.us.us.us.i.us, %.preheader2487.us.us.us.i.us ] ; 3 uses
  %i.auo = trunc i64 %indvars.iv3361.i.us to i32
  %i.aup = mul i32 %i.ath, %i.auo
  %.reass2798.us.us.us.us.i.us = add i32 %i.aup, %invariant.op2797.i ; 3 uses
  %i.auq = icmp slt i32 %.reass2798.us.us.us.us.i.us, 0
  br i1 %i.auq, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph.split.us.us.us.us2858.i.us
  %i.aur = srem i32 %.reass2798.us.us.us.us.i.us, %i.atj
  %i.aus = sdiv i32 %.reass2798.us.us.us.us.i.us, %i.atj ; 2 uses
  %.not914.us.us.us.us.i.us = icmp eq i32 %i.aur, 0
  %.not915.us.us.us.us.i.us = icmp slt i32 %i.aus, %i.kg
  %or.cond413 = select i1 %.not914.us.us.us.us.i.us, i1 %.not915.us.us.us.us.i.us, i1 false
  br i1 %or.cond413, label %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us, label %bb.cn

_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us:        ; preds = %bb.cm
  %i.aut = add nuw nsw i64 %indvars.iv3361.i.us, %i.aul
  %i.auu = shl i64 %i.aut, 3
  %i.auv = and i64 %i.auu, 4294967288
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %.17682837.us.us.i, i64 %i.auv ; 2 uses
  %i.aux = load ptr, ptr %1, align 8, !tbaa !20, !noalias !437
  %i.auy = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !437
  %i.auz = mul i64 %i.auy, %i.auc
  %i.ava = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !437 ; 2 uses
  %i.avb = mul i64 %i.auz, %i.ava
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aux, i64 %i.avb
  %i.avd = mul i64 %i.aun, %i.ava
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avc, i64 %i.avd
  %i.avf = shl nsw i32 %i.aus, 2
  %i.avg = sext i32 %i.avf to i64
  %i.avh = getelementptr inbounds [4 x i8], ptr %i.ave, i64 %i.avg
  %i.avi = load <4 x float>, ptr %i.avh, align 16, !tbaa !82 ; 2 uses
  %i.avj = load <4 x float>, ptr %i.auw, align 16, !tbaa !82
  %i.avk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.avi, <4 x float> nofpclass(nan inf) %i.avj, <4 x float> nofpclass(nan inf) %.223762792.us.us.us.us.i.us)
  %i.avl = getelementptr inbounds nuw i8, ptr %i.auw, i64 16
  %i.avm = load <4 x float>, ptr %i.avl, align 16, !tbaa !82
  %i.avn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.avi, <4 x float> nofpclass(nan inf) %i.avm, <4 x float> nofpclass(nan inf) %.223712793.us.us.us.us.i.us)
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us, %bb.cm, %.lr.ph.split.us.us.us.us2858.i.us
  %.32377.us.us.us.us.i.us = phi nsz <4 x float> [ %.223762792.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us2858.i.us ], [ %.223762792.us.us.us.us.i.us, %bb.cm ], [ %i.avk, %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us ] ; 2 uses
  %.32372.us.us.us.us.i.us = phi nsz <4 x float> [ %.223712793.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us2858.i.us ], [ %.223712793.us.us.us.us.i.us, %bb.cm ], [ %i.avn, %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3362.i.us = add nuw nsw i64 %indvars.iv3361.i.us, 1 ; 2 uses
  %exitcond3365.not.i.us = icmp eq i64 %indvars.iv.next3362.i.us, %i.atz
  br i1 %exitcond3365.not.i.us, label %..loopexit2488_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us2858.i.us, !llvm.loop !373

..loopexit2488_crit_edge.us.us.us.i.us:           ; preds = %bb.cn, %bb.cl, %.preheader2493.us.us.i.split.us
  %.42378.us.us.us.i.us = phi nsz <4 x float> [ %.123752815.us.us.us.i.us, %.preheader2493.us.us.i.split.us ], [ %.123752815.us.us.us.i.us, %bb.cl ], [ %.32377.us.us.us.us.i.us, %bb.cn ] ; 2 uses
  %.42373.us.us.us.i.us = phi nsz <4 x float> [ %.123702816.us.us.us.i.us, %.preheader2493.us.us.i.split.us ], [ %.123702816.us.us.us.i.us, %bb.cl ], [ %.32372.us.us.us.us.i.us, %bb.cn ] ; 2 uses
  %indvars.iv.next3367.i.us = add nuw nsw i64 %indvars.iv3366.i.us, 1 ; 2 uses
  %exitcond3370.not.i.us = icmp eq i64 %indvars.iv.next3367.i.us, %wide.trip.count3345.i
  br i1 %exitcond3370.not.i.us, label %._crit_edge2819.split.us.us.us.i, label %.preheader2493.us.us.i.split.us, !llvm.loop !374

.preheader2493.us.us.i.split.us182:               ; preds = %.preheader2493.us.us.i, %..loopexit2488_crit_edge.us.us.us.i.us190
  %indvars.iv3366.i.us183 = phi i64 [ %indvars.iv.next3367.i.us193, %..loopexit2488_crit_edge.us.us.us.i.us190 ], [ 0, %.preheader2493.us.us.i ] ; 3 uses
  %.123702816.us.us.us.i.us184 = phi <4 x float> [ %.42373.us.us.us.i.us192, %..loopexit2488_crit_edge.us.us.us.i.us190 ], [ %.023692836.us.us.i, %.preheader2493.us.us.i ] ; 3 uses
  %.123752815.us.us.us.i.us185 = phi <4 x float> [ %.42378.us.us.us.i.us191, %..loopexit2488_crit_edge.us.us.us.i.us190 ], [ %.023742835.us.us.i, %.preheader2493.us.us.i ] ; 3 uses
  %i.avo = trunc i64 %indvars.iv3366.i.us183 to i32
  %i.avp = mul i32 %i.atd, %i.avo
  %.reass.us2823.us.us.i.us186 = add i32 %i.avp, %invariant.op2822.i ; 3 uses
  %i.avq = icmp slt i32 %.reass.us2823.us.us.i.us186, 0
  br i1 %i.avq, label %..loopexit2488_crit_edge.us.us.us.i.us190, label %bb.co

bb.co:                                            ; preds = %.preheader2493.us.us.i.split.us182
  %i.avr = srem i32 %.reass.us2823.us.us.i.us186, %i.atf
  %i.avs = sdiv i32 %.reass.us2823.us.us.i.us186, %i.atf ; 2 uses
  %.not912.us.us.us.i.us187 = icmp eq i32 %i.avr, 0
  %.not913.us.us.us.i.us188 = icmp slt i32 %i.avs, %i.kh
  %or.cond414 = select i1 %.not912.us.us.us.i.us187, i1 %.not913.us.us.us.i.us188, i1 false
  br i1 %or.cond414, label %.preheader2487.us.us.us.i.us189, label %..loopexit2488_crit_edge.us.us.us.i.us190

.preheader2487.us.us.us.i.us189:                  ; preds = %bb.co
  %i.avt = mul nuw nsw i64 %indvars.iv3366.i.us183, %i.atz
  %i.avu = sext i32 %i.avs to i64
  %i.avv = mul nsw i64 %i.avu, %i.lg
  br label %.lr.ph.split.us2801.us.us.us.i.us

.lr.ph.split.us2801.us.us.us.i.us:                ; preds = %bb.cq, %.preheader2487.us.us.us.i.us189
  %indvars.iv3356.i.us = phi i64 [ %indvars.iv.next3357.i.us, %bb.cq ], [ 0, %.preheader2487.us.us.us.i.us189 ] ; 3 uses
  %.223712793.us2803.us.us.us.i.us = phi <4 x float> [ %.32372.us2809.us.us.us.i.us, %bb.cq ], [ %.123702816.us.us.us.i.us184, %.preheader2487.us.us.us.i.us189 ] ; 3 uses
  %.223762792.us2804.us.us.us.i.us = phi <4 x float> [ %.32377.us2808.us.us.us.i.us, %bb.cq ], [ %.123752815.us.us.us.i.us185, %.preheader2487.us.us.us.i.us189 ] ; 3 uses
  %i.avw = trunc i64 %indvars.iv3356.i.us to i32
  %i.avx = mul i32 %i.ath, %i.avw
  %.reass2798.us2805.us.us.us.i.us = add i32 %i.avx, %invariant.op2797.i ; 3 uses
  %i.avy = icmp slt i32 %.reass2798.us2805.us.us.us.i.us, 0
  br i1 %i.avy, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %.lr.ph.split.us2801.us.us.us.i.us
  %i.avz = srem i32 %.reass2798.us2805.us.us.us.i.us, %i.atj
  %i.awa = sdiv i32 %.reass2798.us2805.us.us.us.i.us, %i.atj ; 2 uses
  %.not914.us2806.us.us.us.i.us = icmp eq i32 %i.avz, 0
  %.not915.us2807.us.us.us.i.us = icmp slt i32 %i.awa, %i.kg
  %or.cond415 = select i1 %.not914.us2806.us.us.us.i.us, i1 %.not915.us2807.us.us.us.i.us, i1 false
  br i1 %or.cond415, label %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, label %bb.cq

_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us:        ; preds = %bb.cp
  %i.awb = load ptr, ptr %1, align 8, !tbaa !20, !noalias !438
  %i.awc = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !438
  %i.awd = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !438 ; 2 uses
  %factor.op.mul.us.us.us2852.us.i.us = mul i64 %i.awd, %i.awc ; 4 uses
  %i.awe = mul i64 %i.avv, %i.awd
  %invariant.gep.us.us.us2853.us.i.us = getelementptr i8, ptr %i.awb, i64 %i.awe
  %i.awf = sext i32 %i.awa to i64
  %invariant.gep2789.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2853.us.i.us, i64 %i.awf ; 4 uses
  %.reass.us.us2824.us.us.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %indvars.iv3371.i
  %gep2790.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.i.us
  %i.awg = load float, ptr %gep2790.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.03496.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.awg, i64 0
  %.reass.us.us2824.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.aud
  %gep2790.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.1.i.us
  %i.awh = load float, ptr %gep2790.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.03496.4.vec.insert.i.us = insertelement <4 x float> %.sroa.03496.0.vec.insert.i.us, float %i.awh, i64 1
  %.reass.us.us2824.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.aue
  %gep2790.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.2.i.us
  %i.awi = load float, ptr %gep2790.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.03496.8.vec.insert.i.us = insertelement <4 x float> %.sroa.03496.4.vec.insert.i.us, float %i.awi, i64 2
  %.reass.us.us2824.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2852.us.i.us, %i.auf
  %gep2790.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2789.us.us.us.us.i.us, i64 %.reass.us.us2824.us.us.3.i.us
  %i.awj = load float, ptr %gep2790.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.03496.12.vec.insert.i.us = insertelement <4 x float> %.sroa.03496.8.vec.insert.i.us, float %i.awj, i64 3 ; 2 uses
  %i.awk = add nuw nsw i64 %indvars.iv3356.i.us, %i.avt
  %i.awl = shl i64 %i.awk, 3
  %i.awm = and i64 %i.awl, 4294967288
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %.17682837.us.us.i, i64 %i.awm ; 2 uses
  %i.awo = load <4 x float>, ptr %i.awn, align 16, !tbaa !82
  %i.awp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03496.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.awo, <4 x float> nofpclass(nan inf) %.223762792.us2804.us.us.us.i.us)
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awn, i64 16
  %i.awr = load <4 x float>, ptr %i.awq, align 16, !tbaa !82
  %i.aws = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03496.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.awr, <4 x float> nofpclass(nan inf) %.223712793.us2803.us.us.us.i.us)
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.cp, %.lr.ph.split.us2801.us.us.us.i.us
  %.32377.us2808.us.us.us.i.us = phi nsz <4 x float> [ %.223762792.us2804.us.us.us.i.us, %.lr.ph.split.us2801.us.us.us.i.us ], [ %i.awp, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223762792.us2804.us.us.us.i.us, %bb.cp ] ; 2 uses
  %.32372.us2809.us.us.us.i.us = phi nsz <4 x float> [ %.223712793.us2803.us.us.us.i.us, %.lr.ph.split.us2801.us.us.us.i.us ], [ %i.aws, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.223712793.us2803.us.us.us.i.us, %bb.cp ] ; 2 uses
  %indvars.iv.next3357.i.us = add nuw nsw i64 %indvars.iv3356.i.us, 1 ; 2 uses
  %exitcond3360.not.i.us = icmp eq i64 %indvars.iv.next3357.i.us, %i.atz
  br i1 %exitcond3360.not.i.us, label %..loopexit2488_crit_edge.us.us.us.i.us190, label %.lr.ph.split.us2801.us.us.us.i.us, !llvm.loop !373

..loopexit2488_crit_edge.us.us.us.i.us190:        ; preds = %bb.cq, %bb.co, %.preheader2493.us.us.i.split.us182
  %.42378.us.us.us.i.us191 = phi nsz <4 x float> [ %.123752815.us.us.us.i.us185, %.preheader2493.us.us.i.split.us182 ], [ %.123752815.us.us.us.i.us185, %bb.co ], [ %.32377.us2808.us.us.us.i.us, %bb.cq ] ; 2 uses
  %.42373.us.us.us.i.us192 = phi nsz <4 x float> [ %.123702816.us.us.us.i.us184, %.preheader2493.us.us.i.split.us182 ], [ %.123702816.us.us.us.i.us184, %bb.co ], [ %.32372.us2809.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3367.i.us193 = add nuw nsw i64 %indvars.iv3366.i.us183, 1 ; 2 uses
  %exitcond3370.not.i.us194 = icmp eq i64 %indvars.iv.next3367.i.us193, %wide.trip.count3345.i
  br i1 %exitcond3370.not.i.us194, label %._crit_edge2819.split.us.us.us.i, label %.preheader2493.us.us.i.split.us182, !llvm.loop !374

._crit_edge2819.split.us.us.us.i:                 ; preds = %..loopexit2488_crit_edge.us.us.us.i.us190, %..loopexit2488_crit_edge.us.us.us.i.us, %.preheader2493.us.us.i
  %.us-phi180 = phi <4 x float> [ %.42378.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023742835.us.us.i, %.preheader2493.us.us.i ], [ %.42378.us.us.us.i.us191, %..loopexit2488_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %.us-phi181 = phi <4 x float> [ %.42373.us.us.us.i.us, %..loopexit2488_crit_edge.us.us.us.i.us ], [ %.023692836.us.us.i, %.preheader2493.us.us.i ], [ %.42373.us.us.us.i.us192, %..loopexit2488_crit_edge.us.us.us.i.us190 ] ; 2 uses
  %i.awt = getelementptr inbounds [4 x i8], ptr %.17682837.us.us.i, i64 %i.apb ; 2 uses
  %indvars.iv.next3372.i = add nuw nsw i64 %indvars.iv3371.i, 4 ; 2 uses
  %i.awu = trunc i64 %indvars.iv.next3372.i to i32 ; 2 uses
  %i.awv = or i32 %i.awu, 3
  %i.aww = icmp slt i32 %i.awv, %i.kf
  br i1 %i.aww, label %.preheader2493.us.us.i, label %._crit_edge2841.i, !llvm.loop !377

._crit_edge2841.i:                                ; preds = %._crit_edge2819.split.us.us.us.i, %.preheader2493.us.preheader.i, %.preheader2493.preheader.i, %._crit_edge2768.i
  %.02374.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2768.i ], [ zeroinitializer, %.preheader2493.preheader.i ], [ zeroinitializer, %.preheader2493.us.preheader.i ], [ %.us-phi180, %._crit_edge2819.split.us.us.us.i ] ; 2 uses
  %.02369.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2768.i ], [ zeroinitializer, %.preheader2493.preheader.i ], [ zeroinitializer, %.preheader2493.us.preheader.i ], [ %.us-phi181, %._crit_edge2819.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2768.i ], [ %scevgep3350.i, %.preheader2493.preheader.i ], [ %scevgep3351.i, %.preheader2493.us.preheader.i ], [ %i.awt, %._crit_edge2819.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2768.i ], [ %i.atq, %.preheader2493.preheader.i ], [ %i.aty, %.preheader2493.us.preheader.i ], [ %i.awu, %._crit_edge2819.split.us.us.us.i ] ; 7 uses
  %i.awx = shufflevector <4 x float> %.02374.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awy = fadd fast <4 x float> %i.awx, %.02374.lcssa.i ; 2 uses
  %i.awz = shufflevector <4 x float> %i.asv, <4 x float> %i.ata, <2 x i32> <i32 1, i32 5>
  %i.axa = fadd fast <2 x float> %i.awz, %i.api
  %i.axb = shufflevector <4 x float> %.02369.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.axc = fadd fast <4 x float> %i.axb, %.02369.lcssa.i ; 2 uses
  %i.axd = shufflevector <4 x float> %i.asv, <4 x float> %i.ata, <2 x i32> <i32 0, i32 4>
  %i.axe = fadd fast <2 x float> %i.axa, %i.axd
  %i.axf = shufflevector <4 x float> %i.awy, <4 x float> %i.axc, <2 x i32> <i32 1, i32 5>
  %i.axg = fadd fast <2 x float> %i.axe, %i.axf
  %i.axh = shufflevector <4 x float> %i.awy, <4 x float> %i.axc, <2 x i32> <i32 0, i32 4>
  %i.axi = fadd fast <2 x float> %i.axg, %i.axh   ; 4 uses
  %i.axj = or disjoint i32 %.1764.lcssa.i, 1
  %i.axk = icmp slt i32 %i.axj, %i.kf
  br i1 %i.axk, label %.preheader2492.lr.ph.i, label %.preheader2495.i

.preheader2492.lr.ph.i:                           ; preds = %._crit_edge2841.i
  %i.axl = load i32, ptr %i.d, align 4
  %i.axm = load i32, ptr %i.j, align 4
  %invariant.op2882.i = sub i32 %.neg2450.i, %i.axm
  %i.axn = load i32, ptr %i.f, align 4            ; 2 uses
  %i.axo = load i32, ptr %i.a, align 4
  %.fr3170.i = freeze i32 %i.axo                  ; 2 uses
  %i.axp = load i32, ptr %i.c, align 4
  %i.axq = load i32, ptr %i.i, align 4
  %.neg2444.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2873.i = sub i32 %.neg2444.i, %i.axq
  %i.axr = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.aow, label %.preheader2492.lr.ph.split.us.i, label %.preheader2492.preheader.i

.preheader2492.preheader.i:                       ; preds = %.preheader2492.lr.ph.i
  %i.axs = sub i32 %i.le, %.1764.lcssa.i          ; 2 uses
  %i.axt = lshr i32 %i.axs, 1
  %i.axu = zext nneg i32 %i.axt to i64
  %i.axv = shl nuw nsw i64 %i.axu, 2
  %i.axw = add nuw nsw i64 %i.axv, 4
  %i.axx = mul i64 %i.axw, %i.apd
  %scevgep3374.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.axx
  %i.axy = add i32 %.1764.lcssa.i, 2
  %i.axz = and i32 %i.axs, -2
  %i.aya = add i32 %i.axy, %i.axz
  br label %.preheader2495.i

.preheader2492.lr.ph.split.us.i:                  ; preds = %.preheader2492.lr.ph.i
  %i.ayb = icmp sgt i32 %.fr3170.i, 0
  br i1 %i.ayb, label %.preheader2492.us.us.preheader.i, label %.preheader2492.us.preheader.i

.preheader2492.us.preheader.i:                    ; preds = %.preheader2492.lr.ph.split.us.i
  %i.ayc = sub i32 %i.le, %.1764.lcssa.i          ; 2 uses
  %i.ayd = lshr i32 %i.ayc, 1
  %i.aye = zext nneg i32 %i.ayd to i64
  %i.ayf = shl nuw nsw i64 %i.aye, 2
  %i.ayg = add nuw nsw i64 %i.ayf, 4
  %i.ayh = mul i64 %i.ayg, %i.apd
  %scevgep3375.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.ayh
  %i.ayi = add i32 %.1764.lcssa.i, 2
  %i.ayj = and i32 %i.ayc, -2
  %i.ayk = add i32 %i.ayi, %i.ayj
  br label %.preheader2495.i

.preheader2492.us.us.preheader.i:                 ; preds = %.preheader2492.lr.ph.split.us.i
  %i.ayl = zext nneg i32 %.fr3170.i to i64        ; 2 uses
  %i.aym = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2492.us.us.i

.preheader2492.us.us.i:                           ; preds = %._crit_edge2879.split.us.us.us.i, %.preheader2492.us.us.preheader.i
  %indvars.iv3389.i = phi i64 [ %i.aym, %.preheader2492.us.us.preheader.i ], [ %indvars.iv.next3390.i, %._crit_edge2879.split.us.us.us.i ] ; 3 uses
  %.27692890.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2492.us.us.preheader.i ], [ %i.bac, %._crit_edge2879.split.us.us.us.i ] ; 2 uses
  %i.ayn = phi <2 x float> [ %i.axi, %.preheader2492.us.us.preheader.i ], [ %i.bab, %._crit_edge2879.split.us.us.us.i ]
  %i.ayo = add nuw nsw i64 %indvars.iv3389.i, 1
  br label %bb.cr

bb.cr:                                            ; preds = %..loopexit2486_crit_edge.us.us.us.i, %.preheader2492.us.us.i
  %indvars.iv3384.i = phi i64 [ %indvars.iv.next3385.i, %..loopexit2486_crit_edge.us.us.us.i ], [ 0, %.preheader2492.us.us.i ] ; 3 uses
  %i.ayp = phi <2 x float> [ %i.bab, %..loopexit2486_crit_edge.us.us.us.i ], [ %i.ayn, %.preheader2492.us.us.i ] ; 3 uses
  %i.ayq = trunc i64 %indvars.iv3384.i to i32
  %i.ayr = mul i32 %i.axl, %i.ayq
  %.reass2883.us.us.us.i = add i32 %i.ayr, %invariant.op2882.i ; 3 uses
  %i.ays = icmp slt i32 %.reass2883.us.us.us.i, 0
  br i1 %i.ays, label %..loopexit2486_crit_edge.us.us.us.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ayt = srem i32 %.reass2883.us.us.us.i, %i.axn
  %i.ayu = sdiv i32 %.reass2883.us.us.us.i, %i.axn ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.ayt, 0
  %.not909.us.us.us.i = icmp slt i32 %i.ayu, %i.kh
  %or.cond416 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond416, label %.preheader2485.us.us.us.i, label %..loopexit2486_crit_edge.us.us.us.i

.preheader2485.us.us.us.i:                        ; preds = %bb.cs
  %i.ayv = mul nuw nsw i64 %indvars.iv3384.i, %i.ayl
  %i.ayw = sext i32 %i.ayu to i64
  %i.ayx = mul nsw i64 %i.ayw, %i.lg
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit2482.us.us.us.i, %.preheader2485.us.us.us.i
  %indvars.iv3379.i = phi i64 [ %indvars.iv.next3380.i, %.loopexit2482.us.us.us.i ], [ 0, %.preheader2485.us.us.us.i ] ; 3 uses
  %i.ayy = phi <2 x float> [ %i.baa, %.loopexit2482.us.us.us.i ], [ %i.ayp, %.preheader2485.us.us.us.i ] ; 3 uses
  %i.ayz = trunc i64 %indvars.iv3379.i to i32
  %i.aza = mul i32 %i.axp, %i.ayz
  %.reass2874.us.us.us.i = add i32 %invariant.op2873.i, %i.aza ; 3 uses
  %i.azb = icmp slt i32 %.reass2874.us.us.us.i, 0
  br i1 %i.azb, label %.loopexit2482.us.us.us.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.azc = srem i32 %.reass2874.us.us.us.i, %i.axr
  %i.azd = sdiv i32 %.reass2874.us.us.us.i, %i.axr ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.azc, 0
  %.not911.us.us.us.i = icmp slt i32 %i.azd, %i.kg
  %or.cond417 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond417, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2482.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.cu
  %i.aze = add nuw nsw i64 %indvars.iv3379.i, %i.ayv
  %i.azf = shl i64 %i.aze, 2
  %i.azg = and i64 %i.azf, 4294967292
  %i.azh = getelementptr inbounds nuw [4 x i8], ptr %.27692890.us.us.i, i64 %i.azg
  %i.azi = load ptr, ptr %1, align 8, !tbaa !20, !noalias !439
  %i.azj = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !439
  %i.azk = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !439 ; 2 uses
  %factor.op.mul.us.us.us2909.i = mul i64 %i.azk, %i.azj ; 2 uses
  %i.azl = mul i64 %i.ayx, %i.azk
  %invariant.gep.us.us.us2910.i = getelementptr i8, ptr %i.azi, i64 %i.azl
  %i.azm = sext i32 %i.azd to i64
  %invariant.gep2863.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us2910.i, i64 %i.azm ; 2 uses
  %.reass.us2884.us.us.i = mul i64 %factor.op.mul.us.us.us2909.i, %indvars.iv3389.i
  %gep2864.us.us.us.i = getelementptr i8, ptr %invariant.gep2863.us.us.us.i, i64 %.reass.us2884.us.us.i
  %i.azn = load float, ptr %gep2864.us.us.us.i, align 4, !tbaa !39
  %.reass.us2884.us.us.1.i = mul i64 %factor.op.mul.us.us.us2909.i, %i.ayo
  %gep2864.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2863.us.us.us.i, i64 %.reass.us2884.us.us.1.i
  %i.azo = load float, ptr %gep2864.us.us.us.1.i, align 4, !tbaa !39
  %i.azp = load <4 x float>, ptr %i.azh, align 4, !tbaa !39 ; 2 uses
  %i.azq = shufflevector <4 x float> %i.azp, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.azr = insertelement <2 x float> poison, float %i.azn, i64 0
  %i.azs = shufflevector <2 x float> %i.azr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azt = fmul fast <2 x float> %i.azq, %i.azs
  %i.azu = fadd fast <2 x float> %i.ayy, %i.azt
  %i.azv = shufflevector <4 x float> %i.azp, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.azw = insertelement <2 x float> poison, float %i.azo, i64 0
  %i.azx = shufflevector <2 x float> %i.azw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.azy = fmul fast <2 x float> %i.azv, %i.azx
  %i.azz = fadd fast <2 x float> %i.azy, %i.azu
  br label %.loopexit2482.us.us.us.i

.loopexit2482.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.cu, %bb.ct
  %i.baa = phi <2 x float> [ %i.ayy, %bb.ct ], [ %i.ayy, %bb.cu ], [ %i.azz, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3380.i = add nuw nsw i64 %indvars.iv3379.i, 1 ; 2 uses
  %exitcond3383.not.i = icmp eq i64 %indvars.iv.next3380.i, %i.ayl
  br i1 %exitcond3383.not.i, label %..loopexit2486_crit_edge.us.us.us.i, label %bb.ct, !llvm.loop !380

..loopexit2486_crit_edge.us.us.us.i:              ; preds = %.loopexit2482.us.us.us.i, %bb.cs, %bb.cr
  %i.bab = phi <2 x float> [ %i.ayp, %bb.cr ], [ %i.ayp, %bb.cs ], [ %i.baa, %.loopexit2482.us.us.us.i ] ; 3 uses
  %indvars.iv.next3385.i = add nuw nsw i64 %indvars.iv3384.i, 1 ; 2 uses
  %exitcond3388.not.i = icmp eq i64 %indvars.iv.next3385.i, %wide.trip.count3345.i
  br i1 %exitcond3388.not.i, label %._crit_edge2879.split.us.us.us.i, label %bb.cr, !llvm.loop !381

._crit_edge2879.split.us.us.us.i:                 ; preds = %..loopexit2486_crit_edge.us.us.us.i
  %i.bac = getelementptr inbounds [4 x i8], ptr %.27692890.us.us.i, i64 %i.apd ; 2 uses
  %indvars.iv.next3390.i = add nuw nsw i64 %indvars.iv3389.i, 2 ; 2 uses
  %i.bad = trunc i64 %indvars.iv.next3390.i to i32 ; 2 uses
  %i.bae = or i32 %i.bad, 1
  %i.baf = icmp slt i32 %i.bae, %i.kf
  br i1 %i.baf, label %.preheader2492.us.us.i, label %.preheader2495.i, !llvm.loop !382

.preheader2495.i:                                 ; preds = %._crit_edge2879.split.us.us.us.i, %.preheader2492.us.preheader.i, %.preheader2492.preheader.i, %._crit_edge2841.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2841.i ], [ %scevgep3374.i, %.preheader2492.preheader.i ], [ %scevgep3375.i, %.preheader2492.us.preheader.i ], [ %i.bac, %._crit_edge2879.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2841.i ], [ %i.aya, %.preheader2492.preheader.i ], [ %i.ayk, %.preheader2492.us.preheader.i ], [ %i.bad, %._crit_edge2879.split.us.us.us.i ] ; 2 uses
  %i.bag = phi <2 x float> [ %i.axi, %._crit_edge2841.i ], [ %i.axi, %.preheader2492.preheader.i ], [ %i.axi, %.preheader2492.us.preheader.i ], [ %i.bab, %._crit_edge2879.split.us.us.us.i ] ; 3 uses
  %i.bah = icmp slt i32 %.2765.lcssa.i, %i.kf
  br i1 %i.bah, label %.preheader2491.lr.ph.i, label %._crit_edge2939.i

.preheader2491.lr.ph.i:                           ; preds = %.preheader2495.i
  %i.bai = load i32, ptr %i.d, align 4
  %i.baj = load i32, ptr %i.j, align 4
  %invariant.op2928.i = sub i32 %.neg2450.i, %i.baj
  %i.bak = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bal = load i32, ptr %i.a, align 4
  %.fr3171.i = freeze i32 %i.bal                  ; 2 uses
  %i.bam = load i32, ptr %i.c, align 4
  %i.ban = load i32, ptr %i.i, align 4
  %.neg2440.i = add nuw nsw i32 %.08032955.i, 1
  %invariant.op2920.i = sub i32 %.neg2440.i, %i.ban
  %i.bao = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bap = icmp sgt i32 %.fr3171.i, 0
  %or.cond3616.i = and i1 %i.aow, %i.bap
  br i1 %or.cond3616.i, label %.preheader2491.us.us.preheader.i, label %._crit_edge2939.i

.preheader2491.us.us.preheader.i:                 ; preds = %.preheader2491.lr.ph.i
  %i.baq = zext nneg i32 %.fr3171.i to i64        ; 2 uses
  %i.bar = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2491.us.us.i

.preheader2491.us.us.i:                           ; preds = %._crit_edge2925.split.us.us.us.i, %.preheader2491.us.us.preheader.i
  %indvars.iv3402.i = phi i64 [ %i.bar, %.preheader2491.us.us.preheader.i ], [ %indvars.iv.next3403.i, %._crit_edge2925.split.us.us.us.i ] ; 2 uses
  %.37702936.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2491.us.us.preheader.i ], [ %i.bcc, %._crit_edge2925.split.us.us.us.i ] ; 2 uses
  %i.bas = phi <2 x float> [ %i.bag, %.preheader2491.us.us.preheader.i ], [ %i.bcb, %._crit_edge2925.split.us.us.us.i ]
  br label %bb.cv

bb.cv:                                            ; preds = %..loopexit2484_crit_edge.us.us.us.i, %.preheader2491.us.us.i
  %indvars.iv3397.i = phi i64 [ %indvars.iv.next3398.i, %..loopexit2484_crit_edge.us.us.us.i ], [ 0, %.preheader2491.us.us.i ] ; 3 uses
  %i.bat = phi <2 x float> [ %i.bcb, %..loopexit2484_crit_edge.us.us.us.i ], [ %i.bas, %.preheader2491.us.us.i ] ; 3 uses
  %i.bau = trunc i64 %indvars.iv3397.i to i32
  %i.bav = mul i32 %i.bai, %i.bau
  %.reass2929.us.us.us.i = add i32 %i.bav, %invariant.op2928.i ; 3 uses
  %i.baw = icmp slt i32 %.reass2929.us.us.us.i, 0
  br i1 %i.baw, label %..loopexit2484_crit_edge.us.us.us.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.bax = srem i32 %.reass2929.us.us.us.i, %i.bak
  %i.bay = sdiv i32 %.reass2929.us.us.us.i, %i.bak ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bax, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bay, %i.kh
  %or.cond418 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond418, label %.preheader2483.us.us.us.i, label %..loopexit2484_crit_edge.us.us.us.i

.preheader2483.us.us.us.i:                        ; preds = %bb.cw
  %i.baz = mul nuw nsw i64 %indvars.iv3397.i, %i.baq
  %i.bba = sext i32 %i.bay to i64
  %i.bbb = mul nsw i64 %i.bba, %i.lg
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.preheader2483.us.us.us.i
  %indvars.iv3392.i = phi i64 [ %indvars.iv.next3393.i, %bb.cz ], [ 0, %.preheader2483.us.us.us.i ] ; 3 uses
  %i.bbc = phi <2 x float> [ %i.bca, %bb.cz ], [ %i.bat, %.preheader2483.us.us.us.i ] ; 3 uses
  %i.bbd = trunc i64 %indvars.iv3392.i to i32
  %i.bbe = mul i32 %i.bam, %i.bbd
  %.reass.us2930.us.us.i = add i32 %invariant.op2920.i, %i.bbe ; 3 uses
  %i.bbf = icmp slt i32 %.reass.us2930.us.us.i, 0
  br i1 %i.bbf, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.bbg = srem i32 %.reass.us2930.us.us.i, %i.bao
  %i.bbh = sdiv i32 %.reass.us2930.us.us.i, %i.bao ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bbg, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bbh, %i.kg
  %or.cond419 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond419, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.cz

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.cy
  %i.bbi = add nuw nsw i64 %indvars.iv3392.i, %i.baz
  %.idx3562.i = shl nuw nsw i64 %i.bbi, 3
  %i.bbj = getelementptr inbounds nuw i8, ptr %.37702936.us.us.i, i64 %.idx3562.i
  %i.bbk = load ptr, ptr %1, align 8, !tbaa !20, !noalias !440
  %i.bbl = load i64, ptr %i.kq, align 8, !tbaa !21, !noalias !440
  %i.bbm = mul i64 %i.bbl, %indvars.iv3402.i
  %i.bbn = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !440 ; 2 uses
  %i.bbo = mul i64 %i.bbm, %i.bbn
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbk, i64 %i.bbo
  %i.bbq = mul i64 %i.bbb, %i.bbn
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbp, i64 %i.bbq
  %i.bbs = sext i32 %i.bbh to i64
  %i.bbt = getelementptr inbounds [4 x i8], ptr %i.bbr, i64 %i.bbs
  %i.bbu = load float, ptr %i.bbt, align 4, !tbaa !39
  %i.bbv = load <2 x float>, ptr %i.bbj, align 4, !tbaa !39
  %i.bbw = insertelement <2 x float> poison, float %i.bbu, i64 0
  %i.bbx = shufflevector <2 x float> %i.bbw, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_5
begin_hunk_6_@_ZNK4ncnn21Deconvolution_x86_fma7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.07242992.us.us.i = phi ptr [ %i.bfc, %.preheader2479.us.us.preheader.i ], [ %i.bit, %._crit_edge2985.split.us.us.us.i ] ; 2 uses
  %.023642991.us.us.i = phi <8 x float> [ zeroinitializer, %.preheader2479.us.us.preheader.i ], [ %.42368.us.us.us.i, %._crit_edge2985.split.us.us.us.i ]
  %i.bfz = lshr exact i64 %indvars.iv3430.i, 2    ; 2 uses
  %i.bga = or disjoint i64 %i.bfz, 1
  %i.bgb = lshr exact i64 %indvars.iv3430.i, 3
  %i.bgc = or disjoint i64 %indvars.iv3430.i, 1
  %i.bgd = or disjoint i64 %indvars.iv3430.i, 2
  %i.bge = or disjoint i64 %indvars.iv3430.i, 3
  %i.bgf = or disjoint i64 %indvars.iv3430.i, 4
  %i.bgg = or disjoint i64 %indvars.iv3430.i, 5
  %i.bgh = or disjoint i64 %indvars.iv3430.i, 6
  %i.bgi = or disjoint i64 %indvars.iv3430.i, 7
  br label %bb.dh

bb.dh:                                            ; preds = %..loopexit2475_crit_edge.us.us.us.i, %.preheader2479.us.us.i
  %indvars.iv3425.i = phi i64 [ %indvars.iv.next3426.i, %..loopexit2475_crit_edge.us.us.us.i ], [ 0, %.preheader2479.us.us.i ] ; 3 uses
  %.123652982.us.us.us.i = phi <8 x float> [ %.42368.us.us.us.i, %..loopexit2475_crit_edge.us.us.us.i ], [ %.023642991.us.us.i, %.preheader2479.us.us.i ] ; 3 uses
  %i.bgj = trunc i64 %indvars.iv3425.i to i32
  %i.bgk = mul i32 %i.bfq, %i.bgj
  %.reass2988.us.us.us.i = add i32 %i.bgk, %invariant.op2987.i ; 3 uses
  %i.bgl = icmp slt i32 %.reass2988.us.us.us.i, 0
  br i1 %i.bgl, label %..loopexit2475_crit_edge.us.us.us.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.bgm = srem i32 %.reass2988.us.us.us.i, %i.bfs
  %i.bgn = sdiv i32 %.reass2988.us.us.us.i, %i.bfs ; 2 uses
  %.not899.us.us.us.i = icmp eq i32 %i.bgm, 0
  %.not900.us.us.us.i = icmp slt i32 %i.bgn, %i.amz
  %or.cond420 = select i1 %.not899.us.us.us.i, i1 %.not900.us.us.us.i, i1 false
  br i1 %or.cond420, label %.preheader2474.us.us.us.i, label %..loopexit2475_crit_edge.us.us.us.i

.preheader2474.us.us.us.i:                        ; preds = %bb.di
  %i.bgo = mul nuw nsw i64 %indvars.iv3425.i, %i.bfy
  %i.bgp = sext i32 %i.bgn to i64
  %i.bgq = mul nsw i64 %i.bgp, %i.aob             ; 3 uses
  br label %bb.dj

bb.dj:                                            ; preds = %bb.dm, %.preheader2474.us.us.us.i
  %indvars.iv3420.i = phi i64 [ %indvars.iv.next3421.i, %bb.dm ], [ 0, %.preheader2474.us.us.us.i ] ; 3 uses
  %.223662977.us.us.us.i = phi <8 x float> [ %.32367.us.us.us.i, %bb.dm ], [ %.123652982.us.us.us.i, %.preheader2474.us.us.us.i ] ; 4 uses
  %i.bgr = trunc i64 %indvars.iv3420.i to i32
  %i.bgs = mul i32 %i.bfu, %i.bgr
  %.reass2981.us.us.us.i = add i32 %invariant.op2980.i, %i.bgs ; 3 uses
  %i.bgt = icmp slt i32 %.reass2981.us.us.us.i, 0
  br i1 %i.bgt, label %bb.dm, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.bgu = srem i32 %.reass2981.us.us.us.i, %i.bfw
  %i.bgv = sdiv i32 %.reass2981.us.us.us.i, %i.bfw ; 4 uses
  %.not901.us.us.us.i = icmp eq i32 %i.bgu, 0
  %.not902.us.us.us.i = icmp slt i32 %i.bgv, %i.amy
  %or.cond421 = select i1 %.not901.us.us.us.i, i1 %.not902.us.us.us.i, i1 false
  br i1 %or.cond421, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.bgw = add nuw nsw i64 %indvars.iv3420.i, %i.bgo
  %i.bgx = shl i64 %i.bgw, 3
  %i.bgy = and i64 %i.bgx, 4294967288
  %i.bgz = getelementptr inbounds nuw [4 x i8], ptr %.07242992.us.us.i, i64 %i.bgy
  switch i32 %.fr3034.i, label %bb.dm [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit941.us.us.us.i:              ; preds = %bb.dl
  %i.bha = load ptr, ptr %1, align 8, !tbaa !20, !noalias !441
  %i.bhb = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !441
  %i.bhc = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !441 ; 2 uses
  %factor.op.mul2972.us.us.us.i = mul i64 %i.bhc, %i.bhb ; 8 uses
  %i.bhd = mul i64 %i.bgq, %i.bhc
  %invariant.gep.us.us.us3010.i = getelementptr i8, ptr %i.bha, i64 %i.bhd
  %i.bhe = sext i32 %i.bgv to i64
  %invariant.gep2974.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3010.i, i64 %i.bhe ; 8 uses
  %.reass2973.us.us.us.i = mul i64 %factor.op.mul2972.us.us.us.i, %indvars.iv3430.i
  %gep2975.us.us.us.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.i
  %i.bhf = load float, ptr %gep2975.us.us.us.i, align 4, !tbaa !39
  %.sroa.03494.0.vec.insert.i = insertelement <8 x float> poison, float %i.bhf, i64 0
  %.reass2973.us.us.us.1.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgc
  %gep2975.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.1.i
  %i.bhg = load float, ptr %gep2975.us.us.us.1.i, align 4, !tbaa !39
  %.sroa.03494.4.vec.insert.i = insertelement <8 x float> %.sroa.03494.0.vec.insert.i, float %i.bhg, i64 1
  %.reass2973.us.us.us.2.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgd
  %gep2975.us.us.us.2.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.2.i
  %i.bhh = load float, ptr %gep2975.us.us.us.2.i, align 4, !tbaa !39
  %.sroa.03494.8.vec.insert.i = insertelement <8 x float> %.sroa.03494.4.vec.insert.i, float %i.bhh, i64 2
  %.reass2973.us.us.us.3.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bge
  %gep2975.us.us.us.3.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.3.i
  %i.bhi = load float, ptr %gep2975.us.us.us.3.i, align 4, !tbaa !39
  %.sroa.03494.12.vec.insert.i = insertelement <8 x float> %.sroa.03494.8.vec.insert.i, float %i.bhi, i64 3
  %.reass2973.us.us.us.4.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgf
  %gep2975.us.us.us.4.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.4.i
  %i.bhj = load float, ptr %gep2975.us.us.us.4.i, align 4, !tbaa !39
  %.sroa.03494.16.vec.insert.i = insertelement <8 x float> %.sroa.03494.12.vec.insert.i, float %i.bhj, i64 4
  %.reass2973.us.us.us.5.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgg
  %gep2975.us.us.us.5.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.5.i
  %i.bhk = load float, ptr %gep2975.us.us.us.5.i, align 4, !tbaa !39
  %.sroa.03494.20.vec.insert.i = insertelement <8 x float> %.sroa.03494.16.vec.insert.i, float %i.bhk, i64 5
  %.reass2973.us.us.us.6.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgh
  %gep2975.us.us.us.6.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.6.i
  %i.bhl = load float, ptr %gep2975.us.us.us.6.i, align 4, !tbaa !39
  %.sroa.03494.24.vec.insert.i = insertelement <8 x float> %.sroa.03494.20.vec.insert.i, float %i.bhl, i64 6
  %.reass2973.us.us.us.7.i = mul i64 %factor.op.mul2972.us.us.us.i, %i.bgi
  %gep2975.us.us.us.7.i = getelementptr i8, ptr %invariant.gep2974.us.us.us.i, i64 %.reass2973.us.us.us.7.i
  %i.bhm = load float, ptr %gep2975.us.us.us.7.i, align 4, !tbaa !39
  %.sroa.03494.28.vec.insert.i = insertelement <8 x float> %.sroa.03494.24.vec.insert.i, float %i.bhm, i64 7
  br label %.sink.split3618.i

_ZN4ncnn3MatD2Ev.exit943.us.us.us.i:              ; preds = %bb.dl
  %i.bhn = load ptr, ptr %1, align 8, !tbaa !20, !noalias !442 ; 2 uses
  %i.bho = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !442
  %i.bhp = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !442 ; 2 uses
  %i.bhq = mul i64 %i.bhp, %i.bho                 ; 2 uses
  %i.bhr = mul i64 %i.bhq, %i.bfz
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhn, i64 %i.bhr
  %i.bht = mul i64 %i.bgq, %i.bhp                 ; 2 uses
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bhs, i64 %i.bht
  %i.bhv = shl nsw i32 %i.bgv, 2
  %i.bhw = sext i32 %i.bhv to i64                 ; 2 uses
  %i.bhx = getelementptr inbounds [4 x i8], ptr %i.bhu, i64 %i.bhw
  %i.bhy = mul i64 %i.bhq, %i.bga
  %i.bhz = getelementptr inbounds nuw i8, ptr %i.bhn, i64 %i.bhy
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bhz, i64 %i.bht
  %i.bib = getelementptr inbounds [4 x i8], ptr %i.bia, i64 %i.bhw
  %i.bic = load <4 x float>, ptr %i.bhx, align 16, !tbaa !82
  %i.bid = load <4 x float>, ptr %i.bib, align 16, !tbaa !82
  %i.bie = shufflevector <4 x float> %i.bic, <4 x float> %i.bid, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %.sink.split3618.i

_ZN4ncnn3MatD2Ev.exit944.us.us.us.i:              ; preds = %bb.dl
  %i.bif = load ptr, ptr %1, align 8, !tbaa !20, !noalias !443
  %i.big = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !443
  %i.bih = mul i64 %i.big, %i.bgb
  %i.bii = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !443 ; 2 uses
  %i.bij = mul i64 %i.bih, %i.bii
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bif, i64 %i.bij
  %i.bil = mul i64 %i.bgq, %i.bii
  %i.bim = getelementptr inbounds nuw i8, ptr %i.bik, i64 %i.bil
  %i.bin = shl nsw i32 %i.bgv, 3
  %i.bio = sext i32 %i.bin to i64
  %i.bip = getelementptr inbounds [4 x i8], ptr %i.bim, i64 %i.bio
  %i.biq = load <8 x float>, ptr %i.bip, align 32, !tbaa !82
  br label %.sink.split3618.i

.sink.split3618.i:                                ; preds = %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i
  %.sink3619.i = phi <8 x float> [ %i.biq, %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i ], [ %i.bie, %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i ], [ %.sroa.03494.28.vec.insert.i, %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i ]
  %i.bir = load <8 x float>, ptr %i.bgz, align 32, !tbaa !82
  %i.bis = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3619.i, <8 x float> nofpclass(nan inf) %i.bir, <8 x float> nofpclass(nan inf) %.223662977.us.us.us.i)
  br label %bb.dm

bb.dm:                                            ; preds = %.sink.split3618.i, %bb.dl, %bb.dk, %bb.dj
  %.32367.us.us.us.i = phi nsz <8 x float> [ %.223662977.us.us.us.i, %bb.dj ], [ %.223662977.us.us.us.i, %bb.dl ], [ %.223662977.us.us.us.i, %bb.dk ], [ %i.bis, %.sink.split3618.i ] ; 2 uses
  %indvars.iv.next3421.i = add nuw nsw i64 %indvars.iv3420.i, 1 ; 2 uses
  %exitcond3424.not.i = icmp eq i64 %indvars.iv.next3421.i, %i.bfy
  br i1 %exitcond3424.not.i, label %..loopexit2475_crit_edge.us.us.us.i, label %bb.dj, !llvm.loop !397

..loopexit2475_crit_edge.us.us.us.i:              ; preds = %bb.dm, %bb.di, %bb.dh
  %.42368.us.us.us.i = phi nsz <8 x float> [ %.123652982.us.us.us.i, %bb.dh ], [ %.123652982.us.us.us.i, %bb.di ], [ %.32367.us.us.us.i, %bb.dm ] ; 3 uses
  %indvars.iv.next3426.i = add nuw nsw i64 %indvars.iv3425.i, 1 ; 2 uses
  %exitcond3429.not.i = icmp eq i64 %indvars.iv.next3426.i, %wide.trip.count3428.i
  br i1 %exitcond3429.not.i, label %._crit_edge2985.split.us.us.us.i, label %bb.dh, !llvm.loop !398

._crit_edge2985.split.us.us.us.i:                 ; preds = %..loopexit2475_crit_edge.us.us.us.i
  %i.bit = getelementptr inbounds [4 x i8], ptr %.07242992.us.us.i, i64 %i.bfh ; 2 uses
  %indvars.iv.next3431.i = add nuw nsw i64 %indvars.iv3430.i, 8 ; 2 uses
  %i.biu = icmp slt i64 %indvars.iv.next3431.i, %invariant.op3581.i
  br i1 %i.biu, label %.preheader2479.us.us.i, label %._crit_edge2996.i, !llvm.loop !399

._crit_edge2996.i:                                ; preds = %._crit_edge2985.split.us.us.us.i, %.preheader2479.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit945.i
  %.02364.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit945.i ], [ zeroinitializer, %.preheader2479.lr.ph.i ], [ %.42368.us.us.us.i, %._crit_edge2985.split.us.us.us.i ] ; 2 uses
  %.0724.lcssa.i = phi ptr [ %i.bfc, %_ZN4ncnn3MatD2Ev.exit945.i ], [ %scevgep3413.i, %.preheader2479.lr.ph.i ], [ %i.bit, %._crit_edge2985.split.us.us.us.i ] ; 4 uses
  %.0723.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit945.i ], [ %i.ant, %.preheader2479.lr.ph.i ], [ %i.aoc, %._crit_edge2985.split.us.us.us.i ] ; 7 uses
  %i.biv = shufflevector <8 x float> %.02364.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.biw = shufflevector <8 x float> %.02364.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bix = fadd fast <4 x float> %i.biv, %i.biw   ; 2 uses
  %i.biy = or disjoint i32 %.0723.lcssa.i, 3
  %i.biz = icmp slt i32 %i.biy, %i.amx
  br i1 %i.biz, label %.preheader2478.lr.ph.i, label %._crit_edge3056.i

.preheader2478.lr.ph.i:                           ; preds = %._crit_edge2996.i
  %i.bja = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bjb = load i32, ptr %i.j, align 4
  %invariant.op3040.i = sub i32 %.neg2434.i, %i.bjb ; 2 uses
  %i.bjc = load i32, ptr %i.f, align 4            ; 4 uses
  %i.bjd = load i32, ptr %i.a, align 4
  %.fr3173.i = freeze i32 %i.bjd                  ; 2 uses
  %i.bje = load i32, ptr %i.c, align 4            ; 2 uses
  %i.bjf = load i32, ptr %i.i, align 4
  %.neg2432.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op3022.i = sub i32 %.neg2432.i, %i.bjf ; 2 uses
  %i.bjg = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.bfe, label %.preheader2478.lr.ph.split.us.i, label %.preheader2478.preheader.i

.preheader2478.preheader.i:                       ; preds = %.preheader2478.lr.ph.i
  %i.bjh = sub i32 %i.anv, %.0723.lcssa.i
  %i.bji = and i32 %i.bjh, -4                     ; 2 uses
  %i.bjj = zext i32 %i.bji to i64
  %i.bjk = add nuw nsw i64 %i.bjj, 4
  %i.bjl = mul nsw i64 %i.bjk, %i.bfj
  %scevgep3433.i = getelementptr i8, ptr %.0724.lcssa.i, i64 %i.bjl
  %i.bjm = add i32 %.0723.lcssa.i, 4
  %i.bjn = add i32 %i.bjm, %i.bji
  br label %._crit_edge3056.i

.preheader2478.lr.ph.split.us.i:                  ; preds = %.preheader2478.lr.ph.i
  %i.bjo = icmp sgt i32 %.fr3173.i, 0
  br i1 %i.bjo, label %.preheader2478.us.us.preheader.i, label %.preheader2478.us.preheader.i

.preheader2478.us.preheader.i:                    ; preds = %.preheader2478.lr.ph.split.us.i
  %i.bjp = sub i32 %i.anv, %.0723.lcssa.i
  %i.bjq = and i32 %i.bjp, -4                     ; 2 uses
  %i.bjr = zext i32 %i.bjq to i64
  %i.bjs = add nuw nsw i64 %i.bjr, 4
  %i.bjt = mul nsw i64 %i.bjs, %i.bfj
  %scevgep3434.i = getelementptr i8, ptr %.0724.lcssa.i, i64 %i.bjt
  %i.bju = add i32 %.0723.lcssa.i, 4
  %i.bjv = add i32 %i.bju, %i.bjq
  br label %._crit_edge3056.i

.preheader2478.us.us.preheader.i:                 ; preds = %.preheader2478.lr.ph.split.us.i
  %i.bjw = zext nneg i32 %.fr3173.i to i64        ; 4 uses
  %i.bjx = zext i32 %.0723.lcssa.i to i64
  br label %.preheader2478.us.us.i

.preheader2478.us.us.i:                           ; preds = %._crit_edge3038.split.us.us.us.i, %.preheader2478.us.us.preheader.i
  %indvars.iv3454.i = phi i64 [ %i.bjx, %.preheader2478.us.us.preheader.i ], [ %indvars.iv.next3455.i, %._crit_edge3038.split.us.us.us.i ] ; 6 uses
  %.17253052.us.us.i = phi ptr [ %.0724.lcssa.i, %.preheader2478.us.us.preheader.i ], [ %i.bmk, %._crit_edge3038.split.us.us.us.i ] ; 3 uses
  %.023123051.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2478.us.us.preheader.i ], [ %.us-phi199, %._crit_edge3038.split.us.us.us.i ] ; 3 uses
  %i.bjy = lshr exact i64 %indvars.iv3454.i, 2
  %i.bjz = and i64 %i.bjy, 1073741823
  %i.bka = add nuw nsw i64 %indvars.iv3454.i, 1
  %i.bkb = add nuw nsw i64 %indvars.iv3454.i, 2
  %i.bkc = add nuw nsw i64 %indvars.iv3454.i, 3
  switch i32 %.fr3034.i, label %._crit_edge3038.split.us.us.us.i [
    i32 4, label %.preheader2478.us.us.i.split.us
    i32 1, label %.preheader2478.us.us.i.split.us200
  ]

.preheader2478.us.us.i.split.us:                  ; preds = %.preheader2478.us.us.i, %..loopexit2473_crit_edge.us.us.us.i.us
  %indvars.iv3449.i.us = phi i64 [ %indvars.iv.next3450.i.us, %..loopexit2473_crit_edge.us.us.us.i.us ], [ 0, %.preheader2478.us.us.i ] ; 3 uses
  %.123133035.us.us.us.i.us = phi <4 x float> [ %.42316.us.us.us.i.us, %..loopexit2473_crit_edge.us.us.us.i.us ], [ %.023123051.us.us.i, %.preheader2478.us.us.i ] ; 3 uses
  %i.bkd = trunc i64 %indvars.iv3449.i.us to i32
  %i.bke = mul i32 %i.bja, %i.bkd
  %.reass3041.us.us.us.i.us = add i32 %i.bke, %invariant.op3040.i ; 3 uses
  %i.bkf = icmp slt i32 %.reass3041.us.us.us.i.us, 0
  br i1 %i.bkf, label %..loopexit2473_crit_edge.us.us.us.i.us, label %bb.dn

bb.dn:                                            ; preds = %.preheader2478.us.us.i.split.us
  %i.bkg = srem i32 %.reass3041.us.us.us.i.us, %i.bjc
  %i.bkh = sdiv i32 %.reass3041.us.us.us.i.us, %i.bjc ; 2 uses
  %.not895.us.us.us.i.us = icmp eq i32 %i.bkg, 0
  %.not896.us.us.us.i.us = icmp slt i32 %i.bkh, %i.amz
  %or.cond422 = select i1 %.not895.us.us.us.i.us, i1 %.not896.us.us.us.i.us, i1 false
  br i1 %or.cond422, label %.preheader2472.us.us.us.i.us, label %..loopexit2473_crit_edge.us.us.us.i.us

.preheader2472.us.us.us.i.us:                     ; preds = %bb.dn
  %i.bki = mul nuw nsw i64 %indvars.iv3449.i.us, %i.bjw
  %i.bkj = sext i32 %i.bkh to i64
  %i.bkk = mul nsw i64 %i.bkj, %i.aob
  br label %.lr.ph.split.us.us.us.us3071.i.us

.lr.ph.split.us.us.us.us3071.i.us:                ; preds = %bb.dp, %.preheader2472.us.us.us.i.us
  %indvars.iv3444.i.us = phi i64 [ %indvars.iv.next3445.i.us, %bb.dp ], [ 0, %.preheader2472.us.us.us.i.us ] ; 3 uses
  %.223143019.us.us.us.us.i.us = phi <4 x float> [ %.32315.us.us.us.us.i.us, %bb.dp ], [ %.123133035.us.us.us.i.us, %.preheader2472.us.us.us.i.us ] ; 3 uses
  %i.bkl = trunc i64 %indvars.iv3444.i.us to i32
  %i.bkm = mul i32 %i.bje, %i.bkl
  %.reass3023.us.us.us.us.i.us = add i32 %i.bkm, %invariant.op3022.i ; 3 uses
  %i.bkn = icmp slt i32 %.reass3023.us.us.us.us.i.us, 0
  br i1 %i.bkn, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %.lr.ph.split.us.us.us.us3071.i.us
  %i.bko = srem i32 %.reass3023.us.us.us.us.i.us, %i.bjg
  %i.bkp = sdiv i32 %.reass3023.us.us.us.us.i.us, %i.bjg ; 2 uses
  %.not897.us.us.us.us.i.us = icmp eq i32 %i.bko, 0
  %.not898.us.us.us.us.i.us = icmp slt i32 %i.bkp, %i.amy
  %or.cond423 = select i1 %.not897.us.us.us.us.i.us, i1 %.not898.us.us.us.us.i.us, i1 false
  br i1 %or.cond423, label %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us, label %bb.dp

_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us:        ; preds = %bb.do
  %i.bkq = add nuw nsw i64 %indvars.iv3444.i.us, %i.bki
  %i.bkr = shl i64 %i.bkq, 2
  %i.bks = and i64 %i.bkr, 4294967292
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %.17253052.us.us.i, i64 %i.bks
  %i.bku = load ptr, ptr %1, align 8, !tbaa !20, !noalias !444
  %i.bkv = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !444
  %i.bkw = mul i64 %i.bkv, %i.bjz
  %i.bkx = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !444 ; 2 uses
  %i.bky = mul i64 %i.bkw, %i.bkx
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bku, i64 %i.bky
  %i.bla = mul i64 %i.bkk, %i.bkx
  %i.blb = getelementptr inbounds nuw i8, ptr %i.bkz, i64 %i.bla
  %i.blc = shl nsw i32 %i.bkp, 2
  %i.bld = sext i32 %i.blc to i64
  %i.ble = getelementptr inbounds [4 x i8], ptr %i.blb, i64 %i.bld
  %i.blf = load <4 x float>, ptr %i.ble, align 16, !tbaa !82
  %i.blg = load <4 x float>, ptr %i.bkt, align 16, !tbaa !82
  %i.blh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.blf, <4 x float> nofpclass(nan inf) %i.blg, <4 x float> nofpclass(nan inf) %.223143019.us.us.us.us.i.us)
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us, %bb.do, %.lr.ph.split.us.us.us.us3071.i.us
  %.32315.us.us.us.us.i.us = phi nsz <4 x float> [ %.223143019.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us3071.i.us ], [ %.223143019.us.us.us.us.i.us, %bb.do ], [ %i.blh, %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3445.i.us = add nuw nsw i64 %indvars.iv3444.i.us, 1 ; 2 uses
  %exitcond3448.not.i.us = icmp eq i64 %indvars.iv.next3445.i.us, %i.bjw
  br i1 %exitcond3448.not.i.us, label %..loopexit2473_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us3071.i.us, !llvm.loop !402

..loopexit2473_crit_edge.us.us.us.i.us:           ; preds = %bb.dp, %bb.dn, %.preheader2478.us.us.i.split.us
  %.42316.us.us.us.i.us = phi nsz <4 x float> [ %.123133035.us.us.us.i.us, %.preheader2478.us.us.i.split.us ], [ %.123133035.us.us.us.i.us, %bb.dn ], [ %.32315.us.us.us.us.i.us, %bb.dp ] ; 2 uses
  %indvars.iv.next3450.i.us = add nuw nsw i64 %indvars.iv3449.i.us, 1 ; 2 uses
  %exitcond3453.not.i.us = icmp eq i64 %indvars.iv.next3450.i.us, %wide.trip.count3428.i
  br i1 %exitcond3453.not.i.us, label %._crit_edge3038.split.us.us.us.i, label %.preheader2478.us.us.i.split.us, !llvm.loop !403

.preheader2478.us.us.i.split.us200:               ; preds = %.preheader2478.us.us.i, %..loopexit2473_crit_edge.us.us.us.i.us207
  %indvars.iv3449.i.us201 = phi i64 [ %indvars.iv.next3450.i.us209, %..loopexit2473_crit_edge.us.us.us.i.us207 ], [ 0, %.preheader2478.us.us.i ] ; 3 uses
  %.123133035.us.us.us.i.us202 = phi <4 x float> [ %.42316.us.us.us.i.us208, %..loopexit2473_crit_edge.us.us.us.i.us207 ], [ %.023123051.us.us.i, %.preheader2478.us.us.i ] ; 3 uses
  %i.bli = trunc i64 %indvars.iv3449.i.us201 to i32
  %i.blj = mul i32 %i.bja, %i.bli
  %.reass3041.us.us.us.i.us203 = add i32 %i.blj, %invariant.op3040.i ; 3 uses
  %i.blk = icmp slt i32 %.reass3041.us.us.us.i.us203, 0
  br i1 %i.blk, label %..loopexit2473_crit_edge.us.us.us.i.us207, label %bb.dq

bb.dq:                                            ; preds = %.preheader2478.us.us.i.split.us200
  %i.bll = srem i32 %.reass3041.us.us.us.i.us203, %i.bjc
  %i.blm = sdiv i32 %.reass3041.us.us.us.i.us203, %i.bjc ; 2 uses
  %.not895.us.us.us.i.us204 = icmp eq i32 %i.bll, 0
  %.not896.us.us.us.i.us205 = icmp slt i32 %i.blm, %i.amz
  %or.cond424 = select i1 %.not895.us.us.us.i.us204, i1 %.not896.us.us.us.i.us205, i1 false
  br i1 %or.cond424, label %.preheader2472.us.us.us.i.us206, label %..loopexit2473_crit_edge.us.us.us.i.us207

.preheader2472.us.us.us.i.us206:                  ; preds = %bb.dq
  %i.bln = mul nuw nsw i64 %indvars.iv3449.i.us201, %i.bjw
  %i.blo = sext i32 %i.blm to i64
  %i.blp = mul nsw i64 %i.blo, %i.aob
  br label %.lr.ph.split.us3025.us.us.us.i.us

.lr.ph.split.us3025.us.us.us.i.us:                ; preds = %bb.ds, %.preheader2472.us.us.us.i.us206
  %indvars.iv3439.i.us = phi i64 [ %indvars.iv.next3440.i.us, %bb.ds ], [ 0, %.preheader2472.us.us.us.i.us206 ] ; 3 uses
  %.223143019.us3027.us.us.us.i.us = phi <4 x float> [ %.32315.us3031.us.us.us.i.us, %bb.ds ], [ %.123133035.us.us.us.i.us202, %.preheader2472.us.us.us.i.us206 ] ; 3 uses
  %i.blq = trunc i64 %indvars.iv3439.i.us to i32
  %i.blr = mul i32 %i.bje, %i.blq
  %.reass3023.us3028.us.us.us.i.us = add i32 %i.blr, %invariant.op3022.i ; 3 uses
  %i.bls = icmp slt i32 %.reass3023.us3028.us.us.us.i.us, 0
  br i1 %i.bls, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %.lr.ph.split.us3025.us.us.us.i.us
  %i.blt = srem i32 %.reass3023.us3028.us.us.us.i.us, %i.bjg
  %i.blu = sdiv i32 %.reass3023.us3028.us.us.us.i.us, %i.bjg ; 2 uses
  %.not897.us3029.us.us.us.i.us = icmp eq i32 %i.blt, 0
  %.not898.us3030.us.us.us.i.us = icmp slt i32 %i.blu, %i.amy
  %or.cond425 = select i1 %.not897.us3029.us.us.us.i.us, i1 %.not898.us3030.us.us.us.i.us, i1 false
  br i1 %or.cond425, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.ds

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.dr
  %i.blv = load ptr, ptr %1, align 8, !tbaa !20, !noalias !445
  %i.blw = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !445
  %i.blx = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !445 ; 2 uses
  %factor.op.mul3014.us.us.us.us.i.us = mul i64 %i.blx, %i.blw ; 4 uses
  %i.bly = mul i64 %i.blp, %i.blx
  %invariant.gep.us.us.us3067.us.i.us = getelementptr i8, ptr %i.blv, i64 %i.bly
  %i.blz = sext i32 %i.blu to i64
  %invariant.gep3016.us.us.us.us.i.us = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3067.us.i.us, i64 %i.blz ; 4 uses
  %.reass3015.us.us.us.us.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %indvars.iv3454.i
  %gep3017.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.i.us
  %i.bma = load float, ptr %gep3017.us.us.us.us.i.us, align 4, !tbaa !39
  %.sroa.0.0.vec.insert.i.us = insertelement <4 x float> poison, float %i.bma, i64 0
  %.reass3015.us.us.us.us.1.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bka
  %gep3017.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.1.i.us
  %i.bmb = load float, ptr %gep3017.us.us.us.us.1.i.us, align 4, !tbaa !39
  %.sroa.0.4.vec.insert.i.us = insertelement <4 x float> %.sroa.0.0.vec.insert.i.us, float %i.bmb, i64 1
  %.reass3015.us.us.us.us.2.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bkb
  %gep3017.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.2.i.us
  %i.bmc = load float, ptr %gep3017.us.us.us.us.2.i.us, align 4, !tbaa !39
  %.sroa.0.8.vec.insert.i.us = insertelement <4 x float> %.sroa.0.4.vec.insert.i.us, float %i.bmc, i64 2
  %.reass3015.us.us.us.us.3.i.us = mul i64 %factor.op.mul3014.us.us.us.us.i.us, %i.bkc
  %gep3017.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3016.us.us.us.us.i.us, i64 %.reass3015.us.us.us.us.3.i.us
  %i.bmd = load float, ptr %gep3017.us.us.us.us.3.i.us, align 4, !tbaa !39
  %.sroa.0.12.vec.insert.i.us = insertelement <4 x float> %.sroa.0.8.vec.insert.i.us, float %i.bmd, i64 3
  %i.bme = add nuw nsw i64 %indvars.iv3439.i.us, %i.bln
  %i.bmf = shl i64 %i.bme, 2
  %i.bmg = and i64 %i.bmf, 4294967292
  %i.bmh = getelementptr inbounds nuw [4 x i8], ptr %.17253052.us.us.i, i64 %i.bmg
  %i.bmi = load <4 x float>, ptr %i.bmh, align 16, !tbaa !82
  %i.bmj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bmi, <4 x float> nofpclass(nan inf) %.223143019.us3027.us.us.us.i.us)
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.dr, %.lr.ph.split.us3025.us.us.us.i.us
  %.32315.us3031.us.us.us.i.us = phi nsz <4 x float> [ %.223143019.us3027.us.us.us.i.us, %.lr.ph.split.us3025.us.us.us.i.us ], [ %i.bmj, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223143019.us3027.us.us.us.i.us, %bb.dr ] ; 2 uses
  %indvars.iv.next3440.i.us = add nuw nsw i64 %indvars.iv3439.i.us, 1 ; 2 uses
  %exitcond3443.not.i.us = icmp eq i64 %indvars.iv.next3440.i.us, %i.bjw
  br i1 %exitcond3443.not.i.us, label %..loopexit2473_crit_edge.us.us.us.i.us207, label %.lr.ph.split.us3025.us.us.us.i.us, !llvm.loop !402

..loopexit2473_crit_edge.us.us.us.i.us207:        ; preds = %bb.ds, %bb.dq, %.preheader2478.us.us.i.split.us200
  %.42316.us.us.us.i.us208 = phi nsz <4 x float> [ %.123133035.us.us.us.i.us202, %.preheader2478.us.us.i.split.us200 ], [ %.123133035.us.us.us.i.us202, %bb.dq ], [ %.32315.us3031.us.us.us.i.us, %bb.ds ] ; 2 uses
  %indvars.iv.next3450.i.us209 = add nuw nsw i64 %indvars.iv3449.i.us201, 1 ; 2 uses
  %exitcond3453.not.i.us210 = icmp eq i64 %indvars.iv.next3450.i.us209, %wide.trip.count3428.i
  br i1 %exitcond3453.not.i.us210, label %._crit_edge3038.split.us.us.us.i, label %.preheader2478.us.us.i.split.us200, !llvm.loop !403

._crit_edge3038.split.us.us.us.i:                 ; preds = %..loopexit2473_crit_edge.us.us.us.i.us207, %..loopexit2473_crit_edge.us.us.us.i.us, %.preheader2478.us.us.i
  %.us-phi199 = phi <4 x float> [ %.42316.us.us.us.i.us, %..loopexit2473_crit_edge.us.us.us.i.us ], [ %.023123051.us.us.i, %.preheader2478.us.us.i ], [ %.42316.us.us.us.i.us208, %..loopexit2473_crit_edge.us.us.us.i.us207 ] ; 2 uses
  %i.bmk = getelementptr inbounds [4 x i8], ptr %.17253052.us.us.i, i64 %i.bfj ; 2 uses
  %indvars.iv.next3455.i = add nuw nsw i64 %indvars.iv3454.i, 4 ; 2 uses
  %i.bml = trunc i64 %indvars.iv.next3455.i to i32 ; 2 uses
  %i.bmm = or i32 %i.bml, 3
  %i.bmn = icmp slt i32 %i.bmm, %i.amx
  br i1 %i.bmn, label %.preheader2478.us.us.i, label %._crit_edge3056.i, !llvm.loop !406

._crit_edge3056.i:                                ; preds = %._crit_edge3038.split.us.us.us.i, %.preheader2478.us.preheader.i, %.preheader2478.preheader.i, %._crit_edge2996.i
  %.02312.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2996.i ], [ zeroinitializer, %.preheader2478.preheader.i ], [ zeroinitializer, %.preheader2478.us.preheader.i ], [ %.us-phi199, %._crit_edge3038.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge2996.i ], [ %scevgep3433.i, %.preheader2478.preheader.i ], [ %scevgep3434.i, %.preheader2478.us.preheader.i ], [ %i.bmk, %._crit_edge3038.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge2996.i ], [ %i.bjn, %.preheader2478.preheader.i ], [ %i.bjv, %.preheader2478.us.preheader.i ], [ %i.bml, %._crit_edge3038.split.us.us.us.i ] ; 7 uses
  %i.bmo = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.bix, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.bmp = shufflevector <4 x float> %.02312.lcssa.i, <4 x float> %i.bix, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bmq = fadd fast <4 x float> %i.bmo, %i.bmp
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.bmq) ; 4 uses
  %i.bmr = or disjoint i32 %.1.lcssa.i, 1
  %i.bms = icmp slt i32 %i.bmr, %i.amx
  br i1 %i.bms, label %.preheader2477.lr.ph.i, label %.preheader2480.i

.preheader2477.lr.ph.i:                           ; preds = %._crit_edge3056.i
  %i.bmt = load i32, ptr %i.d, align 4
  %i.bmu = load i32, ptr %i.j, align 4
  %invariant.op3091.i = sub i32 %.neg2434.i, %i.bmu
  %i.bmv = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bmw = load i32, ptr %i.a, align 4
  %.fr3174.i = freeze i32 %i.bmw                  ; 2 uses
  %i.bmx = load i32, ptr %i.c, align 4
  %i.bmy = load i32, ptr %i.i, align 4
  %.neg2428.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op3084.i = sub i32 %.neg2428.i, %i.bmy
  %i.bmz = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bfe, label %.preheader2477.lr.ph.split.us.i, label %.preheader2477.preheader.i

.preheader2477.preheader.i:                       ; preds = %.preheader2477.lr.ph.i
  %i.bna = sub i32 %i.anw, %.1.lcssa.i            ; 2 uses
  %i.bnb = lshr i32 %i.bna, 1
  %i.bnc = zext nneg i32 %i.bnb to i64
  %i.bnd = shl nuw nsw i64 %i.bnc, 2
  %i.bne = add nuw nsw i64 %i.bnd, 4
  %i.bnf = mul i64 %i.bne, %i.bfl
  %scevgep3457.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bnf
  %i.bng = add i32 %.1.lcssa.i, 2
  %i.bnh = and i32 %i.bna, -2
  %i.bni = add i32 %i.bng, %i.bnh
  br label %.preheader2480.i

.preheader2477.lr.ph.split.us.i:                  ; preds = %.preheader2477.lr.ph.i
  %i.bnj = icmp sgt i32 %.fr3174.i, 0
  br i1 %i.bnj, label %.preheader2477.us.us.preheader.i, label %.preheader2477.us.preheader.i

.preheader2477.us.preheader.i:                    ; preds = %.preheader2477.lr.ph.split.us.i
  %i.bnk = sub i32 %i.anw, %.1.lcssa.i            ; 2 uses
  %i.bnl = lshr i32 %i.bnk, 1
  %i.bnm = zext nneg i32 %i.bnl to i64
  %i.bnn = shl nuw nsw i64 %i.bnm, 2
  %i.bno = add nuw nsw i64 %i.bnn, 4
  %i.bnp = mul i64 %i.bno, %i.bfl
  %scevgep3458.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.bnp
  %i.bnq = add i32 %.1.lcssa.i, 2
  %i.bnr = and i32 %i.bnk, -2
  %i.bns = add i32 %i.bnq, %i.bnr
  br label %.preheader2480.i

.preheader2477.us.us.preheader.i:                 ; preds = %.preheader2477.lr.ph.split.us.i
  %i.bnt = zext nneg i32 %.fr3174.i to i64        ; 2 uses
  %i.bnu = zext i32 %.1.lcssa.i to i64
  br label %.preheader2477.us.us.i

.preheader2477.us.us.i:                           ; preds = %._crit_edge3089.split.us.us.us.i, %.preheader2477.us.us.preheader.i
  %indvars.iv3472.i = phi i64 [ %i.bnu, %.preheader2477.us.us.preheader.i ], [ %indvars.iv.next3473.i, %._crit_edge3089.split.us.us.us.i ] ; 3 uses
  %.27263096.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2477.us.us.preheader.i ], [ %i.boz, %._crit_edge3089.split.us.us.us.i ] ; 2 uses
  %.17293095.us.us.i = phi float [ %op.rdx, %.preheader2477.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3089.split.us.us.us.i ]
  %i.bnv = add nuw nsw i64 %indvars.iv3472.i, 1
  br label %bb.dt

bb.dt:                                            ; preds = %..loopexit2471_crit_edge.us.us.us.i, %.preheader2477.us.us.i
  %indvars.iv3467.i = phi i64 [ %indvars.iv.next3468.i, %..loopexit2471_crit_edge.us.us.us.i ], [ 0, %.preheader2477.us.us.i ] ; 3 uses
  %.27303086.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2471_crit_edge.us.us.us.i ], [ %.17293095.us.us.i, %.preheader2477.us.us.i ] ; 3 uses
  %i.bnw = trunc i64 %indvars.iv3467.i to i32
  %i.bnx = mul i32 %i.bmt, %i.bnw
  %.reass3092.us.us.us.i = add i32 %i.bnx, %invariant.op3091.i ; 3 uses
  %i.bny = icmp slt i32 %.reass3092.us.us.us.i, 0
  br i1 %i.bny, label %..loopexit2471_crit_edge.us.us.us.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.bnz = srem i32 %.reass3092.us.us.us.i, %i.bmv
  %i.boa = sdiv i32 %.reass3092.us.us.us.i, %i.bmv ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bnz, 0
  %.not892.us.us.us.i = icmp slt i32 %i.boa, %i.amz
  %or.cond426 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond426, label %.preheader2470.us.us.us.i, label %..loopexit2471_crit_edge.us.us.us.i

.preheader2470.us.us.us.i:                        ; preds = %bb.du
  %i.bob = mul nuw nsw i64 %indvars.iv3467.i, %i.bnt
  %i.boc = sext i32 %i.boa to i64
  %i.bod = mul nsw i64 %i.boc, %i.aob
  br label %bb.dv

bb.dv:                                            ; preds = %.loopexit.us.us.us.i, %.preheader2470.us.us.us.i
  %indvars.iv3462.i = phi i64 [ %indvars.iv.next3463.i, %.loopexit.us.us.us.i ], [ 0, %.preheader2470.us.us.us.i ] ; 3 uses
  %.37313081.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.27303086.us.us.us.i, %.preheader2470.us.us.us.i ] ; 3 uses
  %i.boe = trunc i64 %indvars.iv3462.i to i32
  %i.bof = mul i32 %i.bmx, %i.boe
  %.reass3085.us.us.us.i = add i32 %invariant.op3084.i, %i.bof ; 3 uses
  %i.bog = icmp slt i32 %.reass3085.us.us.us.i, 0
  br i1 %i.bog, label %.loopexit.us.us.us.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.boh = srem i32 %.reass3085.us.us.us.i, %i.bmz
  %i.boi = sdiv i32 %.reass3085.us.us.us.i, %i.bmz ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.boh, 0
  %.not894.us.us.us.i = icmp slt i32 %i.boi, %i.amy
  %or.cond427 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond427, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.dw
  %i.boj = add nuw nsw i64 %indvars.iv3462.i, %i.bob
  %.idx3564.i = shl nuw nsw i64 %i.boj, 3
  %i.bok = getelementptr inbounds nuw i8, ptr %.27263096.us.us.i, i64 %.idx3564.i ; 2 uses
  %i.bol = load ptr, ptr %1, align 8, !tbaa !20, !noalias !446
  %i.bom = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !446
  %i.bon = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !446 ; 2 uses
  %factor.op.mul3075.us.us.us.i = mul i64 %i.bon, %i.bom ; 2 uses
  %i.boo = mul i64 %i.bod, %i.bon
  %invariant.gep.us.us.us3113.i = getelementptr i8, ptr %i.bol, i64 %i.boo
  %i.bop = sext i32 %i.boi to i64
  %invariant.gep3077.us.us.us.i = getelementptr [4 x i8], ptr %invariant.gep.us.us.us3113.i, i64 %i.bop ; 2 uses
  %.reass3076.us.us.us.i = mul i64 %factor.op.mul3075.us.us.us.i, %indvars.iv3472.i
  %gep3078.us.us.us.i = getelementptr i8, ptr %invariant.gep3077.us.us.us.i, i64 %.reass3076.us.us.us.i
  %i.boq = load float, ptr %gep3078.us.us.us.i, align 4, !tbaa !39
  %i.bor = load float, ptr %i.bok, align 4, !tbaa !39
  %i.bos = fmul fast float %i.bor, %i.boq
  %i.bot = fadd fast float %.37313081.us.us.us.i, %i.bos
  %.reass3076.us.us.us.1.i = mul i64 %factor.op.mul3075.us.us.us.i, %i.bnv
  %gep3078.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3077.us.us.us.i, i64 %.reass3076.us.us.us.1.i
  %i.bou = load float, ptr %gep3078.us.us.us.1.i, align 4, !tbaa !39
  %i.bov = getelementptr inbounds nuw i8, ptr %i.bok, i64 4
  %i.bow = load float, ptr %i.bov, align 4, !tbaa !39
  %i.box = fmul fast float %i.bow, %i.bou
  %i.boy = fadd fast float %i.box, %i.bot
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.dw, %bb.dv
  %.6.us.us.us.i = phi nsz float [ %.37313081.us.us.us.i, %bb.dv ], [ %.37313081.us.us.us.i, %bb.dw ], [ %i.boy, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3463.i = add nuw nsw i64 %indvars.iv3462.i, 1 ; 2 uses
  %exitcond3466.not.i = icmp eq i64 %indvars.iv.next3463.i, %i.bnt
  br i1 %exitcond3466.not.i, label %..loopexit2471_crit_edge.us.us.us.i, label %bb.dv, !llvm.loop !409

..loopexit2471_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.du, %bb.dt
  %.8.us.us.us.i = phi nsz float [ %.27303086.us.us.us.i, %bb.dt ], [ %.27303086.us.us.us.i, %bb.du ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3468.i = add nuw nsw i64 %indvars.iv3467.i, 1 ; 2 uses
  %exitcond3471.not.i = icmp eq i64 %indvars.iv.next3468.i, %wide.trip.count3428.i
  br i1 %exitcond3471.not.i, label %._crit_edge3089.split.us.us.us.i, label %bb.dt, !llvm.loop !410

._crit_edge3089.split.us.us.us.i:                 ; preds = %..loopexit2471_crit_edge.us.us.us.i
  %i.boz = getelementptr inbounds [4 x i8], ptr %.27263096.us.us.i, i64 %i.bfl ; 2 uses
  %indvars.iv.next3473.i = add nuw nsw i64 %indvars.iv3472.i, 2 ; 2 uses
  %i.bpa = trunc i64 %indvars.iv.next3473.i to i32 ; 2 uses
  %i.bpb = or i32 %i.bpa, 1
  %i.bpc = icmp slt i32 %i.bpb, %i.amx
  br i1 %i.bpc, label %.preheader2477.us.us.i, label %.preheader2480.i, !llvm.loop !411

.preheader2480.i:                                 ; preds = %._crit_edge3089.split.us.us.us.i, %.preheader2477.us.preheader.i, %.preheader2477.preheader.i, %._crit_edge3056.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3056.i ], [ %op.rdx, %.preheader2477.preheader.i ], [ %op.rdx, %.preheader2477.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3089.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3056.i ], [ %scevgep3457.i, %.preheader2477.preheader.i ], [ %scevgep3458.i, %.preheader2477.us.preheader.i ], [ %i.boz, %._crit_edge3089.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3056.i ], [ %i.bni, %.preheader2477.preheader.i ], [ %i.bns, %.preheader2477.us.preheader.i ], [ %i.bpa, %._crit_edge3089.split.us.us.us.i ] ; 2 uses
  %i.bpd = icmp slt i32 %.2.lcssa.i, %i.amx
  br i1 %i.bpd, label %.preheader2476.lr.ph.i, label %._crit_edge3135.i

.preheader2476.lr.ph.i:                           ; preds = %.preheader2480.i
  %i.bpe = load i32, ptr %i.d, align 4
  %i.bpf = load i32, ptr %i.j, align 4
  %invariant.op3127.i = sub i32 %.neg2434.i, %i.bpf
  %i.bpg = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bph = load i32, ptr %i.a, align 4
  %.fr3175.i = freeze i32 %i.bph                  ; 2 uses
  %i.bpi = load i32, ptr %i.c, align 4
  %i.bpj = load i32, ptr %i.i, align 4
  %.neg2424.i = add nuw nsw i32 %.07323147.i, 1
  %invariant.op3120.i = sub i32 %.neg2424.i, %i.bpj
  %i.bpk = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bpl = icmp sgt i32 %.fr3175.i, 0
  %or.cond3621.i = and i1 %i.bfe, %i.bpl
  br i1 %or.cond3621.i, label %.preheader2476.us.us.preheader.i, label %._crit_edge3135.i

.preheader2476.us.us.preheader.i:                 ; preds = %.preheader2476.lr.ph.i
  %i.bpm = zext nneg i32 %.fr3175.i to i64        ; 2 uses
  %i.bpn = zext i32 %.2.lcssa.i to i64
  br label %.preheader2476.us.us.i

.preheader2476.us.us.i:                           ; preds = %._crit_edge3125.split.us.us.us.i, %.preheader2476.us.us.preheader.i
  %indvars.iv3485.i = phi i64 [ %i.bpn, %.preheader2476.us.us.preheader.i ], [ %indvars.iv.next3486.i, %._crit_edge3125.split.us.us.us.i ] ; 2 uses
  %.37273132.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2476.us.us.preheader.i ], [ %i.bqr, %._crit_edge3125.split.us.us.us.i ] ; 2 uses
  %.93131.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2476.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3125.split.us.us.us.i ]
  br label %bb.dx

bb.dx:                                            ; preds = %..loopexit2469_crit_edge.us.us.us.i, %.preheader2476.us.us.i
  %indvars.iv3480.i = phi i64 [ %indvars.iv.next3481.i, %..loopexit2469_crit_edge.us.us.us.i ], [ 0, %.preheader2476.us.us.i ] ; 3 uses
  %.103122.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2469_crit_edge.us.us.us.i ], [ %.93131.us.us.i, %.preheader2476.us.us.i ] ; 3 uses
  %i.bpo = trunc i64 %indvars.iv3480.i to i32
  %i.bpp = mul i32 %i.bpe, %i.bpo
  %.reass3128.us.us.us.i = add i32 %i.bpp, %invariant.op3127.i ; 3 uses
  %i.bpq = icmp slt i32 %.reass3128.us.us.us.i, 0
  br i1 %i.bpq, label %..loopexit2469_crit_edge.us.us.us.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bpr = srem i32 %.reass3128.us.us.us.i, %i.bpg
  %i.bps = sdiv i32 %.reass3128.us.us.us.i, %i.bpg ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bpr, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bps, %i.amz
  %or.cond428 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond428, label %.preheader.us.us.us.i, label %..loopexit2469_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.dy
  %i.bpt = mul nuw nsw i64 %indvars.iv3480.i, %i.bpm
  %i.bpu = sext i32 %i.bps to i64
  %i.bpv = getelementptr inbounds nuw [4 x i8], ptr %.37273132.us.us.i, i64 %i.bpt
  %i.bpw = mul nsw i64 %i.bpu, %i.aob
  br label %bb.dz

bb.dz:                                            ; preds = %bb.eb, %.preheader.us.us.us.i
  %indvars.iv3475.i = phi i64 [ %indvars.iv.next3476.i, %bb.eb ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.113117.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.eb ], [ %.103122.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.bpx = trunc i64 %indvars.iv3475.i to i32
  %i.bpy = mul i32 %i.bpi, %i.bpx
  %.reass3121.us.us.us.i = add i32 %invariant.op3120.i, %i.bpy ; 3 uses
  %i.bpz = icmp slt i32 %.reass3121.us.us.us.i, 0
  br i1 %i.bpz, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bqa = srem i32 %.reass3121.us.us.us.i, %i.bpk
  %i.bqb = sdiv i32 %.reass3121.us.us.us.i, %i.bpk ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bqa, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bqb, %i.amy
  %or.cond429 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond429, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.eb

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.ea
  %i.bqc = load ptr, ptr %1, align 8, !tbaa !20, !noalias !447
  %i.bqd = load i64, ptr %i.ani, align 8, !tbaa !21, !noalias !447
  %i.bqe = mul i64 %i.bqd, %indvars.iv3485.i
  %i.bqf = load i64, ptr %i.ai, align 8, !tbaa !55, !noalias !447 ; 2 uses
  %i.bqg = mul i64 %i.bqe, %i.bqf
  %i.bqh = getelementptr inbounds nuw i8, ptr %i.bqc, i64 %i.bqg
  %i.bqi = mul i64 %i.bpw, %i.bqf
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqh, i64 %i.bqi
  %i.bqk = sext i32 %i.bqb to i64
  %i.bql = getelementptr inbounds [4 x i8], ptr %i.bqj, i64 %i.bqk
  %i.bqm = load float, ptr %i.bql, align 4, !tbaa !39
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.bpv, i64 %indvars.iv3475.i
  %i.bqo = load float, ptr %i.bqn, align 4, !tbaa !39
  %i.bqp = fmul fast float %i.bqo, %i.bqm
  %i.bqq = fadd fast float %i.bqp, %.113117.us.us.us.i
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, %bb.ea, %bb.dz
  %.13.us.us.us.i = phi nsz float [ %.113117.us.us.us.i, %bb.dz ], [ %.113117.us.us.us.i, %bb.ea ], [ %i.bqq, %_ZN4ncnn3MatD2Ev.exit.us.us.us.i ] ; 2 uses
  %indvars.iv.next3476.i = add nuw nsw i64 %indvars.iv3475.i, 1 ; 2 uses
  %exitcond3479.not.i = icmp eq i64 %indvars.iv.next3476.i, %i.bpm
end_hunk_6
begin_hunk_7_@_ZN4ncnn21Deconvolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.kx = lshr <16 x i32> %i.kw, splat (i32 16)
  %i.ky = trunc nuw <16 x i32> %i.kx to <16 x i16>
  store <16 x i16> %i.ky, ptr %.15241197.us.i, align 2, !tbaa !89
  %i.kz = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 32
  %gep.us.2.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.2.i ; 8 uses
  %gep1189.us.21573.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.i
  %i.la = load i32, ptr %gep1189.us.21573.i, align 4, !tbaa !39
  %gep1189.us.1.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.1.i
  %i.lb = load i32, ptr %gep1189.us.1.2.i, align 4, !tbaa !39
  %gep1189.us.2.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.2.i
  %i.lc = load i32, ptr %gep1189.us.2.2.i, align 4, !tbaa !39
  %gep1189.us.3.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.3.i
  %i.ld = load i32, ptr %gep1189.us.3.2.i, align 4, !tbaa !39
  %gep1189.us.4.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.4.i
  %i.le = load i32, ptr %gep1189.us.4.2.i, align 4, !tbaa !39
  %gep1189.us.5.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.5.i
  %i.lf = load i32, ptr %gep1189.us.5.2.i, align 4, !tbaa !39
  %gep1189.us.6.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.6.i
  %i.lg = load i32, ptr %gep1189.us.6.2.i, align 4, !tbaa !39
  %gep1189.us.7.2.i = getelementptr i8, ptr %gep.us.2.i, i64 %.reass.us.7.i
  %i.lh = load i32, ptr %gep1189.us.7.2.i, align 4, !tbaa !39
  %gep.us.3.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.3.i ; 8 uses
  %gep1189.us.31574.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.i
  %i.li = load i32, ptr %gep1189.us.31574.i, align 4, !tbaa !39
  %gep1189.us.1.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.1.i
  %i.lj = load i32, ptr %gep1189.us.1.3.i, align 4, !tbaa !39
  %gep1189.us.2.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.2.i
  %i.lk = load i32, ptr %gep1189.us.2.3.i, align 4, !tbaa !39
  %gep1189.us.3.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.3.i
  %i.ll = load i32, ptr %gep1189.us.3.3.i, align 4, !tbaa !39
  %gep1189.us.4.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.4.i
  %i.lm = load i32, ptr %gep1189.us.4.3.i, align 4, !tbaa !39
  %gep1189.us.5.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.5.i
  %i.ln = load i32, ptr %gep1189.us.5.3.i, align 4, !tbaa !39
  %gep1189.us.6.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.6.i
  %i.lo = load i32, ptr %gep1189.us.6.3.i, align 4, !tbaa !39
  %gep1189.us.7.3.i = getelementptr i8, ptr %gep.us.3.i, i64 %.reass.us.7.i
  %i.lp = load i32, ptr %gep1189.us.7.3.i, align 4, !tbaa !39
  %i.lq = insertelement <16 x i32> poison, i32 %i.la, i64 0
  %i.lr = insertelement <16 x i32> %i.lq, i32 %i.lb, i64 1
  %i.ls = insertelement <16 x i32> %i.lr, i32 %i.lc, i64 2
  %i.lt = insertelement <16 x i32> %i.ls, i32 %i.ld, i64 3
  %i.lu = insertelement <16 x i32> %i.lt, i32 %i.le, i64 4
  %i.lv = insertelement <16 x i32> %i.lu, i32 %i.lf, i64 5
  %i.lw = insertelement <16 x i32> %i.lv, i32 %i.lg, i64 6
  %i.lx = insertelement <16 x i32> %i.lw, i32 %i.lh, i64 7
  %i.ly = insertelement <16 x i32> %i.lx, i32 %i.li, i64 8
  %i.lz = insertelement <16 x i32> %i.ly, i32 %i.lj, i64 9
  %i.ma = insertelement <16 x i32> %i.lz, i32 %i.lk, i64 10
  %i.mb = insertelement <16 x i32> %i.ma, i32 %i.ll, i64 11
  %i.mc = insertelement <16 x i32> %i.mb, i32 %i.lm, i64 12
  %i.md = insertelement <16 x i32> %i.mc, i32 %i.ln, i64 13
  %i.me = insertelement <16 x i32> %i.md, i32 %i.lo, i64 14
  %i.mf = insertelement <16 x i32> %i.me, i32 %i.lp, i64 15
  %i.mg = lshr <16 x i32> %i.mf, splat (i32 16)
  %i.mh = trunc nuw <16 x i32> %i.mg to <16 x i16>
  store <16 x i16> %i.mh, ptr %i.kz, align 2, !tbaa !89
  %i.mi = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 64
  %gep.us.4.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.4.i ; 8 uses
  %gep1189.us.41575.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.i
  %i.mj = load i32, ptr %gep1189.us.41575.i, align 4, !tbaa !39
  %gep1189.us.1.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.1.i
  %i.mk = load i32, ptr %gep1189.us.1.4.i, align 4, !tbaa !39
  %gep1189.us.2.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.2.i
  %i.ml = load i32, ptr %gep1189.us.2.4.i, align 4, !tbaa !39
  %gep1189.us.3.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.3.i
  %i.mm = load i32, ptr %gep1189.us.3.4.i, align 4, !tbaa !39
  %gep1189.us.4.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.4.i
  %i.mn = load i32, ptr %gep1189.us.4.4.i, align 4, !tbaa !39
  %gep1189.us.5.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.5.i
  %i.mo = load i32, ptr %gep1189.us.5.4.i, align 4, !tbaa !39
  %gep1189.us.6.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.6.i
  %i.mp = load i32, ptr %gep1189.us.6.4.i, align 4, !tbaa !39
  %gep1189.us.7.4.i = getelementptr i8, ptr %gep.us.4.i, i64 %.reass.us.7.i
  %i.mq = load i32, ptr %gep1189.us.7.4.i, align 4, !tbaa !39
  %gep.us.5.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.5.i ; 8 uses
  %gep1189.us.51576.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.i
  %i.mr = load i32, ptr %gep1189.us.51576.i, align 4, !tbaa !39
  %gep1189.us.1.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.1.i
  %i.ms = load i32, ptr %gep1189.us.1.5.i, align 4, !tbaa !39
  %gep1189.us.2.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.2.i
  %i.mt = load i32, ptr %gep1189.us.2.5.i, align 4, !tbaa !39
  %gep1189.us.3.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.3.i
  %i.mu = load i32, ptr %gep1189.us.3.5.i, align 4, !tbaa !39
  %gep1189.us.4.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.4.i
  %i.mv = load i32, ptr %gep1189.us.4.5.i, align 4, !tbaa !39
  %gep1189.us.5.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.5.i
  %i.mw = load i32, ptr %gep1189.us.5.5.i, align 4, !tbaa !39
  %gep1189.us.6.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.6.i
  %i.mx = load i32, ptr %gep1189.us.6.5.i, align 4, !tbaa !39
  %gep1189.us.7.5.i = getelementptr i8, ptr %gep.us.5.i, i64 %.reass.us.7.i
  %i.my = load i32, ptr %gep1189.us.7.5.i, align 4, !tbaa !39
  %i.mz = insertelement <16 x i32> poison, i32 %i.mj, i64 0
  %i.na = insertelement <16 x i32> %i.mz, i32 %i.mk, i64 1
  %i.nb = insertelement <16 x i32> %i.na, i32 %i.ml, i64 2
  %i.nc = insertelement <16 x i32> %i.nb, i32 %i.mm, i64 3
  %i.nd = insertelement <16 x i32> %i.nc, i32 %i.mn, i64 4
  %i.ne = insertelement <16 x i32> %i.nd, i32 %i.mo, i64 5
  %i.nf = insertelement <16 x i32> %i.ne, i32 %i.mp, i64 6
  %i.ng = insertelement <16 x i32> %i.nf, i32 %i.mq, i64 7
  %i.nh = insertelement <16 x i32> %i.ng, i32 %i.mr, i64 8
  %i.ni = insertelement <16 x i32> %i.nh, i32 %i.ms, i64 9
  %i.nj = insertelement <16 x i32> %i.ni, i32 %i.mt, i64 10
  %i.nk = insertelement <16 x i32> %i.nj, i32 %i.mu, i64 11
  %i.nl = insertelement <16 x i32> %i.nk, i32 %i.mv, i64 12
  %i.nm = insertelement <16 x i32> %i.nl, i32 %i.mw, i64 13
  %i.nn = insertelement <16 x i32> %i.nm, i32 %i.mx, i64 14
  %i.no = insertelement <16 x i32> %i.nn, i32 %i.my, i64 15
  %i.np = lshr <16 x i32> %i.no, splat (i32 16)
  %i.nq = trunc nuw <16 x i32> %i.np to <16 x i16>
  store <16 x i16> %i.nq, ptr %i.mi, align 2, !tbaa !89
  %i.nr = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 96
  %gep.us.6.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.6.i ; 8 uses
  %gep1189.us.61577.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.i
  %i.ns = load i32, ptr %gep1189.us.61577.i, align 4, !tbaa !39
  %gep1189.us.1.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.1.i
  %i.nt = load i32, ptr %gep1189.us.1.6.i, align 4, !tbaa !39
  %gep1189.us.2.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.2.i
  %i.nu = load i32, ptr %gep1189.us.2.6.i, align 4, !tbaa !39
  %gep1189.us.3.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.3.i
  %i.nv = load i32, ptr %gep1189.us.3.6.i, align 4, !tbaa !39
  %gep1189.us.4.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.4.i
  %i.nw = load i32, ptr %gep1189.us.4.6.i, align 4, !tbaa !39
  %gep1189.us.5.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.5.i
  %i.nx = load i32, ptr %gep1189.us.5.6.i, align 4, !tbaa !39
  %gep1189.us.6.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.6.i
  %i.ny = load i32, ptr %gep1189.us.6.6.i, align 4, !tbaa !39
  %gep1189.us.7.6.i = getelementptr i8, ptr %gep.us.6.i, i64 %.reass.us.7.i
  %i.nz = load i32, ptr %gep1189.us.7.6.i, align 4, !tbaa !39
  %gep.us.7.i = getelementptr i8, ptr %invariant.gep1194.us.i, i64 %.reass1193.us.7.i ; 8 uses
  %gep1189.us.71578.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.i
  %i.oa = load i32, ptr %gep1189.us.71578.i, align 4, !tbaa !39
  %gep1189.us.1.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.1.i
  %i.ob = load i32, ptr %gep1189.us.1.7.i, align 4, !tbaa !39
  %gep1189.us.2.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.2.i
  %i.oc = load i32, ptr %gep1189.us.2.7.i, align 4, !tbaa !39
  %gep1189.us.3.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.3.i
  %i.od = load i32, ptr %gep1189.us.3.7.i, align 4, !tbaa !39
  %gep1189.us.4.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.4.i
  %i.oe = load i32, ptr %gep1189.us.4.7.i, align 4, !tbaa !39
  %gep1189.us.5.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.5.i
  %i.of = load i32, ptr %gep1189.us.5.7.i, align 4, !tbaa !39
  %gep1189.us.6.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.6.i
  %i.og = load i32, ptr %gep1189.us.6.7.i, align 4, !tbaa !39
  %gep1189.us.7.7.i = getelementptr i8, ptr %gep.us.7.i, i64 %.reass.us.7.i
  %i.oh = load i32, ptr %gep1189.us.7.7.i, align 4, !tbaa !39
  %i.oi = insertelement <16 x i32> poison, i32 %i.ns, i64 0
  %i.oj = insertelement <16 x i32> %i.oi, i32 %i.nt, i64 1
  %i.ok = insertelement <16 x i32> %i.oj, i32 %i.nu, i64 2
  %i.ol = insertelement <16 x i32> %i.ok, i32 %i.nv, i64 3
  %i.om = insertelement <16 x i32> %i.ol, i32 %i.nw, i64 4
  %i.on = insertelement <16 x i32> %i.om, i32 %i.nx, i64 5
  %i.oo = insertelement <16 x i32> %i.on, i32 %i.ny, i64 6
  %i.op = insertelement <16 x i32> %i.oo, i32 %i.nz, i64 7
  %i.oq = insertelement <16 x i32> %i.op, i32 %i.oa, i64 8
  %i.or = insertelement <16 x i32> %i.oq, i32 %i.ob, i64 9
  %i.os = insertelement <16 x i32> %i.or, i32 %i.oc, i64 10
  %i.ot = insertelement <16 x i32> %i.os, i32 %i.od, i64 11
  %i.ou = insertelement <16 x i32> %i.ot, i32 %i.oe, i64 12
  %i.ov = insertelement <16 x i32> %i.ou, i32 %i.of, i64 13
  %i.ow = insertelement <16 x i32> %i.ov, i32 %i.og, i64 14
  %i.ox = insertelement <16 x i32> %i.ow, i32 %i.oh, i64 15
  %i.oy = lshr <16 x i32> %i.ox, splat (i32 16)
  %i.oz = trunc nuw <16 x i32> %i.oy to <16 x i16>
  store <16 x i16> %i.oz, ptr %i.nr, align 2, !tbaa !89
  %i.pa = getelementptr inbounds nuw i8, ptr %.15241197.us.i, i64 128 ; 3 uses
  %indvars.iv.next1580.i = add nuw nsw i64 %indvars.iv1579.i, 1 ; 2 uses
  %exitcond1583.not.i = icmp eq i64 %indvars.iv.next1580.i, %wide.trip.count1582.i
  br i1 %exitcond1583.not.i, label %._crit_edge1199.us.i, label %.preheader1174.us.i, !llvm.loop !462

._crit_edge1199.us.i:                             ; preds = %.preheader1174.us.i
  %indvars.iv.next1585.i = add nuw nsw i64 %indvars.iv1584.i, 8 ; 3 uses
  %i.pb = icmp slt i64 %indvars.iv.next1585.i, %invariant.op.i
  br i1 %i.pb, label %.preheader1178.us.i, label %.preheader1181.loopexit.i, !llvm.loop !463

.preheader1181.loopexit.i:                        ; preds = %._crit_edge1199.us.i
  %i.pc = trunc nuw nsw i64 %indvars.iv.next1585.i to i32
  br label %.preheader1181.i

.preheader1181.i:                                 ; preds = %.preheader1181.loopexit.i, %.noexc791.i
  %.0523.lcssa.i = phi ptr [ %i.ix, %.noexc791.i ], [ %i.pa, %.preheader1181.loopexit.i ] ; 3 uses
  %.0519.lcssa.i = phi i32 [ 0, %.noexc791.i ], [ %i.pc, %.preheader1181.loopexit.i ] ; 4 uses
  %i.pd = or disjoint i32 %.0519.lcssa.i, 3
  %i.pe = icmp slt i32 %i.pd, %i.k
  br i1 %i.pe, label %.preheader1177.lr.ph.i, label %.preheader1180.i

.preheader1181.i.thread:                          ; preds = %.preheader1178.lr.ph.i
  br i1 %i.hy, label %.preheader1177.preheader.i, label %.preheader1180.i

.preheader1177.lr.ph.i:                           ; preds = %.preheader1181.i
  %i.pf = load i32, ptr %i.hq, align 4
  %i.pg = load ptr, ptr %3, align 8
  %i.ph = load i64, ptr %i.hs, align 8            ; 2 uses
  %i.pi = sext i32 %i.pf to i64
  %factor.op.mul1210.i = mul i64 %i.ph, %i.pi     ; 4 uses
  br i1 %i.hp, label %.preheader1177.us.preheader.i, label %.preheader1177.preheader.i

.preheader1177.preheader.i:                       ; preds = %.preheader1181.i.thread, %.preheader1177.lr.ph.i
  %.0523.lcssa.i612 = phi ptr [ %.0523.lcssa.i, %.preheader1177.lr.ph.i ], [ %i.ix, %.preheader1181.i.thread ]
  %.0519.lcssa.i711 = phi i32 [ %.0519.lcssa.i, %.preheader1177.lr.ph.i ], [ %i.ht, %.preheader1181.i.thread ] ; 2 uses
  %i.pj = add i32 %.0519.lcssa.i711, 4
  %i.pk = sub i32 %i.hv, %.0519.lcssa.i711
  %i.pl = and i32 %i.pk, -4
  %i.pm = add i32 %i.pj, %i.pl
  br label %.preheader1180.i

.preheader1177.us.preheader.i:                    ; preds = %.preheader1177.lr.ph.i
  %i.pn = load i64, ptr %i.hr, align 8
  %factor.op.mul1205.i = mul i64 %i.pn, %i.ph     ; 8 uses
  %i.po = zext i32 %.0519.lcssa.i to i64
  %.reass.us1223.i = mul i64 %factor.op.mul1205.i, %indvars.iv1634.i ; 4 uses
  %i.pp = or disjoint i64 %indvars.iv1634.i, 1
  %.reass.us1223.1.i = mul i64 %factor.op.mul1205.i, %i.pp ; 4 uses
  %i.pq = or disjoint i64 %indvars.iv1634.i, 2
  %.reass.us1223.2.i = mul i64 %factor.op.mul1205.i, %i.pq ; 4 uses
  %i.pr = or disjoint i64 %indvars.iv1634.i, 3
  %.reass.us1223.3.i = mul i64 %factor.op.mul1205.i, %i.pr ; 4 uses
  %i.ps = or disjoint i64 %indvars.iv1634.i, 4
  %.reass.us1223.4.i = mul i64 %factor.op.mul1205.i, %i.ps ; 4 uses
  %i.pt = or disjoint i64 %indvars.iv1634.i, 5
  %.reass.us1223.5.i = mul i64 %factor.op.mul1205.i, %i.pt ; 4 uses
  %i.pu = or disjoint i64 %indvars.iv1634.i, 6
  %.reass.us1223.6.i = mul i64 %factor.op.mul1205.i, %i.pu ; 4 uses
  %i.pv = or disjoint i64 %indvars.iv1634.i, 7
  %.reass.us1223.7.i = mul i64 %factor.op.mul1205.i, %i.pv ; 4 uses
  br label %.preheader1177.us.i

.preheader1177.us.i:                              ; preds = %._crit_edge1217.us.i, %.preheader1177.us.preheader.i
  %indvars.iv1603.i = phi i64 [ %i.po, %.preheader1177.us.preheader.i ], [ %indvars.iv.next1604.i, %._crit_edge1217.us.i ] ; 5 uses
  %.45271218.us.i = phi ptr [ %.0523.lcssa.i, %.preheader1177.us.preheader.i ], [ %i.sq, %._crit_edge1217.us.i ]
  %.reass1211.us.i = mul i64 %indvars.iv1603.i, %factor.op.mul1210.i
  %i.pw = add nuw nsw i64 %indvars.iv1603.i, 1
  %.reass1211.us.1.i = mul i64 %i.pw, %factor.op.mul1210.i
  %i.px = add nuw nsw i64 %indvars.iv1603.i, 2
  %.reass1211.us.2.i = mul i64 %i.px, %factor.op.mul1210.i
  %i.py = add nuw nsw i64 %indvars.iv1603.i, 3
  %.reass1211.us.3.i = mul i64 %i.py, %factor.op.mul1210.i
  br label %.preheader1173.us.i

.preheader1173.us.i:                              ; preds = %.preheader1173.us.i, %.preheader1177.us.i
  %indvars.iv1598.i = phi i64 [ 0, %.preheader1177.us.i ], [ %indvars.iv.next1599.i, %.preheader1173.us.i ] ; 2 uses
  %.55281215.us.i = phi ptr [ %.45271218.us.i, %.preheader1177.us.i ], [ %i.sq, %.preheader1173.us.i ] ; 3 uses
  %invariant.gep1212.us.i = getelementptr [4 x i8], ptr %i.pg, i64 %indvars.iv1598.i ; 4 uses
  %gep.us1222.i = getelementptr i8, ptr %invariant.gep1212.us.i, i64 %.reass1211.us.i ; 8 uses
  %gep1207.us.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.i
  %i.pz = load i32, ptr %gep1207.us.i, align 4, !tbaa !39
  %gep1207.us.1.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.1.i
  %i.qa = load i32, ptr %gep1207.us.1.i, align 4, !tbaa !39
  %gep1207.us.2.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.2.i
  %i.qb = load i32, ptr %gep1207.us.2.i, align 4, !tbaa !39
  %gep1207.us.3.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.3.i
  %i.qc = load i32, ptr %gep1207.us.3.i, align 4, !tbaa !39
  %gep1207.us.4.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.4.i
  %i.qd = load i32, ptr %gep1207.us.4.i, align 4, !tbaa !39
  %gep1207.us.5.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.5.i
  %i.qe = load i32, ptr %gep1207.us.5.i, align 4, !tbaa !39
  %gep1207.us.6.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.6.i
  %i.qf = load i32, ptr %gep1207.us.6.i, align 4, !tbaa !39
  %gep1207.us.7.i = getelementptr i8, ptr %gep.us1222.i, i64 %.reass.us1223.7.i
  %i.qg = load i32, ptr %gep1207.us.7.i, align 4, !tbaa !39
  %gep.us1222.1.i = getelementptr i8, ptr %invariant.gep1212.us.i, i64 %.reass1211.us.1.i ; 8 uses
  %gep1207.us.11595.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.i
  %i.qh = load i32, ptr %gep1207.us.11595.i, align 4, !tbaa !39
  %gep1207.us.1.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.1.i
  %i.qi = load i32, ptr %gep1207.us.1.1.i, align 4, !tbaa !39
  %gep1207.us.2.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.2.i
  %i.qj = load i32, ptr %gep1207.us.2.1.i, align 4, !tbaa !39
  %gep1207.us.3.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.3.i
  %i.qk = load i32, ptr %gep1207.us.3.1.i, align 4, !tbaa !39
  %gep1207.us.4.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.4.i
  %i.ql = load i32, ptr %gep1207.us.4.1.i, align 4, !tbaa !39
  %gep1207.us.5.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.5.i
  %i.qm = load i32, ptr %gep1207.us.5.1.i, align 4, !tbaa !39
  %gep1207.us.6.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.6.i
  %i.qn = load i32, ptr %gep1207.us.6.1.i, align 4, !tbaa !39
  %gep1207.us.7.1.i = getelementptr i8, ptr %gep.us1222.1.i, i64 %.reass.us1223.7.i
  %i.qo = load i32, ptr %gep1207.us.7.1.i, align 4, !tbaa !39
  %i.qp = insertelement <16 x i32> poison, i32 %i.pz, i64 0
  %i.qq = insertelement <16 x i32> %i.qp, i32 %i.qa, i64 1
  %i.qr = insertelement <16 x i32> %i.qq, i32 %i.qb, i64 2
  %i.qs = insertelement <16 x i32> %i.qr, i32 %i.qc, i64 3
  %i.qt = insertelement <16 x i32> %i.qs, i32 %i.qd, i64 4
  %i.qu = insertelement <16 x i32> %i.qt, i32 %i.qe, i64 5
  %i.qv = insertelement <16 x i32> %i.qu, i32 %i.qf, i64 6
  %i.qw = insertelement <16 x i32> %i.qv, i32 %i.qg, i64 7
  %i.qx = insertelement <16 x i32> %i.qw, i32 %i.qh, i64 8
  %i.qy = insertelement <16 x i32> %i.qx, i32 %i.qi, i64 9
  %i.qz = insertelement <16 x i32> %i.qy, i32 %i.qj, i64 10
  %i.ra = insertelement <16 x i32> %i.qz, i32 %i.qk, i64 11
  %i.rb = insertelement <16 x i32> %i.ra, i32 %i.ql, i64 12
  %i.rc = insertelement <16 x i32> %i.rb, i32 %i.qm, i64 13
  %i.rd = insertelement <16 x i32> %i.rc, i32 %i.qn, i64 14
  %i.re = insertelement <16 x i32> %i.rd, i32 %i.qo, i64 15
  %i.rf = lshr <16 x i32> %i.re, splat (i32 16)
  %i.rg = trunc nuw <16 x i32> %i.rf to <16 x i16>
  store <16 x i16> %i.rg, ptr %.55281215.us.i, align 2, !tbaa !89
  %i.rh = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 32
  %gep.us1222.2.i = getelementptr i8, ptr %invariant.gep1212.us.i, i64 %.reass1211.us.2.i ; 8 uses
  %gep1207.us.21596.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.i
  %i.ri = load i32, ptr %gep1207.us.21596.i, align 4, !tbaa !39
  %gep1207.us.1.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.1.i
  %i.rj = load i32, ptr %gep1207.us.1.2.i, align 4, !tbaa !39
  %gep1207.us.2.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.2.i
  %i.rk = load i32, ptr %gep1207.us.2.2.i, align 4, !tbaa !39
  %gep1207.us.3.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.3.i
  %i.rl = load i32, ptr %gep1207.us.3.2.i, align 4, !tbaa !39
  %gep1207.us.4.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.4.i
  %i.rm = load i32, ptr %gep1207.us.4.2.i, align 4, !tbaa !39
  %gep1207.us.5.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.5.i
  %i.rn = load i32, ptr %gep1207.us.5.2.i, align 4, !tbaa !39
  %gep1207.us.6.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.6.i
  %i.ro = load i32, ptr %gep1207.us.6.2.i, align 4, !tbaa !39
  %gep1207.us.7.2.i = getelementptr i8, ptr %gep.us1222.2.i, i64 %.reass.us1223.7.i
  %i.rp = load i32, ptr %gep1207.us.7.2.i, align 4, !tbaa !39
  %gep.us1222.3.i = getelementptr i8, ptr %invariant.gep1212.us.i, i64 %.reass1211.us.3.i ; 8 uses
  %gep1207.us.31597.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.i
  %i.rq = load i32, ptr %gep1207.us.31597.i, align 4, !tbaa !39
  %gep1207.us.1.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.1.i
  %i.rr = load i32, ptr %gep1207.us.1.3.i, align 4, !tbaa !39
  %gep1207.us.2.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.2.i
  %i.rs = load i32, ptr %gep1207.us.2.3.i, align 4, !tbaa !39
  %gep1207.us.3.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.3.i
  %i.rt = load i32, ptr %gep1207.us.3.3.i, align 4, !tbaa !39
  %gep1207.us.4.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.4.i
  %i.ru = load i32, ptr %gep1207.us.4.3.i, align 4, !tbaa !39
  %gep1207.us.5.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.5.i
  %i.rv = load i32, ptr %gep1207.us.5.3.i, align 4, !tbaa !39
  %gep1207.us.6.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.6.i
  %i.rw = load i32, ptr %gep1207.us.6.3.i, align 4, !tbaa !39
  %gep1207.us.7.3.i = getelementptr i8, ptr %gep.us1222.3.i, i64 %.reass.us1223.7.i
  %i.rx = load i32, ptr %gep1207.us.7.3.i, align 4, !tbaa !39
  %i.ry = insertelement <16 x i32> poison, i32 %i.ri, i64 0
  %i.rz = insertelement <16 x i32> %i.ry, i32 %i.rj, i64 1
  %i.sa = insertelement <16 x i32> %i.rz, i32 %i.rk, i64 2
  %i.sb = insertelement <16 x i32> %i.sa, i32 %i.rl, i64 3
  %i.sc = insertelement <16 x i32> %i.sb, i32 %i.rm, i64 4
  %i.sd = insertelement <16 x i32> %i.sc, i32 %i.rn, i64 5
  %i.se = insertelement <16 x i32> %i.sd, i32 %i.ro, i64 6
  %i.sf = insertelement <16 x i32> %i.se, i32 %i.rp, i64 7
  %i.sg = insertelement <16 x i32> %i.sf, i32 %i.rq, i64 8
  %i.sh = insertelement <16 x i32> %i.sg, i32 %i.rr, i64 9
  %i.si = insertelement <16 x i32> %i.sh, i32 %i.rs, i64 10
  %i.sj = insertelement <16 x i32> %i.si, i32 %i.rt, i64 11
  %i.sk = insertelement <16 x i32> %i.sj, i32 %i.ru, i64 12
  %i.sl = insertelement <16 x i32> %i.sk, i32 %i.rv, i64 13
  %i.sm = insertelement <16 x i32> %i.sl, i32 %i.rw, i64 14
  %i.sn = insertelement <16 x i32> %i.sm, i32 %i.rx, i64 15
  %i.so = lshr <16 x i32> %i.sn, splat (i32 16)
  %i.sp = trunc nuw <16 x i32> %i.so to <16 x i16>
  store <16 x i16> %i.sp, ptr %i.rh, align 2, !tbaa !89
  %i.sq = getelementptr inbounds nuw i8, ptr %.55281215.us.i, i64 64 ; 3 uses
  %indvars.iv.next1599.i = add nuw nsw i64 %indvars.iv1598.i, 1 ; 2 uses
  %exitcond1602.not.i = icmp eq i64 %indvars.iv.next1599.i, %wide.trip.count1582.i
  br i1 %exitcond1602.not.i, label %._crit_edge1217.us.i, label %.preheader1173.us.i, !llvm.loop !464

._crit_edge1217.us.i:                             ; preds = %.preheader1173.us.i
  %indvars.iv.next1604.i = add nuw nsw i64 %indvars.iv1603.i, 4 ; 2 uses
  %i.sr = trunc i64 %indvars.iv.next1604.i to i32 ; 2 uses
  %i.ss = or i32 %i.sr, 3
  %i.st = icmp slt i32 %i.ss, %i.k
  br i1 %i.st, label %.preheader1177.us.i, label %.preheader1180.i, !llvm.loop !465

.preheader1180.i:                                 ; preds = %._crit_edge1217.us.i, %.preheader1181.i.thread, %.preheader1177.preheader.i, %.preheader1181.i
  %.4527.lcssa.i = phi ptr [ %.0523.lcssa.i, %.preheader1181.i ], [ %i.ix, %.preheader1181.i.thread ], [ %.0523.lcssa.i612, %.preheader1177.preheader.i ], [ %i.sq, %._crit_edge1217.us.i ] ; 2 uses
  %.1520.lcssa.i = phi i32 [ %.0519.lcssa.i, %.preheader1181.i ], [ %i.ht, %.preheader1181.i.thread ], [ %i.pm, %.preheader1177.preheader.i ], [ %i.sr, %._crit_edge1217.us.i ] ; 3 uses
  %i.su = or disjoint i32 %.1520.lcssa.i, 1
  %i.sv = icmp slt i32 %i.su, %i.k
  br i1 %i.sv, label %.preheader1176.lr.ph.i, label %.preheader1179.i

.preheader1176.lr.ph.i:                           ; preds = %.preheader1180.i
  %i.sw = load i32, ptr %i.hq, align 4
  %i.sx = load ptr, ptr %3, align 8
  %i.sy = load i64, ptr %i.hs, align 8            ; 2 uses
  %i.sz = sext i32 %i.sw to i64
  %factor.op.mul1232.i = mul i64 %i.sy, %i.sz     ; 2 uses
  br i1 %i.hp, label %.preheader1176.us.preheader.i, label %._crit_edge1259.split.i

.preheader1176.us.preheader.i:                    ; preds = %.preheader1176.lr.ph.i
  %i.ta = load i64, ptr %i.hr, align 8
  %factor.op.mul1227.i = mul i64 %i.ta, %i.sy     ; 8 uses
  %i.tb = zext i32 %.1520.lcssa.i to i64
  %.reass.us1245.i = mul i64 %factor.op.mul1227.i, %indvars.iv1634.i ; 2 uses
  %i.tc = or disjoint i64 %indvars.iv1634.i, 1
  %.reass.us1245.1.i = mul i64 %factor.op.mul1227.i, %i.tc ; 2 uses
  %i.td = or disjoint i64 %indvars.iv1634.i, 2
  %.reass.us1245.2.i = mul i64 %factor.op.mul1227.i, %i.td ; 2 uses
  %i.te = or disjoint i64 %indvars.iv1634.i, 3
  %.reass.us1245.3.i = mul i64 %factor.op.mul1227.i, %i.te ; 2 uses
  %i.tf = or disjoint i64 %indvars.iv1634.i, 4
  %.reass.us1245.4.i = mul i64 %factor.op.mul1227.i, %i.tf ; 2 uses
  %i.tg = or disjoint i64 %indvars.iv1634.i, 5
  %.reass.us1245.5.i = mul i64 %factor.op.mul1227.i, %i.tg ; 2 uses
  %i.th = or disjoint i64 %indvars.iv1634.i, 6
  %.reass.us1245.6.i = mul i64 %factor.op.mul1227.i, %i.th ; 2 uses
  %i.ti = or disjoint i64 %indvars.iv1634.i, 7
  %.reass.us1245.7.i = mul i64 %factor.op.mul1227.i, %i.ti ; 2 uses
  br label %.preheader1176.us.i

.preheader1176.us.i:                              ; preds = %._crit_edge1239.us.i, %.preheader1176.us.preheader.i
  %indvars.iv1619.i = phi i64 [ %i.tb, %.preheader1176.us.preheader.i ], [ %indvars.iv.next1620.i, %._crit_edge1239.us.i ] ; 3 uses
  %.85311240.us.i = phi ptr [ %.4527.lcssa.i, %.preheader1176.us.preheader.i ], [ %i.us, %._crit_edge1239.us.i ]
end_hunk_7
begin_hunk_8_@_ZN4ncnn21Deconvolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.ys = trunc nuw i64 %indvars.iv1703.i to i32  ; 2 uses
  %i.yt = lshr i32 %i.ys, 3
  %i.yu = lshr i32 %i.ys, 2
  %i.yv = and i32 %i.yu, 1
  %i.yw = add nuw nsw i32 %i.yv, %i.yt
  %i.yx = zext nneg i32 %i.yw to i64
  %.reass1358.i = mul i64 %factor.op.mul1357.i, %i.yx
  %i.yy = getelementptr inbounds nuw i8, ptr %i.id, i64 %.reass1358.i ; 4 uses
  br i1 %i.ii, label %.preheader1163.lr.ph.i, label %.preheader1166.i

.preheader1163.lr.ph.i:                           ; preds = %.noexc781.i
  %i.yz = load i32, ptr %i.ik, align 4
  %i.za = load ptr, ptr %3, align 8
  %i.zb = load i64, ptr %i.im, align 8            ; 2 uses
  %i.zc = sext i32 %i.yz to i64
  %factor.op.mul1275.i = mul i64 %i.zb, %i.zc     ; 8 uses
  br i1 %i.ij, label %.preheader1163.us.preheader.i, label %.preheader1166.i.thread

.preheader1163.us.preheader.i:                    ; preds = %.preheader1163.lr.ph.i
  %i.zd = load i64, ptr %i.il, align 8
  %factor.op.mul1268.i = mul i64 %i.zd, %i.zb     ; 4 uses
  %.reass1269.us.i = mul i64 %factor.op.mul1268.i, %indvars.iv1703.i ; 8 uses
  %i.ze = or disjoint i64 %indvars.iv1703.i, 1
  %.reass1269.us.1.i = mul i64 %factor.op.mul1268.i, %i.ze ; 8 uses
  %i.zf = or disjoint i64 %indvars.iv1703.i, 2
  %.reass1269.us.2.i = mul i64 %factor.op.mul1268.i, %i.zf ; 8 uses
  %i.zg = or disjoint i64 %indvars.iv1703.i, 3
  %.reass1269.us.3.i = mul i64 %factor.op.mul1268.i, %i.zg ; 8 uses
  br label %.preheader1163.us.i

.preheader1163.us.i:                              ; preds = %._crit_edge1282.us.i, %.preheader1163.us.preheader.i
  %indvars.iv1653.i = phi i64 [ 0, %.preheader1163.us.preheader.i ], [ %indvars.iv.next1654.i, %._crit_edge1282.us.i ] ; 9 uses
  %.04931284.us.i = phi ptr [ %i.yy, %.preheader1163.us.preheader.i ], [ %i.acf, %._crit_edge1282.us.i ]
  %.reass1276.us.i = mul i64 %indvars.iv1653.i, %factor.op.mul1275.i
  %i.zh = or disjoint i64 %indvars.iv1653.i, 1
  %.reass1276.us.1.i = mul i64 %i.zh, %factor.op.mul1275.i
  %i.zi = or disjoint i64 %indvars.iv1653.i, 2
  %.reass1276.us.2.i = mul i64 %i.zi, %factor.op.mul1275.i
  %i.zj = or disjoint i64 %indvars.iv1653.i, 3
  %.reass1276.us.3.i = mul i64 %i.zj, %factor.op.mul1275.i
  %i.zk = or disjoint i64 %indvars.iv1653.i, 4
  %.reass1276.us.4.i = mul i64 %i.zk, %factor.op.mul1275.i
  %i.zl = or disjoint i64 %indvars.iv1653.i, 5
  %.reass1276.us.5.i = mul i64 %i.zl, %factor.op.mul1275.i
  %i.zm = or disjoint i64 %indvars.iv1653.i, 6
  %.reass1276.us.6.i = mul i64 %i.zm, %factor.op.mul1275.i
  %i.zn = or disjoint i64 %indvars.iv1653.i, 7
  %.reass1276.us.7.i = mul i64 %i.zn, %factor.op.mul1275.i
  br label %.preheader1159.us.i

.preheader1159.us.i:                              ; preds = %.preheader1159.us.i, %.preheader1163.us.i
  %indvars.iv1648.i = phi i64 [ 0, %.preheader1163.us.i ], [ %indvars.iv.next1649.i, %.preheader1159.us.i ] ; 2 uses
  %.14941280.us.i = phi ptr [ %.04931284.us.i, %.preheader1163.us.i ], [ %i.acf, %.preheader1159.us.i ] ; 3 uses
  %invariant.gep1277.us.i = getelementptr [4 x i8], ptr %i.za, i64 %indvars.iv1648.i ; 8 uses
  %gep.us1288.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.i ; 4 uses
  %gep1272.us.i = getelementptr i8, ptr %gep.us1288.i, i64 %.reass1269.us.i
  %i.zo = load i32, ptr %gep1272.us.i, align 4, !tbaa !39
  %gep1272.us.1.i = getelementptr i8, ptr %gep.us1288.i, i64 %.reass1269.us.1.i
  %i.zp = load i32, ptr %gep1272.us.1.i, align 4, !tbaa !39
  %gep1272.us.2.i = getelementptr i8, ptr %gep.us1288.i, i64 %.reass1269.us.2.i
  %i.zq = load i32, ptr %gep1272.us.2.i, align 4, !tbaa !39
  %gep1272.us.3.i = getelementptr i8, ptr %gep.us1288.i, i64 %.reass1269.us.3.i
  %i.zr = load i32, ptr %gep1272.us.3.i, align 4, !tbaa !39
  %gep.us1288.1.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.1.i ; 4 uses
  %gep1272.us.11645.i = getelementptr i8, ptr %gep.us1288.1.i, i64 %.reass1269.us.i
  %i.zs = load i32, ptr %gep1272.us.11645.i, align 4, !tbaa !39
  %gep1272.us.1.1.i = getelementptr i8, ptr %gep.us1288.1.i, i64 %.reass1269.us.1.i
  %i.zt = load i32, ptr %gep1272.us.1.1.i, align 4, !tbaa !39
  %gep1272.us.2.1.i = getelementptr i8, ptr %gep.us1288.1.i, i64 %.reass1269.us.2.i
  %i.zu = load i32, ptr %gep1272.us.2.1.i, align 4, !tbaa !39
  %gep1272.us.3.1.i = getelementptr i8, ptr %gep.us1288.1.i, i64 %.reass1269.us.3.i
  %i.zv = load i32, ptr %gep1272.us.3.1.i, align 4, !tbaa !39
  %gep.us1288.2.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.2.i ; 4 uses
  %gep1272.us.21646.i = getelementptr i8, ptr %gep.us1288.2.i, i64 %.reass1269.us.i
  %i.zw = load i32, ptr %gep1272.us.21646.i, align 4, !tbaa !39
  %gep1272.us.1.2.i = getelementptr i8, ptr %gep.us1288.2.i, i64 %.reass1269.us.1.i
  %i.zx = load i32, ptr %gep1272.us.1.2.i, align 4, !tbaa !39
  %gep1272.us.2.2.i = getelementptr i8, ptr %gep.us1288.2.i, i64 %.reass1269.us.2.i
  %i.zy = load i32, ptr %gep1272.us.2.2.i, align 4, !tbaa !39
  %gep1272.us.3.2.i = getelementptr i8, ptr %gep.us1288.2.i, i64 %.reass1269.us.3.i
  %i.zz = load i32, ptr %gep1272.us.3.2.i, align 4, !tbaa !39
  %gep.us1288.3.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.3.i ; 4 uses
  %gep1272.us.31647.i = getelementptr i8, ptr %gep.us1288.3.i, i64 %.reass1269.us.i
  %i.aaa = load i32, ptr %gep1272.us.31647.i, align 4, !tbaa !39
  %gep1272.us.1.3.i = getelementptr i8, ptr %gep.us1288.3.i, i64 %.reass1269.us.1.i
  %i.aab = load i32, ptr %gep1272.us.1.3.i, align 4, !tbaa !39
  %gep1272.us.2.3.i = getelementptr i8, ptr %gep.us1288.3.i, i64 %.reass1269.us.2.i
  %i.aac = load i32, ptr %gep1272.us.2.3.i, align 4, !tbaa !39
  %gep1272.us.3.3.i = getelementptr i8, ptr %gep.us1288.3.i, i64 %.reass1269.us.3.i
  %i.aad = load i32, ptr %gep1272.us.3.3.i, align 4, !tbaa !39
  %i.aae = insertelement <16 x i32> poison, i32 %i.zo, i64 0
  %i.aaf = insertelement <16 x i32> %i.aae, i32 %i.zp, i64 1
  %i.aag = insertelement <16 x i32> %i.aaf, i32 %i.zq, i64 2
  %i.aah = insertelement <16 x i32> %i.aag, i32 %i.zr, i64 3
  %i.aai = insertelement <16 x i32> %i.aah, i32 %i.zs, i64 4
  %i.aaj = insertelement <16 x i32> %i.aai, i32 %i.zt, i64 5
  %i.aak = insertelement <16 x i32> %i.aaj, i32 %i.zu, i64 6
  %i.aal = insertelement <16 x i32> %i.aak, i32 %i.zv, i64 7
  %i.aam = insertelement <16 x i32> %i.aal, i32 %i.zw, i64 8
  %i.aan = insertelement <16 x i32> %i.aam, i32 %i.zx, i64 9
  %i.aao = insertelement <16 x i32> %i.aan, i32 %i.zy, i64 10
  %i.aap = insertelement <16 x i32> %i.aao, i32 %i.zz, i64 11
  %i.aaq = insertelement <16 x i32> %i.aap, i32 %i.aaa, i64 12
  %i.aar = insertelement <16 x i32> %i.aaq, i32 %i.aab, i64 13
  %i.aas = insertelement <16 x i32> %i.aar, i32 %i.aac, i64 14
  %i.aat = insertelement <16 x i32> %i.aas, i32 %i.aad, i64 15
  %i.aau = lshr <16 x i32> %i.aat, splat (i32 16)
  %i.aav = trunc nuw <16 x i32> %i.aau to <16 x i16>
  store <16 x i16> %i.aav, ptr %.14941280.us.i, align 2, !tbaa !89
  %i.aaw = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 32
  %gep.us1288.4.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.4.i ; 4 uses
  %gep1272.us.4.i = getelementptr i8, ptr %gep.us1288.4.i, i64 %.reass1269.us.i
  %i.aax = load i32, ptr %gep1272.us.4.i, align 4, !tbaa !39
  %gep1272.us.1.4.i = getelementptr i8, ptr %gep.us1288.4.i, i64 %.reass1269.us.1.i
  %i.aay = load i32, ptr %gep1272.us.1.4.i, align 4, !tbaa !39
  %gep1272.us.2.4.i = getelementptr i8, ptr %gep.us1288.4.i, i64 %.reass1269.us.2.i
  %i.aaz = load i32, ptr %gep1272.us.2.4.i, align 4, !tbaa !39
  %gep1272.us.3.4.i = getelementptr i8, ptr %gep.us1288.4.i, i64 %.reass1269.us.3.i
  %i.aba = load i32, ptr %gep1272.us.3.4.i, align 4, !tbaa !39
  %gep.us1288.5.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.5.i ; 4 uses
  %gep1272.us.5.i = getelementptr i8, ptr %gep.us1288.5.i, i64 %.reass1269.us.i
  %i.abb = load i32, ptr %gep1272.us.5.i, align 4, !tbaa !39
  %gep1272.us.1.5.i = getelementptr i8, ptr %gep.us1288.5.i, i64 %.reass1269.us.1.i
  %i.abc = load i32, ptr %gep1272.us.1.5.i, align 4, !tbaa !39
  %gep1272.us.2.5.i = getelementptr i8, ptr %gep.us1288.5.i, i64 %.reass1269.us.2.i
  %i.abd = load i32, ptr %gep1272.us.2.5.i, align 4, !tbaa !39
  %gep1272.us.3.5.i = getelementptr i8, ptr %gep.us1288.5.i, i64 %.reass1269.us.3.i
  %i.abe = load i32, ptr %gep1272.us.3.5.i, align 4, !tbaa !39
  %gep.us1288.6.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.6.i ; 4 uses
  %gep1272.us.6.i = getelementptr i8, ptr %gep.us1288.6.i, i64 %.reass1269.us.i
  %i.abf = load i32, ptr %gep1272.us.6.i, align 4, !tbaa !39
  %gep1272.us.1.6.i = getelementptr i8, ptr %gep.us1288.6.i, i64 %.reass1269.us.1.i
  %i.abg = load i32, ptr %gep1272.us.1.6.i, align 4, !tbaa !39
  %gep1272.us.2.6.i = getelementptr i8, ptr %gep.us1288.6.i, i64 %.reass1269.us.2.i
  %i.abh = load i32, ptr %gep1272.us.2.6.i, align 4, !tbaa !39
  %gep1272.us.3.6.i = getelementptr i8, ptr %gep.us1288.6.i, i64 %.reass1269.us.3.i
  %i.abi = load i32, ptr %gep1272.us.3.6.i, align 4, !tbaa !39
  %gep.us1288.7.i = getelementptr i8, ptr %invariant.gep1277.us.i, i64 %.reass1276.us.7.i ; 4 uses
  %gep1272.us.7.i = getelementptr i8, ptr %gep.us1288.7.i, i64 %.reass1269.us.i
  %i.abj = load i32, ptr %gep1272.us.7.i, align 4, !tbaa !39
  %gep1272.us.1.7.i = getelementptr i8, ptr %gep.us1288.7.i, i64 %.reass1269.us.1.i
  %i.abk = load i32, ptr %gep1272.us.1.7.i, align 4, !tbaa !39
  %gep1272.us.2.7.i = getelementptr i8, ptr %gep.us1288.7.i, i64 %.reass1269.us.2.i
  %i.abl = load i32, ptr %gep1272.us.2.7.i, align 4, !tbaa !39
  %gep1272.us.3.7.i = getelementptr i8, ptr %gep.us1288.7.i, i64 %.reass1269.us.3.i
  %i.abm = load i32, ptr %gep1272.us.3.7.i, align 4, !tbaa !39
  %i.abn = insertelement <16 x i32> poison, i32 %i.aax, i64 0
  %i.abo = insertelement <16 x i32> %i.abn, i32 %i.aay, i64 1
  %i.abp = insertelement <16 x i32> %i.abo, i32 %i.aaz, i64 2
  %i.abq = insertelement <16 x i32> %i.abp, i32 %i.aba, i64 3
  %i.abr = insertelement <16 x i32> %i.abq, i32 %i.abb, i64 4
  %i.abs = insertelement <16 x i32> %i.abr, i32 %i.abc, i64 5
  %i.abt = insertelement <16 x i32> %i.abs, i32 %i.abd, i64 6
  %i.abu = insertelement <16 x i32> %i.abt, i32 %i.abe, i64 7
  %i.abv = insertelement <16 x i32> %i.abu, i32 %i.abf, i64 8
  %i.abw = insertelement <16 x i32> %i.abv, i32 %i.abg, i64 9
  %i.abx = insertelement <16 x i32> %i.abw, i32 %i.abh, i64 10
  %i.aby = insertelement <16 x i32> %i.abx, i32 %i.abi, i64 11
  %i.abz = insertelement <16 x i32> %i.aby, i32 %i.abj, i64 12
  %i.aca = insertelement <16 x i32> %i.abz, i32 %i.abk, i64 13
  %i.acb = insertelement <16 x i32> %i.aca, i32 %i.abl, i64 14
  %i.acc = insertelement <16 x i32> %i.acb, i32 %i.abm, i64 15
  %i.acd = lshr <16 x i32> %i.acc, splat (i32 16)
  %i.ace = trunc nuw <16 x i32> %i.acd to <16 x i16>
  store <16 x i16> %i.ace, ptr %i.aaw, align 2, !tbaa !89
  %i.acf = getelementptr inbounds nuw i8, ptr %.14941280.us.i, i64 64 ; 3 uses
  %indvars.iv.next1649.i = add nuw nsw i64 %indvars.iv1648.i, 1 ; 2 uses
  %exitcond1652.not.i = icmp eq i64 %indvars.iv.next1649.i, %wide.trip.count1651.i
  br i1 %exitcond1652.not.i, label %._crit_edge1282.us.i, label %.preheader1159.us.i, !llvm.loop !474

._crit_edge1282.us.i:                             ; preds = %.preheader1159.us.i
  %indvars.iv.next1654.i = add nuw nsw i64 %indvars.iv1653.i, 8 ; 3 uses
  %i.acg = icmp slt i64 %indvars.iv.next1654.i, %invariant.op1861.i
  br i1 %i.acg, label %.preheader1163.us.i, label %.preheader1166.loopexit.i, !llvm.loop !475

.preheader1166.loopexit.i:                        ; preds = %._crit_edge1282.us.i
  %i.ach = trunc nuw nsw i64 %indvars.iv.next1654.i to i32
  br label %.preheader1166.i

.preheader1166.i:                                 ; preds = %.preheader1166.loopexit.i, %.noexc781.i
  %.0493.lcssa.i = phi ptr [ %i.yy, %.noexc781.i ], [ %i.acf, %.preheader1166.loopexit.i ] ; 3 uses
  %.0489.lcssa.i = phi i32 [ 0, %.noexc781.i ], [ %i.ach, %.preheader1166.loopexit.i ] ; 4 uses
  %i.aci = or disjoint i32 %.0489.lcssa.i, 3
  %i.acj = icmp slt i32 %i.aci, %i.k
  br i1 %i.acj, label %.preheader1162.lr.ph.i, label %.preheader1165.i

.preheader1166.i.thread:                          ; preds = %.preheader1163.lr.ph.i
  br i1 %i.it, label %.preheader1162.preheader.i, label %.preheader1165.i

.preheader1162.lr.ph.i:                           ; preds = %.preheader1166.i
  %i.ack = load i32, ptr %i.ik, align 4
  %i.acl = load ptr, ptr %3, align 8
  %i.acm = load i64, ptr %i.im, align 8           ; 2 uses
  %i.acn = sext i32 %i.ack to i64
  %factor.op.mul1298.i = mul i64 %i.acm, %i.acn   ; 4 uses
  br i1 %i.ij, label %.preheader1162.us.preheader.i, label %.preheader1162.preheader.i

.preheader1162.preheader.i:                       ; preds = %.preheader1166.i.thread, %.preheader1162.lr.ph.i
  %.0493.lcssa.i2228 = phi ptr [ %.0493.lcssa.i, %.preheader1162.lr.ph.i ], [ %i.yy, %.preheader1166.i.thread ]
  %.0489.lcssa.i2327 = phi i32 [ %.0489.lcssa.i, %.preheader1162.lr.ph.i ], [ %i.in, %.preheader1166.i.thread ] ; 2 uses
  %i.aco = add i32 %.0489.lcssa.i2327, 4
  %i.acp = sub i32 %i.ip, %.0489.lcssa.i2327
  %i.acq = and i32 %i.acp, -4
  %i.acr = add i32 %i.aco, %i.acq
  br label %.preheader1165.i

.preheader1162.us.preheader.i:                    ; preds = %.preheader1162.lr.ph.i
  %i.acs = load i64, ptr %i.il, align 8
  %factor.op.mul1291.i = mul i64 %i.acs, %i.acm   ; 4 uses
  %i.act = zext i32 %.0489.lcssa.i to i64
  %.reass1292.us.i = mul i64 %factor.op.mul1291.i, %indvars.iv1703.i ; 4 uses
  %i.acu = or disjoint i64 %indvars.iv1703.i, 1
  %.reass1292.us.1.i = mul i64 %factor.op.mul1291.i, %i.acu ; 4 uses
  %i.acv = or disjoint i64 %indvars.iv1703.i, 2
  %.reass1292.us.2.i = mul i64 %factor.op.mul1291.i, %i.acv ; 4 uses
  %i.acw = or disjoint i64 %indvars.iv1703.i, 3
  %.reass1292.us.3.i = mul i64 %factor.op.mul1291.i, %i.acw ; 4 uses
  br label %.preheader1162.us.i

.preheader1162.us.i:                              ; preds = %._crit_edge1305.us.i, %.preheader1162.us.preheader.i
  %indvars.iv1672.i = phi i64 [ %i.act, %.preheader1162.us.preheader.i ], [ %indvars.iv.next1673.i, %._crit_edge1305.us.i ] ; 5 uses
  %.44971307.us.i = phi ptr [ %.0493.lcssa.i, %.preheader1162.us.preheader.i ], [ %i.aei, %._crit_edge1305.us.i ]
  %.reass1299.us.i = mul i64 %indvars.iv1672.i, %factor.op.mul1298.i
  %i.acx = add nuw nsw i64 %indvars.iv1672.i, 1
  %.reass1299.us.1.i = mul i64 %i.acx, %factor.op.mul1298.i
  %i.acy = add nuw nsw i64 %indvars.iv1672.i, 2
  %.reass1299.us.2.i = mul i64 %i.acy, %factor.op.mul1298.i
  %i.acz = add nuw nsw i64 %indvars.iv1672.i, 3
  %.reass1299.us.3.i = mul i64 %i.acz, %factor.op.mul1298.i
  br label %.preheader1158.us.i

.preheader1158.us.i:                              ; preds = %.preheader1158.us.i, %.preheader1162.us.i
  %indvars.iv1667.i = phi i64 [ 0, %.preheader1162.us.i ], [ %indvars.iv.next1668.i, %.preheader1158.us.i ] ; 2 uses
  %.54981303.us.i = phi ptr [ %.44971307.us.i, %.preheader1162.us.i ], [ %i.aei, %.preheader1158.us.i ] ; 2 uses
  %invariant.gep1300.us.i = getelementptr [4 x i8], ptr %i.acl, i64 %indvars.iv1667.i ; 4 uses
  %gep.us1311.i = getelementptr i8, ptr %invariant.gep1300.us.i, i64 %.reass1299.us.i ; 4 uses
  %gep1295.us.i = getelementptr i8, ptr %gep.us1311.i, i64 %.reass1292.us.i
  %i.ada = load i32, ptr %gep1295.us.i, align 4, !tbaa !39
  %gep1295.us.1.i = getelementptr i8, ptr %gep.us1311.i, i64 %.reass1292.us.1.i
  %i.adb = load i32, ptr %gep1295.us.1.i, align 4, !tbaa !39
  %gep1295.us.2.i = getelementptr i8, ptr %gep.us1311.i, i64 %.reass1292.us.2.i
  %i.adc = load i32, ptr %gep1295.us.2.i, align 4, !tbaa !39
  %gep1295.us.3.i = getelementptr i8, ptr %gep.us1311.i, i64 %.reass1292.us.3.i
  %i.add = load i32, ptr %gep1295.us.3.i, align 4, !tbaa !39
  %gep.us1311.1.i = getelementptr i8, ptr %invariant.gep1300.us.i, i64 %.reass1299.us.1.i ; 4 uses
  %gep1295.us.11664.i = getelementptr i8, ptr %gep.us1311.1.i, i64 %.reass1292.us.i
  %i.ade = load i32, ptr %gep1295.us.11664.i, align 4, !tbaa !39
  %gep1295.us.1.1.i = getelementptr i8, ptr %gep.us1311.1.i, i64 %.reass1292.us.1.i
  %i.adf = load i32, ptr %gep1295.us.1.1.i, align 4, !tbaa !39
  %gep1295.us.2.1.i = getelementptr i8, ptr %gep.us1311.1.i, i64 %.reass1292.us.2.i
  %i.adg = load i32, ptr %gep1295.us.2.1.i, align 4, !tbaa !39
  %gep1295.us.3.1.i = getelementptr i8, ptr %gep.us1311.1.i, i64 %.reass1292.us.3.i
  %i.adh = load i32, ptr %gep1295.us.3.1.i, align 4, !tbaa !39
  %gep.us1311.2.i = getelementptr i8, ptr %invariant.gep1300.us.i, i64 %.reass1299.us.2.i ; 4 uses
  %gep1295.us.21665.i = getelementptr i8, ptr %gep.us1311.2.i, i64 %.reass1292.us.i
  %i.adi = load i32, ptr %gep1295.us.21665.i, align 4, !tbaa !39
  %gep1295.us.1.2.i = getelementptr i8, ptr %gep.us1311.2.i, i64 %.reass1292.us.1.i
  %i.adj = load i32, ptr %gep1295.us.1.2.i, align 4, !tbaa !39
  %gep1295.us.2.2.i = getelementptr i8, ptr %gep.us1311.2.i, i64 %.reass1292.us.2.i
  %i.adk = load i32, ptr %gep1295.us.2.2.i, align 4, !tbaa !39
  %gep1295.us.3.2.i = getelementptr i8, ptr %gep.us1311.2.i, i64 %.reass1292.us.3.i
  %i.adl = load i32, ptr %gep1295.us.3.2.i, align 4, !tbaa !39
  %gep.us1311.3.i = getelementptr i8, ptr %invariant.gep1300.us.i, i64 %.reass1299.us.3.i ; 4 uses
  %gep1295.us.31666.i = getelementptr i8, ptr %gep.us1311.3.i, i64 %.reass1292.us.i
  %i.adm = load i32, ptr %gep1295.us.31666.i, align 4, !tbaa !39
  %gep1295.us.1.3.i = getelementptr i8, ptr %gep.us1311.3.i, i64 %.reass1292.us.1.i
  %i.adn = load i32, ptr %gep1295.us.1.3.i, align 4, !tbaa !39
  %gep1295.us.2.3.i = getelementptr i8, ptr %gep.us1311.3.i, i64 %.reass1292.us.2.i
  %i.ado = load i32, ptr %gep1295.us.2.3.i, align 4, !tbaa !39
  %gep1295.us.3.3.i = getelementptr i8, ptr %gep.us1311.3.i, i64 %.reass1292.us.3.i
  %i.adp = load i32, ptr %gep1295.us.3.3.i, align 4, !tbaa !39
  %i.adq = insertelement <16 x i32> poison, i32 %i.ada, i64 0
  %i.adr = insertelement <16 x i32> %i.adq, i32 %i.adb, i64 1
  %i.ads = insertelement <16 x i32> %i.adr, i32 %i.adc, i64 2
  %i.adt = insertelement <16 x i32> %i.ads, i32 %i.add, i64 3
  %i.adu = insertelement <16 x i32> %i.adt, i32 %i.ade, i64 4
  %i.adv = insertelement <16 x i32> %i.adu, i32 %i.adf, i64 5
  %i.adw = insertelement <16 x i32> %i.adv, i32 %i.adg, i64 6
  %i.adx = insertelement <16 x i32> %i.adw, i32 %i.adh, i64 7
  %i.ady = insertelement <16 x i32> %i.adx, i32 %i.adi, i64 8
  %i.adz = insertelement <16 x i32> %i.ady, i32 %i.adj, i64 9
  %i.aea = insertelement <16 x i32> %i.adz, i32 %i.adk, i64 10
  %i.aeb = insertelement <16 x i32> %i.aea, i32 %i.adl, i64 11
  %i.aec = insertelement <16 x i32> %i.aeb, i32 %i.adm, i64 12
  %i.aed = insertelement <16 x i32> %i.aec, i32 %i.adn, i64 13
  %i.aee = insertelement <16 x i32> %i.aed, i32 %i.ado, i64 14
  %i.aef = insertelement <16 x i32> %i.aee, i32 %i.adp, i64 15
  %i.aeg = lshr <16 x i32> %i.aef, splat (i32 16)
  %i.aeh = trunc nuw <16 x i32> %i.aeg to <16 x i16>
  store <16 x i16> %i.aeh, ptr %.54981303.us.i, align 2, !tbaa !89
  %i.aei = getelementptr inbounds nuw i8, ptr %.54981303.us.i, i64 32 ; 3 uses
  %indvars.iv.next1668.i = add nuw nsw i64 %indvars.iv1667.i, 1 ; 2 uses
  %exitcond1671.not.i = icmp eq i64 %indvars.iv.next1668.i, %wide.trip.count1651.i
  br i1 %exitcond1671.not.i, label %._crit_edge1305.us.i, label %.preheader1158.us.i, !llvm.loop !476

._crit_edge1305.us.i:                             ; preds = %.preheader1158.us.i
  %indvars.iv.next1673.i = add nuw nsw i64 %indvars.iv1672.i, 4 ; 2 uses
  %i.aej = trunc i64 %indvars.iv.next1673.i to i32 ; 2 uses
  %i.aek = or i32 %i.aej, 3
  %i.ael = icmp slt i32 %i.aek, %i.k
  br i1 %i.ael, label %.preheader1162.us.i, label %.preheader1165.i, !llvm.loop !477

.preheader1165.i:                                 ; preds = %._crit_edge1305.us.i, %.preheader1166.i.thread, %.preheader1162.preheader.i, %.preheader1166.i
  %.4497.lcssa.i = phi ptr [ %.0493.lcssa.i, %.preheader1166.i ], [ %i.yy, %.preheader1166.i.thread ], [ %.0493.lcssa.i2228, %.preheader1162.preheader.i ], [ %i.aei, %._crit_edge1305.us.i ] ; 2 uses
  %.1490.lcssa.i = phi i32 [ %.0489.lcssa.i, %.preheader1166.i ], [ %i.in, %.preheader1166.i.thread ], [ %i.acr, %.preheader1162.preheader.i ], [ %i.aej, %._crit_edge1305.us.i ] ; 3 uses
  %i.aem = or disjoint i32 %.1490.lcssa.i, 1
  %i.aen = icmp slt i32 %i.aem, %i.k
  br i1 %i.aen, label %.preheader1161.lr.ph.i, label %.preheader1164.i

.preheader1161.lr.ph.i:                           ; preds = %.preheader1165.i
  %i.aeo = load i32, ptr %i.ik, align 4
  %i.aep = load ptr, ptr %3, align 8              ; 2 uses
  %i.aeq = load i64, ptr %i.im, align 8           ; 2 uses
  %i.aer = sext i32 %i.aeo to i64
  %factor.op.mul1321.i = mul i64 %i.aeq, %i.aer   ; 2 uses
  br i1 %i.ij, label %.preheader1161.us.preheader.i, label %._crit_edge1350.split.i

.preheader1161.us.preheader.i:                    ; preds = %.preheader1161.lr.ph.i
  %i.aes = load i64, ptr %i.il, align 8
  %factor.op.mul1314.i = mul i64 %i.aes, %i.aeq   ; 4 uses
  %i.aet = zext i32 %.1490.lcssa.i to i64
  %.reass1315.us.i = mul i64 %factor.op.mul1314.i, %indvars.iv1703.i ; 4 uses
  %i.aeu = or disjoint i64 %indvars.iv1703.i, 1
  %.reass1315.us.1.i = mul i64 %factor.op.mul1314.i, %i.aeu ; 4 uses
  %i.aev = or disjoint i64 %indvars.iv1703.i, 2
  %.reass1315.us.2.i = mul i64 %factor.op.mul1314.i, %i.aev ; 4 uses
  %i.aew = or disjoint i64 %indvars.iv1703.i, 3
  %.reass1315.us.3.i = mul i64 %factor.op.mul1314.i, %i.aew ; 4 uses
  br label %.preheader1161.us.i

.preheader1161.us.i:                              ; preds = %._crit_edge1328.us.i, %.preheader1161.us.preheader.i
  %indvars.iv1688.i = phi i64 [ %i.aet, %.preheader1161.us.preheader.i ], [ %indvars.iv.next1689.i, %._crit_edge1328.us.i ] ; 3 uses
  %.85011330.us.i = phi ptr [ %.4497.lcssa.i, %.preheader1161.us.preheader.i ], [ %.lcssa162, %._crit_edge1328.us.i ] ; 3 uses
  %.reass1322.us.i = mul i64 %indvars.iv1688.i, %factor.op.mul1321.i ; 2 uses
  %i.aex = add nuw nsw i64 %indvars.iv1688.i, 1
  %.reass1322.us.1.i = mul i64 %i.aex, %factor.op.mul1321.i ; 2 uses
  br i1 %min.iters.check223, label %.preheader1157.us.i.preheader, label %vector.ph224

vector.ph224:                                     ; preds = %.preheader1161.us.i
  %i.aey = getelementptr i8, ptr %.85011330.us.i, i64 %i.iu ; 2 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph224
  %index227 = phi i64 [ 0, %vector.ph224 ], [ %index.next238, %vector.body226 ] ; 3 uses
  %i.aez = shl i64 %index227, 4
  %next.gep228 = getelementptr i8, ptr %.85011330.us.i, i64 %i.aez
  %i.afa = getelementptr [4 x i8], ptr %i.aep, i64 %index227 ; 2 uses
  %i.afb = getelementptr i8, ptr %i.afa, i64 %.reass1322.us.i ; 4 uses
  %i.afc = getelementptr i8, ptr %i.afb, i64 %.reass1315.us.i
  %wide.load229 = load <4 x i32>, ptr %i.afc, align 4, !tbaa !39
  %i.afd = lshr <4 x i32> %wide.load229, splat (i32 16)
  %i.afe = getelementptr i8, ptr %i.afb, i64 %.reass1315.us.1.i
  %wide.load230 = load <4 x i32>, ptr %i.afe, align 4, !tbaa !39
  %i.aff = lshr <4 x i32> %wide.load230, splat (i32 16)
  %i.afg = getelementptr i8, ptr %i.afb, i64 %.reass1315.us.2.i
  %wide.load231 = load <4 x i32>, ptr %i.afg, align 4, !tbaa !39
  %i.afh = lshr <4 x i32> %wide.load231, splat (i32 16)
  %i.afi = getelementptr i8, ptr %i.afb, i64 %.reass1315.us.3.i
  %wide.load232 = load <4 x i32>, ptr %i.afi, align 4, !tbaa !39
  %i.afj = lshr <4 x i32> %wide.load232, splat (i32 16)
  %i.afk = getelementptr i8, ptr %i.afa, i64 %.reass1322.us.1.i ; 4 uses
  %i.afl = getelementptr i8, ptr %i.afk, i64 %.reass1315.us.i
  %wide.load233 = load <4 x i32>, ptr %i.afl, align 4, !tbaa !39
  %i.afm = lshr <4 x i32> %wide.load233, splat (i32 16)
  %i.afn = getelementptr i8, ptr %i.afk, i64 %.reass1315.us.1.i
  %wide.load234 = load <4 x i32>, ptr %i.afn, align 4, !tbaa !39
  %i.afo = lshr <4 x i32> %wide.load234, splat (i32 16)
  %i.afp = getelementptr i8, ptr %i.afk, i64 %.reass1315.us.2.i
  %wide.load235 = load <4 x i32>, ptr %i.afp, align 4, !tbaa !39
  %i.afq = lshr <4 x i32> %wide.load235, splat (i32 16)
  %i.afr = getelementptr i8, ptr %i.afk, i64 %.reass1315.us.3.i
  %wide.load236 = load <4 x i32>, ptr %i.afr, align 4, !tbaa !39
  %i.afs = lshr <4 x i32> %wide.load236, splat (i32 16)
  %i.aft = shufflevector <4 x i32> %i.afd, <4 x i32> %i.aff, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afu = shufflevector <4 x i32> %i.afh, <4 x i32> %i.afj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afv = shufflevector <4 x i32> %i.afm, <4 x i32> %i.afo, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afw = shufflevector <4 x i32> %i.afq, <4 x i32> %i.afs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.afx = shufflevector <8 x i32> %i.aft, <8 x i32> %i.afu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.afy = trunc nuw <16 x i32> %i.afx to <16 x i16>
  %i.afz = shufflevector <8 x i32> %i.afv, <8 x i32> %i.afw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aga = trunc nuw <16 x i32> %i.afz to <16 x i16>
  %interleaved.vec237 = shufflevector <16 x i16> %i.afy, <16 x i16> %i.aga, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec237, ptr %next.gep228, align 2, !tbaa !89
  %index.next238 = add nuw i64 %index227, 4       ; 2 uses
  %i.agb = icmp eq i64 %index.next238, %n.vec225
  br i1 %i.agb, label %middle.block239, label %vector.body226, !llvm.loop !478

middle.block239:                                  ; preds = %vector.body226
  br i1 %cmp.n240, label %._crit_edge1328.us.i, label %.preheader1157.us.i.preheader

.preheader1157.us.i.preheader:                    ; preds = %.preheader1161.us.i, %middle.block239
  %indvars.iv1683.i.ph = phi i64 [ 0, %.preheader1161.us.i ], [ %n.vec225, %middle.block239 ]
  %.95021326.us.i.ph = phi ptr [ %.85011330.us.i, %.preheader1161.us.i ], [ %i.aey, %middle.block239 ]
  br label %.preheader1157.us.i

.preheader1157.us.i:                              ; preds = %.preheader1157.us.i.preheader, %.preheader1157.us.i
  %indvars.iv1683.i = phi i64 [ %indvars.iv.next1684.i, %.preheader1157.us.i ], [ %indvars.iv1683.i.ph, %.preheader1157.us.i.preheader ] ; 2 uses
  %.95021326.us.i = phi ptr [ %i.ahh, %.preheader1157.us.i ], [ %.95021326.us.i.ph, %.preheader1157.us.i.preheader ] ; 9 uses
  %invariant.gep1323.us.i = getelementptr [4 x i8], ptr %i.aep, i64 %indvars.iv1683.i ; 2 uses
  %gep.us1334.i = getelementptr i8, ptr %invariant.gep1323.us.i, i64 %.reass1322.us.i ; 4 uses
  %gep1318.us.i = getelementptr i8, ptr %gep.us1334.i, i64 %.reass1315.us.i
end_hunk_8
begin_hunk_9_@_ZN4ncnn21Deconvolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.aja = trunc nuw i64 %indvars.iv.next1701.i to i32
  %i.ajb = icmp sgt i32 %i.k, %i.aja
  br i1 %i.ajb, label %.preheader1160.i, label %._crit_edge1350.split.i, !llvm.loop !483

._crit_edge1350.split.i:                          ; preds = %._crit_edge1346.i, %.preheader1161.lr.ph.i, %.preheader1160.lr.ph.i, %.preheader1164.i
  %indvars.iv.next1704.i = add nuw nsw i64 %indvars.iv1703.i, 4 ; 3 uses
  %i.ajc = icmp slt i64 %indvars.iv.next1704.i, %invariant.op1862.i
  br i1 %i.ajc, label %.noexc781.i, label %.preheader1152.loopexit.i, !llvm.loop !484

.preheader1137.i:                                 ; preds = %._crit_edge1438.split.i, %.preheader1152.i
  %.2540.lcssa.i = phi i32 [ %.1539.lcssa.i, %.preheader1152.i ], [ %i.asf, %._crit_edge1438.split.i ] ; 2 uses
  %i.ajd = icmp slt i32 %.2540.lcssa.i, %i.j
  br i1 %i.ajd, label %.noexc761.lr.ph.i, label %._crit_edge1505.i

.noexc761.lr.ph.i:                                ; preds = %.preheader1137.i
  %i.aje = load ptr, ptr %i.m, align 8, !tbaa !20, !noalias !518
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ajg = load i64, ptr %i.ajf, align 8, !tbaa !21, !noalias !518
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.aji = load i64, ptr %i.ajh, align 8, !tbaa !55, !noalias !518
  %factor.op.mul1506.i = mul i64 %i.aji, %i.ajg
  %i.ajj = icmp sgt i32 %i.k, 7
  %i.ajk = icmp sgt i32 %i.e, 0                   ; 4 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ajo = and i32 %i.k, -8
  %i.ajp = sext i32 %i.k to i64
  %i.ajq = add i32 %i.k, -4
  %i.ajr = add i32 %i.k, -2
  %i.ajs = zext i32 %.2540.lcssa.i to i64
  %wide.trip.count1774.i = zext i32 %i.e to i64   ; 15 uses
  %invariant.op1864.i = add nsw i64 %i.ajp, -7
  %min.iters.check362 = icmp ult i32 %i.e, 4
  %n.vec364 = and i64 %wide.trip.count1774.i, 2147483644 ; 4 uses
  %i.ajt = shl nuw nsw i64 %n.vec364, 4
  %cmp.n379 = icmp eq i64 %n.vec364, %wide.trip.count1774.i
  %min.iters.check345 = icmp ult i32 %i.e, 4
  %n.vec347 = and i64 %wide.trip.count1774.i, 2147483644 ; 4 uses
  %i.aju = shl nuw nsw i64 %n.vec347, 3
  %cmp.n358 = icmp eq i64 %n.vec347, %wide.trip.count1774.i
  %min.iters.check330 = icmp ult i32 %i.e, 4
  %n.vec332 = and i64 %wide.trip.count1774.i, 2147483644 ; 4 uses
  %i.ajv = shl nuw nsw i64 %n.vec332, 2
  %cmp.n341 = icmp eq i64 %n.vec332, %wide.trip.count1774.i
  %min.iters.check297 = icmp ult i32 %i.e, 4
  %min.iters.check299 = icmp ult i32 %i.e, 32
  %i.ajw = and i64 %wide.trip.count1774.i, 28
  %n.vec301 = and i64 %wide.trip.count1774.i, 2147483616 ; 5 uses
  %i.ajx = shl nuw nsw i64 %n.vec301, 1
  %cmp.n311 = icmp eq i64 %n.vec301, %wide.trip.count1774.i
  %min.epilog.iters.check317 = icmp eq i64 %i.ajw, 0
  %n.vec319 = and i64 %wide.trip.count1774.i, 2147483644 ; 4 uses
  %i.ajy = shl nuw nsw i64 %n.vec319, 1
  %cmp.n326 = icmp eq i64 %n.vec319, %wide.trip.count1774.i
  br label %.noexc761.i

.noexc771.i:                                      ; preds = %._crit_edge1438.split.i, %.noexc771.lr.ph.i
  %indvars.iv1764.i = phi i64 [ %i.ym, %.noexc771.lr.ph.i ], [ %indvars.iv.next1765.i, %._crit_edge1438.split.i ] ; 10 uses
  %i.ajz = trunc i64 %indvars.iv1764.i to i32     ; 3 uses
  %i.aka = lshr i32 %i.ajz, 3
  %i.akb = lshr i32 %i.ajz, 2
  %i.akc = and i32 %i.akb, 1
  %i.akd = add nuw nsw i32 %i.akc, %i.aka
  %i.ake = lshr i32 %i.ajz, 1
  %i.akf = and i32 %i.ake, 1
  %i.akg = add nuw nsw i32 %i.akd, %i.akf
  %i.akh = zext nneg i32 %i.akg to i64
  %.reass1446.i = mul i64 %factor.op.mul1445.i, %i.akh
  %i.aki = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.reass1446.i ; 4 uses
  br i1 %i.ye, label %.preheader1148.lr.ph.i, label %.preheader1151.i

.preheader1148.lr.ph.i:                           ; preds = %.noexc771.i
  %i.akj = load i32, ptr %i.yg, align 4
  %i.akk = load ptr, ptr %3, align 8
  %i.akl = load i64, ptr %i.yi, align 8           ; 2 uses
  %i.akm = sext i32 %i.akj to i64
  %factor.op.mul1359.i = mul i64 %i.akl, %i.akm   ; 8 uses
  br i1 %i.yf, label %.preheader1148.us.preheader.i, label %.preheader1151.i.thread

.preheader1148.us.preheader.i:                    ; preds = %.preheader1148.lr.ph.i
  %i.akn = load i64, ptr %i.yh, align 8
  %factor.op.mul1364.i = mul i64 %i.akn, %i.akl   ; 2 uses
  %.reass1365.us.i = mul i64 %factor.op.mul1364.i, %indvars.iv1764.i
  %i.ako = add nuw nsw i64 %indvars.iv1764.i, 1
  %.reass1365.us.1.i = mul i64 %factor.op.mul1364.i, %i.ako
  br label %.preheader1148.us.i

.preheader1148.us.i:                              ; preds = %._crit_edge1372.us.i, %.preheader1148.us.preheader.i
  %indvars.iv1719.i = phi i64 [ 0, %.preheader1148.us.preheader.i ], [ %indvars.iv.next1720.i, %._crit_edge1372.us.i ] ; 9 uses
  %.04671374.us.i = phi ptr [ %i.aki, %.preheader1148.us.preheader.i ], [ %i.ame, %._crit_edge1372.us.i ]
  %.reass1360.us.i = mul i64 %indvars.iv1719.i, %factor.op.mul1359.i ; 2 uses
  %i.akp = or disjoint i64 %indvars.iv1719.i, 1
  %.reass1360.us.1.i = mul i64 %i.akp, %factor.op.mul1359.i ; 2 uses
  %i.akq = or disjoint i64 %indvars.iv1719.i, 2
  %.reass1360.us.2.i = mul i64 %i.akq, %factor.op.mul1359.i ; 2 uses
  %i.akr = or disjoint i64 %indvars.iv1719.i, 3
  %.reass1360.us.3.i = mul i64 %i.akr, %factor.op.mul1359.i ; 2 uses
  %i.aks = or disjoint i64 %indvars.iv1719.i, 4
  %.reass1360.us.4.i = mul i64 %i.aks, %factor.op.mul1359.i ; 2 uses
  %i.akt = or disjoint i64 %indvars.iv1719.i, 5
  %.reass1360.us.5.i = mul i64 %i.akt, %factor.op.mul1359.i ; 2 uses
  %i.aku = or disjoint i64 %indvars.iv1719.i, 6
  %.reass1360.us.6.i = mul i64 %i.aku, %factor.op.mul1359.i ; 2 uses
  %i.akv = or disjoint i64 %indvars.iv1719.i, 7
  %.reass1360.us.7.i = mul i64 %i.akv, %factor.op.mul1359.i ; 2 uses
  br label %.preheader1144.us.i

.preheader1144.us.i:                              ; preds = %.preheader1144.us.i, %.preheader1148.us.i
  %indvars.iv1714.i = phi i64 [ 0, %.preheader1148.us.i ], [ %indvars.iv.next1715.i, %.preheader1144.us.i ] ; 2 uses
  %.14681370.us.i = phi ptr [ %.04671374.us.i, %.preheader1148.us.i ], [ %i.ame, %.preheader1144.us.i ] ; 2 uses
  %invariant.gep1366.us.i = getelementptr [4 x i8], ptr %i.akk, i64 %indvars.iv1714.i ; 2 uses
  %gep1367.us.i = getelementptr i8, ptr %invariant.gep1366.us.i, i64 %.reass1365.us.i ; 8 uses
  %gep.us1378.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.i
  %i.akw = load i32, ptr %gep.us1378.i, align 4, !tbaa !39
  %gep.us1378.1.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.1.i
  %i.akx = load i32, ptr %gep.us1378.1.i, align 4, !tbaa !39
  %gep.us1378.2.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.2.i
  %i.aky = load i32, ptr %gep.us1378.2.i, align 4, !tbaa !39
  %gep.us1378.3.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.3.i
  %i.akz = load i32, ptr %gep.us1378.3.i, align 4, !tbaa !39
  %gep.us1378.4.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.4.i
  %i.ala = load i32, ptr %gep.us1378.4.i, align 4, !tbaa !39
  %gep.us1378.5.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.5.i
  %i.alb = load i32, ptr %gep.us1378.5.i, align 4, !tbaa !39
  %gep.us1378.6.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.6.i
  %i.alc = load i32, ptr %gep.us1378.6.i, align 4, !tbaa !39
  %gep.us1378.7.i = getelementptr i8, ptr %gep1367.us.i, i64 %.reass1360.us.7.i
  %i.ald = load i32, ptr %gep.us1378.7.i, align 4, !tbaa !39
  %gep1367.us.1.i = getelementptr i8, ptr %invariant.gep1366.us.i, i64 %.reass1365.us.1.i ; 8 uses
  %gep.us1378.11713.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.i
  %i.ale = load i32, ptr %gep.us1378.11713.i, align 4, !tbaa !39
  %gep.us1378.1.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.1.i
  %i.alf = load i32, ptr %gep.us1378.1.1.i, align 4, !tbaa !39
  %gep.us1378.2.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.2.i
  %i.alg = load i32, ptr %gep.us1378.2.1.i, align 4, !tbaa !39
  %gep.us1378.3.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.3.i
  %i.alh = load i32, ptr %gep.us1378.3.1.i, align 4, !tbaa !39
  %gep.us1378.4.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.4.i
  %i.ali = load i32, ptr %gep.us1378.4.1.i, align 4, !tbaa !39
  %gep.us1378.5.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.5.i
  %i.alj = load i32, ptr %gep.us1378.5.1.i, align 4, !tbaa !39
  %gep.us1378.6.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.6.i
  %i.alk = load i32, ptr %gep.us1378.6.1.i, align 4, !tbaa !39
  %gep.us1378.7.1.i = getelementptr i8, ptr %gep1367.us.1.i, i64 %.reass1360.us.7.i
  %i.all = load i32, ptr %gep.us1378.7.1.i, align 4, !tbaa !39
  %i.alm = insertelement <16 x i32> poison, i32 %i.akw, i64 0
  %i.aln = insertelement <16 x i32> %i.alm, i32 %i.akx, i64 1
  %i.alo = insertelement <16 x i32> %i.aln, i32 %i.aky, i64 2
  %i.alp = insertelement <16 x i32> %i.alo, i32 %i.akz, i64 3
  %i.alq = insertelement <16 x i32> %i.alp, i32 %i.ala, i64 4
  %i.alr = insertelement <16 x i32> %i.alq, i32 %i.alb, i64 5
  %i.als = insertelement <16 x i32> %i.alr, i32 %i.alc, i64 6
  %i.alt = insertelement <16 x i32> %i.als, i32 %i.ald, i64 7
  %i.alu = insertelement <16 x i32> %i.alt, i32 %i.ale, i64 8
  %i.alv = insertelement <16 x i32> %i.alu, i32 %i.alf, i64 9
  %i.alw = insertelement <16 x i32> %i.alv, i32 %i.alg, i64 10
  %i.alx = insertelement <16 x i32> %i.alw, i32 %i.alh, i64 11
  %i.aly = insertelement <16 x i32> %i.alx, i32 %i.ali, i64 12
  %i.alz = insertelement <16 x i32> %i.aly, i32 %i.alj, i64 13
  %i.ama = insertelement <16 x i32> %i.alz, i32 %i.alk, i64 14
  %i.amb = insertelement <16 x i32> %i.ama, i32 %i.all, i64 15
  %i.amc = lshr <16 x i32> %i.amb, splat (i32 16)
  %i.amd = trunc nuw <16 x i32> %i.amc to <16 x i16>
  store <16 x i16> %i.amd, ptr %.14681370.us.i, align 2, !tbaa !89
  %i.ame = getelementptr inbounds nuw i8, ptr %.14681370.us.i, i64 32 ; 3 uses
  %indvars.iv.next1715.i = add nuw nsw i64 %indvars.iv1714.i, 1 ; 2 uses
  %exitcond1718.not.i = icmp eq i64 %indvars.iv.next1715.i, %wide.trip.count1717.i
  br i1 %exitcond1718.not.i, label %._crit_edge1372.us.i, label %.preheader1144.us.i, !llvm.loop !487

._crit_edge1372.us.i:                             ; preds = %.preheader1144.us.i
  %indvars.iv.next1720.i = add nuw nsw i64 %indvars.iv1719.i, 8 ; 3 uses
  %i.amf = icmp slt i64 %indvars.iv.next1720.i, %invariant.op1863.i
  br i1 %i.amf, label %.preheader1148.us.i, label %.preheader1151.loopexit.i, !llvm.loop !488

.preheader1151.loopexit.i:                        ; preds = %._crit_edge1372.us.i
  %i.amg = trunc nuw nsw i64 %indvars.iv.next1720.i to i32
  br label %.preheader1151.i

.preheader1151.i:                                 ; preds = %.preheader1151.loopexit.i, %.noexc771.i
  %.0467.lcssa.i = phi ptr [ %i.aki, %.noexc771.i ], [ %i.ame, %.preheader1151.loopexit.i ] ; 3 uses
  %.0463.lcssa.i = phi i32 [ 0, %.noexc771.i ], [ %i.amg, %.preheader1151.loopexit.i ] ; 4 uses
  %i.amh = or disjoint i32 %.0463.lcssa.i, 3
  %i.ami = icmp slt i32 %i.amh, %i.k
  br i1 %i.ami, label %.preheader1147.lr.ph.i, label %.preheader1150.i

.preheader1151.i.thread:                          ; preds = %.preheader1148.lr.ph.i
  br i1 %i.yo, label %.preheader1147.preheader.i, label %.preheader1150.i

.preheader1147.lr.ph.i:                           ; preds = %.preheader1151.i
  %i.amj = load i32, ptr %i.yg, align 4
  %i.amk = load ptr, ptr %3, align 8              ; 2 uses
  %i.aml = load i64, ptr %i.yi, align 8           ; 2 uses
  %i.amm = sext i32 %i.amj to i64
  %factor.op.mul1381.i = mul i64 %i.aml, %i.amm   ; 4 uses
  br i1 %i.yf, label %.preheader1147.us.preheader.i, label %.preheader1147.preheader.i

.preheader1147.preheader.i:                       ; preds = %.preheader1151.i.thread, %.preheader1147.lr.ph.i
  %.0467.lcssa.i3844 = phi ptr [ %.0467.lcssa.i, %.preheader1147.lr.ph.i ], [ %i.aki, %.preheader1151.i.thread ]
  %.0463.lcssa.i3943 = phi i32 [ %.0463.lcssa.i, %.preheader1147.lr.ph.i ], [ %i.yj, %.preheader1151.i.thread ] ; 2 uses
  %i.amn = add i32 %.0463.lcssa.i3943, 4
  %i.amo = sub i32 %i.yl, %.0463.lcssa.i3943
  %i.amp = and i32 %i.amo, -4
  %i.amq = add i32 %i.amn, %i.amp
  br label %.preheader1150.i

.preheader1147.us.preheader.i:                    ; preds = %.preheader1147.lr.ph.i
  %i.amr = load i64, ptr %i.yh, align 8
  %factor.op.mul1386.i = mul i64 %i.amr, %i.aml   ; 2 uses
  %i.ams = zext i32 %.0463.lcssa.i to i64
  %.reass1387.us.i = mul i64 %factor.op.mul1386.i, %indvars.iv1764.i ; 2 uses
  %i.amt = add nuw nsw i64 %indvars.iv1764.i, 1
  %.reass1387.us.1.i = mul i64 %factor.op.mul1386.i, %i.amt ; 2 uses
  br label %.preheader1147.us.i

.preheader1147.us.i:                              ; preds = %._crit_edge1394.us.i, %.preheader1147.us.preheader.i
  %indvars.iv1735.i = phi i64 [ %i.ams, %.preheader1147.us.preheader.i ], [ %indvars.iv.next1736.i, %._crit_edge1394.us.i ] ; 5 uses
  %.44711396.us.i = phi ptr [ %.0467.lcssa.i, %.preheader1147.us.preheader.i ], [ %.lcssa153, %._crit_edge1394.us.i ] ; 3 uses
  %.reass1382.us.i = mul i64 %indvars.iv1735.i, %factor.op.mul1381.i ; 4 uses
  %i.amu = or disjoint i64 %indvars.iv1735.i, 1
  %.reass1382.us.1.i = mul i64 %i.amu, %factor.op.mul1381.i ; 4 uses
  %i.amv = or disjoint i64 %indvars.iv1735.i, 2
  %.reass1382.us.2.i = mul i64 %i.amv, %factor.op.mul1381.i ; 4 uses
  %i.amw = or disjoint i64 %indvars.iv1735.i, 3
  %.reass1382.us.3.i = mul i64 %i.amw, %factor.op.mul1381.i ; 4 uses
  br i1 %min.iters.check276, label %.preheader1143.us.i.preheader, label %vector.ph277

vector.ph277:                                     ; preds = %.preheader1147.us.i
  %i.amx = getelementptr i8, ptr %.44711396.us.i, i64 %i.yp ; 2 uses
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next291, %vector.body279 ] ; 3 uses
  %i.amy = shl i64 %index280, 4
  %next.gep281 = getelementptr i8, ptr %.44711396.us.i, i64 %i.amy
  %i.amz = getelementptr [4 x i8], ptr %i.amk, i64 %index280 ; 2 uses
  %i.ana = getelementptr i8, ptr %i.amz, i64 %.reass1387.us.i ; 4 uses
  %i.anb = getelementptr i8, ptr %i.ana, i64 %.reass1382.us.i
  %wide.load282 = load <4 x i32>, ptr %i.anb, align 4, !tbaa !39
  %i.anc = lshr <4 x i32> %wide.load282, splat (i32 16)
  %i.and = getelementptr i8, ptr %i.ana, i64 %.reass1382.us.1.i
  %wide.load283 = load <4 x i32>, ptr %i.and, align 4, !tbaa !39
  %i.ane = lshr <4 x i32> %wide.load283, splat (i32 16)
  %i.anf = getelementptr i8, ptr %i.ana, i64 %.reass1382.us.2.i
  %wide.load284 = load <4 x i32>, ptr %i.anf, align 4, !tbaa !39
  %i.ang = lshr <4 x i32> %wide.load284, splat (i32 16)
  %i.anh = getelementptr i8, ptr %i.ana, i64 %.reass1382.us.3.i
  %wide.load285 = load <4 x i32>, ptr %i.anh, align 4, !tbaa !39
  %i.ani = lshr <4 x i32> %wide.load285, splat (i32 16)
  %i.anj = getelementptr i8, ptr %i.amz, i64 %.reass1387.us.1.i ; 4 uses
  %i.ank = getelementptr i8, ptr %i.anj, i64 %.reass1382.us.i
  %wide.load286 = load <4 x i32>, ptr %i.ank, align 4, !tbaa !39
  %i.anl = lshr <4 x i32> %wide.load286, splat (i32 16)
  %i.anm = getelementptr i8, ptr %i.anj, i64 %.reass1382.us.1.i
  %wide.load287 = load <4 x i32>, ptr %i.anm, align 4, !tbaa !39
  %i.ann = lshr <4 x i32> %wide.load287, splat (i32 16)
  %i.ano = getelementptr i8, ptr %i.anj, i64 %.reass1382.us.2.i
  %wide.load288 = load <4 x i32>, ptr %i.ano, align 4, !tbaa !39
  %i.anp = lshr <4 x i32> %wide.load288, splat (i32 16)
  %i.anq = getelementptr i8, ptr %i.anj, i64 %.reass1382.us.3.i
  %wide.load289 = load <4 x i32>, ptr %i.anq, align 4, !tbaa !39
  %i.anr = lshr <4 x i32> %wide.load289, splat (i32 16)
  %i.ans = shufflevector <4 x i32> %i.anc, <4 x i32> %i.ane, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ant = shufflevector <4 x i32> %i.ang, <4 x i32> %i.ani, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anu = shufflevector <4 x i32> %i.anl, <4 x i32> %i.ann, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anv = shufflevector <4 x i32> %i.anp, <4 x i32> %i.anr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.anw = shufflevector <8 x i32> %i.ans, <8 x i32> %i.ant, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anx = trunc nuw <16 x i32> %i.anw to <16 x i16>
  %i.any = shufflevector <8 x i32> %i.anu, <8 x i32> %i.anv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anz = trunc nuw <16 x i32> %i.any to <16 x i16>
  %interleaved.vec290 = shufflevector <16 x i16> %i.anx, <16 x i16> %i.anz, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec290, ptr %next.gep281, align 2, !tbaa !89
  %index.next291 = add nuw i64 %index280, 4       ; 2 uses
  %i.aoa = icmp eq i64 %index.next291, %n.vec278
  br i1 %i.aoa, label %middle.block292, label %vector.body279, !llvm.loop !489

middle.block292:                                  ; preds = %vector.body279
  br i1 %cmp.n293, label %._crit_edge1394.us.i, label %.preheader1143.us.i.preheader

.preheader1143.us.i.preheader:                    ; preds = %.preheader1147.us.i, %middle.block292
  %indvars.iv1730.i.ph = phi i64 [ 0, %.preheader1147.us.i ], [ %n.vec278, %middle.block292 ]
  %.54721392.us.i.ph = phi ptr [ %.44711396.us.i, %.preheader1147.us.i ], [ %i.amx, %middle.block292 ]
  br label %.preheader1143.us.i

.preheader1143.us.i:                              ; preds = %.preheader1143.us.i.preheader, %.preheader1143.us.i
  %indvars.iv1730.i = phi i64 [ %indvars.iv.next1731.i, %.preheader1143.us.i ], [ %indvars.iv1730.i.ph, %.preheader1143.us.i.preheader ] ; 2 uses
  %.54721392.us.i = phi ptr [ %i.apg, %.preheader1143.us.i ], [ %.54721392.us.i.ph, %.preheader1143.us.i.preheader ] ; 9 uses
  %invariant.gep1388.us.i = getelementptr [4 x i8], ptr %i.amk, i64 %indvars.iv1730.i ; 2 uses
  %gep1389.us.i = getelementptr i8, ptr %invariant.gep1388.us.i, i64 %.reass1387.us.i ; 4 uses
  %gep.us1400.i = getelementptr i8, ptr %gep1389.us.i, i64 %.reass1382.us.i
  %i.aob = load i32, ptr %gep.us1400.i, align 4, !tbaa !39
  %i.aoc = lshr i32 %i.aob, 16
  %i.aod = trunc nuw i32 %i.aoc to i16
  store i16 %i.aod, ptr %.54721392.us.i, align 2, !tbaa !89
  %i.aoe = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 2
  %gep.us1400.1.i = getelementptr i8, ptr %gep1389.us.i, i64 %.reass1382.us.1.i
  %i.aof = load i32, ptr %gep.us1400.1.i, align 4, !tbaa !39
  %i.aog = lshr i32 %i.aof, 16
  %i.aoh = trunc nuw i32 %i.aog to i16
  store i16 %i.aoh, ptr %i.aoe, align 2, !tbaa !89
  %i.aoi = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 4
  %gep.us1400.2.i = getelementptr i8, ptr %gep1389.us.i, i64 %.reass1382.us.2.i
  %i.aoj = load i32, ptr %gep.us1400.2.i, align 4, !tbaa !39
  %i.aok = lshr i32 %i.aoj, 16
  %i.aol = trunc nuw i32 %i.aok to i16
  store i16 %i.aol, ptr %i.aoi, align 2, !tbaa !89
  %i.aom = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 6
  %gep.us1400.3.i = getelementptr i8, ptr %gep1389.us.i, i64 %.reass1382.us.3.i
  %i.aon = load i32, ptr %gep.us1400.3.i, align 4, !tbaa !39
  %i.aoo = lshr i32 %i.aon, 16
  %i.aop = trunc nuw i32 %i.aoo to i16
  store i16 %i.aop, ptr %i.aom, align 2, !tbaa !89
  %i.aoq = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 8
  %gep1389.us.1.i = getelementptr i8, ptr %invariant.gep1388.us.i, i64 %.reass1387.us.1.i ; 4 uses
  %gep.us1400.11729.i = getelementptr i8, ptr %gep1389.us.1.i, i64 %.reass1382.us.i
  %i.aor = load i32, ptr %gep.us1400.11729.i, align 4, !tbaa !39
  %i.aos = lshr i32 %i.aor, 16
  %i.aot = trunc nuw i32 %i.aos to i16
  store i16 %i.aot, ptr %i.aoq, align 2, !tbaa !89
  %i.aou = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 10
  %gep.us1400.1.1.i = getelementptr i8, ptr %gep1389.us.1.i, i64 %.reass1382.us.1.i
  %i.aov = load i32, ptr %gep.us1400.1.1.i, align 4, !tbaa !39
  %i.aow = lshr i32 %i.aov, 16
  %i.aox = trunc nuw i32 %i.aow to i16
  store i16 %i.aox, ptr %i.aou, align 2, !tbaa !89
  %i.aoy = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 12
  %gep.us1400.2.1.i = getelementptr i8, ptr %gep1389.us.1.i, i64 %.reass1382.us.2.i
  %i.aoz = load i32, ptr %gep.us1400.2.1.i, align 4, !tbaa !39
  %i.apa = lshr i32 %i.aoz, 16
  %i.apb = trunc nuw i32 %i.apa to i16
  store i16 %i.apb, ptr %i.aoy, align 2, !tbaa !89
  %i.apc = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 14
  %gep.us1400.3.1.i = getelementptr i8, ptr %gep1389.us.1.i, i64 %.reass1382.us.3.i
  %i.apd = load i32, ptr %gep.us1400.3.1.i, align 4, !tbaa !39
  %i.ape = lshr i32 %i.apd, 16
  %i.apf = trunc nuw i32 %i.ape to i16
  store i16 %i.apf, ptr %i.apc, align 2, !tbaa !89
  %i.apg = getelementptr inbounds nuw i8, ptr %.54721392.us.i, i64 16 ; 2 uses
  %indvars.iv.next1731.i = add nuw nsw i64 %indvars.iv1730.i, 1 ; 2 uses
  %exitcond1734.not.i = icmp eq i64 %indvars.iv.next1731.i, %wide.trip.count1717.i
  br i1 %exitcond1734.not.i, label %._crit_edge1394.us.i, label %.preheader1143.us.i, !llvm.loop !490

._crit_edge1394.us.i:                             ; preds = %.preheader1143.us.i, %middle.block292
  %.lcssa153 = phi ptr [ %i.amx, %middle.block292 ], [ %i.apg, %.preheader1143.us.i ] ; 2 uses
  %indvars.iv.next1736.i = add nuw nsw i64 %indvars.iv1735.i, 4 ; 2 uses
  %i.aph = trunc i64 %indvars.iv.next1736.i to i32 ; 2 uses
  %i.api = or i32 %i.aph, 3
  %i.apj = icmp slt i32 %i.api, %i.k
  br i1 %i.apj, label %.preheader1147.us.i, label %.preheader1150.i, !llvm.loop !491

.preheader1150.i:                                 ; preds = %._crit_edge1394.us.i, %.preheader1151.i.thread, %.preheader1147.preheader.i, %.preheader1151.i
  %.4471.lcssa.i = phi ptr [ %.0467.lcssa.i, %.preheader1151.i ], [ %i.aki, %.preheader1151.i.thread ], [ %.0467.lcssa.i3844, %.preheader1147.preheader.i ], [ %.lcssa153, %._crit_edge1394.us.i ] ; 2 uses
  %.1464.lcssa.i = phi i32 [ %.0463.lcssa.i, %.preheader1151.i ], [ %i.yj, %.preheader1151.i.thread ], [ %i.amq, %.preheader1147.preheader.i ], [ %i.aph, %._crit_edge1394.us.i ] ; 3 uses
  %i.apk = or disjoint i32 %.1464.lcssa.i, 1
  %i.apl = icmp slt i32 %i.apk, %i.k
  br i1 %i.apl, label %.preheader1146.lr.ph.i, label %.preheader1149.i

.preheader1146.lr.ph.i:                           ; preds = %.preheader1150.i
  %i.apm = load i32, ptr %i.yg, align 4
  %i.apn = load ptr, ptr %3, align 8              ; 2 uses
  %i.apo = load i64, ptr %i.yi, align 8           ; 2 uses
  %i.app = sext i32 %i.apm to i64
  %factor.op.mul1403.i = mul i64 %i.apo, %i.app   ; 2 uses
  br i1 %i.yf, label %.preheader1146.us.preheader.i, label %._crit_edge1438.split.i

.preheader1146.us.preheader.i:                    ; preds = %.preheader1146.lr.ph.i
  %i.apq = load i64, ptr %i.yh, align 8
  %factor.op.mul1408.i = mul i64 %i.apq, %i.apo   ; 2 uses
  %i.apr = zext i32 %.1464.lcssa.i to i64
  %.reass1409.us.i = mul i64 %factor.op.mul1408.i, %indvars.iv1764.i ; 2 uses
  %i.aps = add nuw nsw i64 %indvars.iv1764.i, 1
  %.reass1409.us.1.i = mul i64 %factor.op.mul1408.i, %i.aps ; 2 uses
  br label %.preheader1146.us.i

.preheader1146.us.i:                              ; preds = %._crit_edge1416.us.i, %.preheader1146.us.preheader.i
  %indvars.iv1750.i = phi i64 [ %i.apr, %.preheader1146.us.preheader.i ], [ %indvars.iv.next1751.i, %._crit_edge1416.us.i ] ; 3 uses
  %.84751418.us.i = phi ptr [ %.4471.lcssa.i, %.preheader1146.us.preheader.i ], [ %.lcssa155, %._crit_edge1416.us.i ] ; 3 uses
  %.reass1404.us.i = mul i64 %indvars.iv1750.i, %factor.op.mul1403.i ; 4 uses
  %i.apt = or disjoint i64 %indvars.iv1750.i, 1
  %.reass1404.us.1.i = mul i64 %i.apt, %factor.op.mul1403.i ; 4 uses
  br i1 %min.iters.check259, label %.preheader1142.us.i.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %.preheader1146.us.i
  %i.apu = getelementptr i8, ptr %.84751418.us.i, i64 %i.yq ; 2 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next270, %vector.body262 ] ; 3 uses
  %i.apv = shl i64 %index263, 3
  %next.gep264 = getelementptr i8, ptr %.84751418.us.i, i64 %i.apv
  %i.apw = getelementptr [4 x i8], ptr %i.apn, i64 %index263 ; 2 uses
  %i.apx = getelementptr i8, ptr %i.apw, i64 %.reass1409.us.i ; 2 uses
  %i.apy = getelementptr i8, ptr %i.apx, i64 %.reass1404.us.i
  %wide.load265 = load <4 x i32>, ptr %i.apy, align 4, !tbaa !39
  %i.apz = lshr <4 x i32> %wide.load265, splat (i32 16)
  %i.aqa = getelementptr i8, ptr %i.apx, i64 %.reass1404.us.1.i
  %wide.load266 = load <4 x i32>, ptr %i.aqa, align 4, !tbaa !39
  %i.aqb = lshr <4 x i32> %wide.load266, splat (i32 16)
  %i.aqc = getelementptr i8, ptr %i.apw, i64 %.reass1409.us.1.i ; 2 uses
  %i.aqd = getelementptr i8, ptr %i.aqc, i64 %.reass1404.us.i
  %wide.load267 = load <4 x i32>, ptr %i.aqd, align 4, !tbaa !39
end_hunk_9
begin_hunk_10_@_ZN4ncnn21Deconvolution_x86_fma21create_pipeline_bf16sERKNS_6OptionE:bb.a
  %i.ase = icmp sgt i32 %i.k, %i.asd
  br i1 %i.ase, label %.preheader1145.i, label %._crit_edge1438.split.i, !llvm.loop !497

._crit_edge1438.split.i:                          ; preds = %._crit_edge1434.i, %.preheader1146.lr.ph.i, %.preheader1145.lr.ph.i, %.preheader1149.i
  %indvars.iv.next1765.i = add nuw nsw i64 %indvars.iv1764.i, 2 ; 2 uses
  %i.asf = trunc i64 %indvars.iv.next1765.i to i32 ; 2 uses
  %i.asg = or i32 %i.asf, 1
  %i.ash = icmp slt i32 %i.asg, %i.j
  br i1 %i.ash, label %.noexc771.i, label %.preheader1137.i, !llvm.loop !498

.noexc761.i:                                      ; preds = %._crit_edge1501.split.i, %.noexc761.lr.ph.i
  %indvars.iv1810.i = phi i64 [ %i.ajs, %.noexc761.lr.ph.i ], [ %indvars.iv.next1811.i, %._crit_edge1501.split.i ] ; 6 uses
  %i.asi = trunc nuw i64 %indvars.iv1810.i to i32 ; 4 uses
  %i.asj = lshr i32 %i.asi, 3
  %i.ask = lshr i32 %i.asi, 2
  %i.asl = and i32 %i.ask, 1
  %i.asm = lshr i32 %i.asi, 1
  %i.asn = and i32 %i.asm, 1
  %i.aso = and i32 %i.asi, 1
  %i.asp = add nuw nsw i32 %i.aso, %i.asj
  %i.asq = add nuw nsw i32 %i.asp, %i.asl
  %i.asr = add nuw nsw i32 %i.asq, %i.asn
  %i.ass = zext nneg i32 %i.asr to i64
  %.reass1507.i = mul i64 %factor.op.mul1506.i, %i.ass
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aje, i64 %.reass1507.i ; 3 uses
  br i1 %i.ajj, label %.preheader1133.lr.ph.i, label %.preheader1136.i

.preheader1133.lr.ph.i:                           ; preds = %.noexc761.i
  %i.asu = load i32, ptr %i.ajl, align 4
  %i.asv = load ptr, ptr %3, align 8
  %i.asw = load i64, ptr %i.ajm, align 8
  %i.asx = mul i64 %i.asw, %indvars.iv1810.i
  %i.asy = load i64, ptr %i.ajn, align 8          ; 2 uses
  %i.asz = mul i64 %i.asx, %i.asy
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asv, i64 %i.asz ; 2 uses
  %i.atb = sext i32 %i.asu to i64
  %factor.op.mul1447.i = mul i64 %i.asy, %i.atb   ; 8 uses
  br i1 %i.ajk, label %.preheader1133.us.i, label %.preheader1136.i

.preheader1133.us.i:                              ; preds = %.preheader1133.lr.ph.i, %._crit_edge1454.us.i
  %indvars.iv1776.i = phi i64 [ %indvars.iv.next1777.i, %._crit_edge1454.us.i ], [ 0, %.preheader1133.lr.ph.i ] ; 9 uses
  %.04481456.us.i = phi ptr [ %.lcssa, %._crit_edge1454.us.i ], [ %i.ast, %.preheader1133.lr.ph.i ] ; 3 uses
  %.reass1448.us.i = mul i64 %indvars.iv1776.i, %factor.op.mul1447.i ; 2 uses
  %i.atc = or disjoint i64 %indvars.iv1776.i, 1
  %.reass1448.us.1.i = mul i64 %i.atc, %factor.op.mul1447.i ; 2 uses
  %i.atd = or disjoint i64 %indvars.iv1776.i, 2
  %.reass1448.us.2.i = mul i64 %i.atd, %factor.op.mul1447.i ; 2 uses
  %i.ate = or disjoint i64 %indvars.iv1776.i, 3
  %.reass1448.us.3.i = mul i64 %i.ate, %factor.op.mul1447.i ; 2 uses
  %i.atf = or disjoint i64 %indvars.iv1776.i, 4
  %.reass1448.us.4.i = mul i64 %i.atf, %factor.op.mul1447.i ; 2 uses
  %i.atg = or disjoint i64 %indvars.iv1776.i, 5
  %.reass1448.us.5.i = mul i64 %i.atg, %factor.op.mul1447.i ; 2 uses
  %i.ath = or disjoint i64 %indvars.iv1776.i, 6
  %.reass1448.us.6.i = mul i64 %i.ath, %factor.op.mul1447.i ; 2 uses
  %i.ati = or disjoint i64 %indvars.iv1776.i, 7
  %.reass1448.us.7.i = mul i64 %i.ati, %factor.op.mul1447.i ; 2 uses
  br i1 %min.iters.check362, label %.preheader1129.us.i.preheader, label %vector.ph363

vector.ph363:                                     ; preds = %.preheader1133.us.i
  %i.atj = getelementptr i8, ptr %.04481456.us.i, i64 %i.ajt ; 2 uses
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph363
  %index366 = phi i64 [ 0, %vector.ph363 ], [ %index.next377, %vector.body365 ] ; 3 uses
  %i.atk = shl i64 %index366, 4
  %next.gep367 = getelementptr i8, ptr %.04481456.us.i, i64 %i.atk
  %i.atl = getelementptr [4 x i8], ptr %i.ata, i64 %index366 ; 8 uses
  %i.atm = getelementptr i8, ptr %i.atl, i64 %.reass1448.us.i
  %wide.load368 = load <4 x i32>, ptr %i.atm, align 4, !tbaa !39
  %i.atn = lshr <4 x i32> %wide.load368, splat (i32 16)
  %i.ato = getelementptr i8, ptr %i.atl, i64 %.reass1448.us.1.i
  %wide.load369 = load <4 x i32>, ptr %i.ato, align 4, !tbaa !39
  %i.atp = lshr <4 x i32> %wide.load369, splat (i32 16)
  %i.atq = getelementptr i8, ptr %i.atl, i64 %.reass1448.us.2.i
  %wide.load370 = load <4 x i32>, ptr %i.atq, align 4, !tbaa !39
  %i.atr = lshr <4 x i32> %wide.load370, splat (i32 16)
  %i.ats = getelementptr i8, ptr %i.atl, i64 %.reass1448.us.3.i
  %wide.load371 = load <4 x i32>, ptr %i.ats, align 4, !tbaa !39
  %i.att = lshr <4 x i32> %wide.load371, splat (i32 16)
  %i.atu = getelementptr i8, ptr %i.atl, i64 %.reass1448.us.4.i
  %wide.load372 = load <4 x i32>, ptr %i.atu, align 4, !tbaa !39
  %i.atv = lshr <4 x i32> %wide.load372, splat (i32 16)
  %i.atw = getelementptr i8, ptr %i.atl, i64 %.reass1448.us.5.i
  %wide.load373 = load <4 x i32>, ptr %i.atw, align 4, !tbaa !39
  %i.atx = lshr <4 x i32> %wide.load373, splat (i32 16)
  %i.aty = getelementptr i8, ptr %i.atl, i64 %.reass1448.us.6.i
  %wide.load374 = load <4 x i32>, ptr %i.aty, align 4, !tbaa !39
  %i.atz = lshr <4 x i32> %wide.load374, splat (i32 16)
  %i.aua = getelementptr i8, ptr %i.atl, i64 %.reass1448.us.7.i
  %wide.load375 = load <4 x i32>, ptr %i.aua, align 4, !tbaa !39
  %i.aub = lshr <4 x i32> %wide.load375, splat (i32 16)
  %i.auc = shufflevector <4 x i32> %i.atn, <4 x i32> %i.atp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aud = shufflevector <4 x i32> %i.atr, <4 x i32> %i.att, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aue = shufflevector <4 x i32> %i.atv, <4 x i32> %i.atx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.auf = shufflevector <4 x i32> %i.atz, <4 x i32> %i.aub, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aug = shufflevector <8 x i32> %i.auc, <8 x i32> %i.aud, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auh = trunc nuw <16 x i32> %i.aug to <16 x i16>
  %i.aui = shufflevector <8 x i32> %i.aue, <8 x i32> %i.auf, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.auj = trunc nuw <16 x i32> %i.aui to <16 x i16>
  %interleaved.vec376 = shufflevector <16 x i16> %i.auh, <16 x i16> %i.auj, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x i16> %interleaved.vec376, ptr %next.gep367, align 2, !tbaa !89
  %index.next377 = add nuw i64 %index366, 4       ; 2 uses
  %i.auk = icmp eq i64 %index.next377, %n.vec364
  br i1 %i.auk, label %middle.block378, label %vector.body365, !llvm.loop !499

middle.block378:                                  ; preds = %vector.body365
  br i1 %cmp.n379, label %._crit_edge1454.us.i, label %.preheader1129.us.i.preheader

.preheader1129.us.i.preheader:                    ; preds = %.preheader1133.us.i, %middle.block378
  %indvars.iv1771.i.ph = phi i64 [ 0, %.preheader1133.us.i ], [ %n.vec364, %middle.block378 ]
  %.14491452.us.i.ph = phi ptr [ %.04481456.us.i, %.preheader1133.us.i ], [ %i.atj, %middle.block378 ]
  br label %.preheader1129.us.i

.preheader1129.us.i:                              ; preds = %.preheader1129.us.i.preheader, %.preheader1129.us.i
  %indvars.iv1771.i = phi i64 [ %indvars.iv.next1772.i, %.preheader1129.us.i ], [ %indvars.iv1771.i.ph, %.preheader1129.us.i.preheader ] ; 2 uses
  %.14491452.us.i = phi ptr [ %i.avq, %.preheader1129.us.i ], [ %.14491452.us.i.ph, %.preheader1129.us.i.preheader ] ; 9 uses
  %invariant.gep1449.us.i = getelementptr [4 x i8], ptr %i.ata, i64 %indvars.iv1771.i ; 8 uses
  %gep.us1460.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.i
  %i.aul = load i32, ptr %gep.us1460.i, align 4, !tbaa !39
  %i.aum = lshr i32 %i.aul, 16
  %i.aun = trunc nuw i32 %i.aum to i16
  store i16 %i.aun, ptr %.14491452.us.i, align 2, !tbaa !89
  %i.auo = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 2
  %gep.us1460.1.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.1.i
  %i.aup = load i32, ptr %gep.us1460.1.i, align 4, !tbaa !39
  %i.auq = lshr i32 %i.aup, 16
  %i.aur = trunc nuw i32 %i.auq to i16
  store i16 %i.aur, ptr %i.auo, align 2, !tbaa !89
  %i.aus = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 4
  %gep.us1460.2.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.2.i
  %i.aut = load i32, ptr %gep.us1460.2.i, align 4, !tbaa !39
  %i.auu = lshr i32 %i.aut, 16
  %i.auv = trunc nuw i32 %i.auu to i16
  store i16 %i.auv, ptr %i.aus, align 2, !tbaa !89
  %i.auw = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 6
  %gep.us1460.3.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.3.i
  %i.aux = load i32, ptr %gep.us1460.3.i, align 4, !tbaa !39
  %i.auy = lshr i32 %i.aux, 16
  %i.auz = trunc nuw i32 %i.auy to i16
  store i16 %i.auz, ptr %i.auw, align 2, !tbaa !89
  %i.ava = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 8
  %gep.us1460.4.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.4.i
  %i.avb = load i32, ptr %gep.us1460.4.i, align 4, !tbaa !39
  %i.avc = lshr i32 %i.avb, 16
  %i.avd = trunc nuw i32 %i.avc to i16
  store i16 %i.avd, ptr %i.ava, align 2, !tbaa !89
  %i.ave = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 10
  %gep.us1460.5.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.5.i
  %i.avf = load i32, ptr %gep.us1460.5.i, align 4, !tbaa !39
  %i.avg = lshr i32 %i.avf, 16
  %i.avh = trunc nuw i32 %i.avg to i16
  store i16 %i.avh, ptr %i.ave, align 2, !tbaa !89
  %i.avi = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 12
  %gep.us1460.6.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.6.i
  %i.avj = load i32, ptr %gep.us1460.6.i, align 4, !tbaa !39
  %i.avk = lshr i32 %i.avj, 16
  %i.avl = trunc nuw i32 %i.avk to i16
  store i16 %i.avl, ptr %i.avi, align 2, !tbaa !89
  %i.avm = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 14
  %gep.us1460.7.i = getelementptr i8, ptr %invariant.gep1449.us.i, i64 %.reass1448.us.7.i
  %i.avn = load i32, ptr %gep.us1460.7.i, align 4, !tbaa !39
  %i.avo = lshr i32 %i.avn, 16
  %i.avp = trunc nuw i32 %i.avo to i16
  store i16 %i.avp, ptr %i.avm, align 2, !tbaa !89
  %i.avq = getelementptr inbounds nuw i8, ptr %.14491452.us.i, i64 16 ; 2 uses
  %indvars.iv.next1772.i = add nuw nsw i64 %indvars.iv1771.i, 1 ; 2 uses
  %exitcond1775.not.i = icmp eq i64 %indvars.iv.next1772.i, %wide.trip.count1774.i
  br i1 %exitcond1775.not.i, label %._crit_edge1454.us.i, label %.preheader1129.us.i, !llvm.loop !500

._crit_edge1454.us.i:                             ; preds = %.preheader1129.us.i, %middle.block378
  %.lcssa = phi ptr [ %i.atj, %middle.block378 ], [ %i.avq, %.preheader1129.us.i ] ; 2 uses
  %indvars.iv.next1777.i = add nuw nsw i64 %indvars.iv1776.i, 8 ; 3 uses
  %i.avr = icmp slt i64 %indvars.iv.next1777.i, %invariant.op1864.i
  br i1 %i.avr, label %.preheader1133.us.i, label %.preheader1136.loopexit.i, !llvm.loop !501

.preheader1136.loopexit.i:                        ; preds = %._crit_edge1454.us.i
  %i.avs = trunc nuw nsw i64 %indvars.iv.next1777.i to i32
  br label %.preheader1136.i

.preheader1136.i:                                 ; preds = %.preheader1136.loopexit.i, %.preheader1133.lr.ph.i, %.noexc761.i
  %.0448.lcssa.i = phi ptr [ %i.ast, %.noexc761.i ], [ %.lcssa, %.preheader1136.loopexit.i ], [ %i.ast, %.preheader1133.lr.ph.i ] ; 3 uses
  %.0447.lcssa.i = phi i32 [ 0, %.noexc761.i ], [ %i.avs, %.preheader1136.loopexit.i ], [ %i.ajo, %.preheader1133.lr.ph.i ] ; 5 uses
  %i.avt = or disjoint i32 %.0447.lcssa.i, 3
  %i.avu = icmp slt i32 %i.avt, %i.k
  br i1 %i.avu, label %.preheader1132.lr.ph.i, label %.preheader1135.i

.preheader1132.lr.ph.i:                           ; preds = %.preheader1136.i
  %i.avv = load i32, ptr %i.ajl, align 4
  %i.avw = load ptr, ptr %3, align 8
  %i.avx = load i64, ptr %i.ajm, align 8
  %i.avy = mul i64 %i.avx, %indvars.iv1810.i
  %i.avz = load i64, ptr %i.ajn, align 8          ; 2 uses
  %i.awa = mul i64 %i.avy, %i.avz
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avw, i64 %i.awa ; 2 uses
  %i.awc = sext i32 %i.avv to i64
  %factor.op.mul1463.i = mul i64 %i.avz, %i.awc   ; 4 uses
  br i1 %i.ajk, label %.preheader1132.us.preheader.i, label %.preheader1132.preheader.i

.preheader1132.preheader.i:                       ; preds = %.preheader1132.lr.ph.i
  %i.awd = add i32 %.0447.lcssa.i, 4
  %i.awe = sub i32 %i.ajq, %.0447.lcssa.i
  %i.awf = and i32 %i.awe, -4
  %i.awg = add i32 %i.awd, %i.awf
  br label %.preheader1135.i

.preheader1132.us.preheader.i:                    ; preds = %.preheader1132.lr.ph.i
  %i.awh = zext i32 %.0447.lcssa.i to i64
  br label %.preheader1132.us.i

.preheader1132.us.i:                              ; preds = %._crit_edge1470.us.i, %.preheader1132.us.preheader.i
  %indvars.iv1788.i = phi i64 [ %i.awh, %.preheader1132.us.preheader.i ], [ %indvars.iv.next1789.i, %._crit_edge1470.us.i ] ; 5 uses
  %.34511472.us.i = phi ptr [ %.0448.lcssa.i, %.preheader1132.us.preheader.i ], [ %.lcssa147, %._crit_edge1470.us.i ] ; 3 uses
  %.reass1464.us.i = mul i64 %indvars.iv1788.i, %factor.op.mul1463.i ; 2 uses
  %i.awi = add nuw nsw i64 %indvars.iv1788.i, 1
  %.reass1464.us.1.i = mul i64 %i.awi, %factor.op.mul1463.i ; 2 uses
  %i.awj = add nuw nsw i64 %indvars.iv1788.i, 2
  %.reass1464.us.2.i = mul i64 %i.awj, %factor.op.mul1463.i ; 2 uses
  %i.awk = add nuw nsw i64 %indvars.iv1788.i, 3
  %.reass1464.us.3.i = mul i64 %i.awk, %factor.op.mul1463.i ; 2 uses
  br i1 %min.iters.check345, label %.preheader1128.us.i.preheader, label %vector.ph346

vector.ph346:                                     ; preds = %.preheader1132.us.i
  %i.awl = getelementptr i8, ptr %.34511472.us.i, i64 %i.aju ; 2 uses
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph346
  %index349 = phi i64 [ 0, %vector.ph346 ], [ %index.next356, %vector.body348 ] ; 3 uses
  %i.awm = shl i64 %index349, 3
  %next.gep350 = getelementptr i8, ptr %.34511472.us.i, i64 %i.awm
  %i.awn = getelementptr [4 x i8], ptr %i.awb, i64 %index349 ; 4 uses
  %i.awo = getelementptr i8, ptr %i.awn, i64 %.reass1464.us.i
  %wide.load351 = load <4 x i32>, ptr %i.awo, align 4, !tbaa !39
  %i.awp = lshr <4 x i32> %wide.load351, splat (i32 16)
  %i.awq = getelementptr i8, ptr %i.awn, i64 %.reass1464.us.1.i
  %wide.load352 = load <4 x i32>, ptr %i.awq, align 4, !tbaa !39
  %i.awr = lshr <4 x i32> %wide.load352, splat (i32 16)
  %i.aws = getelementptr i8, ptr %i.awn, i64 %.reass1464.us.2.i
  %wide.load353 = load <4 x i32>, ptr %i.aws, align 4, !tbaa !39
  %i.awt = lshr <4 x i32> %wide.load353, splat (i32 16)
  %i.awu = getelementptr i8, ptr %i.awn, i64 %.reass1464.us.3.i
  %wide.load354 = load <4 x i32>, ptr %i.awu, align 4, !tbaa !39
  %i.awv = lshr <4 x i32> %wide.load354, splat (i32 16)
  %i.aww = shufflevector <4 x i32> %i.awp, <4 x i32> %i.awr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.awx = shufflevector <4 x i32> %i.awt, <4 x i32> %i.awv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.awy = shufflevector <8 x i32> %i.aww, <8 x i32> %i.awx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %interleaved.vec355 = trunc nuw <16 x i32> %i.awy to <16 x i16>
  store <16 x i16> %interleaved.vec355, ptr %next.gep350, align 2, !tbaa !89
  %index.next356 = add nuw i64 %index349, 4       ; 2 uses
  %i.awz = icmp eq i64 %index.next356, %n.vec347
  br i1 %i.awz, label %middle.block357, label %vector.body348, !llvm.loop !502

middle.block357:                                  ; preds = %vector.body348
  br i1 %cmp.n358, label %._crit_edge1470.us.i, label %.preheader1128.us.i.preheader

.preheader1128.us.i.preheader:                    ; preds = %.preheader1132.us.i, %middle.block357
  %indvars.iv1783.i.ph = phi i64 [ 0, %.preheader1132.us.i ], [ %n.vec347, %middle.block357 ]
  %.41468.us.i.ph = phi ptr [ %.34511472.us.i, %.preheader1132.us.i ], [ %i.awl, %middle.block357 ]
  br label %.preheader1128.us.i

.preheader1128.us.i:                              ; preds = %.preheader1128.us.i.preheader, %.preheader1128.us.i
  %indvars.iv1783.i = phi i64 [ %indvars.iv.next1784.i, %.preheader1128.us.i ], [ %indvars.iv1783.i.ph, %.preheader1128.us.i.preheader ] ; 2 uses
  %.41468.us.i = phi ptr [ %i.axp, %.preheader1128.us.i ], [ %.41468.us.i.ph, %.preheader1128.us.i.preheader ] ; 5 uses
  %invariant.gep1465.us.i = getelementptr [4 x i8], ptr %i.awb, i64 %indvars.iv1783.i ; 4 uses
  %gep.us1476.i = getelementptr i8, ptr %invariant.gep1465.us.i, i64 %.reass1464.us.i
  %i.axa = load i32, ptr %gep.us1476.i, align 4, !tbaa !39
  %i.axb = lshr i32 %i.axa, 16
  %i.axc = trunc nuw i32 %i.axb to i16
  store i16 %i.axc, ptr %.41468.us.i, align 2, !tbaa !89
  %i.axd = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 2
  %gep.us1476.1.i = getelementptr i8, ptr %invariant.gep1465.us.i, i64 %.reass1464.us.1.i
  %i.axe = load i32, ptr %gep.us1476.1.i, align 4, !tbaa !39
  %i.axf = lshr i32 %i.axe, 16
  %i.axg = trunc nuw i32 %i.axf to i16
  store i16 %i.axg, ptr %i.axd, align 2, !tbaa !89
  %i.axh = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 4
  %gep.us1476.2.i = getelementptr i8, ptr %invariant.gep1465.us.i, i64 %.reass1464.us.2.i
  %i.axi = load i32, ptr %gep.us1476.2.i, align 4, !tbaa !39
  %i.axj = lshr i32 %i.axi, 16
  %i.axk = trunc nuw i32 %i.axj to i16
  store i16 %i.axk, ptr %i.axh, align 2, !tbaa !89
  %i.axl = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 6
  %gep.us1476.3.i = getelementptr i8, ptr %invariant.gep1465.us.i, i64 %.reass1464.us.3.i
  %i.axm = load i32, ptr %gep.us1476.3.i, align 4, !tbaa !39
  %i.axn = lshr i32 %i.axm, 16
  %i.axo = trunc nuw i32 %i.axn to i16
  store i16 %i.axo, ptr %i.axl, align 2, !tbaa !89
  %i.axp = getelementptr inbounds nuw i8, ptr %.41468.us.i, i64 8 ; 2 uses
  %indvars.iv.next1784.i = add nuw nsw i64 %indvars.iv1783.i, 1 ; 2 uses
  %exitcond1787.not.i = icmp eq i64 %indvars.iv.next1784.i, %wide.trip.count1774.i
  br i1 %exitcond1787.not.i, label %._crit_edge1470.us.i, label %.preheader1128.us.i, !llvm.loop !503

._crit_edge1470.us.i:                             ; preds = %.preheader1128.us.i, %middle.block357
  %.lcssa147 = phi ptr [ %i.awl, %middle.block357 ], [ %i.axp, %.preheader1128.us.i ] ; 2 uses
  %indvars.iv.next1789.i = add nuw nsw i64 %indvars.iv1788.i, 4 ; 2 uses
  %i.axq = trunc i64 %indvars.iv.next1789.i to i32 ; 2 uses
  %i.axr = or i32 %i.axq, 3
  %i.axs = icmp slt i32 %i.axr, %i.k
  br i1 %i.axs, label %.preheader1132.us.i, label %.preheader1135.i, !llvm.loop !504

.preheader1135.i:                                 ; preds = %._crit_edge1470.us.i, %.preheader1132.preheader.i, %.preheader1136.i
  %.3451.lcssa.i = phi ptr [ %.0448.lcssa.i, %.preheader1136.i ], [ %.0448.lcssa.i, %.preheader1132.preheader.i ], [ %.lcssa147, %._crit_edge1470.us.i ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0447.lcssa.i, %.preheader1136.i ], [ %i.awg, %.preheader1132.preheader.i ], [ %i.axq, %._crit_edge1470.us.i ] ; 5 uses
  %i.axt = or disjoint i32 %.1.lcssa.i, 1
  %i.axu = icmp slt i32 %i.axt, %i.k
  br i1 %i.axu, label %.preheader1131.lr.ph.i, label %.preheader1134.i

.preheader1131.lr.ph.i:                           ; preds = %.preheader1135.i
  %i.axv = load i32, ptr %i.ajl, align 4
  %i.axw = load ptr, ptr %3, align 8
  %i.axx = load i64, ptr %i.ajm, align 8
  %i.axy = mul i64 %i.axx, %indvars.iv1810.i
  %i.axz = load i64, ptr %i.ajn, align 8          ; 2 uses
  %i.aya = mul i64 %i.axy, %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axw, i64 %i.aya ; 2 uses
  %i.ayc = sext i32 %i.axv to i64
  %factor.op.mul1479.i = mul i64 %i.axz, %i.ayc   ; 2 uses
  br i1 %i.ajk, label %.preheader1131.us.preheader.i, label %.preheader1131.preheader.i

.preheader1131.preheader.i:                       ; preds = %.preheader1131.lr.ph.i
  %i.ayd = add i32 %.1.lcssa.i, 2
  %i.aye = sub i32 %i.ajr, %.1.lcssa.i
  %i.ayf = and i32 %i.aye, -2
  %i.ayg = add i32 %i.ayd, %i.ayf
  br label %.preheader1134.i

.preheader1131.us.preheader.i:                    ; preds = %.preheader1131.lr.ph.i
  %i.ayh = zext i32 %.1.lcssa.i to i64
  br label %.preheader1131.us.i

.preheader1131.us.i:                              ; preds = %._crit_edge1486.us.i, %.preheader1131.us.preheader.i
  %indvars.iv1799.i = phi i64 [ %i.ayh, %.preheader1131.us.preheader.i ], [ %indvars.iv.next1800.i, %._crit_edge1486.us.i ] ; 3 uses
  %.61488.us.i = phi ptr [ %.3451.lcssa.i, %.preheader1131.us.preheader.i ], [ %.lcssa149, %._crit_edge1486.us.i ] ; 3 uses
  %.reass1480.us.i = mul i64 %indvars.iv1799.i, %factor.op.mul1479.i ; 2 uses
  %i.ayi = add nuw nsw i64 %indvars.iv1799.i, 1
  %.reass1480.us.1.i = mul i64 %i.ayi, %factor.op.mul1479.i ; 2 uses
  br i1 %min.iters.check330, label %.preheader.us.i.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %.preheader1131.us.i
  %i.ayj = getelementptr i8, ptr %.61488.us.i, i64 %i.ajv ; 2 uses
  br label %vector.body333

vector.body333:                                   ; preds = %vector.body333, %vector.ph331
  %index334 = phi i64 [ 0, %vector.ph331 ], [ %index.next339, %vector.body333 ] ; 3 uses
  %i.ayk = shl i64 %index334, 2
  %next.gep335 = getelementptr i8, ptr %.61488.us.i, i64 %i.ayk
  %i.ayl = getelementptr [4 x i8], ptr %i.ayb, i64 %index334 ; 2 uses
  %i.aym = getelementptr i8, ptr %i.ayl, i64 %.reass1480.us.i
  %wide.load336 = load <4 x i32>, ptr %i.aym, align 4, !tbaa !39
  %i.ayn = lshr <4 x i32> %wide.load336, splat (i32 16)
  %i.ayo = getelementptr i8, ptr %i.ayl, i64 %.reass1480.us.1.i
  %wide.load337 = load <4 x i32>, ptr %i.ayo, align 4, !tbaa !39
  %i.ayp = lshr <4 x i32> %wide.load337, splat (i32 16)
  %i.ayq = shufflevector <4 x i32> %i.ayn, <4 x i32> %i.ayp, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec338 = trunc nuw <8 x i32> %i.ayq to <8 x i16>
  store <8 x i16> %interleaved.vec338, ptr %next.gep335, align 2, !tbaa !89
  %index.next339 = add nuw i64 %index334, 4       ; 2 uses
  %i.ayr = icmp eq i64 %index.next339, %n.vec332
  br i1 %i.ayr, label %middle.block340, label %vector.body333, !llvm.loop !505

middle.block340:                                  ; preds = %vector.body333
  br i1 %cmp.n341, label %._crit_edge1486.us.i, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader1131.us.i, %middle.block340
  %indvars.iv1794.i.ph = phi i64 [ 0, %.preheader1131.us.i ], [ %n.vec332, %middle.block340 ]
  %.71484.us.i.ph = phi ptr [ %.61488.us.i, %.preheader1131.us.i ], [ %i.ayj, %middle.block340 ]
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv1794.i = phi i64 [ %indvars.iv.next1795.i, %.preheader.us.i ], [ %indvars.iv1794.i.ph, %.preheader.us.i.preheader ] ; 2 uses
  %.71484.us.i = phi ptr [ %i.ayz, %.preheader.us.i ], [ %.71484.us.i.ph, %.preheader.us.i.preheader ] ; 3 uses
  %invariant.gep1481.us.i = getelementptr [4 x i8], ptr %i.ayb, i64 %indvars.iv1794.i ; 2 uses
  %gep.us1492.i = getelementptr i8, ptr %invariant.gep1481.us.i, i64 %.reass1480.us.i
  %i.ays = load i32, ptr %gep.us1492.i, align 4, !tbaa !39
  %i.ayt = lshr i32 %i.ays, 16
  %i.ayu = trunc nuw i32 %i.ayt to i16
  store i16 %i.ayu, ptr %.71484.us.i, align 2, !tbaa !89
  %i.ayv = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 2
  %gep.us1492.1.i = getelementptr i8, ptr %invariant.gep1481.us.i, i64 %.reass1480.us.1.i
  %i.ayw = load i32, ptr %gep.us1492.1.i, align 4, !tbaa !39
  %i.ayx = lshr i32 %i.ayw, 16
  %i.ayy = trunc nuw i32 %i.ayx to i16
  store i16 %i.ayy, ptr %i.ayv, align 2, !tbaa !89
  %i.ayz = getelementptr inbounds nuw i8, ptr %.71484.us.i, i64 4 ; 2 uses
  %indvars.iv.next1795.i = add nuw nsw i64 %indvars.iv1794.i, 1 ; 2 uses
  %exitcond1798.not.i = icmp eq i64 %indvars.iv.next1795.i, %wide.trip.count1774.i
  br i1 %exitcond1798.not.i, label %._crit_edge1486.us.i, label %.preheader.us.i, !llvm.loop !506

._crit_edge1486.us.i:                             ; preds = %.preheader.us.i, %middle.block340
  %.lcssa149 = phi ptr [ %i.ayj, %middle.block340 ], [ %i.ayz, %.preheader.us.i ] ; 2 uses
  %indvars.iv.next1800.i = add nuw nsw i64 %indvars.iv1799.i, 2 ; 2 uses
  %i.aza = trunc i64 %indvars.iv.next1800.i to i32 ; 2 uses
  %i.azb = or i32 %i.aza, 1
  %i.azc = icmp slt i32 %i.azb, %i.k
  br i1 %i.azc, label %.preheader1131.us.i, label %.preheader1134.i, !llvm.loop !507

.preheader1134.i:                                 ; preds = %._crit_edge1486.us.i, %.preheader1131.preheader.i, %.preheader1135.i
  %.6.lcssa.i = phi ptr [ %.3451.lcssa.i, %.preheader1135.i ], [ %.3451.lcssa.i, %.preheader1131.preheader.i ], [ %.lcssa149, %._crit_edge1486.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %.preheader1135.i ], [ %i.ayg, %.preheader1131.preheader.i ], [ %i.aza, %._crit_edge1486.us.i ] ; 2 uses
  %i.azd = icmp slt i32 %.2.lcssa.i, %i.k
  br i1 %i.azd, label %.preheader1130.lr.ph.i, label %._crit_edge1501.split.i

.preheader1130.lr.ph.i:                           ; preds = %.preheader1134.i
  %i.aze = load i32, ptr %i.ajl, align 4
  %i.azf = load ptr, ptr %3, align 8
  %i.azg = load i64, ptr %i.ajm, align 8
  %i.azh = mul i64 %i.azg, %indvars.iv1810.i
  %i.azi = load i64, ptr %i.ajn, align 8          ; 2 uses
  %i.azj = mul i64 %i.azh, %i.azi
  %i.azk = getelementptr inbounds nuw i8, ptr %i.azf, i64 %i.azj
  %i.azl = sext i32 %i.aze to i64
  %factor.op.mul1502.i = mul i64 %i.azi, %i.azl
  br i1 %i.ajk, label %.preheader1130.preheader.i, label %._crit_edge1501.split.i

.preheader1130.preheader.i:                       ; preds = %.preheader1130.lr.ph.i
  %i.azm = zext i32 %.2.lcssa.i to i64
  br label %iter.check314

iter.check314:                                    ; preds = %._crit_edge1497.i, %.preheader1130.preheader.i
  %indvars.iv1807.i = phi i64 [ %i.azm, %.preheader1130.preheader.i ], [ %indvars.iv.next1808.i, %._crit_edge1497.i ] ; 2 uses
  %.91499.i = phi ptr [ %.6.lcssa.i, %.preheader1130.preheader.i ], [ %.lcssa151, %._crit_edge1497.i ] ; 5 uses
  %.reass1503.i = mul i64 %factor.op.mul1502.i, %indvars.iv1807.i
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azk, i64 %.reass1503.i ; 3 uses
  br i1 %min.iters.check297, label %.noexc754.i.preheader, label %vector.main.loop.iter.check298

vector.main.loop.iter.check298:                   ; preds = %iter.check314
  br i1 %min.iters.check299, label %vec.epilog.ph318, label %vector.ph300

vector.ph300:                                     ; preds = %vector.main.loop.iter.check298
  %i.azo = getelementptr i8, ptr %.91499.i, i64 %i.ajx ; 2 uses
  br label %vector.body302

vector.body302:                                   ; preds = %vector.body302, %vector.ph300
  %index303 = phi i64 [ 0, %vector.ph300 ], [ %index.next309, %vector.body302 ] ; 3 uses
  %i.azp = shl i64 %index303, 1
  %next.gep304 = getelementptr i8, ptr %.91499.i, i64 %i.azp ; 4 uses
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %index303 ; 4 uses
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 32
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azq, i64 64
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azq, i64 96
  %wide.load305 = load <8 x i32>, ptr %i.azq, align 4, !tbaa !39
  %wide.load306 = load <8 x i32>, ptr %i.azr, align 4, !tbaa !39
  %wide.load307 = load <8 x i32>, ptr %i.azs, align 4, !tbaa !39
  %wide.load308 = load <8 x i32>, ptr %i.azt, align 4, !tbaa !39
  %i.azu = lshr <8 x i32> %wide.load305, splat (i32 16)
  %i.azv = lshr <8 x i32> %wide.load306, splat (i32 16)
  %i.azw = lshr <8 x i32> %wide.load307, splat (i32 16)
  %i.azx = lshr <8 x i32> %wide.load308, splat (i32 16)
  %i.azy = trunc nuw <8 x i32> %i.azu to <8 x i16>
  %i.azz = trunc nuw <8 x i32> %i.azv to <8 x i16>
  %i.baa = trunc nuw <8 x i32> %i.azw to <8 x i16>
  %i.bab = trunc nuw <8 x i32> %i.azx to <8 x i16>
  %i.bac = getelementptr i8, ptr %next.gep304, i64 16
  %i.bad = getelementptr i8, ptr %next.gep304, i64 32
  %i.bae = getelementptr i8, ptr %next.gep304, i64 48
  store <8 x i16> %i.azy, ptr %next.gep304, align 2, !tbaa !89
  store <8 x i16> %i.azz, ptr %i.bac, align 2, !tbaa !89
  store <8 x i16> %i.baa, ptr %i.bad, align 2, !tbaa !89
  store <8 x i16> %i.bab, ptr %i.bae, align 2, !tbaa !89
  %index.next309 = add nuw i64 %index303, 32      ; 2 uses
  %i.baf = icmp eq i64 %index.next309, %n.vec301
  br i1 %i.baf, label %middle.block310, label %vector.body302, !llvm.loop !508

middle.block310:                                  ; preds = %vector.body302
  br i1 %cmp.n311, label %._crit_edge1497.i, label %vec.epilog.iter.check316

vec.epilog.iter.check316:                         ; preds = %middle.block310
  br i1 %min.epilog.iters.check317, label %.noexc754.i.preheader, label %vec.epilog.ph318, !prof !68

vec.epilog.ph318:                                 ; preds = %vector.main.loop.iter.check298, %vec.epilog.iter.check316
  %vec.epilog.resume.val312 = phi i64 [ %n.vec301, %vec.epilog.iter.check316 ], [ 0, %vector.main.loop.iter.check298 ]
  %i.bag = getelementptr i8, ptr %.91499.i, i64 %i.ajy ; 2 uses
  br label %vec.epilog.vector.body320

vec.epilog.vector.body320:                        ; preds = %vec.epilog.vector.body320, %vec.epilog.ph318
  %index321 = phi i64 [ %vec.epilog.resume.val312, %vec.epilog.ph318 ], [ %index.next324, %vec.epilog.vector.body320 ] ; 3 uses
  %i.bah = shl i64 %index321, 1
  %next.gep322 = getelementptr i8, ptr %.91499.i, i64 %i.bah
  %i.bai = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %index321
  %wide.load323 = load <4 x i32>, ptr %i.bai, align 4, !tbaa !39
  %i.baj = lshr <4 x i32> %wide.load323, splat (i32 16)
  %i.bak = trunc nuw <4 x i32> %i.baj to <4 x i16>
  store <4 x i16> %i.bak, ptr %next.gep322, align 2, !tbaa !89
  %index.next324 = add nuw i64 %index321, 4       ; 2 uses
  %i.bal = icmp eq i64 %index.next324, %n.vec319
  br i1 %i.bal, label %vec.epilog.middle.block325, label %vec.epilog.vector.body320, !llvm.loop !509

vec.epilog.middle.block325:                       ; preds = %vec.epilog.vector.body320
  br i1 %cmp.n326, label %._crit_edge1497.i, label %.noexc754.i.preheader

.noexc754.i.preheader:                            ; preds = %iter.check314, %vec.epilog.iter.check316, %vec.epilog.middle.block325
  %indvars.iv1802.i.ph = phi i64 [ 0, %iter.check314 ], [ %n.vec301, %vec.epilog.iter.check316 ], [ %n.vec319, %vec.epilog.middle.block325 ]
  %.101495.i.ph = phi ptr [ %.91499.i, %iter.check314 ], [ %i.azo, %vec.epilog.iter.check316 ], [ %i.bag, %vec.epilog.middle.block325 ]
  br label %.noexc754.i

._crit_edge1497.i:                                ; preds = %.noexc754.i, %vec.epilog.middle.block325, %middle.block310
  %.lcssa151 = phi ptr [ %i.bag, %vec.epilog.middle.block325 ], [ %i.azo, %middle.block310 ], [ %i.bas, %.noexc754.i ]
  %indvars.iv.next1808.i = add nuw nsw i64 %indvars.iv1807.i, 1 ; 2 uses
  %i.bam = trunc nuw i64 %indvars.iv.next1808.i to i32
  %i.ban = icmp sgt i32 %i.k, %i.bam
  br i1 %i.ban, label %iter.check314, label %._crit_edge1501.split.i, !llvm.loop !510

.noexc754.i:                                      ; preds = %.noexc754.i.preheader, %.noexc754.i
  %indvars.iv1802.i = phi i64 [ %indvars.iv.next1803.i, %.noexc754.i ], [ %indvars.iv1802.i.ph, %.noexc754.i.preheader ] ; 2 uses
  %.101495.i = phi ptr [ %i.bas, %.noexc754.i ], [ %.101495.i.ph, %.noexc754.i.preheader ] ; 2 uses
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %i.azn, i64 %indvars.iv1802.i
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !39
  %i.baq = lshr i32 %i.bap, 16
  %i.bar = trunc nuw i32 %i.baq to i16
  store i16 %i.bar, ptr %.101495.i, align 2, !tbaa !89
  %i.bas = getelementptr inbounds nuw i8, ptr %.101495.i, i64 2 ; 2 uses
  %indvars.iv.next1803.i = add nuw nsw i64 %indvars.iv1802.i, 1 ; 2 uses
  %exitcond1806.not.i = icmp eq i64 %indvars.iv.next1803.i, %wide.trip.count1774.i
  br i1 %exitcond1806.not.i, label %._crit_edge1497.i, label %.noexc754.i, !llvm.loop !511

._crit_edge1501.split.i:                          ; preds = %._crit_edge1497.i, %.preheader1130.lr.ph.i, %.preheader1134.i
  %indvars.iv.next1811.i = add nuw nsw i64 %indvars.iv1810.i, 1 ; 2 uses
  %i.bat = trunc nuw i64 %indvars.iv.next1811.i to i32
  %i.bau = icmp sgt i32 %i.j, %i.bat
  br i1 %i.bau, label %.noexc761.i, label %._crit_edge1505.i, !llvm.loop !512

end_hunk_10
begin_hunk_11_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.pv = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !89
  %i.px = zext i16 %i.pw to i32
  %i.py = shl nuw i32 %i.px, 16
  %i.pz = insertelement <4 x i32> poison, i32 %i.py, i64 0
  %i.qa = bitcast <4 x i32> %i.pz to <4 x float>
  %i.qb = shufflevector <4 x float> %i.qa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qc = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %i.qd = load i16, ptr %i.qc, align 2, !tbaa !89
  %i.qe = zext i16 %i.qd to i32
  %i.qf = shl nuw i32 %i.qe, 16
  %i.qg = insertelement <4 x i32> poison, i32 %i.qf, i64 0
  %i.qh = bitcast <4 x i32> %i.qg to <4 x float>
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.qj = getelementptr inbounds nuw i8, ptr %i.on, i64 6
  br label %.sink.split.i

_ZN4ncnn3MatD2Ev.exit976.us.us.i:                 ; preds = %bb.ac
  %i.qk = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !624
  %i.ql = load ptr, ptr %1, align 8, !tbaa !20, !noalias !624
  %i.qm = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !624
  %i.qn = mul i64 %i.qm, %i.ka
  %i.qo = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !624 ; 2 uses
  %i.qp = mul i64 %i.qn, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.qp
  %i.qr = sext i32 %i.qk to i64
  %i.qs = mul nsw i64 %i.qr, %i.kh
  %i.qt = mul i64 %i.qs, %i.qo
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qt
  %i.qv = shl nsw i32 %i.km, 3
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [2 x i8], ptr %i.qu, i64 %i.qw ; 5 uses
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !89
  %i.qz = zext i16 %i.qy to i32
  %i.ra = shl nuw i32 %i.qz, 16
  %i.rb = insertelement <4 x i32> poison, i32 %i.ra, i64 0
  %i.rc = bitcast <4 x i32> %i.rb to <4 x float>
  %i.rd = shufflevector <4 x float> %i.rc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.re = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !89
  %i.rg = zext i16 %i.rf to i32
  %i.rh = shl nuw i32 %i.rg, 16
  %i.ri = insertelement <4 x i32> poison, i32 %i.rh, i64 0
  %i.rj = bitcast <4 x i32> %i.ri to <4 x float>
  %i.rk = shufflevector <4 x float> %i.rj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !89
  %i.rn = zext i16 %i.rm to i32
  %i.ro = shl nuw i32 %i.rn, 16
  %i.rp = insertelement <4 x i32> poison, i32 %i.ro, i64 0
  %i.rq = bitcast <4 x i32> %i.rp to <4 x float>
  %i.rr = shufflevector <4 x float> %i.rq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qx, i64 6
  %i.rt = load <4 x i16>, ptr %i.rs, align 2, !tbaa !89
  %i.ru = zext <4 x i16> %i.rt to <4 x i32>
  %i.rv = shl nuw <4 x i32> %i.ru, splat (i32 16) ; 4 uses
  %i.rw = bitcast <4 x i32> %i.rv to <4 x float>
  %i.rx = shufflevector <4 x float> %i.rw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ry = bitcast <4 x i32> %i.rv to <4 x float>
  %i.rz = shufflevector <4 x float> %i.ry, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.sa = bitcast <4 x i32> %i.rv to <4 x float>
  %i.sb = shufflevector <4 x float> %i.sa, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.sc = bitcast <4 x i32> %i.rv to <4 x float>
  %i.sd = shufflevector <4 x float> %i.sc, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.se = getelementptr inbounds nuw i8, ptr %i.qx, i64 14
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit976.us.us.i, %_ZN4ncnn3MatD2Ev.exit975.us.us.i, %_ZN4ncnn3MatD2Ev.exit973.us.us.i
  %.sink3719.in.i = phi ptr [ %i.se, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qj, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nv, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3711.i = phi <4 x float> [ %i.rd, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ot, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lj, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3704.i = phi <4 x float> [ %i.rk, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pa, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.lt, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3697.i = phi <4 x float> [ %i.rr, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.ph, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.md, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3690.i = phi <4 x float> [ %i.rx, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.po, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.mn, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3682.i = phi <4 x float> [ %i.rz, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.pu, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.mx, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3674.i = phi <4 x float> [ %i.sb, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qb, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nh, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3666.i = phi <4 x float> [ %i.sd, %_ZN4ncnn3MatD2Ev.exit976.us.us.i ], [ %i.qi, %_ZN4ncnn3MatD2Ev.exit975.us.us.i ], [ %i.nr, %_ZN4ncnn3MatD2Ev.exit973.us.us.i ]
  %.sink3719.i = load i16, ptr %.sink3719.in.i, align 2, !tbaa !89
  %i.sf = zext i16 %.sink3719.i to i32
  %i.sg = shl nuw i32 %i.sf, 16
  %i.sh = insertelement <4 x i32> poison, i32 %i.sg, i64 0
  %i.si = bitcast <4 x i32> %i.sh to <4 x float>
  %i.sj = shufflevector <4 x float> %i.si, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sk = load i64, ptr %i.kq, align 1, !tbaa !82
  %i.sl = insertelement <2 x i64> poison, i64 %i.sk, i64 0
  %i.sm = bitcast <2 x i64> %i.sl to <8 x i16>
  %i.sn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.sm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.so = bitcast <8 x i16> %i.sn to <4 x float>
  %i.sp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3711.i, <4 x float> nofpclass(nan inf) %i.so, <4 x float> nofpclass(nan inf) %.323852587.us.us.i)
  %i.sq = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.sr = load i64, ptr %i.sq, align 1, !tbaa !82
  %i.ss = insertelement <2 x i64> poison, i64 %i.sr, i64 0
  %i.st = bitcast <2 x i64> %i.ss to <8 x i16>
  %i.su = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.st, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sv = bitcast <8 x i16> %i.su to <4 x float>
  %i.sw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3704.i, <4 x float> nofpclass(nan inf) %i.sv, <4 x float> nofpclass(nan inf) %.224012586.us.us.i)
  %i.sx = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.sy = load i64, ptr %i.sx, align 1, !tbaa !82
  %i.sz = insertelement <2 x i64> poison, i64 %i.sy, i64 0
  %i.ta = bitcast <2 x i64> %i.sz to <8 x i16>
  %i.tb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ta, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tc = bitcast <8 x i16> %i.tb to <4 x float>
  %i.td = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3697.i, <4 x float> nofpclass(nan inf) %i.tc, <4 x float> nofpclass(nan inf) %.224162585.us.us.i)
  %i.te = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.tf = load i64, ptr %i.te, align 1, !tbaa !82
  %i.tg = insertelement <2 x i64> poison, i64 %i.tf, i64 0
  %i.th = bitcast <2 x i64> %i.tg to <8 x i16>
  %i.ti = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.th, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tj = bitcast <8 x i16> %i.ti to <4 x float>
  %i.tk = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3690.i, <4 x float> nofpclass(nan inf) %i.tj, <4 x float> nofpclass(nan inf) %.224262584.us.us.i)
  %i.tl = getelementptr inbounds nuw i8, ptr %i.kq, i64 32
  %i.tm = load i64, ptr %i.tl, align 1, !tbaa !82
  %i.tn = insertelement <2 x i64> poison, i64 %i.tm, i64 0
  %i.to = bitcast <2 x i64> %i.tn to <8 x i16>
  %i.tp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.to, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tq = bitcast <8 x i16> %i.tp to <4 x float>
  %i.tr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3682.i, <4 x float> nofpclass(nan inf) %i.tq, <4 x float> nofpclass(nan inf) %i.sp)
  %i.ts = getelementptr inbounds nuw i8, ptr %i.kq, i64 40
  %i.tt = load i64, ptr %i.ts, align 1, !tbaa !82
  %i.tu = insertelement <2 x i64> poison, i64 %i.tt, i64 0
  %i.tv = bitcast <2 x i64> %i.tu to <8 x i16>
  %i.tw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.tv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.tx = bitcast <8 x i16> %i.tw to <4 x float>
  %i.ty = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3674.i, <4 x float> nofpclass(nan inf) %i.tx, <4 x float> nofpclass(nan inf) %i.sw)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.kq, i64 48
  %i.ua = load i64, ptr %i.tz, align 1, !tbaa !82
  %i.ub = insertelement <2 x i64> poison, i64 %i.ua, i64 0
  %i.uc = bitcast <2 x i64> %i.ub to <8 x i16>
  %i.ud = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ue = bitcast <8 x i16> %i.ud to <4 x float>
  %i.uf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink3666.i, <4 x float> nofpclass(nan inf) %i.ue, <4 x float> nofpclass(nan inf) %i.td)
  %i.ug = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.uh = load i64, ptr %i.ug, align 1, !tbaa !82
  %i.ui = insertelement <2 x i64> poison, i64 %i.uh, i64 0
  %i.uj = bitcast <2 x i64> %i.ui to <8 x i16>
  %i.uk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ul = bitcast <8 x i16> %i.uk to <4 x float>
  %i.um = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.sj, <4 x float> nofpclass(nan inf) %i.ul, <4 x float> nofpclass(nan inf) %i.tk)
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac, %bb.ab, %bb.aa
  %.32427.us.us.i = phi nsz <4 x float> [ %.224262584.us.us.i, %bb.aa ], [ %.224262584.us.us.i, %bb.ac ], [ %.224262584.us.us.i, %bb.ab ], [ %i.um, %.sink.split.i ] ; 2 uses
  %.32417.us.us.i = phi nsz <4 x float> [ %.224162585.us.us.i, %bb.aa ], [ %.224162585.us.us.i, %bb.ac ], [ %.224162585.us.us.i, %bb.ab ], [ %i.uf, %.sink.split.i ] ; 2 uses
  %.32402.us.us.i = phi nsz <4 x float> [ %.224012586.us.us.i, %bb.aa ], [ %.224012586.us.us.i, %bb.ac ], [ %.224012586.us.us.i, %bb.ab ], [ %i.ty, %.sink.split.i ] ; 2 uses
  %.42386.us.us.i = phi nsz <4 x float> [ %.323852587.us.us.i, %bb.aa ], [ %.323852587.us.us.i, %bb.ac ], [ %.323852587.us.us.i, %bb.ab ], [ %i.tr, %.sink.split.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jq
  br i1 %exitcond.not.i, label %..loopexit2574_crit_edge.us.us.i, label %bb.aa, !llvm.loop !535

..loopexit2574_crit_edge.us.us.i:                 ; preds = %bb.ad, %bb.z, %.lr.ph2597.split.us.us.i
  %.42428.us.us.i = phi nsz <4 x float> [ %.124252592.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124252592.us.us.i, %bb.z ], [ %.32427.us.us.i, %bb.ad ] ; 2 uses
  %.42418.us.us.i = phi nsz <4 x float> [ %.124152593.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124152593.us.us.i, %bb.z ], [ %.32417.us.us.i, %bb.ad ] ; 2 uses
  %.42403.us.us.i = phi nsz <4 x float> [ %.124002594.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.124002594.us.us.i, %bb.z ], [ %.32402.us.us.i, %bb.ad ] ; 2 uses
  %.5.us.us.i = phi nsz <4 x float> [ %.223842595.us.us.i, %.lr.ph2597.split.us.us.i ], [ %.223842595.us.us.i, %bb.z ], [ %.42386.us.us.i, %bb.ad ] ; 2 uses
  %indvars.iv.next3337.i = add nuw nsw i64 %indvars.iv3336.i, 1 ; 2 uses
  %exitcond3340.not.i = icmp eq i64 %indvars.iv.next3337.i, %wide.trip.count3339.i
  br i1 %exitcond3340.not.i, label %._crit_edge.us.i, label %.lr.ph2597.split.us.us.i, !llvm.loop !536

._crit_edge.us.i:                                 ; preds = %..loopexit2574_crit_edge.us.us.i, %.preheader2578.us.i
  %.us-phi.us.i = phi <4 x float> [ %.024242607.us.i, %.preheader2578.us.i ], [ %.42428.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2604.us.i = phi <4 x float> [ %.024142608.us.i, %.preheader2578.us.i ], [ %.42418.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2605.us.i = phi <4 x float> [ %.023992609.us.i, %.preheader2578.us.i ], [ %.42403.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %.us-phi2606.us.i = phi <4 x float> [ %.123832610.us.i, %.preheader2578.us.i ], [ %.5.us.us.i, %..loopexit2574_crit_edge.us.us.i ] ; 2 uses
  %i.un = getelementptr inbounds [2 x i8], ptr %.07512612.us.i, i64 %i.ir ; 2 uses
  %indvars.iv.next3342.i = add nuw nsw i64 %indvars.iv3341.i, 8 ; 2 uses
  %i.uo = icmp slt i64 %indvars.iv.next3342.i, %invariant.op3656.i
  br i1 %i.uo, label %.preheader2578.us.i, label %.preheader2581.i, !llvm.loop !537

.preheader2581.i:                                 ; preds = %._crit_edge.us.i, %.preheader2578.preheader.i, %_ZN4ncnn3MatD2Ev.exit977.i
  %.02424.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02414.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi2604.us.i, %._crit_edge.us.i ] ; 4 uses
  %.02399.lcssa.i = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit977.i ], [ zeroinitializer, %.preheader2578.preheader.i ], [ %.us-phi2605.us.i, %._crit_edge.us.i ] ; 4 uses
  %.12383.lcssa.i = phi <4 x float> [ %.02382.i, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %.02382.i, %.preheader2578.preheader.i ], [ %.us-phi2606.us.i, %._crit_edge.us.i ] ; 4 uses
  %.0756.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %i.ij, %.preheader2578.preheader.i ], [ %i.ij, %._crit_edge.us.i ] ; 7 uses
  %.0751.lcssa.i = phi ptr [ %i.jh, %_ZN4ncnn3MatD2Ev.exit977.i ], [ %scevgep3334.i, %.preheader2578.preheader.i ], [ %i.un, %._crit_edge.us.i ] ; 4 uses
  %i.up = or disjoint i32 %.0756.lcssa.i, 3       ; 2 uses
  %i.uq = icmp slt i32 %i.up, %i.he
  br i1 %i.uq, label %.preheader2577.lr.ph.i, label %.preheader2580.i

.preheader2577.lr.ph.i:                           ; preds = %.preheader2581.i
  %i.ur = load i32, ptr %i.d, align 4             ; 2 uses
  %i.us = load i32, ptr %i.j, align 4
  %invariant.op2678.i = sub i32 %.neg2536.i, %i.us ; 2 uses
  %i.ut = load i32, ptr %i.f, align 4             ; 4 uses
  %i.uu = load i32, ptr %i.a, align 4
  %.fr.i = freeze i32 %i.uu                       ; 2 uses
  %i.uv = load i32, ptr %i.c, align 4             ; 2 uses
  %i.uw = load i32, ptr %i.i, align 4
  %.neg2534.i = add nuw nsw i32 %.07482801.i, 1
  %invariant.op2642.i = sub i32 %.neg2534.i, %i.uw ; 2 uses
  %i.ux = load i32, ptr %i.e, align 4             ; 4 uses
  br i1 %i.io, label %.preheader2577.lr.ph.split.us.i, label %.preheader2577.preheader.i

.preheader2577.preheader.i:                       ; preds = %.preheader2577.lr.ph.i
  %i.uy = sub i32 %i.il, %.0756.lcssa.i           ; 2 uses
  %i.uz = lshr i32 %i.uy, 1
  %i.va = and i32 %i.uz, 2147483646
  %narrow3632.i = add nuw i32 %i.va, 2
  %i.vb = zext i32 %narrow3632.i to i64
  %i.vc = mul nsw i64 %i.vb, %i.it
  %scevgep3344.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vc
  %i.vd = add i32 %.0756.lcssa.i, 4
  %i.ve = and i32 %i.uy, -4
  %i.vf = add i32 %i.vd, %i.ve
  br label %.preheader2580.i

.preheader2577.lr.ph.split.us.i:                  ; preds = %.preheader2577.lr.ph.i
  %i.vg = icmp sgt i32 %.fr.i, 0
  br i1 %i.vg, label %.preheader2577.us.us.preheader.i, label %.preheader2577.us.preheader.i

.preheader2577.us.preheader.i:                    ; preds = %.preheader2577.lr.ph.split.us.i
  %i.vh = sub i32 %i.il, %.0756.lcssa.i           ; 2 uses
  %i.vi = lshr i32 %i.vh, 1
  %i.vj = and i32 %i.vi, 2147483646
  %narrow3633.i = add nuw i32 %i.vj, 2
  %i.vk = zext i32 %narrow3633.i to i64
  %i.vl = mul nsw i64 %i.vk, %i.it
  %scevgep3345.i = getelementptr i8, ptr %.0751.lcssa.i, i64 %i.vl
  %i.vm = add i32 %.0756.lcssa.i, 4
  %i.vn = and i32 %i.vh, -4
  %i.vo = add i32 %i.vm, %i.vn
  br label %.preheader2580.i

.preheader2577.us.us.preheader.i:                 ; preds = %.preheader2577.lr.ph.split.us.i
  %i.vp = zext nneg i32 %.fr.i to i64             ; 4 uses
  %i.vq = zext i32 %.0756.lcssa.i to i64
  %i.vr = zext nneg i32 %i.up to i64
  br label %.preheader2577.us.us.i

.preheader2577.us.us.i:                           ; preds = %._crit_edge.split.us.us2714.us.i, %.preheader2577.us.us.preheader.i
  %indvars.iv3361.i = phi i64 [ %i.vq, %.preheader2577.us.us.preheader.i ], [ %indvars.iv.next3362.i, %._crit_edge.split.us.us2714.us.i ] ; 5 uses
  %i.vs = phi i64 [ %i.vr, %.preheader2577.us.us.preheader.i ], [ %i.acr, %._crit_edge.split.us.us2714.us.i ]
  %.17522699.us.us.i = phi ptr [ %.0751.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %i.acq, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.623872697.us.us.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi76, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524042696.us.us.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi75, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524192695.us.us.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi74, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %.524292694.us.us.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2577.us.us.preheader.i ], [ %.us-phi, %._crit_edge.split.us.us2714.us.i ] ; 3 uses
  %i.vt = add nuw nsw i64 %indvars.iv3361.i, 1
  %i.vu = add nuw nsw i64 %indvars.iv3361.i, 2
  %i.vv = lshr exact i64 %indvars.iv3361.i, 2
  switch i32 %.fr2667.i, label %._crit_edge.split.us.us2714.us.i [
    i32 4, label %.preheader2577.us.us.i.split.us
    i32 1, label %.preheader2577.us.us.i.split.us77
  ]

.preheader2577.us.us.i.split.us:                  ; preds = %.preheader2577.us.us.i, %..loopexit2572_crit_edge.us.us.us.i.us
  %indvars.iv3356.i.us = phi i64 [ %indvars.iv.next3357.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ 0, %.preheader2577.us.us.i ] ; 3 uses
  %.72671.us.us.us.i.us = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624052670.us.us.us.i.us = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624202669.us.us.us.i.us = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624302668.us.us.us.i.us = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %i.vw = trunc i64 %indvars.iv3356.i.us to i32
  %i.vx = mul i32 %i.ur, %i.vw
  %.reass2679.us.us.us.i.us = add i32 %i.vx, %invariant.op2678.i ; 3 uses
  %i.vy = icmp slt i32 %.reass2679.us.us.us.i.us, 0
  br i1 %i.vy, label %..loopexit2572_crit_edge.us.us.us.i.us, label %bb.ae

bb.ae:                                            ; preds = %.preheader2577.us.us.i.split.us
  %i.vz = srem i32 %.reass2679.us.us.us.i.us, %i.ut
  %i.wa = sdiv i32 %.reass2679.us.us.us.i.us, %i.ut ; 2 uses
  %.not930.us.us.us.i.us = icmp eq i32 %i.vz, 0
  %.not931.us.us.us.i.us = icmp slt i32 %i.wa, %i.hg
  %or.cond302 = select i1 %.not930.us.us.us.i.us, i1 %.not931.us.us.us.i.us, i1 false
  br i1 %or.cond302, label %.preheader2571.us.us.us.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us

.preheader2571.us.us.us.i.us:                     ; preds = %bb.ae
  %i.wb = mul nuw nsw i64 %indvars.iv3356.i.us, %i.vp
  %i.wc = sext i32 %i.wa to i64
  br label %.lr.ph.split.us.us.us.us.i.us

.lr.ph.split.us.us.us.us.i.us:                    ; preds = %.preheader2571.us.us.us.i.us, %bb.ag
  %indvars.iv3351.i.us = phi i64 [ %indvars.iv.next3352.i.us, %bb.ag ], [ 0, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.823882636.us.us.us.us.i.us = phi <4 x float> [ %.92389.us.us.us.us.i.us, %bb.ag ], [ %.72671.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724062635.us.us.us.us.i.us = phi <4 x float> [ %.82407.us.us.us.us.i.us, %bb.ag ], [ %.624052670.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724212634.us.us.us.us.i.us = phi <4 x float> [ %.82422.us.us.us.us.i.us, %bb.ag ], [ %.624202669.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %.724312633.us.us.us.us.i.us = phi <4 x float> [ %.82432.us.us.us.us.i.us, %bb.ag ], [ %.624302668.us.us.us.i.us, %.preheader2571.us.us.us.i.us ] ; 3 uses
  %i.wd = trunc i64 %indvars.iv3351.i.us to i32
  %i.we = mul i32 %i.uv, %i.wd
  %.reass.us.us2680.us.us.i.us = add i32 %i.we, %invariant.op2642.i ; 3 uses
  %i.wf = icmp slt i32 %.reass.us.us2680.us.us.i.us, 0
  br i1 %i.wf, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.us.us.us.us.i.us
  %i.wg = srem i32 %.reass.us.us2680.us.us.i.us, %i.ux
  %i.wh = sdiv i32 %.reass.us.us2680.us.us.i.us, %i.ux ; 2 uses
  %.not932.us.us.us.us.i.us = icmp eq i32 %i.wg, 0
  %.not933.us.us.us.us.i.us = icmp slt i32 %i.wh, %i.hf
  %or.cond303 = select i1 %.not932.us.us.us.us.i.us, i1 %.not933.us.us.us.us.i.us, i1 false
  br i1 %or.cond303, label %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, label %bb.ag

_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us:        ; preds = %bb.af
  %i.wi = add nuw nsw i64 %indvars.iv3351.i.us, %i.wb
  %i.wj = shl i64 %i.wi, 4
  %i.wk = and i64 %i.wj, 4294967280
  %i.wl = getelementptr inbounds nuw [2 x i8], ptr %.17522699.us.us.i, i64 %i.wk ; 4 uses
  %i.wm = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !625
  %i.wn = load ptr, ptr %1, align 8, !tbaa !20, !noalias !625
  %i.wo = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !625
  %i.wp = mul i64 %i.wo, %i.vv
  %i.wq = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !625 ; 2 uses
  %i.wr = mul i64 %i.wp, %i.wq
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 %i.wr
  %i.wt = sext i32 %i.wm to i64
  %i.wu = mul nsw i64 %i.wt, %i.wc
  %i.wv = mul i64 %i.wu, %i.wq
  %i.ww = getelementptr inbounds nuw i8, ptr %i.ws, i64 %i.wv
  %i.wx = shl nsw i32 %i.wh, 2
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [2 x i8], ptr %i.ww, i64 %i.wy ; 4 uses
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !89
  %i.xb = zext i16 %i.xa to i32
  %i.xc = shl nuw i32 %i.xb, 16
  %i.xd = insertelement <4 x i32> poison, i32 %i.xc, i64 0
  %i.xe = bitcast <4 x i32> %i.xd to <4 x float>
  %i.xf = shufflevector <4 x float> %i.xe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wz, i64 2
  %i.xh = load i16, ptr %i.xg, align 2, !tbaa !89
  %i.xi = zext i16 %i.xh to i32
  %i.xj = shl nuw i32 %i.xi, 16
  %i.xk = insertelement <4 x i32> poison, i32 %i.xj, i64 0
  %i.xl = bitcast <4 x i32> %i.xk to <4 x float>
  %i.xm = shufflevector <4 x float> %i.xl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xn = getelementptr inbounds nuw i8, ptr %i.wz, i64 4
  %i.xo = load i16, ptr %i.xn, align 2, !tbaa !89
  %i.xp = zext i16 %i.xo to i32
  %i.xq = shl nuw i32 %i.xp, 16
  %i.xr = insertelement <4 x i32> poison, i32 %i.xq, i64 0
  %i.xs = bitcast <4 x i32> %i.xr to <4 x float>
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wz, i64 6
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !89
  %i.xw = zext i16 %i.xv to i32
  %i.xx = shl nuw i32 %i.xw, 16
  %i.xy = insertelement <4 x i32> poison, i32 %i.xx, i64 0
  %i.xz = bitcast <4 x i32> %i.xy to <4 x float>
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yb = load i64, ptr %i.wl, align 1, !tbaa !82
  %i.yc = insertelement <2 x i64> poison, i64 %i.yb, i64 0
  %i.yd = bitcast <2 x i64> %i.yc to <8 x i16>
  %i.ye = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yf = bitcast <8 x i16> %i.ye to <4 x float>
  %i.yg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xf, <4 x float> nofpclass(nan inf) %i.yf, <4 x float> nofpclass(nan inf) %.823882636.us.us.us.us.i.us)
  %i.yh = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.yi = load i64, ptr %i.yh, align 1, !tbaa !82
  %i.yj = insertelement <2 x i64> poison, i64 %i.yi, i64 0
  %i.yk = bitcast <2 x i64> %i.yj to <8 x i16>
  %i.yl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ym = bitcast <8 x i16> %i.yl to <4 x float>
  %i.yn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xm, <4 x float> nofpclass(nan inf) %i.ym, <4 x float> nofpclass(nan inf) %.724062635.us.us.us.us.i.us)
  %i.yo = getelementptr inbounds nuw i8, ptr %i.wl, i64 16
  %i.yp = load i64, ptr %i.yo, align 1, !tbaa !82
  %i.yq = insertelement <2 x i64> poison, i64 %i.yp, i64 0
  %i.yr = bitcast <2 x i64> %i.yq to <8 x i16>
  %i.ys = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yt = bitcast <8 x i16> %i.ys to <4 x float>
  %i.yu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.xt, <4 x float> nofpclass(nan inf) %i.yt, <4 x float> nofpclass(nan inf) %.724212634.us.us.us.us.i.us)
  %i.yv = getelementptr inbounds nuw i8, ptr %i.wl, i64 24
  %i.yw = load i64, ptr %i.yv, align 1, !tbaa !82
  %i.yx = insertelement <2 x i64> poison, i64 %i.yw, i64 0
  %i.yy = bitcast <2 x i64> %i.yx to <8 x i16>
  %i.yz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.za = bitcast <8 x i16> %i.yz to <4 x float>
  %i.zb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ya, <4 x float> nofpclass(nan inf) %i.za, <4 x float> nofpclass(nan inf) %.724312633.us.us.us.us.i.us)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us, %bb.af, %.lr.ph.split.us.us.us.us.i.us
  %.82432.us.us.us.us.i.us = phi nsz <4 x float> [ %.724312633.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724312633.us.us.us.us.i.us, %bb.af ], [ %i.zb, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82422.us.us.us.us.i.us = phi nsz <4 x float> [ %.724212634.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724212634.us.us.us.us.i.us, %bb.af ], [ %i.yu, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.82407.us.us.us.us.i.us = phi nsz <4 x float> [ %.724062635.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.724062635.us.us.us.us.i.us, %bb.af ], [ %i.yn, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %.92389.us.us.us.us.i.us = phi nsz <4 x float> [ %.823882636.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us.i.us ], [ %.823882636.us.us.us.us.i.us, %bb.af ], [ %i.yg, %_ZN4ncnn3MatD2Ev.exit965.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3352.i.us = add nuw nsw i64 %indvars.iv3351.i.us, 1 ; 2 uses
  %exitcond3355.not.i.us = icmp eq i64 %indvars.iv.next3352.i.us, %i.vp
  br i1 %exitcond3355.not.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us.i.us, !llvm.loop !540

..loopexit2572_crit_edge.us.us.us.i.us:           ; preds = %bb.ag, %bb.ae, %.preheader2577.us.us.i.split.us
  %.92433.us.us.us.i.us = phi nsz <4 x float> [ %.624302668.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624302668.us.us.us.i.us, %bb.ae ], [ %.82432.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.92423.us.us.us.i.us = phi nsz <4 x float> [ %.624202669.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624202669.us.us.us.i.us, %bb.ae ], [ %.82422.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.92408.us.us.us.i.us = phi nsz <4 x float> [ %.624052670.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.624052670.us.us.us.i.us, %bb.ae ], [ %.82407.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %.102390.us.us.us.i.us = phi nsz <4 x float> [ %.72671.us.us.us.i.us, %.preheader2577.us.us.i.split.us ], [ %.72671.us.us.us.i.us, %bb.ae ], [ %.92389.us.us.us.us.i.us, %bb.ag ] ; 2 uses
  %indvars.iv.next3357.i.us = add nuw nsw i64 %indvars.iv3356.i.us, 1 ; 2 uses
  %exitcond3360.not.i.us = icmp eq i64 %indvars.iv.next3357.i.us, %wide.trip.count3339.i
  br i1 %exitcond3360.not.i.us, label %._crit_edge.split.us.us2714.us.i, label %.preheader2577.us.us.i.split.us, !llvm.loop !541

.preheader2577.us.us.i.split.us77:                ; preds = %.preheader2577.us.us.i, %..loopexit2572_crit_edge.us.us.us.i.us87
  %indvars.iv3356.i.us78 = phi i64 [ %indvars.iv.next3357.i.us92, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ 0, %.preheader2577.us.us.i ] ; 3 uses
  %.72671.us.us.us.i.us79 = phi <4 x float> [ %.102390.us.us.us.i.us91, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624052670.us.us.us.i.us80 = phi <4 x float> [ %.92408.us.us.us.i.us90, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624202669.us.us.us.i.us81 = phi <4 x float> [ %.92423.us.us.us.i.us89, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %.624302668.us.us.us.i.us82 = phi <4 x float> [ %.92433.us.us.us.i.us88, %..loopexit2572_crit_edge.us.us.us.i.us87 ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ] ; 3 uses
  %i.zc = trunc i64 %indvars.iv3356.i.us78 to i32
  %i.zd = mul i32 %i.ur, %i.zc
  %.reass2679.us.us.us.i.us83 = add i32 %i.zd, %invariant.op2678.i ; 3 uses
  %i.ze = icmp slt i32 %.reass2679.us.us.us.i.us83, 0
  br i1 %i.ze, label %..loopexit2572_crit_edge.us.us.us.i.us87, label %bb.ah

bb.ah:                                            ; preds = %.preheader2577.us.us.i.split.us77
  %i.zf = srem i32 %.reass2679.us.us.us.i.us83, %i.ut
  %i.zg = sdiv i32 %.reass2679.us.us.us.i.us83, %i.ut ; 2 uses
  %.not930.us.us.us.i.us84 = icmp eq i32 %i.zf, 0
  %.not931.us.us.us.i.us85 = icmp slt i32 %i.zg, %i.hg
  %or.cond304 = select i1 %.not930.us.us.us.i.us84, i1 %.not931.us.us.us.i.us85, i1 false
  br i1 %or.cond304, label %.preheader2571.us.us.us.i.us86, label %..loopexit2572_crit_edge.us.us.us.i.us87

.preheader2571.us.us.us.i.us86:                   ; preds = %bb.ah
  %i.zh = mul nuw nsw i64 %indvars.iv3356.i.us78, %i.vp
  %i.zi = sext i32 %i.zg to i64
  br label %.lr.ph.split.us2646.us.us.us.i.us

.lr.ph.split.us2646.us.us.us.i.us:                ; preds = %.preheader2571.us.us.us.i.us86, %bb.aj
  %indvars.iv3346.i.us = phi i64 [ %indvars.iv.next3347.i.us, %bb.aj ], [ 0, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.823882636.us2648.us.us.us.i.us = phi <4 x float> [ %.92389.us2658.us.us.us.i.us, %bb.aj ], [ %.72671.us.us.us.i.us79, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724062635.us2649.us.us.us.i.us = phi <4 x float> [ %.82407.us2657.us.us.us.i.us, %bb.aj ], [ %.624052670.us.us.us.i.us80, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724212634.us2650.us.us.us.i.us = phi <4 x float> [ %.82422.us2656.us.us.us.i.us, %bb.aj ], [ %.624202669.us.us.us.i.us81, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %.724312633.us2651.us.us.us.i.us = phi <4 x float> [ %.82432.us2655.us.us.us.i.us, %bb.aj ], [ %.624302668.us.us.us.i.us82, %.preheader2571.us.us.us.i.us86 ] ; 3 uses
  %i.zj = trunc i64 %indvars.iv3346.i.us to i32
  %i.zk = mul i32 %i.uv, %i.zj
  %.reass.us2652.us.us.us.i.us = add i32 %i.zk, %invariant.op2642.i ; 3 uses
  %i.zl = icmp slt i32 %.reass.us2652.us.us.us.i.us, 0
  br i1 %i.zl, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.us2646.us.us.us.i.us
  %i.zm = srem i32 %.reass.us2652.us.us.us.i.us, %i.ux
  %i.zn = sdiv i32 %.reass.us2652.us.us.us.i.us, %i.ux ; 2 uses
  %.not932.us2653.us.us.us.i.us = icmp eq i32 %i.zm, 0
  %.not933.us2654.us.us.us.i.us = icmp slt i32 %i.zn, %i.hf
  %or.cond305 = select i1 %.not932.us2653.us.us.us.i.us, i1 %.not933.us2654.us.us.us.i.us, i1 false
  br i1 %or.cond305, label %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, label %bb.aj

_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us:        ; preds = %bb.ai
  %i.zo = add nuw nsw i64 %indvars.iv3346.i.us, %i.zh
  %i.zp = shl i64 %i.zo, 4
  %i.zq = and i64 %i.zp, 4294967280
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %.17522699.us.us.i, i64 %i.zq ; 4 uses
  %i.zs = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !626
  %i.zt = load ptr, ptr %1, align 8, !tbaa !20, !noalias !626 ; 4 uses
  %i.zu = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !626
  %i.zv = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !626 ; 2 uses
  %i.zw = mul i64 %i.zv, %i.zu                    ; 4 uses
  %i.zx = mul i64 %i.zw, %indvars.iv3361.i
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.zx
  %i.zz = sext i32 %i.zs to i64
  %i.aaa = mul nsw i64 %i.zz, %i.zi
  %i.aab = mul i64 %i.aaa, %i.zv                  ; 4 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zy, i64 %i.aab
  %i.aad = sext i32 %i.zn to i64                  ; 4 uses
  %i.aae = getelementptr inbounds [2 x i8], ptr %i.aac, i64 %i.aad
  %i.aaf = load i16, ptr %i.aae, align 2, !tbaa !89
  %i.aag = zext i16 %i.aaf to i32
  %i.aah = shl nuw i32 %i.aag, 16
  %i.aai = insertelement <4 x i32> poison, i32 %i.aah, i64 0
  %i.aaj = bitcast <4 x i32> %i.aai to <4 x float>
  %i.aak = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aal = mul i64 %i.zw, %i.vt
  %i.aam = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.aal
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 %i.aab
  %i.aao = getelementptr inbounds [2 x i8], ptr %i.aan, i64 %i.aad
  %i.aap = load i16, ptr %i.aao, align 2, !tbaa !89
  %i.aaq = zext i16 %i.aap to i32
  %i.aar = shl nuw i32 %i.aaq, 16
  %i.aas = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %i.aat = bitcast <4 x i32> %i.aas to <4 x float>
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aav = mul i64 %i.zw, %i.vu
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.aav
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 %i.aab
  %i.aay = getelementptr inbounds [2 x i8], ptr %i.aax, i64 %i.aad
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !89
  %i.aba = zext i16 %i.aaz to i32
  %i.abb = shl nuw i32 %i.aba, 16
  %i.abc = insertelement <4 x i32> poison, i32 %i.abb, i64 0
  %i.abd = bitcast <4 x i32> %i.abc to <4 x float>
  %i.abe = shufflevector <4 x float> %i.abd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abf = mul i64 %i.zw, %i.vs
  %i.abg = getelementptr inbounds nuw i8, ptr %i.zt, i64 %i.abf
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.aab
  %i.abi = getelementptr inbounds [2 x i8], ptr %i.abh, i64 %i.aad
  %i.abj = load i16, ptr %i.abi, align 2, !tbaa !89
  %i.abk = zext i16 %i.abj to i32
  %i.abl = shl nuw i32 %i.abk, 16
  %i.abm = insertelement <4 x i32> poison, i32 %i.abl, i64 0
  %i.abn = bitcast <4 x i32> %i.abm to <4 x float>
  %i.abo = shufflevector <4 x float> %i.abn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abp = load i64, ptr %i.zr, align 1, !tbaa !82
  %i.abq = insertelement <2 x i64> poison, i64 %i.abp, i64 0
  %i.abr = bitcast <2 x i64> %i.abq to <8 x i16>
  %i.abs = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.abr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.abt = bitcast <8 x i16> %i.abs to <4 x float>
  %i.abu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aak, <4 x float> nofpclass(nan inf) %i.abt, <4 x float> nofpclass(nan inf) %.823882636.us2648.us.us.us.i.us)
  %i.abv = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  %i.abw = load i64, ptr %i.abv, align 1, !tbaa !82
  %i.abx = insertelement <2 x i64> poison, i64 %i.abw, i64 0
  %i.aby = bitcast <2 x i64> %i.abx to <8 x i16>
  %i.abz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aby, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aca = bitcast <8 x i16> %i.abz to <4 x float>
  %i.acb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.aau, <4 x float> nofpclass(nan inf) %i.aca, <4 x float> nofpclass(nan inf) %.724062635.us2649.us.us.us.i.us)
  %i.acc = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  %i.acd = load i64, ptr %i.acc, align 1, !tbaa !82
  %i.ace = insertelement <2 x i64> poison, i64 %i.acd, i64 0
  %i.acf = bitcast <2 x i64> %i.ace to <8 x i16>
  %i.acg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ach = bitcast <8 x i16> %i.acg to <4 x float>
  %i.aci = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abe, <4 x float> nofpclass(nan inf) %i.ach, <4 x float> nofpclass(nan inf) %.724212634.us2650.us.us.us.i.us)
  %i.acj = getelementptr inbounds nuw i8, ptr %i.zr, i64 24
  %i.ack = load i64, ptr %i.acj, align 1, !tbaa !82
  %i.acl = insertelement <2 x i64> poison, i64 %i.ack, i64 0
  %i.acm = bitcast <2 x i64> %i.acl to <8 x i16>
  %i.acn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.acm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aco = bitcast <8 x i16> %i.acn to <4 x float>
  %i.acp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.abo, <4 x float> nofpclass(nan inf) %i.aco, <4 x float> nofpclass(nan inf) %.724312633.us2651.us.us.us.i.us)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us, %bb.ai, %.lr.ph.split.us2646.us.us.us.i.us
  %.82432.us2655.us.us.us.i.us = phi nsz <4 x float> [ %.724312633.us2651.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.acp, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724312633.us2651.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.82422.us2656.us.us.us.i.us = phi nsz <4 x float> [ %.724212634.us2650.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.aci, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724212634.us2650.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.82407.us2657.us.us.us.i.us = phi nsz <4 x float> [ %.724062635.us2649.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.acb, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.724062635.us2649.us.us.us.i.us, %bb.ai ] ; 2 uses
  %.92389.us2658.us.us.us.i.us = phi nsz <4 x float> [ %.823882636.us2648.us.us.us.i.us, %.lr.ph.split.us2646.us.us.us.i.us ], [ %i.abu, %_ZN4ncnn3MatD2Ev.exit964.us.us.us.us.i.us ], [ %.823882636.us2648.us.us.us.i.us, %bb.ai ] ; 2 uses
  %indvars.iv.next3347.i.us = add nuw nsw i64 %indvars.iv3346.i.us, 1 ; 2 uses
  %exitcond3350.not.i.us = icmp eq i64 %indvars.iv.next3347.i.us, %i.vp
  br i1 %exitcond3350.not.i.us, label %..loopexit2572_crit_edge.us.us.us.i.us87, label %.lr.ph.split.us2646.us.us.us.i.us, !llvm.loop !540

..loopexit2572_crit_edge.us.us.us.i.us87:         ; preds = %bb.aj, %bb.ah, %.preheader2577.us.us.i.split.us77
  %.92433.us.us.us.i.us88 = phi nsz <4 x float> [ %.624302668.us.us.us.i.us82, %.preheader2577.us.us.i.split.us77 ], [ %.624302668.us.us.us.i.us82, %bb.ah ], [ %.82432.us2655.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.92423.us.us.us.i.us89 = phi nsz <4 x float> [ %.624202669.us.us.us.i.us81, %.preheader2577.us.us.i.split.us77 ], [ %.624202669.us.us.us.i.us81, %bb.ah ], [ %.82422.us2656.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.92408.us.us.us.i.us90 = phi nsz <4 x float> [ %.624052670.us.us.us.i.us80, %.preheader2577.us.us.i.split.us77 ], [ %.624052670.us.us.us.i.us80, %bb.ah ], [ %.82407.us2657.us.us.us.i.us, %bb.aj ] ; 2 uses
  %.102390.us.us.us.i.us91 = phi nsz <4 x float> [ %.72671.us.us.us.i.us79, %.preheader2577.us.us.i.split.us77 ], [ %.72671.us.us.us.i.us79, %bb.ah ], [ %.92389.us2658.us.us.us.i.us, %bb.aj ] ; 2 uses
  %indvars.iv.next3357.i.us92 = add nuw nsw i64 %indvars.iv3356.i.us78, 1 ; 2 uses
  %exitcond3360.not.i.us93 = icmp eq i64 %indvars.iv.next3357.i.us92, %wide.trip.count3339.i
  br i1 %exitcond3360.not.i.us93, label %._crit_edge.split.us.us2714.us.i, label %.preheader2577.us.us.i.split.us77, !llvm.loop !541

._crit_edge.split.us.us2714.us.i:                 ; preds = %..loopexit2572_crit_edge.us.us.us.i.us87, %..loopexit2572_crit_edge.us.us.us.i.us, %.preheader2577.us.us.i
  %.us-phi = phi <4 x float> [ %.92433.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524292694.us.us.i, %.preheader2577.us.us.i ], [ %.92433.us.us.us.i.us88, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi74 = phi <4 x float> [ %.92423.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524192695.us.us.i, %.preheader2577.us.us.i ], [ %.92423.us.us.us.i.us89, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi75 = phi <4 x float> [ %.92408.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.524042696.us.us.i, %.preheader2577.us.us.i ], [ %.92408.us.us.us.i.us90, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %.us-phi76 = phi <4 x float> [ %.102390.us.us.us.i.us, %..loopexit2572_crit_edge.us.us.us.i.us ], [ %.623872697.us.us.i, %.preheader2577.us.us.i ], [ %.102390.us.us.us.i.us91, %..loopexit2572_crit_edge.us.us.us.i.us87 ] ; 2 uses
  %i.acq = getelementptr inbounds [2 x i8], ptr %.17522699.us.us.i, i64 %i.it ; 2 uses
  %indvars.iv.next3362.i = add nuw nsw i64 %indvars.iv3361.i, 4 ; 3 uses
  %i.acr = or disjoint i64 %indvars.iv.next3362.i, 3 ; 2 uses
  %i.acs = trunc nuw i64 %i.acr to i32
  %i.act = icmp sgt i32 %i.he, %i.acs
  br i1 %i.act, label %.preheader2577.us.us.i, label %.preheader2580.loopexit.i, !llvm.loop !544

.preheader2580.loopexit.i:                        ; preds = %._crit_edge.split.us.us2714.us.i
  %i.acu = trunc nuw i64 %indvars.iv.next3362.i to i32
  br label %.preheader2580.i

.preheader2580.i:                                 ; preds = %.preheader2580.loopexit.i, %.preheader2577.us.preheader.i, %.preheader2577.preheader.i, %.preheader2581.i
  %.52429.lcssa.i = phi <4 x float> [ %.02424.lcssa.i, %.preheader2581.i ], [ %.us-phi, %.preheader2580.loopexit.i ], [ %.02424.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02424.lcssa.i, %.preheader2577.preheader.i ]
  %.52419.lcssa.i = phi <4 x float> [ %.02414.lcssa.i, %.preheader2581.i ], [ %.us-phi74, %.preheader2580.loopexit.i ], [ %.02414.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02414.lcssa.i, %.preheader2577.preheader.i ]
  %.52404.lcssa.i = phi <4 x float> [ %.02399.lcssa.i, %.preheader2581.i ], [ %.us-phi75, %.preheader2580.loopexit.i ], [ %.02399.lcssa.i, %.preheader2577.us.preheader.i ], [ %.02399.lcssa.i, %.preheader2577.preheader.i ] ; 4 uses
  %.62387.lcssa.i = phi <4 x float> [ %.12383.lcssa.i, %.preheader2581.i ], [ %.us-phi76, %.preheader2580.loopexit.i ], [ %.12383.lcssa.i, %.preheader2577.us.preheader.i ], [ %.12383.lcssa.i, %.preheader2577.preheader.i ] ; 4 uses
  %.1757.lcssa.i = phi i32 [ %.0756.lcssa.i, %.preheader2581.i ], [ %i.acu, %.preheader2580.loopexit.i ], [ %i.vo, %.preheader2577.us.preheader.i ], [ %i.vf, %.preheader2577.preheader.i ] ; 7 uses
  %.1752.lcssa.i = phi ptr [ %.0751.lcssa.i, %.preheader2581.i ], [ %i.acq, %.preheader2580.loopexit.i ], [ %scevgep3345.i, %.preheader2577.us.preheader.i ], [ %scevgep3344.i, %.preheader2577.preheader.i ] ; 4 uses
  %i.acv = or disjoint i32 %.1757.lcssa.i, 1      ; 2 uses
  %i.acw = icmp slt i32 %i.acv, %i.he
  br i1 %i.acw, label %.preheader2576.lr.ph.i, label %.preheader2579.i

.preheader2576.lr.ph.i:                           ; preds = %.preheader2580.i
  %i.acx = load i32, ptr %i.d, align 4
  %i.acy = load i32, ptr %i.j, align 4
  %invariant.op2739.i = sub i32 %.neg2536.i, %i.acy
  %i.acz = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ada = load i32, ptr %i.a, align 4
  %.fr3236.i = freeze i32 %i.ada                  ; 2 uses
  %i.adb = load i32, ptr %i.c, align 4
  %i.adc = load i32, ptr %i.i, align 4
  %.neg2530.i = add nuw nsw i32 %.07482801.i, 1
  %invariant.op2732.i = sub i32 %.neg2530.i, %i.adc
  %i.add = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.io, label %.preheader2576.lr.ph.split.us.i, label %.preheader2576.preheader.i

.preheader2576.preheader.i:                       ; preds = %.preheader2576.lr.ph.i
  %i.ade = sub i32 %i.im, %.1757.lcssa.i
  %i.adf = and i32 %i.ade, -2                     ; 2 uses
  %i.adg = zext i32 %i.adf to i64
  %i.adh = add nuw nsw i64 %i.adg, 2
  %i.adi = mul nsw i64 %i.adh, %i.iv
  %scevgep3364.i = getelementptr i8, ptr %.1752.lcssa.i, i64 %i.adi
  %i.adj = add i32 %.1757.lcssa.i, 2
  %i.adk = add i32 %i.adj, %i.adf
  br label %.preheader2579.i

.preheader2576.lr.ph.split.us.i:                  ; preds = %.preheader2576.lr.ph.i
  %i.adl = icmp sgt i32 %.fr3236.i, 0
  br i1 %i.adl, label %.preheader2576.us.us.preheader.i, label %.preheader2576.us.preheader.i

.preheader2576.us.preheader.i:                    ; preds = %.preheader2576.lr.ph.split.us.i
  %i.adm = sub i32 %i.im, %.1757.lcssa.i
  %i.adn = and i32 %i.adm, -2                     ; 2 uses
  %i.ado = zext i32 %i.adn to i64
  %i.adp = add nuw nsw i64 %i.ado, 2
  %i.adq = mul nsw i64 %i.adp, %i.iv
  %scevgep3365.i = getelementptr i8, ptr %.1752.lcssa.i, i64 %i.adq
  %i.adr = add i32 %.1757.lcssa.i, 2
  %i.ads = add i32 %i.adr, %i.adn
  br label %.preheader2579.i

.preheader2576.us.us.preheader.i:                 ; preds = %.preheader2576.lr.ph.split.us.i
  %i.adt = zext nneg i32 %.fr3236.i to i64        ; 2 uses
  %i.adu = zext i32 %.1757.lcssa.i to i64
  %i.adv = zext nneg i32 %i.acv to i64
  br label %.preheader2576.us.us.i

.preheader2576.us.us.i:                           ; preds = %._crit_edge.split.us.us2761.us.i, %.preheader2576.us.us.preheader.i
  %indvars.iv3376.i = phi i64 [ %i.adu, %.preheader2576.us.us.preheader.i ], [ %indvars.iv.next3377.i, %._crit_edge.split.us.us2761.us.i ] ; 2 uses
  %i.adw = phi i64 [ %i.adv, %.preheader2576.us.us.preheader.i ], [ %i.age, %._crit_edge.split.us.us2761.us.i ]
  %.27532747.us.us.i = phi ptr [ %.1752.lcssa.i, %.preheader2576.us.us.preheader.i ], [ %i.agd, %._crit_edge.split.us.us2761.us.i ] ; 2 uses
  %.1123912745.us.us.i = phi <4 x float> [ %.62387.lcssa.i, %.preheader2576.us.us.preheader.i ], [ %.152393.us.us.us.i, %._crit_edge.split.us.us2761.us.i ]
  %.1024092744.us.us.i = phi <4 x float> [ %.52404.lcssa.i, %.preheader2576.us.us.preheader.i ], [ %.142413.us.us.us.i, %._crit_edge.split.us.us2761.us.i ]
  br label %bb.ak

bb.ak:                                            ; preds = %..loopexit2570_crit_edge.us.us.us.i, %.preheader2576.us.us.i
  %indvars.iv3371.i = phi i64 [ %indvars.iv.next3372.i, %..loopexit2570_crit_edge.us.us.us.i ], [ 0, %.preheader2576.us.us.i ] ; 3 uses
  %.122734.us.us.us.i = phi <4 x float> [ %.152393.us.us.us.i, %..loopexit2570_crit_edge.us.us.us.i ], [ %.1123912745.us.us.i, %.preheader2576.us.us.i ] ; 3 uses
  %.1124102733.us.us.us.i = phi <4 x float> [ %.142413.us.us.us.i, %..loopexit2570_crit_edge.us.us.us.i ], [ %.1024092744.us.us.i, %.preheader2576.us.us.i ] ; 3 uses
  %i.adx = trunc i64 %indvars.iv3371.i to i32
  %i.ady = mul i32 %i.acx, %i.adx
  %.reass2740.us.us.us.i = add i32 %i.ady, %invariant.op2739.i ; 3 uses
  %i.adz = icmp slt i32 %.reass2740.us.us.us.i, 0
  br i1 %i.adz, label %..loopexit2570_crit_edge.us.us.us.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.aea = srem i32 %.reass2740.us.us.us.i, %i.acz
  %i.aeb = sdiv i32 %.reass2740.us.us.us.i, %i.acz ; 2 uses
  %.not926.us.us.us.i = icmp eq i32 %i.aea, 0
  %.not927.us.us.us.i = icmp slt i32 %i.aeb, %i.hg
  %or.cond306 = select i1 %.not926.us.us.us.i, i1 %.not927.us.us.us.i, i1 false
  br i1 %or.cond306, label %.preheader2569.us.us.us.i, label %..loopexit2570_crit_edge.us.us.us.i

.preheader2569.us.us.us.i:                        ; preds = %bb.al
  %i.aec = mul nuw nsw i64 %indvars.iv3371.i, %i.adt
  %i.aed = sext i32 %i.aeb to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.preheader2569.us.us.us.i
  %indvars.iv3366.i = phi i64 [ %indvars.iv.next3367.i, %bb.ao ], [ 0, %.preheader2569.us.us.us.i ] ; 3 uses
  %.1323922728.us.us.us.i = phi <4 x float> [ %.14.us.us.us.i, %bb.ao ], [ %.122734.us.us.us.i, %.preheader2569.us.us.us.i ] ; 3 uses
  %.1224112727.us.us.us.i = phi <4 x float> [ %.132412.us.us.us.i, %bb.ao ], [ %.1124102733.us.us.us.i, %.preheader2569.us.us.us.i ] ; 3 uses
  %i.aee = trunc i64 %indvars.iv3366.i to i32
  %i.aef = mul i32 %i.adb, %i.aee
  %.reass.us.us2760.us.i = add i32 %invariant.op2732.i, %i.aef ; 3 uses
  %i.aeg = icmp slt i32 %.reass.us.us2760.us.i, 0
  br i1 %i.aeg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.aeh = srem i32 %.reass.us.us2760.us.i, %i.add
  %i.aei = sdiv i32 %.reass.us.us2760.us.i, %i.add ; 2 uses
  %.not928.us.us.us.i = icmp eq i32 %i.aeh, 0
  %.not929.us.us.us.i = icmp slt i32 %i.aei, %i.hf
  %or.cond307 = select i1 %.not928.us.us.us.i, i1 %.not929.us.us.us.i, i1 false
  br i1 %or.cond307, label %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i, label %bb.ao

_ZN4ncnn3MatD2Ev.exit960.us.us.us.i:              ; preds = %bb.an
  %i.aej = add nuw nsw i64 %indvars.iv3366.i, %i.aec
  %i.aek = shl i64 %i.aej, 3
  %i.ael = and i64 %i.aek, 4294967288
  %i.aem = getelementptr inbounds nuw [2 x i8], ptr %.27532747.us.us.i, i64 %i.ael ; 2 uses
  %i.aen = load i32, ptr %i.o, align 4, !tbaa !54, !noalias !627
  %i.aeo = load ptr, ptr %1, align 8, !tbaa !20, !noalias !627 ; 2 uses
  %i.aep = load i64, ptr %i.fk, align 8, !tbaa !21, !noalias !627
  %i.aeq = load i64, ptr %i.fl, align 8, !tbaa !55, !noalias !627 ; 2 uses
  %i.aer = mul i64 %i.aeq, %i.aep                 ; 2 uses
  %i.aes = mul i64 %i.aer, %indvars.iv3376.i
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.aes
  %i.aeu = sext i32 %i.aen to i64
  %i.aev = mul nsw i64 %i.aeu, %i.aed
  %i.aew = mul i64 %i.aev, %i.aeq                 ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aew
  %i.aey = sext i32 %i.aei to i64                 ; 2 uses
  %i.aez = getelementptr inbounds [2 x i8], ptr %i.aex, i64 %i.aey
  %i.afa = mul i64 %i.aer, %i.adw
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeo, i64 %i.afa
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.aew
  %i.afd = getelementptr inbounds [2 x i8], ptr %i.afc, i64 %i.aey
  %i.afe = load i16, ptr %i.aez, align 2, !tbaa !89
  %i.aff = zext i16 %i.afe to i32
  %i.afg = shl nuw i32 %i.aff, 16
  %i.afh = insertelement <4 x i32> poison, i32 %i.afg, i64 0
  %i.afi = bitcast <4 x i32> %i.afh to <4 x float>
  %i.afj = shufflevector <4 x float> %i.afi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afk = load i16, ptr %i.afd, align 2, !tbaa !89
  %i.afl = zext i16 %i.afk to i32
  %i.afm = shl nuw i32 %i.afl, 16
  %i.afn = insertelement <4 x i32> poison, i32 %i.afm, i64 0
  %i.afo = bitcast <4 x i32> %i.afn to <4 x float>
  %i.afp = shufflevector <4 x float> %i.afo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.afq = load i64, ptr %i.aem, align 1, !tbaa !82
  %i.afr = insertelement <2 x i64> poison, i64 %i.afq, i64 0
  %i.afs = bitcast <2 x i64> %i.afr to <8 x i16>
  %i.aft = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.afu = bitcast <8 x i16> %i.aft to <4 x float>
  %i.afv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afj, <4 x float> nofpclass(nan inf) %i.afu, <4 x float> nofpclass(nan inf) %.1323922728.us.us.us.i)
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  %i.afx = load i64, ptr %i.afw, align 1, !tbaa !82
  %i.afy = insertelement <2 x i64> poison, i64 %i.afx, i64 0
  %i.afz = bitcast <2 x i64> %i.afy to <8 x i16>
  %i.aga = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.afz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.agb = bitcast <8 x i16> %i.aga to <4 x float>
  %i.agc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.afp, <4 x float> nofpclass(nan inf) %i.agb, <4 x float> nofpclass(nan inf) %.1224112727.us.us.us.i)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i, %bb.an, %bb.am
  %.132412.us.us.us.i = phi nsz <4 x float> [ %.1224112727.us.us.us.i, %bb.am ], [ %i.agc, %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i ], [ %.1224112727.us.us.us.i, %bb.an ] ; 2 uses
  %.14.us.us.us.i = phi nsz <4 x float> [ %.1323922728.us.us.us.i, %bb.am ], [ %i.afv, %_ZN4ncnn3MatD2Ev.exit960.us.us.us.i ], [ %.1323922728.us.us.us.i, %bb.an ] ; 2 uses
  %indvars.iv.next3367.i = add nuw nsw i64 %indvars.iv3366.i, 1 ; 2 uses
  %exitcond3370.not.i = icmp eq i64 %indvars.iv.next3367.i, %i.adt
  br i1 %exitcond3370.not.i, label %..loopexit2570_crit_edge.us.us.us.i, label %bb.am, !llvm.loop !547

..loopexit2570_crit_edge.us.us.us.i:              ; preds = %bb.ao, %bb.al, %bb.ak
  %.142413.us.us.us.i = phi nsz <4 x float> [ %.1124102733.us.us.us.i, %bb.ak ], [ %.1124102733.us.us.us.i, %bb.al ], [ %.132412.us.us.us.i, %bb.ao ] ; 3 uses
  %.152393.us.us.us.i = phi nsz <4 x float> [ %.122734.us.us.us.i, %bb.ak ], [ %.122734.us.us.us.i, %bb.al ], [ %.14.us.us.us.i, %bb.ao ] ; 3 uses
  %indvars.iv.next3372.i = add nuw nsw i64 %indvars.iv3371.i, 1 ; 2 uses
  %exitcond3375.not.i = icmp eq i64 %indvars.iv.next3372.i, %wide.trip.count3339.i
  br i1 %exitcond3375.not.i, label %._crit_edge.split.us.us2761.us.i, label %bb.ak, !llvm.loop !548

._crit_edge.split.us.us2761.us.i:                 ; preds = %..loopexit2570_crit_edge.us.us.us.i
  %i.agd = getelementptr inbounds [2 x i8], ptr %.27532747.us.us.i, i64 %i.iv ; 2 uses
  %indvars.iv.next3377.i = add nuw nsw i64 %indvars.iv3376.i, 2 ; 3 uses
  %i.age = or disjoint i64 %indvars.iv.next3377.i, 1 ; 2 uses
  %i.agf = trunc nuw i64 %i.age to i32
  %i.agg = icmp sgt i32 %i.he, %i.agf
  br i1 %i.agg, label %.preheader2576.us.us.i, label %.preheader2579.loopexit.i, !llvm.loop !549

.preheader2579.loopexit.i:                        ; preds = %._crit_edge.split.us.us2761.us.i
  %i.agh = trunc nuw i64 %indvars.iv.next3377.i to i32
  br label %.preheader2579.i

.preheader2579.i:                                 ; preds = %.preheader2579.loopexit.i, %.preheader2576.us.preheader.i, %.preheader2576.preheader.i, %.preheader2580.i
  %.102409.lcssa.i = phi <4 x float> [ %.52404.lcssa.i, %.preheader2580.i ], [ %.142413.us.us.us.i, %.preheader2579.loopexit.i ], [ %.52404.lcssa.i, %.preheader2576.us.preheader.i ], [ %.52404.lcssa.i, %.preheader2576.preheader.i ]
  %.112391.lcssa.i = phi <4 x float> [ %.62387.lcssa.i, %.preheader2580.i ], [ %.152393.us.us.us.i, %.preheader2579.loopexit.i ], [ %.62387.lcssa.i, %.preheader2576.us.preheader.i ], [ %.62387.lcssa.i, %.preheader2576.preheader.i ] ; 3 uses
  %.2758.lcssa.i = phi i32 [ %.1757.lcssa.i, %.preheader2580.i ], [ %i.agh, %.preheader2579.loopexit.i ], [ %i.ads, %.preheader2576.us.preheader.i ], [ %i.adk, %.preheader2576.preheader.i ] ; 2 uses
  %.2753.lcssa.i = phi ptr [ %.1752.lcssa.i, %.preheader2580.i ], [ %i.agd, %.preheader2579.loopexit.i ], [ %scevgep3365.i, %.preheader2576.us.preheader.i ], [ %scevgep3364.i, %.preheader2576.preheader.i ]
  %i.agi = icmp slt i32 %.2758.lcssa.i, %i.he
  br i1 %i.agi, label %.preheader2575.lr.ph.i, label %._crit_edge2787.i

.preheader2575.lr.ph.i:                           ; preds = %.preheader2579.i
  %i.agj = load i32, ptr %i.d, align 4
  %i.agk = load i32, ptr %i.j, align 4
  %invariant.op2779.i = sub i32 %.neg2536.i, %i.agk
  %i.agl = load i32, ptr %i.f, align 4            ; 2 uses
  %i.agm = load i32, ptr %i.a, align 4
  %.fr3237.i = freeze i32 %i.agm                  ; 2 uses
  %i.agn = load i32, ptr %i.c, align 4
  %i.ago = load i32, ptr %i.i, align 4
  %.neg2526.i = add nuw nsw i32 %.07482801.i, 1
  %invariant.op2774.i = sub i32 %.neg2526.i, %i.ago
  %i.agp = load i32, ptr %i.e, align 4            ; 2 uses
  %i.agq = icmp sgt i32 %.fr3237.i, 0
  %or.cond.i = and i1 %i.io, %i.agq
  br i1 %or.cond.i, label %.preheader2575.us.us.preheader.i, label %._crit_edge2787.i

.preheader2575.us.us.preheader.i:                 ; preds = %.preheader2575.lr.ph.i
  %i.agr = zext nneg i32 %.fr3237.i to i64        ; 2 uses
  %i.ags = zext i32 %.2758.lcssa.i to i64
  br label %.preheader2575.us.us.i

.preheader2575.us.us.i:                           ; preds = %._crit_edge.split.us.us2797.us.i, %.preheader2575.us.us.preheader.i
  %indvars.iv3389.i = phi i64 [ %i.ags, %.preheader2575.us.us.preheader.i ], [ %indvars.iv.next3390.i, %._crit_edge.split.us.us2797.us.i ] ; 2 uses
  %.37542785.us.us.i = phi ptr [ %.2753.lcssa.i, %.preheader2575.us.us.preheader.i ], [ %i.aii, %._crit_edge.split.us.us2797.us.i ] ; 2 uses
  %.162783.us.us.i = phi <4 x float> [ %.112391.lcssa.i, %.preheader2575.us.us.preheader.i ], [ %.20.us.us.us.i, %._crit_edge.split.us.us2797.us.i ]
  br label %bb.ap

bb.ap:                                            ; preds = %..loopexit2568_crit_edge.us.us.us.i, %.preheader2575.us.us.i
  %indvars.iv3384.i = phi i64 [ %indvars.iv.next3385.i, %..loopexit2568_crit_edge.us.us.us.i ], [ 0, %.preheader2575.us.us.i ] ; 3 uses
  %.172775.us.us.us.i = phi <4 x float> [ %.20.us.us.us.i, %..loopexit2568_crit_edge.us.us.us.i ], [ %.162783.us.us.i, %.preheader2575.us.us.i ] ; 3 uses
  %i.agt = trunc i64 %indvars.iv3384.i to i32
  %i.agu = mul i32 %i.agj, %i.agt
  %.reass2780.us.us.us.i = add i32 %i.agu, %invariant.op2779.i ; 3 uses
  %i.agv = icmp slt i32 %.reass2780.us.us.us.i, 0
  br i1 %i.agv, label %..loopexit2568_crit_edge.us.us.us.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.agw = srem i32 %.reass2780.us.us.us.i, %i.agl
  %i.agx = sdiv i32 %.reass2780.us.us.us.i, %i.agl ; 2 uses
  %.not922.us.us.us.i = icmp eq i32 %i.agw, 0
  %.not923.us.us.us.i = icmp slt i32 %i.agx, %i.hg
  %or.cond308 = select i1 %.not922.us.us.us.i, i1 %.not923.us.us.us.i, i1 false
  br i1 %or.cond308, label %.preheader2567.us.us.us.i, label %..loopexit2568_crit_edge.us.us.us.i

.preheader2567.us.us.us.i:                        ; preds = %bb.aq
  %i.agy = mul nuw nsw i64 %indvars.iv3384.i, %i.agr
  %i.agz = sext i32 %i.agx to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.preheader2567.us.us.us.i
  %indvars.iv3379.i = phi i64 [ %indvars.iv.next3380.i, %bb.at ], [ 0, %.preheader2567.us.us.us.i ] ; 3 uses
  %.182771.us.us.us.i = phi <4 x float> [ %.19.us.us.us.i, %bb.at ], [ %.172775.us.us.us.i, %.preheader2567.us.us.us.i ] ; 3 uses
  %i.aha = trunc i64 %indvars.iv3379.i to i32
  %i.ahb = mul i32 %i.agn, %i.aha
  %.reass.us.us2796.us.i = add i32 %invariant.op2774.i, %i.ahb ; 3 uses
  %i.ahc = icmp slt i32 %.reass.us.us2796.us.i, 0
  br i1 %i.ahc, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
end_hunk_11
begin_hunk_12_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %.reass2819.us.us.us.i = add i32 %invariant.op2818.i, %i.ast ; 3 uses
  %i.asu = icmp slt i32 %.reass2819.us.us.us.i, 0
  br i1 %i.asu, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.asv = srem i32 %.reass2819.us.us.us.i, %i.arx
  %i.asw = sdiv i32 %.reass2819.us.us.us.i, %i.arx ; 4 uses
  %.not918.us.us.us.i = icmp eq i32 %i.asv, 0
  %.not919.us.us.us.i = icmp slt i32 %i.asw, %i.fz
  %or.cond311 = select i1 %.not918.us.us.us.i, i1 %.not919.us.us.us.i, i1 false
  br i1 %or.cond311, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.asx = add nuw nsw i64 %indvars.iv3407.i, %i.asp
  %i.asy = shl i64 %i.asx, 4
  %i.asz = and i64 %i.asy, 4294967280
  %i.ata = getelementptr inbounds nuw [2 x i8], ptr %.07672834.us.us.i, i64 %i.asz ; 2 uses
  switch i32 %.fr2884.i, label %bb.bj [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit951.us.us.us.i:              ; preds = %bb.bi
  %i.atb = load ptr, ptr %1, align 8, !tbaa !20, !noalias !631
  %i.atc = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !631
  %i.atd = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !631 ; 2 uses
  %factor.op.mul.us.us.us.i = mul i64 %i.atd, %i.atc ; 8 uses
  %i.ate = mul i64 %i.asr, %i.atd
  %invariant.gep.us.us.us.i = getelementptr i8, ptr %i.atb, i64 %i.ate
  %i.atf = sext i32 %i.asw to i64
  %invariant.gep2810.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us.i, i64 %i.atf ; 8 uses
  %.reass.us.us2850.us.i = mul i64 %factor.op.mul.us.us.us.i, %indvars.iv3417.i
  %gep2811.us.us.us.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.i
  %i.atg = load i16, ptr %gep2811.us.us.us.i, align 2, !tbaa !89
  %.reass.us.us2850.us.1.i = mul i64 %factor.op.mul.us.us.us.i, %i.asd
  %gep2811.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.1.i
  %i.ath = load i16, ptr %gep2811.us.us.us.1.i, align 2, !tbaa !89
  %.reass.us.us2850.us.2.i = mul i64 %factor.op.mul.us.us.us.i, %i.ase
  %gep2811.us.us.us.2.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.2.i
  %i.ati = load i16, ptr %gep2811.us.us.us.2.i, align 2, !tbaa !89
  %.reass.us.us2850.us.3.i = mul i64 %factor.op.mul.us.us.us.i, %i.asf
  %gep2811.us.us.us.3.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.3.i
  %i.atj = load i16, ptr %gep2811.us.us.us.3.i, align 2, !tbaa !89
  %.reass.us.us2850.us.4.i = mul i64 %factor.op.mul.us.us.us.i, %i.asg
  %gep2811.us.us.us.4.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.4.i
  %i.atk = load i16, ptr %gep2811.us.us.us.4.i, align 2, !tbaa !89
  %.reass.us.us2850.us.5.i = mul i64 %factor.op.mul.us.us.us.i, %i.ash
  %gep2811.us.us.us.5.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.5.i
  %i.atl = load i16, ptr %gep2811.us.us.us.5.i, align 2, !tbaa !89
  %.reass.us.us2850.us.6.i = mul i64 %factor.op.mul.us.us.us.i, %i.asi
  %gep2811.us.us.us.6.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.6.i
  %i.atm = load i16, ptr %gep2811.us.us.us.6.i, align 2, !tbaa !89
  %.reass.us.us2850.us.7.i = mul i64 %factor.op.mul.us.us.us.i, %i.asj
  %gep2811.us.us.us.7.i = getelementptr i8, ptr %invariant.gep2810.us.us.us.i, i64 %.reass.us.us2850.us.7.i
  %i.atn = load i16, ptr %gep2811.us.us.us.7.i, align 2, !tbaa !89
  %i.ato = insertelement <4 x i16> poison, i16 %i.atk, i64 0
  %i.atp = insertelement <4 x i16> %i.ato, i16 %i.atl, i64 1
  %i.atq = insertelement <4 x i16> %i.atp, i16 %i.atm, i64 2
  %i.atr = insertelement <4 x i16> %i.atq, i16 %i.atn, i64 3
  %i.ats = zext <4 x i16> %i.atr to <4 x i32>
  %i.att = zext i16 %i.atj to i32
  %i.atu = zext i16 %i.ati to i32
  %i.atv = zext i16 %i.ath to i32
  %i.atw = zext i16 %i.atg to i32
  %i.atx = insertelement <8 x i32> poison, i32 %i.atw, i64 0
  %i.aty = insertelement <8 x i32> %i.atx, i32 %i.atv, i64 1
  %i.atz = insertelement <8 x i32> %i.aty, i32 %i.atu, i64 2
  %i.aua = insertelement <8 x i32> %i.atz, i32 %i.att, i64 3
  %i.aub = shufflevector <4 x i32> %i.ats, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.auc = shufflevector <8 x i32> %i.aua, <8 x i32> %i.aub, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.aud = shl nuw <8 x i32> %i.auc, splat (i32 16)
  %.sroa.03568.28.vec.insert.i = bitcast <8 x i32> %i.aud to <8 x float>
  br label %.sink.split3721.i

_ZN4ncnn3MatD2Ev.exit953.us.us.us.i:              ; preds = %bb.bi
  %i.aue = load ptr, ptr %1, align 8, !tbaa !20, !noalias !632 ; 2 uses
  %i.auf = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !632
  %i.aug = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !632 ; 2 uses
  %i.auh = mul i64 %i.aug, %i.auf                 ; 2 uses
  %i.aui = mul i64 %i.auh, %i.asa
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.aui
  %i.auk = mul i64 %i.asr, %i.aug                 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auj, i64 %i.auk
  %i.aum = shl nsw i32 %i.asw, 2
  %i.aun = sext i32 %i.aum to i64                 ; 2 uses
  %i.auo = getelementptr inbounds [2 x i8], ptr %i.aul, i64 %i.aun
  %i.aup = mul i64 %i.auh, %i.asb
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aue, i64 %i.aup
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 %i.auk
  %i.aus = getelementptr inbounds [2 x i8], ptr %i.aur, i64 %i.aun
  %i.aut = load i64, ptr %i.auo, align 1, !tbaa !82
  %i.auu = insertelement <2 x i64> poison, i64 %i.aut, i64 0
  %i.auv = bitcast <2 x i64> %i.auu to <8 x i16>
  %i.auw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.auv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aux = load i64, ptr %i.aus, align 1, !tbaa !82
  %i.auy = insertelement <2 x i64> poison, i64 %i.aux, i64 0
  %i.auz = bitcast <2 x i64> %i.auy to <8 x i16>
  %i.ava = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.auz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avb = shufflevector <8 x i16> %i.auw, <8 x i16> %i.ava, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avc = bitcast <16 x i16> %i.avb to <8 x float>
  br label %.sink.split3721.i

_ZN4ncnn3MatD2Ev.exit954.us.us.us.i:              ; preds = %bb.bi
  %i.avd = load ptr, ptr %1, align 8, !tbaa !20, !noalias !633
  %i.ave = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !633
  %i.avf = mul i64 %i.ave, %i.asc
  %i.avg = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !633 ; 2 uses
  %i.avh = mul i64 %i.avf, %i.avg
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avd, i64 %i.avh
  %i.avj = mul i64 %i.asr, %i.avg
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avi, i64 %i.avj
  %i.avl = shl nsw i32 %i.asw, 3
  %i.avm = sext i32 %i.avl to i64
  %i.avn = getelementptr inbounds [2 x i8], ptr %i.avk, i64 %i.avm
  %i.avo = load <8 x i16>, ptr %i.avn, align 16, !tbaa !82 ; 2 uses
  %i.avp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avq = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avr = shufflevector <8 x i16> %i.avp, <8 x i16> %i.avq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avs = bitcast <16 x i16> %i.avr to <8 x float>
  br label %.sink.split3721.i

.sink.split3721.i:                                ; preds = %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i
  %.sink3734.i = phi <8 x float> [ %i.avs, %_ZN4ncnn3MatD2Ev.exit954.us.us.us.i ], [ %i.avc, %_ZN4ncnn3MatD2Ev.exit953.us.us.us.i ], [ %.sroa.03568.28.vec.insert.i, %_ZN4ncnn3MatD2Ev.exit951.us.us.us.i ] ; 2 uses
  %i.avt = load <8 x i16>, ptr %i.ata, align 16, !tbaa !82 ; 2 uses
  %i.avu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.avt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.avv = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.avt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.avw = shufflevector <8 x i16> %i.avu, <8 x i16> %i.avv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.avx = bitcast <16 x i16> %i.avw to <8 x float>
  %i.avy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3734.i, <8 x float> nofpclass(nan inf) %i.avx, <8 x float> nofpclass(nan inf) %.224562813.us.us.us.i)
  %i.avz = getelementptr inbounds nuw i8, ptr %i.ata, i64 16
  %i.awa = load <8 x i16>, ptr %i.avz, align 16, !tbaa !82 ; 2 uses
  %i.awb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.awa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.awc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.awa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.awd = shufflevector <8 x i16> %i.awb, <8 x i16> %i.awc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awe = bitcast <16 x i16> %i.awd to <8 x float>
  %i.awf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3734.i, <8 x float> nofpclass(nan inf) %i.awe, <8 x float> nofpclass(nan inf) %.224512814.us.us.us.i)
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split3721.i, %bb.bi, %bb.bh, %bb.bg
  %.32457.us.us.us.i = phi nsz <8 x float> [ %.224562813.us.us.us.i, %bb.bg ], [ %.224562813.us.us.us.i, %bb.bi ], [ %.224562813.us.us.us.i, %bb.bh ], [ %i.avy, %.sink.split3721.i ] ; 2 uses
  %.32452.us.us.us.i = phi nsz <8 x float> [ %.224512814.us.us.us.i, %bb.bg ], [ %.224512814.us.us.us.i, %bb.bi ], [ %.224512814.us.us.us.i, %bb.bh ], [ %i.awf, %.sink.split3721.i ] ; 2 uses
  %indvars.iv.next3408.i = add nuw nsw i64 %indvars.iv3407.i, 1 ; 2 uses
  %exitcond3411.not.i = icmp eq i64 %indvars.iv.next3408.i, %i.arz
  br i1 %exitcond3411.not.i, label %..loopexit2560_crit_edge.us.us.us.i, label %bb.bg, !llvm.loop !568

..loopexit2560_crit_edge.us.us.us.i:              ; preds = %bb.bj, %bb.bf, %bb.be
  %.42458.us.us.us.i = phi nsz <8 x float> [ %.124552820.us.us.us.i, %bb.be ], [ %.124552820.us.us.us.i, %bb.bf ], [ %.32457.us.us.us.i, %bb.bj ] ; 3 uses
  %.42453.us.us.us.i = phi nsz <8 x float> [ %.124502821.us.us.us.i, %bb.be ], [ %.124502821.us.us.us.i, %bb.bf ], [ %.32452.us.us.us.i, %bb.bj ] ; 3 uses
  %indvars.iv.next3413.i = add nuw nsw i64 %indvars.iv3412.i, 1 ; 2 uses
  %exitcond3416.not.i = icmp eq i64 %indvars.iv.next3413.i, %wide.trip.count3415.i
  br i1 %exitcond3416.not.i, label %._crit_edge2824.split.us.us.us.i, label %bb.be, !llvm.loop !569

._crit_edge2824.split.us.us.us.i:                 ; preds = %..loopexit2560_crit_edge.us.us.us.i
  %i.awg = getelementptr inbounds [2 x i8], ptr %.07672834.us.us.i, i64 %i.arh ; 2 uses
  %indvars.iv.next3418.i = add nuw nsw i64 %indvars.iv3417.i, 8 ; 2 uses
  %i.awh = icmp slt i64 %indvars.iv.next3418.i, %invariant.op3657.i
  br i1 %i.awh, label %.preheader2564.us.us.i, label %._crit_edge2838.i, !llvm.loop !570

._crit_edge2838.i:                                ; preds = %._crit_edge2824.split.us.us.us.i, %.preheader2564.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit955.i
  %.02454.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit955.i ], [ zeroinitializer, %.preheader2564.lr.ph.i ], [ %.42458.us.us.us.i, %._crit_edge2824.split.us.us.us.i ] ; 2 uses
  %.02449.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit955.i ], [ zeroinitializer, %.preheader2564.lr.ph.i ], [ %.42453.us.us.us.i, %._crit_edge2824.split.us.us.us.i ] ; 2 uses
  %.0767.lcssa.i = phi ptr [ %i.arc, %_ZN4ncnn3MatD2Ev.exit955.i ], [ %scevgep3400.i, %.preheader2564.lr.ph.i ], [ %i.awg, %._crit_edge2824.split.us.us.us.i ] ; 4 uses
  %.0763.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit955.i ], [ %i.gv, %.preheader2564.lr.ph.i ], [ %i.hb, %._crit_edge2824.split.us.us.us.i ] ; 7 uses
  %i.awi = shufflevector <8 x float> %.02454.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awj = shufflevector <8 x float> %.02454.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awk = fadd fast <4 x float> %i.awi, %i.awj   ; 2 uses
  %i.awl = shufflevector <4 x float> %i.awk, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awm = fadd fast <4 x float> %i.awl, %i.awk   ; 2 uses
  %i.awn = shufflevector <8 x float> %.02449.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.awo = shufflevector <8 x float> %.02449.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.awp = fadd fast <4 x float> %i.awn, %i.awo   ; 2 uses
  %i.awq = shufflevector <4 x float> %i.awp, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.awr = fadd fast <4 x float> %i.awq, %i.awp   ; 2 uses
  %i.aws = or disjoint i32 %.0763.lcssa.i, 3
  %i.awt = icmp slt i32 %i.aws, %i.fy
  br i1 %i.awt, label %.preheader2563.lr.ph.i, label %._crit_edge2911.i

.preheader2563.lr.ph.i:                           ; preds = %._crit_edge2838.i
  %i.awu = load i32, ptr %i.d, align 4            ; 2 uses
  %i.awv = load i32, ptr %i.j, align 4
  %invariant.op2892.i = sub i32 %.neg2520.i, %i.awv ; 2 uses
  %i.aww = load i32, ptr %i.f, align 4            ; 4 uses
  %i.awx = load i32, ptr %i.a, align 4
  %.fr3239.i = freeze i32 %i.awx                  ; 2 uses
  %i.awy = load i32, ptr %i.c, align 4            ; 2 uses
  %i.awz = load i32, ptr %i.i, align 4
  %.neg2518.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2867.i = sub i32 %.neg2518.i, %i.awz ; 2 uses
  %i.axa = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.are, label %.preheader2563.lr.ph.split.us.i, label %.preheader2563.preheader.i

.preheader2563.preheader.i:                       ; preds = %.preheader2563.lr.ph.i
  %i.axb = sub i32 %i.gx, %.0763.lcssa.i          ; 2 uses
  %i.axc = lshr i32 %i.axb, 1
  %i.axd = and i32 %i.axc, 2147483646
  %narrow3635.i = add nuw i32 %i.axd, 2
  %i.axe = zext i32 %narrow3635.i to i64
  %i.axf = mul nsw i64 %i.axe, %i.arj
  %scevgep3420.i = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.axf
  %i.axg = add i32 %.0763.lcssa.i, 4
  %i.axh = and i32 %i.axb, -4
  %i.axi = add i32 %i.axg, %i.axh
  br label %._crit_edge2911.i

.preheader2563.lr.ph.split.us.i:                  ; preds = %.preheader2563.lr.ph.i
  %i.axj = icmp sgt i32 %.fr3239.i, 0
  br i1 %i.axj, label %.preheader2563.us.us.preheader.i, label %.preheader2563.us.preheader.i

.preheader2563.us.preheader.i:                    ; preds = %.preheader2563.lr.ph.split.us.i
  %i.axk = sub i32 %i.gx, %.0763.lcssa.i          ; 2 uses
  %i.axl = lshr i32 %i.axk, 1
  %i.axm = and i32 %i.axl, 2147483646
  %narrow3636.i = add nuw i32 %i.axm, 2
  %i.axn = zext i32 %narrow3636.i to i64
  %i.axo = mul nsw i64 %i.axn, %i.arj
  %scevgep3421.i = getelementptr i8, ptr %.0767.lcssa.i, i64 %i.axo
  %i.axp = add i32 %.0763.lcssa.i, 4
  %i.axq = and i32 %i.axk, -4
  %i.axr = add i32 %i.axp, %i.axq
  br label %._crit_edge2911.i

.preheader2563.us.us.preheader.i:                 ; preds = %.preheader2563.lr.ph.split.us.i
  %i.axs = zext nneg i32 %.fr3239.i to i64        ; 4 uses
  %i.axt = zext i32 %.0763.lcssa.i to i64
  br label %.preheader2563.us.us.i

.preheader2563.us.us.i:                           ; preds = %._crit_edge2889.split.us.us.us.i, %.preheader2563.us.us.preheader.i
  %indvars.iv3441.i = phi i64 [ %i.axt, %.preheader2563.us.us.preheader.i ], [ %indvars.iv.next3442.i, %._crit_edge2889.split.us.us.us.i ] ; 6 uses
  %.17682907.us.us.i = phi ptr [ %.0767.lcssa.i, %.preheader2563.us.us.preheader.i ], [ %i.bbp, %._crit_edge2889.split.us.us.us.i ] ; 3 uses
  %.024392906.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2563.us.us.preheader.i ], [ %.us-phi103, %._crit_edge2889.split.us.us.us.i ] ; 3 uses
  %.024442905.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2563.us.us.preheader.i ], [ %.us-phi102, %._crit_edge2889.split.us.us.us.i ] ; 3 uses
  %i.axu = lshr exact i64 %indvars.iv3441.i, 2
  %i.axv = and i64 %i.axu, 1073741823
  %i.axw = add nuw nsw i64 %indvars.iv3441.i, 1
  %i.axx = add nuw nsw i64 %indvars.iv3441.i, 2
  %i.axy = add nuw nsw i64 %indvars.iv3441.i, 3
  switch i32 %.fr2884.i, label %._crit_edge2889.split.us.us.us.i [
    i32 4, label %.preheader2563.us.us.i.split.us
    i32 1, label %.preheader2563.us.us.i.split.us104
  ]

.preheader2563.us.us.i.split.us:                  ; preds = %.preheader2563.us.us.i, %..loopexit2558_crit_edge.us.us.us.i.us
  %indvars.iv3436.i.us = phi i64 [ %indvars.iv.next3437.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ 0, %.preheader2563.us.us.i ] ; 3 uses
  %.124402886.us.us.us.i.us = phi <4 x float> [ %.42443.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024392906.us.us.i, %.preheader2563.us.us.i ] ; 3 uses
  %.124452885.us.us.us.i.us = phi <4 x float> [ %.42448.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024442905.us.us.i, %.preheader2563.us.us.i ] ; 3 uses
  %i.axz = trunc i64 %indvars.iv3436.i.us to i32
  %i.aya = mul i32 %i.awu, %i.axz
  %.reass.us2893.us.us.i.us = add i32 %i.aya, %invariant.op2892.i ; 3 uses
  %i.ayb = icmp slt i32 %.reass.us2893.us.us.i.us, 0
  br i1 %i.ayb, label %..loopexit2558_crit_edge.us.us.us.i.us, label %bb.bk

bb.bk:                                            ; preds = %.preheader2563.us.us.i.split.us
  %i.ayc = srem i32 %.reass.us2893.us.us.i.us, %i.aww
  %i.ayd = sdiv i32 %.reass.us2893.us.us.i.us, %i.aww ; 2 uses
  %.not912.us.us.us.i.us = icmp eq i32 %i.ayc, 0
  %.not913.us.us.us.i.us = icmp slt i32 %i.ayd, %i.ga
  %or.cond312 = select i1 %.not912.us.us.us.i.us, i1 %.not913.us.us.us.i.us, i1 false
  br i1 %or.cond312, label %.preheader2557.us.us.us.i.us, label %..loopexit2558_crit_edge.us.us.us.i.us

.preheader2557.us.us.us.i.us:                     ; preds = %bb.bk
  %i.aye = mul nuw nsw i64 %indvars.iv3436.i.us, %i.axs
  %i.ayf = sext i32 %i.ayd to i64
  %i.ayg = mul nsw i64 %i.ayf, %i.ha
  br label %.lr.ph.split.us.us.us.us2928.i.us

.lr.ph.split.us.us.us.us2928.i.us:                ; preds = %bb.bm, %.preheader2557.us.us.us.i.us
  %indvars.iv3431.i.us = phi i64 [ %indvars.iv.next3432.i.us, %bb.bm ], [ 0, %.preheader2557.us.us.us.i.us ] ; 3 uses
  %.224412863.us.us.us.us.i.us = phi <4 x float> [ %.32442.us.us.us.us.i.us, %bb.bm ], [ %.124402886.us.us.us.i.us, %.preheader2557.us.us.us.i.us ] ; 3 uses
  %.224462862.us.us.us.us.i.us = phi <4 x float> [ %.32447.us.us.us.us.i.us, %bb.bm ], [ %.124452885.us.us.us.i.us, %.preheader2557.us.us.us.i.us ] ; 3 uses
  %i.ayh = trunc i64 %indvars.iv3431.i.us to i32
  %i.ayi = mul i32 %i.awy, %i.ayh
  %.reass2868.us.us.us.us.i.us = add i32 %i.ayi, %invariant.op2867.i ; 3 uses
  %i.ayj = icmp slt i32 %.reass2868.us.us.us.us.i.us, 0
  br i1 %i.ayj, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph.split.us.us.us.us2928.i.us
  %i.ayk = srem i32 %.reass2868.us.us.us.us.i.us, %i.axa
  %i.ayl = sdiv i32 %.reass2868.us.us.us.us.i.us, %i.axa ; 2 uses
  %.not914.us.us.us.us.i.us = icmp eq i32 %i.ayk, 0
  %.not915.us.us.us.us.i.us = icmp slt i32 %i.ayl, %i.fz
  %or.cond313 = select i1 %.not914.us.us.us.us.i.us, i1 %.not915.us.us.us.us.i.us, i1 false
  br i1 %or.cond313, label %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us, label %bb.bm

_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us:        ; preds = %bb.bl
  %i.aym = add nuw nsw i64 %indvars.iv3431.i.us, %i.aye
  %i.ayn = shl i64 %i.aym, 3
  %i.ayo = and i64 %i.ayn, 4294967288
  %i.ayp = getelementptr inbounds nuw [2 x i8], ptr %.17682907.us.us.i, i64 %i.ayo ; 2 uses
  %i.ayq = load ptr, ptr %1, align 8, !tbaa !20, !noalias !634
  %i.ayr = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !634
  %i.ays = mul i64 %i.ayr, %i.axv
  %i.ayt = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !634 ; 2 uses
  %i.ayu = mul i64 %i.ays, %i.ayt
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayq, i64 %i.ayu
  %i.ayw = mul i64 %i.ayg, %i.ayt
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayv, i64 %i.ayw
  %i.ayy = shl nsw i32 %i.ayl, 2
  %i.ayz = sext i32 %i.ayy to i64
  %i.aza = getelementptr inbounds [2 x i8], ptr %i.ayx, i64 %i.ayz
  %i.azb = load i64, ptr %i.aza, align 1, !tbaa !82
  %i.azc = insertelement <2 x i64> poison, i64 %i.azb, i64 0
  %i.azd = bitcast <2 x i64> %i.azc to <8 x i16>
  %i.aze = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azf = bitcast <8 x i16> %i.aze to <4 x float> ; 2 uses
  %i.azg = load i64, ptr %i.ayp, align 1, !tbaa !82
  %i.azh = insertelement <2 x i64> poison, i64 %i.azg, i64 0
  %i.azi = bitcast <2 x i64> %i.azh to <8 x i16>
  %i.azj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azk = bitcast <8 x i16> %i.azj to <4 x float>
  %i.azl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azf, <4 x float> nofpclass(nan inf) %i.azk, <4 x float> nofpclass(nan inf) %.224462862.us.us.us.us.i.us)
  %i.azm = getelementptr inbounds nuw i8, ptr %i.ayp, i64 8
  %i.azn = load i64, ptr %i.azm, align 1, !tbaa !82
  %i.azo = insertelement <2 x i64> poison, i64 %i.azn, i64 0
  %i.azp = bitcast <2 x i64> %i.azo to <8 x i16>
  %i.azq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.azp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azr = bitcast <8 x i16> %i.azq to <4 x float>
  %i.azs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.azf, <4 x float> nofpclass(nan inf) %i.azr, <4 x float> nofpclass(nan inf) %.224412863.us.us.us.us.i.us)
  br label %bb.bm

bb.bm:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us, %bb.bl, %.lr.ph.split.us.us.us.us2928.i.us
  %.32447.us.us.us.us.i.us = phi nsz <4 x float> [ %.224462862.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us2928.i.us ], [ %.224462862.us.us.us.us.i.us, %bb.bl ], [ %i.azl, %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us ] ; 2 uses
  %.32442.us.us.us.us.i.us = phi nsz <4 x float> [ %.224412863.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us2928.i.us ], [ %.224412863.us.us.us.us.i.us, %bb.bl ], [ %i.azs, %_ZN4ncnn3MatD2Ev.exit950.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3432.i.us = add nuw nsw i64 %indvars.iv3431.i.us, 1 ; 2 uses
  %exitcond3435.not.i.us = icmp eq i64 %indvars.iv.next3432.i.us, %i.axs
  br i1 %exitcond3435.not.i.us, label %..loopexit2558_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us2928.i.us, !llvm.loop !573

..loopexit2558_crit_edge.us.us.us.i.us:           ; preds = %bb.bm, %bb.bk, %.preheader2563.us.us.i.split.us
  %.42448.us.us.us.i.us = phi nsz <4 x float> [ %.124452885.us.us.us.i.us, %.preheader2563.us.us.i.split.us ], [ %.124452885.us.us.us.i.us, %bb.bk ], [ %.32447.us.us.us.us.i.us, %bb.bm ] ; 2 uses
  %.42443.us.us.us.i.us = phi nsz <4 x float> [ %.124402886.us.us.us.i.us, %.preheader2563.us.us.i.split.us ], [ %.124402886.us.us.us.i.us, %bb.bk ], [ %.32442.us.us.us.us.i.us, %bb.bm ] ; 2 uses
  %indvars.iv.next3437.i.us = add nuw nsw i64 %indvars.iv3436.i.us, 1 ; 2 uses
  %exitcond3440.not.i.us = icmp eq i64 %indvars.iv.next3437.i.us, %wide.trip.count3415.i
  br i1 %exitcond3440.not.i.us, label %._crit_edge2889.split.us.us.us.i, label %.preheader2563.us.us.i.split.us, !llvm.loop !574

.preheader2563.us.us.i.split.us104:               ; preds = %.preheader2563.us.us.i, %..loopexit2558_crit_edge.us.us.us.i.us112
  %indvars.iv3436.i.us105 = phi i64 [ %indvars.iv.next3437.i.us115, %..loopexit2558_crit_edge.us.us.us.i.us112 ], [ 0, %.preheader2563.us.us.i ] ; 3 uses
  %.124402886.us.us.us.i.us106 = phi <4 x float> [ %.42443.us.us.us.i.us114, %..loopexit2558_crit_edge.us.us.us.i.us112 ], [ %.024392906.us.us.i, %.preheader2563.us.us.i ] ; 3 uses
  %.124452885.us.us.us.i.us107 = phi <4 x float> [ %.42448.us.us.us.i.us113, %..loopexit2558_crit_edge.us.us.us.i.us112 ], [ %.024442905.us.us.i, %.preheader2563.us.us.i ] ; 3 uses
  %i.azt = trunc i64 %indvars.iv3436.i.us105 to i32
  %i.azu = mul i32 %i.awu, %i.azt
  %.reass.us2893.us.us.i.us108 = add i32 %i.azu, %invariant.op2892.i ; 3 uses
  %i.azv = icmp slt i32 %.reass.us2893.us.us.i.us108, 0
  br i1 %i.azv, label %..loopexit2558_crit_edge.us.us.us.i.us112, label %bb.bn

bb.bn:                                            ; preds = %.preheader2563.us.us.i.split.us104
  %i.azw = srem i32 %.reass.us2893.us.us.i.us108, %i.aww
  %i.azx = sdiv i32 %.reass.us2893.us.us.i.us108, %i.aww ; 2 uses
  %.not912.us.us.us.i.us109 = icmp eq i32 %i.azw, 0
  %.not913.us.us.us.i.us110 = icmp slt i32 %i.azx, %i.ga
  %or.cond314 = select i1 %.not912.us.us.us.i.us109, i1 %.not913.us.us.us.i.us110, i1 false
  br i1 %or.cond314, label %.preheader2557.us.us.us.i.us111, label %..loopexit2558_crit_edge.us.us.us.i.us112

.preheader2557.us.us.us.i.us111:                  ; preds = %bb.bn
  %i.azy = mul nuw nsw i64 %indvars.iv3436.i.us105, %i.axs
  %i.azz = sext i32 %i.azx to i64
  %i.baa = mul nsw i64 %i.azz, %i.ha
  br label %.lr.ph.split.us2871.us.us.us.i.us

.lr.ph.split.us2871.us.us.us.i.us:                ; preds = %bb.bp, %.preheader2557.us.us.us.i.us111
  %indvars.iv3426.i.us = phi i64 [ %indvars.iv.next3427.i.us, %bb.bp ], [ 0, %.preheader2557.us.us.us.i.us111 ] ; 3 uses
  %.224412863.us2873.us.us.us.i.us = phi <4 x float> [ %.32442.us2879.us.us.us.i.us, %bb.bp ], [ %.124402886.us.us.us.i.us106, %.preheader2557.us.us.us.i.us111 ] ; 3 uses
  %.224462862.us2874.us.us.us.i.us = phi <4 x float> [ %.32447.us2878.us.us.us.i.us, %bb.bp ], [ %.124452885.us.us.us.i.us107, %.preheader2557.us.us.us.i.us111 ] ; 3 uses
  %i.bab = trunc i64 %indvars.iv3426.i.us to i32
  %i.bac = mul i32 %i.awy, %i.bab
  %.reass2868.us2875.us.us.us.i.us = add i32 %i.bac, %invariant.op2867.i ; 3 uses
  %i.bad = icmp slt i32 %.reass2868.us2875.us.us.us.i.us, 0
  br i1 %i.bad, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.split.us2871.us.us.us.i.us
  %i.bae = srem i32 %.reass2868.us2875.us.us.us.i.us, %i.axa
  %i.baf = sdiv i32 %.reass2868.us2875.us.us.us.i.us, %i.axa ; 2 uses
  %.not914.us2876.us.us.us.i.us = icmp eq i32 %i.bae, 0
  %.not915.us2877.us.us.us.i.us = icmp slt i32 %i.baf, %i.fz
  %or.cond315 = select i1 %.not914.us2876.us.us.us.i.us, i1 %.not915.us2877.us.us.us.i.us, i1 false
  br i1 %or.cond315, label %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, label %bb.bp

_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us:        ; preds = %bb.bo
  %i.bag = load ptr, ptr %1, align 8, !tbaa !20, !noalias !635
  %i.bah = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !635
  %i.bai = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !635 ; 2 uses
  %factor.op.mul.us.us.us2922.us.i.us = mul i64 %i.bai, %i.bah ; 4 uses
  %i.baj = mul i64 %i.baa, %i.bai
  %invariant.gep.us.us.us2923.us.i.us = getelementptr i8, ptr %i.bag, i64 %i.baj
  %i.bak = sext i32 %i.baf to i64
  %invariant.gep2859.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us2923.us.i.us, i64 %i.bak ; 4 uses
  %.reass.us.us2894.us.us.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %indvars.iv3441.i
  %gep2860.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.i.us
  %i.bal = load i16, ptr %gep2860.us.us.us.us.i.us, align 2, !tbaa !89
  %.reass.us.us2894.us.us.1.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %i.axw
  %gep2860.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.1.i.us
  %i.bam = load i16, ptr %gep2860.us.us.us.us.1.i.us, align 2, !tbaa !89
  %.reass.us.us2894.us.us.2.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %i.axx
  %gep2860.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.2.i.us
  %i.ban = load i16, ptr %gep2860.us.us.us.us.2.i.us, align 2, !tbaa !89
  %.reass.us.us2894.us.us.3.i.us = mul i64 %factor.op.mul.us.us.us2922.us.i.us, %i.axy
  %gep2860.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep2859.us.us.us.us.i.us, i64 %.reass.us.us2894.us.us.3.i.us
  %i.bao = load i16, ptr %gep2860.us.us.us.us.3.i.us, align 2, !tbaa !89
  %i.bap = zext i16 %i.bao to i32
  %i.baq = zext i16 %i.ban to i32
  %i.bar = zext i16 %i.bam to i32
  %i.bas = zext i16 %i.bal to i32
  %i.bat = insertelement <4 x i32> poison, i32 %i.bas, i64 0
  %i.bau = insertelement <4 x i32> %i.bat, i32 %i.bar, i64 1
  %i.bav = insertelement <4 x i32> %i.bau, i32 %i.baq, i64 2
  %i.baw = insertelement <4 x i32> %i.bav, i32 %i.bap, i64 3
  %i.bax = shl nuw <4 x i32> %i.baw, splat (i32 16)
  %.sroa.03566.12.vec.insert.i.us = bitcast <4 x i32> %i.bax to <4 x float> ; 2 uses
  %i.bay = add nuw nsw i64 %indvars.iv3426.i.us, %i.azy
  %i.baz = shl i64 %i.bay, 3
  %i.bba = and i64 %i.baz, 4294967288
  %i.bbb = getelementptr inbounds nuw [2 x i8], ptr %.17682907.us.us.i, i64 %i.bba ; 2 uses
  %i.bbc = load i64, ptr %i.bbb, align 1, !tbaa !82
  %i.bbd = insertelement <2 x i64> poison, i64 %i.bbc, i64 0
  %i.bbe = bitcast <2 x i64> %i.bbd to <8 x i16>
  %i.bbf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbg = bitcast <8 x i16> %i.bbf to <4 x float>
  %i.bbh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03566.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bbg, <4 x float> nofpclass(nan inf) %.224462862.us2874.us.us.us.i.us)
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bbb, i64 8
  %i.bbj = load i64, ptr %i.bbi, align 1, !tbaa !82
  %i.bbk = insertelement <2 x i64> poison, i64 %i.bbj, i64 0
  %i.bbl = bitcast <2 x i64> %i.bbk to <8 x i16>
  %i.bbm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bbl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbn = bitcast <8 x i16> %i.bbm to <4 x float>
  %i.bbo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.03566.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bbn, <4 x float> nofpclass(nan inf) %.224412863.us2873.us.us.us.i.us)
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us, %bb.bo, %.lr.ph.split.us2871.us.us.us.i.us
  %.32447.us2878.us.us.us.i.us = phi nsz <4 x float> [ %.224462862.us2874.us.us.us.i.us, %.lr.ph.split.us2871.us.us.us.i.us ], [ %i.bbh, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224462862.us2874.us.us.us.i.us, %bb.bo ] ; 2 uses
  %.32442.us2879.us.us.us.i.us = phi nsz <4 x float> [ %.224412863.us2873.us.us.us.i.us, %.lr.ph.split.us2871.us.us.us.i.us ], [ %i.bbo, %_ZN4ncnn3MatD2Ev.exit949.us.us.us.us.i.us ], [ %.224412863.us2873.us.us.us.i.us, %bb.bo ] ; 2 uses
  %indvars.iv.next3427.i.us = add nuw nsw i64 %indvars.iv3426.i.us, 1 ; 2 uses
  %exitcond3430.not.i.us = icmp eq i64 %indvars.iv.next3427.i.us, %i.axs
  br i1 %exitcond3430.not.i.us, label %..loopexit2558_crit_edge.us.us.us.i.us112, label %.lr.ph.split.us2871.us.us.us.i.us, !llvm.loop !573

..loopexit2558_crit_edge.us.us.us.i.us112:        ; preds = %bb.bp, %bb.bn, %.preheader2563.us.us.i.split.us104
  %.42448.us.us.us.i.us113 = phi nsz <4 x float> [ %.124452885.us.us.us.i.us107, %.preheader2563.us.us.i.split.us104 ], [ %.124452885.us.us.us.i.us107, %bb.bn ], [ %.32447.us2878.us.us.us.i.us, %bb.bp ] ; 2 uses
  %.42443.us.us.us.i.us114 = phi nsz <4 x float> [ %.124402886.us.us.us.i.us106, %.preheader2563.us.us.i.split.us104 ], [ %.124402886.us.us.us.i.us106, %bb.bn ], [ %.32442.us2879.us.us.us.i.us, %bb.bp ] ; 2 uses
  %indvars.iv.next3437.i.us115 = add nuw nsw i64 %indvars.iv3436.i.us105, 1 ; 2 uses
  %exitcond3440.not.i.us116 = icmp eq i64 %indvars.iv.next3437.i.us115, %wide.trip.count3415.i
  br i1 %exitcond3440.not.i.us116, label %._crit_edge2889.split.us.us.us.i, label %.preheader2563.us.us.i.split.us104, !llvm.loop !574

._crit_edge2889.split.us.us.us.i:                 ; preds = %..loopexit2558_crit_edge.us.us.us.i.us112, %..loopexit2558_crit_edge.us.us.us.i.us, %.preheader2563.us.us.i
  %.us-phi102 = phi <4 x float> [ %.42448.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024442905.us.us.i, %.preheader2563.us.us.i ], [ %.42448.us.us.us.i.us113, %..loopexit2558_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %.us-phi103 = phi <4 x float> [ %.42443.us.us.us.i.us, %..loopexit2558_crit_edge.us.us.us.i.us ], [ %.024392906.us.us.i, %.preheader2563.us.us.i ], [ %.42443.us.us.us.i.us114, %..loopexit2558_crit_edge.us.us.us.i.us112 ] ; 2 uses
  %i.bbp = getelementptr inbounds [2 x i8], ptr %.17682907.us.us.i, i64 %i.arj ; 2 uses
  %indvars.iv.next3442.i = add nuw nsw i64 %indvars.iv3441.i, 4 ; 2 uses
  %i.bbq = trunc i64 %indvars.iv.next3442.i to i32 ; 2 uses
  %i.bbr = or i32 %i.bbq, 3
  %i.bbs = icmp slt i32 %i.bbr, %i.fy
  br i1 %i.bbs, label %.preheader2563.us.us.i, label %._crit_edge2911.i, !llvm.loop !577

._crit_edge2911.i:                                ; preds = %._crit_edge2889.split.us.us.us.i, %.preheader2563.us.preheader.i, %.preheader2563.preheader.i, %._crit_edge2838.i
  %.02444.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2838.i ], [ zeroinitializer, %.preheader2563.preheader.i ], [ zeroinitializer, %.preheader2563.us.preheader.i ], [ %.us-phi102, %._crit_edge2889.split.us.us.us.i ] ; 2 uses
  %.02439.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge2838.i ], [ zeroinitializer, %.preheader2563.preheader.i ], [ zeroinitializer, %.preheader2563.us.preheader.i ], [ %.us-phi103, %._crit_edge2889.split.us.us.us.i ] ; 2 uses
  %.1768.lcssa.i = phi ptr [ %.0767.lcssa.i, %._crit_edge2838.i ], [ %scevgep3420.i, %.preheader2563.preheader.i ], [ %scevgep3421.i, %.preheader2563.us.preheader.i ], [ %i.bbp, %._crit_edge2889.split.us.us.us.i ] ; 4 uses
  %.1764.lcssa.i = phi i32 [ %.0763.lcssa.i, %._crit_edge2838.i ], [ %i.axi, %.preheader2563.preheader.i ], [ %i.axr, %.preheader2563.us.preheader.i ], [ %i.bbq, %._crit_edge2889.split.us.us.us.i ] ; 7 uses
  %i.bbt = shufflevector <4 x float> %.02444.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bbu = fadd fast <4 x float> %i.bbt, %.02444.lcssa.i ; 2 uses
  %i.bbv = shufflevector <4 x float> %i.awm, <4 x float> %i.awr, <2 x i32> <i32 1, i32 5>
  %i.bbw = fadd fast <2 x float> %i.bbv, %i.arq
  %i.bbx = shufflevector <4 x float> %.02439.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bby = fadd fast <4 x float> %i.bbx, %.02439.lcssa.i ; 2 uses
  %i.bbz = shufflevector <4 x float> %i.awm, <4 x float> %i.awr, <2 x i32> <i32 0, i32 4>
  %i.bca = fadd fast <2 x float> %i.bbw, %i.bbz
  %i.bcb = shufflevector <4 x float> %i.bbu, <4 x float> %i.bby, <2 x i32> <i32 1, i32 5>
  %i.bcc = fadd fast <2 x float> %i.bca, %i.bcb
  %i.bcd = shufflevector <4 x float> %i.bbu, <4 x float> %i.bby, <2 x i32> <i32 0, i32 4>
  %i.bce = fadd fast <2 x float> %i.bcc, %i.bcd   ; 4 uses
  %i.bcf = or disjoint i32 %.1764.lcssa.i, 1
  %i.bcg = icmp slt i32 %i.bcf, %i.fy
  br i1 %i.bcg, label %.preheader2562.lr.ph.i, label %.preheader2565.i

.preheader2562.lr.ph.i:                           ; preds = %._crit_edge2911.i
  %i.bch = load i32, ptr %i.d, align 4
  %i.bci = load i32, ptr %i.j, align 4
  %invariant.op2952.i = sub i32 %.neg2520.i, %i.bci
  %i.bcj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bck = load i32, ptr %i.a, align 4
  %.fr3240.i = freeze i32 %i.bck                  ; 2 uses
  %i.bcl = load i32, ptr %i.c, align 4
  %i.bcm = load i32, ptr %i.i, align 4
  %.neg2514.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2943.i = sub i32 %.neg2514.i, %i.bcm
  %i.bcn = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.are, label %.preheader2562.lr.ph.split.us.i, label %.preheader2562.preheader.i

.preheader2562.preheader.i:                       ; preds = %.preheader2562.lr.ph.i
  %i.bco = sub i32 %i.gy, %.1764.lcssa.i
  %i.bcp = and i32 %i.bco, -2                     ; 2 uses
  %i.bcq = zext i32 %i.bcp to i64
  %i.bcr = add nuw nsw i64 %i.bcq, 2
  %i.bcs = mul nsw i64 %i.bcr, %i.arl
  %scevgep3444.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bcs
  %i.bct = add i32 %.1764.lcssa.i, 2
  %i.bcu = add i32 %i.bct, %i.bcp
  br label %.preheader2565.i

.preheader2562.lr.ph.split.us.i:                  ; preds = %.preheader2562.lr.ph.i
  %i.bcv = icmp sgt i32 %.fr3240.i, 0
  br i1 %i.bcv, label %.preheader2562.us.us.preheader.i, label %.preheader2562.us.preheader.i

.preheader2562.us.preheader.i:                    ; preds = %.preheader2562.lr.ph.split.us.i
  %i.bcw = sub i32 %i.gy, %.1764.lcssa.i
  %i.bcx = and i32 %i.bcw, -2                     ; 2 uses
  %i.bcy = zext i32 %i.bcx to i64
  %i.bcz = add nuw nsw i64 %i.bcy, 2
  %i.bda = mul nsw i64 %i.bcz, %i.arl
  %scevgep3445.i = getelementptr i8, ptr %.1768.lcssa.i, i64 %i.bda
  %i.bdb = add i32 %.1764.lcssa.i, 2
  %i.bdc = add i32 %i.bdb, %i.bcx
  br label %.preheader2565.i

.preheader2562.us.us.preheader.i:                 ; preds = %.preheader2562.lr.ph.split.us.i
  %i.bdd = zext nneg i32 %.fr3240.i to i64        ; 2 uses
  %i.bde = zext i32 %.1764.lcssa.i to i64
  br label %.preheader2562.us.us.i

.preheader2562.us.us.i:                           ; preds = %._crit_edge2949.split.us.us.us.i, %.preheader2562.us.us.preheader.i
  %indvars.iv3459.i = phi i64 [ %i.bde, %.preheader2562.us.us.preheader.i ], [ %indvars.iv.next3460.i, %._crit_edge2949.split.us.us.us.i ] ; 3 uses
  %.27692960.us.us.i = phi ptr [ %.1768.lcssa.i, %.preheader2562.us.us.preheader.i ], [ %i.bfb, %._crit_edge2949.split.us.us.us.i ] ; 2 uses
  %i.bdf = phi <2 x float> [ %i.bce, %.preheader2562.us.us.preheader.i ], [ %i.bfa, %._crit_edge2949.split.us.us.us.i ]
  %i.bdg = add nuw nsw i64 %indvars.iv3459.i, 1
  br label %bb.bq

bb.bq:                                            ; preds = %..loopexit2556_crit_edge.us.us.us.i, %.preheader2562.us.us.i
  %indvars.iv3454.i = phi i64 [ %indvars.iv.next3455.i, %..loopexit2556_crit_edge.us.us.us.i ], [ 0, %.preheader2562.us.us.i ] ; 3 uses
  %i.bdh = phi <2 x float> [ %i.bfa, %..loopexit2556_crit_edge.us.us.us.i ], [ %i.bdf, %.preheader2562.us.us.i ] ; 3 uses
  %i.bdi = trunc i64 %indvars.iv3454.i to i32
  %i.bdj = mul i32 %i.bch, %i.bdi
  %.reass2953.us.us.us.i = add i32 %i.bdj, %invariant.op2952.i ; 3 uses
  %i.bdk = icmp slt i32 %.reass2953.us.us.us.i, 0
  br i1 %i.bdk, label %..loopexit2556_crit_edge.us.us.us.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.bdl = srem i32 %.reass2953.us.us.us.i, %i.bcj
  %i.bdm = sdiv i32 %.reass2953.us.us.us.i, %i.bcj ; 2 uses
  %.not908.us.us.us.i = icmp eq i32 %i.bdl, 0
  %.not909.us.us.us.i = icmp slt i32 %i.bdm, %i.ga
  %or.cond316 = select i1 %.not908.us.us.us.i, i1 %.not909.us.us.us.i, i1 false
  br i1 %or.cond316, label %.preheader2555.us.us.us.i, label %..loopexit2556_crit_edge.us.us.us.i

.preheader2555.us.us.us.i:                        ; preds = %bb.br
  %i.bdn = mul nuw nsw i64 %indvars.iv3454.i, %i.bdd
  %i.bdo = sext i32 %i.bdm to i64
  %i.bdp = mul nsw i64 %i.bdo, %i.ha
  br label %bb.bs

bb.bs:                                            ; preds = %.loopexit2552.us.us.us.i, %.preheader2555.us.us.us.i
  %indvars.iv3449.i = phi i64 [ %indvars.iv.next3450.i, %.loopexit2552.us.us.us.i ], [ 0, %.preheader2555.us.us.us.i ] ; 3 uses
  %i.bdq = phi <2 x float> [ %i.bez, %.loopexit2552.us.us.us.i ], [ %i.bdh, %.preheader2555.us.us.us.i ] ; 3 uses
  %i.bdr = trunc i64 %indvars.iv3449.i to i32
  %i.bds = mul i32 %i.bcl, %i.bdr
  %.reass2944.us.us.us.i = add i32 %invariant.op2943.i, %i.bds ; 3 uses
  %i.bdt = icmp slt i32 %.reass2944.us.us.us.i, 0
  br i1 %i.bdt, label %.loopexit2552.us.us.us.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.bdu = srem i32 %.reass2944.us.us.us.i, %i.bcn
  %i.bdv = sdiv i32 %.reass2944.us.us.us.i, %i.bcn ; 2 uses
  %.not910.us.us.us.i = icmp eq i32 %i.bdu, 0
  %.not911.us.us.us.i = icmp slt i32 %i.bdv, %i.fz
  %or.cond317 = select i1 %.not910.us.us.us.i, i1 %.not911.us.us.us.i, i1 false
  br i1 %or.cond317, label %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, label %.loopexit2552.us.us.us.i

_ZN4ncnn3MatD2Ev.exit948.us.us.us.i:              ; preds = %bb.bt
  %i.bdw = add nuw nsw i64 %indvars.iv3449.i, %i.bdn
  %i.bdx = shl i64 %i.bdw, 2
  %i.bdy = and i64 %i.bdx, 4294967292
  %i.bdz = getelementptr inbounds nuw [2 x i8], ptr %.27692960.us.us.i, i64 %i.bdy
  %i.bea = load ptr, ptr %1, align 8, !tbaa !20, !noalias !636
  %i.beb = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !636
  %i.bec = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !636 ; 2 uses
  %factor.op.mul.us.us.us2979.i = mul i64 %i.bec, %i.beb ; 2 uses
  %i.bed = mul i64 %i.bdp, %i.bec
  %invariant.gep.us.us.us2980.i = getelementptr i8, ptr %i.bea, i64 %i.bed
  %i.bee = sext i32 %i.bdv to i64
  %invariant.gep2933.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us2980.i, i64 %i.bee ; 2 uses
  %.reass.us2954.us.us.i = mul i64 %factor.op.mul.us.us.us2979.i, %indvars.iv3459.i
  %gep2934.us.us.us.i = getelementptr i8, ptr %invariant.gep2933.us.us.us.i, i64 %.reass.us2954.us.us.i
  %i.bef = load i16, ptr %gep2934.us.us.us.i, align 2, !tbaa !89
  %.reass.us2954.us.us.1.i = mul i64 %factor.op.mul.us.us.us2979.i, %i.bdg
  %gep2934.us.us.us.1.i = getelementptr i8, ptr %invariant.gep2933.us.us.us.i, i64 %.reass.us2954.us.us.1.i
  %i.beg = load i16, ptr %gep2934.us.us.us.1.i, align 2, !tbaa !89
  %i.beh = load <4 x i16>, ptr %i.bdz, align 2, !tbaa !89
  %i.bei = freeze <4 x i16> %i.beh
  %i.bej = bitcast <4 x i16> %i.bei to <2 x i32>  ; 2 uses
  %i.bek = and <2 x i32> %i.bej, splat (i32 -65536)
  %i.bel = shl <2 x i32> %i.bej, splat (i32 16)
  %i.bem = bitcast <2 x i32> %i.bel to <2 x float>
  %i.ben = insertelement <2 x i16> poison, i16 %i.beg, i64 0
  %i.beo = insertelement <2 x i16> %i.ben, i16 %i.bef, i64 1
  %i.bep = zext <2 x i16> %i.beo to <2 x i32>
  %i.beq = shl nuw <2 x i32> %i.bep, splat (i32 16)
  %i.ber = bitcast <2 x i32> %i.beq to <2 x float> ; 2 uses
  %i.bes = shufflevector <2 x float> %i.ber, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bet = fmul fast <2 x float> %i.bes, %i.bem
  %i.beu = fadd fast <2 x float> %i.bdq, %i.bet
  %i.bev = bitcast <2 x i32> %i.bek to <2 x float>
  %i.bew = shufflevector <2 x float> %i.ber, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bex = fmul fast <2 x float> %i.bew, %i.bev
  %i.bey = fadd fast <2 x float> %i.bex, %i.beu
  br label %.loopexit2552.us.us.us.i

.loopexit2552.us.us.us.i:                         ; preds = %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i, %bb.bt, %bb.bs
  %i.bez = phi <2 x float> [ %i.bdq, %bb.bs ], [ %i.bdq, %bb.bt ], [ %i.bey, %_ZN4ncnn3MatD2Ev.exit948.us.us.us.i ] ; 2 uses
  %indvars.iv.next3450.i = add nuw nsw i64 %indvars.iv3449.i, 1 ; 2 uses
  %exitcond3453.not.i = icmp eq i64 %indvars.iv.next3450.i, %i.bdd
  br i1 %exitcond3453.not.i, label %..loopexit2556_crit_edge.us.us.us.i, label %bb.bs, !llvm.loop !580

..loopexit2556_crit_edge.us.us.us.i:              ; preds = %.loopexit2552.us.us.us.i, %bb.br, %bb.bq
  %i.bfa = phi <2 x float> [ %i.bdh, %bb.bq ], [ %i.bdh, %bb.br ], [ %i.bez, %.loopexit2552.us.us.us.i ] ; 3 uses
  %indvars.iv.next3455.i = add nuw nsw i64 %indvars.iv3454.i, 1 ; 2 uses
  %exitcond3458.not.i = icmp eq i64 %indvars.iv.next3455.i, %wide.trip.count3415.i
  br i1 %exitcond3458.not.i, label %._crit_edge2949.split.us.us.us.i, label %bb.bq, !llvm.loop !581

._crit_edge2949.split.us.us.us.i:                 ; preds = %..loopexit2556_crit_edge.us.us.us.i
  %i.bfb = getelementptr inbounds [2 x i8], ptr %.27692960.us.us.i, i64 %i.arl ; 2 uses
  %indvars.iv.next3460.i = add nuw nsw i64 %indvars.iv3459.i, 2 ; 2 uses
  %i.bfc = trunc i64 %indvars.iv.next3460.i to i32 ; 2 uses
  %i.bfd = or i32 %i.bfc, 1
  %i.bfe = icmp slt i32 %i.bfd, %i.fy
  br i1 %i.bfe, label %.preheader2562.us.us.i, label %.preheader2565.i, !llvm.loop !582

.preheader2565.i:                                 ; preds = %._crit_edge2949.split.us.us.us.i, %.preheader2562.us.preheader.i, %.preheader2562.preheader.i, %._crit_edge2911.i
  %.2769.lcssa.i = phi ptr [ %.1768.lcssa.i, %._crit_edge2911.i ], [ %scevgep3444.i, %.preheader2562.preheader.i ], [ %scevgep3445.i, %.preheader2562.us.preheader.i ], [ %i.bfb, %._crit_edge2949.split.us.us.us.i ]
  %.2765.lcssa.i = phi i32 [ %.1764.lcssa.i, %._crit_edge2911.i ], [ %i.bcu, %.preheader2562.preheader.i ], [ %i.bdc, %.preheader2562.us.preheader.i ], [ %i.bfc, %._crit_edge2949.split.us.us.us.i ] ; 2 uses
  %i.bff = phi <2 x float> [ %i.bce, %._crit_edge2911.i ], [ %i.bce, %.preheader2562.preheader.i ], [ %i.bce, %.preheader2562.us.preheader.i ], [ %i.bfa, %._crit_edge2949.split.us.us.us.i ] ; 3 uses
  %i.bfg = icmp slt i32 %.2765.lcssa.i, %i.fy
  br i1 %i.bfg, label %.preheader2561.lr.ph.i, label %._crit_edge3009.i

.preheader2561.lr.ph.i:                           ; preds = %.preheader2565.i
  %i.bfh = load i32, ptr %i.d, align 4
  %i.bfi = load i32, ptr %i.j, align 4
  %invariant.op2998.i = sub i32 %.neg2520.i, %i.bfi
  %i.bfj = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bfk = load i32, ptr %i.a, align 4
  %.fr3241.i = freeze i32 %i.bfk                  ; 2 uses
  %i.bfl = load i32, ptr %i.c, align 4
  %i.bfm = load i32, ptr %i.i, align 4
  %.neg2510.i = add nuw nsw i32 %.08033025.i, 1
  %invariant.op2990.i = sub i32 %.neg2510.i, %i.bfm
  %i.bfn = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bfo = icmp sgt i32 %.fr3241.i, 0
  %or.cond3746.i = and i1 %i.are, %i.bfo
  br i1 %or.cond3746.i, label %.preheader2561.us.us.preheader.i, label %._crit_edge3009.i

.preheader2561.us.us.preheader.i:                 ; preds = %.preheader2561.lr.ph.i
  %i.bfp = zext nneg i32 %.fr3241.i to i64        ; 2 uses
  %i.bfq = zext i32 %.2765.lcssa.i to i64
  br label %.preheader2561.us.us.i

.preheader2561.us.us.i:                           ; preds = %._crit_edge2995.split.us.us.us.i, %.preheader2561.us.us.preheader.i
  %indvars.iv3472.i = phi i64 [ %i.bfq, %.preheader2561.us.us.preheader.i ], [ %indvars.iv.next3473.i, %._crit_edge2995.split.us.us.us.i ] ; 2 uses
  %.37703006.us.us.i = phi ptr [ %.2769.lcssa.i, %.preheader2561.us.us.preheader.i ], [ %i.bhh, %._crit_edge2995.split.us.us.us.i ] ; 2 uses
  %i.bfr = phi <2 x float> [ %i.bff, %.preheader2561.us.us.preheader.i ], [ %i.bhg, %._crit_edge2995.split.us.us.us.i ]
  br label %bb.bu

bb.bu:                                            ; preds = %..loopexit2554_crit_edge.us.us.us.i, %.preheader2561.us.us.i
  %indvars.iv3467.i = phi i64 [ %indvars.iv.next3468.i, %..loopexit2554_crit_edge.us.us.us.i ], [ 0, %.preheader2561.us.us.i ] ; 3 uses
  %i.bfs = phi <2 x float> [ %i.bhg, %..loopexit2554_crit_edge.us.us.us.i ], [ %i.bfr, %.preheader2561.us.us.i ] ; 3 uses
  %i.bft = trunc i64 %indvars.iv3467.i to i32
  %i.bfu = mul i32 %i.bfh, %i.bft
  %.reass2999.us.us.us.i = add i32 %i.bfu, %invariant.op2998.i ; 3 uses
  %i.bfv = icmp slt i32 %.reass2999.us.us.us.i, 0
  br i1 %i.bfv, label %..loopexit2554_crit_edge.us.us.us.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.bfw = srem i32 %.reass2999.us.us.us.i, %i.bfj
  %i.bfx = sdiv i32 %.reass2999.us.us.us.i, %i.bfj ; 2 uses
  %.not904.us.us.us.i = icmp eq i32 %i.bfw, 0
  %.not905.us.us.us.i = icmp slt i32 %i.bfx, %i.ga
  %or.cond318 = select i1 %.not904.us.us.us.i, i1 %.not905.us.us.us.i, i1 false
  br i1 %or.cond318, label %.preheader2553.us.us.us.i, label %..loopexit2554_crit_edge.us.us.us.i

.preheader2553.us.us.us.i:                        ; preds = %bb.bv
  %i.bfy = mul nuw nsw i64 %indvars.iv3467.i, %i.bfp
  %i.bfz = sext i32 %i.bfx to i64
  %i.bga = mul nsw i64 %i.bfz, %i.ha
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %.preheader2553.us.us.us.i
  %indvars.iv3462.i = phi i64 [ %indvars.iv.next3463.i, %bb.by ], [ 0, %.preheader2553.us.us.us.i ] ; 3 uses
  %i.bgb = phi <2 x float> [ %i.bhf, %bb.by ], [ %i.bfs, %.preheader2553.us.us.us.i ] ; 3 uses
  %i.bgc = trunc i64 %indvars.iv3462.i to i32
  %i.bgd = mul i32 %i.bfl, %i.bgc
  %.reass.us3000.us.us.i = add i32 %invariant.op2990.i, %i.bgd ; 3 uses
  %i.bge = icmp slt i32 %.reass.us3000.us.us.i, 0
  br i1 %i.bge, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.bgf = srem i32 %.reass.us3000.us.us.i, %i.bfn
  %i.bgg = sdiv i32 %.reass.us3000.us.us.i, %i.bfn ; 2 uses
  %.not906.us.us.us.i = icmp eq i32 %i.bgf, 0
  %.not907.us.us.us.i = icmp slt i32 %i.bgg, %i.fz
  %or.cond319 = select i1 %.not906.us.us.us.i, i1 %.not907.us.us.us.i, i1 false
  br i1 %or.cond319, label %_ZN4ncnn3MatD2Ev.exit947.us.us.us.i, label %bb.by

_ZN4ncnn3MatD2Ev.exit947.us.us.us.i:              ; preds = %bb.bx
  %i.bgh = add nuw nsw i64 %indvars.iv3462.i, %i.bfy
  %.idx3637.i = shl nuw nsw i64 %i.bgh, 2
  %i.bgi = getelementptr inbounds nuw i8, ptr %.37703006.us.us.i, i64 %.idx3637.i
  %i.bgj = load ptr, ptr %1, align 8, !tbaa !20, !noalias !637
  %i.bgk = load i64, ptr %i.gj, align 8, !tbaa !21, !noalias !637
  %i.bgl = mul i64 %i.bgk, %indvars.iv3472.i
  %i.bgm = load i64, ptr %i.gk, align 8, !tbaa !55, !noalias !637 ; 2 uses
  %i.bgn = mul i64 %i.bgl, %i.bgm
  %i.bgo = getelementptr inbounds nuw i8, ptr %i.bgj, i64 %i.bgn
  %i.bgp = mul i64 %i.bga, %i.bgm
  %i.bgq = getelementptr inbounds nuw i8, ptr %i.bgo, i64 %i.bgp
end_hunk_12
begin_hunk_13_@_ZNK4ncnn21Deconvolution_x86_fma13forward_bf16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.blv = sdiv i32 %.reass3058.us.us.us.i, %i.bla ; 2 uses
  %.not899.us.us.us.i = icmp eq i32 %i.blu, 0
  %.not900.us.us.us.i = icmp slt i32 %i.blv, %i.apg
  %or.cond320 = select i1 %.not899.us.us.us.i, i1 %.not900.us.us.us.i, i1 false
  br i1 %or.cond320, label %.preheader2544.us.us.us.i, label %..loopexit2545_crit_edge.us.us.us.i

.preheader2544.us.us.us.i:                        ; preds = %bb.ch
  %i.blw = mul nuw nsw i64 %indvars.iv3495.i, %i.blg
  %i.blx = sext i32 %i.blv to i64
  %i.bly = mul nsw i64 %i.blx, %i.aqj             ; 3 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cl, %.preheader2544.us.us.us.i
  %indvars.iv3490.i = phi i64 [ %indvars.iv.next3491.i, %bb.cl ], [ 0, %.preheader2544.us.us.us.i ] ; 3 uses
  %.224363047.us.us.us.i = phi <8 x float> [ %.32437.us.us.us.i, %bb.cl ], [ %.124353052.us.us.us.i, %.preheader2544.us.us.us.i ] ; 4 uses
  %i.blz = trunc i64 %indvars.iv3490.i to i32
  %i.bma = mul i32 %i.blc, %i.blz
  %.reass3051.us.us.us.i = add i32 %invariant.op3050.i, %i.bma ; 3 uses
  %i.bmb = icmp slt i32 %.reass3051.us.us.us.i, 0
  br i1 %i.bmb, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.bmc = srem i32 %.reass3051.us.us.us.i, %i.ble
  %i.bmd = sdiv i32 %.reass3051.us.us.us.i, %i.ble ; 4 uses
  %.not901.us.us.us.i = icmp eq i32 %i.bmc, 0
  %.not902.us.us.us.i = icmp slt i32 %i.bmd, %i.apf
  %or.cond321 = select i1 %.not901.us.us.us.i, i1 %.not902.us.us.us.i, i1 false
  br i1 %or.cond321, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.bme = add nuw nsw i64 %indvars.iv3490.i, %i.blw
  %i.bmf = shl i64 %i.bme, 3
  %i.bmg = and i64 %i.bmf, 4294967288
  %i.bmh = getelementptr inbounds nuw [2 x i8], ptr %.07243062.us.us.i, i64 %i.bmg
  switch i32 %.fr3104.i, label %bb.cl [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i
    i32 4, label %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i
    i32 1, label %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i
  ]

_ZN4ncnn3MatD2Ev.exit941.us.us.us.i:              ; preds = %bb.ck
  %i.bmi = load ptr, ptr %1, align 8, !tbaa !20, !noalias !638
  %i.bmj = load i64, ptr %i.app, align 8, !tbaa !21, !noalias !638
  %i.bmk = load i64, ptr %i.apq, align 8, !tbaa !55, !noalias !638 ; 2 uses
  %factor.op.mul3042.us.us.us.i = mul i64 %i.bmk, %i.bmj ; 8 uses
  %i.bml = mul i64 %i.bly, %i.bmk
  %invariant.gep.us.us.us3080.i = getelementptr i8, ptr %i.bmi, i64 %i.bml
  %i.bmm = sext i32 %i.bmd to i64
  %invariant.gep3044.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3080.i, i64 %i.bmm ; 8 uses
  %.reass3043.us.us.us.i = mul i64 %factor.op.mul3042.us.us.us.i, %indvars.iv3500.i
  %gep3045.us.us.us.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.i
  %i.bmn = load i16, ptr %gep3045.us.us.us.i, align 2, !tbaa !89
  %.reass3043.us.us.us.1.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blk
  %gep3045.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.1.i
  %i.bmo = load i16, ptr %gep3045.us.us.us.1.i, align 2, !tbaa !89
  %.reass3043.us.us.us.2.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.bll
  %gep3045.us.us.us.2.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.2.i
  %i.bmp = load i16, ptr %gep3045.us.us.us.2.i, align 2, !tbaa !89
  %.reass3043.us.us.us.3.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blm
  %gep3045.us.us.us.3.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.3.i
  %i.bmq = load i16, ptr %gep3045.us.us.us.3.i, align 2, !tbaa !89
  %.reass3043.us.us.us.4.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.bln
  %gep3045.us.us.us.4.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.4.i
  %i.bmr = load i16, ptr %gep3045.us.us.us.4.i, align 2, !tbaa !89
  %.reass3043.us.us.us.5.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blo
  %gep3045.us.us.us.5.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.5.i
  %i.bms = load i16, ptr %gep3045.us.us.us.5.i, align 2, !tbaa !89
  %.reass3043.us.us.us.6.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blp
  %gep3045.us.us.us.6.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.6.i
  %i.bmt = load i16, ptr %gep3045.us.us.us.6.i, align 2, !tbaa !89
  %.reass3043.us.us.us.7.i = mul i64 %factor.op.mul3042.us.us.us.i, %i.blq
  %gep3045.us.us.us.7.i = getelementptr i8, ptr %invariant.gep3044.us.us.us.i, i64 %.reass3043.us.us.us.7.i
  %i.bmu = load i16, ptr %gep3045.us.us.us.7.i, align 2, !tbaa !89
  %i.bmv = insertelement <4 x i16> poison, i16 %i.bmr, i64 0
  %i.bmw = insertelement <4 x i16> %i.bmv, i16 %i.bms, i64 1
  %i.bmx = insertelement <4 x i16> %i.bmw, i16 %i.bmt, i64 2
  %i.bmy = insertelement <4 x i16> %i.bmx, i16 %i.bmu, i64 3
  %i.bmz = zext <4 x i16> %i.bmy to <4 x i32>
  %i.bna = zext i16 %i.bmq to i32
  %i.bnb = zext i16 %i.bmp to i32
  %i.bnc = zext i16 %i.bmo to i32
  %i.bnd = zext i16 %i.bmn to i32
  %i.bne = insertelement <8 x i32> poison, i32 %i.bnd, i64 0
  %i.bnf = insertelement <8 x i32> %i.bne, i32 %i.bnc, i64 1
  %i.bng = insertelement <8 x i32> %i.bnf, i32 %i.bnb, i64 2
  %i.bnh = insertelement <8 x i32> %i.bng, i32 %i.bna, i64 3
  %i.bni = shufflevector <4 x i32> %i.bmz, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bnj = shufflevector <8 x i32> %i.bnh, <8 x i32> %i.bni, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bnk = shl nuw <8 x i32> %i.bnj, splat (i32 16)
  %.sroa.03564.28.vec.insert.i = bitcast <8 x i32> %i.bnk to <8 x float>
  br label %.sink.split3748.i

_ZN4ncnn3MatD2Ev.exit943.us.us.us.i:              ; preds = %bb.ck
  %i.bnl = load ptr, ptr %1, align 8, !tbaa !20, !noalias !639 ; 2 uses
  %i.bnm = load i64, ptr %i.app, align 8, !tbaa !21, !noalias !639
  %i.bnn = load i64, ptr %i.apq, align 8, !tbaa !55, !noalias !639 ; 2 uses
  %i.bno = mul i64 %i.bnn, %i.bnm                 ; 2 uses
  %i.bnp = mul i64 %i.bno, %i.blh
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnl, i64 %i.bnp
  %i.bnr = mul i64 %i.bly, %i.bnn                 ; 2 uses
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnq, i64 %i.bnr
  %i.bnt = shl nsw i32 %i.bmd, 2
  %i.bnu = sext i32 %i.bnt to i64                 ; 2 uses
  %i.bnv = getelementptr inbounds [2 x i8], ptr %i.bns, i64 %i.bnu
  %i.bnw = mul i64 %i.bno, %i.bli
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnl, i64 %i.bnw
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnx, i64 %i.bnr
  %i.bnz = getelementptr inbounds [2 x i8], ptr %i.bny, i64 %i.bnu
  %i.boa = load i64, ptr %i.bnv, align 1, !tbaa !82
  %i.bob = insertelement <2 x i64> poison, i64 %i.boa, i64 0
  %i.boc = bitcast <2 x i64> %i.bob to <8 x i16>
  %i.bod = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.boc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.boe = load i64, ptr %i.bnz, align 1, !tbaa !82
  %i.bof = insertelement <2 x i64> poison, i64 %i.boe, i64 0
  %i.bog = bitcast <2 x i64> %i.bof to <8 x i16>
  %i.boh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bog, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.boi = shufflevector <8 x i16> %i.bod, <8 x i16> %i.boh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.boj = bitcast <16 x i16> %i.boi to <8 x float>
  br label %.sink.split3748.i

_ZN4ncnn3MatD2Ev.exit944.us.us.us.i:              ; preds = %bb.ck
  %i.bok = load ptr, ptr %1, align 8, !tbaa !20, !noalias !640
  %i.bol = load i64, ptr %i.app, align 8, !tbaa !21, !noalias !640
  %i.bom = mul i64 %i.bol, %i.blj
  %i.bon = load i64, ptr %i.apq, align 8, !tbaa !55, !noalias !640 ; 2 uses
  %i.boo = mul i64 %i.bom, %i.bon
  %i.bop = getelementptr inbounds nuw i8, ptr %i.bok, i64 %i.boo
  %i.boq = mul i64 %i.bly, %i.bon
  %i.bor = getelementptr inbounds nuw i8, ptr %i.bop, i64 %i.boq
  %i.bos = shl nsw i32 %i.bmd, 3
  %i.bot = sext i32 %i.bos to i64
  %i.bou = getelementptr inbounds [2 x i8], ptr %i.bor, i64 %i.bot
  %i.bov = load <8 x i16>, ptr %i.bou, align 16, !tbaa !82 ; 2 uses
  %i.bow = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bov, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.box = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bov, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.boy = shufflevector <8 x i16> %i.bow, <8 x i16> %i.box, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.boz = bitcast <16 x i16> %i.boy to <8 x float>
  br label %.sink.split3748.i

.sink.split3748.i:                                ; preds = %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i, %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i
  %.sink3749.i = phi <8 x float> [ %i.boz, %_ZN4ncnn3MatD2Ev.exit944.us.us.us.i ], [ %i.boj, %_ZN4ncnn3MatD2Ev.exit943.us.us.us.i ], [ %.sroa.03564.28.vec.insert.i, %_ZN4ncnn3MatD2Ev.exit941.us.us.us.i ]
  %i.bpa = load <8 x i16>, ptr %i.bmh, align 16, !tbaa !82 ; 2 uses
  %i.bpb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bpa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bpc = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bpa, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bpd = shufflevector <8 x i16> %i.bpb, <8 x i16> %i.bpc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bpe = bitcast <16 x i16> %i.bpd to <8 x float>
  %i.bpf = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink3749.i, <8 x float> nofpclass(nan inf) %i.bpe, <8 x float> nofpclass(nan inf) %.224363047.us.us.us.i)
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split3748.i, %bb.ck, %bb.cj, %bb.ci
  %.32437.us.us.us.i = phi nsz <8 x float> [ %.224363047.us.us.us.i, %bb.ci ], [ %.224363047.us.us.us.i, %bb.ck ], [ %.224363047.us.us.us.i, %bb.cj ], [ %i.bpf, %.sink.split3748.i ] ; 2 uses
  %indvars.iv.next3491.i = add nuw nsw i64 %indvars.iv3490.i, 1 ; 2 uses
  %exitcond3494.not.i = icmp eq i64 %indvars.iv.next3491.i, %i.blg
  br i1 %exitcond3494.not.i, label %..loopexit2545_crit_edge.us.us.us.i, label %bb.ci, !llvm.loop !597

..loopexit2545_crit_edge.us.us.us.i:              ; preds = %bb.cl, %bb.ch, %bb.cg
  %.42438.us.us.us.i = phi nsz <8 x float> [ %.124353052.us.us.us.i, %bb.cg ], [ %.124353052.us.us.us.i, %bb.ch ], [ %.32437.us.us.us.i, %bb.cl ] ; 3 uses
  %indvars.iv.next3496.i = add nuw nsw i64 %indvars.iv3495.i, 1 ; 2 uses
  %exitcond3499.not.i = icmp eq i64 %indvars.iv.next3496.i, %wide.trip.count3498.i
  br i1 %exitcond3499.not.i, label %._crit_edge3055.split.us.us.us.i, label %bb.cg, !llvm.loop !598

._crit_edge3055.split.us.us.us.i:                 ; preds = %..loopexit2545_crit_edge.us.us.us.i
  %i.bpg = getelementptr inbounds [2 x i8], ptr %.07243062.us.us.i, i64 %i.bkp ; 2 uses
  %indvars.iv.next3501.i = add nuw nsw i64 %indvars.iv3500.i, 8 ; 2 uses
  %i.bph = icmp slt i64 %indvars.iv.next3501.i, %invariant.op3658.i
  br i1 %i.bph, label %.preheader2549.us.us.i, label %._crit_edge3066.i, !llvm.loop !599

._crit_edge3066.i:                                ; preds = %._crit_edge3055.split.us.us.us.i, %.preheader2549.lr.ph.i, %_ZN4ncnn3MatD2Ev.exit945.i
  %.02434.lcssa.i = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit945.i ], [ zeroinitializer, %.preheader2549.lr.ph.i ], [ %.42438.us.us.us.i, %._crit_edge3055.split.us.us.us.i ] ; 2 uses
  %.0724.lcssa.i = phi ptr [ %i.bkk, %_ZN4ncnn3MatD2Ev.exit945.i ], [ %scevgep3483.i, %.preheader2549.lr.ph.i ], [ %i.bpg, %._crit_edge3055.split.us.us.us.i ] ; 4 uses
  %.0723.lcssa.i = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit945.i ], [ %i.aqb, %.preheader2549.lr.ph.i ], [ %i.aqk, %._crit_edge3055.split.us.us.us.i ] ; 7 uses
  %i.bpi = shufflevector <8 x float> %.02434.lcssa.i, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.bpj = shufflevector <8 x float> %.02434.lcssa.i, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bpk = fadd fast <4 x float> %i.bpi, %i.bpj   ; 2 uses
  %i.bpl = or disjoint i32 %.0723.lcssa.i, 3
  %i.bpm = icmp slt i32 %i.bpl, %i.ape
  br i1 %i.bpm, label %.preheader2548.lr.ph.i, label %._crit_edge3126.i

.preheader2548.lr.ph.i:                           ; preds = %._crit_edge3066.i
  %i.bpn = load i32, ptr %i.d, align 4            ; 2 uses
  %i.bpo = load i32, ptr %i.j, align 4
  %invariant.op3110.i = sub i32 %.neg2504.i, %i.bpo ; 2 uses
  %i.bpp = load i32, ptr %i.f, align 4            ; 4 uses
  %i.bpq = load i32, ptr %i.a, align 4
  %.fr3243.i = freeze i32 %i.bpq                  ; 2 uses
  %i.bpr = load i32, ptr %i.c, align 4            ; 2 uses
  %i.bps = load i32, ptr %i.i, align 4
  %.neg2502.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3092.i = sub i32 %.neg2502.i, %i.bps ; 2 uses
  %i.bpt = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.bkm, label %.preheader2548.lr.ph.split.us.i, label %.preheader2548.preheader.i

.preheader2548.preheader.i:                       ; preds = %.preheader2548.lr.ph.i
  %i.bpu = sub i32 %i.aqd, %.0723.lcssa.i         ; 2 uses
  %i.bpv = lshr i32 %i.bpu, 1
  %i.bpw = and i32 %i.bpv, 2147483646
  %narrow3639.i = add nuw i32 %i.bpw, 2
  %i.bpx = zext i32 %narrow3639.i to i64
  %i.bpy = mul nsw i64 %i.bpx, %i.bkr
  %scevgep3503.i = getelementptr i8, ptr %.0724.lcssa.i, i64 %i.bpy
  %i.bpz = add i32 %.0723.lcssa.i, 4
  %i.bqa = and i32 %i.bpu, -4
  %i.bqb = add i32 %i.bpz, %i.bqa
  br label %._crit_edge3126.i

.preheader2548.lr.ph.split.us.i:                  ; preds = %.preheader2548.lr.ph.i
  %i.bqc = icmp sgt i32 %.fr3243.i, 0
  br i1 %i.bqc, label %.preheader2548.us.us.preheader.i, label %.preheader2548.us.preheader.i

.preheader2548.us.preheader.i:                    ; preds = %.preheader2548.lr.ph.split.us.i
  %i.bqd = sub i32 %i.aqd, %.0723.lcssa.i         ; 2 uses
  %i.bqe = lshr i32 %i.bqd, 1
  %i.bqf = and i32 %i.bqe, 2147483646
  %narrow3640.i = add nuw i32 %i.bqf, 2
  %i.bqg = zext i32 %narrow3640.i to i64
  %i.bqh = mul nsw i64 %i.bqg, %i.bkr
  %scevgep3504.i = getelementptr i8, ptr %.0724.lcssa.i, i64 %i.bqh
  %i.bqi = add i32 %.0723.lcssa.i, 4
  %i.bqj = and i32 %i.bqd, -4
  %i.bqk = add i32 %i.bqi, %i.bqj
  br label %._crit_edge3126.i

.preheader2548.us.us.preheader.i:                 ; preds = %.preheader2548.lr.ph.split.us.i
  %i.bql = zext nneg i32 %.fr3243.i to i64        ; 4 uses
  %i.bqm = zext i32 %.0723.lcssa.i to i64
  br label %.preheader2548.us.us.i

.preheader2548.us.us.i:                           ; preds = %._crit_edge3108.split.us.us.us.i, %.preheader2548.us.us.preheader.i
  %indvars.iv3524.i = phi i64 [ %i.bqm, %.preheader2548.us.us.preheader.i ], [ %indvars.iv.next3525.i, %._crit_edge3108.split.us.us.us.i ] ; 6 uses
  %.17253122.us.us.i = phi ptr [ %.0724.lcssa.i, %.preheader2548.us.us.preheader.i ], [ %i.btu, %._crit_edge3108.split.us.us.us.i ] ; 3 uses
  %.023943121.us.us.i = phi <4 x float> [ zeroinitializer, %.preheader2548.us.us.preheader.i ], [ %.us-phi121, %._crit_edge3108.split.us.us.us.i ] ; 3 uses
  %i.bqn = lshr exact i64 %indvars.iv3524.i, 2
  %i.bqo = and i64 %i.bqn, 1073741823
  %i.bqp = add nuw nsw i64 %indvars.iv3524.i, 1
  %i.bqq = add nuw nsw i64 %indvars.iv3524.i, 2
  %i.bqr = add nuw nsw i64 %indvars.iv3524.i, 3
  switch i32 %.fr3104.i, label %._crit_edge3108.split.us.us.us.i [
    i32 4, label %.preheader2548.us.us.i.split.us
    i32 1, label %.preheader2548.us.us.i.split.us122
  ]

.preheader2548.us.us.i.split.us:                  ; preds = %.preheader2548.us.us.i, %..loopexit2543_crit_edge.us.us.us.i.us
  %indvars.iv3519.i.us = phi i64 [ %indvars.iv.next3520.i.us, %..loopexit2543_crit_edge.us.us.us.i.us ], [ 0, %.preheader2548.us.us.i ] ; 3 uses
  %.123953105.us.us.us.i.us = phi <4 x float> [ %.42398.us.us.us.i.us, %..loopexit2543_crit_edge.us.us.us.i.us ], [ %.023943121.us.us.i, %.preheader2548.us.us.i ] ; 3 uses
  %i.bqs = trunc i64 %indvars.iv3519.i.us to i32
  %i.bqt = mul i32 %i.bpn, %i.bqs
  %.reass3111.us.us.us.i.us = add i32 %i.bqt, %invariant.op3110.i ; 3 uses
  %i.bqu = icmp slt i32 %.reass3111.us.us.us.i.us, 0
  br i1 %i.bqu, label %..loopexit2543_crit_edge.us.us.us.i.us, label %bb.cm

bb.cm:                                            ; preds = %.preheader2548.us.us.i.split.us
  %i.bqv = srem i32 %.reass3111.us.us.us.i.us, %i.bpp
  %i.bqw = sdiv i32 %.reass3111.us.us.us.i.us, %i.bpp ; 2 uses
  %.not895.us.us.us.i.us = icmp eq i32 %i.bqv, 0
  %.not896.us.us.us.i.us = icmp slt i32 %i.bqw, %i.apg
  %or.cond322 = select i1 %.not895.us.us.us.i.us, i1 %.not896.us.us.us.i.us, i1 false
  br i1 %or.cond322, label %.preheader2542.us.us.us.i.us, label %..loopexit2543_crit_edge.us.us.us.i.us

.preheader2542.us.us.us.i.us:                     ; preds = %bb.cm
  %i.bqx = mul nuw nsw i64 %indvars.iv3519.i.us, %i.bql
  %i.bqy = sext i32 %i.bqw to i64
  %i.bqz = mul nsw i64 %i.bqy, %i.aqj
  br label %.lr.ph.split.us.us.us.us3141.i.us

.lr.ph.split.us.us.us.us3141.i.us:                ; preds = %bb.co, %.preheader2542.us.us.us.i.us
  %indvars.iv3514.i.us = phi i64 [ %indvars.iv.next3515.i.us, %bb.co ], [ 0, %.preheader2542.us.us.us.i.us ] ; 3 uses
  %.223963089.us.us.us.us.i.us = phi <4 x float> [ %.32397.us.us.us.us.i.us, %bb.co ], [ %.123953105.us.us.us.i.us, %.preheader2542.us.us.us.i.us ] ; 3 uses
  %i.bra = trunc i64 %indvars.iv3514.i.us to i32
  %i.brb = mul i32 %i.bpr, %i.bra
  %.reass3093.us.us.us.us.i.us = add i32 %i.brb, %invariant.op3092.i ; 3 uses
  %i.brc = icmp slt i32 %.reass3093.us.us.us.us.i.us, 0
  br i1 %i.brc, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.split.us.us.us.us3141.i.us
  %i.brd = srem i32 %.reass3093.us.us.us.us.i.us, %i.bpt
  %i.bre = sdiv i32 %.reass3093.us.us.us.us.i.us, %i.bpt ; 2 uses
  %.not897.us.us.us.us.i.us = icmp eq i32 %i.brd, 0
  %.not898.us.us.us.us.i.us = icmp slt i32 %i.bre, %i.apf
  %or.cond323 = select i1 %.not897.us.us.us.us.i.us, i1 %.not898.us.us.us.us.i.us, i1 false
  br i1 %or.cond323, label %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us, label %bb.co

_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us:        ; preds = %bb.cn
  %i.brf = add nuw nsw i64 %indvars.iv3514.i.us, %i.bqx
  %i.brg = shl i64 %i.brf, 2
  %i.brh = and i64 %i.brg, 4294967292
  %i.bri = getelementptr inbounds nuw [2 x i8], ptr %.17253122.us.us.i, i64 %i.brh
  %i.brj = load ptr, ptr %1, align 8, !tbaa !20, !noalias !641
  %i.brk = load i64, ptr %i.app, align 8, !tbaa !21, !noalias !641
  %i.brl = mul i64 %i.brk, %i.bqo
  %i.brm = load i64, ptr %i.apq, align 8, !tbaa !55, !noalias !641 ; 2 uses
  %i.brn = mul i64 %i.brl, %i.brm
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brj, i64 %i.brn
  %i.brp = mul i64 %i.bqz, %i.brm
  %i.brq = getelementptr inbounds nuw i8, ptr %i.bro, i64 %i.brp
  %i.brr = shl nsw i32 %i.bre, 2
  %i.brs = sext i32 %i.brr to i64
  %i.brt = getelementptr inbounds [2 x i8], ptr %i.brq, i64 %i.brs
  %i.bru = load i64, ptr %i.brt, align 1, !tbaa !82
  %i.brv = insertelement <2 x i64> poison, i64 %i.bru, i64 0
  %i.brw = bitcast <2 x i64> %i.brv to <8 x i16>
  %i.brx = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.brw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bry = bitcast <8 x i16> %i.brx to <4 x float>
  %i.brz = load i64, ptr %i.bri, align 1, !tbaa !82
  %i.bsa = insertelement <2 x i64> poison, i64 %i.brz, i64 0
  %i.bsb = bitcast <2 x i64> %i.bsa to <8 x i16>
  %i.bsc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bsb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bsd = bitcast <8 x i16> %i.bsc to <4 x float>
  %i.bse = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bry, <4 x float> nofpclass(nan inf) %i.bsd, <4 x float> nofpclass(nan inf) %.223963089.us.us.us.us.i.us)
  br label %bb.co

bb.co:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us, %bb.cn, %.lr.ph.split.us.us.us.us3141.i.us
  %.32397.us.us.us.us.i.us = phi nsz <4 x float> [ %.223963089.us.us.us.us.i.us, %.lr.ph.split.us.us.us.us3141.i.us ], [ %.223963089.us.us.us.us.i.us, %bb.cn ], [ %i.bse, %_ZN4ncnn3MatD2Ev.exit940.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next3515.i.us = add nuw nsw i64 %indvars.iv3514.i.us, 1 ; 2 uses
  %exitcond3518.not.i.us = icmp eq i64 %indvars.iv.next3515.i.us, %i.bql
  br i1 %exitcond3518.not.i.us, label %..loopexit2543_crit_edge.us.us.us.i.us, label %.lr.ph.split.us.us.us.us3141.i.us, !llvm.loop !602

..loopexit2543_crit_edge.us.us.us.i.us:           ; preds = %bb.co, %bb.cm, %.preheader2548.us.us.i.split.us
  %.42398.us.us.us.i.us = phi nsz <4 x float> [ %.123953105.us.us.us.i.us, %.preheader2548.us.us.i.split.us ], [ %.123953105.us.us.us.i.us, %bb.cm ], [ %.32397.us.us.us.us.i.us, %bb.co ] ; 2 uses
  %indvars.iv.next3520.i.us = add nuw nsw i64 %indvars.iv3519.i.us, 1 ; 2 uses
  %exitcond3523.not.i.us = icmp eq i64 %indvars.iv.next3520.i.us, %wide.trip.count3498.i
  br i1 %exitcond3523.not.i.us, label %._crit_edge3108.split.us.us.us.i, label %.preheader2548.us.us.i.split.us, !llvm.loop !603

.preheader2548.us.us.i.split.us122:               ; preds = %.preheader2548.us.us.i, %..loopexit2543_crit_edge.us.us.us.i.us129
  %indvars.iv3519.i.us123 = phi i64 [ %indvars.iv.next3520.i.us131, %..loopexit2543_crit_edge.us.us.us.i.us129 ], [ 0, %.preheader2548.us.us.i ] ; 3 uses
  %.123953105.us.us.us.i.us124 = phi <4 x float> [ %.42398.us.us.us.i.us130, %..loopexit2543_crit_edge.us.us.us.i.us129 ], [ %.023943121.us.us.i, %.preheader2548.us.us.i ] ; 3 uses
  %i.bsf = trunc i64 %indvars.iv3519.i.us123 to i32
  %i.bsg = mul i32 %i.bpn, %i.bsf
  %.reass3111.us.us.us.i.us125 = add i32 %i.bsg, %invariant.op3110.i ; 3 uses
  %i.bsh = icmp slt i32 %.reass3111.us.us.us.i.us125, 0
  br i1 %i.bsh, label %..loopexit2543_crit_edge.us.us.us.i.us129, label %bb.cp

bb.cp:                                            ; preds = %.preheader2548.us.us.i.split.us122
  %i.bsi = srem i32 %.reass3111.us.us.us.i.us125, %i.bpp
  %i.bsj = sdiv i32 %.reass3111.us.us.us.i.us125, %i.bpp ; 2 uses
  %.not895.us.us.us.i.us126 = icmp eq i32 %i.bsi, 0
  %.not896.us.us.us.i.us127 = icmp slt i32 %i.bsj, %i.apg
  %or.cond324 = select i1 %.not895.us.us.us.i.us126, i1 %.not896.us.us.us.i.us127, i1 false
  br i1 %or.cond324, label %.preheader2542.us.us.us.i.us128, label %..loopexit2543_crit_edge.us.us.us.i.us129

.preheader2542.us.us.us.i.us128:                  ; preds = %bb.cp
  %i.bsk = mul nuw nsw i64 %indvars.iv3519.i.us123, %i.bql
  %i.bsl = sext i32 %i.bsj to i64
  %i.bsm = mul nsw i64 %i.bsl, %i.aqj
  br label %.lr.ph.split.us3095.us.us.us.i.us

.lr.ph.split.us3095.us.us.us.i.us:                ; preds = %bb.cr, %.preheader2542.us.us.us.i.us128
  %indvars.iv3509.i.us = phi i64 [ %indvars.iv.next3510.i.us, %bb.cr ], [ 0, %.preheader2542.us.us.us.i.us128 ] ; 3 uses
  %.223963089.us3097.us.us.us.i.us = phi <4 x float> [ %.32397.us3101.us.us.us.i.us, %bb.cr ], [ %.123953105.us.us.us.i.us124, %.preheader2542.us.us.us.i.us128 ] ; 3 uses
  %i.bsn = trunc i64 %indvars.iv3509.i.us to i32
  %i.bso = mul i32 %i.bpr, %i.bsn
  %.reass3093.us3098.us.us.us.i.us = add i32 %i.bso, %invariant.op3092.i ; 3 uses
  %i.bsp = icmp slt i32 %.reass3093.us3098.us.us.us.i.us, 0
  br i1 %i.bsp, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph.split.us3095.us.us.us.i.us
  %i.bsq = srem i32 %.reass3093.us3098.us.us.us.i.us, %i.bpt
  %i.bsr = sdiv i32 %.reass3093.us3098.us.us.us.i.us, %i.bpt ; 2 uses
  %.not897.us3099.us.us.us.i.us = icmp eq i32 %i.bsq, 0
  %.not898.us3100.us.us.us.i.us = icmp slt i32 %i.bsr, %i.apf
  %or.cond325 = select i1 %.not897.us3099.us.us.us.i.us, i1 %.not898.us3100.us.us.us.i.us, i1 false
  br i1 %or.cond325, label %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, label %bb.cr

_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us:        ; preds = %bb.cq
  %i.bss = load ptr, ptr %1, align 8, !tbaa !20, !noalias !642
  %i.bst = load i64, ptr %i.app, align 8, !tbaa !21, !noalias !642
  %i.bsu = load i64, ptr %i.apq, align 8, !tbaa !55, !noalias !642 ; 2 uses
  %factor.op.mul3084.us.us.us.us.i.us = mul i64 %i.bsu, %i.bst ; 4 uses
  %i.bsv = mul i64 %i.bsm, %i.bsu
  %invariant.gep.us.us.us3137.us.i.us = getelementptr i8, ptr %i.bss, i64 %i.bsv
  %i.bsw = sext i32 %i.bsr to i64
  %invariant.gep3086.us.us.us.us.i.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3137.us.i.us, i64 %i.bsw ; 4 uses
  %.reass3085.us.us.us.us.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %indvars.iv3524.i
  %gep3087.us.us.us.us.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.i.us
  %i.bsx = load i16, ptr %gep3087.us.us.us.us.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.1.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqp
  %gep3087.us.us.us.us.1.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.1.i.us
  %i.bsy = load i16, ptr %gep3087.us.us.us.us.1.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.2.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqq
  %gep3087.us.us.us.us.2.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.2.i.us
  %i.bsz = load i16, ptr %gep3087.us.us.us.us.2.i.us, align 2, !tbaa !89
  %.reass3085.us.us.us.us.3.i.us = mul i64 %factor.op.mul3084.us.us.us.us.i.us, %i.bqr
  %gep3087.us.us.us.us.3.i.us = getelementptr i8, ptr %invariant.gep3086.us.us.us.us.i.us, i64 %.reass3085.us.us.us.us.3.i.us
  %i.bta = load i16, ptr %gep3087.us.us.us.us.3.i.us, align 2, !tbaa !89
  %i.btb = zext i16 %i.bta to i32
  %i.btc = zext i16 %i.bsz to i32
  %i.btd = zext i16 %i.bsy to i32
  %i.bte = zext i16 %i.bsx to i32
  %i.btf = insertelement <4 x i32> poison, i32 %i.bte, i64 0
  %i.btg = insertelement <4 x i32> %i.btf, i32 %i.btd, i64 1
  %i.bth = insertelement <4 x i32> %i.btg, i32 %i.btc, i64 2
  %i.bti = insertelement <4 x i32> %i.bth, i32 %i.btb, i64 3
  %i.btj = shl nuw <4 x i32> %i.bti, splat (i32 16)
  %.sroa.0.12.vec.insert.i.us = bitcast <4 x i32> %i.btj to <4 x float>
  %i.btk = add nuw nsw i64 %indvars.iv3509.i.us, %i.bsk
  %i.btl = shl i64 %i.btk, 2
  %i.btm = and i64 %i.btl, 4294967292
  %i.btn = getelementptr inbounds nuw [2 x i8], ptr %.17253122.us.us.i, i64 %i.btm
  %i.bto = load i64, ptr %i.btn, align 1, !tbaa !82
  %i.btp = insertelement <2 x i64> poison, i64 %i.bto, i64 0
  %i.btq = bitcast <2 x i64> %i.btp to <8 x i16>
  %i.btr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.btq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bts = bitcast <8 x i16> %i.btr to <4 x float>
  %i.btt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert.i.us, <4 x float> nofpclass(nan inf) %i.bts, <4 x float> nofpclass(nan inf) %.223963089.us3097.us.us.us.i.us)
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us, %bb.cq, %.lr.ph.split.us3095.us.us.us.i.us
  %.32397.us3101.us.us.us.i.us = phi nsz <4 x float> [ %.223963089.us3097.us.us.us.i.us, %.lr.ph.split.us3095.us.us.us.i.us ], [ %i.btt, %_ZN4ncnn3MatD2Ev.exit939.us.us.us.us.i.us ], [ %.223963089.us3097.us.us.us.i.us, %bb.cq ] ; 2 uses
  %indvars.iv.next3510.i.us = add nuw nsw i64 %indvars.iv3509.i.us, 1 ; 2 uses
  %exitcond3513.not.i.us = icmp eq i64 %indvars.iv.next3510.i.us, %i.bql
  br i1 %exitcond3513.not.i.us, label %..loopexit2543_crit_edge.us.us.us.i.us129, label %.lr.ph.split.us3095.us.us.us.i.us, !llvm.loop !602

..loopexit2543_crit_edge.us.us.us.i.us129:        ; preds = %bb.cr, %bb.cp, %.preheader2548.us.us.i.split.us122
  %.42398.us.us.us.i.us130 = phi nsz <4 x float> [ %.123953105.us.us.us.i.us124, %.preheader2548.us.us.i.split.us122 ], [ %.123953105.us.us.us.i.us124, %bb.cp ], [ %.32397.us3101.us.us.us.i.us, %bb.cr ] ; 2 uses
  %indvars.iv.next3520.i.us131 = add nuw nsw i64 %indvars.iv3519.i.us123, 1 ; 2 uses
  %exitcond3523.not.i.us132 = icmp eq i64 %indvars.iv.next3520.i.us131, %wide.trip.count3498.i
  br i1 %exitcond3523.not.i.us132, label %._crit_edge3108.split.us.us.us.i, label %.preheader2548.us.us.i.split.us122, !llvm.loop !603

._crit_edge3108.split.us.us.us.i:                 ; preds = %..loopexit2543_crit_edge.us.us.us.i.us129, %..loopexit2543_crit_edge.us.us.us.i.us, %.preheader2548.us.us.i
  %.us-phi121 = phi <4 x float> [ %.42398.us.us.us.i.us, %..loopexit2543_crit_edge.us.us.us.i.us ], [ %.023943121.us.us.i, %.preheader2548.us.us.i ], [ %.42398.us.us.us.i.us130, %..loopexit2543_crit_edge.us.us.us.i.us129 ] ; 2 uses
  %i.btu = getelementptr inbounds [2 x i8], ptr %.17253122.us.us.i, i64 %i.bkr ; 2 uses
  %indvars.iv.next3525.i = add nuw nsw i64 %indvars.iv3524.i, 4 ; 2 uses
  %i.btv = trunc i64 %indvars.iv.next3525.i to i32 ; 2 uses
  %i.btw = or i32 %i.btv, 3
  %i.btx = icmp slt i32 %i.btw, %i.ape
  br i1 %i.btx, label %.preheader2548.us.us.i, label %._crit_edge3126.i, !llvm.loop !606

._crit_edge3126.i:                                ; preds = %._crit_edge3108.split.us.us.us.i, %.preheader2548.us.preheader.i, %.preheader2548.preheader.i, %._crit_edge3066.i
  %.02394.lcssa.i = phi <4 x float> [ zeroinitializer, %._crit_edge3066.i ], [ zeroinitializer, %.preheader2548.preheader.i ], [ zeroinitializer, %.preheader2548.us.preheader.i ], [ %.us-phi121, %._crit_edge3108.split.us.us.us.i ] ; 2 uses
  %.1725.lcssa.i = phi ptr [ %.0724.lcssa.i, %._crit_edge3066.i ], [ %scevgep3503.i, %.preheader2548.preheader.i ], [ %scevgep3504.i, %.preheader2548.us.preheader.i ], [ %i.btu, %._crit_edge3108.split.us.us.us.i ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.0723.lcssa.i, %._crit_edge3066.i ], [ %i.bqb, %.preheader2548.preheader.i ], [ %i.bqk, %.preheader2548.us.preheader.i ], [ %i.btv, %._crit_edge3108.split.us.us.us.i ] ; 7 uses
  %i.bty = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.bpk, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.btz = shufflevector <4 x float> %.02394.lcssa.i, <4 x float> %i.bpk, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.bua = fadd fast <4 x float> %i.bty, %i.btz
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %.0728.i, <4 x float> %i.bua) ; 4 uses
  %i.bub = or disjoint i32 %.1.lcssa.i, 1
  %i.buc = icmp slt i32 %i.bub, %i.ape
  br i1 %i.buc, label %.preheader2547.lr.ph.i, label %.preheader2550.i

.preheader2547.lr.ph.i:                           ; preds = %._crit_edge3126.i
  %i.bud = load i32, ptr %i.d, align 4
  %i.bue = load i32, ptr %i.j, align 4
  %invariant.op3161.i = sub i32 %.neg2504.i, %i.bue
  %i.buf = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bug = load i32, ptr %i.a, align 4
  %.fr3244.i = freeze i32 %i.bug                  ; 2 uses
  %i.buh = load i32, ptr %i.c, align 4
  %i.bui = load i32, ptr %i.i, align 4
  %.neg2498.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3154.i = sub i32 %.neg2498.i, %i.bui
  %i.buj = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.bkm, label %.preheader2547.lr.ph.split.us.i, label %.preheader2547.preheader.i

.preheader2547.preheader.i:                       ; preds = %.preheader2547.lr.ph.i
  %i.buk = sub i32 %i.aqe, %.1.lcssa.i
  %i.bul = and i32 %i.buk, -2                     ; 2 uses
  %i.bum = zext i32 %i.bul to i64
  %i.bun = add nuw nsw i64 %i.bum, 2
  %i.buo = mul nsw i64 %i.bun, %i.bkt
  %scevgep3527.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.buo
  %i.bup = add i32 %.1.lcssa.i, 2
  %i.buq = add i32 %i.bup, %i.bul
  br label %.preheader2550.i

.preheader2547.lr.ph.split.us.i:                  ; preds = %.preheader2547.lr.ph.i
  %i.bur = icmp sgt i32 %.fr3244.i, 0
  br i1 %i.bur, label %.preheader2547.us.us.preheader.i, label %.preheader2547.us.preheader.i

.preheader2547.us.preheader.i:                    ; preds = %.preheader2547.lr.ph.split.us.i
  %i.bus = sub i32 %i.aqe, %.1.lcssa.i
  %i.but = and i32 %i.bus, -2                     ; 2 uses
  %i.buu = zext i32 %i.but to i64
  %i.buv = add nuw nsw i64 %i.buu, 2
  %i.buw = mul nsw i64 %i.buv, %i.bkt
  %scevgep3528.i = getelementptr i8, ptr %.1725.lcssa.i, i64 %i.buw
  %i.bux = add i32 %.1.lcssa.i, 2
  %i.buy = add i32 %i.bux, %i.but
  br label %.preheader2550.i

.preheader2547.us.us.preheader.i:                 ; preds = %.preheader2547.lr.ph.split.us.i
  %i.buz = zext nneg i32 %.fr3244.i to i64        ; 2 uses
  %i.bva = zext i32 %.1.lcssa.i to i64
  br label %.preheader2547.us.us.i

.preheader2547.us.us.i:                           ; preds = %._crit_edge3159.split.us.us.us.i, %.preheader2547.us.us.preheader.i
  %indvars.iv3542.i = phi i64 [ %i.bva, %.preheader2547.us.us.preheader.i ], [ %indvars.iv.next3543.i, %._crit_edge3159.split.us.us.us.i ] ; 3 uses
  %.27263166.us.us.i = phi ptr [ %.1725.lcssa.i, %.preheader2547.us.us.preheader.i ], [ %i.bwr, %._crit_edge3159.split.us.us.us.i ] ; 2 uses
  %.17293165.us.us.i = phi float [ %op.rdx, %.preheader2547.us.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3159.split.us.us.us.i ]
  %i.bvb = add nuw nsw i64 %indvars.iv3542.i, 1
  br label %bb.cs

bb.cs:                                            ; preds = %..loopexit2541_crit_edge.us.us.us.i, %.preheader2547.us.us.i
  %indvars.iv3537.i = phi i64 [ %indvars.iv.next3538.i, %..loopexit2541_crit_edge.us.us.us.i ], [ 0, %.preheader2547.us.us.i ] ; 3 uses
  %.27303156.us.us.us.i = phi float [ %.8.us.us.us.i, %..loopexit2541_crit_edge.us.us.us.i ], [ %.17293165.us.us.i, %.preheader2547.us.us.i ] ; 3 uses
  %i.bvc = trunc i64 %indvars.iv3537.i to i32
  %i.bvd = mul i32 %i.bud, %i.bvc
  %.reass3162.us.us.us.i = add i32 %i.bvd, %invariant.op3161.i ; 3 uses
  %i.bve = icmp slt i32 %.reass3162.us.us.us.i, 0
  br i1 %i.bve, label %..loopexit2541_crit_edge.us.us.us.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.bvf = srem i32 %.reass3162.us.us.us.i, %i.buf
  %i.bvg = sdiv i32 %.reass3162.us.us.us.i, %i.buf ; 2 uses
  %.not891.us.us.us.i = icmp eq i32 %i.bvf, 0
  %.not892.us.us.us.i = icmp slt i32 %i.bvg, %i.apg
  %or.cond326 = select i1 %.not891.us.us.us.i, i1 %.not892.us.us.us.i, i1 false
  br i1 %or.cond326, label %.preheader2540.us.us.us.i, label %..loopexit2541_crit_edge.us.us.us.i

.preheader2540.us.us.us.i:                        ; preds = %bb.ct
  %i.bvh = mul nuw nsw i64 %indvars.iv3537.i, %i.buz
  %i.bvi = sext i32 %i.bvg to i64
  %i.bvj = mul nsw i64 %i.bvi, %i.aqj
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.us.us.us.i, %.preheader2540.us.us.us.i
  %indvars.iv3532.i = phi i64 [ %indvars.iv.next3533.i, %.loopexit.us.us.us.i ], [ 0, %.preheader2540.us.us.us.i ] ; 3 uses
  %.37313151.us.us.us.i = phi float [ %.6.us.us.us.i, %.loopexit.us.us.us.i ], [ %.27303156.us.us.us.i, %.preheader2540.us.us.us.i ] ; 3 uses
  %i.bvk = trunc i64 %indvars.iv3532.i to i32
  %i.bvl = mul i32 %i.buh, %i.bvk
  %.reass3155.us.us.us.i = add i32 %invariant.op3154.i, %i.bvl ; 3 uses
  %i.bvm = icmp slt i32 %.reass3155.us.us.us.i, 0
  br i1 %i.bvm, label %.loopexit.us.us.us.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.bvn = srem i32 %.reass3155.us.us.us.i, %i.buj
  %i.bvo = sdiv i32 %.reass3155.us.us.us.i, %i.buj ; 2 uses
  %.not893.us.us.us.i = icmp eq i32 %i.bvn, 0
  %.not894.us.us.us.i = icmp slt i32 %i.bvo, %i.apf
  %or.cond327 = select i1 %.not893.us.us.us.i, i1 %.not894.us.us.us.i, i1 false
  br i1 %or.cond327, label %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, label %.loopexit.us.us.us.i

_ZN4ncnn3MatD2Ev.exit938.us.us.us.i:              ; preds = %bb.cv
  %i.bvp = add nuw nsw i64 %indvars.iv3532.i, %i.bvh
  %.idx3641.i = shl nuw nsw i64 %i.bvp, 2
  %i.bvq = getelementptr inbounds nuw i8, ptr %.27263166.us.us.i, i64 %.idx3641.i ; 2 uses
  %i.bvr = load ptr, ptr %1, align 8, !tbaa !20, !noalias !643
  %i.bvs = load i64, ptr %i.app, align 8, !tbaa !21, !noalias !643
  %i.bvt = load i64, ptr %i.apq, align 8, !tbaa !55, !noalias !643 ; 2 uses
  %factor.op.mul3145.us.us.us.i = mul i64 %i.bvt, %i.bvs ; 2 uses
  %i.bvu = mul i64 %i.bvj, %i.bvt
  %invariant.gep.us.us.us3183.i = getelementptr i8, ptr %i.bvr, i64 %i.bvu
  %i.bvv = sext i32 %i.bvo to i64
  %invariant.gep3147.us.us.us.i = getelementptr [2 x i8], ptr %invariant.gep.us.us.us3183.i, i64 %i.bvv ; 2 uses
  %.reass3146.us.us.us.i = mul i64 %factor.op.mul3145.us.us.us.i, %indvars.iv3542.i
  %gep3148.us.us.us.i = getelementptr i8, ptr %invariant.gep3147.us.us.us.i, i64 %.reass3146.us.us.us.i
  %i.bvw = load i16, ptr %gep3148.us.us.us.i, align 2, !tbaa !89
  %i.bvx = zext i16 %i.bvw to i32
  %i.bvy = shl nuw i32 %i.bvx, 16
  %i.bvz = bitcast i32 %i.bvy to float
  %i.bwa = load i16, ptr %i.bvq, align 2, !tbaa !89
  %i.bwb = zext i16 %i.bwa to i32
  %i.bwc = shl nuw i32 %i.bwb, 16
  %i.bwd = bitcast i32 %i.bwc to float
  %i.bwe = fmul fast float %i.bwd, %i.bvz
  %i.bwf = fadd fast float %.37313151.us.us.us.i, %i.bwe
  %.reass3146.us.us.us.1.i = mul i64 %factor.op.mul3145.us.us.us.i, %i.bvb
  %gep3148.us.us.us.1.i = getelementptr i8, ptr %invariant.gep3147.us.us.us.i, i64 %.reass3146.us.us.us.1.i
  %i.bwg = load i16, ptr %gep3148.us.us.us.1.i, align 2, !tbaa !89
  %i.bwh = zext i16 %i.bwg to i32
  %i.bwi = shl nuw i32 %i.bwh, 16
  %i.bwj = bitcast i32 %i.bwi to float
  %i.bwk = getelementptr inbounds nuw i8, ptr %i.bvq, i64 2
  %i.bwl = load i16, ptr %i.bwk, align 2, !tbaa !89
  %i.bwm = zext i16 %i.bwl to i32
  %i.bwn = shl nuw i32 %i.bwm, 16
  %i.bwo = bitcast i32 %i.bwn to float
  %i.bwp = fmul fast float %i.bwo, %i.bwj
  %i.bwq = fadd fast float %i.bwp, %i.bwf
  br label %.loopexit.us.us.us.i

.loopexit.us.us.us.i:                             ; preds = %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i, %bb.cv, %bb.cu
  %.6.us.us.us.i = phi nsz float [ %.37313151.us.us.us.i, %bb.cu ], [ %.37313151.us.us.us.i, %bb.cv ], [ %i.bwq, %_ZN4ncnn3MatD2Ev.exit938.us.us.us.i ] ; 2 uses
  %indvars.iv.next3533.i = add nuw nsw i64 %indvars.iv3532.i, 1 ; 2 uses
  %exitcond3536.not.i = icmp eq i64 %indvars.iv.next3533.i, %i.buz
  br i1 %exitcond3536.not.i, label %..loopexit2541_crit_edge.us.us.us.i, label %bb.cu, !llvm.loop !609

..loopexit2541_crit_edge.us.us.us.i:              ; preds = %.loopexit.us.us.us.i, %bb.ct, %bb.cs
  %.8.us.us.us.i = phi nsz float [ %.27303156.us.us.us.i, %bb.cs ], [ %.27303156.us.us.us.i, %bb.ct ], [ %.6.us.us.us.i, %.loopexit.us.us.us.i ] ; 3 uses
  %indvars.iv.next3538.i = add nuw nsw i64 %indvars.iv3537.i, 1 ; 2 uses
  %exitcond3541.not.i = icmp eq i64 %indvars.iv.next3538.i, %wide.trip.count3498.i
  br i1 %exitcond3541.not.i, label %._crit_edge3159.split.us.us.us.i, label %bb.cs, !llvm.loop !610

._crit_edge3159.split.us.us.us.i:                 ; preds = %..loopexit2541_crit_edge.us.us.us.i
  %i.bwr = getelementptr inbounds [2 x i8], ptr %.27263166.us.us.i, i64 %i.bkt ; 2 uses
  %indvars.iv.next3543.i = add nuw nsw i64 %indvars.iv3542.i, 2 ; 2 uses
  %i.bws = trunc i64 %indvars.iv.next3543.i to i32 ; 2 uses
  %i.bwt = or i32 %i.bws, 1
  %i.bwu = icmp slt i32 %i.bwt, %i.ape
  br i1 %i.bwu, label %.preheader2547.us.us.i, label %.preheader2550.i, !llvm.loop !611

.preheader2550.i:                                 ; preds = %._crit_edge3159.split.us.us.us.i, %.preheader2547.us.preheader.i, %.preheader2547.preheader.i, %._crit_edge3126.i
  %.1729.lcssa.i = phi float [ %op.rdx, %._crit_edge3126.i ], [ %op.rdx, %.preheader2547.preheader.i ], [ %op.rdx, %.preheader2547.us.preheader.i ], [ %.8.us.us.us.i, %._crit_edge3159.split.us.us.us.i ] ; 3 uses
  %.2726.lcssa.i = phi ptr [ %.1725.lcssa.i, %._crit_edge3126.i ], [ %scevgep3527.i, %.preheader2547.preheader.i ], [ %scevgep3528.i, %.preheader2547.us.preheader.i ], [ %i.bwr, %._crit_edge3159.split.us.us.us.i ]
  %.2.lcssa.i = phi i32 [ %.1.lcssa.i, %._crit_edge3126.i ], [ %i.buq, %.preheader2547.preheader.i ], [ %i.buy, %.preheader2547.us.preheader.i ], [ %i.bws, %._crit_edge3159.split.us.us.us.i ] ; 2 uses
  %i.bwv = icmp slt i32 %.2.lcssa.i, %i.ape
  br i1 %i.bwv, label %.preheader2546.lr.ph.i, label %._crit_edge3205.i

.preheader2546.lr.ph.i:                           ; preds = %.preheader2550.i
  %i.bww = load i32, ptr %i.d, align 4
  %i.bwx = load i32, ptr %i.j, align 4
  %invariant.op3197.i = sub i32 %.neg2504.i, %i.bwx
  %i.bwy = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bwz = load i32, ptr %i.a, align 4
  %.fr3245.i = freeze i32 %i.bwz                  ; 2 uses
  %i.bxa = load i32, ptr %i.c, align 4
  %i.bxb = load i32, ptr %i.i, align 4
  %.neg2494.i = add nuw nsw i32 %.07323217.i, 1
  %invariant.op3190.i = sub i32 %.neg2494.i, %i.bxb
  %i.bxc = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bxd = icmp sgt i32 %.fr3245.i, 0
  %or.cond3761.i = and i1 %i.bkm, %i.bxd
  br i1 %or.cond3761.i, label %.preheader2546.us.us.preheader.i, label %._crit_edge3205.i

.preheader2546.us.us.preheader.i:                 ; preds = %.preheader2546.lr.ph.i
  %i.bxe = zext nneg i32 %.fr3245.i to i64        ; 2 uses
  %i.bxf = zext i32 %.2.lcssa.i to i64
  br label %.preheader2546.us.us.i

.preheader2546.us.us.i:                           ; preds = %._crit_edge3195.split.us.us.us.i, %.preheader2546.us.us.preheader.i
  %indvars.iv3555.i = phi i64 [ %i.bxf, %.preheader2546.us.us.preheader.i ], [ %indvars.iv.next3556.i, %._crit_edge3195.split.us.us.us.i ] ; 2 uses
  %.37273202.us.us.i = phi ptr [ %.2726.lcssa.i, %.preheader2546.us.us.preheader.i ], [ %i.byp, %._crit_edge3195.split.us.us.us.i ] ; 2 uses
  %.93201.us.us.i = phi float [ %.1729.lcssa.i, %.preheader2546.us.us.preheader.i ], [ %.15.us.us.us.i, %._crit_edge3195.split.us.us.us.i ]
  br label %bb.cw

bb.cw:                                            ; preds = %..loopexit2539_crit_edge.us.us.us.i, %.preheader2546.us.us.i
  %indvars.iv3550.i = phi i64 [ %indvars.iv.next3551.i, %..loopexit2539_crit_edge.us.us.us.i ], [ 0, %.preheader2546.us.us.i ] ; 3 uses
  %.103192.us.us.us.i = phi float [ %.15.us.us.us.i, %..loopexit2539_crit_edge.us.us.us.i ], [ %.93201.us.us.i, %.preheader2546.us.us.i ] ; 3 uses
  %i.bxg = trunc i64 %indvars.iv3550.i to i32
  %i.bxh = mul i32 %i.bww, %i.bxg
  %.reass3198.us.us.us.i = add i32 %i.bxh, %invariant.op3197.i ; 3 uses
  %i.bxi = icmp slt i32 %.reass3198.us.us.us.i, 0
  br i1 %i.bxi, label %..loopexit2539_crit_edge.us.us.us.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.bxj = srem i32 %.reass3198.us.us.us.i, %i.bwy
  %i.bxk = sdiv i32 %.reass3198.us.us.us.i, %i.bwy ; 2 uses
  %.not887.us.us.us.i = icmp eq i32 %i.bxj, 0
  %.not888.us.us.us.i = icmp slt i32 %i.bxk, %i.apg
  %or.cond328 = select i1 %.not887.us.us.us.i, i1 %.not888.us.us.us.i, i1 false
  br i1 %or.cond328, label %.preheader.us.us.us.i, label %..loopexit2539_crit_edge.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %bb.cx
  %i.bxl = mul nuw nsw i64 %indvars.iv3550.i, %i.bxe
  %i.bxm = sext i32 %i.bxk to i64
  %i.bxn = getelementptr inbounds nuw [2 x i8], ptr %.37273202.us.us.i, i64 %i.bxl
  %i.bxo = mul nsw i64 %i.bxm, %i.aqj
  br label %bb.cy

bb.cy:                                            ; preds = %bb.da, %.preheader.us.us.us.i
  %indvars.iv3545.i = phi i64 [ %indvars.iv.next3546.i, %bb.da ], [ 0, %.preheader.us.us.us.i ] ; 3 uses
  %.113187.us.us.us.i = phi float [ %.13.us.us.us.i, %bb.da ], [ %.103192.us.us.us.i, %.preheader.us.us.us.i ] ; 3 uses
  %i.bxp = trunc i64 %indvars.iv3545.i to i32
  %i.bxq = mul i32 %i.bxa, %i.bxp
  %.reass3191.us.us.us.i = add i32 %invariant.op3190.i, %i.bxq ; 3 uses
  %i.bxr = icmp slt i32 %.reass3191.us.us.us.i, 0
  br i1 %i.bxr, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.bxs = srem i32 %.reass3191.us.us.us.i, %i.bxc
  %i.bxt = sdiv i32 %.reass3191.us.us.us.i, %i.bxc ; 2 uses
  %.not889.us.us.us.i = icmp eq i32 %i.bxs, 0
  %.not890.us.us.us.i = icmp slt i32 %i.bxt, %i.apf
  %or.cond329 = select i1 %.not889.us.us.us.i, i1 %.not890.us.us.us.i, i1 false
  br i1 %or.cond329, label %_ZN4ncnn3MatD2Ev.exit.us.us.us.i, label %bb.da

_ZN4ncnn3MatD2Ev.exit.us.us.us.i:                 ; preds = %bb.cz
  %i.bxu = load ptr, ptr %1, align 8, !tbaa !20, !noalias !644
  %i.bxv = load i64, ptr %i.app, align 8, !tbaa !21, !noalias !644
  %i.bxw = mul i64 %i.bxv, %indvars.iv3555.i
  %i.bxx = load i64, ptr %i.apq, align 8, !tbaa !55, !noalias !644 ; 2 uses
  %i.bxy = mul i64 %i.bxw, %i.bxx
  %i.bxz = getelementptr inbounds nuw i8, ptr %i.bxu, i64 %i.bxy
  %i.bya = mul i64 %i.bxo, %i.bxx
  %i.byb = getelementptr inbounds nuw i8, ptr %i.bxz, i64 %i.bya
  %i.byc = sext i32 %i.bxt to i64
  %i.byd = getelementptr inbounds [2 x i8], ptr %i.byb, i64 %i.byc
end_hunk_13
begin_hunk_14_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.fs = insertelement <8 x float> poison, float %i.fr, i64 0
  %i.ft = shufflevector <8 x float> %i.fs, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit402.us:                      ; preds = %bb.i
  %i.fu = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !715
  %i.fv = load ptr, ptr %4, align 8, !tbaa !20, !noalias !715 ; 2 uses
  %i.fw = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !715 ; 2 uses
  %i.fx = mul i64 %i.fw, %i.ck
  %i.fy = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !715 ; 3 uses
  %i.fz = mul i64 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fz
  %i.gb = sext i32 %i.fu to i64
  %i.gc = mul nsw i64 %i.gb, %i.kj
  %i.gd = mul i64 %i.gc, %i.fy                    ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd
  %i.gf = mul i64 %i.fw, %i.cl
  %i.gg = mul i64 %i.gf, %i.fy
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.gg
  %i.gi = shl nsw i32 %i.cx, 2
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ge, i64 %i.gj ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gd
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gl, i64 %i.gj ; 4 uses
  %i.gn = load float, ptr %i.gk, align 1, !tbaa !82
  %i.go = insertelement <8 x float> poison, float %i.gn, i64 0
  %i.gp = shufflevector <8 x float> %i.go, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  %i.gr = load float, ptr %i.gq, align 1, !tbaa !82
  %i.gs = insertelement <8 x float> poison, float %i.gr, i64 0
  %i.gt = shufflevector <8 x float> %i.gs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gv = load float, ptr %i.gu, align 1, !tbaa !82
  %i.gw = insertelement <8 x float> poison, float %i.gv, i64 0
  %i.gx = shufflevector <8 x float> %i.gw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gk, i64 12
  %i.gz = load float, ptr %i.gy, align 1, !tbaa !82
  %i.ha = insertelement <8 x float> poison, float %i.gz, i64 0
  %i.hb = shufflevector <8 x float> %i.ha, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hc = load float, ptr %i.gm, align 1, !tbaa !82
  %i.hd = insertelement <8 x float> poison, float %i.hc, i64 0
  %i.he = shufflevector <8 x float> %i.hd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.hg = load float, ptr %i.hf, align 1, !tbaa !82
  %i.hh = insertelement <8 x float> poison, float %i.hg, i64 0
  %i.hi = shufflevector <8 x float> %i.hh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.hk = load float, ptr %i.hj, align 1, !tbaa !82
  %i.hl = insertelement <8 x float> poison, float %i.hk, i64 0
  %i.hm = shufflevector <8 x float> %i.hl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gm, i64 12
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.ho = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !716
  %i.hp = load ptr, ptr %4, align 8, !tbaa !20, !noalias !716
  %i.hq = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !716
  %i.hr = mul i64 %i.hq, %i.cm
  %i.hs = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !716 ; 2 uses
  %i.ht = mul i64 %i.hr, %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ht
  %i.hv = sext i32 %i.ho to i64
  %i.hw = mul nsw i64 %i.hv, %i.kj
  %i.hx = mul i64 %i.hw, %i.hs
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hx
  %i.hz = shl nsw i32 %i.cx, 3
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.ia ; 8 uses
  %i.ic = load float, ptr %i.ib, align 1, !tbaa !82
  %i.id = insertelement <8 x float> poison, float %i.ic, i64 0
  %i.ie = shufflevector <8 x float> %i.id, <8 x float> poison, <8 x i32> zeroinitializer
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.ig = load float, ptr %i.if, align 1, !tbaa !82
  %i.ih = insertelement <8 x float> poison, float %i.ig, i64 0
  %i.ii = shufflevector <8 x float> %i.ih, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %i.ik = load float, ptr %i.ij, align 1, !tbaa !82
  %i.il = insertelement <8 x float> poison, float %i.ik, i64 0
  %i.im = shufflevector <8 x float> %i.il, <8 x float> poison, <8 x i32> zeroinitializer
  %i.in = getelementptr inbounds nuw i8, ptr %i.ib, i64 12
  %i.io = load float, ptr %i.in, align 1, !tbaa !82
  %i.ip = insertelement <8 x float> poison, float %i.io, i64 0
  %i.iq = shufflevector <8 x float> %i.ip, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %i.is = load float, ptr %i.ir, align 1, !tbaa !82
  %i.it = insertelement <8 x float> poison, float %i.is, i64 0
  %i.iu = shufflevector <8 x float> %i.it, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 20
  %i.iw = load float, ptr %i.iv, align 1, !tbaa !82
  %i.ix = insertelement <8 x float> poison, float %i.iw, i64 0
  %i.iy = shufflevector <8 x float> %i.ix, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  %i.ja = load float, ptr %i.iz, align 1, !tbaa !82
  %i.jb = insertelement <8 x float> poison, float %i.ja, i64 0
  %i.jc = shufflevector <8 x float> %i.jb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ib, i64 28
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit400.us, %_ZN4ncnn3MatD2Ev.exit402.us, %bb.j
  %.sink.in = phi ptr [ %i.jd, %bb.j ], [ %i.hn, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1547 = phi <8 x float> [ %i.ie, %bb.j ], [ %i.gp, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fb, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1544 = phi <8 x float> [ %i.ii, %bb.j ], [ %i.gt, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fe, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1541 = phi <8 x float> [ %i.im, %bb.j ], [ %i.gx, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fh, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1538 = phi <8 x float> [ %i.iq, %bb.j ], [ %i.hb, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fk, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1534 = phi <8 x float> [ %i.iu, %bb.j ], [ %i.he, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fn, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1530 = phi <8 x float> [ %i.iy, %bb.j ], [ %i.hi, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fq, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1526 = phi <8 x float> [ %i.jc, %bb.j ], [ %i.hm, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ft, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink = load float, ptr %.sink.in, align 1, !tbaa !82
  %i.je = insertelement <8 x float> poison, float %.sink, i64 0
  %i.jf = shufflevector <8 x float> %i.je, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jg = load <8 x float>, ptr %i.dc, align 32, !tbaa !82
  %i.jh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1547, <8 x float> nofpclass(nan inf) %i.jg, <8 x float> nofpclass(nan inf) %.311801262.us)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.jj = load <8 x float>, ptr %i.ji, align 32, !tbaa !82
  %i.jk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1544, <8 x float> nofpclass(nan inf) %i.jj, <8 x float> nofpclass(nan inf) %.211841261.us)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.jm = load <8 x float>, ptr %i.jl, align 32, !tbaa !82
  %i.jn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1541, <8 x float> nofpclass(nan inf) %i.jm, <8 x float> nofpclass(nan inf) %.212021260.us)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.jp = load <8 x float>, ptr %i.jo, align 32, !tbaa !82
  %i.jq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1538, <8 x float> nofpclass(nan inf) %i.jp, <8 x float> nofpclass(nan inf) %.212151259.us)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  %i.js = load <8 x float>, ptr %i.jr, align 32, !tbaa !82
  %i.jt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1534, <8 x float> nofpclass(nan inf) %i.js, <8 x float> nofpclass(nan inf) %i.jh)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.dc, i64 160
  %i.jv = load <8 x float>, ptr %i.ju, align 32, !tbaa !82
  %i.jw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1530, <8 x float> nofpclass(nan inf) %i.jv, <8 x float> nofpclass(nan inf) %i.jk)
  %i.jx = getelementptr inbounds nuw i8, ptr %i.dc, i64 192
  %i.jy = load <8 x float>, ptr %i.jx, align 32, !tbaa !82
  %i.jz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1526, <8 x float> nofpclass(nan inf) %i.jy, <8 x float> nofpclass(nan inf) %i.jn)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dc, i64 224
  %i.kb = load <8 x float>, ptr %i.ka, align 32, !tbaa !82
  %i.kc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.jf, <8 x float> nofpclass(nan inf) %i.kb, <8 x float> nofpclass(nan inf) %i.jq)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %.51218.us = phi nsz <8 x float> [ %.212151259.us, %bb.g ], [ %.212151259.us, %bb.i ], [ %.212151259.us, %bb.h ], [ %i.kc, %.sink.split ] ; 2 uses
  %.51205.us = phi nsz <8 x float> [ %.212021260.us, %bb.g ], [ %.212021260.us, %bb.i ], [ %.212021260.us, %bb.h ], [ %i.jz, %.sink.split ] ; 2 uses
  %.51187.us = phi nsz <8 x float> [ %.211841261.us, %bb.g ], [ %.211841261.us, %bb.i ], [ %.211841261.us, %bb.h ], [ %i.jw, %.sink.split ] ; 2 uses
  %.6.us = phi nsz <8 x float> [ %.311801262.us, %bb.g ], [ %.311801262.us, %bb.i ], [ %.311801262.us, %bb.h ], [ %i.jt, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1250.us, label %bb.g, !llvm.loop !691

.loopexit1250.us:                                 ; preds = %bb.k, %.preheader1249.us, %bb.f, %bb.e
  %.61219.us = phi nsz <8 x float> [ %.112141267.us, %bb.e ], [ %.112141267.us, %bb.f ], [ %.112141267.us, %.preheader1249.us ], [ %.51218.us, %bb.k ] ; 3 uses
  %.61206.us = phi nsz <8 x float> [ %.112011268.us, %bb.e ], [ %.112011268.us, %bb.f ], [ %.112011268.us, %.preheader1249.us ], [ %.51205.us, %bb.k ] ; 3 uses
  %.61188.us = phi nsz <8 x float> [ %.111831269.us, %bb.e ], [ %.111831269.us, %bb.f ], [ %.111831269.us, %.preheader1249.us ], [ %.51187.us, %bb.k ] ; 3 uses
  %.7.us = phi nsz <8 x float> [ %.211791270.us, %bb.e ], [ %.211791270.us, %bb.f ], [ %.211791270.us, %.preheader1249.us ], [ %.6.us, %bb.k ] ; 3 uses
  %i.kd = add nuw nsw i32 %.03271271.us, 1        ; 2 uses
  %exitcond1446.not = icmp eq i32 %i.kd, %i.bu
  br i1 %exitcond1446.not, label %._crit_edge.us, label %bb.e, !llvm.loop !692

.preheader1249.us:                                ; preds = %bb.f
  %i.ke = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.kf = icmp sgt i32 %i.ke, 0
  br i1 %i.kf, label %.lr.ph.us, label %.loopexit1250.us

.lr.ph.us:                                        ; preds = %.preheader1249.us
  %i.kg = load i32, ptr %13, align 4, !tbaa !61
  %i.kh = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us = sub i32 %.neg1244, %i.kh
  %i.ki = mul nuw nsw i32 %i.ke, %.03271271.us
  %i.kj = sext i32 %i.cr to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ke to i64
  br label %bb.g

._crit_edge.us:                                   ; preds = %.loopexit1250.us
  %i.kk = getelementptr inbounds [4 x i8], ptr %.03291283.us, i64 %i.by ; 2 uses
  %indvars.iv.next1448 = add nuw nsw i64 %indvars.iv1447, 8 ; 2 uses
  %i.kl = icmp slt i64 %indvars.iv.next1448, %invariant.op
  br i1 %i.kl, label %.preheader1254.us, label %.preheader1257, !llvm.loop !693

.preheader1257:                                   ; preds = %._crit_edge.us, %.preheader1254.preheader, %_ZN4ncnn3MatD2Ev.exit404
  %.01213.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1254.preheader ], [ %.61219.us, %._crit_edge.us ] ; 3 uses
  %.01200.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1254.preheader ], [ %.61206.us, %._crit_edge.us ] ; 3 uses
  %.01182.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1254.preheader ], [ %.61188.us, %._crit_edge.us ] ; 3 uses
  %.11178.lcssa = phi <8 x float> [ %.01177, %_ZN4ncnn3MatD2Ev.exit404 ], [ %.01177, %.preheader1254.preheader ], [ %.7.us, %._crit_edge.us ] ; 3 uses
  %.0329.lcssa = phi ptr [ %i.bt, %_ZN4ncnn3MatD2Ev.exit404 ], [ %scevgep, %.preheader1254.preheader ], [ %i.kk, %._crit_edge.us ] ; 3 uses
  %.0328.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit404 ], [ %i.be, %.preheader1254.preheader ], [ %i.bh, %._crit_edge.us ] ; 5 uses
  %i.km = or disjoint i32 %.0328.lcssa, 3         ; 2 uses
  %i.kn = icmp slt i32 %i.km, %i.ac
  br i1 %i.kn, label %.preheader1253.lr.ph, label %.preheader1256

.preheader1253.lr.ph:                             ; preds = %.preheader1257
  %i.ko = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.kp = icmp sgt i32 %i.ko, 0
  %.neg1240 = add nuw nsw i32 %.03331420, 1
  %i.kq = load i32, ptr %16, align 4, !tbaa !61
  %i.kr = shl i32 %i.kq, 5
  %i.ks = sext i32 %i.kr to i64                   ; 2 uses
  br i1 %i.kp, label %.preheader1253.lr.ph.split.us, label %.preheader1253.preheader

.preheader1253.preheader:                         ; preds = %.preheader1253.lr.ph
  %i.kt = sub i32 %i.bi, %.0328.lcssa             ; 2 uses
  %i.ku = and i32 %i.kt, -4
  %i.kv = zext i32 %i.ku to i64
  %i.kw = add nuw nsw i64 %i.kv, 4
  %i.kx = mul nsw i64 %i.kw, %i.ks
  %scevgep1450 = getelementptr i8, ptr %.0329.lcssa, i64 %i.kx
  %i.ky = add i32 %.0328.lcssa, 4
  %i.kz = and i32 %i.kt, -4
  %i.la = add i32 %i.ky, %i.kz
  br label %.preheader1256

.preheader1253.lr.ph.split.us:                    ; preds = %.preheader1253.lr.ph
  %i.lb = load i32, ptr %9, align 4, !tbaa !61
  %i.lc = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1340.us = sub i32 %.neg1242, %i.lc
  %i.ld = zext i32 %.0328.lcssa to i64
  %i.le = zext nneg i32 %i.km to i64
  br label %.preheader1253.us

.preheader1253.us:                                ; preds = %._crit_edge.us1363, %.preheader1253.lr.ph.split.us
  %indvars.iv1462 = phi i64 [ %indvars.iv.next1463, %._crit_edge.us1363 ], [ %i.ld, %.preheader1253.lr.ph.split.us ] ; 5 uses
  %i.lf = phi i64 [ %i.qf, %._crit_edge.us1363 ], [ %i.le, %.preheader1253.lr.ph.split.us ]
  %.13301346.us = phi ptr [ %i.qe, %._crit_edge.us1363 ], [ %.0329.lcssa, %.preheader1253.lr.ph.split.us ] ; 3 uses
  %.81345.us = phi <8 x float> [ %.13.us, %._crit_edge.us1363 ], [ %.11178.lcssa, %.preheader1253.lr.ph.split.us ]
  %.711891344.us = phi <8 x float> [ %.121194.us, %._crit_edge.us1363 ], [ %.01182.lcssa, %.preheader1253.lr.ph.split.us ]
  %.712071343.us = phi <8 x float> [ %.121212.us, %._crit_edge.us1363 ], [ %.01200.lcssa, %.preheader1253.lr.ph.split.us ]
  %.712201342.us = phi <8 x float> [ %.121225.us, %._crit_edge.us1363 ], [ %.01213.lcssa, %.preheader1253.lr.ph.split.us ]
  %i.lg = or disjoint i64 %indvars.iv1462, 1
  %i.lh = or disjoint i64 %indvars.iv1462, 2
  %i.li = lshr exact i64 %indvars.iv1462, 2
  br label %bb.l

bb.l:                                             ; preds = %.preheader1253.us, %.loopexit1248.us
  %.03251335.us = phi i32 [ 0, %.preheader1253.us ], [ %i.qd, %.loopexit1248.us ] ; 3 uses
  %.91334.us = phi <8 x float> [ %.81345.us, %.preheader1253.us ], [ %.13.us, %.loopexit1248.us ] ; 6 uses
  %.811901333.us = phi <8 x float> [ %.711891344.us, %.preheader1253.us ], [ %.121194.us, %.loopexit1248.us ] ; 6 uses
  %.812081332.us = phi <8 x float> [ %.712071343.us, %.preheader1253.us ], [ %.121212.us, %.loopexit1248.us ] ; 6 uses
  %.812211331.us = phi <8 x float> [ %.712201342.us, %.preheader1253.us ], [ %.121225.us, %.loopexit1248.us ] ; 6 uses
  %i.lj = mul nsw i32 %i.lb, %.03251335.us
  %.reass1341.us = add i32 %i.lj, %invariant.op1340.us ; 3 uses
  %i.lk = icmp slt i32 %.reass1341.us, 0
  br i1 %i.lk, label %.loopexit1248.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ll = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.lm = srem i32 %.reass1341.us, %i.ll
  %i.ln = sdiv i32 %.reass1341.us, %i.ll          ; 2 uses
  %.not378.us = icmp eq i32 %i.lm, 0
  %.not379.us = icmp slt i32 %i.ln, %i.ae
  %or.cond1559 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1559, label %.preheader1247.us, label %.loopexit1248.us

.preheader1247.us:                                ; preds = %bb.m
  %i.lo = load i32, ptr %12, align 4, !tbaa !61   ; 4 uses
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph.us1354, label %.loopexit1248.us

.lr.ph.us1354:                                    ; preds = %.preheader1247.us
  %i.lq = load i32, ptr %13, align 4, !tbaa !61   ; 2 uses
  %i.lr = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1355 = sub i32 %.neg1240, %i.lr ; 2 uses
  %i.ls = mul nuw nsw i32 %i.lo, %.03251335.us    ; 2 uses
  %i.lt = sext i32 %i.ln to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1248.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1310.us.preheader
  ]

.lr.ph.split.us1310.us.preheader:                 ; preds = %.lr.ph.us1354
  %wide.trip.count1454 = zext nneg i32 %i.lo to i64
  br label %.lr.ph.split.us1310.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1354
  %wide.trip.count1459 = zext nneg i32 %i.lo to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us1310.us:                           ; preds = %.lr.ph.split.us1310.us.preheader, %bb.o
  %indvars.iv1451 = phi i64 [ 0, %.lr.ph.split.us1310.us.preheader ], [ %indvars.iv.next1452, %bb.o ] ; 3 uses
  %.101299.us1312.us = phi <8 x float> [ %.91334.us, %.lr.ph.split.us1310.us.preheader ], [ %.12.us1322.us, %bb.o ] ; 3 uses
  %.911911298.us1313.us = phi <8 x float> [ %.811901333.us, %.lr.ph.split.us1310.us.preheader ], [ %.111193.us1321.us, %bb.o ] ; 3 uses
  %.912091297.us1314.us = phi <8 x float> [ %.812081332.us, %.lr.ph.split.us1310.us.preheader ], [ %.111211.us1320.us, %bb.o ] ; 3 uses
  %.912221296.us1315.us = phi <8 x float> [ %.812211331.us, %.lr.ph.split.us1310.us.preheader ], [ %.111224.us1319.us, %bb.o ] ; 3 uses
  %i.lu = trunc i64 %indvars.iv1451 to i32
  %i.lv = mul i32 %i.lq, %i.lu
  %.reass.us1316.us = add i32 %i.lv, %invariant.op.us1355 ; 3 uses
  %i.lw = icmp slt i32 %.reass.us1316.us, 0
  br i1 %i.lw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us1310.us
  %i.lx = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.ly = srem i32 %.reass.us1316.us, %i.lx
  %i.lz = sdiv i32 %.reass.us1316.us, %i.lx       ; 2 uses
  %.not380.us1317.us = icmp eq i32 %i.ly, 0
  %.not381.us1318.us = icmp slt i32 %i.lz, %i.ad
  %or.cond1560 = select i1 %.not380.us1317.us, i1 %.not381.us1318.us, i1 false
  br i1 %or.cond1560, label %_ZN4ncnn3MatD2Ev.exit391.us.us, label %bb.o

_ZN4ncnn3MatD2Ev.exit391.us.us:                   ; preds = %bb.n
  %i.ma = trunc i64 %indvars.iv1451 to i32
  %i.mb = add i32 %i.ls, %i.ma
  %i.mc = shl nsw i32 %i.mb, 5
  %i.md = zext nneg i32 %i.mc to i64
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %.13301346.us, i64 %i.md ; 4 uses
  %i.mf = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !717
  %i.mg = load ptr, ptr %4, align 8, !tbaa !20, !noalias !717 ; 4 uses
  %i.mh = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !717 ; 4 uses
  %i.mi = mul i64 %i.mh, %indvars.iv1462
  %i.mj = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !717 ; 5 uses
  %i.mk = mul i64 %i.mi, %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mk
  %i.mm = sext i32 %i.mf to i64
  %i.mn = mul nsw i64 %i.mm, %i.lt
  %i.mo = mul i64 %i.mn, %i.mj                    ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mo
  %i.mq = sext i32 %i.lz to i64                   ; 4 uses
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.mq
  %i.ms = mul i64 %i.mh, %i.lg
  %i.mt = mul i64 %i.ms, %i.mj
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mo
  %i.mw = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.mq
  %i.mx = mul i64 %i.mh, %i.lh
  %i.my = mul i64 %i.mx, %i.mj
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 %i.mo
  %i.nb = mul i64 %i.mh, %i.lf
  %i.nc = mul i64 %i.nb, %i.mj
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.nc
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.mq
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.mo
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.mq
  %i.nh = load float, ptr %i.mr, align 1, !tbaa !82
  %i.ni = insertelement <8 x float> poison, float %i.nh, i64 0
  %i.nj = shufflevector <8 x float> %i.ni, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nk = load float, ptr %i.mw, align 1, !tbaa !82
  %i.nl = insertelement <8 x float> poison, float %i.nk, i64 0
  %i.nm = shufflevector <8 x float> %i.nl, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nn = load float, ptr %i.ne, align 1, !tbaa !82
  %i.no = insertelement <8 x float> poison, float %i.nn, i64 0
  %i.np = shufflevector <8 x float> %i.no, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nq = load float, ptr %i.ng, align 1, !tbaa !82
  %i.nr = insertelement <8 x float> poison, float %i.nq, i64 0
  %i.ns = shufflevector <8 x float> %i.nr, <8 x float> poison, <8 x i32> zeroinitializer
  %i.nt = load <8 x float>, ptr %i.me, align 32, !tbaa !82
  %i.nu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nj, <8 x float> nofpclass(nan inf) %i.nt, <8 x float> nofpclass(nan inf) %.101299.us1312.us)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.nw = load <8 x float>, ptr %i.nv, align 32, !tbaa !82
  %i.nx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.nm, <8 x float> nofpclass(nan inf) %i.nw, <8 x float> nofpclass(nan inf) %.911911298.us1313.us)
  %i.ny = getelementptr inbounds nuw i8, ptr %i.me, i64 64
  %i.nz = load <8 x float>, ptr %i.ny, align 32, !tbaa !82
  %i.oa = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.np, <8 x float> nofpclass(nan inf) %i.nz, <8 x float> nofpclass(nan inf) %.912091297.us1314.us)
  %i.ob = getelementptr inbounds nuw i8, ptr %i.me, i64 96
  %i.oc = load <8 x float>, ptr %i.ob, align 32, !tbaa !82
  %i.od = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ns, <8 x float> nofpclass(nan inf) %i.oc, <8 x float> nofpclass(nan inf) %.912221296.us1315.us)
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit391.us.us, %bb.n, %.lr.ph.split.us1310.us
  %.111224.us1319.us = phi nsz <8 x float> [ %.912221296.us1315.us, %.lr.ph.split.us1310.us ], [ %.912221296.us1315.us, %bb.n ], [ %i.od, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111211.us1320.us = phi nsz <8 x float> [ %.912091297.us1314.us, %.lr.ph.split.us1310.us ], [ %.912091297.us1314.us, %bb.n ], [ %i.oa, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111193.us1321.us = phi nsz <8 x float> [ %.911911298.us1313.us, %.lr.ph.split.us1310.us ], [ %.911911298.us1313.us, %bb.n ], [ %i.nx, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.12.us1322.us = phi nsz <8 x float> [ %.101299.us1312.us, %.lr.ph.split.us1310.us ], [ %.101299.us1312.us, %bb.n ], [ %i.nu, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %indvars.iv.next1452 = add nuw nsw i64 %indvars.iv1451, 1 ; 2 uses
  %exitcond1455.not = icmp eq i64 %indvars.iv.next1452, %wide.trip.count1454
  br i1 %exitcond1455.not, label %.loopexit1248.us, label %.lr.ph.split.us1310.us, !llvm.loop !696

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.r
  %indvars.iv1456 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next1457, %bb.r ] ; 3 uses
  %.101299.us.us = phi <8 x float> [ %.91334.us, %.lr.ph.split.us.us.preheader ], [ %.12.us.us, %bb.r ] ; 3 uses
  %.911911298.us.us = phi <8 x float> [ %.811901333.us, %.lr.ph.split.us.us.preheader ], [ %.111193.us.us, %bb.r ] ; 3 uses
  %.912091297.us.us = phi <8 x float> [ %.812081332.us, %.lr.ph.split.us.us.preheader ], [ %.111211.us.us, %bb.r ] ; 3 uses
  %.912221296.us.us = phi <8 x float> [ %.812211331.us, %.lr.ph.split.us.us.preheader ], [ %.111224.us.us, %bb.r ] ; 3 uses
  %i.oe = trunc i64 %indvars.iv1456 to i32
  %i.of = mul i32 %i.lq, %i.oe
  %.reass.us1304.us = add i32 %i.of, %invariant.op.us1355 ; 3 uses
  %i.og = icmp slt i32 %.reass.us1304.us, 0
  br i1 %i.og, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.us
  %i.oh = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.oi = srem i32 %.reass.us1304.us, %i.oh
  %i.oj = sdiv i32 %.reass.us1304.us, %i.oh       ; 2 uses
  %.not380.us.us = icmp eq i32 %i.oi, 0
  %.not381.us.us = icmp slt i32 %i.oj, %i.ad
  %or.cond1561 = select i1 %.not380.us.us, i1 %.not381.us.us, i1 false
  br i1 %or.cond1561, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ok = trunc i64 %indvars.iv1456 to i32
  %i.ol = add i32 %i.ls, %i.ok
  %i.om = shl nsw i32 %i.ol, 5
  %i.on = zext nneg i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.13301346.us, i64 %i.on ; 4 uses
  %i.op = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !718
  %i.oq = load ptr, ptr %4, align 8, !tbaa !20, !noalias !718
  %i.or = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !718
  %i.os = mul i64 %i.or, %i.li
  %i.ot = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !718 ; 2 uses
  %i.ou = mul i64 %i.os, %i.ot
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.ou
  %i.ow = sext i32 %i.op to i64
  %i.ox = mul nsw i64 %i.ow, %i.lt
  %i.oy = mul i64 %i.ox, %i.ot
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.oy
  %i.pa = shl nsw i32 %i.oj, 2
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %i.pb ; 4 uses
  %i.pd = load float, ptr %i.pc, align 1, !tbaa !82
  %i.pe = insertelement <8 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <8 x float> %i.pe, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pc, i64 4
  %i.ph = load float, ptr %i.pg, align 1, !tbaa !82
  %i.pi = insertelement <8 x float> poison, float %i.ph, i64 0
  %i.pj = shufflevector <8 x float> %i.pi, <8 x float> poison, <8 x i32> zeroinitializer
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %i.pl = load float, ptr %i.pk, align 1, !tbaa !82
  %i.pm = insertelement <8 x float> poison, float %i.pl, i64 0
  %i.pn = shufflevector <8 x float> %i.pm, <8 x float> poison, <8 x i32> zeroinitializer
  %i.po = getelementptr inbounds nuw i8, ptr %i.pc, i64 12
  %i.pp = load float, ptr %i.po, align 1, !tbaa !82
  %i.pq = insertelement <8 x float> poison, float %i.pp, i64 0
  %i.pr = shufflevector <8 x float> %i.pq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ps = load <8 x float>, ptr %i.oo, align 32, !tbaa !82
  %i.pt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pf, <8 x float> nofpclass(nan inf) %i.ps, <8 x float> nofpclass(nan inf) %.101299.us.us)
  %i.pu = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.pv = load <8 x float>, ptr %i.pu, align 32, !tbaa !82
  %i.pw = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pj, <8 x float> nofpclass(nan inf) %i.pv, <8 x float> nofpclass(nan inf) %.911911298.us.us)
  %i.px = getelementptr inbounds nuw i8, ptr %i.oo, i64 64
  %i.py = load <8 x float>, ptr %i.px, align 32, !tbaa !82
  %i.pz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pn, <8 x float> nofpclass(nan inf) %i.py, <8 x float> nofpclass(nan inf) %.912091297.us.us)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oo, i64 96
  %i.qb = load <8 x float>, ptr %i.qa, align 32, !tbaa !82
  %i.qc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.pr, <8 x float> nofpclass(nan inf) %i.qb, <8 x float> nofpclass(nan inf) %.912221296.us.us)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.split.us.us
  %.111224.us.us = phi nsz <8 x float> [ %.912221296.us.us, %.lr.ph.split.us.us ], [ %i.qc, %bb.q ], [ %.912221296.us.us, %bb.p ] ; 2 uses
  %.111211.us.us = phi nsz <8 x float> [ %.912091297.us.us, %.lr.ph.split.us.us ], [ %i.pz, %bb.q ], [ %.912091297.us.us, %bb.p ] ; 2 uses
  %.111193.us.us = phi nsz <8 x float> [ %.911911298.us.us, %.lr.ph.split.us.us ], [ %i.pw, %bb.q ], [ %.911911298.us.us, %bb.p ] ; 2 uses
  %.12.us.us = phi nsz <8 x float> [ %.101299.us.us, %.lr.ph.split.us.us ], [ %i.pt, %bb.q ], [ %.101299.us.us, %bb.p ] ; 2 uses
  %indvars.iv.next1457 = add nuw nsw i64 %indvars.iv1456, 1 ; 2 uses
  %exitcond1460.not = icmp eq i64 %indvars.iv.next1457, %wide.trip.count1459
  br i1 %exitcond1460.not, label %.loopexit1248.us, label %.lr.ph.split.us.us, !llvm.loop !696

.loopexit1248.us:                                 ; preds = %bb.o, %bb.r, %.lr.ph.us1354, %.preheader1247.us, %bb.m, %bb.l
  %.121225.us = phi nsz <8 x float> [ %.812211331.us, %bb.l ], [ %.812211331.us, %bb.m ], [ %.111224.us.us, %bb.r ], [ %.812211331.us, %.preheader1247.us ], [ %.812211331.us, %.lr.ph.us1354 ], [ %.111224.us1319.us, %bb.o ] ; 3 uses
  %.121212.us = phi nsz <8 x float> [ %.812081332.us, %bb.l ], [ %.812081332.us, %bb.m ], [ %.111211.us.us, %bb.r ], [ %.812081332.us, %.preheader1247.us ], [ %.812081332.us, %.lr.ph.us1354 ], [ %.111211.us1320.us, %bb.o ] ; 3 uses
  %.121194.us = phi nsz <8 x float> [ %.811901333.us, %bb.l ], [ %.811901333.us, %bb.m ], [ %.111193.us.us, %bb.r ], [ %.811901333.us, %.preheader1247.us ], [ %.811901333.us, %.lr.ph.us1354 ], [ %.111193.us1321.us, %bb.o ] ; 3 uses
  %.13.us = phi nsz <8 x float> [ %.91334.us, %bb.l ], [ %.91334.us, %bb.m ], [ %.12.us.us, %bb.r ], [ %.91334.us, %.preheader1247.us ], [ %.91334.us, %.lr.ph.us1354 ], [ %.12.us1322.us, %bb.o ] ; 3 uses
  %i.qd = add nuw nsw i32 %.03251335.us, 1        ; 2 uses
  %exitcond1461.not = icmp eq i32 %i.qd, %i.ko
  br i1 %exitcond1461.not, label %._crit_edge.us1363, label %bb.l, !llvm.loop !699

._crit_edge.us1363:                               ; preds = %.loopexit1248.us
  %i.qe = getelementptr inbounds [4 x i8], ptr %.13301346.us, i64 %i.ks ; 2 uses
  %indvars.iv.next1463 = add nuw nsw i64 %indvars.iv1462, 4 ; 3 uses
  %i.qf = or disjoint i64 %indvars.iv.next1463, 3 ; 2 uses
  %i.qg = trunc nuw i64 %i.qf to i32
  %i.qh = icmp sgt i32 %i.ac, %i.qg
  br i1 %i.qh, label %.preheader1253.us, label %.preheader1256.loopexit, !llvm.loop !700

.preheader1256.loopexit:                          ; preds = %._crit_edge.us1363
  %i.qi = trunc nuw i64 %indvars.iv.next1463 to i32
  br label %.preheader1256

.preheader1256:                                   ; preds = %.preheader1253.preheader, %.preheader1256.loopexit, %.preheader1257
  %.71220.lcssa = phi <8 x float> [ %.01213.lcssa, %.preheader1257 ], [ %.121225.us, %.preheader1256.loopexit ], [ %.01213.lcssa, %.preheader1253.preheader ]
  %.71207.lcssa = phi <8 x float> [ %.01200.lcssa, %.preheader1257 ], [ %.121212.us, %.preheader1256.loopexit ], [ %.01200.lcssa, %.preheader1253.preheader ]
  %.71189.lcssa = phi <8 x float> [ %.01182.lcssa, %.preheader1257 ], [ %.121194.us, %.preheader1256.loopexit ], [ %.01182.lcssa, %.preheader1253.preheader ] ; 3 uses
  %.8.lcssa = phi <8 x float> [ %.11178.lcssa, %.preheader1257 ], [ %.13.us, %.preheader1256.loopexit ], [ %.11178.lcssa, %.preheader1253.preheader ] ; 3 uses
  %.1330.lcssa = phi ptr [ %.0329.lcssa, %.preheader1257 ], [ %i.qe, %.preheader1256.loopexit ], [ %scevgep1450, %.preheader1253.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0328.lcssa, %.preheader1257 ], [ %i.qi, %.preheader1256.loopexit ], [ %i.la, %.preheader1253.preheader ] ; 5 uses
  %i.qj = or disjoint i32 %.1.lcssa, 1            ; 2 uses
  %i.qk = icmp slt i32 %i.qj, %i.ac
  br i1 %i.qk, label %.preheader1252.lr.ph, label %.preheader1255

.preheader1252.lr.ph:                             ; preds = %.preheader1256
  %i.ql = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.qm = icmp sgt i32 %i.ql, 0
  %.neg1236 = add nuw nsw i32 %.03331420, 1
  %i.qn = load i32, ptr %16, align 4, !tbaa !61
  %i.qo = shl i32 %i.qn, 4
  %i.qp = sext i32 %i.qo to i64                   ; 2 uses
  br i1 %i.qm, label %.preheader1252.lr.ph.split.us, label %.preheader1252.preheader

.preheader1252.preheader:                         ; preds = %.preheader1252.lr.ph
  %i.qq = sub i32 %i.bj, %.1.lcssa                ; 2 uses
  %i.qr = lshr i32 %i.qq, 1
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = shl nuw nsw i64 %i.qs, 2
  %i.qu = add nuw nsw i64 %i.qt, 4
  %i.qv = mul i64 %i.qu, %i.qp
  %scevgep1465 = getelementptr i8, ptr %.1330.lcssa, i64 %i.qv
  %i.qw = add i32 %.1.lcssa, 2
  %i.qx = and i32 %i.qq, -2
  %i.qy = add i32 %i.qw, %i.qx
  br label %.preheader1255

.preheader1252.lr.ph.split.us:                    ; preds = %.preheader1252.lr.ph
  %i.qz = load i32, ptr %9, align 4, !tbaa !61
  %i.ra = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1381.us = sub i32 %.neg1242, %i.ra
  %i.rb = zext i32 %.1.lcssa to i64
  %i.rc = zext nneg i32 %i.qj to i64
  br label %.preheader1252.us

.preheader1252.us:                                ; preds = %._crit_edge.us1395, %.preheader1252.lr.ph.split.us
  %indvars.iv1472 = phi i64 [ %indvars.iv.next1473, %._crit_edge.us1395 ], [ %i.rb, %.preheader1252.lr.ph.split.us ] ; 2 uses
  %i.rd = phi i64 [ %i.tf, %._crit_edge.us1395 ], [ %i.rc, %.preheader1252.lr.ph.split.us ]
  %.23311385.us = phi ptr [ %i.te, %._crit_edge.us1395 ], [ %.1330.lcssa, %.preheader1252.lr.ph.split.us ] ; 2 uses
  %.141384.us = phi <8 x float> [ %.18.us, %._crit_edge.us1395 ], [ %.8.lcssa, %.preheader1252.lr.ph.split.us ]
  %.1311951383.us = phi <8 x float> [ %.171199.us, %._crit_edge.us1395 ], [ %.71189.lcssa, %.preheader1252.lr.ph.split.us ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader1252.us, %.loopexit1246.us
  %.03231377.us = phi i32 [ 0, %.preheader1252.us ], [ %i.sz, %.loopexit1246.us ] ; 3 uses
  %.151376.us = phi <8 x float> [ %.141384.us, %.preheader1252.us ], [ %.18.us, %.loopexit1246.us ] ; 4 uses
  %.1411961375.us = phi <8 x float> [ %.1311951383.us, %.preheader1252.us ], [ %.171199.us, %.loopexit1246.us ] ; 4 uses
  %i.re = mul nsw i32 %i.qz, %.03231377.us
  %.reass1382.us = add i32 %i.re, %invariant.op1381.us ; 3 uses
  %i.rf = icmp slt i32 %.reass1382.us, 0
  br i1 %i.rf, label %.loopexit1246.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.rg = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.rh = srem i32 %.reass1382.us, %i.rg
  %i.ri = sdiv i32 %.reass1382.us, %i.rg          ; 2 uses
  %.not374.us = icmp eq i32 %i.rh, 0
  %.not375.us = icmp slt i32 %i.ri, %i.ae
  %or.cond1562 = select i1 %.not374.us, i1 %.not375.us, i1 false
  br i1 %or.cond1562, label %.preheader1245.us, label %.loopexit1246.us

.preheader1245.us:                                ; preds = %bb.t
  %i.rj = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.rk = icmp sgt i32 %i.rj, 0
  br i1 %i.rk, label %.lr.ph.us1392, label %.loopexit1246.us

bb.u:                                             ; preds = %.lr.ph.us1392, %bb.w
  %indvars.iv1466 = phi i64 [ 0, %.lr.ph.us1392 ], [ %indvars.iv.next1467, %bb.w ] ; 3 uses
  %.161372.us = phi <8 x float> [ %.151376.us, %.lr.ph.us1392 ], [ %.17.us, %bb.w ] ; 3 uses
  %.1511971371.us = phi <8 x float> [ %.1411961375.us, %.lr.ph.us1392 ], [ %.161198.us, %bb.w ] ; 3 uses
  %i.rl = trunc i64 %indvars.iv1466 to i32
  %i.rm = mul i32 %i.ta, %i.rl
  %.reass.us1391 = add i32 %i.rm, %invariant.op.us1393 ; 3 uses
  %i.rn = icmp slt i32 %.reass.us1391, 0
  br i1 %i.rn, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ro = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.rp = srem i32 %.reass.us1391, %i.ro
  %i.rq = sdiv i32 %.reass.us1391, %i.ro          ; 2 uses
  %.not376.us = icmp eq i32 %i.rp, 0
  %.not377.us = icmp slt i32 %i.rq, %i.ad
  %or.cond1563 = select i1 %.not376.us, i1 %.not377.us, i1 false
  br i1 %or.cond1563, label %_ZN4ncnn3MatD2Ev.exit387.us, label %bb.w

_ZN4ncnn3MatD2Ev.exit387.us:                      ; preds = %bb.v
  %i.rr = trunc i64 %indvars.iv1466 to i32
  %i.rs = add i32 %i.tc, %i.rr
  %i.rt = shl nsw i32 %i.rs, 4
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %.23311385.us, i64 %i.ru ; 2 uses
  %i.rw = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !719
  %i.rx = load ptr, ptr %4, align 8, !tbaa !20, !noalias !719 ; 2 uses
  %i.ry = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !719 ; 2 uses
  %i.rz = mul i64 %i.ry, %indvars.iv1472
  %i.sa = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !719 ; 3 uses
  %i.sb = mul i64 %i.rz, %i.sa
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.sb
  %i.sd = sext i32 %i.rw to i64
  %i.se = mul nsw i64 %i.sd, %i.td
  %i.sf = mul i64 %i.se, %i.sa                    ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sf
  %i.sh = mul i64 %i.ry, %i.rd
  %i.si = mul i64 %i.sh, %i.sa
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.si
  %i.sk = sext i32 %i.rq to i64                   ; 2 uses
  %i.sl = getelementptr inbounds [4 x i8], ptr %i.sg, i64 %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sf
  %i.sn = getelementptr inbounds [4 x i8], ptr %i.sm, i64 %i.sk
  %i.so = load float, ptr %i.sl, align 1, !tbaa !82
  %i.sp = insertelement <8 x float> poison, float %i.so, i64 0
  %i.sq = shufflevector <8 x float> %i.sp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.sr = load float, ptr %i.sn, align 1, !tbaa !82
  %i.ss = insertelement <8 x float> poison, float %i.sr, i64 0
  %i.st = shufflevector <8 x float> %i.ss, <8 x float> poison, <8 x i32> zeroinitializer
  %i.su = load <8 x float>, ptr %i.rv, align 32, !tbaa !82
  %i.sv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.sq, <8 x float> nofpclass(nan inf) %i.su, <8 x float> nofpclass(nan inf) %.161372.us)
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.sx = load <8 x float>, ptr %i.sw, align 32, !tbaa !82
  %i.sy = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.st, <8 x float> nofpclass(nan inf) %i.sx, <8 x float> nofpclass(nan inf) %.1511971371.us)
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit387.us, %bb.v, %bb.u
  %.161198.us = phi nsz <8 x float> [ %.1511971371.us, %bb.u ], [ %i.sy, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.1511971371.us, %bb.v ] ; 2 uses
  %.17.us = phi nsz <8 x float> [ %.161372.us, %bb.u ], [ %i.sv, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.161372.us, %bb.v ] ; 2 uses
  %indvars.iv.next1467 = add nuw nsw i64 %indvars.iv1466, 1 ; 2 uses
  %exitcond1470.not = icmp eq i64 %indvars.iv.next1467, %wide.trip.count1469
  br i1 %exitcond1470.not, label %.loopexit1246.us, label %bb.u, !llvm.loop !703

.loopexit1246.us:                                 ; preds = %bb.w, %.preheader1245.us, %bb.t, %bb.s
  %.171199.us = phi nsz <8 x float> [ %.1411961375.us, %bb.s ], [ %.1411961375.us, %bb.t ], [ %.1411961375.us, %.preheader1245.us ], [ %.161198.us, %bb.w ] ; 3 uses
  %.18.us = phi nsz <8 x float> [ %.151376.us, %bb.s ], [ %.151376.us, %bb.t ], [ %.151376.us, %.preheader1245.us ], [ %.17.us, %bb.w ] ; 3 uses
  %i.sz = add nuw nsw i32 %.03231377.us, 1        ; 2 uses
  %exitcond1471.not = icmp eq i32 %i.sz, %i.ql
  br i1 %exitcond1471.not, label %._crit_edge.us1395, label %bb.s, !llvm.loop !704

.lr.ph.us1392:                                    ; preds = %.preheader1245.us
  %i.ta = load i32, ptr %13, align 4, !tbaa !61
  %i.tb = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1393 = sub i32 %.neg1236, %i.tb
  %i.tc = mul nuw nsw i32 %i.rj, %.03231377.us
  %i.td = sext i32 %i.ri to i64
  %wide.trip.count1469 = zext nneg i32 %i.rj to i64
  br label %bb.u

._crit_edge.us1395:                               ; preds = %.loopexit1246.us
  %i.te = getelementptr inbounds [4 x i8], ptr %.23311385.us, i64 %i.qp ; 2 uses
  %indvars.iv.next1473 = add nuw nsw i64 %indvars.iv1472, 2 ; 3 uses
  %i.tf = or disjoint i64 %indvars.iv.next1473, 1 ; 2 uses
  %i.tg = trunc nuw i64 %i.tf to i32
  %i.th = icmp sgt i32 %i.ac, %i.tg
  br i1 %i.th, label %.preheader1252.us, label %.preheader1255.loopexit, !llvm.loop !705

.preheader1255.loopexit:                          ; preds = %._crit_edge.us1395
  %i.ti = trunc nuw i64 %indvars.iv.next1473 to i32
  br label %.preheader1255

.preheader1255:                                   ; preds = %.preheader1252.preheader, %.preheader1255.loopexit, %.preheader1256
  %.131195.lcssa = phi <8 x float> [ %.71189.lcssa, %.preheader1256 ], [ %.171199.us, %.preheader1255.loopexit ], [ %.71189.lcssa, %.preheader1252.preheader ]
  %.14.lcssa = phi <8 x float> [ %.8.lcssa, %.preheader1256 ], [ %.18.us, %.preheader1255.loopexit ], [ %.8.lcssa, %.preheader1252.preheader ] ; 3 uses
  %.2331.lcssa = phi ptr [ %.1330.lcssa, %.preheader1256 ], [ %i.te, %.preheader1255.loopexit ], [ %scevgep1465, %.preheader1252.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1256 ], [ %i.ti, %.preheader1255.loopexit ], [ %i.qy, %.preheader1252.preheader ] ; 2 uses
  %i.tj = icmp slt i32 %.2.lcssa, %i.ac
  br i1 %i.tj, label %.preheader1251.lr.ph, label %._crit_edge1411

.preheader1251.lr.ph:                             ; preds = %.preheader1255
  %i.tk = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.tl = icmp sgt i32 %i.tk, 0
  %.neg1232 = add nuw nsw i32 %.03331420, 1
  %i.tm = load i32, ptr %16, align 4, !tbaa !61
  %i.tn = shl nsw i32 %i.tm, 3
  %i.to = sext i32 %i.tn to i64
  br i1 %i.tl, label %.preheader1251.lr.ph.split.us, label %._crit_edge1411

.preheader1251.lr.ph.split.us:                    ; preds = %.preheader1251.lr.ph
  %i.tp = load i32, ptr %9, align 4, !tbaa !61
  %i.tq = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1406.us = sub i32 %.neg1242, %i.tq
  %i.tr = zext i32 %.2.lcssa to i64
  br label %.preheader1251.us

.preheader1251.us:                                ; preds = %._crit_edge.us1417, %.preheader1251.lr.ph.split.us
  %indvars.iv1481 = phi i64 [ %indvars.iv.next1482, %._crit_edge.us1417 ], [ %i.tr, %.preheader1251.lr.ph.split.us ] ; 2 uses
  %.33321409.us = phi ptr [ %i.vh, %._crit_edge.us1417 ], [ %.2331.lcssa, %.preheader1251.lr.ph.split.us ] ; 2 uses
  %.191408.us = phi <8 x float> [ %.23.us, %._crit_edge.us1417 ], [ %.14.lcssa, %.preheader1251.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader1251.us, %.loopexit.us
  %.03211403.us = phi i32 [ 0, %.preheader1251.us ], [ %i.vc, %.loopexit.us ] ; 3 uses
  %.201402.us = phi <8 x float> [ %.191408.us, %.preheader1251.us ], [ %.23.us, %.loopexit.us ] ; 4 uses
  %i.ts = mul nsw i32 %i.tp, %.03211403.us
  %.reass1407.us = add i32 %i.ts, %invariant.op1406.us ; 3 uses
  %i.tt = icmp slt i32 %.reass1407.us, 0
  br i1 %i.tt, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.tu = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.tv = srem i32 %.reass1407.us, %i.tu
  %i.tw = sdiv i32 %.reass1407.us, %i.tu          ; 2 uses
  %.not370.us = icmp eq i32 %i.tv, 0
  %.not371.us = icmp slt i32 %i.tw, %i.ae
  %or.cond1564 = select i1 %.not370.us, i1 %.not371.us, i1 false
  br i1 %or.cond1564, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.y
  %i.tx = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.ty = icmp sgt i32 %i.tx, 0
  br i1 %i.ty, label %.lr.ph.us1414, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us1414, %bb.ac
  %indvars.iv1475 = phi i64 [ 0, %.lr.ph.us1414 ], [ %indvars.iv.next1476, %bb.ac ] ; 3 uses
  %.211400.us = phi <8 x float> [ %.201402.us, %.lr.ph.us1414 ], [ %.22.us, %bb.ac ] ; 3 uses
  %i.tz = trunc i64 %indvars.iv1475 to i32
  %i.ua = mul i32 %i.vd, %i.tz
  %.reass.us1413 = add i32 %i.ua, %invariant.op.us1415 ; 3 uses
  %i.ub = icmp slt i32 %.reass.us1413, 0
  br i1 %i.ub, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.uc = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.ud = srem i32 %.reass.us1413, %i.uc
  %i.ue = sdiv i32 %.reass.us1413, %i.uc          ; 2 uses
  %.not372.us = icmp eq i32 %i.ud, 0
end_hunk_14
begin_hunk_15_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.iu = bitcast <8 x i32> %i.it to <8 x float>
  %i.iv = shufflevector <8 x float> %i.iu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !89
  %i.iy = zext i16 %i.ix to i32
  %i.iz = shl nuw i32 %i.iy, 16
  %i.ja = insertelement <8 x i32> poison, i32 %i.iz, i64 0
  %i.jb = bitcast <8 x i32> %i.ja to <8 x float>
  %i.jc = shufflevector <8 x float> %i.jb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hh, i64 6
  br label %.sink.split

bb.j:                                             ; preds = %bb.i
  %i.je = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !758
  %i.jf = load ptr, ptr %4, align 8, !tbaa !20, !noalias !758
  %i.jg = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !758
  %i.jh = mul i64 %i.jg, %i.cm
  %i.ji = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !758 ; 2 uses
  %i.jj = mul i64 %i.jh, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jj
  %i.jl = sext i32 %i.je to i64
  %i.jm = mul nsw i64 %i.jl, %i.nn
  %i.jn = mul i64 %i.jm, %i.ji
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.jn
  %i.jp = shl nsw i32 %i.cx, 3
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.jq ; 5 uses
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !89
  %i.jt = zext i16 %i.js to i32
  %i.ju = shl nuw i32 %i.jt, 16
  %i.jv = insertelement <8 x i32> poison, i32 %i.ju, i64 0
  %i.jw = bitcast <8 x i32> %i.jv to <8 x float>
  %i.jx = shufflevector <8 x float> %i.jw, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.jz = load i16, ptr %i.jy, align 2, !tbaa !89
  %i.ka = zext i16 %i.jz to i32
  %i.kb = shl nuw i32 %i.ka, 16
  %i.kc = insertelement <8 x i32> poison, i32 %i.kb, i64 0
  %i.kd = bitcast <8 x i32> %i.kc to <8 x float>
  %i.ke = shufflevector <8 x float> %i.kd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !89
  %i.kh = zext i16 %i.kg to i32
  %i.ki = shl nuw i32 %i.kh, 16
  %i.kj = insertelement <8 x i32> poison, i32 %i.ki, i64 0
  %i.kk = bitcast <8 x i32> %i.kj to <8 x float>
  %i.kl = shufflevector <8 x float> %i.kk, <8 x float> poison, <8 x i32> zeroinitializer
  %i.km = getelementptr inbounds nuw i8, ptr %i.jr, i64 6
  %i.kn = load <4 x i16>, ptr %i.km, align 2, !tbaa !89
  %i.ko = zext <4 x i16> %i.kn to <4 x i32>
  %i.kp = shl nuw <4 x i32> %i.ko, splat (i32 16) ; 4 uses
  %i.kq = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kr = shufflevector <4 x float> %i.kq, <4 x float> poison, <8 x i32> zeroinitializer
  %i.ks = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kt = shufflevector <4 x float> %i.ks, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ku = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kv = shufflevector <4 x float> %i.ku, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.kw = bitcast <4 x i32> %i.kp to <4 x float>
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jr, i64 14
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit400.us, %_ZN4ncnn3MatD2Ev.exit402.us, %bb.j
  %.sink1705.in = phi ptr [ %i.ky, %bb.j ], [ %i.jd, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.ey, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1691 = phi <8 x float> [ %i.jx, %bb.j ], [ %i.hn, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fe, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1678 = phi <8 x float> [ %i.ke, %bb.j ], [ %i.hu, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fk, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1665 = phi <8 x float> [ %i.kl, %bb.j ], [ %i.ib, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fq, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1652 = phi <8 x float> [ %i.kr, %bb.j ], [ %i.ii, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.fw, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1638 = phi <8 x float> [ %i.kt, %bb.j ], [ %i.io, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.gc, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1624 = phi <8 x float> [ %i.kv, %bb.j ], [ %i.iv, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.gi, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1610 = phi <8 x float> [ %i.kx, %bb.j ], [ %i.jc, %_ZN4ncnn3MatD2Ev.exit402.us ], [ %i.go, %_ZN4ncnn3MatD2Ev.exit400.us ]
  %.sink1705 = load i16, ptr %.sink1705.in, align 2, !tbaa !89
  %i.kz = zext i16 %.sink1705 to i32
  %i.la = shl nuw i32 %i.kz, 16
  %i.lb = insertelement <8 x i32> poison, i32 %i.la, i64 0
  %i.lc = bitcast <8 x i32> %i.lb to <8 x float>
  %i.ld = shufflevector <8 x float> %i.lc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.le = load <8 x i16>, ptr %i.dc, align 16, !tbaa !82 ; 2 uses
  %i.lf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.le, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.le, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lh = shufflevector <8 x i16> %i.lf, <8 x i16> %i.lg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.li = bitcast <16 x i16> %i.lh to <8 x float>
  %i.lj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1691, <8 x float> nofpclass(nan inf) %i.li, <8 x float> nofpclass(nan inf) %.312531335.us)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.ll = load <8 x i16>, ptr %i.lk, align 16, !tbaa !82 ; 2 uses
  %i.lm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ll, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ln = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ll, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lo = shufflevector <8 x i16> %i.lm, <8 x i16> %i.ln, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lp = bitcast <16 x i16> %i.lo to <8 x float>
  %i.lq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1678, <8 x float> nofpclass(nan inf) %i.lp, <8 x float> nofpclass(nan inf) %.212571334.us)
  %i.lr = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.ls = load <8 x i16>, ptr %i.lr, align 16, !tbaa !82 ; 2 uses
  %i.lt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ls, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.lu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ls, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.lv = shufflevector <8 x i16> %i.lt, <8 x i16> %i.lu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lw = bitcast <16 x i16> %i.lv to <8 x float>
  %i.lx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1665, <8 x float> nofpclass(nan inf) %i.lw, <8 x float> nofpclass(nan inf) %.212751333.us)
  %i.ly = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.lz = load <8 x i16>, ptr %i.ly, align 16, !tbaa !82 ; 2 uses
  %i.ma = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.lz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.lz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mc = shufflevector <8 x i16> %i.ma, <8 x i16> %i.mb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.md = bitcast <16 x i16> %i.mc to <8 x float>
  %i.me = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1652, <8 x float> nofpclass(nan inf) %i.md, <8 x float> nofpclass(nan inf) %.212881332.us)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.mg = load <8 x i16>, ptr %i.mf, align 16, !tbaa !82 ; 2 uses
  %i.mh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mi = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mj = shufflevector <8 x i16> %i.mh, <8 x i16> %i.mi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mk = bitcast <16 x i16> %i.mj to <8 x float>
  %i.ml = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1638, <8 x float> nofpclass(nan inf) %i.mk, <8 x float> nofpclass(nan inf) %i.lj)
  %i.mm = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.mn = load <8 x i16>, ptr %i.mm, align 16, !tbaa !82 ; 2 uses
  %i.mo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mp = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mn, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mq = shufflevector <8 x i16> %i.mo, <8 x i16> %i.mp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.mr = bitcast <16 x i16> %i.mq to <8 x float>
  %i.ms = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1624, <8 x float> nofpclass(nan inf) %i.mr, <8 x float> nofpclass(nan inf) %i.lq)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.mu = load <8 x i16>, ptr %i.mt, align 16, !tbaa !82 ; 2 uses
  %i.mv = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.mu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.mw = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.mu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.mx = shufflevector <8 x i16> %i.mv, <8 x i16> %i.mw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.my = bitcast <16 x i16> %i.mx to <8 x float>
  %i.mz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink1610, <8 x float> nofpclass(nan inf) %i.my, <8 x float> nofpclass(nan inf) %i.lx)
  %i.na = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.nb = load <8 x i16>, ptr %i.na, align 16, !tbaa !82 ; 2 uses
  %i.nc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.nb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.nd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.nb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ne = shufflevector <8 x i16> %i.nc, <8 x i16> %i.nd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nf = bitcast <16 x i16> %i.ne to <8 x float>
  %i.ng = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ld, <8 x float> nofpclass(nan inf) %i.nf, <8 x float> nofpclass(nan inf) %i.me)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.g
  %.51291.us = phi nsz <8 x float> [ %.212881332.us, %bb.g ], [ %.212881332.us, %bb.i ], [ %.212881332.us, %bb.h ], [ %i.ng, %.sink.split ] ; 2 uses
  %.51278.us = phi nsz <8 x float> [ %.212751333.us, %bb.g ], [ %.212751333.us, %bb.i ], [ %.212751333.us, %bb.h ], [ %i.mz, %.sink.split ] ; 2 uses
  %.51260.us = phi nsz <8 x float> [ %.212571334.us, %bb.g ], [ %.212571334.us, %bb.i ], [ %.212571334.us, %bb.h ], [ %i.ms, %.sink.split ] ; 2 uses
  %.6.us = phi nsz <8 x float> [ %.312531335.us, %bb.g ], [ %.312531335.us, %bb.i ], [ %.312531335.us, %bb.h ], [ %i.ml, %.sink.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit1323.us, label %bb.g, !llvm.loop !733

.loopexit1323.us:                                 ; preds = %bb.k, %.preheader1322.us, %bb.f, %bb.e
  %.61292.us = phi nsz <8 x float> [ %.112871340.us, %bb.e ], [ %.112871340.us, %bb.f ], [ %.112871340.us, %.preheader1322.us ], [ %.51291.us, %bb.k ] ; 3 uses
  %.61279.us = phi nsz <8 x float> [ %.112741341.us, %bb.e ], [ %.112741341.us, %bb.f ], [ %.112741341.us, %.preheader1322.us ], [ %.51278.us, %bb.k ] ; 3 uses
  %.61261.us = phi nsz <8 x float> [ %.112561342.us, %bb.e ], [ %.112561342.us, %bb.f ], [ %.112561342.us, %.preheader1322.us ], [ %.51260.us, %bb.k ] ; 3 uses
  %.7.us = phi nsz <8 x float> [ %.212521343.us, %bb.e ], [ %.212521343.us, %bb.f ], [ %.212521343.us, %.preheader1322.us ], [ %.6.us, %bb.k ] ; 3 uses
  %i.nh = add nuw nsw i32 %.03271344.us, 1        ; 2 uses
  %exitcond1519.not = icmp eq i32 %i.nh, %i.bu
  br i1 %exitcond1519.not, label %._crit_edge.us, label %bb.e, !llvm.loop !734

.preheader1322.us:                                ; preds = %bb.f
  %i.ni = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.nj = icmp sgt i32 %i.ni, 0
  br i1 %i.nj, label %.lr.ph.us, label %.loopexit1323.us

.lr.ph.us:                                        ; preds = %.preheader1322.us
  %i.nk = load i32, ptr %13, align 4, !tbaa !61
  %i.nl = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us = sub i32 %.neg1317, %i.nl
  %i.nm = mul nuw nsw i32 %i.ni, %.03271344.us
  %i.nn = sext i32 %i.cr to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ni to i64
  br label %bb.g

._crit_edge.us:                                   ; preds = %.loopexit1323.us
  %i.no = getelementptr inbounds [2 x i8], ptr %.03291356.us, i64 %i.by ; 2 uses
  %indvars.iv.next1521 = add nuw nsw i64 %indvars.iv1520, 8 ; 2 uses
  %i.np = icmp slt i64 %indvars.iv.next1521, %invariant.op
  br i1 %i.np, label %.preheader1327.us, label %.preheader1330, !llvm.loop !735

.preheader1330:                                   ; preds = %._crit_edge.us, %.preheader1327.preheader, %_ZN4ncnn3MatD2Ev.exit404
  %.01286.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1327.preheader ], [ %.61292.us, %._crit_edge.us ] ; 3 uses
  %.01273.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1327.preheader ], [ %.61279.us, %._crit_edge.us ] ; 3 uses
  %.01255.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit404 ], [ zeroinitializer, %.preheader1327.preheader ], [ %.61261.us, %._crit_edge.us ] ; 3 uses
  %.11251.lcssa = phi <8 x float> [ %.01250, %_ZN4ncnn3MatD2Ev.exit404 ], [ %.01250, %.preheader1327.preheader ], [ %.7.us, %._crit_edge.us ] ; 3 uses
  %.0329.lcssa = phi ptr [ %i.bt, %_ZN4ncnn3MatD2Ev.exit404 ], [ %scevgep, %.preheader1327.preheader ], [ %i.no, %._crit_edge.us ] ; 3 uses
  %.0328.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit404 ], [ %i.be, %.preheader1327.preheader ], [ %i.bh, %._crit_edge.us ] ; 5 uses
  %i.nq = or disjoint i32 %.0328.lcssa, 3         ; 2 uses
  %i.nr = icmp slt i32 %i.nq, %i.ac
  br i1 %i.nr, label %.preheader1326.lr.ph, label %.preheader1329

.preheader1326.lr.ph:                             ; preds = %.preheader1330
  %i.ns = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.nt = icmp sgt i32 %i.ns, 0
  %.neg1313 = add nuw nsw i32 %.03331493, 1
  %i.nu = load i32, ptr %16, align 4, !tbaa !61
  %i.nv = shl i32 %i.nu, 5
  %i.nw = sext i32 %i.nv to i64                   ; 2 uses
  br i1 %i.nt, label %.preheader1326.lr.ph.split.us, label %.preheader1326.preheader

.preheader1326.preheader:                         ; preds = %.preheader1326.lr.ph
  %i.nx = sub i32 %i.bi, %.0328.lcssa             ; 2 uses
  %i.ny = lshr i32 %i.nx, 1
  %i.nz = and i32 %i.ny, 2147483646
  %narrow1593 = add nuw i32 %i.nz, 2
  %i.oa = zext i32 %narrow1593 to i64
  %i.ob = mul nsw i64 %i.oa, %i.nw
  %scevgep1523 = getelementptr i8, ptr %.0329.lcssa, i64 %i.ob
  %i.oc = add i32 %.0328.lcssa, 4
  %i.od = and i32 %i.nx, -4
  %i.oe = add i32 %i.oc, %i.od
  br label %.preheader1329

.preheader1326.lr.ph.split.us:                    ; preds = %.preheader1326.lr.ph
  %i.of = load i32, ptr %9, align 4, !tbaa !61
  %i.og = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1413.us = sub i32 %.neg1315, %i.og
  %i.oh = zext i32 %.0328.lcssa to i64
  %i.oi = zext nneg i32 %i.nq to i64
  br label %.preheader1326.us

.preheader1326.us:                                ; preds = %._crit_edge.us1436, %.preheader1326.lr.ph.split.us
  %indvars.iv1535 = phi i64 [ %indvars.iv.next1536, %._crit_edge.us1436 ], [ %i.oh, %.preheader1326.lr.ph.split.us ] ; 5 uses
  %i.oj = phi i64 [ %i.vh, %._crit_edge.us1436 ], [ %i.oi, %.preheader1326.lr.ph.split.us ]
  %.13301419.us = phi ptr [ %i.vg, %._crit_edge.us1436 ], [ %.0329.lcssa, %.preheader1326.lr.ph.split.us ] ; 3 uses
  %.81418.us = phi <8 x float> [ %.13.us, %._crit_edge.us1436 ], [ %.11251.lcssa, %.preheader1326.lr.ph.split.us ]
  %.712621417.us = phi <8 x float> [ %.121267.us, %._crit_edge.us1436 ], [ %.01255.lcssa, %.preheader1326.lr.ph.split.us ]
  %.712801416.us = phi <8 x float> [ %.121285.us, %._crit_edge.us1436 ], [ %.01273.lcssa, %.preheader1326.lr.ph.split.us ]
  %.712931415.us = phi <8 x float> [ %.121298.us, %._crit_edge.us1436 ], [ %.01286.lcssa, %.preheader1326.lr.ph.split.us ]
  %i.ok = or disjoint i64 %indvars.iv1535, 1
  %i.ol = or disjoint i64 %indvars.iv1535, 2
  %i.om = lshr exact i64 %indvars.iv1535, 2
  br label %bb.l

bb.l:                                             ; preds = %.preheader1326.us, %.loopexit1321.us
  %.03251408.us = phi i32 [ 0, %.preheader1326.us ], [ %i.vf, %.loopexit1321.us ] ; 3 uses
  %.91407.us = phi <8 x float> [ %.81418.us, %.preheader1326.us ], [ %.13.us, %.loopexit1321.us ] ; 6 uses
  %.812631406.us = phi <8 x float> [ %.712621417.us, %.preheader1326.us ], [ %.121267.us, %.loopexit1321.us ] ; 6 uses
  %.812811405.us = phi <8 x float> [ %.712801416.us, %.preheader1326.us ], [ %.121285.us, %.loopexit1321.us ] ; 6 uses
  %.812941404.us = phi <8 x float> [ %.712931415.us, %.preheader1326.us ], [ %.121298.us, %.loopexit1321.us ] ; 6 uses
  %i.on = mul nsw i32 %i.of, %.03251408.us
  %.reass1414.us = add i32 %i.on, %invariant.op1413.us ; 3 uses
  %i.oo = icmp slt i32 %.reass1414.us, 0
  br i1 %i.oo, label %.loopexit1321.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.op = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.oq = srem i32 %.reass1414.us, %i.op
  %i.or = sdiv i32 %.reass1414.us, %i.op          ; 2 uses
  %.not378.us = icmp eq i32 %i.oq, 0
  %.not379.us = icmp slt i32 %i.or, %i.ae
  %or.cond1715 = select i1 %.not378.us, i1 %.not379.us, i1 false
  br i1 %or.cond1715, label %.preheader1320.us, label %.loopexit1321.us

.preheader1320.us:                                ; preds = %bb.m
  %i.os = load i32, ptr %12, align 4, !tbaa !61   ; 4 uses
  %i.ot = icmp sgt i32 %i.os, 0
  br i1 %i.ot, label %.lr.ph.us1427, label %.loopexit1321.us

.lr.ph.us1427:                                    ; preds = %.preheader1320.us
  %i.ou = load i32, ptr %13, align 4, !tbaa !61   ; 2 uses
  %i.ov = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1428 = sub i32 %.neg1313, %i.ov ; 2 uses
  %i.ow = mul nuw nsw i32 %i.os, %.03251408.us    ; 2 uses
  %i.ox = sext i32 %i.or to i64                   ; 2 uses
  switch i32 %.fr, label %.loopexit1321.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us1383.us.preheader
  ]

.lr.ph.split.us1383.us.preheader:                 ; preds = %.lr.ph.us1427
  %wide.trip.count1527 = zext nneg i32 %i.os to i64
  br label %.lr.ph.split.us1383.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us1427
  %wide.trip.count1532 = zext nneg i32 %i.os to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us1383.us:                           ; preds = %.lr.ph.split.us1383.us.preheader, %bb.o
  %indvars.iv1524 = phi i64 [ 0, %.lr.ph.split.us1383.us.preheader ], [ %indvars.iv.next1525, %bb.o ] ; 3 uses
  %.101372.us1385.us = phi <8 x float> [ %.91407.us, %.lr.ph.split.us1383.us.preheader ], [ %.12.us1395.us, %bb.o ] ; 3 uses
  %.912641371.us1386.us = phi <8 x float> [ %.812631406.us, %.lr.ph.split.us1383.us.preheader ], [ %.111266.us1394.us, %bb.o ] ; 3 uses
  %.912821370.us1387.us = phi <8 x float> [ %.812811405.us, %.lr.ph.split.us1383.us.preheader ], [ %.111284.us1393.us, %bb.o ] ; 3 uses
  %.912951369.us1388.us = phi <8 x float> [ %.812941404.us, %.lr.ph.split.us1383.us.preheader ], [ %.111297.us1392.us, %bb.o ] ; 3 uses
  %i.oy = trunc i64 %indvars.iv1524 to i32
  %i.oz = mul i32 %i.ou, %i.oy
  %.reass.us1389.us = add i32 %i.oz, %invariant.op.us1428 ; 3 uses
  %i.pa = icmp slt i32 %.reass.us1389.us, 0
  br i1 %i.pa, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us1383.us
  %i.pb = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.pc = srem i32 %.reass.us1389.us, %i.pb
  %i.pd = sdiv i32 %.reass.us1389.us, %i.pb       ; 2 uses
  %.not380.us1390.us = icmp eq i32 %i.pc, 0
  %.not381.us1391.us = icmp slt i32 %i.pd, %i.ad
  %or.cond1716 = select i1 %.not380.us1390.us, i1 %.not381.us1391.us, i1 false
  br i1 %or.cond1716, label %_ZN4ncnn3MatD2Ev.exit391.us.us, label %bb.o

_ZN4ncnn3MatD2Ev.exit391.us.us:                   ; preds = %bb.n
  %i.pe = trunc i64 %indvars.iv1524 to i32
  %i.pf = add i32 %i.ow, %i.pe
  %i.pg = shl nsw i32 %i.pf, 5
  %i.ph = zext nneg i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %.13301419.us, i64 %i.ph ; 4 uses
  %i.pj = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !759
  %i.pk = load ptr, ptr %4, align 8, !tbaa !20, !noalias !759 ; 4 uses
  %i.pl = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !759 ; 4 uses
  %i.pm = mul i64 %i.pl, %indvars.iv1535
  %i.pn = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !759 ; 5 uses
  %i.po = mul i64 %i.pm, %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.po
  %i.pq = sext i32 %i.pj to i64
  %i.pr = mul nsw i64 %i.pq, %i.ox
  %i.ps = mul i64 %i.pr, %i.pn                    ; 4 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.ps
  %i.pu = sext i32 %i.pd to i64                   ; 4 uses
  %i.pv = getelementptr inbounds [2 x i8], ptr %i.pt, i64 %i.pu
  %i.pw = mul i64 %i.pl, %i.ok
  %i.px = mul i64 %i.pw, %i.pn
  %i.py = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.ps
  %i.qa = getelementptr inbounds [2 x i8], ptr %i.pz, i64 %i.pu
  %i.qb = mul i64 %i.pl, %i.ol
  %i.qc = mul i64 %i.qb, %i.pn
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.qc
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.ps
  %i.qf = getelementptr inbounds [2 x i8], ptr %i.qe, i64 %i.pu
  %i.qg = mul i64 %i.pl, %i.oj
  %i.qh = mul i64 %i.qg, %i.pn
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.ps
  %i.qk = getelementptr inbounds [2 x i8], ptr %i.qj, i64 %i.pu
  %i.ql = load i16, ptr %i.pv, align 2, !tbaa !89
  %i.qm = zext i16 %i.ql to i32
  %i.qn = shl nuw i32 %i.qm, 16
  %i.qo = insertelement <8 x i32> poison, i32 %i.qn, i64 0
  %i.qp = bitcast <8 x i32> %i.qo to <8 x float>
  %i.qq = shufflevector <8 x float> %i.qp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qr = load i16, ptr %i.qa, align 2, !tbaa !89
  %i.qs = zext i16 %i.qr to i32
  %i.qt = shl nuw i32 %i.qs, 16
  %i.qu = insertelement <8 x i32> poison, i32 %i.qt, i64 0
  %i.qv = bitcast <8 x i32> %i.qu to <8 x float>
  %i.qw = shufflevector <8 x float> %i.qv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.qx = load i16, ptr %i.qf, align 2, !tbaa !89
  %i.qy = zext i16 %i.qx to i32
  %i.qz = shl nuw i32 %i.qy, 16
  %i.ra = insertelement <8 x i32> poison, i32 %i.qz, i64 0
  %i.rb = bitcast <8 x i32> %i.ra to <8 x float>
  %i.rc = shufflevector <8 x float> %i.rb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rd = load i16, ptr %i.qk, align 2, !tbaa !89
  %i.re = zext i16 %i.rd to i32
  %i.rf = shl nuw i32 %i.re, 16
  %i.rg = insertelement <8 x i32> poison, i32 %i.rf, i64 0
  %i.rh = bitcast <8 x i32> %i.rg to <8 x float>
  %i.ri = shufflevector <8 x float> %i.rh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.rj = load <8 x i16>, ptr %i.pi, align 16, !tbaa !82 ; 2 uses
  %i.rk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rl = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rm = shufflevector <8 x i16> %i.rk, <8 x i16> %i.rl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rn = bitcast <16 x i16> %i.rm to <8 x float>
  %i.ro = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qq, <8 x float> nofpclass(nan inf) %i.rn, <8 x float> nofpclass(nan inf) %.101372.us1385.us)
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.rq = load <8 x i16>, ptr %i.rp, align 16, !tbaa !82 ; 2 uses
  %i.rr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rs = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.rt = shufflevector <8 x i16> %i.rr, <8 x i16> %i.rs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ru = bitcast <16 x i16> %i.rt to <8 x float>
  %i.rv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.qw, <8 x float> nofpclass(nan inf) %i.ru, <8 x float> nofpclass(nan inf) %.912641371.us1386.us)
  %i.rw = getelementptr inbounds nuw i8, ptr %i.pi, i64 32
  %i.rx = load <8 x i16>, ptr %i.rw, align 16, !tbaa !82 ; 2 uses
  %i.ry = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.rx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.rz = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.rx, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sa = shufflevector <8 x i16> %i.ry, <8 x i16> %i.rz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.sb = bitcast <16 x i16> %i.sa to <8 x float>
  %i.sc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.rc, <8 x float> nofpclass(nan inf) %i.sb, <8 x float> nofpclass(nan inf) %.912821370.us1387.us)
  %i.sd = getelementptr inbounds nuw i8, ptr %i.pi, i64 48
  %i.se = load <8 x i16>, ptr %i.sd, align 16, !tbaa !82 ; 2 uses
  %i.sf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.se, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.sg = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.se, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.sh = shufflevector <8 x i16> %i.sf, <8 x i16> %i.sg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.si = bitcast <16 x i16> %i.sh to <8 x float>
  %i.sj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ri, <8 x float> nofpclass(nan inf) %i.si, <8 x float> nofpclass(nan inf) %.912951369.us1388.us)
  br label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit391.us.us, %bb.n, %.lr.ph.split.us1383.us
  %.111297.us1392.us = phi nsz <8 x float> [ %.912951369.us1388.us, %.lr.ph.split.us1383.us ], [ %.912951369.us1388.us, %bb.n ], [ %i.sj, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111284.us1393.us = phi nsz <8 x float> [ %.912821370.us1387.us, %.lr.ph.split.us1383.us ], [ %.912821370.us1387.us, %bb.n ], [ %i.sc, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.111266.us1394.us = phi nsz <8 x float> [ %.912641371.us1386.us, %.lr.ph.split.us1383.us ], [ %.912641371.us1386.us, %bb.n ], [ %i.rv, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %.12.us1395.us = phi nsz <8 x float> [ %.101372.us1385.us, %.lr.ph.split.us1383.us ], [ %.101372.us1385.us, %bb.n ], [ %i.ro, %_ZN4ncnn3MatD2Ev.exit391.us.us ] ; 2 uses
  %indvars.iv.next1525 = add nuw nsw i64 %indvars.iv1524, 1 ; 2 uses
  %exitcond1528.not = icmp eq i64 %indvars.iv.next1525, %wide.trip.count1527
  br i1 %exitcond1528.not, label %.loopexit1321.us, label %.lr.ph.split.us1383.us, !llvm.loop !738

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.r
  %indvars.iv1529 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next1530, %bb.r ] ; 3 uses
  %.101372.us.us = phi <8 x float> [ %.91407.us, %.lr.ph.split.us.us.preheader ], [ %.12.us.us, %bb.r ] ; 3 uses
  %.912641371.us.us = phi <8 x float> [ %.812631406.us, %.lr.ph.split.us.us.preheader ], [ %.111266.us.us, %bb.r ] ; 3 uses
  %.912821370.us.us = phi <8 x float> [ %.812811405.us, %.lr.ph.split.us.us.preheader ], [ %.111284.us.us, %bb.r ] ; 3 uses
  %.912951369.us.us = phi <8 x float> [ %.812941404.us, %.lr.ph.split.us.us.preheader ], [ %.111297.us.us, %bb.r ] ; 3 uses
  %i.sk = trunc i64 %indvars.iv1529 to i32
  %i.sl = mul i32 %i.ou, %i.sk
  %.reass.us1377.us = add i32 %i.sl, %invariant.op.us1428 ; 3 uses
  %i.sm = icmp slt i32 %.reass.us1377.us, 0
  br i1 %i.sm, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us.us
  %i.sn = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.so = srem i32 %.reass.us1377.us, %i.sn
  %i.sp = sdiv i32 %.reass.us1377.us, %i.sn       ; 2 uses
  %.not380.us.us = icmp eq i32 %i.so, 0
  %.not381.us.us = icmp slt i32 %i.sp, %i.ad
  %or.cond1717 = select i1 %.not380.us.us, i1 %.not381.us.us, i1 false
  br i1 %or.cond1717, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.sq = trunc i64 %indvars.iv1529 to i32
  %i.sr = add i32 %i.ow, %i.sq
  %i.ss = shl nsw i32 %i.sr, 5
  %i.st = zext nneg i32 %i.ss to i64
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %.13301419.us, i64 %i.st ; 4 uses
  %i.sv = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !760
  %i.sw = load ptr, ptr %4, align 8, !tbaa !20, !noalias !760
  %i.sx = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !760
  %i.sy = mul i64 %i.sx, %i.om
  %i.sz = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !760 ; 2 uses
  %i.ta = mul i64 %i.sy, %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.ta
  %i.tc = sext i32 %i.sv to i64
  %i.td = mul nsw i64 %i.tc, %i.ox
  %i.te = mul i64 %i.td, %i.sz
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.te
  %i.tg = shl nsw i32 %i.sp, 2
  %i.th = sext i32 %i.tg to i64
  %i.ti = getelementptr inbounds [2 x i8], ptr %i.tf, i64 %i.th ; 3 uses
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !89
  %i.tk = zext i16 %i.tj to i32
  %i.tl = shl nuw i32 %i.tk, 16
  %i.tm = insertelement <8 x i32> poison, i32 %i.tl, i64 0
  %i.tn = bitcast <8 x i32> %i.tm to <8 x float>
  %i.to = shufflevector <8 x float> %i.tn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !89
  %i.tr = zext i16 %i.tq to i32
  %i.ts = shl nuw i32 %i.tr, 16
  %i.tt = insertelement <8 x i32> poison, i32 %i.ts, i64 0
  %i.tu = bitcast <8 x i32> %i.tt to <8 x float>
  %i.tv = shufflevector <8 x float> %i.tu, <8 x float> poison, <8 x i32> zeroinitializer
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ti, i64 4
  %i.tx = load <2 x i16>, ptr %i.tw, align 2, !tbaa !89
  %i.ty = zext <2 x i16> %i.tx to <2 x i32>
  %i.tz = shl nuw <2 x i32> %i.ty, splat (i32 16) ; 2 uses
  %i.ua = bitcast <2 x i32> %i.tz to <2 x float>
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <8 x i32> zeroinitializer
  %i.uc = bitcast <2 x i32> %i.tz to <2 x float>
  %i.ud = shufflevector <2 x float> %i.uc, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ue = load <8 x i16>, ptr %i.su, align 16, !tbaa !82 ; 2 uses
  %i.uf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ue, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ug = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ue, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uh = shufflevector <8 x i16> %i.uf, <8 x i16> %i.ug, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ui = bitcast <16 x i16> %i.uh to <8 x float>
  %i.uj = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.to, <8 x float> nofpclass(nan inf) %i.ui, <8 x float> nofpclass(nan inf) %.101372.us.us)
  %i.uk = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %i.ul = load <8 x i16>, ptr %i.uk, align 16, !tbaa !82 ; 2 uses
  %i.um = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ul, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.un = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ul, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uo = shufflevector <8 x i16> %i.um, <8 x i16> %i.un, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.up = bitcast <16 x i16> %i.uo to <8 x float>
  %i.uq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.tv, <8 x float> nofpclass(nan inf) %i.up, <8 x float> nofpclass(nan inf) %.912641371.us.us)
  %i.ur = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.us = load <8 x i16>, ptr %i.ur, align 16, !tbaa !82 ; 2 uses
  %i.ut = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.us, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.uu = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.us, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.uv = shufflevector <8 x i16> %i.ut, <8 x i16> %i.uu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uw = bitcast <16 x i16> %i.uv to <8 x float>
  %i.ux = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ub, <8 x float> nofpclass(nan inf) %i.uw, <8 x float> nofpclass(nan inf) %.912821370.us.us)
  %i.uy = getelementptr inbounds nuw i8, ptr %i.su, i64 48
  %i.uz = load <8 x i16>, ptr %i.uy, align 16, !tbaa !82 ; 2 uses
  %i.va = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.uz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.vb = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.uz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.vc = shufflevector <8 x i16> %i.va, <8 x i16> %i.vb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vd = bitcast <16 x i16> %i.vc to <8 x float>
  %i.ve = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ud, <8 x float> nofpclass(nan inf) %i.vd, <8 x float> nofpclass(nan inf) %.912951369.us.us)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.lr.ph.split.us.us
  %.111297.us.us = phi nsz <8 x float> [ %.912951369.us.us, %.lr.ph.split.us.us ], [ %i.ve, %bb.q ], [ %.912951369.us.us, %bb.p ] ; 2 uses
  %.111284.us.us = phi nsz <8 x float> [ %.912821370.us.us, %.lr.ph.split.us.us ], [ %i.ux, %bb.q ], [ %.912821370.us.us, %bb.p ] ; 2 uses
  %.111266.us.us = phi nsz <8 x float> [ %.912641371.us.us, %.lr.ph.split.us.us ], [ %i.uq, %bb.q ], [ %.912641371.us.us, %bb.p ] ; 2 uses
  %.12.us.us = phi nsz <8 x float> [ %.101372.us.us, %.lr.ph.split.us.us ], [ %i.uj, %bb.q ], [ %.101372.us.us, %bb.p ] ; 2 uses
  %indvars.iv.next1530 = add nuw nsw i64 %indvars.iv1529, 1 ; 2 uses
  %exitcond1533.not = icmp eq i64 %indvars.iv.next1530, %wide.trip.count1532
  br i1 %exitcond1533.not, label %.loopexit1321.us, label %.lr.ph.split.us.us, !llvm.loop !738

.loopexit1321.us:                                 ; preds = %bb.o, %bb.r, %.lr.ph.us1427, %.preheader1320.us, %bb.m, %bb.l
  %.121298.us = phi nsz <8 x float> [ %.812941404.us, %bb.l ], [ %.812941404.us, %bb.m ], [ %.111297.us.us, %bb.r ], [ %.812941404.us, %.preheader1320.us ], [ %.812941404.us, %.lr.ph.us1427 ], [ %.111297.us1392.us, %bb.o ] ; 3 uses
  %.121285.us = phi nsz <8 x float> [ %.812811405.us, %bb.l ], [ %.812811405.us, %bb.m ], [ %.111284.us.us, %bb.r ], [ %.812811405.us, %.preheader1320.us ], [ %.812811405.us, %.lr.ph.us1427 ], [ %.111284.us1393.us, %bb.o ] ; 3 uses
  %.121267.us = phi nsz <8 x float> [ %.812631406.us, %bb.l ], [ %.812631406.us, %bb.m ], [ %.111266.us.us, %bb.r ], [ %.812631406.us, %.preheader1320.us ], [ %.812631406.us, %.lr.ph.us1427 ], [ %.111266.us1394.us, %bb.o ] ; 3 uses
  %.13.us = phi nsz <8 x float> [ %.91407.us, %bb.l ], [ %.91407.us, %bb.m ], [ %.12.us.us, %bb.r ], [ %.91407.us, %.preheader1320.us ], [ %.91407.us, %.lr.ph.us1427 ], [ %.12.us1395.us, %bb.o ] ; 3 uses
  %i.vf = add nuw nsw i32 %.03251408.us, 1        ; 2 uses
  %exitcond1534.not = icmp eq i32 %i.vf, %i.ns
  br i1 %exitcond1534.not, label %._crit_edge.us1436, label %bb.l, !llvm.loop !741

._crit_edge.us1436:                               ; preds = %.loopexit1321.us
  %i.vg = getelementptr inbounds [2 x i8], ptr %.13301419.us, i64 %i.nw ; 2 uses
  %indvars.iv.next1536 = add nuw nsw i64 %indvars.iv1535, 4 ; 3 uses
  %i.vh = or disjoint i64 %indvars.iv.next1536, 3 ; 2 uses
  %i.vi = trunc nuw i64 %i.vh to i32
  %i.vj = icmp sgt i32 %i.ac, %i.vi
  br i1 %i.vj, label %.preheader1326.us, label %.preheader1329.loopexit, !llvm.loop !742

.preheader1329.loopexit:                          ; preds = %._crit_edge.us1436
  %i.vk = trunc nuw i64 %indvars.iv.next1536 to i32
  br label %.preheader1329

.preheader1329:                                   ; preds = %.preheader1326.preheader, %.preheader1329.loopexit, %.preheader1330
  %.71293.lcssa = phi <8 x float> [ %.01286.lcssa, %.preheader1330 ], [ %.121298.us, %.preheader1329.loopexit ], [ %.01286.lcssa, %.preheader1326.preheader ]
  %.71280.lcssa = phi <8 x float> [ %.01273.lcssa, %.preheader1330 ], [ %.121285.us, %.preheader1329.loopexit ], [ %.01273.lcssa, %.preheader1326.preheader ]
  %.71262.lcssa = phi <8 x float> [ %.01255.lcssa, %.preheader1330 ], [ %.121267.us, %.preheader1329.loopexit ], [ %.01255.lcssa, %.preheader1326.preheader ] ; 3 uses
  %.8.lcssa = phi <8 x float> [ %.11251.lcssa, %.preheader1330 ], [ %.13.us, %.preheader1329.loopexit ], [ %.11251.lcssa, %.preheader1326.preheader ] ; 3 uses
  %.1330.lcssa = phi ptr [ %.0329.lcssa, %.preheader1330 ], [ %i.vg, %.preheader1329.loopexit ], [ %scevgep1523, %.preheader1326.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0328.lcssa, %.preheader1330 ], [ %i.vk, %.preheader1329.loopexit ], [ %i.oe, %.preheader1326.preheader ] ; 5 uses
  %i.vl = or disjoint i32 %.1.lcssa, 1            ; 2 uses
  %i.vm = icmp slt i32 %i.vl, %i.ac
  br i1 %i.vm, label %.preheader1325.lr.ph, label %.preheader1328

.preheader1325.lr.ph:                             ; preds = %.preheader1329
  %i.vn = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.vo = icmp sgt i32 %i.vn, 0
  %.neg1309 = add nuw nsw i32 %.03331493, 1
  %i.vp = load i32, ptr %16, align 4, !tbaa !61
  %i.vq = shl i32 %i.vp, 4
  %i.vr = sext i32 %i.vq to i64                   ; 2 uses
  br i1 %i.vo, label %.preheader1325.lr.ph.split.us, label %.preheader1325.preheader

.preheader1325.preheader:                         ; preds = %.preheader1325.lr.ph
  %i.vs = sub i32 %i.bj, %.1.lcssa                ; 2 uses
  %i.vt = and i32 %i.vs, -2
  %i.vu = zext i32 %i.vt to i64
  %i.vv = add nuw nsw i64 %i.vu, 2
  %i.vw = mul nsw i64 %i.vv, %i.vr
  %scevgep1538 = getelementptr i8, ptr %.1330.lcssa, i64 %i.vw
  %i.vx = add i32 %.1.lcssa, 2
  %i.vy = and i32 %i.vs, -2
  %i.vz = add i32 %i.vx, %i.vy
  br label %.preheader1328

.preheader1325.lr.ph.split.us:                    ; preds = %.preheader1325.lr.ph
  %i.wa = load i32, ptr %9, align 4, !tbaa !61
  %i.wb = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1454.us = sub i32 %.neg1315, %i.wb
  %i.wc = zext i32 %.1.lcssa to i64
  %i.wd = zext nneg i32 %i.vl to i64
  br label %.preheader1325.us

.preheader1325.us:                                ; preds = %._crit_edge.us1468, %.preheader1325.lr.ph.split.us
  %indvars.iv1545 = phi i64 [ %indvars.iv.next1546, %._crit_edge.us1468 ], [ %i.wc, %.preheader1325.lr.ph.split.us ] ; 2 uses
  %i.we = phi i64 [ %i.yu, %._crit_edge.us1468 ], [ %i.wd, %.preheader1325.lr.ph.split.us ]
  %.23311458.us = phi ptr [ %i.yt, %._crit_edge.us1468 ], [ %.1330.lcssa, %.preheader1325.lr.ph.split.us ] ; 2 uses
  %.141457.us = phi <8 x float> [ %.18.us, %._crit_edge.us1468 ], [ %.8.lcssa, %.preheader1325.lr.ph.split.us ]
  %.1312681456.us = phi <8 x float> [ %.171272.us, %._crit_edge.us1468 ], [ %.71262.lcssa, %.preheader1325.lr.ph.split.us ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader1325.us, %.loopexit1319.us
  %.03231450.us = phi i32 [ 0, %.preheader1325.us ], [ %i.yo, %.loopexit1319.us ] ; 3 uses
  %.151449.us = phi <8 x float> [ %.141457.us, %.preheader1325.us ], [ %.18.us, %.loopexit1319.us ] ; 4 uses
  %.1412691448.us = phi <8 x float> [ %.1312681456.us, %.preheader1325.us ], [ %.171272.us, %.loopexit1319.us ] ; 4 uses
  %i.wf = mul nsw i32 %i.wa, %.03231450.us
  %.reass1455.us = add i32 %i.wf, %invariant.op1454.us ; 3 uses
  %i.wg = icmp slt i32 %.reass1455.us, 0
  br i1 %i.wg, label %.loopexit1319.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.wh = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.wi = srem i32 %.reass1455.us, %i.wh
  %i.wj = sdiv i32 %.reass1455.us, %i.wh          ; 2 uses
  %.not374.us = icmp eq i32 %i.wi, 0
  %.not375.us = icmp slt i32 %i.wj, %i.ae
  %or.cond1718 = select i1 %.not374.us, i1 %.not375.us, i1 false
  br i1 %or.cond1718, label %.preheader1318.us, label %.loopexit1319.us

.preheader1318.us:                                ; preds = %bb.t
  %i.wk = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.wl = icmp sgt i32 %i.wk, 0
  br i1 %i.wl, label %.lr.ph.us1465, label %.loopexit1319.us

bb.u:                                             ; preds = %.lr.ph.us1465, %bb.w
  %indvars.iv1539 = phi i64 [ 0, %.lr.ph.us1465 ], [ %indvars.iv.next1540, %bb.w ] ; 3 uses
  %.161445.us = phi <8 x float> [ %.151449.us, %.lr.ph.us1465 ], [ %.17.us, %bb.w ] ; 3 uses
  %.1512701444.us = phi <8 x float> [ %.1412691448.us, %.lr.ph.us1465 ], [ %.161271.us, %bb.w ] ; 3 uses
  %i.wm = trunc i64 %indvars.iv1539 to i32
  %i.wn = mul i32 %i.yp, %i.wm
  %.reass.us1464 = add i32 %i.wn, %invariant.op.us1466 ; 3 uses
  %i.wo = icmp slt i32 %.reass.us1464, 0
  br i1 %i.wo, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.wp = load i32, ptr %15, align 4, !tbaa !61   ; 2 uses
  %i.wq = srem i32 %.reass.us1464, %i.wp
  %i.wr = sdiv i32 %.reass.us1464, %i.wp          ; 2 uses
  %.not376.us = icmp eq i32 %i.wq, 0
  %.not377.us = icmp slt i32 %i.wr, %i.ad
  %or.cond1719 = select i1 %.not376.us, i1 %.not377.us, i1 false
  br i1 %or.cond1719, label %_ZN4ncnn3MatD2Ev.exit387.us, label %bb.w

_ZN4ncnn3MatD2Ev.exit387.us:                      ; preds = %bb.v
  %i.ws = trunc i64 %indvars.iv1539 to i32
  %i.wt = add i32 %i.yr, %i.ws
  %i.wu = shl nsw i32 %i.wt, 4
  %i.wv = zext nneg i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %.23311458.us, i64 %i.wv ; 2 uses
  %i.wx = load i32, ptr %i.n, align 4, !tbaa !54, !noalias !761
  %i.wy = load ptr, ptr %4, align 8, !tbaa !20, !noalias !761 ; 2 uses
  %i.wz = load i64, ptr %i.w, align 8, !tbaa !21, !noalias !761 ; 2 uses
  %i.xa = mul i64 %i.wz, %indvars.iv1545
  %i.xb = load i64, ptr %i.x, align 8, !tbaa !55, !noalias !761 ; 3 uses
  %i.xc = mul i64 %i.xa, %i.xb
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.xc
  %i.xe = sext i32 %i.wx to i64
  %i.xf = mul nsw i64 %i.xe, %i.ys
  %i.xg = mul i64 %i.xf, %i.xb                    ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xg
  %i.xi = mul i64 %i.wz, %i.we
  %i.xj = mul i64 %i.xi, %i.xb
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.xj
  %i.xl = sext i32 %i.wr to i64                   ; 2 uses
  %i.xm = getelementptr inbounds [2 x i8], ptr %i.xh, i64 %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xg
  %i.xo = load i16, ptr %i.xm, align 2, !tbaa !89
  %i.xp = zext i16 %i.xo to i32
  %i.xq = shl nuw i32 %i.xp, 16
  %i.xr = insertelement <8 x i32> poison, i32 %i.xq, i64 0
  %i.xs = bitcast <8 x i32> %i.xr to <8 x float>
  %i.xt = shufflevector <8 x float> %i.xs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.xu = getelementptr inbounds [2 x i8], ptr %i.xn, i64 %i.xl
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !89
  %i.xw = zext i16 %i.xv to i32
  %i.xx = shl nuw i32 %i.xw, 16
  %i.xy = insertelement <8 x i32> poison, i32 %i.xx, i64 0
  %i.xz = bitcast <8 x i32> %i.xy to <8 x float>
  %i.ya = shufflevector <8 x float> %i.xz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.yb = load <8 x i16>, ptr %i.ww, align 16, !tbaa !82 ; 2 uses
  %i.yc = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yd = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.yb, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ye = shufflevector <8 x i16> %i.yc, <8 x i16> %i.yd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yf = bitcast <16 x i16> %i.ye to <8 x float>
  %i.yg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.xt, <8 x float> nofpclass(nan inf) %i.yf, <8 x float> nofpclass(nan inf) %.161445.us)
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.yi = load <8 x i16>, ptr %i.yh, align 16, !tbaa !82 ; 2 uses
  %i.yj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.yi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.yk = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.yi, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.yl = shufflevector <8 x i16> %i.yj, <8 x i16> %i.yk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ym = bitcast <16 x i16> %i.yl to <8 x float>
  %i.yn = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ya, <8 x float> nofpclass(nan inf) %i.ym, <8 x float> nofpclass(nan inf) %.1512701444.us)
  br label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit387.us, %bb.v, %bb.u
  %.161271.us = phi nsz <8 x float> [ %.1512701444.us, %bb.u ], [ %i.yn, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.1512701444.us, %bb.v ] ; 2 uses
  %.17.us = phi nsz <8 x float> [ %.161445.us, %bb.u ], [ %i.yg, %_ZN4ncnn3MatD2Ev.exit387.us ], [ %.161445.us, %bb.v ] ; 2 uses
  %indvars.iv.next1540 = add nuw nsw i64 %indvars.iv1539, 1 ; 2 uses
  %exitcond1543.not = icmp eq i64 %indvars.iv.next1540, %wide.trip.count1542
  br i1 %exitcond1543.not, label %.loopexit1319.us, label %bb.u, !llvm.loop !745

.loopexit1319.us:                                 ; preds = %bb.w, %.preheader1318.us, %bb.t, %bb.s
  %.171272.us = phi nsz <8 x float> [ %.1412691448.us, %bb.s ], [ %.1412691448.us, %bb.t ], [ %.1412691448.us, %.preheader1318.us ], [ %.161271.us, %bb.w ] ; 3 uses
  %.18.us = phi nsz <8 x float> [ %.151449.us, %bb.s ], [ %.151449.us, %bb.t ], [ %.151449.us, %.preheader1318.us ], [ %.17.us, %bb.w ] ; 3 uses
  %i.yo = add nuw nsw i32 %.03231450.us, 1        ; 2 uses
  %exitcond1544.not = icmp eq i32 %i.yo, %i.vn
  br i1 %exitcond1544.not, label %._crit_edge.us1468, label %bb.s, !llvm.loop !746

.lr.ph.us1465:                                    ; preds = %.preheader1318.us
  %i.yp = load i32, ptr %13, align 4, !tbaa !61
  %i.yq = load i32, ptr %14, align 4, !tbaa !61
  %invariant.op.us1466 = sub i32 %.neg1309, %i.yq
  %i.yr = mul nuw nsw i32 %i.wk, %.03231450.us
  %i.ys = sext i32 %i.wj to i64
  %wide.trip.count1542 = zext nneg i32 %i.wk to i64
  br label %bb.u

._crit_edge.us1468:                               ; preds = %.loopexit1319.us
  %i.yt = getelementptr inbounds [2 x i8], ptr %.23311458.us, i64 %i.vr ; 2 uses
  %indvars.iv.next1546 = add nuw nsw i64 %indvars.iv1545, 2 ; 3 uses
  %i.yu = or disjoint i64 %indvars.iv.next1546, 1 ; 2 uses
  %i.yv = trunc nuw i64 %i.yu to i32
  %i.yw = icmp sgt i32 %i.ac, %i.yv
  br i1 %i.yw, label %.preheader1325.us, label %.preheader1328.loopexit, !llvm.loop !747

.preheader1328.loopexit:                          ; preds = %._crit_edge.us1468
  %i.yx = trunc nuw i64 %indvars.iv.next1546 to i32
  br label %.preheader1328

.preheader1328:                                   ; preds = %.preheader1325.preheader, %.preheader1328.loopexit, %.preheader1329
  %.131268.lcssa = phi <8 x float> [ %.71262.lcssa, %.preheader1329 ], [ %.171272.us, %.preheader1328.loopexit ], [ %.71262.lcssa, %.preheader1325.preheader ]
  %.14.lcssa = phi <8 x float> [ %.8.lcssa, %.preheader1329 ], [ %.18.us, %.preheader1328.loopexit ], [ %.8.lcssa, %.preheader1325.preheader ] ; 3 uses
  %.2331.lcssa = phi ptr [ %.1330.lcssa, %.preheader1329 ], [ %i.yt, %.preheader1328.loopexit ], [ %scevgep1538, %.preheader1325.preheader ]
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1329 ], [ %i.yx, %.preheader1328.loopexit ], [ %i.vz, %.preheader1325.preheader ] ; 2 uses
  %i.yy = icmp slt i32 %.2.lcssa, %i.ac
  br i1 %i.yy, label %.preheader1324.lr.ph, label %._crit_edge1484

.preheader1324.lr.ph:                             ; preds = %.preheader1328
  %i.yz = load i32, ptr %8, align 4, !tbaa !61    ; 2 uses
  %i.za = icmp sgt i32 %i.yz, 0
  %.neg1305 = add nuw nsw i32 %.03331493, 1
  %i.zb = load i32, ptr %16, align 4, !tbaa !61
  %i.zc = shl nsw i32 %i.zb, 3
  %i.zd = sext i32 %i.zc to i64
  br i1 %i.za, label %.preheader1324.lr.ph.split.us, label %._crit_edge1484

.preheader1324.lr.ph.split.us:                    ; preds = %.preheader1324.lr.ph
  %i.ze = load i32, ptr %9, align 4, !tbaa !61
  %i.zf = load i32, ptr %10, align 4, !tbaa !61
  %invariant.op1479.us = sub i32 %.neg1315, %i.zf
  %i.zg = zext i32 %.2.lcssa to i64
  br label %.preheader1324.us

.preheader1324.us:                                ; preds = %._crit_edge.us1490, %.preheader1324.lr.ph.split.us
  %indvars.iv1554 = phi i64 [ %indvars.iv.next1555, %._crit_edge.us1490 ], [ %i.zg, %.preheader1324.lr.ph.split.us ] ; 2 uses
  %.33321482.us = phi ptr [ %i.abd, %._crit_edge.us1490 ], [ %.2331.lcssa, %.preheader1324.lr.ph.split.us ] ; 2 uses
  %.191481.us = phi <8 x float> [ %.23.us, %._crit_edge.us1490 ], [ %.14.lcssa, %.preheader1324.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader1324.us, %.loopexit.us
  %.03211476.us = phi i32 [ 0, %.preheader1324.us ], [ %i.aay, %.loopexit.us ] ; 3 uses
  %.201475.us = phi <8 x float> [ %.191481.us, %.preheader1324.us ], [ %.23.us, %.loopexit.us ] ; 4 uses
  %i.zh = mul nsw i32 %i.ze, %.03211476.us
  %.reass1480.us = add i32 %i.zh, %invariant.op1479.us ; 3 uses
  %i.zi = icmp slt i32 %.reass1480.us, 0
  br i1 %i.zi, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.zj = load i32, ptr %11, align 4, !tbaa !61   ; 2 uses
  %i.zk = srem i32 %.reass1480.us, %i.zj
  %i.zl = sdiv i32 %.reass1480.us, %i.zj          ; 2 uses
  %.not370.us = icmp eq i32 %i.zk, 0
  %.not371.us = icmp slt i32 %i.zl, %i.ae
  %or.cond1720 = select i1 %.not370.us, i1 %.not371.us, i1 false
  br i1 %or.cond1720, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.y
  %i.zm = load i32, ptr %12, align 4, !tbaa !61   ; 3 uses
  %i.zn = icmp sgt i32 %i.zm, 0
  br i1 %i.zn, label %.lr.ph.us1487, label %.loopexit.us

end_hunk_15
