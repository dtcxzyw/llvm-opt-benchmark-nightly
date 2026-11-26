Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sift.dispatch?download=true
inline.NumInlined: 1019
inline.NumDeleted: 411
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN2cv12cpu_baseline21findScaleSpaceExtremaEiiiiiiidddRKSt6vectorINS_3MatESaIS2_EES6_RS1_INS_8KeyPointESaIS7_EERKNS_5RangeE:bb.a
  %i.ur = insertelement <4 x float> poison, float %i.uq, i64 0
  %i.us = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ur) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv12cpu_baselineL19calcOrientationHistERKNS_3MatENS_6Point_IiEEifPfiE25__cv_trace_location_fn166)
          to label %.noexc227.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc227.i:                                      ; preds = %bb.ac
  %i.ut = fmul float %i.ul, 1.500000e+00          ; 2 uses
  %i.uu = fmul float %i.ut, 2.000000e+00
  %i.uv = fmul float %i.ut, %i.uu
  %i.uw = fdiv float -1.000000e+00, %i.uv
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZN2cv5utils10BufferAreaC1Eb(ptr noundef nonnull align 8 dereferenceable(41) %15, i1 noundef zeroext false)
          to label %bb.ad unwind label %bb.ak

bb.ad:                                            ; preds = %.noexc227.i
  %i.ux = shl nsw i32 %i.us, 1
  %i.uy = or disjoint i32 %i.ux, 1                ; 2 uses
  %i.uz = mul nsw i32 %i.uy, %i.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr null, ptr %i.d, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  store ptr null, ptr %i.e, align 8, !tbaa !36
  %i.va = zext nneg i32 %i.uz to i64              ; 4 uses
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.va, i16 noundef zeroext 16)
          to label %bb.ae unwind label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.va, i16 noundef zeroext 16)
          to label %bb.af unwind label %bb.aq

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.va, i16 noundef zeroext 16)
          to label %bb.ag unwind label %bb.aq

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.va, i16 noundef zeroext 16)
          to label %bb.ah unwind label %bb.aq

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 40, i16 noundef zeroext 16)
          to label %bb.ai unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %15)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.vb = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 2 uses
  store ptr %i.vc, ptr %i.e, align 8, !tbaa !36
  %i.vd = load ptr, ptr %i.a, align 8, !tbaa !36  ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %i.vc, i8 0, i64 144, i1 false), !tbaa !30
  %i.ve = sub i32 0, %i.us                        ; 2 uses
  %.not131.i.i = icmp slt i32 %i.us, 0
  br i1 %.not131.i.i, label %._crit_edge.i.i, label %.lr.ph134.split.preheader.i.i

bb.ak:                                            ; preds = %.noexc227.i
  %i.vf = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

.lr.ph134.split.preheader.i.i:                    ; preds = %bb.aj
  %i.vg = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.vh = getelementptr inbounds nuw i8, ptr %i.up, i64 12
  %i.vi = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %i.vj = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.vk = getelementptr inbounds nuw i8, ptr %i.up, i64 128
  %i.vl = add nuw i32 %i.us, 1
  %i.vm = sext i32 %i.ve to i64
  %i.vn = sext i32 %.1319.i to i64
  br label %.lr.ph134.split.i.i

.lr.ph134.split.i.i:                              ; preds = %..loopexit_crit_edge.i.i, %.lr.ph134.split.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.vm, %.lr.ph134.split.preheader.i.i ], [ %indvars.iv.next.i.i, %..loopexit_crit_edge.i.i ] ; 4 uses
  %.099133.i.i = phi i32 [ 0, %.lr.ph134.split.preheader.i.i ], [ %.3.i.i, %..loopexit_crit_edge.i.i ] ; 3 uses
  %i.vo = add nsw i64 %indvars.iv.i.i, %i.vn      ; 5 uses
  %i.vp = icmp slt i64 %i.vo, 1
  br i1 %i.vp, label %..loopexit_crit_edge.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph134.split.i.i
  %i.vq = load i32, ptr %i.vg, align 8, !tbaa !33
  %i.vr = add nsw i32 %i.vq, -1
  %i.vs = sext i32 %i.vr to i64
  %.not113.i.i = icmp slt i64 %i.vo, %i.vs
  br i1 %.not113.i.i, label %.preheader126.i.i, label %..loopexit_crit_edge.i.i

.preheader126.i.i:                                ; preds = %bb.al
  %i.vt = add nsw i64 %i.vo, -1
  %i.vu = add nuw nsw i64 %i.vo, 1
  %i.vv = load ptr, ptr %i.b, align 8
  %i.vw = mul nsw i64 %indvars.iv.i.i, %indvars.iv.i.i
  %i.vx = load ptr, ptr %i.d, align 8
  %i.vy = trunc nuw nsw i64 %i.vw to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.ap, %.preheader126.i.i
  %.1100130.i.i = phi i32 [ %.099133.i.i, %.preheader126.i.i ], [ %.2101.i.i, %bb.ap ] ; 4 uses
  %.0102129.i.i = phi i32 [ %i.ve, %.preheader126.i.i ], [ %i.xf, %bb.ap ] ; 5 uses
  %i.vz = add nsw i32 %.0102129.i.i, %.1317.i     ; 3 uses
  %i.wa = icmp slt i32 %i.vz, 1
  br i1 %i.wa, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.wb = load i32, ptr %i.vh, align 4, !tbaa !32
  %i.wc = add nsw i32 %i.wb, -1
  %.not115.i.i = icmp slt i32 %i.vz, %i.wc
  br i1 %.not115.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.wd = load i32, ptr %i.vi, align 4, !tbaa !31
  %i.we = icmp slt i32 %i.wd, 2                   ; 3 uses
  %i.wf = load ptr, ptr %i.vj, align 8, !tbaa !26 ; 3 uses
  %i.wg = load i64, ptr %i.vk, align 8            ; 3 uses
  %i.wh = mul i64 %i.wg, %i.vo
  %.sink.idx.i.i225.i = select i1 %i.we, i64 0, i64 %i.wh
  %.sink.i.i226.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.sink.idx.i.i225.i
  %i.wi = zext nneg i32 %i.vz to i64              ; 3 uses
  %i.wj = getelementptr [4 x i8], ptr %.sink.i.i226.i, i64 %i.wi ; 2 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !30
  %i.wm = getelementptr i8, ptr %i.wj, i64 -4
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !30
  %i.wo = fsub float %i.wl, %i.wn
  %i.wp = mul i64 %i.wg, %i.vt
  %.sink.idx.i121.i.i = select i1 %i.we, i64 0, i64 %i.wp
  %.sink.i122.i.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.sink.idx.i121.i.i
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i122.i.i, i64 %i.wi
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !30
  %i.ws = mul i64 %i.wg, %i.vu
  %.sink.idx.i123.i.i = select i1 %i.we, i64 0, i64 %i.ws
  %.sink.i124.i.i = getelementptr inbounds nuw i8, ptr %i.wf, i64 %.sink.idx.i123.i.i
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %.sink.i124.i.i, i64 %i.wi
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !30
  %i.wv = fsub float %i.wr, %i.wu
  %i.ww = sext i32 %.1100130.i.i to i64           ; 3 uses
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.vd, i64 %i.ww
  store float %i.wo, ptr %i.wx, align 4, !tbaa !30
  %i.wy = getelementptr inbounds [4 x i8], ptr %i.vv, i64 %i.ww
  store float %i.wv, ptr %i.wy, align 4, !tbaa !30
  %i.wz = mul nsw i32 %.0102129.i.i, %.0102129.i.i
  %i.xa = add nuw nsw i32 %i.wz, %i.vy
  %i.xb = uitofp nneg i32 %i.xa to float
  %i.xc = fmul float %i.uw, %i.xb
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.vx, i64 %i.ww
  store float %i.xc, ptr %i.xd, align 4, !tbaa !30
  %i.xe = add nsw i32 %.1100130.i.i, 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.2101.i.i = phi i32 [ %i.xe, %bb.ao ], [ %.1100130.i.i, %bb.an ], [ %.1100130.i.i, %bb.am ] ; 2 uses
  %i.xf = add i32 %.0102129.i.i, 1
  %exitcond.not.i224.i = icmp eq i32 %.0102129.i.i, %i.us
  br i1 %exitcond.not.i224.i, label %..loopexit_crit_edge.i.i, label %bb.am, !llvm.loop !128

bb.aq:                                            ; preds = %bb.as, %bb.ar, %._crit_edge.i.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.xg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %15) #25
  br label %bb.aw

..loopexit_crit_edge.i.i:                         ; preds = %bb.ap, %bb.al, %.lr.ph134.split.i.i
  %.3.i.i = phi i32 [ %.099133.i.i, %.lr.ph134.split.i.i ], [ %.099133.i.i, %bb.al ], [ %.2101.i.i, %bb.ap ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i to i32
  %exitcond144.not.i.i = icmp eq i32 %i.vl, %lftr.wideiv.i.i
  br i1 %exitcond144.not.i.i, label %._crit_edge.i.i, label %.lr.ph134.split.i.i, !llvm.loop !129

._crit_edge.i.i:                                  ; preds = %..loopexit_crit_edge.i.i, %bb.aj
  %.099.lcssa.i.i = phi i32 [ 0, %bb.aj ], [ %.3.i.i, %..loopexit_crit_edge.i.i ] ; 5 uses
  %i.xh = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  invoke void @_ZN2cv3hal6exp32fEPKfPfi(ptr noundef %i.xh, ptr noundef %i.xh, i32 noundef %.099.lcssa.i.i)
          to label %bb.ar unwind label %bb.aq

bb.ar:                                            ; preds = %._crit_edge.i.i
  %i.xi = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.xj = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.xk = load ptr, ptr %i.c, align 8, !tbaa !36
  invoke void @_ZN2cv3hal9fastAtan2EPKfS2_Pfib(ptr noundef %i.xi, ptr noundef %i.xj, ptr noundef %i.xk, i32 noundef %.099.lcssa.i.i, i1 noundef zeroext true)
          to label %bb.as unwind label %bb.aq

bb.as:                                            ; preds = %bb.ar
  %i.xl = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.xm = load ptr, ptr %i.b, align 8, !tbaa !36
  invoke void @_ZN2cv3hal12magnitude32fEPKfS2_Pfi(ptr noundef %i.xl, ptr noundef %i.xm, ptr noundef %i.vd, i32 noundef %.099.lcssa.i.i)
          to label %.preheader.i.i unwind label %bb.aq

.preheader.i.i:                                   ; preds = %bb.as
  %i.xn = icmp sgt i32 %.099.lcssa.i.i, 0
  %.pre.i222.i = load ptr, ptr %i.e, align 8, !tbaa !36 ; 41 uses
  br i1 %i.xn, label %.lr.ph.i.i, label %._crit_edge137.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.xo = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.xp = load ptr, ptr %i.d, align 8, !tbaa !36
  %wide.trip.count.i.i = zext nneg i32 %.099.lcssa.i.i to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i.i
  %indvars.iv145.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next146.i.i, %bb.at ] ; 4 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %indvars.iv145.i.i
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !30
  %i.xs = fmul float %i.xr, 1.000000e-01
  %i.xt = insertelement <4 x float> poison, float %i.xs, i64 0
  %i.xu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.xt) ; 3 uses
  %i.xv = icmp sgt i32 %i.xu, 35
  %i.xw = add nsw i32 %i.xu, -36
  %spec.select.i.i = select i1 %i.xv, i32 %i.xw, i32 %i.xu ; 3 uses
  %i.xx = icmp slt i32 %spec.select.i.i, 0
  %i.xy = add nsw i32 %spec.select.i.i, 36
  %.1.i.i = select i1 %i.xx, i32 %i.xy, i32 %spec.select.i.i
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %indvars.iv145.i.i
  %i.ya = load float, ptr %i.xz, align 4, !tbaa !30
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.vd, i64 %indvars.iv145.i.i
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !30
  %i.yd = sext i32 %.1.i.i to i64
  %i.ye = getelementptr inbounds [4 x i8], ptr %.pre.i222.i, i64 %i.yd ; 2 uses
  %i.yf = load float, ptr %i.ye, align 4, !tbaa !30
  %i.yg = call float @llvm.fmuladd.f32(float %i.ya, float %i.yc, float %i.yf)
  store float %i.yg, ptr %i.ye, align 4, !tbaa !30
  %indvars.iv.next146.i.i = add nuw nsw i64 %indvars.iv145.i.i, 1 ; 2 uses
  %exitcond148.not.i.i = icmp eq i64 %indvars.iv.next146.i.i, %wide.trip.count.i.i
  br i1 %exitcond148.not.i.i, label %._crit_edge137.i.i, label %bb.at, !llvm.loop !130

._crit_edge137.i.i:                               ; preds = %bb.at, %.preheader.i.i
  %i.yh = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 136
  %i.yi = getelementptr inbounds i8, ptr %.pre.i222.i, i64 -8
  %i.yj = load <2 x float>, ptr %i.yh, align 4, !tbaa !30
  store <2 x float> %i.yj, ptr %i.yi, align 4, !tbaa !30
  %i.yk = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 144
  %i.yl = load <2 x float>, ptr %.pre.i222.i, align 4, !tbaa !30 ; 2 uses
  store <2 x float> %i.yl, ptr %i.yk, align 4, !tbaa !30
  %20 = shufflevector <2 x float> %i.yl, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.ym = getelementptr i8, ptr %.pre.i222.i, i64 -8
  %wide.load = load <4 x float>, ptr %i.ym, align 4, !tbaa !30
  %i.yn = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 8
  %wide.load170 = load <4 x float>, ptr %i.yn, align 4, !tbaa !30
  %i.yo = fadd <4 x float> %wide.load, %wide.load170
  %i.yp = getelementptr i8, ptr %.pre.i222.i, i64 -4
  %wide.load171 = load <4 x float>, ptr %i.yp, align 4, !tbaa !30
  %i.yq = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 4
  %wide.load172 = load <4 x float>, ptr %i.yq, align 4, !tbaa !30 ; 3 uses
  %21 = shufflevector <4 x float> %20, <4 x float> %wide.load172, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.yr = fadd <4 x float> %wide.load171, %wide.load172
  %i.ys = fmul <4 x float> %i.yr, splat (float 2.500000e-01)
  %i.yt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yo, <4 x float> splat (float 6.250000e-02), <4 x float> %i.ys)
  %i.yu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> splat (float 3.750000e-01), <4 x float> %i.yt)
  store <4 x float> %i.yu, ptr %i.f, align 16, !tbaa !30
  %i.yv = getelementptr i8, ptr %.pre.i222.i, i64 8
  %wide.load.1 = load <4 x float>, ptr %i.yv, align 4, !tbaa !30
  %i.yw = getelementptr i8, ptr %.pre.i222.i, i64 24
  %wide.load170.1 = load <4 x float>, ptr %i.yw, align 4, !tbaa !30
  %i.yx = fadd <4 x float> %wide.load.1, %wide.load170.1
  %i.yy = getelementptr i8, ptr %.pre.i222.i, i64 12
  %wide.load171.1 = load <4 x float>, ptr %i.yy, align 4, !tbaa !30
  %i.yz = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 20
  %wide.load172.1 = load <4 x float>, ptr %i.yz, align 4, !tbaa !30 ; 3 uses
  %22 = shufflevector <4 x float> %wide.load172, <4 x float> %wide.load172.1, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.za = fadd <4 x float> %wide.load171.1, %wide.load172.1
  %i.zb = fmul <4 x float> %i.za, splat (float 2.500000e-01)
  %i.zc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yx, <4 x float> splat (float 6.250000e-02), <4 x float> %i.zb)
  %i.zd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> splat (float 3.750000e-01), <4 x float> %i.zc)
  store <4 x float> %i.zd, ptr %i.cc, align 16, !tbaa !30
  %i.ze = getelementptr i8, ptr %.pre.i222.i, i64 24
  %wide.load.2 = load <4 x float>, ptr %i.ze, align 4, !tbaa !30
  %i.zf = getelementptr i8, ptr %.pre.i222.i, i64 40
  %wide.load170.2 = load <4 x float>, ptr %i.zf, align 4, !tbaa !30
  %i.zg = fadd <4 x float> %wide.load.2, %wide.load170.2
  %i.zh = getelementptr i8, ptr %.pre.i222.i, i64 28
  %wide.load171.2 = load <4 x float>, ptr %i.zh, align 4, !tbaa !30
  %i.zi = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 36
  %wide.load172.2 = load <4 x float>, ptr %i.zi, align 4, !tbaa !30 ; 3 uses
  %23 = shufflevector <4 x float> %wide.load172.1, <4 x float> %wide.load172.2, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.zj = fadd <4 x float> %wide.load171.2, %wide.load172.2
  %i.zk = fmul <4 x float> %i.zj, splat (float 2.500000e-01)
  %i.zl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zg, <4 x float> splat (float 6.250000e-02), <4 x float> %i.zk)
  %i.zm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %23, <4 x float> splat (float 3.750000e-01), <4 x float> %i.zl)
  store <4 x float> %i.zm, ptr %i.cd, align 16, !tbaa !30
  %i.zn = getelementptr i8, ptr %.pre.i222.i, i64 40
  %wide.load.3 = load <4 x float>, ptr %i.zn, align 4, !tbaa !30
  %i.zo = getelementptr i8, ptr %.pre.i222.i, i64 56
  %wide.load170.3 = load <4 x float>, ptr %i.zo, align 4, !tbaa !30
  %i.zp = fadd <4 x float> %wide.load.3, %wide.load170.3
  %i.zq = getelementptr i8, ptr %.pre.i222.i, i64 44
  %wide.load171.3 = load <4 x float>, ptr %i.zq, align 4, !tbaa !30
  %i.zr = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 52
  %wide.load172.3 = load <4 x float>, ptr %i.zr, align 4, !tbaa !30 ; 3 uses
  %24 = shufflevector <4 x float> %wide.load172.2, <4 x float> %wide.load172.3, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.zs = fadd <4 x float> %wide.load171.3, %wide.load172.3
  %i.zt = fmul <4 x float> %i.zs, splat (float 2.500000e-01)
  %i.zu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zp, <4 x float> splat (float 6.250000e-02), <4 x float> %i.zt)
  %i.zv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %24, <4 x float> splat (float 3.750000e-01), <4 x float> %i.zu)
  store <4 x float> %i.zv, ptr %i.ce, align 16, !tbaa !30
  %i.zw = getelementptr i8, ptr %.pre.i222.i, i64 56
  %wide.load.4 = load <4 x float>, ptr %i.zw, align 4, !tbaa !30
  %i.zx = getelementptr i8, ptr %.pre.i222.i, i64 72
  %wide.load170.4 = load <4 x float>, ptr %i.zx, align 4, !tbaa !30
  %i.zy = fadd <4 x float> %wide.load.4, %wide.load170.4
  %i.zz = getelementptr i8, ptr %.pre.i222.i, i64 60
  %wide.load171.4 = load <4 x float>, ptr %i.zz, align 4, !tbaa !30
  %i.aaa = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 68
  %wide.load172.4 = load <4 x float>, ptr %i.aaa, align 4, !tbaa !30 ; 3 uses
  %25 = shufflevector <4 x float> %wide.load172.3, <4 x float> %wide.load172.4, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aab = fadd <4 x float> %wide.load171.4, %wide.load172.4
  %i.aac = fmul <4 x float> %i.aab, splat (float 2.500000e-01)
  %i.aad = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.zy, <4 x float> splat (float 6.250000e-02), <4 x float> %i.aac)
  %i.aae = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> splat (float 3.750000e-01), <4 x float> %i.aad)
  store <4 x float> %i.aae, ptr %i.cf, align 16, !tbaa !30
  %i.aaf = getelementptr i8, ptr %.pre.i222.i, i64 72
  %wide.load.5 = load <4 x float>, ptr %i.aaf, align 4, !tbaa !30
  %i.aag = getelementptr i8, ptr %.pre.i222.i, i64 88
  %wide.load170.5 = load <4 x float>, ptr %i.aag, align 4, !tbaa !30
  %i.aah = fadd <4 x float> %wide.load.5, %wide.load170.5
  %i.aai = getelementptr i8, ptr %.pre.i222.i, i64 76
  %wide.load171.5 = load <4 x float>, ptr %i.aai, align 4, !tbaa !30
  %i.aaj = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 84
  %wide.load172.5 = load <4 x float>, ptr %i.aaj, align 4, !tbaa !30 ; 3 uses
  %26 = shufflevector <4 x float> %wide.load172.4, <4 x float> %wide.load172.5, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aak = fadd <4 x float> %wide.load171.5, %wide.load172.5
  %i.aal = fmul <4 x float> %i.aak, splat (float 2.500000e-01)
  %i.aam = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aah, <4 x float> splat (float 6.250000e-02), <4 x float> %i.aal)
  %i.aan = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> splat (float 3.750000e-01), <4 x float> %i.aam)
  store <4 x float> %i.aan, ptr %i.cg, align 16, !tbaa !30
  %i.aao = getelementptr i8, ptr %.pre.i222.i, i64 88
  %wide.load.6 = load <4 x float>, ptr %i.aao, align 4, !tbaa !30
  %i.aap = getelementptr i8, ptr %.pre.i222.i, i64 104
  %wide.load170.6 = load <4 x float>, ptr %i.aap, align 4, !tbaa !30
  %i.aaq = fadd <4 x float> %wide.load.6, %wide.load170.6
  %i.aar = getelementptr i8, ptr %.pre.i222.i, i64 92
  %wide.load171.6 = load <4 x float>, ptr %i.aar, align 4, !tbaa !30
  %i.aas = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 100
  %wide.load172.6 = load <4 x float>, ptr %i.aas, align 4, !tbaa !30 ; 3 uses
  %27 = shufflevector <4 x float> %wide.load172.5, <4 x float> %wide.load172.6, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aat = fadd <4 x float> %wide.load171.6, %wide.load172.6
  %i.aau = fmul <4 x float> %i.aat, splat (float 2.500000e-01)
  %i.aav = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaq, <4 x float> splat (float 6.250000e-02), <4 x float> %i.aau)
  %i.aaw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> splat (float 3.750000e-01), <4 x float> %i.aav)
  store <4 x float> %i.aaw, ptr %i.ch, align 16, !tbaa !30
  %i.aax = getelementptr i8, ptr %.pre.i222.i, i64 104
  %wide.load.7 = load <4 x float>, ptr %i.aax, align 4, !tbaa !30
  %i.aay = getelementptr i8, ptr %.pre.i222.i, i64 120
  %wide.load170.7 = load <4 x float>, ptr %i.aay, align 4, !tbaa !30
  %i.aaz = fadd <4 x float> %wide.load.7, %wide.load170.7
  %i.aba = getelementptr i8, ptr %.pre.i222.i, i64 108
  %wide.load171.7 = load <4 x float>, ptr %i.aba, align 4, !tbaa !30
  %i.abb = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 116
  %wide.load172.7 = load <4 x float>, ptr %i.abb, align 4, !tbaa !30 ; 3 uses
  %28 = shufflevector <4 x float> %wide.load172.6, <4 x float> %wide.load172.7, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.abc = fadd <4 x float> %wide.load171.7, %wide.load172.7
  %i.abd = fmul <4 x float> %i.abc, splat (float 2.500000e-01)
  %i.abe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aaz, <4 x float> splat (float 6.250000e-02), <4 x float> %i.abd)
  %i.abf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> splat (float 3.750000e-01), <4 x float> %i.abe)
  store <4 x float> %i.abf, ptr %i.ci, align 16, !tbaa !30
  %i.abg = getelementptr i8, ptr %.pre.i222.i, i64 120
  %wide.load.8 = load <4 x float>, ptr %i.abg, align 4, !tbaa !30
  %i.abh = getelementptr i8, ptr %.pre.i222.i, i64 136
  %wide.load170.8 = load <4 x float>, ptr %i.abh, align 4, !tbaa !30
  %i.abi = fadd <4 x float> %wide.load.8, %wide.load170.8
  %i.abj = getelementptr i8, ptr %.pre.i222.i, i64 124
  %wide.load171.8 = load <4 x float>, ptr %i.abj, align 4, !tbaa !30
  %i.abk = getelementptr inbounds nuw i8, ptr %.pre.i222.i, i64 132
  %wide.load172.8 = load <4 x float>, ptr %i.abk, align 4, !tbaa !30 ; 2 uses
  %29 = shufflevector <4 x float> %wide.load172.7, <4 x float> %wide.load172.8, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.abl = fadd <4 x float> %wide.load171.8, %wide.load172.8
  %i.abm = fmul <4 x float> %i.abl, splat (float 2.500000e-01)
  %i.abn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.abi, <4 x float> splat (float 6.250000e-02), <4 x float> %i.abm)
  %i.abo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %29, <4 x float> splat (float 3.750000e-01), <4 x float> %i.abn)
  store <4 x float> %i.abo, ptr %i.cj, align 16, !tbaa !30
  %i.abp = load float, ptr %i.f, align 16, !tbaa !30 ; 2 uses
  %i.abq = load float, ptr %i.v, align 4, !tbaa !30 ; 2 uses
  %i.abr = load float, ptr %i.w, align 8, !tbaa !30 ; 2 uses
  %i.abs = load float, ptr %i.x, align 4, !tbaa !30 ; 2 uses
  %i.abt = load float, ptr %i.y, align 16, !tbaa !30 ; 2 uses
  %i.abu = load float, ptr %i.z, align 4, !tbaa !30 ; 2 uses
  %i.abv = load float, ptr %i.aa, align 8, !tbaa !30 ; 2 uses
  %i.abw = load float, ptr %i.ab, align 4, !tbaa !30 ; 2 uses
  %i.abx = load float, ptr %i.ac, align 16, !tbaa !30 ; 2 uses
  %i.aby = load float, ptr %i.ad, align 4, !tbaa !30 ; 2 uses
  %i.abz = load float, ptr %i.ae, align 8, !tbaa !30 ; 2 uses
  %i.aca = load float, ptr %i.af, align 4, !tbaa !30 ; 2 uses
  %i.acb = load float, ptr %i.ag, align 16, !tbaa !30 ; 2 uses
  %i.acc = load float, ptr %i.ah, align 4, !tbaa !30 ; 2 uses
  %i.acd = load float, ptr %i.ai, align 8, !tbaa !30 ; 2 uses
  %i.ace = load float, ptr %i.aj, align 4, !tbaa !30 ; 2 uses
  %i.acf = load float, ptr %i.ak, align 16, !tbaa !30 ; 2 uses
  %i.acg = load float, ptr %i.al, align 4, !tbaa !30 ; 2 uses
  %i.ach = load float, ptr %i.am, align 8, !tbaa !30 ; 2 uses
  %i.aci = load float, ptr %i.an, align 4, !tbaa !30 ; 2 uses
  %i.acj = load float, ptr %i.ao, align 16, !tbaa !30 ; 2 uses
  %i.ack = load float, ptr %i.ap, align 4, !tbaa !30 ; 2 uses
  %i.acl = load float, ptr %i.aq, align 8, !tbaa !30 ; 2 uses
  %i.acm = load float, ptr %i.ar, align 4, !tbaa !30 ; 2 uses
  %i.acn = load float, ptr %i.as, align 16, !tbaa !30 ; 2 uses
  %i.aco = load float, ptr %i.at, align 4, !tbaa !30 ; 2 uses
  %i.acp = load float, ptr %i.au, align 8, !tbaa !30 ; 2 uses
  %i.acq = load float, ptr %i.av, align 4, !tbaa !30 ; 2 uses
  %i.acr = load float, ptr %i.aw, align 16, !tbaa !30 ; 2 uses
  %i.acs = load float, ptr %i.ax, align 4, !tbaa !30 ; 2 uses
  %i.act = load float, ptr %i.ay, align 8, !tbaa !30 ; 2 uses
  %i.acu = load float, ptr %i.az, align 4, !tbaa !30 ; 2 uses
  %i.acv = load float, ptr %i.ba, align 16, !tbaa !30 ; 2 uses
  %i.acw = load float, ptr %i.bb, align 4, !tbaa !30 ; 2 uses
  %i.acx = load float, ptr %i.bc, align 8, !tbaa !30 ; 2 uses
  %i.acy = load float, ptr %i.bd, align 4, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN2cv5utils10BufferAreaD1Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  %i.acz = load i32, ptr %i.be, align 8, !tbaa !18
  %.not.i.i223.i = icmp eq i32 %i.acz, 0
  br i1 %.not.i.i223.i, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %._crit_edge137.i.i
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %14)
          to label %bb.ax unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ada = landingpad { ptr, i32 }
          catch ptr null
  %i.adb = extractvalue { ptr, i32 } %i.ada, 0
  call void @__clang_call_terminate(ptr %i.adb) #26
  unreachable

bb.aw:                                            ; preds = %bb.aq, %bb.ak
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.xg, %bb.aq ], [ %i.vf, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body.i

bb.ax:                                            ; preds = %bb.au, %._crit_edge137.i.i
  %i.adc = fcmp olt float %i.abp, %i.abq
  %.sroa.speculated.i.i = select i1 %i.adc, float %i.abq, float %i.abp ; 2 uses
  %i.add = fcmp olt float %.sroa.speculated.i.i, %i.abr
  %.sroa.speculated.1.i.i = select i1 %i.add, float %i.abr, float %.sroa.speculated.i.i ; 2 uses
  %i.ade = fcmp olt float %.sroa.speculated.1.i.i, %i.abs
  %.sroa.speculated.2.i.i = select i1 %i.ade, float %i.abs, float %.sroa.speculated.1.i.i ; 2 uses
  %i.adf = fcmp olt float %.sroa.speculated.2.i.i, %i.abt
  %.sroa.speculated.3.i.i = select i1 %i.adf, float %i.abt, float %.sroa.speculated.2.i.i ; 2 uses
  %i.adg = fcmp olt float %.sroa.speculated.3.i.i, %i.abu
  %.sroa.speculated.4.i.i = select i1 %i.adg, float %i.abu, float %.sroa.speculated.3.i.i ; 2 uses
  %i.adh = fcmp olt float %.sroa.speculated.4.i.i, %i.abv
  %.sroa.speculated.5.i.i = select i1 %i.adh, float %i.abv, float %.sroa.speculated.4.i.i ; 2 uses
  %i.adi = fcmp olt float %.sroa.speculated.5.i.i, %i.abw
  %.sroa.speculated.6.i.i = select i1 %i.adi, float %i.abw, float %.sroa.speculated.5.i.i ; 2 uses
  %i.adj = fcmp olt float %.sroa.speculated.6.i.i, %i.abx
  %.sroa.speculated.7.i.i = select i1 %i.adj, float %i.abx, float %.sroa.speculated.6.i.i ; 2 uses
  %i.adk = fcmp olt float %.sroa.speculated.7.i.i, %i.aby
  %.sroa.speculated.8.i.i = select i1 %i.adk, float %i.aby, float %.sroa.speculated.7.i.i ; 2 uses
  %i.adl = fcmp olt float %.sroa.speculated.8.i.i, %i.abz
  %.sroa.speculated.9.i.i = select i1 %i.adl, float %i.abz, float %.sroa.speculated.8.i.i ; 2 uses
  %i.adm = fcmp olt float %.sroa.speculated.9.i.i, %i.aca
  %.sroa.speculated.10.i.i = select i1 %i.adm, float %i.aca, float %.sroa.speculated.9.i.i ; 2 uses
  %i.adn = fcmp olt float %.sroa.speculated.10.i.i, %i.acb
  %.sroa.speculated.11.i.i = select i1 %i.adn, float %i.acb, float %.sroa.speculated.10.i.i ; 2 uses
  %i.ado = fcmp olt float %.sroa.speculated.11.i.i, %i.acc
  %.sroa.speculated.12.i.i = select i1 %i.ado, float %i.acc, float %.sroa.speculated.11.i.i ; 2 uses
  %i.adp = fcmp olt float %.sroa.speculated.12.i.i, %i.acd
  %.sroa.speculated.13.i.i = select i1 %i.adp, float %i.acd, float %.sroa.speculated.12.i.i ; 2 uses
  %i.adq = fcmp olt float %.sroa.speculated.13.i.i, %i.ace
  %.sroa.speculated.14.i.i = select i1 %i.adq, float %i.ace, float %.sroa.speculated.13.i.i ; 2 uses
  %i.adr = fcmp olt float %.sroa.speculated.14.i.i, %i.acf
  %.sroa.speculated.15.i.i = select i1 %i.adr, float %i.acf, float %.sroa.speculated.14.i.i ; 2 uses
  %i.ads = fcmp olt float %.sroa.speculated.15.i.i, %i.acg
  %.sroa.speculated.16.i.i = select i1 %i.ads, float %i.acg, float %.sroa.speculated.15.i.i ; 2 uses
  %i.adt = fcmp olt float %.sroa.speculated.16.i.i, %i.ach
  %.sroa.speculated.17.i.i = select i1 %i.adt, float %i.ach, float %.sroa.speculated.16.i.i ; 2 uses
  %i.adu = fcmp olt float %.sroa.speculated.17.i.i, %i.aci
  %.sroa.speculated.18.i.i = select i1 %i.adu, float %i.aci, float %.sroa.speculated.17.i.i ; 2 uses
  %i.adv = fcmp olt float %.sroa.speculated.18.i.i, %i.acj
  %.sroa.speculated.19.i.i = select i1 %i.adv, float %i.acj, float %.sroa.speculated.18.i.i ; 2 uses
  %i.adw = fcmp olt float %.sroa.speculated.19.i.i, %i.ack
  %.sroa.speculated.20.i.i = select i1 %i.adw, float %i.ack, float %.sroa.speculated.19.i.i ; 2 uses
  %i.adx = fcmp olt float %.sroa.speculated.20.i.i, %i.acl
  %.sroa.speculated.21.i.i = select i1 %i.adx, float %i.acl, float %.sroa.speculated.20.i.i ; 2 uses
  %i.ady = fcmp olt float %.sroa.speculated.21.i.i, %i.acm
  %.sroa.speculated.22.i.i = select i1 %i.ady, float %i.acm, float %.sroa.speculated.21.i.i ; 2 uses
  %i.adz = fcmp olt float %.sroa.speculated.22.i.i, %i.acn
  %.sroa.speculated.23.i.i = select i1 %i.adz, float %i.acn, float %.sroa.speculated.22.i.i ; 2 uses
  %i.aea = fcmp olt float %.sroa.speculated.23.i.i, %i.aco
  %.sroa.speculated.24.i.i = select i1 %i.aea, float %i.aco, float %.sroa.speculated.23.i.i ; 2 uses
  %i.aeb = fcmp olt float %.sroa.speculated.24.i.i, %i.acp
  %.sroa.speculated.25.i.i = select i1 %i.aeb, float %i.acp, float %.sroa.speculated.24.i.i ; 2 uses
  %i.aec = fcmp olt float %.sroa.speculated.25.i.i, %i.acq
  %.sroa.speculated.26.i.i = select i1 %i.aec, float %i.acq, float %.sroa.speculated.25.i.i ; 2 uses
  %i.aed = fcmp olt float %.sroa.speculated.26.i.i, %i.acr
  %.sroa.speculated.27.i.i = select i1 %i.aed, float %i.acr, float %.sroa.speculated.26.i.i ; 2 uses
  %i.aee = fcmp olt float %.sroa.speculated.27.i.i, %i.acs
  %.sroa.speculated.28.i.i = select i1 %i.aee, float %i.acs, float %.sroa.speculated.27.i.i ; 2 uses
  %i.aef = fcmp olt float %.sroa.speculated.28.i.i, %i.act
  %.sroa.speculated.29.i.i = select i1 %i.aef, float %i.act, float %.sroa.speculated.28.i.i ; 2 uses
  %i.aeg = fcmp olt float %.sroa.speculated.29.i.i, %i.acu
  %.sroa.speculated.30.i.i = select i1 %i.aeg, float %i.acu, float %.sroa.speculated.29.i.i ; 2 uses
  %i.aeh = fcmp olt float %.sroa.speculated.30.i.i, %i.acv
  %.sroa.speculated.31.i.i = select i1 %i.aeh, float %i.acv, float %.sroa.speculated.30.i.i ; 2 uses
  %i.aei = fcmp olt float %.sroa.speculated.31.i.i, %i.acw
  %.sroa.speculated.32.i.i = select i1 %i.aei, float %i.acw, float %.sroa.speculated.31.i.i ; 2 uses
  %i.aej = fcmp olt float %.sroa.speculated.32.i.i, %i.acx
  %.sroa.speculated.33.i.i = select i1 %i.aej, float %i.acx, float %.sroa.speculated.32.i.i ; 2 uses
  %i.aek = fcmp olt float %.sroa.speculated.33.i.i, %i.acy
  %.sroa.speculated.34.i.i = select i1 %i.aek, float %i.acy, float %.sroa.speculated.33.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.ael = fmul float %.sroa.speculated.34.i.i, 8.000000e-01
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit.i, %bb.ax
  %indvars.iv.i = phi i64 [ 0, %bb.ax ], [ %indvars.iv.next.i, %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit.i ] ; 6 uses
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.aen = load float, ptr %i.aem, align 4, !tbaa !30 ; 4 uses
  %i.aeo = shl nuw nsw i64 %indvars.iv.i, 32
  %sext.i = add nsw i64 %i.aeo, -4294967296
  %i.aep = ashr exact i64 %sext.i, 32
  %i.aeq = select i1 %.not.i, i64 35, i64 %i.aep
  %i.aer = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.aeq
  %i.aes = load float, ptr %i.aer, align 4, !tbaa !30 ; 3 uses
  %i.aet = fcmp ogt float %i.aen, %i.aes
  br i1 %i.aet, label %bb.az, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit.i

bb.az:                                            ; preds = %bb.ay
  %.not170.i = icmp eq i64 %indvars.iv.i, 35
  %i.aeu = select i1 %.not170.i, i64 0, i64 %indvars.iv.next.i
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.aeu
  %i.aew = load float, ptr %i.aev, align 4, !tbaa !30 ; 3 uses
  %i.aex = fcmp ule float %i.aen, %i.aew
  %i.aey = fcmp ult float %i.aen, %i.ael
  %or.cond.i = or i1 %i.aey, %i.aex
  br i1 %or.cond.i, label %_ZNSt6vectorIN2cv8KeyPointESaIS1_EE9push_backERKS1_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.aez = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.afa = uitofp nneg i32 %i.aez to float
  %i.afb = fsub float %i.aes, %i.aew
  %i.afc = fmul float %i.afb, 5.000000e-01
  %i.afd = call float @llvm.fmuladd.f32(float %i.aen, float -2.000000e+00, float %i.aes)
  %i.afe = fadd float %i.afd, %i.aew
  %i.aff = fdiv float %i.afc, %i.afe
  %i.afg = fadd float %i.aff, %i.afa              ; 5 uses
  %i.afh = fcmp olt float %i.afg, 0.000000e+00
  br i1 %i.afh, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.afi = fadd float %i.afg, 3.600000e+01
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.afj = fcmp oge float %i.afg, 3.600000e+01
  %i.afk = fadd float %i.afg, -3.600000e+01
  %i.afl = select i1 %i.afj, float %i.afk, float %i.afg
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.afm = phi float [ %i.afi, %bb.bb ], [ %i.afl, %bb.bc ]
  %i.afn = call float @llvm.fmuladd.f32(float %i.afm, float -1.000000e+01, float 3.600000e+02) ; 2 uses
  %i.afo = fadd float %i.afn, -3.600000e+02
  %i.afp = call noundef float @llvm.fabs.f32(float %i.afo)
  %i.afq = fcmp olt float %i.afp, f0x34000000
  %.sroa.13.0.i = select i1 %i.afq, float 0.000000e+00, float %i.afn ; 2 uses
  %i.afr = load ptr, ptr %i.bw, align 8, !tbaa !39 ; 11 uses
  %i.afs = load ptr, ptr %i.bx, align 8, !tbaa !40
  %.not.i228.i = icmp eq ptr %i.afr, %i.afs
  br i1 %.not.i228.i, label %bb.bf, label %bb.be

end_hunk_0
