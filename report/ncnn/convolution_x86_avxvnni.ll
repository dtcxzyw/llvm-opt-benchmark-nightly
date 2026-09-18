Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avxvnni?download=true
inline.NumInlined: 76
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4ncnn42convolution_im2col_input_tile_int8_avxvnniERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.vj = getelementptr inbounds nuw i8, ptr %.22219.i.i.us, i64 8
  %i.vk = getelementptr inbounds nuw i8, ptr %.0366220.i.i.us, i64 %i.ui ; 2 uses
  %i.vl = load i64, ptr %i.vk, align 1, !tbaa !30
  %i.vm = insertelement <2 x i64> poison, i64 %i.vl, i64 0
  %i.vn = bitcast <2 x i64> %i.vm to <16 x i8>
  %i.vo = add <16 x i8> %i.vn, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.vp = bitcast <16 x i8> %i.vo to <2 x i64>
  %i.vq = extractelement <2 x i64> %i.vp, i64 0
  store i64 %i.vq, ptr %i.vj, align 1, !tbaa !30
  %i.vr = getelementptr inbounds nuw i8, ptr %.22219.i.i.us, i64 16
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vk, i64 %i.ui ; 2 uses
  %i.vt = load i64, ptr %i.vs, align 1, !tbaa !30
  %i.vu = insertelement <2 x i64> poison, i64 %i.vt, i64 0
  %i.vv = bitcast <2 x i64> %i.vu to <16 x i8>
  %i.vw = add <16 x i8> %i.vv, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.vx = bitcast <16 x i8> %i.vw to <2 x i64>
  %i.vy = extractelement <2 x i64> %i.vx, i64 0
  store i64 %i.vy, ptr %i.vr, align 1, !tbaa !30
  %i.vz = getelementptr inbounds nuw i8, ptr %.22219.i.i.us, i64 24
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vs, i64 %i.ui ; 2 uses
  %i.wb = load i64, ptr %i.wa, align 1, !tbaa !30
  %i.wc = insertelement <2 x i64> poison, i64 %i.wb, i64 0
  %i.wd = bitcast <2 x i64> %i.wc to <16 x i8>
  %i.we = add <16 x i8> %i.wd, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.wf = bitcast <16 x i8> %i.we to <2 x i64>
  %i.wg = extractelement <2 x i64> %i.wf, i64 0
  store i64 %i.wg, ptr %i.vz, align 1, !tbaa !30
  %i.wh = getelementptr inbounds nuw i8, ptr %.22219.i.i.us, i64 32 ; 3 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.ui ; 2 uses
  %niter548.next.3 = add i32 %niter548, 4         ; 2 uses
  %niter548.ncmp.3 = icmp eq i32 %niter548.next.3, %unroll_iter547
  br i1 %niter548.ncmp.3, label %.loopexit.i.i.loopexit.us.unr-lcssa, label %.lr.ph222.i.i.us, !llvm.loop !341

.loopexit.i.i.loopexit.us.unr-lcssa:              ; preds = %.lr.ph222.i.i.us
  br i1 %lcmp.mod544.not, label %.loopexit.i.i.loopexit.us, label %.lr.ph222.i.i.us.epil.preheader

.lr.ph222.i.i.us.epil.preheader:                  ; preds = %.loopexit.i.i.loopexit.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit397.i.i.us
  %.0366220.i.i.us.epil.init = phi ptr [ %i.vc, %_ZN4ncnn3MatD2Ev.exit397.i.i.us ], [ %i.wi, %.loopexit.i.i.loopexit.us.unr-lcssa ]
  %.22219.i.i.us.epil.init = phi ptr [ %.21237.i.i.us, %_ZN4ncnn3MatD2Ev.exit397.i.i.us ], [ %i.wh, %.loopexit.i.i.loopexit.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod546)
  br label %.lr.ph222.i.i.us.epil

.lr.ph222.i.i.us.epil:                            ; preds = %.lr.ph222.i.i.us.epil, %.lr.ph222.i.i.us.epil.preheader
  %.0366220.i.i.us.epil = phi ptr [ %i.wq, %.lr.ph222.i.i.us.epil ], [ %.0366220.i.i.us.epil.init, %.lr.ph222.i.i.us.epil.preheader ] ; 2 uses
  %.22219.i.i.us.epil = phi ptr [ %i.wp, %.lr.ph222.i.i.us.epil ], [ %.22219.i.i.us.epil.init, %.lr.ph222.i.i.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph222.i.i.us.epil ], [ 0, %.lr.ph222.i.i.us.epil.preheader ]
  %i.wj = load i64, ptr %.0366220.i.i.us.epil, align 1, !tbaa !30
  %i.wk = insertelement <2 x i64> poison, i64 %i.wj, i64 0
  %i.wl = bitcast <2 x i64> %i.wk to <16 x i8>
  %i.wm = add <16 x i8> %i.wl, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.wn = bitcast <16 x i8> %i.wm to <2 x i64>
  %i.wo = extractelement <2 x i64> %i.wn, i64 0
  store i64 %i.wo, ptr %.22219.i.i.us.epil, align 1, !tbaa !30
  %i.wp = getelementptr inbounds nuw i8, ptr %.22219.i.i.us.epil, i64 8 ; 2 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %.0366220.i.i.us.epil, i64 %i.ui
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter543
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i.loopexit.us, label %.lr.ph222.i.i.us.epil, !llvm.loop !342

.loopexit.i.i.loopexit.us:                        ; preds = %.lr.ph222.i.i.us.epil, %.loopexit.i.i.loopexit.us.unr-lcssa
  %.lcssa = phi ptr [ %i.wh, %.loopexit.i.i.loopexit.us.unr-lcssa ], [ %i.wp, %.lr.ph222.i.i.us.epil ]
  %indvars.iv.next285.i.i.us = add nuw nsw i64 %indvars.iv284.i.i.us, 1 ; 2 uses
  %exitcond287.not.i.i.us = icmp eq i64 %indvars.iv.next285.i.i.us, %wide.trip.count.i.i
  br i1 %exitcond287.not.i.i.us, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit397.i.i.us, !llvm.loop !343

_ZN4ncnn3MatD2Ev.exit.i.i.us:                     ; preds = %.lr.ph238.i.i, %.loopexit.i.i.us111
  %indvars.iv284.i.i.us109 = phi i64 [ %indvars.iv.next285.i.i.us113, %.loopexit.i.i.us111 ], [ %i.up, %.lr.ph238.i.i ] ; 2 uses
  %.21237.i.i.us110 = phi ptr [ %.26.i.i.us112, %.loopexit.i.i.us111 ], [ %.14.lcssa.i.i, %.lr.ph238.i.i ] ; 2 uses
  %i.wr = load ptr, ptr %0, align 8, !tbaa !28, !noalias !388
  %i.ws = load i64, ptr %i.l, align 8, !tbaa !19, !noalias !388
  %i.wt = mul i64 %i.ws, %i.uj
  %i.wu = load i64, ptr %i.ug, align 8, !tbaa !29, !noalias !388
  %i.wv = mul i64 %i.wt, %i.wu
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wv
  %i.wx = getelementptr i8, ptr %i.ww, i64 %indvars.iv284.i.i.us109
  %i.wy = getelementptr i8, ptr %i.wx, i64 %i.uq  ; 2 uses
  br i1 %i.uk, label %.lr.ph227.i.i.us, label %.preheader.i.i.us

.lr.ph227.i.i.us:                                 ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i.us, %.lr.ph227.i.i.us
  %.0226.i.i.us = phi i32 [ %i.xp, %.lr.ph227.i.i.us ], [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i.us ]
  %.0363225.i.i.us = phi ptr [ %i.xo, %.lr.ph227.i.i.us ], [ %i.wy, %_ZN4ncnn3MatD2Ev.exit.i.i.us ] ; 5 uses
  %.24224.i.i.us = phi ptr [ %i.xn, %.lr.ph227.i.i.us ], [ %.21237.i.i.us110, %_ZN4ncnn3MatD2Ev.exit.i.i.us ] ; 5 uses
  %i.wz = load i8, ptr %.0363225.i.i.us, align 1, !tbaa !30
  %i.xa = add i8 %i.wz, 127
  store i8 %i.xa, ptr %.24224.i.i.us, align 1, !tbaa !30
  %i.xb = getelementptr inbounds nuw i8, ptr %.0363225.i.i.us, i64 %i.m
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !30
  %i.xd = add i8 %i.xc, 127
  %i.xe = getelementptr inbounds nuw i8, ptr %.24224.i.i.us, i64 1
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !30
  %i.xf = getelementptr inbounds nuw i8, ptr %.0363225.i.i.us, i64 %i.ul
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !30
  %i.xh = add i8 %i.xg, 127
  %i.xi = getelementptr inbounds nuw i8, ptr %.24224.i.i.us, i64 2
  store i8 %i.xh, ptr %i.xi, align 1, !tbaa !30
  %i.xj = getelementptr inbounds nuw i8, ptr %.0363225.i.i.us, i64 %i.um
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !30
  %i.xl = add i8 %i.xk, 127
  %i.xm = getelementptr inbounds nuw i8, ptr %.24224.i.i.us, i64 3
  store i8 %i.xl, ptr %i.xm, align 1, !tbaa !30
  %i.xn = getelementptr inbounds nuw i8, ptr %.24224.i.i.us, i64 4 ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %.0363225.i.i.us, i64 %i.un ; 2 uses
  %i.xp = add nuw nsw i32 %.0226.i.i.us, 4        ; 2 uses
  %i.xq = or disjoint i32 %i.xp, 3
  %i.xr = icmp slt i32 %i.xq, %5
  br i1 %i.xr, label %.lr.ph227.i.i.us, label %.preheader.i.i.us, !llvm.loop !346

.preheader.i.i.us:                                ; preds = %.lr.ph227.i.i.us, %_ZN4ncnn3MatD2Ev.exit.i.i.us
  %.24.lcssa.i.i.us = phi ptr [ %.21237.i.i.us110, %_ZN4ncnn3MatD2Ev.exit.i.i.us ], [ %i.xn, %.lr.ph227.i.i.us ] ; 3 uses
  %.0363.lcssa.i.i.us = phi ptr [ %i.wy, %_ZN4ncnn3MatD2Ev.exit.i.i.us ], [ %i.xo, %.lr.ph227.i.i.us ] ; 2 uses
  %.0.lcssa.i.i.us = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit.i.i.us ], [ %i.uo, %.lr.ph227.i.i.us ] ; 5 uses
  %i.xs = icmp slt i32 %.0.lcssa.i.i.us, %5
  br i1 %i.xs, label %.lr.ph234.i.i.us.preheader, label %.loopexit.i.i.us111

.lr.ph234.i.i.us.preheader:                       ; preds = %.preheader.i.i.us
  %i.xt = sub i32 %5, %.0.lcssa.i.i.us
  %xtraiter540 = and i32 %i.xt, 7                 ; 2 uses
  %lcmp.mod541.not = icmp eq i32 %xtraiter540, 0
  br i1 %lcmp.mod541.not, label %.lr.ph234.i.i.us.prol.loopexit, label %.lr.ph234.i.i.us.prol

.lr.ph234.i.i.us.prol:                            ; preds = %.lr.ph234.i.i.us.preheader, %.lr.ph234.i.i.us.prol
  %.1233.i.i.us.prol = phi i32 [ %i.xx, %.lr.ph234.i.i.us.prol ], [ %.0.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ]
  %.1364232.i.i.us.prol = phi ptr [ %i.xw, %.lr.ph234.i.i.us.prol ], [ %.0363.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ] ; 2 uses
  %.25231.i.i.us.prol = phi ptr [ %i.xv, %.lr.ph234.i.i.us.prol ], [ %.24.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ] ; 2 uses
  %prol.iter542 = phi i32 [ %prol.iter542.next, %.lr.ph234.i.i.us.prol ], [ 0, %.lr.ph234.i.i.us.preheader ]
  %i.xu = load i8, ptr %.1364232.i.i.us.prol, align 1, !tbaa !30
  store i8 %i.xu, ptr %.25231.i.i.us.prol, align 1, !tbaa !30
  %i.xv = getelementptr inbounds nuw i8, ptr %.25231.i.i.us.prol, i64 1 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %.1364232.i.i.us.prol, i64 %i.m ; 2 uses
  %i.xx = add nuw nsw i32 %.1233.i.i.us.prol, 1   ; 2 uses
  %prol.iter542.next = add i32 %prol.iter542, 1   ; 2 uses
  %prol.iter542.cmp.not = icmp eq i32 %prol.iter542.next, %xtraiter540
  br i1 %prol.iter542.cmp.not, label %.lr.ph234.i.i.us.prol.loopexit, label %.lr.ph234.i.i.us.prol, !llvm.loop !347

.lr.ph234.i.i.us.prol.loopexit:                   ; preds = %.lr.ph234.i.i.us.prol, %.lr.ph234.i.i.us.preheader
  %.lcssa443.unr = phi ptr [ poison, %.lr.ph234.i.i.us.preheader ], [ %i.xv, %.lr.ph234.i.i.us.prol ]
  %.1233.i.i.us.unr = phi i32 [ %.0.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ], [ %i.xx, %.lr.ph234.i.i.us.prol ]
  %.1364232.i.i.us.unr = phi ptr [ %.0363.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ], [ %i.xw, %.lr.ph234.i.i.us.prol ]
  %.25231.i.i.us.unr = phi ptr [ %.24.lcssa.i.i.us, %.lr.ph234.i.i.us.preheader ], [ %i.xv, %.lr.ph234.i.i.us.prol ]
  %i.xy = sub i32 %.0.lcssa.i.i.us, %5
  %i.xz = icmp ugt i32 %i.xy, -8
  br i1 %i.xz, label %.loopexit.i.i.us111, label %.lr.ph234.i.i.us

.lr.ph234.i.i.us:                                 ; preds = %.lr.ph234.i.i.us.prol.loopexit, %.lr.ph234.i.i.us
  %.1233.i.i.us = phi i32 [ %i.yy, %.lr.ph234.i.i.us ], [ %.1233.i.i.us.unr, %.lr.ph234.i.i.us.prol.loopexit ]
  %.1364232.i.i.us = phi ptr [ %i.yx, %.lr.ph234.i.i.us ], [ %.1364232.i.i.us.unr, %.lr.ph234.i.i.us.prol.loopexit ] ; 2 uses
  %.25231.i.i.us = phi ptr [ %i.yw, %.lr.ph234.i.i.us ], [ %.25231.i.i.us.unr, %.lr.ph234.i.i.us.prol.loopexit ] ; 9 uses
  %i.ya = load i8, ptr %.1364232.i.i.us, align 1, !tbaa !30
  store i8 %i.ya, ptr %.25231.i.i.us, align 1, !tbaa !30
  %i.yb = getelementptr inbounds nuw i8, ptr %.25231.i.i.us, i64 1
  %i.yc = getelementptr inbounds nuw i8, ptr %.1364232.i.i.us, i64 %i.m ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !30
  store i8 %i.yd, ptr %i.yb, align 1, !tbaa !30
  %i.ye = getelementptr inbounds nuw i8, ptr %.25231.i.i.us, i64 2
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yc, i64 %i.m ; 2 uses
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !30
  store i8 %i.yg, ptr %i.ye, align 1, !tbaa !30
  %i.yh = getelementptr inbounds nuw i8, ptr %.25231.i.i.us, i64 3
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.m ; 2 uses
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !30
  store i8 %i.yj, ptr %i.yh, align 1, !tbaa !30
  %i.yk = getelementptr inbounds nuw i8, ptr %.25231.i.i.us, i64 4
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yi, i64 %i.m ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !30
  store i8 %i.ym, ptr %i.yk, align 1, !tbaa !30
  %i.yn = getelementptr inbounds nuw i8, ptr %.25231.i.i.us, i64 5
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.m ; 2 uses
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !30
  store i8 %i.yp, ptr %i.yn, align 1, !tbaa !30
  %i.yq = getelementptr inbounds nuw i8, ptr %.25231.i.i.us, i64 6
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.m ; 2 uses
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !30
  store i8 %i.ys, ptr %i.yq, align 1, !tbaa !30
  %i.yt = getelementptr inbounds nuw i8, ptr %.25231.i.i.us, i64 7
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.m ; 2 uses
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !30
  store i8 %i.yv, ptr %i.yt, align 1, !tbaa !30
  %i.yw = getelementptr inbounds nuw i8, ptr %.25231.i.i.us, i64 8 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.m
  %i.yy = add nuw nsw i32 %.1233.i.i.us, 8        ; 2 uses
  %exitcond283.not.i.i.us.7 = icmp eq i32 %i.yy, %5
  br i1 %exitcond283.not.i.i.us.7, label %.loopexit.i.i.us111, label %.lr.ph234.i.i.us, !llvm.loop !348

.loopexit.i.i.us111:                              ; preds = %.lr.ph234.i.i.us.prol.loopexit, %.lr.ph234.i.i.us, %.preheader.i.i.us
  %.26.i.i.us112 = phi ptr [ %.24.lcssa.i.i.us, %.preheader.i.i.us ], [ %.lcssa443.unr, %.lr.ph234.i.i.us.prol.loopexit ], [ %i.yw, %.lr.ph234.i.i.us ]
  %indvars.iv.next285.i.i.us113 = add nuw nsw i64 %indvars.iv284.i.i.us109, 1 ; 2 uses
  %exitcond287.not.i.i.us114 = icmp eq i64 %indvars.iv.next285.i.i.us113, %wide.trip.count.i.i
  br i1 %exitcond287.not.i.i.us114, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i.i.us, !llvm.loop !343

bb.e:                                             ; preds = %bb.c
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !16 ; 9 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !17 ; 9 uses
  %i.zd = add nsw i32 %6, -1                      ; 2 uses
  %i.ze = mul nsw i32 %8, %i.zd
  %.neg.i.i = xor i32 %i.ze, -1
  %i.zf = add i32 %i.za, %.neg.i.i
  %i.zg = sdiv i32 %i.zf, %10                     ; 3 uses
  %i.zh = add nsw i32 %i.zg, 1                    ; 7 uses
  %i.zi = mul nsw i32 %7, %6                      ; 53 uses
  %i.zj = icmp eq i32 %i.zg, 0
  br i1 %i.zj, label %_ZN17FastDivider_epu32C2Ej.exit1292.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.zk = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zg, i1 true) ; 3 uses
  %i.zl = sub nuw nsw i32 32, %i.zk
  %i.zm = icmp eq i32 %i.zk, 0
  %i.zn = shl nuw i32 1, %i.zl
  %i.zo = select i1 %i.zm, i32 0, i32 %i.zn
  %i.zp = sub i32 %i.zo, %i.zh
  %i.zq = zext i32 %i.zp to i64
  %i.zr = shl nuw i64 %i.zq, 32
  %i.zs = zext i32 %i.zh to i64
  %i.zt = udiv i64 %i.zr, %i.zs
  %i.zu = trunc i64 %i.zt to i32
  %i.zv = add i32 %i.zu, 1
  %i.zw = xor i32 %i.zk, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1292.i.i

_ZN17FastDivider_epu32C2Ej.exit1292.i.i:          ; preds = %bb.f, %bb.e
  %.012.i1289.i.i = phi i32 [ %i.zw, %bb.f ], [ 0, %bb.e ]
  %.011.i1290.i.i = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]
  %.0.i1291.i.i = phi i32 [ %i.zv, %bb.f ], [ 1, %bb.e ]
  %i.zx = insertelement <8 x i32> poison, i32 %.0.i1291.i.i, i64 0
  %i.zy = shufflevector <8 x i32> %i.zx, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.zz = bitcast <8 x i32> %i.zy to <4 x i64>
  %i.aaa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1290.i.i, i64 0 ; 2 uses
  %i.aab = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1289.i.i, i64 0 ; 2 uses
  %i.aac = icmp eq i32 %i.zi, 1
  br i1 %i.aac, label %_ZN17FastDivider_epu32C2Ej.exit1288.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1292.i.i
  %i.aad = add nsw i32 %i.zi, -1
  %i.aae = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aad, i1 true) ; 3 uses
  %i.aaf = sub nuw nsw i32 32, %i.aae
  %i.aag = icmp eq i32 %i.aae, 0
  %i.aah = shl nuw i32 1, %i.aaf
  %i.aai = select i1 %i.aag, i32 0, i32 %i.aah
  %i.aaj = sub i32 %i.aai, %i.zi
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = shl nuw i64 %i.aak, 32
  %i.aam = zext i32 %i.zi to i64
  %i.aan = udiv i64 %i.aal, %i.aam
  %i.aao = trunc i64 %i.aan to i32
  %i.aap = add i32 %i.aao, 1
  %i.aaq = xor i32 %i.aae, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit1288.i.i

_ZN17FastDivider_epu32C2Ej.exit1288.i.i:          ; preds = %bb.g, %_ZN17FastDivider_epu32C2Ej.exit1292.i.i
  %.012.i1285.i.i = phi i32 [ %i.aaq, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1292.i.i ]
  %.011.i1286.i.i = phi i32 [ 1, %bb.g ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1292.i.i ]
  %.0.i1287.i.i = phi i32 [ %i.aap, %bb.g ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1292.i.i ]
  %i.aar = insertelement <8 x i32> poison, i32 %.0.i1287.i.i, i64 0
  %i.aas = shufflevector <8 x i32> %i.aar, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aat = bitcast <8 x i32> %i.aas to <4 x i64>  ; 4 uses
  %i.aau = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i1286.i.i, i64 0 ; 4 uses
  %i.aav = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i1285.i.i, i64 0 ; 7 uses
  br i1 %i.b, label %_ZN17FastDivider_epu32C2Ej.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN17FastDivider_epu32C2Ej.exit1288.i.i
  %i.aaw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.zd, i1 true) ; 3 uses
  %i.aax = sub nuw nsw i32 32, %i.aaw
  %i.aay = icmp eq i32 %i.aaw, 0
  %i.aaz = shl nuw i32 1, %i.aax
  %i.aba = select i1 %i.aay, i32 0, i32 %i.aaz
  %i.abb = sub i32 %i.aba, %6
  %i.abc = zext i32 %i.abb to i64
  %i.abd = shl nuw i64 %i.abc, 32
  %i.abe = zext i32 %6 to i64
  %i.abf = udiv i64 %i.abd, %i.abe
  %i.abg = trunc i64 %i.abf to i32
  %i.abh = add i32 %i.abg, 1
  %i.abi = xor i32 %i.aaw, 31
  br label %_ZN17FastDivider_epu32C2Ej.exit.i.i

_ZN17FastDivider_epu32C2Ej.exit.i.i:              ; preds = %bb.h, %_ZN17FastDivider_epu32C2Ej.exit1288.i.i
  %.012.i.i.i = phi i32 [ %i.abi, %bb.h ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1288.i.i ]
  %.011.i.i.i = phi i32 [ 1, %bb.h ], [ 0, %_ZN17FastDivider_epu32C2Ej.exit1288.i.i ]
  %.0.i.i.i = phi i32 [ %i.abh, %bb.h ], [ 1, %_ZN17FastDivider_epu32C2Ej.exit1288.i.i ]
  %i.abj = insertelement <8 x i32> poison, i32 %.0.i.i.i, i64 0
  %i.abk = shufflevector <8 x i32> %i.abj, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abl = bitcast <8 x i32> %i.abk to <4 x i64>  ; 4 uses
  %i.abm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.011.i.i.i, i64 0 ; 4 uses
  %i.abn = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.012.i.i.i, i64 0 ; 7 uses
  %i.abo = icmp sgt i32 %3, 7
  br i1 %i.abo, label %.lr.ph265.i.i, label %.preheader216.i.i

.lr.ph265.i.i:                                    ; preds = %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %i.abp = bitcast <8 x i32> %i.zy to <4 x i64>
  %i.abq = and <4 x i64> %i.abp, splat (i64 4294967295) ; 2 uses
  %i.abr = shufflevector <4 x i32> %i.aaa, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.abs = insertelement <8 x i32> poison, i32 %i.zh, i64 0
  %i.abt = shufflevector <8 x i32> %i.abs, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.abu = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.abv = shufflevector <8 x i32> %i.abu, <8 x i32> poison, <8 x i32> zeroinitializer
  %.scalar.i.i = mul i32 %i.za, %11
  %i.abw = insertelement <8 x i32> poison, i32 %.scalar.i.i, i64 0
  %i.abx = shufflevector <8 x i32> %i.abw, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aby = icmp eq i32 %i.zc, 1                   ; 2 uses
  %i.abz = icmp sgt i32 %5, 3                     ; 2 uses
  %i.aca = shufflevector <4 x i64> %i.aat, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.acb = and <2 x i64> %i.aca, splat (i64 4294967295) ; 4 uses
  %i.acc = shufflevector <4 x i32> %i.aau, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acd = insertelement <4 x i32> poison, i32 %i.zi, i64 0
  %i.ace = shufflevector <4 x i32> %i.acd, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acf = shufflevector <4 x i64> %i.abl, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.acg = and <2 x i64> %i.acf, splat (i64 4294967295) ; 4 uses
  %i.ach = shufflevector <4 x i32> %i.abm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aci = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.acj = shufflevector <4 x i32> %i.aci, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ack = trunc i64 %i.m to i32                  ; 4 uses
  %i.acl = insertelement <4 x i32> poison, i32 %i.ack, i64 0
  %i.acm = shufflevector <4 x i32> %i.acl, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acn = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.aco = shufflevector <4 x i32> %i.acn, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar451.i.i = mul i32 %i.za, %9             ; 8 uses
  %i.acp = insertelement <4 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.acq = shufflevector <4 x i32> %i.acp, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.acr = icmp ne i32 %i.zc, 8
  %i.acs = sdiv i32 %5, 8                         ; 2 uses
  %i.act = icmp slt i32 %5, 8
  %i.acu = sdiv i32 %4, 8                         ; 2 uses
  %brmerge375.i.i = or i1 %i.act, %i.acr          ; 2 uses
  %i.acv = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.acw = insertelement <2 x i32> %i.acv, i32 %i.zi, i64 1
  %i.acx = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.acy = insertelement <2 x i32> %i.acx, i32 %i.ack, i64 1
  %i.acz = insertelement <2 x i32> poison, i32 %i.zi, i64 0
  %i.ada = shufflevector <2 x i32> %i.acz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.adb = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.adc = shufflevector <2 x i32> %i.adb, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.add = insertelement <2 x i32> poison, i32 %8, i64 0
  %12 = shufflevector <2 x i32> %i.add, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ade = insertelement <2 x i32> %i.adb, i32 %i.zi, i64 1 ; 2 uses
  %i.adf = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %i.adg = insertelement <2 x i32> %i.adf, i32 %i.ack, i64 1 ; 2 uses
  %i.adh = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.adi = insertelement <2 x i32> %i.adh, i32 %i.zi, i64 1
  %i.adj = insertelement <2 x i32> poison, i32 %.scalar451.i.i, i64 0
  %13 = insertelement <2 x i32> %i.adj, i32 %i.ack, i64 1
  %14 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %15 = shufflevector <2 x i64> %14, <2 x i64> poison, <2 x i32> zeroinitializer
  %16 = insertelement <2 x i32> poison, i32 %i.zi, i64 0
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.i

.preheader216.i.i:                                ; preds = %.loopexit218.i.i, %_ZN17FastDivider_epu32C2Ej.exit.i.i
  %.01251.lcssa.i.i = phi i32 [ 0, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %i.ast, %.loopexit218.i.i ] ; 3 uses
  %.0.lcssa.i45.i = phi ptr [ %.val.i, %_ZN17FastDivider_epu32C2Ej.exit.i.i ], [ %.12.i.i, %.loopexit218.i.i ] ; 2 uses
  %i.adk = or disjoint i32 %.01251.lcssa.i.i, 3
  %i.adl = icmp slt i32 %i.adk, %3
  br i1 %i.adl, label %.lr.ph306.i.i, label %.preheader203.i.i

.lr.ph306.i.i:                                    ; preds = %.preheader216.i.i
  %i.adm = shufflevector <4 x i64> %i.zz, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.adn = and <2 x i64> %i.adm, splat (i64 4294967295) ; 2 uses
  %i.ado = shufflevector <4 x i32> %i.aaa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adp = insertelement <4 x i32> poison, i32 %i.zh, i64 0
  %i.adq = shufflevector <4 x i32> %i.adp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adr = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.ads = shufflevector <4 x i32> %i.adr, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar453.i.i = mul i32 %i.za, %11
  %i.adt = insertelement <4 x i32> poison, i32 %.scalar453.i.i, i64 0
  %i.adu = shufflevector <4 x i32> %i.adt, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.adv = icmp eq i32 %i.zc, 1                   ; 2 uses
  %i.adw = icmp sgt i32 %5, 3                     ; 2 uses
  %i.adx = shufflevector <4 x i64> %i.aat, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ady = and <2 x i64> %i.adx, splat (i64 4294967295) ; 4 uses
  %i.adz = shufflevector <4 x i32> %i.aau, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aea = insertelement <4 x i32> poison, i32 %i.zi, i64 0
  %i.aeb = shufflevector <4 x i32> %i.aea, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aec = shufflevector <4 x i64> %i.abl, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.aed = and <2 x i64> %i.aec, splat (i64 4294967295) ; 4 uses
  %i.aee = shufflevector <4 x i32> %i.abm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aef = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.aeg = shufflevector <4 x i32> %i.aef, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aeh = trunc i64 %i.m to i32                  ; 4 uses
  %i.aei = insertelement <4 x i32> poison, i32 %i.aeh, i64 0
  %i.aej = shufflevector <4 x i32> %i.aei, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aek = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.ael = shufflevector <4 x i32> %i.aek, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar454.i.i = mul i32 %i.za, %9             ; 8 uses
  %i.aem = insertelement <4 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.aen = shufflevector <4 x i32> %i.aem, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.aeo = icmp ne i32 %i.zc, 8
  %i.aep = sdiv i32 %5, 8                         ; 2 uses
  %i.aeq = icmp slt i32 %5, 8
  %i.aer = sdiv i32 %4, 8                         ; 2 uses
  %brmerge381.i.i = or i1 %i.aeq, %i.aeo          ; 2 uses
  %i.aes = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.aet = insertelement <2 x i32> %i.aes, i32 %i.zi, i64 1
  %i.aeu = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.aev = insertelement <2 x i32> %i.aeu, i32 %i.aeh, i64 1
  %i.aew = insertelement <2 x i32> poison, i32 %i.zi, i64 0
  %i.aex = shufflevector <2 x i32> %i.aew, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aey = insertelement <2 x i32> poison, i32 %6, i64 0 ; 2 uses
  %i.aez = shufflevector <2 x i32> %i.aey, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afa = insertelement <2 x i32> poison, i32 %8, i64 0
  %18 = shufflevector <2 x i32> %i.afa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.afb = insertelement <2 x i32> %i.aey, i32 %i.zi, i64 1 ; 2 uses
  %i.afc = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %i.afd = insertelement <2 x i32> %i.afc, i32 %i.aeh, i64 1 ; 2 uses
  %i.afe = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.aff = insertelement <2 x i32> %i.afe, i32 %i.zi, i64 1
  %i.afg = insertelement <2 x i32> poison, i32 %.scalar454.i.i, i64 0
  %19 = insertelement <2 x i32> %i.afg, i32 %i.aeh, i64 1
  %20 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %21 = shufflevector <2 x i64> %20, <2 x i64> poison, <2 x i32> zeroinitializer
  %22 = insertelement <2 x i32> poison, i32 %i.zi, i64 0
  %23 = shufflevector <2 x i32> %22, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.p

bb.i:                                             ; preds = %.loopexit218.i.i, %.lr.ph265.i.i
  %.0264.i.i = phi ptr [ %.val.i, %.lr.ph265.i.i ], [ %.12.i.i, %.loopexit218.i.i ] ; 8 uses
  %.01251263.i.i = phi i32 [ 0, %.lr.ph265.i.i ], [ %i.ast, %.loopexit218.i.i ] ; 2 uses
  %i.afh = add nsw i32 %.01251263.i.i, %2
  %i.afi = insertelement <8 x i32> poison, i32 %i.afh, i64 0
  %i.afj = shufflevector <8 x i32> %i.afi, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.afk = add <8 x i32> %i.afj, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %i.afl = bitcast <8 x i32> %i.afk to <4 x i64>
  %i.afm = bitcast <8 x i32> %i.afk to <4 x i64>
  %i.afn = and <4 x i64> %i.afm, splat (i64 4294967295)
  %i.afo = mul nuw <4 x i64> %i.afn, %i.abq
  %i.afp = lshr <4 x i64> %i.afo, splat (i64 32)
  %i.afq = lshr <4 x i64> %i.afl, splat (i64 32)
  %i.afr = mul nuw <4 x i64> %i.afq, %i.abq
  %i.afs = bitcast <4 x i64> %i.afp to <16 x i16>
  %i.aft = bitcast <4 x i64> %i.afr to <16 x i16>
  %i.afu = shufflevector <16 x i16> %i.afs, <16 x i16> %i.aft, <16 x i32> <i32 0, i32 1, i32 18, i32 19, i32 4, i32 5, i32 22, i32 23, i32 8, i32 9, i32 26, i32 27, i32 12, i32 13, i32 30, i32 31>
  %i.afv = bitcast <16 x i16> %i.afu to <8 x i32> ; 2 uses
  %i.afw = sub <8 x i32> %i.afk, %i.afv
  %i.afx = lshr <8 x i32> %i.afw, %i.abr
  %i.afy = add <8 x i32> %i.afx, %i.afv
  %i.afz = tail call <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32> %i.afy, <4 x i32> %i.aab) ; 2 uses
  %i.aga = mul <8 x i32> %i.afz, %i.abt
  %i.agb = sub <8 x i32> %i.afk, %i.aga
  %i.agc = mul <8 x i32> %i.agb, %i.abv           ; 2 uses
  %i.agd = mul <8 x i32> %i.afz, %i.abx           ; 4 uses
  %i.age = add <8 x i32> %i.agc, %i.agd           ; 8 uses
  %shift439 = shufflevector <8 x i32> %i.agd, <8 x i32> poison, <8 x i32> <i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.agf = icmp eq <8 x i32> %i.agd, %shift439
  %i.agg = extractelement <8 x i1> %i.agf, i64 0
  %or.cond.i.i = and i1 %i.h, %i.agg
  br i1 %or.cond.i.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %foldExtExtBinop = add nsw <8 x i32> %i.agc, %i.agd ; 2 uses
  %i.agh = extractelement <8 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  br i1 %i.aby, label %.preheader222.i.i, label %.loopexit220.i.i

.preheader222.i.i:                                ; preds = %bb.j
  br i1 %i.abz, label %.lr.ph247.i.i, label %.preheader221.i.i

.lr.ph247.i.i:                                    ; preds = %.preheader222.i.i
  %i.agi = shufflevector <8 x i32> %foldExtExtBinop, <8 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.k

.preheader221.i.i:                                ; preds = %bb.k, %.preheader222.i.i
  %.01255.lcssa.i.i = phi i32 [ 0, %.preheader222.i.i ], [ %i.aio, %bb.k ] ; 3 uses
  %.1.lcssa.i.i = phi ptr [ %.0264.i.i, %.preheader222.i.i ], [ %i.ain, %bb.k ] ; 2 uses
  %i.agj = or disjoint i32 %.01255.lcssa.i.i, 1
  %i.agk = icmp slt i32 %i.agj, %5
  br i1 %i.agk, label %.lr.ph252.i.i, label %.preheader219.i.i

.lr.ph252.i.i:                                    ; preds = %.preheader221.i.i
  %i.agl = sext i32 %i.agh to i64                 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph247.i.i
  %.1246.i.i = phi ptr [ %.0264.i.i, %.lr.ph247.i.i ], [ %i.ain, %bb.k ] ; 2 uses
  %.01255245.i.i = phi i32 [ 0, %.lr.ph247.i.i ], [ %i.aio, %bb.k ] ; 2 uses
  %i.agm = add nsw i32 %.01255245.i.i, %4
  %i.agn = insertelement <4 x i32> poison, i32 %i.agm, i64 0
  %i.ago = shufflevector <4 x i32> %i.agn, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agp = add <4 x i32> %i.ago, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.agq = bitcast <4 x i32> %i.agp to <2 x i64>
  %i.agr = bitcast <4 x i32> %i.agp to <2 x i64>
  %i.ags = and <2 x i64> %i.agr, splat (i64 4294967295)
  %i.agt = mul nuw <2 x i64> %i.ags, %i.acb
  %i.agu = lshr <2 x i64> %i.agt, splat (i64 32)
  %i.agv = lshr <2 x i64> %i.agq, splat (i64 32)
  %i.agw = mul nuw <2 x i64> %i.agv, %i.acb
  %i.agx = bitcast <2 x i64> %i.agu to <8 x i16>
  %i.agy = bitcast <2 x i64> %i.agw to <8 x i16>
  %i.agz = shufflevector <8 x i16> %i.agx, <8 x i16> %i.agy, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.aha = bitcast <8 x i16> %i.agz to <4 x i32>  ; 2 uses
  %i.ahb = sub <4 x i32> %i.agp, %i.aha
  %i.ahc = lshr <4 x i32> %i.ahb, %i.acc
  %i.ahd = add <4 x i32> %i.ahc, %i.aha
  %i.ahe = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.ahd, <4 x i32> %i.aav) ; 2 uses
  %i.ahf = mul <4 x i32> %i.ahe, %i.ace
  %i.ahg = sub <4 x i32> %i.agp, %i.ahf           ; 4 uses
  %i.ahh = bitcast <4 x i32> %i.ahg to <2 x i64>
  %i.ahi = bitcast <4 x i32> %i.ahg to <2 x i64>
  %i.ahj = and <2 x i64> %i.ahi, splat (i64 4294967295)
  %i.ahk = mul nuw <2 x i64> %i.ahj, %i.acg
  %i.ahl = lshr <2 x i64> %i.ahk, splat (i64 32)
  %i.ahm = lshr <2 x i64> %i.ahh, splat (i64 32)
  %i.ahn = mul nuw <2 x i64> %i.ahm, %i.acg
  %i.aho = bitcast <2 x i64> %i.ahl to <8 x i16>
  %i.ahp = bitcast <2 x i64> %i.ahn to <8 x i16>
  %i.ahq = shufflevector <8 x i16> %i.aho, <8 x i16> %i.ahp, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.ahr = bitcast <8 x i16> %i.ahq to <4 x i32>  ; 2 uses
  %i.ahs = sub <4 x i32> %i.ahg, %i.ahr
  %i.aht = lshr <4 x i32> %i.ahs, %i.ach
  %i.ahu = add <4 x i32> %i.aht, %i.ahr
  %i.ahv = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.ahu, <4 x i32> %i.abn) ; 2 uses
  %i.ahw = mul <4 x i32> %i.ahv, %i.acj
  %i.ahx = sub <4 x i32> %i.ahg, %i.ahw
  %i.ahy = mul <4 x i32> %i.ahe, %i.acm
  %i.ahz = mul <4 x i32> %i.ahx, %i.aco
  %i.aia = mul <4 x i32> %i.ahv, %i.acq
  %i.aib = add <4 x i32> %i.ahy, %i.agi
  %i.aic = add <4 x i32> %i.aib, %i.aia
  %i.aid = add <4 x i32> %i.aic, %i.ahz
  %i.aie = load ptr, ptr %0, align 8, !tbaa !28
  %i.aif = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.aie, <4 x i32> %i.aid, <4 x i64> splat (i64 -1), i8 1)
  %i.aig = bitcast <4 x i64> %i.aif to <8 x i32>
  %i.aih = shufflevector <8 x i32> %i.aig, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.aii = bitcast <8 x i32> %i.aih to <4 x i64>
  %i.aij = shufflevector <4 x i64> %i.aii, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aik = bitcast <4 x i64> %i.aij to <32 x i8>
  %i.ail = add <32 x i8> %i.aik, splat (i8 127)
  %i.aim = shufflevector <32 x i8> %i.ail, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15, i32 16, i32 20, i32 24, i32 28, i32 17, i32 21, i32 25, i32 29, i32 18, i32 22, i32 26, i32 30, i32 19, i32 23, i32 27, i32 31>
  store <32 x i8> %i.aim, ptr %.1246.i.i, align 1, !tbaa !30
  %i.ain = getelementptr inbounds nuw i8, ptr %.1246.i.i, i64 32 ; 2 uses
  %i.aio = add nuw nsw i32 %.01255245.i.i, 4      ; 3 uses
  %i.aip = or disjoint i32 %i.aio, 3
  %i.aiq = icmp slt i32 %i.aip, %5
  br i1 %i.aiq, label %bb.k, label %.preheader221.i.i, !llvm.loop !349

.preheader219.i.i:                                ; preds = %bb.l, %.preheader221.i.i
  %.11256.lcssa.i.i = phi i32 [ %.01255.lcssa.i.i, %.preheader221.i.i ], [ %i.ajs, %bb.l ] ; 2 uses
  %.2.lcssa.i.i = phi ptr [ %.1.lcssa.i.i, %.preheader221.i.i ], [ %i.ajr, %bb.l ] ; 2 uses
  %i.air = icmp slt i32 %.11256.lcssa.i.i, %5
  br i1 %i.air, label %.lr.ph257.i.i, label %.loopexit218.i.i

.lr.ph257.i.i:                                    ; preds = %.preheader219.i.i
  %i.ais = sext i32 %i.agh to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph252.i.i
  %.2251.i.i = phi ptr [ %.1.lcssa.i.i, %.lr.ph252.i.i ], [ %i.ajr, %bb.l ] ; 2 uses
  %.11256250.i.i = phi i32 [ %.01255.lcssa.i.i, %.lr.ph252.i.i ], [ %i.ajs, %bb.l ] ; 2 uses
  %i.ait = add nsw i32 %.11256250.i.i, %4         ; 3 uses
  %i.aiu = add nsw i32 %i.ait, 1                  ; 2 uses
  %24 = srem i32 %i.ait, %i.zi                    ; 2 uses
  %25 = srem i32 %i.aiu, %i.zi                    ; 2 uses
  %26 = sdiv i32 %24, %6
  %27 = sdiv i32 %25, %6
  %28 = srem i32 %24, %6
  %29 = srem i32 %25, %6
  %30 = mul i32 %26, %.scalar451.i.i
  %31 = mul nsw i32 %28, %8
  %32 = add nsw i32 %31, %30
  %33 = sext i32 %32 to i64
  %34 = insertelement <2 x i32> poison, i32 %i.ait, i64 0
  %35 = insertelement <2 x i32> %34, i32 %i.aiu, i64 1
  %36 = sdiv <2 x i32> %35, %17
  %i.aiv = sext <2 x i32> %36 to <2 x i64>
  %i.aiw = mul <2 x i64> %15, %i.aiv              ; 2 uses
  %i.aix = mul i32 %27, %.scalar451.i.i
  %i.aiy = mul nsw i32 %29, %8
  %i.aiz = add nsw i32 %i.aiy, %i.aix
  %i.aja = sext i32 %i.aiz to i64
  %i.ajb = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.ajc = extractelement <2 x i64> %i.aiw, i64 0
  %i.ajd = getelementptr i8, ptr %i.ajb, i64 %i.ajc
  %i.aje = getelementptr i8, ptr %i.ajd, i64 %i.agl
  %i.ajf = getelementptr i8, ptr %i.aje, i64 %33
  %i.ajg = load i64, ptr %i.ajf, align 1, !tbaa !30
  %i.ajh = insertelement <2 x i64> poison, i64 %i.ajg, i64 0
  %i.aji = extractelement <2 x i64> %i.aiw, i64 1
  %i.ajj = getelementptr i8, ptr %i.ajb, i64 %i.aji
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 %i.agl
  %i.ajl = getelementptr i8, ptr %i.ajk, i64 %i.aja
  %i.ajm = load i64, ptr %i.ajl, align 1, !tbaa !30
  %i.ajn = insertelement <2 x i64> poison, i64 %i.ajm, i64 0
  %i.ajo = bitcast <2 x i64> %i.ajh to <16 x i8>
  %i.ajp = bitcast <2 x i64> %i.ajn to <16 x i8>
  %i.ajq = shufflevector <16 x i8> %i.ajo, <16 x i8> %i.ajp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ajq, ptr %.2251.i.i, align 1, !tbaa !30
  %i.ajr = getelementptr inbounds nuw i8, ptr %.2251.i.i, i64 16 ; 2 uses
  %i.ajs = add nuw nsw i32 %.11256250.i.i, 2      ; 3 uses
  %i.ajt = or disjoint i32 %i.ajs, 1
  %i.aju = icmp slt i32 %i.ajt, %5
  br i1 %i.aju, label %bb.l, label %.preheader219.i.i, !llvm.loop !350

bb.m:                                             ; preds = %bb.m, %.lr.ph257.i.i
  %.3256.i.i = phi ptr [ %.2.lcssa.i.i, %.lr.ph257.i.i ], [ %i.akl, %bb.m ] ; 2 uses
  %.21257255.i.i = phi i32 [ %.11256.lcssa.i.i, %.lr.ph257.i.i ], [ %i.akm, %bb.m ] ; 2 uses
  %i.ajv = add nsw i32 %.21257255.i.i, %4         ; 2 uses
  %i.ajw = sdiv i32 %i.ajv, %i.zi
  %i.ajx = srem i32 %i.ajv, %i.zi                 ; 2 uses
  %i.ajy = sdiv i32 %i.ajx, %6
  %i.ajz = srem i32 %i.ajx, %6
  %i.aka = sext i32 %i.ajw to i64
  %i.akb = mul i64 %i.m, %i.aka
  %i.akc = mul i32 %i.ajy, %.scalar451.i.i
  %i.akd = mul nsw i32 %i.ajz, %8
  %i.ake = add nsw i32 %i.akd, %i.akc
  %i.akf = sext i32 %i.ake to i64
  %i.akg = load ptr, ptr %0, align 8, !tbaa !28
  %i.akh = getelementptr i8, ptr %i.akg, i64 %i.akb
  %i.aki = getelementptr i8, ptr %i.akh, i64 %i.ais
  %i.akj = getelementptr i8, ptr %i.aki, i64 %i.akf
  %i.akk = load i64, ptr %i.akj, align 1, !tbaa !30
  store i64 %i.akk, ptr %.3256.i.i, align 1, !tbaa !30
  %i.akl = getelementptr inbounds nuw i8, ptr %.3256.i.i, i64 8 ; 2 uses
  %i.akm = add nuw nsw i32 %.21257255.i.i, 1      ; 2 uses
  %exitcond438.not.i.i = icmp eq i32 %i.akm, %5
  br i1 %exitcond438.not.i.i, label %.loopexit218.i.i, label %bb.m, !llvm.loop !351

.loopexit220.i.i:                                 ; preds = %bb.j
  br i1 %brmerge375.i.i, label %.loopexit218.i.i, label %.lr.ph261.i.i

.lr.ph261.i.i:                                    ; preds = %.loopexit220.i.i
  %i.akn = sext i32 %i.agh to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph261.i.i
  %.5260.i.i = phi ptr [ %.0264.i.i, %.lr.ph261.i.i ], [ %i.als, %bb.n ] ; 3 uses
  %.01258259.i.i = phi i32 [ 0, %.lr.ph261.i.i ], [ %i.alt, %bb.n ] ; 2 uses
  %i.ako = add nsw i32 %.01258259.i.i, %i.acu     ; 2 uses
  %i.akp = sdiv i32 %i.ako, %i.zi
  %i.akq = srem i32 %i.ako, %i.zi                 ; 2 uses
  %i.akr = sdiv i32 %i.akq, %6
  %i.aks = srem i32 %i.akq, %6
  %i.akt = sext i32 %i.akp to i64
  %i.aku = mul i64 %i.m, %i.akt
  %i.akv = add i64 %i.aku, %i.akn
  %i.akw = mul i32 %i.akr, %.scalar451.i.i
  %i.akx = mul nsw i32 %i.aks, %8
  %i.aky = add nsw i32 %i.akx, %i.akw
  %i.akz = sext i32 %i.aky to i64
  %i.ala = add i64 %i.akv, %i.akz
  %i.alb = shl i64 %i.ala, 3
  %i.alc = load ptr, ptr %0, align 8, !tbaa !28
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 %i.alb ; 2 uses
  %i.ale = load <8 x i32>, ptr %i.ald, align 1, !tbaa !30 ; 2 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ald, i64 32
  %i.alg = load <8 x i32>, ptr %i.alf, align 1, !tbaa !30 ; 2 uses
  %i.alh = shufflevector <8 x i32> %i.ale, <8 x i32> %i.alg, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ali = bitcast <8 x i32> %i.alh to <4 x i64>
  %i.alj = shufflevector <8 x i32> %i.ale, <8 x i32> %i.alg, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.alk = bitcast <8 x i32> %i.alj to <4 x i64>
  %i.all = shufflevector <4 x i64> %i.ali, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.alm = shufflevector <4 x i64> %i.alk, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.aln = bitcast <4 x i64> %i.all to <32 x i8>
  %i.alo = add <32 x i8> %i.aln, splat (i8 127)
  %i.alp = bitcast <4 x i64> %i.alm to <32 x i8>
  %i.alq = add <32 x i8> %i.alp, splat (i8 127)
  store <32 x i8> %i.alo, ptr %.5260.i.i, align 1, !tbaa !30
  %i.alr = getelementptr inbounds nuw i8, ptr %.5260.i.i, i64 32
  store <32 x i8> %i.alq, ptr %i.alr, align 1, !tbaa !30
  %i.als = getelementptr inbounds nuw i8, ptr %.5260.i.i, i64 64 ; 2 uses
  %i.alt = add nuw nsw i32 %.01258259.i.i, 1      ; 2 uses
  %exitcond439.not.i.i = icmp eq i32 %i.alt, %i.acs
  br i1 %exitcond439.not.i.i, label %.loopexit218.i.i, label %bb.n, !llvm.loop !352

bb.o:                                             ; preds = %bb.i
  br i1 %i.aby, label %.preheader228.i.i, label %.loopexit226.i.i

.preheader228.i.i:                                ; preds = %bb.o
  br i1 %i.abz, label %.lr.ph.i51.i, label %.preheader227.i.i

.preheader227.i.i:                                ; preds = %.lr.ph.i51.i, %.preheader228.i.i
  %.01259.lcssa.i.i = phi i32 [ 0, %.preheader228.i.i ], [ %i.apc, %.lr.ph.i51.i ] ; 3 uses
  %.7.lcssa.i48.i = phi ptr [ %.0264.i.i, %.preheader228.i.i ], [ %i.apb, %.lr.ph.i51.i ] ; 2 uses
  %i.alu = or disjoint i32 %.01259.lcssa.i.i, 1
  %i.alv = icmp slt i32 %i.alu, %5
  br i1 %i.alv, label %.lr.ph234.i50.i, label %.preheader225.i.i

.lr.ph.i51.i:                                     ; preds = %.preheader228.i.i, %.lr.ph.i51.i
  %.7230.i.i = phi ptr [ %i.apb, %.lr.ph.i51.i ], [ %.0264.i.i, %.preheader228.i.i ] ; 3 uses
  %.01259229.i.i = phi i32 [ %i.apc, %.lr.ph.i51.i ], [ 0, %.preheader228.i.i ] ; 2 uses
  %i.alw = add nsw i32 %.01259229.i.i, %4
  %i.alx = insertelement <4 x i32> poison, i32 %i.alw, i64 0
  %i.aly = shufflevector <4 x i32> %i.alx, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alz = add <4 x i32> %i.aly, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.ama = bitcast <4 x i32> %i.alz to <2 x i64>
  %i.amb = bitcast <4 x i32> %i.alz to <2 x i64>
  %i.amc = and <2 x i64> %i.amb, splat (i64 4294967295)
  %i.amd = mul nuw <2 x i64> %i.amc, %i.acb
  %i.ame = lshr <2 x i64> %i.amd, splat (i64 32)
  %i.amf = lshr <2 x i64> %i.ama, splat (i64 32)
  %i.amg = mul nuw <2 x i64> %i.amf, %i.acb
  %i.amh = bitcast <2 x i64> %i.ame to <8 x i16>
  %i.ami = bitcast <2 x i64> %i.amg to <8 x i16>
  %i.amj = shufflevector <8 x i16> %i.amh, <8 x i16> %i.ami, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.amk = bitcast <8 x i16> %i.amj to <4 x i32>  ; 2 uses
  %i.aml = sub <4 x i32> %i.alz, %i.amk
  %i.amm = lshr <4 x i32> %i.aml, %i.acc
  %i.amn = add <4 x i32> %i.amm, %i.amk
  %i.amo = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.amn, <4 x i32> %i.aav) ; 2 uses
  %i.amp = mul <4 x i32> %i.amo, %i.ace
  %i.amq = sub <4 x i32> %i.alz, %i.amp           ; 4 uses
  %i.amr = bitcast <4 x i32> %i.amq to <2 x i64>
  %i.ams = bitcast <4 x i32> %i.amq to <2 x i64>
  %i.amt = and <2 x i64> %i.ams, splat (i64 4294967295)
  %i.amu = mul nuw <2 x i64> %i.amt, %i.acg
  %i.amv = lshr <2 x i64> %i.amu, splat (i64 32)
  %i.amw = lshr <2 x i64> %i.amr, splat (i64 32)
  %i.amx = mul nuw <2 x i64> %i.amw, %i.acg
  %i.amy = bitcast <2 x i64> %i.amv to <8 x i16>
  %i.amz = bitcast <2 x i64> %i.amx to <8 x i16>
  %i.ana = shufflevector <8 x i16> %i.amy, <8 x i16> %i.amz, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.anb = bitcast <8 x i16> %i.ana to <4 x i32>  ; 2 uses
  %i.anc = sub <4 x i32> %i.amq, %i.anb
  %i.and = lshr <4 x i32> %i.anc, %i.ach
  %i.ane = add <4 x i32> %i.and, %i.anb
  %i.anf = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.ane, <4 x i32> %i.abn) ; 2 uses
  %i.ang = mul <4 x i32> %i.anf, %i.acj
  %i.anh = sub <4 x i32> %i.amq, %i.ang
  %i.ani = mul <4 x i32> %i.amo, %i.acm
  %i.anj = mul <4 x i32> %i.anh, %i.aco
  %i.ank = mul <4 x i32> %i.anf, %i.acq
  %i.anl = add <4 x i32> %i.ank, %i.ani
  %i.anm = add <4 x i32> %i.anl, %i.anj           ; 4 uses
  %i.ann = shufflevector <4 x i32> %i.anm, <4 x i32> poison, <8 x i32> zeroinitializer
  %i.ano = add <8 x i32> %i.ann, %i.age
  %i.anp = shufflevector <4 x i32> %i.anm, <4 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.anq = add <8 x i32> %i.anp, %i.age
  %i.anr = shufflevector <4 x i32> %i.anm, <4 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ans = add <8 x i32> %i.anr, %i.age
  %i.ant = shufflevector <4 x i32> %i.anm, <4 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.anu = add <8 x i32> %i.ant, %i.age
  %i.anv = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.anw = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.anv, <8 x i32> %i.ano, <8 x i32> splat (i32 -1), i8 1)
  %i.anx = bitcast <8 x i32> %i.anw to <32 x i8>
  %i.any = shufflevector <32 x i8> %i.anx, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.anz = bitcast <32 x i8> %i.any to <8 x i32>
  %i.aoa = shufflevector <8 x i32> %i.anz, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aob = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.anv, <8 x i32> %i.anq, <8 x i32> splat (i32 -1), i8 1)
  %i.aoc = bitcast <8 x i32> %i.aob to <32 x i8>
  %i.aod = shufflevector <32 x i8> %i.aoc, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aoe = bitcast <32 x i8> %i.aod to <8 x i32>
  %i.aof = shufflevector <8 x i32> %i.aoe, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aog = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.anv, <8 x i32> %i.ans, <8 x i32> splat (i32 -1), i8 1)
  %i.aoh = bitcast <8 x i32> %i.aog to <32 x i8>
  %i.aoi = shufflevector <32 x i8> %i.aoh, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aoj = bitcast <32 x i8> %i.aoi to <8 x i32>
  %i.aok = shufflevector <8 x i32> %i.aoj, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aol = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.anv, <8 x i32> %i.anu, <8 x i32> splat (i32 -1), i8 1)
  %i.aom = bitcast <8 x i32> %i.aol to <32 x i8>
  %i.aon = shufflevector <32 x i8> %i.aom, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aoo = bitcast <32 x i8> %i.aon to <8 x i32>
  %i.aop = shufflevector <8 x i32> %i.aoo, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aoq = bitcast <4 x i32> %i.aoa to <16 x i8>
  %i.aor = bitcast <4 x i32> %i.aof to <16 x i8>
  %i.aos = shufflevector <16 x i8> %i.aoq, <16 x i8> %i.aor, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aot = bitcast <4 x i32> %i.aok to <16 x i8>
  %i.aou = bitcast <4 x i32> %i.aop to <16 x i8>
  %i.aov = shufflevector <16 x i8> %i.aot, <16 x i8> %i.aou, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.aow = shufflevector <16 x i8> %i.aos, <16 x i8> %i.aov, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.aox = shufflevector <16 x i8> %i.aos, <16 x i8> %i.aov, <16 x i32> <i32 8, i32 9, i32 24, i32 25, i32 10, i32 11, i32 26, i32 27, i32 12, i32 13, i32 28, i32 29, i32 14, i32 15, i32 30, i32 31>
  %i.aoy = add <16 x i8> %i.aow, splat (i8 127)
  %i.aoz = add <16 x i8> %i.aox, splat (i8 127)
  store <16 x i8> %i.aoy, ptr %.7230.i.i, align 1, !tbaa !30
  %i.apa = getelementptr inbounds nuw i8, ptr %.7230.i.i, i64 16
  store <16 x i8> %i.aoz, ptr %i.apa, align 1, !tbaa !30
  %i.apb = getelementptr inbounds nuw i8, ptr %.7230.i.i, i64 32 ; 2 uses
  %i.apc = add nuw nsw i32 %.01259229.i.i, 4      ; 3 uses
  %i.apd = or disjoint i32 %i.apc, 3
  %i.ape = icmp slt i32 %i.apd, %5
  br i1 %i.ape, label %.lr.ph.i51.i, label %.preheader227.i.i, !llvm.loop !353

.preheader225.i.i:                                ; preds = %.lr.ph234.i50.i, %.preheader227.i.i
  %.11260.lcssa.i.i = phi i32 [ %.01259.lcssa.i.i, %.preheader227.i.i ], [ %i.aql, %.lr.ph234.i50.i ] ; 2 uses
  %.8.lcssa.i.i = phi ptr [ %.7.lcssa.i48.i, %.preheader227.i.i ], [ %i.aqk, %.lr.ph234.i50.i ] ; 2 uses
  %i.apf = icmp slt i32 %.11260.lcssa.i.i, %5
  br i1 %i.apf, label %.lr.ph239.i.i, label %.loopexit218.i.i

.lr.ph234.i50.i:                                  ; preds = %.preheader227.i.i, %.lr.ph234.i50.i
  %.8233.i.i = phi ptr [ %i.aqk, %.lr.ph234.i50.i ], [ %.7.lcssa.i48.i, %.preheader227.i.i ] ; 2 uses
  %.11260232.i.i = phi i32 [ %i.aql, %.lr.ph234.i50.i ], [ %.01259.lcssa.i.i, %.preheader227.i.i ] ; 2 uses
  %i.apg = add nsw i32 %.11260232.i.i, %4         ; 3 uses
  %i.aph = add nsw i32 %i.apg, 1                  ; 2 uses
  %i.api = insertelement <2 x i32> poison, i32 %i.apg, i64 0
  %i.apj = insertelement <2 x i32> %i.api, i32 %i.aph, i64 1
  %i.apk = srem <2 x i32> %i.apj, %i.ada          ; 3 uses
  %i.apl = srem <2 x i32> %i.apk, %i.adc
  %37 = mul nsw <2 x i32> %i.apl, %12             ; 2 uses
  %i.apm = insertelement <2 x i32> %i.apk, i32 %i.apg, i64 1
  %i.apn = sdiv <2 x i32> %i.apm, %i.ade
  %i.apo = mul <2 x i32> %i.apn, %i.adg           ; 2 uses
  %shift = shufflevector <2 x i32> %i.apo, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop391 = add <2 x i32> %i.apo, %shift
  %foldExtExtBinop393 = add <2 x i32> %foldExtExtBinop391, %37
  %i.app = shufflevector <2 x i32> %foldExtExtBinop393, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.apq = add <8 x i32> %i.app, %i.age
  %i.apr = shufflevector <2 x i32> %i.apk, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.aps = insertelement <2 x i32> %i.apr, i32 %i.aph, i64 1
  %i.apt = sdiv <2 x i32> %i.aps, %i.ade
  %i.apu = mul <2 x i32> %i.apt, %i.adg           ; 2 uses
  %38 = shufflevector <2 x i32> %i.apu, <2 x i32> poison, <8 x i32> zeroinitializer
  %39 = shufflevector <2 x i32> %i.apu, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %40 = add <8 x i32> %38, %39
  %41 = shufflevector <2 x i32> %37, <2 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %42 = add <8 x i32> %40, %41
  %i.apv = add <8 x i32> %42, %i.age
  %i.apw = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.apx = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.apw, <8 x i32> %i.apq, <8 x i32> splat (i32 -1), i8 1)
  %i.apy = bitcast <8 x i32> %i.apx to <32 x i8>
  %i.apz = shufflevector <32 x i8> %i.apy, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqa = bitcast <32 x i8> %i.apz to <8 x i32>
  %i.aqb = shufflevector <8 x i32> %i.aqa, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aqc = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.apw, <8 x i32> %i.apv, <8 x i32> splat (i32 -1), i8 1)
  %i.aqd = bitcast <8 x i32> %i.aqc to <32 x i8>
  %i.aqe = shufflevector <32 x i8> %i.aqd, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aqf = bitcast <32 x i8> %i.aqe to <8 x i32>
  %i.aqg = shufflevector <8 x i32> %i.aqf, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.aqh = bitcast <4 x i32> %i.aqb to <16 x i8>
  %i.aqi = bitcast <4 x i32> %i.aqg to <16 x i8>
  %i.aqj = shufflevector <16 x i8> %i.aqh, <16 x i8> %i.aqi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.aqj, ptr %.8233.i.i, align 1, !tbaa !30
  %i.aqk = getelementptr inbounds nuw i8, ptr %.8233.i.i, i64 16 ; 2 uses
  %i.aql = add nuw nsw i32 %.11260232.i.i, 2      ; 3 uses
  %i.aqm = or disjoint i32 %i.aql, 1
  %i.aqn = icmp slt i32 %i.aqm, %5
  br i1 %i.aqn, label %.lr.ph234.i50.i, label %.preheader225.i.i, !llvm.loop !354

.lr.ph239.i.i:                                    ; preds = %.preheader225.i.i, %.lr.ph239.i.i
  %.9238.i.i = phi ptr [ %i.arj, %.lr.ph239.i.i ], [ %.8.lcssa.i.i, %.preheader225.i.i ] ; 2 uses
  %.21261237.i.i = phi i32 [ %i.ark, %.lr.ph239.i.i ], [ %.11260.lcssa.i.i, %.preheader225.i.i ] ; 2 uses
  %i.aqo = add nsw i32 %.21261237.i.i, %4         ; 2 uses
  %i.aqp = srem i32 %i.aqo, %i.zi                 ; 2 uses
  %i.aqq = srem i32 %i.aqp, %6
  %i.aqr = mul nsw i32 %i.aqq, %8
  %i.aqs = insertelement <2 x i32> poison, i32 %i.aqp, i64 0
  %i.aqt = insertelement <2 x i32> %i.aqs, i32 %i.aqo, i64 1
  %i.aqu = sdiv <2 x i32> %i.aqt, %i.adi
  %i.aqv = mul <2 x i32> %i.aqu, %13
  %i.aqw = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.aqv)
  %i.aqx = add i32 %i.aqw, %i.aqr
  %i.aqy = insertelement <8 x i32> poison, i32 %i.aqx, i64 0
  %i.aqz = shufflevector <8 x i32> %i.aqy, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ara = add <8 x i32> %i.aqz, %i.age
  %i.arb = load ptr, ptr %0, align 8, !tbaa !28
  %i.arc = tail call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %i.arb, <8 x i32> %i.ara, <8 x i32> splat (i32 -1), i8 1)
  %i.ard = bitcast <8 x i32> %i.arc to <32 x i8>
  %i.are = shufflevector <32 x i8> %i.ard, <32 x i8> poison, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 20, i32 24, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.arf = bitcast <32 x i8> %i.are to <8 x i32>
  %i.arg = shufflevector <8 x i32> %i.arf, <8 x i32> poison, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.arh = bitcast <4 x i32> %i.arg to <2 x i64>
  %i.ari = extractelement <2 x i64> %i.arh, i64 0
  store i64 %i.ari, ptr %.9238.i.i, align 1, !tbaa !30
  %i.arj = getelementptr inbounds nuw i8, ptr %.9238.i.i, i64 8 ; 2 uses
  %i.ark = add nuw nsw i32 %.21261237.i.i, 1      ; 2 uses
  %exitcond.not.i49.i = icmp eq i32 %i.ark, %5
  br i1 %exitcond.not.i49.i, label %.loopexit218.i.i, label %.lr.ph239.i.i, !llvm.loop !355

.loopexit226.i.i:                                 ; preds = %bb.o
  br i1 %brmerge375.i.i, label %.loopexit218.i.i, label %.lr.ph243.i.i

.lr.ph243.i.i:                                    ; preds = %.loopexit226.i.i, %.lr.ph243.i.i
  %.11242.i.i = phi ptr [ %i.asr, %.lr.ph243.i.i ], [ %.0264.i.i, %.loopexit226.i.i ] ; 3 uses
  %.01262241.i.i = phi i32 [ %i.ass, %.lr.ph243.i.i ], [ 0, %.loopexit226.i.i ] ; 2 uses
  %i.arl = add nsw i32 %.01262241.i.i, %i.acu     ; 2 uses
  %i.arm = srem i32 %i.arl, %i.zi                 ; 2 uses
  %i.arn = srem i32 %i.arm, %6
  %i.aro = mul nsw i32 %i.arn, %8
  %i.arp = insertelement <2 x i32> poison, i32 %i.arm, i64 0
  %i.arq = insertelement <2 x i32> %i.arp, i32 %i.arl, i64 1
  %i.arr = sdiv <2 x i32> %i.arq, %i.acw
  %i.ars = mul <2 x i32> %i.arr, %i.acy
  %i.art = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.ars)
  %i.aru = add i32 %i.art, %i.aro
  %i.arv = insertelement <8 x i32> poison, i32 %i.aru, i64 0
  %i.arw = shufflevector <8 x i32> %i.arv, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.arx = add <8 x i32> %i.arw, %i.age
  %i.ary = shl <8 x i32> %i.arx, splat (i32 3)    ; 2 uses
  %i.arz = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.asa = shufflevector <8 x i32> %i.ary, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.asb = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.arz, <4 x i32> %i.asa, <4 x i64> splat (i64 -1), i8 1)
  %i.asc = shufflevector <8 x i32> %i.ary, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.asd = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.arz, <4 x i32> %i.asc, <4 x i64> splat (i64 -1), i8 1)
  %i.ase = bitcast <4 x i64> %i.asb to <8 x i32>  ; 2 uses
  %i.asf = bitcast <4 x i64> %i.asd to <8 x i32>  ; 2 uses
  %i.asg = shufflevector <8 x i32> %i.ase, <8 x i32> %i.asf, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.ash = bitcast <8 x i32> %i.asg to <4 x i64>
  %i.asi = shufflevector <8 x i32> %i.ase, <8 x i32> %i.asf, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  %i.asj = bitcast <8 x i32> %i.asi to <4 x i64>
  %i.ask = shufflevector <4 x i64> %i.ash, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.asl = shufflevector <4 x i64> %i.asj, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.asm = bitcast <4 x i64> %i.ask to <32 x i8>
  %i.asn = add <32 x i8> %i.asm, splat (i8 127)
  %i.aso = bitcast <4 x i64> %i.asl to <32 x i8>
  %i.asp = add <32 x i8> %i.aso, splat (i8 127)
  store <32 x i8> %i.asn, ptr %.11242.i.i, align 1, !tbaa !30
  %i.asq = getelementptr inbounds nuw i8, ptr %.11242.i.i, i64 32
  store <32 x i8> %i.asp, ptr %i.asq, align 1, !tbaa !30
  %i.asr = getelementptr inbounds nuw i8, ptr %.11242.i.i, i64 64 ; 2 uses
  %i.ass = add nuw nsw i32 %.01262241.i.i, 1      ; 2 uses
  %exitcond437.not.i.i = icmp eq i32 %i.ass, %i.acs
  br i1 %exitcond437.not.i.i, label %.loopexit218.i.i, label %.lr.ph243.i.i, !llvm.loop !356

.loopexit218.i.i:                                 ; preds = %.lr.ph243.i.i, %.lr.ph239.i.i, %bb.n, %bb.m, %.loopexit226.i.i, %.preheader225.i.i, %.loopexit220.i.i, %.preheader219.i.i
  %.12.i.i = phi ptr [ %.0264.i.i, %.loopexit226.i.i ], [ %.2.lcssa.i.i, %.preheader219.i.i ], [ %.0264.i.i, %.loopexit220.i.i ], [ %i.als, %bb.n ], [ %i.akl, %bb.m ], [ %.8.lcssa.i.i, %.preheader225.i.i ], [ %i.arj, %.lr.ph239.i.i ], [ %i.asr, %.lr.ph243.i.i ] ; 2 uses
  %i.ast = add nuw nsw i32 %.01251263.i.i, 8      ; 3 uses
  %i.asu = or disjoint i32 %i.ast, 7
  %i.asv = icmp slt i32 %i.asu, %3
  br i1 %i.asv, label %bb.i, label %.preheader216.i.i, !llvm.loop !357

.preheader203.i.i:                                ; preds = %.loopexit205.i.i, %.preheader216.i.i
  %.11252.lcssa.i.i = phi i32 [ %.01251.lcssa.i.i, %.preheader216.i.i ], [ %i.bha, %.loopexit205.i.i ] ; 3 uses
  %.13.lcssa.i.i = phi ptr [ %.0.lcssa.i45.i, %.preheader216.i.i ], [ %.25.i.i, %.loopexit205.i.i ] ; 2 uses
  %i.asw = or disjoint i32 %.11252.lcssa.i.i, 1
  %i.asx = icmp slt i32 %i.asw, %3
  br i1 %i.asx, label %.lr.ph348.i.i, label %.preheader190.i.i

.lr.ph348.i.i:                                    ; preds = %.preheader203.i.i
  %i.asy = mul i32 %i.za, %11
  %i.asz = icmp eq i32 %i.zc, 1                   ; 2 uses
  %i.ata = icmp sgt i32 %5, 3                     ; 2 uses
  %i.atb = shufflevector <4 x i64> %i.aat, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.atc = and <2 x i64> %i.atb, splat (i64 4294967295) ; 4 uses
  %i.atd = shufflevector <4 x i32> %i.aau, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ate = insertelement <4 x i32> poison, i32 %i.zi, i64 0
  %i.atf = shufflevector <4 x i32> %i.ate, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.atg = shufflevector <4 x i64> %i.abl, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.ath = and <2 x i64> %i.atg, splat (i64 4294967295) ; 4 uses
  %i.ati = shufflevector <4 x i32> %i.abm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.atj = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.atk = shufflevector <4 x i32> %i.atj, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.atl = trunc i64 %i.m to i32                  ; 2 uses
  %i.atm = insertelement <4 x i32> poison, i32 %i.atl, i64 0
  %i.atn = shufflevector <4 x i32> %i.atm, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ato = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.atp = shufflevector <4 x i32> %i.ato, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.scalar456.i.i = mul i32 %i.za, %9             ; 8 uses
  %i.atq = insertelement <4 x i32> poison, i32 %.scalar456.i.i, i64 0
  %i.atr = shufflevector <4 x i32> %i.atq, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ats = icmp eq i32 %i.zc, 8
  %i.att = sdiv i32 %5, 8                         ; 2 uses
  %i.atu = sdiv i32 %4, 8                         ; 2 uses
  %i.atv = icmp ne i32 %i.zc, 8
  %i.atw = icmp slt i32 %5, 8
  %i.atx = icmp sgt i32 %5, 7
  %or.cond385.i.i = and i1 %i.atx, %i.ats
  %brmerge384.i.i = or i1 %i.atw, %i.atv
  %i.aty = insertelement <2 x i32> poison, i32 %10, i64 0
  %i.atz = shufflevector <2 x i32> %i.aty, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aua = insertelement <2 x i32> poison, i32 %i.zh, i64 0
  %i.aub = shufflevector <2 x i32> %i.aua, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.auc = insertelement <2 x i32> poison, i32 %i.asy, i64 0
  %i.aud = shufflevector <2 x i32> %i.auc, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aue = insertelement <2 x i32> poison, i32 %i.zi, i64 0
  %i.auf = shufflevector <2 x i32> %i.aue, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aug = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.auh = shufflevector <2 x i32> %i.aug, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aui = insertelement <2 x i32> poison, i32 %.scalar456.i.i, i64 0
  %i.auj = shufflevector <2 x i32> %i.aui, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.auk = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.aul = shufflevector <2 x i32> %i.auk, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aum = insertelement <2 x i32> poison, i32 %i.atl, i64 0
  %i.aun = shufflevector <2 x i32> %i.aum, <2 x i32> poison, <2 x i32> zeroinitializer
  %43 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %44 = shufflevector <2 x i64> %43, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.auo = insertelement <2 x i32> poison, i32 %i.zi, i64 0
  %i.aup = shufflevector <2 x i32> %i.auo, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.w

bb.p:                                             ; preds = %.loopexit205.i.i, %.lr.ph306.i.i
  %.13305.i.i = phi ptr [ %.0.lcssa.i45.i, %.lr.ph306.i.i ], [ %.25.i.i, %.loopexit205.i.i ] ; 8 uses
  %.11252304.i.i = phi i32 [ %.01251.lcssa.i.i, %.lr.ph306.i.i ], [ %i.bha, %.loopexit205.i.i ] ; 2 uses
  %i.auq = add nsw i32 %.11252304.i.i, %2
  %i.aur = insertelement <4 x i32> poison, i32 %i.auq, i64 0
  %i.aus = shufflevector <4 x i32> %i.aur, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aut = add <4 x i32> %i.aus, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.auu = bitcast <4 x i32> %i.aut to <2 x i64>
  %i.auv = bitcast <4 x i32> %i.aut to <2 x i64>
  %i.auw = and <2 x i64> %i.auv, splat (i64 4294967295)
  %i.aux = mul nuw <2 x i64> %i.auw, %i.adn
  %i.auy = lshr <2 x i64> %i.aux, splat (i64 32)
  %i.auz = lshr <2 x i64> %i.auu, splat (i64 32)
  %i.ava = mul nuw <2 x i64> %i.auz, %i.adn
  %i.avb = bitcast <2 x i64> %i.auy to <8 x i16>
  %i.avc = bitcast <2 x i64> %i.ava to <8 x i16>
  %i.avd = shufflevector <8 x i16> %i.avb, <8 x i16> %i.avc, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.ave = bitcast <8 x i16> %i.avd to <4 x i32>  ; 2 uses
  %i.avf = sub <4 x i32> %i.aut, %i.ave
  %i.avg = lshr <4 x i32> %i.avf, %i.ado
  %i.avh = add <4 x i32> %i.avg, %i.ave
  %i.avi = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.avh, <4 x i32> %i.aab) ; 2 uses
  %i.avj = mul <4 x i32> %i.avi, %i.adq
  %i.avk = sub <4 x i32> %i.aut, %i.avj
  %i.avl = mul <4 x i32> %i.avk, %i.ads           ; 2 uses
  %i.avm = mul <4 x i32> %i.avi, %i.adu           ; 4 uses
  %i.avn = add <4 x i32> %i.avl, %i.avm           ; 8 uses
  %shift438 = shufflevector <4 x i32> %i.avm, <4 x i32> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.avo = icmp eq <4 x i32> %i.avm, %shift438
  %i.avp = extractelement <4 x i1> %i.avo, i64 0
  %or.cond3.i.i = and i1 %i.h, %i.avp
  br i1 %or.cond3.i.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %foldExtExtBinop408 = add nsw <4 x i32> %i.avl, %i.avm ; 2 uses
  %i.avq = extractelement <4 x i32> %foldExtExtBinop408, i64 0 ; 3 uses
  br i1 %i.adv, label %.preheader209.i.i, label %.loopexit207.i.i

.preheader209.i.i:                                ; preds = %bb.q
  br i1 %i.adw, label %.lr.ph288.i.i, label %.preheader208.i.i

.lr.ph288.i.i:                                    ; preds = %.preheader209.i.i
  %i.avr = shufflevector <4 x i32> %foldExtExtBinop408, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.r

.preheader208.i.i:                                ; preds = %bb.r, %.preheader209.i.i
  %.01263.lcssa.i.i = phi i32 [ 0, %.preheader209.i.i ], [ %i.axt, %bb.r ] ; 3 uses
  %.14.lcssa.i47.i = phi ptr [ %.13305.i.i, %.preheader209.i.i ], [ %i.axs, %bb.r ] ; 2 uses
  %i.avs = or disjoint i32 %.01263.lcssa.i.i, 1
  %i.avt = icmp slt i32 %i.avs, %5
  br i1 %i.avt, label %.lr.ph293.i.i, label %.preheader206.i.i

.lr.ph293.i.i:                                    ; preds = %.preheader208.i.i
  %i.avu = sext i32 %i.avq to i64                 ; 2 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.r, %.lr.ph288.i.i
  %.14287.i.i = phi ptr [ %.13305.i.i, %.lr.ph288.i.i ], [ %i.axs, %bb.r ] ; 2 uses
  %.01263286.i.i = phi i32 [ 0, %.lr.ph288.i.i ], [ %i.axt, %bb.r ] ; 2 uses
  %i.avv = add nsw i32 %.01263286.i.i, %4
  %i.avw = insertelement <4 x i32> poison, i32 %i.avv, i64 0
  %i.avx = shufflevector <4 x i32> %i.avw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.avy = add <4 x i32> %i.avx, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.avz = bitcast <4 x i32> %i.avy to <2 x i64>
  %i.awa = bitcast <4 x i32> %i.avy to <2 x i64>
  %i.awb = and <2 x i64> %i.awa, splat (i64 4294967295)
  %i.awc = mul nuw <2 x i64> %i.awb, %i.ady
  %i.awd = lshr <2 x i64> %i.awc, splat (i64 32)
  %i.awe = lshr <2 x i64> %i.avz, splat (i64 32)
  %i.awf = mul nuw <2 x i64> %i.awe, %i.ady
  %i.awg = bitcast <2 x i64> %i.awd to <8 x i16>
  %i.awh = bitcast <2 x i64> %i.awf to <8 x i16>
  %i.awi = shufflevector <8 x i16> %i.awg, <8 x i16> %i.awh, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.awj = bitcast <8 x i16> %i.awi to <4 x i32>  ; 2 uses
  %i.awk = sub <4 x i32> %i.avy, %i.awj
  %i.awl = lshr <4 x i32> %i.awk, %i.adz
  %i.awm = add <4 x i32> %i.awl, %i.awj
  %i.awn = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.awm, <4 x i32> %i.aav) ; 2 uses
  %i.awo = mul <4 x i32> %i.awn, %i.aeb
  %i.awp = sub <4 x i32> %i.avy, %i.awo           ; 4 uses
  %i.awq = bitcast <4 x i32> %i.awp to <2 x i64>
  %i.awr = bitcast <4 x i32> %i.awp to <2 x i64>
  %i.aws = and <2 x i64> %i.awr, splat (i64 4294967295)
  %i.awt = mul nuw <2 x i64> %i.aws, %i.aed
  %i.awu = lshr <2 x i64> %i.awt, splat (i64 32)
  %i.awv = lshr <2 x i64> %i.awq, splat (i64 32)
  %i.aww = mul nuw <2 x i64> %i.awv, %i.aed
  %i.awx = bitcast <2 x i64> %i.awu to <8 x i16>
  %i.awy = bitcast <2 x i64> %i.aww to <8 x i16>
  %i.awz = shufflevector <8 x i16> %i.awx, <8 x i16> %i.awy, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.axa = bitcast <8 x i16> %i.awz to <4 x i32>  ; 2 uses
  %i.axb = sub <4 x i32> %i.awp, %i.axa
  %i.axc = lshr <4 x i32> %i.axb, %i.aee
  %i.axd = add <4 x i32> %i.axc, %i.axa
  %i.axe = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.axd, <4 x i32> %i.abn) ; 2 uses
  %i.axf = mul <4 x i32> %i.axe, %i.aeg
  %i.axg = sub <4 x i32> %i.awp, %i.axf
  %i.axh = mul <4 x i32> %i.awn, %i.aej
  %i.axi = mul <4 x i32> %i.axg, %i.ael
  %i.axj = mul <4 x i32> %i.axe, %i.aen
  %i.axk = add <4 x i32> %i.axh, %i.avr
  %i.axl = add <4 x i32> %i.axk, %i.axj
  %i.axm = add <4 x i32> %i.axl, %i.axi
  %i.axn = load ptr, ptr %0, align 8, !tbaa !28
  %i.axo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.axn, <4 x i32> %i.axm, <4 x i32> splat (i32 -1), i8 1)
  %i.axp = bitcast <4 x i32> %i.axo to <16 x i8>
  %i.axq = add <16 x i8> %i.axp, splat (i8 127)
  %i.axr = shufflevector <16 x i8> %i.axq, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %i.axr, ptr %.14287.i.i, align 1, !tbaa !30
  %i.axs = getelementptr inbounds nuw i8, ptr %.14287.i.i, i64 16 ; 2 uses
  %i.axt = add nuw nsw i32 %.01263286.i.i, 4      ; 3 uses
  %i.axu = or disjoint i32 %i.axt, 3
  %i.axv = icmp slt i32 %i.axu, %5
  br i1 %i.axv, label %bb.r, label %.preheader208.i.i, !llvm.loop !358

.preheader206.i.i:                                ; preds = %bb.s, %.preheader208.i.i
  %.11264.lcssa.i.i = phi i32 [ %.01263.lcssa.i.i, %.preheader208.i.i ], [ %i.ayz, %bb.s ] ; 2 uses
  %.15.lcssa.i.i = phi ptr [ %.14.lcssa.i47.i, %.preheader208.i.i ], [ %i.ayy, %bb.s ] ; 2 uses
  %i.axw = icmp slt i32 %.11264.lcssa.i.i, %5
  br i1 %i.axw, label %.lr.ph298.i.i, label %.loopexit205.i.i

.lr.ph298.i.i:                                    ; preds = %.preheader206.i.i
  %i.axx = sext i32 %i.avq to i64
  br label %bb.t

bb.s:                                             ; preds = %bb.s, %.lr.ph293.i.i
  %.15292.i.i = phi ptr [ %.14.lcssa.i47.i, %.lr.ph293.i.i ], [ %i.ayy, %bb.s ] ; 2 uses
  %.11264291.i.i = phi i32 [ %.01263.lcssa.i.i, %.lr.ph293.i.i ], [ %i.ayz, %bb.s ] ; 2 uses
  %i.axy = add nsw i32 %.11264291.i.i, %4         ; 3 uses
  %i.axz = add nsw i32 %i.axy, 1                  ; 2 uses
  %45 = srem i32 %i.axy, %i.zi                    ; 2 uses
  %46 = srem i32 %i.axz, %i.zi                    ; 2 uses
  %47 = sdiv i32 %45, %6
  %48 = sdiv i32 %46, %6
  %49 = srem i32 %45, %6
  %50 = srem i32 %46, %6
  %51 = mul i32 %47, %.scalar454.i.i
  %52 = mul nsw i32 %49, %8
  %53 = add nsw i32 %52, %51
  %54 = sext i32 %53 to i64
  %55 = insertelement <2 x i32> poison, i32 %i.axy, i64 0
  %56 = insertelement <2 x i32> %55, i32 %i.axz, i64 1
  %57 = sdiv <2 x i32> %56, %23
  %i.aya = sext <2 x i32> %57 to <2 x i64>
  %i.ayb = mul <2 x i64> %21, %i.aya              ; 2 uses
  %i.ayc = mul i32 %48, %.scalar454.i.i
  %i.ayd = mul nsw i32 %50, %8
  %i.aye = add nsw i32 %i.ayd, %i.ayc
  %i.ayf = sext i32 %i.aye to i64
  %i.ayg = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.ayh = extractelement <2 x i64> %i.ayb, i64 0
  %i.ayi = getelementptr i8, ptr %i.ayg, i64 %i.ayh
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 %i.avu
  %i.ayk = getelementptr i8, ptr %i.ayj, i64 %54
  %i.ayl = load i64, ptr %i.ayk, align 1, !tbaa !30
  %i.aym = insertelement <2 x i64> poison, i64 %i.ayl, i64 0
  %i.ayn = extractelement <2 x i64> %i.ayb, i64 1
  %i.ayo = getelementptr i8, ptr %i.ayg, i64 %i.ayn
  %i.ayp = getelementptr i8, ptr %i.ayo, i64 %i.avu
  %i.ayq = getelementptr i8, ptr %i.ayp, i64 %i.ayf
  %i.ayr = load i64, ptr %i.ayq, align 1, !tbaa !30
  %i.ays = insertelement <2 x i64> poison, i64 %i.ayr, i64 0
  %i.ayt = bitcast <2 x i64> %i.aym to <16 x i8>
  %i.ayu = bitcast <2 x i64> %i.ays to <16 x i8>
  %i.ayv = shufflevector <16 x i8> %i.ayt, <16 x i8> %i.ayu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayw = bitcast <16 x i8> %i.ayv to <2 x i64>
  %i.ayx = extractelement <2 x i64> %i.ayw, i64 0
  store i64 %i.ayx, ptr %.15292.i.i, align 1, !tbaa !30
  %i.ayy = getelementptr inbounds nuw i8, ptr %.15292.i.i, i64 8 ; 2 uses
  %i.ayz = add nuw nsw i32 %.11264291.i.i, 2      ; 3 uses
  %i.aza = or disjoint i32 %i.ayz, 1
  %i.azb = icmp slt i32 %i.aza, %5
  br i1 %i.azb, label %bb.s, label %.preheader206.i.i, !llvm.loop !359

bb.t:                                             ; preds = %bb.t, %.lr.ph298.i.i
  %.16297.i.i = phi ptr [ %.15.lcssa.i.i, %.lr.ph298.i.i ], [ %i.bah, %bb.t ] ; 5 uses
  %.21265296.i.i = phi i32 [ %.11264.lcssa.i.i, %.lr.ph298.i.i ], [ %i.bai, %bb.t ] ; 2 uses
  %i.azc = add nsw i32 %.21265296.i.i, %4         ; 2 uses
  %i.azd = sdiv i32 %i.azc, %i.zi
  %i.aze = srem i32 %i.azc, %i.zi                 ; 2 uses
  %i.azf = sdiv i32 %i.aze, %6
  %i.azg = srem i32 %i.aze, %6
  %i.azh = sext i32 %i.azd to i64
  %i.azi = mul i64 %i.m, %i.azh
  %i.azj = add i64 %i.azi, %i.axx
  %i.azk = mul i32 %i.azf, %.scalar454.i.i
  %i.azl = mul nsw i32 %i.azg, %8
  %i.azm = add nsw i32 %i.azl, %i.azk
  %i.azn = sext i32 %i.azm to i64
  %i.azo = add i64 %i.azj, %i.azn                 ; 4 uses
  %i.azp = load ptr, ptr %0, align 8, !tbaa !28
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 %i.azo
  %i.azr = load i8, ptr %i.azq, align 1, !tbaa !30
  store i8 %i.azr, ptr %.16297.i.i, align 1, !tbaa !30
  %i.azs = load ptr, ptr %0, align 8, !tbaa !28
  %i.azt = getelementptr i8, ptr %i.azs, i64 %i.azo
  %i.azu = getelementptr i8, ptr %i.azt, i64 1
  %i.azv = load i8, ptr %i.azu, align 1, !tbaa !30
  %i.azw = getelementptr inbounds nuw i8, ptr %.16297.i.i, i64 1
  store i8 %i.azv, ptr %i.azw, align 1, !tbaa !30
  %i.azx = load ptr, ptr %0, align 8, !tbaa !28
  %i.azy = getelementptr i8, ptr %i.azx, i64 %i.azo
  %i.azz = getelementptr i8, ptr %i.azy, i64 2
  %i.baa = load i8, ptr %i.azz, align 1, !tbaa !30
  %i.bab = getelementptr inbounds nuw i8, ptr %.16297.i.i, i64 2
  store i8 %i.baa, ptr %i.bab, align 1, !tbaa !30
  %i.bac = load ptr, ptr %0, align 8, !tbaa !28
  %i.bad = getelementptr i8, ptr %i.bac, i64 %i.azo
  %i.bae = getelementptr i8, ptr %i.bad, i64 3
  %i.baf = load i8, ptr %i.bae, align 1, !tbaa !30
  %i.bag = getelementptr inbounds nuw i8, ptr %.16297.i.i, i64 3
  store i8 %i.baf, ptr %i.bag, align 1, !tbaa !30
  %i.bah = getelementptr inbounds nuw i8, ptr %.16297.i.i, i64 4 ; 2 uses
  %i.bai = add nuw nsw i32 %.21265296.i.i, 1      ; 2 uses
  %exitcond442.not.i.i = icmp eq i32 %i.bai, %5
  br i1 %exitcond442.not.i.i, label %.loopexit205.i.i, label %bb.t, !llvm.loop !360

.loopexit207.i.i:                                 ; preds = %bb.q
  br i1 %brmerge381.i.i, label %.loopexit205.i.i, label %.lr.ph302.i.i

.lr.ph302.i.i:                                    ; preds = %.loopexit207.i.i
  %i.baj = sext i32 %i.avq to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph302.i.i
  %.18301.i.i = phi ptr [ %.13305.i.i, %.lr.ph302.i.i ], [ %i.bbk, %bb.u ] ; 3 uses
  %.01266300.i.i = phi i32 [ 0, %.lr.ph302.i.i ], [ %i.bbl, %bb.u ] ; 2 uses
  %i.bak = add nsw i32 %.01266300.i.i, %i.aer     ; 2 uses
  %i.bal = sdiv i32 %i.bak, %i.zi
  %i.bam = srem i32 %i.bak, %i.zi                 ; 2 uses
  %i.ban = sdiv i32 %i.bam, %6
  %i.bao = srem i32 %i.bam, %6
  %i.bap = sext i32 %i.bal to i64
  %i.baq = mul i64 %i.m, %i.bap
  %i.bar = add i64 %i.baq, %i.baj
  %i.bas = mul i32 %i.ban, %.scalar454.i.i
  %i.bat = mul nsw i32 %i.bao, %8
  %i.bau = add nsw i32 %i.bat, %i.bas
  %i.bav = sext i32 %i.bau to i64
  %i.baw = add i64 %i.bar, %i.bav
  %i.bax = shl i64 %i.baw, 3
  %i.bay = load ptr, ptr %0, align 8, !tbaa !28
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 %i.bax ; 2 uses
  %i.bba = load <4 x i32>, ptr %i.baz, align 1, !tbaa !30 ; 2 uses
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.baz, i64 16
  %i.bbc = load <4 x i32>, ptr %i.bbb, align 1, !tbaa !30 ; 2 uses
  %i.bbd = shufflevector <4 x i32> %i.bba, <4 x i32> %i.bbc, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bbe = shufflevector <4 x i32> %i.bba, <4 x i32> %i.bbc, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bbf = bitcast <4 x i32> %i.bbd to <16 x i8>
  %i.bbg = add <16 x i8> %i.bbf, splat (i8 127)
  %i.bbh = bitcast <4 x i32> %i.bbe to <16 x i8>
  %i.bbi = add <16 x i8> %i.bbh, splat (i8 127)
  store <16 x i8> %i.bbg, ptr %.18301.i.i, align 1, !tbaa !30
  %i.bbj = getelementptr inbounds nuw i8, ptr %.18301.i.i, i64 16
  store <16 x i8> %i.bbi, ptr %i.bbj, align 1, !tbaa !30
  %i.bbk = getelementptr inbounds nuw i8, ptr %.18301.i.i, i64 32 ; 2 uses
  %i.bbl = add nuw nsw i32 %.01266300.i.i, 1      ; 2 uses
  %exitcond443.not.i.i = icmp eq i32 %i.bbl, %i.aep
  br i1 %exitcond443.not.i.i, label %.loopexit205.i.i, label %bb.u, !llvm.loop !361

bb.v:                                             ; preds = %bb.p
  br i1 %i.adv, label %.preheader215.i.i, label %.loopexit213.i.i

.preheader215.i.i:                                ; preds = %bb.v
  br i1 %i.adw, label %.lr.ph270.i.i, label %.preheader214.i.i

.preheader214.i.i:                                ; preds = %.lr.ph270.i.i, %.preheader215.i.i
  %.01267.lcssa.i.i = phi i32 [ 0, %.preheader215.i.i ], [ %i.beb, %.lr.ph270.i.i ] ; 3 uses
  %.20.lcssa.i.i = phi ptr [ %.13305.i.i, %.preheader215.i.i ], [ %i.bea, %.lr.ph270.i.i ] ; 2 uses
  %i.bbm = or disjoint i32 %.01267.lcssa.i.i, 1
  %i.bbn = icmp slt i32 %i.bbm, %5
  br i1 %i.bbn, label %.lr.ph275.i.i, label %.preheader212.i.i

.lr.ph270.i.i:                                    ; preds = %.preheader215.i.i, %.lr.ph270.i.i
  %.20269.i.i = phi ptr [ %i.bea, %.lr.ph270.i.i ], [ %.13305.i.i, %.preheader215.i.i ] ; 2 uses
  %.01267268.i.i = phi i32 [ %i.beb, %.lr.ph270.i.i ], [ 0, %.preheader215.i.i ] ; 2 uses
  %i.bbo = add nsw i32 %.01267268.i.i, %4
  %i.bbp = insertelement <4 x i32> poison, i32 %i.bbo, i64 0
  %i.bbq = shufflevector <4 x i32> %i.bbp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bbr = add <4 x i32> %i.bbq, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bbs = bitcast <4 x i32> %i.bbr to <2 x i64>
  %i.bbt = bitcast <4 x i32> %i.bbr to <2 x i64>
  %i.bbu = and <2 x i64> %i.bbt, splat (i64 4294967295)
  %i.bbv = mul nuw <2 x i64> %i.bbu, %i.ady
  %i.bbw = lshr <2 x i64> %i.bbv, splat (i64 32)
  %i.bbx = lshr <2 x i64> %i.bbs, splat (i64 32)
  %i.bby = mul nuw <2 x i64> %i.bbx, %i.ady
  %i.bbz = bitcast <2 x i64> %i.bbw to <8 x i16>
  %i.bca = bitcast <2 x i64> %i.bby to <8 x i16>
  %i.bcb = shufflevector <8 x i16> %i.bbz, <8 x i16> %i.bca, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bcc = bitcast <8 x i16> %i.bcb to <4 x i32>  ; 2 uses
  %i.bcd = sub <4 x i32> %i.bbr, %i.bcc
  %i.bce = lshr <4 x i32> %i.bcd, %i.adz
  %i.bcf = add <4 x i32> %i.bce, %i.bcc
  %i.bcg = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bcf, <4 x i32> %i.aav) ; 2 uses
  %i.bch = mul <4 x i32> %i.bcg, %i.aeb
  %i.bci = sub <4 x i32> %i.bbr, %i.bch           ; 4 uses
  %i.bcj = bitcast <4 x i32> %i.bci to <2 x i64>
  %i.bck = bitcast <4 x i32> %i.bci to <2 x i64>
  %i.bcl = and <2 x i64> %i.bck, splat (i64 4294967295)
  %i.bcm = mul nuw <2 x i64> %i.bcl, %i.aed
  %i.bcn = lshr <2 x i64> %i.bcm, splat (i64 32)
  %i.bco = lshr <2 x i64> %i.bcj, splat (i64 32)
  %i.bcp = mul nuw <2 x i64> %i.bco, %i.aed
  %i.bcq = bitcast <2 x i64> %i.bcn to <8 x i16>
  %i.bcr = bitcast <2 x i64> %i.bcp to <8 x i16>
  %i.bcs = shufflevector <8 x i16> %i.bcq, <8 x i16> %i.bcr, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bct = bitcast <8 x i16> %i.bcs to <4 x i32>  ; 2 uses
  %i.bcu = sub <4 x i32> %i.bci, %i.bct
  %i.bcv = lshr <4 x i32> %i.bcu, %i.aee
  %i.bcw = add <4 x i32> %i.bcv, %i.bct
  %i.bcx = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bcw, <4 x i32> %i.abn) ; 2 uses
  %i.bcy = mul <4 x i32> %i.bcx, %i.aeg
  %i.bcz = sub <4 x i32> %i.bci, %i.bcy
  %i.bda = mul <4 x i32> %i.bcg, %i.aej
  %i.bdb = mul <4 x i32> %i.bcz, %i.ael
  %i.bdc = mul <4 x i32> %i.bcx, %i.aen
  %i.bdd = add <4 x i32> %i.bdc, %i.bda
  %i.bde = add <4 x i32> %i.bdd, %i.bdb           ; 4 uses
  %i.bdf = shufflevector <4 x i32> %i.bde, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bdg = add <4 x i32> %i.bdf, %i.avn
  %i.bdh = shufflevector <4 x i32> %i.bde, <4 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bdi = add <4 x i32> %i.bdh, %i.avn
  %i.bdj = shufflevector <4 x i32> %i.bde, <4 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bdk = add <4 x i32> %i.bdj, %i.avn
  %i.bdl = shufflevector <4 x i32> %i.bde, <4 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.bdm = add <4 x i32> %i.bdl, %i.avn
  %i.bdn = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.bdo = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bdn, <4 x i32> %i.bdg, <4 x i32> splat (i32 -1), i8 1)
  %i.bdp = bitcast <4 x i32> %i.bdo to <16 x i8>
  %i.bdq = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bdn, <4 x i32> %i.bdi, <4 x i32> splat (i32 -1), i8 1)
  %i.bdr = bitcast <4 x i32> %i.bdq to <16 x i8>
  %i.bds = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bdn, <4 x i32> %i.bdk, <4 x i32> splat (i32 -1), i8 1)
  %i.bdt = bitcast <4 x i32> %i.bds to <16 x i8>
  %i.bdu = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bdn, <4 x i32> %i.bdm, <4 x i32> splat (i32 -1), i8 1)
  %i.bdv = bitcast <4 x i32> %i.bdu to <16 x i8>
  %i.bdw = shufflevector <16 x i8> %i.bdp, <16 x i8> %i.bdr, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdx = shufflevector <16 x i8> %i.bdt, <16 x i8> %i.bdv, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bdy = shufflevector <16 x i8> %i.bdw, <16 x i8> %i.bdx, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 2, i32 3, i32 18, i32 19, i32 4, i32 5, i32 20, i32 21, i32 6, i32 7, i32 22, i32 23>
  %i.bdz = add <16 x i8> %i.bdy, splat (i8 127)
  store <16 x i8> %i.bdz, ptr %.20269.i.i, align 1, !tbaa !30
  %i.bea = getelementptr inbounds nuw i8, ptr %.20269.i.i, i64 16 ; 2 uses
  %i.beb = add nuw nsw i32 %.01267268.i.i, 4      ; 3 uses
  %i.bec = or disjoint i32 %i.beb, 3
  %i.bed = icmp slt i32 %i.bec, %5
  br i1 %i.bed, label %.lr.ph270.i.i, label %.preheader214.i.i, !llvm.loop !362

.preheader212.i.i:                                ; preds = %.lr.ph275.i.i, %.preheader214.i.i
  %.11268.lcssa.i.i = phi i32 [ %.01267.lcssa.i.i, %.preheader214.i.i ], [ %i.bfe, %.lr.ph275.i.i ] ; 2 uses
  %.21.lcssa.i.i = phi ptr [ %.20.lcssa.i.i, %.preheader214.i.i ], [ %i.bfd, %.lr.ph275.i.i ] ; 2 uses
  %i.bee = icmp slt i32 %.11268.lcssa.i.i, %5
  br i1 %i.bee, label %.lr.ph280.i.i, label %.loopexit205.i.i

.lr.ph275.i.i:                                    ; preds = %.preheader214.i.i, %.lr.ph275.i.i
  %.21274.i.i = phi ptr [ %i.bfd, %.lr.ph275.i.i ], [ %.20.lcssa.i.i, %.preheader214.i.i ] ; 2 uses
  %.11268273.i.i = phi i32 [ %i.bfe, %.lr.ph275.i.i ], [ %.01267.lcssa.i.i, %.preheader214.i.i ] ; 2 uses
  %i.bef = add nsw i32 %.11268273.i.i, %4         ; 3 uses
  %i.beg = add nsw i32 %i.bef, 1                  ; 2 uses
  %i.beh = insertelement <2 x i32> poison, i32 %i.bef, i64 0
  %i.bei = insertelement <2 x i32> %i.beh, i32 %i.beg, i64 1
  %i.bej = srem <2 x i32> %i.bei, %i.aex          ; 3 uses
  %i.bek = srem <2 x i32> %i.bej, %i.aez
  %58 = mul nsw <2 x i32> %i.bek, %18             ; 2 uses
  %i.bel = insertelement <2 x i32> %i.bej, i32 %i.bef, i64 1
  %i.bem = sdiv <2 x i32> %i.bel, %i.afb
  %i.ben = mul <2 x i32> %i.bem, %i.afd           ; 2 uses
  %shift414 = shufflevector <2 x i32> %i.ben, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop415 = add <2 x i32> %i.ben, %shift414
  %foldExtExtBinop417 = add <2 x i32> %foldExtExtBinop415, %58
  %i.beo = shufflevector <2 x i32> %foldExtExtBinop417, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.bep = add <4 x i32> %i.beo, %i.avn
  %i.beq = shufflevector <2 x i32> %i.bej, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.ber = insertelement <2 x i32> %i.beq, i32 %i.beg, i64 1
  %i.bes = sdiv <2 x i32> %i.ber, %i.afb
  %i.bet = mul <2 x i32> %i.bes, %i.afd           ; 2 uses
  %59 = shufflevector <2 x i32> %i.bet, <2 x i32> poison, <4 x i32> zeroinitializer
  %60 = shufflevector <2 x i32> %i.bet, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %61 = add <4 x i32> %59, %60
  %62 = shufflevector <2 x i32> %58, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %63 = add <4 x i32> %61, %62
  %i.beu = add <4 x i32> %63, %i.avn
  %i.bev = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bew = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bev, <4 x i32> %i.bep, <4 x i32> splat (i32 -1), i8 1)
  %i.bex = bitcast <4 x i32> %i.bew to <16 x i8>
  %i.bey = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bev, <4 x i32> %i.beu, <4 x i32> splat (i32 -1), i8 1)
  %i.bez = bitcast <4 x i32> %i.bey to <16 x i8>
  %i.bfa = shufflevector <16 x i8> %i.bex, <16 x i8> %i.bez, <16 x i32> <i32 0, i32 16, i32 4, i32 20, i32 8, i32 24, i32 12, i32 28, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfb = bitcast <16 x i8> %i.bfa to <2 x i64>
  %i.bfc = extractelement <2 x i64> %i.bfb, i64 0
  store i64 %i.bfc, ptr %.21274.i.i, align 1, !tbaa !30
  %i.bfd = getelementptr inbounds nuw i8, ptr %.21274.i.i, i64 8 ; 2 uses
  %i.bfe = add nuw nsw i32 %.11268273.i.i, 2      ; 3 uses
  %i.bff = or disjoint i32 %i.bfe, 1
  %i.bfg = icmp slt i32 %i.bff, %5
  br i1 %i.bfg, label %.lr.ph275.i.i, label %.preheader212.i.i, !llvm.loop !363

.lr.ph280.i.i:                                    ; preds = %.preheader212.i.i, %.lr.ph280.i.i
  %.22279.i.i = phi ptr [ %i.bga, %.lr.ph280.i.i ], [ %.21.lcssa.i.i, %.preheader212.i.i ] ; 2 uses
  %.21269278.i.i = phi i32 [ %i.bgb, %.lr.ph280.i.i ], [ %.11268.lcssa.i.i, %.preheader212.i.i ] ; 2 uses
  %i.bfh = add nsw i32 %.21269278.i.i, %4         ; 2 uses
  %i.bfi = srem i32 %i.bfh, %i.zi                 ; 2 uses
  %i.bfj = srem i32 %i.bfi, %6
  %i.bfk = mul nsw i32 %i.bfj, %8
  %i.bfl = insertelement <2 x i32> poison, i32 %i.bfi, i64 0
  %i.bfm = insertelement <2 x i32> %i.bfl, i32 %i.bfh, i64 1
  %i.bfn = sdiv <2 x i32> %i.bfm, %i.aff
  %i.bfo = mul <2 x i32> %i.bfn, %19
  %i.bfp = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bfo)
  %i.bfq = add i32 %i.bfp, %i.bfk
  %i.bfr = insertelement <4 x i32> poison, i32 %i.bfq, i64 0
  %i.bfs = shufflevector <4 x i32> %i.bfr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bft = add <4 x i32> %i.bfs, %i.avn
  %i.bfu = load ptr, ptr %0, align 8, !tbaa !28
  %i.bfv = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bfu, <4 x i32> %i.bft, <4 x i32> splat (i32 -1), i8 1)
  %i.bfw = bitcast <4 x i32> %i.bfv to <16 x i8>
  %i.bfx = shufflevector <16 x i8> %i.bfw, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bfy = bitcast <16 x i8> %i.bfx to <4 x float>
  %i.bfz = extractelement <4 x float> %i.bfy, i64 0
  store float %i.bfz, ptr %.22279.i.i, align 1, !tbaa !30
  %i.bga = getelementptr inbounds nuw i8, ptr %.22279.i.i, i64 4 ; 2 uses
  %i.bgb = add nuw nsw i32 %.21269278.i.i, 1      ; 2 uses
  %exitcond440.not.i.i = icmp eq i32 %i.bgb, %5
  br i1 %exitcond440.not.i.i, label %.loopexit205.i.i, label %.lr.ph280.i.i, !llvm.loop !364

.loopexit213.i.i:                                 ; preds = %bb.v
  br i1 %brmerge381.i.i, label %.loopexit205.i.i, label %.lr.ph284.i.i

.lr.ph284.i.i:                                    ; preds = %.loopexit213.i.i, %.lr.ph284.i.i
  %.24283.i.i = phi ptr [ %i.bgy, %.lr.ph284.i.i ], [ %.13305.i.i, %.loopexit213.i.i ] ; 2 uses
  %.01270282.i.i = phi i32 [ %i.bgz, %.lr.ph284.i.i ], [ 0, %.loopexit213.i.i ] ; 2 uses
  %i.bgc = add nsw i32 %.01270282.i.i, %i.aer     ; 2 uses
  %i.bgd = srem i32 %i.bgc, %i.zi                 ; 2 uses
  %i.bge = srem i32 %i.bgd, %6
  %i.bgf = mul nsw i32 %i.bge, %8
  %i.bgg = insertelement <2 x i32> poison, i32 %i.bgd, i64 0
  %i.bgh = insertelement <2 x i32> %i.bgg, i32 %i.bgc, i64 1
  %i.bgi = sdiv <2 x i32> %i.bgh, %i.aet
  %i.bgj = mul <2 x i32> %i.bgi, %i.aev
  %i.bgk = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.bgj)
  %i.bgl = add i32 %i.bgk, %i.bgf
  %i.bgm = insertelement <4 x i32> poison, i32 %i.bgl, i64 0
  %i.bgn = shufflevector <4 x i32> %i.bgm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bgo = add <4 x i32> %i.bgn, %i.avn
  %i.bgp = shl <4 x i32> %i.bgo, splat (i32 3)
  %i.bgq = load ptr, ptr %0, align 8, !tbaa !28
  %i.bgr = tail call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %i.bgq, <4 x i32> %i.bgp, <4 x i64> splat (i64 -1), i8 1)
  %i.bgs = bitcast <4 x i64> %i.bgr to <8 x i32>
  %i.bgt = shufflevector <8 x i32> %i.bgs, <8 x i32> poison, <8 x i32> <i32 0, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7>
  %i.bgu = bitcast <8 x i32> %i.bgt to <4 x i64>
  %i.bgv = shufflevector <4 x i64> %i.bgu, <4 x i64> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.bgw = bitcast <4 x i64> %i.bgv to <32 x i8>
  %i.bgx = add <32 x i8> %i.bgw, splat (i8 127)
  store <32 x i8> %i.bgx, ptr %.24283.i.i, align 1, !tbaa !30
  %i.bgy = getelementptr inbounds nuw i8, ptr %.24283.i.i, i64 32 ; 2 uses
  %i.bgz = add nuw nsw i32 %.01270282.i.i, 1      ; 2 uses
  %exitcond441.not.i.i = icmp eq i32 %i.bgz, %i.aep
  br i1 %exitcond441.not.i.i, label %.loopexit205.i.i, label %.lr.ph284.i.i, !llvm.loop !365

.loopexit205.i.i:                                 ; preds = %.lr.ph284.i.i, %.lr.ph280.i.i, %bb.u, %bb.t, %.loopexit213.i.i, %.preheader212.i.i, %.loopexit207.i.i, %.preheader206.i.i
  %.25.i.i = phi ptr [ %.13305.i.i, %.loopexit213.i.i ], [ %.15.lcssa.i.i, %.preheader206.i.i ], [ %.13305.i.i, %.loopexit207.i.i ], [ %i.bbk, %bb.u ], [ %i.bah, %bb.t ], [ %.21.lcssa.i.i, %.preheader212.i.i ], [ %i.bga, %.lr.ph280.i.i ], [ %i.bgy, %.lr.ph284.i.i ] ; 2 uses
  %i.bha = add nuw nsw i32 %.11252304.i.i, 4      ; 3 uses
  %i.bhb = or disjoint i32 %i.bha, 3
  %i.bhc = icmp slt i32 %i.bhb, %3
  br i1 %i.bhc, label %bb.p, label %.preheader203.i.i, !llvm.loop !366

.preheader190.i.i:                                ; preds = %.loopexit192.i.i, %.preheader203.i.i
  %.21253.lcssa.i.i = phi i32 [ %.11252.lcssa.i.i, %.preheader203.i.i ], [ %i.bvn, %.loopexit192.i.i ] ; 2 uses
  %.26.lcssa.i.i = phi ptr [ %.13.lcssa.i.i, %.preheader203.i.i ], [ %.39.i.i, %.loopexit192.i.i ]
  %i.bhd = icmp slt i32 %.21253.lcssa.i.i, %3
  br i1 %i.bhd, label %.lr.ph371.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit

.lr.ph371.i.i:                                    ; preds = %.preheader190.i.i
  %i.bhe = mul i32 %i.za, %11
  %i.bhf = icmp eq i32 %i.zc, 1
  %i.bhg = icmp sgt i32 %5, 3
  %i.bhh = shufflevector <4 x i64> %i.aat, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bhi = and <2 x i64> %i.bhh, splat (i64 4294967295) ; 2 uses
  %i.bhj = shufflevector <4 x i32> %i.aau, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhk = insertelement <4 x i32> poison, i32 %i.zi, i64 0
  %i.bhl = shufflevector <4 x i32> %i.bhk, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhm = shufflevector <4 x i64> %i.abl, <4 x i64> poison, <2 x i32> <i32 0, i32 1>
  %i.bhn = and <2 x i64> %i.bhm, splat (i64 4294967295) ; 2 uses
  %i.bho = shufflevector <4 x i32> %i.abm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhp = insertelement <4 x i32> poison, i32 %6, i64 0
  %i.bhq = shufflevector <4 x i32> %i.bhp, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhr = trunc i64 %i.m to i32
  %i.bhs = insertelement <4 x i32> poison, i32 %i.bhr, i64 0
  %i.bht = shufflevector <4 x i32> %i.bhs, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhu = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.bhv = shufflevector <4 x i32> %i.bhu, <4 x i32> poison, <4 x i32> zeroinitializer
  %.scalar458.i.i = mul i32 %i.za, %9             ; 5 uses
  %i.bhw = insertelement <4 x i32> poison, i32 %.scalar458.i.i, i64 0
  %i.bhx = shufflevector <4 x i32> %i.bhw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bhy = icmp ne i32 %i.zc, 8
  %i.bhz = lshr i32 %5, 3
  %i.bia = icmp slt i32 %5, 8
  %i.bib = sdiv i32 %4, 8
  %brmerge388.i.i = or i1 %i.bia, %i.bhy
  %64 = insertelement <2 x i64> poison, i64 %i.m, i64 0
  %65 = shufflevector <2 x i64> %64, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bic = insertelement <2 x i32> poison, i32 %i.zi, i64 0
  %i.bid = shufflevector <2 x i32> %i.bic, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.af

bb.w:                                             ; preds = %.loopexit192.i.i, %.lr.ph348.i.i
  %.26347.i.i = phi ptr [ %.13.lcssa.i.i, %.lr.ph348.i.i ], [ %.39.i.i, %.loopexit192.i.i ] ; 8 uses
  %.21253346.i.i = phi i32 [ %.11252.lcssa.i.i, %.lr.ph348.i.i ], [ %i.bvn, %.loopexit192.i.i ] ; 2 uses
  %i.bie = add nsw i32 %.21253346.i.i, %2         ; 2 uses
  %i.bif = add nsw i32 %i.bie, 1
  %i.big = insertelement <2 x i32> poison, i32 %i.bie, i64 0
  %i.bih = insertelement <2 x i32> %i.big, i32 %i.bif, i64 1
  %.frozen.a = freeze <2 x i32> %i.bih            ; 2 uses
  %.frozen632 = freeze <2 x i32> %i.aub           ; 2 uses
  %i.bii = sdiv <2 x i32> %.frozen.a, %.frozen632 ; 2 uses
  %i.bij = mul <2 x i32> %i.bii, %.frozen632
  %.decomposed.a = sub <2 x i32> %.frozen.a, %i.bij
  %i.bik = mul nsw <2 x i32> %.decomposed.a, %i.atz
  %i.bil = mul <2 x i32> %i.bii, %i.aud           ; 3 uses
  %i.bim = add nsw <2 x i32> %i.bik, %i.bil       ; 11 uses
  %shift431 = shufflevector <2 x i32> %i.bil, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.bin = icmp eq <2 x i32> %i.bil, %shift431
  %i.bio = extractelement <2 x i1> %i.bin, i64 0
  %or.cond5.i.i = and i1 %i.h, %i.bio
  br i1 %or.cond5.i.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  br i1 %i.asz, label %.preheader196.i.i, label %.loopexit194.i.i

.preheader196.i.i:                                ; preds = %bb.x
  br i1 %i.ata, label %.lr.ph330.i.i, label %.preheader195.i.i

.lr.ph330.i.i:                                    ; preds = %.preheader196.i.i
  %i.bip = shufflevector <2 x i32> %i.bim, <2 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.y

.preheader195.i.i:                                ; preds = %bb.y, %.preheader196.i.i
  %.01271.lcssa.i.i = phi i32 [ 0, %.preheader196.i.i ], [ %i.bku, %bb.y ] ; 3 uses
  %.27.lcssa.i.i = phi ptr [ %.26347.i.i, %.preheader196.i.i ], [ %i.bkt, %bb.y ] ; 2 uses
  %i.biq = or disjoint i32 %.01271.lcssa.i.i, 1
  %i.bir = icmp slt i32 %i.biq, %5
  br i1 %i.bir, label %.lr.ph335.i.i, label %.preheader193.i.i

.lr.ph335.i.i:                                    ; preds = %.preheader195.i.i
  %i.bis = extractelement <2 x i32> %i.bim, i64 0
  %i.bit = sext i32 %i.bis to i64                 ; 2 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph330.i.i
  %.27329.i.i = phi ptr [ %.26347.i.i, %.lr.ph330.i.i ], [ %i.bkt, %bb.y ] ; 2 uses
  %.01271328.i.i = phi i32 [ 0, %.lr.ph330.i.i ], [ %i.bku, %bb.y ] ; 2 uses
  %i.biu = add nsw i32 %.01271328.i.i, %4
  %i.biv = insertelement <4 x i32> poison, i32 %i.biu, i64 0
  %i.biw = shufflevector <4 x i32> %i.biv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bix = add <4 x i32> %i.biw, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.biy = bitcast <4 x i32> %i.bix to <2 x i64>
  %i.biz = bitcast <4 x i32> %i.bix to <2 x i64>
  %i.bja = and <2 x i64> %i.biz, splat (i64 4294967295)
  %i.bjb = mul nuw <2 x i64> %i.bja, %i.atc
  %i.bjc = lshr <2 x i64> %i.bjb, splat (i64 32)
  %i.bjd = lshr <2 x i64> %i.biy, splat (i64 32)
  %i.bje = mul nuw <2 x i64> %i.bjd, %i.atc
  %i.bjf = bitcast <2 x i64> %i.bjc to <8 x i16>
  %i.bjg = bitcast <2 x i64> %i.bje to <8 x i16>
  %i.bjh = shufflevector <8 x i16> %i.bjf, <8 x i16> %i.bjg, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bji = bitcast <8 x i16> %i.bjh to <4 x i32>  ; 2 uses
  %i.bjj = sub <4 x i32> %i.bix, %i.bji
  %i.bjk = lshr <4 x i32> %i.bjj, %i.atd
  %i.bjl = add <4 x i32> %i.bjk, %i.bji
  %i.bjm = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bjl, <4 x i32> %i.aav) ; 2 uses
  %i.bjn = mul <4 x i32> %i.bjm, %i.atf
  %i.bjo = sub <4 x i32> %i.bix, %i.bjn           ; 4 uses
  %i.bjp = bitcast <4 x i32> %i.bjo to <2 x i64>
  %i.bjq = bitcast <4 x i32> %i.bjo to <2 x i64>
  %i.bjr = and <2 x i64> %i.bjq, splat (i64 4294967295)
  %i.bjs = mul nuw <2 x i64> %i.bjr, %i.ath
  %i.bjt = lshr <2 x i64> %i.bjs, splat (i64 32)
  %i.bju = lshr <2 x i64> %i.bjp, splat (i64 32)
  %i.bjv = mul nuw <2 x i64> %i.bju, %i.ath
  %i.bjw = bitcast <2 x i64> %i.bjt to <8 x i16>
  %i.bjx = bitcast <2 x i64> %i.bjv to <8 x i16>
  %i.bjy = shufflevector <8 x i16> %i.bjw, <8 x i16> %i.bjx, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bjz = bitcast <8 x i16> %i.bjy to <4 x i32>  ; 2 uses
  %i.bka = sub <4 x i32> %i.bjo, %i.bjz
  %i.bkb = lshr <4 x i32> %i.bka, %i.ati
  %i.bkc = add <4 x i32> %i.bkb, %i.bjz
  %i.bkd = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bkc, <4 x i32> %i.abn) ; 2 uses
  %i.bke = mul <4 x i32> %i.bkd, %i.atk
  %i.bkf = sub <4 x i32> %i.bjo, %i.bke
  %i.bkg = mul <4 x i32> %i.bjm, %i.atn
  %i.bkh = mul <4 x i32> %i.bkf, %i.atp
  %i.bki = mul <4 x i32> %i.bkd, %i.atr
  %i.bkj = add <4 x i32> %i.bkg, %i.bip
  %i.bkk = add <4 x i32> %i.bkj, %i.bki
  %i.bkl = add <4 x i32> %i.bkk, %i.bkh
  %i.bkm = load ptr, ptr %0, align 8, !tbaa !28
  %i.bkn = tail call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %i.bkm, <4 x i32> %i.bkl, <4 x i32> splat (i32 -1), i8 1)
  %i.bko = bitcast <4 x i32> %i.bkn to <16 x i8>
  %i.bkp = add <16 x i8> %i.bko, <i8 127, i8 127, i8 poison, i8 poison, i8 127, i8 127, i8 poison, i8 poison, i8 127, i8 127, i8 poison, i8 poison, i8 127, i8 127, i8 poison, i8 poison>
  %i.bkq = shufflevector <16 x i8> %i.bkp, <16 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bkr = bitcast <16 x i8> %i.bkq to <2 x i64>
  %i.bks = extractelement <2 x i64> %i.bkr, i64 0
  store i64 %i.bks, ptr %.27329.i.i, align 1, !tbaa !30
  %i.bkt = getelementptr inbounds nuw i8, ptr %.27329.i.i, i64 8 ; 2 uses
  %i.bku = add nuw nsw i32 %.01271328.i.i, 4      ; 3 uses
  %i.bkv = or disjoint i32 %i.bku, 3
  %i.bkw = icmp slt i32 %i.bkv, %5
  br i1 %i.bkw, label %bb.y, label %.preheader195.i.i, !llvm.loop !367

.preheader193.i.i:                                ; preds = %bb.z, %.preheader195.i.i
  %.11272.lcssa.i.i = phi i32 [ %.01271.lcssa.i.i, %.preheader195.i.i ], [ %i.bmb, %bb.z ] ; 2 uses
  %.28.lcssa.i.i = phi ptr [ %.27.lcssa.i.i, %.preheader195.i.i ], [ %i.bma, %bb.z ] ; 2 uses
  %i.bkx = icmp slt i32 %.11272.lcssa.i.i, %5
  br i1 %i.bkx, label %.lr.ph340.i.i, label %.loopexit192.i.i

.lr.ph340.i.i:                                    ; preds = %.preheader193.i.i
  %i.bky = extractelement <2 x i32> %i.bim, i64 0
  %i.bkz = sext i32 %i.bky to i64
  br label %bb.aa

bb.z:                                             ; preds = %bb.z, %.lr.ph335.i.i
  %.28334.i.i = phi ptr [ %.27.lcssa.i.i, %.lr.ph335.i.i ], [ %i.bma, %bb.z ] ; 5 uses
  %.11272333.i.i = phi i32 [ %.01271.lcssa.i.i, %.lr.ph335.i.i ], [ %i.bmb, %bb.z ] ; 2 uses
  %i.bla = add nsw i32 %.11272333.i.i, %4         ; 3 uses
  %i.blb = add nsw i32 %i.bla, 1                  ; 2 uses
  %66 = srem i32 %i.bla, %i.zi                    ; 2 uses
  %67 = srem i32 %i.blb, %i.zi                    ; 2 uses
  %68 = sdiv i32 %66, %6
  %69 = sdiv i32 %67, %6
  %70 = srem i32 %66, %6
  %71 = srem i32 %67, %6
  %72 = mul i32 %68, %.scalar456.i.i
  %73 = mul nsw i32 %70, %8
  %74 = add nsw i32 %73, %72
  %75 = sext i32 %74 to i64
  %76 = insertelement <2 x i32> poison, i32 %i.bla, i64 0
  %77 = insertelement <2 x i32> %76, i32 %i.blb, i64 1
  %78 = sdiv <2 x i32> %77, %i.aup
  %i.blc = sext <2 x i32> %78 to <2 x i64>
  %i.bld = mul <2 x i64> %44, %i.blc              ; 2 uses
  %i.ble = mul i32 %69, %.scalar456.i.i
  %i.blf = mul nsw i32 %71, %8
  %i.blg = add nsw i32 %i.blf, %i.ble
  %i.blh = sext i32 %i.blg to i64
  %i.bli = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.blj = extractelement <2 x i64> %i.bld, i64 0
  %i.blk = getelementptr i8, ptr %i.bli, i64 %i.blj
  %i.bll = getelementptr i8, ptr %i.blk, i64 %i.bit
  %i.blm = getelementptr i8, ptr %i.bll, i64 %75  ; 2 uses
  %i.bln = extractelement <2 x i64> %i.bld, i64 1
  %i.blo = getelementptr i8, ptr %i.bli, i64 %i.bln
  %i.blp = getelementptr i8, ptr %i.blo, i64 %i.bit
  %i.blq = getelementptr i8, ptr %i.blp, i64 %i.blh ; 2 uses
  %i.blr = load i8, ptr %i.blm, align 1, !tbaa !30
  store i8 %i.blr, ptr %.28334.i.i, align 1, !tbaa !30
  %i.bls = load i8, ptr %i.blq, align 1, !tbaa !30
  %i.blt = getelementptr inbounds nuw i8, ptr %.28334.i.i, i64 1
  store i8 %i.bls, ptr %i.blt, align 1, !tbaa !30
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blm, i64 1
  %i.blv = load i8, ptr %i.blu, align 1, !tbaa !30
  %i.blw = getelementptr inbounds nuw i8, ptr %.28334.i.i, i64 2
  store i8 %i.blv, ptr %i.blw, align 1, !tbaa !30
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blq, i64 1
  %i.bly = load i8, ptr %i.blx, align 1, !tbaa !30
  %i.blz = getelementptr inbounds nuw i8, ptr %.28334.i.i, i64 3
  store i8 %i.bly, ptr %i.blz, align 1, !tbaa !30
  %i.bma = getelementptr inbounds nuw i8, ptr %.28334.i.i, i64 4 ; 2 uses
  %i.bmb = add nuw nsw i32 %.11272333.i.i, 2      ; 3 uses
  %i.bmc = or disjoint i32 %i.bmb, 1
  %i.bmd = icmp slt i32 %i.bmc, %5
  br i1 %i.bmd, label %bb.z, label %.preheader193.i.i, !llvm.loop !368

bb.aa:                                            ; preds = %bb.aa, %.lr.ph340.i.i
  %.29339.i.i = phi ptr [ %.28.lcssa.i.i, %.lr.ph340.i.i ], [ %i.bmx, %bb.aa ] ; 3 uses
  %.21273338.i.i = phi i32 [ %.11272.lcssa.i.i, %.lr.ph340.i.i ], [ %i.bmy, %bb.aa ] ; 2 uses
  %i.bme = add nsw i32 %.21273338.i.i, %4         ; 2 uses
  %i.bmf = sdiv i32 %i.bme, %i.zi
  %i.bmg = srem i32 %i.bme, %i.zi                 ; 2 uses
  %i.bmh = sdiv i32 %i.bmg, %6
  %i.bmi = srem i32 %i.bmg, %6
  %i.bmj = sext i32 %i.bmf to i64
  %i.bmk = mul i64 %i.m, %i.bmj
  %i.bml = mul i32 %i.bmh, %.scalar456.i.i
  %i.bmm = mul nsw i32 %i.bmi, %8
  %i.bmn = add nsw i32 %i.bmm, %i.bml
  %i.bmo = sext i32 %i.bmn to i64
  %i.bmp = load ptr, ptr %0, align 8, !tbaa !28
  %i.bmq = getelementptr i8, ptr %i.bmp, i64 %i.bmk
  %i.bmr = getelementptr i8, ptr %i.bmq, i64 %i.bkz
  %i.bms = getelementptr i8, ptr %i.bmr, i64 %i.bmo ; 2 uses
  %i.bmt = load i8, ptr %i.bms, align 1, !tbaa !30
  store i8 %i.bmt, ptr %.29339.i.i, align 1, !tbaa !30
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bms, i64 1
  %i.bmv = load i8, ptr %i.bmu, align 1, !tbaa !30
  %i.bmw = getelementptr inbounds nuw i8, ptr %.29339.i.i, i64 1
  store i8 %i.bmv, ptr %i.bmw, align 1, !tbaa !30
  %i.bmx = getelementptr inbounds nuw i8, ptr %.29339.i.i, i64 2 ; 2 uses
  %i.bmy = add nuw nsw i32 %.21273338.i.i, 1      ; 2 uses
  %exitcond446.not.i.i = icmp eq i32 %i.bmy, %5
  br i1 %exitcond446.not.i.i, label %.loopexit192.i.i, label %bb.aa, !llvm.loop !369

.loopexit194.i.i:                                 ; preds = %bb.x
  br i1 %brmerge384.i.i, label %.loopexit192.i.i, label %.lr.ph344.i.i

.lr.ph344.i.i:                                    ; preds = %.loopexit194.i.i
  %i.bmz = extractelement <2 x i32> %i.bim, i64 0
  %i.bna = sext i32 %i.bmz to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph344.i.i
  %.31343.i.i = phi ptr [ %.26347.i.i, %.lr.ph344.i.i ], [ %i.bnu, %bb.ab ] ; 2 uses
  %.01274342.i.i = phi i32 [ 0, %.lr.ph344.i.i ], [ %i.bnv, %bb.ab ] ; 2 uses
  %i.bnb = add nsw i32 %.01274342.i.i, %i.atu     ; 2 uses
  %i.bnc = sdiv i32 %i.bnb, %i.zi
  %i.bnd = srem i32 %i.bnb, %i.zi                 ; 2 uses
  %i.bne = sdiv i32 %i.bnd, %6
  %i.bnf = srem i32 %i.bnd, %6
  %i.bng = sext i32 %i.bnc to i64
  %i.bnh = mul i64 %i.m, %i.bng
  %i.bni = add i64 %i.bnh, %i.bna
  %i.bnj = mul i32 %i.bne, %.scalar456.i.i
  %i.bnk = mul nsw i32 %i.bnf, %8
  %i.bnl = add nsw i32 %i.bnk, %i.bnj
  %i.bnm = sext i32 %i.bnl to i64
  %i.bnn = add i64 %i.bni, %i.bnm
  %i.bno = shl i64 %i.bnn, 3
  %i.bnp = load ptr, ptr %0, align 8, !tbaa !28
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 %i.bno
  %i.bnr = load <16 x i8>, ptr %i.bnq, align 1, !tbaa !30
  %i.bns = add <16 x i8> %i.bnr, splat (i8 127)
  %i.bnt = shufflevector <16 x i8> %i.bns, <16 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.bnt, ptr %.31343.i.i, align 1, !tbaa !30
  %i.bnu = getelementptr inbounds nuw i8, ptr %.31343.i.i, i64 16 ; 2 uses
  %i.bnv = add nuw nsw i32 %.01274342.i.i, 1      ; 2 uses
  %exitcond447.not.i.i = icmp eq i32 %i.bnv, %i.att
  br i1 %exitcond447.not.i.i, label %.loopexit192.i.i, label %bb.ab, !llvm.loop !370

bb.ac:                                            ; preds = %bb.w
  br i1 %i.asz, label %.preheader202.i.i, label %.loopexit200.i.i

.preheader202.i.i:                                ; preds = %bb.ac
  br i1 %i.ata, label %.lr.ph311.i.i.preheader, label %.preheader201.i.i

.lr.ph311.i.i.preheader:                          ; preds = %.preheader202.i.i
  %i.bnw = extractelement <2 x i32> %i.bim, i64 0 ; 4 uses
  %i.bnx = extractelement <2 x i32> %i.bim, i64 1 ; 4 uses
  br label %.lr.ph311.i.i

.preheader201.i.i:                                ; preds = %.lr.ph311.i.i, %.preheader202.i.i
  %.01275.lcssa.i.i = phi i32 [ 0, %.preheader202.i.i ], [ %i.brp, %.lr.ph311.i.i ] ; 3 uses
  %.33.lcssa.i.i = phi ptr [ %.26347.i.i, %.preheader202.i.i ], [ %i.bro, %.lr.ph311.i.i ] ; 2 uses
  %i.bny = or disjoint i32 %.01275.lcssa.i.i, 1
  %i.bnz = icmp slt i32 %i.bny, %5
  br i1 %i.bnz, label %.lr.ph316.i.i.preheader, label %.preheader199.i.i

.lr.ph316.i.i.preheader:                          ; preds = %.preheader201.i.i
  %i.boa = shufflevector <2 x i32> %i.bim, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %.lr.ph316.i.i

.lr.ph311.i.i:                                    ; preds = %.lr.ph311.i.i.preheader, %.lr.ph311.i.i
  %.33310.i.i = phi ptr [ %i.bro, %.lr.ph311.i.i ], [ %.26347.i.i, %.lr.ph311.i.i.preheader ] ; 9 uses
  %.01275309.i.i = phi i32 [ %i.brp, %.lr.ph311.i.i ], [ 0, %.lr.ph311.i.i.preheader ] ; 2 uses
  %i.bob = add nsw i32 %.01275309.i.i, %4
  %i.boc = insertelement <4 x i32> poison, i32 %i.bob, i64 0
  %i.bod = shufflevector <4 x i32> %i.boc, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.boe = add <4 x i32> %i.bod, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bof = bitcast <4 x i32> %i.boe to <2 x i64>
  %i.bog = bitcast <4 x i32> %i.boe to <2 x i64>
  %i.boh = and <2 x i64> %i.bog, splat (i64 4294967295)
  %i.boi = mul nuw <2 x i64> %i.boh, %i.atc
  %i.boj = lshr <2 x i64> %i.boi, splat (i64 32)
  %i.bok = lshr <2 x i64> %i.bof, splat (i64 32)
  %i.bol = mul nuw <2 x i64> %i.bok, %i.atc
  %i.bom = bitcast <2 x i64> %i.boj to <8 x i16>
  %i.bon = bitcast <2 x i64> %i.bol to <8 x i16>
  %i.boo = shufflevector <8 x i16> %i.bom, <8 x i16> %i.bon, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bop = bitcast <8 x i16> %i.boo to <4 x i32>  ; 2 uses
  %i.boq = sub <4 x i32> %i.boe, %i.bop
  %i.bor = lshr <4 x i32> %i.boq, %i.atd
  %i.bos = add <4 x i32> %i.bor, %i.bop
  %i.bot = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bos, <4 x i32> %i.aav) ; 2 uses
  %i.bou = mul <4 x i32> %i.bot, %i.atf
  %i.bov = sub <4 x i32> %i.boe, %i.bou           ; 4 uses
  %i.bow = bitcast <4 x i32> %i.bov to <2 x i64>
  %i.box = bitcast <4 x i32> %i.bov to <2 x i64>
  %i.boy = and <2 x i64> %i.box, splat (i64 4294967295)
  %i.boz = mul nuw <2 x i64> %i.boy, %i.ath
  %i.bpa = lshr <2 x i64> %i.boz, splat (i64 32)
  %i.bpb = lshr <2 x i64> %i.bow, splat (i64 32)
  %i.bpc = mul nuw <2 x i64> %i.bpb, %i.ath
  %i.bpd = bitcast <2 x i64> %i.bpa to <8 x i16>
  %i.bpe = bitcast <2 x i64> %i.bpc to <8 x i16>
  %i.bpf = shufflevector <8 x i16> %i.bpd, <8 x i16> %i.bpe, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bpg = bitcast <8 x i16> %i.bpf to <4 x i32>  ; 2 uses
  %i.bph = sub <4 x i32> %i.bov, %i.bpg
  %i.bpi = lshr <4 x i32> %i.bph, %i.ati
  %i.bpj = add <4 x i32> %i.bpi, %i.bpg
  %i.bpk = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bpj, <4 x i32> %i.abn) ; 2 uses
  %i.bpl = mul <4 x i32> %i.bpk, %i.atk
  %i.bpm = sub <4 x i32> %i.bov, %i.bpl
  %i.bpn = mul <4 x i32> %i.bot, %i.atn
  %i.bpo = mul <4 x i32> %i.bpm, %i.atp
  %i.bpp = mul <4 x i32> %i.bpk, %i.atr
  %i.bpq = add <4 x i32> %i.bpp, %i.bpn
  %i.bpr = add <4 x i32> %i.bpq, %i.bpo           ; 4 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <4 x i32> %i.bpr, i64 0 ; 2 uses
  %i.bps = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.bnw
  %i.bpt = add nsw i32 %.sroa.09.0.vec.extract.i.i, %i.bnx
  %.sroa.09.4.vec.extract.i.i = extractelement <4 x i32> %i.bpr, i64 1 ; 2 uses
  %i.bpu = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.bnw
  %i.bpv = add nsw i32 %.sroa.09.4.vec.extract.i.i, %i.bnx
  %.sroa.09.8.vec.extract.i.i = extractelement <4 x i32> %i.bpr, i64 2 ; 2 uses
  %i.bpw = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.bnw
  %i.bpx = add nsw i32 %.sroa.09.8.vec.extract.i.i, %i.bnx
  %.sroa.09.12.vec.extract.i.i = extractelement <4 x i32> %i.bpr, i64 3 ; 2 uses
  %i.bpy = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.bnw
  %i.bpz = add nsw i32 %.sroa.09.12.vec.extract.i.i, %i.bnx
  %i.bqa = load ptr, ptr %0, align 8, !tbaa !28   ; 8 uses
  %i.bqb = sext i32 %i.bps to i64
  %i.bqc = getelementptr inbounds i8, ptr %i.bqa, i64 %i.bqb
  %i.bqd = sext i32 %i.bpt to i64
  %i.bqe = getelementptr inbounds i8, ptr %i.bqa, i64 %i.bqd
  %i.bqf = sext i32 %i.bpu to i64
  %i.bqg = getelementptr inbounds i8, ptr %i.bqa, i64 %i.bqf
  %i.bqh = sext i32 %i.bpv to i64
  %i.bqi = getelementptr inbounds i8, ptr %i.bqa, i64 %i.bqh
  %i.bqj = sext i32 %i.bpw to i64
  %i.bqk = getelementptr inbounds i8, ptr %i.bqa, i64 %i.bqj
  %i.bql = sext i32 %i.bpx to i64
  %i.bqm = getelementptr inbounds i8, ptr %i.bqa, i64 %i.bql
  %i.bqn = sext i32 %i.bpy to i64
  %i.bqo = getelementptr inbounds i8, ptr %i.bqa, i64 %i.bqn
  %i.bqp = sext i32 %i.bpz to i64
  %i.bqq = getelementptr inbounds i8, ptr %i.bqa, i64 %i.bqp
  %i.bqr = load i8, ptr %i.bqc, align 1, !tbaa !30
  %i.bqs = add i8 %i.bqr, 127
  store i8 %i.bqs, ptr %.33310.i.i, align 1, !tbaa !30
  %i.bqt = load i8, ptr %i.bqg, align 1, !tbaa !30
  %i.bqu = add i8 %i.bqt, 127
  %i.bqv = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 1
  store i8 %i.bqu, ptr %i.bqv, align 1, !tbaa !30
  %i.bqw = load i8, ptr %i.bqk, align 1, !tbaa !30
  %i.bqx = add i8 %i.bqw, 127
  %i.bqy = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 2
  store i8 %i.bqx, ptr %i.bqy, align 1, !tbaa !30
  %i.bqz = load i8, ptr %i.bqo, align 1, !tbaa !30
  %i.bra = add i8 %i.bqz, 127
  %i.brb = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 3
  store i8 %i.bra, ptr %i.brb, align 1, !tbaa !30
  %i.brc = load i8, ptr %i.bqe, align 1, !tbaa !30
  %i.brd = add i8 %i.brc, 127
  %i.bre = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 4
  store i8 %i.brd, ptr %i.bre, align 1, !tbaa !30
  %i.brf = load i8, ptr %i.bqi, align 1, !tbaa !30
  %i.brg = add i8 %i.brf, 127
  %i.brh = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 5
  store i8 %i.brg, ptr %i.brh, align 1, !tbaa !30
  %i.bri = load i8, ptr %i.bqm, align 1, !tbaa !30
  %i.brj = add i8 %i.bri, 127
  %i.brk = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 6
  store i8 %i.brj, ptr %i.brk, align 1, !tbaa !30
  %i.brl = load i8, ptr %i.bqq, align 1, !tbaa !30
  %i.brm = add i8 %i.brl, 127
  %i.brn = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 7
  store i8 %i.brm, ptr %i.brn, align 1, !tbaa !30
  %i.bro = getelementptr inbounds nuw i8, ptr %.33310.i.i, i64 8 ; 2 uses
  %i.brp = add nuw nsw i32 %.01275309.i.i, 4      ; 3 uses
  %i.brq = or disjoint i32 %i.brp, 3
  %i.brr = icmp slt i32 %i.brq, %5
  br i1 %i.brr, label %.lr.ph311.i.i, label %.preheader201.i.i, !llvm.loop !371

.preheader199.i.i:                                ; preds = %.lr.ph316.i.i, %.preheader201.i.i
  %.11276.lcssa.i.i = phi i32 [ %.01275.lcssa.i.i, %.preheader201.i.i ], [ %i.btg, %.lr.ph316.i.i ] ; 2 uses
  %.34.lcssa.i.i = phi ptr [ %.33.lcssa.i.i, %.preheader201.i.i ], [ %i.btf, %.lr.ph316.i.i ] ; 2 uses
  %i.brs = icmp slt i32 %.11276.lcssa.i.i, %5
  br i1 %i.brs, label %.lr.ph321.i.i, label %.loopexit192.i.i

.lr.ph321.i.i:                                    ; preds = %.preheader199.i.i
  %i.brt = extractelement <2 x i32> %i.bim, i64 0
  %i.bru = extractelement <2 x i32> %i.bim, i64 1
  %i.brv = sext i32 %i.brt to i64
  %i.brw = sext i32 %i.bru to i64
  br label %bb.ad

.lr.ph316.i.i:                                    ; preds = %.lr.ph316.i.i.preheader, %.lr.ph316.i.i
  %.34315.i.i = phi ptr [ %i.btf, %.lr.ph316.i.i ], [ %.33.lcssa.i.i, %.lr.ph316.i.i.preheader ] ; 5 uses
  %.11276314.i.i = phi i32 [ %i.btg, %.lr.ph316.i.i ], [ %.01275.lcssa.i.i, %.lr.ph316.i.i.preheader ] ; 2 uses
  %i.brx = add nsw i32 %.11276314.i.i, %4         ; 2 uses
  %i.bry = add nsw i32 %i.brx, 1
  %79 = load ptr, ptr %0, align 8, !tbaa !28      ; 4 uses
  %i.brz = insertelement <2 x i32> poison, i32 %i.brx, i64 0
  %i.bsa = insertelement <2 x i32> %i.brz, i32 %i.bry, i64 1
  %.frozen633 = freeze <2 x i32> %i.bsa           ; 2 uses
  %i.bsb = sdiv <2 x i32> %.frozen633, %i.auf     ; 2 uses
  %i.bsc = mul <2 x i32> %i.bsb, %i.auf
  %.decomposed634 = sub <2 x i32> %.frozen633, %i.bsc ; 2 uses
  %i.bsd = sdiv <2 x i32> %.decomposed634, %i.auh ; 2 uses
  %i.bse = mul <2 x i32> %i.bsd, %i.auh
  %.decomposed635 = sub <2 x i32> %.decomposed634, %i.bse
  %i.bsf = mul <2 x i32> %i.bsd, %i.auj
  %i.bsg = mul nsw <2 x i32> %.decomposed635, %i.aul
  %i.bsh = mul <2 x i32> %i.bsb, %i.aun
  %i.bsi = add <2 x i32> %i.bsf, %i.bsh
  %i.bsj = add <2 x i32> %i.bsi, %i.bsg
  %i.bsk = shufflevector <2 x i32> %i.bsj, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.bsl = add <4 x i32> %i.bsk, %i.boa           ; 4 uses
  %i.bsm = extractelement <4 x i32> %i.bsl, i64 0
  %i.bsn = sext i32 %i.bsm to i64
  %i.bso = getelementptr inbounds i8, ptr %79, i64 %i.bsn
  %i.bsp = extractelement <4 x i32> %i.bsl, i64 1
  %i.bsq = sext i32 %i.bsp to i64
  %i.bsr = getelementptr inbounds i8, ptr %79, i64 %i.bsq
  %i.bss = extractelement <4 x i32> %i.bsl, i64 2
  %i.bst = sext i32 %i.bss to i64
  %i.bsu = getelementptr inbounds i8, ptr %79, i64 %i.bst
  %i.bsv = extractelement <4 x i32> %i.bsl, i64 3
  %i.bsw = sext i32 %i.bsv to i64
  %i.bsx = getelementptr inbounds i8, ptr %79, i64 %i.bsw
  %i.bsy = load i8, ptr %i.bso, align 1, !tbaa !30
  store i8 %i.bsy, ptr %.34315.i.i, align 1, !tbaa !30
  %i.bsz = load i8, ptr %i.bsu, align 1, !tbaa !30
  %i.bta = getelementptr inbounds nuw i8, ptr %.34315.i.i, i64 1
  store i8 %i.bsz, ptr %i.bta, align 1, !tbaa !30
  %i.btb = load i8, ptr %i.bsr, align 1, !tbaa !30
  %i.btc = getelementptr inbounds nuw i8, ptr %.34315.i.i, i64 2
  store i8 %i.btb, ptr %i.btc, align 1, !tbaa !30
  %i.btd = load i8, ptr %i.bsx, align 1, !tbaa !30
  %i.bte = getelementptr inbounds nuw i8, ptr %.34315.i.i, i64 3
  store i8 %i.btd, ptr %i.bte, align 1, !tbaa !30
  %i.btf = getelementptr inbounds nuw i8, ptr %.34315.i.i, i64 4 ; 2 uses
  %i.btg = add nuw nsw i32 %.11276314.i.i, 2      ; 3 uses
  %i.bth = or disjoint i32 %i.btg, 1
  %i.bti = icmp slt i32 %i.bth, %5
  br i1 %i.bti, label %.lr.ph316.i.i, label %.preheader199.i.i, !llvm.loop !372

bb.ad:                                            ; preds = %bb.ad, %.lr.ph321.i.i
  %.35320.i.i = phi ptr [ %.34.lcssa.i.i, %.lr.ph321.i.i ], [ %i.bud, %bb.ad ] ; 3 uses
  %.21277319.i.i = phi i32 [ %.11276.lcssa.i.i, %.lr.ph321.i.i ], [ %i.bue, %bb.ad ] ; 2 uses
  %i.btj = add nsw i32 %.21277319.i.i, %4         ; 2 uses
  %i.btk = sdiv i32 %i.btj, %i.zi
  %i.btl = srem i32 %i.btj, %i.zi                 ; 2 uses
  %i.btm = sdiv i32 %i.btl, %6
  %i.btn = srem i32 %i.btl, %6
  %i.bto = sext i32 %i.btk to i64
  %i.btp = mul i64 %i.m, %i.bto
  %i.btq = mul i32 %i.btm, %.scalar456.i.i
  %i.btr = mul nsw i32 %i.btn, %8
  %i.bts = add nsw i32 %i.btr, %i.btq
  %i.btt = sext i32 %i.bts to i64                 ; 2 uses
  %i.btu = load ptr, ptr %0, align 8, !tbaa !28
  %i.btv = getelementptr i8, ptr %i.btu, i64 %i.btp ; 2 uses
  %i.btw = getelementptr i8, ptr %i.btv, i64 %i.brv
  %i.btx = getelementptr i8, ptr %i.btw, i64 %i.btt
  %i.bty = getelementptr i8, ptr %i.btv, i64 %i.brw
  %i.btz = getelementptr i8, ptr %i.bty, i64 %i.btt
  %i.bua = load i8, ptr %i.btx, align 1, !tbaa !30
  store i8 %i.bua, ptr %.35320.i.i, align 1, !tbaa !30
  %i.bub = load i8, ptr %i.btz, align 1, !tbaa !30
  %i.buc = getelementptr inbounds nuw i8, ptr %.35320.i.i, i64 1
  store i8 %i.bub, ptr %i.buc, align 1, !tbaa !30
  %i.bud = getelementptr inbounds nuw i8, ptr %.35320.i.i, i64 2 ; 2 uses
  %i.bue = add nuw nsw i32 %.21277319.i.i, 1      ; 2 uses
  %exitcond444.not.i.i = icmp eq i32 %i.bue, %5
  br i1 %exitcond444.not.i.i, label %.loopexit192.i.i, label %bb.ad, !llvm.loop !373

.loopexit200.i.i:                                 ; preds = %bb.ac
  br i1 %or.cond385.i.i, label %.lr.ph326.i.i, label %.loopexit192.i.i

.lr.ph326.i.i:                                    ; preds = %.loopexit200.i.i
  %i.buf = extractelement <2 x i32> %i.bim, i64 0
  %i.bug = sext i32 %i.buf to i64
  %i.buh = extractelement <2 x i32> %i.bim, i64 1
  %i.bui = sext i32 %i.buh to i64
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.lr.ph326.i.i
  %.37325.i.i = phi ptr [ %.26347.i.i, %.lr.ph326.i.i ], [ %i.bvl, %bb.ae ] ; 2 uses
  %.41279324.i.i = phi i32 [ 0, %.lr.ph326.i.i ], [ %i.bvm, %bb.ae ] ; 2 uses
  %i.buj = add nsw i32 %.41279324.i.i, %i.atu     ; 2 uses
  %i.buk = sdiv i32 %i.buj, %i.zi
  %i.bul = srem i32 %i.buj, %i.zi                 ; 2 uses
  %i.bum = sdiv i32 %i.bul, %6
  %i.bun = srem i32 %i.bul, %6
  %i.buo = sext i32 %i.buk to i64
  %i.bup = mul i64 %i.m, %i.buo
  %i.buq = mul i32 %i.bum, %.scalar456.i.i
  %i.bur = mul nsw i32 %i.bun, %8
  %i.bus = add nsw i32 %i.bur, %i.buq
  %i.but = sext i32 %i.bus to i64
  %i.buu = add i64 %i.bup, %i.but                 ; 2 uses
  %i.buv = add i64 %i.buu, %i.bug
  %i.buw = shl i64 %i.buv, 3
  %i.bux = add i64 %i.buu, %i.bui
  %i.buy = shl i64 %i.bux, 3
  %i.buz = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 %i.buw
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.buz, i64 %i.buy
  %i.bvc = load i64, ptr %i.bva, align 1, !tbaa !30
  %i.bvd = insertelement <2 x i64> poison, i64 %i.bvc, i64 0
  %i.bve = load i64, ptr %i.bvb, align 1, !tbaa !30
  %i.bvf = insertelement <2 x i64> poison, i64 %i.bve, i64 0
  %i.bvg = bitcast <2 x i64> %i.bvd to <4 x i32>
  %i.bvh = bitcast <2 x i64> %i.bvf to <4 x i32>
  %i.bvi = shufflevector <4 x i32> %i.bvg, <4 x i32> %i.bvh, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bvj = bitcast <4 x i32> %i.bvi to <16 x i8>
  %i.bvk = add <16 x i8> %i.bvj, splat (i8 127)
  store <16 x i8> %i.bvk, ptr %.37325.i.i, align 1, !tbaa !30
  %i.bvl = getelementptr inbounds nuw i8, ptr %.37325.i.i, i64 16 ; 2 uses
  %i.bvm = add nuw nsw i32 %.41279324.i.i, 1      ; 2 uses
  %exitcond445.not.i.i = icmp eq i32 %i.bvm, %i.att
  br i1 %exitcond445.not.i.i, label %.loopexit192.i.i, label %bb.ae, !llvm.loop !374

.loopexit192.i.i:                                 ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.aa, %.loopexit200.i.i, %.preheader199.i.i, %.loopexit194.i.i, %.preheader193.i.i
  %.39.i.i = phi ptr [ %.26347.i.i, %.loopexit200.i.i ], [ %.26347.i.i, %.loopexit194.i.i ], [ %.28.lcssa.i.i, %.preheader193.i.i ], [ %i.bnu, %bb.ab ], [ %i.bmx, %bb.aa ], [ %.34.lcssa.i.i, %.preheader199.i.i ], [ %i.bud, %bb.ad ], [ %i.bvl, %bb.ae ] ; 2 uses
  %i.bvn = add nuw nsw i32 %.21253346.i.i, 2      ; 3 uses
  %i.bvo = or disjoint i32 %i.bvn, 1
  %i.bvp = icmp slt i32 %i.bvo, %3
  br i1 %i.bvp, label %bb.w, label %.preheader190.i.i, !llvm.loop !375

bb.af:                                            ; preds = %.loopexit.i46.i, %.lr.ph371.i.i
  %.40370.i.i = phi ptr [ %.26.lcssa.i.i, %.lr.ph371.i.i ], [ %.46.i.i, %.loopexit.i46.i ] ; 4 uses
  %.31254369.i.i = phi i32 [ %.21253.lcssa.i.i, %.lr.ph371.i.i ], [ %i.cbj, %.loopexit.i46.i ] ; 2 uses
  %i.bvq = add nsw i32 %.31254369.i.i, %2         ; 2 uses
  %i.bvr = sdiv i32 %i.bvq, %i.zh
  %i.bvs = srem i32 %i.bvq, %i.zh
  %i.bvt = mul nsw i32 %i.bvs, %10
  %i.bvu = mul i32 %i.bhe, %i.bvr
  %i.bvv = add nsw i32 %i.bvt, %i.bvu             ; 7 uses
  br i1 %i.bhf, label %.preheader189.i.i, label %.loopexit187.i.i

.preheader189.i.i:                                ; preds = %bb.af
  br i1 %i.bhg, label %.lr.ph353.i.i, label %.preheader188.i.i

.preheader188.i.i:                                ; preds = %.lr.ph353.i.i, %.preheader189.i.i
  %.01280.lcssa.i.i = phi i32 [ 0, %.preheader189.i.i ], [ %i.byp, %.lr.ph353.i.i ] ; 3 uses
  %.41.lcssa.i.i = phi ptr [ %.40370.i.i, %.preheader189.i.i ], [ %i.byo, %.lr.ph353.i.i ] ; 2 uses
  %i.bvw = or disjoint i32 %.01280.lcssa.i.i, 1
  %i.bvx = icmp slt i32 %i.bvw, %5
  br i1 %i.bvx, label %.lr.ph358.i.i, label %.preheader186.i.i

.lr.ph358.i.i:                                    ; preds = %.preheader188.i.i
  %i.bvy = sext i32 %i.bvv to i64                 ; 2 uses
  br label %bb.ag

.lr.ph353.i.i:                                    ; preds = %.preheader189.i.i, %.lr.ph353.i.i
  %.41352.i.i = phi ptr [ %i.byo, %.lr.ph353.i.i ], [ %.40370.i.i, %.preheader189.i.i ] ; 5 uses
  %.01280351.i.i = phi i32 [ %i.byp, %.lr.ph353.i.i ], [ 0, %.preheader189.i.i ] ; 2 uses
  %i.bvz = add nsw i32 %.01280351.i.i, %4
  %i.bwa = insertelement <4 x i32> poison, i32 %i.bvz, i64 0
  %i.bwb = shufflevector <4 x i32> %i.bwa, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bwc = add <4 x i32> %i.bwb, <i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.bwd = bitcast <4 x i32> %i.bwc to <2 x i64>
  %i.bwe = bitcast <4 x i32> %i.bwc to <2 x i64>
  %i.bwf = and <2 x i64> %i.bwe, splat (i64 4294967295)
  %i.bwg = mul nuw <2 x i64> %i.bwf, %i.bhi
  %i.bwh = lshr <2 x i64> %i.bwg, splat (i64 32)
  %i.bwi = lshr <2 x i64> %i.bwd, splat (i64 32)
  %i.bwj = mul nuw <2 x i64> %i.bwi, %i.bhi
  %i.bwk = bitcast <2 x i64> %i.bwh to <8 x i16>
  %i.bwl = bitcast <2 x i64> %i.bwj to <8 x i16>
  %i.bwm = shufflevector <8 x i16> %i.bwk, <8 x i16> %i.bwl, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bwn = bitcast <8 x i16> %i.bwm to <4 x i32>  ; 2 uses
  %i.bwo = sub <4 x i32> %i.bwc, %i.bwn
  %i.bwp = lshr <4 x i32> %i.bwo, %i.bhj
  %i.bwq = add <4 x i32> %i.bwp, %i.bwn
  %i.bwr = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bwq, <4 x i32> %i.aav) ; 2 uses
  %i.bws = mul <4 x i32> %i.bwr, %i.bhl
  %i.bwt = sub <4 x i32> %i.bwc, %i.bws           ; 4 uses
  %i.bwu = bitcast <4 x i32> %i.bwt to <2 x i64>
  %i.bwv = bitcast <4 x i32> %i.bwt to <2 x i64>
  %i.bww = and <2 x i64> %i.bwv, splat (i64 4294967295)
  %i.bwx = mul nuw <2 x i64> %i.bww, %i.bhn
  %i.bwy = lshr <2 x i64> %i.bwx, splat (i64 32)
  %i.bwz = lshr <2 x i64> %i.bwu, splat (i64 32)
  %i.bxa = mul nuw <2 x i64> %i.bwz, %i.bhn
  %i.bxb = bitcast <2 x i64> %i.bwy to <8 x i16>
  %i.bxc = bitcast <2 x i64> %i.bxa to <8 x i16>
  %i.bxd = shufflevector <8 x i16> %i.bxb, <8 x i16> %i.bxc, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 4, i32 5, i32 14, i32 15>
  %i.bxe = bitcast <8 x i16> %i.bxd to <4 x i32>  ; 2 uses
  %i.bxf = sub <4 x i32> %i.bwt, %i.bxe
  %i.bxg = lshr <4 x i32> %i.bxf, %i.bho
  %i.bxh = add <4 x i32> %i.bxg, %i.bxe
  %i.bxi = tail call <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32> %i.bxh, <4 x i32> %i.abn) ; 2 uses
  %i.bxj = mul <4 x i32> %i.bxi, %i.bhq
  %i.bxk = sub <4 x i32> %i.bwt, %i.bxj
  %i.bxl = mul <4 x i32> %i.bwr, %i.bht
  %i.bxm = mul <4 x i32> %i.bxk, %i.bhv
  %i.bxn = mul <4 x i32> %i.bxi, %i.bhx
  %i.bxo = add <4 x i32> %i.bxn, %i.bxl
  %i.bxp = add <4 x i32> %i.bxo, %i.bxm           ; 4 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x i32> %i.bxp, i64 0
  %i.bxq = add nsw i32 %.sroa.0.0.vec.extract.i.i, %i.bvv
  %.sroa.0.4.vec.extract.i.i = extractelement <4 x i32> %i.bxp, i64 1
  %i.bxr = add nsw i32 %.sroa.0.4.vec.extract.i.i, %i.bvv
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x i32> %i.bxp, i64 2
  %i.bxs = add nsw i32 %.sroa.0.8.vec.extract.i.i, %i.bvv
  %.sroa.0.12.vec.extract.i.i = extractelement <4 x i32> %i.bxp, i64 3
  %i.bxt = add nsw i32 %.sroa.0.12.vec.extract.i.i, %i.bvv
  %i.bxu = load ptr, ptr %0, align 8, !tbaa !28   ; 4 uses
  %i.bxv = sext i32 %i.bxq to i64
  %i.bxw = getelementptr inbounds i8, ptr %i.bxu, i64 %i.bxv
  %i.bxx = sext i32 %i.bxr to i64
  %i.bxy = getelementptr inbounds i8, ptr %i.bxu, i64 %i.bxx
  %i.bxz = sext i32 %i.bxs to i64
  %i.bya = getelementptr inbounds i8, ptr %i.bxu, i64 %i.bxz
  %i.byb = sext i32 %i.bxt to i64
  %i.byc = getelementptr inbounds i8, ptr %i.bxu, i64 %i.byb
  %i.byd = load i8, ptr %i.bxw, align 1, !tbaa !30
  %i.bye = add i8 %i.byd, 127
  store i8 %i.bye, ptr %.41352.i.i, align 1, !tbaa !30
  %i.byf = load i8, ptr %i.bxy, align 1, !tbaa !30
  %i.byg = add i8 %i.byf, 127
  %i.byh = getelementptr inbounds nuw i8, ptr %.41352.i.i, i64 1
  store i8 %i.byg, ptr %i.byh, align 1, !tbaa !30
  %i.byi = load i8, ptr %i.bya, align 1, !tbaa !30
  %i.byj = add i8 %i.byi, 127
  %i.byk = getelementptr inbounds nuw i8, ptr %.41352.i.i, i64 2
  store i8 %i.byj, ptr %i.byk, align 1, !tbaa !30
  %i.byl = load i8, ptr %i.byc, align 1, !tbaa !30
  %i.bym = add i8 %i.byl, 127
  %i.byn = getelementptr inbounds nuw i8, ptr %.41352.i.i, i64 3
  store i8 %i.bym, ptr %i.byn, align 1, !tbaa !30
  %i.byo = getelementptr inbounds nuw i8, ptr %.41352.i.i, i64 4 ; 2 uses
  %i.byp = add nuw nsw i32 %.01280351.i.i, 4      ; 3 uses
  %i.byq = or disjoint i32 %i.byp, 3
  %i.byr = icmp slt i32 %i.byq, %5
  br i1 %i.byr, label %.lr.ph353.i.i, label %.preheader188.i.i, !llvm.loop !376

.preheader186.i.i:                                ; preds = %bb.ag, %.preheader188.i.i
  %.11281.lcssa.i.i = phi i32 [ %.01280.lcssa.i.i, %.preheader188.i.i ], [ %i.bzp, %bb.ag ] ; 2 uses
  %.42.lcssa.i.i = phi ptr [ %.41.lcssa.i.i, %.preheader188.i.i ], [ %i.bzo, %bb.ag ] ; 2 uses
  %i.bys = icmp slt i32 %.11281.lcssa.i.i, %5
  br i1 %i.bys, label %.lr.ph363.i.i, label %.loopexit.i46.i

.lr.ph363.i.i:                                    ; preds = %.preheader186.i.i
  %i.byt = sext i32 %i.bvv to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.lr.ph358.i.i
  %.42357.i.i = phi ptr [ %.41.lcssa.i.i, %.lr.ph358.i.i ], [ %i.bzo, %bb.ag ] ; 3 uses
  %.11281356.i.i = phi i32 [ %.01280.lcssa.i.i, %.lr.ph358.i.i ], [ %i.bzp, %bb.ag ] ; 2 uses
  %i.byu = add nsw i32 %.11281356.i.i, %4         ; 3 uses
  %i.byv = add nsw i32 %i.byu, 1                  ; 2 uses
  %80 = srem i32 %i.byu, %i.zi                    ; 2 uses
  %81 = srem i32 %i.byv, %i.zi                    ; 2 uses
  %82 = sdiv i32 %80, %6
  %83 = sdiv i32 %81, %6
  %84 = srem i32 %80, %6
  %85 = srem i32 %81, %6
  %86 = mul i32 %82, %.scalar458.i.i
  %87 = mul nsw i32 %84, %8
  %88 = add nsw i32 %87, %86
  %89 = sext i32 %88 to i64
  %90 = insertelement <2 x i32> poison, i32 %i.byu, i64 0
  %91 = insertelement <2 x i32> %90, i32 %i.byv, i64 1
  %92 = sdiv <2 x i32> %91, %i.bid
  %i.byw = sext <2 x i32> %92 to <2 x i64>
  %i.byx = mul <2 x i64> %65, %i.byw              ; 2 uses
  %i.byy = mul i32 %83, %.scalar458.i.i
  %i.byz = mul nsw i32 %85, %8
  %i.bza = add nsw i32 %i.byz, %i.byy
  %i.bzb = sext i32 %i.bza to i64
  %i.bzc = load ptr, ptr %0, align 8, !tbaa !28   ; 2 uses
  %i.bzd = extractelement <2 x i64> %i.byx, i64 0
  %i.bze = getelementptr i8, ptr %i.bzc, i64 %i.bzd
  %i.bzf = getelementptr i8, ptr %i.bze, i64 %i.bvy
  %i.bzg = getelementptr i8, ptr %i.bzf, i64 %89
  %i.bzh = extractelement <2 x i64> %i.byx, i64 1
  %i.bzi = getelementptr i8, ptr %i.bzc, i64 %i.bzh
  %i.bzj = getelementptr i8, ptr %i.bzi, i64 %i.bvy
  %i.bzk = getelementptr i8, ptr %i.bzj, i64 %i.bzb
  %i.bzl = load i8, ptr %i.bzg, align 1, !tbaa !30
  store i8 %i.bzl, ptr %.42357.i.i, align 1, !tbaa !30
  %i.bzm = load i8, ptr %i.bzk, align 1, !tbaa !30
  %i.bzn = getelementptr inbounds nuw i8, ptr %.42357.i.i, i64 1
  store i8 %i.bzm, ptr %i.bzn, align 1, !tbaa !30
  %i.bzo = getelementptr inbounds nuw i8, ptr %.42357.i.i, i64 2 ; 2 uses
  %i.bzp = add nuw nsw i32 %.11281356.i.i, 2      ; 3 uses
  %i.bzq = or disjoint i32 %i.bzp, 1
  %i.bzr = icmp slt i32 %i.bzq, %5
  br i1 %i.bzr, label %bb.ag, label %.preheader186.i.i, !llvm.loop !377

bb.ah:                                            ; preds = %bb.ah, %.lr.ph363.i.i
  %.43362.i.i = phi ptr [ %.42.lcssa.i.i, %.lr.ph363.i.i ], [ %i.cai, %bb.ah ] ; 2 uses
  %.21282361.i.i = phi i32 [ %.11281.lcssa.i.i, %.lr.ph363.i.i ], [ %i.caj, %bb.ah ] ; 2 uses
  %i.bzs = add nsw i32 %.21282361.i.i, %4         ; 2 uses
  %i.bzt = sdiv i32 %i.bzs, %i.zi
  %i.bzu = srem i32 %i.bzs, %i.zi                 ; 2 uses
  %i.bzv = sdiv i32 %i.bzu, %6
  %i.bzw = srem i32 %i.bzu, %6
  %i.bzx = sext i32 %i.bzt to i64
  %i.bzy = mul i64 %i.m, %i.bzx
  %i.bzz = mul i32 %i.bzv, %.scalar458.i.i
  %i.caa = mul nsw i32 %i.bzw, %8
  %i.cab = add nsw i32 %i.caa, %i.bzz
  %i.cac = sext i32 %i.cab to i64
  %i.cad = load ptr, ptr %0, align 8, !tbaa !28
  %i.cae = getelementptr i8, ptr %i.cad, i64 %i.bzy
  %i.caf = getelementptr i8, ptr %i.cae, i64 %i.byt
  %i.cag = getelementptr i8, ptr %i.caf, i64 %i.cac
  %i.cah = load i8, ptr %i.cag, align 1, !tbaa !30
  store i8 %i.cah, ptr %.43362.i.i, align 1, !tbaa !30
  %i.cai = getelementptr inbounds nuw i8, ptr %.43362.i.i, i64 1 ; 2 uses
  %i.caj = add nuw nsw i32 %.21282361.i.i, 1      ; 2 uses
  %exitcond448.not.i.i = icmp eq i32 %i.caj, %5
  br i1 %exitcond448.not.i.i, label %.loopexit.i46.i, label %bb.ah, !llvm.loop !378

.loopexit187.i.i:                                 ; preds = %bb.af
  br i1 %brmerge388.i.i, label %.loopexit.i46.i, label %.lr.ph367.i.i

.lr.ph367.i.i:                                    ; preds = %.loopexit187.i.i
  %i.cak = sext i32 %i.bvv to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph367.i.i
  %.45366.i.i = phi ptr [ %.40370.i.i, %.lr.ph367.i.i ], [ %i.cbh, %bb.ai ] ; 2 uses
  %.01250365.i.i = phi i32 [ 0, %.lr.ph367.i.i ], [ %i.cbi, %bb.ai ] ; 2 uses
  %i.cal = add nsw i32 %.01250365.i.i, %i.bib     ; 2 uses
  %i.cam = sdiv i32 %i.cal, %i.zi
  %i.can = srem i32 %i.cal, %i.zi                 ; 2 uses
  %i.cao = sdiv i32 %i.can, %6
  %i.cap = srem i32 %i.can, %6
  %i.caq = sext i32 %i.cam to i64
  %i.car = mul i64 %i.m, %i.caq
  %i.cas = add i64 %i.car, %i.cak
  %i.cat = mul i32 %i.cao, %.scalar458.i.i
  %i.cau = mul nsw i32 %i.cap, %8
  %i.cav = add nsw i32 %i.cau, %i.cat
  %i.caw = sext i32 %i.cav to i64
  %i.cax = add i64 %i.cas, %i.caw
  %i.cay = shl i64 %i.cax, 3
  %i.caz = load ptr, ptr %0, align 8, !tbaa !28
  %i.cba = getelementptr inbounds nuw i8, ptr %i.caz, i64 %i.cay
  %i.cbb = load i64, ptr %i.cba, align 1, !tbaa !30
  %i.cbc = insertelement <2 x i64> poison, i64 %i.cbb, i64 0
  %i.cbd = bitcast <2 x i64> %i.cbc to <16 x i8>
  %i.cbe = add <16 x i8> %i.cbd, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.cbf = bitcast <16 x i8> %i.cbe to <2 x i64>
  %i.cbg = extractelement <2 x i64> %i.cbf, i64 0
  store i64 %i.cbg, ptr %.45366.i.i, align 1, !tbaa !30
  %i.cbh = getelementptr inbounds nuw i8, ptr %.45366.i.i, i64 8 ; 2 uses
  %i.cbi = add nuw nsw i32 %.01250365.i.i, 1      ; 2 uses
  %exitcond449.not.i.i = icmp eq i32 %i.cbi, %i.bhz
  br i1 %exitcond449.not.i.i, label %.loopexit.i46.i, label %bb.ai, !llvm.loop !379

.loopexit.i46.i:                                  ; preds = %bb.ai, %bb.ah, %.loopexit187.i.i, %.preheader186.i.i
  %.46.i.i = phi ptr [ %.40370.i.i, %.loopexit187.i.i ], [ %i.cai, %bb.ah ], [ %.42.lcssa.i.i, %.preheader186.i.i ], [ %i.cbh, %bb.ai ]
  %i.cbj = add nuw nsw i32 %.31254369.i.i, 1      ; 2 uses
  %exitcond450.not.i.i = icmp eq i32 %i.cbj, %3
  br i1 %exitcond450.not.i.i, label %_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit, label %bb.af, !llvm.loop !380

_ZN4ncnnL34convolution_im2col_input_tile_int8ERKNS_3MatERS0_iiiiiiiiii.exit: ; preds = %.loopexit.i46.i, %.loopexit.i.i.us111, %.loopexit.i.i.loopexit.us, %.lr.ph238.i.i, %.lr.ph238.i.i.split.us, %bb.b, %.preheader119.i.i, %.preheader190.i.i
  ret void
}

declare noundef i32 @_ZN4ncnn29cpu_support_x86_avx_vnni_int8Ev() local_unnamed_addr #12

declare void @_ZN4ncnn46convolution_im2col_input_tile_int8_avxvnniint8ERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64>, ptr, <4 x i32>, <4 x i64>, i8 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx2.psrl.d(<8 x i32>, <4 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.psrl.d(<4 x i32>, <4 x i32>) #11

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn33conv3x3s1_winograd23_int8_avxvnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4) local_unnamed_addr #14 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 10 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %i.m = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.o = load <2 x i32>, ptr %i.n, align 4, !tbaa !10
  %i.p = add nsw <2 x i32> %i.o, splat (i32 1)
  %i.q = sdiv <2 x i32> %i.p, splat (i32 2)       ; 2 uses
  %i.r = extractelement <2 x i32> %i.q, i64 0
  %i.s = extractelement <2 x i32> %i.q, i64 1
  %i.t = mul nsw i32 %i.s, %i.r                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i32, ptr %i.u, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 %i.t, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #3
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #3
  %i.ac = add i32 %i.t, -1
  %i.ad = mul nsw i32 %i.ab, %i.z                 ; 3 uses
  %i.ae = mul nsw i32 %i.x, %i.v                  ; 3 uses
  store i32 %i.ae, ptr %i.d, align 4, !tbaa !10
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !10
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %i.ae, i32 noundef %i.t, i32 noundef %i.ad, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #3
  %i.af = load i32, ptr %i.g, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #3
  %i.ag = load i32, ptr %i.i, align 4, !tbaa !10  ; 3 uses
  %i.ah = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ai = insertelement <2 x i32> %i.ah, i32 %i.ad, i64 1
  %i.aj = add <2 x i32> %i.ai, splat (i32 -1)
  %i.ak = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.al = insertelement <2 x i32> %i.ak, i32 %i.ag, i64 1 ; 2 uses
  %i.am = add <2 x i32> %i.aj, %i.al
  %i.an = sdiv <2 x i32> %i.am, %i.al             ; 2 uses
  %i.ao = extractelement <2 x i32> %i.an, i64 0
  store i32 %i.ao, ptr %i.j, align 4, !tbaa !10
  %i.ap = load i32, ptr %i.h, align 4, !tbaa !10  ; 4 uses
  %i.aq = add i32 %i.ac, %i.ap
  %i.ar = sdiv i32 %i.aq, %i.ap                   ; 2 uses
  %i.as = extractelement <2 x i32> %i.an, i64 1   ; 3 uses
  store i32 %i.as, ptr %i.k, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #3
  %i.at = mul nsw i32 %i.ag, %i.ap
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i64 0, ptr %i.bc, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.az, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.at, i32 noundef 16, i32 noundef %i.as, i32 noundef %i.ar, i64 noundef 2, ptr noundef %i.av)
  %i.bd = load ptr, ptr %5, align 8, !tbaa !28
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZNK4ncnn3Mat5emptyEv.exit167.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit167.i

_ZNK4ncnn3Mat5emptyEv.exit167.i:                  ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !19
  %i.bh = load i32, ptr %i.bf, align 8, !tbaa !18
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.bg, %i.bi
  %i.bk = icmp eq i64 %i.bj, 0
end_hunk_0
