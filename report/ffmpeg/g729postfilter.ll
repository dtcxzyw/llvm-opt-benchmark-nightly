Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g729postfilter?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ff_g729_postfilter:.preheader.preheader

middle.block246:                                  ; preds = %vector.body241
  %cmp.n247 = icmp eq i64 %n.vec238, %wide.trip.count410.i
  br i1 %cmp.n247, label %.loopexit.i, label %vec.epilog.iter.check251

vec.epilog.iter.check251:                         ; preds = %middle.block246
  %min.epilog.iters.check252 = icmp eq i64 %i.uo, 0
  br i1 %min.epilog.iters.check252, label %.lr.ph371.i.preheader, label %vec.epilog.ph253, !prof !47

vec.epilog.ph253:                                 ; preds = %vector.main.loop.iter.check235, %vec.epilog.iter.check251
  %vec.epilog.resume.val248 = phi i64 [ %n.vec238, %vec.epilog.iter.check251 ], [ 0, %vector.main.loop.iter.check235 ]
  %n.vec254 = and i64 %wide.trip.count410.i, 2147483644 ; 3 uses
  %broadcast.splatinsert255 = insertelement <4 x i32> poison, i32 %.0258423.i, i64 0
  %broadcast.splat256 = shufflevector <4 x i32> %broadcast.splatinsert255, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body257

vec.epilog.vector.body257:                        ; preds = %vec.epilog.vector.body257, %vec.epilog.ph253
  %index258 = phi i64 [ %vec.epilog.resume.val248, %vec.epilog.ph253 ], [ %index.next260, %vec.epilog.vector.body257 ] ; 2 uses
  %i.uy = getelementptr inbounds nuw [2 x i8], ptr %.0226.i, i64 %index258 ; 2 uses
  %wide.load259 = load <4 x i16>, ptr %i.uy, align 2, !tbaa !10
  %i.uz = zext <4 x i16> %wide.load259 to <4 x i32>
  %i.va = shl <4 x i32> %i.uz, %broadcast.splat256
  %i.vb = trunc <4 x i32> %i.va to <4 x i16>
  store <4 x i16> %i.vb, ptr %i.uy, align 2, !tbaa !10
  %index.next260 = add nuw i64 %index258, 4       ; 2 uses
  %i.vc = icmp eq i64 %index.next260, %n.vec254
  br i1 %i.vc, label %vec.epilog.middle.block261, label %vec.epilog.vector.body257, !llvm.loop !32

vec.epilog.middle.block261:                       ; preds = %vec.epilog.vector.body257
  %cmp.n262 = icmp eq i64 %n.vec254, %wide.trip.count410.i
  br i1 %cmp.n262, label %.loopexit.i, label %.lr.ph371.i.preheader

.lr.ph371.i.preheader:                            ; preds = %iter.check249, %vec.epilog.iter.check251, %vec.epilog.middle.block261
  %indvars.iv407.i.ph = phi i64 [ 0, %iter.check249 ], [ %n.vec238, %vec.epilog.iter.check251 ], [ %n.vec254, %vec.epilog.middle.block261 ]
  br label %.lr.ph371.i

.lr.ph371.i:                                      ; preds = %.lr.ph371.i.preheader, %.lr.ph371.i
  %indvars.iv407.i = phi i64 [ %indvars.iv.next408.i, %.lr.ph371.i ], [ %indvars.iv407.i.ph, %.lr.ph371.i.preheader ] ; 2 uses
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %.0226.i, i64 %indvars.iv407.i ; 2 uses
  %i.ve = load i16, ptr %i.vd, align 2, !tbaa !10
  %i.vf = zext i16 %i.ve to i32
  %i.vg = shl i32 %i.vf, %.0258423.i
  %i.vh = trunc i32 %i.vg to i16
  store i16 %i.vh, ptr %i.vd, align 2, !tbaa !10
  %indvars.iv.next408.i = add nuw nsw i64 %indvars.iv407.i, 1 ; 2 uses
  %exitcond411.not.i = icmp eq i64 %indvars.iv.next408.i, %wide.trip.count410.i
  br i1 %exitcond411.not.i, label %.loopexit.i, label %.lr.ph371.i, !llvm.loop !33

vec.epilog.scalar.ph219:                          ; preds = %vec.epilog.scalar.ph219.preheader, %vec.epilog.scalar.ph219
  %indvars.iv402.i = phi i64 [ %indvars.iv.next403.i, %vec.epilog.scalar.ph219 ], [ %indvars.iv402.i.ph, %vec.epilog.scalar.ph219.preheader ] ; 2 uses
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %.0226.i, i64 %indvars.iv402.i ; 2 uses
  %i.vj = load i16, ptr %i.vi, align 2, !tbaa !10
  %i.vk = sext i16 %i.vj to i32
  %i.vl = ashr i32 %i.vk, %i.ty
  %i.vm = trunc nsw i32 %i.vl to i16
  store i16 %i.vm, ptr %i.vi, align 2, !tbaa !10
  %indvars.iv.next403.i = add nuw nsw i64 %indvars.iv402.i, 1 ; 2 uses
  %exitcond406.not.i = icmp eq i64 %indvars.iv.next403.i, %wide.trip.count405.i
  br i1 %exitcond406.not.i, label %.loopexit.i, label %vec.epilog.scalar.ph219, !llvm.loop !34

bb.t:                                             ; preds = %bb.k
  %i.vn = xor i16 %spec.select297.i, -1
  %.neg295.i = sext i16 %i.vn to i64
  %i.vo = zext nneg i16 %.2.1.i to i64
  %i.vp = getelementptr [2 x i8], ptr %i.cq, i64 %.neg295.i
  %i.vq = getelementptr [2 x i8], ptr %i.vp, i64 %i.vo
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vec.epilog.scalar.ph219, %.lr.ph371.i, %middle.block215, %vec.epilog.middle.block230, %middle.block246, %vec.epilog.middle.block261, %bb.t, %.preheader.i46, %.preheader335.i
  %.5255.i = phi i16 [ %.2252.1.i, %bb.t ], [ %.4254.i, %.preheader.i46 ], [ %.4254.i, %.preheader335.i ], [ %.4254.i, %middle.block246 ], [ %.4254.i, %middle.block215 ], [ %.4254.i, %vec.epilog.middle.block261 ], [ %.4254.i, %.lr.ph371.i ], [ %.4254.i, %vec.epilog.middle.block230 ], [ %.4254.i, %vec.epilog.scalar.ph219 ]
  %.5.i = phi i16 [ %.2248.1.i, %bb.t ], [ %.4.i, %.preheader.i46 ], [ %.4.i, %.preheader335.i ], [ %.4.i, %middle.block246 ], [ %.4.i, %middle.block215 ], [ %.4.i, %vec.epilog.middle.block261 ], [ %.4.i, %.lr.ph371.i ], [ %.4.i, %vec.epilog.middle.block230 ], [ %.4.i, %vec.epilog.scalar.ph219 ]
  %.2245.i = phi i16 [ %i.rd, %bb.t ], [ %.1244.i, %.preheader.i46 ], [ %.1244.i, %.preheader335.i ], [ %.1244.i, %middle.block246 ], [ %.1244.i, %middle.block215 ], [ %.1244.i, %vec.epilog.middle.block261 ], [ %.1244.i, %.lr.ph371.i ], [ %.1244.i, %vec.epilog.middle.block230 ], [ %.1244.i, %vec.epilog.scalar.ph219 ]
  %.2242.i = phi i16 [ %i.oz, %bb.t ], [ %.1241.i, %.preheader.i46 ], [ %.1241.i, %.preheader335.i ], [ %.1241.i, %middle.block246 ], [ %.1241.i, %middle.block215 ], [ %.1241.i, %vec.epilog.middle.block261 ], [ %.1241.i, %.lr.ph371.i ], [ %.1241.i, %vec.epilog.middle.block230 ], [ %.1241.i, %vec.epilog.scalar.ph219 ]
  %.0.i = phi ptr [ %i.vq, %bb.t ], [ %.0226.i, %.preheader.i46 ], [ %.0226.i, %.preheader335.i ], [ %.0226.i, %middle.block246 ], [ %.0226.i, %middle.block215 ], [ %.0226.i, %vec.epilog.middle.block261 ], [ %.0226.i, %.lr.ph371.i ], [ %.0226.i, %vec.epilog.middle.block230 ], [ %.0226.i, %vec.epilog.scalar.ph219 ]
  %i.vr = sext i16 %.5255.i to i64
  %i.vs = zext nneg i16 %.2245.i to i64
  %i.vt = shl i64 %i.vr, %i.vs
  %i.vu = ashr i64 %i.vt, 1
  %i.vv = sext i16 %.5.i to i64
  %i.vw = sext i16 %.2242.i to i64
  %i.vx = and i64 %i.vw, 4294967295
  %i.vy = shl i64 %i.vv, %i.vx                    ; 2 uses
  %i.vz = shl i64 %i.vy, 15
  %i.wa = add nsw i64 %i.vy, %i.vu
  %i.wb = sdiv i64 %i.vz, %i.wa
  %spec.select300334.i = call i64 @llvm.smax.i64(i64 %i.wb, i64 21845)
  %spec.select300.i = trunc i64 %spec.select300334.i to i16 ; 2 uses
  %i.wc = sub i16 -32768, %spec.select300.i
  call void @ff_acelp_weighted_vector_sum(ptr noundef nonnull %i.ji, ptr noundef nonnull %i.cq, ptr noundef %.0.i, i16 noundef signext %spec.select300.i, i16 noundef signext %i.wc, i16 noundef signext 16384, i32 noundef 15, i32 noundef %9) #7
  br label %long_term_filter.exit

long_term_filter.exit:                            ; preds = %.thread.i, %.loopexit.i
  %.0272.i = phi i32 [ 1, %.loopexit.i ], [ 0, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.wd = load i32, ptr %2, align 4, !tbaa !51
  %. = call i32 @llvm.smax.i32(i32 %i.wd, i32 %.0272.i)
  store i32 %., ptr %2, align 4, !tbaa !51
  %i.we = getelementptr inbounds [2 x i8], ptr %5, i64 %i.jj
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(304) %5, ptr noundef nonnull align 2 dereferenceable(304) %i.we, i64 304, i1 false)
  %i.wf = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 5 uses
  store i16 4096, ptr %i.wf, align 4, !tbaa !10
  %i.wg = call i32 @ff_celp_lp_synthesis_filter(ptr noundef nonnull %i.n, ptr noundef nonnull %i.at, ptr noundef nonnull %i.n, i32 noundef 22, i32 noundef 10, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #7 ; 0 uses
  %i.wh = load ptr, ptr %0, align 8, !tbaa !50
  %i.wi = call i32 %i.wh(ptr noundef nonnull %i.wf, ptr noundef nonnull %i.wf, i32 noundef 20) #7, !inline_history !35 ; 4 uses
  %i.wj = load ptr, ptr %0, align 8, !tbaa !50
  %i.wk = call i32 %i.wj(ptr noundef nonnull %i.wf, ptr noundef nonnull %i.n, i32 noundef 20) #7, !inline_history !35
  %.not.i.i49 = icmp ult i32 %i.wi, 65536         ; 2 uses
  %i.wl = lshr i32 %i.wi, 16
  %spec.select.i.i50 = select i1 %.not.i.i49, i32 %i.wi, i32 %i.wl ; 3 uses
  %spec.select12.i.i51 = select i1 %.not.i.i49, i32 0, i32 16 ; 2 uses
  %.not11.i.i52 = icmp samesign ult i32 %spec.select.i.i50, 256 ; 2 uses
  %i.wm = lshr i32 %spec.select.i.i50, 8
  %i.wn = or disjoint i32 %spec.select12.i.i51, 8
  %.110.i.i53 = select i1 %.not11.i.i52, i32 %spec.select.i.i50, i32 %i.wm
  %.1.i.i54 = select i1 %.not11.i.i52, i32 %spec.select12.i.i51, i32 %i.wn
  %i.wo = zext nneg i32 %.110.i.i53 to i64
  %i.wp = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.wo
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !12
  %i.wr = zext i8 %i.wq to i32
  %i.ws = add nuw nsw i32 %.1.i.i54, %i.wr
  %i.wt = call i32 @llvm.usub.sat.i32(i32 %i.ws, i32 14) ; 2 uses
  %.046.i = ashr i32 %i.wk, %i.wt                 ; 2 uses
  %.045.i = ashr i32 %i.wi, %i.wt                 ; 3 uses
  %i.wu = call i32 @llvm.abs.i32(i32 %.046.i, i1 true)
  %i.wv = icmp sle i32 %i.wu, %.045.i
  %i.ww = icmp ne i32 %.045.i, 0
  %or.cond.i55 = and i1 %i.ww, %i.wv
  br i1 %or.cond.i55, label %.preheader.preheader.i56, label %get_tilt_comp.exit

.preheader.preheader.i56:                         ; preds = %long_term_filter.exit
  %i.wx = load <20 x i16>, ptr %i.wf, align 4, !tbaa !10
  %i.wy = call <20 x i16> @llvm.abs.v20i16(<20 x i16> %i.wx, i1 false)
  %i.wz = zext <20 x i16> %i.wy to <20 x i32>
  %i.xa = call i32 @llvm.vector.reduce.add.v20i32(<20 x i32> %i.wz) ; 2 uses
  %i.xb = icmp samesign ugt i32 %i.xa, 4099
  br i1 %i.xb, label %bb.u, label %.loopexit.i57

bb.u:                                             ; preds = %.preheader.preheader.i56
  %i.xc = lshr i32 %i.xa, 2
  %i.xd = udiv i32 33554432, %i.xc                ; 2 uses
  br i1 %i.cr, label %.lr.ph.preheader.i59, label %.loopexit.i57

.lr.ph.preheader.i59:                             ; preds = %bb.u
  %wide.trip.count.i60 = zext nneg i32 %9 to i64  ; 3 uses
  %min.iters.check265 = icmp ult i32 %9, 8
  br i1 %min.iters.check265, label %.lr.ph.i61.preheader, label %vector.ph266

vector.ph266:                                     ; preds = %.lr.ph.preheader.i59
  %n.vec267 = and i64 %wide.trip.count.i60, 2147483640 ; 3 uses
  %broadcast.splatinsert268 = insertelement <8 x i32> poison, i32 %i.xd, i64 0
  %broadcast.splat269 = shufflevector <8 x i32> %broadcast.splatinsert268, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body270

vector.body270:                                   ; preds = %vector.body270, %vector.ph266
  %index271 = phi i64 [ 0, %vector.ph266 ], [ %index.next273, %vector.body270 ] ; 2 uses
  %i.xe = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %index271 ; 2 uses
  %wide.load272 = load <8 x i16>, ptr %i.xe, align 2, !tbaa !10
  %i.xf = sext <8 x i16> %wide.load272 to <8 x i32>
  %i.xg = mul nsw <8 x i32> %broadcast.splat269, %i.xf
  %i.xh = add nsw <8 x i32> %i.xg, splat (i32 16384)
  %i.xi = lshr <8 x i32> %i.xh, splat (i32 15)
  %i.xj = trunc <8 x i32> %i.xi to <8 x i16>
  store <8 x i16> %i.xj, ptr %i.xe, align 2, !tbaa !10
  %index.next273 = add nuw i64 %index271, 8       ; 2 uses
  %i.xk = icmp eq i64 %index.next273, %n.vec267
  br i1 %i.xk, label %middle.block274, label %vector.body270, !llvm.loop !36

middle.block274:                                  ; preds = %vector.body270
  %cmp.n275 = icmp eq i64 %n.vec267, %wide.trip.count.i60
  br i1 %cmp.n275, label %.loopexit.i57, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %.lr.ph.preheader.i59, %middle.block274
  %indvars.iv.i62.ph = phi i64 [ 0, %.lr.ph.preheader.i59 ], [ %n.vec267, %middle.block274 ]
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %.lr.ph.i61
  %indvars.iv.i62 = phi i64 [ %indvars.iv.next.i63, %.lr.ph.i61 ], [ %indvars.iv.i62.ph, %.lr.ph.i61.preheader ] ; 2 uses
  %i.xl = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %indvars.iv.i62 ; 2 uses
  %i.xm = load i16, ptr %i.xl, align 2, !tbaa !10
  %i.xn = sext i16 %i.xm to i32
  %i.xo = mul nsw i32 %i.xd, %i.xn
  %i.xp = add nsw i32 %i.xo, 16384
  %i.xq = lshr i32 %i.xp, 15
  %i.xr = trunc i32 %i.xq to i16
  store i16 %i.xr, ptr %i.xl, align 2, !tbaa !10
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, %wide.trip.count.i60
  br i1 %exitcond.not.i64, label %.loopexit.i57, label %.lr.ph.i61, !llvm.loop !37

.loopexit.i57:                                    ; preds = %.lr.ph.i61, %middle.block274, %bb.u, %.preheader.preheader.i56
  %.neg.i58 = mul nsw i32 %.046.i, -32768
  %i.xs = sdiv i32 %.neg.i58, %.045.i
  %sext = shl i32 %i.xs, 16
  %i.xt = ashr exact i32 %sext, 16
  br label %get_tilt_comp.exit

get_tilt_comp.exit:                               ; preds = %long_term_filter.exit, %.loopexit.i57
  %.047.i = phi i32 [ %i.xt, %.loopexit.i57 ], [ 0, %long_term_filter.exit ] ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 6 uses
  %i.xv = call i32 @ff_celp_lp_synthesis_filter(ptr noundef nonnull %i.xu, ptr noundef nonnull %i.at, ptr noundef nonnull %i.ji, i32 noundef %9, i32 noundef 10, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #7 ; 0 uses
  %i.xw = getelementptr inbounds [2 x i8], ptr %7, i64 %i.jj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %7, ptr noundef nonnull align 2 dereferenceable(20) %i.xw, i64 20, i1 false)
  %i.xx = load i16, ptr %1, align 2, !tbaa !10
  %i.xy = icmp sgt i32 %.047.i, 0
  br i1 %i.xy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %get_tilt_comp.exit
  %i.xz = mul nuw nsw i32 %.047.i, 6554
  %i.ya = add nuw nsw i32 %i.xz, 16384
  %i.yb = lshr i32 %i.ya, 15
  br label %bb.x

bb.w:                                             ; preds = %get_tilt_comp.exit
  %i.yc = mul nsw i32 %.047.i, 29491
  %i.yd = add nsw i32 %i.yc, 16384
  %i.ye = ashr i32 %i.yd, 15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.037.i = phi i32 [ %i.yb, %bb.v ], [ %i.ye, %bb.w ] ; 4 uses
  %.036.i = phi i32 [ 8192, %bb.v ], [ 1024, %bb.w ] ; 4 uses
  %.0.i65 = phi i32 [ 14, %bb.v ], [ 11, %bb.w ]  ; 3 uses
  %i.yf = shl nuw nsw i32 %.036.i, 16
  %i.yg = call i32 @llvm.abs.i32(i32 %.037.i, i1 true)
  %i.yh = icmp eq i32 %.037.i, 0
  %i.yi = shl nuw nsw i32 %i.yg, 16
  %sext.i66 = sub nuw i32 -2147483648, %i.yi
  %i.yj = ashr exact i32 %sext.i66, 16
  %i.yk = select i1 %i.yh, i32 32767, i32 %i.yj
  %i.yl = sdiv i32 %i.yf, %i.yk                   ; 3 uses
  %i.ym = add nsw i32 %9, -1                      ; 2 uses
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr inbounds [2 x i8], ptr %i.xu, i64 %i.yn
  %i.yp = load i16, ptr %i.yo, align 2, !tbaa !10
  %i.yq = icmp sgt i32 %9, 1
  br i1 %i.yq, label %.lr.ph.i68, label %apply_tilt_comp.exit

.lr.ph.i68:                                       ; preds = %bb.x
  %i.yr = and i32 %.037.i, -2                     ; 2 uses
  %i.ys = zext i32 %i.ym to i64                   ; 7 uses
  %min.iters.check285 = icmp ult i32 %9, 9
  br i1 %min.iters.check285, label %scalar.ph284.preheader, label %vector.memcheck286

vector.memcheck286:                               ; preds = %.lr.ph.i68
  %i.yt = getelementptr i8, ptr %8, i64 2
  %i.yu = shl nuw nsw i64 %i.ys, 1                ; 2 uses
  %i.yv = getelementptr i8, ptr %8, i64 %i.yu
  %i.yw = getelementptr i8, ptr %i.yv, i64 2
  %i.yx = getelementptr i8, ptr %7, i64 %i.yu
  %i.yy = getelementptr i8, ptr %i.yx, i64 22
  %bound0287 = icmp ult ptr %i.yt, %i.yy
  %bound1288 = icmp ult ptr %i.xu, %i.yw
  %found.conflict289 = and i1 %bound0287, %bound1288
  br i1 %found.conflict289, label %scalar.ph284.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck286
  %n.vec291 = and i64 %i.ys, 4294967288           ; 2 uses
  %10 = and i64 %i.ys, 7
  %broadcast.splatinsert292 = insertelement <8 x i32> poison, i32 %i.yr, i64 0
  %broadcast.splatinsert294 = insertelement <8 x i32> poison, i32 %i.yl, i64 0
  %broadcast.splatinsert296 = insertelement <8 x i32> poison, i32 %.036.i, i64 0
  %broadcast.splatinsert298 = insertelement <8 x i32> poison, i32 %.0.i65, i64 0
  %i.yz = shufflevector <8 x i32> %broadcast.splatinsert292, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.za = shufflevector <8 x i32> %broadcast.splatinsert294, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zb = shufflevector <8 x i32> %broadcast.splatinsert296, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zc = shufflevector <8 x i32> %broadcast.splatinsert298, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph290
  %index301 = phi i64 [ 0, %vector.ph290 ], [ %index.next307, %vector.body300 ] ; 2 uses
  %i.zd = sub i64 %i.ys, %index301                ; 2 uses
  %i.ze = getelementptr [2 x i8], ptr %i.xu, i64 %i.zd ; 2 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 -16
  %wide.load302 = load <8 x i16>, ptr %i.zf, align 2, !tbaa !10, !alias.scope !52
  %i.zg = getelementptr i8, ptr %i.ze, i64 -14
  %wide.load304 = load <8 x i16>, ptr %i.zg, align 2, !tbaa !10, !alias.scope !52
  %i.zh = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %i.zd
  %i.zi = getelementptr inbounds i8, ptr %i.zh, i64 -14
  %i.zj = sext <8 x i16> %wide.load302 to <8 x i32>
  %i.zk = mul <8 x i32> %i.yz, %i.zj
  %i.zl = add nsw <8 x i32> %i.zk, splat (i32 16384)
  %i.zm = ashr <8 x i32> %i.zl, splat (i32 15)
  %i.zn = sext <8 x i16> %wide.load304 to <8 x i32>
  %i.zo = add nsw <8 x i32> %i.zm, %i.zn
  %i.zp = mul nsw <8 x i32> %i.zo, %i.za
  %i.zq = add nsw <8 x i32> %i.zp, %i.zb
  %i.zr = ashr <8 x i32> %i.zq, %i.zc
  %reverse306 = trunc <8 x i32> %i.zr to <8 x i16>
  store <8 x i16> %reverse306, ptr %i.zi, align 2, !tbaa !10, !alias.scope !53, !noalias !52
  %index.next307 = add nuw i64 %index301, 8       ; 2 uses
  %i.zs = icmp eq i64 %index.next307, %n.vec291
  br i1 %i.zs, label %middle.block308, label %vector.body300, !llvm.loop !41

middle.block308:                                  ; preds = %vector.body300
  %cmp.n309 = icmp eq i64 %n.vec291, %i.ys
  br i1 %cmp.n309, label %apply_tilt_comp.exit, label %scalar.ph284.preheader

scalar.ph284.preheader:                           ; preds = %vector.memcheck286, %.lr.ph.i68, %middle.block308
  %indvars.iv.i69.ph = phi i64 [ %i.ys, %vector.memcheck286 ], [ %i.ys, %.lr.ph.i68 ], [ %10, %middle.block308 ]
  br label %scalar.ph284

scalar.ph284:                                     ; preds = %scalar.ph284.preheader, %scalar.ph284
  %indvars.iv.i69 = phi i64 [ %indvars.iv.next.i70, %scalar.ph284 ], [ %indvars.iv.i69.ph, %scalar.ph284.preheader ] ; 4 uses
  %i.zt = getelementptr [2 x i8], ptr %i.xu, i64 %indvars.iv.i69 ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zt, i64 -2
  %i.zv = load i16, ptr %i.zu, align 2, !tbaa !10
  %i.zw = sext i16 %i.zv to i32
  %i.zx = mul i32 %i.yr, %i.zw
  %i.zy = add nsw i32 %i.zx, 16384
  %i.zz = load i16, ptr %i.zt, align 2, !tbaa !10
  %i.aaa = sext i16 %i.zz to i32
  %i.aab = ashr i32 %i.zy, 15
  %i.aac = add nsw i32 %i.aab, %i.aaa
  %i.aad = mul nsw i32 %i.aac, %i.yl
  %i.aae = add nsw i32 %i.aad, %.036.i
  %i.aaf = ashr i32 %i.aae, %.0.i65
  %i.aag = trunc i32 %i.aaf to i16
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %8, i64 %indvars.iv.i69
  store i16 %i.aag, ptr %i.aah, align 2, !tbaa !10
  %indvars.iv.next.i70 = add nsw i64 %indvars.iv.i69, -1
  %i.aai = icmp samesign ugt i64 %indvars.iv.i69, 1
  br i1 %i.aai, label %scalar.ph284, label %apply_tilt_comp.exit, !llvm.loop !42

apply_tilt_comp.exit:                             ; preds = %scalar.ph284, %middle.block308, %bb.x
  %i.aaj = ashr i32 %.037.i, 1
  %i.aak = sext i16 %i.xx to i32
  %i.aal = shl nsw i32 %i.aak, 1
  %i.aam = mul nsw i32 %i.aal, %i.aaj
  %i.aan = add nsw i32 %i.aam, 16384
  %i.aao = load i16, ptr %i.xu, align 2, !tbaa !10
  %i.aap = sext i16 %i.aao to i32
  %i.aaq = ashr i32 %i.aan, 15
  %i.aar = add nsw i32 %i.aaq, %i.aap
  %i.aas = mul nsw i32 %i.aar, %i.yl
  %i.aat = add nsw i32 %i.aas, %.036.i
  %i.aau = ashr i32 %i.aat, %.0.i65
  %i.aav = trunc i32 %i.aau to i16
  store i16 %i.aav, ptr %8, align 2, !tbaa !10
  store i16 %i.yp, ptr %1, align 2, !tbaa !10
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
  %.1 = phi i16 [ %i.aw, %bb.f ], [ 0, %bb.b ]
  %i.ax = icmp sgt i32 %3, 0
  br i1 %i.ax, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.03958 = phi i16 [ %4, %.lr.ph.preheader ], [ %i.bd, %.lr.ph ]
  %i.ay = sext i16 %.03958 to i32
  %i.az = mul nsw i32 %i.ay, 64716
  %i.ba = add nsw i32 %i.az, 32768
  %i.bb = lshr i32 %i.ba, 16
  %i.bc = trunc nuw i32 %i.bb to i16
  %i.bd = tail call i16 @llvm.sadd.sat.i16(i16 %.1, i16 %i.bc) ; 3 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !10
  %i.bg = sext i16 %i.bf to i32
  %i.bh = sext i16 %i.bd to i32
  %i.bi = mul nsw i32 %i.bg, %i.bh
  %i.bj = add nsw i32 %i.bi, 8192
  %i.bk = ashr i32 %i.bj, 14
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 -32768)
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 32767)
  %.0.i = trunc nsw i32 %i.bm to i16
  store i16 %.0.i, ptr %i.be, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !54

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.a
  %.040 = phi i16 [ 0, %bb.a ], [ %4, %bb.g ], [ %i.bd, %.lr.ph ]
  ret i16 %.040
}

declare void @ff_acelp_interpolate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_acelp_weighted_vector_sum(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

end_hunk_0
