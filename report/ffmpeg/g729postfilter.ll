Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g729postfilter?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ff_g729_postfilter:.preheader.preheader
.lr.ph371.i.preheader:                            ; preds = %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block261
  %indvars.iv407.i.ph = phi i64 [ 0, %iter.check249 ], [ %n.vec238, %vec.epilog.iter.check251 ], [ %n.vec254, %vec.epilog.middle.block261 ]
  br label %.lr.ph371.i

.lr.ph371.i:                                      ; preds = %.lr.ph371.i.preheader, %.lr.ph371.i
  %indvars.iv407.i = phi i64 [ %indvars.iv.next408.i, %.lr.ph371.i ], [ %indvars.iv407.i.ph, %.lr.ph371.i.preheader ] ; 2 uses
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %.0226.i, i64 %indvars.iv407.i ; 2 uses
  %i.vb = load i16, ptr %i.va, align 2, !tbaa !10
  %i.vc = zext i16 %i.vb to i32
  %i.vd = shl i32 %i.vc, %.0258423.i
  %i.ve = trunc i32 %i.vd to i16
  store i16 %i.ve, ptr %i.va, align 2, !tbaa !10
  %indvars.iv.next408.i = add nuw nsw i64 %indvars.iv407.i, 1 ; 2 uses
  %exitcond411.not.i = icmp eq i64 %indvars.iv.next408.i, %wide.trip.count410.i
  br i1 %exitcond411.not.i, label %.loopexit.i, label %.lr.ph371.i, !llvm.loop !33

vec.epilog.scalar.ph219:                          ; preds = %vec.epilog.scalar.ph219.preheader, %vec.epilog.scalar.ph219
  %indvars.iv402.i = phi i64 [ %indvars.iv.next403.i, %vec.epilog.scalar.ph219 ], [ %indvars.iv402.i.ph, %vec.epilog.scalar.ph219.preheader ] ; 2 uses
  %i.vf = getelementptr inbounds nuw [2 x i8], ptr %.0226.i, i64 %indvars.iv402.i ; 2 uses
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !10
  %i.vh = sext i16 %i.vg to i32
  %i.vi = ashr i32 %i.vh, %i.tv
  %i.vj = trunc nsw i32 %i.vi to i16
  store i16 %i.vj, ptr %i.vf, align 2, !tbaa !10
  %indvars.iv.next403.i = add nuw nsw i64 %indvars.iv402.i, 1 ; 2 uses
  %exitcond406.not.i = icmp eq i64 %indvars.iv.next403.i, %wide.trip.count405.i
  br i1 %exitcond406.not.i, label %.loopexit.i, label %vec.epilog.scalar.ph219, !llvm.loop !34

bb.t:                                             ; preds = %bb.k
  %i.vk = xor i16 %spec.select297.i, -1
  %.neg295.i = sext i16 %i.vk to i64
  %i.vl = zext nneg i16 %.2.1.i to i64
  %i.vm = getelementptr [2 x i8], ptr %i.cq, i64 %.neg295.i
  %i.vn = getelementptr [2 x i8], ptr %i.vm, i64 %i.vl
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vec.epilog.scalar.ph219, %.lr.ph371.i, %middle.block215, %vec.epilog.middle.block230, %middle.block246, %vec.epilog.middle.block261, %bb.t, %.preheader.i46, %.preheader335.i
  %.5255.i = phi i16 [ %.2252.1.i, %bb.t ], [ %.4254.i, %.preheader.i46 ], [ %.4254.i, %.preheader335.i ], [ %.4254.i, %middle.block246 ], [ %.4254.i, %middle.block215 ], [ %.4254.i, %vec.epilog.middle.block261 ], [ %.4254.i, %.lr.ph371.i ], [ %.4254.i, %vec.epilog.middle.block230 ], [ %.4254.i, %vec.epilog.scalar.ph219 ]
  %.5.i = phi i16 [ %.2248.1.i, %bb.t ], [ %.4.i, %.preheader.i46 ], [ %.4.i, %.preheader335.i ], [ %.4.i, %middle.block246 ], [ %.4.i, %middle.block215 ], [ %.4.i, %vec.epilog.middle.block261 ], [ %.4.i, %.lr.ph371.i ], [ %.4.i, %vec.epilog.middle.block230 ], [ %.4.i, %vec.epilog.scalar.ph219 ]
  %.2245.i = phi i16 [ %i.ra, %bb.t ], [ %.1244.i, %.preheader.i46 ], [ %.1244.i, %.preheader335.i ], [ %.1244.i, %middle.block246 ], [ %.1244.i, %middle.block215 ], [ %.1244.i, %vec.epilog.middle.block261 ], [ %.1244.i, %.lr.ph371.i ], [ %.1244.i, %vec.epilog.middle.block230 ], [ %.1244.i, %vec.epilog.scalar.ph219 ]
  %.2242.i = phi i16 [ %i.ow, %bb.t ], [ %.1241.i, %.preheader.i46 ], [ %.1241.i, %.preheader335.i ], [ %.1241.i, %middle.block246 ], [ %.1241.i, %middle.block215 ], [ %.1241.i, %vec.epilog.middle.block261 ], [ %.1241.i, %.lr.ph371.i ], [ %.1241.i, %vec.epilog.middle.block230 ], [ %.1241.i, %vec.epilog.scalar.ph219 ]
  %.0.i = phi ptr [ %i.vn, %bb.t ], [ %.0226.i, %.preheader.i46 ], [ %.0226.i, %.preheader335.i ], [ %.0226.i, %middle.block246 ], [ %.0226.i, %middle.block215 ], [ %.0226.i, %vec.epilog.middle.block261 ], [ %.0226.i, %.lr.ph371.i ], [ %.0226.i, %vec.epilog.middle.block230 ], [ %.0226.i, %vec.epilog.scalar.ph219 ]
  %i.vo = sext i16 %.5255.i to i64
  %i.vp = zext nneg i16 %.2245.i to i64
  %i.vq = shl i64 %i.vo, %i.vp
  %i.vr = ashr i64 %i.vq, 1
  %i.vs = sext i16 %.5.i to i64
  %i.vt = sext i16 %.2242.i to i64
  %i.vu = and i64 %i.vt, 4294967295
  %i.vv = shl i64 %i.vs, %i.vu                    ; 2 uses
  %i.vw = shl i64 %i.vv, 15
  %i.vx = add nsw i64 %i.vv, %i.vr
  %i.vy = sdiv i64 %i.vw, %i.vx
  %spec.select300334.i = call i64 @llvm.smax.i64(i64 %i.vy, i64 21845)
  %spec.select300.i = trunc i64 %spec.select300334.i to i16 ; 2 uses
  %i.vz = sub i16 -32768, %spec.select300.i
  call void @ff_acelp_weighted_vector_sum(ptr noundef nonnull %i.jf, ptr noundef nonnull %i.cq, ptr noundef %.0.i, i16 noundef signext %spec.select300.i, i16 noundef signext %i.vz, i16 noundef signext 16384, i32 noundef 15, i32 noundef %9) #7
  br label %long_term_filter.exit

long_term_filter.exit:                            ; preds = %.thread.i, %.loopexit.i
  %.0272.i = phi i32 [ 1, %.loopexit.i ], [ 0, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.wa = load i32, ptr %2, align 4, !tbaa !51
  %. = call i32 @llvm.smax.i32(i32 %i.wa, i32 %.0272.i)
  store i32 %., ptr %2, align 4, !tbaa !51
  %i.wb = getelementptr inbounds [2 x i8], ptr %5, i64 %i.jg
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(304) %5, ptr noundef nonnull align 2 dereferenceable(304) %i.wb, i64 304, i1 false)
  %i.wc = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 5 uses
  store i16 4096, ptr %i.wc, align 4, !tbaa !10
  %i.wd = call i32 @ff_celp_lp_synthesis_filter(ptr noundef nonnull %i.n, ptr noundef nonnull %i.at, ptr noundef nonnull %i.n, i32 noundef 22, i32 noundef 10, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #7 ; 0 uses
  %i.we = load ptr, ptr %0, align 8, !tbaa !50
  %i.wf = call i32 %i.we(ptr noundef nonnull %i.wc, ptr noundef nonnull %i.wc, i32 noundef 20) #7, !inline_history !35 ; 4 uses
  %i.wg = load ptr, ptr %0, align 8, !tbaa !50
  %i.wh = call i32 %i.wg(ptr noundef nonnull %i.wc, ptr noundef nonnull %i.n, i32 noundef 20) #7, !inline_history !35
  %.not.i.i49 = icmp ult i32 %i.wf, 65536         ; 2 uses
  %i.wi = lshr i32 %i.wf, 16
  %spec.select.i.i50 = select i1 %.not.i.i49, i32 %i.wf, i32 %i.wi ; 3 uses
  %spec.select12.i.i51 = select i1 %.not.i.i49, i32 0, i32 16 ; 2 uses
  %.not11.i.i52 = icmp samesign ult i32 %spec.select.i.i50, 256 ; 2 uses
  %i.wj = lshr i32 %spec.select.i.i50, 8
  %i.wk = or disjoint i32 %spec.select12.i.i51, 8
  %.110.i.i53 = select i1 %.not11.i.i52, i32 %spec.select.i.i50, i32 %i.wj
  %.1.i.i54 = select i1 %.not11.i.i52, i32 %spec.select12.i.i51, i32 %i.wk
  %i.wl = zext nneg i32 %.110.i.i53 to i64
  %i.wm = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.wl
  %i.wn = load i8, ptr %i.wm, align 1, !tbaa !12
  %i.wo = zext i8 %i.wn to i32
  %i.wp = add nuw nsw i32 %.1.i.i54, %i.wo
  %i.wq = call i32 @llvm.usub.sat.i32(i32 %i.wp, i32 14) ; 2 uses
  %.046.i = ashr i32 %i.wh, %i.wq                 ; 2 uses
  %.045.i = ashr i32 %i.wf, %i.wq                 ; 3 uses
  %i.wr = call i32 @llvm.abs.i32(i32 %.046.i, i1 true)
  %i.ws = icmp sle i32 %i.wr, %.045.i
  %i.wt = icmp ne i32 %.045.i, 0
  %or.cond.i55 = and i1 %i.wt, %i.ws
  br i1 %or.cond.i55, label %.preheader.preheader.i56, label %get_tilt_comp.exit

.preheader.preheader.i56:                         ; preds = %long_term_filter.exit
  %i.wu = load <20 x i16>, ptr %i.wc, align 4, !tbaa !10
  %i.wv = call <20 x i16> @llvm.abs.v20i16(<20 x i16> %i.wu, i1 false)
  %i.ww = zext <20 x i16> %i.wv to <20 x i32>
  %i.wx = call i32 @llvm.vector.reduce.add.v20i32(<20 x i32> %i.ww) ; 2 uses
  %i.wy = icmp samesign ugt i32 %i.wx, 4099
  br i1 %i.wy, label %bb.u, label %.loopexit.i57

bb.u:                                             ; preds = %.preheader.preheader.i56
  %i.wz = lshr i32 %i.wx, 2
  %i.xa = udiv i32 33554432, %i.wz                ; 2 uses
  br i1 %i.cr, label %.lr.ph.preheader.i59, label %.loopexit.i57

.lr.ph.preheader.i59:                             ; preds = %bb.u
  %wide.trip.count.i60 = zext nneg i32 %9 to i64  ; 3 uses
  %min.iters.check265 = icmp ult i32 %9, 8
  br i1 %min.iters.check265, label %.lr.ph.i61.preheader, label %vector.ph266

vector.ph266:                                     ; preds = %.lr.ph.preheader.i59
  %n.vec267 = and i64 %wide.trip.count.i60, 2147483640 ; 3 uses
  %broadcast.splatinsert268 = insertelement <8 x i32> poison, i32 %i.xa, i64 0
  %broadcast.splat269 = shufflevector <8 x i32> %broadcast.splatinsert268, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph266
  %index271 = phi i64 [ 0, %vector.ph266 ], [ %index.next273, %vector.body270 ] ; 2 uses
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %index271 ; 2 uses
  %wide.load272 = load <8 x i16>, ptr %i.xb, align 2, !tbaa !10
  %i.xc = sext <8 x i16> %wide.load272 to <8 x i32>
  %i.xd = mul nsw <8 x i32> %broadcast.splat269, %i.xc
  %i.xe = add nsw <8 x i32> %i.xd, splat (i32 16384)
  %i.xf = lshr <8 x i32> %i.xe, splat (i32 15)
  %i.xg = trunc <8 x i32> %i.xf to <8 x i16>
  store <8 x i16> %i.xg, ptr %i.xb, align 2, !tbaa !10
  %index.next273 = add nuw i64 %index271, 8       ; 2 uses
  %i.xh = icmp eq i64 %index.next273, %n.vec267
  br i1 %i.xh, label %middle.block274, label %vector.body270, !llvm.loop !36

middle.block274:                                  ; preds = %vector.body270
  %cmp.n275 = icmp eq i64 %n.vec267, %wide.trip.count.i60
  br i1 %cmp.n275, label %.loopexit.i57, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i59, %middle.block274
  %indvars.iv.i62.ph = phi i64 [ 0, %.lr.ph.preheader.i59 ], [ %n.vec267, %middle.block274 ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i63, %.lr.ph.i61 ], [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [2 x i8], ptr %i.jf, i64 %indvars.iv.i62 ; 2 uses
  %i.xj = load i16, ptr %i.xi, align 2, !tbaa !10
  %i.xk = sext i16 %i.xj to i32
  %i.xl = mul nsw i32 %i.xa, %i.xk
  %i.xm = add nsw i32 %i.xl, 16384
  %i.xn = lshr i32 %i.xm, 15
  %i.xo = trunc i32 %i.xn to i16
  store i16 %i.xo, ptr %i.xi, align 2, !tbaa !10
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count.i60
  br i1 %exitcond.not.i64, label %.loopexit.i57, label %.lr.ph.i61, !llvm.loop !37

.loopexit.i57:                                    ; preds = %.lr.ph.i61, %middle.block274, %bb.u, %.preheader.preheader.i56
  %.neg.i58 = mul nsw i32 %.046.i, -32768
  %i.xp = sdiv i32 %.neg.i58, %.045.i
  %sext = shl i32 %i.xp, 16
  %i.xq = ashr exact i32 %sext, 16
  br label %get_tilt_comp.exit

get_tilt_comp.exit:                               ; preds = %long_term_filter.exit, %.loopexit.i57
  %.047.i = phi i32 [ %i.xq, %.loopexit.i57 ], [ 0, %long_term_filter.exit ] ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 5 uses
  %i.xs = call i32 @ff_celp_lp_synthesis_filter(ptr noundef nonnull %i.xr, ptr noundef nonnull %i.at, ptr noundef nonnull %i.jf, i32 noundef %9, i32 noundef 10, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #7 ; 0 uses
  %i.xt = getelementptr inbounds [2 x i8], ptr %7, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, ptr noundef nonnull align 2 dereferenceable(20) %i.xt, i64 20, i1 false)
  %i.xu = load i16, ptr %1, align 2, !tbaa !10
  %i.xv = icmp sgt i32 %.047.i, 0
  br i1 %i.xv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %get_tilt_comp.exit
  %i.xw = mul nuw nsw i32 %.047.i, 6554
  %i.xx = add nuw nsw i32 %i.xw, 16384
  %i.xy = lshr i32 %i.xx, 15
  br label %bb.x

bb.w:                                             ; preds = %get_tilt_comp.exit
  %i.xz = mul nsw i32 %.047.i, 29491
  %i.ya = add nsw i32 %i.xz, 16384
  %i.yb = ashr i32 %i.ya, 15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.037.i = phi i32 [ %i.xy, %bb.v ], [ %i.yb, %bb.w ] ; 4 uses
  %.036.i = phi i32 [ 8192, %bb.v ], [ 1024, %bb.w ] ; 4 uses
  %.0.i65 = phi i32 [ 14, %bb.v ], [ 11, %bb.w ]  ; 3 uses
  %i.yc = shl nuw nsw i32 %.036.i, 16
  %i.yd = call i32 @llvm.abs.i32(i32 %.037.i, i1 true)
  %i.ye = icmp eq i32 %.037.i, 0
  %i.yf = shl nuw nsw i32 %i.yd, 16
  %sext.i66 = sub nuw i32 -2147483648, %i.yf
  %i.yg = ashr exact i32 %sext.i66, 16
  %i.yh = select i1 %i.ye, i32 32767, i32 %i.yg
  %i.yi = sdiv i32 %i.yc, %i.yh                   ; 3 uses
  %i.yj = add nsw i32 %9, -1                      ; 2 uses
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [2 x i8], ptr %i.xr, i64 %i.yk
  %i.ym = load i16, ptr %i.yl, align 2, !tbaa !10
  %i.yn = icmp sgt i32 %9, 1
  br i1 %i.yn, label %.lr.ph.i68, label %apply_tilt_comp.exit

.lr.ph.i68:                                       ; preds = %bb.x
  %i.yo = and i32 %.037.i, -2                     ; 2 uses
  %i.yp = zext i32 %i.yj to i64                   ; 5 uses
  %i.yq = zext nneg i32 %9 to i64
  %i.yr = add nsw i64 %i.yq, -1                   ; 2 uses
  %min.iters.check286 = icmp ult i32 %9, 9
  br i1 %min.iters.check286, label %scalar.ph285.preheader, label %vector.memcheck277

vector.memcheck277:                               ; preds = %.lr.ph.i68
  %scevgep278 = getelementptr i8, ptr %8, i64 2
  %i.ys = shl nuw nsw i64 %i.yp, 1                ; 2 uses
  %scevgep279.a = getelementptr i8, ptr %8, i64 %i.ys
  %i.yt = getelementptr i8, ptr %scevgep279.a, i64 2
  %scevgep280 = getelementptr i8, ptr %7, i64 20
  %i.yu = getelementptr i8, ptr %7, i64 %i.ys
  %scevgep281 = getelementptr i8, ptr %i.yu, i64 22
  %bound0282 = icmp ult ptr %scevgep278, %scevgep281
  %bound1283 = icmp ult ptr %scevgep280, %i.yt
  %found.conflict284 = and i1 %bound0282, %bound1283
  br i1 %found.conflict284, label %scalar.ph285.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %vector.memcheck277
  %n.vec288 = and i64 %i.yr, -8                   ; 3 uses
  %i.yv = sub nsw i64 %i.yp, %n.vec288
  %broadcast.splatinsert289 = insertelement <8 x i32> poison, i32 %i.yo, i64 0
  %broadcast.splatinsert291 = insertelement <8 x i32> poison, i32 %i.yi, i64 0
  %broadcast.splatinsert293 = insertelement <8 x i32> poison, i32 %.036.i, i64 0
  %broadcast.splatinsert295 = insertelement <8 x i32> poison, i32 %.0.i65, i64 0
  %i.yw = shufflevector <8 x i32> %broadcast.splatinsert289, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.yx = shufflevector <8 x i32> %broadcast.splatinsert291, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.yy = shufflevector <8 x i32> %broadcast.splatinsert293, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.yz = shufflevector <8 x i32> %broadcast.splatinsert295, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body297

vector.body297:                                   ; preds = %vector.body297, %vector.ph287
  %index298 = phi i64 [ 0, %vector.ph287 ], [ %index.next304, %vector.body297 ] ; 2 uses
  %i.za = sub i64 %i.yp, %index298                ; 2 uses
  %i.zb = getelementptr [2 x i8], ptr %i.xr, i64 %i.za ; 2 uses
  %i.zc = getelementptr i8, ptr %i.zb, i64 -16
  %wide.load299 = load <8 x i16>, ptr %i.zc, align 2, !tbaa !10, !alias.scope !52
  %i.zd = getelementptr i8, ptr %i.zb, i64 -14
  %wide.load301 = load <8 x i16>, ptr %i.zd, align 2, !tbaa !10, !alias.scope !52
  %i.ze = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.za
  %i.zf = getelementptr inbounds i8, ptr %i.ze, i64 -14
  %i.zg = sext <8 x i16> %wide.load299 to <8 x i32>
  %i.zh = mul <8 x i32> %i.yw, %i.zg
  %i.zi = add nsw <8 x i32> %i.zh, splat (i32 16384)
  %i.zj = ashr <8 x i32> %i.zi, splat (i32 15)
  %i.zk = sext <8 x i16> %wide.load301 to <8 x i32>
  %i.zl = add nsw <8 x i32> %i.zj, %i.zk
  %i.zm = mul nsw <8 x i32> %i.zl, %i.yx
  %i.zn = add nsw <8 x i32> %i.zm, %i.yy
  %i.zo = ashr <8 x i32> %i.zn, %i.yz
  %reverse303 = trunc <8 x i32> %i.zo to <8 x i16>
  store <8 x i16> %reverse303, ptr %i.zf, align 2, !tbaa !10, !alias.scope !53, !noalias !52
  %index.next304 = add nuw i64 %index298, 8       ; 2 uses
  %i.zp = icmp eq i64 %index.next304, %n.vec288
  br i1 %i.zp, label %middle.block305, label %vector.body297, !llvm.loop !41

middle.block305:                                  ; preds = %vector.body297
  %cmp.n306 = icmp eq i64 %i.yr, %n.vec288
  br i1 %cmp.n306, label %apply_tilt_comp.exit, label %scalar.ph285.preheader

scalar.ph285.preheader:                           ; preds = %vector.memcheck277, %.lr.ph.i68, %middle.block305
  %indvars.iv.i69.ph = phi i64 [ %i.yp, %vector.memcheck277 ], [ %i.yp, %.lr.ph.i68 ], [ %i.yv, %middle.block305 ]
  br label %scalar.ph285

scalar.ph285:                                     ; preds = %scalar.ph285.preheader, %scalar.ph285
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %scalar.ph285 ], [ %indvars.iv.i69.ph, %scalar.ph285.preheader ] ; 4 uses
  %i.zq = getelementptr [2 x i8], ptr %i.xr, i64 %indvars.iv.i69 ; 2 uses
  %i.zr = getelementptr i8, ptr %i.zq, i64 -2
  %i.zs = load i16, ptr %i.zr, align 2, !tbaa !10
  %i.zt = sext i16 %i.zs to i32
  %i.zu = mul i32 %i.yo, %i.zt
  %i.zv = add nsw i32 %i.zu, 16384
  %i.zw = load i16, ptr %i.zq, align 2, !tbaa !10
  %i.zx = sext i16 %i.zw to i32
  %i.zy = ashr i32 %i.zv, 15
  %i.zz = add nsw i32 %i.zy, %i.zx
  %i.aaa = mul nsw i32 %i.zz, %i.yi
  %i.aab = add nsw i32 %i.aaa, %.036.i
  %i.aac = ashr i32 %i.aab, %.0.i65
  %i.aad = trunc i32 %i.aac to i16
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv.i69
  store i16 %i.aad, ptr %i.aae, align 2, !tbaa !10
  %indvars.iv.next.i70 = add nsw i64 %indvars.iv.i69, -1
  %i.aaf = icmp samesign ugt i64 %indvars.iv.i69, 1
  br i1 %i.aaf, label %scalar.ph285, label %apply_tilt_comp.exit, !llvm.loop !42

apply_tilt_comp.exit:                             ; preds = %scalar.ph285, %middle.block305, %bb.x
  %i.aag = ashr i32 %.037.i, 1
  %i.aah = sext i16 %i.xu to i32
  %i.aai = shl nsw i32 %i.aah, 1
  %i.aaj = mul nsw i32 %i.aai, %i.aag
  %i.aak = add nsw i32 %i.aaj, 16384
  %i.aal = load i16, ptr %i.xr, align 2, !tbaa !10
  %i.aam = sext i16 %i.aal to i32
  %i.aan = ashr i32 %i.aak, 15
  %i.aao = add nsw i32 %i.aan, %i.aam
  %i.aap = mul nsw i32 %i.aao, %i.yi
  %i.aaq = add nsw i32 %i.aap, %.036.i
  %i.aar = ashr i32 %i.aaq, %.0.i65
  %i.aas = trunc i32 %i.aar to i16
  store i16 %i.aas, ptr %8, align 2, !tbaa !10
  store i16 %i.ym, ptr %1, align 2, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare i32 @ff_celp_lp_synthesis_filter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define signext i16 @ff_g729_adaptive_gain_control(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i16 noundef signext %4) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = icmp ne i32 %0, 0                        ; 2 uses
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not.i46 = icmp ult i32 %0, 65536              ; 2 uses
  %i.c = lshr i32 %0, 16
  %spec.select.i47 = select i1 %.not.i46, i32 %0, i32 %i.c ; 3 uses
  %spec.select12.i48 = select i1 %.not.i46, i32 0, i32 16 ; 2 uses
  %.not11.i49 = icmp samesign ult i32 %spec.select.i47, 256 ; 2 uses
  %i.d = lshr i32 %spec.select.i47, 8
  %i.e = or disjoint i32 %spec.select12.i48, 8
  %.110.i50 = select i1 %.not11.i49, i32 %spec.select.i47, i32 %i.d
  %.1.i51 = select i1 %.not11.i49, i32 %spec.select12.i48, i32 %i.e
  %i.f = zext nneg i32 %.110.i50 to i64
  %i.g = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = zext i8 %i.h to i32
  %i.j = add nuw nsw i32 %.1.i51, %i.i            ; 4 uses
  %.neg = add nsw i32 %i.j, -14
  %i.k = sub nsw i32 14, %i.j                     ; 2 uses
  %i.l = icmp samesign ugt i32 %i.j, 14
  %i.m = lshr i32 %0, %.neg
  %i.n = shl i32 %0, %i.k
  %.0.i53 = select i1 %i.l, i32 %i.m, i32 %i.n    ; 3 uses
  %.not.i = icmp ult i32 %1, 65536                ; 2 uses
  %i.o = lshr i32 %1, 16
  %spec.select.i = select i1 %.not.i, i32 %1, i32 %i.o ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.p = lshr i32 %spec.select.i, 8
  %i.q = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.p
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.q
  %i.r = zext nneg i32 %.110.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !12
  %i.u = zext i8 %i.t to i32
  %i.v = add nuw nsw i32 %.1.i, %i.u              ; 4 uses
  %.neg57 = add nsw i32 %i.v, -14
  %i.w = sub nsw i32 14, %i.v                     ; 2 uses
  %i.x = icmp samesign ugt i32 %i.v, 14
  %i.y = lshr i32 %1, %.neg57
  %i.z = shl i32 %1, %i.w
  %.0.i54 = select i1 %i.x, i32 %i.y, i32 %i.z    ; 4 uses
  %i.aa = icmp slt i32 %.0.i53, %.0.i54
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = shl i32 %.0.i53, 15
  %i.ac = sdiv i32 %i.ab, %.0.i54                 ; 2 uses
  %i.ad = xor i32 %i.v, -1
  %i.ae = add nsw i32 %i.j, %i.ad                 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 0
  %i.ag = sub nsw i32 0, %i.ae
  %i.ah = lshr i32 %i.ac, %i.ag
  %i.ai = shl i32 %i.ac, %i.ae
  %.0.i55 = select i1 %i.af, i32 %i.ah, i32 %i.ai
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.aj = sub nsw i32 %.0.i53, %.0.i54
  %i.ak = shl i32 %i.aj, 14
  %i.al = sdiv i32 %i.ak, %.0.i54
  %i.am = add nsw i32 %i.al, 16384                ; 2 uses
  %i.an = sub nsw i32 %i.w, %i.k                  ; 3 uses
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = sub nsw i32 0, %i.an
  %i.aq = lshr i32 %i.am, %i.ap
  %i.ar = shl i32 %i.am, %i.an
  %.0.i56 = select i1 %i.ao, i32 %i.aq, i32 %i.ar
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.038 = phi i32 [ %.0.i55, %bb.d ], [ %.0.i56, %bb.e ]
  %i.as = tail call i32 @llvm.umin.i32(i32 %.038, i32 32767)
  %i.at = mul nuw nsw i32 %i.as, 410
  %i.au = add nuw nsw i32 %i.at, 16384
  %i.av = lshr i32 %i.au, 15
  %i.aw = trunc nuw nsw i32 %i.av to i16
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.f
end_hunk_0
