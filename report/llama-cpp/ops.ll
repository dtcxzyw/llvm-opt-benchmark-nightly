Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 223
loop-unroll.NumUnrolled: 270
begin_hunk_0_@ggml_compute_forward_dup:bb.a
  %.6244.us.us.us.us.us.i.lcssa = phi i64 [ %.6244.us.us.us.us.us.i.1, %._crit_edge.us.us.us.us.us.i58.unr-lcssa ], [ 0, %bb.bj ], [ 0, %bb.bi ], [ %i.vm, %bb.bh ], [ %.5243316.us.us.us.us.us.i.epil.init, %.epil.preheader1654 ] ; 3 uses
  %.6235.us.us.us.us.us.i.lcssa = phi i64 [ %.6235.us.us.us.us.us.i.1, %._crit_edge.us.us.us.us.us.i58.unr-lcssa ], [ 0, %bb.bj ], [ %i.vo, %bb.bi ], [ %.5234317.us.us.us.us.us.i.epil.init, %bb.bh ], [ %.5234317.us.us.us.us.us.i.epil.init, %.epil.preheader1654 ] ; 3 uses
  %.6.us.us.us.us.us.i56.lcssa = phi i64 [ %.6.us.us.us.us.us.i56.1, %._crit_edge.us.us.us.us.us.i58.unr-lcssa ], [ %spec.store.select1.us.us.us.us.us.i62.epil, %bb.bj ], [ %.5318.us.us.us.us.us.i.epil.init, %bb.bi ], [ %.5318.us.us.us.us.us.i.epil.init, %bb.bh ], [ %.5318.us.us.us.us.us.i.epil.init, %.epil.preheader1654 ] ; 3 uses
  %i.vs = add nsw i64 %.0225329.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond461.not.i = icmp eq i64 %i.vs, %i.sd
  br i1 %exitcond461.not.i, label %._crit_edge330.split.us.us.us.us.us.i, label %.preheader302.us.us.us.us.us.i55, !llvm.loop !91

._crit_edge330.split.us.us.us.us.us.i:            ; preds = %._crit_edge.us.us.us.us.us.i58
  %i.vt = add nsw i64 %.5252.us.us.us.us.us.i.lcssa, %i.si ; 3 uses
  %.not296340.us.us.us.us.i = icmp slt i64 %i.vt, %i.nw
  br i1 %.not296340.us.us.us.us.i, label %._crit_edge.us365.us.us.us.i, label %.lr.ph345.us.us.us.us.i

.lr.ph345.us.us.us.us.i:                          ; preds = %._crit_edge330.split.us.us.us.us.us.i, %bb.bm
  %.7344.us.us.us.us.i = phi i64 [ %.8.us.us.us.us.i59, %bb.bm ], [ %.6.us.us.us.us.us.i56.lcssa, %._crit_edge330.split.us.us.us.us.us.i ] ; 3 uses
  %.7236343.us.us.us.us.i = phi i64 [ %.8237.us.us.us.us.i, %bb.bm ], [ %.6235.us.us.us.us.us.i.lcssa, %._crit_edge330.split.us.us.us.us.us.i ] ; 2 uses
  %.7245342.us.us.us.us.i = phi i64 [ %.8246.us.us.us.us.i, %bb.bm ], [ %.6244.us.us.us.us.us.i.lcssa, %._crit_edge330.split.us.us.us.us.us.i ]
  %.6253341.us.us.us.us.i = phi i64 [ %i.vu, %bb.bm ], [ %i.vt, %._crit_edge330.split.us.us.us.us.us.i ]
  %i.vu = sub nsw i64 %.6253341.us.us.us.us.i, %i.nw ; 3 uses
  %i.vv = add nsw i64 %.7245342.us.us.us.us.i, 1  ; 2 uses
  %i.vw = icmp eq i64 %i.vv, %i.ny
  br i1 %i.vw, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %.lr.ph345.us.us.us.us.i
  %i.vx = add nsw i64 %.7236343.us.us.us.us.i, 1  ; 2 uses
  %i.vy = icmp eq i64 %i.vx, %i.oa
  br i1 %i.vy, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.vz = add nsw i64 %.7344.us.us.us.us.i, 1     ; 2 uses
  %i.wa = icmp eq i64 %i.vz, %i.oc
  %spec.store.select2.us.us.us.us.i61 = select i1 %i.wa, i64 0, i64 %i.vz
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %.lr.ph345.us.us.us.us.i
  %.8246.us.us.us.us.i = phi i64 [ 0, %bb.bl ], [ 0, %bb.bk ], [ %i.vv, %.lr.ph345.us.us.us.us.i ] ; 2 uses
  %.8237.us.us.us.us.i = phi i64 [ 0, %bb.bl ], [ %i.vx, %bb.bk ], [ %.7236343.us.us.us.us.i, %.lr.ph345.us.us.us.us.i ] ; 2 uses
  %.8.us.us.us.us.i59 = phi i64 [ %spec.store.select2.us.us.us.us.i61, %bb.bl ], [ %.7344.us.us.us.us.i, %bb.bk ], [ %.7344.us.us.us.us.i, %.lr.ph345.us.us.us.us.i ] ; 2 uses
  %.not296.us.us.us.us.i = icmp slt i64 %i.vu, %i.nw
  br i1 %.not296.us.us.us.us.i, label %._crit_edge.us365.us.us.us.i, label %.lr.ph345.us.us.us.us.i, !llvm.loop !92

._crit_edge.us365.us.us.us.i:                     ; preds = %bb.bm, %._crit_edge330.split.us.us.us.us.us.i
  %.6253.lcssa.us.us.us.us.i = phi i64 [ %i.vt, %._crit_edge330.split.us.us.us.us.us.i ], [ %i.vu, %bb.bm ] ; 2 uses
  %.7245.lcssa.us.us.us.us.i = phi i64 [ %.6244.us.us.us.us.us.i.lcssa, %._crit_edge330.split.us.us.us.us.us.i ], [ %.8246.us.us.us.us.i, %bb.bm ] ; 2 uses
  %.7236.lcssa.us.us.us.us.i = phi i64 [ %.6235.us.us.us.us.us.i.lcssa, %._crit_edge330.split.us.us.us.us.us.i ], [ %.8237.us.us.us.us.i, %bb.bm ] ; 2 uses
  %.7.lcssa.us.us.us.us.i60 = phi i64 [ %.6.us.us.us.us.us.i56.lcssa, %._crit_edge330.split.us.us.us.us.us.i ], [ %.8.us.us.us.us.i59, %bb.bm ] ; 2 uses
  %i.wb = add nuw nsw i64 %.0226354.us.us.us.us.i, 1 ; 2 uses
  %exitcond462.not.i = icmp eq i64 %i.wb, %i.nk
  br i1 %exitcond462.not.i, label %._crit_edge356.split.us.us.split.us.us.i, label %bb.av, !llvm.loop !93

._crit_edge356.split.us.us.split.us.us.i:         ; preds = %._crit_edge.us365.us.us.us.i
  %i.wc = add nuw nsw i64 %.0227374.us.us.i, 1    ; 2 uses
  %exitcond463.not.i = icmp eq i64 %i.wc, %i.nm
  br i1 %exitcond463.not.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader304.us.us.i, !llvm.loop !94

bb.bn:                                            ; preds = %bb.au
  %i.wd = icmp eq i64 %i.no, 2
  br i1 %i.wd, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.we = shl i64 %i.ng, 1                        ; 12 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !37 ; 5 uses
  %i.wh = icmp sgt i64 %i.nm, 0
  br i1 %i.wh, label %.preheader297.lr.ph.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader297.lr.ph.i:                            ; preds = %bb.bo
  %i.wi = icmp sgt i64 %i.nk, 0
  %i.wj = sext i32 %i.os to i64                   ; 5 uses
  %i.wk = mul i64 %i.we, %i.wj
  %i.wl = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 5 uses
  %i.wm = sext i32 %i.ou to i64                   ; 4 uses
  %i.wn = sub nsw i64 %i.ni, %i.wm
  %i.wo = mul i64 %i.wn, %i.we
  %i.wp = icmp slt i32 %i.os, %i.ou
  %or.cond547.i = select i1 %i.wi, i1 %i.wp, i1 false
  br i1 %or.cond547.i, label %.preheader297.us.i.preheader, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader297.us.i.preheader:                     ; preds = %.preheader297.lr.ph.i
  %i.wq = sub nsw i64 %i.wm, %i.wj
  %xtraiter1667 = and i64 %i.wq, 3                ; 2 uses
  %lcmp.mod1668.not = icmp eq i64 %xtraiter1667, 0
  %i.wr = sub nsw i64 %i.wj, %i.wm
  %i.ws = icmp ugt i64 %i.wr, -4
  br label %.preheader297.us.i

.preheader297.us.i:                               ; preds = %.preheader297.us.i.preheader, %._crit_edge425.split.us.us.i
  %indvars.iv497.i = phi i64 [ %indvars.iv.next498.i, %._crit_edge425.split.us.us.i ], [ 0, %.preheader297.us.i.preheader ] ; 2 uses
  %.0265429.us.i = phi i64 [ %i.yf, %._crit_edge425.split.us.us.i ], [ 0, %.preheader297.us.i.preheader ]
  %i.wt = mul i64 %indvars.iv497.i, %i.nu         ; 5 uses
  br label %.lr.ph419.us.us.i

.lr.ph419.us.us.i:                                ; preds = %._crit_edge420.us.us.i, %.preheader297.us.i
  %indvars.iv493.i = phi i64 [ %indvars.iv.next494.i, %._crit_edge420.us.us.i ], [ 0, %.preheader297.us.i ] ; 2 uses
  %.1266422.us.us.i = phi i64 [ %i.yf, %._crit_edge420.us.us.i ], [ %.0265429.us.i, %.preheader297.us.i ]
  %i.wu = add i64 %.1266422.us.us.i, %i.wk        ; 2 uses
  %i.wv = mul i64 %indvars.iv493.i, %i.ns         ; 5 uses
  br i1 %lcmp.mod1668.not, label %.prol.loopexit1666, label %.prol.preheader1665

.prol.preheader1665:                              ; preds = %.lr.ph419.us.us.i, %.prol.preheader1665
  %indvars.iv488.i.prol = phi i64 [ %indvars.iv.next489.i.prol, %.prol.preheader1665 ], [ %i.wj, %.lr.ph419.us.us.i ] ; 2 uses
  %.2267416.us.us.i.prol = phi i64 [ %i.xc, %.prol.preheader1665 ], [ %i.wu, %.lr.ph419.us.us.i ] ; 2 uses
  %prol.iter1669 = phi i64 [ %prol.iter1669.next, %.prol.preheader1665 ], [ 0, %.lr.ph419.us.us.i ]
  %i.ww = load ptr, ptr %i.wl, align 8, !tbaa !37
  %i.wx = mul i64 %indvars.iv488.i.prol, %i.nq
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wv
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 %i.wt
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.2267416.us.us.i.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xb, ptr align 1 %i.xa, i64 %i.we, i1 false)
  %i.xc = add i64 %.2267416.us.us.i.prol, %i.we   ; 3 uses
  %indvars.iv.next489.i.prol = add nsw i64 %indvars.iv488.i.prol, 1 ; 2 uses
  %prol.iter1669.next = add i64 %prol.iter1669, 1 ; 2 uses
  %prol.iter1669.cmp.not = icmp eq i64 %prol.iter1669.next, %xtraiter1667
  br i1 %prol.iter1669.cmp.not, label %.prol.loopexit1666, label %.prol.preheader1665, !llvm.loop !95

.prol.loopexit1666:                               ; preds = %.prol.preheader1665, %.lr.ph419.us.us.i
  %.lcssa1483.unr = phi i64 [ poison, %.lr.ph419.us.us.i ], [ %i.xc, %.prol.preheader1665 ]
  %indvars.iv488.i.unr = phi i64 [ %i.wj, %.lr.ph419.us.us.i ], [ %indvars.iv.next489.i.prol, %.prol.preheader1665 ]
  %.2267416.us.us.i.unr = phi i64 [ %i.wu, %.lr.ph419.us.us.i ], [ %i.xc, %.prol.preheader1665 ]
  br i1 %i.ws, label %._crit_edge420.us.us.i, label %.lr.ph419.us.us.i.new

.lr.ph419.us.us.i.new:                            ; preds = %.prol.loopexit1666, %.lr.ph419.us.us.i.new
  %indvars.iv488.i = phi i64 [ %indvars.iv.next489.i.3, %.lr.ph419.us.us.i.new ], [ %indvars.iv488.i.unr, %.prol.loopexit1666 ] ; 5 uses
  %.2267416.us.us.i = phi i64 [ %i.ye, %.lr.ph419.us.us.i.new ], [ %.2267416.us.us.i.unr, %.prol.loopexit1666 ] ; 2 uses
  %i.xd = load ptr, ptr %i.wl, align 8, !tbaa !37
  %i.xe = mul i64 %indvars.iv488.i, %i.nq
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xe
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.wv
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.wt
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wg, i64 %.2267416.us.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xi, ptr align 1 %i.xh, i64 %i.we, i1 false)
  %i.xj = add i64 %.2267416.us.us.i, %i.we        ; 2 uses
  %indvars.iv.next489.i = add nsw i64 %indvars.iv488.i, 1
  %i.xk = load ptr, ptr %i.wl, align 8, !tbaa !37
  %i.xl = mul i64 %indvars.iv.next489.i, %i.nq
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 %i.wv
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.wt
  %i.xp = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.xj
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xp, ptr align 1 %i.xo, i64 %i.we, i1 false)
  %i.xq = add i64 %i.xj, %i.we                    ; 2 uses
  %indvars.iv.next489.i.1 = add nsw i64 %indvars.iv488.i, 2
  %i.xr = load ptr, ptr %i.wl, align 8, !tbaa !37
  %i.xs = mul i64 %indvars.iv.next489.i.1, %i.nq
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 %i.wv
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 %i.wt
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.xq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.xw, ptr align 1 %i.xv, i64 %i.we, i1 false)
  %i.xx = add i64 %i.xq, %i.we                    ; 2 uses
  %indvars.iv.next489.i.2 = add nsw i64 %indvars.iv488.i, 3
  %i.xy = load ptr, ptr %i.wl, align 8, !tbaa !37
  %i.xz = mul i64 %indvars.iv.next489.i.2, %i.nq
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xy, i64 %i.xz
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 %i.wv
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 %i.wt
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wg, i64 %i.xx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yd, ptr align 1 %i.yc, i64 %i.we, i1 false)
  %i.ye = add i64 %i.xx, %i.we                    ; 2 uses
  %indvars.iv.next489.i.3 = add nsw i64 %indvars.iv488.i, 4 ; 2 uses
  %exitcond492.not.i.3 = icmp eq i64 %indvars.iv.next489.i.3, %i.wm
  br i1 %exitcond492.not.i.3, label %._crit_edge420.us.us.i, label %.lr.ph419.us.us.i.new, !llvm.loop !96

._crit_edge420.us.us.i:                           ; preds = %.lr.ph419.us.us.i.new, %.prol.loopexit1666
  %.lcssa1483 = phi i64 [ %.lcssa1483.unr, %.prol.loopexit1666 ], [ %i.ye, %.lr.ph419.us.us.i.new ]
  %i.yf = add i64 %.lcssa1483, %i.wo              ; 2 uses
  %indvars.iv.next494.i = add nuw nsw i64 %indvars.iv493.i, 1 ; 2 uses
  %exitcond496.not.i = icmp eq i64 %indvars.iv.next494.i, %i.nk
  br i1 %exitcond496.not.i, label %._crit_edge425.split.us.us.i, label %.lr.ph419.us.us.i, !llvm.loop !97

._crit_edge425.split.us.us.i:                     ; preds = %._crit_edge420.us.us.i
  %indvars.iv.next498.i = add nuw nsw i64 %indvars.iv497.i, 1 ; 2 uses
  %exitcond500.not.i = icmp eq i64 %indvars.iv.next498.i, %i.nm
  br i1 %exitcond500.not.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader297.us.i, !llvm.loop !98

bb.bp:                                            ; preds = %bb.bn
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !37 ; 4 uses
  %i.yi = icmp sgt i64 %i.nm, 0
  br i1 %i.yi, label %.preheader300.lr.ph.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader300.lr.ph.i:                            ; preds = %bb.bp
  %i.yj = icmp slt i64 %i.nk, 1
  %i.yk = sext i32 %i.os to i64                   ; 3 uses
  %i.yl = mul nsw i64 %i.ng, %i.yk
  %i.ym = icmp slt i64 %i.ng, 1
  %i.yn = sext i32 %i.ou to i64                   ; 3 uses
  %i.yo = sub nsw i64 %i.ni, %i.yn
  %i.yp = mul nsw i64 %i.yo, %i.ng
  %i.yq = icmp sge i32 %i.os, %i.ou
  %or.cond548.not555.i = select i1 %i.yj, i1 true, i1 %i.yq
  %brmerge550.i = select i1 %or.cond548.not555.i, i1 true, i1 %i.ym
  br i1 %brmerge550.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader300.lr.ph.split.split.us.split.us.i

.preheader300.lr.ph.split.split.us.split.us.i:    ; preds = %.preheader300.lr.ph.i
  %i.yr = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !37 ; 3 uses
  %i.yt = add nsw i64 %i.yn, -1
  %i.yu = mul i64 %i.nq, %i.yt
  %i.yv = mul i64 %i.nq, %i.yk
  %i.yw = getelementptr i8, ptr %i.ys, i64 %i.ng
  %i.yx = getelementptr i8, ptr %i.yw, i64 %i.yu
  %i.yy = getelementptr i8, ptr %i.yx, i64 1
  %i.yz = getelementptr i8, ptr %i.ys, i64 %i.yv
  %min.iters.check1447 = icmp ult i64 %i.ng, 8
  %ident.check1433 = icmp ne i64 %i.no, 1
  %stride.check1452 = icmp slt i64 %i.nq, 0
  %n.vec1454 = and i64 %i.ng, 9223372036854775800 ; 4 uses
  %cmp.n1461 = icmp eq i64 %i.ng, %n.vec1454
  br label %.preheader300.us.us.i

.preheader300.us.us.i:                            ; preds = %._crit_edge397.split.us.split.us.us.us.i, %.preheader300.lr.ph.split.split.us.split.us.i
  %indvars.iv478.i = phi i64 [ %indvars.iv.next479.i, %._crit_edge397.split.us.split.us.us.us.i ], [ 0, %.preheader300.lr.ph.split.split.us.split.us.i ] ; 3 uses
  %.0258406.us.us.i = phi i64 [ %i.acy, %._crit_edge397.split.us.split.us.us.us.i ], [ 0, %.preheader300.lr.ph.split.split.us.split.us.i ]
  %i.za = mul i64 %i.nu, %indvars.iv478.i         ; 2 uses
  %i.zb = mul i64 %indvars.iv478.i, %i.nu
  %invariant.gep.us.us.i = getelementptr i8, ptr %i.ys, i64 %i.zb
  %i.zc = getelementptr i8, ptr %i.yy, i64 %i.za
  %i.zd = getelementptr i8, ptr %i.yz, i64 %i.za
  br label %.preheader299.lr.ph.us.us.us.us.i

.preheader299.lr.ph.us.us.us.us.i:                ; preds = %._crit_edge390.split.us.us.us.us.us.i, %.preheader300.us.us.i
  %indvars.iv474.i = phi i64 [ %indvars.iv.next475.i, %._crit_edge390.split.us.us.us.us.us.i ], [ 0, %.preheader300.us.us.i ] ; 3 uses
  %.1259394.us.us.us.us.i = phi i64 [ %i.acy, %._crit_edge390.split.us.us.us.us.us.i ], [ %.0258406.us.us.i, %.preheader300.us.us.i ]
  %i.ze = mul i64 %i.ns, %indvars.iv474.i         ; 2 uses
  %scevgep1444 = getelementptr i8, ptr %i.zc, i64 %i.ze
  %scevgep1445 = getelementptr i8, ptr %i.zd, i64 %i.ze
  %i.zf = add i64 %.1259394.us.us.us.us.i, %i.yl
  %i.zg = mul i64 %indvars.iv474.i, %i.ns
  %gep.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %i.zg
  br label %.preheader299.us.us.us.us.us.i

.preheader299.us.us.us.us.us.i:                   ; preds = %._crit_edge383.us.us.us.us.us.i, %.preheader299.lr.ph.us.us.us.us.i
  %indvars.iv470.i = phi i64 [ %indvars.iv.next471.i, %._crit_edge383.us.us.us.us.us.i ], [ %i.yk, %.preheader299.lr.ph.us.us.us.us.i ] ; 2 uses
  %.2260388.us.us.us.us.us.i = phi i64 [ %.lcssa1142, %._crit_edge383.us.us.us.us.us.i ], [ %i.zf, %.preheader299.lr.ph.us.us.us.us.i ] ; 6 uses
  %i.zh = mul i64 %indvars.iv470.i, %i.nq
  %gep393.us.us.us.us.i = getelementptr i8, ptr %gep.us.us.i, i64 %i.zh ; 11 uses
  %i.zi = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %i.ng
  %i.zj = getelementptr i8, ptr %i.zi, i64 -1
  %i.zk = icmp ult ptr %i.zj, %gep393.us.us.us.us.i
  %i.zl = or i1 %ident.check1433, %i.zk
  %or.cond1789 = select i1 %min.iters.check1447, i1 true, i1 %i.zl
  br i1 %or.cond1789, label %scalar.ph1446.preheader, label %vector.memcheck1448

vector.memcheck1448:                              ; preds = %.preheader299.us.us.us.us.us.i
  %i.zm = shl i64 %.2260388.us.us.us.us.us.i, 1
  %i.zn = getelementptr nuw i8, ptr %i.yh, i64 %i.zm
  %2 = add i64 %.2260388.us.us.us.us.us.i, %i.ng
  %3 = shl i64 %2, 1
  %i.zo = getelementptr i8, ptr %i.yh, i64 %3
  %bound01449 = icmp ult ptr %i.zn, %scevgep1444
  %bound11450 = icmp ult ptr %scevgep1445, %i.zo
  %found.conflict1451 = and i1 %bound01449, %bound11450
  %i.zp = or i1 %found.conflict1451, %stride.check1452
  br i1 %i.zp, label %scalar.ph1446.preheader, label %vector.ph1453

vector.ph1453:                                    ; preds = %vector.memcheck1448
  %i.zq = add i64 %.2260388.us.us.us.us.us.i, %n.vec1454 ; 2 uses
  %i.zr = getelementptr [2 x i8], ptr %i.yh, i64 %.2260388.us.us.us.us.us.i
  br label %vector.body1455

vector.body1455:                                  ; preds = %vector.body1455, %vector.ph1453
  %index1456 = phi i64 [ 0, %vector.ph1453 ], [ %index.next1459, %vector.body1455 ] ; 10 uses
  %i.zs = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %index1456
  %i.zt = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %index1456
  %i.zu = getelementptr i8, ptr %i.zt, i64 1
  %i.zv = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %index1456
  %i.zw = getelementptr i8, ptr %i.zv, i64 2
  %i.zx = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %index1456
  %i.zy = getelementptr i8, ptr %i.zx, i64 3
  %i.zz = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %index1456
  %i.aaa = getelementptr i8, ptr %i.zz, i64 4
  %i.aab = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %index1456
  %i.aac = getelementptr i8, ptr %i.aab, i64 5
  %i.aad = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %index1456
  %i.aae = getelementptr i8, ptr %i.aad, i64 6
  %i.aaf = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %index1456
  %i.aag = getelementptr i8, ptr %i.aaf, i64 7
  %i.aah = load i16, ptr %i.zs, align 2, !tbaa !41, !alias.scope !256
  %i.aai = load i16, ptr %i.zu, align 2, !tbaa !41, !alias.scope !256
  %i.aaj = load i16, ptr %i.zw, align 2, !tbaa !41, !alias.scope !256
  %i.aak = load i16, ptr %i.zy, align 2, !tbaa !41, !alias.scope !256
  %i.aal = load i16, ptr %i.aaa, align 2, !tbaa !41, !alias.scope !256
  %i.aam = load i16, ptr %i.aac, align 2, !tbaa !41, !alias.scope !256
  %i.aan = load i16, ptr %i.aae, align 2, !tbaa !41, !alias.scope !256
  %i.aao = load i16, ptr %i.aag, align 2, !tbaa !41, !alias.scope !256
  %i.aap = insertelement <8 x i16> poison, i16 %i.aah, i64 0
  %i.aaq = insertelement <8 x i16> %i.aap, i16 %i.aai, i64 1
  %i.aar = insertelement <8 x i16> %i.aaq, i16 %i.aaj, i64 2
  %i.aas = insertelement <8 x i16> %i.aar, i16 %i.aak, i64 3
  %i.aat = insertelement <8 x i16> %i.aas, i16 %i.aal, i64 4
  %i.aau = insertelement <8 x i16> %i.aat, i16 %i.aam, i64 5
  %i.aav = insertelement <8 x i16> %i.aau, i16 %i.aan, i64 6
  %i.aaw = insertelement <8 x i16> %i.aav, i16 %i.aao, i64 7
  %i.aax = zext <8 x i16> %i.aaw to <8 x i64>
  %wide.gep1457 = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, <8 x i64> %i.aax
  %wide.masked.gather1458 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1457, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43 ; 2 uses
  %i.aay = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.gather1458)
  %i.aaz = fmul <8 x float> %i.aay, splat (float f0x77800000)
  %i.aba = fmul <8 x float> %i.aaz, splat (float f0x08800000)
  %i.abb = bitcast <8 x float> %wide.masked.gather1458 to <8 x i32> ; 2 uses
  %i.abc = shl <8 x i32> %i.abb, splat (i32 1)    ; 2 uses
  %i.abd = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.abc, <8 x i32> splat (i32 1895825408))
  %i.abe = lshr exact <8 x i32> %i.abd, splat (i32 1)
  %i.abf = and <8 x i32> %i.abe, splat (i32 2139095040)
  %i.abg = add nuw <8 x i32> %i.abf, splat (i32 125829120)
  %i.abh = bitcast <8 x i32> %i.abg to <8 x float>
  %i.abi = fadd <8 x float> %i.aba, %i.abh
  %i.abj = bitcast <8 x float> %i.abi to <8 x i32> ; 2 uses
  %i.abk = lshr <8 x i32> %i.abj, splat (i32 13)
  %i.abl = and <8 x i32> %i.abk, splat (i32 31744)
  %i.abm = and <8 x i32> %i.abj, splat (i32 4095)
  %i.abn = add nuw nsw <8 x i32> %i.abl, %i.abm
  %i.abo = lshr <8 x i32> %i.abb, splat (i32 16)
  %i.abp = and <8 x i32> %i.abo, splat (i32 32768)
  %i.abq = icmp ugt <8 x i32> %i.abc, splat (i32 -16777216)
  %i.abr = select <8 x i1> %i.abq, <8 x i32> splat (i32 32256), <8 x i32> %i.abn
  %i.abs = or <8 x i32> %i.abr, %i.abp
  %i.abt = trunc nuw <8 x i32> %i.abs to <8 x i16>
  %i.abu = getelementptr [2 x i8], ptr %i.zr, i64 %index1456
  store <8 x i16> %i.abt, ptr %i.abu, align 2, !tbaa !41, !alias.scope !257, !noalias !256
  %index.next1459 = add nuw i64 %index1456, 8     ; 2 uses
  %i.abv = icmp eq i64 %index.next1459, %n.vec1454
  br i1 %i.abv, label %middle.block1460, label %vector.body1455, !llvm.loop !102

middle.block1460:                                 ; preds = %vector.body1455
  br i1 %cmp.n1461, label %._crit_edge383.us.us.us.us.us.i, label %scalar.ph1446.preheader

scalar.ph1446.preheader:                          ; preds = %vector.memcheck1448, %.preheader299.us.us.us.us.us.i, %middle.block1460
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck1448 ], [ %n.vec1454, %middle.block1460 ], [ 0, %.preheader299.us.us.us.us.us.i ]
  %.3261380.us.us.us.us.us.i.ph = phi i64 [ %.2260388.us.us.us.us.us.i, %vector.memcheck1448 ], [ %i.zq, %middle.block1460 ], [ %.2260388.us.us.us.us.us.i, %.preheader299.us.us.us.us.us.i ]
  br label %scalar.ph1446

scalar.ph1446:                                    ; preds = %scalar.ph1446.preheader, %scalar.ph1446
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph1446 ], [ %indvars.iv.i.ph, %scalar.ph1446.preheader ] ; 2 uses
  %.3261380.us.us.us.us.us.i = phi i64 [ %i.acx, %scalar.ph1446 ], [ %.3261380.us.us.us.us.us.i.ph, %scalar.ph1446.preheader ] ; 2 uses
  %i.abw = mul i64 %indvars.iv.i, %i.no
  %gep.us.us.us.us.us.i = getelementptr i8, ptr %gep393.us.us.us.us.i, i64 %i.abw
  %i.abx = load i16, ptr %gep.us.us.us.us.us.i, align 2, !tbaa !41
  %i.aby = zext i16 %i.abx to i64
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aby
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !43 ; 2 uses
  %i.acb = tail call float @llvm.fabs.f32(float %i.aca)
  %i.acc = fmul float %i.acb, f0x77800000
  %i.acd = fmul float %i.acc, f0x08800000
  %i.ace = bitcast float %i.aca to i32            ; 2 uses
  %i.acf = shl i32 %i.ace, 1                      ; 2 uses
  %i.acg = tail call i32 @llvm.umax.i32(i32 %i.acf, i32 1895825408)
  %spec.store.select.i.i.us.us.us.us.us.i = lshr exact i32 %i.acg, 1
  %i.ach = and i32 %spec.store.select.i.i.us.us.us.us.us.i, 2139095040
  %i.aci = add nuw i32 %i.ach, 125829120
  %i.acj = bitcast i32 %i.aci to float
  %i.ack = fadd float %i.acd, %i.acj
  %i.acl = bitcast float %i.ack to i32            ; 2 uses
  %i.acm = lshr i32 %i.acl, 13
  %i.acn = and i32 %i.acm, 31744
  %i.aco = and i32 %i.acl, 4095
  %i.acp = add nuw nsw i32 %i.acn, %i.aco
  %i.acq = lshr i32 %i.ace, 16
  %i.acr = and i32 %i.acq, 32768
  %i.acs = icmp ugt i32 %i.acf, -16777216
  %i.act = select i1 %i.acs, i32 32256, i32 %i.acp
  %i.acu = or i32 %i.act, %i.acr
  %i.acv = trunc nuw i32 %i.acu to i16
  %i.acw = getelementptr inbounds nuw [2 x i8], ptr %i.yh, i64 %.3261380.us.us.us.us.us.i
  store i16 %i.acv, ptr %i.acw, align 2, !tbaa !41
  %i.acx = add i64 %.3261380.us.us.us.us.us.i, 1  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond469.not.i64 = icmp eq i64 %indvars.iv.next.i, %i.ng
  br i1 %exitcond469.not.i64, label %._crit_edge383.us.us.us.us.us.i, label %scalar.ph1446, !llvm.loop !103

._crit_edge383.us.us.us.us.us.i:                  ; preds = %scalar.ph1446, %middle.block1460
  %.lcssa1142 = phi i64 [ %i.zq, %middle.block1460 ], [ %i.acx, %scalar.ph1446 ] ; 2 uses
  %indvars.iv.next471.i = add nsw i64 %indvars.iv470.i, 1 ; 2 uses
  %exitcond473.not.i65 = icmp eq i64 %indvars.iv.next471.i, %i.yn
  br i1 %exitcond473.not.i65, label %._crit_edge390.split.us.us.us.us.us.i, label %.preheader299.us.us.us.us.us.i, !llvm.loop !104

._crit_edge390.split.us.us.us.us.us.i:            ; preds = %._crit_edge383.us.us.us.us.us.i
  %i.acy = add i64 %.lcssa1142, %i.yp             ; 2 uses
  %indvars.iv.next475.i = add nuw nsw i64 %indvars.iv474.i, 1 ; 2 uses
  %exitcond477.not.i = icmp eq i64 %indvars.iv.next475.i, %i.nk
  br i1 %exitcond477.not.i, label %._crit_edge397.split.us.split.us.us.us.i, label %.preheader299.lr.ph.us.us.us.us.i, !llvm.loop !105

._crit_edge397.split.us.split.us.us.us.i:         ; preds = %._crit_edge390.split.us.us.us.us.us.i
  %indvars.iv.next479.i = add nuw nsw i64 %indvars.iv478.i, 1 ; 2 uses
  %exitcond481.not.i = icmp eq i64 %indvars.iv.next479.i, %i.nm
  br i1 %exitcond481.not.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader300.us.us.i, !llvm.loop !106

bb.bq:                                            ; preds = %bb.ak
  br i1 %i.na, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #17
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.acz = load i32, ptr %i.b, align 8, !tbaa !30
  %i.ada = tail call zeroext i1 @ggml_is_quantized(i32 noundef %i.acz)
  br i1 %i.ada, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.adb = load i32, ptr %1, align 8, !tbaa !30
  %i.adc = tail call zeroext i1 @ggml_is_quantized(i32 noundef %i.adb)
  br i1 %i.adc, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #17
  unreachable

bb.bv:                                            ; preds = %bb.bt
  %i.add = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ade = load i64, ptr %i.add, align 8, !tbaa !31 ; 27 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.adg = load i64, ptr %i.adf, align 8, !tbaa !31 ; 4 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.adi = load i64, ptr %i.adh, align 8, !tbaa !31 ; 8 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !31 ; 7 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.adm = load i64, ptr %i.adl, align 8, !tbaa !31 ; 8 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ado = load i64, ptr %i.adn, align 8, !tbaa !31 ; 13 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.adq = load i64, ptr %i.adp, align 8, !tbaa !31 ; 6 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ads = load i64, ptr %i.adr, align 8, !tbaa !31 ; 6 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.adu = load i64, ptr %i.adt, align 8, !tbaa !31 ; 8 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.adw = load i64, ptr %i.adv, align 8, !tbaa !31 ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ady = load i64, ptr %i.adx, align 8, !tbaa !31 ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aea = load i64, ptr %i.adz, align 8, !tbaa !31 ; 3 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aec = load i64, ptr %i.aeb, align 8, !tbaa !31 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aee = load i64, ptr %i.aed, align 8, !tbaa !31 ; 6 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !31 ; 2 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aei = load i64, ptr %i.aeh, align 8, !tbaa !31 ; 2 uses
  %i.aej = load i32, ptr %0, align 8, !tbaa !35
  %i.aek = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !36 ; 2 uses
  %i.aem = trunc i64 %i.adg to i32                ; 2 uses
  %i.aen = add i32 %i.aem, -1
  %i.aeo = add i32 %i.aen, %i.ael
  %i.aep = sdiv i32 %i.aeo, %i.ael                ; 2 uses
  %i.aeq = mul i32 %i.aep, %i.aej                 ; 9 uses
end_hunk_0
begin_hunk_1_@ggml_compute_forward_dup:bb.a

vector.memcheck1417:                              ; preds = %.lr.ph436.us.us.us.us.us.i
  %i.alo = mul i64 %i.ado, %indvar1413
  %i.alp = add i64 %i.alk, %i.alo
  %i.alq = sub i64 %i.akr, %i.alp
  %i.alr = shl i64 %.2272439.us.us.us.us.us.i, 1
  %i.als = add i64 %i.alq, %i.alr
  %i.alt = add i64 %i.als, -1
  %diff.check1418 = icmp ult i64 %i.alt, 15
  br i1 %diff.check1418, label %scalar.ph1415.preheader, label %vector.ph1419

vector.ph1419:                                    ; preds = %vector.memcheck1417
  %i.alu = add i64 %.2272439.us.us.us.us.us.i, %n.vec1420 ; 2 uses
  %i.alv = getelementptr [2 x i8], ptr %i.akq, i64 %.2272439.us.us.us.us.us.i
  br label %vector.body1421

vector.body1421:                                  ; preds = %vector.body1421, %vector.ph1419
  %index1422 = phi i64 [ 0, %vector.ph1419 ], [ %index.next1427, %vector.body1421 ] ; 3 uses
  %i.alw = getelementptr inbounds nuw [2 x i8], ptr %gep446.us.us.us.us.us.i, i64 %index1422
  %wide.load1423 = load <8 x i16>, ptr %i.alw, align 2, !tbaa !41
  %i.alx = zext <8 x i16> %wide.load1423 to <8 x i64>
  %wide.gep1424 = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, <8 x i64> %i.alx
  %wide.masked.gather1425 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1424, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43 ; 2 uses
  %i.aly = bitcast <8 x float> %wide.masked.gather1425 to <8 x i32> ; 2 uses
  %i.alz = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.gather1425)
  %i.ama = bitcast <8 x float> %i.alz to <8 x i32>
  %i.amb = icmp samesign ugt <8 x i32> %i.ama, splat (i32 2139095040)
  %i.amc = lshr <8 x i32> %i.aly, splat (i32 16)  ; 2 uses
  %i.amd = and <8 x i32> %i.amc, splat (i32 1)
  %i.ame = add <8 x i32> %i.aly, splat (i32 32767)
  %i.amf = add <8 x i32> %i.ame, %i.amd
  %i.amg = lshr <8 x i32> %i.amf, splat (i32 16)
  %i.amh = trunc nuw <8 x i32> %i.amg to <8 x i16>
  %i.ami = trunc nuw <8 x i32> %i.amc to <8 x i16>
  %i.amj = or <8 x i16> %i.ami, splat (i16 64)
  %predphi1426 = select <8 x i1> %i.amb, <8 x i16> %i.amj, <8 x i16> %i.amh
  %i.amk = getelementptr [2 x i8], ptr %i.alv, i64 %index1422
  store <8 x i16> %predphi1426, ptr %i.amk, align 2, !tbaa !41
  %index.next1427 = add nuw i64 %index1422, 8     ; 2 uses
  %i.aml = icmp eq i64 %index.next1427, %n.vec1420
  br i1 %i.aml, label %middle.block1428, label %vector.body1421, !llvm.loop !117

middle.block1428:                                 ; preds = %vector.body1421
  br i1 %cmp.n1429, label %._crit_edge437.us.us.us.us.us.i, label %scalar.ph1415.preheader

scalar.ph1415.preheader:                          ; preds = %vector.memcheck1417, %.lr.ph436.us.us.us.us.us.i, %middle.block1428
  %indvars.iv535.i.ph = phi i64 [ 0, %vector.memcheck1417 ], [ 0, %.lr.ph436.us.us.us.us.us.i ], [ %n.vec1420, %middle.block1428 ] ; 4 uses
  %.3273433.us.us.us.us.us.i.ph = phi i64 [ %.2272439.us.us.us.us.us.i, %vector.memcheck1417 ], [ %.2272439.us.us.us.us.us.i, %.lr.ph436.us.us.us.us.us.i ], [ %i.alu, %middle.block1428 ] ; 3 uses
  %.neg1701 = or disjoint i64 %indvars.iv535.i.ph, 1
  br i1 %lcmp.mod1647.not, label %scalar.ph1415.prol.loopexit, label %scalar.ph1415.prol

scalar.ph1415.prol:                               ; preds = %scalar.ph1415.preheader
  %i.amm = getelementptr inbounds nuw [2 x i8], ptr %gep446.us.us.us.us.us.i, i64 %indvars.iv535.i.ph
  %i.amn = load i16, ptr %i.amm, align 2, !tbaa !41
  %i.amo = zext i16 %i.amn to i64
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.amo
  %i.amq = load float, ptr %i.amp, align 4, !tbaa !43 ; 2 uses
  %i.amr = bitcast float %i.amq to i32            ; 2 uses
  %i.ams = tail call float @llvm.fabs.f32(float %i.amq)
  %i.amt = bitcast float %i.ams to i32
  %i.amu = icmp samesign ugt i32 %i.amt, 2139095040
  %i.amv = lshr i32 %i.amr, 16                    ; 2 uses
  br i1 %i.amu, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %scalar.ph1415.prol
  %i.amw = and i32 %i.amv, 1
  %i.amx = add i32 %i.amr, 32767
  %i.amy = add i32 %i.amx, %i.amw
  %i.amz = lshr i32 %i.amy, 16
  %i.ana = trunc nuw i32 %i.amz to i16
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.prol

bb.cr:                                            ; preds = %scalar.ph1415.prol
  %i.anb = trunc nuw i32 %i.amv to i16
  %i.anc = or i16 %i.anb, 64
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.prol

_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.prol:     ; preds = %bb.cr, %bb.cq
  %.sroa.04.0.i.i.us.us.us.us.us.i.prol = phi i16 [ %i.anc, %bb.cr ], [ %i.ana, %bb.cq ]
  %i.and = getelementptr inbounds nuw [2 x i8], ptr %i.akq, i64 %.3273433.us.us.us.us.us.i.ph
  store i16 %.sroa.04.0.i.i.us.us.us.us.us.i.prol, ptr %i.and, align 2, !tbaa !41
  %i.ane = add i64 %.3273433.us.us.us.us.us.i.ph, 1 ; 2 uses
  %indvars.iv.next536.i.prol = or disjoint i64 %indvars.iv535.i.ph, 1
  br label %scalar.ph1415.prol.loopexit

scalar.ph1415.prol.loopexit:                      ; preds = %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.prol, %scalar.ph1415.preheader
  %.lcssa1493.unr = phi i64 [ poison, %scalar.ph1415.preheader ], [ %i.ane, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.prol ]
  %indvars.iv535.i.unr = phi i64 [ %indvars.iv535.i.ph, %scalar.ph1415.preheader ], [ %indvars.iv.next536.i.prol, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.prol ]
  %.3273433.us.us.us.us.us.i.unr = phi i64 [ %.3273433.us.us.us.us.us.i.ph, %scalar.ph1415.preheader ], [ %i.ane, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.prol ]
  %i.anf = icmp eq i64 %i.ade, %.neg1701
  br i1 %i.anf, label %._crit_edge437.us.us.us.us.us.i, label %scalar.ph1415

scalar.ph1415:                                    ; preds = %scalar.ph1415.prol.loopexit, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.1
  %indvars.iv535.i = phi i64 [ %indvars.iv.next536.i.1, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.1 ], [ %indvars.iv535.i.unr, %scalar.ph1415.prol.loopexit ] ; 3 uses
  %.3273433.us.us.us.us.us.i = phi i64 [ %i.aos, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.1 ], [ %.3273433.us.us.us.us.us.i.unr, %scalar.ph1415.prol.loopexit ] ; 3 uses
  %i.ang = getelementptr inbounds nuw [2 x i8], ptr %gep446.us.us.us.us.us.i, i64 %indvars.iv535.i
  %i.anh = load i16, ptr %i.ang, align 2, !tbaa !41
  %i.ani = zext i16 %i.anh to i64
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.ani
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !43 ; 2 uses
  %i.anl = bitcast float %i.ank to i32            ; 2 uses
  %i.anm = tail call float @llvm.fabs.f32(float %i.ank)
  %i.ann = bitcast float %i.anm to i32
  %i.ano = icmp samesign ugt i32 %i.ann, 2139095040
  %i.anp = lshr i32 %i.anl, 16                    ; 2 uses
  br i1 %i.ano, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %scalar.ph1415
  %i.anq = and i32 %i.anp, 1
  %i.anr = add i32 %i.anl, 32767
  %i.ans = add i32 %i.anr, %i.anq
  %i.ant = lshr i32 %i.ans, 16
  %i.anu = trunc nuw i32 %i.ant to i16
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i

bb.ct:                                            ; preds = %scalar.ph1415
  %i.anv = trunc nuw i32 %i.anp to i16
  %i.anw = or i16 %i.anv, 64
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i

_ZL11f32_to_bf16f.exit.us.us.us.us.us.i:          ; preds = %bb.ct, %bb.cs
  %.sroa.04.0.i.i.us.us.us.us.us.i = phi i16 [ %i.anw, %bb.ct ], [ %i.anu, %bb.cs ]
  %i.anx = getelementptr inbounds nuw [2 x i8], ptr %i.akq, i64 %.3273433.us.us.us.us.us.i
  store i16 %.sroa.04.0.i.i.us.us.us.us.us.i, ptr %i.anx, align 2, !tbaa !41
  %i.any = getelementptr inbounds nuw [2 x i8], ptr %gep446.us.us.us.us.us.i, i64 %indvars.iv535.i
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 2
  %i.aoa = load i16, ptr %i.anz, align 2, !tbaa !41
  %i.aob = zext i16 %i.aoa to i64
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.aob
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !43 ; 2 uses
  %i.aoe = bitcast float %i.aod to i32            ; 2 uses
  %i.aof = tail call float @llvm.fabs.f32(float %i.aod)
  %i.aog = bitcast float %i.aof to i32
  %i.aoh = icmp samesign ugt i32 %i.aog, 2139095040
  %i.aoi = lshr i32 %i.aoe, 16                    ; 2 uses
  br i1 %i.aoh, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i
  %i.aoj = and i32 %i.aoi, 1
  %i.aok = add i32 %i.aoe, 32767
  %i.aol = add i32 %i.aok, %i.aoj
  %i.aom = lshr i32 %i.aol, 16
  %i.aon = trunc nuw i32 %i.aom to i16
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.1

bb.cv:                                            ; preds = %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i
  %i.aoo = trunc nuw i32 %i.aoi to i16
  %i.aop = or i16 %i.aoo, 64
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.1

_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.1:        ; preds = %bb.cv, %bb.cu
  %.sroa.04.0.i.i.us.us.us.us.us.i.1 = phi i16 [ %i.aop, %bb.cv ], [ %i.aon, %bb.cu ]
  %i.aoq = getelementptr [2 x i8], ptr %i.akq, i64 %.3273433.us.us.us.us.us.i
  %i.aor = getelementptr i8, ptr %i.aoq, i64 2
  store i16 %.sroa.04.0.i.i.us.us.us.us.us.i.1, ptr %i.aor, align 2, !tbaa !41
  %i.aos = add i64 %.3273433.us.us.us.us.us.i, 2  ; 2 uses
  %indvars.iv.next536.i.1 = add nuw nsw i64 %indvars.iv535.i, 2 ; 2 uses
  %exitcond538.not.i.1 = icmp eq i64 %indvars.iv.next536.i.1, %i.ade
  br i1 %exitcond538.not.i.1, label %._crit_edge437.us.us.us.us.us.i, label %scalar.ph1415, !llvm.loop !118

._crit_edge437.us.us.us.us.us.i:                  ; preds = %scalar.ph1415.prol.loopexit, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.1, %middle.block1428
  %.lcssa1146 = phi i64 [ %i.alu, %middle.block1428 ], [ %.lcssa1493.unr, %scalar.ph1415.prol.loopexit ], [ %i.aos, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i.1 ] ; 2 uses
  %indvars.iv.next540.i = add nsw i64 %indvars.iv539.i, 1 ; 2 uses
  %exitcond543.not.i = icmp eq i64 %indvars.iv.next540.i, %i.akw
  %indvar.next1414 = add i64 %indvar1413, 1
  br i1 %exitcond543.not.i, label %._crit_edge443.split.us.us.us.us.us.i, label %.lr.ph436.us.us.us.us.us.i, !llvm.loop !119

._crit_edge443.split.us.us.us.us.us.i:            ; preds = %._crit_edge437.us.us.us.us.us.i
  %i.aot = add i64 %.lcssa1146, %i.aky            ; 2 uses
  %indvars.iv.next545.i = add nuw nsw i64 %indvars.iv544.i, 1 ; 2 uses
  %exitcond547.not.i = icmp eq i64 %indvars.iv.next545.i, %i.adi
  br i1 %exitcond547.not.i, label %._crit_edge450.split.us.split.us.us.us.i, label %.lr.ph442.us.us.us.us.i, !llvm.loop !120

._crit_edge450.split.us.split.us.us.us.i:         ; preds = %._crit_edge443.split.us.us.us.us.us.i
  %indvars.iv.next549.i = add nuw nsw i64 %indvars.iv548.i, 1 ; 2 uses
  %exitcond551.not.i = icmp eq i64 %indvars.iv.next549.i, %i.adk
  br i1 %exitcond551.not.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader304.us.us.i90, !llvm.loop !121

bb.cw:                                            ; preds = %bb.co
  br i1 %i.aks, label %.preheader307.lr.ph.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader307.lr.ph.i:                            ; preds = %bb.cw
  %i.aou = icmp slt i64 %i.adi, 1
  %i.aov = sext i32 %i.aeq to i64                 ; 3 uses
  %i.aow = mul nsw i64 %i.ade, %i.aov
  %i.aox = icmp slt i64 %i.ade, 1
  %i.aoy = sext i32 %i.aes to i64                 ; 3 uses
  %i.aoz = sub nsw i64 %i.adg, %i.aoy
  %i.apa = mul nsw i64 %i.aoz, %i.ade
  %i.apb = icmp sge i32 %i.aeq, %i.aes
  %or.cond600.not607.i = select i1 %i.aou, i1 true, i1 %i.apb
  %brmerge602.i = select i1 %or.cond600.not607.i, i1 true, i1 %i.aox
  br i1 %brmerge602.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader307.lr.ph.split.split.us.split.us.i

.preheader307.lr.ph.split.split.us.split.us.i:    ; preds = %.preheader307.lr.ph.i
  %i.apc = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !37 ; 3 uses
  %i.ape = add nsw i64 %i.aoy, -1
  %i.apf = mul i64 %i.ado, %i.ape
  %i.apg = mul i64 %i.ado, %i.aov
  %i.aph = getelementptr i8, ptr %i.apd, i64 %i.ade
  %i.api = getelementptr i8, ptr %i.aph, i64 %i.apf
  %i.apj = getelementptr i8, ptr %i.api, i64 1
  %i.apk = getelementptr i8, ptr %i.apd, i64 %i.apg
  %min.iters.check1392 = icmp ult i64 %i.ade, 8
  %ident.check1378 = icmp ne i64 %i.adm, 1
  %stride.check1397 = icmp slt i64 %i.ado, 0
  %n.vec1399 = and i64 %i.ade, 9223372036854775800 ; 4 uses
  %cmp.n1406 = icmp eq i64 %i.ade, %n.vec1399
  %xtraiter1643 = and i64 %i.ade, 1
  %lcmp.mod1644.not = icmp eq i64 %xtraiter1643, 0
  br label %.preheader307.us.us.i

.preheader307.us.us.i:                            ; preds = %._crit_edge411.split.us.split.us.us.us.i, %.preheader307.lr.ph.split.split.us.split.us.i
  %indvars.iv519.i = phi i64 [ %indvars.iv.next520.i, %._crit_edge411.split.us.split.us.us.us.i ], [ 0, %.preheader307.lr.ph.split.split.us.split.us.i ] ; 3 uses
  %.0262421.us.us.i = phi i64 [ %i.aud, %._crit_edge411.split.us.split.us.us.us.i ], [ 0, %.preheader307.lr.ph.split.split.us.split.us.i ]
  %i.apl = mul i64 %i.ads, %indvars.iv519.i       ; 2 uses
  %i.apm = mul i64 %indvars.iv519.i, %i.ads
  %invariant.gep.us429.us.i = getelementptr i8, ptr %i.apd, i64 %i.apm
  %i.apn = getelementptr i8, ptr %i.apj, i64 %i.apl
  %i.apo = getelementptr i8, ptr %i.apk, i64 %i.apl
  br label %.preheader306.lr.ph.us.us.us.us.i

.preheader306.lr.ph.us.us.us.us.i:                ; preds = %._crit_edge402.split.us.us.us.us.us.i, %.preheader307.us.us.i
  %indvars.iv515.i = phi i64 [ %indvars.iv.next516.i, %._crit_edge402.split.us.us.us.us.us.i ], [ 0, %.preheader307.us.us.i ] ; 3 uses
  %.1263408.us.us.us.us.i = phi i64 [ %i.aud, %._crit_edge402.split.us.us.us.us.us.i ], [ %.0262421.us.us.i, %.preheader307.us.us.i ]
  %i.app = mul i64 %i.adq, %indvars.iv515.i       ; 2 uses
  %scevgep1389 = getelementptr i8, ptr %i.apn, i64 %i.app
  %scevgep1390 = getelementptr i8, ptr %i.apo, i64 %i.app
  %i.apq = add i64 %.1263408.us.us.us.us.i, %i.aow
  %i.apr = mul i64 %indvars.iv515.i, %i.adq
  %gep.us430.us.i = getelementptr i8, ptr %invariant.gep.us429.us.i, i64 %i.apr
  br label %.preheader306.us.us.us.us.us.i86

.preheader306.us.us.us.us.us.i86:                 ; preds = %._crit_edge395.us.us.us.us.us.i, %.preheader306.lr.ph.us.us.us.us.i
  %indvars.iv511.i = phi i64 [ %indvars.iv.next512.i, %._crit_edge395.us.us.us.us.us.i ], [ %i.aov, %.preheader306.lr.ph.us.us.us.us.i ] ; 2 uses
  %.2264400.us.us.us.us.us.i = phi i64 [ %.lcssa1148, %._crit_edge395.us.us.us.us.us.i ], [ %i.apq, %.preheader306.lr.ph.us.us.us.us.i ] ; 6 uses
  %i.aps = mul i64 %indvars.iv511.i, %i.ado
  %gep407.us.us.us.us.i = getelementptr i8, ptr %gep.us430.us.i, i64 %i.aps ; 13 uses
  %i.apt = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %i.ade
  %i.apu = getelementptr i8, ptr %i.apt, i64 -1
  %i.apv = icmp ult ptr %i.apu, %gep407.us.us.us.us.i
  %i.apw = or i1 %ident.check1378, %i.apv
  %or.cond1793 = select i1 %min.iters.check1392, i1 true, i1 %i.apw
  br i1 %or.cond1793, label %scalar.ph1391.preheader, label %vector.memcheck1393

vector.memcheck1393:                              ; preds = %.preheader306.us.us.us.us.us.i86
  %i.apx = shl i64 %.2264400.us.us.us.us.us.i, 1
  %i.apy = getelementptr i8, ptr %i.akq, i64 %i.apx
  %4 = add i64 %.2264400.us.us.us.us.us.i, %i.ade
  %5 = shl i64 %4, 1
  %i.apz = getelementptr i8, ptr %i.akq, i64 %5
  %bound01394 = icmp ult ptr %i.apy, %scevgep1389
  %bound11395 = icmp ult ptr %scevgep1390, %i.apz
  %found.conflict1396 = and i1 %bound01394, %bound11395
  %i.aqa = or i1 %found.conflict1396, %stride.check1397
  br i1 %i.aqa, label %scalar.ph1391.preheader, label %vector.ph1398

vector.ph1398:                                    ; preds = %vector.memcheck1393
  %i.aqb = add i64 %.2264400.us.us.us.us.us.i, %n.vec1399 ; 2 uses
  %i.aqc = getelementptr [2 x i8], ptr %i.akq, i64 %.2264400.us.us.us.us.us.i
  br label %vector.body1400

vector.body1400:                                  ; preds = %vector.body1400, %vector.ph1398
  %index1401 = phi i64 [ 0, %vector.ph1398 ], [ %index.next1404, %vector.body1400 ] ; 10 uses
  %i.aqd = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %index1401
  %i.aqe = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %index1401
  %i.aqf = getelementptr i8, ptr %i.aqe, i64 1
  %i.aqg = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %index1401
  %i.aqh = getelementptr i8, ptr %i.aqg, i64 2
  %i.aqi = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %index1401
  %i.aqj = getelementptr i8, ptr %i.aqi, i64 3
  %i.aqk = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %index1401
  %i.aql = getelementptr i8, ptr %i.aqk, i64 4
  %i.aqm = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %index1401
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 5
  %i.aqo = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %index1401
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 6
  %i.aqq = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %index1401
  %i.aqr = getelementptr i8, ptr %i.aqq, i64 7
  %i.aqs = load i16, ptr %i.aqd, align 2, !tbaa !41, !alias.scope !258
  %i.aqt = load i16, ptr %i.aqf, align 2, !tbaa !41, !alias.scope !258
  %i.aqu = load i16, ptr %i.aqh, align 2, !tbaa !41, !alias.scope !258
  %i.aqv = load i16, ptr %i.aqj, align 2, !tbaa !41, !alias.scope !258
  %i.aqw = load i16, ptr %i.aql, align 2, !tbaa !41, !alias.scope !258
  %i.aqx = load i16, ptr %i.aqn, align 2, !tbaa !41, !alias.scope !258
  %i.aqy = load i16, ptr %i.aqp, align 2, !tbaa !41, !alias.scope !258
  %i.aqz = load i16, ptr %i.aqr, align 2, !tbaa !41, !alias.scope !258
  %i.ara = insertelement <8 x i16> poison, i16 %i.aqs, i64 0
  %i.arb = insertelement <8 x i16> %i.ara, i16 %i.aqt, i64 1
  %i.arc = insertelement <8 x i16> %i.arb, i16 %i.aqu, i64 2
  %i.ard = insertelement <8 x i16> %i.arc, i16 %i.aqv, i64 3
  %i.are = insertelement <8 x i16> %i.ard, i16 %i.aqw, i64 4
  %i.arf = insertelement <8 x i16> %i.are, i16 %i.aqx, i64 5
  %i.arg = insertelement <8 x i16> %i.arf, i16 %i.aqy, i64 6
  %i.arh = insertelement <8 x i16> %i.arg, i16 %i.aqz, i64 7
  %i.ari = zext <8 x i16> %i.arh to <8 x i64>
  %wide.gep1402 = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, <8 x i64> %i.ari
  %wide.masked.gather1403 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep1402, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43 ; 2 uses
  %i.arj = bitcast <8 x float> %wide.masked.gather1403 to <8 x i32> ; 2 uses
  %i.ark = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %wide.masked.gather1403)
  %i.arl = bitcast <8 x float> %i.ark to <8 x i32>
  %i.arm = icmp samesign ugt <8 x i32> %i.arl, splat (i32 2139095040)
  %i.arn = lshr <8 x i32> %i.arj, splat (i32 16)  ; 2 uses
  %i.aro = and <8 x i32> %i.arn, splat (i32 1)
  %i.arp = add <8 x i32> %i.arj, splat (i32 32767)
  %i.arq = add <8 x i32> %i.arp, %i.aro
  %i.arr = lshr <8 x i32> %i.arq, splat (i32 16)
  %i.ars = trunc nuw <8 x i32> %i.arr to <8 x i16>
  %i.art = trunc nuw <8 x i32> %i.arn to <8 x i16>
  %i.aru = or <8 x i16> %i.art, splat (i16 64)
  %predphi = select <8 x i1> %i.arm, <8 x i16> %i.aru, <8 x i16> %i.ars
  %i.arv = getelementptr [2 x i8], ptr %i.aqc, i64 %index1401
  store <8 x i16> %predphi, ptr %i.arv, align 2, !tbaa !41, !alias.scope !259, !noalias !258
  %index.next1404 = add nuw i64 %index1401, 8     ; 2 uses
  %i.arw = icmp eq i64 %index.next1404, %n.vec1399
  br i1 %i.arw, label %middle.block1405, label %vector.body1400, !llvm.loop !125

middle.block1405:                                 ; preds = %vector.body1400
  br i1 %cmp.n1406, label %._crit_edge395.us.us.us.us.us.i, label %scalar.ph1391.preheader

scalar.ph1391.preheader:                          ; preds = %vector.memcheck1393, %.preheader306.us.us.us.us.us.i86, %middle.block1405
  %indvars.iv.i87.ph = phi i64 [ 0, %vector.memcheck1393 ], [ %n.vec1399, %middle.block1405 ], [ 0, %.preheader306.us.us.us.us.us.i86 ] ; 4 uses
  %.3265392.us.us.us.us.us.i.ph = phi i64 [ %.2264400.us.us.us.us.us.i, %vector.memcheck1393 ], [ %i.aqb, %middle.block1405 ], [ %.2264400.us.us.us.us.us.i, %.preheader306.us.us.us.us.us.i86 ] ; 3 uses
  %.neg1700 = or disjoint i64 %indvars.iv.i87.ph, 1
  br i1 %lcmp.mod1644.not, label %scalar.ph1391.prol.loopexit, label %scalar.ph1391.prol

scalar.ph1391.prol:                               ; preds = %scalar.ph1391.preheader
  %i.arx = mul i64 %indvars.iv.i87.ph, %i.adm
  %gep.us404.us.us.us.us.i.prol = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %i.arx
  %i.ary = load i16, ptr %gep.us404.us.us.us.us.i.prol, align 2, !tbaa !41
  %i.arz = zext i16 %i.ary to i64
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.arz
  %i.asb = load float, ptr %i.asa, align 4, !tbaa !43 ; 2 uses
  %i.asc = bitcast float %i.asb to i32            ; 2 uses
  %i.asd = tail call float @llvm.fabs.f32(float %i.asb)
  %i.ase = bitcast float %i.asd to i32
  %i.asf = icmp samesign ugt i32 %i.ase, 2139095040
  %i.asg = lshr i32 %i.asc, 16                    ; 2 uses
  br i1 %i.asf, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %scalar.ph1391.prol
  %i.ash = and i32 %i.asg, 1
  %i.asi = add i32 %i.asc, 32767
  %i.asj = add i32 %i.asi, %i.ash
  %i.ask = lshr i32 %i.asj, 16
  %i.asl = trunc nuw i32 %i.ask to i16
  br label %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.prol

bb.cy:                                            ; preds = %scalar.ph1391.prol
  %i.asm = trunc nuw i32 %i.asg to i16
  %i.asn = or i16 %i.asm, 64
  br label %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.prol

_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.prol:  ; preds = %bb.cy, %bb.cx
  %.sroa.04.0.i.i300.us.us.us.us.us.i.prol = phi i16 [ %i.asn, %bb.cy ], [ %i.asl, %bb.cx ]
  %i.aso = getelementptr inbounds nuw [2 x i8], ptr %i.akq, i64 %.3265392.us.us.us.us.us.i.ph
  store i16 %.sroa.04.0.i.i300.us.us.us.us.us.i.prol, ptr %i.aso, align 2, !tbaa !41
  %i.asp = add i64 %.3265392.us.us.us.us.us.i.ph, 1 ; 2 uses
  %indvars.iv.next.i88.prol = or disjoint i64 %indvars.iv.i87.ph, 1
  br label %scalar.ph1391.prol.loopexit

scalar.ph1391.prol.loopexit:                      ; preds = %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.prol, %scalar.ph1391.preheader
  %.lcssa1496.unr = phi i64 [ poison, %scalar.ph1391.preheader ], [ %i.asp, %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.prol ]
  %indvars.iv.i87.unr = phi i64 [ %indvars.iv.i87.ph, %scalar.ph1391.preheader ], [ %indvars.iv.next.i88.prol, %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.prol ]
  %.3265392.us.us.us.us.us.i.unr = phi i64 [ %.3265392.us.us.us.us.us.i.ph, %scalar.ph1391.preheader ], [ %i.asp, %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.prol ]
  %i.asq = icmp eq i64 %i.ade, %.neg1700
  br i1 %i.asq, label %._crit_edge395.us.us.us.us.us.i, label %scalar.ph1391

scalar.ph1391:                                    ; preds = %scalar.ph1391.prol.loopexit, %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.1
  %indvars.iv.i87 = phi i64 [ %indvars.iv.next.i88.1, %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.1 ], [ %indvars.iv.i87.unr, %scalar.ph1391.prol.loopexit ] ; 3 uses
  %.3265392.us.us.us.us.us.i = phi i64 [ %i.auc, %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.1 ], [ %.3265392.us.us.us.us.us.i.unr, %scalar.ph1391.prol.loopexit ] ; 3 uses
  %i.asr = mul i64 %indvars.iv.i87, %i.adm
  %gep.us404.us.us.us.us.i = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %i.asr
  %i.ass = load i16, ptr %gep.us404.us.us.us.us.i, align 2, !tbaa !41
  %i.ast = zext i16 %i.ass to i64
  %i.asu = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.ast
  %i.asv = load float, ptr %i.asu, align 4, !tbaa !43 ; 2 uses
  %i.asw = bitcast float %i.asv to i32            ; 2 uses
  %i.asx = tail call float @llvm.fabs.f32(float %i.asv)
  %i.asy = bitcast float %i.asx to i32
  %i.asz = icmp samesign ugt i32 %i.asy, 2139095040
  %i.ata = lshr i32 %i.asw, 16                    ; 2 uses
  br i1 %i.asz, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %scalar.ph1391
  %i.atb = and i32 %i.ata, 1
  %i.atc = add i32 %i.asw, 32767
  %i.atd = add i32 %i.atc, %i.atb
  %i.ate = lshr i32 %i.atd, 16
  %i.atf = trunc nuw i32 %i.ate to i16
  br label %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i

bb.da:                                            ; preds = %scalar.ph1391
  %i.atg = trunc nuw i32 %i.ata to i16
  %i.ath = or i16 %i.atg, 64
  br label %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i

_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i:       ; preds = %bb.da, %bb.cz
  %.sroa.04.0.i.i300.us.us.us.us.us.i = phi i16 [ %i.ath, %bb.da ], [ %i.atf, %bb.cz ]
  %i.ati = getelementptr inbounds nuw [2 x i8], ptr %i.akq, i64 %.3265392.us.us.us.us.us.i
  store i16 %.sroa.04.0.i.i300.us.us.us.us.us.i, ptr %i.ati, align 2, !tbaa !41
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1
  %i.atj = mul i64 %indvars.iv.next.i88, %i.adm
  %gep.us404.us.us.us.us.i.1 = getelementptr i8, ptr %gep407.us.us.us.us.i, i64 %i.atj
  %i.atk = load i16, ptr %gep.us404.us.us.us.us.i.1, align 2, !tbaa !41
  %i.atl = zext i16 %i.atk to i64
  %i.atm = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_f16, i64 %i.atl
  %i.atn = load float, ptr %i.atm, align 4, !tbaa !43 ; 2 uses
  %i.ato = bitcast float %i.atn to i32            ; 2 uses
  %i.atp = tail call float @llvm.fabs.f32(float %i.atn)
  %i.atq = bitcast float %i.atp to i32
  %i.atr = icmp samesign ugt i32 %i.atq, 2139095040
  %i.ats = lshr i32 %i.ato, 16                    ; 2 uses
  br i1 %i.atr, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i
  %i.att = and i32 %i.ats, 1
  %i.atu = add i32 %i.ato, 32767
  %i.atv = add i32 %i.atu, %i.att
  %i.atw = lshr i32 %i.atv, 16
  %i.atx = trunc nuw i32 %i.atw to i16
  br label %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.1

bb.dc:                                            ; preds = %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i
  %i.aty = trunc nuw i32 %i.ats to i16
  %i.atz = or i16 %i.aty, 64
  br label %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.1

_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.1:     ; preds = %bb.dc, %bb.db
  %.sroa.04.0.i.i300.us.us.us.us.us.i.1 = phi i16 [ %i.atz, %bb.dc ], [ %i.atx, %bb.db ]
  %i.aua = getelementptr [2 x i8], ptr %i.akq, i64 %.3265392.us.us.us.us.us.i
  %i.aub = getelementptr i8, ptr %i.aua, i64 2
  store i16 %.sroa.04.0.i.i300.us.us.us.us.us.i.1, ptr %i.aub, align 2, !tbaa !41
  %i.auc = add i64 %.3265392.us.us.us.us.us.i, 2  ; 2 uses
  %indvars.iv.next.i88.1 = add nuw nsw i64 %indvars.iv.i87, 2 ; 2 uses
  %exitcond510.not.i.1 = icmp eq i64 %indvars.iv.next.i88.1, %i.ade
  br i1 %exitcond510.not.i.1, label %._crit_edge395.us.us.us.us.us.i, label %scalar.ph1391, !llvm.loop !126

._crit_edge395.us.us.us.us.us.i:                  ; preds = %scalar.ph1391.prol.loopexit, %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.1, %middle.block1405
  %.lcssa1148 = phi i64 [ %i.aqb, %middle.block1405 ], [ %.lcssa1496.unr, %scalar.ph1391.prol.loopexit ], [ %i.auc, %_ZL11f32_to_bf16f.exit301.us.us.us.us.us.i.1 ] ; 2 uses
  %indvars.iv.next512.i = add nsw i64 %indvars.iv511.i, 1 ; 2 uses
  %exitcond514.not.i = icmp eq i64 %indvars.iv.next512.i, %i.aoy
  br i1 %exitcond514.not.i, label %._crit_edge402.split.us.us.us.us.us.i, label %.preheader306.us.us.us.us.us.i86, !llvm.loop !127

._crit_edge402.split.us.us.us.us.us.i:            ; preds = %._crit_edge395.us.us.us.us.us.i
  %i.aud = add i64 %.lcssa1148, %i.apa            ; 2 uses
  %indvars.iv.next516.i = add nuw nsw i64 %indvars.iv515.i, 1 ; 2 uses
  %exitcond518.not.i = icmp eq i64 %indvars.iv.next516.i, %i.adi
  br i1 %exitcond518.not.i, label %._crit_edge411.split.us.split.us.us.us.i, label %.preheader306.lr.ph.us.us.us.us.i, !llvm.loop !128

._crit_edge411.split.us.split.us.us.us.i:         ; preds = %._crit_edge402.split.us.us.us.us.us.i
end_hunk_1
begin_hunk_2_@ggml_compute_forward_dup:bb.a
._crit_edge366.split.us.us.split.us.us.i:         ; preds = %._crit_edge.us375.us.us.us.i
  %i.bud = add nuw nsw i64 %.0231384.us.us.i, 1   ; 2 uses
  %exitcond502.not.i170 = icmp eq i64 %i.bud, %i.bmu
  br i1 %exitcond502.not.i170, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader309.us.us.i, !llvm.loop !165

bb.fr:                                            ; preds = %bb.fe
  %i.bue = icmp eq i64 %i.bmw, 2
  %i.buf = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bug = load ptr, ptr %i.buf, align 8, !tbaa !37 ; 7 uses
  %i.buh = ptrtoaddr ptr %i.bug to i64
  %i.bui = icmp sgt i64 %i.bmu, 0                 ; 2 uses
  br i1 %i.bue, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  br i1 %i.bui, label %.preheader302.lr.ph.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader302.lr.ph.i:                            ; preds = %bb.fs
  %i.buj = icmp sgt i64 %i.bms, 0
  %i.buk = sext i32 %i.boa to i64                 ; 3 uses
  %i.bul = mul nsw i64 %i.bmo, %i.buk
  %i.bum = sext i32 %i.boc to i64                 ; 2 uses
  %i.bun = sub nsw i64 %i.bmq, %i.bum
  %i.buo = mul nsw i64 %i.bun, %i.bmo
  %i.bup = icmp slt i32 %i.boa, %i.boc
  %or.cond597.i = select i1 %i.buj, i1 %i.bup, i1 false
  br i1 %or.cond597.i, label %.preheader302.lr.ph.split.split.us.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader302.lr.ph.split.split.us.i:             ; preds = %.preheader302.lr.ph.i
  %i.buq = icmp sgt i64 %i.bmo, 0
  %i.bur = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bus = load ptr, ptr %i.bur, align 8, !tbaa !37 ; 2 uses
  br i1 %i.buq, label %.preheader302.us.us.i.preheader, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader302.us.us.i.preheader:                  ; preds = %.preheader302.lr.ph.split.split.us.i
  %i.but = ptrtoaddr ptr %i.bus to i64
  %i.buu = mul i64 %i.bmy, %i.buk
  %i.buv = add i64 %i.buu, %i.but
  %min.iters.check1336 = icmp ult i64 %i.bmo, 8
  %n.vec1339 = and i64 %i.bmo, 9223372036854775800 ; 4 uses
  %cmp.n1345 = icmp eq i64 %i.bmo, %n.vec1339
  br label %.preheader302.us.us.i

.preheader302.us.us.i:                            ; preds = %.preheader302.us.us.i.preheader, %._crit_edge448.split.us.split.us.us.us.i
  %indvars.iv546.i = phi i64 [ %indvars.iv.next547.i, %._crit_edge448.split.us.split.us.us.us.i ], [ 0, %.preheader302.us.us.i.preheader ] ; 3 uses
  %.0270460.us.us.i = phi i64 [ %i.bxl, %._crit_edge448.split.us.split.us.us.us.i ], [ 0, %.preheader302.us.us.i.preheader ]
  %i.buw = mul i64 %i.bnc, %indvars.iv546.i
  %i.bux = add i64 %i.buv, %i.buw
  %i.buy = mul i64 %indvars.iv546.i, %i.bnc
  %invariant.gep.us462.us.i = getelementptr i8, ptr %i.bus, i64 %i.buy
  br label %.lr.ph440.us.us.us.us.i

.lr.ph440.us.us.us.us.i:                          ; preds = %._crit_edge441.split.us.us.us.us.us.i, %.preheader302.us.us.i
  %indvars.iv542.i186 = phi i64 [ %indvars.iv.next543.i191, %._crit_edge441.split.us.us.us.us.us.i ], [ 0, %.preheader302.us.us.i ] ; 3 uses
  %.1271445.us.us.us.us.i = phi i64 [ %i.bxl, %._crit_edge441.split.us.us.us.us.us.i ], [ %.0270460.us.us.i, %.preheader302.us.us.i ]
  %i.buz = mul i64 %i.bna, %indvars.iv542.i186
  %i.bva = add i64 %i.bux, %i.buz
  %i.bvb = add i64 %.1271445.us.us.us.us.i, %i.bul
  %i.bvc = mul i64 %indvars.iv542.i186, %i.bna
  %gep.us457.us.us.i = getelementptr i8, ptr %invariant.gep.us462.us.i, i64 %i.bvc
  br label %.lr.ph434.us.us.us.us.us.i

.lr.ph434.us.us.us.us.us.i:                       ; preds = %._crit_edge435.us.us.us.us.us.i, %.lr.ph440.us.us.us.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge435.us.us.us.us.us.i ], [ 0, %.lr.ph440.us.us.us.us.i ] ; 2 uses
  %indvars.iv537.i = phi i64 [ %indvars.iv.next538.i, %._crit_edge435.us.us.us.us.us.i ], [ %i.buk, %.lr.ph440.us.us.us.us.i ] ; 2 uses
  %.2272437.us.us.us.us.us.i = phi i64 [ %.lcssa1162, %._crit_edge435.us.us.us.us.us.i ], [ %i.bvb, %.lr.ph440.us.us.us.us.i ] ; 5 uses
  %i.bvd = mul i64 %indvars.iv537.i, %i.bmy
  %gep444.us.us.us.us.us.i = getelementptr i8, ptr %gep.us457.us.us.i, i64 %i.bvd ; 2 uses
  br i1 %min.iters.check1336, label %scalar.ph1335.preheader, label %vector.memcheck1337

vector.memcheck1337:                              ; preds = %.lr.ph434.us.us.us.us.us.i
  %i.bve = mul i64 %i.bmy, %indvar
  %i.bvf = add i64 %i.bva, %i.bve
  %i.bvg = sub i64 %i.buh, %i.bvf
  %i.bvh = shl i64 %.2272437.us.us.us.us.us.i, 1
  %i.bvi = add i64 %i.bvg, %i.bvh
  %i.bvj = add i64 %i.bvi, -1
  %diff.check = icmp ult i64 %i.bvj, 15
  br i1 %diff.check, label %scalar.ph1335.preheader, label %vector.ph1338

vector.ph1338:                                    ; preds = %vector.memcheck1337
  %i.bvk = add i64 %.2272437.us.us.us.us.us.i, %n.vec1339 ; 2 uses
  %i.bvl = getelementptr [2 x i8], ptr %i.bug, i64 %.2272437.us.us.us.us.us.i
  br label %vector.body1340

vector.body1340:                                  ; preds = %vector.body1340, %vector.ph1338
  %index1341 = phi i64 [ 0, %vector.ph1338 ], [ %index.next1343, %vector.body1340 ] ; 3 uses
  %i.bvm = getelementptr inbounds nuw [2 x i8], ptr %gep444.us.us.us.us.us.i, i64 %index1341
  %wide.load1342 = load <8 x i16>, ptr %i.bvm, align 2, !tbaa !41
  %i.bvn = zext <8 x i16> %wide.load1342 to <8 x i32> ; 3 uses
  %i.bvo = shl nuw <8 x i32> %i.bvn, splat (i32 16)
  %i.bvp = bitcast <8 x i32> %i.bvo to <8 x float>
  %i.bvq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bvp)
  %i.bvr = fmul <8 x float> %i.bvq, splat (float f0x77800000)
  %i.bvs = fmul <8 x float> %i.bvr, splat (float f0x08800000)
  %i.bvt = shl <8 x i32> %i.bvn, splat (i32 17)   ; 2 uses
  %i.bvu = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.bvt, <8 x i32> splat (i32 1895825408))
  %i.bvv = lshr exact <8 x i32> %i.bvu, splat (i32 1)
  %i.bvw = and <8 x i32> %i.bvv, splat (i32 2139095040)
  %i.bvx = add nuw <8 x i32> %i.bvw, splat (i32 125829120)
  %i.bvy = bitcast <8 x i32> %i.bvx to <8 x float>
  %i.bvz = fadd <8 x float> %i.bvs, %i.bvy
  %i.bwa = bitcast <8 x float> %i.bvz to <8 x i32> ; 2 uses
  %i.bwb = lshr <8 x i32> %i.bwa, splat (i32 13)
  %i.bwc = and <8 x i32> %i.bwb, splat (i32 31744)
  %i.bwd = and <8 x i32> %i.bwa, splat (i32 4095)
  %i.bwe = add nuw nsw <8 x i32> %i.bwc, %i.bwd
  %i.bwf = and <8 x i32> %i.bvn, splat (i32 32768)
  %i.bwg = icmp ugt <8 x i32> %i.bvt, splat (i32 -16777216)
  %i.bwh = select <8 x i1> %i.bwg, <8 x i32> splat (i32 32256), <8 x i32> %i.bwe
  %i.bwi = or <8 x i32> %i.bwh, %i.bwf
  %i.bwj = trunc nuw <8 x i32> %i.bwi to <8 x i16>
  %i.bwk = getelementptr [2 x i8], ptr %i.bvl, i64 %index1341
  store <8 x i16> %i.bwj, ptr %i.bwk, align 2, !tbaa !41
  %index.next1343 = add nuw i64 %index1341, 8     ; 2 uses
  %i.bwl = icmp eq i64 %index.next1343, %n.vec1339
  br i1 %i.bwl, label %middle.block1344, label %vector.body1340, !llvm.loop !166

middle.block1344:                                 ; preds = %vector.body1340
  br i1 %cmp.n1345, label %._crit_edge435.us.us.us.us.us.i, label %scalar.ph1335.preheader

scalar.ph1335.preheader:                          ; preds = %vector.memcheck1337, %.lr.ph434.us.us.us.us.us.i, %middle.block1344
  %indvars.iv533.i187.ph = phi i64 [ 0, %vector.memcheck1337 ], [ 0, %.lr.ph434.us.us.us.us.us.i ], [ %n.vec1339, %middle.block1344 ]
  %.3273431.us.us.us.us.us.i.ph = phi i64 [ %.2272437.us.us.us.us.us.i, %vector.memcheck1337 ], [ %.2272437.us.us.us.us.us.i, %.lr.ph434.us.us.us.us.us.i ], [ %i.bvk, %middle.block1344 ]
  br label %scalar.ph1335

scalar.ph1335:                                    ; preds = %scalar.ph1335.preheader, %scalar.ph1335
  %indvars.iv533.i187 = phi i64 [ %indvars.iv.next534.i189, %scalar.ph1335 ], [ %indvars.iv533.i187.ph, %scalar.ph1335.preheader ] ; 2 uses
  %.3273431.us.us.us.us.us.i = phi i64 [ %i.bxk, %scalar.ph1335 ], [ %.3273431.us.us.us.us.us.i.ph, %scalar.ph1335.preheader ] ; 2 uses
  %i.bwm = getelementptr inbounds nuw [2 x i8], ptr %gep444.us.us.us.us.us.i, i64 %indvars.iv533.i187
  %.sroa.056.0.copyload.us.us.us.us.us.i = load i16, ptr %i.bwm, align 2, !tbaa !41
  %i.bwn = zext i16 %.sroa.056.0.copyload.us.us.us.us.us.i to i32 ; 3 uses
  %i.bwo = shl nuw i32 %i.bwn, 16
  %i.bwp = bitcast i32 %i.bwo to float
  %i.bwq = tail call float @llvm.fabs.f32(float %i.bwp)
  %i.bwr = fmul float %i.bwq, f0x77800000
  %i.bws = fmul float %i.bwr, f0x08800000
  %i.bwt = shl i32 %i.bwn, 17                     ; 2 uses
  %i.bwu = tail call i32 @llvm.umax.i32(i32 %i.bwt, i32 1895825408)
  %spec.store.select.i.i.us.us.us.us.us.i188 = lshr exact i32 %i.bwu, 1
  %i.bwv = and i32 %spec.store.select.i.i.us.us.us.us.us.i188, 2139095040
  %i.bww = add nuw i32 %i.bwv, 125829120
  %i.bwx = bitcast i32 %i.bww to float
  %i.bwy = fadd float %i.bws, %i.bwx
  %i.bwz = bitcast float %i.bwy to i32            ; 2 uses
  %i.bxa = lshr i32 %i.bwz, 13
  %i.bxb = and i32 %i.bxa, 31744
  %i.bxc = and i32 %i.bwz, 4095
  %i.bxd = add nuw nsw i32 %i.bxb, %i.bxc
  %i.bxe = and i32 %i.bwn, 32768
  %i.bxf = icmp ugt i32 %i.bwt, -16777216
  %i.bxg = select i1 %i.bxf, i32 32256, i32 %i.bxd
  %i.bxh = or i32 %i.bxg, %i.bxe
  %i.bxi = trunc nuw i32 %i.bxh to i16
  %i.bxj = getelementptr inbounds nuw [2 x i8], ptr %i.bug, i64 %.3273431.us.us.us.us.us.i
  store i16 %i.bxi, ptr %i.bxj, align 2, !tbaa !41
  %i.bxk = add i64 %.3273431.us.us.us.us.us.i, 1  ; 2 uses
  %indvars.iv.next534.i189 = add nuw nsw i64 %indvars.iv533.i187, 1 ; 2 uses
  %exitcond536.not.i = icmp eq i64 %indvars.iv.next534.i189, %i.bmo
  br i1 %exitcond536.not.i, label %._crit_edge435.us.us.us.us.us.i, label %scalar.ph1335, !llvm.loop !167

._crit_edge435.us.us.us.us.us.i:                  ; preds = %scalar.ph1335, %middle.block1344
  %.lcssa1162 = phi i64 [ %i.bvk, %middle.block1344 ], [ %i.bxk, %scalar.ph1335 ] ; 2 uses
  %indvars.iv.next538.i = add nsw i64 %indvars.iv537.i, 1 ; 2 uses
  %exitcond541.not.i190 = icmp eq i64 %indvars.iv.next538.i, %i.bum
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond541.not.i190, label %._crit_edge441.split.us.us.us.us.us.i, label %.lr.ph434.us.us.us.us.us.i, !llvm.loop !168

._crit_edge441.split.us.us.us.us.us.i:            ; preds = %._crit_edge435.us.us.us.us.us.i
  %i.bxl = add i64 %.lcssa1162, %i.buo            ; 2 uses
  %indvars.iv.next543.i191 = add nuw nsw i64 %indvars.iv542.i186, 1 ; 2 uses
  %exitcond545.not.i192 = icmp eq i64 %indvars.iv.next543.i191, %i.bms
  br i1 %exitcond545.not.i192, label %._crit_edge448.split.us.split.us.us.us.i, label %.lr.ph440.us.us.us.us.i, !llvm.loop !169

._crit_edge448.split.us.split.us.us.us.i:         ; preds = %._crit_edge441.split.us.us.us.us.us.i
  %indvars.iv.next547.i = add nuw nsw i64 %indvars.iv546.i, 1 ; 2 uses
  %exitcond549.not.i = icmp eq i64 %indvars.iv.next547.i, %i.bmu
  br i1 %exitcond549.not.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader302.us.us.i, !llvm.loop !170

bb.ft:                                            ; preds = %bb.fr
  br i1 %i.bui, label %.preheader305.lr.ph.i174, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader305.lr.ph.i174:                         ; preds = %bb.ft
  %i.bxm = icmp slt i64 %i.bms, 1
  %i.bxn = sext i32 %i.boa to i64                 ; 3 uses
  %i.bxo = mul nsw i64 %i.bmo, %i.bxn
  %i.bxp = icmp slt i64 %i.bmo, 1
  %i.bxq = sext i32 %i.boc to i64                 ; 3 uses
  %i.bxr = sub nsw i64 %i.bmq, %i.bxq
  %i.bxs = mul nsw i64 %i.bxr, %i.bmo
  %i.bxt = icmp sge i32 %i.boa, %i.boc
  %or.cond598.not605.i = select i1 %i.bxm, i1 true, i1 %i.bxt
  %brmerge600.i = select i1 %or.cond598.not605.i, i1 true, i1 %i.bxp
  br i1 %brmerge600.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader305.lr.ph.split.split.us.split.us.i175

.preheader305.lr.ph.split.split.us.split.us.i175: ; preds = %.preheader305.lr.ph.i174
  %i.bxu = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bxv = load ptr, ptr %i.bxu, align 8, !tbaa !37 ; 3 uses
  %i.bxw = add nsw i64 %i.bxq, -1
  %i.bxx = mul i64 %i.bmy, %i.bxw
  %i.bxy = mul i64 %i.bmy, %i.bxn
  %i.bxz = getelementptr i8, ptr %i.bxv, i64 %i.bmo
  %i.bya = getelementptr i8, ptr %i.bxz, i64 %i.bxx
  %i.byb = getelementptr i8, ptr %i.bya, i64 1
  %i.byc = getelementptr i8, ptr %i.bxv, i64 %i.bxy
  %min.iters.check1319 = icmp ult i64 %i.bmo, 8
  %ident.check1305 = icmp ne i64 %i.bmw, 1
  %stride.check1324 = icmp slt i64 %i.bmy, 0
  %n.vec1326 = and i64 %i.bmo, 9223372036854775800 ; 4 uses
  %cmp.n1331 = icmp eq i64 %i.bmo, %n.vec1326
  br label %.preheader305.us.us.i176

.preheader305.us.us.i176:                         ; preds = %._crit_edge409.split.us.split.us.us.us.i, %.preheader305.lr.ph.split.split.us.split.us.i175
  %indvars.iv517.i = phi i64 [ %indvars.iv.next518.i, %._crit_edge409.split.us.split.us.us.us.i ], [ 0, %.preheader305.lr.ph.split.split.us.split.us.i175 ] ; 3 uses
  %.0262419.us.us.i = phi i64 [ %i.cby, %._crit_edge409.split.us.split.us.us.us.i ], [ 0, %.preheader305.lr.ph.split.split.us.split.us.i175 ]
  %i.byd = mul i64 %i.bnc, %indvars.iv517.i       ; 2 uses
  %i.bye = mul i64 %indvars.iv517.i, %i.bnc
  %invariant.gep.us427.us.i = getelementptr i8, ptr %i.bxv, i64 %i.bye
  %i.byf = getelementptr i8, ptr %i.byb, i64 %i.byd
  %i.byg = getelementptr i8, ptr %i.byc, i64 %i.byd
  br label %.preheader304.lr.ph.us.us.us.us.i

.preheader304.lr.ph.us.us.us.us.i:                ; preds = %._crit_edge400.split.us.us.us.us.us.i, %.preheader305.us.us.i176
  %indvars.iv513.i177 = phi i64 [ %indvars.iv.next514.i184, %._crit_edge400.split.us.us.us.us.us.i ], [ 0, %.preheader305.us.us.i176 ] ; 3 uses
  %.1263406.us.us.us.us.i = phi i64 [ %i.cby, %._crit_edge400.split.us.us.us.us.us.i ], [ %.0262419.us.us.i, %.preheader305.us.us.i176 ]
  %i.byh = mul i64 %i.bna, %indvars.iv513.i177    ; 2 uses
  %scevgep1316 = getelementptr i8, ptr %i.byf, i64 %i.byh
  %scevgep1317 = getelementptr i8, ptr %i.byg, i64 %i.byh
  %i.byi = add i64 %.1263406.us.us.us.us.i, %i.bxo
  %i.byj = mul i64 %indvars.iv513.i177, %i.bna
  %gep.us428.us.i = getelementptr i8, ptr %invariant.gep.us427.us.i, i64 %i.byj
  br label %.preheader304.us.us.us.us.us.i

.preheader304.us.us.us.us.us.i:                   ; preds = %._crit_edge393.us.us.us.us.us.i, %.preheader304.lr.ph.us.us.us.us.i
  %indvars.iv509.i178 = phi i64 [ %indvars.iv.next510.i182, %._crit_edge393.us.us.us.us.us.i ], [ %i.bxn, %.preheader304.lr.ph.us.us.us.us.i ] ; 2 uses
  %.2264398.us.us.us.us.us.i = phi i64 [ %.lcssa1164, %._crit_edge393.us.us.us.us.us.i ], [ %i.byi, %.preheader304.lr.ph.us.us.us.us.i ] ; 6 uses
  %i.byk = mul i64 %indvars.iv509.i178, %i.bmy
  %gep405.us.us.us.us.i = getelementptr i8, ptr %gep.us428.us.i, i64 %i.byk ; 11 uses
  %i.byl = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %i.bmo
  %i.bym = getelementptr i8, ptr %i.byl, i64 -1
  %i.byn = icmp ult ptr %i.bym, %gep405.us.us.us.us.i
  %i.byo = or i1 %ident.check1305, %i.byn
  %or.cond1797 = select i1 %min.iters.check1319, i1 true, i1 %i.byo
  br i1 %or.cond1797, label %scalar.ph1318.preheader, label %vector.memcheck1320

vector.memcheck1320:                              ; preds = %.preheader304.us.us.us.us.us.i
  %i.byp = shl i64 %.2264398.us.us.us.us.us.i, 1
  %i.byq = getelementptr nuw i8, ptr %i.bug, i64 %i.byp
  %6 = add i64 %.2264398.us.us.us.us.us.i, %i.bmo
  %7 = shl i64 %6, 1
  %i.byr = getelementptr i8, ptr %i.bug, i64 %7
  %bound01321 = icmp ult ptr %i.byq, %scevgep1316
  %bound11322 = icmp ult ptr %scevgep1317, %i.byr
  %found.conflict1323 = and i1 %bound01321, %bound11322
  %i.bys = or i1 %found.conflict1323, %stride.check1324
  br i1 %i.bys, label %scalar.ph1318.preheader, label %vector.ph1325

vector.ph1325:                                    ; preds = %vector.memcheck1320
  %i.byt = add i64 %.2264398.us.us.us.us.us.i, %n.vec1326 ; 2 uses
  %i.byu = getelementptr [2 x i8], ptr %i.bug, i64 %.2264398.us.us.us.us.us.i
  br label %vector.body1327

vector.body1327:                                  ; preds = %vector.body1327, %vector.ph1325
  %index1328 = phi i64 [ 0, %vector.ph1325 ], [ %index.next1329, %vector.body1327 ] ; 10 uses
  %i.byv = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %index1328
  %i.byw = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %index1328
  %i.byx = getelementptr i8, ptr %i.byw, i64 1
  %i.byy = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %index1328
  %i.byz = getelementptr i8, ptr %i.byy, i64 2
  %i.bza = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %index1328
  %i.bzb = getelementptr i8, ptr %i.bza, i64 3
  %i.bzc = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %index1328
  %i.bzd = getelementptr i8, ptr %i.bzc, i64 4
  %i.bze = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %index1328
  %i.bzf = getelementptr i8, ptr %i.bze, i64 5
  %i.bzg = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %index1328
  %i.bzh = getelementptr i8, ptr %i.bzg, i64 6
  %i.bzi = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %index1328
  %i.bzj = getelementptr i8, ptr %i.bzi, i64 7
  %i.bzk = load i16, ptr %i.byv, align 2, !tbaa !41, !alias.scope !260
  %i.bzl = load i16, ptr %i.byx, align 2, !tbaa !41, !alias.scope !260
  %i.bzm = load i16, ptr %i.byz, align 2, !tbaa !41, !alias.scope !260
  %i.bzn = load i16, ptr %i.bzb, align 2, !tbaa !41, !alias.scope !260
  %i.bzo = load i16, ptr %i.bzd, align 2, !tbaa !41, !alias.scope !260
  %i.bzp = load i16, ptr %i.bzf, align 2, !tbaa !41, !alias.scope !260
  %i.bzq = load i16, ptr %i.bzh, align 2, !tbaa !41, !alias.scope !260
  %i.bzr = load i16, ptr %i.bzj, align 2, !tbaa !41, !alias.scope !260
  %i.bzs = insertelement <8 x i16> poison, i16 %i.bzk, i64 0
  %i.bzt = insertelement <8 x i16> %i.bzs, i16 %i.bzl, i64 1
  %i.bzu = insertelement <8 x i16> %i.bzt, i16 %i.bzm, i64 2
  %i.bzv = insertelement <8 x i16> %i.bzu, i16 %i.bzn, i64 3
  %i.bzw = insertelement <8 x i16> %i.bzv, i16 %i.bzo, i64 4
  %i.bzx = insertelement <8 x i16> %i.bzw, i16 %i.bzp, i64 5
  %i.bzy = insertelement <8 x i16> %i.bzx, i16 %i.bzq, i64 6
  %i.bzz = insertelement <8 x i16> %i.bzy, i16 %i.bzr, i64 7
  %i.caa = zext <8 x i16> %i.bzz to <8 x i32>     ; 3 uses
  %i.cab = shl nuw <8 x i32> %i.caa, splat (i32 16)
  %i.cac = bitcast <8 x i32> %i.cab to <8 x float>
  %i.cad = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cac)
  %i.cae = fmul <8 x float> %i.cad, splat (float f0x77800000)
  %i.caf = fmul <8 x float> %i.cae, splat (float f0x08800000)
  %i.cag = shl <8 x i32> %i.caa, splat (i32 17)   ; 2 uses
  %i.cah = tail call <8 x i32> @llvm.umax.v8i32(<8 x i32> %i.cag, <8 x i32> splat (i32 1895825408))
  %i.cai = lshr exact <8 x i32> %i.cah, splat (i32 1)
  %i.caj = and <8 x i32> %i.cai, splat (i32 2139095040)
  %i.cak = add nuw <8 x i32> %i.caj, splat (i32 125829120)
  %i.cal = bitcast <8 x i32> %i.cak to <8 x float>
  %i.cam = fadd <8 x float> %i.caf, %i.cal
  %i.can = bitcast <8 x float> %i.cam to <8 x i32> ; 2 uses
  %i.cao = lshr <8 x i32> %i.can, splat (i32 13)
  %i.cap = and <8 x i32> %i.cao, splat (i32 31744)
  %i.caq = and <8 x i32> %i.can, splat (i32 4095)
  %i.car = add nuw nsw <8 x i32> %i.cap, %i.caq
  %i.cas = and <8 x i32> %i.caa, splat (i32 32768)
  %i.cat = icmp ugt <8 x i32> %i.cag, splat (i32 -16777216)
  %i.cau = select <8 x i1> %i.cat, <8 x i32> splat (i32 32256), <8 x i32> %i.car
  %i.cav = or <8 x i32> %i.cau, %i.cas
  %i.caw = trunc nuw <8 x i32> %i.cav to <8 x i16>
  %i.cax = getelementptr [2 x i8], ptr %i.byu, i64 %index1328
  store <8 x i16> %i.caw, ptr %i.cax, align 2, !tbaa !41, !alias.scope !261, !noalias !260
  %index.next1329 = add nuw i64 %index1328, 8     ; 2 uses
  %i.cay = icmp eq i64 %index.next1329, %n.vec1326
  br i1 %i.cay, label %middle.block1330, label %vector.body1327, !llvm.loop !174

middle.block1330:                                 ; preds = %vector.body1327
  br i1 %cmp.n1331, label %._crit_edge393.us.us.us.us.us.i, label %scalar.ph1318.preheader

scalar.ph1318.preheader:                          ; preds = %vector.memcheck1320, %.preheader304.us.us.us.us.us.i, %middle.block1330
  %indvars.iv.i179.ph = phi i64 [ 0, %vector.memcheck1320 ], [ %n.vec1326, %middle.block1330 ], [ 0, %.preheader304.us.us.us.us.us.i ]
  %.3265390.us.us.us.us.us.i.ph = phi i64 [ %.2264398.us.us.us.us.us.i, %vector.memcheck1320 ], [ %i.byt, %middle.block1330 ], [ %.2264398.us.us.us.us.us.i, %.preheader304.us.us.us.us.us.i ]
  br label %scalar.ph1318

scalar.ph1318:                                    ; preds = %scalar.ph1318.preheader, %scalar.ph1318
  %indvars.iv.i179 = phi i64 [ %indvars.iv.next.i180, %scalar.ph1318 ], [ %indvars.iv.i179.ph, %scalar.ph1318.preheader ] ; 2 uses
  %.3265390.us.us.us.us.us.i = phi i64 [ %i.cbx, %scalar.ph1318 ], [ %.3265390.us.us.us.us.us.i.ph, %scalar.ph1318.preheader ] ; 2 uses
  %i.caz = mul i64 %indvars.iv.i179, %i.bmw
  %gep.us402.us.us.us.us.i = getelementptr i8, ptr %gep405.us.us.us.us.i, i64 %i.caz
  %.sroa.036.0.copyload.us.us.us.us.us.i = load i16, ptr %gep.us402.us.us.us.us.i, align 2, !tbaa !41
  %i.cba = zext i16 %.sroa.036.0.copyload.us.us.us.us.us.i to i32 ; 3 uses
  %i.cbb = shl nuw i32 %i.cba, 16
  %i.cbc = bitcast i32 %i.cbb to float
  %i.cbd = tail call float @llvm.fabs.f32(float %i.cbc)
  %i.cbe = fmul float %i.cbd, f0x77800000
  %i.cbf = fmul float %i.cbe, f0x08800000
  %i.cbg = shl i32 %i.cba, 17                     ; 2 uses
  %i.cbh = tail call i32 @llvm.umax.i32(i32 %i.cbg, i32 1895825408)
  %spec.store.select.i.i300.us.us.us.us.us.i = lshr exact i32 %i.cbh, 1
  %i.cbi = and i32 %spec.store.select.i.i300.us.us.us.us.us.i, 2139095040
  %i.cbj = add nuw i32 %i.cbi, 125829120
  %i.cbk = bitcast i32 %i.cbj to float
  %i.cbl = fadd float %i.cbf, %i.cbk
  %i.cbm = bitcast float %i.cbl to i32            ; 2 uses
  %i.cbn = lshr i32 %i.cbm, 13
  %i.cbo = and i32 %i.cbn, 31744
  %i.cbp = and i32 %i.cbm, 4095
  %i.cbq = add nuw nsw i32 %i.cbo, %i.cbp
  %i.cbr = and i32 %i.cba, 32768
  %i.cbs = icmp ugt i32 %i.cbg, -16777216
  %i.cbt = select i1 %i.cbs, i32 32256, i32 %i.cbq
  %i.cbu = or i32 %i.cbt, %i.cbr
  %i.cbv = trunc nuw i32 %i.cbu to i16
  %i.cbw = getelementptr inbounds nuw [2 x i8], ptr %i.bug, i64 %.3265390.us.us.us.us.us.i
  store i16 %i.cbv, ptr %i.cbw, align 2, !tbaa !41
  %i.cbx = add i64 %.3265390.us.us.us.us.us.i, 1  ; 2 uses
  %indvars.iv.next.i180 = add nuw nsw i64 %indvars.iv.i179, 1 ; 2 uses
  %exitcond508.not.i181 = icmp eq i64 %indvars.iv.next.i180, %i.bmo
  br i1 %exitcond508.not.i181, label %._crit_edge393.us.us.us.us.us.i, label %scalar.ph1318, !llvm.loop !175

._crit_edge393.us.us.us.us.us.i:                  ; preds = %scalar.ph1318, %middle.block1330
  %.lcssa1164 = phi i64 [ %i.byt, %middle.block1330 ], [ %i.cbx, %scalar.ph1318 ] ; 2 uses
  %indvars.iv.next510.i182 = add nsw i64 %indvars.iv509.i178, 1 ; 2 uses
  %exitcond512.not.i183 = icmp eq i64 %indvars.iv.next510.i182, %i.bxq
  br i1 %exitcond512.not.i183, label %._crit_edge400.split.us.us.us.us.us.i, label %.preheader304.us.us.us.us.us.i, !llvm.loop !176

._crit_edge400.split.us.us.us.us.us.i:            ; preds = %._crit_edge393.us.us.us.us.us.i
  %i.cby = add i64 %.lcssa1164, %i.bxs            ; 2 uses
  %indvars.iv.next514.i184 = add nuw nsw i64 %indvars.iv513.i177, 1 ; 2 uses
  %exitcond516.not.i185 = icmp eq i64 %indvars.iv.next514.i184, %i.bms
  br i1 %exitcond516.not.i185, label %._crit_edge409.split.us.split.us.us.us.i, label %.preheader304.lr.ph.us.us.us.us.i, !llvm.loop !177

._crit_edge409.split.us.split.us.us.us.i:         ; preds = %._crit_edge400.split.us.us.us.us.us.i
  %indvars.iv.next518.i = add nuw nsw i64 %indvars.iv517.i, 1 ; 2 uses
  %exitcond520.not.i = icmp eq i64 %indvars.iv.next518.i, %i.bmu
  br i1 %exitcond520.not.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader305.us.us.i176, !llvm.loop !178

bb.fu:                                            ; preds = %bb.eu
  br i1 %i.bmi, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #17
  unreachable

bb.fw:                                            ; preds = %bb.fu
  %i.cbz = load i32, ptr %i.b, align 8, !tbaa !30
  %i.cca = tail call zeroext i1 @ggml_is_quantized(i32 noundef %i.cbz)
  br i1 %i.cca, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ccb = load i32, ptr %1, align 8, !tbaa !30
  %i.ccc = tail call zeroext i1 @ggml_is_quantized(i32 noundef %i.ccb)
  br i1 %i.ccc, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7) #17
  unreachable

bb.fz:                                            ; preds = %bb.fx
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cce = load i64, ptr %i.ccd, align 8, !tbaa !31 ; 29 uses
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ccg = load i64, ptr %i.ccf, align 8, !tbaa !31 ; 7 uses
  %i.cch = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cci = load i64, ptr %i.cch, align 8, !tbaa !31 ; 11 uses
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.cck = load i64, ptr %i.ccj, align 8, !tbaa !31 ; 11 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ccm = load i64, ptr %i.ccl, align 8, !tbaa !31 ; 10 uses
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.cco = load i64, ptr %i.ccn, align 8, !tbaa !31 ; 15 uses
  %i.ccp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ccq = load i64, ptr %i.ccp, align 8, !tbaa !31 ; 5 uses
  %i.ccr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ccs = load i64, ptr %i.ccr, align 8, !tbaa !31 ; 5 uses
  %i.cct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ccu = load i64, ptr %i.cct, align 8, !tbaa !31 ; 7 uses
  %i.ccv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ccw = load i64, ptr %i.ccv, align 8, !tbaa !31 ; 2 uses
  %i.ccx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ccy = load i64, ptr %i.ccx, align 8, !tbaa !31 ; 2 uses
  %i.ccz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cda = load i64, ptr %i.ccz, align 8, !tbaa !31 ; 2 uses
  %i.cdb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cdc = load i64, ptr %i.cdb, align 8, !tbaa !31 ; 4 uses
  %i.cdd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cde = load i64, ptr %i.cdd, align 8, !tbaa !31 ; 8 uses
  %i.cdf = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cdg = load i64, ptr %i.cdf, align 8, !tbaa !31 ; 4 uses
  %i.cdh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cdi = load i64, ptr %i.cdh, align 8, !tbaa !31 ; 4 uses
  %i.cdj = load i32, ptr %0, align 8, !tbaa !35
  %i.cdk = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cdl = load i32, ptr %i.cdk, align 4, !tbaa !36 ; 2 uses
  %i.cdm = trunc i64 %i.ccg to i32                ; 2 uses
  %i.cdn = add i32 %i.cdm, -1
  %i.cdo = add i32 %i.cdn, %i.cdl
  %i.cdp = sdiv i32 %i.cdo, %i.cdl                ; 2 uses
  %i.cdq = mul i32 %i.cdp, %i.cdj                 ; 9 uses
  %i.cdr = add i32 %i.cdq, %i.cdp
  %i.cds = tail call i32 @llvm.smin.i32(i32 %i.cdr, i32 %i.cdm) ; 8 uses
  %i.cdt = load i32, ptr %i.b, align 8, !tbaa !30 ; 2 uses
  %i.cdu = load i32, ptr %1, align 8, !tbaa !30
end_hunk_2
begin_hunk_3_@ggml_compute_forward_dup:bb.a
  %.6245.us.us.us.us.us.i.lcssa = phi i64 [ %.6245.us.us.us.us.us.i.1, %._crit_edge.us.us.us.us.us.i214.unr-lcssa ], [ 0, %bb.gs ], [ 0, %bb.gr ], [ %i.ckk, %bb.gq ], [ %.5244317.us.us.us.us.us.i.epil.init, %.epil.preheader1585 ] ; 3 uses
  %.6236.us.us.us.us.us.i.lcssa = phi i64 [ %.6236.us.us.us.us.us.i.1, %._crit_edge.us.us.us.us.us.i214.unr-lcssa ], [ 0, %bb.gs ], [ %i.ckm, %bb.gr ], [ %.5235318.us.us.us.us.us.i.epil.init, %bb.gq ], [ %.5235318.us.us.us.us.us.i.epil.init, %.epil.preheader1585 ] ; 3 uses
  %.6.us.us.us.us.us.i212.lcssa = phi i64 [ %.6.us.us.us.us.us.i212.1, %._crit_edge.us.us.us.us.us.i214.unr-lcssa ], [ %spec.store.select1.us.us.us.us.us.i222.epil, %bb.gs ], [ %.5319.us.us.us.us.us.i211.epil.init, %bb.gr ], [ %.5319.us.us.us.us.us.i211.epil.init, %bb.gq ], [ %.5319.us.us.us.us.us.i211.epil.init, %.epil.preheader1585 ] ; 3 uses
  %i.ckq = add nsw i64 %.0226330.us.us.us.us.us.i, 1 ; 2 uses
  %exitcond462.not.i215 = icmp eq i64 %i.ckq, %i.chb
  br i1 %exitcond462.not.i215, label %._crit_edge331.split.us.us.us.us.us.i, label %.preheader303.us.us.us.us.us.i209, !llvm.loop !185

._crit_edge331.split.us.us.us.us.us.i:            ; preds = %._crit_edge.us.us.us.us.us.i214
  %i.ckr = add nsw i64 %.5253.us.us.us.us.us.i.lcssa, %i.chg ; 3 uses
  %.not297341.us.us.us.us.i = icmp slt i64 %i.ckr, %i.ccu
  br i1 %.not297341.us.us.us.us.i, label %._crit_edge.us366.us.us.us.i, label %.lr.ph346.us.us.us.us.i

.lr.ph346.us.us.us.us.i:                          ; preds = %._crit_edge331.split.us.us.us.us.us.i, %bb.gv
  %.7345.us.us.us.us.i = phi i64 [ %.8.us.us.us.us.i216, %bb.gv ], [ %.6.us.us.us.us.us.i212.lcssa, %._crit_edge331.split.us.us.us.us.us.i ] ; 3 uses
  %.7237344.us.us.us.us.i = phi i64 [ %.8238.us.us.us.us.i, %bb.gv ], [ %.6236.us.us.us.us.us.i.lcssa, %._crit_edge331.split.us.us.us.us.us.i ] ; 2 uses
  %.7246343.us.us.us.us.i = phi i64 [ %.8247.us.us.us.us.i, %bb.gv ], [ %.6245.us.us.us.us.us.i.lcssa, %._crit_edge331.split.us.us.us.us.us.i ]
  %.6254342.us.us.us.us.i = phi i64 [ %i.cks, %bb.gv ], [ %i.ckr, %._crit_edge331.split.us.us.us.us.us.i ]
  %i.cks = sub nsw i64 %.6254342.us.us.us.us.i, %i.ccu ; 3 uses
  %i.ckt = add nsw i64 %.7246343.us.us.us.us.i, 1 ; 2 uses
  %i.cku = icmp eq i64 %i.ckt, %i.ccw
  br i1 %i.cku, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %.lr.ph346.us.us.us.us.i
  %i.ckv = add nsw i64 %.7237344.us.us.us.us.i, 1 ; 2 uses
  %i.ckw = icmp eq i64 %i.ckv, %i.ccy
  br i1 %i.ckw, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.ckx = add nsw i64 %.7345.us.us.us.us.i, 1    ; 2 uses
  %i.cky = icmp eq i64 %i.ckx, %i.cda
  %spec.store.select2.us.us.us.us.i221 = select i1 %i.cky, i64 0, i64 %i.ckx
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %bb.gt, %.lr.ph346.us.us.us.us.i
  %.8247.us.us.us.us.i = phi i64 [ 0, %bb.gu ], [ 0, %bb.gt ], [ %i.ckt, %.lr.ph346.us.us.us.us.i ] ; 2 uses
  %.8238.us.us.us.us.i = phi i64 [ 0, %bb.gu ], [ %i.ckv, %bb.gt ], [ %.7237344.us.us.us.us.i, %.lr.ph346.us.us.us.us.i ] ; 2 uses
  %.8.us.us.us.us.i216 = phi i64 [ %spec.store.select2.us.us.us.us.i221, %bb.gu ], [ %.7345.us.us.us.us.i, %bb.gt ], [ %.7345.us.us.us.us.i, %.lr.ph346.us.us.us.us.i ] ; 2 uses
  %.not297.us.us.us.us.i217 = icmp slt i64 %i.cks, %i.ccu
  br i1 %.not297.us.us.us.us.i217, label %._crit_edge.us366.us.us.us.i, label %.lr.ph346.us.us.us.us.i, !llvm.loop !186

._crit_edge.us366.us.us.us.i:                     ; preds = %bb.gv, %._crit_edge331.split.us.us.us.us.us.i
  %.6254.lcssa.us.us.us.us.i = phi i64 [ %i.ckr, %._crit_edge331.split.us.us.us.us.us.i ], [ %i.cks, %bb.gv ] ; 2 uses
  %.7246.lcssa.us.us.us.us.i = phi i64 [ %.6245.us.us.us.us.us.i.lcssa, %._crit_edge331.split.us.us.us.us.us.i ], [ %.8247.us.us.us.us.i, %bb.gv ] ; 2 uses
  %.7237.lcssa.us.us.us.us.i = phi i64 [ %.6236.us.us.us.us.us.i.lcssa, %._crit_edge331.split.us.us.us.us.us.i ], [ %.8238.us.us.us.us.i, %bb.gv ] ; 2 uses
  %.7.lcssa.us.us.us.us.i218 = phi i64 [ %.6.us.us.us.us.us.i212.lcssa, %._crit_edge331.split.us.us.us.us.us.i ], [ %.8.us.us.us.us.i216, %bb.gv ] ; 2 uses
  %i.ckz = add nuw nsw i64 %.0227355.us.us.us.us.i, 1 ; 2 uses
  %exitcond463.not.i219 = icmp eq i64 %i.ckz, %i.cci
  br i1 %exitcond463.not.i219, label %._crit_edge357.split.us.us.split.us.us.i, label %bb.ge, !llvm.loop !187

._crit_edge357.split.us.us.split.us.us.i:         ; preds = %._crit_edge.us366.us.us.us.i
  %i.cla = add nuw nsw i64 %.0228375.us.us.i, 1   ; 2 uses
  %exitcond464.not.i220 = icmp eq i64 %i.cla, %i.cck
  br i1 %exitcond464.not.i220, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader305.us.us.i201, !llvm.loop !188

bb.gw:                                            ; preds = %bb.gd
  %i.clb = icmp eq i64 %i.ccm, 2
  br i1 %i.clb, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  %i.clc = shl i64 %i.cce, 1                      ; 12 uses
  %i.cld = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cle = load ptr, ptr %i.cld, align 8, !tbaa !37 ; 5 uses
  %i.clf = icmp sgt i64 %i.cck, 0
  br i1 %i.clf, label %.preheader298.lr.ph.i237, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader298.lr.ph.i237:                         ; preds = %bb.gx
  %i.clg = icmp sgt i64 %i.cci, 0
  %i.clh = sext i32 %i.cdq to i64                 ; 5 uses
  %i.cli = mul i64 %i.clc, %i.clh
  %i.clj = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 5 uses
  %i.clk = sext i32 %i.cds to i64                 ; 4 uses
  %i.cll = sub nsw i64 %i.ccg, %i.clk
  %i.clm = mul i64 %i.cll, %i.clc
  %i.cln = icmp slt i32 %i.cdq, %i.cds
  %or.cond548.i = select i1 %i.clg, i1 %i.cln, i1 false
  br i1 %or.cond548.i, label %.preheader298.us.i.preheader, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader298.us.i.preheader:                     ; preds = %.preheader298.lr.ph.i237
  %i.clo = sub nsw i64 %i.clk, %i.clh
  %xtraiter1600 = and i64 %i.clo, 3               ; 2 uses
  %lcmp.mod1601.not = icmp eq i64 %xtraiter1600, 0
  %i.clp = sub nsw i64 %i.clh, %i.clk
  %i.clq = icmp ugt i64 %i.clp, -4
  br label %.preheader298.us.i

.preheader298.us.i:                               ; preds = %.preheader298.us.i.preheader, %._crit_edge426.split.us.us.i
  %indvars.iv498.i = phi i64 [ %indvars.iv.next499.i, %._crit_edge426.split.us.us.i ], [ 0, %.preheader298.us.i.preheader ] ; 2 uses
  %.0266430.us.i = phi i64 [ %i.cnd, %._crit_edge426.split.us.us.i ], [ 0, %.preheader298.us.i.preheader ]
  %i.clr = mul i64 %indvars.iv498.i, %i.ccs       ; 5 uses
  br label %.lr.ph420.us.us.i

.lr.ph420.us.us.i:                                ; preds = %._crit_edge421.us.us.i, %.preheader298.us.i
  %indvars.iv494.i = phi i64 [ %indvars.iv.next495.i, %._crit_edge421.us.us.i ], [ 0, %.preheader298.us.i ] ; 2 uses
  %.1267423.us.us.i = phi i64 [ %i.cnd, %._crit_edge421.us.us.i ], [ %.0266430.us.i, %.preheader298.us.i ]
  %i.cls = add i64 %.1267423.us.us.i, %i.cli      ; 2 uses
  %i.clt = mul i64 %indvars.iv494.i, %i.ccq       ; 5 uses
  br i1 %lcmp.mod1601.not, label %.prol.loopexit1599, label %.prol.preheader1598

.prol.preheader1598:                              ; preds = %.lr.ph420.us.us.i, %.prol.preheader1598
  %indvars.iv489.i.prol = phi i64 [ %indvars.iv.next490.i.prol, %.prol.preheader1598 ], [ %i.clh, %.lr.ph420.us.us.i ] ; 2 uses
  %.2268417.us.us.i.prol = phi i64 [ %i.cma, %.prol.preheader1598 ], [ %i.cls, %.lr.ph420.us.us.i ] ; 2 uses
  %prol.iter1602 = phi i64 [ %prol.iter1602.next, %.prol.preheader1598 ], [ 0, %.lr.ph420.us.us.i ]
  %i.clu = load ptr, ptr %i.clj, align 8, !tbaa !37
  %i.clv = mul i64 %indvars.iv489.i.prol, %i.cco
  %i.clw = getelementptr inbounds nuw i8, ptr %i.clu, i64 %i.clv
  %i.clx = getelementptr inbounds nuw i8, ptr %i.clw, i64 %i.clt
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 %i.clr
  %i.clz = getelementptr inbounds nuw i8, ptr %i.cle, i64 %.2268417.us.us.i.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.clz, ptr align 1 %i.cly, i64 %i.clc, i1 false)
  %i.cma = add i64 %.2268417.us.us.i.prol, %i.clc ; 3 uses
  %indvars.iv.next490.i.prol = add nsw i64 %indvars.iv489.i.prol, 1 ; 2 uses
  %prol.iter1602.next = add i64 %prol.iter1602, 1 ; 2 uses
  %prol.iter1602.cmp.not = icmp eq i64 %prol.iter1602.next, %xtraiter1600
  br i1 %prol.iter1602.cmp.not, label %.prol.loopexit1599, label %.prol.preheader1598, !llvm.loop !189

.prol.loopexit1599:                               ; preds = %.prol.preheader1598, %.lr.ph420.us.us.i
  %.lcssa1529.unr = phi i64 [ poison, %.lr.ph420.us.us.i ], [ %i.cma, %.prol.preheader1598 ]
  %indvars.iv489.i.unr = phi i64 [ %i.clh, %.lr.ph420.us.us.i ], [ %indvars.iv.next490.i.prol, %.prol.preheader1598 ]
  %.2268417.us.us.i.unr = phi i64 [ %i.cls, %.lr.ph420.us.us.i ], [ %i.cma, %.prol.preheader1598 ]
  br i1 %i.clq, label %._crit_edge421.us.us.i, label %.lr.ph420.us.us.i.new

.lr.ph420.us.us.i.new:                            ; preds = %.prol.loopexit1599, %.lr.ph420.us.us.i.new
  %indvars.iv489.i = phi i64 [ %indvars.iv.next490.i.3, %.lr.ph420.us.us.i.new ], [ %indvars.iv489.i.unr, %.prol.loopexit1599 ] ; 5 uses
  %.2268417.us.us.i = phi i64 [ %i.cnc, %.lr.ph420.us.us.i.new ], [ %.2268417.us.us.i.unr, %.prol.loopexit1599 ] ; 2 uses
  %i.cmb = load ptr, ptr %i.clj, align 8, !tbaa !37
  %i.cmc = mul i64 %indvars.iv489.i, %i.cco
  %i.cmd = getelementptr inbounds nuw i8, ptr %i.cmb, i64 %i.cmc
  %i.cme = getelementptr inbounds nuw i8, ptr %i.cmd, i64 %i.clt
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.cme, i64 %i.clr
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.cle, i64 %.2268417.us.us.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cmg, ptr align 1 %i.cmf, i64 %i.clc, i1 false)
  %i.cmh = add i64 %.2268417.us.us.i, %i.clc      ; 2 uses
  %indvars.iv.next490.i = add nsw i64 %indvars.iv489.i, 1
  %i.cmi = load ptr, ptr %i.clj, align 8, !tbaa !37
  %i.cmj = mul i64 %indvars.iv.next490.i, %i.cco
  %i.cmk = getelementptr inbounds nuw i8, ptr %i.cmi, i64 %i.cmj
  %i.cml = getelementptr inbounds nuw i8, ptr %i.cmk, i64 %i.clt
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.cml, i64 %i.clr
  %i.cmn = getelementptr inbounds nuw i8, ptr %i.cle, i64 %i.cmh
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cmn, ptr align 1 %i.cmm, i64 %i.clc, i1 false)
  %i.cmo = add i64 %i.cmh, %i.clc                 ; 2 uses
  %indvars.iv.next490.i.1 = add nsw i64 %indvars.iv489.i, 2
  %i.cmp = load ptr, ptr %i.clj, align 8, !tbaa !37
  %i.cmq = mul i64 %indvars.iv.next490.i.1, %i.cco
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmp, i64 %i.cmq
  %i.cms = getelementptr inbounds nuw i8, ptr %i.cmr, i64 %i.clt
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.cms, i64 %i.clr
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.cle, i64 %i.cmo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cmu, ptr align 1 %i.cmt, i64 %i.clc, i1 false)
  %i.cmv = add i64 %i.cmo, %i.clc                 ; 2 uses
  %indvars.iv.next490.i.2 = add nsw i64 %indvars.iv489.i, 3
  %i.cmw = load ptr, ptr %i.clj, align 8, !tbaa !37
  %i.cmx = mul i64 %indvars.iv.next490.i.2, %i.cco
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmw, i64 %i.cmx
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmy, i64 %i.clt
  %i.cna = getelementptr inbounds nuw i8, ptr %i.cmz, i64 %i.clr
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.cle, i64 %i.cmv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cnb, ptr align 1 %i.cna, i64 %i.clc, i1 false)
  %i.cnc = add i64 %i.cmv, %i.clc                 ; 2 uses
  %indvars.iv.next490.i.3 = add nsw i64 %indvars.iv489.i, 4 ; 2 uses
  %exitcond493.not.i.3 = icmp eq i64 %indvars.iv.next490.i.3, %i.clk
  br i1 %exitcond493.not.i.3, label %._crit_edge421.us.us.i, label %.lr.ph420.us.us.i.new, !llvm.loop !190

._crit_edge421.us.us.i:                           ; preds = %.lr.ph420.us.us.i.new, %.prol.loopexit1599
  %.lcssa1529 = phi i64 [ %.lcssa1529.unr, %.prol.loopexit1599 ], [ %i.cnc, %.lr.ph420.us.us.i.new ]
  %i.cnd = add i64 %.lcssa1529, %i.clm            ; 2 uses
  %indvars.iv.next495.i = add nuw nsw i64 %indvars.iv494.i, 1 ; 2 uses
  %exitcond497.not.i238 = icmp eq i64 %indvars.iv.next495.i, %i.cci
  br i1 %exitcond497.not.i238, label %._crit_edge426.split.us.us.i, label %.lr.ph420.us.us.i, !llvm.loop !191

._crit_edge426.split.us.us.i:                     ; preds = %._crit_edge421.us.us.i
  %indvars.iv.next499.i = add nuw nsw i64 %indvars.iv498.i, 1 ; 2 uses
  %exitcond501.not.i239 = icmp eq i64 %indvars.iv.next499.i, %i.cck
  br i1 %exitcond501.not.i239, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader298.us.i, !llvm.loop !192

bb.gy:                                            ; preds = %bb.gw
  %i.cne = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.cnf = load ptr, ptr %i.cne, align 8, !tbaa !37 ; 7 uses
  %i.cng = icmp sgt i64 %i.cck, 0
  br i1 %i.cng, label %.preheader301.lr.ph.i224, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit

.preheader301.lr.ph.i224:                         ; preds = %bb.gy
  %i.cnh = icmp slt i64 %i.cci, 1
  %i.cni = sext i32 %i.cdq to i64                 ; 3 uses
  %i.cnj = mul nsw i64 %i.cce, %i.cni
  %i.cnk = icmp slt i64 %i.cce, 1
  %i.cnl = sext i32 %i.cds to i64                 ; 3 uses
  %i.cnm = sub nsw i64 %i.ccg, %i.cnl
  %i.cnn = mul nsw i64 %i.cnm, %i.cce
  %i.cno = icmp sge i32 %i.cdq, %i.cds
  %or.cond549.not556.i = select i1 %i.cnh, i1 true, i1 %i.cno
  %brmerge551.i = select i1 %or.cond549.not556.i, i1 true, i1 %i.cnk
  br i1 %brmerge551.i, label %_ZL30ggml_compute_forward_dup_bytesPK19ggml_compute_paramsP11ggml_tensor.exit, label %.preheader301.lr.ph.split.split.us.split.us.i225

.preheader301.lr.ph.split.split.us.split.us.i225: ; preds = %.preheader301.lr.ph.i224
  %i.cnp = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.cnq = load ptr, ptr %i.cnp, align 8, !tbaa !37 ; 3 uses
  %i.cnr = add nsw i64 %i.cnl, -1
  %i.cns = mul i64 %i.cco, %i.cnr
  %i.cnt = mul i64 %i.cco, %i.cni
  %i.cnu = getelementptr i8, ptr %i.cnq, i64 %i.cce
  %i.cnv = getelementptr i8, ptr %i.cnu, i64 %i.cns
  %i.cnw = getelementptr i8, ptr %i.cnv, i64 1
  %i.cnx = getelementptr i8, ptr %i.cnq, i64 %i.cnt
  %min.iters.check1280 = icmp ult i64 %i.cce, 4
  %ident.check1273 = icmp ne i64 %i.ccm, 1
  %stride.check = icmp slt i64 %i.cco, 0
  %min.iters.check1282 = icmp ult i64 %i.cce, 16
  %i.cny = and i64 %i.cce, 12
  %n.vec1284 = and i64 %i.cce, 9223372036854775792 ; 5 uses
  %cmp.n1289 = icmp eq i64 %i.cce, %n.vec1284
  %min.epilog.iters.check1293 = icmp eq i64 %i.cny, 0
  %n.vec1296 = and i64 %i.cce, 9223372036854775804 ; 4 uses
  %cmp.n1301 = icmp eq i64 %i.cce, %n.vec1296
  %xtraiter1595 = and i64 %i.cce, 1
  %lcmp.mod1596.not = icmp eq i64 %xtraiter1595, 0
  br label %.preheader301.us.us.i226

.preheader301.us.us.i226:                         ; preds = %._crit_edge398.split.us.split.us.us.us.i, %.preheader301.lr.ph.split.split.us.split.us.i225
  %indvars.iv479.i = phi i64 [ %indvars.iv.next480.i, %._crit_edge398.split.us.split.us.us.us.i ], [ 0, %.preheader301.lr.ph.split.split.us.split.us.i225 ] ; 3 uses
  %.0259407.us.us.i = phi i64 [ %i.cts, %._crit_edge398.split.us.split.us.us.us.i ], [ 0, %.preheader301.lr.ph.split.split.us.split.us.i225 ]
  %i.cnz = mul i64 %i.ccs, %indvars.iv479.i       ; 2 uses
  %i.coa = mul i64 %indvars.iv479.i, %i.ccs
  %invariant.gep.us.us.i227 = getelementptr i8, ptr %i.cnq, i64 %i.coa
  %i.cob = getelementptr i8, ptr %i.cnw, i64 %i.cnz
  %i.coc = getelementptr i8, ptr %i.cnx, i64 %i.cnz
  br label %.preheader300.lr.ph.us.us.us.us.i228

.preheader300.lr.ph.us.us.us.us.i228:             ; preds = %._crit_edge391.split.us.us.us.us.us.i, %.preheader301.us.us.i226
  %indvars.iv475.i = phi i64 [ %indvars.iv.next476.i, %._crit_edge391.split.us.us.us.us.us.i ], [ 0, %.preheader301.us.us.i226 ] ; 3 uses
  %.1260395.us.us.us.us.i = phi i64 [ %i.cts, %._crit_edge391.split.us.us.us.us.us.i ], [ %.0259407.us.us.i, %.preheader301.us.us.i226 ]
  %i.cod = mul i64 %i.ccq, %indvars.iv475.i       ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cob, i64 %i.cod
  %scevgep1278 = getelementptr i8, ptr %i.coc, i64 %i.cod
  %i.coe = add i64 %.1260395.us.us.us.us.i, %i.cnj
  %i.cof = mul i64 %indvars.iv475.i, %i.ccq
  %gep.us.us.i229 = getelementptr i8, ptr %invariant.gep.us.us.i227, i64 %i.cof
  br label %iter.check1290

iter.check1290:                                   ; preds = %._crit_edge384.us.us.us.us.us.i, %.preheader300.lr.ph.us.us.us.us.i228
  %indvars.iv471.i = phi i64 [ %indvars.iv.next472.i, %._crit_edge384.us.us.us.us.us.i ], [ %i.cni, %.preheader300.lr.ph.us.us.us.us.i228 ] ; 2 uses
  %.2261389.us.us.us.us.us.i = phi i64 [ %.lcssa1170, %._crit_edge384.us.us.us.us.us.i ], [ %i.coe, %.preheader300.lr.ph.us.us.us.us.i228 ] ; 8 uses
  %i.cog = mul i64 %indvars.iv471.i, %i.cco
  %gep394.us.us.us.us.i = getelementptr i8, ptr %gep.us.us.i229, i64 %i.cog ; 25 uses
  %i.coh = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %i.cce
  %i.coi = getelementptr i8, ptr %i.coh, i64 -1
  %i.coj = icmp ult ptr %i.coi, %gep394.us.us.us.us.i
  %i.cok = or i1 %ident.check1273, %i.coj
  %or.cond1801 = select i1 %min.iters.check1280, i1 true, i1 %i.cok
  br i1 %or.cond1801, label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check1290
  %i.col = shl i64 %.2261389.us.us.us.us.us.i, 1
  %i.com = getelementptr nuw i8, ptr %i.cnf, i64 %i.col
  %8 = add i64 %.2261389.us.us.us.us.us.i, %i.cce
  %9 = shl i64 %8, 1
  %i.con = getelementptr i8, ptr %i.cnf, i64 %9
  %bound0 = icmp ult ptr %i.com, %scevgep
  %bound1 = icmp ult ptr %scevgep1278, %i.con
  %found.conflict = and i1 %bound0, %bound1
  %i.coo = or i1 %found.conflict, %stride.check
  br i1 %i.coo, label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader, label %vector.main.loop.iter.check1281

vector.main.loop.iter.check1281:                  ; preds = %vector.memcheck
  br i1 %min.iters.check1282, label %vec.epilog.ph1294, label %vector.ph1283

vector.ph1283:                                    ; preds = %vector.main.loop.iter.check1281
  %i.cop = add i64 %.2261389.us.us.us.us.us.i, %n.vec1284 ; 2 uses
  %i.coq = getelementptr [2 x i8], ptr %i.cnf, i64 %.2261389.us.us.us.us.us.i
  br label %vector.body1285

vector.body1285:                                  ; preds = %vector.ph1283, %vector.body1285
  %index1286 = phi i64 [ 0, %vector.ph1283 ], [ %index.next1287, %vector.body1285 ] ; 18 uses
  %i.cor = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cos = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cot = getelementptr i8, ptr %i.cos, i64 1
  %i.cou = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cov = getelementptr i8, ptr %i.cou, i64 2
  %i.cow = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cox = getelementptr i8, ptr %i.cow, i64 3
  %i.coy = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.coz = getelementptr i8, ptr %i.coy, i64 4
  %i.cpa = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpb = getelementptr i8, ptr %i.cpa, i64 5
  %i.cpc = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpd = getelementptr i8, ptr %i.cpc, i64 6
  %i.cpe = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpf = getelementptr i8, ptr %i.cpe, i64 7
  %i.cpg = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cph = getelementptr i8, ptr %i.cpg, i64 8
  %i.cpi = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpj = getelementptr i8, ptr %i.cpi, i64 9
  %i.cpk = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpl = getelementptr i8, ptr %i.cpk, i64 10
  %i.cpm = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpn = getelementptr i8, ptr %i.cpm, i64 11
  %i.cpo = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpp = getelementptr i8, ptr %i.cpo, i64 12
  %i.cpq = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpr = getelementptr i8, ptr %i.cpq, i64 13
  %i.cps = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpt = getelementptr i8, ptr %i.cps, i64 14
  %i.cpu = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1286
  %i.cpv = getelementptr i8, ptr %i.cpu, i64 15
  %i.cpw = load i16, ptr %i.cor, align 2, !tbaa !41, !alias.scope !262
  %i.cpx = load i16, ptr %i.cot, align 2, !tbaa !41, !alias.scope !262
  %i.cpy = load i16, ptr %i.cov, align 2, !tbaa !41, !alias.scope !262
  %i.cpz = load i16, ptr %i.cox, align 2, !tbaa !41, !alias.scope !262
  %i.cqa = load i16, ptr %i.coz, align 2, !tbaa !41, !alias.scope !262
  %i.cqb = load i16, ptr %i.cpb, align 2, !tbaa !41, !alias.scope !262
  %i.cqc = load i16, ptr %i.cpd, align 2, !tbaa !41, !alias.scope !262
  %i.cqd = load i16, ptr %i.cpf, align 2, !tbaa !41, !alias.scope !262
  %i.cqe = load i16, ptr %i.cph, align 2, !tbaa !41, !alias.scope !262
  %i.cqf = load i16, ptr %i.cpj, align 2, !tbaa !41, !alias.scope !262
  %i.cqg = load i16, ptr %i.cpl, align 2, !tbaa !41, !alias.scope !262
  %i.cqh = load i16, ptr %i.cpn, align 2, !tbaa !41, !alias.scope !262
  %i.cqi = load i16, ptr %i.cpp, align 2, !tbaa !41, !alias.scope !262
  %i.cqj = load i16, ptr %i.cpr, align 2, !tbaa !41, !alias.scope !262
  %i.cqk = load i16, ptr %i.cpt, align 2, !tbaa !41, !alias.scope !262
  %i.cql = load i16, ptr %i.cpv, align 2, !tbaa !41, !alias.scope !262
  %i.cqm = insertelement <16 x i16> poison, i16 %i.cpw, i64 0
  %i.cqn = insertelement <16 x i16> %i.cqm, i16 %i.cpx, i64 1
  %i.cqo = insertelement <16 x i16> %i.cqn, i16 %i.cpy, i64 2
  %i.cqp = insertelement <16 x i16> %i.cqo, i16 %i.cpz, i64 3
  %i.cqq = insertelement <16 x i16> %i.cqp, i16 %i.cqa, i64 4
  %i.cqr = insertelement <16 x i16> %i.cqq, i16 %i.cqb, i64 5
  %i.cqs = insertelement <16 x i16> %i.cqr, i16 %i.cqc, i64 6
  %i.cqt = insertelement <16 x i16> %i.cqs, i16 %i.cqd, i64 7
  %i.cqu = insertelement <16 x i16> %i.cqt, i16 %i.cqe, i64 8
  %i.cqv = insertelement <16 x i16> %i.cqu, i16 %i.cqf, i64 9
  %i.cqw = insertelement <16 x i16> %i.cqv, i16 %i.cqg, i64 10
  %i.cqx = insertelement <16 x i16> %i.cqw, i16 %i.cqh, i64 11
  %i.cqy = insertelement <16 x i16> %i.cqx, i16 %i.cqi, i64 12
  %i.cqz = insertelement <16 x i16> %i.cqy, i16 %i.cqj, i64 13
  %i.cra = insertelement <16 x i16> %i.cqz, i16 %i.cqk, i64 14
  %i.crb = insertelement <16 x i16> %i.cra, i16 %i.cql, i64 15 ; 3 uses
  %i.crc = zext <16 x i16> %i.crb to <16 x i32>
  %i.crd = shl nuw <16 x i32> %i.crc, splat (i32 16)
  %i.cre = bitcast <16 x i32> %i.crd to <16 x float>
  %i.crf = tail call <16 x float> @llvm.fabs.v16f32(<16 x float> %i.cre)
  %i.crg = bitcast <16 x float> %i.crf to <16 x i32>
  %i.crh = icmp samesign ugt <16 x i32> %i.crg, splat (i32 2139095040)
  %i.cri = or <16 x i16> %i.crb, splat (i16 64)
  %i.crj = select <16 x i1> %i.crh, <16 x i16> %i.cri, <16 x i16> %i.crb
  %i.crk = getelementptr [2 x i8], ptr %i.coq, i64 %index1286
  store <16 x i16> %i.crj, ptr %i.crk, align 2, !tbaa !41, !alias.scope !263, !noalias !262
  %index.next1287 = add nuw i64 %index1286, 16    ; 2 uses
  %i.crl = icmp eq i64 %index.next1287, %n.vec1284
  br i1 %i.crl, label %middle.block1288, label %vector.body1285, !llvm.loop !196

middle.block1288:                                 ; preds = %vector.body1285
  br i1 %cmp.n1289, label %._crit_edge384.us.us.us.us.us.i, label %vec.epilog.iter.check1291

vec.epilog.iter.check1291:                        ; preds = %middle.block1288
  br i1 %min.epilog.iters.check1293, label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader, label %vec.epilog.ph1294, !prof !49

vec.epilog.ph1294:                                ; preds = %vector.main.loop.iter.check1281, %vec.epilog.iter.check1291
  %vec.epilog.resume.val1295 = phi i64 [ %n.vec1284, %vec.epilog.iter.check1291 ], [ 0, %vector.main.loop.iter.check1281 ]
  %i.crm = add i64 %.2261389.us.us.us.us.us.i, %n.vec1296 ; 2 uses
  %i.crn = getelementptr [2 x i8], ptr %i.cnf, i64 %.2261389.us.us.us.us.us.i
  br label %vec.epilog.vector.body1297

vec.epilog.vector.body1297:                       ; preds = %vec.epilog.vector.body1297, %vec.epilog.ph1294
  %index1298 = phi i64 [ %vec.epilog.resume.val1295, %vec.epilog.ph1294 ], [ %index.next1299, %vec.epilog.vector.body1297 ] ; 6 uses
  %i.cro = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1298
  %i.crp = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1298
  %i.crq = getelementptr i8, ptr %i.crp, i64 1
  %i.crr = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1298
  %i.crs = getelementptr i8, ptr %i.crr, i64 2
  %i.crt = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %index1298
  %i.cru = getelementptr i8, ptr %i.crt, i64 3
  %i.crv = load i16, ptr %i.cro, align 2, !tbaa !41, !alias.scope !262
  %i.crw = load i16, ptr %i.crq, align 2, !tbaa !41, !alias.scope !262
  %i.crx = load i16, ptr %i.crs, align 2, !tbaa !41, !alias.scope !262
  %i.cry = load i16, ptr %i.cru, align 2, !tbaa !41, !alias.scope !262
  %i.crz = insertelement <4 x i16> poison, i16 %i.crv, i64 0
  %i.csa = insertelement <4 x i16> %i.crz, i16 %i.crw, i64 1
  %i.csb = insertelement <4 x i16> %i.csa, i16 %i.crx, i64 2
  %i.csc = insertelement <4 x i16> %i.csb, i16 %i.cry, i64 3 ; 3 uses
  %i.csd = zext <4 x i16> %i.csc to <4 x i32>
  %i.cse = shl nuw <4 x i32> %i.csd, splat (i32 16)
  %i.csf = bitcast <4 x i32> %i.cse to <4 x float>
  %i.csg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.csf)
  %i.csh = bitcast <4 x float> %i.csg to <4 x i32>
  %i.csi = icmp samesign ugt <4 x i32> %i.csh, splat (i32 2139095040)
  %i.csj = or <4 x i16> %i.csc, splat (i16 64)
  %i.csk = select <4 x i1> %i.csi, <4 x i16> %i.csj, <4 x i16> %i.csc
  %i.csl = getelementptr [2 x i8], ptr %i.crn, i64 %index1298
  store <4 x i16> %i.csk, ptr %i.csl, align 2, !tbaa !41, !alias.scope !263, !noalias !262
  %index.next1299 = add nuw i64 %index1298, 4     ; 2 uses
  %i.csm = icmp eq i64 %index.next1299, %n.vec1296
  br i1 %i.csm, label %vec.epilog.middle.block1300, label %vec.epilog.vector.body1297, !llvm.loop !197

vec.epilog.middle.block1300:                      ; preds = %vec.epilog.vector.body1297
  br i1 %cmp.n1301, label %._crit_edge384.us.us.us.us.us.i, label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader

_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader: ; preds = %iter.check1290, %vector.memcheck, %vec.epilog.iter.check1291, %vec.epilog.middle.block1300
  %indvars.iv.i232.ph = phi i64 [ 0, %iter.check1290 ], [ %n.vec1296, %vec.epilog.middle.block1300 ], [ 0, %vector.memcheck ], [ %n.vec1284, %vec.epilog.iter.check1291 ] ; 4 uses
  %.3262381.us.us.us.us.us.i.ph = phi i64 [ %.2261389.us.us.us.us.us.i, %iter.check1290 ], [ %i.crm, %vec.epilog.middle.block1300 ], [ %.2261389.us.us.us.us.us.i, %vector.memcheck ], [ %i.cop, %vec.epilog.iter.check1291 ] ; 3 uses
  %.neg = or disjoint i64 %indvars.iv.i232.ph, 1
  br i1 %lcmp.mod1596.not, label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol.loopexit, label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol

_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol:  ; preds = %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader
  %i.csn = mul i64 %indvars.iv.i232.ph, %i.ccm
  %gep.us.us.us.us.us.i233.prol = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %i.csn
  %.sroa.035.0.copyload.us.us.us.us.us.i.prol = load i16, ptr %gep.us.us.us.us.us.i233.prol, align 2, !tbaa !41 ; 3 uses
  %i.cso = zext i16 %.sroa.035.0.copyload.us.us.us.us.us.i.prol to i32
  %i.csp = shl nuw i32 %i.cso, 16
  %i.csq = bitcast i32 %i.csp to float
  %i.csr = tail call float @llvm.fabs.f32(float %i.csq)
  %i.css = bitcast float %i.csr to i32
  %i.cst = icmp samesign ugt i32 %i.css, 2139095040
  %i.csu = or i16 %.sroa.035.0.copyload.us.us.us.us.us.i.prol, 64
  %spec.select.i.prol = select i1 %i.cst, i16 %i.csu, i16 %.sroa.035.0.copyload.us.us.us.us.us.i.prol
  %i.csv = getelementptr inbounds nuw [2 x i8], ptr %i.cnf, i64 %.3262381.us.us.us.us.us.i.ph
  store i16 %spec.select.i.prol, ptr %i.csv, align 2, !tbaa !41
  %i.csw = add i64 %.3262381.us.us.us.us.us.i.ph, 1 ; 2 uses
  %indvars.iv.next.i234.prol = or disjoint i64 %indvars.iv.i232.ph, 1
  br label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol.loopexit

_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol.loopexit: ; preds = %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader
  %.lcssa1532.unr = phi i64 [ poison, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader ], [ %i.csw, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol ]
  %indvars.iv.i232.unr = phi i64 [ %indvars.iv.i232.ph, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader ], [ %indvars.iv.next.i234.prol, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol ]
  %.3262381.us.us.us.us.us.i.unr = phi i64 [ %.3262381.us.us.us.us.us.i.ph, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.preheader ], [ %i.csw, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol ]
  %i.csx = icmp eq i64 %i.cce, %.neg
  br i1 %i.csx, label %._crit_edge384.us.us.us.us.us.i, label %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231

_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231:       ; preds = %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol.loopexit, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231
  %indvars.iv.i232 = phi i64 [ %indvars.iv.next.i234.1, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231 ], [ %indvars.iv.i232.unr, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol.loopexit ] ; 3 uses
  %.3262381.us.us.us.us.us.i = phi i64 [ %i.ctr, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231 ], [ %.3262381.us.us.us.us.us.i.unr, %_ZL11f32_to_bf16f.exit.us.us.us.us.us.i231.prol.loopexit ] ; 3 uses
  %i.csy = mul i64 %indvars.iv.i232, %i.ccm
  %gep.us.us.us.us.us.i233 = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %i.csy
  %.sroa.035.0.copyload.us.us.us.us.us.i = load i16, ptr %gep.us.us.us.us.us.i233, align 2, !tbaa !41 ; 3 uses
  %i.csz = zext i16 %.sroa.035.0.copyload.us.us.us.us.us.i to i32
  %i.cta = shl nuw i32 %i.csz, 16
  %i.ctb = bitcast i32 %i.cta to float
  %i.ctc = tail call float @llvm.fabs.f32(float %i.ctb)
  %i.ctd = bitcast float %i.ctc to i32
  %i.cte = icmp samesign ugt i32 %i.ctd, 2139095040
  %i.ctf = or i16 %.sroa.035.0.copyload.us.us.us.us.us.i, 64
  %spec.select.i = select i1 %i.cte, i16 %i.ctf, i16 %.sroa.035.0.copyload.us.us.us.us.us.i
  %i.ctg = getelementptr inbounds nuw [2 x i8], ptr %i.cnf, i64 %.3262381.us.us.us.us.us.i
  store i16 %spec.select.i, ptr %i.ctg, align 2, !tbaa !41
  %indvars.iv.next.i234 = add nuw nsw i64 %indvars.iv.i232, 1
  %i.cth = mul i64 %indvars.iv.next.i234, %i.ccm
  %gep.us.us.us.us.us.i233.1 = getelementptr i8, ptr %gep394.us.us.us.us.i, i64 %i.cth
  %.sroa.035.0.copyload.us.us.us.us.us.i.1 = load i16, ptr %gep.us.us.us.us.us.i233.1, align 2, !tbaa !41 ; 3 uses
  %i.cti = zext i16 %.sroa.035.0.copyload.us.us.us.us.us.i.1 to i32
  %i.ctj = shl nuw i32 %i.cti, 16
  %i.ctk = bitcast i32 %i.ctj to float
  %i.ctl = tail call float @llvm.fabs.f32(float %i.ctk)
  %i.ctm = bitcast float %i.ctl to i32
  %i.ctn = icmp samesign ugt i32 %i.ctm, 2139095040
  %i.cto = or i16 %.sroa.035.0.copyload.us.us.us.us.us.i.1, 64
  %spec.select.i.1 = select i1 %i.ctn, i16 %i.cto, i16 %.sroa.035.0.copyload.us.us.us.us.us.i.1
  %i.ctp = getelementptr [2 x i8], ptr %i.cnf, i64 %.3262381.us.us.us.us.us.i
  %i.ctq = getelementptr i8, ptr %i.ctp, i64 2
end_hunk_3
begin_hunk_4_@_ZL28ggml_compute_forward_dup_fltIffEvPK19ggml_compute_paramsP11ggml_tensor:bb.a
  %.6244.us.us.us.us.us.lcssa = phi i64 [ %.6244.us.us.us.us.us.1, %._crit_edge.us.us.us.us.us.unr-lcssa ], [ 0, %bb.y ], [ 0, %bb.x ], [ %i.hq, %bb.w ], [ %.5243316.us.us.us.us.us.epil.init, %.epil.preheader ] ; 3 uses
  %.6235.us.us.us.us.us.lcssa = phi i64 [ %.6235.us.us.us.us.us.1, %._crit_edge.us.us.us.us.us.unr-lcssa ], [ 0, %bb.y ], [ %i.hs, %bb.x ], [ %.5234317.us.us.us.us.us.epil.init, %bb.w ], [ %.5234317.us.us.us.us.us.epil.init, %.epil.preheader ] ; 3 uses
  %.6.us.us.us.us.us.lcssa = phi i64 [ %.6.us.us.us.us.us.1, %._crit_edge.us.us.us.us.us.unr-lcssa ], [ %spec.store.select1.us.us.us.us.us.epil, %bb.y ], [ %.5318.us.us.us.us.us.epil.init, %bb.x ], [ %.5318.us.us.us.us.us.epil.init, %bb.w ], [ %.5318.us.us.us.us.us.epil.init, %.epil.preheader ] ; 3 uses
  %i.hw = add nsw i64 %.0225329.us.us.us.us.us, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %i.hw, %i.eh
  br i1 %exitcond461.not, label %._crit_edge330.split.us.us.us.us.us, label %.preheader302.us.us.us.us.us, !llvm.loop !311

._crit_edge330.split.us.us.us.us.us:              ; preds = %._crit_edge.us.us.us.us.us
  %i.hx = add nsw i64 %.5252.us.us.us.us.us.lcssa, %i.em ; 3 uses
  %.not296340.us.us.us.us = icmp slt i64 %i.hx, %i.aa
  br i1 %.not296340.us.us.us.us, label %._crit_edge.us365.us.us.us, label %.lr.ph345.us.us.us.us

.lr.ph345.us.us.us.us:                            ; preds = %._crit_edge330.split.us.us.us.us.us, %bb.ab
  %.7344.us.us.us.us = phi i64 [ %.8.us.us.us.us, %bb.ab ], [ %.6.us.us.us.us.us.lcssa, %._crit_edge330.split.us.us.us.us.us ] ; 3 uses
  %.7236343.us.us.us.us = phi i64 [ %.8237.us.us.us.us, %bb.ab ], [ %.6235.us.us.us.us.us.lcssa, %._crit_edge330.split.us.us.us.us.us ] ; 2 uses
  %.7245342.us.us.us.us = phi i64 [ %.8246.us.us.us.us, %bb.ab ], [ %.6244.us.us.us.us.us.lcssa, %._crit_edge330.split.us.us.us.us.us ]
  %.6253341.us.us.us.us = phi i64 [ %i.hy, %bb.ab ], [ %i.hx, %._crit_edge330.split.us.us.us.us.us ]
  %i.hy = sub nsw i64 %.6253341.us.us.us.us, %i.aa ; 3 uses
  %i.hz = add nsw i64 %.7245342.us.us.us.us, 1    ; 2 uses
  %i.ia = icmp eq i64 %i.hz, %i.ac
  br i1 %i.ia, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph345.us.us.us.us
  %i.ib = add nsw i64 %.7236343.us.us.us.us, 1    ; 2 uses
  %i.ic = icmp eq i64 %i.ib, %i.ae
  br i1 %i.ic, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.id = add nsw i64 %.7344.us.us.us.us, 1       ; 2 uses
  %i.ie = icmp eq i64 %i.id, %i.ag
  %spec.store.select2.us.us.us.us = select i1 %i.ie, i64 0, i64 %i.id
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph345.us.us.us.us
  %.8246.us.us.us.us = phi i64 [ 0, %bb.aa ], [ 0, %bb.z ], [ %i.hz, %.lr.ph345.us.us.us.us ] ; 2 uses
  %.8237.us.us.us.us = phi i64 [ 0, %bb.aa ], [ %i.ib, %bb.z ], [ %.7236343.us.us.us.us, %.lr.ph345.us.us.us.us ] ; 2 uses
  %.8.us.us.us.us = phi i64 [ %spec.store.select2.us.us.us.us, %bb.aa ], [ %.7344.us.us.us.us, %bb.z ], [ %.7344.us.us.us.us, %.lr.ph345.us.us.us.us ] ; 2 uses
  %.not296.us.us.us.us = icmp slt i64 %i.hy, %i.aa
  br i1 %.not296.us.us.us.us, label %._crit_edge.us365.us.us.us, label %.lr.ph345.us.us.us.us, !llvm.loop !312

._crit_edge.us365.us.us.us:                       ; preds = %bb.ab, %._crit_edge330.split.us.us.us.us.us
  %.6253.lcssa.us.us.us.us = phi i64 [ %i.hx, %._crit_edge330.split.us.us.us.us.us ], [ %i.hy, %bb.ab ] ; 2 uses
  %.7245.lcssa.us.us.us.us = phi i64 [ %.6244.us.us.us.us.us.lcssa, %._crit_edge330.split.us.us.us.us.us ], [ %.8246.us.us.us.us, %bb.ab ] ; 2 uses
  %.7236.lcssa.us.us.us.us = phi i64 [ %.6235.us.us.us.us.us.lcssa, %._crit_edge330.split.us.us.us.us.us ], [ %.8237.us.us.us.us, %bb.ab ] ; 2 uses
  %.7.lcssa.us.us.us.us = phi i64 [ %.6.us.us.us.us.us.lcssa, %._crit_edge330.split.us.us.us.us.us ], [ %.8.us.us.us.us, %bb.ab ] ; 2 uses
  %i.if = add nuw nsw i64 %.0226354.us.us.us.us, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %i.if, %i.o
  br i1 %exitcond462.not, label %._crit_edge356.split.us.us.split.us.us, label %bb.k, !llvm.loop !313

._crit_edge356.split.us.us.split.us.us:           ; preds = %._crit_edge.us365.us.us.us
  %i.ig = add nuw nsw i64 %.0227374.us.us, 1      ; 2 uses
  %exitcond463.not = icmp eq i64 %i.ig, %i.q
  br i1 %exitcond463.not, label %.loopexit, label %.preheader304.us.us, !llvm.loop !314

bb.ac:                                            ; preds = %bb.j
  %i.ih = icmp eq i64 %i.s, 4
  br i1 %i.ih, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ii = shl i64 %i.k, 2                         ; 12 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !37 ; 5 uses
  %i.il = icmp sgt i64 %i.q, 0
  br i1 %i.il, label %.preheader297.lr.ph, label %.loopexit

.preheader297.lr.ph:                              ; preds = %bb.ad
  %i.im = icmp sgt i64 %i.o, 0
  %i.in = sext i32 %i.aw to i64                   ; 5 uses
  %i.io = mul i64 %i.ii, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 5 uses
  %i.iq = sext i32 %i.ay to i64                   ; 4 uses
  %i.ir = sub nsw i64 %i.m, %i.iq
  %i.is = mul i64 %i.ir, %i.ii
  %i.it = icmp slt i32 %i.aw, %i.ay
  %or.cond547 = select i1 %i.im, i1 %i.it, i1 false
  br i1 %or.cond547, label %.preheader297.us.preheader, label %.loopexit

.preheader297.us.preheader:                       ; preds = %.preheader297.lr.ph
  %i.iu = sub nsw i64 %i.iq, %i.in
  %xtraiter600 = and i64 %i.iu, 3                 ; 2 uses
  %lcmp.mod601.not = icmp eq i64 %xtraiter600, 0
  %i.iv = sub nsw i64 %i.in, %i.iq
  %i.iw = icmp ugt i64 %i.iv, -4
  br label %.preheader297.us

.preheader297.us:                                 ; preds = %.preheader297.us.preheader, %._crit_edge425.split.us.us
  %indvars.iv497 = phi i64 [ %indvars.iv.next498, %._crit_edge425.split.us.us ], [ 0, %.preheader297.us.preheader ] ; 2 uses
  %.0265429.us = phi i64 [ %i.kj, %._crit_edge425.split.us.us ], [ 0, %.preheader297.us.preheader ]
  %i.ix = mul i64 %indvars.iv497, %i.y            ; 5 uses
  br label %.lr.ph419.us.us

.lr.ph419.us.us:                                  ; preds = %._crit_edge420.us.us, %.preheader297.us
  %indvars.iv493 = phi i64 [ %indvars.iv.next494, %._crit_edge420.us.us ], [ 0, %.preheader297.us ] ; 2 uses
  %.1266422.us.us = phi i64 [ %i.kj, %._crit_edge420.us.us ], [ %.0265429.us, %.preheader297.us ]
  %i.iy = add i64 %.1266422.us.us, %i.io          ; 2 uses
  %i.iz = mul i64 %indvars.iv493, %i.w            ; 5 uses
  br i1 %lcmp.mod601.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph419.us.us, %.prol.preheader
  %indvars.iv488.prol = phi i64 [ %indvars.iv.next489.prol, %.prol.preheader ], [ %i.in, %.lr.ph419.us.us ] ; 2 uses
  %.2267416.us.us.prol = phi i64 [ %i.jg, %.prol.preheader ], [ %i.iy, %.lr.ph419.us.us ] ; 2 uses
  %prol.iter602 = phi i64 [ %prol.iter602.next, %.prol.preheader ], [ 0, %.lr.ph419.us.us ]
  %i.ja = load ptr, ptr %i.ip, align 8, !tbaa !37
  %i.jb = mul i64 %i.u, %indvars.iv488.prol
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.iz
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ix
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.2267416.us.us.prol
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jf, ptr align 1 %i.je, i64 %i.ii, i1 false)
  %i.jg = add i64 %.2267416.us.us.prol, %i.ii     ; 3 uses
  %indvars.iv.next489.prol = add nsw i64 %indvars.iv488.prol, 1 ; 2 uses
  %prol.iter602.next = add i64 %prol.iter602, 1   ; 2 uses
  %prol.iter602.cmp.not = icmp eq i64 %prol.iter602.next, %xtraiter600
  br i1 %prol.iter602.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !315

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph419.us.us
  %.lcssa.unr = phi i64 [ poison, %.lr.ph419.us.us ], [ %i.jg, %.prol.preheader ]
  %indvars.iv488.unr = phi i64 [ %i.in, %.lr.ph419.us.us ], [ %indvars.iv.next489.prol, %.prol.preheader ]
  %.2267416.us.us.unr = phi i64 [ %i.iy, %.lr.ph419.us.us ], [ %i.jg, %.prol.preheader ]
  br i1 %i.iw, label %._crit_edge420.us.us, label %.lr.ph419.us.us.new

.lr.ph419.us.us.new:                              ; preds = %.prol.loopexit, %.lr.ph419.us.us.new
  %indvars.iv488 = phi i64 [ %indvars.iv.next489.3, %.lr.ph419.us.us.new ], [ %indvars.iv488.unr, %.prol.loopexit ] ; 5 uses
  %.2267416.us.us = phi i64 [ %i.ki, %.lr.ph419.us.us.new ], [ %.2267416.us.us.unr, %.prol.loopexit ] ; 2 uses
  %i.jh = load ptr, ptr %i.ip, align 8, !tbaa !37
  %i.ji = mul i64 %i.u, %indvars.iv488
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.iz
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.ix
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ik, i64 %.2267416.us.us
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jm, ptr align 1 %i.jl, i64 %i.ii, i1 false)
  %i.jn = add i64 %.2267416.us.us, %i.ii          ; 2 uses
  %indvars.iv.next489 = add nsw i64 %indvars.iv488, 1
  %i.jo = load ptr, ptr %i.ip, align 8, !tbaa !37
  %i.jp = mul i64 %i.u, %indvars.iv.next489
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.iz
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.ix
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.jn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.js, i64 %i.ii, i1 false)
  %i.ju = add i64 %i.jn, %i.ii                    ; 2 uses
  %indvars.iv.next489.1 = add nsw i64 %indvars.iv488, 2
  %i.jv = load ptr, ptr %i.ip, align 8, !tbaa !37
  %i.jw = mul i64 %i.u, %indvars.iv.next489.1
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.iz
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ix
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ju
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ka, ptr align 1 %i.jz, i64 %i.ii, i1 false)
  %i.kb = add i64 %i.ju, %i.ii                    ; 2 uses
  %indvars.iv.next489.2 = add nsw i64 %indvars.iv488, 3
  %i.kc = load ptr, ptr %i.ip, align 8, !tbaa !37
  %i.kd = mul i64 %i.u, %indvars.iv.next489.2
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.iz
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %i.ix
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.kb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kh, ptr align 1 %i.kg, i64 %i.ii, i1 false)
  %i.ki = add i64 %i.kb, %i.ii                    ; 2 uses
  %indvars.iv.next489.3 = add nsw i64 %indvars.iv488, 4 ; 2 uses
  %exitcond492.not.3 = icmp eq i64 %indvars.iv.next489.3, %i.iq
  br i1 %exitcond492.not.3, label %._crit_edge420.us.us, label %.lr.ph419.us.us.new, !llvm.loop !316

._crit_edge420.us.us:                             ; preds = %.lr.ph419.us.us.new, %.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.prol.loopexit ], [ %i.ki, %.lr.ph419.us.us.new ]
  %i.kj = add i64 %.lcssa, %i.is                  ; 2 uses
  %indvars.iv.next494 = add nuw nsw i64 %indvars.iv493, 1 ; 2 uses
  %exitcond496.not = icmp eq i64 %indvars.iv.next494, %i.o
  br i1 %exitcond496.not, label %._crit_edge425.split.us.us, label %.lr.ph419.us.us, !llvm.loop !317

._crit_edge425.split.us.us:                       ; preds = %._crit_edge420.us.us
  %indvars.iv.next498 = add nuw nsw i64 %indvars.iv497, 1 ; 2 uses
  %exitcond500.not = icmp eq i64 %indvars.iv.next498, %i.q
  br i1 %exitcond500.not, label %.loopexit, label %.preheader297.us, !llvm.loop !318

bb.ae:                                            ; preds = %bb.ac
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !37 ; 13 uses
  %i.km = icmp sgt i64 %i.q, 0
  br i1 %i.km, label %.preheader300.lr.ph, label %.loopexit

.preheader300.lr.ph:                              ; preds = %bb.ae
  %i.kn = icmp slt i64 %i.o, 1
  %i.ko = sext i32 %i.aw to i64                   ; 3 uses
  %i.kp = mul nsw i64 %i.k, %i.ko
  %i.kq = icmp slt i64 %i.k, 1
  %i.kr = sext i32 %i.ay to i64                   ; 3 uses
  %i.ks = sub nsw i64 %i.m, %i.kr
  %i.kt = mul nsw i64 %i.ks, %i.k
  %i.ku = icmp sge i32 %i.aw, %i.ay
  %or.cond548.not555 = select i1 %i.kn, i1 true, i1 %i.ku
  %brmerge550 = select i1 %or.cond548.not555, i1 true, i1 %i.kq
  br i1 %brmerge550, label %.loopexit, label %.preheader300.lr.ph.split.split.us.split.us

.preheader300.lr.ph.split.split.us.split.us:      ; preds = %.preheader300.lr.ph
  %i.kv = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !37 ; 3 uses
  %i.kx = add nsw i64 %i.kr, -1
  %i.ky = mul i64 %i.u, %i.kx
  %i.kz = mul i64 %i.u, %i.ko
  %i.la = getelementptr i8, ptr %i.kw, i64 %i.k
  %i.lb = getelementptr i8, ptr %i.la, i64 %i.ky
  %i.lc = getelementptr i8, ptr %i.lb, i64 3
  %i.ld = getelementptr i8, ptr %i.kw, i64 %i.kz
  %min.iters.check = icmp ult i64 %i.k, 8
  %ident.check = icmp ne i64 %i.s, 1
  %stride.check = icmp slt i64 %i.u, 0
  %min.iters.check569 = icmp ult i64 %i.k, 32
  %i.le = and i64 %i.k, 24
  %n.vec = and i64 %i.k, 9223372036854775776      ; 5 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.le, 0
  %n.vec576 = and i64 %i.k, 9223372036854775800   ; 4 uses
  %cmp.n583 = icmp eq i64 %i.k, %n.vec576
  %xtraiter598 = and i64 %i.k, 7                  ; 2 uses
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  br label %.preheader300.us.us

.preheader300.us.us:                              ; preds = %._crit_edge397.split.us.split.us.us.us, %.preheader300.lr.ph.split.split.us.split.us
  %indvars.iv478 = phi i64 [ %indvars.iv.next479, %._crit_edge397.split.us.split.us.us.us ], [ 0, %.preheader300.lr.ph.split.split.us.split.us ] ; 3 uses
  %.0258406.us.us = phi i64 [ %i.ns, %._crit_edge397.split.us.split.us.us.us ], [ 0, %.preheader300.lr.ph.split.split.us.split.us ]
  %i.lf = mul i64 %i.y, %indvars.iv478            ; 2 uses
  %i.lg = mul i64 %indvars.iv478, %i.y
  %invariant.gep.us.us = getelementptr i8, ptr %i.kw, i64 %i.lg
  %i.lh = getelementptr i8, ptr %i.lc, i64 %i.lf
  %i.li = getelementptr i8, ptr %i.ld, i64 %i.lf
  br label %.preheader299.lr.ph.us.us.us.us

.preheader299.lr.ph.us.us.us.us:                  ; preds = %._crit_edge390.split.us.us.us.us.us, %.preheader300.us.us
  %indvars.iv474 = phi i64 [ %indvars.iv.next475, %._crit_edge390.split.us.us.us.us.us ], [ 0, %.preheader300.us.us ] ; 3 uses
  %.1259394.us.us.us.us = phi i64 [ %i.ns, %._crit_edge390.split.us.us.us.us.us ], [ %.0258406.us.us, %.preheader300.us.us ]
  %i.lj = mul i64 %i.w, %indvars.iv474            ; 2 uses
  %scevgep = getelementptr i8, ptr %i.lh, i64 %i.lj
  %scevgep568 = getelementptr i8, ptr %i.li, i64 %i.lj
  %i.lk = add i64 %.1259394.us.us.us.us, %i.kp
  %i.ll = mul i64 %indvars.iv474, %i.w
  %gep.us.us = getelementptr i8, ptr %invariant.gep.us.us, i64 %i.ll
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge383.us.us.us.us.us, %.preheader299.lr.ph.us.us.us.us
  %indvars.iv470 = phi i64 [ %indvars.iv.next471, %._crit_edge383.us.us.us.us.us ], [ %i.ko, %.preheader299.lr.ph.us.us.us.us ] ; 2 uses
  %.2260388.us.us.us.us.us = phi i64 [ %.lcssa560, %._crit_edge383.us.us.us.us.us ], [ %i.lk, %.preheader299.lr.ph.us.us.us.us ] ; 8 uses
  %i.lm = mul i64 %i.u, %indvars.iv470
  %gep393.us.us.us.us = getelementptr i8, ptr %gep.us.us, i64 %i.lm ; 16 uses
  %i.ln = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.k
  %i.lo = getelementptr i8, ptr %i.ln, i64 -1
  %i.lp = icmp ult ptr %i.lo, %gep393.us.us.us.us
  %i.lq = or i1 %ident.check, %i.lp
  %or.cond621 = select i1 %min.iters.check, i1 true, i1 %i.lq
  br i1 %or.cond621, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.lr = shl i64 %.2260388.us.us.us.us.us, 2
  %i.ls = getelementptr nuw i8, ptr %i.kl, i64 %i.lr
  %2 = add i64 %.2260388.us.us.us.us.us, %i.k
  %3 = shl i64 %2, 2
  %i.lt = getelementptr i8, ptr %i.kl, i64 %3
  %bound0 = icmp ult ptr %i.ls, %scevgep
  %bound1 = icmp ult ptr %scevgep568, %i.lt
  %found.conflict = and i1 %bound0, %bound1
  %i.lu = or i1 %found.conflict, %stride.check
  br i1 %i.lu, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check569, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lv = add i64 %.2260388.us.us.us.us.us, %n.vec ; 2 uses
  %i.lw = getelementptr [4 x i8], ptr %i.kl, i64 %.2260388.us.us.us.us.us
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr i8, ptr %gep393.us.us.us.us, <8 x i64> %vec.ind
  %wide.gep570 = getelementptr i8, ptr %gep393.us.us.us.us, <8 x i64> %step.add
  %wide.gep571 = getelementptr i8, ptr %gep393.us.us.us.us, <8 x i64> %step.add.2
  %wide.gep572 = getelementptr i8, ptr %gep393.us.us.us.us, <8 x i64> %step.add.3
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43, !alias.scope !329
  %wide.masked.gather573 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep570, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43, !alias.scope !329
  %wide.masked.gather574 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep571, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43, !alias.scope !329
  %wide.masked.gather575 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep572, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43, !alias.scope !329
  %i.lx = getelementptr [4 x i8], ptr %i.lw, i64 %index ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lx, i64 64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 96
  store <8 x float> %wide.masked.gather, ptr %i.lx, align 4, !tbaa !43, !alias.scope !330, !noalias !329
  store <8 x float> %wide.masked.gather573, ptr %i.ly, align 4, !tbaa !43, !alias.scope !330, !noalias !329
  store <8 x float> %wide.masked.gather574, ptr %i.lz, align 4, !tbaa !43, !alias.scope !330, !noalias !329
  store <8 x float> %wide.masked.gather575, ptr %i.ma, align 4, !tbaa !43, !alias.scope !330, !noalias !329
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.mb = icmp eq i64 %index.next, %n.vec
  br i1 %i.mb, label %middle.block, label %vector.body, !llvm.loop !322

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge383.us.us.us.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.mc = add i64 %.2260388.us.us.us.us.us, %n.vec576 ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.md = getelementptr [4 x i8], ptr %i.kl, i64 %.2260388.us.us.us.us.us
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index577 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next581, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind578 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next582, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep579 = getelementptr i8, ptr %gep393.us.us.us.us, <8 x i64> %vec.ind578
  %wide.masked.gather580 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep579, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !43, !alias.scope !329
  %i.me = getelementptr [4 x i8], ptr %i.md, i64 %index577
  store <8 x float> %wide.masked.gather580, ptr %i.me, align 4, !tbaa !43, !alias.scope !330, !noalias !329
  %index.next581 = add nuw i64 %index577, 8       ; 2 uses
  %vec.ind.next582 = add nuw nsw <8 x i64> %vec.ind578, splat (i64 8)
  %i.mf = icmp eq i64 %index.next581, %n.vec576
  br i1 %i.mf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !323

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n583, label %._crit_edge383.us.us.us.us.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec576, %vec.epilog.middle.block ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  %.3261380.us.us.us.us.us.ph = phi i64 [ %.2260388.us.us.us.us.us, %iter.check ], [ %i.mc, %vec.epilog.middle.block ], [ %.2260388.us.us.us.us.us, %vector.memcheck ], [ %i.lv, %vec.epilog.iter.check ] ; 2 uses
  br i1 %lcmp.mod599.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.3261380.us.us.us.us.us.prol = phi i64 [ %i.mj, %vec.epilog.scalar.ph.prol ], [ %.3261380.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.mg = mul i64 %indvars.iv.prol, %i.s
  %gep.us.us.us.us.us.prol = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.mg
  %i.mh = load float, ptr %gep.us.us.us.us.us.prol, align 4, !tbaa !43
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us.prol
  store float %i.mh, ptr %i.mi, align 4, !tbaa !43
  %i.mj = add i64 %.3261380.us.us.us.us.us.prol, 1 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter598
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !324

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa588.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.mj, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.3261380.us.us.us.us.us.unr = phi i64 [ %.3261380.us.us.us.us.us.ph, %vec.epilog.scalar.ph.preheader ], [ %i.mj, %vec.epilog.scalar.ph.prol ]
  %i.mk = sub nsw i64 %indvars.iv.ph, %i.k
  %i.ml = icmp ugt i64 %i.mk, -8
  br i1 %i.ml, label %._crit_edge383.us.us.us.us.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %.3261380.us.us.us.us.us = phi i64 [ %i.nr, %vec.epilog.scalar.ph ], [ %.3261380.us.us.us.us.us.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.mm = mul i64 %indvars.iv, %i.s
  %gep.us.us.us.us.us = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.mm
  %i.mn = load float, ptr %gep.us.us.us.us.us, align 4, !tbaa !43
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us
  store float %i.mn, ptr %i.mo, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.mp = mul i64 %indvars.iv.next, %i.s
  %gep.us.us.us.us.us.1 = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.mp
  %i.mq = load float, ptr %gep.us.us.us.us.us.1, align 4, !tbaa !43
  %i.mr = getelementptr [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us
  %i.ms = getelementptr i8, ptr %i.mr, i64 4
  store float %i.mq, ptr %i.ms, align 4, !tbaa !43
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %i.mt = mul i64 %indvars.iv.next.1, %i.s
  %gep.us.us.us.us.us.2 = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.mt
  %i.mu = load float, ptr %gep.us.us.us.us.us.2, align 4, !tbaa !43
  %i.mv = getelementptr [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us
  %i.mw = getelementptr i8, ptr %i.mv, i64 8
  store float %i.mu, ptr %i.mw, align 4, !tbaa !43
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %i.mx = mul i64 %indvars.iv.next.2, %i.s
  %gep.us.us.us.us.us.3 = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.mx
  %i.my = load float, ptr %gep.us.us.us.us.us.3, align 4, !tbaa !43
  %i.mz = getelementptr [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us
  %i.na = getelementptr i8, ptr %i.mz, i64 12
  store float %i.my, ptr %i.na, align 4, !tbaa !43
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %i.nb = mul i64 %indvars.iv.next.3, %i.s
  %gep.us.us.us.us.us.4 = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.nb
  %i.nc = load float, ptr %gep.us.us.us.us.us.4, align 4, !tbaa !43
  %i.nd = getelementptr [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us
  %i.ne = getelementptr i8, ptr %i.nd, i64 16
  store float %i.nc, ptr %i.ne, align 4, !tbaa !43
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5
  %i.nf = mul i64 %indvars.iv.next.4, %i.s
  %gep.us.us.us.us.us.5 = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.nf
  %i.ng = load float, ptr %gep.us.us.us.us.us.5, align 4, !tbaa !43
  %i.nh = getelementptr [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us
  %i.ni = getelementptr i8, ptr %i.nh, i64 20
  store float %i.ng, ptr %i.ni, align 4, !tbaa !43
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6
  %i.nj = mul i64 %indvars.iv.next.5, %i.s
  %gep.us.us.us.us.us.6 = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.nj
  %i.nk = load float, ptr %gep.us.us.us.us.us.6, align 4, !tbaa !43
  %i.nl = getelementptr [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us
  %i.nm = getelementptr i8, ptr %i.nl, i64 24
  store float %i.nk, ptr %i.nm, align 4, !tbaa !43
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7
  %i.nn = mul i64 %indvars.iv.next.6, %i.s
  %gep.us.us.us.us.us.7 = getelementptr i8, ptr %gep393.us.us.us.us, i64 %i.nn
  %i.no = load float, ptr %gep.us.us.us.us.us.7, align 4, !tbaa !43
  %i.np = getelementptr [4 x i8], ptr %i.kl, i64 %.3261380.us.us.us.us.us
  %i.nq = getelementptr i8, ptr %i.np, i64 28
  store float %i.no, ptr %i.nq, align 4, !tbaa !43
  %i.nr = add i64 %.3261380.us.us.us.us.us, 8     ; 2 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond469.not.7 = icmp eq i64 %indvars.iv.next.7, %i.k
  br i1 %exitcond469.not.7, label %._crit_edge383.us.us.us.us.us, label %vec.epilog.scalar.ph, !llvm.loop !325

._crit_edge383.us.us.us.us.us:                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa560 = phi i64 [ %i.mc, %vec.epilog.middle.block ], [ %i.lv, %middle.block ], [ %.lcssa588.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.nr, %vec.epilog.scalar.ph ] ; 2 uses
  %indvars.iv.next471 = add nsw i64 %indvars.iv470, 1 ; 2 uses
  %exitcond473.not = icmp eq i64 %indvars.iv.next471, %i.kr
  br i1 %exitcond473.not, label %._crit_edge390.split.us.us.us.us.us, label %iter.check, !llvm.loop !326

._crit_edge390.split.us.us.us.us.us:              ; preds = %._crit_edge383.us.us.us.us.us
  %i.ns = add i64 %.lcssa560, %i.kt               ; 2 uses
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %exitcond477.not = icmp eq i64 %indvars.iv.next475, %i.o
  br i1 %exitcond477.not, label %._crit_edge397.split.us.split.us.us.us, label %.preheader299.lr.ph.us.us.us.us, !llvm.loop !327

._crit_edge397.split.us.split.us.us.us:           ; preds = %._crit_edge390.split.us.us.us.us.us
  %indvars.iv.next479 = add nuw nsw i64 %indvars.iv478, 1 ; 2 uses
  %exitcond481.not = icmp eq i64 %indvars.iv.next479, %i.q
  br i1 %exitcond481.not, label %.loopexit, label %.preheader300.us.us, !llvm.loop !328

.loopexit:                                        ; preds = %._crit_edge356.split.us.us.split.us.us, %._crit_edge397.split.us.split.us.us.us, %._crit_edge425.split.us.us, %._crit_edge439, %.preheader300.lr.ph, %.preheader304.lr.ph, %.preheader.lr.ph, %.preheader305, %bb.ae, %bb.ad, %.preheader297.lr.ph, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL28ggml_compute_forward_dup_fltIfiEvPK19ggml_compute_paramsP11ggml_tensor(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 15 uses
  %i.c = tail call i64 @ggml_nelements(ptr noundef %1)
  %i.d = tail call i64 @ggml_nelements(ptr noundef %i.b)
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !30
  %i.g = tail call zeroext i1 @ggml_is_quantized(i32 noundef %i.f)
  br i1 %i.g, label %bb.e, label %bb.d
end_hunk_4
begin_hunk_5_@ggml_compute_forward_rms_norm:bb.a
  %i.wa = icmp eq i64 %index.next, %n.vec
  br i1 %i.wa, label %middle.block, label %vector.body, !llvm.loop !617

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL18ggml_vec_scale_f32iPff.exit.i.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert88 = insertelement <8 x float> poison, float %i.vn, i64 0
  %broadcast.splat89 = shufflevector <8 x float> %broadcast.splatinsert88, <8 x float> poison, <8 x i32> zeroinitializer
  %invariant.gep245 = getelementptr [4 x i8], ptr %i.vs, i64 %i.as
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index90 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next92, %vec.epilog.vector.body ] ; 2 uses
  %gep246 = getelementptr [4 x i8], ptr %invariant.gep245, i64 %index90 ; 2 uses
  %wide.load91 = load <8 x float>, ptr %gep246, align 4, !tbaa !43
  %i.wb = fmul <8 x float> %broadcast.splat89, %wide.load91
  store <8 x float> %i.wb, ptr %gep246, align 4, !tbaa !43
  %index.next92 = add nuw i64 %index90, 8         ; 2 uses
  %i.wc = icmp eq i64 %index.next92, %n.vec87
  br i1 %i.wc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !618

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n93, label %_ZL18ggml_vec_scale_f32iPff.exit.i.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv33.i.i.ph = phi i64 [ %i.as, %iter.check ], [ %i.hq, %vec.epilog.iter.check ], [ %i.hs, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv33.i.i = phi i64 [ %indvars.iv.next34.i.i, %.lr.ph.i.i ], [ %indvars.iv33.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.vs, i64 %indvars.iv33.i.i ; 2 uses
  %i.we = load float, ptr %i.wd, align 4, !tbaa !43
  %i.wf = fmul float %i.vn, %i.we
  store float %i.wf, ptr %i.wd, align 4, !tbaa !43
  %indvars.iv.next34.i.i = add nsw i64 %indvars.iv33.i.i, 1 ; 2 uses
  %i.wg = icmp slt i64 %indvars.iv.next34.i.i, %i.at
  br i1 %i.wg, label %.lr.ph.i.i, label %_ZL18ggml_vec_scale_f32iPff.exit.i.loopexit, !llvm.loop !619

_ZL18ggml_vec_scale_f32iPff.exit.i.loopexit:      ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %i.wh = add nsw i64 %.01004.i, %i.au            ; 2 uses
  %i.wi = icmp slt i64 %i.wh, %i.n
  br i1 %i.wi, label %iter.check, label %._crit_edge7.split.i.split.split, !llvm.loop !602

_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op0EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit: ; preds = %._crit_edge10.split12.i.split.split, %._crit_edge10.split12.i.split.split.us.us, %._crit_edge10.split12.i.split.us.split.us20, %._crit_edge10.split12.i.split.us.split.us.us.us, %._crit_edge10.split12.us.split.us19.split.i, %._crit_edge10.split12.us.split.us19.split.us.us.i, %._crit_edge10.split12.us.split.us.split.us23.us.i, %._crit_edge10.split12.us.split.us.split.us.us.us.us.i, %.preheader1.i, %.preheader.lr.ph.i
  ret void

bb.j:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4002, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rms_norm_mul_fused(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4014, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4015, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.69) #17
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %cond = icmp eq i32 %i.i, 0
  br i1 %cond, label %bb.g, label %bb.o

.thread:                                          ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !30
  %cond11 = icmp eq i32 %i.l, 0
  br i1 %cond11, label %.thread12, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  br label %.thread12

.thread12:                                        ; preds = %.thread, %bb.g
  %i.o = phi ptr [ %i.h, %bb.g ], [ %i.k, %.thread ] ; 10 uses
  %i.p = phi ptr [ %i.n, %bb.g ], [ %i.b, %.thread ] ; 8 uses
  %i.q = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.o, ptr noundef nonnull %2)
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread12
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3938, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.27) #17
  unreachable

bb.i:                                             ; preds = %.thread12
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3940, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.u = load i32, ptr %0, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 16 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %.not141.i = icmp eq ptr %i.p, null
  br i1 %.not141.i, label %.thread145.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31
  br label %.thread145.i

.thread145.i:                                     ; preds = %bb.l, %bb.k
  %i.ax = phi i64 [ %i.au, %bb.l ], [ 0, %bb.k ]
  %i.ay = phi i64 [ %i.aq, %bb.l ], [ 0, %bb.k ]
  %i.az = phi i64 [ %i.am, %bb.l ], [ 0, %bb.k ]
  %i.ba = phi i64 [ %i.ao, %bb.l ], [ 0, %bb.k ]
  %i.bb = phi i64 [ %i.as, %bb.l ], [ 0, %bb.k ]
  %i.bc = phi i64 [ %i.aw, %bb.l ], [ 0, %bb.k ]
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !31 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !31 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.0.copyload.i = load float, ptr %i.bj, align 4 ; 2 uses
  %i.bk = fcmp ult float %.0.copyload.i, 0.000000e+00
  br i1 %i.bk, label %bb.n, label %.preheader146.i

.preheader146.i:                                  ; preds = %.thread145.i
  %i.bl = icmp sgt i64 %i.ae, 0
  br i1 %i.bl, label %.preheader.lr.ph.i, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit

.preheader.lr.ph.i:                               ; preds = %.preheader146.i
  %i.bm = icmp slt i64 %i.ac, 1
  %i.bn = sext i32 %i.u to i64                    ; 4 uses
  %i.bo = icmp sle i64 %i.aa, %i.bn
  %i.bp = sitofp i64 %i.y to double
  %i.bq = sext i32 %i.w to i64                    ; 3 uses
  %brmerge.i = select i1 %i.bm, i1 true, i1 %i.bo
  br i1 %brmerge.i, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit, label %.preheader.lr.ph.split.split.i

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.i
  %i.br = icmp sgt i64 %i.y, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 248
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 248
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !37 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !tbaa !37 ; 2 uses
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !37 ; 2 uses
  br i1 %i.br, label %.preheader.us.us.i.preheader, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit

.preheader.us.us.i.preheader:                     ; preds = %.preheader.lr.ph.split.split.i
  %i.by = shl i64 %i.y, 2                         ; 3 uses
  %i.bz = mul i64 %i.ag, %i.bq
  %i.ca = mul i64 %i.ag, %i.bn
  %i.cb = mul i64 %i.be, %i.bq
  %i.cc = mul i64 %i.be, %i.bn
  %xtraiter = and i64 %i.y, 7                     ; 3 uses
  %i.cd = icmp ult i64 %i.y, 8
  %unroll_iter = and i64 %i.y, 9223372036854775800
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod52 = icmp ne i64 %xtraiter, 0
  %min.iters.check = icmp ult i64 %i.y, 4
  %3 = getelementptr i8, ptr %i.bw, i64 %i.cc
  %i.ce = getelementptr i8, ptr %3, i64 %i.by
  %i.cf = getelementptr i8, ptr %i.bv, i64 %i.ca
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.by
  %i.ch = getelementptr i8, ptr %i.bx, i64 %i.by
  %min.iters.check35 = icmp ult i64 %i.y, 32
  %i.ci = and i64 %i.y, 28
  %n.vec = and i64 %i.y, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  %n.vec43 = and i64 %i.y, 9223372036854775804    ; 3 uses
  %cmp.n50 = icmp eq i64 %i.y, %n.vec43
  %xtraiter53 = and i64 %i.y, 3                   ; 2 uses
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %.preheader.us.us.i.preheader, %._crit_edge.split179.us.split.us.us.us.i
  %.0125183.us.us.i = phi i64 [ %i.il, %._crit_edge.split179.us.split.us.us.us.i ], [ 0, %.preheader.us.us.i.preheader ] ; 6 uses
  %i.cj = mul i64 %i.ak, %.0125183.us.us.i
  %i.ck = mul i64 %i.bi, %.0125183.us.us.i
  %i.cl = mul i64 %.0125183.us.us.i, %i.ak
  %i.cm = mul i64 %.0125183.us.us.i, %i.bi
  %invariant.gep174.us.us.i = getelementptr i8, ptr %i.bv, i64 %i.cl
  %invariant.gep.us.us.i = getelementptr i8, ptr %i.bw, i64 %i.cm
  %i.cn = srem i64 %.0125183.us.us.i, %i.ay
  %i.co = mul i64 %i.cn, %i.bc                    ; 2 uses
  %invariant.gep176.us.us.i = getelementptr i8, ptr %i.bx, i64 %i.co
  %i.cp = getelementptr i8, ptr %i.ce, i64 %i.ck
  %i.cq = getelementptr i8, ptr %i.cg, i64 %i.cj
  %i.cr = getelementptr i8, ptr %i.ch, i64 %i.co
  br label %.lr.ph155.us.us.us.us.i

.lr.ph155.us.us.us.us.i:                          ; preds = %._crit_edge156.split.us.us.split.us.us.us.us.i, %.preheader.us.us.i
  %.0124173.us.us.us.us.i = phi i64 [ 0, %.preheader.us.us.i ], [ %i.ik, %._crit_edge156.split.us.us.split.us.us.us.us.i ] ; 6 uses
  %i.cs = mul i64 %i.ai, %.0124173.us.us.us.us.i
  %i.ct = mul i64 %i.bg, %.0124173.us.us.us.us.i
  %i.cu = mul i64 %.0124173.us.us.us.us.i, %i.ai
  %gep.us.us.us.us.i = getelementptr i8, ptr %invariant.gep174.us.us.i, i64 %i.cu
  %i.cv = mul i64 %.0124173.us.us.us.us.i, %i.bg
  %gep175.us.us.us.us.i = getelementptr i8, ptr %invariant.gep.us.us.i, i64 %i.cv
  %i.cw = srem i64 %.0124173.us.us.us.us.i, %i.ba
  %i.cx = mul i64 %i.cw, %i.ax                    ; 2 uses
  %gep177.us.us.us.us.i = getelementptr i8, ptr %invariant.gep176.us.us.i, i64 %i.cx
  %i.cy = getelementptr i8, ptr %i.cp, i64 %i.ct
  %i.cz = getelementptr i8, ptr %i.cq, i64 %i.cs
  %i.da = getelementptr i8, ptr %i.cr, i64 %i.cx
  br label %.lr.ph.us.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.us.i:                       ; preds = %._crit_edge152.us.us.us.us.us.us.i, %.lr.ph155.us.us.us.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge152.us.us.us.us.us.us.i ], [ 0, %.lr.ph155.us.us.us.us.i ] ; 3 uses
  %.0123153.us.us.us.us.us.us.i = phi i64 [ %i.ii, %._crit_edge152.us.us.us.us.us.us.i ], [ %i.bn, %.lr.ph155.us.us.us.us.i ] ; 4 uses
  %i.db = mul i64 %.0123153.us.us.us.us.us.us.i, %i.ag
  %gep158.us.us.us.us.us.us.i = getelementptr i8, ptr %gep.us.us.us.us.i, i64 %i.db ; 17 uses
  br i1 %i.cd, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.i.new

.lr.ph.us.us.us.us.us.us.i.new:                   ; preds = %.lr.ph.us.us.us.us.us.us.i, %.lr.ph.us.us.us.us.us.us.i.new
  %.0121148.us.us.us.us.us.us.i = phi i64 [ %i.ex, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.i ] ; 9 uses
  %.0122147.us.us.us.us.us.us.i = phi double [ %i.ew, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us.i ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph.us.us.us.us.us.us.i.new ], [ 0, %.lr.ph.us.us.us.us.us.us.i ]
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !43 ; 2 uses
  %i.de = fmul float %i.dd, %i.dd
  %i.df = fpext float %i.de to double
  %i.dg = fadd double %.0122147.us.us.us.us.us.us.i, %i.df
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !43 ; 2 uses
  %i.dk = fmul float %i.dj, %i.dj
  %i.dl = fpext float %i.dk to double
  %i.dm = fadd double %i.dg, %i.dl
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !43 ; 2 uses
  %i.dq = fmul float %i.dp, %i.dp
  %i.dr = fpext float %i.dq to double
  %i.ds = fadd double %i.dm, %i.dr
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dv = load float, ptr %i.du, align 4, !tbaa !43 ; 2 uses
  %i.dw = fmul float %i.dv, %i.dv
  %i.dx = fpext float %i.dw to double
  %i.dy = fadd double %i.ds, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !43 ; 2 uses
  %i.ec = fmul float %i.eb, %i.eb
  %i.ed = fpext float %i.ec to double
  %i.ee = fadd double %i.dy, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 20
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !43 ; 2 uses
  %i.ei = fmul float %i.eh, %i.eh
  %i.ej = fpext float %i.ei to double
  %i.ek = fadd double %i.ee, %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load float, ptr %i.em, align 4, !tbaa !43 ; 2 uses
  %i.eo = fmul float %i.en, %i.en
  %i.ep = fpext float %i.eo to double
  %i.eq = fadd double %i.ek, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 28
  %i.et = load float, ptr %i.es, align 4, !tbaa !43 ; 2 uses
  %i.eu = fmul float %i.et, %i.et
  %i.ev = fpext float %i.eu to double
  %i.ew = fadd double %i.eq, %i.ev                ; 3 uses
  %i.ex = add nuw nsw i64 %.0121148.us.us.us.us.us.us.i, 8 ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %iter.check.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.i.new, !llvm.loop !620

iter.check.unr-lcssa:                             ; preds = %.lr.ph.us.us.us.us.us.us.i.new
  br i1 %lcmp.mod.not, label %iter.check, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check.unr-lcssa, %.lr.ph.us.us.us.us.us.us.i
  %.0121148.us.us.us.us.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.i ], [ %i.ex, %iter.check.unr-lcssa ]
  %.0122147.us.us.us.us.us.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us.i ], [ %i.ew, %iter.check.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.0121148.us.us.us.us.us.us.i.epil = phi i64 [ %.0121148.us.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %i.fd, %bb.m ] ; 2 uses
  %.0122147.us.us.us.us.us.us.i.epil = phi double [ %.0122147.us.us.us.us.us.us.i.epil.init, %.epil.preheader ], [ %i.fc, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0121148.us.us.us.us.us.us.i.epil
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !43 ; 2 uses
  %i.fa = fmul float %i.ez, %i.ez
  %i.fb = fpext float %i.fa to double
  %i.fc = fadd double %.0122147.us.us.us.us.us.us.i.epil, %i.fb ; 2 uses
  %i.fd = add nuw nsw i64 %.0121148.us.us.us.us.us.us.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %iter.check, label %bb.m, !llvm.loop !621

iter.check:                                       ; preds = %bb.m, %iter.check.unr-lcssa
  %.lcssa = phi double [ %i.ew, %iter.check.unr-lcssa ], [ %i.fc, %bb.m ]
  %i.fe = fdiv double %.lcssa, %i.bp
  %i.ff = fptrunc double %i.fe to float
  %i.fg = fadd float %.0.copyload.i, %i.ff
  %i.fh = tail call float @sqrtf(float noundef %i.fg) #18
  %i.fi = fdiv float 1.000000e+00, %i.fh          ; 7 uses
  %i.fj = mul i64 %.0123153.us.us.us.us.us.us.i, %i.be
  %gep161.us.us.us.us.us.us.i = getelementptr i8, ptr %gep175.us.us.us.us.i, i64 %i.fj ; 9 uses
  %i.fk = srem i64 %.0123153.us.us.us.us.us.us.i, %i.az
  %i.fl = mul i64 %i.fk, %i.bb                    ; 2 uses
  %gep164.us.us.us.us.us.us.i = getelementptr i8, ptr %gep177.us.us.us.us.i, i64 %i.fl ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.fm = mul i64 %indvar, %i.cb
  %i.fn = getelementptr i8, ptr %i.cy, i64 %i.fm  ; 2 uses
  %i.fo = mul i64 %indvar, %i.bz
  %i.fp = getelementptr i8, ptr %i.cz, i64 %i.fo
  %i.fq = getelementptr i8, ptr %i.da, i64 %i.fl
  %bound0 = icmp ult ptr %gep161.us.us.us.us.us.us.i, %i.fp
  %bound1 = icmp ult ptr %gep158.us.us.us.us.us.us.i, %i.fn
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %gep161.us.us.us.us.us.us.i, %i.fq
  %bound133 = icmp ult ptr %gep164.us.us.us.us.us.us.i, %i.fn
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.fi, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  %wide.load = load <8 x float>, ptr %i.fr, align 4, !tbaa !43, !alias.scope !633
  %wide.load36 = load <8 x float>, ptr %i.fs, align 4, !tbaa !43, !alias.scope !633
  %wide.load37 = load <8 x float>, ptr %i.ft, align 4, !tbaa !43, !alias.scope !633
  %wide.load38 = load <8 x float>, ptr %i.fu, align 4, !tbaa !43, !alias.scope !633
  %i.fv = fmul <8 x float> %broadcast.splat, %wide.load
  %i.fw = fmul <8 x float> %broadcast.splat, %wide.load36
  %i.fx = fmul <8 x float> %broadcast.splat, %wide.load37
  %i.fy = fmul <8 x float> %broadcast.splat, %wide.load38
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  %wide.load39 = load <8 x float>, ptr %i.fz, align 4, !tbaa !43, !alias.scope !634
  %wide.load40 = load <8 x float>, ptr %i.ga, align 4, !tbaa !43, !alias.scope !634
  %wide.load41 = load <8 x float>, ptr %i.gb, align 4, !tbaa !43, !alias.scope !634
  %wide.load42 = load <8 x float>, ptr %i.gc, align 4, !tbaa !43, !alias.scope !634
  %i.gd = fmul <8 x float> %i.fv, %wide.load39
  %i.ge = fmul <8 x float> %i.fw, %wide.load40
  %i.gf = fmul <8 x float> %i.fx, %wide.load41
  %i.gg = fmul <8 x float> %i.fy, %wide.load42
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %index ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 96
  store <8 x float> %i.gd, ptr %i.gh, align 4, !tbaa !43, !alias.scope !635, !noalias !636
  store <8 x float> %i.ge, ptr %i.gi, align 4, !tbaa !43, !alias.scope !635, !noalias !636
  store <8 x float> %i.gf, ptr %i.gj, align 4, !tbaa !43, !alias.scope !635, !noalias !636
  store <8 x float> %i.gg, ptr %i.gk, align 4, !tbaa !43, !alias.scope !635, !noalias !636
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gl = icmp eq i64 %index.next, %n.vec
  br i1 %i.gl, label %middle.block, label %vector.body, !llvm.loop !626

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge152.us.us.us.us.us.us.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %broadcast.splatinsert44 = insertelement <4 x float> poison, float %i.fi, i64 0
  %broadcast.splat45 = shufflevector <4 x float> %broadcast.splatinsert44, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next49, %vec.epilog.vector.body ] ; 4 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %index46
  %wide.load47 = load <4 x float>, ptr %i.gm, align 4, !tbaa !43, !alias.scope !633
  %i.gn = fmul <4 x float> %broadcast.splat45, %wide.load47
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %index46
  %wide.load48 = load <4 x float>, ptr %i.go, align 4, !tbaa !43, !alias.scope !634
  %i.gp = fmul <4 x float> %i.gn, %wide.load48
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %index46
  store <4 x float> %i.gp, ptr %i.gq, align 4, !tbaa !43, !alias.scope !635, !noalias !636
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.gr = icmp eq i64 %index.next49, %n.vec43
  br i1 %i.gr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !627

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n50, label %._crit_edge152.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0149.us.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec43, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod54.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0149.us.us.us.us.us.us.i.prol = phi i64 [ %i.gz, %vec.epilog.scalar.ph.prol ], [ %.0149.us.us.us.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i.prol
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !43
  %i.gu = fmul float %i.fi, %i.gt
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i.prol
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !43
  %i.gx = fmul float %i.gu, %i.gw
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i.prol
  store float %i.gx, ptr %i.gy, align 4, !tbaa !43
  %i.gz = add nuw nsw i64 %.0149.us.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter53
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !628

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0149.us.us.us.us.us.us.i.unr = phi i64 [ %.0149.us.us.us.us.us.us.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.gz, %vec.epilog.scalar.ph.prol ]
  %i.ha = sub nsw i64 %.0149.us.us.us.us.us.us.i.ph, %i.y
  %i.hb = icmp ugt i64 %i.ha, -4
  br i1 %i.hb, label %._crit_edge152.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0149.us.us.us.us.us.us.i = phi i64 [ %i.ih, %vec.epilog.scalar.ph ], [ %.0149.us.us.us.us.us.us.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !43
  %i.he = fmul float %i.fi, %i.hd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !43
  %i.hh = fmul float %i.he, %i.hg
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %.0149.us.us.us.us.us.us.i
  store float %i.hh, ptr %i.hi, align 4, !tbaa !43
  %i.hj = add nuw nsw i64 %.0149.us.us.us.us.us.us.i, 1 ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !43
  %i.hm = fmul float %i.fi, %i.hl
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %i.hj
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !43
  %i.hp = fmul float %i.hm, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %i.hj
  store float %i.hp, ptr %i.hq, align 4, !tbaa !43
  %i.hr = add nuw nsw i64 %.0149.us.us.us.us.us.us.i, 2 ; 3 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !43
  %i.hu = fmul float %i.fi, %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %i.hr
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !43
  %i.hx = fmul float %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %i.hr
  store float %i.hx, ptr %i.hy, align 4, !tbaa !43
  %i.hz = add nuw nsw i64 %.0149.us.us.us.us.us.us.i, 3 ; 3 uses
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %gep158.us.us.us.us.us.us.i, i64 %i.hz
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !43
  %i.ic = fmul float %i.fi, %i.ib
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %gep164.us.us.us.us.us.us.i, i64 %i.hz
  %i.ie = load float, ptr %i.id, align 4, !tbaa !43
  %i.if = fmul float %i.ic, %i.ie
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %gep161.us.us.us.us.us.us.i, i64 %i.hz
  store float %i.if, ptr %i.ig, align 4, !tbaa !43
  %i.ih = add nuw nsw i64 %.0149.us.us.us.us.us.us.i, 4 ; 2 uses
  %exitcond201.not.i.3 = icmp eq i64 %i.ih, %i.y
  br i1 %exitcond201.not.i.3, label %._crit_edge152.us.us.us.us.us.us.i, label %vec.epilog.scalar.ph, !llvm.loop !629

._crit_edge152.us.us.us.us.us.us.i:               ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ii = add nsw i64 %.0123153.us.us.us.us.us.us.i, %i.bq ; 2 uses
  %i.ij = icmp slt i64 %i.ii, %i.aa
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ij, label %.lr.ph.us.us.us.us.us.us.i, label %._crit_edge156.split.us.us.split.us.us.us.us.i, !llvm.loop !630

._crit_edge156.split.us.us.split.us.us.us.us.i:   ; preds = %._crit_edge152.us.us.us.us.us.us.i
  %i.ik = add nuw nsw i64 %.0124173.us.us.us.us.i, 1 ; 2 uses
  %exitcond202.not.i = icmp eq i64 %i.ik, %i.ac
  br i1 %exitcond202.not.i, label %._crit_edge.split179.us.split.us.us.us.i, label %.lr.ph155.us.us.us.us.i, !llvm.loop !631

._crit_edge.split179.us.split.us.us.us.i:         ; preds = %._crit_edge156.split.us.us.split.us.us.us.us.i
  %i.il = add nuw nsw i64 %.0125183.us.us.i, 1    ; 2 uses
  %exitcond203.not.i = icmp eq i64 %i.il, %i.ae
  br i1 %exitcond203.not.i, label %_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit, label %.preheader.us.us.i, !llvm.loop !632

bb.n:                                             ; preds = %.thread145.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 3949, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67) #17
  unreachable

_ZL33ggml_compute_forward_rms_norm_f32IL21ggml_rms_norm_fuse_op1EEvPK19ggml_compute_paramsP11ggml_tensorS5_.exit: ; preds = %._crit_edge.split179.us.split.us.us.us.i, %.preheader.lr.ph.split.split.i, %.preheader146.i, %.preheader.lr.ph.i
  ret void

bb.o:                                             ; preds = %.thread, %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4026, ptr noundef nonnull @.str.2) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_rms_norm_back(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 12 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 6 uses
  %i.f = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef nonnull %1)
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef %i.e)
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 4038, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.70) #17
end_hunk_5
begin_hunk_6_@ggml_compute_forward_get_rows_back:bb.a
  %i.fa = trunc nuw nsw i64 %indvars.iv.next.i.us.i.lcssa to i32
  %i.fb = icmp slt i32 %i.fa, %i.cl
  br i1 %i.fb, label %iter.check69, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i

iter.check69:                                     ; preds = %.preheader.loopexit.i.us.i
  br i1 %min.iters.check47, label %.lr.ph22.i.us.i.preheader, label %vector.memcheck48

vector.memcheck48:                                ; preds = %iter.check69
  %i.fc = shl nuw nsw i64 %indvar.lcssa, 5        ; 4 uses
  %i.fd = getelementptr i8, ptr %i.ds, i64 %i.dv
  %i.fe = getelementptr i8, ptr %i.fd, i64 32
  %i.ff = getelementptr i8, ptr %i.fe, i64 %i.fc
  %i.fg = getelementptr i8, ptr %i.ds, i64 %i.dg
  %i.fh = getelementptr i8, ptr %i.fg, i64 %i.dv
  %i.fi = getelementptr i8, ptr %i.fh, i64 %i.fc
  %i.fj = getelementptr i8, ptr %i.dx, i64 %i.dz
  %i.fk = getelementptr i8, ptr %i.fj, i64 32
  %i.fl = getelementptr i8, ptr %i.fk, i64 %i.fc
  %i.fm = getelementptr i8, ptr %i.dx, i64 %i.dg
  %i.fn = getelementptr i8, ptr %i.fm, i64 %i.dz
  %i.fo = getelementptr i8, ptr %i.fn, i64 %i.fc
  %bound049 = icmp ult ptr %i.ff, %i.fo
  %bound150 = icmp ult ptr %i.fl, %i.fi
  %found.conflict51 = and i1 %bound049, %bound150
  br i1 %found.conflict51, label %.lr.ph22.i.us.i.preheader, label %vector.main.loop.iter.check52

vector.main.loop.iter.check52:                    ; preds = %vector.memcheck48
  br i1 %min.iters.check53, label %vec.epilog.ph73, label %vector.ph54

vector.ph54:                                      ; preds = %vector.main.loop.iter.check52
  %i.fp = add i64 %indvars.iv.next.i.us.i.lcssa, %n.vec55
  br label %vector.body56

vector.body56:                                    ; preds = %vector.ph54, %vector.body56
  %index57 = phi i64 [ 0, %vector.ph54 ], [ %index.next66, %vector.body56 ] ; 2 uses
  %i.fq = add nuw i64 %indvars.iv.next.i.us.i.lcssa, %index57 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.fq ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 64 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 96 ; 2 uses
  %wide.load58 = load <8 x float>, ptr %i.fr, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %wide.load59 = load <8 x float>, ptr %i.fs, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %wide.load60 = load <8 x float>, ptr %i.ft, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %wide.load61 = load <8 x float>, ptr %i.fu, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fq ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  %wide.load62 = load <8 x float>, ptr %i.fv, align 4, !tbaa !43, !alias.scope !820
  %wide.load63 = load <8 x float>, ptr %i.fw, align 4, !tbaa !43, !alias.scope !820
  %wide.load64 = load <8 x float>, ptr %i.fx, align 4, !tbaa !43, !alias.scope !820
  %wide.load65 = load <8 x float>, ptr %i.fy, align 4, !tbaa !43, !alias.scope !820
  %i.fz = fadd <8 x float> %wide.load58, %wide.load62
  %i.ga = fadd <8 x float> %wide.load59, %wide.load63
  %i.gb = fadd <8 x float> %wide.load60, %wide.load64
  %i.gc = fadd <8 x float> %wide.load61, %wide.load65
  store <8 x float> %i.fz, ptr %i.fr, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  store <8 x float> %i.ga, ptr %i.fs, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  store <8 x float> %i.gb, ptr %i.ft, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  store <8 x float> %i.gc, ptr %i.fu, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %index.next66 = add nuw i64 %index57, 32        ; 2 uses
  %i.gd = icmp eq i64 %index.next66, %n.vec55
  br i1 %i.gd, label %middle.block67, label %vector.body56, !llvm.loop !807

middle.block67:                                   ; preds = %vector.body56
  br i1 %cmp.n68, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, label %vec.epilog.iter.check70

vec.epilog.iter.check70:                          ; preds = %middle.block67
  br i1 %min.epilog.iters.check72, label %.lr.ph22.i.us.i.preheader, label %vec.epilog.ph73, !prof !50

vec.epilog.ph73:                                  ; preds = %vector.main.loop.iter.check52, %vec.epilog.iter.check70
  %vec.epilog.resume.val74 = phi i64 [ %n.vec55, %vec.epilog.iter.check70 ], [ 0, %vector.main.loop.iter.check52 ]
  %i.ge = add i64 %indvars.iv.next.i.us.i.lcssa, %n.vec75
  br label %vec.epilog.vector.body76

vec.epilog.vector.body76:                         ; preds = %vec.epilog.vector.body76, %vec.epilog.ph73
  %index77 = phi i64 [ %vec.epilog.resume.val74, %vec.epilog.ph73 ], [ %index.next80, %vec.epilog.vector.body76 ] ; 2 uses
  %i.gf = add nuw i64 %indvars.iv.next.i.us.i.lcssa, %index77 ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.gf ; 2 uses
  %wide.load78 = load <8 x float>, ptr %i.gg, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.gf
  %wide.load79 = load <8 x float>, ptr %i.gh, align 4, !tbaa !43, !alias.scope !820
  %i.gi = fadd <8 x float> %wide.load78, %wide.load79
  store <8 x float> %i.gi, ptr %i.gg, align 4, !tbaa !43, !alias.scope !819, !noalias !820
  %index.next80 = add nuw i64 %index77, 8         ; 2 uses
  %i.gj = icmp eq i64 %index.next80, %n.vec75
  br i1 %i.gj, label %vec.epilog.middle.block81, label %vec.epilog.vector.body76, !llvm.loop !808

vec.epilog.middle.block81:                        ; preds = %vec.epilog.vector.body76
  br i1 %cmp.n82, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, label %.lr.ph22.i.us.i.preheader

.lr.ph22.i.us.i.preheader:                        ; preds = %iter.check69, %vector.memcheck48, %vec.epilog.iter.check70, %vec.epilog.middle.block81
  %indvars.iv24.i.us.i.ph = phi i64 [ %indvars.iv.next.i.us.i.lcssa, %iter.check69 ], [ %indvars.iv.next.i.us.i.lcssa, %vector.memcheck48 ], [ %i.fp, %vec.epilog.iter.check70 ], [ %i.ge, %vec.epilog.middle.block81 ] ; 4 uses
  %i.gk = sub i64 %i.ck, %indvars.iv24.i.us.i.ph
  %xtraiter91 = and i64 %i.gk, 7                  ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %.lr.ph22.i.us.i.prol.loopexit, label %.lr.ph22.i.us.i.prol

.lr.ph22.i.us.i.prol:                             ; preds = %.lr.ph22.i.us.i.preheader, %.lr.ph22.i.us.i.prol
  %indvars.iv24.i.us.i.prol = phi i64 [ %indvars.iv.next25.i.us.i.prol, %.lr.ph22.i.us.i.prol ], [ %indvars.iv24.i.us.i.ph, %.lr.ph22.i.us.i.preheader ] ; 3 uses
  %prol.iter93 = phi i64 [ %prol.iter93.next, %.lr.ph22.i.us.i.prol ], [ 0, %.lr.ph22.i.us.i.preheader ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv24.i.us.i.prol ; 2 uses
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !43
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv24.i.us.i.prol
  %i.go = load float, ptr %i.gn, align 4, !tbaa !43
  %i.gp = fadd float %i.gm, %i.go
  store float %i.gp, ptr %i.gl, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.prol = add nuw nsw i64 %indvars.iv24.i.us.i.prol, 1 ; 2 uses
  %prol.iter93.next = add i64 %prol.iter93, 1     ; 2 uses
  %prol.iter93.cmp.not = icmp eq i64 %prol.iter93.next, %xtraiter91
  br i1 %prol.iter93.cmp.not, label %.lr.ph22.i.us.i.prol.loopexit, label %.lr.ph22.i.us.i.prol, !llvm.loop !809

.lr.ph22.i.us.i.prol.loopexit:                    ; preds = %.lr.ph22.i.us.i.prol, %.lr.ph22.i.us.i.preheader
  %indvars.iv24.i.us.i.unr = phi i64 [ %indvars.iv24.i.us.i.ph, %.lr.ph22.i.us.i.preheader ], [ %indvars.iv.next25.i.us.i.prol, %.lr.ph22.i.us.i.prol ]
  %i.gq = sub i64 %indvars.iv24.i.us.i.ph, %wide.trip.count.i.i
  %i.gr = icmp ugt i64 %i.gq, -8
  br i1 %i.gr, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, label %.lr.ph22.i.us.i

.lr.ph22.i.us.i:                                  ; preds = %.lr.ph22.i.us.i.prol.loopexit, %.lr.ph22.i.us.i
  %indvars.iv24.i.us.i = phi i64 [ %indvars.iv.next25.i.us.i.7, %.lr.ph22.i.us.i ], [ %indvars.iv24.i.us.i.unr, %.lr.ph22.i.us.i.prol.loopexit ] ; 10 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv24.i.us.i ; 2 uses
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !43
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv24.i.us.i
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !43
  %i.gw = fadd float %i.gt, %i.gv
  store float %i.gw, ptr %i.gs, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i = add nuw nsw i64 %indvars.iv24.i.us.i, 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next25.i.us.i ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !43
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next25.i.us.i
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !43
  %i.hb = fadd float %i.gy, %i.ha
  store float %i.hb, ptr %i.gx, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.1 = add nuw nsw i64 %indvars.iv24.i.us.i, 2 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next25.i.us.i.1 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !43
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next25.i.us.i.1
  %i.hf = load float, ptr %i.he, align 4, !tbaa !43
  %i.hg = fadd float %i.hd, %i.hf
  store float %i.hg, ptr %i.hc, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.2 = add nuw nsw i64 %indvars.iv24.i.us.i, 3 ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next25.i.us.i.2 ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !43
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next25.i.us.i.2
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !43
  %i.hl = fadd float %i.hi, %i.hk
  store float %i.hl, ptr %i.hh, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.3 = add nuw nsw i64 %indvars.iv24.i.us.i, 4 ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next25.i.us.i.3 ; 2 uses
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !43
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next25.i.us.i.3
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !43
  %i.hq = fadd float %i.hn, %i.hp
  store float %i.hq, ptr %i.hm, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.4 = add nuw nsw i64 %indvars.iv24.i.us.i, 5 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next25.i.us.i.4 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !43
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next25.i.us.i.4
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !43
  %i.hv = fadd float %i.hs, %i.hu
  store float %i.hv, ptr %i.hr, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.5 = add nuw nsw i64 %indvars.iv24.i.us.i, 6 ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next25.i.us.i.5 ; 2 uses
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !43
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next25.i.us.i.5
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !43
  %i.ia = fadd float %i.hx, %i.hz
  store float %i.ia, ptr %i.hw, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.6 = add nuw nsw i64 %indvars.iv24.i.us.i, 7 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next25.i.us.i.6 ; 2 uses
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !43
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next25.i.us.i.6
  %i.ie = load float, ptr %i.id, align 4, !tbaa !43
  %i.if = fadd float %i.ic, %i.ie
  store float %i.if, ptr %i.ib, align 4, !tbaa !43
  %indvars.iv.next25.i.us.i.7 = add nuw nsw i64 %indvars.iv24.i.us.i, 8 ; 2 uses
  %exitcond.not.i.us.i.7 = icmp eq i64 %indvars.iv.next25.i.us.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i.7, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, label %.lr.ph22.i.us.i, !llvm.loop !810

_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i:         ; preds = %.lr.ph22.i.us.i.prol.loopexit, %.lr.ph22.i.us.i, %middle.block67, %vec.epilog.middle.block81, %.preheader.loopexit.i.us.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1 ; 2 uses
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next5.i, %wide.trip.count7.i
  br i1 %exitcond8.not.i, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph.preheader.i.us.i, !llvm.loop !811

.lr.ph.split.i:                                   ; preds = %.lr.ph.i10
  %i.ig = icmp sgt i32 %i.cl, 0
  br i1 %i.ig, label %.preheader.i.preheader.i, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit

.preheader.i.preheader.i:                         ; preds = %.lr.ph.split.i
  %wide.trip.count.i11 = and i64 %i.cm, 2147483647 ; 2 uses
  %.pre.i = load ptr, ptr %i.cw, align 8, !tbaa !37
  %.pre9.i = load ptr, ptr %i.cg, align 8, !tbaa !37 ; 2 uses
  %.pre10.i = load i64, ptr %i.cx, align 8, !tbaa !31
  %.pre11.i = load ptr, ptr %i.cy, align 8, !tbaa !37 ; 3 uses
  %.pre12.i = load i64, ptr %i.cz, align 8, !tbaa !31 ; 3 uses
  %i.ih = add nsw i64 %wide.trip.count.i11, -1
  %i.ii = mul i64 %.pre12.i, %i.ih
  %i.ij = shl nuw nsw i64 %wide.trip.count.i.i, 2 ; 2 uses
  %i.ik = getelementptr i8, ptr %.pre11.i, i64 %i.ii
  %scevgep = getelementptr i8, ptr %i.ik, i64 %i.ij
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i.i, 4
  %invariant.gep = getelementptr i8, ptr %.pre9.i, i64 %i.ij
  %stride.check = icmp slt i64 %.pre12.i, 0
  %min.iters.check25 = icmp samesign ult i64 %wide.trip.count.i.i, 32
  %i.il = and i64 %i.ck, 28
  %n.vec = and i64 %i.ck, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count.i.i, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.il, 0
  %n.vec33 = and i64 %i.ck, 2147483644            ; 3 uses
  %cmp.n38 = icmp eq i64 %wide.trip.count.i.i, %n.vec33
  br label %iter.check

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5382, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.23) #17
  unreachable

iter.check:                                       ; preds = %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, %.preheader.i.preheader.i
  %indvars.iv.i12 = phi i64 [ 0, %.preheader.i.preheader.i ], [ %indvars.iv.next.i13, %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i ] ; 3 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.i12
  %i.in = load i32, ptr %i.im, align 4, !tbaa !51
  %i.io = sext i32 %i.in to i64
  %i.ip = mul i64 %.pre10.i, %i.io                ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.pre9.i, i64 %i.ip ; 12 uses
  %i.ir = mul i64 %indvars.iv.i12, %.pre12.i
  %i.is = getelementptr inbounds nuw i8, ptr %.pre11.i, i64 %i.ir ; 11 uses
  br i1 %min.iters.check, label %.lr.ph22.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ip
  %bound0 = icmp ult ptr %i.iq, %scevgep
  %bound1 = icmp ult ptr %.pre11.i, %gep
  %found.conflict = and i1 %bound0, %bound1
  %i.it = or i1 %found.conflict, %stride.check
  br i1 %i.it, label %.lr.ph22.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index ; 5 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 64 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.iu, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  %wide.load26 = load <8 x float>, ptr %i.iv, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  %wide.load27 = load <8 x float>, ptr %i.iw, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  %wide.load28 = load <8 x float>, ptr %i.ix, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  %wide.load29 = load <8 x float>, ptr %i.iy, align 4, !tbaa !43, !alias.scope !822
  %wide.load30 = load <8 x float>, ptr %i.iz, align 4, !tbaa !43, !alias.scope !822
  %wide.load31 = load <8 x float>, ptr %i.ja, align 4, !tbaa !43, !alias.scope !822
  %wide.load32 = load <8 x float>, ptr %i.jb, align 4, !tbaa !43, !alias.scope !822
  %i.jc = fadd <8 x float> %wide.load, %wide.load29
  %i.jd = fadd <8 x float> %wide.load26, %wide.load30
  %i.je = fadd <8 x float> %wide.load27, %wide.load31
  %i.jf = fadd <8 x float> %wide.load28, %wide.load32
  store <8 x float> %i.jc, ptr %i.iu, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  store <8 x float> %i.jd, ptr %i.iv, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  store <8 x float> %i.je, ptr %i.iw, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  store <8 x float> %i.jf, ptr %i.ix, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jg = icmp eq i64 %index.next, %n.vec
  br i1 %i.jg, label %middle.block, label %vector.body, !llvm.loop !815

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph22.i.i.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next37, %vec.epilog.vector.body ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %index34 ; 2 uses
  %wide.load35 = load <4 x float>, ptr %i.jh, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index34
  %wide.load36 = load <4 x float>, ptr %i.ji, align 4, !tbaa !43, !alias.scope !822
  %i.jj = fadd <4 x float> %wide.load35, %wide.load36
  store <4 x float> %i.jj, ptr %i.jh, align 4, !tbaa !43, !alias.scope !821, !noalias !822
  %index.next37 = add nuw i64 %index34, 4         ; 2 uses
  %i.jk = icmp eq i64 %index.next37, %n.vec33
  br i1 %i.jk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !816

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n38, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, label %.lr.ph22.i.i.preheader

.lr.ph22.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv24.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 4 uses
  %i.jl = sub i64 %i.ck, %indvars.iv24.i.i.ph
  %xtraiter = and i64 %i.jl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph22.i.i.prol.loopexit, label %.lr.ph22.i.i.prol

.lr.ph22.i.i.prol:                                ; preds = %.lr.ph22.i.i.preheader, %.lr.ph22.i.i.prol
  %indvars.iv24.i.i.prol = phi i64 [ %indvars.iv.next25.i.i.prol, %.lr.ph22.i.i.prol ], [ %indvars.iv24.i.i.ph, %.lr.ph22.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph22.i.i.prol ], [ 0, %.lr.ph22.i.i.preheader ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv24.i.i.prol ; 2 uses
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !43
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv24.i.i.prol
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !43
  %i.jq = fadd float %i.jn, %i.jp
  store float %i.jq, ptr %i.jm, align 4, !tbaa !43
  %indvars.iv.next25.i.i.prol = add nuw nsw i64 %indvars.iv24.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph22.i.i.prol.loopexit, label %.lr.ph22.i.i.prol, !llvm.loop !817

.lr.ph22.i.i.prol.loopexit:                       ; preds = %.lr.ph22.i.i.prol, %.lr.ph22.i.i.preheader
  %indvars.iv24.i.i.unr = phi i64 [ %indvars.iv24.i.i.ph, %.lr.ph22.i.i.preheader ], [ %indvars.iv.next25.i.i.prol, %.lr.ph22.i.i.prol ]
  %i.jr = sub nsw i64 %indvars.iv24.i.i.ph, %wide.trip.count.i.i
  %i.js = icmp ugt i64 %i.jr, -8
  br i1 %i.js, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, label %.lr.ph22.i.i

.lr.ph22.i.i:                                     ; preds = %.lr.ph22.i.i.prol.loopexit, %.lr.ph22.i.i
  %indvars.iv24.i.i = phi i64 [ %indvars.iv.next25.i.i.7, %.lr.ph22.i.i ], [ %indvars.iv24.i.i.unr, %.lr.ph22.i.i.prol.loopexit ] ; 10 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv24.i.i ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !43
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv24.i.i
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !43
  %i.jx = fadd float %i.ju, %i.jw
  store float %i.jx, ptr %i.jt, align 4, !tbaa !43
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next25.i.i ; 2 uses
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !43
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next25.i.i
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !43
  %i.kc = fadd float %i.jz, %i.kb
  store float %i.kc, ptr %i.jy, align 4, !tbaa !43
  %indvars.iv.next25.i.i.1 = add nuw nsw i64 %indvars.iv24.i.i, 2 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next25.i.i.1 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !43
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next25.i.i.1
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !43
  %i.kh = fadd float %i.ke, %i.kg
  store float %i.kh, ptr %i.kd, align 4, !tbaa !43
  %indvars.iv.next25.i.i.2 = add nuw nsw i64 %indvars.iv24.i.i, 3 ; 2 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next25.i.i.2 ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !43
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next25.i.i.2
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !43
  %i.km = fadd float %i.kj, %i.kl
  store float %i.km, ptr %i.ki, align 4, !tbaa !43
  %indvars.iv.next25.i.i.3 = add nuw nsw i64 %indvars.iv24.i.i, 4 ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next25.i.i.3 ; 2 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !43
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next25.i.i.3
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !43
  %i.kr = fadd float %i.ko, %i.kq
  store float %i.kr, ptr %i.kn, align 4, !tbaa !43
  %indvars.iv.next25.i.i.4 = add nuw nsw i64 %indvars.iv24.i.i, 5 ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next25.i.i.4 ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !43
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next25.i.i.4
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !43
  %i.kw = fadd float %i.kt, %i.kv
  store float %i.kw, ptr %i.ks, align 4, !tbaa !43
  %indvars.iv.next25.i.i.5 = add nuw nsw i64 %indvars.iv24.i.i, 6 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next25.i.i.5 ; 2 uses
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !43
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next25.i.i.5
  %i.la = load float, ptr %i.kz, align 4, !tbaa !43
  %i.lb = fadd float %i.ky, %i.la
  store float %i.lb, ptr %i.kx, align 4, !tbaa !43
  %indvars.iv.next25.i.i.6 = add nuw nsw i64 %indvars.iv24.i.i, 7 ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next25.i.i.6 ; 2 uses
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !43
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next25.i.i.6
  %i.lf = load float, ptr %i.le, align 4, !tbaa !43
  %i.lg = fadd float %i.ld, %i.lf
  store float %i.lg, ptr %i.lc, align 4, !tbaa !43
  %indvars.iv.next25.i.i.7 = add nuw nsw i64 %indvars.iv24.i.i, 8 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %indvars.iv.next25.i.i.7, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.7, label %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, label %.lr.ph22.i.i, !llvm.loop !818

_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i:   ; preds = %.lr.ph22.i.i.prol.loopexit, %.lr.ph22.i.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i12, 1 ; 2 uses
  %exitcond.not.i14 = icmp eq i64 %indvars.iv.next.i13, %wide.trip.count.i11
  br i1 %exitcond.not.i14, label %_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit, label %iter.check, !llvm.loop !811

bb.q:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 5411, ptr noundef nonnull @.str.2) #17
  unreachable

_ZL42ggml_compute_forward_get_rows_back_f32_f16PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.loopexit.i, %_ZL16ggml_vec_add_f32iPfPKfS1_.exit.us.i, %._crit_edge.i, %.lr.ph.split.i, %.preheader.i9, %bb.j, %.lr.ph3.i, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_diag(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %.val = load i32, ptr %0, align 8, !tbaa !35
  %.not.i = icmp eq i32 %.val, 0
  br i1 %.not.i, label %.thread5.i, label %_ZL29ggml_compute_forward_diag_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.thread5.i:                                       ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !31   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31
  %i.h = icmp eq i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !31   ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !31   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31
  %i.o = icmp eq i64 %i.n, 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31   ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31
end_hunk_6
begin_hunk_7_@ggml_compute_forward_col2im_1d:bb.a
  %i.km = sub nsw i64 %i.it, %i.kl                ; 3 uses
  %i.kn = icmp sgt i64 %i.km, -1
  %i.ko = icmp slt i64 %i.km, %i.hl
  %or.cond.i34.1 = select i1 %i.kn, i1 %i.ko, i1 false
  br i1 %or.cond.i34.1, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i33.1
  %i.kp = mul nsw i64 %i.kk, %i.hj
  %i.kq = getelementptr [2 x i8], ptr %i.iq, i64 %i.km
  %i.kr = getelementptr [2 x i8], ptr %i.kq, i64 %i.kp
  %.sroa.01.0.copyload.i.1 = load i16, ptr %i.kr, align 2, !tbaa !41
  %i.ks = zext i16 %.sroa.01.0.copyload.i.1 to i32
  %i.kt = shl nuw i32 %i.ks, 16
  %i.ku = bitcast i32 %i.kt to float
  %i.kv = fadd float %.1.i35, %i.ku
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i33.1
  %.1.i35.1 = phi float [ %i.kv, %bb.ai ], [ %.1.i35, %.lr.ph.i33.1 ] ; 2 uses
  %i.kw = add nuw i64 %.078.i, 2
  %exitcond.not.i36.1 = icmp eq i64 %i.kk, %spec.select.i32
  br i1 %exitcond.not.i36.1, label %._crit_edge.i37, label %.lr.ph.i33, !llvm.loop !1088

bb.ak:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7077, ptr noundef nonnull @.str.114, i32 noundef %i.c) #17
  unreachable

_ZL35ggml_compute_forward_col2im_1d_implIfEvPK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge81.i, %._crit_edge80.i26, %._crit_edge80.i, %.preheader.lr.ph.i28, %bb.ac, %.preheader.lr.ph.i8, %bb.s, %.preheader.lr.ph.i, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_conv_2d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ggml_tensor, align 8        ; 14 uses
  %3 = alloca %struct.ggml_tensor, align 8        ; 11 uses
  %4 = alloca %struct.ggml_tensor, align 8        ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 8 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !30   ; 7 uses
  %i.f = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7090, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.116) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ult i32 %i.e, 2
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7091, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.117) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 8, !tbaa !30
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7092, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.118) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = tail call ptr @ggml_get_type_traits(i32 noundef %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !31   ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31   ; 19 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = icmp eq i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7105, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.119) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.ah = load i64, ptr %i.ac, align 8, !tbaa !31 ; 38 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !31 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !31 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %i.au = mul nsw i64 %i.aj, %i.ah                ; 3 uses
  %i.av = mul nsw i64 %i.au, %i.w                 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !31
  %i.ay = mul i64 %i.an, %i.al                    ; 3 uses
  %i.az = mul i64 %i.ax, %i.ay                    ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !64
  %i.bc = mul i64 %i.bb, %i.av
  %i.bd = shl i64 %i.y, 2                         ; 6 uses
  %i.be = add i64 %i.bc, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !63
  %i.bh = udiv i64 %i.bg, %i.be                   ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 8
  %i.bj = and i64 %i.bh, 9223372036854775800
  %i.bk = select i1 %i.bi, i64 %i.bj, i64 %i.bh   ; 10 uses
  %i.bl = add i64 %i.az, -1
  %i.bm = add i64 %i.bl, %i.bk
  %i.bn = sdiv i64 %i.bm, %i.bk                   ; 2 uses
  %i.bo = icmp sgt i64 %i.bk, 0
  %i.bp = icmp sgt i64 %i.bh, 0
  %or.cond3.i = and i1 %i.bp, %i.bo
  br i1 %or.cond3.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7126, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.120) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !48 ; 5 uses
  %i.bs = icmp sgt i64 %i.bn, 0
  br i1 %i.bs, label %.lr.ph264.i, label %_ZL33ggml_compute_forward_conv_2d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit

.lr.ph264.i:                                      ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bw = icmp slt i64 %i.w, 1
  %i.bx = icmp slt i64 %i.aj, 1
  %i.by = icmp slt i64 %i.ah, 1
  %i.bz = sext i32 %i.m to i64
  %i.ca = sext i32 %i.u to i64                    ; 2 uses
  %i.cb = sext i32 %i.q to i64
  %i.cc = sext i32 %i.k to i64
  %i.cd = sext i32 %i.s to i64                    ; 4 uses
  %i.ce = sext i32 %i.o to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 4 uses
  %trunc.i = trunc nuw i32 %i.e to i1
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = mul nsw i64 %i.bk, %i.av
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.dj = icmp slt i64 %i.y, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre.i = load i32, ptr %i.bt, align 4, !tbaa !36
  %.pre287.i = load i32, ptr %0, align 8, !tbaa !35
  %brmerge315.i = or i1 %i.by, %i.bx
  %brmerge = or i1 %i.bw, %brmerge315.i
  %i.do = shl i64 %i.y, 2
  %i.dp = shl i64 %i.y, 2
  %i.dq = insertelement <4 x i64> <i64 poison, i64 poison, i64 1, i64 1>, i64 %i.av, i64 0
  %i.dr = insertelement <4 x i64> %i.dq, i64 %i.y, i64 1
  %i.ds = add i64 %i.ah, -1                       ; 2 uses
  %min.iters.check145 = icmp ugt i64 %i.ah, 3
  %min.iters.check147 = icmp ult i64 %i.ah, 32
  %i.dt = and i64 %i.ah, 28
  %n.vec149 = and i64 %i.ah, 9223372036854775776  ; 4 uses
  %cmp.n165 = icmp eq i64 %i.ah, %n.vec149
  %min.epilog.iters.check169 = icmp eq i64 %i.dt, 0
  %n.vec172 = and i64 %i.ah, 9223372036854775804  ; 3 uses
  %cmp.n185 = icmp eq i64 %i.ah, %n.vec172
  %xtraiter193 = and i64 %i.ah, 1
  %i.du = icmp eq i64 %i.ds, 0
  %unroll_iter = and i64 %i.ah, 9223372036854775806
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  %lcmp.mod195 = trunc i64 %i.ah to i1
  %min.iters.check101 = icmp ugt i64 %i.ah, 3
  %min.iters.check103 = icmp ult i64 %i.ah, 32
  %i.dv = and i64 %i.ah, 28
  %n.vec105 = and i64 %i.ah, 9223372036854775776  ; 4 uses
  %cmp.n121 = icmp eq i64 %i.ah, %n.vec105
  %min.epilog.iters.check125 = icmp eq i64 %i.dv, 0
  %n.vec128 = and i64 %i.ah, 9223372036854775804  ; 3 uses
  %cmp.n141 = icmp eq i64 %i.ah, %n.vec128
  %min.iters.check65 = icmp ugt i64 %i.ah, 3
  %min.iters.check67 = icmp ult i64 %i.ah, 16
  %i.dw = and i64 %i.ah, 12
  %n.vec69 = and i64 %i.ah, 9223372036854775792   ; 4 uses
  %cmp.n78 = icmp eq i64 %i.ah, %n.vec69
  %min.epilog.iters.check82 = icmp eq i64 %i.dw, 0
  %n.vec85 = and i64 %i.ah, 9223372036854775804   ; 3 uses
  %cmp.n97 = icmp eq i64 %i.ah, %n.vec85
  %min.iters.check = icmp ult i64 %i.y, 8
  %5 = getelementptr i8, ptr %i.at, i64 %i.y
  %6 = getelementptr i8, ptr %5, i64 3
  %stride.check = icmp slt i64 %i.bd, 0
  %min.iters.check48 = icmp ult i64 %i.y, 32
  %i.dx = and i64 %i.y, 24
  %n.vec = and i64 %i.y, 9223372036854775776      ; 4 uses
  %cmp.n = icmp eq i64 %i.y, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.dx, 0
  %n.vec55 = and i64 %i.y, 9223372036854775800    ; 3 uses
  %cmp.n62 = icmp eq i64 %i.y, %n.vec55
  %xtraiter202 = and i64 %i.y, 7                  ; 2 uses
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge261.split.i, %.lr.ph264.i
  %i.dy = phi i32 [ %.pre287.i, %.lr.ph264.i ], [ %i.or, %._crit_edge261.split.i ]
  %i.dz = phi i32 [ %.pre.i, %.lr.ph264.i ], [ %i.on, %._crit_edge261.split.i ]
  %indvars.iv282.i = phi i64 [ 0, %.lr.ph264.i ], [ %indvars.iv.next283.i, %._crit_edge261.split.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.bk, %.lr.ph264.i ], [ %indvars.iv.next.i, %._crit_edge261.split.i ] ; 2 uses
  %.0192262.i = phi i64 [ 0, %.lr.ph264.i ], [ %i.pf, %._crit_edge261.split.i ] ; 2 uses
  %smin.i = call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.az)
  %i.ea = add i64 %smin.i, %indvars.iv282.i
  %i.eb = mul nuw nsw i64 %.0192262.i, %i.bk      ; 4 uses
  %i.ec = add nuw nsw i64 %i.eb, %i.bk
  %.sroa.speculated215.i = call i64 @llvm.smin.i64(i64 %i.az, i64 %i.ec) ; 2 uses
  %i.ed = sub nsw i64 %.sroa.speculated215.i, %i.eb ; 5 uses
  %i.ee = sext i32 %i.dz to i64                   ; 2 uses
  %i.ef = add i64 %i.ed, -1                       ; 2 uses
  %i.eg = add i64 %i.ef, %i.ee
  %i.eh = sdiv i64 %i.eg, %i.ee                   ; 2 uses
  %i.ei = sext i32 %i.dy to i64
  %i.ej = mul nsw i64 %i.eh, %i.ei
  %i.ek = add nsw i64 %i.ej, %i.eb                ; 3 uses
  %i.el = add nsw i64 %i.ek, %i.eh
  %.sroa.speculated208.i = call i64 @llvm.smin.i64(i64 %.sroa.speculated215.i, i64 %i.el) ; 2 uses
  %i.em = icmp slt i64 %i.ek, %.sroa.speculated208.i
  br i1 %i.em, label %.lr.ph.i, label %._crit_edge253.split.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.en = load i64, ptr %i.bv, align 8, !tbaa !31
  %i.eo = load i64, ptr %i.ba, align 8, !tbaa !64 ; 35 uses
  %factor.op.mul.i = mul i64 %i.eo, %i.av
  br i1 %brmerge, label %._crit_edge253.split.i, label %.preheader227.lr.ph.i.preheader

.preheader227.lr.ph.i.preheader:                  ; preds = %.lr.ph.i
  %ident.check144.not = icmp eq i64 %i.eo, 1
  %or.cond187 = select i1 %min.iters.check145, i1 %ident.check144.not, i1 false
  %ident.check100.not = icmp eq i64 %i.eo, 1
  %or.cond = select i1 %min.iters.check101, i1 %ident.check100.not, i1 false
  %ident.check64.not = icmp eq i64 %i.eo, 1
  %or.cond188 = select i1 %min.iters.check65, i1 %ident.check64.not, i1 false
  br label %.preheader227.lr.ph.i

._crit_edge253.split.i:                           ; preds = %._crit_edge.i, %.lr.ph.i, %bb.l
  %i.ep = load ptr, ptr %i.ch, align 8, !tbaa !57
  call void @ggml_barrier(ptr noundef %i.ep)
  %i.eq = load i64, ptr %i.ba, align 8, !tbaa !64
  %i.er = mul i64 %i.ci, %i.eq                    ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.er ; 2 uses
  %.idx.i = mul i64 %i.ed, %i.bd
  %i.et = load i64, ptr %i.bf, align 8, !tbaa !63
  %.idx201.i = shl nuw nsw i64 %i.et, 2
  %i.eu = add nsw i64 %i.er, %.idx.i
  %.not.i = icmp sgt i64 %i.eu, %.idx201.i
  br i1 %.not.i, label %bb.s, label %bb.t

.preheader227.lr.ph.i:                            ; preds = %.preheader227.lr.ph.i.preheader, %._crit_edge.i
  %.0191251.i = phi i64 [ %i.og, %._crit_edge.i ], [ %i.ek, %.preheader227.lr.ph.i.preheader ] ; 5 uses
  %i.ev = sdiv i64 %.0191251.i, %i.ay
  %i.ew = sdiv i64 %.0191251.i, %i.al
  %i.ex = srem i64 %i.ew, %i.an
  %i.ey = srem i64 %.0191251.i, %i.al
  %i.ez = mul i64 %i.ev, %i.en
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ez ; 4 uses
  %i.fb = srem i64 %.0191251.i, %i.bk
  %.reass.i = mul i64 %factor.op.mul.i, %i.fb
  %i.fc = getelementptr inbounds nuw i8, ptr %i.br, i64 %.reass.i ; 61 uses
  %i.fd = mul nsw i64 %i.ex, %i.bz
  %i.fe = sub i64 %i.fd, %i.cb                    ; 2 uses
  %i.ff = mul nsw i64 %i.ey, %i.cc
  %i.fg = sub i64 %i.ff, %i.ce                    ; 4 uses
  br i1 %trunc.i, label %.preheader227.us.i, label %.preheader227.us.us.i

.preheader227.us.us.i:                            ; preds = %.preheader227.lr.ph.i, %._crit_edge232.split239.us.us.us.i
  %.0190240.us.us.i = phi i64 [ %i.jt, %._crit_edge232.split239.us.us.us.i ], [ 0, %.preheader227.lr.ph.i ] ; 5 uses
  %i.fh = mul nuw nsw i64 %.0190240.us.us.i, %i.au
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %._crit_edge.split.us.us.us.us.i, %.preheader227.us.us.i
  %.0189231.us.us.us.i = phi i64 [ 0, %.preheader227.us.us.i ], [ %i.js, %._crit_edge.split.us.us.us.us.i ] ; 3 uses
  %i.fi = mul nsw i64 %.0189231.us.us.us.i, %i.ca
  %i.fj = add i64 %i.fi, %i.fe                    ; 5 uses
  %i.fk = mul nuw nsw i64 %.0189231.us.us.us.i, %i.ah
  %i.fl = add nuw nsw i64 %i.fk, %i.fh            ; 25 uses
  %i.fm = icmp slt i64 %i.fj, 0
  br i1 %i.fm, label %iter.check122, label %.lr.ph.split.us.split.us233.us.us.i

iter.check122:                                    ; preds = %.preheader.us.us.us.i
  br i1 %or.cond, label %vector.main.loop.iter.check102, label %.lr.ph.split.us.split.us.us.us.us.i.preheader

vector.main.loop.iter.check102:                   ; preds = %iter.check122
  br i1 %min.iters.check103, label %vec.epilog.ph126, label %vector.ph104

vector.ph104:                                     ; preds = %vector.main.loop.iter.check102
  %broadcast.splatinsert106 = insertelement <8 x i64> poison, i64 %i.fl, i64 0
  %broadcast.splat107 = shufflevector <8 x i64> %broadcast.splatinsert106, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op227 = add nuw <8 x i64> splat (i64 8), %broadcast.splat107
  %invariant.op229 = add nuw <8 x i64> splat (i64 16), %broadcast.splat107
  %invariant.op231 = add nuw <8 x i64> splat (i64 24), %broadcast.splat107
  br label %vector.body108

vector.body108:                                   ; preds = %vector.ph104, %vector.body108
  %index109 = phi i64 [ 0, %vector.ph104 ], [ %index.next118, %vector.body108 ]
  %vec.ind110 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph104 ], [ %vec.ind.next119, %vector.body108 ] ; 5 uses
  %i.fn = add nuw nsw <8 x i64> %vec.ind110, %broadcast.splat107
  %.reass228 = add nuw <8 x i64> %vec.ind110, %invariant.op227
  %.reass230 = add nuw <8 x i64> %vec.ind110, %invariant.op229
  %.reass232 = add nuw <8 x i64> %vec.ind110, %invariant.op231
  %wide.gep114 = getelementptr inbounds nuw i8, ptr %i.fc, <8 x i64> %i.fn
  %wide.gep115 = getelementptr inbounds nuw i8, ptr %i.fc, <8 x i64> %.reass228
  %wide.gep116 = getelementptr inbounds nuw i8, ptr %i.fc, <8 x i64> %.reass230
  %wide.gep117 = getelementptr inbounds nuw i8, ptr %i.fc, <8 x i64> %.reass232
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep114, <8 x i1> splat (i1 true)), !tbaa !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep115, <8 x i1> splat (i1 true)), !tbaa !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep116, <8 x i1> splat (i1 true)), !tbaa !43
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> zeroinitializer, <8 x ptr> align 4 %wide.gep117, <8 x i1> splat (i1 true)), !tbaa !43
  %index.next118 = add nuw i64 %index109, 32      ; 2 uses
  %vec.ind.next119 = add nuw <8 x i64> %vec.ind110, splat (i64 32)
  %i.fo = icmp eq i64 %index.next118, %n.vec105
  br i1 %i.fo, label %middle.block120, label %vector.body108, !llvm.loop !1089

middle.block120:                                  ; preds = %vector.body108
  br i1 %cmp.n121, label %._crit_edge.split.us.us.us.us.i, label %vec.epilog.iter.check123

vec.epilog.iter.check123:                         ; preds = %middle.block120
  br i1 %min.epilog.iters.check125, label %.lr.ph.split.us.split.us.us.us.us.i.preheader, label %vec.epilog.ph126, !prof !52

vec.epilog.ph126:                                 ; preds = %vector.main.loop.iter.check102, %vec.epilog.iter.check123
  %vec.epilog.resume.val127 = phi i64 [ %n.vec105, %vec.epilog.iter.check123 ], [ 0, %vector.main.loop.iter.check102 ] ; 2 uses
  %broadcast.splatinsert129 = insertelement <4 x i64> poison, i64 %i.fl, i64 0
  %broadcast.splat130 = shufflevector <4 x i64> %broadcast.splatinsert129, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val127, i64 0
  %broadcast.splat132 = shufflevector <4 x i64> %broadcast.splatinsert131, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction133 = or disjoint <4 x i64> %broadcast.splat132, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph126
  %index135 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph126 ], [ %index.next138, %vec.epilog.vector.body134 ]
  %vec.ind136 = phi <4 x i64> [ %induction133, %vec.epilog.ph126 ], [ %vec.ind.next139, %vec.epilog.vector.body134 ] ; 2 uses
  %i.fp = add nuw nsw <4 x i64> %vec.ind136, %broadcast.splat130
  %wide.gep137 = getelementptr inbounds nuw i8, ptr %i.fc, <4 x i64> %i.fp
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> zeroinitializer, <4 x ptr> align 4 %wide.gep137, <4 x i1> splat (i1 true)), !tbaa !43
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %vec.ind.next139 = add nuw nsw <4 x i64> %vec.ind136, splat (i64 4)
  %i.fq = icmp eq i64 %index.next138, %n.vec128
  br i1 %i.fq, label %vec.epilog.middle.block140, label %vec.epilog.vector.body134, !llvm.loop !1090

vec.epilog.middle.block140:                       ; preds = %vec.epilog.vector.body134
  br i1 %cmp.n141, label %._crit_edge.split.us.us.us.us.i, label %.lr.ph.split.us.split.us.us.us.us.i.preheader

.lr.ph.split.us.split.us.us.us.us.i.preheader:    ; preds = %iter.check122, %vec.epilog.iter.check123, %vec.epilog.middle.block140
  %.0188228.us.us.us.us.us.i.ph = phi i64 [ 0, %iter.check122 ], [ %n.vec105, %vec.epilog.iter.check123 ], [ %n.vec128, %vec.epilog.middle.block140 ] ; 4 uses
  %i.fr = sub nsw i64 %i.ah, %.0188228.us.us.us.us.us.i.ph
  %xtraiter196 = and i64 %i.fr, 7                 ; 2 uses
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %.lr.ph.split.us.split.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.us.i.prol

.lr.ph.split.us.split.us.us.us.us.i.prol:         ; preds = %.lr.ph.split.us.split.us.us.us.us.i.preheader, %.lr.ph.split.us.split.us.us.us.us.i.prol
  %.0188228.us.us.us.us.us.i.prol = phi i64 [ %i.fv, %.lr.ph.split.us.split.us.us.us.us.i.prol ], [ %.0188228.us.us.us.us.us.i.ph, %.lr.ph.split.us.split.us.us.us.us.i.preheader ] ; 2 uses
  %prol.iter198 = phi i64 [ %prol.iter198.next, %.lr.ph.split.us.split.us.us.us.us.i.prol ], [ 0, %.lr.ph.split.us.split.us.us.us.us.i.preheader ]
  %i.fs = add nuw nsw i64 %.0188228.us.us.us.us.us.i.prol, %i.fl
  %i.ft = mul i64 %i.fs, %i.eo
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ft
  store float 0.000000e+00, ptr %i.fu, align 4, !tbaa !43
  %i.fv = add nuw nsw i64 %.0188228.us.us.us.us.us.i.prol, 1 ; 2 uses
  %prol.iter198.next = add i64 %prol.iter198, 1   ; 2 uses
  %prol.iter198.cmp.not = icmp eq i64 %prol.iter198.next, %xtraiter196
  br i1 %prol.iter198.cmp.not, label %.lr.ph.split.us.split.us.us.us.us.i.prol.loopexit, label %.lr.ph.split.us.split.us.us.us.us.i.prol, !llvm.loop !1091

.lr.ph.split.us.split.us.us.us.us.i.prol.loopexit: ; preds = %.lr.ph.split.us.split.us.us.us.us.i.prol, %.lr.ph.split.us.split.us.us.us.us.i.preheader
  %.0188228.us.us.us.us.us.i.unr = phi i64 [ %.0188228.us.us.us.us.us.i.ph, %.lr.ph.split.us.split.us.us.us.us.i.preheader ], [ %i.fv, %.lr.ph.split.us.split.us.us.us.us.i.prol ]
  %i.fw = sub nsw i64 %.0188228.us.us.us.us.us.i.ph, %i.ah
  %i.fx = icmp ugt i64 %i.fw, -8
  br i1 %i.fx, label %._crit_edge.split.us.us.us.us.i, label %.lr.ph.split.us.split.us.us.us.us.i.preheader.new

.lr.ph.split.us.split.us.us.us.us.i.preheader.new: ; preds = %.lr.ph.split.us.split.us.us.us.us.i.prol.loopexit
  %invariant.op233 = add nuw nsw i64 1, %i.fl
  %invariant.op235 = add nuw nsw i64 2, %i.fl
  %invariant.op237 = add nuw nsw i64 3, %i.fl
  %invariant.op239 = add nuw nsw i64 4, %i.fl
  %invariant.op241 = add nuw nsw i64 5, %i.fl
  %invariant.op243 = add nuw nsw i64 6, %i.fl
  %invariant.op245 = add nuw nsw i64 7, %i.fl
  br label %.lr.ph.split.us.split.us.us.us.us.i

.lr.ph.split.us.split.us233.us.us.i:              ; preds = %.preheader.us.us.us.i
  %i.fy = icmp slt i64 %i.fj, %i.ag
  %.fr.us.us.us.i = freeze i1 %i.fy
  br i1 %.fr.us.us.us.i, label %.lr.ph.split.us.split.split.us234.us.us.i.preheader, label %iter.check166

.lr.ph.split.us.split.split.us234.us.us.i.preheader: ; preds = %.lr.ph.split.us.split.us233.us.us.i
  br i1 %i.du, label %.lr.ph.split.us.split.split.us234.us.us.i.epil.preheader, label %.lr.ph.split.us.split.split.us234.us.us.i
end_hunk_7
begin_hunk_8_@ggml_compute_forward_conv_2d:bb.a
  %i.mi = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.mh
  store i16 0, ptr %i.mi, align 2, !tbaa !41
  %.reass254 = add nuw nsw i64 %.0188228.us.us.i, %invariant.op253
  %i.mj = mul i64 %.reass254, %i.eo
  %i.mk = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.mj
  store i16 0, ptr %i.mk, align 2, !tbaa !41
  %.reass256 = add nuw nsw i64 %.0188228.us.us.i, %invariant.op255
  %i.ml = mul i64 %.reass256, %i.eo
  %i.mm = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ml
  store i16 0, ptr %i.mm, align 2, !tbaa !41
  %.reass258 = add nuw nsw i64 %.0188228.us.us.i, %invariant.op257
  %i.mn = mul i64 %.reass258, %i.eo
  %i.mo = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.mn
  store i16 0, ptr %i.mo, align 2, !tbaa !41
  %.reass260 = add nuw nsw i64 %.0188228.us.us.i, %invariant.op259
  %i.mp = mul i64 %.reass260, %i.eo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.mp
  store i16 0, ptr %i.mq, align 2, !tbaa !41
  %i.mr = add nuw nsw i64 %.0188228.us.us.i, 8    ; 2 uses
  %exitcond278.not.i.7 = icmp eq i64 %i.mr, %i.ah
  br i1 %exitcond278.not.i.7, label %._crit_edge.split.us.i, label %.preheader.us244.split.us.i, !llvm.loop !1103

.preheader.us244.split.i:                         ; preds = %.preheader.us244.i, %bb.r
  %.0188228.us.i = phi i64 [ %i.od, %bb.r ], [ 0, %.preheader.us244.i ] ; 3 uses
  %i.ms = mul nsw i64 %.0188228.us.i, %i.cd
  %i.mt = add i64 %i.ms, %i.fg                    ; 3 uses
  %i.mu = add nuw nsw i64 %.0188228.us.i, %i.jy
  %i.mv = icmp sgt i64 %i.mt, -1
  %or.cond5.not225.us.i = select i1 %i.ka, i1 %i.mv, i1 false
  %.not202.us.i = icmp slt i64 %i.mt, %i.ae
  %or.cond203.us.i = select i1 %or.cond5.not225.us.i, i1 %.not202.us.i, i1 false
  br i1 %or.cond203.us.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader.us244.split.i
  %i.mw = load i64, ptr %i.bu, align 8, !tbaa !31
  %i.mx = mul i64 %i.mw, %i.mt
  %i.my = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.mx
  %i.mz = load i64, ptr %i.cf, align 8, !tbaa !31
  %i.na = mul i64 %i.mz, %i.jw
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.na
  %i.nc = load i64, ptr %i.cg, align 8, !tbaa !31
  %i.nd = mul i64 %i.nc, %.0190240.us.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nd
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader.us244.split.i
  %.0187.us.i = phi float [ %i.nf, %bb.q ], [ 0.000000e+00, %.preheader.us244.split.i ] ; 2 uses
  %i.ng = mul i64 %i.mu, %i.eo
  %i.nh = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ng
  %i.ni = call float @llvm.fabs.f32(float %.0187.us.i)
  %i.nj = fmul float %i.ni, f0x77800000
  %i.nk = fmul float %i.nj, f0x08800000
  %i.nl = bitcast float %.0187.us.i to i32        ; 2 uses
  %i.nm = shl i32 %i.nl, 1                        ; 2 uses
  %i.nn = call i32 @llvm.umax.i32(i32 %i.nm, i32 1895825408)
  %spec.store.select.i.us.i = lshr exact i32 %i.nn, 1
  %i.no = and i32 %spec.store.select.i.us.i, 2139095040
  %i.np = add nuw i32 %i.no, 125829120
  %i.nq = bitcast i32 %i.np to float
  %i.nr = fadd float %i.nk, %i.nq
  %i.ns = bitcast float %i.nr to i32              ; 2 uses
  %i.nt = lshr i32 %i.ns, 13
  %i.nu = and i32 %i.nt, 31744
  %i.nv = and i32 %i.ns, 4095
  %i.nw = add nuw nsw i32 %i.nu, %i.nv
  %i.nx = lshr i32 %i.nl, 16
  %i.ny = and i32 %i.nx, 32768
  %i.nz = icmp ugt i32 %i.nm, -16777216
  %i.oa = select i1 %i.nz, i32 32256, i32 %i.nw
  %i.ob = or i32 %i.oa, %i.ny
  %i.oc = trunc nuw i32 %i.ob to i16
  store i16 %i.oc, ptr %i.nh, align 2, !tbaa !41
  %i.od = add nuw nsw i64 %.0188228.us.i, 1       ; 2 uses
  %exitcond277.not.i = icmp eq i64 %i.od, %i.ah
  br i1 %exitcond277.not.i, label %._crit_edge.split.us.i, label %.preheader.us244.split.i, !llvm.loop !1096

._crit_edge.split.us.i:                           ; preds = %bb.r, %.preheader.us244.split.us.i.prol.loopexit, %.preheader.us244.split.us.i, %middle.block77, %vec.epilog.middle.block96
  %i.oe = add nuw nsw i64 %.0189231.us245.i, 1    ; 2 uses
  %exitcond279.not.i = icmp eq i64 %i.oe, %i.aj
  br i1 %exitcond279.not.i, label %._crit_edge232.split239.us246.i, label %.preheader.us244.i, !llvm.loop !1098

._crit_edge232.split239.us246.i:                  ; preds = %._crit_edge.split.us.i
  %i.of = add nuw nsw i64 %.0190240.us.i, 1       ; 2 uses
  %exitcond280.not.i = icmp eq i64 %i.of, %i.w
  br i1 %exitcond280.not.i, label %._crit_edge.i, label %.preheader227.us.i, !llvm.loop !1099

._crit_edge.i:                                    ; preds = %._crit_edge232.split239.us.us.us.i, %._crit_edge232.split239.us246.i
  %i.og = add nsw i64 %.0191251.i, 1              ; 2 uses
  %i.oh = icmp slt i64 %i.og, %.sroa.speculated208.i
  br i1 %i.oh, label %.preheader227.lr.ph.i, label %._crit_edge253.split.i, !llvm.loop !1104

bb.s:                                             ; preds = %._crit_edge253.split.i
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7181, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121) #17
  unreachable

bb.t:                                             ; preds = %._crit_edge253.split.i
  %i.oi = call ptr @ggml_get_type_traits(i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %2, i8 0, i64 336, i1 false)
  store i32 %i.e, ptr %2, align 8, !tbaa !30
  store i64 %i.av, ptr %i.cj, align 8, !tbaa !31
  store i64 %i.ed, ptr %i.ck, align 8, !tbaa !31
  store i64 1, ptr %i.cl, align 8, !tbaa !31
  store i64 1, ptr %i.cm, align 8, !tbaa !31
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !64 ; 3 uses
  store i64 %i.ok, ptr %i.cn, align 8, !tbaa !31
  %i.ol = mul i64 %i.ok, %i.av                    ; 6 uses
  store i64 %i.ol, ptr %i.co, align 8, !tbaa !31
  store i64 %i.ol, ptr %i.cp, align 8, !tbaa !31
  store i64 %i.ol, ptr %i.cq, align 8, !tbaa !31
  store ptr %i.br, ptr %i.cr, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %3, i8 0, i64 336, i1 false)
  store i32 %i.e, ptr %3, align 8, !tbaa !30
  store <4 x i64> %i.dr, ptr %i.cs, align 8, !tbaa !31
  store i64 %i.ok, ptr %i.ct, align 8, !tbaa !31
  store i64 %i.ol, ptr %i.cu, align 8, !tbaa !31
  store i64 %i.ol, ptr %i.cv, align 8, !tbaa !31
  store i64 %i.ol, ptr %i.cw, align 8, !tbaa !31
  store ptr %i.ar, ptr %i.cx, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %4, i8 0, i64 336, i1 false)
  store i64 %i.y, ptr %i.cy, align 8, !tbaa !31
  store i64 %i.ed, ptr %i.cz, align 8, !tbaa !31
  store i64 1, ptr %i.da, align 8, !tbaa !31
  store i64 1, ptr %i.db, align 8, !tbaa !31
  store i64 4, ptr %i.dc, align 8, !tbaa !31
  store i64 %i.bd, ptr %i.dd, align 8, !tbaa !31
  store i64 %i.bd, ptr %i.de, align 8, !tbaa !31
  store i64 %i.bd, ptr %i.df, align 8, !tbaa !31
  store ptr %i.es, ptr %i.dg, align 8, !tbaa !37
  store ptr %3, ptr %i.dh, align 8, !tbaa !24
  store ptr %2, ptr %i.di, align 8, !tbaa !24
  call void @ggml_compute_forward_mul_mat(ptr noundef nonnull %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.om = load ptr, ptr %i.ch, align 8, !tbaa !57
  call void @ggml_barrier(ptr noundef %i.om)
  %i.on = load i32, ptr %i.bt, align 4, !tbaa !36 ; 2 uses
  %i.oo = sext i32 %i.on to i64                   ; 2 uses
  %i.op = add i64 %i.ef, %i.oo
  %i.oq = sdiv i64 %i.op, %i.oo                   ; 3 uses
  %i.or = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.os = sext i32 %i.or to i64                   ; 2 uses
  %i.ot = mul nsw i64 %i.oq, %i.os                ; 3 uses
  %i.ou = add nsw i64 %i.ot, %i.oq                ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.ed, i64 %i.ou) ; 2 uses
  %i.ov = icmp sge i64 %i.ot, %.sroa.speculated.i
  %brmerge.i = select i1 %i.ov, i1 true, i1 %i.dj
  br i1 %brmerge.i, label %._crit_edge261.split.i, label %.lr.ph260.split.i

.lr.ph260.split.i:                                ; preds = %bb.t
  %i.ow = load i64, ptr %i.dk, align 8, !tbaa !31
  %i.ox = load i64, ptr %i.dl, align 8, !tbaa !31
  %i.oy = load i64, ptr %i.dm, align 8, !tbaa !31 ; 10 uses
  %i.oz = load i64, ptr %i.dn, align 8, !tbaa !31
  %smin284.i = call i64 @llvm.smin.i64(i64 %i.ou, i64 %i.ea)
  %i.pa = mul i64 %i.do, %.sroa.speculated.i
  %i.pb = getelementptr i8, ptr %i.br, i64 %i.er
  %scevgep.a = getelementptr i8, ptr %i.pb, i64 %i.pa
  %i.pc = mul i64 %i.dp, %i.oq
  %i.pd = mul i64 %i.pc, %i.os
  %i.pe = getelementptr i8, ptr %i.br, i64 %i.er
  %scevgep47 = getelementptr i8, ptr %i.pe, i64 %i.pd
  %ident.check = icmp ne i64 %i.oy, 1
  br label %iter.check

._crit_edge261.split.i:                           ; preds = %._crit_edge257.i, %bb.t
  %i.pf = add nuw nsw i64 %.0192262.i, 1          ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, %i.bk
  %indvars.iv.next283.i = sub i64 %indvars.iv282.i, %i.bk
  %exitcond286.not.i = icmp eq i64 %i.pf, %i.bn
  br i1 %exitcond286.not.i, label %_ZL33ggml_compute_forward_conv_2d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit, label %bb.l, !llvm.loop !1105

iter.check:                                       ; preds = %._crit_edge257.i, %.lr.ph260.split.i
  %.0186258.i = phi i64 [ %i.ot, %.lr.ph260.split.i ], [ %i.qn, %._crit_edge257.i ] ; 3 uses
  %i.pg = add nsw i64 %.0186258.i, %i.eb          ; 3 uses
  %i.ph = sdiv i64 %i.pg, %i.ay
  %i.pi = sdiv i64 %i.pg, %i.al
  %i.pj = srem i64 %i.pi, %i.an
  %i.pk = srem i64 %i.pg, %i.al
  %i.pl = mul nsw i64 %.0186258.i, %i.y
  %i.pm = getelementptr [4 x i8], ptr %i.es, i64 %i.pl ; 11 uses
  %i.pn = mul i64 %i.pk, %i.ow                    ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.pn
  %i.pp = mul i64 %i.pj, %i.ox                    ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pp
  %i.pr = mul i64 %i.ph, %i.oz                    ; 2 uses
  %invariant.gep.i = getelementptr i8, ptr %i.pq, i64 %i.pr ; 17 uses
  %i.ps = getelementptr i8, ptr %invariant.gep.i, i64 %i.y
  %i.pt = getelementptr i8, ptr %i.ps, i64 -1
  %i.pu = icmp ult ptr %i.pt, %invariant.gep.i
  %i.pv = or i1 %ident.check, %i.pu
  %or.cond264 = select i1 %min.iters.check, i1 true, i1 %i.pv
  br i1 %or.cond264, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.pw = getelementptr i8, ptr %6, i64 %i.pp
  %i.px = getelementptr i8, ptr %i.pw, i64 %i.pn
  %i.py = getelementptr i8, ptr %i.px, i64 %i.pr
  %bound0 = icmp ult ptr %scevgep47, %i.py
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %i.pz = or i1 %found.conflict, %stride.check
  br i1 %i.pz, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %i.qa = getelementptr [4 x i8], ptr %i.pm, i64 %index ; 4 uses
  %i.qb = getelementptr i8, ptr %i.qa, i64 32
  %i.qc = getelementptr i8, ptr %i.qa, i64 64
  %i.qd = getelementptr i8, ptr %i.qa, i64 96
  %wide.load = load <8 x float>, ptr %i.qa, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.load49 = load <8 x float>, ptr %i.qb, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.load50 = load <8 x float>, ptr %i.qc, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.load51 = load <8 x float>, ptr %i.qd, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.gep = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %vec.ind
  %wide.gep52 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %step.add
  %wide.gep53 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %step.add.2
  %wide.gep54 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %step.add.3
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load49, <8 x ptr> align 4 %wide.gep52, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load50, <8 x ptr> align 4 %wide.gep53, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load51, <8 x ptr> align 4 %wide.gep54, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.qe = icmp eq i64 %index.next, %n.vec
  br i1 %i.qe, label %middle.block, label %vector.body, !llvm.loop !1109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge257.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !50

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next60, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind57 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.qf = getelementptr [4 x i8], ptr %i.pm, i64 %index56
  %wide.load58 = load <8 x float>, ptr %i.qf, align 4, !tbaa !43, !alias.scope !1114, !noalias !1115
  %wide.gep59 = getelementptr i8, ptr %invariant.gep.i, <8 x i64> %vec.ind57
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load58, <8 x ptr> align 4 %wide.gep59, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1115
  %index.next60 = add nuw i64 %index56, 8         ; 2 uses
  %vec.ind.next61 = add nuw nsw <8 x i64> %vec.ind57, splat (i64 8)
  %i.qg = icmp eq i64 %index.next60, %n.vec55
  br i1 %i.qg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1110

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n62, label %._crit_edge257.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0254.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec55, %vec.epilog.middle.block ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod203.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0254.i.prol = phi i64 [ %i.qk, %vec.epilog.scalar.ph.prol ], [ %.0254.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter204 = phi i64 [ %prol.iter204.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.qh = getelementptr [4 x i8], ptr %i.pm, i64 %.0254.i.prol
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !43
  %i.qj = mul i64 %.0254.i.prol, %i.oy
  %gep.i.prol = getelementptr i8, ptr %invariant.gep.i, i64 %i.qj
  store float %i.qi, ptr %gep.i.prol, align 4, !tbaa !43
  %i.qk = add nuw nsw i64 %.0254.i.prol, 1        ; 2 uses
  %prol.iter204.next = add i64 %prol.iter204, 1   ; 2 uses
  %prol.iter204.cmp.not = icmp eq i64 %prol.iter204.next, %xtraiter202
  br i1 %prol.iter204.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1111

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0254.i.unr = phi i64 [ %.0254.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.qk, %vec.epilog.scalar.ph.prol ]
  %i.ql = sub nsw i64 %.0254.i.ph, %i.y
  %i.qm = icmp ugt i64 %i.ql, -8
  br i1 %i.qm, label %._crit_edge257.i, label %vec.epilog.scalar.ph

._crit_edge257.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.qn = add nsw i64 %.0186258.i, 1              ; 2 uses
  %exitcond285.not.i = icmp eq i64 %i.qn, %smin284.i
  br i1 %exitcond285.not.i, label %._crit_edge261.split.i, label %iter.check, !llvm.loop !1112

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0254.i = phi i64 [ %i.rt, %vec.epilog.scalar.ph ], [ %.0254.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.qo = getelementptr [4 x i8], ptr %i.pm, i64 %.0254.i
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !43
  %i.qq = mul i64 %.0254.i, %i.oy
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.qq
  store float %i.qp, ptr %gep.i, align 4, !tbaa !43
  %i.qr = add nuw nsw i64 %.0254.i, 1             ; 2 uses
  %i.qs = getelementptr [4 x i8], ptr %i.pm, i64 %i.qr
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !43
  %i.qu = mul i64 %i.qr, %i.oy
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.qu
  store float %i.qt, ptr %gep.i.1, align 4, !tbaa !43
  %i.qv = add nuw nsw i64 %.0254.i, 2             ; 2 uses
  %i.qw = getelementptr [4 x i8], ptr %i.pm, i64 %i.qv
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !43
  %i.qy = mul i64 %i.qv, %i.oy
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 %i.qy
  store float %i.qx, ptr %gep.i.2, align 4, !tbaa !43
  %i.qz = add nuw nsw i64 %.0254.i, 3             ; 2 uses
  %i.ra = getelementptr [4 x i8], ptr %i.pm, i64 %i.qz
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !43
  %i.rc = mul i64 %i.qz, %i.oy
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rc
  store float %i.rb, ptr %gep.i.3, align 4, !tbaa !43
  %i.rd = add nuw nsw i64 %.0254.i, 4             ; 2 uses
  %i.re = getelementptr [4 x i8], ptr %i.pm, i64 %i.rd
  %i.rf = load float, ptr %i.re, align 4, !tbaa !43
  %i.rg = mul i64 %i.rd, %i.oy
  %gep.i.4 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rg
  store float %i.rf, ptr %gep.i.4, align 4, !tbaa !43
  %i.rh = add nuw nsw i64 %.0254.i, 5             ; 2 uses
  %i.ri = getelementptr [4 x i8], ptr %i.pm, i64 %i.rh
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !43
  %i.rk = mul i64 %i.rh, %i.oy
  %gep.i.5 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rk
  store float %i.rj, ptr %gep.i.5, align 4, !tbaa !43
  %i.rl = add nuw nsw i64 %.0254.i, 6             ; 2 uses
  %i.rm = getelementptr [4 x i8], ptr %i.pm, i64 %i.rl
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !43
  %i.ro = mul i64 %i.rl, %i.oy
  %gep.i.6 = getelementptr i8, ptr %invariant.gep.i, i64 %i.ro
  store float %i.rn, ptr %gep.i.6, align 4, !tbaa !43
  %i.rp = add nuw nsw i64 %.0254.i, 7             ; 2 uses
  %i.rq = getelementptr [4 x i8], ptr %i.pm, i64 %i.rp
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !43
  %i.rs = mul i64 %i.rp, %i.oy
  %gep.i.7 = getelementptr i8, ptr %invariant.gep.i, i64 %i.rs
  store float %i.rr, ptr %gep.i.7, align 4, !tbaa !43
  %i.rt = add nuw nsw i64 %.0254.i, 8             ; 2 uses
  %exitcond281.not.i.7 = icmp eq i64 %i.rt, %i.y
  br i1 %exitcond281.not.i.7, label %._crit_edge257.i, label %vec.epilog.scalar.ph, !llvm.loop !1113

_ZL33ggml_compute_forward_conv_2d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit: ; preds = %._crit_edge261.split.i, %bb.k
  ret void
}

declare void @ggml_compute_forward_mul_mat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_conv_3d(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ggml_tensor, align 8        ; 14 uses
  %3 = alloca %struct.ggml_tensor, align 8        ; 14 uses
  %4 = alloca %struct.ggml_tensor, align 8        ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 8 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !30   ; 7 uses
  %i.f = tail call zeroext i1 @ggml_is_contiguous(ptr noundef nonnull %i.b)
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7227, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.116) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %or.cond.i = icmp ult i32 %i.e, 2
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7228, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.117) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.b, align 8, !tbaa !30
  %i.h = icmp eq i32 %i.g, %i.e
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7229, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.118) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = tail call ptr @ggml_get_type_traits(i32 noundef %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.m = load i32, ptr %i.l, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.w = load i32, ptr %i.v, align 4, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = load i32, ptr %i.x, align 8, !tbaa !51
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !51 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !51
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !51 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31 ; 71 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !31 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !31
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !37 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !37 ; 3 uses
  %i.bf = mul nsw i64 %i.aq, %i.ao                ; 3 uses
  %i.bg = mul nsw i64 %i.bf, %i.as                ; 3 uses
  %i.bh = sext i32 %i.ac to i64                   ; 4 uses
  %i.bi = mul nsw i64 %i.bg, %i.bh                ; 6 uses
  %i.bj = sext i32 %i.ae to i64
  %i.bk = mul i64 %i.aw, %i.au                    ; 5 uses
  %i.bl = mul i64 %i.ay, %i.bk                    ; 5 uses
  %i.bm = mul i64 %i.bl, %i.bj                    ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !64
  %i.bp = mul i64 %i.bo, %i.bi
  %i.bq = sext i32 %i.ag to i64                   ; 15 uses
  %i.br = shl nsw i64 %i.bq, 2                    ; 4 uses
  %i.bs = add i64 %i.bp, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !63
  %i.bv = udiv i64 %i.bu, %i.bs                   ; 4 uses
  %i.bw = icmp sgt i64 %i.bv, 8
  %i.bx = and i64 %i.bv, 9223372036854775800
  %i.by = select i1 %i.bw, i64 %i.bx, i64 %i.bv   ; 10 uses
  %i.bz = add i64 %i.bm, -1
  %i.ca = add i64 %i.bz, %i.by
  %i.cb = sdiv i64 %i.ca, %i.by                   ; 2 uses
  %i.cc = icmp sgt i64 %i.by, 0
  %i.cd = icmp sgt i64 %i.bv, 0
  %or.cond3.i = and i1 %i.cd, %i.cc
  br i1 %or.cond3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7269, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.120) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !48 ; 5 uses
  %i.cg = icmp sgt i64 %i.cb, 0
  br i1 %i.cg, label %.lr.ph326.i, label %_ZL33ggml_compute_forward_conv_3d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit

.lr.ph326.i:                                      ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ci = icmp slt i32 %i.ac, 1
  %i.cj = icmp slt i64 %i.as, 1
  %i.ck = icmp slt i64 %i.aq, 1
  %i.cl = icmp slt i64 %i.ao, 1
  %i.cm = sext i32 %i.o to i64
  %i.cn = sext i32 %i.aa to i64                   ; 2 uses
  %i.co = sext i32 %i.u to i64
  %i.cp = sext i32 %i.m to i64
  %i.cq = sext i32 %i.y to i64                    ; 2 uses
  %i.cr = sext i32 %i.s to i64
  %i.cs = sext i32 %i.k to i64
  %i.ct = sext i32 %i.w to i64                    ; 4 uses
  %i.cu = sext i32 %i.q to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 4 uses
  %trunc.i = trunc nuw i32 %i.e to i1
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.da = mul i64 %i.by, %i.bi
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 248
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.dy = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.ec = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.ee = icmp slt i32 %i.ag, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre.i = load i32, ptr %i.ch, align 4, !tbaa !36
  %.pre362.i = load i32, ptr %0, align 8, !tbaa !35
  %brmerge330.i = or i1 %i.ci, %i.cj
  %brmerge332.i = or i1 %i.ck, %brmerge330.i
  %brmerge334.i = select i1 %brmerge332.i, i1 true, i1 %i.cl
  %i.ej = shl nsw i64 %i.bq, 2
  %i.ek = shl nsw i64 %i.bq, 2
  %i.el = add i64 %i.ao, -1                       ; 2 uses
  %min.iters.check289 = icmp ugt i64 %i.ao, 3
  %min.iters.check291 = icmp ult i64 %i.ao, 32
  %i.em = and i64 %i.ao, 28
  %n.vec293 = and i64 %i.ao, 9223372036854775776  ; 4 uses
  %cmp.n309 = icmp eq i64 %i.ao, %n.vec293
  %min.epilog.iters.check313 = icmp eq i64 %i.em, 0
  %n.vec316 = and i64 %i.ao, 9223372036854775804  ; 3 uses
  %cmp.n329 = icmp eq i64 %i.ao, %n.vec316
  %xtraiter344 = and i64 %i.ao, 1
  %i.en = icmp eq i64 %i.el, 0
  %unroll_iter = and i64 %i.ao, 9223372036854775806
  %lcmp.mod345.not = icmp eq i64 %xtraiter344, 0
  %lcmp.mod346 = trunc i64 %i.ao to i1
  %min.iters.check245 = icmp ugt i64 %i.ao, 3
  %min.iters.check247 = icmp ult i64 %i.ao, 32
  %i.eo = and i64 %i.ao, 28
  %n.vec249 = and i64 %i.ao, 9223372036854775776  ; 4 uses
  %cmp.n265 = icmp eq i64 %i.ao, %n.vec249
  %min.epilog.iters.check269 = icmp eq i64 %i.eo, 0
  %n.vec272 = and i64 %i.ao, 9223372036854775804  ; 3 uses
  %cmp.n285 = icmp eq i64 %i.ao, %n.vec272
  %min.iters.check201 = icmp ugt i64 %i.ao, 3
  %min.iters.check203 = icmp ult i64 %i.ao, 32
  %i.ep = and i64 %i.ao, 28
  %n.vec205 = and i64 %i.ao, 9223372036854775776  ; 4 uses
  %cmp.n221 = icmp eq i64 %i.ao, %n.vec205
  %min.epilog.iters.check225 = icmp eq i64 %i.ep, 0
  %n.vec228 = and i64 %i.ao, 9223372036854775804  ; 3 uses
  %cmp.n241 = icmp eq i64 %i.ao, %n.vec228
  %min.iters.check157 = icmp ugt i64 %i.ao, 3
  %min.iters.check159 = icmp ult i64 %i.ao, 32
  %i.eq = and i64 %i.ao, 28
  %n.vec161 = and i64 %i.ao, 9223372036854775776  ; 4 uses
  %cmp.n177 = icmp eq i64 %i.ao, %n.vec161
  %min.epilog.iters.check181 = icmp eq i64 %i.eq, 0
  %n.vec184 = and i64 %i.ao, 9223372036854775804  ; 3 uses
  %cmp.n197 = icmp eq i64 %i.ao, %n.vec184
  %min.iters.check121 = icmp ugt i64 %i.ao, 3
  %min.iters.check123 = icmp ult i64 %i.ao, 16
  %i.er = and i64 %i.ao, 12
  %n.vec125 = and i64 %i.ao, 9223372036854775792  ; 4 uses
  %cmp.n134 = icmp eq i64 %i.ao, %n.vec125
  %min.epilog.iters.check138 = icmp eq i64 %i.er, 0
  %n.vec141 = and i64 %i.ao, 9223372036854775804  ; 3 uses
  %cmp.n153 = icmp eq i64 %i.ao, %n.vec141
  %min.iters.check85 = icmp ugt i64 %i.ao, 3
  %min.iters.check87 = icmp ult i64 %i.ao, 16
  %i.es = and i64 %i.ao, 12
  %n.vec89 = and i64 %i.ao, 9223372036854775792   ; 4 uses
  %cmp.n98 = icmp eq i64 %i.ao, %n.vec89
  %min.epilog.iters.check102 = icmp eq i64 %i.es, 0
  %n.vec105 = and i64 %i.ao, 9223372036854775804  ; 3 uses
  %cmp.n117 = icmp eq i64 %i.ao, %n.vec105
  %min.iters.check = icmp ugt i32 %i.ag, 3
  %min.iters.check64 = icmp ult i32 %i.ag, 32
  %n.vec = and i64 %i.bq, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bq
  %i.et = and i32 %i.ag, 28
  %min.epilog.iters.check = icmp eq i32 %i.et, 0
  %n.vec71 = and i64 %i.bq, 2147483644            ; 3 uses
  %cmp.n82 = icmp eq i64 %n.vec71, %i.bq
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge323.split.i, %.lr.ph326.i
  %i.eu = phi i32 [ %.pre362.i, %.lr.ph326.i ], [ %i.fx, %._crit_edge323.split.i ]
  %i.ev = phi i32 [ %.pre.i, %.lr.ph326.i ], [ %i.ft, %._crit_edge323.split.i ]
  %indvars.iv357.i = phi i64 [ 0, %.lr.ph326.i ], [ %indvars.iv.next358.i, %._crit_edge323.split.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.by, %.lr.ph326.i ], [ %indvars.iv.next.i, %._crit_edge323.split.i ] ; 2 uses
  %.0237324.i = phi i64 [ 0, %.lr.ph326.i ], [ %i.wk, %._crit_edge323.split.i ] ; 2 uses
  %smin.i = call i64 @llvm.smin.i64(i64 %indvars.iv.i, i64 %i.bm)
  %i.ew = add i64 %smin.i, %indvars.iv357.i
  %i.ex = mul nuw nsw i64 %.0237324.i, %i.by      ; 4 uses
  %i.ey = add nuw nsw i64 %i.ex, %i.by
  %.sroa.speculated259.i = call i64 @llvm.smin.i64(i64 %i.bm, i64 %i.ey) ; 2 uses
  %i.ez = sub nsw i64 %.sroa.speculated259.i, %i.ex ; 4 uses
  %i.fa = sext i32 %i.ev to i64                   ; 2 uses
  %i.fb = add i64 %i.ez, -1                       ; 2 uses
  %i.fc = add i64 %i.fb, %i.fa
  %i.fd = sdiv i64 %i.fc, %i.fa                   ; 2 uses
  %i.fe = sext i32 %i.eu to i64
  %i.ff = mul nsw i64 %i.fd, %i.fe
  %i.fg = add nsw i64 %i.ff, %i.ex                ; 3 uses
  %i.fh = add nsw i64 %i.fg, %i.fd
  %.sroa.speculated252.i = call i64 @llvm.smin.i64(i64 %.sroa.speculated259.i, i64 %i.fh) ; 2 uses
  %i.fi = icmp slt i64 %i.fg, %.sroa.speculated252.i
  br i1 %i.fi, label %.lr.ph.i, label %._crit_edge.split312.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.fj = load i64, ptr %i.bn, align 8, !tbaa !64 ; 65 uses
  %factor.op.mul.i = mul i64 %i.fj, %i.bi
  br i1 %brmerge334.i, label %._crit_edge.split312.i, label %.preheader273.lr.ph.i.preheader

.preheader273.lr.ph.i.preheader:                  ; preds = %.lr.ph.i
  %ident.check288.not = icmp eq i64 %i.fj, 1
  %or.cond331 = select i1 %min.iters.check289, i1 %ident.check288.not, i1 false
  %ident.check244.not = icmp eq i64 %i.fj, 1
  %or.cond = select i1 %min.iters.check245, i1 %ident.check244.not, i1 false
  %ident.check200.not = icmp eq i64 %i.fj, 1
  %or.cond332 = select i1 %min.iters.check201, i1 %ident.check200.not, i1 false
  %ident.check156.not = icmp eq i64 %i.fj, 1
  %or.cond333 = select i1 %min.iters.check157, i1 %ident.check156.not, i1 false
  %ident.check120.not = icmp eq i64 %i.fj, 1
  %or.cond335.a = select i1 %min.iters.check121, i1 %ident.check120.not, i1 false
  %ident.check84.not = icmp eq i64 %i.fj, 1
  %or.cond334 = select i1 %min.iters.check85, i1 %ident.check84.not, i1 false
  br label %.preheader273.lr.ph.i

._crit_edge.split312.i:                           ; preds = %._crit_edge299.i, %.lr.ph.i, %bb.j
  %i.fk = load ptr, ptr %i.cz, align 8, !tbaa !57
  call void @ggml_barrier(ptr noundef %i.fk)
  %i.fl = load i64, ptr %i.bn, align 8, !tbaa !64
  %i.fm = mul i64 %i.da, %i.fl                    ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.fm ; 2 uses
  %i.fo = call ptr @ggml_get_type_traits(i32 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %2, i8 0, i64 336, i1 false)
  store i32 %i.e, ptr %2, align 8, !tbaa !30
  store i64 %i.bi, ptr %i.db, align 8, !tbaa !31
  store i64 %i.ez, ptr %i.dc, align 8, !tbaa !31
  store i64 1, ptr %i.dd, align 8, !tbaa !31
  store i64 1, ptr %i.de, align 8, !tbaa !31
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !64 ; 3 uses
  store i64 %i.fq, ptr %i.df, align 8, !tbaa !31
  %i.fr = mul i64 %i.fq, %i.bi                    ; 6 uses
  store i64 %i.fr, ptr %i.dg, align 8, !tbaa !31
  store i64 %i.fr, ptr %i.dh, align 8, !tbaa !31
  store i64 %i.fr, ptr %i.di, align 8, !tbaa !31
  store ptr %i.cf, ptr %i.dj, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %3, i8 0, i64 336, i1 false)
  store i32 %i.e, ptr %3, align 8, !tbaa !30
  store i64 %i.bi, ptr %i.dk, align 8, !tbaa !31
  store i64 %i.bq, ptr %i.dl, align 8, !tbaa !31
  store i64 1, ptr %i.dm, align 8, !tbaa !31
  store i64 1, ptr %i.dn, align 8, !tbaa !31
  store i64 %i.fq, ptr %i.do, align 8, !tbaa !31
  store i64 %i.fr, ptr %i.dp, align 8, !tbaa !31
  store i64 %i.fr, ptr %i.dq, align 8, !tbaa !31
  store i64 %i.fr, ptr %i.dr, align 8, !tbaa !31
  store ptr %i.bc, ptr %i.ds, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %4, i8 0, i64 336, i1 false)
  store i64 %i.bq, ptr %i.dt, align 8, !tbaa !31
  store i64 %i.ez, ptr %i.du, align 8, !tbaa !31
  store i64 1, ptr %i.dv, align 8, !tbaa !31
  store i64 1, ptr %i.dw, align 8, !tbaa !31
  store i64 4, ptr %i.dx, align 8, !tbaa !31
  store i64 %i.br, ptr %i.dy, align 8, !tbaa !31
  store i64 %i.br, ptr %i.dz, align 8, !tbaa !31
  store i64 %i.br, ptr %i.ea, align 8, !tbaa !31
  store ptr %i.fn, ptr %i.eb, align 8, !tbaa !37
  store ptr %3, ptr %i.ec, align 8, !tbaa !24
  store ptr %2, ptr %i.ed, align 8, !tbaa !24
  call void @ggml_compute_forward_mul_mat(ptr noundef nonnull %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.fs = load ptr, ptr %i.cz, align 8, !tbaa !57
  call void @ggml_barrier(ptr noundef %i.fs)
  %i.ft = load i32, ptr %i.ch, align 4, !tbaa !36 ; 2 uses
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = add i64 %i.fb, %i.fu
  %i.fw = sdiv i64 %i.fv, %i.fu                   ; 3 uses
  %i.fx = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %i.fz = mul nsw i64 %i.fw, %i.fy                ; 3 uses
  %i.ga = add nsw i64 %i.fz, %i.fw                ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.ez, i64 %i.ga) ; 2 uses
  %i.gb = icmp sge i64 %i.fz, %.sroa.speculated.i
  %brmerge337.i = or i1 %i.ee, %i.gb
  br i1 %brmerge337.i, label %._crit_edge323.split.i, label %.lr.ph322.split.i

.lr.ph322.split.i:                                ; preds = %._crit_edge.split312.i
  %i.gc = load i64, ptr %i.ef, align 8, !tbaa !31
  %i.gd = load i64, ptr %i.eg, align 8, !tbaa !31
  %i.ge = load i64, ptr %i.eh, align 8, !tbaa !31
  %i.gf = load i64, ptr %i.ei, align 8, !tbaa !31 ; 10 uses
  %smin359.i = call i64 @llvm.smin.i64(i64 %i.ga, i64 %i.ew)
  %i.gg = mul i64 %i.ej, %.sroa.speculated.i
  %i.gh = getelementptr i8, ptr %i.cf, i64 %i.fm
  %scevgep = getelementptr i8, ptr %i.gh, i64 %i.gg
  %i.gi = mul i64 %i.ek, %i.fw
  %i.gj = mul i64 %i.gi, %i.fy
  %i.gk = getelementptr i8, ptr %i.cf, i64 %i.fm
  %scevgep63 = getelementptr i8, ptr %i.gk, i64 %i.gj
  %ident.check.not = icmp eq i64 %i.gf, 1
  %or.cond336 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br label %iter.check

.preheader273.lr.ph.i:                            ; preds = %.preheader273.lr.ph.i.preheader, %._crit_edge299.i
  %.0236311.i = phi i64 [ %i.os, %._crit_edge299.i ], [ %i.fg, %.preheader273.lr.ph.i.preheader ] ; 4 uses
  %i.gl = srem i64 %.0236311.i, %i.bl             ; 2 uses
  %i.gm = srem i64 %i.gl, %i.bk                   ; 2 uses
  %i.gn = sdiv i64 %.0236311.i, %i.bl
  %i.go = sdiv i64 %i.gl, %i.bk
  %i.gp = sdiv i64 %i.gm, %i.au
  %i.gq = srem i64 %i.gm, %i.au
  %i.gr = srem i64 %.0236311.i, %i.by
end_hunk_8
begin_hunk_9_@ggml_compute_forward_conv_3d:bb.a

vec.epilog.vector.body147:                        ; preds = %vec.epilog.vector.body147, %vec.epilog.ph139
  %index148 = phi i64 [ %vec.epilog.resume.val140, %vec.epilog.ph139 ], [ %index.next150, %vec.epilog.vector.body147 ]
  %vec.ind149 = phi <4 x i64> [ %induction146, %vec.epilog.ph139 ], [ %vec.ind.next151, %vec.epilog.vector.body147 ] ; 2 uses
  %i.tk = add nsw <4 x i64> %broadcast.splat143, %vec.ind149 ; 4 uses
  %i.tl = extractelement <4 x i64> %i.tk, i64 0
  %i.tm = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.tl
  %i.tn = extractelement <4 x i64> %i.tk, i64 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.tn
  %i.tp = extractelement <4 x i64> %i.tk, i64 2
  %i.tq = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.tp
  %i.tr = extractelement <4 x i64> %i.tk, i64 3
  %i.ts = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.tr
  store i16 0, ptr %i.tm, align 2, !tbaa !41
  store i16 0, ptr %i.to, align 2, !tbaa !41
  store i16 0, ptr %i.tq, align 2, !tbaa !41
  store i16 0, ptr %i.ts, align 2, !tbaa !41
  %index.next150 = add nuw i64 %index148, 4       ; 2 uses
  %vec.ind.next151 = add nuw nsw <4 x i64> %vec.ind149, splat (i64 4)
  %i.tt = icmp eq i64 %index.next150, %n.vec141
  br i1 %i.tt, label %vec.epilog.middle.block152, label %vec.epilog.vector.body147, !llvm.loop !1142

vec.epilog.middle.block152:                       ; preds = %vec.epilog.vector.body147
  br i1 %cmp.n153, label %._crit_edge.split.i, label %.preheader.i.split.us.preheader

.preheader.i.split.us.preheader:                  ; preds = %iter.check135, %vec.epilog.iter.check136, %vec.epilog.middle.block152
  %.0232274.i.us.ph = phi i64 [ 0, %iter.check135 ], [ %n.vec125, %vec.epilog.iter.check136 ], [ %n.vec141, %vec.epilog.middle.block152 ] ; 4 uses
  %i.tu = sub nsw i64 %i.ao, %.0232274.i.us.ph
  %xtraiter356 = and i64 %i.tu, 7                 ; 2 uses
  %lcmp.mod357.not = icmp eq i64 %xtraiter356, 0
  br i1 %lcmp.mod357.not, label %.preheader.i.split.us.prol.loopexit, label %.preheader.i.split.us.prol

.preheader.i.split.us.prol:                       ; preds = %.preheader.i.split.us.preheader, %.preheader.i.split.us.prol
  %.0232274.i.us.prol = phi i64 [ %i.ty, %.preheader.i.split.us.prol ], [ %.0232274.i.us.ph, %.preheader.i.split.us.preheader ] ; 2 uses
  %prol.iter358 = phi i64 [ %prol.iter358.next, %.preheader.i.split.us.prol ], [ 0, %.preheader.i.split.us.preheader ]
  %i.tv = add nsw i64 %i.rz, %.0232274.i.us.prol
  %i.tw = mul i64 %i.tv, %i.fj
  %i.tx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.tw
  store i16 0, ptr %i.tx, align 2, !tbaa !41
  %i.ty = add nuw nsw i64 %.0232274.i.us.prol, 1  ; 2 uses
  %prol.iter358.next = add i64 %prol.iter358, 1   ; 2 uses
  %prol.iter358.cmp.not = icmp eq i64 %prol.iter358.next, %xtraiter356
  br i1 %prol.iter358.cmp.not, label %.preheader.i.split.us.prol.loopexit, label %.preheader.i.split.us.prol, !llvm.loop !1143

.preheader.i.split.us.prol.loopexit:              ; preds = %.preheader.i.split.us.prol, %.preheader.i.split.us.preheader
  %.0232274.i.us.unr = phi i64 [ %.0232274.i.us.ph, %.preheader.i.split.us.preheader ], [ %i.ty, %.preheader.i.split.us.prol ]
  %i.tz = sub nsw i64 %.0232274.i.us.ph, %i.ao
  %i.ua = icmp ugt i64 %i.tz, -8
  br i1 %i.ua, label %._crit_edge.split.i, label %.preheader.i.split.us.preheader.new

.preheader.i.split.us.preheader.new:              ; preds = %.preheader.i.split.us.prol.loopexit
  %invariant.op450 = add i64 1, %i.rz
  %invariant.op452 = add i64 2, %i.rz
  %invariant.op454 = add i64 3, %i.rz
  %invariant.op456 = add i64 4, %i.rz
  %invariant.op458 = add i64 5, %i.rz
  %invariant.op460 = add i64 6, %i.rz
  %invariant.op462 = add i64 7, %i.rz
  br label %.preheader.i.split.us

.preheader.i.split.us:                            ; preds = %.preheader.i.split.us, %.preheader.i.split.us.preheader.new
  %.0232274.i.us = phi i64 [ %.0232274.i.us.unr, %.preheader.i.split.us.preheader.new ], [ %i.us, %.preheader.i.split.us ] ; 9 uses
  %i.ub = add nsw i64 %i.rz, %.0232274.i.us
  %i.uc = mul i64 %i.ub, %i.fj
  %i.ud = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.uc
  store i16 0, ptr %i.ud, align 2, !tbaa !41
  %.reass451 = add i64 %.0232274.i.us, %invariant.op450
  %i.ue = mul i64 %.reass451, %i.fj
  %i.uf = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ue
  store i16 0, ptr %i.uf, align 2, !tbaa !41
  %.reass453 = add i64 %.0232274.i.us, %invariant.op452
  %i.ug = mul i64 %.reass453, %i.fj
  %i.uh = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ug
  store i16 0, ptr %i.uh, align 2, !tbaa !41
  %.reass455 = add i64 %.0232274.i.us, %invariant.op454
  %i.ui = mul i64 %.reass455, %i.fj
  %i.uj = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ui
  store i16 0, ptr %i.uj, align 2, !tbaa !41
  %.reass457 = add i64 %.0232274.i.us, %invariant.op456
  %i.uk = mul i64 %.reass457, %i.fj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.uk
  store i16 0, ptr %i.ul, align 2, !tbaa !41
  %.reass459 = add i64 %.0232274.i.us, %invariant.op458
  %i.um = mul i64 %.reass459, %i.fj
  %i.un = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.um
  store i16 0, ptr %i.un, align 2, !tbaa !41
  %.reass461 = add i64 %.0232274.i.us, %invariant.op460
  %i.uo = mul i64 %.reass461, %i.fj
  %i.up = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.uo
  store i16 0, ptr %i.up, align 2, !tbaa !41
  %.reass463 = add i64 %.0232274.i.us, %invariant.op462
  %i.uq = mul i64 %.reass463, %i.fj
  %i.ur = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.uq
  store i16 0, ptr %i.ur, align 2, !tbaa !41
  %i.us = add nuw nsw i64 %.0232274.i.us, 8       ; 2 uses
  %exitcond352.not.i.us.7 = icmp eq i64 %i.us, %i.ao
  br i1 %exitcond352.not.i.us.7, label %._crit_edge.split.i, label %.preheader.i.split.us, !llvm.loop !1144

._crit_edge278.split285.i:                        ; preds = %._crit_edge.split.i, %._crit_edge.split.i.split.us.us
  %i.ut = add nuw nsw i64 %.0234286.i, 1          ; 2 uses
  %exitcond354.not.i = icmp eq i64 %i.ut, %i.as
  br i1 %exitcond354.not.i, label %._crit_edge.split297.i, label %.preheader272.i, !llvm.loop !1134

._crit_edge.split.i:                              ; preds = %bb.p, %.preheader.i.split.us.prol.loopexit, %.preheader.i.split.us, %middle.block133, %vec.epilog.middle.block152
  %i.uu = add nuw nsw i64 %.0233277.i, 1          ; 2 uses
  %exitcond353.not.i = icmp eq i64 %i.uu, %i.aq
  br i1 %exitcond353.not.i, label %._crit_edge278.split285.i, label %.preheader.i, !llvm.loop !1125

.preheader.i.split:                               ; preds = %.preheader.i, %bb.p
  %.0232274.i = phi i64 [ %i.wj, %bb.p ], [ 0, %.preheader.i ] ; 3 uses
  %i.uv = mul nsw i64 %.0232274.i, %i.ct
  %i.uw = add i64 %i.uv, %i.gy                    ; 3 uses
  %i.ux = add nsw i64 %i.rz, %.0232274.i
  %i.uy = icmp sgt i64 %i.uw, -1
  %or.cond7.not269.i = select i1 %i.sb, i1 %i.uy, i1 false
  %.not.i = icmp slt i64 %i.uw, %i.ai
  %or.cond247.i = select i1 %or.cond7.not269.i, i1 %.not.i, i1 false
  br i1 %or.cond247.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader.i.split
  %i.uz = load i64, ptr %i.cv, align 8, !tbaa !31
  %i.va = mul i64 %i.uz, %i.uw
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.va
  %i.vc = load i64, ptr %i.cw, align 8, !tbaa !31
  %i.vd = mul i64 %i.vc, %i.rx
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.vd
  %i.vf = load i64, ptr %i.cx, align 8, !tbaa !31
  %i.vg = mul i64 %i.vf, %i.ov
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.vg
  %i.vi = load i64, ptr %i.cy, align 8, !tbaa !31
  %i.vj = mul i64 %i.vi, %i.or
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vj
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !43
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.preheader.i.split
  %.0231.i = phi float [ %i.vl, %bb.o ], [ 0.000000e+00, %.preheader.i.split ] ; 2 uses
  %i.vm = mul i64 %i.ux, %i.fj
  %i.vn = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.vm
  %i.vo = call float @llvm.fabs.f32(float %.0231.i)
  %i.vp = fmul float %i.vo, f0x77800000
  %i.vq = fmul float %i.vp, f0x08800000
  %i.vr = bitcast float %.0231.i to i32           ; 2 uses
  %i.vs = shl i32 %i.vr, 1                        ; 2 uses
  %i.vt = call i32 @llvm.umax.i32(i32 %i.vs, i32 1895825408)
  %spec.store.select.i.i = lshr exact i32 %i.vt, 1
  %i.vu = and i32 %spec.store.select.i.i, 2139095040
  %i.vv = add nuw i32 %i.vu, 125829120
  %i.vw = bitcast i32 %i.vv to float
  %i.vx = fadd float %i.vq, %i.vw
  %i.vy = bitcast float %i.vx to i32              ; 2 uses
  %i.vz = lshr i32 %i.vy, 13
  %i.wa = and i32 %i.vz, 31744
  %i.wb = and i32 %i.vy, 4095
  %i.wc = add nuw nsw i32 %i.wa, %i.wb
  %i.wd = lshr i32 %i.vr, 16
  %i.we = and i32 %i.wd, 32768
  %i.wf = icmp ugt i32 %i.vs, -16777216
  %i.wg = select i1 %i.wf, i32 32256, i32 %i.wc
  %i.wh = or i32 %i.wg, %i.we
  %i.wi = trunc nuw i32 %i.wh to i16
  store i16 %i.wi, ptr %i.vn, align 2, !tbaa !41
  %i.wj = add nuw nsw i64 %.0232274.i, 1          ; 2 uses
  %exitcond352.not.i = icmp eq i64 %i.wj, %i.ao
  br i1 %exitcond352.not.i, label %._crit_edge.split.i, label %.preheader.i.split, !llvm.loop !1123

._crit_edge323.split.i:                           ; preds = %._crit_edge319.i, %._crit_edge.split312.i
  %i.wk = add nuw nsw i64 %.0237324.i, 1          ; 2 uses
  %indvars.iv.next.i = add i64 %indvars.iv.i, %i.by
  %indvars.iv.next358.i = sub i64 %indvars.iv357.i, %i.by
  %exitcond361.not.i = icmp eq i64 %i.wk, %i.cb
  br i1 %exitcond361.not.i, label %_ZL33ggml_compute_forward_conv_3d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit, label %bb.j, !llvm.loop !1145

iter.check:                                       ; preds = %._crit_edge319.i, %.lr.ph322.split.i
  %.0230320.i = phi i64 [ %i.fz, %.lr.ph322.split.i ], [ %i.yb, %._crit_edge319.i ] ; 3 uses
  %i.wl = add nsw i64 %.0230320.i, %i.ex          ; 2 uses
  %i.wm = srem i64 %i.wl, %i.bl                   ; 2 uses
  %i.wn = srem i64 %i.wm, %i.bk                   ; 2 uses
  %i.wo = sdiv i64 %i.wl, %i.bl                   ; 2 uses
  %i.wp = sdiv i64 %i.wm, %i.bk
  %i.wq = sdiv i64 %i.wn, %i.au
  %i.wr = srem i64 %i.wn, %i.au
  %i.ws = mul nsw i64 %.0230320.i, %i.bq
  %i.wt = getelementptr [4 x i8], ptr %i.fn, i64 %i.ws ; 11 uses
  %i.wu = mul nsw i64 %i.wo, %i.bq                ; 12 uses
  %i.wv = mul i64 %i.wr, %i.gc                    ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.wv
  %i.wx = mul i64 %i.wq, %i.gd                    ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %i.ww, i64 %i.wx
  %i.wz = mul i64 %i.wp, %i.ge                    ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wz ; 14 uses
  br i1 %or.cond336, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.xb = add i64 %i.wv, %i.wx
  %i.xc = add i64 %i.xb, %i.wz                    ; 2 uses
  %i.xd = getelementptr i8, ptr %i.be, i64 %i.xc
  %i.xe = getelementptr i8, ptr %i.xd, i64 %i.wu
  %i.xf = add i64 %i.wo, 1
  %i.xg = mul i64 %i.xf, %i.bq
  %5 = getelementptr i8, ptr %i.be, i64 %i.xc
  %i.xh = getelementptr i8, ptr %5, i64 %i.xg
  %i.xi = getelementptr i8, ptr %i.xh, i64 3
  %bound0 = icmp ult ptr %i.xe, %scevgep
  %bound1 = icmp ult ptr %scevgep63, %i.xi
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check64, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.wu, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.op478 = add <8 x i64> splat (i64 8), %broadcast.splat
  %invariant.op480 = add <8 x i64> splat (i64 16), %broadcast.splat
  %invariant.op482 = add <8 x i64> splat (i64 24), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.xj = getelementptr [4 x i8], ptr %i.wt, i64 %index ; 4 uses
  %i.xk = getelementptr i8, ptr %i.xj, i64 32
  %i.xl = getelementptr i8, ptr %i.xj, i64 64
  %i.xm = getelementptr i8, ptr %i.xj, i64 96
  %wide.load = load <8 x float>, ptr %i.xj, align 4, !tbaa !43, !alias.scope !1154
  %wide.load65 = load <8 x float>, ptr %i.xk, align 4, !tbaa !43, !alias.scope !1154
  %wide.load66 = load <8 x float>, ptr %i.xl, align 4, !tbaa !43, !alias.scope !1154
  %wide.load67 = load <8 x float>, ptr %i.xm, align 4, !tbaa !43, !alias.scope !1154
  %i.xn = add nsw <8 x i64> %vec.ind, %broadcast.splat
  %.reass479 = add <8 x i64> %vec.ind, %invariant.op478
  %.reass481 = add <8 x i64> %vec.ind, %invariant.op480
  %.reass483 = add <8 x i64> %vec.ind, %invariant.op482
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.xa, <8 x i64> %i.xn
  %wide.gep68 = getelementptr inbounds nuw i8, ptr %i.xa, <8 x i64> %.reass479
  %wide.gep69 = getelementptr inbounds nuw i8, ptr %i.xa, <8 x i64> %.reass481
  %wide.gep70 = getelementptr inbounds nuw i8, ptr %i.xa, <8 x i64> %.reass483
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1155, !noalias !1154
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load65, <8 x ptr> align 4 %wide.gep68, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1155, !noalias !1154
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load66, <8 x ptr> align 4 %wide.gep69, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1155, !noalias !1154
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %wide.load67, <8 x ptr> align 4 %wide.gep70, <8 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1155, !noalias !1154
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.xo = icmp eq i64 %index.next, %n.vec
  br i1 %i.xo, label %middle.block, label %vector.body, !llvm.loop !1149

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge319.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert72 = insertelement <4 x i64> poison, i64 %i.wu, i64 0
  %broadcast.splat73 = shufflevector <4 x i64> %broadcast.splatinsert72, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat75 = shufflevector <4 x i64> %broadcast.splatinsert74, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat75, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind77 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next81, %vec.epilog.vector.body ] ; 2 uses
  %i.xp = getelementptr [4 x i8], ptr %i.wt, i64 %index76
  %wide.load78 = load <4 x float>, ptr %i.xp, align 4, !tbaa !43, !alias.scope !1154
  %i.xq = add nsw <4 x i64> %vec.ind77, %broadcast.splat73
  %wide.gep79 = getelementptr inbounds nuw i8, ptr %i.xa, <4 x i64> %i.xq
  call void @llvm.masked.scatter.v4f32.v4p0(<4 x float> %wide.load78, <4 x ptr> align 4 %wide.gep79, <4 x i1> splat (i1 true)), !tbaa !43, !alias.scope !1155, !noalias !1154
  %index.next80 = add nuw i64 %index76, 4         ; 2 uses
  %vec.ind.next81 = add nuw nsw <4 x i64> %vec.ind77, splat (i64 4)
  %i.xr = icmp eq i64 %index.next80, %n.vec71
  br i1 %i.xr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1150

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n82, label %._crit_edge319.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0316.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec71, %vec.epilog.middle.block ] ; 4 uses
  %i.xs = sub nsw i64 %i.bq, %.0316.i.ph
  %xtraiter362 = and i64 %i.xs, 7                 ; 2 uses
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.0316.i.prol = phi i64 [ %i.xy, %vec.epilog.scalar.ph.prol ], [ %.0316.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter364 = phi i64 [ %prol.iter364.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.xt = getelementptr [4 x i8], ptr %i.wt, i64 %.0316.i.prol
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !43
  %i.xv = add nsw i64 %.0316.i.prol, %i.wu
  %i.xw = mul i64 %i.xv, %i.gf
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.xw
  store float %i.xu, ptr %i.xx, align 4, !tbaa !43
  %i.xy = add nuw nsw i64 %.0316.i.prol, 1        ; 2 uses
  %prol.iter364.next = add i64 %prol.iter364, 1   ; 2 uses
  %prol.iter364.cmp.not = icmp eq i64 %prol.iter364.next, %xtraiter362
  br i1 %prol.iter364.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1151

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.0316.i.unr = phi i64 [ %.0316.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.xy, %vec.epilog.scalar.ph.prol ]
  %i.xz = sub nsw i64 %.0316.i.ph, %i.bq
  %i.ya = icmp ugt i64 %i.xz, -8
  br i1 %i.ya, label %._crit_edge319.i, label %vec.epilog.scalar.ph

._crit_edge319.i:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.yb = add nsw i64 %.0230320.i, 1              ; 2 uses
  %exitcond360.not.i = icmp eq i64 %i.yb, %smin359.i
  br i1 %exitcond360.not.i, label %._crit_edge323.split.i, label %iter.check, !llvm.loop !1152

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.0316.i = phi i64 [ %i.zx, %vec.epilog.scalar.ph ], [ %.0316.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 10 uses
  %i.yc = getelementptr [4 x i8], ptr %i.wt, i64 %.0316.i
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !43
  %i.ye = add nsw i64 %.0316.i, %i.wu
  %i.yf = mul i64 %i.ye, %i.gf
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.yf
  store float %i.yd, ptr %i.yg, align 4, !tbaa !43
  %i.yh = add nuw nsw i64 %.0316.i, 1             ; 2 uses
  %i.yi = getelementptr [4 x i8], ptr %i.wt, i64 %i.yh
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !43
  %i.yk = add nsw i64 %i.yh, %i.wu
  %i.yl = mul i64 %i.yk, %i.gf
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.yl
  store float %i.yj, ptr %i.ym, align 4, !tbaa !43
  %i.yn = add nuw nsw i64 %.0316.i, 2             ; 2 uses
  %i.yo = getelementptr [4 x i8], ptr %i.wt, i64 %i.yn
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !43
  %i.yq = add nsw i64 %i.yn, %i.wu
  %i.yr = mul i64 %i.yq, %i.gf
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.yr
  store float %i.yp, ptr %i.ys, align 4, !tbaa !43
  %i.yt = add nuw nsw i64 %.0316.i, 3             ; 2 uses
  %i.yu = getelementptr [4 x i8], ptr %i.wt, i64 %i.yt
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !43
  %i.yw = add nsw i64 %i.yt, %i.wu
  %i.yx = mul i64 %i.yw, %i.gf
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.yx
  store float %i.yv, ptr %i.yy, align 4, !tbaa !43
  %i.yz = add nuw nsw i64 %.0316.i, 4             ; 2 uses
  %i.za = getelementptr [4 x i8], ptr %i.wt, i64 %i.yz
  %i.zb = load float, ptr %i.za, align 4, !tbaa !43
  %i.zc = add nsw i64 %i.yz, %i.wu
  %i.zd = mul i64 %i.zc, %i.gf
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.zd
  store float %i.zb, ptr %i.ze, align 4, !tbaa !43
  %i.zf = add nuw nsw i64 %.0316.i, 5             ; 2 uses
  %i.zg = getelementptr [4 x i8], ptr %i.wt, i64 %i.zf
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !43
  %i.zi = add nsw i64 %i.zf, %i.wu
  %i.zj = mul i64 %i.zi, %i.gf
  %i.zk = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.zj
  store float %i.zh, ptr %i.zk, align 4, !tbaa !43
  %i.zl = add nuw nsw i64 %.0316.i, 6             ; 2 uses
  %i.zm = getelementptr [4 x i8], ptr %i.wt, i64 %i.zl
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !43
  %i.zo = add nsw i64 %i.zl, %i.wu
  %i.zp = mul i64 %i.zo, %i.gf
  %i.zq = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.zp
  store float %i.zn, ptr %i.zq, align 4, !tbaa !43
  %i.zr = add nuw nsw i64 %.0316.i, 7             ; 2 uses
  %i.zs = getelementptr [4 x i8], ptr %i.wt, i64 %i.zr
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !43
  %i.zu = add nsw i64 %i.zr, %i.wu
  %i.zv = mul i64 %i.zu, %i.gf
  %i.zw = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.zv
  store float %i.zt, ptr %i.zw, align 4, !tbaa !43
  %i.zx = add nuw nsw i64 %.0316.i, 8             ; 2 uses
  %exitcond356.not.i.7 = icmp eq i64 %i.zx, %i.bq
  br i1 %exitcond356.not.i.7, label %._crit_edge319.i, label %vec.epilog.scalar.ph, !llvm.loop !1153

_ZL33ggml_compute_forward_conv_3d_implPK19ggml_compute_paramsPK11ggml_tensorS4_PS2_9ggml_type.exit: ; preds = %._crit_edge323.split.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_conv_transpose_2d(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 17 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30
  switch i32 %i.e, label %bb.z [
    i32 1, label %bb.b
    i32 0, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 7370, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr %1, align 8, !tbaa !30
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e
end_hunk_9
begin_hunk_10_@ggml_compute_forward_opt_step_adamw:bb.a
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aj = trunc i64 %i.t to i32                   ; 2 uses
  %i.ak = add i32 %i.s, -1
  %i.al = add i32 %i.ak, %i.aj
  %i.am = sdiv i32 %i.al, %i.s                    ; 2 uses
  %i.an = mul i32 %i.am, %i.q                     ; 3 uses
  %i.ao = add i32 %i.an, %i.am
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.ao, i32 %i.aj) ; 2 uses
  %i.aq = tail call ptr @ggml_get_data_f32(ptr noundef %i.k) ; 7 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !43 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !43 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !43 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.az = load float, ptr %i.ay, align 4, !tbaa !43
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !43
  %i.bc = fneg float %i.ar
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.az, float 1.000000e+00)
  %i.be = icmp slt i32 %i.an, %i.ap
  br i1 %i.be, label %.lr.ph157.i, label %_ZL39ggml_compute_forward_opt_step_adamw_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph157.i:                                      ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 20
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !43
  %i.bh = mul i64 %i.z, %i.x                      ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !37
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 248
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !37
  %i.bq = icmp sgt i64 %i.v, 0
  %i.br = fsub float 1.000000e+00, %i.at
  %i.bs = fsub float 1.000000e+00, %i.av
  %i.bt = fneg float %i.bg
  br i1 %i.bq, label %.lr.ph.preheader.i, label %_ZL39ggml_compute_forward_opt_step_adamw_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph157.i
  %i.bu = sext i32 %i.an to i64
  %wide.trip.count.i = sext i32 %i.ap to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv160.i = phi i64 [ %i.bu, %.lr.ph.preheader.i ], [ %indvars.iv.next161.i, %._crit_edge.i ] ; 3 uses
  %i.bv = sdiv i64 %indvars.iv160.i, %i.bh        ; 2 uses
  %i.bw = mul i64 %i.bv, %i.bh                    ; 0 uses
  %.recomposed = srem i64 %indvars.iv160.i, %i.bh ; 2 uses
  %i.bx = sdiv i64 %.recomposed, %i.x             ; 2 uses
  %i.by = mul nsw i64 %i.bx, %i.x                 ; 0 uses
  %.recomposed6 = srem i64 %.recomposed, %i.x
  %i.bz = mul i64 %i.bv, %i.ai
  %i.ca = mul i64 %i.bx, %i.ag
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = mul i64 %.recomposed6, %i.ae
  %i.cd = add i64 %i.cb, %i.cc                    ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.cd
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.cd
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.l
  %indvars.iv.next161.i = add nsw i64 %indvars.iv160.i, 1 ; 2 uses
  %exitcond163.not.i = icmp eq i64 %indvars.iv.next161.i, %wide.trip.count.i
  br i1 %exitcond163.not.i, label %_ZL39ggml_compute_forward_opt_step_adamw_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %.lr.ph.i, !llvm.loop !1855

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 5 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i ; 3 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !43
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !43
  %i.cm = fmul float %i.br, %i.cl
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.at, float %i.cm)
  store float %i.cn, ptr %i.ci, align 4, !tbaa !43
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !43
  %i.cq = load float, ptr %i.ck, align 4, !tbaa !43 ; 2 uses
  %i.cr = fmul float %i.cq, %i.cq
  %i.cs = fmul float %i.bs, %i.cr
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.av, float %i.cs) ; 2 uses
  store float %i.ct, ptr %i.co, align 4, !tbaa !43
  %i.cu = load float, ptr %i.ci, align 4, !tbaa !43
  %i.cv = fmul float %i.bb, %i.ct
  %i.cw = tail call float @sqrtf(float noundef %i.cv) #18
  %i.cx = fadd float %i.ax, %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.i ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !43
  %i.da = fmul float %i.cu, %i.bt
  %i.db = fmul float %i.ar, %i.da
  %i.dc = fdiv float %i.db, %i.cx
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.bd, float %i.dc)
  store float %i.dd, ptr %i.cy, align 4, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.v
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l, !llvm.loop !1856

_ZL39ggml_compute_forward_opt_step_adamw_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.i, %bb.k, %.lr.ph157.i
  ret void

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 11925, ptr noundef nonnull @.str.2) #17
  unreachable
}

declare ptr @ggml_get_data_f32(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_opt_step_sgd(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 11 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !24   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.h = tail call zeroext i1 @ggml_are_same_shape(ptr noundef nonnull %i.b, ptr noundef %i.e)
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 11935, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.223) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call i64 @ggml_nelements(ptr noundef %i.g)
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 11936, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.228) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = load i32, ptr %0, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !36   ; 2 uses
  %i.n = tail call i64 @ggml_nrows(ptr noundef nonnull %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !31   ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !31   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31
  %i.w = icmp eq i64 %i.v, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31
  br i1 %i.w, label %bb.g, label %.thread112.i

.thread112.i:                                     ; preds = %bb.f
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 11944, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.29) #17
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ad = trunc i64 %i.n to i32                   ; 2 uses
  %i.ae = add i32 %i.m, -1
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = sdiv i32 %i.af, %i.m                    ; 2 uses
  %i.ah = mul i32 %i.ag, %i.k                     ; 3 uses
  %i.ai = add i32 %i.ah, %i.ag
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %i.ad) ; 2 uses
  %i.ak = tail call ptr @ggml_get_data_f32(ptr noundef %i.g) ; 2 uses
  %i.al = load float, ptr %i.ak, align 4, !tbaa !43 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !43
  %i.ao = fneg float %i.al
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.an, float 1.000000e+00) ; 7 uses
  %i.aq = icmp slt i32 %i.ah, %i.aj
  br i1 %i.aq, label %.lr.ph116.i, label %_ZL37ggml_compute_forward_opt_step_sgd_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph116.i:                                      ; preds = %bb.g
  %i.ar = mul i64 %i.t, %i.r                      ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !37 ; 2 uses
  %i.aw = icmp sgt i64 %i.p, 0
  br i1 %i.aw, label %.lr.ph.preheader.i, label %_ZL37ggml_compute_forward_opt_step_sgd_f32PK19ggml_compute_paramsP11ggml_tensor.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph116.i
  %i.ax = sext i32 %i.ah to i64
  %wide.trip.count.i = sext i32 %i.aj to i64
  %i.ay = shl i64 %i.p, 2
  %min.iters.check = icmp ult i64 %i.p, 4
  %min.iters.check9 = icmp ult i64 %i.p, 32
  %i.az = and i64 %i.p, 28
  %n.vec = and i64 %i.p, 9223372036854775776      ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.al, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert10 = insertelement <8 x float> poison, float %i.ap, i64 0
  %broadcast.splat11 = shufflevector <8 x float> %broadcast.splatinsert10, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  %n.vec19 = and i64 %i.p, 9223372036854775804    ; 3 uses
  %broadcast.splatinsert20 = insertelement <4 x float> poison, float %i.al, i64 0
  %broadcast.splat21 = shufflevector <4 x float> %broadcast.splatinsert20, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <4 x float> poison, float %i.ap, i64 0
  %broadcast.splat23 = shufflevector <4 x float> %broadcast.splatinsert22, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n28 = icmp eq i64 %i.p, %n.vec19
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv119.i = phi i64 [ %i.ax, %.lr.ph.preheader.i ], [ %indvars.iv.next120.i, %._crit_edge.i ] ; 3 uses
  %i.ba = sdiv i64 %indvars.iv119.i, %i.ar        ; 2 uses
  %i.bb = mul i64 %i.ba, %i.ar                    ; 0 uses
  %.recomposed = srem i64 %indvars.iv119.i, %i.ar ; 2 uses
  %i.bc = sdiv i64 %.recomposed, %i.r             ; 2 uses
  %i.bd = mul nsw i64 %i.bc, %i.r                 ; 0 uses
  %.recomposed29 = srem i64 %.recomposed, %i.r
  %i.be = mul i64 %i.ba, %i.ac                    ; 2 uses
  %i.bf = mul i64 %i.bc, %i.aa                    ; 2 uses
  %i.bg = add i64 %i.bf, %i.be
  %i.bh = mul i64 %.recomposed29, %i.y            ; 2 uses
  %i.bi = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bi ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bi ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %2 = add i64 %i.be, %i.bf
  %3 = add i64 %2, %i.bh
  %4 = add i64 %3, %i.ay                          ; 2 uses
  %i.bl = getelementptr i8, ptr %i.at, i64 %4
  %i.bm = getelementptr i8, ptr %i.av, i64 %4
  %bound0 = icmp ult ptr %i.bj, %i.bm
  %bound1 = icmp ult ptr %i.bk, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.bn, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  %wide.load12 = load <8 x float>, ptr %i.bo, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  %wide.load13 = load <8 x float>, ptr %i.bp, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  %wide.load14 = load <8 x float>, ptr %i.bq, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  %wide.load15 = load <8 x float>, ptr %i.br, align 4, !tbaa !43, !alias.scope !1866
  %wide.load16 = load <8 x float>, ptr %i.bs, align 4, !tbaa !43, !alias.scope !1866
  %wide.load17 = load <8 x float>, ptr %i.bt, align 4, !tbaa !43, !alias.scope !1866
  %wide.load18 = load <8 x float>, ptr %i.bu, align 4, !tbaa !43, !alias.scope !1866
  %i.bv = fneg <8 x float> %wide.load15
  %i.bw = fneg <8 x float> %wide.load16
  %i.bx = fneg <8 x float> %wide.load17
  %i.by = fneg <8 x float> %wide.load18
  %i.bz = fmul <8 x float> %broadcast.splat, %i.bv
  %i.ca = fmul <8 x float> %broadcast.splat, %i.bw
  %i.cb = fmul <8 x float> %broadcast.splat, %i.bx
  %i.cc = fmul <8 x float> %broadcast.splat, %i.by
  %i.cd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load, <8 x float> %broadcast.splat11, <8 x float> %i.bz)
  %i.ce = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load12, <8 x float> %broadcast.splat11, <8 x float> %i.ca)
  %i.cf = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load13, <8 x float> %broadcast.splat11, <8 x float> %i.cb)
  %i.cg = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.load14, <8 x float> %broadcast.splat11, <8 x float> %i.cc)
  store <8 x float> %i.cd, ptr %i.bn, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  store <8 x float> %i.ce, ptr %i.bo, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  store <8 x float> %i.cf, ptr %i.bp, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  store <8 x float> %i.cg, ptr %i.bq, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !1860

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index24 ; 2 uses
  %wide.load25 = load <4 x float>, ptr %i.ci, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index24
  %wide.load26 = load <4 x float>, ptr %i.cj, align 4, !tbaa !43, !alias.scope !1866
  %i.ck = fneg <4 x float> %wide.load26
  %i.cl = fmul <4 x float> %broadcast.splat21, %i.ck
  %i.cm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load25, <4 x float> %broadcast.splat23, <4 x float> %i.cl)
  store <4 x float> %i.cm, ptr %i.ci, align 4, !tbaa !43, !alias.scope !1865, !noalias !1866
  %index.next27 = add nuw i64 %index24, 4         ; 2 uses
  %i.cn = icmp eq i64 %index.next27, %n.vec19
  br i1 %i.cn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1861

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n28, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec19, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.prol ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !43
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i.prol
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !43
  %i.cs = fneg float %i.cr
  %i.ct = fmul float %i.al, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ap, float %i.ct)
  store float %i.cu, ptr %i.co, align 4, !tbaa !43
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1862

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.cv = sub nsw i64 %indvars.iv.i.ph, %i.p
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next120.i = add nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count.i
  br i1 %exitcond122.not.i, label %_ZL37ggml_compute_forward_opt_step_sgd_f32PK19ggml_compute_paramsP11ggml_tensor.exit, label %iter.check, !llvm.loop !1863

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i ; 2 uses
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !43
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.da = load float, ptr %i.cz, align 4, !tbaa !43
  %i.db = fneg float %i.da
  %i.dc = fmul float %i.al, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.ap, float %i.dc)
  store float %i.dd, ptr %i.cx, align 4, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next.i ; 2 uses
  %i.df = load float, ptr %i.de, align 4, !tbaa !43
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !43
  %i.di = fneg float %i.dh
  %i.dj = fmul float %i.al, %i.di
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.df, float %i.ap, float %i.dj)
  store float %i.dk, ptr %i.de, align 4, !tbaa !43
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next.i.1 ; 2 uses
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !43
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.1
  %i.do = load float, ptr %i.dn, align 4, !tbaa !43
  %i.dp = fneg float %i.do
  %i.dq = fmul float %i.al, %i.dp
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dm, float %i.ap, float %i.dq)
  store float %i.dr, ptr %i.dl, align 4, !tbaa !43
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !43
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i.2
  %i.dv = load float, ptr %i.du, align 4, !tbaa !43
  %i.dw = fneg float %i.dv
  %i.dx = fmul float %i.al, %i.dw
  %i.dy = tail call float @llvm.fmuladd.f32(float %i.dt, float %i.ap, float %i.dx)
  store float %i.dy, ptr %i.ds, align 4, !tbaa !43
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.p
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !1864

_ZL37ggml_compute_forward_opt_step_sgd_f32PK19ggml_compute_paramsP11ggml_tensor.exit: ; preds = %._crit_edge.i, %bb.g, %.lr.ph116.i
  ret void

bb.h:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 11985, ptr noundef nonnull @.str.227) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @ggml_compute_forward_fwht(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 9 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30
  %cond = icmp eq i32 %i.c, 0
  br i1 %cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 8, !tbaa !30
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 11995, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.20) #17
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !31   ; 19 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !31   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = load i64, ptr %i.n, align 8, !tbaa !31   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !31   ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.g)
  %i.w = icmp samesign ult i64 %i.v, 2
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 12003, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.230) #17
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 40
end_hunk_10
