Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avxvnniint8?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii:bb.a
  store i8 %i.vd, ptr %i.vb, align 1, !tbaa !89
  %i.ve = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 4
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.l ; 2 uses
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !89
  store i8 %i.vg, ptr %i.ve, align 1, !tbaa !89
  %i.vh = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 5
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 %i.l ; 2 uses
  %i.vj = load i8, ptr %i.vi, align 1, !tbaa !89
  store i8 %i.vj, ptr %i.vh, align 1, !tbaa !89
  %i.vk = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 6
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 %i.l ; 2 uses
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !89
  store i8 %i.vm, ptr %i.vk, align 1, !tbaa !89
  %i.vn = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 7
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vl, i64 %i.l ; 2 uses
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !89
  store i8 %i.vp, ptr %i.vn, align 1, !tbaa !89
  %i.vq = getelementptr inbounds nuw i8, ptr %.25231.us.i.i, i64 8 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 %i.l
  %i.vs = add nuw nsw i32 %.1233.us.i.i, 8        ; 2 uses
  %exitcond292.not.i.i.7 = icmp eq i32 %i.vs, %5
  br i1 %exitcond292.not.i.i.7, label %.loopexit.us.i.i, label %.lr.ph234.us.i.i, !llvm.loop !40

.preheader.us.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph227.us.i.i
  br i1 %lcmp.mod542.not.not, label %.lr.ph227.us.i.i.epil.preheader, label %.preheader.us.i.i

.lr.ph227.us.i.i.epil.preheader:                  ; preds = %.preheader.us.i.i.loopexit.unr-lcssa, %.lr.ph227.us.i.i.preheader
  %.0344225.us.i.i.epil.init = phi ptr [ %i.tv, %.lr.ph227.us.i.i.preheader ], [ %i.ut, %.preheader.us.i.i.loopexit.unr-lcssa ] ; 5 uses
  %.24224.us.i.i.epil.init = phi ptr [ %.21237.us.i.i, %.lr.ph227.us.i.i.preheader ], [ %i.us, %.preheader.us.i.i.loopexit.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod545)
  %i.vt = load i8, ptr %.0344225.us.i.i.epil.init, align 1, !tbaa !89
  store i8 %i.vt, ptr %.24224.us.i.i.epil.init, align 1, !tbaa !89
  %i.vu = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i.epil.init, i64 %i.l
  %i.vv = load i8, ptr %i.vu, align 1, !tbaa !89
  %i.vw = getelementptr inbounds nuw i8, ptr %.24224.us.i.i.epil.init, i64 1
  store i8 %i.vv, ptr %i.vw, align 1, !tbaa !89
  %i.vx = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i.epil.init, i64 %i.tg
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !89
  %i.vz = getelementptr inbounds nuw i8, ptr %.24224.us.i.i.epil.init, i64 2
  store i8 %i.vy, ptr %i.vz, align 1, !tbaa !89
  %i.wa = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i.epil.init, i64 %i.th
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !89
  %i.wc = getelementptr inbounds nuw i8, ptr %.24224.us.i.i.epil.init, i64 3
  store i8 %i.wb, ptr %i.wc, align 1, !tbaa !89
  %i.wd = getelementptr inbounds nuw i8, ptr %.24224.us.i.i.epil.init, i64 4
  %i.we = getelementptr inbounds nuw i8, ptr %.0344225.us.i.i.epil.init, i64 %i.ti
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.lr.ph227.us.i.i.epil.preheader, %.preheader.us.i.i.loopexit.unr-lcssa, %.lr.ph238.split.us.i.i
  %.24.lcssa.us.i.i = phi ptr [ %.21237.us.i.i, %.lr.ph238.split.us.i.i ], [ %i.us, %.preheader.us.i.i.loopexit.unr-lcssa ], [ %i.wd, %.lr.ph227.us.i.i.epil.preheader ] ; 3 uses
  %.0344.lcssa.us.i.i = phi ptr [ %i.tv, %.lr.ph238.split.us.i.i ], [ %i.ut, %.preheader.us.i.i.loopexit.unr-lcssa ], [ %i.we, %.lr.ph227.us.i.i.epil.preheader ] ; 2 uses
  %.0.lcssa.us.i.i = phi i32 [ 0, %.lr.ph238.split.us.i.i ], [ %i.tj, %.preheader.us.i.i.loopexit.unr-lcssa ], [ %i.tj, %.lr.ph227.us.i.i.epil.preheader ] ; 5 uses
  %i.wf = icmp slt i32 %.0.lcssa.us.i.i, %5
  br i1 %i.wf, label %.lr.ph234.us.i.i.preheader, label %.loopexit.us.i.i

.lr.ph234.us.i.i.preheader:                       ; preds = %.preheader.us.i.i
  %i.wg = sub i32 %5, %.0.lcssa.us.i.i
  %xtraiter548 = and i32 %i.wg, 7                 ; 2 uses
  %lcmp.mod549.not = icmp eq i32 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %.lr.ph234.us.i.i.prol.loopexit, label %.lr.ph234.us.i.i.prol

.lr.ph234.us.i.i.prol:                            ; preds = %.lr.ph234.us.i.i.preheader, %.lr.ph234.us.i.i.prol
  %.1233.us.i.i.prol = phi i32 [ %i.wk, %.lr.ph234.us.i.i.prol ], [ %.0.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ]
  %.1345232.us.i.i.prol = phi ptr [ %i.wj, %.lr.ph234.us.i.i.prol ], [ %.0344.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ] ; 2 uses
  %.25231.us.i.i.prol = phi ptr [ %i.wi, %.lr.ph234.us.i.i.prol ], [ %.24.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ] ; 2 uses
  %prol.iter550 = phi i32 [ %prol.iter550.next, %.lr.ph234.us.i.i.prol ], [ 0, %.lr.ph234.us.i.i.preheader ]
  %i.wh = load i8, ptr %.1345232.us.i.i.prol, align 1, !tbaa !89
  store i8 %i.wh, ptr %.25231.us.i.i.prol, align 1, !tbaa !89
  %i.wi = getelementptr inbounds nuw i8, ptr %.25231.us.i.i.prol, i64 1 ; 3 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %.1345232.us.i.i.prol, i64 %i.l ; 2 uses
  %i.wk = add nuw nsw i32 %.1233.us.i.i.prol, 1   ; 2 uses
  %prol.iter550.next = add i32 %prol.iter550, 1   ; 2 uses
  %prol.iter550.cmp.not = icmp eq i32 %prol.iter550.next, %xtraiter548
  br i1 %prol.iter550.cmp.not, label %.lr.ph234.us.i.i.prol.loopexit, label %.lr.ph234.us.i.i.prol, !llvm.loop !41

.lr.ph234.us.i.i.prol.loopexit:                   ; preds = %.lr.ph234.us.i.i.prol, %.lr.ph234.us.i.i.preheader
  %.lcssa434.unr = phi ptr [ poison, %.lr.ph234.us.i.i.preheader ], [ %i.wi, %.lr.ph234.us.i.i.prol ]
  %.1233.us.i.i.unr = phi i32 [ %.0.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ], [ %i.wk, %.lr.ph234.us.i.i.prol ]
  %.1345232.us.i.i.unr = phi ptr [ %.0344.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ], [ %i.wj, %.lr.ph234.us.i.i.prol ]
  %.25231.us.i.i.unr = phi ptr [ %.24.lcssa.us.i.i, %.lr.ph234.us.i.i.preheader ], [ %i.wi, %.lr.ph234.us.i.i.prol ]
  %i.wl = sub i32 %.0.lcssa.us.i.i, %5
  %i.wm = icmp ugt i32 %i.wl, -8
  br i1 %i.wm, label %.loopexit.us.i.i, label %.lr.ph234.us.i.i

.loopexit.us.i.i:                                 ; preds = %.lr.ph234.us.i.i.prol.loopexit, %.lr.ph234.us.i.i, %.preheader.us.i.i
  %.25.lcssa.us.i.i = phi ptr [ %.24.lcssa.us.i.i, %.preheader.us.i.i ], [ %.lcssa434.unr, %.lr.ph234.us.i.i.prol.loopexit ], [ %i.vq, %.lr.ph234.us.i.i ]
  %indvars.iv.next294.i.i = add nuw nsw i64 %indvars.iv293.i.i, 1 ; 2 uses
  %exitcond297.not.i.i = icmp eq i64 %indvars.iv.next294.i.i, %wide.trip.count296.i.i
  br i1 %exitcond297.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %.lr.ph238.split.us.i.i, !llvm.loop !42

.lr.ph238.split.i.i:                              ; preds = %.lr.ph238.i.i
  %i.wn = icmp slt i32 %5, 8
  %i.wo = icmp ne i32 %i.n, 8
  %brmerge.i.i = or i1 %i.wn, %i.wo
  br i1 %brmerge.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit385.preheader.i.i

_ZN4ncnn3MatD2Ev.exit385.preheader.i.i:           ; preds = %.lr.ph238.split.i.i
  %i.wp = sext i32 %.2358.lcssa.i.i to i64
  %i.wq = sext i32 %2 to i64
  %wide.trip.count.i.i = sext i32 %3 to i64
  %i.wr = add nsw i32 %i.tb, -1
  %xtraiter533 = and i32 %i.tb, 7                 ; 3 uses
  %i.ws = icmp ult i32 %i.wr, 7
  %unroll_iter538 = and i32 %i.tb, 268435448
  %lcmp.mod535.not = icmp eq i32 %xtraiter533, 0
  %lcmp.mod537 = icmp ne i32 %xtraiter533, 0
  br label %_ZN4ncnn3MatD2Ev.exit385.i.i

_ZN4ncnn3MatD2Ev.exit385.i.i:                     ; preds = %..loopexit118_crit_edge.i.i, %_ZN4ncnn3MatD2Ev.exit385.preheader.i.i
  %indvars.iv287.i.i = phi i64 [ %i.wp, %_ZN4ncnn3MatD2Ev.exit385.preheader.i.i ], [ %indvars.iv.next288.i.i, %..loopexit118_crit_edge.i.i ] ; 2 uses
  %.21237.i.i = phi ptr [ %.14.lcssa.i.i, %_ZN4ncnn3MatD2Ev.exit385.preheader.i.i ], [ %.lcssa436, %..loopexit118_crit_edge.i.i ] ; 2 uses
  %i.wt = load ptr, ptr %0, align 8, !tbaa !86, !noalias !98
  %i.wu = load i64, ptr %i.k, align 8, !tbaa !84, !noalias !98
  %i.wv = mul i64 %i.wu, %i.sz
  %i.ww = load i64, ptr %i.ta, align 8, !tbaa !88, !noalias !98
  %i.wx = mul i64 %i.wv, %i.ww
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wx
  %i.wz = add nsw i64 %indvars.iv287.i.i, %i.wq
  %i.xa = shl nsw i64 %i.wz, 3
  %i.xb = getelementptr inbounds i8, ptr %i.wy, i64 %i.xa ; 2 uses
  br i1 %i.ws, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit385.i.i.new

_ZN4ncnn3MatD2Ev.exit385.i.i.new:                 ; preds = %_ZN4ncnn3MatD2Ev.exit385.i.i, %_ZN4ncnn3MatD2Ev.exit385.i.i.new
  %.0347220.i.i = phi ptr [ %i.xz, %_ZN4ncnn3MatD2Ev.exit385.i.i.new ], [ %i.xb, %_ZN4ncnn3MatD2Ev.exit385.i.i ] ; 2 uses
  %.22219.i.i = phi ptr [ %i.xy, %_ZN4ncnn3MatD2Ev.exit385.i.i.new ], [ %.21237.i.i, %_ZN4ncnn3MatD2Ev.exit385.i.i ] ; 9 uses
  %niter539 = phi i32 [ %niter539.next.7, %_ZN4ncnn3MatD2Ev.exit385.i.i.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit385.i.i ]
  %i.xc = load i64, ptr %.0347220.i.i, align 1, !tbaa !89
  store i64 %i.xc, ptr %.22219.i.i, align 1, !tbaa !89
  %i.xd = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 8
  %i.xe = getelementptr inbounds nuw i8, ptr %.0347220.i.i, i64 %i.tc ; 2 uses
  %i.xf = load i64, ptr %i.xe, align 1, !tbaa !89
  store i64 %i.xf, ptr %i.xd, align 1, !tbaa !89
  %i.xg = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 16
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.tc ; 2 uses
  %i.xi = load i64, ptr %i.xh, align 1, !tbaa !89
  store i64 %i.xi, ptr %i.xg, align 1, !tbaa !89
  %i.xj = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 24
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 %i.tc ; 2 uses
  %i.xl = load i64, ptr %i.xk, align 1, !tbaa !89
  store i64 %i.xl, ptr %i.xj, align 1, !tbaa !89
  %i.xm = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 32
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.tc ; 2 uses
  %i.xo = load i64, ptr %i.xn, align 1, !tbaa !89
  store i64 %i.xo, ptr %i.xm, align 1, !tbaa !89
  %i.xp = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 40
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.tc ; 2 uses
  %i.xr = load i64, ptr %i.xq, align 1, !tbaa !89
  store i64 %i.xr, ptr %i.xp, align 1, !tbaa !89
  %i.xs = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 48
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 %i.tc ; 2 uses
  %i.xu = load i64, ptr %i.xt, align 1, !tbaa !89
  store i64 %i.xu, ptr %i.xs, align 1, !tbaa !89
  %i.xv = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 56
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.tc ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 1, !tbaa !89
  store i64 %i.xx, ptr %i.xv, align 1, !tbaa !89
  %i.xy = getelementptr inbounds nuw i8, ptr %.22219.i.i, i64 64 ; 3 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.tc ; 2 uses
  %niter539.next.7 = add i32 %niter539, 8         ; 2 uses
  %niter539.ncmp.7 = icmp eq i32 %niter539.next.7, %unroll_iter538
  br i1 %niter539.ncmp.7, label %..loopexit118_crit_edge.i.i.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit385.i.i.new, !llvm.loop !45

..loopexit118_crit_edge.i.i.unr-lcssa:            ; preds = %_ZN4ncnn3MatD2Ev.exit385.i.i.new
  br i1 %lcmp.mod535.not, label %..loopexit118_crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit118_crit_edge.i.i.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit385.i.i
  %.0347220.i.i.epil.init = phi ptr [ %i.xb, %_ZN4ncnn3MatD2Ev.exit385.i.i ], [ %i.xz, %..loopexit118_crit_edge.i.i.unr-lcssa ]
  %.22219.i.i.epil.init = phi ptr [ %.21237.i.i, %_ZN4ncnn3MatD2Ev.exit385.i.i ], [ %i.xy, %..loopexit118_crit_edge.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod537)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.0347220.i.i.epil = phi ptr [ %.0347220.i.i.epil.init, %.epil.preheader ], [ %i.yc, %bb.c ] ; 2 uses
  %.22219.i.i.epil = phi ptr [ %.22219.i.i.epil.init, %.epil.preheader ], [ %i.yb, %bb.c ] ; 2 uses
  %epil.iter534 = phi i32 [ 0, %.epil.preheader ], [ %epil.iter534.next, %bb.c ]
  %i.ya = load i64, ptr %.0347220.i.i.epil, align 1, !tbaa !89
  store i64 %i.ya, ptr %.22219.i.i.epil, align 1, !tbaa !89
  %i.yb = getelementptr inbounds nuw i8, ptr %.22219.i.i.epil, i64 8 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0347220.i.i.epil, i64 %i.tc
  %epil.iter534.next = add i32 %epil.iter534, 1   ; 2 uses
  %epil.iter534.cmp.not = icmp eq i32 %epil.iter534.next, %xtraiter533
  br i1 %epil.iter534.cmp.not, label %..loopexit118_crit_edge.i.i, label %bb.c, !llvm.loop !46

..loopexit118_crit_edge.i.i:                      ; preds = %bb.c, %..loopexit118_crit_edge.i.i.unr-lcssa
  %.lcssa436 = phi ptr [ %i.xy, %..loopexit118_crit_edge.i.i.unr-lcssa ], [ %i.yb, %bb.c ]
  %indvars.iv.next288.i.i = add nuw nsw i64 %indvars.iv287.i.i, 1 ; 2 uses
  %exitcond290.not.i.i = icmp eq i64 %indvars.iv.next288.i.i, %wide.trip.count.i.i
  br i1 %exitcond290.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit385.i.i, !llvm.loop !42

bb.d:                                             ; preds = %bb.a
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !99 ; 9 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !85 ; 9 uses
  %i.yh = add nsw i32 %6, -1                      ; 2 uses
  %i.yi = mul nsw i32 %8, %i.yh
  %.neg.i.i = xor i32 %i.yi, -1
  %i.yj = add i32 %i.ye, %.neg.i.i
  %i.yk = sdiv i32 %i.yj, %10                     ; 3 uses
  %i.yl = add nsw i32 %i.yk, 1                    ; 7 uses
  %i.ym = mul nsw i32 %7, %6                      ; 45 uses
  %i.yn = icmp eq i32 %i.yk, 0
  br i1 %i.yn, label %_ZN17FastDivider_epu32C2Ej.exit1263.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.yo = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yk, i1 true) ; 3 uses
  %i.yp = sub nuw nsw i32 32, %i.yo
  %i.yq = icmp eq i32 %i.yo, 0
  %i.yr = shl nuw i32 1, %i.yp
  %i.ys = select i1 %i.yq, i32 0, i32 %i.yr
  %i.yt = sub i32 %i.ys, %i.yl
  %i.yu = zext i32 %i.yt to i64
  %i.yv = shl nuw i64 %i.yu, 32
  %i.yw = zext i32 %i.yl to i64
  %i.yx = udiv i64 %i.yv, %i.yw
  %i.yy = trunc i64 %i.yx to i32
  %i.yz = add i32 %i.yy, 1
  %i.za = xor i32 %i.yo, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1263.i.i

_ZN17FastDivider_epu32C2Ej.exit1263.i.i:          ; preds = %bb.e, %bb.d
  %.012.i1260.i.i = phi i32 [ %i.za, %bb.e ], [ 0, %bb.d ]
  %.011.i1261.i.i = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  %.0.i1262.i.i = phi i32 [ %i.yz, %bb.e ], [ 1, %bb.d ]
  %i.zb = insertelement <8 x i32> poison, i32 %.0.i1262.i.i, i64 0
  %i.zc = shufflevector <8 x i32> %i.zb, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.zd = bitcast <8 x i32> %i.zc to <4 x i64>
  %i.ze = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1261.i.i, i64 0 ; 2 uses
  %i.zf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1260.i.i, i64 0 ; 2 uses
  %i.zg = icmp eq i32 %i.ym, 1
  br i1 %i.zg, label %_ZN17FastDivider_epu32C2Ej.exit1259.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1263.i.i
  %i.zh = add nsw i32 %i.ym, -1
  %i.zi = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zh, i1 true) ; 3 uses
  %i.zj = sub nuw nsw i32 32, %i.zi
  %i.zk = icmp eq i32 %i.zi, 0
  %i.zl = shl nuw i32 1, %i.zj
  %i.zm = select i1 %i.zk, i32 0, i32 %i.zl
  %i.zn = sub i32 %i.zm, %i.ym
  %i.zo = zext i32 %i.zn to i64
  %i.zp = shl nuw i64 %i.zo, 32
  %i.zq = zext i32 %i.ym to i64
  %i.zr = udiv i64 %i.zp, %i.zq
  %i.zs = trunc i64 %i.zr to i32
  %i.zt = add i32 %i.zs, 1
  %i.zu = xor i32 %i.zi, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1259.i.i

_ZN17FastDivider_epu32C2Ej.exit1259.i.i:          ; preds = %bb.f, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i
  %.012.i1256.i.i = phi i32 [ %i.zu, %bb.f ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %.011.i1257.i.i = phi i32 [ 1, %bb.f ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %.0.i1258.i.i = phi i32 [ %i.zt, %bb.f ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1263.i.i ]
  %i.zv = insertelement <8 x i32> poison, i32 %.0.i1258.i.i, i64 0
  %i.zw = shufflevector <8 x i32> %i.zv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.zx = bitcast <8 x i32> %i.zw to <4 x i64>    ; 4 uses
  %i.zy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1257.i.i, i64 0 ; 4 uses
  %i.zz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1256.i.i, i64 0 ; 7 uses
  br i1 %i.a, label %_ZN17FastDivider_epu32C2Ej.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1259.i.i
  %i.aaa = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.yh, i1 true) ; 3 uses
  %i.aab = sub nuw nsw i32 32, %i.aaa
  %i.aac = icmp eq i32 %i.aaa, 0
  %i.aad = shl nuw i32 1, %i.aab
  %i.aae = select i1 %i.aac, i32 0, i32 %i.aad
  %i.aaf = sub i32 %i.aae, %6
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = shl nuw i64 %i.aag, 32
  %i.aai = zext i32 %6 to i64
  %i.aaj = udiv i64 %i.aah, %i.aai
  %i.aak = trunc i64 %i.aaj to i32
  %i.aal = add i32 %i.aak, 1
  %i.aam = xor i32 %i.aaa, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit.i.i

_ZN17FastDivider_epu32C2Ej.exit.i.i:              ; preds = %bb.g, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i
  %.012.i.i.i = phi i32 [ %i.aam, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %.011.i.i.i = phi i32 [ 1, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %.0.i.i.i = phi i32 [ %i.aal, %bb.g ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1259.i.i ]
  %i.aan = insertelement <8 x i32> poison, i32 %.0.i.i.i, i64 0
  %i.aao = shufflevector <8 x i32> %i.aan, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aap = bitcast <8 x i32> %i.aao to <4 x i64>  ; 4 uses
  %i.aaq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i.i.i, i64 0 ; 4 uses
  %i.aar = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i.i.i, i64 0 ; 7 uses
  %i.aas = icmp sgt i32 %3, 7
  br i1 %i.aas, label %.lr.ph265.i.i, label %.preheader216.i.i

.lr.ph265.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %i.aat = bitcast <8 x i32> %i.zc to <4 x i64>
  %i.aau = and <4 x i64> %i.aat, splat (i64 4294967295) ; 2 uses
  %i.aav = shufflevector <4 x i32> %i.ze, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.aaw = insertelement <8 x i32> poison, i32 %i.yl, i64 0
  %i.aax = shufflevector <8 x i32> %i.aaw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aay = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.aaz = shufflevector <8 x i32> %i.aay, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.ye, %11
  %i.aba = insertelement <8 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.abb = shufflevector <8 x i32> %i.aba, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abc = icmp eq i32 %i.yg, 1                   ; 2 uses
  %i.abd = icmp sgt i32 %5, 3                     ; 2 uses
  %i.abe = shufflevector <4 x i64> %i.zx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.abf = and <2 x i64> %i.abe, splat (i64 4294967295) ; 4 uses
  %i.abg = shufflevector <4 x i32> %i.zy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abh = insertelement <4 x i32> poison, i32 %i.ym, i64 0
  %i.abi = shufflevector <4 x i32> %i.abh, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abj = shufflevector <4 x i64> %i.aap, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.abk = and <2 x i64> %i.abj, splat (i64 4294967295) ; 4 uses
  %i.abl = shufflevector <4 x i32> %i.aaq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abm = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.abn = shufflevector <4 x i32> %i.abm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abo = trunc i64 %i.l to i32                  ; 4 uses
  %i.abp = insertelement <4 x i32> poison, i32 %i.abo, i64 0
  %i.abq = shufflevector <4 x i32> %i.abp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abr = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.abs = shufflevector <4 x i32> %i.abr, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar451.i.i = mul i32 %i.ye, %9             ; 8 uses
  %i.abt = insertelement <4 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.abu = shufflevector <4 x i32> %i.abt, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.abv = icmp ne i32 %i.yg, 8
  %i.abw = sdiv i32 %5, 8                         ; 2 uses
  %i.abx = icmp slt i32 %5, 8
  %i.aby = sdiv i32 %4, 8                         ; 2 uses
  %brmerge375.i.i = or i1 %i.abx, %i.abv          ; 2 uses
  %i.abz = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.aca = insertelement <2 x i32> %i.abz, i32 %i.ym, i64 1
  %i.acb = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.acc = insertelement <2 x i32> %i.acb, i32 %i.abo, i64 1
  %i.acd = insertelement <2 x i32> poison, i32 %i.ym, i64 0
  %i.ace = shufflevector <2 x i32> %i.acd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.acf = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.acg = shufflevector <2 x i32> %i.acf, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ach = insertelement <2 x i32> %i.acf, i32 %i.ym, i64 1 ; 2 uses
  %12 = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.aci = insertelement <2 x i32> %12, i32 %i.abo, i64 1 ; 2 uses
  %i.acj = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.ack = insertelement <2 x i32> %i.acj, i32 %i.ym, i64 1
  %i.acl = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.acm = insertelement <2 x i32> %i.acl, i32 %i.abo, i64 1
  %i.acn = insertelement <2 x i32> poison, i32 %i.ym, i64 0
  %13 = shufflevector <2 x i32> %i.acn, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = insertelement <2 x i32> poison, i32 %6, i64 0
  %15 = shufflevector <2 x i32> %14, <2 x i32> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %17 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.h

.preheader216.i.i:                                ; preds = %.loopexit218.i.i, %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %.01222.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %i.arm, %.loopexit218.i.i ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %.val, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %.12.i.i, %.loopexit218.i.i ] ; 2 uses
  %i.aco = or disjoint i32 %.01222.lcssa.i.i, 3
  %i.acp = icmp slt i32 %i.aco, %3
  br i1 %i.acp, label %.lr.ph306.i.i, label %.preheader203.i.i

.lr.ph306.i.i:                                    ; preds = %.preheader216.i.i
  %i.acq = shufflevector <4 x i64> %i.zd, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.acr = and <2 x i64> %i.acq, splat (i64 4294967295) ; 2 uses
  %i.acs = shufflevector <4 x i32> %i.ze, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.act = insertelement <4 x i32> poison, i32 %i.yl, i64 0
  %i.acu = shufflevector <4 x i32> %i.act, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acv = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.acw = shufflevector <4 x i32> %i.acv, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar453.i.i = mul i32 %i.ye, %11
  %i.acx = insertelement <4 x i32> poison, i32 %.scalar453.i.i, i64 0
  %i.acy = shufflevector <4 x i32> %i.acx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.acz = icmp eq i32 %i.yg, 1                   ; 2 uses
  %i.ada = icmp sgt i32 %5, 3                     ; 2 uses
  %i.adb = shufflevector <4 x i64> %i.zx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.adc = and <2 x i64> %i.adb, splat (i64 4294967295) ; 4 uses
  %i.add = shufflevector <4 x i32> %i.zy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ade = insertelement <4 x i32> poison, i32 %i.ym, i64 0
  %i.adf = shufflevector <4 x i32> %i.ade, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.adg = shufflevector <4 x i64> %i.aap, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.adh = and <2 x i64> %i.adg, splat (i64 4294967295) ; 4 uses
  %i.adi = shufflevector <4 x i32> %i.aaq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.adj = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.adk = shufflevector <4 x i32> %i.adj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.adl = trunc i64 %i.l to i32                  ; 4 uses
  %i.adm = insertelement <4 x i32> poison, i32 %i.adl, i64 0
  %i.adn = shufflevector <4 x i32> %i.adm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ado = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.adp = shufflevector <4 x i32> %i.ado, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar454.i.i = mul i32 %i.ye, %9             ; 8 uses
  %i.adq = insertelement <4 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.adr = shufflevector <4 x i32> %i.adq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ads = icmp ne i32 %i.yg, 8
  %i.adt = sdiv i32 %5, 8                         ; 2 uses
  %i.adu = icmp slt i32 %5, 8
  %i.adv = sdiv i32 %4, 8                         ; 2 uses
  %brmerge381.i.i = or i1 %i.adu, %i.ads          ; 2 uses
  %i.adw = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.adx = insertelement <2 x i32> %i.adw, i32 %i.ym, i64 1
  %i.ady = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.adz = insertelement <2 x i32> %i.ady, i32 %i.adl, i64 1
  %i.aea = insertelement <2 x i32> poison, i32 %i.ym, i64 0
  %i.aeb = shufflevector <2 x i32> %i.aea, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aec = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.aed = shufflevector <2 x i32> %i.aec, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aee = insertelement <2 x i32> %i.aec, i32 %i.ym, i64 1 ; 2 uses
  %18 = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.aef = insertelement <2 x i32> %18, i32 %i.adl, i64 1 ; 2 uses
  %i.aeg = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.aeh = insertelement <2 x i32> %i.aeg, i32 %i.ym, i64 1
  %i.aei = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.aej = insertelement <2 x i32> %i.aei, i32 %i.adl, i64 1
  %i.aek = insertelement <2 x i32> poison, i32 %i.ym, i64 0
  %19 = shufflevector <2 x i32> %i.aek, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %20 = insertelement <2 x i32> poison, i32 %6, i64 0
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %23 = shufflevector <2 x i64> %22, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.o

bb.h:                                             ; preds = %.loopexit218.i.i, %.lr.ph265.i.i
  %.0264.i.i = phi ptr [ %.val, %.lr.ph265.i.i ], [ %.12.i.i, %.loopexit218.i.i ] ; 8 uses
  %.01222263.i.i = phi i32 [ 0, %.lr.ph265.i.i ], [ %i.arm, %.loopexit218.i.i ] ; 2 uses
  %i.ael = add nsw i32 %.01222263.i.i, %2
  %i.aem = insertelement <8 x i32> poison, i32 %i.ael, i64 0
  %i.aen = shufflevector <8 x i32> %i.aem, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aeo = add <8 x i32> %i.aen, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.aep = bitcast <8 x i32> %i.aeo to <4 x i64>
  %i.aeq = bitcast <8 x i32> %i.aeo to <4 x i64>
  %i.aer = and <4 x i64> %i.aeq, splat (i64 4294967295)
  %i.aes = mul nuw <4 x i64> %i.aer, %i.aau
  %i.aet = lshr <4 x i64> %i.aes, splat (i64 32)
  %i.aeu = lshr <4 x i64> %i.aep, splat (i64 32)
  %i.aev = mul nuw <4 x i64> %i.aeu, %i.aau
  %i.aew = bitcast <4 x i64> %i.aet to <16 x i16>
  %i.aex = bitcast <4 x i64> %i.aev to <16 x i16>
  %i.aey = shufflevector <16 x i16> %i.aew, <16 x i16> %i.aex, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.aez = bitcast <16 x i16> %i.aey to <8 x i32> ; 2 uses
  %i.afa = sub <8 x i32> %i.aeo, %i.aez
  %i.afb = lshr <8 x i32> %i.afa, %i.aav
  %i.afc = add <8 x i32> %i.afb, %i.aez
  %i.afd = tail call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.afc, <4 x i32> %i.zf) ; 2 uses
  %i.afe = mul <8 x i32> %i.afd, %i.aax
  %i.aff = sub <8 x i32> %i.aeo, %i.afe
  %i.afg = mul <8 x i32> %i.aff, %i.aaz           ; 2 uses
  %i.afh = mul <8 x i32> %i.afd, %i.abb           ; 4 uses
  %i.afi = add <8 x i32> %i.afg, %i.afh           ; 8 uses
  %shift432 = shufflevector <8 x i32> %i.afh, <8 x i32> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afj = icmp eq <8 x i32> %i.afh, %shift432
  %i.afk = extractelement <8 x i1> %i.afj, i64 0
  %or.cond.i.i = and i1 %i.g, %i.afk
  br i1 %or.cond.i.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %foldExtExtBinop = add nsw <8 x i32> %i.afg, %i.afh ; 2 uses
  %i.afl = extractelement <8 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.abc, label %.preheader222.i.i, label %.loopexit220.i.i

.preheader222.i.i:                                ; preds = %bb.i
  br i1 %i.abd, label %.lr.ph247.i.i, label %.preheader221.i.i

.lr.ph247.i.i:                                    ; preds = %.preheader222.i.i
  %i.afm = shufflevector <8 x i32> %foldExtExtBinop, <8 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.j

.preheader221.i.i:                                ; preds = %bb.j, %.preheader222.i.i
  %.01226.lcssa.i.i = phi i32 [ 0, %.preheader222.i.i ], [ %i.ahr, %bb.j ] ; 3 uses
  %.1.lcssa.i.i = phi ptr [ %.0264.i.i, %.preheader222.i.i ], [ %i.ahq, %bb.j ] ; 2 uses
  %i.afn = or disjoint i32 %.01226.lcssa.i.i, 1
  %i.afo = icmp slt i32 %i.afn, %5
  br i1 %i.afo, label %.lr.ph252.i.i, label %.preheader219.i.i

.lr.ph252.i.i:                                    ; preds = %.preheader221.i.i
  %i.afp = sext i32 %i.afl to i64                 ; 2 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph247.i.i
  %.1246.i.i = phi ptr [ %.0264.i.i, %.lr.ph247.i.i ], [ %i.ahq, %bb.j ] ; 2 uses
  %.01226245.i.i = phi i32 [ 0, %.lr.ph247.i.i ], [ %i.ahr, %bb.j ] ; 2 uses
  %i.afq = add nsw i32 %.01226245.i.i, %4
  %i.afr = insertelement <4 x i32> poison, i32 %i.afq, i64 0
  %i.afs = shufflevector <4 x i32> %i.afr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aft = add <4 x i32> %i.afs, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.afu = bitcast <4 x i32> %i.aft to <2 x i64>
  %i.afv = bitcast <4 x i32> %i.aft to <2 x i64>
  %i.afw = and <2 x i64> %i.afv, splat (i64 4294967295)
  %i.afx = mul nuw <2 x i64> %i.afw, %i.abf
  %i.afy = lshr <2 x i64> %i.afx, splat (i64 32)
  %i.afz = lshr <2 x i64> %i.afu, splat (i64 32)
  %i.aga = mul nuw <2 x i64> %i.afz, %i.abf
  %i.agb = bitcast <2 x i64> %i.afy to <8 x i16>
  %i.agc = bitcast <2 x i64> %i.aga to <8 x i16>
  %i.agd = shufflevector <8 x i16> %i.agb, <8 x i16> %i.agc, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.age = bitcast <8 x i16> %i.agd to <4 x i32>  ; 2 uses
  %i.agf = sub <4 x i32> %i.aft, %i.age
  %i.agg = lshr <4 x i32> %i.agf, %i.abg
  %i.agh = add <4 x i32> %i.agg, %i.age
  %i.agi = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.agh, <4 x i32> %i.zz) ; 2 uses
  %i.agj = mul <4 x i32> %i.agi, %i.abi
  %i.agk = sub <4 x i32> %i.aft, %i.agj           ; 4 uses
  %i.agl = bitcast <4 x i32> %i.agk to <2 x i64>
  %i.agm = bitcast <4 x i32> %i.agk to <2 x i64>
  %i.agn = and <2 x i64> %i.agm, splat (i64 4294967295)
  %i.ago = mul nuw <2 x i64> %i.agn, %i.abk
  %i.agp = lshr <2 x i64> %i.ago, splat (i64 32)
  %i.agq = lshr <2 x i64> %i.agl, splat (i64 32)
  %i.agr = mul nuw <2 x i64> %i.agq, %i.abk
  %i.ags = bitcast <2 x i64> %i.agp to <8 x i16>
  %i.agt = bitcast <2 x i64> %i.agr to <8 x i16>
  %i.agu = shufflevector <8 x i16> %i.ags, <8 x i16> %i.agt, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.agv = bitcast <8 x i16> %i.agu to <4 x i32>  ; 2 uses
  %i.agw = sub <4 x i32> %i.agk, %i.agv
  %i.agx = lshr <4 x i32> %i.agw, %i.abl
  %i.agy = add <4 x i32> %i.agx, %i.agv
  %i.agz = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.agy, <4 x i32> %i.aar) ; 2 uses
  %i.aha = mul <4 x i32> %i.agz, %i.abn
  %i.ahb = sub <4 x i32> %i.agk, %i.aha
  %i.ahc = mul <4 x i32> %i.agi, %i.abq
  %i.ahd = mul <4 x i32> %i.ahb, %i.abs
  %i.ahe = mul <4 x i32> %i.agz, %i.abu
  %i.ahf = add <4 x i32> %i.ahc, %i.afm
  %i.ahg = add <4 x i32> %i.ahf, %i.ahe
  %i.ahh = add <4 x i32> %i.ahg, %i.ahd
  %i.ahi = load ptr, ptr %0, align 8, !tbaa !86
  %i.ahj = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.ahi, <4 x i32> %i.ahh, <4 x i64> splat (i64 -1), i8 1)
  %i.ahk = bitcast <4 x i64> %i.ahj to <8 x i32>
  %i.ahl = shufflevector <8 x i32> %i.ahk, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.ahm = bitcast <8 x i32> %i.ahl to <4 x i64>
  %i.ahn = shufflevector <4 x i64> %i.ahm, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aho = bitcast <4 x i64> %i.ahn to <32 x i8>
  %i.ahp = shufflevector <32 x i8> %i.aho, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15, i32 16, i32 20, i32 24, i32 28, i32 17, i32 21, i32 25, i32 29, i32 18, i32 22, i32 26, i32 30, i32 19, i32 23, i32 27, i32 31>
  store <32 x i8> %i.ahp, ptr %.1246.i.i, align 1, !tbaa !89
  %i.ahq = getelementptr inbounds nuw i8, ptr %.1246.i.i, i64 32 ; 2 uses
  %i.ahr = add nuw nsw i32 %.01226245.i.i, 4      ; 3 uses
  %i.ahs = or disjoint i32 %i.ahr, 3
  %i.aht = icmp slt i32 %i.ahs, %5
  br i1 %i.aht, label %bb.j, label %.preheader221.i.i, !llvm.loop !47

.preheader219.i.i:                                ; preds = %bb.k, %.preheader221.i.i
  %.11227.lcssa.i.i = phi i32 [ %.01226.lcssa.i.i, %.preheader221.i.i ], [ %i.aiv, %bb.k ] ; 2 uses
  %.2.lcssa.i.i = phi ptr [ %.1.lcssa.i.i, %.preheader221.i.i ], [ %i.aiu, %bb.k ] ; 2 uses
  %i.ahu = icmp slt i32 %.11227.lcssa.i.i, %5
  br i1 %i.ahu, label %.lr.ph257.i.i, label %.loopexit218.i.i

.lr.ph257.i.i:                                    ; preds = %.preheader219.i.i
  %i.ahv = sext i32 %i.afl to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph252.i.i
  %.2251.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph252.i.i ], [ %i.aiu, %bb.k ] ; 2 uses
  %.11227250.i.i = phi i32 [ %.01226.lcssa.i.i, %.lr.ph252.i.i ], [ %i.aiv, %bb.k ] ; 2 uses
  %i.ahw = add nsw i32 %.11227250.i.i, %4         ; 2 uses
  %i.ahx = add nsw i32 %i.ahw, 1
  %24 = insertelement <2 x i32> poison, i32 %i.ahw, i64 0
  %25 = insertelement <2 x i32> %24, i32 %i.ahx, i64 1
  %.frozen = freeze <2 x i32> %25                 ; 2 uses
  %26 = sdiv <2 x i32> %.frozen, %13              ; 2 uses
  %27 = mul <2 x i32> %26, %13
  %.decomposed = sub <2 x i32> %.frozen, %27      ; 3 uses
  %28 = extractelement <2 x i32> %.decomposed, i64 0
  %29 = sdiv i32 %28, %6
  %30 = extractelement <2 x i32> %.decomposed, i64 1
  %31 = sdiv i32 %30, %6
  %32 = srem <2 x i32> %.decomposed, %15          ; 2 uses
  %33 = mul i32 %29, %.scalar451.i.i
  %34 = extractelement <2 x i32> %32, i64 0
  %35 = mul nsw i32 %34, %8
  %36 = add nsw i32 %35, %33
  %37 = sext i32 %36 to i64
  %i.ahy = sext <2 x i32> %26 to <2 x i64>
  %i.ahz = mul <2 x i64> %17, %i.ahy              ; 2 uses
  %i.aia = mul i32 %31, %.scalar451.i.i
  %38 = extractelement <2 x i32> %32, i64 1
  %i.aib = mul nsw i32 %38, %8
  %i.aic = add nsw i32 %i.aib, %i.aia
  %i.aid = sext i32 %i.aic to i64
  %i.aie = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  %i.aif = extractelement <2 x i64> %i.ahz, i64 0
  %i.aig = getelementptr i8, ptr %i.aie, i64 %i.aif
  %i.aih = getelementptr i8, ptr %i.aig, i64 %i.afp
  %i.aii = getelementptr i8, ptr %i.aih, i64 %37
  %i.aij = load i64, ptr %i.aii, align 1, !tbaa !89
  %i.aik = insertelement <2 x i64> poison, i64 %i.aij, i64 0
  %i.ail = extractelement <2 x i64> %i.ahz, i64 1
  %i.aim = getelementptr i8, ptr %i.aie, i64 %i.ail
  %i.ain = getelementptr i8, ptr %i.aim, i64 %i.afp
  %i.aio = getelementptr i8, ptr %i.ain, i64 %i.aid
  %i.aip = load i64, ptr %i.aio, align 1, !tbaa !89
  %i.aiq = insertelement <2 x i64> poison, i64 %i.aip, i64 0
  %i.air = bitcast <2 x i64> %i.aik to <16 x i8>
  %i.ais = bitcast <2 x i64> %i.aiq to <16 x i8>
  %i.ait = shufflevector <16 x i8> %i.air, <16 x i8> %i.ais, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ait, ptr %.2251.i.i, align 1, !tbaa !89
  %i.aiu = getelementptr inbounds nuw i8, ptr %.2251.i.i, i64 16 ; 2 uses
  %i.aiv = add nuw nsw i32 %.11227250.i.i, 2      ; 3 uses
  %i.aiw = or disjoint i32 %i.aiv, 1
  %i.aix = icmp slt i32 %i.aiw, %5
  br i1 %i.aix, label %bb.k, label %.preheader219.i.i, !llvm.loop !48

bb.l:                                             ; preds = %bb.l, %.lr.ph257.i.i
  %.3256.i.i = phi ptr [ %.2.lcssa.i.i, %.lr.ph257.i.i ], [ %i.ajo, %bb.l ] ; 2 uses
  %.21228255.i.i = phi i32 [ %.11227.lcssa.i.i, %.lr.ph257.i.i ], [ %i.ajp, %bb.l ] ; 2 uses
  %i.aiy = add nsw i32 %.21228255.i.i, %4         ; 2 uses
  %i.aiz = sdiv i32 %i.aiy, %i.ym
  %i.aja = srem i32 %i.aiy, %i.ym                 ; 2 uses
  %i.ajb = sdiv i32 %i.aja, %6
  %i.ajc = srem i32 %i.aja, %6
  %i.ajd = sext i32 %i.aiz to i64
  %i.aje = mul i64 %i.l, %i.ajd
  %i.ajf = mul i32 %i.ajb, %.scalar451.i.i
  %i.ajg = mul nsw i32 %i.ajc, %8
  %i.ajh = add nsw i32 %i.ajg, %i.ajf
  %i.aji = sext i32 %i.ajh to i64
  %i.ajj = load ptr, ptr %0, align 8, !tbaa !86
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 %i.aje
  %i.ajl = getelementptr i8, ptr %i.ajk, i64 %i.ahv
  %i.ajm = getelementptr i8, ptr %i.ajl, i64 %i.aji
  %i.ajn = load i64, ptr %i.ajm, align 1, !tbaa !89
  store i64 %i.ajn, ptr %.3256.i.i, align 1, !tbaa !89
  %i.ajo = getelementptr inbounds nuw i8, ptr %.3256.i.i, i64 8 ; 2 uses
  %i.ajp = add nuw nsw i32 %.21228255.i.i, 1      ; 2 uses
  %exitcond438.not.i.i = icmp eq i32 %i.ajp, %5
  br i1 %exitcond438.not.i.i, label %.loopexit218.i.i, label %bb.l, !llvm.loop !49

.loopexit220.i.i:                                 ; preds = %bb.i
  br i1 %brmerge375.i.i, label %.loopexit218.i.i, label %.lr.ph261.i.i

.lr.ph261.i.i:                                    ; preds = %.loopexit220.i.i
  %i.ajq = sext i32 %i.afl to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph261.i.i
  %.5260.i.i = phi ptr [ %.0264.i.i, %.lr.ph261.i.i ], [ %i.akr, %bb.m ] ; 3 uses
  %.01229259.i.i = phi i32 [ 0, %.lr.ph261.i.i ], [ %i.aks, %bb.m ] ; 2 uses
  %i.ajr = add nsw i32 %.01229259.i.i, %i.aby     ; 2 uses
  %i.ajs = sdiv i32 %i.ajr, %i.ym
  %i.ajt = srem i32 %i.ajr, %i.ym                 ; 2 uses
  %i.aju = sdiv i32 %i.ajt, %6
  %i.ajv = srem i32 %i.ajt, %6
  %i.ajw = sext i32 %i.ajs to i64
  %i.ajx = mul i64 %i.l, %i.ajw
  %i.ajy = add i64 %i.ajx, %i.ajq
  %i.ajz = mul i32 %i.aju, %.scalar451.i.i
  %i.aka = mul nsw i32 %i.ajv, %8
  %i.akb = add nsw i32 %i.aka, %i.ajz
  %i.akc = sext i32 %i.akb to i64
  %i.akd = add i64 %i.ajy, %i.akc
  %i.ake = shl i64 %i.akd, 3
  %i.akf = load ptr, ptr %0, align 8, !tbaa !86
  %i.akg = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.ake ; 2 uses
  %i.akh = load <8 x i32>, ptr %i.akg, align 1, !tbaa !89 ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 32
  %i.akj = load <8 x i32>, ptr %i.aki, align 1, !tbaa !89 ; 2 uses
  %i.akk = shufflevector <8 x i32> %i.akh, <8 x i32> %i.akj, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.akl = bitcast <8 x i32> %i.akk to <4 x i64>
  %i.akm = shufflevector <8 x i32> %i.akh, <8 x i32> %i.akj, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.akn = bitcast <8 x i32> %i.akm to <4 x i64>
  %i.ako = shufflevector <4 x i64> %i.akl, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.akp = shufflevector <4 x i64> %i.akn, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.ako, ptr %.5260.i.i, align 1, !tbaa !89
  %i.akq = getelementptr inbounds nuw i8, ptr %.5260.i.i, i64 32
  store <4 x i64> %i.akp, ptr %i.akq, align 1, !tbaa !89
  %i.akr = getelementptr inbounds nuw i8, ptr %.5260.i.i, i64 64 ; 2 uses
  %i.aks = add nuw nsw i32 %.01229259.i.i, 1      ; 2 uses
  %exitcond439.not.i.i = icmp eq i32 %i.aks, %i.abw
  br i1 %exitcond439.not.i.i, label %.loopexit218.i.i, label %bb.m, !llvm.loop !50

bb.n:                                             ; preds = %bb.h
  br i1 %i.abc, label %.preheader228.i.i, label %.loopexit226.i.i

.preheader228.i.i:                                ; preds = %bb.n
  br i1 %i.abd, label %.lr.ph.i37.i, label %.preheader227.i.i

.preheader227.i.i:                                ; preds = %.lr.ph.i37.i, %.preheader228.i.i
  %.01230.lcssa.i.i = phi i32 [ 0, %.preheader228.i.i ], [ %i.anz, %.lr.ph.i37.i ] ; 3 uses
  %.7.lcssa.i35.i = phi ptr [ %.0264.i.i, %.preheader228.i.i ], [ %i.any, %.lr.ph.i37.i ] ; 2 uses
  %i.akt = or disjoint i32 %.01230.lcssa.i.i, 1
  %i.aku = icmp slt i32 %i.akt, %5
  br i1 %i.aku, label %.lr.ph234.i.i, label %.preheader225.i.i

.lr.ph.i37.i:                                     ; preds = %.preheader228.i.i, %.lr.ph.i37.i
  %.7230.i.i = phi ptr [ %i.any, %.lr.ph.i37.i ], [ %.0264.i.i, %.preheader228.i.i ] ; 3 uses
  %.01230229.i.i = phi i32 [ %i.anz, %.lr.ph.i37.i ], [ 0, %.preheader228.i.i ] ; 2 uses
  %i.akv = add nsw i32 %.01230229.i.i, %4
  %i.akw = insertelement <4 x i32> poison, i32 %i.akv, i64 0
  %i.akx = shufflevector <4 x i32> %i.akw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aky = add <4 x i32> %i.akx, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.akz = bitcast <4 x i32> %i.aky to <2 x i64>
  %i.ala = bitcast <4 x i32> %i.aky to <2 x i64>
  %i.alb = and <2 x i64> %i.ala, splat (i64 4294967295)
  %i.alc = mul nuw <2 x i64> %i.alb, %i.abf
  %i.ald = lshr <2 x i64> %i.alc, splat (i64 32)
  %i.ale = lshr <2 x i64> %i.akz, splat (i64 32)
  %i.alf = mul nuw <2 x i64> %i.ale, %i.abf
  %i.alg = bitcast <2 x i64> %i.ald to <8 x i16>
  %i.alh = bitcast <2 x i64> %i.alf to <8 x i16>
  %i.ali = shufflevector <8 x i16> %i.alg, <8 x i16> %i.alh, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.alj = bitcast <8 x i16> %i.ali to <4 x i32>  ; 2 uses
  %i.alk = sub <4 x i32> %i.aky, %i.alj
  %i.all = lshr <4 x i32> %i.alk, %i.abg
  %i.alm = add <4 x i32> %i.all, %i.alj
  %i.aln = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.alm, <4 x i32> %i.zz) ; 2 uses
  %i.alo = mul <4 x i32> %i.aln, %i.abi
  %i.alp = sub <4 x i32> %i.aky, %i.alo           ; 4 uses
  %i.alq = bitcast <4 x i32> %i.alp to <2 x i64>
  %i.alr = bitcast <4 x i32> %i.alp to <2 x i64>
  %i.als = and <2 x i64> %i.alr, splat (i64 4294967295)
  %i.alt = mul nuw <2 x i64> %i.als, %i.abk
  %i.alu = lshr <2 x i64> %i.alt, splat (i64 32)
  %i.alv = lshr <2 x i64> %i.alq, splat (i64 32)
  %i.alw = mul nuw <2 x i64> %i.alv, %i.abk
  %i.alx = bitcast <2 x i64> %i.alu to <8 x i16>
  %i.aly = bitcast <2 x i64> %i.alw to <8 x i16>
  %i.alz = shufflevector <8 x i16> %i.alx, <8 x i16> %i.aly, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.ama = bitcast <8 x i16> %i.alz to <4 x i32>  ; 2 uses
  %i.amb = sub <4 x i32> %i.alp, %i.ama
  %i.amc = lshr <4 x i32> %i.amb, %i.abl
  %i.amd = add <4 x i32> %i.amc, %i.ama
  %i.ame = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.amd, <4 x i32> %i.aar) ; 2 uses
  %i.amf = mul <4 x i32> %i.ame, %i.abn
  %i.amg = sub <4 x i32> %i.alp, %i.amf
  %i.amh = mul <4 x i32> %i.aln, %i.abq
  %i.ami = mul <4 x i32> %i.amg, %i.abs
  %i.amj = mul <4 x i32> %i.ame, %i.abu
  %i.amk = add <4 x i32> %i.amj, %i.amh
  %i.aml = add <4 x i32> %i.amk, %i.ami           ; 4 uses
  %i.amm = shufflevector <4 x i32> %i.aml, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.amn = add <8 x i32> %i.amm, %i.afi
  %i.amo = shufflevector <4 x i32> %i.aml, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.amp = add <8 x i32> %i.amo, %i.afi
  %i.amq = shufflevector <4 x i32> %i.aml, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.amr = add <8 x i32> %i.amq, %i.afi
  %i.ams = shufflevector <4 x i32> %i.aml, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.amt = add <8 x i32> %i.ams, %i.afi
  %i.amu = load ptr, ptr %0, align 8, !tbaa !86   ; 4 uses
  %i.amv = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.amu, <8 x i32> %i.amn, <8 x i32> splat (i32 -1), i8 1)
  %i.amw = bitcast <8 x i32> %i.amv to <32 x i8>
  %i.amx = shufflevector <32 x i8> %i.amw, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.amy = bitcast <32 x i8> %i.amx to <8 x i32>
  %i.amz = shufflevector <8 x i32> %i.amy, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ana = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.amu, <8 x i32> %i.amp, <8 x i32> splat (i32 -1), i8 1)
  %i.anb = bitcast <8 x i32> %i.ana to <32 x i8>
  %i.anc = shufflevector <32 x i8> %i.anb, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.and = bitcast <32 x i8> %i.anc to <8 x i32>
  %i.ane = shufflevector <8 x i32> %i.and, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.anf = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.amu, <8 x i32> %i.amr, <8 x i32> splat (i32 -1), i8 1)
  %i.ang = bitcast <8 x i32> %i.anf to <32 x i8>
  %i.anh = shufflevector <32 x i8> %i.ang, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ani = bitcast <32 x i8> %i.anh to <8 x i32>
  %i.anj = shufflevector <8 x i32> %i.ani, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ank = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.amu, <8 x i32> %i.amt, <8 x i32> splat (i32 -1), i8 1)
  %i.anl = bitcast <8 x i32> %i.ank to <32 x i8>
  %i.anm = shufflevector <32 x i8> %i.anl, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ann = bitcast <32 x i8> %i.anm to <8 x i32>
  %i.ano = shufflevector <8 x i32> %i.ann, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.anp = bitcast <4 x i32> %i.amz to <16 x i8>
  %i.anq = bitcast <4 x i32> %i.ane to <16 x i8>
  %i.anr = shufflevector <16 x i8> %i.anp, <16 x i8> %i.anq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ans = bitcast <4 x i32> %i.anj to <16 x i8>
  %i.ant = bitcast <4 x i32> %i.ano to <16 x i8>
  %i.anu = shufflevector <16 x i8> %i.ans, <16 x i8> %i.ant, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.anv = shufflevector <16 x i8> %i.anr, <16 x i8> %i.anu, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.anw = shufflevector <16 x i8> %i.anr, <16 x i8> %i.anu, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  store <16 x i8> %i.anv, ptr %.7230.i.i, align 1, !tbaa !89
  %i.anx = getelementptr inbounds nuw i8, ptr %.7230.i.i, i64 16
  store <16 x i8> %i.anw, ptr %i.anx, align 1, !tbaa !89
  %i.any = getelementptr inbounds nuw i8, ptr %.7230.i.i, i64 32 ; 2 uses
  %i.anz = add nuw nsw i32 %.01230229.i.i, 4      ; 3 uses
  %i.aoa = or disjoint i32 %i.anz, 3
  %i.aob = icmp slt i32 %i.aoa, %5
  br i1 %i.aob, label %.lr.ph.i37.i, label %.preheader227.i.i, !llvm.loop !51

.preheader225.i.i:                                ; preds = %.lr.ph234.i.i, %.preheader227.i.i
  %.11231.lcssa.i.i = phi i32 [ %.01230.lcssa.i.i, %.preheader227.i.i ], [ %i.api, %.lr.ph234.i.i ] ; 2 uses
  %.8.lcssa.i.i = phi ptr [ %.7.lcssa.i35.i, %.preheader227.i.i ], [ %i.aph, %.lr.ph234.i.i ] ; 2 uses
  %i.aoc = icmp slt i32 %.11231.lcssa.i.i, %5
  br i1 %i.aoc, label %.lr.ph239.i.i, label %.loopexit218.i.i

.lr.ph234.i.i:                                    ; preds = %.preheader227.i.i, %.lr.ph234.i.i
  %.8233.i.i = phi ptr [ %i.aph, %.lr.ph234.i.i ], [ %.7.lcssa.i35.i, %.preheader227.i.i ] ; 2 uses
  %.11231232.i.i = phi i32 [ %i.api, %.lr.ph234.i.i ], [ %.01230.lcssa.i.i, %.preheader227.i.i ] ; 2 uses
  %i.aod = add nsw i32 %.11231232.i.i, %4         ; 3 uses
  %i.aoe = add nsw i32 %i.aod, 1                  ; 2 uses
  %i.aof = insertelement <2 x i32> poison, i32 %i.aod, i64 0
  %i.aog = insertelement <2 x i32> %i.aof, i32 %i.aoe, i64 1
  %i.aoh = srem <2 x i32> %i.aog, %i.ace          ; 3 uses
  %i.aoi = srem <2 x i32> %i.aoh, %i.acg          ; 2 uses
  %39 = extractelement <2 x i32> %i.aoi, i64 0
  %40 = mul nsw i32 %39, %8
  %41 = extractelement <2 x i32> %i.aoi, i64 1
  %42 = mul nsw i32 %41, %8
  %i.aoj = insertelement <2 x i32> %i.aoh, i32 %i.aod, i64 1
  %i.aok = sdiv <2 x i32> %i.aoj, %i.ach
  %i.aol = mul <2 x i32> %i.aok, %i.aci
  %43 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aol)
  %44 = add i32 %43, %40
  %45 = insertelement <8 x i32> poison, i32 %44, i64 0
  %i.aom = shufflevector <8 x i32> %45, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aon = add <8 x i32> %i.aom, %i.afi
  %i.aoo = shufflevector <2 x i32> %i.aoh, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aop = insertelement <2 x i32> %i.aoo, i32 %i.aoe, i64 1
  %i.aoq = sdiv <2 x i32> %i.aop, %i.ach
  %i.aor = mul <2 x i32> %i.aoq, %i.aci
  %46 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aor)
  %47 = add i32 %46, %42
  %48 = insertelement <8 x i32> poison, i32 %47, i64 0
  %49 = shufflevector <8 x i32> %48, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aos = add <8 x i32> %49, %i.afi
  %i.aot = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  %i.aou = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aot, <8 x i32> %i.aon, <8 x i32> splat (i32 -1), i8 1)
  %i.aov = bitcast <8 x i32> %i.aou to <32 x i8>
  %i.aow = shufflevector <32 x i8> %i.aov, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aox = bitcast <32 x i8> %i.aow to <8 x i32>
  %i.aoy = shufflevector <8 x i32> %i.aox, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aoz = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.aot, <8 x i32> %i.aos, <8 x i32> splat (i32 -1), i8 1)
  %i.apa = bitcast <8 x i32> %i.aoz to <32 x i8>
  %i.apb = shufflevector <32 x i8> %i.apa, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apc = bitcast <32 x i8> %i.apb to <8 x i32>
  %i.apd = shufflevector <8 x i32> %i.apc, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ape = bitcast <4 x i32> %i.aoy to <16 x i8>
  %i.apf = bitcast <4 x i32> %i.apd to <16 x i8>
  %i.apg = shufflevector <16 x i8> %i.ape, <16 x i8> %i.apf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.apg, ptr %.8233.i.i, align 1, !tbaa !89
  %i.aph = getelementptr inbounds nuw i8, ptr %.8233.i.i, i64 16 ; 2 uses
  %i.api = add nuw nsw i32 %.11231232.i.i, 2      ; 3 uses
  %i.apj = or disjoint i32 %i.api, 1
  %i.apk = icmp slt i32 %i.apj, %5
  br i1 %i.apk, label %.lr.ph234.i.i, label %.preheader225.i.i, !llvm.loop !52

.lr.ph239.i.i:                                    ; preds = %.preheader225.i.i, %.lr.ph239.i.i
  %.9238.i.i = phi ptr [ %i.aqg, %.lr.ph239.i.i ], [ %.8.lcssa.i.i, %.preheader225.i.i ] ; 2 uses
  %.21232237.i.i = phi i32 [ %i.aqh, %.lr.ph239.i.i ], [ %.11231.lcssa.i.i, %.preheader225.i.i ] ; 2 uses
  %i.apl = add nsw i32 %.21232237.i.i, %4         ; 2 uses
  %i.apm = srem i32 %i.apl, %i.ym                 ; 2 uses
  %i.apn = srem i32 %i.apm, %6
  %i.apo = mul nsw i32 %i.apn, %8
  %i.app = insertelement <2 x i32> poison, i32 %i.apm, i64 0
  %i.apq = insertelement <2 x i32> %i.app, i32 %i.apl, i64 1
  %i.apr = sdiv <2 x i32> %i.apq, %i.ack
  %i.aps = mul <2 x i32> %i.apr, %i.acm
  %i.apt = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aps)
  %i.apu = add i32 %i.apt, %i.apo
  %i.apv = insertelement <8 x i32> poison, i32 %i.apu, i64 0
  %i.apw = shufflevector <8 x i32> %i.apv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.apx = add <8 x i32> %i.apw, %i.afi
  %i.apy = load ptr, ptr %0, align 8, !tbaa !86
  %i.apz = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.apy, <8 x i32> %i.apx, <8 x i32> splat (i32 -1), i8 1)
  %i.aqa = bitcast <8 x i32> %i.apz to <32 x i8>
  %i.aqb = shufflevector <32 x i8> %i.aqa, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqc = bitcast <32 x i8> %i.aqb to <8 x i32>
  %i.aqd = shufflevector <8 x i32> %i.aqc, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aqe = bitcast <4 x i32> %i.aqd to <2 x i64>
  %i.aqf = extractelement <2 x i64> %i.aqe, i64 0
  store i64 %i.aqf, ptr %.9238.i.i, align 1, !tbaa !89
  %i.aqg = getelementptr inbounds nuw i8, ptr %.9238.i.i, i64 8 ; 2 uses
  %i.aqh = add nuw nsw i32 %.21232237.i.i, 1      ; 2 uses
  %exitcond.not.i36.i = icmp eq i32 %i.aqh, %5
  br i1 %exitcond.not.i36.i, label %.loopexit218.i.i, label %.lr.ph239.i.i, !llvm.loop !53

.loopexit226.i.i:                                 ; preds = %bb.n
  br i1 %brmerge375.i.i, label %.loopexit218.i.i, label %.lr.ph243.i.i

.lr.ph243.i.i:                                    ; preds = %.loopexit226.i.i, %.lr.ph243.i.i
  %.11242.i.i = phi ptr [ %i.ark, %.lr.ph243.i.i ], [ %.0264.i.i, %.loopexit226.i.i ] ; 3 uses
  %.01233241.i.i = phi i32 [ %i.arl, %.lr.ph243.i.i ], [ 0, %.loopexit226.i.i ] ; 2 uses
  %i.aqi = add nsw i32 %.01233241.i.i, %i.aby     ; 2 uses
  %i.aqj = srem i32 %i.aqi, %i.ym                 ; 2 uses
  %i.aqk = srem i32 %i.aqj, %6
  %i.aql = mul nsw i32 %i.aqk, %8
  %i.aqm = insertelement <2 x i32> poison, i32 %i.aqj, i64 0
  %i.aqn = insertelement <2 x i32> %i.aqm, i32 %i.aqi, i64 1
  %i.aqo = sdiv <2 x i32> %i.aqn, %i.aca
  %i.aqp = mul <2 x i32> %i.aqo, %i.acc
  %i.aqq = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aqp)
  %i.aqr = add i32 %i.aqq, %i.aql
  %i.aqs = insertelement <8 x i32> poison, i32 %i.aqr, i64 0
  %i.aqt = shufflevector <8 x i32> %i.aqs, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aqu = add <8 x i32> %i.aqt, %i.afi
  %i.aqv = shl <8 x i32> %i.aqu, splat (i32 3)    ; 2 uses
  %i.aqw = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  %i.aqx = shufflevector <8 x i32> %i.aqv, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aqy = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aqw, <4 x i32> %i.aqx, <4 x i64> splat (i64 -1), i8 1)
  %i.aqz = shufflevector <8 x i32> %i.aqv, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ara = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aqw, <4 x i32> %i.aqz, <4 x i64> splat (i64 -1), i8 1)
  %i.arb = bitcast <4 x i64> %i.aqy to <8 x i32>  ; 2 uses
  %i.arc = bitcast <4 x i64> %i.ara to <8 x i32>  ; 2 uses
  %i.ard = shufflevector <8 x i32> %i.arb, <8 x i32> %i.arc, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.are = bitcast <8 x i32> %i.ard to <4 x i64>
  %i.arf = shufflevector <8 x i32> %i.arb, <8 x i32> %i.arc, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.arg = bitcast <8 x i32> %i.arf to <4 x i64>
  %i.arh = shufflevector <4 x i64> %i.are, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.ari = shufflevector <4 x i64> %i.arg, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.arh, ptr %.11242.i.i, align 1, !tbaa !89
  %i.arj = getelementptr inbounds nuw i8, ptr %.11242.i.i, i64 32
  store <4 x i64> %i.ari, ptr %i.arj, align 1, !tbaa !89
  %i.ark = getelementptr inbounds nuw i8, ptr %.11242.i.i, i64 64 ; 2 uses
  %i.arl = add nuw nsw i32 %.01233241.i.i, 1      ; 2 uses
  %exitcond437.not.i.i = icmp eq i32 %i.arl, %i.abw
  br i1 %exitcond437.not.i.i, label %.loopexit218.i.i, label %.lr.ph243.i.i, !llvm.loop !54

.loopexit218.i.i:                                 ; preds = %.lr.ph243.i.i, %.lr.ph239.i.i, %bb.m, %bb.l, %.loopexit226.i.i, %.preheader225.i.i, %.loopexit220.i.i, %.preheader219.i.i
  %.12.i.i = phi ptr [ %.0264.i.i, %.loopexit226.i.i ], [ %.2.lcssa.i.i, %.preheader219.i.i ], [ %.0264.i.i, %.loopexit220.i.i ], [ %i.akr, %bb.m ], [ %i.ajo, %bb.l ], [ %.8.lcssa.i.i, %.preheader225.i.i ], [ %i.aqg, %.lr.ph239.i.i ], [ %i.ark, %.lr.ph243.i.i ] ; 2 uses
  %i.arm = add nuw nsw i32 %.01222263.i.i, 8      ; 3 uses
  %i.arn = or disjoint i32 %i.arm, 7
  %i.aro = icmp slt i32 %i.arn, %3
  br i1 %i.aro, label %bb.h, label %.preheader216.i.i, !llvm.loop !55

.preheader203.i.i:                                ; preds = %.loopexit205.i.i, %.preheader216.i.i
  %.11223.lcssa.i.i = phi i32 [ %.01222.lcssa.i.i, %.preheader216.i.i ], [ %i.bfl, %.loopexit205.i.i ] ; 3 uses
  %.13.lcssa.i.i = phi ptr [ %.0.lcssa.i.i, %.preheader216.i.i ], [ %.25.i.i, %.loopexit205.i.i ] ; 2 uses
  %i.arp = or disjoint i32 %.11223.lcssa.i.i, 1
  %i.arq = icmp slt i32 %i.arp, %3
  br i1 %i.arq, label %.lr.ph348.i.i, label %.preheader190.i.i

.lr.ph348.i.i:                                    ; preds = %.preheader203.i.i
  %i.arr = mul i32 %i.ye, %11
  %i.ars = icmp eq i32 %i.yg, 1                   ; 2 uses
  %i.art = icmp sgt i32 %5, 3                     ; 2 uses
  %i.aru = shufflevector <4 x i64> %i.zx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.arv = and <2 x i64> %i.aru, splat (i64 4294967295) ; 4 uses
  %i.arw = shufflevector <4 x i32> %i.zy, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.arx = insertelement <4 x i32> poison, i32 %i.ym, i64 0
  %i.ary = shufflevector <4 x i32> %i.arx, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.arz = shufflevector <4 x i64> %i.aap, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.asa = and <2 x i64> %i.arz, splat (i64 4294967295) ; 4 uses
  %i.asb = shufflevector <4 x i32> %i.aaq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.asc = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.asd = shufflevector <4 x i32> %i.asc, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ase = trunc i64 %i.l to i32                  ; 2 uses
  %i.asf = insertelement <4 x i32> poison, i32 %i.ase, i64 0
  %i.asg = shufflevector <4 x i32> %i.asf, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ash = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.asi = shufflevector <4 x i32> %i.ash, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar456.i.i = mul i32 %i.ye, %9             ; 8 uses
  %i.asj = insertelement <4 x i32> poison, i32 %.scalar456.i.i, i64 0
  %i.ask = shufflevector <4 x i32> %i.asj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.asl = icmp eq i32 %i.yg, 8
  %i.asm = sdiv i32 %5, 8                         ; 2 uses
  %i.asn = sdiv i32 %4, 8                         ; 2 uses
  %i.aso = icmp ne i32 %i.yg, 8
  %i.asp = icmp slt i32 %5, 8
  %i.asq = icmp sgt i32 %5, 7
  %or.cond385.i.i = and i1 %i.asq, %i.asl
  %brmerge384.i.i = or i1 %i.asp, %i.aso
  %i.asr = insertelement <2 x i32> poison, i32 %10, i64 0
  %i.ass = shufflevector <2 x i32> %i.asr, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ast = insertelement <2 x i32> poison, i32 %i.yl, i64 0
  %i.asu = shufflevector <2 x i32> %i.ast, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.asv = insertelement <2 x i32> poison, i32 %i.arr, i64 0
  %i.asw = shufflevector <2 x i32> %i.asv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.asx = insertelement <2 x i32> poison, i32 %i.ym, i64 0
  %i.asy = shufflevector <2 x i32> %i.asx, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.asz = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.ata = shufflevector <2 x i32> %i.asz, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.atb = insertelement <2 x i32> poison, i32 %.scalar456.i.i, i64 0
  %i.atc = shufflevector <2 x i32> %i.atb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.atd = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.ate = shufflevector <2 x i32> %i.atd, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.atf = insertelement <2 x i32> poison, i32 %i.ase, i64 0
  %i.atg = shufflevector <2 x i32> %i.atf, <2 x i32> poison, <2 x i32> zeroinitializer
  %50 = insertelement <2 x i32> poison, i32 %i.ym, i64 0
  %51 = shufflevector <2 x i32> %50, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ath = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.ati = shufflevector <2 x i32> %i.ath, <2 x i32> poison, <2 x i32> zeroinitializer
  %52 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %53 = shufflevector <2 x i64> %52, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.v

bb.o:                                             ; preds = %.loopexit205.i.i, %.lr.ph306.i.i
  %.13305.i.i = phi ptr [ %.0.lcssa.i.i, %.lr.ph306.i.i ], [ %.25.i.i, %.loopexit205.i.i ] ; 8 uses
  %.11223304.i.i = phi i32 [ %.01222.lcssa.i.i, %.lr.ph306.i.i ], [ %i.bfl, %.loopexit205.i.i ] ; 2 uses
  %i.atj = add nsw i32 %.11223304.i.i, %2
  %i.atk = insertelement <4 x i32> poison, i32 %i.atj, i64 0
  %i.atl = shufflevector <4 x i32> %i.atk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.atm = add <4 x i32> %i.atl, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.atn = bitcast <4 x i32> %i.atm to <2 x i64>
  %i.ato = bitcast <4 x i32> %i.atm to <2 x i64>
  %i.atp = and <2 x i64> %i.ato, splat (i64 4294967295)
  %i.atq = mul nuw <2 x i64> %i.atp, %i.acr
  %i.atr = lshr <2 x i64> %i.atq, splat (i64 32)
  %i.ats = lshr <2 x i64> %i.atn, splat (i64 32)
  %i.att = mul nuw <2 x i64> %i.ats, %i.acr
  %i.atu = bitcast <2 x i64> %i.atr to <8 x i16>
  %i.atv = bitcast <2 x i64> %i.att to <8 x i16>
  %i.atw = shufflevector <8 x i16> %i.atu, <8 x i16> %i.atv, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.atx = bitcast <8 x i16> %i.atw to <4 x i32>  ; 2 uses
  %i.aty = sub <4 x i32> %i.atm, %i.atx
  %i.atz = lshr <4 x i32> %i.aty, %i.acs
  %i.aua = add <4 x i32> %i.atz, %i.atx
  %i.aub = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.aua, <4 x i32> %i.zf) ; 2 uses
  %i.auc = mul <4 x i32> %i.aub, %i.acu
  %i.aud = sub <4 x i32> %i.atm, %i.auc
  %i.aue = mul <4 x i32> %i.aud, %i.acw           ; 2 uses
  %i.auf = mul <4 x i32> %i.aub, %i.acy           ; 4 uses
  %i.aug = add <4 x i32> %i.aue, %i.auf           ; 8 uses
  %shift431 = shufflevector <4 x i32> %i.auf, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.auh = icmp eq <4 x i32> %i.auf, %shift431
  %i.aui = extractelement <4 x i1> %i.auh, i64 0
  %or.cond3.i.i = and i1 %i.g, %i.aui
  br i1 %or.cond3.i.i, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %foldExtExtBinop401 = add nsw <4 x i32> %i.aue, %i.auf ; 2 uses
  %i.auj = extractelement <4 x i32> %foldExtExtBinop401, i64 0 ; 3 uses
  br i1 %i.acz, label %.preheader209.i.i, label %.loopexit207.i.i

.preheader209.i.i:                                ; preds = %bb.p
  br i1 %i.ada, label %.lr.ph288.i.i, label %.preheader208.i.i

.lr.ph288.i.i:                                    ; preds = %.preheader209.i.i
  %i.auk = shufflevector <4 x i32> %foldExtExtBinop401, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.q

.preheader208.i.i:                                ; preds = %bb.q, %.preheader209.i.i
  %.01234.lcssa.i.i = phi i32 [ 0, %.preheader209.i.i ], [ %i.awl, %bb.q ] ; 3 uses
  %.14.lcssa.i33.i = phi ptr [ %.13305.i.i, %.preheader209.i.i ], [ %i.awk, %bb.q ] ; 2 uses
  %i.aul = or disjoint i32 %.01234.lcssa.i.i, 1
  %i.aum = icmp slt i32 %i.aul, %5
  br i1 %i.aum, label %.lr.ph293.i.i, label %.preheader206.i.i

.lr.ph293.i.i:                                    ; preds = %.preheader208.i.i
  %i.aun = sext i32 %i.auj to i64                 ; 2 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph288.i.i
  %.14287.i.i = phi ptr [ %.13305.i.i, %.lr.ph288.i.i ], [ %i.awk, %bb.q ] ; 2 uses
  %.01234286.i.i = phi i32 [ 0, %.lr.ph288.i.i ], [ %i.awl, %bb.q ] ; 2 uses
  %i.auo = add nsw i32 %.01234286.i.i, %4
  %i.aup = insertelement <4 x i32> poison, i32 %i.auo, i64 0
  %i.auq = shufflevector <4 x i32> %i.aup, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aur = add <4 x i32> %i.auq, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.aus = bitcast <4 x i32> %i.aur to <2 x i64>
  %i.aut = bitcast <4 x i32> %i.aur to <2 x i64>
  %i.auu = and <2 x i64> %i.aut, splat (i64 4294967295)
  %i.auv = mul nuw <2 x i64> %i.auu, %i.adc
  %i.auw = lshr <2 x i64> %i.auv, splat (i64 32)
  %i.aux = lshr <2 x i64> %i.aus, splat (i64 32)
  %i.auy = mul nuw <2 x i64> %i.aux, %i.adc
  %i.auz = bitcast <2 x i64> %i.auw to <8 x i16>
  %i.ava = bitcast <2 x i64> %i.auy to <8 x i16>
  %i.avb = shufflevector <8 x i16> %i.auz, <8 x i16> %i.ava, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.avc = bitcast <8 x i16> %i.avb to <4 x i32>  ; 2 uses
  %i.avd = sub <4 x i32> %i.aur, %i.avc
  %i.ave = lshr <4 x i32> %i.avd, %i.add
  %i.avf = add <4 x i32> %i.ave, %i.avc
  %i.avg = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.avf, <4 x i32> %i.zz) ; 2 uses
  %i.avh = mul <4 x i32> %i.avg, %i.adf
  %i.avi = sub <4 x i32> %i.aur, %i.avh           ; 4 uses
  %i.avj = bitcast <4 x i32> %i.avi to <2 x i64>
  %i.avk = bitcast <4 x i32> %i.avi to <2 x i64>
  %i.avl = and <2 x i64> %i.avk, splat (i64 4294967295)
  %i.avm = mul nuw <2 x i64> %i.avl, %i.adh
  %i.avn = lshr <2 x i64> %i.avm, splat (i64 32)
  %i.avo = lshr <2 x i64> %i.avj, splat (i64 32)
  %i.avp = mul nuw <2 x i64> %i.avo, %i.adh
  %i.avq = bitcast <2 x i64> %i.avn to <8 x i16>
  %i.avr = bitcast <2 x i64> %i.avp to <8 x i16>
  %i.avs = shufflevector <8 x i16> %i.avq, <8 x i16> %i.avr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.avt = bitcast <8 x i16> %i.avs to <4 x i32>  ; 2 uses
  %i.avu = sub <4 x i32> %i.avi, %i.avt
  %i.avv = lshr <4 x i32> %i.avu, %i.adi
  %i.avw = add <4 x i32> %i.avv, %i.avt
  %i.avx = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.avw, <4 x i32> %i.aar) ; 2 uses
  %i.avy = mul <4 x i32> %i.avx, %i.adk
  %i.avz = sub <4 x i32> %i.avi, %i.avy
  %i.awa = mul <4 x i32> %i.avg, %i.adn
  %i.awb = mul <4 x i32> %i.avz, %i.adp
  %i.awc = mul <4 x i32> %i.avx, %i.adr
  %i.awd = add <4 x i32> %i.awa, %i.auk
  %i.awe = add <4 x i32> %i.awd, %i.awc
  %i.awf = add <4 x i32> %i.awe, %i.awb
  %i.awg = load ptr, ptr %0, align 8, !tbaa !86
  %i.awh = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.awg, <4 x i32> %i.awf, <4 x i32> splat (i32 -1), i8 1)
  %i.awi = bitcast <4 x i32> %i.awh to <16 x i8>
  %i.awj = shufflevector <16 x i8> %i.awi, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.awj, ptr %.14287.i.i, align 1, !tbaa !89
  %i.awk = getelementptr inbounds nuw i8, ptr %.14287.i.i, i64 16 ; 2 uses
  %i.awl = add nuw nsw i32 %.01234286.i.i, 4      ; 3 uses
  %i.awm = or disjoint i32 %i.awl, 3
  %i.awn = icmp slt i32 %i.awm, %5
  br i1 %i.awn, label %bb.q, label %.preheader208.i.i, !llvm.loop !56

.preheader206.i.i:                                ; preds = %bb.r, %.preheader208.i.i
  %.11235.lcssa.i.i = phi i32 [ %.01234.lcssa.i.i, %.preheader208.i.i ], [ %i.axr, %bb.r ] ; 2 uses
  %.15.lcssa.i.i = phi ptr [ %.14.lcssa.i33.i, %.preheader208.i.i ], [ %i.axq, %bb.r ] ; 2 uses
  %i.awo = icmp slt i32 %.11235.lcssa.i.i, %5
  br i1 %i.awo, label %.lr.ph298.i.i, label %.loopexit205.i.i

.lr.ph298.i.i:                                    ; preds = %.preheader206.i.i
  %i.awp = sext i32 %i.auj to i64
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph293.i.i
  %.15292.i.i = phi ptr [ %.14.lcssa.i33.i, %.lr.ph293.i.i ], [ %i.axq, %bb.r ] ; 2 uses
  %.11235291.i.i = phi i32 [ %.01234.lcssa.i.i, %.lr.ph293.i.i ], [ %i.axr, %bb.r ] ; 2 uses
  %i.awq = add nsw i32 %.11235291.i.i, %4         ; 2 uses
  %i.awr = add nsw i32 %i.awq, 1
  %54 = insertelement <2 x i32> poison, i32 %i.awq, i64 0
  %55 = insertelement <2 x i32> %54, i32 %i.awr, i64 1
  %.frozen624 = freeze <2 x i32> %55              ; 2 uses
  %56 = sdiv <2 x i32> %.frozen624, %19           ; 2 uses
  %57 = mul <2 x i32> %56, %19
  %.decomposed625 = sub <2 x i32> %.frozen624, %57 ; 3 uses
  %58 = extractelement <2 x i32> %.decomposed625, i64 0
  %59 = sdiv i32 %58, %6
  %60 = extractelement <2 x i32> %.decomposed625, i64 1
  %61 = sdiv i32 %60, %6
  %62 = srem <2 x i32> %.decomposed625, %21       ; 2 uses
  %63 = mul i32 %59, %.scalar454.i.i
  %64 = extractelement <2 x i32> %62, i64 0
  %65 = mul nsw i32 %64, %8
  %66 = add nsw i32 %65, %63
  %67 = sext i32 %66 to i64
  %i.aws = sext <2 x i32> %56 to <2 x i64>
  %i.awt = mul <2 x i64> %23, %i.aws              ; 2 uses
  %i.awu = mul i32 %61, %.scalar454.i.i
  %68 = extractelement <2 x i32> %62, i64 1
  %i.awv = mul nsw i32 %68, %8
  %i.aww = add nsw i32 %i.awv, %i.awu
  %i.awx = sext i32 %i.aww to i64
  %i.awy = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  %i.awz = extractelement <2 x i64> %i.awt, i64 0
  %i.axa = getelementptr i8, ptr %i.awy, i64 %i.awz
  %i.axb = getelementptr i8, ptr %i.axa, i64 %i.aun
  %i.axc = getelementptr i8, ptr %i.axb, i64 %67
  %i.axd = load i64, ptr %i.axc, align 1, !tbaa !89
  %i.axe = insertelement <2 x i64> poison, i64 %i.axd, i64 0
  %i.axf = extractelement <2 x i64> %i.awt, i64 1
  %i.axg = getelementptr i8, ptr %i.awy, i64 %i.axf
  %i.axh = getelementptr i8, ptr %i.axg, i64 %i.aun
  %i.axi = getelementptr i8, ptr %i.axh, i64 %i.awx
  %i.axj = load i64, ptr %i.axi, align 1, !tbaa !89
  %i.axk = insertelement <2 x i64> poison, i64 %i.axj, i64 0
  %i.axl = bitcast <2 x i64> %i.axe to <16 x i8>
  %i.axm = bitcast <2 x i64> %i.axk to <16 x i8>
  %i.axn = shufflevector <16 x i8> %i.axl, <16 x i8> %i.axm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axo = bitcast <16 x i8> %i.axn to <2 x i64>
  %i.axp = extractelement <2 x i64> %i.axo, i64 0
  store i64 %i.axp, ptr %.15292.i.i, align 1, !tbaa !89
  %i.axq = getelementptr inbounds nuw i8, ptr %.15292.i.i, i64 8 ; 2 uses
  %i.axr = add nuw nsw i32 %.11235291.i.i, 2      ; 3 uses
  %i.axs = or disjoint i32 %i.axr, 1
  %i.axt = icmp slt i32 %i.axs, %5
  br i1 %i.axt, label %bb.r, label %.preheader206.i.i, !llvm.loop !57

bb.s:                                             ; preds = %bb.s, %.lr.ph298.i.i
  %.16297.i.i = phi ptr [ %.15.lcssa.i.i, %.lr.ph298.i.i ], [ %i.ayz, %bb.s ] ; 5 uses
  %.21236296.i.i = phi i32 [ %.11235.lcssa.i.i, %.lr.ph298.i.i ], [ %i.aza, %bb.s ] ; 2 uses
  %i.axu = add nsw i32 %.21236296.i.i, %4         ; 2 uses
  %i.axv = sdiv i32 %i.axu, %i.ym
  %i.axw = srem i32 %i.axu, %i.ym                 ; 2 uses
  %i.axx = sdiv i32 %i.axw, %6
  %i.axy = srem i32 %i.axw, %6
  %i.axz = sext i32 %i.axv to i64
  %i.aya = mul i64 %i.l, %i.axz
  %i.ayb = add i64 %i.aya, %i.awp
  %i.ayc = mul i32 %i.axx, %.scalar454.i.i
  %i.ayd = mul nsw i32 %i.axy, %8
  %i.aye = add nsw i32 %i.ayd, %i.ayc
  %i.ayf = sext i32 %i.aye to i64
  %i.ayg = add i64 %i.ayb, %i.ayf                 ; 4 uses
  %i.ayh = load ptr, ptr %0, align 8, !tbaa !86
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %i.ayg
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !89
  store i8 %i.ayj, ptr %.16297.i.i, align 1, !tbaa !89
  %i.ayk = load ptr, ptr %0, align 8, !tbaa !86
  %i.ayl = getelementptr i8, ptr %i.ayk, i64 %i.ayg
  %i.aym = getelementptr i8, ptr %i.ayl, i64 1
  %i.ayn = load i8, ptr %i.aym, align 1, !tbaa !89
  %i.ayo = getelementptr inbounds nuw i8, ptr %.16297.i.i, i64 1
  store i8 %i.ayn, ptr %i.ayo, align 1, !tbaa !89
  %i.ayp = load ptr, ptr %0, align 8, !tbaa !86
  %i.ayq = getelementptr i8, ptr %i.ayp, i64 %i.ayg
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 2
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !89
  %i.ayt = getelementptr inbounds nuw i8, ptr %.16297.i.i, i64 2
  store i8 %i.ays, ptr %i.ayt, align 1, !tbaa !89
  %i.ayu = load ptr, ptr %0, align 8, !tbaa !86
  %i.ayv = getelementptr i8, ptr %i.ayu, i64 %i.ayg
  %i.ayw = getelementptr i8, ptr %i.ayv, i64 3
  %i.ayx = load i8, ptr %i.ayw, align 1, !tbaa !89
  %i.ayy = getelementptr inbounds nuw i8, ptr %.16297.i.i, i64 3
  store i8 %i.ayx, ptr %i.ayy, align 1, !tbaa !89
  %i.ayz = getelementptr inbounds nuw i8, ptr %.16297.i.i, i64 4 ; 2 uses
  %i.aza = add nuw nsw i32 %.21236296.i.i, 1      ; 2 uses
  %exitcond442.not.i.i = icmp eq i32 %i.aza, %5
  br i1 %exitcond442.not.i.i, label %.loopexit205.i.i, label %bb.s, !llvm.loop !58

.loopexit207.i.i:                                 ; preds = %bb.p
  br i1 %brmerge381.i.i, label %.loopexit205.i.i, label %.lr.ph302.i.i

.lr.ph302.i.i:                                    ; preds = %.loopexit207.i.i
  %i.azb = sext i32 %i.auj to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph302.i.i
  %.18301.i.i = phi ptr [ %.13305.i.i, %.lr.ph302.i.i ], [ %i.azy, %bb.t ] ; 3 uses
  %.01237300.i.i = phi i32 [ 0, %.lr.ph302.i.i ], [ %i.azz, %bb.t ] ; 2 uses
  %i.azc = add nsw i32 %.01237300.i.i, %i.adv     ; 2 uses
  %i.azd = sdiv i32 %i.azc, %i.ym
  %i.aze = srem i32 %i.azc, %i.ym                 ; 2 uses
  %i.azf = sdiv i32 %i.aze, %6
  %i.azg = srem i32 %i.aze, %6
  %i.azh = sext i32 %i.azd to i64
  %i.azi = mul i64 %i.l, %i.azh
  %i.azj = add i64 %i.azi, %i.azb
  %i.azk = mul i32 %i.azf, %.scalar454.i.i
  %i.azl = mul nsw i32 %i.azg, %8
  %i.azm = add nsw i32 %i.azl, %i.azk
  %i.azn = sext i32 %i.azm to i64
  %i.azo = add i64 %i.azj, %i.azn
  %i.azp = shl i64 %i.azo, 3
  %i.azq = load ptr, ptr %0, align 8, !tbaa !86
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azq, i64 %i.azp ; 2 uses
  %i.azs = load <4 x i32>, ptr %i.azr, align 1, !tbaa !89 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azr, i64 16
  %i.azu = load <4 x i32>, ptr %i.azt, align 1, !tbaa !89 ; 2 uses
  %i.azv = shufflevector <4 x i32> %i.azs, <4 x i32> %i.azu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.azw = shufflevector <4 x i32> %i.azs, <4 x i32> %i.azu, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x i32> %i.azv, ptr %.18301.i.i, align 1, !tbaa !89
  %i.azx = getelementptr inbounds nuw i8, ptr %.18301.i.i, i64 16
  store <4 x i32> %i.azw, ptr %i.azx, align 1, !tbaa !89
  %i.azy = getelementptr inbounds nuw i8, ptr %.18301.i.i, i64 32 ; 2 uses
  %i.azz = add nuw nsw i32 %.01237300.i.i, 1      ; 2 uses
  %exitcond443.not.i.i = icmp eq i32 %i.azz, %i.adt
  br i1 %exitcond443.not.i.i, label %.loopexit205.i.i, label %bb.t, !llvm.loop !59

bb.u:                                             ; preds = %bb.o
  br i1 %i.acz, label %.preheader215.i.i, label %.loopexit213.i.i

.preheader215.i.i:                                ; preds = %bb.u
  br i1 %i.ada, label %.lr.ph270.i.i, label %.preheader214.i.i

.preheader214.i.i:                                ; preds = %.lr.ph270.i.i, %.preheader215.i.i
  %.01238.lcssa.i.i = phi i32 [ 0, %.preheader215.i.i ], [ %i.bco, %.lr.ph270.i.i ] ; 3 uses
  %.20.lcssa.i.i = phi ptr [ %.13305.i.i, %.preheader215.i.i ], [ %i.bcn, %.lr.ph270.i.i ] ; 2 uses
  %i.baa = or disjoint i32 %.01238.lcssa.i.i, 1
  %i.bab = icmp slt i32 %i.baa, %5
  br i1 %i.bab, label %.lr.ph275.i.i, label %.preheader212.i.i

.lr.ph270.i.i:                                    ; preds = %.preheader215.i.i, %.lr.ph270.i.i
  %.20269.i.i = phi ptr [ %i.bcn, %.lr.ph270.i.i ], [ %.13305.i.i, %.preheader215.i.i ] ; 2 uses
  %.01238268.i.i = phi i32 [ %i.bco, %.lr.ph270.i.i ], [ 0, %.preheader215.i.i ] ; 2 uses
  %i.bac = add nsw i32 %.01238268.i.i, %4
  %i.bad = insertelement <4 x i32> poison, i32 %i.bac, i64 0
  %i.bae = shufflevector <4 x i32> %i.bad, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.baf = add <4 x i32> %i.bae, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bag = bitcast <4 x i32> %i.baf to <2 x i64>
  %i.bah = bitcast <4 x i32> %i.baf to <2 x i64>
  %i.bai = and <2 x i64> %i.bah, splat (i64 4294967295)
  %i.baj = mul nuw <2 x i64> %i.bai, %i.adc
  %i.bak = lshr <2 x i64> %i.baj, splat (i64 32)
  %i.bal = lshr <2 x i64> %i.bag, splat (i64 32)
  %i.bam = mul nuw <2 x i64> %i.bal, %i.adc
  %i.ban = bitcast <2 x i64> %i.bak to <8 x i16>
  %i.bao = bitcast <2 x i64> %i.bam to <8 x i16>
  %i.bap = shufflevector <8 x i16> %i.ban, <8 x i16> %i.bao, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.baq = bitcast <8 x i16> %i.bap to <4 x i32>  ; 2 uses
  %i.bar = sub <4 x i32> %i.baf, %i.baq
  %i.bas = lshr <4 x i32> %i.bar, %i.add
  %i.bat = add <4 x i32> %i.bas, %i.baq
  %i.bau = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bat, <4 x i32> %i.zz) ; 2 uses
  %i.bav = mul <4 x i32> %i.bau, %i.adf
  %i.baw = sub <4 x i32> %i.baf, %i.bav           ; 4 uses
  %i.bax = bitcast <4 x i32> %i.baw to <2 x i64>
  %i.bay = bitcast <4 x i32> %i.baw to <2 x i64>
  %i.baz = and <2 x i64> %i.bay, splat (i64 4294967295)
  %i.bba = mul nuw <2 x i64> %i.baz, %i.adh
  %i.bbb = lshr <2 x i64> %i.bba, splat (i64 32)
  %i.bbc = lshr <2 x i64> %i.bax, splat (i64 32)
  %i.bbd = mul nuw <2 x i64> %i.bbc, %i.adh
  %i.bbe = bitcast <2 x i64> %i.bbb to <8 x i16>
  %i.bbf = bitcast <2 x i64> %i.bbd to <8 x i16>
  %i.bbg = shufflevector <8 x i16> %i.bbe, <8 x i16> %i.bbf, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bbh = bitcast <8 x i16> %i.bbg to <4 x i32>  ; 2 uses
  %i.bbi = sub <4 x i32> %i.baw, %i.bbh
  %i.bbj = lshr <4 x i32> %i.bbi, %i.adi
  %i.bbk = add <4 x i32> %i.bbj, %i.bbh
  %i.bbl = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bbk, <4 x i32> %i.aar) ; 2 uses
  %i.bbm = mul <4 x i32> %i.bbl, %i.adk
  %i.bbn = sub <4 x i32> %i.baw, %i.bbm
  %i.bbo = mul <4 x i32> %i.bau, %i.adn
  %i.bbp = mul <4 x i32> %i.bbn, %i.adp
  %i.bbq = mul <4 x i32> %i.bbl, %i.adr
  %i.bbr = add <4 x i32> %i.bbq, %i.bbo
  %i.bbs = add <4 x i32> %i.bbr, %i.bbp           ; 4 uses
  %i.bbt = shufflevector <4 x i32> %i.bbs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bbu = add <4 x i32> %i.bbt, %i.aug
  %i.bbv = shufflevector <4 x i32> %i.bbs, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bbw = add <4 x i32> %i.bbv, %i.aug
  %i.bbx = shufflevector <4 x i32> %i.bbs, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bby = add <4 x i32> %i.bbx, %i.aug
  %i.bbz = shufflevector <4 x i32> %i.bbs, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bca = add <4 x i32> %i.bbz, %i.aug
  %i.bcb = load ptr, ptr %0, align 8, !tbaa !86   ; 4 uses
  %i.bcc = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bcb, <4 x i32> %i.bbu, <4 x i32> splat (i32 -1), i8 1)
  %i.bcd = bitcast <4 x i32> %i.bcc to <16 x i8>
  %i.bce = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bcb, <4 x i32> %i.bbw, <4 x i32> splat (i32 -1), i8 1)
  %i.bcf = bitcast <4 x i32> %i.bce to <16 x i8>
  %i.bcg = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bcb, <4 x i32> %i.bby, <4 x i32> splat (i32 -1), i8 1)
  %i.bch = bitcast <4 x i32> %i.bcg to <16 x i8>
  %i.bci = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bcb, <4 x i32> %i.bca, <4 x i32> splat (i32 -1), i8 1)
  %i.bcj = bitcast <4 x i32> %i.bci to <16 x i8>
  %i.bck = shufflevector <16 x i8> %i.bcd, <16 x i8> %i.bcf, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcl = shufflevector <16 x i8> %i.bch, <16 x i8> %i.bcj, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bcm = shufflevector <16 x i8> %i.bck, <16 x i8> %i.bcl, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  store <16 x i8> %i.bcm, ptr %.20269.i.i, align 1, !tbaa !89
  %i.bcn = getelementptr inbounds nuw i8, ptr %.20269.i.i, i64 16 ; 2 uses
  %i.bco = add nuw nsw i32 %.01238268.i.i, 4      ; 3 uses
  %i.bcp = or disjoint i32 %i.bco, 3
  %i.bcq = icmp slt i32 %i.bcp, %5
  br i1 %i.bcq, label %.lr.ph270.i.i, label %.preheader214.i.i, !llvm.loop !60

.preheader212.i.i:                                ; preds = %.lr.ph275.i.i, %.preheader214.i.i
  %.11239.lcssa.i.i = phi i32 [ %.01238.lcssa.i.i, %.preheader214.i.i ], [ %i.bdr, %.lr.ph275.i.i ] ; 2 uses
  %.21.lcssa.i.i = phi ptr [ %.20.lcssa.i.i, %.preheader214.i.i ], [ %i.bdq, %.lr.ph275.i.i ] ; 2 uses
  %i.bcr = icmp slt i32 %.11239.lcssa.i.i, %5
  br i1 %i.bcr, label %.lr.ph280.i.i, label %.loopexit205.i.i

.lr.ph275.i.i:                                    ; preds = %.preheader214.i.i, %.lr.ph275.i.i
  %.21274.i.i = phi ptr [ %i.bdq, %.lr.ph275.i.i ], [ %.20.lcssa.i.i, %.preheader214.i.i ] ; 2 uses
  %.11239273.i.i = phi i32 [ %i.bdr, %.lr.ph275.i.i ], [ %.01238.lcssa.i.i, %.preheader214.i.i ] ; 2 uses
  %i.bcs = add nsw i32 %.11239273.i.i, %4         ; 3 uses
  %i.bct = add nsw i32 %i.bcs, 1                  ; 2 uses
  %i.bcu = insertelement <2 x i32> poison, i32 %i.bcs, i64 0
  %i.bcv = insertelement <2 x i32> %i.bcu, i32 %i.bct, i64 1
  %i.bcw = srem <2 x i32> %i.bcv, %i.aeb          ; 3 uses
  %i.bcx = srem <2 x i32> %i.bcw, %i.aed          ; 2 uses
  %69 = extractelement <2 x i32> %i.bcx, i64 0
  %70 = mul nsw i32 %69, %8
  %71 = extractelement <2 x i32> %i.bcx, i64 1
  %72 = mul nsw i32 %71, %8
  %i.bcy = insertelement <2 x i32> %i.bcw, i32 %i.bcs, i64 1
  %i.bcz = sdiv <2 x i32> %i.bcy, %i.aee
  %i.bda = mul <2 x i32> %i.bcz, %i.aef
  %73 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bda)
  %74 = add i32 %73, %70
  %75 = insertelement <4 x i32> poison, i32 %74, i64 0
  %i.bdb = shufflevector <4 x i32> %75, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdc = add <4 x i32> %i.bdb, %i.aug
  %i.bdd = shufflevector <2 x i32> %i.bcw, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bde = insertelement <2 x i32> %i.bdd, i32 %i.bct, i64 1
  %i.bdf = sdiv <2 x i32> %i.bde, %i.aee
  %i.bdg = mul <2 x i32> %i.bdf, %i.aef
  %76 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bdg)
  %77 = add i32 %76, %72
  %78 = insertelement <4 x i32> poison, i32 %77, i64 0
  %79 = shufflevector <4 x i32> %78, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdh = add <4 x i32> %79, %i.aug
  %i.bdi = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  %i.bdj = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bdi, <4 x i32> %i.bdc, <4 x i32> splat (i32 -1), i8 1)
  %i.bdk = bitcast <4 x i32> %i.bdj to <16 x i8>
  %i.bdl = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bdi, <4 x i32> %i.bdh, <4 x i32> splat (i32 -1), i8 1)
  %i.bdm = bitcast <4 x i32> %i.bdl to <16 x i8>
  %i.bdn = shufflevector <16 x i8> %i.bdk, <16 x i8> %i.bdm, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdo = bitcast <16 x i8> %i.bdn to <2 x i64>
  %i.bdp = extractelement <2 x i64> %i.bdo, i64 0
  store i64 %i.bdp, ptr %.21274.i.i, align 1, !tbaa !89
  %i.bdq = getelementptr inbounds nuw i8, ptr %.21274.i.i, i64 8 ; 2 uses
  %i.bdr = add nuw nsw i32 %.11239273.i.i, 2      ; 3 uses
  %i.bds = or disjoint i32 %i.bdr, 1
  %i.bdt = icmp slt i32 %i.bds, %5
  br i1 %i.bdt, label %.lr.ph275.i.i, label %.preheader212.i.i, !llvm.loop !61

.lr.ph280.i.i:                                    ; preds = %.preheader212.i.i, %.lr.ph280.i.i
  %.22279.i.i = phi ptr [ %i.ben, %.lr.ph280.i.i ], [ %.21.lcssa.i.i, %.preheader212.i.i ] ; 2 uses
  %.21240278.i.i = phi i32 [ %i.beo, %.lr.ph280.i.i ], [ %.11239.lcssa.i.i, %.preheader212.i.i ] ; 2 uses
  %i.bdu = add nsw i32 %.21240278.i.i, %4         ; 2 uses
  %i.bdv = srem i32 %i.bdu, %i.ym                 ; 2 uses
  %i.bdw = srem i32 %i.bdv, %6
  %i.bdx = mul nsw i32 %i.bdw, %8
  %i.bdy = insertelement <2 x i32> poison, i32 %i.bdv, i64 0
  %i.bdz = insertelement <2 x i32> %i.bdy, i32 %i.bdu, i64 1
  %i.bea = sdiv <2 x i32> %i.bdz, %i.aeh
  %i.beb = mul <2 x i32> %i.bea, %i.aej
  %i.bec = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.beb)
  %i.bed = add i32 %i.bec, %i.bdx
  %i.bee = insertelement <4 x i32> poison, i32 %i.bed, i64 0
  %i.bef = shufflevector <4 x i32> %i.bee, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.beg = add <4 x i32> %i.bef, %i.aug
  %i.beh = load ptr, ptr %0, align 8, !tbaa !86
  %i.bei = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.beh, <4 x i32> %i.beg, <4 x i32> splat (i32 -1), i8 1)
  %i.bej = bitcast <4 x i32> %i.bei to <16 x i8>
  %i.bek = shufflevector <16 x i8> %i.bej, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bel = bitcast <16 x i8> %i.bek to <4 x float>
  %i.bem = extractelement <4 x float> %i.bel, i64 0
  store float %i.bem, ptr %.22279.i.i, align 1, !tbaa !89
  %i.ben = getelementptr inbounds nuw i8, ptr %.22279.i.i, i64 4 ; 2 uses
  %i.beo = add nuw nsw i32 %.21240278.i.i, 1      ; 2 uses
  %exitcond440.not.i.i = icmp eq i32 %i.beo, %5
  br i1 %exitcond440.not.i.i, label %.loopexit205.i.i, label %.lr.ph280.i.i, !llvm.loop !62

.loopexit213.i.i:                                 ; preds = %bb.u
  br i1 %brmerge381.i.i, label %.loopexit205.i.i, label %.lr.ph284.i.i

.lr.ph284.i.i:                                    ; preds = %.loopexit213.i.i, %.lr.ph284.i.i
  %.24283.i.i = phi ptr [ %i.bfj, %.lr.ph284.i.i ], [ %.13305.i.i, %.loopexit213.i.i ] ; 2 uses
  %.01241282.i.i = phi i32 [ %i.bfk, %.lr.ph284.i.i ], [ 0, %.loopexit213.i.i ] ; 2 uses
  %i.bep = add nsw i32 %.01241282.i.i, %i.adv     ; 2 uses
  %i.beq = srem i32 %i.bep, %i.ym                 ; 2 uses
  %i.ber = srem i32 %i.beq, %6
  %i.bes = mul nsw i32 %i.ber, %8
  %i.bet = insertelement <2 x i32> poison, i32 %i.beq, i64 0
  %i.beu = insertelement <2 x i32> %i.bet, i32 %i.bep, i64 1
  %i.bev = sdiv <2 x i32> %i.beu, %i.adx
  %i.bew = mul <2 x i32> %i.bev, %i.adz
  %i.bex = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bew)
  %i.bey = add i32 %i.bex, %i.bes
  %i.bez = insertelement <4 x i32> poison, i32 %i.bey, i64 0
  %i.bfa = shufflevector <4 x i32> %i.bez, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfb = add <4 x i32> %i.bfa, %i.aug
  %i.bfc = shl <4 x i32> %i.bfb, splat (i32 3)
  %i.bfd = load ptr, ptr %0, align 8, !tbaa !86
  %i.bfe = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bfd, <4 x i32> %i.bfc, <4 x i64> splat (i64 -1), i8 1)
  %i.bff = bitcast <4 x i64> %i.bfe to <8 x i32>
  %i.bfg = shufflevector <8 x i32> %i.bff, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.bfh = bitcast <8 x i32> %i.bfg to <4 x i64>
  %i.bfi = shufflevector <4 x i64> %i.bfh, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i64> %i.bfi, ptr %.24283.i.i, align 1, !tbaa !89
  %i.bfj = getelementptr inbounds nuw i8, ptr %.24283.i.i, i64 32 ; 2 uses
  %i.bfk = add nuw nsw i32 %.01241282.i.i, 1      ; 2 uses
  %exitcond441.not.i.i = icmp eq i32 %i.bfk, %i.adt
  br i1 %exitcond441.not.i.i, label %.loopexit205.i.i, label %.lr.ph284.i.i, !llvm.loop !63

.loopexit205.i.i:                                 ; preds = %.lr.ph284.i.i, %.lr.ph280.i.i, %bb.t, %bb.s, %.loopexit213.i.i, %.preheader212.i.i, %.loopexit207.i.i, %.preheader206.i.i
  %.25.i.i = phi ptr [ %.13305.i.i, %.loopexit213.i.i ], [ %.15.lcssa.i.i, %.preheader206.i.i ], [ %.13305.i.i, %.loopexit207.i.i ], [ %i.azy, %bb.t ], [ %i.ayz, %bb.s ], [ %.21.lcssa.i.i, %.preheader212.i.i ], [ %i.ben, %.lr.ph280.i.i ], [ %i.bfj, %.lr.ph284.i.i ] ; 2 uses
  %i.bfl = add nuw nsw i32 %.11223304.i.i, 4      ; 3 uses
  %i.bfm = or disjoint i32 %i.bfl, 3
  %i.bfn = icmp slt i32 %i.bfm, %3
  br i1 %i.bfn, label %bb.o, label %.preheader203.i.i, !llvm.loop !64

.preheader190.i.i:                                ; preds = %.loopexit192.i.i, %.preheader203.i.i
  %.21224.lcssa.i.i = phi i32 [ %.11223.lcssa.i.i, %.preheader203.i.i ], [ %i.btm, %.loopexit192.i.i ] ; 2 uses
  %.26.lcssa.i.i = phi ptr [ %.13.lcssa.i.i, %.preheader203.i.i ], [ %.39.i.i, %.loopexit192.i.i ]
  %i.bfo = icmp slt i32 %.21224.lcssa.i.i, %3
  br i1 %i.bfo, label %.lr.ph371.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph371.i.i:                                    ; preds = %.preheader190.i.i
  %i.bfp = mul i32 %i.ye, %11
  %i.bfq = icmp eq i32 %i.yg, 1
  %i.bfr = icmp sgt i32 %5, 3
  %i.bfs = shufflevector <4 x i64> %i.zx, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bft = and <2 x i64> %i.bfs, splat (i64 4294967295) ; 2 uses
  %i.bfu = shufflevector <4 x i32> %i.zy, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfv = insertelement <4 x i32> poison, i32 %i.ym, i64 0
  %i.bfw = shufflevector <4 x i32> %i.bfv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bfx = shufflevector <4 x i64> %i.aap, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bfy = and <2 x i64> %i.bfx, splat (i64 4294967295) ; 2 uses
  %i.bfz = shufflevector <4 x i32> %i.aaq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bga = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.bgb = shufflevector <4 x i32> %i.bga, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgc = trunc i64 %i.l to i32
  %i.bgd = insertelement <4 x i32> poison, i32 %i.bgc, i64 0
  %i.bge = shufflevector <4 x i32> %i.bgd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgf = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.bgg = shufflevector <4 x i32> %i.bgf, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar458.i.i = mul i32 %i.ye, %9             ; 5 uses
  %i.bgh = insertelement <4 x i32> poison, i32 %.scalar458.i.i, i64 0
  %i.bgi = shufflevector <4 x i32> %i.bgh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgj = icmp ne i32 %i.yg, 8
  %i.bgk = lshr i32 %5, 3
  %i.bgl = icmp slt i32 %5, 8
  %i.bgm = sdiv i32 %4, 8
  %brmerge388.i.i = or i1 %i.bgl, %i.bgj
  %80 = insertelement <2 x i32> poison, i32 %i.ym, i64 0
  %81 = shufflevector <2 x i32> %80, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bgn = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.bgo = shufflevector <2 x i32> %i.bgn, <2 x i32> poison, <2 x i32> zeroinitializer
  %82 = insertelement <2 x i64> poison, i64 %i.l, i64 0
  %83 = shufflevector <2 x i64> %82, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %bb.ae

bb.v:                                             ; preds = %.loopexit192.i.i, %.lr.ph348.i.i
  %.26347.i.i = phi ptr [ %.13.lcssa.i.i, %.lr.ph348.i.i ], [ %.39.i.i, %.loopexit192.i.i ] ; 8 uses
  %.21224346.i.i = phi i32 [ %.11223.lcssa.i.i, %.lr.ph348.i.i ], [ %i.btm, %.loopexit192.i.i ] ; 2 uses
  %i.bgp = add nsw i32 %.21224346.i.i, %2         ; 2 uses
  %i.bgq = add nsw i32 %i.bgp, 1
  %i.bgr = insertelement <2 x i32> poison, i32 %i.bgp, i64 0
  %i.bgs = insertelement <2 x i32> %i.bgr, i32 %i.bgq, i64 1
  %.frozen.a = freeze <2 x i32> %i.bgs            ; 2 uses
  %.frozen635 = freeze <2 x i32> %i.asu           ; 2 uses
  %i.bgt = sdiv <2 x i32> %.frozen.a, %.frozen635 ; 2 uses
  %i.bgu = mul <2 x i32> %i.bgt, %.frozen635
  %.decomposed.a = sub <2 x i32> %.frozen.a, %i.bgu
  %i.bgv = mul nsw <2 x i32> %.decomposed.a, %i.ass
  %i.bgw = mul <2 x i32> %i.bgt, %i.asw           ; 3 uses
  %i.bgx = add nsw <2 x i32> %i.bgv, %i.bgw       ; 11 uses
  %shift424 = shufflevector <2 x i32> %i.bgw, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bgy = icmp eq <2 x i32> %i.bgw, %shift424
  %i.bgz = extractelement <2 x i1> %i.bgy, i64 0
  %or.cond5.i.i = and i1 %i.g, %i.bgz
  br i1 %or.cond5.i.i, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  br i1 %i.ars, label %.preheader196.i.i, label %.loopexit194.i.i

.preheader196.i.i:                                ; preds = %bb.w
  br i1 %i.art, label %.lr.ph330.i.i, label %.preheader195.i.i

.lr.ph330.i.i:                                    ; preds = %.preheader196.i.i
  %i.bha = shufflevector <2 x i32> %i.bgx, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.x

.preheader195.i.i:                                ; preds = %bb.x, %.preheader196.i.i
  %.01242.lcssa.i.i = phi i32 [ 0, %.preheader196.i.i ], [ %i.bje, %bb.x ] ; 3 uses
  %.27.lcssa.i.i = phi ptr [ %.26347.i.i, %.preheader196.i.i ], [ %i.bjd, %bb.x ] ; 2 uses
  %i.bhb = or disjoint i32 %.01242.lcssa.i.i, 1
  %i.bhc = icmp slt i32 %i.bhb, %5
  br i1 %i.bhc, label %.lr.ph335.i.i, label %.preheader193.i.i

.lr.ph335.i.i:                                    ; preds = %.preheader195.i.i
  %i.bhd = extractelement <2 x i32> %i.bgx, i64 0
  %i.bhe = sext i32 %i.bhd to i64                 ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph330.i.i
  %.27329.i.i = phi ptr [ %.26347.i.i, %.lr.ph330.i.i ], [ %i.bjd, %bb.x ] ; 2 uses
  %.01242328.i.i = phi i32 [ 0, %.lr.ph330.i.i ], [ %i.bje, %bb.x ] ; 2 uses
  %i.bhf = add nsw i32 %.01242328.i.i, %4
  %i.bhg = insertelement <4 x i32> poison, i32 %i.bhf, i64 0
  %i.bhh = shufflevector <4 x i32> %i.bhg, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhi = add <4 x i32> %i.bhh, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bhj = bitcast <4 x i32> %i.bhi to <2 x i64>
  %i.bhk = bitcast <4 x i32> %i.bhi to <2 x i64>
  %i.bhl = and <2 x i64> %i.bhk, splat (i64 4294967295)
  %i.bhm = mul nuw <2 x i64> %i.bhl, %i.arv
  %i.bhn = lshr <2 x i64> %i.bhm, splat (i64 32)
  %i.bho = lshr <2 x i64> %i.bhj, splat (i64 32)
  %i.bhp = mul nuw <2 x i64> %i.bho, %i.arv
  %i.bhq = bitcast <2 x i64> %i.bhn to <8 x i16>
  %i.bhr = bitcast <2 x i64> %i.bhp to <8 x i16>
  %i.bhs = shufflevector <8 x i16> %i.bhq, <8 x i16> %i.bhr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bht = bitcast <8 x i16> %i.bhs to <4 x i32>  ; 2 uses
  %i.bhu = sub <4 x i32> %i.bhi, %i.bht
  %i.bhv = lshr <4 x i32> %i.bhu, %i.arw
  %i.bhw = add <4 x i32> %i.bhv, %i.bht
  %i.bhx = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bhw, <4 x i32> %i.zz) ; 2 uses
  %i.bhy = mul <4 x i32> %i.bhx, %i.ary
  %i.bhz = sub <4 x i32> %i.bhi, %i.bhy           ; 4 uses
  %i.bia = bitcast <4 x i32> %i.bhz to <2 x i64>
  %i.bib = bitcast <4 x i32> %i.bhz to <2 x i64>
  %i.bic = and <2 x i64> %i.bib, splat (i64 4294967295)
  %i.bid = mul nuw <2 x i64> %i.bic, %i.asa
  %i.bie = lshr <2 x i64> %i.bid, splat (i64 32)
  %i.bif = lshr <2 x i64> %i.bia, splat (i64 32)
  %i.big = mul nuw <2 x i64> %i.bif, %i.asa
  %i.bih = bitcast <2 x i64> %i.bie to <8 x i16>
  %i.bii = bitcast <2 x i64> %i.big to <8 x i16>
  %i.bij = shufflevector <8 x i16> %i.bih, <8 x i16> %i.bii, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bik = bitcast <8 x i16> %i.bij to <4 x i32>  ; 2 uses
  %i.bil = sub <4 x i32> %i.bhz, %i.bik
  %i.bim = lshr <4 x i32> %i.bil, %i.asb
  %i.bin = add <4 x i32> %i.bim, %i.bik
  %i.bio = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bin, <4 x i32> %i.aar) ; 2 uses
  %i.bip = mul <4 x i32> %i.bio, %i.asd
  %i.biq = sub <4 x i32> %i.bhz, %i.bip
  %i.bir = mul <4 x i32> %i.bhx, %i.asg
  %i.bis = mul <4 x i32> %i.biq, %i.asi
  %i.bit = mul <4 x i32> %i.bio, %i.ask
  %i.biu = add <4 x i32> %i.bir, %i.bha
  %i.biv = add <4 x i32> %i.biu, %i.bit
  %i.biw = add <4 x i32> %i.biv, %i.bis
  %i.bix = load ptr, ptr %0, align 8, !tbaa !86
  %i.biy = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bix, <4 x i32> %i.biw, <4 x i32> splat (i32 -1), i8 1)
  %i.biz = bitcast <4 x i32> %i.biy to <16 x i8>
  %i.bja = shufflevector <16 x i8> %i.biz, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bjb = bitcast <16 x i8> %i.bja to <2 x i64>
  %i.bjc = extractelement <2 x i64> %i.bjb, i64 0
  store i64 %i.bjc, ptr %.27329.i.i, align 1, !tbaa !89
  %i.bjd = getelementptr inbounds nuw i8, ptr %.27329.i.i, i64 8 ; 2 uses
  %i.bje = add nuw nsw i32 %.01242328.i.i, 4      ; 3 uses
  %i.bjf = or disjoint i32 %i.bje, 3
  %i.bjg = icmp slt i32 %i.bjf, %5
  br i1 %i.bjg, label %bb.x, label %.preheader195.i.i, !llvm.loop !65

.preheader193.i.i:                                ; preds = %bb.y, %.preheader195.i.i
  %.11243.lcssa.i.i = phi i32 [ %.01242.lcssa.i.i, %.preheader195.i.i ], [ %i.bkl, %bb.y ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.27.lcssa.i.i, %.preheader195.i.i ], [ %i.bkk, %bb.y ] ; 2 uses
  %i.bjh = icmp slt i32 %.11243.lcssa.i.i, %5
  br i1 %i.bjh, label %.lr.ph340.i.i, label %.loopexit192.i.i

.lr.ph340.i.i:                                    ; preds = %.preheader193.i.i
  %i.bji = extractelement <2 x i32> %i.bgx, i64 0
  %i.bjj = sext i32 %i.bji to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph335.i.i
  %.28334.i.i = phi ptr [ %.27.lcssa.i.i, %.lr.ph335.i.i ], [ %i.bkk, %bb.y ] ; 5 uses
  %.11243333.i.i = phi i32 [ %.01242.lcssa.i.i, %.lr.ph335.i.i ], [ %i.bkl, %bb.y ] ; 2 uses
  %i.bjk = add nsw i32 %.11243333.i.i, %4         ; 2 uses
  %i.bjl = add nsw i32 %i.bjk, 1
  %84 = insertelement <2 x i32> poison, i32 %i.bjk, i64 0
  %85 = insertelement <2 x i32> %84, i32 %i.bjl, i64 1
  %.frozen629 = freeze <2 x i32> %85              ; 2 uses
  %86 = sdiv <2 x i32> %.frozen629, %51           ; 2 uses
  %87 = mul <2 x i32> %86, %51
  %.decomposed630 = sub <2 x i32> %.frozen629, %87 ; 3 uses
  %88 = extractelement <2 x i32> %.decomposed630, i64 0
  %89 = sdiv i32 %88, %6
  %90 = extractelement <2 x i32> %.decomposed630, i64 1
  %91 = sdiv i32 %90, %6
  %92 = srem <2 x i32> %.decomposed630, %i.ati    ; 2 uses
  %93 = mul i32 %89, %.scalar456.i.i
  %94 = extractelement <2 x i32> %92, i64 0
  %95 = mul nsw i32 %94, %8
  %96 = add nsw i32 %95, %93
  %97 = sext i32 %96 to i64
  %i.bjm = sext <2 x i32> %86 to <2 x i64>
  %i.bjn = mul <2 x i64> %53, %i.bjm              ; 2 uses
  %i.bjo = mul i32 %91, %.scalar456.i.i
  %98 = extractelement <2 x i32> %92, i64 1
  %i.bjp = mul nsw i32 %98, %8
  %i.bjq = add nsw i32 %i.bjp, %i.bjo
  %i.bjr = sext i32 %i.bjq to i64
  %i.bjs = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  %i.bjt = extractelement <2 x i64> %i.bjn, i64 0
  %i.bju = getelementptr i8, ptr %i.bjs, i64 %i.bjt
  %i.bjv = getelementptr i8, ptr %i.bju, i64 %i.bhe
  %i.bjw = getelementptr i8, ptr %i.bjv, i64 %97  ; 2 uses
  %i.bjx = extractelement <2 x i64> %i.bjn, i64 1
  %i.bjy = getelementptr i8, ptr %i.bjs, i64 %i.bjx
  %i.bjz = getelementptr i8, ptr %i.bjy, i64 %i.bhe
  %i.bka = getelementptr i8, ptr %i.bjz, i64 %i.bjr ; 2 uses
  %i.bkb = load i8, ptr %i.bjw, align 1, !tbaa !89
  store i8 %i.bkb, ptr %.28334.i.i, align 1, !tbaa !89
  %i.bkc = load i8, ptr %i.bka, align 1, !tbaa !89
  %i.bkd = getelementptr inbounds nuw i8, ptr %.28334.i.i, i64 1
  store i8 %i.bkc, ptr %i.bkd, align 1, !tbaa !89
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bjw, i64 1
  %i.bkf = load i8, ptr %i.bke, align 1, !tbaa !89
  %i.bkg = getelementptr inbounds nuw i8, ptr %.28334.i.i, i64 2
  store i8 %i.bkf, ptr %i.bkg, align 1, !tbaa !89
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bka, i64 1
  %i.bki = load i8, ptr %i.bkh, align 1, !tbaa !89
  %i.bkj = getelementptr inbounds nuw i8, ptr %.28334.i.i, i64 3
  store i8 %i.bki, ptr %i.bkj, align 1, !tbaa !89
  %i.bkk = getelementptr inbounds nuw i8, ptr %.28334.i.i, i64 4 ; 2 uses
  %i.bkl = add nuw nsw i32 %.11243333.i.i, 2      ; 3 uses
  %i.bkm = or disjoint i32 %i.bkl, 1
  %i.bkn = icmp slt i32 %i.bkm, %5
  br i1 %i.bkn, label %bb.y, label %.preheader193.i.i, !llvm.loop !66

bb.z:                                             ; preds = %bb.z, %.lr.ph340.i.i
  %.29339.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph340.i.i ], [ %i.blh, %bb.z ] ; 3 uses
  %.21244338.i.i = phi i32 [ %.11243.lcssa.i.i, %.lr.ph340.i.i ], [ %i.bli, %bb.z ] ; 2 uses
  %i.bko = add nsw i32 %.21244338.i.i, %4         ; 2 uses
  %i.bkp = sdiv i32 %i.bko, %i.ym
  %i.bkq = srem i32 %i.bko, %i.ym                 ; 2 uses
  %i.bkr = sdiv i32 %i.bkq, %6
  %i.bks = srem i32 %i.bkq, %6
  %i.bkt = sext i32 %i.bkp to i64
  %i.bku = mul i64 %i.l, %i.bkt
  %i.bkv = mul i32 %i.bkr, %.scalar456.i.i
  %i.bkw = mul nsw i32 %i.bks, %8
  %i.bkx = add nsw i32 %i.bkw, %i.bkv
  %i.bky = sext i32 %i.bkx to i64
  %i.bkz = load ptr, ptr %0, align 8, !tbaa !86
  %i.bla = getelementptr i8, ptr %i.bkz, i64 %i.bku
  %i.blb = getelementptr i8, ptr %i.bla, i64 %i.bjj
  %i.blc = getelementptr i8, ptr %i.blb, i64 %i.bky ; 2 uses
  %i.bld = load i8, ptr %i.blc, align 1, !tbaa !89
  store i8 %i.bld, ptr %.29339.i.i, align 1, !tbaa !89
  %i.ble = getelementptr inbounds nuw i8, ptr %i.blc, i64 1
  %i.blf = load i8, ptr %i.ble, align 1, !tbaa !89
  %i.blg = getelementptr inbounds nuw i8, ptr %.29339.i.i, i64 1
  store i8 %i.blf, ptr %i.blg, align 1, !tbaa !89
  %i.blh = getelementptr inbounds nuw i8, ptr %.29339.i.i, i64 2 ; 2 uses
  %i.bli = add nuw nsw i32 %.21244338.i.i, 1      ; 2 uses
  %exitcond446.not.i.i = icmp eq i32 %i.bli, %5
  br i1 %exitcond446.not.i.i, label %.loopexit192.i.i, label %bb.z, !llvm.loop !67

.loopexit194.i.i:                                 ; preds = %bb.w
  br i1 %brmerge384.i.i, label %.loopexit192.i.i, label %.lr.ph344.i.i

.lr.ph344.i.i:                                    ; preds = %.loopexit194.i.i
  %i.blj = extractelement <2 x i32> %i.bgx, i64 0
  %i.blk = sext i32 %i.blj to i64
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.lr.ph344.i.i
  %.31343.i.i = phi ptr [ %.26347.i.i, %.lr.ph344.i.i ], [ %i.bmd, %bb.aa ] ; 2 uses
  %.01245342.i.i = phi i32 [ 0, %.lr.ph344.i.i ], [ %i.bme, %bb.aa ] ; 2 uses
  %i.bll = add nsw i32 %.01245342.i.i, %i.asn     ; 2 uses
  %i.blm = sdiv i32 %i.bll, %i.ym
  %i.bln = srem i32 %i.bll, %i.ym                 ; 2 uses
  %i.blo = sdiv i32 %i.bln, %6
  %i.blp = srem i32 %i.bln, %6
  %i.blq = sext i32 %i.blm to i64
  %i.blr = mul i64 %i.l, %i.blq
  %i.bls = add i64 %i.blr, %i.blk
  %i.blt = mul i32 %i.blo, %.scalar456.i.i
  %i.blu = mul nsw i32 %i.blp, %8
  %i.blv = add nsw i32 %i.blu, %i.blt
  %i.blw = sext i32 %i.blv to i64
  %i.blx = add i64 %i.bls, %i.blw
  %i.bly = shl i64 %i.blx, 3
  %i.blz = load ptr, ptr %0, align 8, !tbaa !86
  %i.bma = getelementptr inbounds nuw i8, ptr %i.blz, i64 %i.bly
  %i.bmb = load <4 x i32>, ptr %i.bma, align 1, !tbaa !89
  %i.bmc = shufflevector <4 x i32> %i.bmb, <4 x i32> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %i.bmc, ptr %.31343.i.i, align 1, !tbaa !89
  %i.bmd = getelementptr inbounds nuw i8, ptr %.31343.i.i, i64 16 ; 2 uses
  %i.bme = add nuw nsw i32 %.01245342.i.i, 1      ; 2 uses
  %exitcond447.not.i.i = icmp eq i32 %i.bme, %i.asm
  br i1 %exitcond447.not.i.i, label %.loopexit192.i.i, label %bb.aa, !llvm.loop !68

bb.ab:                                            ; preds = %bb.v
  br i1 %i.ars, label %.preheader202.i.i, label %.loopexit200.i.i

.preheader202.i.i:                                ; preds = %bb.ab
  br i1 %i.art, label %.lr.ph311.i.i.preheader, label %.preheader201.i.i

.lr.ph311.i.i.preheader:                          ; preds = %.preheader202.i.i
  %i.bmf = extractelement <2 x i32> %i.bgx, i64 0 ; 4 uses
  %i.bmg = extractelement <2 x i32> %i.bgx, i64 1 ; 4 uses
  br label %.lr.ph311.i.i

.preheader201.i.i:                                ; preds = %.lr.ph311.i.i, %.preheader202.i.i
  %.01246.lcssa.i.i = phi i32 [ 0, %.preheader202.i.i ], [ %i.bpq, %.lr.ph311.i.i ] ; 3 uses
  %.33.lcssa.i.i = phi ptr [ %.26347.i.i, %.preheader202.i.i ], [ %i.bpp, %.lr.ph311.i.i ] ; 2 uses
  %i.bmh = or disjoint i32 %.01246.lcssa.i.i, 1
  %i.bmi = icmp slt i32 %i.bmh, %5
  br i1 %i.bmi, label %.lr.ph316.i.i.preheader, label %.preheader199.i.i

.lr.ph316.i.i.preheader:                          ; preds = %.preheader201.i.i
  %i.bmj = shufflevector <2 x i32> %i.bgx, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph316.i.i

.lr.ph311.i.i:                                    ; preds = %.lr.ph311.i.i.preheader, %.lr.ph311.i.i
  %.33310.i.i = phi ptr [ %i.bpp, %.lr.ph311.i.i ], [ %.26347.i.i, %.lr.ph311.i.i.preheader ] ; 9 uses
  %.01246309.i.i = phi i32 [ %i.bpq, %.lr.ph311.i.i ], [ 0, %.lr.ph311.i.i.preheader ] ; 2 uses
  %i.bmk = add nsw i32 %.01246309.i.i, %4
  %i.bml = insertelement <4 x i32> poison, i32 %i.bmk, i64 0
  %i.bmm = shufflevector <4 x i32> %i.bml, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bmn = add <4 x i32> %i.bmm, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bmo = bitcast <4 x i32> %i.bmn to <2 x i64>
  %i.bmp = bitcast <4 x i32> %i.bmn to <2 x i64>
  %i.bmq = and <2 x i64> %i.bmp, splat (i64 4294967295)
  %i.bmr = mul nuw <2 x i64> %i.bmq, %i.arv
  %i.bms = lshr <2 x i64> %i.bmr, splat (i64 32)
  %i.bmt = lshr <2 x i64> %i.bmo, splat (i64 32)
  %i.bmu = mul nuw <2 x i64> %i.bmt, %i.arv
  %i.bmv = bitcast <2 x i64> %i.bms to <8 x i16>
  %i.bmw = bitcast <2 x i64> %i.bmu to <8 x i16>
  %i.bmx = shufflevector <8 x i16> %i.bmv, <8 x i16> %i.bmw, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bmy = bitcast <8 x i16> %i.bmx to <4 x i32>  ; 2 uses
  %i.bmz = sub <4 x i32> %i.bmn, %i.bmy
  %i.bna = lshr <4 x i32> %i.bmz, %i.arw
  %i.bnb = add <4 x i32> %i.bna, %i.bmy
  %i.bnc = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bnb, <4 x i32> %i.zz) ; 2 uses
  %i.bnd = mul <4 x i32> %i.bnc, %i.ary
  %i.bne = sub <4 x i32> %i.bmn, %i.bnd           ; 4 uses
  %i.bnf = bitcast <4 x i32> %i.bne to <2 x i64>
  %i.bng = bitcast <4 x i32> %i.bne to <2 x i64>
  %i.bnh = and <2 x i64> %i.bng, splat (i64 4294967295)
  %i.bni = mul nuw <2 x i64> %i.bnh, %i.asa
  %i.bnj = lshr <2 x i64> %i.bni, splat (i64 32)
  %i.bnk = lshr <2 x i64> %i.bnf, splat (i64 32)
  %i.bnl = mul nuw <2 x i64> %i.bnk, %i.asa
  %i.bnm = bitcast <2 x i64> %i.bnj to <8 x i16>
  %i.bnn = bitcast <2 x i64> %i.bnl to <8 x i16>
  %i.bno = shufflevector <8 x i16> %i.bnm, <8 x i16> %i.bnn, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bnp = bitcast <8 x i16> %i.bno to <4 x i32>  ; 2 uses
  %i.bnq = sub <4 x i32> %i.bne, %i.bnp
  %i.bnr = lshr <4 x i32> %i.bnq, %i.asb
  %i.bns = add <4 x i32> %i.bnr, %i.bnp
  %i.bnt = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bns, <4 x i32> %i.aar) ; 2 uses
  %i.bnu = mul <4 x i32> %i.bnt, %i.asd
  %i.bnv = sub <4 x i32> %i.bne, %i.bnu
  %i.bnw = mul <4 x i32> %i.bnc, %i.asg
  %i.bnx = mul <4 x i32> %i.bnv, %i.asi
  %i.bny = mul <4 x i32> %i.bnt, %i.ask
  %i.bnz = add <4 x i32> %i.bny, %i.bnw
  %i.boa = add <4 x i32> %i.bnz, %i.bnx           ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <4 x i32> %i.boa, i64 0 ; 2 uses
  %i.bob = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.bmf
  %i.boc = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.bmg
  %.sroa.09.4.vec.extract.i.i = extractelement <4 x i32> %i.boa, i64 1 ; 2 uses
  %i.bod = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.bmf
  %i.boe = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.bmg
  %.sroa.09.8.vec.extract.i.i = extractelement <4 x i32> %i.boa, i64 2 ; 2 uses
  %i.bof = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.bmf
  %i.bog = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.bmg
  %.sroa.09.12.vec.extract.i.i = extractelement <4 x i32> %i.boa, i64 3 ; 2 uses
  %i.boh = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.bmf
  %i.boi = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.bmg
  %i.boj = load ptr, ptr %0, align 8, !tbaa !86   ; 8 uses
  %i.bok = sext i32 %i.bob to i64
  %i.bol = getelementptr inbounds i8, ptr %i.boj, i64 %i.bok
  %i.bom = sext i32 %i.boc to i64
  %i.bon = getelementptr inbounds i8, ptr %i.boj, i64 %i.bom
  %i.boo = sext i32 %i.bod to i64
  %i.bop = getelementptr inbounds i8, ptr %i.boj, i64 %i.boo
  %i.boq = sext i32 %i.boe to i64
  %i.bor = getelementptr inbounds i8, ptr %i.boj, i64 %i.boq
  %i.bos = sext i32 %i.bof to i64
  %i.bot = getelementptr inbounds i8, ptr %i.boj, i64 %i.bos
  %i.bou = sext i32 %i.bog to i64
  %i.bov = getelementptr inbounds i8, ptr %i.boj, i64 %i.bou
  %i.bow = sext i32 %i.boh to i64
  %i.box = getelementptr inbounds i8, ptr %i.boj, i64 %i.bow
  %i.boy = sext i32 %i.boi to i64
  %i.boz = getelementptr inbounds i8, ptr %i.boj, i64 %i.boy
  %i.bpa = load i8, ptr %i.bol, align 1, !tbaa !89
  store i8 %i.bpa, ptr %.33310.i.i, align 1, !tbaa !89
  %i.bpb = load i8, ptr %i.bop, align 1, !tbaa !89
  %i.bpc = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 1
  store i8 %i.bpb, ptr %i.bpc, align 1, !tbaa !89
  %i.bpd = load i8, ptr %i.bot, align 1, !tbaa !89
  %i.bpe = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 2
  store i8 %i.bpd, ptr %i.bpe, align 1, !tbaa !89
  %i.bpf = load i8, ptr %i.box, align 1, !tbaa !89
  %i.bpg = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 3
  store i8 %i.bpf, ptr %i.bpg, align 1, !tbaa !89
  %i.bph = load i8, ptr %i.bon, align 1, !tbaa !89
  %i.bpi = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 4
  store i8 %i.bph, ptr %i.bpi, align 1, !tbaa !89
  %i.bpj = load i8, ptr %i.bor, align 1, !tbaa !89
  %i.bpk = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 5
  store i8 %i.bpj, ptr %i.bpk, align 1, !tbaa !89
  %i.bpl = load i8, ptr %i.bov, align 1, !tbaa !89
  %i.bpm = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 6
  store i8 %i.bpl, ptr %i.bpm, align 1, !tbaa !89
  %i.bpn = load i8, ptr %i.boz, align 1, !tbaa !89
  %i.bpo = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 7
  store i8 %i.bpn, ptr %i.bpo, align 1, !tbaa !89
  %i.bpp = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 8 ; 2 uses
  %i.bpq = add nuw nsw i32 %.01246309.i.i, 4      ; 3 uses
  %i.bpr = or disjoint i32 %i.bpq, 3
  %i.bps = icmp slt i32 %i.bpr, %5
  br i1 %i.bps, label %.lr.ph311.i.i, label %.preheader201.i.i, !llvm.loop !69

.preheader199.i.i:                                ; preds = %.lr.ph316.i.i, %.preheader201.i.i
  %.11247.lcssa.i.i = phi i32 [ %.01246.lcssa.i.i, %.preheader201.i.i ], [ %i.brh, %.lr.ph316.i.i ] ; 2 uses
  %.34.lcssa.i.i = phi ptr [ %.33.lcssa.i.i, %.preheader201.i.i ], [ %i.brg, %.lr.ph316.i.i ] ; 2 uses
  %i.bpt = icmp slt i32 %.11247.lcssa.i.i, %5
  br i1 %i.bpt, label %.lr.ph321.i.i, label %.loopexit192.i.i

.lr.ph321.i.i:                                    ; preds = %.preheader199.i.i
  %i.bpu = extractelement <2 x i32> %i.bgx, i64 0
  %i.bpv = extractelement <2 x i32> %i.bgx, i64 1
  %i.bpw = sext i32 %i.bpu to i64
  %i.bpx = sext i32 %i.bpv to i64
  br label %bb.ac

.lr.ph316.i.i:                                    ; preds = %.lr.ph316.i.i.preheader, %.lr.ph316.i.i
  %.34315.i.i = phi ptr [ %i.brg, %.lr.ph316.i.i ], [ %.33.lcssa.i.i, %.lr.ph316.i.i.preheader ] ; 5 uses
  %.11247314.i.i = phi i32 [ %i.brh, %.lr.ph316.i.i ], [ %.01246.lcssa.i.i, %.lr.ph316.i.i.preheader ] ; 2 uses
  %i.bpy = add nsw i32 %.11247314.i.i, %4         ; 2 uses
  %i.bpz = add nsw i32 %i.bpy, 1
  %i.bqa = insertelement <2 x i32> poison, i32 %i.bpy, i64 0
  %i.bqb = insertelement <2 x i32> %i.bqa, i32 %i.bpz, i64 1
  %.frozen636 = freeze <2 x i32> %i.bqb           ; 2 uses
  %i.bqc = sdiv <2 x i32> %.frozen636, %i.asy     ; 2 uses
  %i.bqd = mul <2 x i32> %i.bqc, %i.asy
  %.decomposed637 = sub <2 x i32> %.frozen636, %i.bqd ; 2 uses
  %i.bqe = sdiv <2 x i32> %.decomposed637, %i.ata ; 2 uses
  %i.bqf = mul <2 x i32> %i.bqe, %i.ata
  %.decomposed638 = sub <2 x i32> %.decomposed637, %i.bqf
  %99 = load ptr, ptr %0, align 8, !tbaa !86      ; 4 uses
  %i.bqg = mul <2 x i32> %i.bqe, %i.atc
  %i.bqh = mul nsw <2 x i32> %.decomposed638, %i.ate
  %i.bqi = mul <2 x i32> %i.bqc, %i.atg
  %i.bqj = add <2 x i32> %i.bqg, %i.bqi
  %i.bqk = add <2 x i32> %i.bqj, %i.bqh
  %i.bql = shufflevector <2 x i32> %i.bqk, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bqm = add <4 x i32> %i.bql, %i.bmj           ; 4 uses
  %i.bqn = extractelement <4 x i32> %i.bqm, i64 0
  %i.bqo = sext i32 %i.bqn to i64
  %i.bqp = getelementptr inbounds i8, ptr %99, i64 %i.bqo
  %i.bqq = extractelement <4 x i32> %i.bqm, i64 1
  %i.bqr = sext i32 %i.bqq to i64
  %i.bqs = getelementptr inbounds i8, ptr %99, i64 %i.bqr
  %i.bqt = extractelement <4 x i32> %i.bqm, i64 2
  %i.bqu = sext i32 %i.bqt to i64
  %i.bqv = getelementptr inbounds i8, ptr %99, i64 %i.bqu
  %i.bqw = extractelement <4 x i32> %i.bqm, i64 3
  %i.bqx = sext i32 %i.bqw to i64
  %i.bqy = getelementptr inbounds i8, ptr %99, i64 %i.bqx
  %i.bqz = load i8, ptr %i.bqp, align 1, !tbaa !89
  store i8 %i.bqz, ptr %.34315.i.i, align 1, !tbaa !89
  %i.bra = load i8, ptr %i.bqv, align 1, !tbaa !89
  %i.brb = getelementptr inbounds nuw i8, ptr %.34315.i.i, i64 1
  store i8 %i.bra, ptr %i.brb, align 1, !tbaa !89
  %i.brc = load i8, ptr %i.bqs, align 1, !tbaa !89
  %i.brd = getelementptr inbounds nuw i8, ptr %.34315.i.i, i64 2
  store i8 %i.brc, ptr %i.brd, align 1, !tbaa !89
  %i.bre = load i8, ptr %i.bqy, align 1, !tbaa !89
  %i.brf = getelementptr inbounds nuw i8, ptr %.34315.i.i, i64 3
  store i8 %i.bre, ptr %i.brf, align 1, !tbaa !89
  %i.brg = getelementptr inbounds nuw i8, ptr %.34315.i.i, i64 4 ; 2 uses
  %i.brh = add nuw nsw i32 %.11247314.i.i, 2      ; 3 uses
  %i.bri = or disjoint i32 %i.brh, 1
  %i.brj = icmp slt i32 %i.bri, %5
  br i1 %i.brj, label %.lr.ph316.i.i, label %.preheader199.i.i, !llvm.loop !70

bb.ac:                                            ; preds = %bb.ac, %.lr.ph321.i.i
  %.35320.i.i = phi ptr [ %.34.lcssa.i.i, %.lr.ph321.i.i ], [ %i.bse, %bb.ac ] ; 3 uses
  %.21248319.i.i = phi i32 [ %.11247.lcssa.i.i, %.lr.ph321.i.i ], [ %i.bsf, %bb.ac ] ; 2 uses
  %i.brk = add nsw i32 %.21248319.i.i, %4         ; 2 uses
  %i.brl = sdiv i32 %i.brk, %i.ym
  %i.brm = srem i32 %i.brk, %i.ym                 ; 2 uses
  %i.brn = sdiv i32 %i.brm, %6
  %i.bro = srem i32 %i.brm, %6
  %i.brp = sext i32 %i.brl to i64
  %i.brq = mul i64 %i.l, %i.brp
  %i.brr = mul i32 %i.brn, %.scalar456.i.i
  %i.brs = mul nsw i32 %i.bro, %8
  %i.brt = add nsw i32 %i.brs, %i.brr
  %i.bru = sext i32 %i.brt to i64                 ; 2 uses
  %i.brv = load ptr, ptr %0, align 8, !tbaa !86
  %i.brw = getelementptr i8, ptr %i.brv, i64 %i.brq ; 2 uses
  %i.brx = getelementptr i8, ptr %i.brw, i64 %i.bpw
  %i.bry = getelementptr i8, ptr %i.brx, i64 %i.bru
  %i.brz = getelementptr i8, ptr %i.brw, i64 %i.bpx
  %i.bsa = getelementptr i8, ptr %i.brz, i64 %i.bru
  %i.bsb = load i8, ptr %i.bry, align 1, !tbaa !89
  store i8 %i.bsb, ptr %.35320.i.i, align 1, !tbaa !89
  %i.bsc = load i8, ptr %i.bsa, align 1, !tbaa !89
  %i.bsd = getelementptr inbounds nuw i8, ptr %.35320.i.i, i64 1
  store i8 %i.bsc, ptr %i.bsd, align 1, !tbaa !89
  %i.bse = getelementptr inbounds nuw i8, ptr %.35320.i.i, i64 2 ; 2 uses
  %i.bsf = add nuw nsw i32 %.21248319.i.i, 1      ; 2 uses
  %exitcond444.not.i.i = icmp eq i32 %i.bsf, %5
  br i1 %exitcond444.not.i.i, label %.loopexit192.i.i, label %bb.ac, !llvm.loop !71

.loopexit200.i.i:                                 ; preds = %bb.ab
  br i1 %or.cond385.i.i, label %.lr.ph326.i.i, label %.loopexit192.i.i

.lr.ph326.i.i:                                    ; preds = %.loopexit200.i.i
  %i.bsg = extractelement <2 x i32> %i.bgx, i64 0
  %i.bsh = sext i32 %i.bsg to i64
  %i.bsi = extractelement <2 x i32> %i.bgx, i64 1
  %i.bsj = sext i32 %i.bsi to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph326.i.i
  %.37325.i.i = phi ptr [ %.26347.i.i, %.lr.ph326.i.i ], [ %i.btk, %bb.ad ] ; 2 uses
  %.41250324.i.i = phi i32 [ 0, %.lr.ph326.i.i ], [ %i.btl, %bb.ad ] ; 2 uses
  %i.bsk = add nsw i32 %.41250324.i.i, %i.asn     ; 2 uses
  %i.bsl = sdiv i32 %i.bsk, %i.ym
  %i.bsm = srem i32 %i.bsk, %i.ym                 ; 2 uses
  %i.bsn = sdiv i32 %i.bsm, %6
  %i.bso = srem i32 %i.bsm, %6
  %i.bsp = sext i32 %i.bsl to i64
  %i.bsq = mul i64 %i.l, %i.bsp
  %i.bsr = mul i32 %i.bsn, %.scalar456.i.i
  %i.bss = mul nsw i32 %i.bso, %8
  %i.bst = add nsw i32 %i.bss, %i.bsr
  %i.bsu = sext i32 %i.bst to i64
  %i.bsv = add i64 %i.bsq, %i.bsu                 ; 2 uses
  %i.bsw = add i64 %i.bsv, %i.bsh
  %i.bsx = shl i64 %i.bsw, 3
  %i.bsy = add i64 %i.bsv, %i.bsj
  %i.bsz = shl i64 %i.bsy, 3
  %i.bta = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  %i.btb = getelementptr inbounds nuw i8, ptr %i.bta, i64 %i.bsx
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bta, i64 %i.bsz
  %i.btd = load i64, ptr %i.btb, align 1, !tbaa !89
  %i.bte = insertelement <2 x i64> poison, i64 %i.btd, i64 0
  %i.btf = load i64, ptr %i.btc, align 1, !tbaa !89
  %i.btg = insertelement <2 x i64> poison, i64 %i.btf, i64 0
  %i.bth = bitcast <2 x i64> %i.bte to <4 x i32>
  %i.bti = bitcast <2 x i64> %i.btg to <4 x i32>
  %i.btj = shufflevector <4 x i32> %i.bth, <4 x i32> %i.bti, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x i32> %i.btj, ptr %.37325.i.i, align 1, !tbaa !89
  %i.btk = getelementptr inbounds nuw i8, ptr %.37325.i.i, i64 16 ; 2 uses
  %i.btl = add nuw nsw i32 %.41250324.i.i, 1      ; 2 uses
  %exitcond445.not.i.i = icmp eq i32 %i.btl, %i.asm
  br i1 %exitcond445.not.i.i, label %.loopexit192.i.i, label %bb.ad, !llvm.loop !72

.loopexit192.i.i:                                 ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z, %.loopexit200.i.i, %.preheader199.i.i, %.loopexit194.i.i, %.preheader193.i.i
  %.39.i.i = phi ptr [ %.26347.i.i, %.loopexit200.i.i ], [ %.26347.i.i, %.loopexit194.i.i ], [ %.28.lcssa.i.i, %.preheader193.i.i ], [ %i.bmd, %bb.aa ], [ %i.blh, %bb.z ], [ %.34.lcssa.i.i, %.preheader199.i.i ], [ %i.bse, %bb.ac ], [ %i.btk, %bb.ad ] ; 2 uses
  %i.btm = add nuw nsw i32 %.21224346.i.i, 2      ; 3 uses
  %i.btn = or disjoint i32 %i.btm, 1
  %i.bto = icmp slt i32 %i.btn, %3
  br i1 %i.bto, label %bb.v, label %.preheader190.i.i, !llvm.loop !73

bb.ae:                                            ; preds = %.loopexit.i.i, %.lr.ph371.i.i
  %.40370.i.i = phi ptr [ %.26.lcssa.i.i, %.lr.ph371.i.i ], [ %.46.i.i, %.loopexit.i.i ] ; 4 uses
  %.31225369.i.i = phi i32 [ %.21224.lcssa.i.i, %.lr.ph371.i.i ], [ %i.byz, %.loopexit.i.i ] ; 2 uses
  %i.btp = add nsw i32 %.31225369.i.i, %2         ; 2 uses
  %i.btq = sdiv i32 %i.btp, %i.yl
  %i.btr = srem i32 %i.btp, %i.yl
  %i.bts = mul nsw i32 %i.btr, %10
  %i.btt = mul i32 %i.bfp, %i.btq
  %i.btu = add nsw i32 %i.bts, %i.btt             ; 7 uses
  br i1 %i.bfq, label %.preheader189.i.i, label %.loopexit187.i.i

.preheader189.i.i:                                ; preds = %bb.ae
  br i1 %i.bfr, label %.lr.ph353.i.i, label %.preheader188.i.i

.preheader188.i.i:                                ; preds = %.lr.ph353.i.i, %.preheader189.i.i
  %.01251.lcssa.i.i = phi i32 [ 0, %.preheader189.i.i ], [ %i.bwk, %.lr.ph353.i.i ] ; 3 uses
  %.41.lcssa.i.i = phi ptr [ %.40370.i.i, %.preheader189.i.i ], [ %i.bwj, %.lr.ph353.i.i ] ; 2 uses
  %i.btv = or disjoint i32 %.01251.lcssa.i.i, 1
  %i.btw = icmp slt i32 %i.btv, %5
  br i1 %i.btw, label %.lr.ph358.i.i, label %.preheader186.i.i

.lr.ph358.i.i:                                    ; preds = %.preheader188.i.i
  %i.btx = sext i32 %i.btu to i64                 ; 2 uses
  br label %bb.af

.lr.ph353.i.i:                                    ; preds = %.preheader189.i.i, %.lr.ph353.i.i
  %.41352.i.i = phi ptr [ %i.bwj, %.lr.ph353.i.i ], [ %.40370.i.i, %.preheader189.i.i ] ; 5 uses
  %.01251351.i.i = phi i32 [ %i.bwk, %.lr.ph353.i.i ], [ 0, %.preheader189.i.i ] ; 2 uses
  %i.bty = add nsw i32 %.01251351.i.i, %4
  %i.btz = insertelement <4 x i32> poison, i32 %i.bty, i64 0
  %i.bua = shufflevector <4 x i32> %i.btz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bub = add <4 x i32> %i.bua, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.buc = bitcast <4 x i32> %i.bub to <2 x i64>
  %i.bud = bitcast <4 x i32> %i.bub to <2 x i64>
  %i.bue = and <2 x i64> %i.bud, splat (i64 4294967295)
  %i.buf = mul nuw <2 x i64> %i.bue, %i.bft
  %i.bug = lshr <2 x i64> %i.buf, splat (i64 32)
  %i.buh = lshr <2 x i64> %i.buc, splat (i64 32)
  %i.bui = mul nuw <2 x i64> %i.buh, %i.bft
  %i.buj = bitcast <2 x i64> %i.bug to <8 x i16>
  %i.buk = bitcast <2 x i64> %i.bui to <8 x i16>
  %i.bul = shufflevector <8 x i16> %i.buj, <8 x i16> %i.buk, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bum = bitcast <8 x i16> %i.bul to <4 x i32>  ; 2 uses
  %i.bun = sub <4 x i32> %i.bub, %i.bum
  %i.buo = lshr <4 x i32> %i.bun, %i.bfu
  %i.bup = add <4 x i32> %i.buo, %i.bum
  %i.buq = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bup, <4 x i32> %i.zz) ; 2 uses
  %i.bur = mul <4 x i32> %i.buq, %i.bfw
  %i.bus = sub <4 x i32> %i.bub, %i.bur           ; 4 uses
  %i.but = bitcast <4 x i32> %i.bus to <2 x i64>
  %i.buu = bitcast <4 x i32> %i.bus to <2 x i64>
  %i.buv = and <2 x i64> %i.buu, splat (i64 4294967295)
  %i.buw = mul nuw <2 x i64> %i.buv, %i.bfy
  %i.bux = lshr <2 x i64> %i.buw, splat (i64 32)
  %i.buy = lshr <2 x i64> %i.but, splat (i64 32)
  %i.buz = mul nuw <2 x i64> %i.buy, %i.bfy
  %i.bva = bitcast <2 x i64> %i.bux to <8 x i16>
  %i.bvb = bitcast <2 x i64> %i.buz to <8 x i16>
  %i.bvc = shufflevector <8 x i16> %i.bva, <8 x i16> %i.bvb, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bvd = bitcast <8 x i16> %i.bvc to <4 x i32>  ; 2 uses
  %i.bve = sub <4 x i32> %i.bus, %i.bvd
  %i.bvf = lshr <4 x i32> %i.bve, %i.bfz
  %i.bvg = add <4 x i32> %i.bvf, %i.bvd
  %i.bvh = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bvg, <4 x i32> %i.aar) ; 2 uses
  %i.bvi = mul <4 x i32> %i.bvh, %i.bgb
  %i.bvj = sub <4 x i32> %i.bus, %i.bvi
  %i.bvk = mul <4 x i32> %i.buq, %i.bge
  %i.bvl = mul <4 x i32> %i.bvj, %i.bgg
  %i.bvm = mul <4 x i32> %i.bvh, %i.bgi
  %i.bvn = add <4 x i32> %i.bvm, %i.bvk
  %i.bvo = add <4 x i32> %i.bvn, %i.bvl           ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x i32> %i.bvo, i64 0
  %i.bvp = add nsw i32 %.sroa.0.0.vec.extract.i.i, %i.btu
  %.sroa.0.4.vec.extract.i.i = extractelement <4 x i32> %i.bvo, i64 1
  %i.bvq = add nsw i32 %.sroa.0.4.vec.extract.i.i, %i.btu
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x i32> %i.bvo, i64 2
  %i.bvr = add nsw i32 %.sroa.0.8.vec.extract.i.i, %i.btu
  %.sroa.0.12.vec.extract.i.i = extractelement <4 x i32> %i.bvo, i64 3
  %i.bvs = add nsw i32 %.sroa.0.12.vec.extract.i.i, %i.btu
  %i.bvt = load ptr, ptr %0, align 8, !tbaa !86   ; 4 uses
  %i.bvu = sext i32 %i.bvp to i64
  %i.bvv = getelementptr inbounds i8, ptr %i.bvt, i64 %i.bvu
  %i.bvw = sext i32 %i.bvq to i64
  %i.bvx = getelementptr inbounds i8, ptr %i.bvt, i64 %i.bvw
  %i.bvy = sext i32 %i.bvr to i64
  %i.bvz = getelementptr inbounds i8, ptr %i.bvt, i64 %i.bvy
  %i.bwa = sext i32 %i.bvs to i64
  %i.bwb = getelementptr inbounds i8, ptr %i.bvt, i64 %i.bwa
  %i.bwc = load i8, ptr %i.bvv, align 1, !tbaa !89
  store i8 %i.bwc, ptr %.41352.i.i, align 1, !tbaa !89
  %i.bwd = load i8, ptr %i.bvx, align 1, !tbaa !89
  %i.bwe = getelementptr inbounds nuw i8, ptr %.41352.i.i, i64 1
  store i8 %i.bwd, ptr %i.bwe, align 1, !tbaa !89
  %i.bwf = load i8, ptr %i.bvz, align 1, !tbaa !89
  %i.bwg = getelementptr inbounds nuw i8, ptr %.41352.i.i, i64 2
  store i8 %i.bwf, ptr %i.bwg, align 1, !tbaa !89
  %i.bwh = load i8, ptr %i.bwb, align 1, !tbaa !89
  %i.bwi = getelementptr inbounds nuw i8, ptr %.41352.i.i, i64 3
  store i8 %i.bwh, ptr %i.bwi, align 1, !tbaa !89
  %i.bwj = getelementptr inbounds nuw i8, ptr %.41352.i.i, i64 4 ; 2 uses
  %i.bwk = add nuw nsw i32 %.01251351.i.i, 4      ; 3 uses
  %i.bwl = or disjoint i32 %i.bwk, 3
  %i.bwm = icmp slt i32 %i.bwl, %5
  br i1 %i.bwm, label %.lr.ph353.i.i, label %.preheader188.i.i, !llvm.loop !74

.preheader186.i.i:                                ; preds = %bb.af, %.preheader188.i.i
  %.11252.lcssa.i.i = phi i32 [ %.01251.lcssa.i.i, %.preheader188.i.i ], [ %i.bxk, %bb.af ] ; 2 uses
  %.42.lcssa.i.i = phi ptr [ %.41.lcssa.i.i, %.preheader188.i.i ], [ %i.bxj, %bb.af ] ; 2 uses
  %i.bwn = icmp slt i32 %.11252.lcssa.i.i, %5
  br i1 %i.bwn, label %.lr.ph363.i.i, label %.loopexit.i.i

.lr.ph363.i.i:                                    ; preds = %.preheader186.i.i
  %i.bwo = sext i32 %i.btu to i64
  br label %bb.ag

bb.af:                                            ; preds = %bb.af, %.lr.ph358.i.i
  %.42357.i.i = phi ptr [ %.41.lcssa.i.i, %.lr.ph358.i.i ], [ %i.bxj, %bb.af ] ; 3 uses
  %.11252356.i.i = phi i32 [ %.01251.lcssa.i.i, %.lr.ph358.i.i ], [ %i.bxk, %bb.af ] ; 2 uses
  %i.bwp = add nsw i32 %.11252356.i.i, %4         ; 2 uses
  %i.bwq = add nsw i32 %i.bwp, 1
  %100 = insertelement <2 x i32> poison, i32 %i.bwp, i64 0
  %101 = insertelement <2 x i32> %100, i32 %i.bwq, i64 1
  %.frozen634 = freeze <2 x i32> %101             ; 2 uses
  %102 = sdiv <2 x i32> %.frozen634, %81          ; 2 uses
  %103 = mul <2 x i32> %102, %81
  %.decomposed635 = sub <2 x i32> %.frozen634, %103 ; 3 uses
  %104 = extractelement <2 x i32> %.decomposed635, i64 0
  %105 = sdiv i32 %104, %6
  %106 = extractelement <2 x i32> %.decomposed635, i64 1
  %107 = sdiv i32 %106, %6
  %108 = srem <2 x i32> %.decomposed635, %i.bgo   ; 2 uses
  %109 = mul i32 %105, %.scalar458.i.i
  %110 = extractelement <2 x i32> %108, i64 0
  %111 = mul nsw i32 %110, %8
  %112 = add nsw i32 %111, %109
  %113 = sext i32 %112 to i64
  %i.bwr = sext <2 x i32> %102 to <2 x i64>
  %i.bws = mul <2 x i64> %83, %i.bwr              ; 2 uses
  %i.bwt = mul i32 %107, %.scalar458.i.i
  %114 = extractelement <2 x i32> %108, i64 1
  %i.bwu = mul nsw i32 %114, %8
  %i.bwv = add nsw i32 %i.bwu, %i.bwt
  %i.bww = sext i32 %i.bwv to i64
  %i.bwx = load ptr, ptr %0, align 8, !tbaa !86   ; 2 uses
  %i.bwy = extractelement <2 x i64> %i.bws, i64 0
  %i.bwz = getelementptr i8, ptr %i.bwx, i64 %i.bwy
  %i.bxa = getelementptr i8, ptr %i.bwz, i64 %i.btx
  %i.bxb = getelementptr i8, ptr %i.bxa, i64 %113
  %i.bxc = extractelement <2 x i64> %i.bws, i64 1
  %i.bxd = getelementptr i8, ptr %i.bwx, i64 %i.bxc
  %i.bxe = getelementptr i8, ptr %i.bxd, i64 %i.btx
  %i.bxf = getelementptr i8, ptr %i.bxe, i64 %i.bww
  %i.bxg = load i8, ptr %i.bxb, align 1, !tbaa !89
  store i8 %i.bxg, ptr %.42357.i.i, align 1, !tbaa !89
  %i.bxh = load i8, ptr %i.bxf, align 1, !tbaa !89
  %i.bxi = getelementptr inbounds nuw i8, ptr %.42357.i.i, i64 1
  store i8 %i.bxh, ptr %i.bxi, align 1, !tbaa !89
  %i.bxj = getelementptr inbounds nuw i8, ptr %.42357.i.i, i64 2 ; 2 uses
  %i.bxk = add nuw nsw i32 %.11252356.i.i, 2      ; 3 uses
  %i.bxl = or disjoint i32 %i.bxk, 1
  %i.bxm = icmp slt i32 %i.bxl, %5
  br i1 %i.bxm, label %bb.af, label %.preheader186.i.i, !llvm.loop !75

bb.ag:                                            ; preds = %bb.ag, %.lr.ph363.i.i
  %.43362.i.i = phi ptr [ %.42.lcssa.i.i, %.lr.ph363.i.i ], [ %i.byd, %bb.ag ] ; 2 uses
  %.21253361.i.i = phi i32 [ %.11252.lcssa.i.i, %.lr.ph363.i.i ], [ %i.bye, %bb.ag ] ; 2 uses
  %i.bxn = add nsw i32 %.21253361.i.i, %4         ; 2 uses
  %i.bxo = sdiv i32 %i.bxn, %i.ym
  %i.bxp = srem i32 %i.bxn, %i.ym                 ; 2 uses
  %i.bxq = sdiv i32 %i.bxp, %6
  %i.bxr = srem i32 %i.bxp, %6
  %i.bxs = sext i32 %i.bxo to i64
  %i.bxt = mul i64 %i.l, %i.bxs
  %i.bxu = mul i32 %i.bxq, %.scalar458.i.i
  %i.bxv = mul nsw i32 %i.bxr, %8
  %i.bxw = add nsw i32 %i.bxv, %i.bxu
  %i.bxx = sext i32 %i.bxw to i64
  %i.bxy = load ptr, ptr %0, align 8, !tbaa !86
  %i.bxz = getelementptr i8, ptr %i.bxy, i64 %i.bxt
  %i.bya = getelementptr i8, ptr %i.bxz, i64 %i.bwo
  %i.byb = getelementptr i8, ptr %i.bya, i64 %i.bxx
  %i.byc = load i8, ptr %i.byb, align 1, !tbaa !89
  store i8 %i.byc, ptr %.43362.i.i, align 1, !tbaa !89
  %i.byd = getelementptr inbounds nuw i8, ptr %.43362.i.i, i64 1 ; 2 uses
  %i.bye = add nuw nsw i32 %.21253361.i.i, 1      ; 2 uses
  %exitcond448.not.i.i = icmp eq i32 %i.bye, %5
  br i1 %exitcond448.not.i.i, label %.loopexit.i.i, label %bb.ag, !llvm.loop !76

.loopexit187.i.i:                                 ; preds = %bb.ae
  br i1 %brmerge388.i.i, label %.loopexit.i.i, label %.lr.ph367.i.i

.lr.ph367.i.i:                                    ; preds = %.loopexit187.i.i
  %i.byf = sext i32 %i.btu to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.lr.ph367.i.i
  %.45366.i.i = phi ptr [ %.40370.i.i, %.lr.ph367.i.i ], [ %i.byx, %bb.ah ] ; 2 uses
  %.01221365.i.i = phi i32 [ 0, %.lr.ph367.i.i ], [ %i.byy, %bb.ah ] ; 2 uses
  %i.byg = add nsw i32 %.01221365.i.i, %i.bgm     ; 2 uses
  %i.byh = sdiv i32 %i.byg, %i.ym
  %i.byi = srem i32 %i.byg, %i.ym                 ; 2 uses
  %i.byj = sdiv i32 %i.byi, %6
  %i.byk = srem i32 %i.byi, %6
  %i.byl = sext i32 %i.byh to i64
  %i.bym = mul i64 %i.l, %i.byl
  %i.byn = add i64 %i.bym, %i.byf
  %i.byo = mul i32 %i.byj, %.scalar458.i.i
  %i.byp = mul nsw i32 %i.byk, %8
  %i.byq = add nsw i32 %i.byp, %i.byo
  %i.byr = sext i32 %i.byq to i64
  %i.bys = add i64 %i.byn, %i.byr
  %i.byt = shl i64 %i.bys, 3
  %i.byu = load ptr, ptr %0, align 8, !tbaa !86
  %i.byv = getelementptr inbounds nuw i8, ptr %i.byu, i64 %i.byt
  %i.byw = load i64, ptr %i.byv, align 1, !tbaa !89
  store i64 %i.byw, ptr %.45366.i.i, align 1, !tbaa !89
  %i.byx = getelementptr inbounds nuw i8, ptr %.45366.i.i, i64 8 ; 2 uses
  %i.byy = add nuw nsw i32 %.01221365.i.i, 1      ; 2 uses
  %exitcond449.not.i.i = icmp eq i32 %i.byy, %i.bgk
  br i1 %exitcond449.not.i.i, label %.loopexit.i.i, label %bb.ah, !llvm.loop !77

.loopexit.i.i:                                    ; preds = %bb.ah, %bb.ag, %.loopexit187.i.i, %.preheader186.i.i
  %.46.i.i = phi ptr [ %.40370.i.i, %.loopexit187.i.i ], [ %i.byd, %bb.ag ], [ %.42.lcssa.i.i, %.preheader186.i.i ], [ %i.byx, %bb.ah ]
  %i.byz = add nuw nsw i32 %.31225369.i.i, 1      ; 2 uses
  %exitcond450.not.i.i = icmp eq i32 %i.byz, %3
  br i1 %exitcond450.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %bb.ae, !llvm.loop !78

_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit: ; preds = %.loopexit.i.i, %..loopexit118_crit_edge.i.i, %.loopexit.us.i.i, %.preheader119.i.i, %.lr.ph238.split.i.i, %.preheader190.i.i
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64>, ptr, <4 x i32>, <4 x i64>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avxvnni,+avxvnniint8,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !"_ZNK4ncnn3Mat7channelEi"}
!10 = distinct !{!10, !9, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!11 = distinct !{!11, !90}
!12 = distinct !{!12, !90}
!13 = distinct !{!13, !"_ZNK4ncnn3Mat7channelEi"}
!14 = distinct !{!14, !13, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!15 = distinct !{!15, !90}
!16 = distinct !{!16, !90}
!17 = distinct !{!17, !92}
!18 = distinct !{!18, !90}
!19 = distinct !{!19, !"_ZNK4ncnn3Mat7channelEi"}
!20 = distinct !{!20, !19, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!21 = distinct !{!21, !90}
!22 = distinct !{!22, !90}
!23 = distinct !{!23, !"_ZNK4ncnn3Mat7channelEi"}
!24 = distinct !{!24, !23, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!25 = distinct !{!25, !90}
!26 = distinct !{!26, !90}
!27 = distinct !{!27, !90}
!28 = distinct !{!28, !"_ZNK4ncnn3Mat7channelEi"}
!29 = distinct !{!29, !28, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!30 = distinct !{!30, !90}
!31 = distinct !{!31, !92}
!32 = distinct !{!32, !90}
!33 = distinct !{!33, !"_ZNK4ncnn3Mat7channelEi"}
!34 = distinct !{!34, !33, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!35 = distinct !{!35, !90}
!36 = distinct !{!36, !90}
!37 = distinct !{!37, !92}
!38 = distinct !{!38, !90}
!39 = distinct !{!39, !90}
!40 = distinct !{!40, !90}
!41 = distinct !{!41, !92}
!42 = distinct !{!42, !90}
!43 = distinct !{!43, !"_ZNK4ncnn3Mat7channelEi"}
!44 = distinct !{!44, !43, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!45 = distinct !{!45, !90}
!46 = distinct !{!46, !92}
!47 = distinct !{!47, !90}
!48 = distinct !{!48, !90}
!49 = distinct !{!49, !90}
!50 = distinct !{!50, !90}
!51 = distinct !{!51, !90}
!52 = distinct !{!52, !90}
!53 = distinct !{!53, !90}
!54 = distinct !{!54, !90}
!55 = distinct !{!55, !90}
!56 = distinct !{!56, !90}
!57 = distinct !{!57, !90}
!58 = distinct !{!58, !90}
!59 = distinct !{!59, !90}
!60 = distinct !{!60, !90}
!61 = distinct !{!61, !90}
!62 = distinct !{!62, !90}
!63 = distinct !{!63, !90}
!64 = distinct !{!64, !90}
!65 = distinct !{!65, !90}
!66 = distinct !{!66, !90}
!67 = distinct !{!67, !90}
!68 = distinct !{!68, !90}
!69 = distinct !{!69, !90}
!70 = distinct !{!70, !90}
!71 = distinct !{!71, !90}
!72 = distinct !{!72, !90}
!73 = distinct !{!73, !90}
end_hunk_0
