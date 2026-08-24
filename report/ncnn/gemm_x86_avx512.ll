Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm_x86_avx512?download=true
inline.NumInlined: 238
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 209
loop-unroll.NumUnrolled: 213
begin_hunk_0_@_ZN4ncnnL36transpose_compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii:bb.a
bb.q:                                             ; preds = %bb.s, %.lr.ph314.i
  %indvars.iv439.i = phi i64 [ %i.qd, %.lr.ph314.i ], [ %indvars.iv.next440.i, %bb.s ] ; 2 uses
  %.19313.i = phi ptr [ %.15.lcssa.i, %.lr.ph314.i ], [ %.21.i, %bb.s ] ; 5 uses
  %.19637312.i = phi ptr [ %.15633.lcssa.i, %.lr.ph314.i ], [ %.21639.i, %bb.s ] ; 5 uses
  %i.vi = load ptr, ptr %0, align 8, !tbaa !18
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.vi, i64 %i.qa
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.vj, i64 %indvars.iv439.i ; 2 uses
  br i1 %i.qb, label %.lr.ph285.i, label %._crit_edge286.i

.lr.ph285.i:                                      ; preds = %bb.q, %.lr.ph285.i
  %.0606283.i = phi i32 [ %i.wf, %.lr.ph285.i ], [ 0, %bb.q ]
  %.0608282.i = phi <4 x float> [ %i.wd, %.lr.ph285.i ], [ zeroinitializer, %bb.q ]
  %.0609281.i = phi <4 x float> [ %i.wa, %.lr.ph285.i ], [ zeroinitializer, %bb.q ]
  %.0610280.i = phi <4 x float> [ %i.vx, %.lr.ph285.i ], [ zeroinitializer, %bb.q ]
  %.0612279.i = phi ptr [ %i.we, %.lr.ph285.i ], [ %i.vk, %bb.q ] ; 5 uses
  %.087278.i = phi <4 x float> [ %i.vu, %.lr.ph285.i ], [ zeroinitializer, %bb.q ]
  %i.vl = load <4 x i32>, ptr %.0612279.i, align 1, !tbaa !116
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %.0612279.i, i64 %i.l
  %i.vn = load <4 x i32>, ptr %i.vm, align 1, !tbaa !116
  %i.vo = getelementptr inbounds nuw i8, ptr %.0612279.i, i64 %.idx702.i
  %i.vp = load <4 x i32>, ptr %i.vo, align 1, !tbaa !116
  %i.vq = getelementptr inbounds nuw i8, ptr %.0612279.i, i64 %.idx703.i
  %i.vr = load <4 x i32>, ptr %i.vq, align 1, !tbaa !116
  %i.vs = and <4 x i32> %i.vl, splat (i32 2147483647)
  %i.vt = bitcast <4 x i32> %i.vs to <4 x float>
  %i.vu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.087278.i, <4 x float> nofpclass(nan inf) %i.vt) ; 2 uses
  %i.vv = and <4 x i32> %i.vn, splat (i32 2147483647)
  %i.vw = bitcast <4 x i32> %i.vv to <4 x float>
  %i.vx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0610280.i, <4 x float> nofpclass(nan inf) %i.vw) ; 2 uses
  %i.vy = and <4 x i32> %i.vp, splat (i32 2147483647)
  %i.vz = bitcast <4 x i32> %i.vy to <4 x float>
  %i.wa = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0609281.i, <4 x float> nofpclass(nan inf) %i.vz) ; 2 uses
  %i.wb = and <4 x i32> %i.vr, splat (i32 2147483647)
  %i.wc = bitcast <4 x i32> %i.wb to <4 x float>
  %i.wd = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0608282.i, <4 x float> nofpclass(nan inf) %i.wc) ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %.0612279.i, i64 %.idx704.i ; 2 uses
  %i.wf = add nuw nsw i32 %.0606283.i, 4          ; 2 uses
  %i.wg = or disjoint i32 %i.wf, 3
  %i.wh = icmp slt i32 %i.wg, %i.m
  br i1 %i.wh, label %.lr.ph285.i, label %._crit_edge286.i, !llvm.loop !1074

._crit_edge286.i:                                 ; preds = %.lr.ph285.i, %bb.q
  %.087.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.q ], [ %i.vu, %.lr.ph285.i ]
  %.0612.lcssa.i = phi ptr [ %i.vk, %bb.q ], [ %i.we, %.lr.ph285.i ] ; 2 uses
  %.0610.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.q ], [ %i.vx, %.lr.ph285.i ]
  %.0609.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.q ], [ %i.wa, %.lr.ph285.i ]
  %.0608.lcssa.i = phi <4 x float> [ zeroinitializer, %bb.q ], [ %i.wd, %.lr.ph285.i ]
  %.0606.lcssa.i = phi i32 [ 0, %bb.q ], [ %i.qc, %.lr.ph285.i ] ; 3 uses
  %i.wi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.087.lcssa.i, <4 x float> nofpclass(nan inf) %.0609.lcssa.i) ; 2 uses
  %i.wj = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.0610.lcssa.i, <4 x float> nofpclass(nan inf) %.0608.lcssa.i) ; 2 uses
  %i.wk = or disjoint i32 %.0606.lcssa.i, 1
  %i.wl = icmp slt i32 %i.wk, %i.m
  br i1 %i.wl, label %.lr.ph298.i, label %._crit_edge299.i

.lr.ph298.i:                                      ; preds = %._crit_edge286.i, %.lr.ph298.i
  %.1607296.i = phi i32 [ %i.ww, %.lr.ph298.i ], [ %.0606.lcssa.i, %._crit_edge286.i ]
  %.1611295.i = phi <4 x float> [ %i.wu, %.lr.ph298.i ], [ %i.wj, %._crit_edge286.i ]
  %.1613294.i = phi ptr [ %i.wv, %.lr.ph298.i ], [ %.0612.lcssa.i, %._crit_edge286.i ] ; 3 uses
  %.188293.i = phi <4 x float> [ %i.wr, %.lr.ph298.i ], [ %i.wi, %._crit_edge286.i ]
  %i.wm = load <4 x i32>, ptr %.1613294.i, align 1, !tbaa !116
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %.1613294.i, i64 %i.l
  %i.wo = load <4 x i32>, ptr %i.wn, align 1, !tbaa !116
  %i.wp = and <4 x i32> %i.wm, splat (i32 2147483647)
  %i.wq = bitcast <4 x i32> %i.wp to <4 x float>
  %i.wr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.188293.i, <4 x float> nofpclass(nan inf) %i.wq) ; 2 uses
  %i.ws = and <4 x i32> %i.wo, splat (i32 2147483647)
  %i.wt = bitcast <4 x i32> %i.ws to <4 x float>
  %i.wu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.1611295.i, <4 x float> nofpclass(nan inf) %i.wt) ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.1613294.i, i64 %.idx702.i ; 2 uses
  %i.ww = add nuw nsw i32 %.1607296.i, 2          ; 3 uses
  %i.wx = or disjoint i32 %i.ww, 1
  %i.wy = icmp slt i32 %i.wx, %i.m
  br i1 %i.wy, label %.lr.ph298.i, label %._crit_edge299.i, !llvm.loop !1075

._crit_edge299.i:                                 ; preds = %.lr.ph298.i, %._crit_edge286.i
  %.188.lcssa.i = phi <4 x float> [ %i.wi, %._crit_edge286.i ], [ %i.wr, %.lr.ph298.i ]
  %.1613.lcssa.i = phi ptr [ %.0612.lcssa.i, %._crit_edge286.i ], [ %i.wv, %.lr.ph298.i ] ; 2 uses
  %.1611.lcssa.i = phi <4 x float> [ %i.wj, %._crit_edge286.i ], [ %i.wu, %.lr.ph298.i ]
  %.1607.lcssa.i = phi i32 [ %.0606.lcssa.i, %._crit_edge286.i ], [ %i.ww, %.lr.ph298.i ] ; 5 uses
  %i.wz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.188.lcssa.i, <4 x float> nofpclass(nan inf) %.1611.lcssa.i) ; 3 uses
  %i.xa = icmp slt i32 %.1607.lcssa.i, %i.m
  br i1 %i.xa, label %.lr.ph308.i.preheader, label %._crit_edge309.i

.lr.ph308.i.preheader:                            ; preds = %._crit_edge299.i
  %i.xb = sub i32 %i.m, %.1607.lcssa.i
  %xtraiter300 = and i32 %i.xb, 3                 ; 2 uses
  %lcmp.mod301.not = icmp eq i32 %xtraiter300, 0
  br i1 %lcmp.mod301.not, label %.lr.ph308.i.prol.loopexit, label %.lr.ph308.i.prol

.lr.ph308.i.prol:                                 ; preds = %.lr.ph308.i.preheader, %.lr.ph308.i.prol
  %.2306.i.prol = phi i32 [ %i.xh, %.lr.ph308.i.prol ], [ %.1607.lcssa.i, %.lr.ph308.i.preheader ]
  %.2614305.i.prol = phi ptr [ %i.xg, %.lr.ph308.i.prol ], [ %.1613.lcssa.i, %.lr.ph308.i.preheader ] ; 2 uses
  %.289304.i.prol = phi <4 x float> [ %i.xf, %.lr.ph308.i.prol ], [ %i.wz, %.lr.ph308.i.preheader ]
  %prol.iter302 = phi i32 [ %prol.iter302.next, %.lr.ph308.i.prol ], [ 0, %.lr.ph308.i.preheader ]
  %i.xc = load <4 x i32>, ptr %.2614305.i.prol, align 1, !tbaa !116
  %i.xd = and <4 x i32> %i.xc, splat (i32 2147483647)
  %i.xe = bitcast <4 x i32> %i.xd to <4 x float>
  %i.xf = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.289304.i.prol, <4 x float> nofpclass(nan inf) %i.xe) ; 3 uses
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.2614305.i.prol, i64 %i.l ; 2 uses
  %i.xh = add nuw nsw i32 %.2306.i.prol, 1        ; 2 uses
  %prol.iter302.next = add i32 %prol.iter302, 1   ; 2 uses
  %prol.iter302.cmp.not = icmp eq i32 %prol.iter302.next, %xtraiter300
  br i1 %prol.iter302.cmp.not, label %.lr.ph308.i.prol.loopexit, label %.lr.ph308.i.prol, !llvm.loop !1076

.lr.ph308.i.prol.loopexit:                        ; preds = %.lr.ph308.i.prol, %.lr.ph308.i.preheader
  %.lcssa253.unr = phi <4 x float> [ poison, %.lr.ph308.i.preheader ], [ %i.xf, %.lr.ph308.i.prol ]
  %.2306.i.unr = phi i32 [ %.1607.lcssa.i, %.lr.ph308.i.preheader ], [ %i.xh, %.lr.ph308.i.prol ]
  %.2614305.i.unr = phi ptr [ %.1613.lcssa.i, %.lr.ph308.i.preheader ], [ %i.xg, %.lr.ph308.i.prol ]
  %.289304.i.unr = phi <4 x float> [ %i.wz, %.lr.ph308.i.preheader ], [ %i.xf, %.lr.ph308.i.prol ]
  %i.xi = sub i32 %.1607.lcssa.i, %i.m
  %i.xj = icmp ugt i32 %i.xi, -4
  br i1 %i.xj, label %._crit_edge309.i, label %.lr.ph308.i

.lr.ph308.i:                                      ; preds = %.lr.ph308.i.prol.loopexit, %.lr.ph308.i
  %.2306.i = phi i32 [ %i.ye, %.lr.ph308.i ], [ %.2306.i.unr, %.lr.ph308.i.prol.loopexit ]
  %.2614305.i = phi ptr [ %i.yd, %.lr.ph308.i ], [ %.2614305.i.unr, %.lr.ph308.i.prol.loopexit ] ; 2 uses
  %.289304.i = phi <4 x float> [ %i.yc, %.lr.ph308.i ], [ %.289304.i.unr, %.lr.ph308.i.prol.loopexit ]
  %i.xk = load <4 x i32>, ptr %.2614305.i, align 1, !tbaa !116
  %i.xl = and <4 x i32> %i.xk, splat (i32 2147483647)
  %i.xm = bitcast <4 x i32> %i.xl to <4 x float>
  %i.xn = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.289304.i, <4 x float> nofpclass(nan inf) %i.xm)
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %.2614305.i, i64 %i.l ; 2 uses
  %i.xp = load <4 x i32>, ptr %i.xo, align 1, !tbaa !116
  %i.xq = and <4 x i32> %i.xp, splat (i32 2147483647)
  %i.xr = bitcast <4 x i32> %i.xq to <4 x float>
  %i.xs = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xn, <4 x float> nofpclass(nan inf) %i.xr)
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.l ; 2 uses
  %i.xu = load <4 x i32>, ptr %i.xt, align 1, !tbaa !116
  %i.xv = and <4 x i32> %i.xu, splat (i32 2147483647)
  %i.xw = bitcast <4 x i32> %i.xv to <4 x float>
  %i.xx = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xs, <4 x float> nofpclass(nan inf) %i.xw)
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.l ; 2 uses
  %i.xz = load <4 x i32>, ptr %i.xy, align 1, !tbaa !116
  %i.ya = and <4 x i32> %i.xz, splat (i32 2147483647)
  %i.yb = bitcast <4 x i32> %i.ya to <4 x float>
  %i.yc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.xx, <4 x float> nofpclass(nan inf) %i.yb) ; 2 uses
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.l
  %i.ye = add nuw nsw i32 %.2306.i, 4             ; 2 uses
  %exitcond438.not.i.3 = icmp eq i32 %i.ye, %i.m
  br i1 %exitcond438.not.i.3, label %._crit_edge309.i, label %.lr.ph308.i, !llvm.loop !1077

._crit_edge309.i:                                 ; preds = %.lr.ph308.i.prol.loopexit, %.lr.ph308.i, %._crit_edge299.i
  %.289.lcssa.i = phi <4 x float> [ %i.wz, %._crit_edge299.i ], [ %.lcssa253.unr, %.lr.ph308.i.prol.loopexit ], [ %i.yc, %.lr.ph308.i ] ; 4 uses
  switch i32 %i.b, label %bb.s [
    i32 4, label %.thread140.i
    i32 1, label %bb.r
  ]

.thread140.i:                                     ; preds = %._crit_edge309.i
  %i.yf = shufflevector <4 x float> %.289.lcssa.i, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.yg = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.289.lcssa.i, <4 x float> nofpclass(nan inf) %i.yf) ; 2 uses
  %i.yh = shufflevector <4 x float> %i.yg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.yi = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.yg, <4 x float> nofpclass(nan inf) %i.yh)
  %i.yj = extractelement <4 x float> %i.yi, i64 0 ; 2 uses
  %i.yk = fdiv fast float 1.270000e+02, %i.yj
  store float %i.yk, ptr %.19313.i, align 4, !tbaa !68
  %i.yl = fmul fast float %i.yj, f0x3C010204
  %i.ym = fmul fast float %i.yl, %i.qf
  store float %i.ym, ptr %.19637312.i, align 4, !tbaa !68
  %i.yn = getelementptr inbounds nuw i8, ptr %.19313.i, i64 4
  %i.yo = getelementptr inbounds nuw i8, ptr %.19637312.i, i64 4
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge309.i
  %i.yp = fdiv fast <4 x float> splat (float 1.270000e+02), %.289.lcssa.i
  %i.yq = fmul fast <4 x float> %.289.lcssa.i, %i.qe
  store <4 x float> %i.yp, ptr %.19313.i, align 16, !tbaa !116
  store <4 x float> %i.yq, ptr %.19637312.i, align 16, !tbaa !116
  %i.yr = getelementptr inbounds nuw i8, ptr %.19313.i, i64 16
  %i.ys = getelementptr inbounds nuw i8, ptr %.19637312.i, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread140.i, %._crit_edge309.i
  %.21639.i = phi ptr [ %i.ys, %bb.r ], [ %.19637312.i, %._crit_edge309.i ], [ %i.yo, %.thread140.i ] ; 2 uses
  %.21.i = phi ptr [ %i.yr, %bb.r ], [ %.19313.i, %._crit_edge309.i ], [ %i.yn, %.thread140.i ] ; 2 uses
  %indvars.iv.next440.i = add nuw nsw i64 %indvars.iv439.i, 4 ; 2 uses
  %i.yt = trunc i64 %indvars.iv.next440.i to i32  ; 2 uses
  %i.yu = or i32 %i.yt, 3
  %i.yv = icmp slt i32 %i.yu, %i.r
  br i1 %i.yv, label %bb.q, label %.preheader145.i, !llvm.loop !1078

.preheader.i:                                     ; preds = %._crit_edge335.i, %.preheader145.i
  %.5657.lcssa.i = phi i32 [ %.4656.lcssa.i, %.preheader145.i ], [ %i.acn, %._crit_edge335.i ] ; 2 uses
  %.22640.lcssa.i = phi ptr [ %.19637.lcssa.i, %.preheader145.i ], [ %i.acm, %._crit_edge335.i ]
  %.22.lcssa.i = phi ptr [ %.19.lcssa.i, %.preheader145.i ], [ %i.acl, %._crit_edge335.i ]
  %i.yw = icmp slt i32 %.5657.lcssa.i, %i.r
  br i1 %i.yw, label %.lr.ph364.i, label %_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit

.lr.ph364.i:                                      ; preds = %.preheader.i
  %i.yx = load ptr, ptr %0, align 8, !tbaa !18
  %i.yy = mul nsw i32 %i.b, %2
  %i.yz = sext i32 %i.yy to i64
  %i.za = getelementptr inbounds [4 x i8], ptr %i.yx, i64 %i.yz
  %i.zb = trunc i64 %i.l to i32
  %i.zc = insertelement <16 x i32> poison, i32 %i.zb, i64 0
  %i.zd = shufflevector <16 x i32> %i.zc, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.ze = mul <16 x i32> %i.zd, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 5 uses
  %i.zf = icmp sgt i32 %i.m, 15
  %.idx.i = shl i64 %i.l, 6                       ; 5 uses
  %i.zg = and i32 %i.m, -16                       ; 2 uses
  %i.zh = add i32 %i.m, -16                       ; 2 uses
  %i.zi = lshr i32 %i.zh, 4
  %i.zj = add nuw nsw i32 %i.zi, 1                ; 2 uses
  %xtraiter314 = and i32 %i.zj, 3                 ; 3 uses
  %i.zk = icmp ult i32 %i.zh, 48
  %unroll_iter319 = and i32 %i.zj, 536870908
  %lcmp.mod315.not = icmp eq i32 %xtraiter314, 0
  %lcmp.mod318 = icmp ne i32 %xtraiter314, 0
  %xtraiter321 = and i32 %i.m, 3                  ; 2 uses
  %lcmp.mod322.not = icmp eq i32 %xtraiter321, 0
  %i.zl = fdiv fast float 1.000000e+00, %1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge335.i, %.lr.ph341.i
  %indvars.iv443.i = phi i64 [ %i.uz, %.lr.ph341.i ], [ %indvars.iv.next444.i, %._crit_edge335.i ] ; 2 uses
  %.22340.i = phi ptr [ %.19.lcssa.i, %.lr.ph341.i ], [ %i.acl, %._crit_edge335.i ] ; 2 uses
  %.22640339.i = phi ptr [ %.19637.lcssa.i, %.lr.ph341.i ], [ %i.acm, %._crit_edge335.i ] ; 2 uses
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %indvars.iv443.i ; 3 uses
  br i1 %i.ux, label %.lr.ph323.i.preheader, label %._crit_edge324.i

.lr.ph323.i.preheader:                            ; preds = %bb.t
  br i1 %i.vf, label %.lr.ph323.i.epil.preheader, label %.lr.ph323.i

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader, %.lr.ph323.i
  %.0604320.i = phi ptr [ %i.aac, %.lr.ph323.i ], [ %i.zm, %.lr.ph323.i.preheader ] ; 3 uses
  %.094319.i = phi <16 x float> [ %i.zz, %.lr.ph323.i ], [ zeroinitializer, %.lr.ph323.i.preheader ]
  %.095318.i = phi <16 x float> [ %i.aab, %.lr.ph323.i ], [ zeroinitializer, %.lr.ph323.i.preheader ]
  %niter310 = phi i32 [ %niter310.next.1, %.lr.ph323.i ], [ 0, %.lr.ph323.i.preheader ]
  %i.zn = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0604320.i, <16 x i32> %i.uw, <16 x i1> splat (i1 true), i32 4)
  %i.zo = getelementptr inbounds nuw i8, ptr %.0604320.i, i64 4
  %i.zp = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zo, <16 x i32> %i.uw, <16 x i1> splat (i1 true), i32 4)
  %i.zq = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.zn)
  %i.zr = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.094319.i, <16 x float> nofpclass(nan inf) %i.zq, i32 4)
  %i.zs = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.zp)
  %i.zt = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.095318.i, <16 x float> nofpclass(nan inf) %i.zs, i32 4)
  %i.zu = getelementptr inbounds nuw i8, ptr %.0604320.i, i64 %.idx700.i ; 3 uses
  %i.zv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.zu, <16 x i32> %i.uw, <16 x i1> splat (i1 true), i32 4)
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 4
  %i.zx = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.zw, <16 x i32> %i.uw, <16 x i1> splat (i1 true), i32 4)
  %i.zy = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.zv)
  %i.zz = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.zr, <16 x float> nofpclass(nan inf) %i.zy, i32 4) ; 3 uses
  %i.aaa = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.zx)
  %i.aab = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.zt, <16 x float> nofpclass(nan inf) %i.aaa, i32 4) ; 3 uses
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.idx700.i ; 3 uses
  %niter310.next.1 = add i32 %niter310, 2         ; 2 uses
  %niter310.ncmp.1.not = icmp eq i32 %niter310.next.1, %unroll_iter309
  br i1 %niter310.ncmp.1.not, label %._crit_edge324.i.loopexit.unr-lcssa, label %.lr.ph323.i, !llvm.loop !1079

._crit_edge324.i.loopexit.unr-lcssa:              ; preds = %.lr.ph323.i
  br i1 %lcmp.mod304.not.not, label %.lr.ph323.i.epil.preheader, label %._crit_edge324.i

.lr.ph323.i.epil.preheader:                       ; preds = %._crit_edge324.i.loopexit.unr-lcssa, %.lr.ph323.i.preheader
  %.0604320.i.epil.init = phi ptr [ %i.zm, %.lr.ph323.i.preheader ], [ %i.aac, %._crit_edge324.i.loopexit.unr-lcssa ] ; 3 uses
  %.094319.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph323.i.preheader ], [ %i.zz, %._crit_edge324.i.loopexit.unr-lcssa ]
  %.095318.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph323.i.preheader ], [ %i.aab, %._crit_edge324.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.aad = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0604320.i.epil.init, <16 x i32> %i.uw, <16 x i1> splat (i1 true), i32 4)
  %i.aae = getelementptr inbounds nuw i8, ptr %.0604320.i.epil.init, i64 4
  %i.aaf = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr nonnull %i.aae, <16 x i32> %i.uw, <16 x i1> splat (i1 true), i32 4)
  %i.aag = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.aad)
  %i.aah = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.094319.i.epil.init, <16 x float> nofpclass(nan inf) %i.aag, i32 4)
  %i.aai = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.aaf)
  %i.aaj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.095318.i.epil.init, <16 x float> nofpclass(nan inf) %i.aai, i32 4)
  %i.aak = getelementptr inbounds nuw i8, ptr %.0604320.i.epil.init, i64 %.idx700.i
  br label %._crit_edge324.i

._crit_edge324.i:                                 ; preds = %.lr.ph323.i.epil.preheader, %._crit_edge324.i.loopexit.unr-lcssa, %bb.t
  %.095.lcssa.i = phi <16 x float> [ zeroinitializer, %bb.t ], [ %i.aab, %._crit_edge324.i.loopexit.unr-lcssa ], [ %i.aaj, %.lr.ph323.i.epil.preheader ] ; 2 uses
  %.094.lcssa.i = phi <16 x float> [ zeroinitializer, %bb.t ], [ %i.zz, %._crit_edge324.i.loopexit.unr-lcssa ], [ %i.aah, %.lr.ph323.i.epil.preheader ] ; 2 uses
  %.0604.lcssa.i = phi ptr [ %i.zm, %bb.t ], [ %i.aac, %._crit_edge324.i.loopexit.unr-lcssa ], [ %i.aak, %.lr.ph323.i.epil.preheader ] ; 2 uses
  %.0602.lcssa.i = phi i32 [ 0, %bb.t ], [ %i.uy, %._crit_edge324.i.loopexit.unr-lcssa ], [ %i.uy, %.lr.ph323.i.epil.preheader ] ; 4 uses
  %i.aal = shufflevector <16 x float> %.094.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aam = shufflevector <16 x float> %.094.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aan = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aal, <8 x float> nofpclass(nan inf) %i.aam) ; 2 uses
  %i.aao = shufflevector <8 x float> %i.aan, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aap = shufflevector <8 x float> %i.aan, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aaq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aao, <4 x float> nofpclass(nan inf) %i.aap) ; 2 uses
  %i.aar = shufflevector <4 x float> %i.aaq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.aas = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aaq, <4 x float> nofpclass(nan inf) %i.aar) ; 2 uses
  %i.aat = shufflevector <4 x float> %i.aas, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.aau = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.aas, <4 x float> nofpclass(nan inf) %i.aat)
  %i.aav = shufflevector <16 x float> %.095.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.aaw = shufflevector <16 x float> %.095.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aax = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.aav, <8 x float> nofpclass(nan inf) %i.aaw) ; 2 uses
  %i.aay = shufflevector <8 x float> %i.aax, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aaz = shufflevector <8 x float> %i.aax, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.aba = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aay, <4 x float> nofpclass(nan inf) %i.aaz) ; 2 uses
  %i.abb = shufflevector <4 x float> %i.aba, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.abc = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aba, <4 x float> nofpclass(nan inf) %i.abb) ; 2 uses
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.abe = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.abc, <4 x float> nofpclass(nan inf) %i.abd)
  %i.abf = icmp slt i32 %.0602.lcssa.i, %i.m
  %i.abg = shufflevector <4 x float> %i.aau, <4 x float> %i.abe, <2 x i32> <i32 0, i32 4> ; 3 uses
  br i1 %i.abf, label %.lr.ph334.i.preheader, label %._crit_edge335.i

.lr.ph334.i.preheader:                            ; preds = %._crit_edge324.i
  br i1 %lcmp.mod312.not, label %.lr.ph334.i.prol.loopexit, label %.lr.ph334.i.prol

.lr.ph334.i.prol:                                 ; preds = %.lr.ph334.i.preheader, %.lr.ph334.i.prol
  %.1603332.i.prol = phi i32 [ %i.abm, %.lr.ph334.i.prol ], [ %.0602.lcssa.i, %.lr.ph334.i.preheader ]
  %.1605331.i.prol = phi ptr [ %i.abl, %.lr.ph334.i.prol ], [ %.0604.lcssa.i, %.lr.ph334.i.preheader ] ; 2 uses
  %i.abh = phi <2 x float> [ %i.abk, %.lr.ph334.i.prol ], [ %i.abg, %.lr.ph334.i.preheader ]
  %prol.iter313 = phi i32 [ %prol.iter313.next, %.lr.ph334.i.prol ], [ 0, %.lr.ph334.i.preheader ]
  %i.abi = load <2 x float>, ptr %.1605331.i.prol, align 4, !tbaa !68
  %i.abj = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.abi)
  %i.abk = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abh, <2 x float> %i.abj) ; 3 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.1605331.i.prol, i64 %i.l ; 2 uses
  %i.abm = add nuw nsw i32 %.1603332.i.prol, 1    ; 2 uses
  %prol.iter313.next = add i32 %prol.iter313, 1   ; 2 uses
  %prol.iter313.cmp.not = icmp eq i32 %prol.iter313.next, %xtraiter311
  br i1 %prol.iter313.cmp.not, label %.lr.ph334.i.prol.loopexit, label %.lr.ph334.i.prol, !llvm.loop !1080

.lr.ph334.i.prol.loopexit:                        ; preds = %.lr.ph334.i.prol, %.lr.ph334.i.preheader
  %.lcssa240.unr = phi <2 x float> [ poison, %.lr.ph334.i.preheader ], [ %i.abk, %.lr.ph334.i.prol ]
  %.1603332.i.unr = phi i32 [ %.0602.lcssa.i, %.lr.ph334.i.preheader ], [ %i.abm, %.lr.ph334.i.prol ]
  %.1605331.i.unr = phi ptr [ %.0604.lcssa.i, %.lr.ph334.i.preheader ], [ %i.abl, %.lr.ph334.i.prol ]
  %.unr = phi <2 x float> [ %i.abg, %.lr.ph334.i.preheader ], [ %i.abk, %.lr.ph334.i.prol ]
  %i.abn = sub i32 %.0602.lcssa.i, %i.m
  %i.abo = icmp ugt i32 %i.abn, -4
  br i1 %i.abo, label %._crit_edge335.i, label %.lr.ph334.i

.lr.ph334.i:                                      ; preds = %.lr.ph334.i.prol.loopexit, %.lr.ph334.i
  %.1603332.i = phi i32 [ %i.acg, %.lr.ph334.i ], [ %.1603332.i.unr, %.lr.ph334.i.prol.loopexit ]
  %.1605331.i = phi ptr [ %i.acf, %.lr.ph334.i ], [ %.1605331.i.unr, %.lr.ph334.i.prol.loopexit ] ; 2 uses
  %i.abp = phi <2 x float> [ %i.ace, %.lr.ph334.i ], [ %.unr, %.lr.ph334.i.prol.loopexit ]
  %i.abq = load <2 x float>, ptr %.1605331.i, align 4, !tbaa !68
  %i.abr = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.abq)
  %i.abs = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abp, <2 x float> %i.abr)
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %.1605331.i, i64 %i.l ; 2 uses
  %i.abu = load <2 x float>, ptr %i.abt, align 4, !tbaa !68
  %i.abv = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.abu)
  %i.abw = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abs, <2 x float> %i.abv)
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abt, i64 %i.l ; 2 uses
  %i.aby = load <2 x float>, ptr %i.abx, align 4, !tbaa !68
  %i.abz = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aby)
  %i.aca = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.abw, <2 x float> %i.abz)
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.abx, i64 %i.l ; 2 uses
  %i.acc = load <2 x float>, ptr %i.acb, align 4, !tbaa !68
  %i.acd = tail call fast <2 x float> @llvm.fabs.v2f32(<2 x float> %i.acc)
  %i.ace = tail call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.aca, <2 x float> %i.acd) ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.acb, i64 %i.l
  %i.acg = add nuw nsw i32 %.1603332.i, 4         ; 2 uses
  %exitcond442.not.i.3 = icmp eq i32 %i.acg, %i.m
  br i1 %exitcond442.not.i.3, label %._crit_edge335.i, label %.lr.ph334.i, !llvm.loop !1081

._crit_edge335.i:                                 ; preds = %.lr.ph334.i.prol.loopexit, %.lr.ph334.i, %._crit_edge324.i
  %i.ach = phi <2 x float> [ %i.abg, %._crit_edge324.i ], [ %.lcssa240.unr, %.lr.ph334.i.prol.loopexit ], [ %i.ace, %.lr.ph334.i ] ; 2 uses
  %i.aci = fdiv fast <2 x float> splat (float 1.270000e+02), %i.ach
  store <2 x float> %i.aci, ptr %.22340.i, align 4, !tbaa !68
  %i.acj = fmul fast <2 x float> %i.ach, splat (float f0x3C010204)
  %i.ack = fmul fast <2 x float> %i.acj, %i.vh
  store <2 x float> %i.ack, ptr %.22640339.i, align 4, !tbaa !68
  %i.acl = getelementptr inbounds nuw i8, ptr %.22340.i, i64 8 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %.22640339.i, i64 8 ; 2 uses
  %indvars.iv.next444.i = add nuw nsw i64 %indvars.iv443.i, 2 ; 2 uses
  %i.acn = trunc i64 %indvars.iv.next444.i to i32 ; 2 uses
  %i.aco = or i32 %i.acn, 1
  %i.acp = icmp slt i32 %i.aco, %i.r
  br i1 %i.acp, label %bb.t, label %.preheader.i, !llvm.loop !1082

bb.u:                                             ; preds = %._crit_edge359.i, %.lr.ph364.i
  %.23363.i = phi ptr [ %.22.lcssa.i, %.lr.ph364.i ], [ %i.aet, %._crit_edge359.i ] ; 2 uses
  %.23363.i.a = phi ptr [ %.22640.lcssa.i, %.lr.ph364.i ], [ %i.aeu, %._crit_edge359.i ] ; 2 uses
  %.6658361.i = phi i32 [ %.5657.lcssa.i, %.lr.ph364.i ], [ %5, %._crit_edge359.i ] ; 2 uses
  %4 = zext nneg i32 %.6658361.i to i64
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.za, i64 %4 ; 3 uses
  br i1 %i.zf, label %.lr.ph349.i.preheader, label %._crit_edge350.i

.lr.ph349.i.preheader:                            ; preds = %bb.u
  br i1 %i.zk, label %.lr.ph349.i.epil.preheader, label %.lr.ph349.i

.lr.ph349.i:                                      ; preds = %.lr.ph349.i.preheader, %.lr.ph349.i
  %.0600346.i = phi ptr [ %i.adg, %.lr.ph349.i ], [ %i.acq, %.lr.ph349.i.preheader ] ; 2 uses
  %.090345.i = phi <16 x float> [ %i.adf, %.lr.ph349.i ], [ zeroinitializer, %.lr.ph349.i.preheader ]
  %niter320 = phi i32 [ %niter320.next.3, %.lr.ph349.i ], [ 0, %.lr.ph349.i.preheader ]
  %i.acr = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0600346.i, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.acs = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.acr)
  %i.act = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.090345.i, <16 x float> nofpclass(nan inf) %i.acs, i32 4)
  %i.acu = getelementptr inbounds nuw i8, ptr %.0600346.i, i64 %.idx.i ; 2 uses
  %i.acv = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.acu, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.acw = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.acv)
  %i.acx = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.act, <16 x float> nofpclass(nan inf) %i.acw, i32 4)
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acu, i64 %.idx.i ; 2 uses
  %i.acz = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.acy, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.ada = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.acz)
  %i.adb = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.acx, <16 x float> nofpclass(nan inf) %i.ada, i32 4)
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acy, i64 %.idx.i ; 2 uses
  %i.add = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %i.adc, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.ade = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.add)
  %i.adf = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.adb, <16 x float> nofpclass(nan inf) %i.ade, i32 4) ; 3 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adc, i64 %.idx.i ; 3 uses
  %niter320.next.3 = add i32 %niter320, 4         ; 2 uses
  %niter320.ncmp.3.not = icmp eq i32 %niter320.next.3, %unroll_iter319
  br i1 %niter320.ncmp.3.not, label %._crit_edge350.i.loopexit.unr-lcssa, label %.lr.ph349.i, !llvm.loop !1083

._crit_edge350.i.loopexit.unr-lcssa:              ; preds = %.lr.ph349.i
  br i1 %lcmp.mod315.not, label %._crit_edge350.i, label %.lr.ph349.i.epil.preheader

.lr.ph349.i.epil.preheader:                       ; preds = %._crit_edge350.i.loopexit.unr-lcssa, %.lr.ph349.i.preheader
  %.0600346.i.epil.init = phi ptr [ %i.acq, %.lr.ph349.i.preheader ], [ %i.adg, %._crit_edge350.i.loopexit.unr-lcssa ]
  %.090345.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph349.i.preheader ], [ %i.adf, %._crit_edge350.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod318)
  br label %.lr.ph349.i.epil

.lr.ph349.i.epil:                                 ; preds = %.lr.ph349.i.epil, %.lr.ph349.i.epil.preheader
  %.0600346.i.epil = phi ptr [ %i.adk, %.lr.ph349.i.epil ], [ %.0600346.i.epil.init, %.lr.ph349.i.epil.preheader ] ; 2 uses
  %.090345.i.epil = phi <16 x float> [ %i.adj, %.lr.ph349.i.epil ], [ %.090345.i.epil.init, %.lr.ph349.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph349.i.epil ], [ 0, %.lr.ph349.i.epil.preheader ]
  %i.adh = tail call fast <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float> zeroinitializer, ptr %.0600346.i.epil, <16 x i32> %i.ze, <16 x i1> splat (i1 true), i32 4)
  %i.adi = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.adh)
  %i.adj = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.090345.i.epil, <16 x float> nofpclass(nan inf) %i.adi, i32 4) ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %.0600346.i.epil, i64 %.idx.i ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter314
  br i1 %epil.iter.cmp.not, label %._crit_edge350.i, label %.lr.ph349.i.epil, !llvm.loop !1084

._crit_edge350.i:                                 ; preds = %._crit_edge350.i.loopexit.unr-lcssa, %.lr.ph349.i.epil, %bb.u
  %.090.lcssa.i = phi <16 x float> [ zeroinitializer, %bb.u ], [ %i.adf, %._crit_edge350.i.loopexit.unr-lcssa ], [ %i.adj, %.lr.ph349.i.epil ] ; 2 uses
  %.0600.lcssa.i = phi ptr [ %i.acq, %bb.u ], [ %i.adg, %._crit_edge350.i.loopexit.unr-lcssa ], [ %i.adk, %.lr.ph349.i.epil ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.u ], [ %i.zg, %.lr.ph349.i.epil ], [ %i.zg, %._crit_edge350.i.loopexit.unr-lcssa ] ; 4 uses
  %i.adl = shufflevector <16 x float> %.090.lcssa.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adm = shufflevector <16 x float> %.090.lcssa.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.adn = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.adl, <8 x float> nofpclass(nan inf) %i.adm) ; 2 uses
  %i.ado = shufflevector <8 x float> %i.adn, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.adp = shufflevector <8 x float> %i.adn, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.adq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ado, <4 x float> nofpclass(nan inf) %i.adp) ; 2 uses
  %i.adr = shufflevector <4 x float> %i.adq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.ads = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.adq, <4 x float> nofpclass(nan inf) %i.adr) ; 2 uses
  %i.adt = shufflevector <4 x float> %i.ads, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.adu = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ss(<4 x float> nofpclass(nan inf) %i.ads, <4 x float> nofpclass(nan inf) %i.adt)
  %i.adv = extractelement <4 x float> %i.adu, i64 0 ; 3 uses
  %i.adw = icmp slt i32 %.0.lcssa.i, %i.m
  br i1 %i.adw, label %.lr.ph358.i.preheader, label %._crit_edge359.i

.lr.ph358.i.preheader:                            ; preds = %._crit_edge350.i
  br i1 %lcmp.mod322.not, label %.lr.ph358.i.prol.loopexit, label %.lr.ph358.i.prol

.lr.ph358.i.prol:                                 ; preds = %.lr.ph358.i.preheader, %.lr.ph358.i.prol
  %.1356.i.prol = phi i32 [ %i.aea, %.lr.ph358.i.prol ], [ %.0.lcssa.i, %.lr.ph358.i.preheader ]
  %.1601355.i.prol = phi ptr [ %i.adz, %.lr.ph358.i.prol ], [ %.0600.lcssa.i, %.lr.ph358.i.preheader ] ; 2 uses
  %.091354.i.prol = phi float [ %.sroa.speculated.i.prol, %.lr.ph358.i.prol ], [ %i.adv, %.lr.ph358.i.preheader ]
  %prol.iter323 = phi i32 [ %prol.iter323.next, %.lr.ph358.i.prol ], [ 0, %.lr.ph358.i.preheader ]
  %i.adx = load float, ptr %.1601355.i.prol, align 4, !tbaa !68
  %i.ady = tail call fast float @llvm.fabs.f32(float %i.adx)
  %.sroa.speculated.i.prol = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.091354.i.prol, float %i.ady) ; 3 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %.1601355.i.prol, i64 %i.l ; 2 uses
  %i.aea = add nuw nsw i32 %.1356.i.prol, 1       ; 2 uses
  %prol.iter323.next = add i32 %prol.iter323, 1   ; 2 uses
  %prol.iter323.cmp.not = icmp eq i32 %prol.iter323.next, %xtraiter321
  br i1 %prol.iter323.cmp.not, label %.lr.ph358.i.prol.loopexit, label %.lr.ph358.i.prol, !llvm.loop !1085

.lr.ph358.i.prol.loopexit:                        ; preds = %.lr.ph358.i.prol, %.lr.ph358.i.preheader
  %.sroa.speculated.i.lcssa.unr = phi float [ poison, %.lr.ph358.i.preheader ], [ %.sroa.speculated.i.prol, %.lr.ph358.i.prol ]
  %.1356.i.unr = phi i32 [ %.0.lcssa.i, %.lr.ph358.i.preheader ], [ %i.aea, %.lr.ph358.i.prol ]
  %.1601355.i.unr = phi ptr [ %.0600.lcssa.i, %.lr.ph358.i.preheader ], [ %i.adz, %.lr.ph358.i.prol ]
  %.091354.i.unr = phi float [ %i.adv, %.lr.ph358.i.preheader ], [ %.sroa.speculated.i.prol, %.lr.ph358.i.prol ]
  %i.aeb = sub i32 %.0.lcssa.i, %i.m
  %i.aec = icmp ugt i32 %i.aeb, -4
  br i1 %i.aec, label %._crit_edge359.i, label %.lr.ph358.i

.lr.ph358.i:                                      ; preds = %.lr.ph358.i.prol.loopexit, %.lr.ph358.i
  %.1356.i = phi i32 [ %i.aep, %.lr.ph358.i ], [ %.1356.i.unr, %.lr.ph358.i.prol.loopexit ]
  %.1601355.i = phi ptr [ %i.aeo, %.lr.ph358.i ], [ %.1601355.i.unr, %.lr.ph358.i.prol.loopexit ] ; 2 uses
  %.091354.i = phi float [ %.sroa.speculated.i.3, %.lr.ph358.i ], [ %.091354.i.unr, %.lr.ph358.i.prol.loopexit ]
  %i.aed = load float, ptr %.1601355.i, align 4, !tbaa !68
  %i.aee = tail call fast float @llvm.fabs.f32(float %i.aed)
  %.sroa.speculated.i = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.091354.i, float %i.aee)
  %i.aef = getelementptr inbounds nuw [4 x i8], ptr %.1601355.i, i64 %i.l ; 2 uses
  %i.aeg = load float, ptr %i.aef, align 4, !tbaa !68
  %i.aeh = tail call fast float @llvm.fabs.f32(float %i.aeg)
  %.sroa.speculated.i.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.i, float %i.aeh)
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aef, i64 %i.l ; 2 uses
  %i.aej = load float, ptr %i.aei, align 4, !tbaa !68
  %i.aek = tail call fast float @llvm.fabs.f32(float %i.aej)
  %.sroa.speculated.i.2 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.i.1, float %i.aek)
  %i.ael = getelementptr inbounds nuw [4 x i8], ptr %i.aei, i64 %i.l ; 2 uses
  %i.aem = load float, ptr %i.ael, align 4, !tbaa !68
  %i.aen = tail call fast float @llvm.fabs.f32(float %i.aem)
  %.sroa.speculated.i.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated.i.2, float %i.aen) ; 2 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %i.l
  %i.aep = add nuw nsw i32 %.1356.i, 4            ; 2 uses
  %exitcond446.not.i.3 = icmp eq i32 %i.aep, %i.m
  br i1 %exitcond446.not.i.3, label %._crit_edge359.i, label %.lr.ph358.i, !llvm.loop !1086

._crit_edge359.i:                                 ; preds = %.lr.ph358.i.prol.loopexit, %.lr.ph358.i, %._crit_edge350.i
  %.091.lcssa.i = phi float [ %i.adv, %._crit_edge350.i ], [ %.sroa.speculated.i.lcssa.unr, %.lr.ph358.i.prol.loopexit ], [ %.sroa.speculated.i.3, %.lr.ph358.i ] ; 2 uses
  %i.aeq = fdiv fast float 1.270000e+02, %.091.lcssa.i
  store float %i.aeq, ptr %.23363.i, align 4, !tbaa !68
  %i.aer = fmul fast float %.091.lcssa.i, f0x3C010204
  %i.aes = fmul fast float %i.aer, %i.zl
  store float %i.aes, ptr %.23363.i.a, align 4, !tbaa !68
  %i.aet = getelementptr inbounds nuw i8, ptr %.23363.i, i64 4
  %i.aeu = getelementptr inbounds nuw i8, ptr %.23363.i.a, i64 4
  %5 = add nsw i32 %.6658361.i, 1                 ; 2 uses
  %exitcond450.not.i = icmp eq i32 %5, %i.r
  br i1 %exitcond450.not.i, label %_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit, label %bb.u, !llvm.loop !1087

_ZN4ncnnL41transpose_compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit: ; preds = %._crit_edge359.i, %.preheader.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL26compute_A_tile_int8_scalesERKNS_3MatERS0_fS3_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly captures(none) %.0.val, float noundef nofpclass(nan inf) %1, ptr nofree writeonly captures(none) %.0.val1, i32 noundef %2, i32 noundef %3) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !87
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j
  %i.l = sdiv i32 %3, %i.b                        ; 2 uses
  %i.m = mul i32 %i.i, %i.b                       ; 10 uses
  %.scalar.i = fdiv fast float f0x3C010204, %1    ; 3 uses
  %i.n = insertelement <4 x float> poison, float %.scalar.i, i64 0
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> zeroinitializer
  %i.p = insertelement <8 x float> poison, float %.scalar.i, i64 0
  %i.q = shufflevector <8 x float> %i.p, <8 x float> poison, <8 x i32> zeroinitializer
  %i.r = insertelement <16 x float> poison, float %.scalar.i, i64 0
  %i.s = shufflevector <16 x float> %i.r, <16 x float> poison, <16 x i32> zeroinitializer
  %i.t = icmp sgt i32 %i.l, 0
  br i1 %i.t, label %.lr.ph89.i, label %_ZN4ncnnL31compute_A_tile_fp32_int8_scalesERKNS_3MatERS0_fS3_ii.exit

.lr.ph89.i:                                       ; preds = %bb.a
  %i.u = sext i32 %2 to i64                       ; 3 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %.0.val1, i64 %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %.0.val, i64 %i.u
  %i.x = icmp sgt i32 %i.m, 15
  %i.y = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.z = icmp eq i32 %i.y, 1
  %i.aa = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  %i.ab = and i32 %i.m, -16                       ; 2 uses
  %i.ac = sext i32 %i.b to i64
  %wide.trip.count.i = zext nneg i32 %i.l to i64
  %i.ad = add i32 %i.m, -16                       ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = add nuw nsw i32 %i.ae, 1                ; 2 uses
  %xtraiter = and i32 %i.af, 3                    ; 3 uses
  %i.ag = icmp ult i32 %i.ad, 48
  %unroll_iter = and i32 %i.af, 536870908
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod68 = icmp ne i32 %xtraiter, 0
  %i.ah = fdiv fast float 1.000000e+00, %1
  br label %bb.b

bb.b:                                             ; preds = %.thread54.i, %.lr.ph89.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph89.i ], [ %indvars.iv.next.i, %.thread54.i ] ; 2 uses
  %.087.i = phi ptr [ %i.w, %.lr.ph89.i ], [ %.4.i, %.thread54.i ] ; 10 uses
  %.08286.i = phi ptr [ %i.v, %.lr.ph89.i ], [ %.486.i, %.thread54.i ] ; 10 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !18
  %i.aj = mul nsw i64 %indvars.iv.i, %i.ac
  %i.ak = add nsw i64 %i.aj, %i.u
  %i.al = mul i64 %i.ak, %i.k
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.al ; 3 uses
  br i1 %i.x, label %.lr.ph.i.preheader, label %.preheader60.i

.lr.ph.i.preheader:                               ; preds = %bb.b
  br i1 %i.ag, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

.preheader60.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %.preheader60.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader60.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.09162.i.epil.init = phi ptr [ %i.am, %.lr.ph.i.preheader ], [ %i.bn, %.preheader60.i.loopexit.unr-lcssa ]
  %.04061.i.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.bm, %.preheader60.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod68)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.09162.i.epil = phi ptr [ %i.ar, %.lr.ph.i.epil ], [ %.09162.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.04061.i.epil = phi <16 x float> [ %i.aq, %.lr.ph.i.epil ], [ %.04061.i.epil.init, %.lr.ph.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = load <16 x i32>, ptr %.09162.i.epil, align 1, !tbaa !116
  %i.ao = and <16 x i32> %i.an, splat (i32 2147483647)
  %i.ap = bitcast <16 x i32> %i.ao to <16 x float>
  %i.aq = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i.epil, <16 x float> nofpclass(nan inf) %i.ap, i32 4) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.09162.i.epil, i64 64 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader60.i, label %.lr.ph.i.epil, !llvm.loop !1088

.preheader60.i:                                   ; preds = %.preheader60.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.b
  %.040.lcssa.i = phi <16 x float> [ zeroinitializer, %bb.b ], [ %i.bm, %.preheader60.i.loopexit.unr-lcssa ], [ %i.aq, %.lr.ph.i.epil ] ; 8 uses
  %.091.lcssa.i = phi ptr [ %i.am, %bb.b ], [ %i.bn, %.preheader60.i.loopexit.unr-lcssa ], [ %i.ar, %.lr.ph.i.epil ] ; 2 uses
  %.087.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.ab, %.lr.ph.i.epil ], [ %i.ab, %.preheader60.i.loopexit.unr-lcssa ] ; 3 uses
  %i.as = or disjoint i32 %.087.lcssa.i, 7
  %i.at = icmp slt i32 %i.as, %i.m
  br i1 %i.at, label %.lr.ph69.i, label %.preheader59.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.09162.i = phi ptr [ %i.bn, %.lr.ph.i ], [ %i.am, %.lr.ph.i.preheader ] ; 5 uses
  %.04061.i = phi <16 x float> [ %i.bm, %.lr.ph.i ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %niter = phi i32 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.au = load <16 x i32>, ptr %.09162.i, align 1, !tbaa !116
  %i.av = and <16 x i32> %i.au, splat (i32 2147483647)
  %i.aw = bitcast <16 x i32> %i.av to <16 x float>
  %i.ax = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %.04061.i, <16 x float> nofpclass(nan inf) %i.aw, i32 4)
  %i.ay = getelementptr inbounds nuw i8, ptr %.09162.i, i64 64
  %i.az = load <16 x i32>, ptr %i.ay, align 1, !tbaa !116
  %i.ba = and <16 x i32> %i.az, splat (i32 2147483647)
  %i.bb = bitcast <16 x i32> %i.ba to <16 x float>
  %i.bc = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.ax, <16 x float> nofpclass(nan inf) %i.bb, i32 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %.09162.i, i64 128
  %i.be = load <16 x i32>, ptr %i.bd, align 1, !tbaa !116
  %i.bf = and <16 x i32> %i.be, splat (i32 2147483647)
  %i.bg = bitcast <16 x i32> %i.bf to <16 x float>
  %i.bh = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bc, <16 x float> nofpclass(nan inf) %i.bg, i32 4)
  %i.bi = getelementptr inbounds nuw i8, ptr %.09162.i, i64 192
  %i.bj = load <16 x i32>, ptr %i.bi, align 1, !tbaa !116
  %i.bk = and <16 x i32> %i.bj, splat (i32 2147483647)
  %i.bl = bitcast <16 x i32> %i.bk to <16 x float>
  %i.bm = tail call fast noundef nofpclass(nan inf) <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float> nofpclass(nan inf) %i.bh, <16 x float> nofpclass(nan inf) %i.bl, i32 4) ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09162.i, i64 256 ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.preheader60.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1089

.preheader59.i:                                   ; preds = %.lr.ph69.i, %.preheader60.i
  %.041.lcssa.i = phi <8 x float> [ zeroinitializer, %.preheader60.i ], [ %i.bt, %.lr.ph69.i ] ; 4 uses
  %.192.lcssa.i = phi ptr [ %.091.lcssa.i, %.preheader60.i ], [ %i.bu, %.lr.ph69.i ] ; 2 uses
  %.188.lcssa.i = phi i32 [ %.087.lcssa.i, %.preheader60.i ], [ %i.bv, %.lr.ph69.i ] ; 3 uses
  %i.bo = or disjoint i32 %.188.lcssa.i, 3
  %i.bp = icmp slt i32 %i.bo, %i.m
  br i1 %i.bp, label %.lr.ph76.i, label %.preheader.i

.lr.ph69.i:                                       ; preds = %.preheader60.i, %.lr.ph69.i
  %.18868.i = phi i32 [ %i.bv, %.lr.ph69.i ], [ %.087.lcssa.i, %.preheader60.i ]
  %.19267.i = phi ptr [ %i.bu, %.lr.ph69.i ], [ %.091.lcssa.i, %.preheader60.i ] ; 2 uses
  %.04166.i = phi <8 x float> [ %i.bt, %.lr.ph69.i ], [ zeroinitializer, %.preheader60.i ]
  %i.bq = load <8 x i32>, ptr %.19267.i, align 1, !tbaa !116
  %i.br = and <8 x i32> %i.bq, splat (i32 2147483647)
  %i.bs = bitcast <8 x i32> %i.br to <8 x float>
  %i.bt = tail call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.04166.i, <8 x float> nofpclass(nan inf) %i.bs) ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.19267.i, i64 32 ; 2 uses
  %i.bv = add nuw nsw i32 %.18868.i, 8            ; 3 uses
  %i.bw = or disjoint i32 %i.bv, 7
  %i.bx = icmp slt i32 %i.bw, %i.m
  br i1 %i.bx, label %.lr.ph69.i, label %.preheader59.i, !llvm.loop !1090

.preheader.i:                                     ; preds = %.lr.ph76.i, %.preheader59.i
  %.044.lcssa.i = phi <4 x float> [ zeroinitializer, %.preheader59.i ], [ %i.di, %.lr.ph76.i ] ; 3 uses
  %.293.lcssa.i = phi ptr [ %.192.lcssa.i, %.preheader59.i ], [ %i.dj, %.lr.ph76.i ] ; 5 uses
  %.289.lcssa.i = phi i32 [ %.188.lcssa.i, %.preheader59.i ], [ %i.dk, %.lr.ph76.i ] ; 5 uses
  %i.by = icmp slt i32 %.289.lcssa.i, %i.m
  br i1 %i.by, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.bz = xor i32 %.289.lcssa.i, -1
  %i.ca = add i32 %i.m, %i.bz                     ; 3 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %i.cb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.ca, 7
  br i1 %min.iters.check, label %.lr.ph83.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp ult i32 %i.ca, 63
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cd = and i64 %i.cc, 56
  %n.vec = and i64 %i.cc, 8589934528              ; 5 uses
  %i.ce = trunc i64 %n.vec to i32
  %i.cf = add i32 %.289.lcssa.i, %i.ce
  %i.cg = shl nuw nsw i64 %n.vec, 2
  %i.ch = getelementptr i8, ptr %.293.lcssa.i, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cq, %vector.body ]
  %vec.phi33 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cr, %vector.body ]
  %vec.phi34 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.cs, %vector.body ]
  %vec.phi35 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.ct, %vector.body ]
  %i.ci = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.293.lcssa.i, i64 %i.ci ; 4 uses
  %i.cj = getelementptr i8, ptr %next.gep, i64 64
  %i.ck = getelementptr i8, ptr %next.gep, i64 128
  %i.cl = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x float>, ptr %next.gep, align 4, !tbaa !68
  %wide.load36 = load <16 x float>, ptr %i.cj, align 4, !tbaa !68
  %wide.load37 = load <16 x float>, ptr %i.ck, align 4, !tbaa !68
  %wide.load38 = load <16 x float>, ptr %i.cl, align 4, !tbaa !68
  %i.cm = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load)
  %i.cn = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load36)
  %i.co = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load37)
  %i.cp = tail call fast <16 x float> @llvm.fabs.v16f32(<16 x float> %wide.load38)
  %i.cq = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi, <16 x float> %i.cm) ; 2 uses
  %i.cr = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi33, <16 x float> %i.cn) ; 2 uses
  %i.cs = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi34, <16 x float> %i.co) ; 2 uses
  %i.ct = tail call nnan ninf nsz <16 x float> @llvm.maxnum.v16f32(<16 x float> %vec.phi35, <16 x float> %i.cp) ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
end_hunk_0
