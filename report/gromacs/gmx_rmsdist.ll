Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_rmsdist?download=true
inline.NumInlined: 303
inline.NumDeleted: 107
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z11gmx_rmsdistiPPc:bb.a
.noexc232:                                        ; preds = %.noexc231
  %i.va = load ptr, ptr %i.tq, align 8, !tbaa !95
  %i.vb = getelementptr inbounds nuw [32 x i8], ptr %i.va, i64 %indvars.iv.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  store ptr %i.uz, ptr %i.vc, align 8, !tbaa !100
  %i.vd = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.i)
          to label %.noexc233 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc233:                                        ; preds = %.noexc232
  %i.ve = load ptr, ptr %i.tq, align 8, !tbaa !95
  %i.vf = getelementptr inbounds nuw [32 x i8], ptr %i.ve, i64 %indvars.iv.i.i
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 24
  store ptr %i.vd, ptr %i.vg, align 8, !tbaa !101
  %i.vh = load ptr, ptr %i.tq, align 8, !tbaa !95
  %i.vi = getelementptr inbounds nuw [32 x i8], ptr %i.vh, i64 %indvars.iv.i.i
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  store ptr null, ptr %i.vj, align 8, !tbaa !97
  %i.vk = load i32, ptr %i.j, align 4, !tbaa !64
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds i8, ptr %.055.i.i, i64 %i.vl ; 2 uses
  %i.vn = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %i.vm, ptr noundef nonnull @.str.96, ptr noundef nonnull %i.k, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #14
  %i.vo = icmp eq i32 %i.vn, 3
  br i1 %i.vo, label %.lr.ph.peel.next.i.i, label %.loopexit.loopexit.loopexit.i.i, !llvm.loop !44

.loopexit.loopexit.loopexit.i.i:                  ; preds = %.noexc233
  %i.vp = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.loopexit.loopexit.i.i, %.noexc230, %.noexc227, %.noexc225
  %.1.i.i = phi i32 [ 0, %.noexc225 ], [ 0, %.noexc227 ], [ 1, %.noexc230 ], [ %i.vp, %.loopexit.loopexit.loopexit.i.i ] ; 2 uses
  %i.vq = add nuw nsw i32 %.1.i.i, 1
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = load ptr, ptr %i.tq, align 8, !tbaa !95
  %i.vt = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.46, i32 noundef 229, ptr noundef %i.vs, i64 noundef range(i64 -2147483647, 2147483648) %i.vr, i64 noundef 32)
          to label %.noexc234 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc234:                                        ; preds = %.loopexit.i.i
  store ptr %i.vt, ptr %i.tq, align 8, !tbaa !95
  %i.vu = zext nneg i32 %.1.i.i to i64            ; 2 uses
  %i.vv = getelementptr inbounds nuw [32 x i8], ptr %i.vt, i64 %i.vu ; 3 uses
  store i8 0, ptr %i.vv, align 8, !tbaa !98
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 4
  store i32 0, ptr %i.vw, align 4, !tbaa !99
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vv, i64 16
  store ptr null, ptr %i.vx, align 8, !tbaa !100
  %i.vy = load ptr, ptr %i.tq, align 8, !tbaa !95
  %i.vz = getelementptr inbounds nuw [32 x i8], ptr %i.vy, i64 %i.vu
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 24
  store ptr null, ptr %i.wa, align 8, !tbaa !101
  %i.wb = invoke noundef zeroext i1 @_Z10get_a_lineP8_IO_FILEPci(ptr noundef %i.tg, ptr noundef nonnull %i.g, i32 noundef 4096)
          to label %.noexc235 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc235:                                        ; preds = %.noexc234
  br i1 %i.wb, label %.lr.ph58.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !45

._crit_edge.loopexit.i.i:                         ; preds = %.noexc235
  %i.wc = trunc nuw nsw i64 %indvars.iv.next66.i.i to i32
  br label %_ZL10read_equivPKcPPP7t_equiv.exit.i

_ZL10read_equivPKcPPP7t_equiv.exit.i:             ; preds = %._crit_edge.loopexit.i.i, %.noexc224
  %.053.lcssa.i.i = phi ptr [ null, %.noexc224 ], [ %i.tp, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.039.lcssa.i.i = phi i32 [ 0, %.noexc224 ], [ %i.wc, %._crit_edge.loopexit.i.i ] ; 5 uses
  %i.wd = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.tg)
          to label %.noexc236 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc236:                                        ; preds = %_ZL10read_equivPKcPPP7t_equiv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.we = load ptr, ptr @debug, align 8, !tbaa !76 ; 5 uses
  %.not182.i = icmp eq ptr %i.we, null
  br i1 %.not182.i, label %_ZL10dump_equivP8_IO_FILEiPP7t_equiv.exit.i, label %bb.bs

bb.bs:                                            ; preds = %.noexc236
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.97, i64 24, i64 1, ptr nonnull %i.we) ; 0 uses
  %i.wf = icmp sgt i32 %.039.lcssa.i.i, 0
  br i1 %i.wf, label %.lr.ph26.preheader.i.i, label %_ZL10dump_equivP8_IO_FILEiPP7t_equiv.exit.i

.lr.ph26.preheader.i.i:                           ; preds = %bb.bs
  %wide.trip.count.i.i = zext nneg i32 %.039.lcssa.i.i to i64
  br label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %._crit_edge.i.i221, %.lr.ph26.preheader.i.i
  %indvars.iv29.i.i = phi i64 [ 0, %.lr.ph26.preheader.i.i ], [ %indvars.iv.next30.i.i, %._crit_edge.i.i221 ] ; 2 uses
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %.053.lcssa.i.i, i64 %indvars.iv29.i.i ; 3 uses
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !95
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !97
  %fputs.i.i = call i32 @fputs(ptr %i.wj, ptr nonnull %i.we) ; 0 uses
  %i.wk = load ptr, ptr %i.wg, align 8, !tbaa !95 ; 2 uses
  %i.wl = load i8, ptr %i.wk, align 8, !tbaa !98, !range !79, !noundef !80
  %i.wm = trunc nuw i8 %i.wl to i1
  br i1 %i.wm, label %.lr.ph.i.i, label %._crit_edge.i.i221

.lr.ph.i.i:                                       ; preds = %.lr.ph26.i.i, %.lr.ph.i.i
  %indvars.iv.i194.i = phi i64 [ %indvars.iv.next.i195.i, %.lr.ph.i.i ], [ 0, %.lr.ph26.i.i ]
  %i.wn = phi ptr [ %i.ww, %.lr.ph.i.i ], [ %i.wk, %.lr.ph26.i.i ] ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 4
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !99
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !100
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 24
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !101
  %i.wu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.we, ptr noundef nonnull @.str.99, i32 noundef %i.wp, ptr noundef %i.wr, ptr noundef %i.wt) #14 ; 0 uses
  %indvars.iv.next.i195.i = add nuw nsw i64 %indvars.iv.i194.i, 1 ; 2 uses
  %i.wv = load ptr, ptr %i.wg, align 8, !tbaa !95
  %i.ww = getelementptr inbounds nuw [32 x i8], ptr %i.wv, i64 %indvars.iv.next.i195.i ; 2 uses
  %i.wx = load i8, ptr %i.ww, align 8, !tbaa !98, !range !79, !noundef !80
  %i.wy = trunc nuw i8 %i.wx to i1
  br i1 %i.wy, label %.lr.ph.i.i, label %._crit_edge.i.i221, !llvm.loop !46

._crit_edge.i.i221:                               ; preds = %.lr.ph.i.i, %.lr.ph26.i.i
  %fputc.i.i = call i32 @fputc(i32 10, ptr nonnull %i.we) ; 0 uses
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next30.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL10dump_equivP8_IO_FILEiPP7t_equiv.exit.i, label %.lr.ph26.i.i, !llvm.loop !47

_ZL10dump_equivP8_IO_FILEiPP7t_equiv.exit.i:      ; preds = %._crit_edge.i.i221, %bb.bs, %.noexc236, %bb.bl
  %.0212.i = phi ptr [ null, %bb.bl ], [ %.053.lcssa.i.i, %.noexc236 ], [ %.053.lcssa.i.i, %bb.bs ], [ %.053.lcssa.i.i, %._crit_edge.i.i221 ] ; 2 uses
  %.0164.i = phi i32 [ 0, %bb.bl ], [ %.039.lcssa.i.i, %.noexc236 ], [ %.039.lcssa.i.i, %bb.bs ], [ %.039.lcssa.i.i, %._crit_edge.i.i221 ] ; 2 uses
  %i.wz = icmp sgt i32 %i.sq, 0
  br i1 %i.wz, label %.lr.ph252.i.a, label %.loopexit238.thread.i

.lr.ph252.i.a:                                    ; preds = %_ZL10dump_equivP8_IO_FILEiPP7t_equiv.exit.i
  %.not188.i = icmp eq ptr %.0212.i, null
  %i.xa = add nsw i32 %i.sq, -1                   ; 3 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %5, i64 2352
  %i.xc = getelementptr inbounds nuw i8, ptr %5, i64 2392
  %i.xd = getelementptr inbounds nuw i8, ptr %5, i64 2360 ; 2 uses
  %i.xe = icmp slt i32 %.0164.i, 1
  %i.xf = zext nneg i32 %.0164.i to i64
  %i.xg = add nsw i32 %i.sq, -3
  %wide.trip.count274.i = zext nneg i32 %i.xa to i64
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit237.i, %.lr.ph252.i.a
  %.0165251.i = phi i32 [ 0, %.lr.ph252.i.a ], [ %i.acc, %.loopexit237.i ] ; 7 uses
  %.0169250.i = phi i32 [ 0, %.lr.ph252.i.a ], [ %i.acd, %.loopexit237.i ] ; 4 uses
  %i.xh = icmp sge i32 %.0169250.i, %i.xa
  %or.cond.not261.i = select i1 %.not188.i, i1 true, i1 %i.xh
  %brmerge.i = select i1 %or.cond.not261.i, i1 true, i1 %i.xe
  br i1 %brmerge.i, label %..thread220_crit_edge.i, label %.preheader48.preheader.i.preheader.i

..thread220_crit_edge.i:                          ; preds = %bb.bt
  %.pre.i = load ptr, ptr %i.xd, align 8, !tbaa !110 ; 2 uses
  %.phi.trans.insert.i = sext i32 %.0169250.i to i64 ; 2 uses
  %.phi.trans.insert298.i.a = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %.phi.trans.insert.i
  %.pre299.i = load i32, ptr %.phi.trans.insert298.i.a, align 4, !tbaa !64
  %.phi.trans.insert300.i = sext i32 %.pre299.i to i64
  %.phi.trans.insert301.i = getelementptr inbounds [8 x i8], ptr %.pre.i, i64 %.phi.trans.insert300.i
  %.pre302.i = load ptr, ptr %.phi.trans.insert301.i, align 8, !tbaa !112
  %.pre303.i = load ptr, ptr %.pre302.i, align 8, !tbaa !15
  br label %.thread220.i

.preheader48.preheader.i.preheader.i:             ; preds = %bb.bt
  %i.xi = sext i32 %.0169250.i to i64
  br label %.preheader48.preheader.i.i

.preheader48.preheader.i.i:                       ; preds = %bb.cb, %.preheader48.preheader.i.preheader.i
  %indvars.iv271.i = phi i64 [ %i.xi, %.preheader48.preheader.i.preheader.i ], [ %indvars.iv.next272.i, %bb.cb ] ; 6 uses
  %indvars.iv.next272.i = add nsw i64 %indvars.iv271.i, 1 ; 4 uses
  %i.xj = load ptr, ptr %i.xb, align 8, !tbaa !113 ; 2 uses
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %indvars.iv271.i
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !64
  %i.xm = sext i32 %i.xl to i64                   ; 2 uses
  %i.xn = getelementptr inbounds [36 x i8], ptr %i.xj, i64 %i.xm
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 24
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !117 ; 2 uses
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %indvars.iv.next272.i
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !64
  %i.xs = sext i32 %i.xr to i64                   ; 2 uses
  %i.xt = getelementptr inbounds [36 x i8], ptr %i.xj, i64 %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !117 ; 2 uses
  %i.xw = load ptr, ptr %i.xc, align 8, !tbaa !118 ; 2 uses
  %i.xx = sext i32 %i.xp to i64
  %i.xy = getelementptr inbounds [32 x i8], ptr %i.xw, i64 %i.xx
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !120
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !15
  %i.yb = load ptr, ptr %i.xd, align 8, !tbaa !110 ; 3 uses
  %i.yc = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.xm
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !112
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !15 ; 2 uses
  %i.yf = sext i32 %i.xv to i64
  %i.yg = getelementptr inbounds [32 x i8], ptr %i.xw, i64 %i.yf
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !120
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !15
  %i.yj = getelementptr inbounds [8 x i8], ptr %i.yb, i64 %i.xs
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !112
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !15
  br label %.preheader48.i.i

.preheader48.i.i:                                 ; preds = %.loopexit.i196.i, %.preheader48.preheader.i.i
  %indvars.iv68.i.i = phi i64 [ 0, %.preheader48.preheader.i.i ], [ %indvars.iv.next69.i.i, %.loopexit.i196.i ] ; 2 uses
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %.0212.i, i64 %indvars.iv68.i.i
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !95 ; 6 uses
  %i.yo = load i8, ptr %i.yn, align 8, !tbaa !98, !range !79, !noundef !80
  %.not50.i.i = icmp eq i8 %i.yo, 0
  br i1 %.not50.i.i, label %.loopexit.i196.i, label %.lr.ph.i197.i

.lr.ph.i197.i:                                    ; preds = %.preheader48.i.i, %bb.bw
  %indvars.iv.i198.i = phi i64 [ %indvars.iv.next.i199.i, %bb.bw ], [ 0, %.preheader48.i.i ] ; 2 uses
  %i.yp = getelementptr inbounds nuw [32 x i8], ptr %i.yn, i64 %indvars.iv.i198.i ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 4
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !99
  %i.ys = icmp eq i32 %i.yr, %i.xp
  br i1 %i.ys, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %.lr.ph.i197.i
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yp, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !100
  %i.yv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yu, ptr noundef nonnull readonly dereferenceable(1) %i.ya) #18
  %i.yw = icmp eq i32 %i.yv, 0
  br i1 %i.yw, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yp, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !101
  %i.yz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.yy, ptr noundef nonnull readonly dereferenceable(1) %i.ye) #18
  %i.za = icmp eq i32 %i.yz, 0
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %.lr.ph.i197.i
  %i.zb = phi i1 [ false, %bb.bu ], [ false, %.lr.ph.i197.i ], [ %i.za, %bb.bv ] ; 2 uses
  %indvars.iv.next.i199.i = add nuw nsw i64 %indvars.iv.i198.i, 1 ; 2 uses
  %i.zc = getelementptr inbounds nuw [32 x i8], ptr %i.yn, i64 %indvars.iv.next.i199.i
  %i.zd = load i8, ptr %i.zc, align 8, !tbaa !98, !range !79, !noundef !80
  %.not.i.i = icmp eq i8 %i.zd, 0
  %i.ze = select i1 %.not.i.i, i1 true, i1 %i.zb
  br i1 %i.ze, label %._crit_edge.i200.i, label %.lr.ph.i197.i, !llvm.loop !48

._crit_edge.i200.i:                               ; preds = %bb.bw
  br i1 %i.zb, label %.lr.ph55.i.i, label %.loopexit.i196.i

.lr.ph55.i.i:                                     ; preds = %._crit_edge.i200.i, %bb.bz
  %indvars.iv65.i201.i = phi i64 [ %indvars.iv.next66.i202.i, %bb.bz ], [ 0, %._crit_edge.i200.i ] ; 2 uses
  %i.zf = getelementptr inbounds nuw [32 x i8], ptr %i.yn, i64 %indvars.iv65.i201.i ; 3 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 4
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !99
  %i.zi = icmp eq i32 %i.zh, %i.xv
  br i1 %i.zi, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %.lr.ph55.i.i
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !100
  %i.zl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.zk, ptr noundef nonnull readonly dereferenceable(1) %i.yi) #18
  %i.zm = icmp eq i32 %i.zl, 0
  br i1 %i.zm, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !101
  %i.zp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.zo, ptr noundef nonnull readonly dereferenceable(1) %i.yl) #18
  %i.zq = icmp eq i32 %i.zp, 0
  %49 = zext i1 %i.zq to i8
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph55.i.i
  %50 = phi i8 [ 0, %bb.bx ], [ 0, %.lr.ph55.i.i ], [ %49, %bb.by ] ; 2 uses
  %indvars.iv.next66.i202.i = add nuw nsw i64 %indvars.iv65.i201.i, 1 ; 2 uses
  %i.zr = getelementptr inbounds nuw [32 x i8], ptr %i.yn, i64 %indvars.iv.next66.i202.i
  %i.zs = load i8, ptr %i.zr, align 8, !tbaa !98, !range !79, !noundef !80
  %i.zt = trunc nuw i8 %i.zs to i1
  %51 = icmp eq i8 %50, 0
  %i.zu = select i1 %i.zt, i1 %51, i1 false
  br i1 %i.zu, label %.lr.ph55.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !49

.loopexit.loopexit.i.i:                           ; preds = %bb.bz
  %52 = trunc nuw i8 %50 to i1
  br label %.loopexit.i196.i

.loopexit.i196.i:                                 ; preds = %.loopexit.loopexit.i.i, %._crit_edge.i200.i, %.preheader48.i.i
  %.3.i.i = phi i1 [ false, %._crit_edge.i200.i ], [ false, %.preheader48.i.i ], [ %52, %.loopexit.loopexit.i.i ] ; 2 uses
  %indvars.iv.next69.i.i = add nuw nsw i64 %indvars.iv68.i.i, 1 ; 2 uses
  %i.zv = icmp samesign uge i64 %indvars.iv.next69.i.i, %i.xf
  %.not46.i.i = select i1 %i.zv, i1 true, i1 %.3.i.i
  br i1 %.not46.i.i, label %._crit_edge58.i.i, label %.preheader48.i.i, !llvm.loop !50

._crit_edge58.i.i:                                ; preds = %.loopexit.i196.i
  br i1 %.3.i.i, label %_ZL8is_equiviPP7t_equivPPciS2_S2_iS2_S2_.exit.i, label %.thread220.loopexit.i

_ZL8is_equiviPP7t_equivPPciS2_S2_iS2_S2_.exit.i:  ; preds = %._crit_edge58.i.i
  %i.zw = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.zx = load ptr, ptr %i.zw, align 8, !tbaa !97
  %i.zy = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef %i.zx)
          to label %.noexc237 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc237:                                        ; preds = %_ZL8is_equiviPP7t_equivPPciS2_S2_iS2_S2_.exit.i
  %i.zz = getelementptr inbounds [8 x i8], ptr %i.su, i64 %indvars.iv271.i
  store ptr %i.zy, ptr %i.zz, align 8, !tbaa !15
  %.not232.i = icmp eq ptr %i.zy, null
  br i1 %.not232.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.noexc237
  %i.aaa = invoke noundef ptr @_Z10gmx_strdupPKc(ptr noundef nonnull %i.zy)
          to label %.noexc238 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc238:                                        ; preds = %bb.ca
  %i.aab = getelementptr inbounds [8 x i8], ptr %i.su, i64 %indvars.iv.next272.i
  store ptr %i.aaa, ptr %i.aab, align 8, !tbaa !15
  br label %bb.cb

bb.cb:                                            ; preds = %.noexc238, %.noexc237
  %i.aac = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %indvars.iv271.i
  store i32 %.0165251.i, ptr %i.aac, align 4, !tbaa !64
  %exitcond275.not.i = icmp eq i64 %indvars.iv.next272.i, %wide.trip.count274.i
  br i1 %exitcond275.not.i, label %.loopexit237.i, label %.preheader48.preheader.i.i, !llvm.loop !51

.thread220.loopexit.i:                            ; preds = %._crit_edge58.i.i
  %i.aad = trunc nsw i64 %indvars.iv271.i to i32
  br label %.thread220.i

.thread220.i:                                     ; preds = %.thread220.loopexit.i, %..thread220_crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %..thread220_crit_edge.i ], [ %indvars.iv271.i, %.thread220.loopexit.i ] ; 5 uses
  %i.aae = phi ptr [ %.pre303.i, %..thread220_crit_edge.i ], [ %i.ye, %.thread220.loopexit.i ] ; 4 uses
  %i.aaf = phi ptr [ %.pre.i, %..thread220_crit_edge.i ], [ %i.yb, %.thread220.loopexit.i ] ; 2 uses
  %.3.ph.i = phi i32 [ %.0169250.i, %..thread220_crit_edge.i ], [ %i.aad, %.thread220.loopexit.i ] ; 5 uses
  %i.aag = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aae) #18 ; 2 uses
  %i.aah = trunc i64 %i.aag to i32                ; 2 uses
  %.not189.i = icmp sgt i32 %.3.ph.i, %i.xg
  br i1 %.not189.i, label %.thread230.i, label %bb.cc

bb.cc:                                            ; preds = %.thread220.i
  %i.aai = shl i64 %i.aag, 32
  %sext.i = add i64 %i.aai, -4294967296
  %i.aaj = ashr exact i64 %sext.i, 32             ; 3 uses
  %i.aak = getelementptr inbounds i8, ptr %i.aae, i64 %i.aaj
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !21
  %i.aam = icmp eq i8 %i.aal, 49
  br i1 %i.aam, label %.preheader235.i, label %.thread230.i

.preheader235.i:                                  ; preds = %bb.cc
  %i.aan = add nsw i64 %.pre-phi.i, 1             ; 2 uses
  %i.aao = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.aan
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !64
  %i.aaq = sext i32 %i.aap to i64
  %i.aar = getelementptr inbounds [8 x i8], ptr %i.aaf, i64 %i.aaq
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !112
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !15 ; 3 uses
  %i.aau = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aat) #18 ; 2 uses
  %i.aav = trunc i64 %i.aau to i32
  %i.aaw = icmp eq i32 %i.aah, %i.aav
  br i1 %i.aaw, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %.preheader235.i
  %i.aax = shl i64 %i.aau, 32
  %sext190.i = add i64 %i.aax, -4294967296
  %i.aay = ashr exact i64 %sext190.i, 32
  %i.aaz = getelementptr inbounds i8, ptr %i.aat, i64 %i.aay
  %i.aba = load i8, ptr %i.aaz, align 1, !tbaa !21
  %i.abb = icmp eq i8 %i.aba, 50
  br i1 %i.abb, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.abc = call i32 @strncmp(ptr noundef nonnull %i.aae, ptr noundef nonnull %i.aat, i64 noundef %i.aaj) #18
  %i.abd = icmp eq i32 %i.abc, 0
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %.preheader235.i
  %i.abe = phi i1 [ false, %.preheader235.i ], [ false, %bb.cd ], [ %i.abd, %bb.ce ]
  %i.abf = add nsw i64 %.pre-phi.i, 2             ; 2 uses
  %i.abg = getelementptr inbounds [4 x i8], ptr %i.sr, i64 %i.abf
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !64
  %i.abi = sext i32 %i.abh to i64
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.aaf, i64 %i.abi
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !112
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !15 ; 3 uses
  %i.abm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.abl) #18 ; 2 uses
  %i.abn = trunc i64 %i.abm to i32
  %i.abo = icmp eq i32 %i.aah, %i.abn
  %or.cond193.1.i = select i1 %i.abe, i1 %i.abo, i1 false
  br i1 %or.cond193.1.i, label %bb.cg, label %.thread.i

bb.cg:                                            ; preds = %bb.cf
  %i.abp = shl i64 %i.abm, 32
  %sext190.1.i = add i64 %i.abp, -4294967296
  %i.abq = ashr exact i64 %sext190.1.i, 32
  %i.abr = getelementptr inbounds i8, ptr %i.abl, i64 %i.abq
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !21
  %i.abt = icmp eq i8 %i.abs, 51
  br i1 %i.abt, label %bb.ch, label %.thread.i

.thread.i:                                        ; preds = %bb.cg, %bb.cf
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %.pre-phi.i
  store i32 %.0165251.i, ptr %i.abu, align 4, !tbaa !64
  br label %.loopexit237.i

bb.ch:                                            ; preds = %bb.cg
  %i.abv = call i32 @strncmp(ptr noundef nonnull %i.aae, ptr noundef nonnull %i.abl, i64 noundef %i.aaj) #18
  %i.abw = icmp eq i32 %i.abv, 0
  %i.abx = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %.pre-phi.i
  store i32 %.0165251.i, ptr %i.abx, align 4, !tbaa !64
  br i1 %i.abw, label %.preheader234.preheader.i, label %.loopexit237.i

.thread230.i:                                     ; preds = %bb.cc, %.thread220.i
  %i.aby = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %.pre-phi.i
  store i32 %.0165251.i, ptr %i.aby, align 4, !tbaa !64
  br label %.loopexit237.i

.preheader234.preheader.i:                        ; preds = %bb.ch
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.aan
  store i32 %.0165251.i, ptr %i.abz, align 4, !tbaa !64
  %i.aca = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.abf
  store i32 %.0165251.i, ptr %i.aca, align 4, !tbaa !64
  %i.acb = add nsw i32 %.3.ph.i, 2
  br label %.loopexit237.i

.loopexit237.i:                                   ; preds = %bb.cb, %.preheader234.preheader.i, %.thread230.i, %bb.ch, %.thread.i
  %.4.i = phi i32 [ %.3.ph.i, %bb.ch ], [ %i.acb, %.preheader234.preheader.i ], [ %.3.ph.i, %.thread230.i ], [ %.3.ph.i, %.thread.i ], [ %i.xa, %bb.cb ]
  %i.acc = add nuw nsw i32 %.0165251.i, 1         ; 2 uses
  %i.acd = add nsw i32 %.4.i, 1                   ; 2 uses
  %i.ace = icmp slt i32 %i.acd, %i.sq
  br i1 %i.ace, label %bb.bt, label %.loopexit238.i, !llvm.loop !52

.lr.ph.i216:                                      ; preds = %.lr.ph.i216.preheader, %.lr.ph.i216
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i218, %.lr.ph.i216 ], [ %indvars.iv.i217.ph, %.lr.ph.i216.preheader ] ; 3 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %indvars.iv.i217
  %i.acg = trunc nuw nsw i64 %indvars.iv.i217 to i32
  store i32 %i.acg, ptr %i.acf, align 4, !tbaa !64
  %indvars.iv.next.i218 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i219 = icmp eq i64 %indvars.iv.next.i218, %wide.trip.count.i215
  br i1 %exitcond.not.i219, label %.loopexit238.i, label %.lr.ph.i216, !llvm.loop !53

.loopexit238.thread.i:                            ; preds = %_ZL10dump_equivP8_IO_FILEiPP7t_equiv.exit.i, %.preheader239.i
  %.1166.ph.i = phi i32 [ 0, %_ZL10dump_equivP8_IO_FILEiPP7t_equiv.exit.i ], [ %i.sq, %.preheader239.i ] ; 2 uses
  %i.ach = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.st
  store i32 %.1166.ph.i, ptr %i.ach, align 4, !tbaa !64
  br label %._crit_edge.i

.loopexit238.i:                                   ; preds = %.lr.ph.i216, %.loopexit237.i, %middle.block, %vec.epilog.middle.block
  %.1166.i = phi i32 [ %i.sq, %middle.block ], [ %i.acc, %.loopexit237.i ], [ %i.sq, %vec.epilog.middle.block ], [ %i.sq, %.lr.ph.i216 ] ; 3 uses
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.sl, i64 %i.st
  store i32 %.1166.i, ptr %i.aci, align 4, !tbaa !64
  %i.acj = load ptr, ptr @debug, align 8, !tbaa !76
  %.not183.i = icmp ne ptr %i.acj, null
  %i.ack = icmp sgt i32 %i.sq, 0                  ; 2 uses
  %or.cond259.i = and i1 %i.ack, %.not183.i
  br i1 %or.cond259.i, label %.lr.ph254.i.a, label %.loopexit.i220

.lr.ph254.i.a:                                    ; preds = %.loopexit238.i
  %i.acl = getelementptr inbounds nuw i8, ptr %5, i64 2352
  %i.acm = getelementptr inbounds nuw i8, ptr %5, i64 2360
  %i.acn = getelementptr inbounds nuw i8, ptr %5, i64 2392
  %wide.trip.count286.i = zext nneg i32 %i.sq to i64 ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ci, %.lr.ph254.i.a
  %indvars.iv283.i = phi i64 [ 0, %.lr.ph254.i.a ], [ %indvars.iv.next284.i, %bb.ci ] ; 3 uses
  %i.aco = load ptr, ptr %i.acl, align 8, !tbaa !113
  %i.acp = getelementptr inbounds nuw [4 x i8], ptr %i.sr, i64 %indvars.iv283.i
  %i.acq = load i32, ptr %i.acp, align 4, !tbaa !64
  %i.acr = sext i32 %i.acq to i64                 ; 2 uses
  %i.acs = getelementptr inbounds [36 x i8], ptr %i.aco, i64 %i.acr
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 24
  %i.acu = load i32, ptr %i.act, align 4, !tbaa !117 ; 2 uses
  %i.acv = load ptr, ptr @debug, align 8, !tbaa !76
  %i.acw = load ptr, ptr %i.acm, align 8, !tbaa !110
  %i.acx = getelementptr inbounds [8 x i8], ptr %i.acw, i64 %i.acr
  %i.acy = load ptr, ptr %i.acx, align 8, !tbaa !112
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !15
  %i.ada = load ptr, ptr %i.acn, align 8, !tbaa !118
  %i.adb = sext i32 %i.acu to i64
  %i.adc = getelementptr inbounds [32 x i8], ptr %i.ada, i64 %i.adb
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !120
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !15
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %indvars.iv283.i
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !15 ; 2 uses
  %.not187.i = icmp eq ptr %i.adg, null
  %spec.select.i = select i1 %.not187.i, ptr @.str.90, ptr %i.adg
  %i.adh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.acv, ptr noundef nonnull @.str.89, ptr noundef %i.acz, ptr noundef %i.ade, i32 noundef %i.acu, ptr noundef nonnull %spec.select.i) #14 ; 0 uses
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %exitcond287.not.i = icmp eq i64 %indvars.iv.next284.i, %wide.trip.count286.i
  br i1 %exitcond287.not.i, label %.lr.ph256.i.a, label %bb.ci, !llvm.loop !54
end_hunk_0
