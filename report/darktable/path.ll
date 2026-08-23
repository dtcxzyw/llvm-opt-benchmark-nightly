Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/path?download=true
inline.NumInlined: 240
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_path_get_pts_border:bb.a
bb.ck:                                            ; preds = %._crit_edge.i551, %bb.cj
  %.sroa.14.0.i = phi i32 [ %.0232377390.i, %._crit_edge.i551 ], [ 0, %bb.cj ] ; 2 uses
  %.sroa.11.0.i = phi i32 [ %.0232377387.i, %._crit_edge.i551 ], [ 0, %bb.cj ] ; 2 uses
  %.sroa.6461.0.i = phi i32 [ %.0232377384.i, %._crit_edge.i551 ], [ 0, %bb.cj ] ; 18 uses
  %.0232371.lcssa.i = phi i32 [ %.0232370.i, %._crit_edge.i551 ], [ -1, %bb.cj ] ; 2 uses
  %i.tz = phi <2 x i32> [ %i.ty, %._crit_edge.i551 ], [ splat (i32 -2147483647), %bb.cj ]
  %i.ua = phi <2 x i32> [ %i.vq, %._crit_edge.i551 ], [ splat (i32 2147483647), %bb.cj ] ; 3 uses
  %.not.i.i538 = icmp slt i32 %.0232371.lcssa.i, %.sroa.6461.0.i
  %i.ub = select i1 %.not.i.i538, i32 %i.tv, i32 0
  %i.uc = add nsw i32 %i.ub, %.0232371.lcssa.i
  %.not.i.2.i = icmp slt i32 %.sroa.11.0.i, %.sroa.6461.0.i
  %i.ud = select i1 %.not.i.2.i, i32 %i.tv, i32 0
  %i.ue = add nsw i32 %i.ud, %.sroa.11.0.i
  %.not.i.3.i = icmp slt i32 %.sroa.14.0.i, %.sroa.6461.0.i
  %i.uf = select i1 %.not.i.3.i, i32 %i.tv, i32 0
  %i.ug = add nsw i32 %i.uf, %.sroa.14.0.i
  %i.uh = add i32 %i.tv, -1
  %i.ui = add i32 %i.uh, %.sroa.6461.0.i          ; 2 uses
  %i.uj = sub <2 x i32> %i.tz, %i.ua
  %i.uk = add <2 x i32> %i.uj, splat (i32 1)      ; 2 uses
  %i.ul = extractelement <2 x i32> %i.uk, i64 0   ; 2 uses
  %i.um = sext i32 %i.ul to i64
  %i.un = extractelement <2 x i32> %i.uk, i64 1   ; 4 uses
  %i.uo = sext i32 %i.un to i64
  %i.up = mul nsw i64 %i.um, %i.uo                ; 3 uses
  %i.uq = icmp ult i64 %i.up, 10
  %i.ur = or i32 %i.ul, %i.un
  %i.us = icmp slt i32 %i.ur, 0
  %or.cond7.i = or i1 %i.us, %i.uq
  br i1 %or.cond7.i, label %_path_find_self_intersection.exit, label %bb.cp

bb.cl:                                            ; preds = %bb.co, %.lr.ph.i549
  %indvars.iv.i = phi i64 [ %i.tx, %.lr.ph.i549 ], [ %indvars.iv.next.i, %bb.co ] ; 3 uses
  %.0232377389.i = phi i32 [ 0, %.lr.ph.i549 ], [ %.0232377390.i, %bb.co ]
  %.0232377386.i = phi i32 [ 0, %.lr.ph.i549 ], [ %.0232377387.i, %bb.co ]
  %.0232377383.i = phi i32 [ 0, %.lr.ph.i549 ], [ %.0232377384.i, %bb.co ]
  %.0232371372.i = phi i32 [ -1, %.lr.ph.i549 ], [ %.0232370.i, %bb.co ]
  %i.ut = phi <2 x i32> [ splat (i32 -2147483648), %.lr.ph.i549 ], [ %i.vs, %bb.co ] ; 2 uses
  %i.uu = phi <2 x i32> [ splat (i32 2147483647), %.lr.ph.i549 ], [ %i.vq, %bb.co ] ; 2 uses
  %.idx.i = shl nsw i64 %indvars.iv.i, 3
  %i.uv = getelementptr inbounds i8, ptr %i.tr, i64 %.idx.i ; 4 uses
  %i.uw = load float, ptr %i.uv, align 4, !tbaa !11 ; 2 uses
  %i.ux = fcmp reassoc nsz arcp contract afn oeq float %i.uw, f0xFF7FFFFF
  br i1 %i.ux, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.uy = getelementptr i8, ptr %i.uv, i64 4
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !11 ; 2 uses
  %i.va = fcmp reassoc nsz arcp contract afn oeq float %i.uz, f0xFF7FFFFF
  %i.vb = insertelement <2 x float> poison, float %i.uw, i64 0
  %i.vc = insertelement <2 x float> %i.vb, float %i.uz, i64 1
  br i1 %i.va, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.vd = getelementptr i8, ptr %i.uv, i64 -8
  %i.ve = load <2 x float>, ptr %i.vd, align 4, !tbaa !11 ; 2 uses
  store <2 x float> %i.ve, ptr %i.uv, align 4, !tbaa !11
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.vf = phi <2 x float> [ %i.ve, %bb.cn ], [ %i.vc, %bb.cm ]
  %i.vg = shufflevector <2 x float> %i.vf, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.vh = sitofp <2 x i32> %i.uu to <2 x float>
  %i.vi = fptosi <2 x float> %i.vg to <2 x i32>   ; 2 uses
  %i.vj = trunc nsw i64 %indvars.iv.i to i32      ; 4 uses
  %i.vk = sitofp <2 x i32> %i.ut to <2 x float>
  %i.vl = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.vg, %i.vh ; 3 uses
  %i.vm = extractelement <2 x i1> %i.vl, i64 1
  %.0232370.i = select i1 %i.vm, i32 %i.vj, i32 %.0232371372.i ; 2 uses
  %i.vn = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vg, %i.vk ; 3 uses
  %i.vo = extractelement <2 x i1> %i.vn, i64 1
  %.0232377384.i = select i1 %i.vo, i32 %i.vj, i32 %.0232377383.i ; 2 uses
  %i.vp = extractelement <2 x i1> %i.vl, i64 0
  %.0232377387.i = select i1 %i.vp, i32 %i.vj, i32 %.0232377386.i ; 2 uses
  %i.vq = select <2 x i1> %i.vl, <2 x i32> %i.vi, <2 x i32> %i.uu ; 2 uses
  %i.vr = extractelement <2 x i1> %i.vn, i64 0
  %.0232377390.i = select i1 %i.vr, i32 %i.vj, i32 %.0232377389.i ; 2 uses
  %i.vs = select <2 x i1> %i.vn, <2 x i32> %i.vi, <2 x i32> %i.ut ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i550 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i550, label %._crit_edge.i551, label %bb.cl

bb.cp:                                            ; preds = %bb.ck
  %i.vt = shl i64 %i.up, 2                        ; 2 uses
  %i.vu = call ptr @dt_alloc_aligned(i64 noundef %i.vt) #25 ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.vu, i64 64) ]
  %i.vv = icmp eq ptr %i.vu, null
  br i1 %i.vv, label %_path_find_self_intersection.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.vu, i8 0, i64 %i.vt, i1 false)
  %i.vw = call fastcc ptr @dt_masks_dynbuf_init(i64 noundef 100000, ptr noundef nonnull @.str.34) ; 14 uses
  %i.vx = icmp eq ptr %i.vw, null
  br i1 %i.vx, label %.sink.split.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %invariant.op.i = sub i32 %.sroa.6461.0.i, %i.tu
  br i1 %i.tw, label %.lr.ph416.i, label %.thread349.i

.lr.ph416.i:                                      ; preds = %bb.cr
  %i.vy = shl i32 %.sroa.6461.0.i, 1              ; 2 uses
  %i.vz = add i32 %i.vy, -1
  %i.wa = sext i32 %i.vz to i64
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.wa
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !11
  %i.wd = fptosi float %i.wc to i32
  %i.we = add i32 %i.vy, -2
  %i.wf = sext i32 %i.we to i64
  %i.wg = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.wf
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !11
  %i.wi = fptosi float %i.wh to i32
  %i.wj = shl nsw i32 %i.ai, 2
  %i.wk = getelementptr inbounds nuw i8, ptr %i.vw, i64 136 ; 10 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vw, i64 144 ; 3 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.az, i64 136 ; 9 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.az, i64 144 ; 3 uses
  %i.wq = insertelement <4 x i32> poison, i32 %i.uc, i64 0
  %i.wr = insertelement <4 x i32> %i.wq, i32 %.sroa.6461.0.i, i64 1
  %i.ws = insertelement <4 x i32> %i.wr, i32 %i.ue, i64 2
  %i.wt = insertelement <4 x i32> %i.ws, i32 %i.ug, i64 3 ; 2 uses
  %i.wu = extractelement <2 x i32> %i.ua, i64 0   ; 2 uses
  %i.wv = extractelement <2 x i32> %i.ua, i64 1   ; 2 uses
  %invariant.op946 = sub i32 1, %i.wu
  %invariant.op947 = sub i32 1, %i.wv
  br label %bb.cs

bb.cs:                                            ; preds = %._crit_edge407.i, %.lr.ph416.i
  %.0219414.i = phi i32 [ %i.tu, %.lr.ph416.i ], [ %i.agj, %._crit_edge407.i ] ; 2 uses
  %.0220413.i = phi i32 [ %i.wd, %.lr.ph416.i ], [ %.1221.lcssa.i, %._crit_edge407.i ] ; 6 uses
  %.0222412.i = phi i32 [ %i.wi, %.lr.ph416.i ], [ %.1223.lcssa.i, %._crit_edge407.i ] ; 7 uses
  %.0241411.i = phi i32 [ 0, %.lr.ph416.i ], [ %.1242.lcssa.i, %._crit_edge407.i ] ; 4 uses
  %.reass.i = add i32 %.0219414.i, %invariant.op.i ; 2 uses
  %.not.i539 = icmp slt i32 %.reass.i, %i.ts
  %i.ww = select i1 %.not.i539, i32 0, i32 %i.tv
  %spec.select.i540 = sub nsw i32 %.reass.i, %i.ww ; 10 uses
  %.not277.i = icmp slt i32 %.0241411.i, %i.wj
  br i1 %.not277.i, label %bb.ct, label %.thread349.i

bb.ct:                                            ; preds = %bb.cs
  %i.wx = shl nsw i32 %spec.select.i540, 1
  %i.wy = sext i32 %i.wx to i64
  %i.wz = getelementptr inbounds [4 x i8], ptr %i.tr, i64 %i.wy
  %i.xa = load <2 x float>, ptr %i.wz, align 4, !tbaa !11
  %i.xb = fptosi <2 x float> %i.xa to <2 x i32>   ; 4 uses
  store i64 0, ptr %i.wk, align 8, !tbaa !240
  %i.xc = sitofp <2 x i32> %i.xb to <2 x float>
  %i.xd = load i64, ptr %i.wl, align 8, !tbaa !241 ; 3 uses
  %.not.i.i.i = icmp ugt i64 %i.xd, 2
  br i1 %.not.i.i.i, label %bb.cw, label %bb.cu, !prof !242

bb.cu:                                            ; preds = %bb.ct
  %i.xe = icmp eq i64 %i.xd, 0
  br i1 %i.xe, label %dt_masks_dynbuf_add_2.exit.i.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.xf = shl nuw nsw i64 %i.xd, 1
  %i.xg = add nuw nsw i64 %i.xf, 2
  %i.xh = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vw, i64 noundef %i.xg)
  %.not11.i.i.i = icmp eq i32 %i.xh, 0
  br i1 %.not11.i.i.i, label %dt_masks_dynbuf_add_2.exit.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.cv
  %.pre.i.i.i = load i64, ptr %i.wk, align 8, !tbaa !240 ; 2 uses
  %.pre12.i.i.i = add i64 %.pre.i.i.i, 2
  br label %bb.cw

bb.cw:                                            ; preds = %._crit_edge.i.i.i, %bb.ct
  %.pre-phi.i.i.i = phi i64 [ %.pre12.i.i.i, %._crit_edge.i.i.i ], [ 2, %bb.ct ]
  %i.xi = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ 0, %bb.ct ]
  %i.xj = load ptr, ptr %i.vw, align 8, !tbaa !234
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %i.xi
  store i64 %.pre-phi.i.i.i, ptr %i.wk, align 8, !tbaa !240
  store <2 x float> %i.xc, ptr %i.xk, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit.i.i

dt_masks_dynbuf_add_2.exit.i.i:                   ; preds = %bb.cw, %bb.cv, %bb.cu
  %i.xl = extractelement <2 x i32> %i.xb, i64 0   ; 3 uses
  %i.xm = sub nsw i32 %i.xl, %.0222412.i          ; 4 uses
  %i.xn = icmp sgt i32 %i.xm, 1
  br i1 %i.xn, label %.preheader147.i.i, label %bb.da

.preheader147.i.i:                                ; preds = %dt_masks_dynbuf_add_2.exit.i.i
  %.077169.i.i.a = add nsw i32 %i.xl, -1
  %i.xo = extractelement <2 x i32> %i.xb, i64 1
  %i.xp = sub nsw i32 %i.xo, %.0220413.i
  %i.xq = uitofp nneg i32 %i.xm to float
  %i.xr = sitofp reassoc nsz arcp contract afn i32 %.0220413.i to float
  %i.xs = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.xq
  br label %.preheader.i.i548

.preheader.i.i548:                                ; preds = %dt_masks_dynbuf_add_2.exit106.i.i, %.preheader147.i.i
  %.077170.i.i = phi i32 [ %.077169.i.i.a, %.preheader147.i.i ], [ %.077.i.i, %dt_masks_dynbuf_add_2.exit106.i.i ] ; 3 uses
  %i.xt = sub nsw i32 %.077170.i.i, %.0222412.i
  %i.xu = mul nsw i32 %i.xt, %i.xp
  %i.xv = sitofp reassoc nsz arcp contract afn i32 %i.xu to float
  %i.xw = fmul reassoc nsz arcp contract afn float %i.xv, %i.xs
  %i.xx = fadd reassoc nsz arcp contract afn float %i.xw, %i.xr
  %i.xy = fptosi float %i.xx to i32
  %.val85.i.i = load i64, ptr %i.wk, align 8, !tbaa !240 ; 2 uses
  %i.xz = sitofp reassoc nsz arcp contract afn i32 %.077170.i.i to float
  %17 = sitofp reassoc nsz arcp contract afn i32 %i.xy to float
  %i.ya = add i64 %.val85.i.i, 2                  ; 2 uses
  %i.yb = load i64, ptr %i.wl, align 8, !tbaa !241 ; 3 uses
  %.not.i100.i.i = icmp ult i64 %i.ya, %i.yb
  br i1 %.not.i100.i.i, label %bb.cz, label %bb.cx, !prof !242

bb.cx:                                            ; preds = %.preheader.i.i548
  %i.yc = icmp eq i64 %i.yb, 0
  br i1 %i.yc, label %dt_masks_dynbuf_add_2.exit106.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.yd = shl i64 %i.yb, 1
  %i.ye = add i64 %i.yd, 2
  %i.yf = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vw, i64 noundef %i.ye)
  %.not11.i101.i.i = icmp eq i32 %i.yf, 0
  br i1 %.not11.i101.i.i, label %dt_masks_dynbuf_add_2.exit106.i.i, label %._crit_edge.i102.i.i

._crit_edge.i102.i.i:                             ; preds = %bb.cy
  %.pre.i103.i.i = load i64, ptr %i.wk, align 8, !tbaa !240 ; 2 uses
  %.pre12.i104.i.i = add i64 %.pre.i103.i.i, 2
  br label %bb.cz

bb.cz:                                            ; preds = %._crit_edge.i102.i.i, %.preheader.i.i548
  %.pre-phi.i105.i.i = phi i64 [ %.pre12.i104.i.i, %._crit_edge.i102.i.i ], [ %i.ya, %.preheader.i.i548 ]
  %i.yg = phi i64 [ %.pre.i103.i.i, %._crit_edge.i102.i.i ], [ %.val85.i.i, %.preheader.i.i548 ]
  %i.yh = load ptr, ptr %i.vw, align 8, !tbaa !234
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %i.yg ; 2 uses
  store float %i.xz, ptr %i.yi, align 4, !tbaa !11
  store i64 %.pre-phi.i105.i.i, ptr %i.wk, align 8, !tbaa !240
  %i.yj = getelementptr i8, ptr %i.yi, i64 4
  store float %17, ptr %i.yj, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit106.i.i

dt_masks_dynbuf_add_2.exit106.i.i:                ; preds = %bb.cz, %bb.cy, %bb.cx
  %.077.i.i = add nsw i32 %.077170.i.i, -1        ; 2 uses
  %i.yk = icmp sgt i32 %.077.i.i, %.0222412.i
  br i1 %i.yk, label %.preheader.i.i548, label %_path_fill_gaps.exit.i

bb.da:                                            ; preds = %dt_masks_dynbuf_add_2.exit.i.i
  %i.yl = icmp slt i32 %i.xm, -1
  br i1 %i.yl, label %.preheader153.i.i, label %_path_fill_gaps.exit.i

.preheader153.i.i:                                ; preds = %bb.da
  %.074160.i.i = add nsw i32 %i.xl, 1
  %i.ym = extractelement <2 x i32> %i.xb, i64 1
  %i.yn = sub nsw i32 %i.ym, %.0220413.i
  %i.yo = sitofp reassoc nsz arcp contract afn i32 %i.xm to float
  %i.yp = sitofp reassoc nsz arcp contract afn i32 %.0220413.i to float
  %i.yq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.yo
  br label %.preheader149.i.i

.preheader149.i.i:                                ; preds = %dt_masks_dynbuf_add_2.exit127.i.i, %.preheader153.i.i
  %.074161.i.i = phi i32 [ %.074160.i.i, %.preheader153.i.i ], [ %.074.i.i, %dt_masks_dynbuf_add_2.exit127.i.i ] ; 3 uses
  %i.yr = sub nsw i32 %.074161.i.i, %.0222412.i
  %i.ys = mul nsw i32 %i.yr, %i.yn
  %i.yt = sitofp reassoc nsz arcp contract afn i32 %i.ys to float
  %i.yu = fmul reassoc nsz arcp contract afn float %i.yt, %i.yq
  %i.yv = fadd reassoc nsz arcp contract afn float %i.yu, %i.yp
  %i.yw = fptosi float %i.yv to i32
  %.val83.i.i = load i64, ptr %i.wk, align 8, !tbaa !240 ; 2 uses
  %i.yx = sitofp reassoc nsz arcp contract afn i32 %.074161.i.i to float
  %18 = sitofp reassoc nsz arcp contract afn i32 %i.yw to float
  %i.yy = add i64 %.val83.i.i, 2                  ; 2 uses
  %i.yz = load i64, ptr %i.wl, align 8, !tbaa !241 ; 3 uses
  %.not.i121.i.i = icmp ult i64 %i.yy, %i.yz
  br i1 %.not.i121.i.i, label %bb.dd, label %bb.db, !prof !242

bb.db:                                            ; preds = %.preheader149.i.i
  %i.za = icmp eq i64 %i.yz, 0
  br i1 %i.za, label %dt_masks_dynbuf_add_2.exit127.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.zb = shl i64 %i.yz, 1
  %i.zc = add i64 %i.zb, 2
  %i.zd = call fastcc i32 @_dt_masks_dynbuf_growto(ptr noundef nonnull %i.vw, i64 noundef %i.zc)
  %.not11.i122.i.i = icmp eq i32 %i.zd, 0
  br i1 %.not11.i122.i.i, label %dt_masks_dynbuf_add_2.exit127.i.i, label %._crit_edge.i123.i.i

._crit_edge.i123.i.i:                             ; preds = %bb.dc
  %.pre.i124.i.i = load i64, ptr %i.wk, align 8, !tbaa !240 ; 2 uses
  %.pre12.i125.i.i = add i64 %.pre.i124.i.i, 2
  br label %bb.dd

bb.dd:                                            ; preds = %._crit_edge.i123.i.i, %.preheader149.i.i
  %.pre-phi.i126.i.i = phi i64 [ %.pre12.i125.i.i, %._crit_edge.i123.i.i ], [ %i.yy, %.preheader149.i.i ]
  %i.ze = phi i64 [ %.pre.i124.i.i, %._crit_edge.i123.i.i ], [ %.val83.i.i, %.preheader149.i.i ]
  %i.zf = load ptr, ptr %i.vw, align 8, !tbaa !234
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %i.ze ; 2 uses
  store float %i.yx, ptr %i.zg, align 4, !tbaa !11
  store i64 %.pre-phi.i126.i.i, ptr %i.wk, align 8, !tbaa !240
  %i.zh = getelementptr i8, ptr %i.zg, i64 4
  store float %18, ptr %i.zh, align 4, !tbaa !11
  br label %dt_masks_dynbuf_add_2.exit127.i.i

dt_masks_dynbuf_add_2.exit127.i.i:                ; preds = %bb.dd, %bb.dc, %bb.db
  %.074.i.i = add i32 %.074161.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %.074.i.i, %.0222412.i
  br i1 %exitcond.not.i.i, label %_path_fill_gaps.exit.i, label %.preheader149.i.i

_path_fill_gaps.exit.i:                           ; preds = %dt_masks_dynbuf_add_2.exit127.i.i, %dt_masks_dynbuf_add_2.exit106.i.i, %bb.da
  %.val.i541 = load i64, ptr %i.wk, align 8, !tbaa !240
  %i.zi = lshr i64 %.val.i541, 1
  %i.zj = trunc i64 %i.zi to i32
  %.0217401.i = add i32 %i.zj, -1                 ; 2 uses
  %i.zk = icmp sgt i32 %.0217401.i, -1
  br i1 %i.zk, label %.lr.ph406.i, label %._crit_edge407.i

.lr.ph406.i:                                      ; preds = %_path_fill_gaps.exit.i
  %i.zl = add nsw i32 %spec.select.i540, -1
  %.not.i294.i = icmp slt i32 %spec.select.i540, %.sroa.6461.0.i
  %i.zm = select i1 %.not.i294.i, i32 %i.tv, i32 0
  %i.zn = add nsw i32 %i.zm, %spec.select.i540    ; 10 uses
  %i.zo = insertelement <4 x i32> poison, i32 %i.zn, i64 0
  %i.zp = shufflevector <4 x i32> %i.zo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zq = icmp slt <4 x i32> %i.wt, %i.zp
  %i.zr = zext nneg i32 %.0217401.i to i64
  %broadcast.splatinsert806 = insertelement <8 x i32> poison, i32 %i.zn, i64 0
  %broadcast.splat807 = shufflevector <8 x i32> %broadcast.splatinsert806, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert829.a = insertelement <8 x i32> poison, i32 %i.zn, i64 0
  %broadcast.splat830.a = shufflevector <8 x i32> %broadcast.splatinsert829.a, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %bb.de

bb.de:                                            ; preds = %bb.ei, %.lr.ph406.i
  %indvars.iv456.i = phi i64 [ %i.zr, %.lr.ph406.i ], [ %indvars.iv.next457.i, %bb.ei ] ; 3 uses
  %.1221404.i = phi i32 [ %.0220413.i, %.lr.ph406.i ], [ %.2.ph.i, %bb.ei ] ; 2 uses
  %.1223403.i = phi i32 [ %.0222412.i, %.lr.ph406.i ], [ %.2224.ph.i, %bb.ei ] ; 2 uses
  %.1242402.i = phi i32 [ %.0241411.i, %.lr.ph406.i ], [ %.8.ph.i, %bb.ei ] ; 2 uses
  %.val290.i = load ptr, ptr %i.vw, align 8, !tbaa !234
  %.idx500.i = shl nuw nsw i64 %indvars.iv456.i, 3
  %i.zs = getelementptr inbounds nuw i8, ptr %.val290.i, i64 %.idx500.i ; 2 uses
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !11
  %i.zu = fptosi float %i.zt to i32               ; 4 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zs, i64 4
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !11
  %i.zx = fptosi float %i.zw to i32               ; 4 uses
  %.reass.reass = add i32 %i.zx, %invariant.op946
  %i.zy = mul nsw i32 %.reass.reass, %i.un
  %.reass787.reass = add i32 %i.zu, %invariant.op947
  %i.zz = add nsw i32 %.reass787.reass, %i.zy     ; 3 uses
  %i.aaa = icmp slt i32 %i.zz, 0
  br i1 %i.aaa, label %.sink.split.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.aab = zext nneg i32 %i.zz to i64             ; 3 uses
  %i.aac = icmp ult i64 %i.up, %i.aab
  br i1 %i.aac, label %.sink.split.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.aad = icmp eq i32 %.1223403.i, %i.zu
  %i.aae = icmp eq i32 %.1221404.i, %i.zx
  %or.cond283.i = select i1 %i.aad, i1 %i.aae, i1 false
  br i1 %or.cond283.i, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.aab
  store i32 %spec.select.i540, ptr %i.aaf, align 4, !tbaa !28
  br label %bb.ei

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.wm, align 4
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.vu, i64 %i.aab ; 3 uses
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !28
  store i32 %i.aah, ptr %i.a, align 4, !tbaa !28
  %.not278.i = icmp sgt i32 %i.wv, %i.zu
  br i1 %.not278.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aai = getelementptr i8, ptr %i.aag, i64 -4
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !28
  store i32 %i.aaj, ptr %i.wm, align 4, !tbaa !28
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.not279.i = icmp sgt i32 %i.wu, %i.zx
  br i1 %.not279.i, label %.preheader909, label %bb.dl

.preheader909:                                    ; preds = %bb.dl, %bb.dk
  br label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.aak = sub nsw i32 %i.zz, %i.un
  %i.aal = sext i32 %i.aak to i64
  %i.aam = getelementptr inbounds [4 x i8], ptr %i.vu, i64 %i.aal
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !28
  store i32 %i.aan, ptr %i.wn, align 4, !tbaa !28
  br label %.preheader909

bb.dm:                                            ; preds = %_check_cutable.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.ei

bb.dn:                                            ; preds = %.preheader909, %_check_cutable.exit.thread.i
  %indvars.iv452.i = phi i64 [ %indvars.iv.next453.i, %_check_cutable.exit.thread.i ], [ 0, %.preheader909 ] ; 2 uses
  %.2243399.i = phi i32 [ %.7.i, %_check_cutable.exit.thread.i ], [ %.1242402.i, %.preheader909 ] ; 10 uses
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv452.i
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !28 ; 8 uses
  %i.aaq = icmp eq i32 %i.aap, %spec.select.i540
  %i.aar = icmp eq i32 %i.aap, %i.zl
  %or.cond285.i = select i1 %i.aaq, i1 true, i1 %i.aar
  br i1 %or.cond285.i, label %_check_cutable.exit.thread.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aas = icmp eq i32 %i.aap, 0
  br i1 %i.aas, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  store i32 %spec.select.i540, ptr %i.aag, align 4, !tbaa !28
  br label %_check_cutable.exit.thread.i

bb.dq:                                            ; preds = %bb.do
  %.not.i293.i = icmp slt i32 %i.aap, %.sroa.6461.0.i
  %i.aat = select i1 %.not.i293.i, i32 %i.tv, i32 0
  %i.aau = add nsw i32 %i.aat, %i.aap             ; 8 uses
  %i.aav = sub nsw i32 %i.zn, %i.aau
  %i.aaw = sitofp reassoc nsz arcp contract afn i32 %i.aav to float
  %i.aax = load i64, ptr %i.bd, align 8, !tbaa !236 ; 5 uses
  %.not49.i.i = icmp eq i64 %i.aax, 0
  br i1 %.not49.i.i, label %._crit_edge.i297.i, label %iter.check

iter.check:                                       ; preds = %bb.dq
  %i.aay = load ptr, ptr %i.ba, align 8, !tbaa !238 ; 6 uses
  %i.aaz = add i64 %i.aax, -1
  %i.aba = lshr i64 %i.aaz, 1
  %i.abb = add nuw i64 %i.aba, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.aax, 15
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check805 = icmp ult i64 %i.aax, 63
  br i1 %min.iters.check805, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.abc = and i64 %i.abb, 24
  %n.vec = and i64 %i.abb, -32                    ; 4 uses
  %i.abd = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aau, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ] ; 2 uses
  %vec.phi808 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi821, %vector.body ] ; 2 uses
  %vec.phi809 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi822, %vector.body ] ; 2 uses
  %vec.phi810 = phi <8 x float> [ zeroinitializer, %vector.ph ], [ %predphi823, %vector.body ] ; 2 uses
  %i.abe = shl nuw i64 %index, 1                  ; 4 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.abe
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.abe
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 64
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.abe
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 128
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.abe
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 192
  %wide.vec = load <16 x i32>, ptr %i.abf, align 4, !tbaa !28 ; 2 uses
  %strided.vec = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec811 = shufflevector <16 x i32> %wide.vec, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec812 = load <16 x i32>, ptr %i.abh, align 4, !tbaa !28 ; 2 uses
  %strided.vec813 = shufflevector <16 x i32> %wide.vec812, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec814 = shufflevector <16 x i32> %wide.vec812, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec815 = load <16 x i32>, ptr %i.abj, align 4, !tbaa !28 ; 2 uses
  %strided.vec816 = shufflevector <16 x i32> %wide.vec815, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec817 = shufflevector <16 x i32> %wide.vec815, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %wide.vec818 = load <16 x i32>, ptr %i.abl, align 4, !tbaa !28 ; 2 uses
  %strided.vec819 = shufflevector <16 x i32> %wide.vec818, <16 x i32> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14> ; 2 uses
  %strided.vec820 = shufflevector <16 x i32> %wide.vec818, <16 x i32> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15> ; 2 uses
  %i.abm = icmp slt <8 x i32> %strided.vec811, %broadcast.splat
  %i.abn = icmp slt <8 x i32> %strided.vec814, %broadcast.splat
  %i.abo = icmp slt <8 x i32> %strided.vec817, %broadcast.splat
  %i.abp = icmp slt <8 x i32> %strided.vec820, %broadcast.splat
  %i.abq = icmp sgt <8 x i32> %strided.vec, %broadcast.splat807
  %i.abr = icmp sgt <8 x i32> %strided.vec813, %broadcast.splat807
  %i.abs = icmp sgt <8 x i32> %strided.vec816, %broadcast.splat807
  %i.abt = icmp sgt <8 x i32> %strided.vec819, %broadcast.splat807
  %i.abu = select <8 x i1> %i.abm, <8 x i1> splat (i1 true), <8 x i1> %i.abq
  %i.abv = select <8 x i1> %i.abn, <8 x i1> splat (i1 true), <8 x i1> %i.abr
  %i.abw = select <8 x i1> %i.abo, <8 x i1> splat (i1 true), <8 x i1> %i.abs
  %i.abx = select <8 x i1> %i.abp, <8 x i1> splat (i1 true), <8 x i1> %i.abt
  %i.aby = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat807, <8 x i32> %strided.vec811)
  %i.abz = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat807, <8 x i32> %strided.vec814)
  %i.aca = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat807, <8 x i32> %strided.vec817)
  %i.acb = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %broadcast.splat807, <8 x i32> %strided.vec820)
  %i.acc = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec)
  %i.acd = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec813)
  %i.ace = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec816)
  %i.acf = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %broadcast.splat, <8 x i32> %strided.vec819)
  %i.acg = sub nsw <8 x i32> %i.aby, %i.acc
  %i.ach = sub nsw <8 x i32> %i.abz, %i.acd
  %i.aci = sub nsw <8 x i32> %i.aca, %i.ace
  %i.acj = sub nsw <8 x i32> %i.acb, %i.acf
  %i.ack = sitofp reassoc nsz arcp contract afn <8 x i32> %i.acg to <8 x float>
  %i.acl = sitofp reassoc nsz arcp contract afn <8 x i32> %i.ach to <8 x float>
end_hunk_0
