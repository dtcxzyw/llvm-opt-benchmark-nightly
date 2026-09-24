Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/emit?download=true
inline.NumInlined: 362
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@emit_edge:bb.a
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 176
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !49
  %i.uh = fmul nsz double %i.ug, 5.000000e-01
  %i.ui = call nsz double @llvm.maxnum.f64(double %i.uh, double 2.000000e+00)
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.uk = load i64, ptr %i.uj, align 8, !tbaa !195 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %15, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %16, i8 0, i64 48, i1 false)
  %.not421.i = icmp eq i64 %i.uk, 0
  br i1 %.not421.i, label %._crit_edge.i77, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.gs
  %i.ul = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.un = getelementptr inbounds nuw i8, ptr %11, i64 48
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ur = insertelement <2 x double> poison, double %i.ui, i64 0
  %i.us = shufflevector <2 x double> %i.ur, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.gt

._crit_edge.i77:                                  ; preds = %map_output_bspline.exit.i, %bb.gs
  %i.ut = and i32 %i.fx, 8192
  %.not354.i = icmp eq i32 %i.ut, 0
  br i1 %.not354.i, label %.preheader.i, label %bb.hi

.preheader.i:                                     ; preds = %._crit_edge.i77
  %i.uu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %.val416.i = load i64, ptr %i.uu, align 8, !tbaa !109
  %.not422.i = icmp eq i64 %.val416.i, 0
  br i1 %.not422.i, label %._crit_edge420.i, label %.lr.ph419.i

bb.gt:                                            ; preds = %map_output_bspline.exit.i, %.lr.ph.i
  %.0244415.i = phi i64 [ 0, %.lr.ph.i ], [ %i.yi, %map_output_bspline.exit.i ] ; 2 uses
  %i.uv = load ptr, ptr %i.ty, align 8, !tbaa !196
  %i.uw = getelementptr inbounds nuw [56 x i8], ptr %i.uv, i64 %.0244415.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !198
  %i.uz = add i64 %i.uy, -1                       ; 2 uses
  %i.va = udiv i64 %i.uz, 3
  %.not.i412.i = icmp ult i64 %i.uz, 3
  br i1 %.not.i412.i, label %map_output_bspline.exit.i, label %.preheader46.i.i

.preheader46.i.i:                                 ; preds = %bb.gt, %.preheader46.i.i
  %.03748.i.i = phi i64 [ %i.vg, %.preheader46.i.i ], [ 0, %bb.gt ] ; 2 uses
  %i.vb = load ptr, ptr %i.uw, align 8, !tbaa !199
  %.idx.i.i = mul nuw i64 %.03748.i.i, 48
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.idx.i.i ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %i.vc, i64 16, i1 false), !tbaa.struct !120
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ul, ptr noundef nonnull align 8 dereferenceable(16) %i.vd, i64 16, i1 false), !tbaa.struct !120
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.um, ptr noundef nonnull align 8 dereferenceable(16) %i.ve, i64 16, i1 false), !tbaa.struct !120
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.un, ptr noundef nonnull align 8 dereferenceable(16) %i.vf, i64 16, i1 false), !tbaa.struct !120
  call fastcc void @approx_bezier(ptr noundef %11, ptr noundef %10)
  %i.vg = add nuw nsw i64 %.03748.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.vg, %i.va
  br i1 %exitcond.not.i.i, label %.preheader45.i.i, label %.preheader46.i.i, !llvm.loop !341

.preheader45.i.i:                                 ; preds = %.preheader46.i.i
  %.val4349.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109 ; 2 uses
  %.not55.i.i = icmp eq i64 %.val4349.pre.i.i, 0
  br i1 %.not55.i.i, label %map_output_bspline.exit.i, label %.lr.ph.i.i

.preheader.i.i:                                   ; preds = %bb.he
  %i.vh = icmp eq i64 %.val43.i.i, 0
  br i1 %i.vh, label %map_output_bspline.exit.i, label %.lr.ph54.i.i

.lr.ph.i.i:                                       ; preds = %.preheader45.i.i, %bb.he
  %.val4262.i.i = phi i64 [ %.val43.i.i, %bb.he ], [ %.val4349.pre.i.i, %.preheader45.i.i ]
  %.03451.i.i = phi i64 [ %.1.i.i, %bb.he ], [ 0, %.preheader45.i.i ] ; 5 uses
  %.03550.i.i = phi i64 [ %i.vn, %bb.he ], [ 0, %.preheader45.i.i ] ; 4 uses
  %i.vi = icmp eq i64 %.03550.i.i, 0
  %.pre58.pre63.i.i = load ptr, ptr %10, align 8, !tbaa !14 ; 2 uses
  br i1 %i.vi, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %.lr.ph.i.i
  %i.vj = add i64 %.03550.i.i, -1
  %i.vk = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %i.vj) #27
  %i.vl = getelementptr inbounds nuw [16 x i8], ptr %.pre58.pre63.i.i, i64 %i.vk
  %.val42.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109
  %.pre58.pre.i.i = load ptr, ptr %10, align 8, !tbaa !14
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gu, %.lr.ph.i.i
  %.pre58.i.i = phi ptr [ %.pre58.pre.i.i, %bb.gu ], [ %.pre58.pre63.i.i, %.lr.ph.i.i ] ; 2 uses
  %.val42.i.i = phi i64 [ %.val42.pre.i.i, %bb.gu ], [ %.val4262.i.i, %.lr.ph.i.i ]
  %i.vm = phi ptr [ %i.vl, %bb.gu ], [ null, %.lr.ph.i.i ] ; 2 uses
  %i.vn = add nuw i64 %.03550.i.i, 1              ; 5 uses
  %i.vo = icmp ult i64 %i.vn, %.val42.i.i
  br i1 %i.vo, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.vp = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %i.vn) #27
  %i.vq = getelementptr inbounds nuw [16 x i8], ptr %.pre58.i.i, i64 %i.vp
  %.pre.i.i = load ptr, ptr %10, align 8, !tbaa !14
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %i.vr = phi ptr [ %.pre.i.i, %bb.gw ], [ %.pre58.i.i, %bb.gv ]
  %i.vs = phi ptr [ %i.vq, %bb.gw ], [ null, %bb.gv ] ; 4 uses
  %i.vt = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %.03550.i.i) #27
  %i.vu = getelementptr inbounds nuw [16 x i8], ptr %i.vr, i64 %i.vt
  %i.vv = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %.03451.i.i ; 2 uses
  %i.vw = getelementptr inbounds nuw [16 x i8], ptr %13, i64 %.03451.i.i ; 2 uses
  %i.vx = load <2 x double>, ptr %i.vu, align 8   ; 7 uses
  %.not.i.i413.i = icmp eq ptr %i.vm, null
  br i1 %.not.i.i413.i, label %bb.hb, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.vy = load <2 x double>, ptr %i.vm, align 8, !tbaa !110 ; 3 uses
  %.not44.i.i.i = icmp eq ptr %i.vs, null
  br i1 %.not44.i.i.i, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.vz = load <2 x double>, ptr %i.vs, align 8, !tbaa !110
  br label %mkSegPts.exit.i.i

bb.ha:                                            ; preds = %bb.gy
  %i.wa = fsub <2 x double> %i.vx, %i.vy
  %i.wb = fmul <2 x double> %i.wa, splat (double 2.000000e+00)
  br label %mkSegPts.exit.i.i

bb.hb:                                            ; preds = %bb.gx
  %.sroa.7.0..sroa_idx26.i.i.i = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %.sroa.7.0.copyload27.i.i.i = load double, ptr %.sroa.7.0..sroa_idx26.i.i.i, align 8, !tbaa !110
  %i.wc = load <2 x double>, ptr %i.vs, align 8, !tbaa !110 ; 2 uses
  %i.wd = fsub <2 x double> %i.vx, %i.wc
  %i.we = fmul <2 x double> %i.wd, splat (double 2.000000e+00)
  %i.wf = insertelement <2 x double> %i.wc, double %.sroa.7.0.copyload27.i.i.i, i64 1
  br label %mkSegPts.exit.i.i

mkSegPts.exit.i.i:                                ; preds = %bb.hb, %bb.ha, %bb.gz
  %i.wg = phi <2 x double> [ %i.vy, %bb.gz ], [ %i.vy, %bb.ha ], [ %i.we, %bb.hb ] ; 2 uses
  %i.wh = phi <2 x double> [ %i.vz, %bb.gz ], [ %i.wb, %bb.ha ], [ %i.wf, %bb.hb ] ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.wh, %i.vx
  %i.wi = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.wj = shufflevector <2 x double> %i.wh, <2 x double> %i.wg, <2 x i32> <i32 1, i32 3>
  %i.wk = shufflevector <2 x double> %i.vx, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.wl = fsub <2 x double> %i.wj, %i.wk          ; 2 uses
  %i.wm = extractelement <2 x double> %i.wl, i64 0
  %i.wn = call double @atan2(double noundef %i.wm, double noundef %i.wi) #27
  %foldExtExtBinop342 = fsub <2 x double> %i.wg, %i.vx
  %i.wo = extractelement <2 x double> %foldExtExtBinop342, i64 0
  %i.wp = extractelement <2 x double> %i.wl, i64 1
  %i.wq = call double @atan2(double noundef %i.wp, double noundef %i.wo) #27 ; 2 uses
  %i.wr = fsub double %i.wn, %i.wq                ; 3 uses
  %i.ws = fcmp ogt double %i.wr, 0.000000e+00
  %i.wt = fadd nnan double %i.wr, f0xC01921FB54442D18
  %.0.i.i.i.i = select i1 %i.ws, double %i.wt, double %i.wr
  %i.wu = fmul double %.0.i.i.i.i, 5.000000e-01
  %i.wv = fadd double %i.wq, %i.wu                ; 2 uses
  %i.ww = call double @cos(double noundef %i.wv) #27
  %i.wx = call double @sin(double noundef %i.wv) #27
  %i.wy = insertelement <2 x double> poison, double %i.ww, i64 0
  %i.wz = insertelement <2 x double> %i.wy, double %i.wx, i64 1
  %i.xa = fmul <2 x double> %i.us, %i.wz          ; 2 uses
  %i.xb = fadd <2 x double> %i.vx, %i.xa
  store <2 x double> %i.xb, ptr %i.vv, align 16, !tbaa !110
  %i.xc = fsub <2 x double> %i.vx, %i.xa
  store <2 x double> %i.xc, ptr %i.vw, align 16, !tbaa !110
  %i.xd = add nuw nsw i64 %.03451.i.i, 1          ; 4 uses
  %.val41.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109 ; 2 uses
  %i.xe = icmp eq i64 %i.vn, %.val41.i.i
  %i.xf = icmp eq i64 %i.xd, 50
  %or.cond.i.i = select i1 %i.xe, i1 true, i1 %i.xf
  br i1 %or.cond.i.i, label %.lr.ph.i.i414.i, label %bb.he

.lr.ph.i.i414.i:                                  ; preds = %mkSegPts.exit.i.i
  %i.xg = shl nuw nsw i64 %i.xd, 1
  store i64 %i.xg, ptr %i.uo, align 8, !tbaa !393
  %i.xh = call i64 @gv_list_append_slot_(ptr noundef nonnull %16, i64 noundef 8) #27
  %i.xi = load i64, ptr %i.uo, align 8, !tbaa !393
  %i.xj = load ptr, ptr %16, align 8, !tbaa !14
  %i.xk = getelementptr inbounds nuw [8 x i8], ptr %i.xj, i64 %i.xh
  store i64 %i.xi, ptr %i.xk, align 8, !tbaa !200
  br label %bb.hc

.lr.ph31.i.i.i:                                   ; preds = %bb.hc
  %i.xl = getelementptr [16 x i8], ptr %13, i64 %i.xd
  br label %bb.hd

bb.hc:                                            ; preds = %bb.hc, %.lr.ph.i.i414.i
  %.02729.i.i.i = phi i64 [ 0, %.lr.ph.i.i414.i ], [ %i.xq, %bb.hc ] ; 3 uses
  %i.xm = getelementptr inbounds nuw [16 x i8], ptr %12, i64 %.02729.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.xm, i64 16, i1 false), !tbaa.struct !120
  %i.xn = call i64 @gv_list_append_slot_(ptr noundef nonnull %15, i64 noundef 16) #27
  %i.xo = load ptr, ptr %15, align 8, !tbaa !14
  %i.xp = getelementptr inbounds nuw [16 x i8], ptr %i.xo, i64 %i.xn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xp, ptr noundef nonnull align 8 dereferenceable(16) %i.up, i64 16, i1 false), !tbaa.struct !120
  %i.xq = add nuw i64 %.02729.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %.02729.i.i.i, %.03451.i.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph31.i.i.i, label %bb.hc, !llvm.loop !342

bb.hd:                                            ; preds = %bb.hd, %.lr.ph31.i.i.i
  %.030.i.i.i = phi i64 [ 0, %.lr.ph31.i.i.i ], [ %i.xw, %bb.hd ] ; 3 uses
  %i.xr = xor i64 %.030.i.i.i, -1
  %i.xs = getelementptr [16 x i8], ptr %i.xl, i64 %i.xr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.up, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.xs, i64 16, i1 false), !tbaa.struct !120
  %i.xt = call i64 @gv_list_append_slot_(ptr noundef nonnull %15, i64 noundef 16) #27
  %i.xu = load ptr, ptr %15, align 8, !tbaa !14
  %i.xv = getelementptr inbounds nuw [16 x i8], ptr %i.xu, i64 %i.xt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xv, ptr noundef nonnull align 8 dereferenceable(16) %i.up, i64 16, i1 false), !tbaa.struct !120
  %i.xw = add nuw i64 %.030.i.i.i, 1
  %exitcond33.not.i.i.i = icmp eq i64 %.030.i.i.i, %.03451.i.i
  br i1 %exitcond33.not.i.i.i, label %map_bspline_poly.exit.loopexit.i.i, label %bb.hd, !llvm.loop !343

map_bspline_poly.exit.loopexit.i.i:               ; preds = %bb.hd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %i.vv, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %13, ptr noundef nonnull align 16 dereferenceable(16) %i.vw, i64 16, i1 false), !tbaa.struct !120
  %.val43.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109
  br label %bb.he

bb.he:                                            ; preds = %map_bspline_poly.exit.loopexit.i.i, %mkSegPts.exit.i.i
  %.val43.i.i = phi i64 [ %.val43.pre.i.i, %map_bspline_poly.exit.loopexit.i.i ], [ %.val41.i.i, %mkSegPts.exit.i.i ] ; 3 uses
  %.1.i.i = phi i64 [ 1, %map_bspline_poly.exit.loopexit.i.i ], [ %i.xd, %mkSegPts.exit.i.i ]
  %i.xx = icmp ult i64 %i.vn, %.val43.i.i
  br i1 %i.xx, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !344

.lr.ph54.i.i:                                     ; preds = %.preheader.i.i, %bb.hh
  %.053.i.i = phi i64 [ %i.yg, %bb.hh ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.xy = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %10, i64 noundef %.053.i.i) #27
  %i.xz = load ptr, ptr %i.uq, align 8, !tbaa !395 ; 2 uses
  %magicptr.i.i = ptrtoint ptr %i.xz to i64
  switch i64 %magicptr.i.i, label %bb.hg [
    i64 1, label %bb.hf
    i64 0, label %bb.hh
  ]

bb.hf:                                            ; preds = %.lr.ph54.i.i
  %i.ya = load ptr, ptr @stderr, align 8, !tbaa !17
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.11, i64 66, i64 1, ptr %i.ya) #32 ; 0 uses
  call void @abort() #33
  unreachable

bb.hg:                                            ; preds = %.lr.ph54.i.i
  %i.yb = load ptr, ptr %10, align 8, !tbaa !14
  %i.yc = getelementptr inbounds nuw [16 x i8], ptr %i.yb, i64 %i.xy ; 2 uses
  %i.yd = load double, ptr %i.yc, align 8
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.yf = load double, ptr %i.ye, align 8
  call void %i.xz(double %i.yd, double %i.yf) #27, !inline_history !345
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %.lr.ph54.i.i
  %i.yg = add nuw i64 %.053.i.i, 1                ; 2 uses
  %.val.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !109
  %i.yh = icmp ult i64 %i.yg, %.val.i.i
  br i1 %i.yh, label %.lr.ph54.i.i, label %map_output_bspline.exit.i, !llvm.loop !346

map_output_bspline.exit.i:                        ; preds = %bb.hh, %.preheader.i.i, %.preheader45.i.i, %bb.gt
  call void @gv_list_clear_(ptr noundef nonnull %10, i64 noundef 16) #27
  call void @gv_list_free_(ptr noundef nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %i.yi = add nuw i64 %.0244415.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.yi, %i.uk
  br i1 %exitcond.not.i, label %._crit_edge.i77, label %bb.gt, !llvm.loop !347

._crit_edge420.i:                                 ; preds = %.lr.ph419.i, %.preheader.i
  %.0243.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %i.yu, %.lr.ph419.i ]
  %i.yj = load ptr, ptr %15, align 8, !tbaa !14
  %i.yk = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef 0) #27
  %i.yl = getelementptr inbounds nuw [16 x i8], ptr %i.yj, i64 %i.yk
  %i.ym = load ptr, ptr %15, align 8, !tbaa !14
  %i.yn = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef 0) #27
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.ym, i64 %i.yn
  %i.yp = call ptr @gvrender_ptf_A(ptr noundef %0, ptr noundef %i.yl, ptr noundef %i.yo, i64 noundef %.0243.lcssa.i) #27 ; 0 uses
  br label %bb.hi

.lr.ph419.i:                                      ; preds = %.preheader.i, %.lr.ph419.i
  %.0418.i = phi i64 [ %i.yv, %.lr.ph419.i ], [ 0, %.preheader.i ] ; 2 uses
  %.0243417.i = phi i64 [ %i.yu, %.lr.ph419.i ], [ 0, %.preheader.i ]
  %i.yq = load ptr, ptr %16, align 8, !tbaa !14
  %i.yr = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %16, i64 noundef %.0418.i) #27
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yq, i64 %i.yr
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !200
  %i.yu = add i64 %i.yt, %.0243417.i              ; 2 uses
  %i.yv = add nuw i64 %.0418.i, 1                 ; 2 uses
  %.val.i78 = load i64, ptr %i.uu, align 8, !tbaa !109
  %i.yw = icmp ult i64 %i.yv, %.val.i78
  br i1 %i.yw, label %.lr.ph419.i, label %._crit_edge420.i, !llvm.loop !348

bb.hi:                                            ; preds = %._crit_edge420.i, %._crit_edge.i77
  %i.yx = load ptr, ptr %15, align 8, !tbaa !14
  %i.yy = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %15, i64 noundef 0) #27
  %i.yz = getelementptr inbounds nuw [16 x i8], ptr %i.yx, i64 %i.yy
  %i.za = getelementptr inbounds nuw i8, ptr %i.fy, i64 392
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !66
  %i.zb = getelementptr inbounds nuw i8, ptr %i.fy, i64 356
  store i32 2, ptr %i.zb, align 4, !tbaa !122
  %i.zc = getelementptr inbounds nuw i8, ptr %i.fy, i64 368
  call void @gv_list_detach_(ptr noundef nonnull %15, ptr noundef nonnull %i.zc, ptr noundef null, i64 noundef 16) #27
  %i.zd = load ptr, ptr %16, align 8, !tbaa !14
  %i.ze = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %16, i64 noundef 0) #27
  %i.zf = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %i.ze
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !200
  %i.zh = getelementptr inbounds nuw i8, ptr %i.fy, i64 360
  store i64 %i.zg, ptr %i.zh, align 8, !tbaa !123
  %i.zi = getelementptr inbounds nuw i8, ptr %i.fy, i64 384
  %i.zj = getelementptr inbounds nuw i8, ptr %i.fy, i64 376
  call void @gv_list_detach_(ptr noundef nonnull %16, ptr noundef nonnull %i.zi, ptr noundef nonnull %i.zj, i64 noundef 8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.gr, %bb.gq, %bb.go, %bb.gn
  call void @gvrender_begin_edge(ptr noundef %0) #27
  %i.zk = getelementptr inbounds nuw i8, ptr %i.fy, i64 248
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !53 ; 2 uses
  %.not355.i = icmp eq ptr %i.zl, null
  br i1 %.not355.i, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.zm = getelementptr inbounds nuw i8, ptr %i.fy, i64 352
  %i.zn = load i16, ptr %i.zm, align 8
  %i.zo = and i16 %i.zn, 1
  %.not356.i = icmp eq i16 %i.zo, 0
  br i1 %.not356.i, label %emit_begin_edge.exit, label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %i.zp = getelementptr inbounds nuw i8, ptr %i.fy, i64 288
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !57
  %i.zr = getelementptr inbounds nuw i8, ptr %i.fy, i64 320
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !61
  %i.zt = getelementptr inbounds nuw i8, ptr %i.fy, i64 256
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !52
  call void @gvrender_begin_anchor(ptr noundef %0, ptr noundef %i.zl, ptr noundef %i.zq, ptr noundef %i.zs, ptr noundef %i.zu) #27
  br label %emit_begin_edge.exit

emit_begin_edge.exit:                             ; preds = %bb.hk, %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.zv = load ptr, ptr %i.gc, align 8, !tbaa !39
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 176
  %i.zx = load double, ptr %i.zw, align 8, !tbaa !49 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.zy = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !191
  %.not.i81 = icmp eq ptr %i.aaa, null
  br i1 %.not.i81, label %.loopexit543.i, label %bb.hm

bb.hm:                                            ; preds = %emit_begin_edge.exit
  %i.aab = load ptr, ptr @E_arrowsz, align 8, !tbaa !167
  %i.aac = call double @late_double(ptr noundef nonnull %1, ptr noundef %i.aab, double noundef 1.000000e+00, double noundef 0.000000e+00) #27 ; 8 uses
  %i.aad = load ptr, ptr @E_color, align 8, !tbaa !167
  %i.aae = call ptr @late_string(ptr noundef nonnull %1, ptr noundef %i.aad, ptr noundef nonnull @.str.13) #27 ; 3 uses
  br i1 %.not39, label %.preheader544.i, label %.loopexit545.i

.preheader544.i:                                  ; preds = %bb.hm, %bb.hn
  %.0412.i = phi ptr [ %i.aag, %bb.hn ], [ %.036, %bb.hm ] ; 2 uses
  %i.aaf = load ptr, ptr %.0412.i, align 8, !tbaa !105 ; 2 uses
  %.not433.not.not.i.not.not = icmp ne ptr %i.aaf, null ; 3 uses
  br i1 %.not433.not.not.i.not.not, label %bb.hn, label %.loopexit545.i

bb.hn:                                            ; preds = %.preheader544.i
  %i.aag = getelementptr inbounds nuw i8, ptr %.0412.i, i64 8
  %i.aah = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.aaf, ptr noundef nonnull dereferenceable(8) @.str.90) #31
  %i.aai = icmp eq i32 %i.aah, 0
  br i1 %i.aai, label %.loopexit545.i, label %.preheader544.i, !llvm.loop !349

.loopexit545.i:                                   ; preds = %bb.hn, %.preheader544.i, %bb.hm
  %.1414.i = phi i1 [ false, %bb.hm ], [ %.not433.not.not.i.not.not, %.preheader544.i ], [ %.not433.not.not.i.not.not, %bb.hn ]
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hr, %.loopexit545.i
  %.0415.i = phi ptr [ %i.aae, %.loopexit545.i ], [ %i.aam, %bb.hr ] ; 2 uses
  %.0410.i = phi i64 [ 0, %.loopexit545.i ], [ %.1411.i, %bb.hr ] ; 5 uses
  %.0372.i = phi i32 [ 0, %.loopexit545.i ], [ %.1373.i, %bb.hr ] ; 4 uses
  %i.aaj = load i8, ptr %.0415.i, align 1, !tbaa !14
  switch i8 %i.aaj, label %bb.hr [
    i8 0, label %bb.hs
    i8 58, label %bb.hp
    i8 59, label %bb.hq
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.aak = add i64 %.0410.i, 1
  br label %bb.hr

bb.hq:                                            ; preds = %bb.ho
  %i.aal = add nsw i32 %.0372.i, 1
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.hp, %bb.ho
  %.1411.i = phi i64 [ %i.aak, %bb.hp ], [ %.0410.i, %bb.hq ], [ %.0410.i, %bb.ho ]
  %.1373.i = phi i32 [ %.0372.i, %bb.hp ], [ %i.aal, %bb.hq ], [ %.0372.i, %bb.ho ]
  %i.aam = getelementptr inbounds nuw i8, ptr %.0415.i, i64 1
  br label %bb.ho, !llvm.loop !350

bb.hs:                                            ; preds = %bb.ho
  %i.aan = icmp ne i32 %.0372.i, 0
  %i.aao = icmp ne i64 %.0410.i, 0                ; 2 uses
  %or.cond.i82 = select i1 %i.aan, i1 %i.aao, i1 false
  br i1 %or.cond.i82, label %bb.ht, label %bb.is

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.aap = call fastcc i32 @parseSegs(ptr noundef %i.aae, ptr noundef %5) ; 3 uses
end_hunk_0
begin_hunk_1_@compare_corners
define internal range(i32 -1, 2) i32 @compare_corners(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #22 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !203
  %i.b = load i64, ptr %1, align 8, !tbaa !203
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define internal fastcc void @splitBSpline(ptr %.0.val, i64 %.8.val, double noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = add i64 %.8.val, -1                      ; 3 uses
  %i.b = udiv i64 %i.a, 3                         ; 8 uses
  %.off = add i64 %.8.val, -4
  %i.c = icmp ult i64 %.off, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !198
  %i.e = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #28 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %gv_calloc.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.45, i64 noundef 64) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit:                                   ; preds = %bb.b
  store ptr %i.e, ptr %1, align 8, !tbaa !199
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.i, align 8, !tbaa !198
  %i.j = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 4, i64 noundef 16) #28 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %gv_calloc.exit79

bb.d:                                             ; preds = %gv_calloc.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.45, i64 noundef 64) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit79:                                 ; preds = %gv_calloc.exit
  store ptr %i.j, ptr %2, align 8, !tbaa !199
  %i.n = load ptr, ptr %1, align 8, !tbaa !199
  %i.o = tail call { double, double } @Bezier(ptr noundef %.0.val, double noundef %0, ptr noundef %i.n, ptr noundef nonnull %i.j) #27 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.p = icmp ugt i64 %i.a, 2
  br i1 %i.p, label %bb.f, label %.thread59

bb.f:                                             ; preds = %bb.e
  %mul.ov.i = icmp ugt i64 %i.a, 6917529027641081855
  br i1 %mul.ov.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.47, i64 noundef %i.b, i64 noundef 8) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #28 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.v = shl nuw i64 %i.b, 3
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.45, i64 noundef %i.v) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.h
  %.pre = load double, ptr %.0.val, align 8, !tbaa !121
  br label %.lr.ph

.thread59:                                        ; preds = %bb.e
  %i.x = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 8) #28
  %i.y = fmul double %0, 0.000000e+00
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 4, ptr %i.z, align 8, !tbaa !198
  br label %bb.m

.lr.ph13.preheader:                               ; preds = %.lr.ph
  %i.aa = fmul double %0, %i.bd                   ; 3 uses
  br label %.lr.ph13

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ab = phi double [ %i.au, %.lr.ph ], [ %.pre, %.lr.ph.preheader ]
  %.0729 = phi i64 [ %i.be, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.0738 = phi double [ %i.bd, %.lr.ph ], [ 0.000000e+00, %.lr.ph.preheader ]
  %.0757 = phi ptr [ %i.at, %.lr.ph ], [ %.0.val, %.lr.ph.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0757, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0757, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0757, i64 40
  %i.af = load double, ptr %i.ae, align 8, !tbaa !126 ; 2 uses
  %i.ag = load <4 x double>, ptr %i.ac, align 8, !tbaa !110 ; 3 uses
  %i.ah = load double, ptr %i.ad, align 8, !tbaa !121
  %i.ai = shufflevector <4 x double> %i.ag, <4 x double> poison, <2 x i32> <i32 2, i32 1> ; 2 uses
  %i.aj = insertelement <2 x double> %i.ai, double %i.ab, i64 0
  %i.ak = shufflevector <4 x double> %i.ag, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.al = fsub <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = shufflevector <4 x double> %i.ag, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %i.an = insertelement <2 x double> %i.ai, double %i.af, i64 1
  %i.ao = fsub <2 x double> %i.am, %i.an          ; 2 uses
  %i.ap = fmul <2 x double> %i.ao, %i.ao
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.al, <2 x double> %i.ap)
  %i.ar = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aq) ; 2 uses
  %shift = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ar, %shift
  %i.as = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.at = getelementptr inbounds nuw i8, ptr %.0757, i64 48 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !121 ; 2 uses
  %i.av = fsub double %i.ah, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0757, i64 56
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !126
  %i.ay = fsub double %i.af, %i.ax                ; 2 uses
  %i.az = fmul double %i.ay, %i.ay
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.av, double %i.av, double %i.az)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ba)
  %i.bb = fadd double %i.as, %sqrt.i              ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.0729
  store double %i.bb, ptr %i.bc, align 8, !tbaa !110
  %i.bd = fadd double %.0738, %i.bb               ; 2 uses
  %i.be = add nuw nsw i64 %.0729, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, %i.b
  br i1 %exitcond.not, label %.lr.ph13.preheader, label %.lr.ph, !llvm.loop !496

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.j
  %.07111 = phi i64 [ %i.bj, %bb.j ], [ 0, %.lr.ph13.preheader ] ; 3 uses
  %.17410 = phi double [ %i.bh, %bb.j ], [ 0.000000e+00, %.lr.ph13.preheader ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.07111
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !110
  %i.bh = fadd double %.17410, %i.bg              ; 4 uses
  %i.bi = fcmp ult double %i.bh, %i.aa
  br i1 %i.bi, label %bb.j, label %._crit_edge14

bb.j:                                             ; preds = %.lr.ph13
  %i.bj = add nuw nsw i64 %.07111, 1              ; 2 uses
  %exitcond35.not = icmp eq i64 %i.bj, %i.b
  br i1 %exitcond35.not, label %._crit_edge14, label %.lr.ph13, !llvm.loop !497

._crit_edge14:                                    ; preds = %bb.j, %.lr.ph13
  %.071.lcssa = phi i64 [ %.07111, %.lr.ph13 ], [ %i.b, %bb.j ] ; 3 uses
  %i.bk = mul i64 %.071.lcssa, 3                  ; 2 uses
  %i.bl = add i64 %i.bk, 4                        ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !198
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %.thread2, label %bb.k

.thread2:                                         ; preds = %._crit_edge14
  %i.bn = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit84

bb.k:                                             ; preds = %._crit_edge14
  %mul.ov.i83 = icmp ugt i64 %i.bl, 1152921504606846975
  br i1 %mul.ov.i83, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.bp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.47, i64 noundef %i.bl, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.m:                                             ; preds = %.thread59, %bb.k
  %i.bq = phi double [ %i.y, %.thread59 ], [ %i.aa, %bb.k ]
  %i.br = phi ptr [ %i.x, %.thread59 ], [ %i.s, %bb.k ]
  %.071.lcssa5664 = phi i64 [ 0, %.thread59 ], [ %.071.lcssa, %bb.k ]
  %.25863 = phi double [ 0.000000e+00, %.thread59 ], [ %i.bh, %bb.k ]
  %i.bs = phi i64 [ 0, %.thread59 ], [ %i.bk, %bb.k ]
  %i.bt = phi i64 [ 4, %.thread59 ], [ %i.bl, %bb.k ] ; 2 uses
  %i.bu = phi ptr [ %i.z, %.thread59 ], [ %i.bm, %bb.k ]
  %i.bv = tail call noalias ptr @calloc(i64 noundef %i.bt, i64 noundef 16) #28 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.n, label %gv_calloc.exit84

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.by = shl nuw i64 %i.bt, 4
  %i.bz = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.45, i64 noundef %i.by) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit84:                                 ; preds = %.thread2, %bb.m
  %i.ca = phi ptr [ %i.bm, %.thread2 ], [ %i.bu, %bb.m ] ; 2 uses
  %i.cb = phi i64 [ -4, %.thread2 ], [ %i.bs, %bb.m ] ; 2 uses
  %.257 = phi double [ %i.bh, %.thread2 ], [ %.25863, %bb.m ]
  %.071.lcssa55 = phi i64 [ %.071.lcssa, %.thread2 ], [ %.071.lcssa5664, %bb.m ] ; 2 uses
  %i.cc = phi ptr [ %i.s, %.thread2 ], [ %i.br, %bb.m ] ; 2 uses
  %i.cd = phi double [ %i.aa, %.thread2 ], [ %i.bq, %bb.m ]
  %i.ce = phi ptr [ %i.bn, %.thread2 ], [ %i.bv, %bb.m ]
  store ptr %i.ce, ptr %1, align 8, !tbaa !199
  %i.cf = sub nsw i64 %i.b, %.071.lcssa55
  %i.cg = mul i64 %i.cf, 3
  %i.ch = add i64 %i.cg, 1                        ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !198
  %.not6 = icmp eq i64 %i.ch, 0
  br i1 %.not6, label %.thread4, label %bb.o

.thread4:                                         ; preds = %gv_calloc.exit84
  %i.cj = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit88

bb.o:                                             ; preds = %gv_calloc.exit84
  %mul.ov.i87 = icmp ugt i64 %i.ch, 1152921504606846975
  br i1 %mul.ov.i87, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.47, i64 noundef %i.ch, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cm = tail call noalias ptr @calloc(i64 noundef %i.ch, i64 noundef 16) #28 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.r, label %gv_calloc.exit88

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cp = shl nuw i64 %i.ch, 4
  %i.cq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.45, i64 noundef %i.cp) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

gv_calloc.exit88:                                 ; preds = %.thread4, %bb.q
  %i.cr = phi ptr [ %i.cj, %.thread4 ], [ %i.cm, %bb.q ]
  store ptr %i.cr, ptr %2, align 8, !tbaa !199
  %i.cs = load i64, ptr %i.ca, align 8, !tbaa !198
  %.not31 = icmp eq i64 %i.cs, 0
  br i1 %.not31, label %._crit_edge22, label %.lr.ph21

.lr.ph21:                                         ; preds = %gv_calloc.exit88, %.lr.ph21
  %.07020 = phi i64 [ %i.cw, %.lr.ph21 ], [ 0, %gv_calloc.exit88 ] ; 4 uses
  %i.ct = load ptr, ptr %1, align 8, !tbaa !199
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %.07020
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.07020
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i64 16, i1 false), !tbaa.struct !120
  %i.cw = add nuw i64 %.07020, 1                  ; 2 uses
  %i.cx = load i64, ptr %i.ca, align 8, !tbaa !198
  %i.cy = icmp ult i64 %i.cw, %i.cx
  br i1 %i.cy, label %.lr.ph21, label %._crit_edge22.loopexit, !llvm.loop !498

._crit_edge22.loopexit:                           ; preds = %.lr.ph21
  %.pre36 = load i64, ptr %i.ci, align 8, !tbaa !198
  %i.cz = add i64 %.07020, -3
  br label %._crit_edge22

._crit_edge22:                                    ; preds = %._crit_edge22.loopexit, %gv_calloc.exit88
  %i.da = phi i64 [ %i.ch, %gv_calloc.exit88 ], [ %.pre36, %._crit_edge22.loopexit ]
  %.070.lcssa = phi i64 [ -4, %gv_calloc.exit88 ], [ %i.cz, %._crit_edge22.loopexit ]
  %.not32 = icmp eq i64 %i.da, 0
  br i1 %.not32, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %._crit_edge22, %.lr.ph27
  %.025 = phi i64 [ %i.dd, %.lr.ph27 ], [ %.070.lcssa, %._crit_edge22 ] ; 2 uses
  %.124 = phi i64 [ %i.df, %.lr.ph27 ], [ 0, %._crit_edge22 ] ; 2 uses
  %i.db = load ptr, ptr %2, align 8, !tbaa !199
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %.124
  %i.dd = add i64 %.025, 1
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.025
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !120
  %i.df = add nuw i64 %.124, 1                    ; 2 uses
  %i.dg = load i64, ptr %i.ci, align 8, !tbaa !198
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph27, label %._crit_edge28, !llvm.loop !499

._crit_edge28:                                    ; preds = %.lr.ph27, %._crit_edge22
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.071.lcssa55
  %i.dj = load double, ptr %i.di, align 8, !tbaa !110 ; 2 uses
  %i.dk = fsub double %.257, %i.dj
  %i.dl = fsub double %i.cd, %i.dk
  %i.dm = fdiv double %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %i.cb
  %i.do = load ptr, ptr %1, align 8, !tbaa !199
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.cb
  %i.dq = load ptr, ptr %2, align 8, !tbaa !199
  %i.dr = tail call { double, double } @Bezier(ptr noundef %i.dn, double noundef %i.dm, ptr noundef %i.dp, ptr noundef %i.dq) #27 ; 0 uses
  tail call void @free(ptr noundef %i.cc) #27
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge28, %gv_calloc.exit79
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @forfunc(double noundef %0, double noundef %1, double noundef %2) #23 {
bb.a:
  %i.a = fdiv double %0, %1
  %i.b = fsub double 1.000000e+00, %i.a
  %i.c = fmul double %2, %i.b
  %i.d = fmul double %i.c, 5.000000e-01
  ret double %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @revfunc(double noundef %0, double noundef %1, double noundef %2) #23 {
bb.a:
  %i.a = fdiv double %0, %1
  %i.b = fmul double %i.a, %2
  %i.c = fmul double %i.b, 5.000000e-01
  ret double %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @bothfunc(double noundef %0, double noundef %1, double noundef %2) #23 {
bb.a:
  %i.a = fdiv double %0, %1                       ; 3 uses
  %i.b = fcmp ugt double %i.a, 5.000000e-01
  %i.c = fsub double 1.000000e+00, %i.a
  %.pn = select i1 %i.b, double %i.c, double %i.a
  %.0 = fmul double %2, %.pn
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef double @nonefunc(double %0, double %1, double noundef %2) #23 {
bb.a:
  %i.a = fmul double %2, 5.000000e-01
  ret double %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc void @nodeIntersect(ptr noundef %0, double %1, double %2, i1 noundef zeroext %3, ptr nofree noundef readnone captures(address) %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.09 = phi ptr [ %i.d, %bb.b ], [ %4, %bb.a ]
  br i1 %5, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  %i.f = load i16, ptr %i.e, align 8
  %.not = trunc i16 %i.f to i1
  %i.g = icmp ne ptr %.09, null
  %or.cond = or i1 %i.g, %.not
  br i1 %or.cond, label %.thread, label %map_point.exit

.thread:                                          ; preds = %bb.c, %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.i = load i32, ptr %i.h, align 8, !tbaa !68   ; 3 uses
  %i.j = and i32 %i.i, 4259840
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %map_point.exit, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.k = and i32 %i.i, 131072
  %.not22.i = icmp eq i32 %i.k, 0                 ; 3 uses
  %spec.select.i = select i1 %.not22.i, i32 2, i32 0
  %spec.select28.i = select i1 %.not22.i, i64 4, i64 2
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 356
  store i32 %spec.select.i, ptr %i.l, align 4, !tbaa !122
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 2 uses
  store i64 %spec.select28.i, ptr %i.m, align 8, !tbaa !123
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 368 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  tail call void @free(ptr noundef %i.o) #27
  %i.p = load i64, ptr %i.m, align 8, !tbaa !123  ; 5 uses
  %.not25.i = icmp eq i64 %i.p, 0
  br i1 %.not25.i, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.q = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #28
  br label %gv_calloc.exit.i

bb.f:                                             ; preds = %bb.e
  %mul.ov.i.i = icmp ugt i64 %i.p, 1152921504606846975
  br i1 %mul.ov.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.47, i64 noundef %i.p, i64 noundef 16) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = tail call noalias ptr @calloc(i64 noundef %i.p, i64 noundef 16) #28 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.i, label %gv_calloc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.w = shl nuw i64 %i.p, 4
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.45, i64 noundef %i.w) #29 ; 0 uses
  tail call fastcc void @graphviz_exit() #30
end_hunk_1
