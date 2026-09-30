Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/osq?download=true
inline.NumInlined: 35
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@osq_receive_frame:bb.a
  store i32 %i.uv, ptr %i.uj, align 4, !tbaa !97
  %i.uw = getelementptr inbounds nuw i8, ptr %i.jd, i64 32 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !98
  %i.uy = add i32 %i.ux, 1                        ; 2 uses
  store i32 %i.uy, ptr %i.uw, align 8, !tbaa !98
  %i.uz = icmp ugt i32 %i.uv, 2
  br i1 %i.uz, label %bb.bj, label %update_stats.exit.i.i

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %i.uj, align 4, !tbaa !97
  br label %update_stats.exit.i.i

update_stats.exit.i.i:                            ; preds = %bb.bj, %bb.bi
  %i.va = fcmp nsz une double %i.ut, 0.000000e+00
  br i1 %i.va, label %bb.bk, label %update_residue_parameter.exit.i.i

bb.bk:                                            ; preds = %update_stats.exit.i.i
  %i.vb = uitofp nsz i32 %i.uy to double
  %i.vc = fdiv nsz double %i.ut, %i.vb
  %i.vd = fptosi double %i.vc to i32
  %i.ve = shl i32 %i.vd, 1
  %i.vf = add i32 %i.ve, -2                       ; 3 uses
  %i.vg = icmp ugt i32 %i.vf, 65535               ; 2 uses
  %i.vh = lshr i32 %i.vf, 16
  %spec.select.i.i195.i.i = select i1 %i.vg, i32 %i.vh, i32 %i.vf ; 3 uses
  %spec.select11.i.i.i.i = select i1 %i.vg, i32 16, i32 0 ; 2 uses
  %.not.i.i.i.i = icmp samesign ult i32 %spec.select.i.i195.i.i, 256 ; 2 uses
  %i.vi = lshr i32 %spec.select.i.i195.i.i, 8
  %i.vj = or disjoint i32 %spec.select11.i.i.i.i, 8
  %.110.i.i.i.i = select i1 %.not.i.i.i.i, i32 %spec.select.i.i195.i.i, i32 %i.vi
  %.1.i.i.i.i = select i1 %.not.i.i.i.i, i32 %spec.select11.i.i.i.i, i32 %i.vj
  %i.vk = zext nneg i32 %.110.i.i.i.i to i64
  %i.vl = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.vk
  %i.vm = load i8, ptr %i.vl, align 1, !tbaa !29
  %i.vn = zext i8 %i.vm to i32
  %i.vo = add nuw nsw i32 %.1.i.i.i.i, %i.vn      ; 2 uses
  %i.vp = icmp samesign ugt i32 %i.vo, 29
  br i1 %i.vp, label %bb.bl, label %update_residue_parameter.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.vq = fdiv nsz double %i.ut, f0x3FF715478FE189F3
  %i.vr = fadd nsz double %i.vq, 5.000000e-01
  %i.vs = tail call nsz double @llvm.floor.f64(double %i.vr) ; 3 uses
  %i.vt = fcmp nsz ugt double %i.vs, 1.000000e+00
  br i1 %i.vt, label %bb.bm, label %update_residue_parameter.exit.i.i

bb.bm:                                            ; preds = %bb.bl
  %.inv.i.i.i = fcmp nsz oge double %i.vs, 3.100000e+01
  %spec.select15.i.i.i = select i1 %.inv.i.i.i, double 3.100000e+01, double %i.vs
  %spec.select.i.i.i = fptosi double %spec.select15.i.i.i to i32
  br label %update_residue_parameter.exit.i.i

update_residue_parameter.exit.i.i:                ; preds = %bb.bm, %bb.bl, %bb.bk, %update_stats.exit.i.i
  %.011.i.i.i = phi i32 [ 0, %update_stats.exit.i.i ], [ %i.vo, %bb.bk ], [ %spec.select.i.i.i, %bb.bm ], [ 1, %bb.bl ]
  %i.vu = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  store i32 %.011.i.i.i, ptr %i.vu, align 8, !tbaa !92
  br label %bb.bn

bb.bn:                                            ; preds = %update_residue_parameter.exit.i.i, %bb.bh
  %or.cond7.i.i = and i1 %or.cond.i80.i, %i.jc
  br i1 %or.cond7.i.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.vv = load ptr, ptr %i.it, align 8, !tbaa !41
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.vv, i64 %indvars.iv14.i.i
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 20
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !96
  %i.vz = load i32, ptr %i.ou, align 4, !tbaa !96
  %i.wa = add i32 %i.vz, %i.vy
  store i32 %i.wa, ptr %i.ou, align 4, !tbaa !96
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  br i1 %.not189.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.wb = load i32, ptr %i.uc, align 4, !tbaa !96
  %i.wc = sdiv i32 %i.wb, 256
  store i32 %i.wc, ptr %i.uc, align 4, !tbaa !96
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %..critedge192_crit_edge.i.i, label %bb.y, !llvm.loop !60

..critedge192_crit_edge.i.i:                      ; preds = %bb.br
  %indvars.iv.next15.i.i = add nuw nsw i64 %indvars.iv14.i.i, 1 ; 2 uses
  %exitcond18.not.i.i = icmp eq i64 %indvars.iv.next15.i.i, %wide.trip.count17.i.i
  br i1 %exitcond18.not.i.i, label %.loopexit.i, label %.preheader.i79.i, !llvm.loop !61

.loopexit.i:                                      ; preds = %..critedge192_crit_edge.i.i, %.preheader.lr.ph.i.i, %.thread.i
  %.val.i83.i = load i32, ptr %i.bw, align 8, !tbaa !86 ; 2 uses
  %i.wd = sub nsw i32 0, %.val.i83.i
  %i.we = and i32 %i.wd, 7                        ; 2 uses
  %.not.i84.i = icmp eq i32 %i.we, 0
  br i1 %.not.i84.i, label %align_get_bits.exit.i, label %bb.bs

bb.bs:                                            ; preds = %.loopexit.i
  %i.wf = load i32, ptr %i.by, align 8, !tbaa !85
  %i.wg = add i32 %i.we, %.val.i83.i
  %i.wh = tail call i32 @llvm.umin.i32(i32 %i.wf, i32 %i.wg)
  store i32 %i.wh, ptr %i.bw, align 8, !tbaa !86
  br label %align_get_bits.exit.i

align_get_bits.exit.i:                            ; preds = %bb.bs, %.loopexit.i
  %i.wi = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !35
  switch i32 %i.wj, label %osq_decode_block.exit [
    i32 5, label %.preheader.i
    i32 6, label %.preheader95.i
    i32 7, label %.preheader97.i
  ]

.preheader97.i:                                   ; preds = %align_get_bits.exit.i
  br i1 %.not100.i, label %.lr.ph105.i, label %.loopexit

.lr.ph105.i:                                      ; preds = %.preheader97.i
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !99
  %i.wm = getelementptr inbounds nuw i8, ptr %i.bt, i64 184
  %i.wn = icmp sgt i32 %i.bs, 0
  br i1 %i.wn, label %.lr.ph103.preheader.i, label %.loopexit

.lr.ph103.preheader.i:                            ; preds = %.lr.ph105.i
  %wide.trip.count130.i = zext nneg i32 %i.br to i64
  %wide.trip.count125.i = zext nneg i32 %i.bs to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bs, 8
  %n.vec = and i64 %wide.trip.count125.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count125.i
  %xtraiter = and i64 %wide.trip.count125.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph103.i

.preheader95.i:                                   ; preds = %align_get_bits.exit.i
  br i1 %.not100.i, label %.lr.ph111.i, label %.loopexit

.lr.ph111.i:                                      ; preds = %.preheader95.i
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !99
  %i.wq = getelementptr inbounds nuw i8, ptr %i.bt, i64 184
  %i.wr = icmp sgt i32 %i.bs, 0
  br i1 %i.wr, label %.lr.ph108.preheader.i, label %.loopexit

.lr.ph108.preheader.i:                            ; preds = %.lr.ph111.i
  %wide.trip.count140.i = zext nneg i32 %i.br to i64
  %wide.trip.count135.i = zext nneg i32 %i.bs to i64 ; 3 uses
  %min.iters.check162 = icmp ult i32 %i.bs, 8
  %n.vec164 = and i64 %wide.trip.count135.i, 2147483640 ; 3 uses
  %cmp.n171 = icmp eq i64 %n.vec164, %wide.trip.count135.i
  br label %.lr.ph108.i

.preheader.i:                                     ; preds = %align_get_bits.exit.i
  br i1 %.not100.i, label %.lr.ph117.i, label %.loopexit

.lr.ph117.i:                                      ; preds = %.preheader.i
  %i.ws = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.wt = getelementptr inbounds nuw i8, ptr %i.bt, i64 184
  %i.wu = icmp sgt i32 %i.bs, 0
  br i1 %i.wu, label %.lr.ph114.preheader.i, label %.loopexit

.lr.ph114.preheader.i:                            ; preds = %.lr.ph117.i
  %wide.trip.count150.i = zext nneg i32 %i.br to i64
  %wide.trip.count145.i = zext nneg i32 %i.bs to i64 ; 7 uses
  %i.wv = shl nuw nsw i64 %wide.trip.count145.i, 2
  %min.iters.check176 = icmp ult i32 %i.bs, 8
  %n.vec178 = and i64 %wide.trip.count145.i, 2147483640 ; 3 uses
  %cmp.n185 = icmp eq i64 %n.vec178, %wide.trip.count145.i
  %xtraiter193 = and i64 %wide.trip.count145.i, 1
  %lcmp.mod194.not = icmp eq i64 %xtraiter193, 0
  %i.ww = add nsw i64 %wide.trip.count145.i, -1
  br label %.lr.ph114.i

.lr.ph114.i:                                      ; preds = %._crit_edge115.i, %.lr.ph114.preheader.i
  %indvars.iv147.i = phi i64 [ 0, %.lr.ph114.preheader.i ], [ %indvars.iv.next148.i, %._crit_edge115.i ] ; 3 uses
  %i.wx = load ptr, ptr %i.ws, align 8, !tbaa !99
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wx, i64 %indvars.iv147.i
  %i.wz = load ptr, ptr %i.wy, align 8, !tbaa !100 ; 6 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wt, i64 %indvars.iv147.i
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !41 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 20 ; 5 uses
  br i1 %min.iters.check176, label %scalar.ph175.preheader, label %vector.memcheck173

vector.memcheck173:                               ; preds = %.lr.ph114.i
  %scevgep = getelementptr i8, ptr %i.wz, i64 %wide.trip.count145.i
  %i.xd = getelementptr i8, ptr %i.xb, i64 %i.wv
  %scevgep174 = getelementptr i8, ptr %i.xd, i64 20
  %bound0 = icmp ult ptr %i.wz, %scevgep174
  %bound1 = icmp ult ptr %i.xc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph175.preheader, label %vector.body179

vector.body179:                                   ; preds = %vector.memcheck173, %vector.body179
  %index180 = phi i64 [ %index.next183, %vector.body179 ], [ 0, %vector.memcheck173 ] ; 3 uses
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %index180 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %wide.load181 = load <4 x i32>, ptr %i.xe, align 4, !tbaa !96, !alias.scope !101
  %wide.load182 = load <4 x i32>, ptr %i.xf, align 4, !tbaa !96, !alias.scope !101
  %i.xg = add <4 x i32> %wide.load181, splat (i32 128) ; 3 uses
  %i.xh = add <4 x i32> %wide.load182, splat (i32 128) ; 3 uses
  %2 = icmp ult <4 x i32> %i.xg, splat (i32 256)
  %3 = icmp ult <4 x i32> %i.xh, splat (i32 256)
  %4 = icmp sgt <4 x i32> %i.xg, splat (i32 -1)
  %5 = icmp sgt <4 x i32> %i.xh, splat (i32 -1)
  %6 = sext <4 x i1> %4 to <4 x i8>
  %7 = sext <4 x i1> %5 to <4 x i8>
  %i.xi = trunc nuw <4 x i32> %i.xg to <4 x i8>
  %i.xj = trunc nuw <4 x i32> %i.xh to <4 x i8>
  %8 = select <4 x i1> %2, <4 x i8> %i.xi, <4 x i8> %6
  %9 = select <4 x i1> %3, <4 x i8> %i.xj, <4 x i8> %7
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wz, i64 %index180 ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 4
  store <4 x i8> %8, ptr %i.xk, align 1, !tbaa !29, !alias.scope !102, !noalias !101
  store <4 x i8> %9, ptr %i.xl, align 1, !tbaa !29, !alias.scope !102, !noalias !101
  %index.next183 = add nuw i64 %index180, 8       ; 2 uses
  %i.xm = icmp eq i64 %index.next183, %n.vec178
  br i1 %i.xm, label %middle.block184, label %vector.body179, !llvm.loop !65

middle.block184:                                  ; preds = %vector.body179
  br i1 %cmp.n185, label %._crit_edge115.i, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %vector.memcheck173, %.lr.ph114.i, %middle.block184
  %indvars.iv142.i.ph = phi i64 [ 0, %vector.memcheck173 ], [ 0, %.lr.ph114.i ], [ %n.vec178, %middle.block184 ] ; 5 uses
  br i1 %lcmp.mod194.not, label %scalar.ph175.prol.loopexit, label %scalar.ph175.prol

scalar.ph175.prol:                                ; preds = %scalar.ph175.preheader
  %i.xn = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv142.i.ph
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !96
  %i.xp = add i32 %i.xo, 128                      ; 3 uses
  %.not.i.i.prol = icmp ult i32 %i.xp, 256
  %isnotneg.i.i.prol = icmp sgt i32 %i.xp, -1
  %10 = sext i1 %isnotneg.i.i.prol to i8
  %i.xq = trunc nuw i32 %i.xp to i8
  %.0.i.i81.prol = select i1 %.not.i.i.prol, i8 %i.xq, i8 %10
  %i.xr = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv142.i.ph
  store i8 %.0.i.i81.prol, ptr %i.xr, align 1, !tbaa !29
  %indvars.iv.next143.i.prol = or disjoint i64 %indvars.iv142.i.ph, 1
  br label %scalar.ph175.prol.loopexit

scalar.ph175.prol.loopexit:                       ; preds = %scalar.ph175.prol, %scalar.ph175.preheader
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %scalar.ph175.preheader ], [ %indvars.iv.next143.i.prol, %scalar.ph175.prol ]
  %i.xs = icmp eq i64 %indvars.iv142.i.ph, %i.ww
  br i1 %i.xs, label %._crit_edge115.i, label %scalar.ph175

._crit_edge115.i:                                 ; preds = %scalar.ph175.prol.loopexit, %scalar.ph175, %middle.block184
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1 ; 2 uses
  %exitcond151.not.i = icmp eq i64 %indvars.iv.next148.i, %wide.trip.count150.i
  br i1 %exitcond151.not.i, label %.loopexit, label %.lr.ph114.i, !llvm.loop !66

scalar.ph175:                                     ; preds = %scalar.ph175.prol.loopexit, %scalar.ph175
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.1, %scalar.ph175 ], [ %indvars.iv142.i.unr, %scalar.ph175.prol.loopexit ] ; 4 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv142.i
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !96
  %i.xv = add i32 %i.xu, 128                      ; 3 uses
  %.not.i.i = icmp ult i32 %i.xv, 256
  %isnotneg.i.i = icmp sgt i32 %i.xv, -1
  %11 = sext i1 %isnotneg.i.i to i8
  %i.xw = trunc nuw i32 %i.xv to i8
  %.0.i.i81 = select i1 %.not.i.i, i8 %i.xw, i8 %11
  %i.xx = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv142.i
  store i8 %.0.i.i81, ptr %i.xx, align 1, !tbaa !29
  %indvars.iv.next143.i = add nuw nsw i64 %indvars.iv142.i, 1 ; 2 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xc, i64 %indvars.iv.next143.i
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !96
  %i.ya = add i32 %i.xz, 128                      ; 3 uses
  %.not.i.i.1 = icmp ult i32 %i.ya, 256
  %isnotneg.i.i.1 = icmp sgt i32 %i.ya, -1
  %12 = sext i1 %isnotneg.i.i.1 to i8
  %i.yb = trunc nuw i32 %i.ya to i8
  %.0.i.i81.1 = select i1 %.not.i.i.1, i8 %i.yb, i8 %12
  %i.yc = getelementptr inbounds nuw i8, ptr %i.wz, i64 %indvars.iv.next143.i
  store i8 %.0.i.i81.1, ptr %i.yc, align 1, !tbaa !29
  %indvars.iv.next143.i.1 = add nuw nsw i64 %indvars.iv142.i, 2 ; 2 uses
  %exitcond146.not.i.1 = icmp eq i64 %indvars.iv.next143.i.1, %wide.trip.count145.i
  br i1 %exitcond146.not.i.1, label %._crit_edge115.i, label %scalar.ph175, !llvm.loop !67

.lr.ph108.i:                                      ; preds = %._crit_edge109.i, %.lr.ph108.preheader.i
  %indvars.iv137.i = phi i64 [ 0, %.lr.ph108.preheader.i ], [ %indvars.iv.next138.i, %._crit_edge109.i ] ; 3 uses
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv137.i
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !100 ; 2 uses
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.wq, i64 %indvars.iv137.i
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !41
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 20 ; 2 uses
  br i1 %min.iters.check162, label %scalar.ph161.preheader, label %vector.body165

vector.body165:                                   ; preds = %.lr.ph108.i, %vector.body165
  %index166 = phi i64 [ %index.next169, %vector.body165 ], [ 0, %.lr.ph108.i ] ; 3 uses
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %index166 ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %wide.load167 = load <4 x i32>, ptr %i.yi, align 4, !tbaa !96
  %wide.load168 = load <4 x i32>, ptr %i.yj, align 4, !tbaa !96
  %i.yk = trunc <4 x i32> %wide.load167 to <4 x i16>
  %i.yl = trunc <4 x i32> %wide.load168 to <4 x i16>
  %i.ym = getelementptr inbounds nuw [2 x i8], ptr %i.ye, i64 %index166 ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 8
  store <4 x i16> %i.yk, ptr %i.ym, align 2, !tbaa !106
  store <4 x i16> %i.yl, ptr %i.yn, align 2, !tbaa !106
  %index.next169 = add nuw i64 %index166, 8       ; 2 uses
  %i.yo = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.yo, label %middle.block170, label %vector.body165, !llvm.loop !68

middle.block170:                                  ; preds = %vector.body165
  br i1 %cmp.n171, label %._crit_edge109.i, label %scalar.ph161.preheader

scalar.ph161.preheader:                           ; preds = %.lr.ph108.i, %middle.block170
  %indvars.iv132.i.ph = phi i64 [ 0, %.lr.ph108.i ], [ %n.vec164, %middle.block170 ]
  br label %scalar.ph161

._crit_edge109.i:                                 ; preds = %scalar.ph161, %middle.block170
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond141.not.i = icmp eq i64 %indvars.iv.next138.i, %wide.trip.count140.i
  br i1 %exitcond141.not.i, label %.loopexit, label %.lr.ph108.i, !llvm.loop !69

scalar.ph161:                                     ; preds = %scalar.ph161.preheader, %scalar.ph161
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %scalar.ph161 ], [ %indvars.iv132.i.ph, %scalar.ph161.preheader ] ; 3 uses
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.yh, i64 %indvars.iv132.i
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !96
  %i.yr = trunc i32 %i.yq to i16
  %i.ys = getelementptr inbounds nuw [2 x i8], ptr %i.ye, i64 %indvars.iv132.i
  store i16 %i.yr, ptr %i.ys, align 2, !tbaa !106
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i
  br i1 %exitcond136.not.i, label %._crit_edge109.i, label %scalar.ph161, !llvm.loop !70

.lr.ph103.i:                                      ; preds = %._crit_edge.i, %.lr.ph103.preheader.i
  %indvars.iv127.i = phi i64 [ 0, %.lr.ph103.preheader.i ], [ %indvars.iv.next128.i, %._crit_edge.i ] ; 3 uses
  %i.yt = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %indvars.iv127.i
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !100 ; 7 uses
  %i.yv = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv127.i
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !41 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 20 ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph103.i
  %i.yy = ptrtoaddr ptr %i.yw to i64
  %i.yz = ptrtoaddr ptr %i.yu to i64
  %i.za = sub i64 %i.yz, %i.yy
  %i.zb = add i64 %i.za, -21
  %diff.check = icmp ult i64 %i.zb, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %index ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %wide.load = load <4 x i32>, ptr %i.zc, align 4, !tbaa !96
  %wide.load160 = load <4 x i32>, ptr %i.zd, align 4, !tbaa !96
  %i.ze = mul <4 x i32> %wide.load, %broadcast.splat
  %i.zf = mul <4 x i32> %wide.load160, %broadcast.splat
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %index ; 2 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 16
  store <4 x i32> %i.ze, ptr %i.zg, align 4, !tbaa !96
  store <4 x i32> %i.zf, ptr %i.zh, align 4, !tbaa !96
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zi = icmp eq i64 %index.next, %n.vec
  br i1 %i.zi, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph103.i, %middle.block
  %indvars.iv122.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph103.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv122.i.prol = phi i64 [ %indvars.iv.next123.i.prol, %scalar.ph.prol ], [ %indvars.iv122.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv122.i.prol
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !96
  %i.zl = mul i32 %i.zk, %i.bv
  %i.zm = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv122.i.prol
  store i32 %i.zl, ptr %i.zm, align 4, !tbaa !96
  %indvars.iv.next123.i.prol = add nuw nsw i64 %indvars.iv122.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !72

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv122.i.unr = phi i64 [ %indvars.iv122.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next123.i.prol, %scalar.ph.prol ]
  %i.zn = sub nsw i64 %indvars.iv122.i.ph, %wide.trip.count125.i
  %i.zo = icmp ugt i64 %i.zn, -4
  br i1 %i.zo, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next128.i, %wide.trip.count130.i
  br i1 %exitcond131.not.i, label %.loopexit, label %.lr.ph103.i, !llvm.loop !73

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i.3, %scalar.ph ], [ %indvars.iv122.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.zp = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv122.i
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !96
  %i.zr = mul i32 %i.zq, %i.bv
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv122.i
  store i32 %i.zr, ptr %i.zs, align 4, !tbaa !96
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv.next123.i
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !96
  %i.zv = mul i32 %i.zu, %i.bv
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv.next123.i
  store i32 %i.zv, ptr %i.zw, align 4, !tbaa !96
  %indvars.iv.next123.i.1 = add nuw nsw i64 %indvars.iv122.i, 2 ; 2 uses
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv.next123.i.1
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !96
  %i.zz = mul i32 %i.zy, %i.bv
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv.next123.i.1
  store i32 %i.zz, ptr %i.aaa, align 4, !tbaa !96
  %indvars.iv.next123.i.2 = add nuw nsw i64 %indvars.iv122.i, 3 ; 2 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv.next123.i.2
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !96
  %i.aad = mul i32 %i.aac, %i.bv
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv.next123.i.2
  store i32 %i.aad, ptr %i.aae, align 4, !tbaa !96
  %indvars.iv.next123.i.3 = add nuw nsw i64 %indvars.iv122.i, 4 ; 2 uses
  %exitcond126.not.i.3 = icmp eq i64 %indvars.iv.next123.i.3, %wide.trip.count125.i
  br i1 %exitcond126.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !74

do_decode.exit.sink.split.i:                      ; preds = %get_urice.exit58.i.i, %bb.u, %get_urice.exit50.i.i, %get_urice.exit42.i.i, %get_sbits_long.exit.i.i
  %.str.3.sink.i = phi ptr [ @.str.5, %get_sbits_long.exit.i.i ], [ @.str.3, %get_urice.exit42.i.i ], [ @.str.3, %get_urice.exit50.i.i ], [ @.str.3, %bb.u ], [ @.str.3, %get_urice.exit58.i.i ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.str.3.sink.i) #8
  br label %osq_decode_block.exit

.loopexit:                                        ; preds = %._crit_edge.i, %._crit_edge109.i, %._crit_edge115.i, %.preheader.i, %.preheader97.i, %.preheader95.i, %.lr.ph117.i, %.lr.ph111.i, %.lr.ph105.i
  %i.aaf = load i32, ptr %i.bb, align 8, !tbaa !82
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = load i64, ptr %i.ax, align 8, !tbaa !36
  %i.aai = sub i64 %i.aah, %i.aag
  store i64 %i.aai, ptr %i.ax, align 8, !tbaa !36
  %.val = load i32, ptr %i.bp, align 8, !tbaa !86
  %i.aaj = sdiv i32 %.val, 8
  %i.aak = sext i32 %i.aaj to i64                 ; 4 uses
  %i.aal = load i64, ptr %i.c, align 8, !tbaa !43 ; 2 uses
  %i.aam = icmp ult i64 %i.aal, %i.aak
  br i1 %i.aam, label %osq_decode_block.exit, label %bb.bt

bb.bt:                                            ; preds = %.loopexit
  %i.aan = load ptr, ptr %i.bf, align 8, !tbaa !39 ; 2 uses
  %i.aao = getelementptr inbounds i8, ptr %i.aan, i64 %i.aak
  %i.aap = sub nuw i64 %i.aal, %i.aak
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aan, ptr align 1 %i.aao, i64 %i.aap, i1 false)
  %i.aaq = load i64, ptr %i.c, align 8, !tbaa !43
  %i.aar = sub i64 %i.aaq, %i.aak
  store i64 %i.aar, ptr %i.c, align 8, !tbaa !43
  br label %.thread

osq_decode_block.exit:                            ; preds = %bb.e, %bb.aq, %do_decode.exit.sink.split.i, %align_get_bits.exit.i, %.loopexit, %bb.j, %bb.i
  %.3 = phi i32 [ %i.bd, %bb.i ], [ -1094995529, %bb.j ], [ -1094995529, %.loopexit ], [ -558323010, %align_get_bits.exit.i ], [ -1094995529, %do_decode.exit.sink.split.i ], [ -1094995529, %bb.aq ], [ %i.p, %bb.e ]
  store i64 0, ptr %i.c, align 8, !tbaa !43
  %i.aas = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 0, ptr %i.aas, align 8, !tbaa !44
  %i.aat = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !42
  tail call void @av_packet_unref(ptr noundef %i.aau) #8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %.thread86, %osq_decode_block.exit, %bb.bt
  %.268 = phi i32 [ -541478725, %.thread86 ], [ 0, %bb.bt ], [ %.3, %osq_decode_block.exit ], [ -541478725, %bb.d ], [ %i.p, %bb.c ]
  ret i32 %.268
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @osq_close(ptr nofree noundef readonly captures(none) %0) #0 {
.critedge:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 0, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  tail call void @av_freep(ptr noundef nonnull %i.e) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  tail call void @av_freep(ptr noundef nonnull %i.f) #8
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @osq_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store i64 0, ptr %i.c, align 8, !tbaa !43
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store i32 0, ptr %i.d, align 8, !tbaa !44
  ret void
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ff_decode_get_packet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @av_packet_unref(ptr noundef) local_unnamed_addr #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!5, !5, i64 0}
!30 = !{!27, !6, i64 356}
!31 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!32 = !{!"p1 _ZTS8AVPacket", !9, i64 0}
!33 = !{!"OSQContext", !31, i64 0, !5, i64 24, !14, i64 136, !13, i64 144, !13, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !13, i64 176, !5, i64 184, !32, i64 200, !6, i64 208}
!34 = !{!33, !6, i64 160}
!35 = !{!27, !6, i64 348}
!36 = !{!33, !13, i64 176}
!37 = !{!33, !6, i64 168}
!38 = !{!33, !13, i64 144}
!39 = !{!33, !14, i64 136}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!24, !24, i64 0}
!42 = !{!33, !32, i64 200}
!43 = !{!33, !13, i64 152}
!44 = !{!33, !6, i64 208}
!45 = distinct !{!45, !40}
!46 = !{!27, !6, i64 80}
!47 = !{!27, !14, i64 72}
!48 = !{!27, !6, i64 344}
!49 = !{!27, !6, i64 352}
!50 = !{!27, !6, i64 652}
!51 = !{!27, !12, i64 40}
!52 = !{!"p1 _ZTS9FramePool", !9, i64 0}
!53 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!54 = !{!"p1 _ZTS12AVBSFContext", !9, i64 0}
!55 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!56 = !{!"AVCodecInternal", !6, i64 0, !6, i64 4, !6, i64 8, !52, i64 16, !53, i64 24, !9, i64 32, !32, i64 40, !54, i64 48, !32, i64 56, !14, i64 64, !6, i64 72, !9, i64 80, !55, i64 88, !55, i64 96, !6, i64 104, !6, i64 108, !9, i64 112, !6, i64 120, !32, i64 128, !55, i64 136, !6, i64 144, !6, i64 148}
!57 = !{!56, !32, i64 40}
!58 = distinct !{!58, !40}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !40, !103, !104}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40, !103}
!68 = distinct !{!68, !40, !103, !104}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40, !104, !103}
!71 = distinct !{!71, !40, !103, !104}
!72 = distinct !{!72, !107}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !40, !103}
!75 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!76 = !{!75, !14, i64 24}
!77 = !{!75, !6, i64 32}
!78 = !{!"p2 omnipotent char", !25, i64 0}
!79 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!80 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!81 = !{!"AVFrame", !5, i64 0, !5, i64 64, !78, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !79, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !80, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!82 = !{!81, !6, i64 112}
!83 = !{!31, !14, i64 0}
!84 = !{!31, !6, i64 12}
!85 = !{!31, !6, i64 16}
!86 = !{!31, !6, i64 8}
!87 = !{!"double", !5, i64 0}
!88 = !{!"OSQChannel", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !5, i64 16, !6, i64 28, !6, i64 32, !87, i64 40, !6, i64 48}
!89 = !{!88, !6, i64 48}
!90 = !{!88, !6, i64 0}
!91 = !{!88, !6, i64 4}
!92 = !{!88, !6, i64 8}
!93 = !{!88, !6, i64 12}
!94 = !{!88, !87, i64 40}
!95 = !{!33, !6, i64 164}
!96 = !{!6, !6, i64 0}
!97 = !{!88, !6, i64 28}
!98 = !{!88, !6, i64 32}
!99 = !{!81, !78, i64 96}
!100 = !{!14, !14, i64 0}
!101 = !{!63}
!102 = !{!64}
!103 = !{!"llvm.loop.isvectorized", i32 1}
!104 = !{!"llvm.loop.unroll.runtime.disable"}
!105 = !{!"short", !5, i64 0}
!106 = !{!105, !105, i64 0}
!107 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
