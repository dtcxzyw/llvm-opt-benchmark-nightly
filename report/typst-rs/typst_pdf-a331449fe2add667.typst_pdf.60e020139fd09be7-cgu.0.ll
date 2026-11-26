Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_pdf-a331449fe2add667.typst_pdf.60e020139fd09be7-cgu.0?download=true
inline.NumInlined: 7940
inline.NumDeleted: 3845
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_RNvNtCs8jFhWeO2DFb_9typst_pdf5paint13convert_paint:bb.a
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5color5ColorECs8jFhWeO2DFb_9typst_pdf(i64 %.sroa.0.0.copyload.i220.i.i, ptr %.sroa.5.0.copyload.i222.i.i) #44, !noalias !14505
  br label %.body.i.i

_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5paint22convert_gradient_stops0B5_.exit236.i.i: ; preds = %bb.gk, %bb.gj
  %i.wv = load ptr, ptr %i.fa, align 8, !alias.scope !14507, !noalias !14504, !nonnull !10, !noundef !10
  %i.ww = getelementptr inbounds nuw [48 x i8], ptr %i.wv, i64 %i.wr ; 5 uses
  store i64 %.sroa.0.0.copyload.i220.i.i, ptr %i.ww, align 8, !noalias !14505
  %.sroa.57.0..sroa_idx.i228.i.i = getelementptr inbounds nuw i8, ptr %i.ww, i64 8
  store ptr %.sroa.5.0.copyload.i222.i.i, ptr %.sroa.57.0..sroa_idx.i228.i.i, align 8, !noalias !14505
  %.sroa.610.0..sroa_idx.i229.i.i = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..sroa_idx.i229.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.vn, i64 24, i1 false), !noalias !14505
  %.sroa.612.0..sroa_idx.i230.i.i = getelementptr inbounds nuw i8, ptr %i.ww, i64 40
  store float %i.wl, ptr %.sroa.612.0..sroa_idx.i230.i.i, align 8, !noalias !14505
  %.sroa.7.0..sroa_idx.i231.i.i = getelementptr inbounds nuw i8, ptr %i.ww, i64 44
  store float %i.wi, ptr %.sroa.7.0..sroa_idx.i231.i.i, align 4, !noalias !14505
  %i.wx = add i64 %i.wr, 1
  store i64 %i.wx, ptr %i.fb, align 8, !alias.scope !14507, !noalias !14504
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !14279
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5paint22convert_gradient_stops0B5_.exit253.i.i, %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5paint22convert_gradient_stops0B5_.exit236.i.i
  %i.wy = icmp ult i64 %.sroa.5327.0647.i.i, 3
  br i1 %i.wy, label %_RNvNtCs8jFhWeO2DFb_9typst_pdf5paint22convert_gradient_stops.exit.i, label %bb.gb

._crit_edge646.i.i:                               ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit284.i.i, %.preheader.i.i
  %.lcssa.i.i = phi double [ %i.wc, %.preheader.i.i ], [ %i.abx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit284.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !14279
  invoke fastcc void @_RNvNtCs8jFhWeO2DFb_9typst_pdf5paint13convert_solid(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vp)
          to label %.noexc250.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14280

.noexc250.i.i:                                    ; preds = %._crit_edge646.i.i
  %.sroa.0.0.copyload.i237.i.i = load i64, ptr %i.ae, align 8, !noalias !14508 ; 3 uses
  %.sroa.5.0.copyload.i239.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i238.i.i, align 8, !noalias !14508 ; 3 uses
  %i.wz = load i8, ptr %i.vk, align 8, !noalias !14508, !noundef !10
  %i.xa = uitofp i8 %i.wz to float
  %i.xb = fdiv float %i.xa, 2.550000e+02          ; 2 uses
  %i.xc = fcmp ugt float %i.xb, 1.000000e+00
  br i1 %i.xc, label %.invoke.i242.i.i, label %bb.gm, !prof !81

.invoke.i242.i.i:                                 ; preds = %bb.gm, %.noexc250.i.i
  %i.xd = phi ptr [ @125, %.noexc250.i.i ], [ @126, %bb.gm ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xd) #39
          to label %.cont.i244.i.i unwind label %bb.gp, !noalias !14509

.cont.i244.i.i:                                   ; preds = %.invoke.i242.i.i
  unreachable

bb.gm:                                            ; preds = %.noexc250.i.i
  %i.xe = fptrunc double %.lcssa.i.i to float     ; 2 uses
  %i.xf = call float @llvm.fabs.f32(float %i.xe)
  %i.xg = fcmp one float %i.xf, +inf
  %i.xh = fcmp oge double %.lcssa.i.i, f0xB690000000000000
  %or.cond2.i240.i.i = and i1 %i.xh, %i.xg
  %i.xi = fcmp ole double %.lcssa.i.i, f0x3FF0000010000000
  %or.cond3.i241.i.i = and i1 %i.xi, %or.cond2.i240.i.i
  br i1 %or.cond3.i241.i.i, label %bb.gn, label %.invoke.i242.i.i, !prof !14287

.body.i249.i.i:                                   ; preds = %bb.go
  %i.xj = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4StopECs8jFhWeO2DFb_9typst_pdf(i64 %.sroa.0.0.copyload.i237.i.i, ptr %.sroa.5.0.copyload.i239.i.i) #44, !noalias !14510
  br label %.body.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.xk = load i64, ptr %i.fb, align 8, !alias.scope !14511, !noalias !14508, !noundef !10 ; 3 uses
  %i.xl = load i64, ptr %i.bp, align 8, !range !17, !alias.scope !14511, !noalias !14508, !noundef !10
  %i.xm = icmp eq i64 %i.xk, %i.xl
  br i1 %i.xm, label %bb.go, label %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5paint22convert_gradient_stops0B5_.exit253.i.i

bb.go:                                            ; preds = %bb.gn
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsidf7BFzONoc_6krilla8graphics5paint4StopE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5paint22convert_gradient_stops0B5_.exit253.i.i unwind label %.body.i249.i.i, !noalias !14510

bb.gp:                                            ; preds = %.invoke.i242.i.i
  %i.xn = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsidf7BFzONoc_6krilla8graphics5color5ColorECs8jFhWeO2DFb_9typst_pdf(i64 %.sroa.0.0.copyload.i237.i.i, ptr %.sroa.5.0.copyload.i239.i.i) #44, !noalias !14509
  br label %.body.i.i

_RNCNvNtCs8jFhWeO2DFb_9typst_pdf5paint22convert_gradient_stops0B5_.exit253.i.i: ; preds = %bb.go, %bb.gn
  %i.xo = load ptr, ptr %i.fa, align 8, !alias.scope !14511, !noalias !14508, !nonnull !10, !noundef !10
  %i.xp = getelementptr inbounds nuw [48 x i8], ptr %i.xo, i64 %i.xk ; 5 uses
  store i64 %.sroa.0.0.copyload.i237.i.i, ptr %i.xp, align 8, !noalias !14509
  %.sroa.57.0..sroa_idx.i245.i.i = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  store ptr %.sroa.5.0.copyload.i239.i.i, ptr %.sroa.57.0..sroa_idx.i245.i.i, align 8, !noalias !14509
  %.sroa.610.0..sroa_idx.i246.i.i = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610.0..sroa_idx.i246.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.vl, i64 24, i1 false), !noalias !14509
  %.sroa.612.0..sroa_idx.i247.i.i = getelementptr inbounds nuw i8, ptr %i.xp, i64 40
  store float %i.xe, ptr %.sroa.612.0..sroa_idx.i247.i.i, align 8, !noalias !14509
  %.sroa.7.0..sroa_idx.i248.i.i = getelementptr inbounds nuw i8, ptr %i.xp, i64 44
  store float %i.xb, ptr %.sroa.7.0..sroa_idx.i248.i.i, align 4, !noalias !14509
  %i.xq = add i64 %i.xk, 1
  store i64 %i.xq, ptr %i.fb, align 8, !alias.scope !14511, !noalias !14508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !14279
  br label %.backedge.i.i

bb.gq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit284.i.i, %.lr.ph645.i.i
  %i.xr = phi double [ %i.wc, %.lr.ph645.i.i ], [ %i.abx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit284.i.i ]
  %.sroa.031.0644.i.i = phi double [ %i.vx, %.lr.ph645.i.i ], [ %i.xt, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECs8jFhWeO2DFb_9typst_pdf.exit284.i.i ]
  %i.xs = fadd double %i.wa, %.sroa.031.0644.i.i
  %i.xt = call nsz double @llvm.minimumnum.f64(double %i.xs, double %i.xr) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !14279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !14279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !14279
  %i.xu = load i32, ptr %.sroa.0326.0648.i.i, align 8, !range !14, !noalias !14280, !noundef !10
  %i.xv = trunc nuw i32 %i.xu to i1
  br i1 %i.xv, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.xw = load ptr, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !noalias !14280, !nonnull !10, !noundef !10
  %i.xx = atomicrmw add ptr %i.xw, i64 1 monotonic, align 8, !noalias !14280
  %i.xy = icmp slt i64 %i.xx, 0
  br i1 %i.xy, label %bb.gu, label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  %.sroa.057.0.copyload.i.i = load i32, ptr %i.we, align 4, !noalias !14280
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %.sroa.5.0.i.i = phi i32 [ %.sroa.057.0.copyload.i.i, %bb.gs ], [ undef, %bb.gr ]
  %.sroa.037.0.i.i = phi i32 [ 0, %bb.gs ], [ 1, %bb.gr ]
  %.sroa.638.0.i.i = load ptr, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !noalias !14280
  %.sroa.739.0.i.i = load double, ptr %.sroa.739.0.in.i.i, align 8, !noalias !14280
  %i.xz = load double, ptr %i.vq, align 8, !noalias !14280, !noundef !10 ; 2 uses
  %i.ya = fsub double %i.xt, %i.xz
  %i.yb = load double, ptr %i.vr, align 8, !noalias !14280, !noundef !10
  %i.yc = fsub double %i.yb, %i.xz
  %i.yd = fdiv double %i.ya, %i.yc                ; 2 uses
  %i.ye = fsub double 1.000000e+00, %i.yd
  %i.yf = load i32, ptr %i.vp, align 8, !range !14, !noalias !14280, !noundef !10
  %i.yg = trunc nuw i32 %i.yf to i1
  br i1 %i.yg, label %bb.gv, label %bb.gw

bb.gu:                                            ; preds = %bb.gr
  call void @llvm.trap()
  unreachable

bb.gv:                                            ; preds = %bb.gt
  %i.yh = load ptr, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !14280, !nonnull !10, !noundef !10
  %i.yi = atomicrmw add ptr %i.yh, i64 1 monotonic, align 8, !noalias !14280
  %i.yj = icmp slt i64 %i.yi, 0
  br i1 %i.yj, label %bb.gy, label %bb.gx

bb.gw:                                            ; preds = %bb.gt
  %.sroa.060.0.copyload.i.i = load i32, ptr %i.wf, align 4, !noalias !14280
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.sroa.543.0.i.i = phi i32 [ %.sroa.060.0.copyload.i.i, %bb.gw ], [ undef, %bb.gv ]
  %.sroa.042.0.i.i = phi i32 [ 0, %bb.gw ], [ 1, %bb.gv ]
  %.sroa.644.0.i.i = load ptr, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !14280
  %.sroa.745.0.i.i = load double, ptr %.sroa.745.0.in.i.i, align 8, !noalias !14280
  store i32 %.sroa.037.0.i.i, ptr %i.bd, align 8, !noalias !14279
  store i32 %.sroa.5.0.i.i, ptr %.sroa.035.sroa.4.0..sroa_idx.i.i, align 4, !noalias !14279
  store ptr %.sroa.638.0.i.i, ptr %.sroa.035.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14279
  store double %.sroa.739.0.i.i, ptr %.sroa.035.sroa.6.0..sroa_idx.i.i, align 8, !noalias !14279
  store double %i.ye, ptr %.sroa.436.0..sroa_idx.i.i, align 8, !noalias !14279
  store i32 %.sroa.042.0.i.i, ptr %i.vd, align 8, !noalias !14279
  store i32 %.sroa.543.0.i.i, ptr %.sroa.040.sroa.4.0..sroa_idx.i.i, align 4, !noalias !14279
  store ptr %.sroa.644.0.i.i, ptr %.sroa.040.sroa.5.0..sroa_idx.i.i, align 8, !noalias !14279
  store double %.sroa.745.0.i.i, ptr %.sroa.040.sroa.6.0..sroa_idx.i.i, align 8, !noalias !14279
  store double %i.yd, ptr %.sroa.441.0..sroa_idx.i.i, align 8, !noalias !14279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !14279
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.651.sroa.5.i.i)
  %i.yk = load i64, ptr %i.vb, align 8, !range !30, !noalias !14280, !noundef !10 ; 3 uses
  switch i64 %i.yk, label %bb.hb [
    i64 -1, label %bb.gz
    i64 2, label %bb.hf
  ]

bb.gy:                                            ; preds = %bb.gv
  call void @llvm.trap()
  unreachable

bb.gz:                                            ; preds = %bb.gx
  %i.yl = load i8, ptr %i.vc, align 8, !range !33, !noalias !14280, !noundef !10
  br label %bb.ha

bb.ha:                                            ; preds = %bb.hf, %bb.gz
  %.sroa.651.sroa.4.0.i.i = phi i64 [ undef, %bb.gz ], [ %.sroa.668.sroa.4.0.i.i, %bb.hf ]
  %.sroa.651.sroa.0.0.i.i = phi i56 [ undef, %bb.gz ], [ %.sroa.668.sroa.0.0.i.i, %bb.hf ]
  %.sroa.548.0.i.i = phi i8 [ %i.yl, %bb.gz ], [ %.sroa.567.0.i.i, %bb.hf ]
  %.sroa.046.0.i.i = phi i64 [ -1, %bb.gz ], [ %.sroa.066.0.i.i, %bb.hf ]
  store i64 %.sroa.046.0.i.i, ptr %i.bc, align 8, !noalias !14279
  store i8 %.sroa.548.0.i.i, ptr %.sroa.548.0..sroa_idx.i.i, align 8, !noalias !14279
  store i56 %.sroa.651.sroa.0.0.i.i, ptr %.sroa.651.0..sroa_idx.i.i, align 1, !noalias !14279
  store i64 %.sroa.651.sroa.4.0.i.i, ptr %.sroa.651.sroa.4.0..sroa.651.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.651.sroa.5.0..sroa.651.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.651.sroa.5.i.i, i64 20, i1 false), !noalias !14279
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.651.sroa.5.i.i)
  invoke fastcc void @_RINvMNtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB3_5Color8mix_iterINtNtNtCs3oUPovFnLWP_4core5array4iter8IntoIterNtB3_13WeightedColorKj2_EAB1U_B2f_ECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef align 8 captures(address) dereferenceable(64) %i.bd, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %i.bc)
          to label %bb.hg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14280

bb.hb:                                            ; preds = %bb.gx
  call void @llvm.experimental.noalias.scope.decl(metadata !14512)
  %i.ym = trunc nuw i64 %i.yk to i1
  br i1 %i.ym, label %bb.hc, label %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.hc:                                            ; preds = %bb.hb
  %i.yn = load i8, ptr %i.ve, align 1, !alias.scope !14512, !noalias !14280, !noundef !10
  %.not.i.i.i = icmp sgt i8 %i.yn, -1
  %.val.i254.i.i = load ptr, ptr %i.vc, align 8, !alias.scope !14512, !noalias !14280 ; 5 uses
  %.val21.i.i.i = load i64, ptr %i.vf, align 8, !alias.scope !14512, !noalias !14280 ; 3 uses
  br i1 %.not.i.i.i, label %8, label %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

8:                                                ; preds = %bb.hc
  %.not.i.i.i255.i.i = icmp eq ptr %.val.i254.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i255.i.i, label %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, label %bb.hd

bb.hd:                                            ; preds = %8
  %i.yo = getelementptr inbounds i8, ptr %.val.i254.i.i, i64 -16
  %i.yp = atomicrmw add ptr %i.yo, i64 1 monotonic, align 8, !noalias !14513
  %i.yq = icmp slt i64 %i.yp, 0
  br i1 %i.yq, label %bb.he, label %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, !prof !13

bb.he:                                            ; preds = %bb.hd
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs8jFhWeO2DFb_9typst_pdf(ptr noundef nonnull %.val.i254.i.i) #39
          to label %.noexc256.i.i unwind label %bb.ip

.noexc256.i.i:                                    ; preds = %bb.he
  unreachable

bb.hf:                                            ; preds = %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %bb.gx
  %.sroa.668.sroa.4.0.i.i = phi i64 [ undef, %bb.gx ], [ %.sroa.7.0.i.i, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.668.sroa.0.0.i.i = phi i56 [ undef, %bb.gx ], [ %.sroa.4.1.extract.trunc.i.i, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.066.0.i.i = phi i64 [ %i.yk, %bb.gx ], [ %storemerge.i.i.i, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.567.0.i.i = phi i8 [ undef, %bb.gx ], [ %.sroa.4.0.extract.trunc.i.i, %_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.651.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.vg, i64 20, i1 false), !noalias !14280
  br label %bb.ha

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.io, %bb.ha, %._crit_edge646.i.i, %bb.gh, %bb.gf, %bb.gb, %bb.fv, %.invoke839.i.i, %bb.ak, %._crit_edge.i.i, %bb.z, %.invoke838.i.i, %bb.t
  %lpad.loopexit.split-lp497 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNvXs10_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB6_16SpotColorantNameNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.hc, %bb.hd, %8, %bb.hb
  %.sroa.4.0.i.i = phi ptr [ undef, %bb.hb ], [ %.val.i254.i.i, %bb.hd ], [ inttoptr (i64 16 to ptr), %8 ], [ %.val.i254.i.i, %bb.hc ]
  %.sroa.7.0.i.i = phi i64 [ undef, %bb.hb ], [ %.val21.i.i.i, %bb.hd ], [ %.val21.i.i.i, %8 ], [ %.val21.i.i.i, %bb.hc ]
  %storemerge.i.i.i = phi i64 [ 0, %bb.hb ], [ 1, %bb.hd ], [ 1, %8 ], [ 1, %bb.hc ]
  %i.yr = ptrtoint ptr %.sroa.4.0.i.i to i64      ; 2 uses
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %i.yr to i8
  %.sroa.4.1.extract.shift.i.i = lshr i64 %i.yr, 8
  %.sroa.4.1.extract.trunc.i.i = trunc nuw i64 %.sroa.4.1.extract.shift.i.i to i56
  br label %bb.hf

bb.hg:                                            ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !14279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !14279
  call void @llvm.experimental.noalias.scope.decl(metadata !14514)
  call void @llvm.experimental.noalias.scope.decl(metadata !14515)
  %i.ys = load i32, ptr %i.be, align 8, !range !32, !alias.scope !14515, !noalias !14279, !noundef !10
  %i.yt = icmp eq i32 %i.ys, 2
  br i1 %i.yt, label %bb.hh, label %bb.hp, !prof !13

bb.hh:                                            ; preds = %bb.hg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !14516
  %i.yu = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.yv = load ptr, ptr %i.yu, align 8, !alias.scope !14515, !noalias !14279, !nonnull !10, !noundef !10
  %i.yw = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.yx = load i64, ptr %i.yw, align 8, !alias.scope !14515, !noalias !14279, !noundef !10
  store ptr %i.yv, ptr %i.bb, align 8, !noalias !14516
  %i.yy = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  store i64 %i.yx, ptr %i.yy, align 8, !noalias !14516
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 43, ptr noundef nonnull %i.bb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @162, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @274) #39
          to label %bb.hn unwind label %bb.hi, !noalias !14517

bb.hi:                                            ; preds = %bb.hh
  %i.yz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14518)
  %.val.i257.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !14518, !noalias !14519, !nonnull !10, !noundef !10 ; 4 uses
  %.val1.i258.i.i = load i64, ptr %i.yy, align 8, !alias.scope !14518, !noalias !14519
  %.not.i.i.i.i259.i.i = icmp eq ptr %.val.i257.i.i, inttoptr (i64 16 to ptr)
  %i.za = getelementptr inbounds i8, ptr %.val.i257.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i259.i.i, label %.body.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %bb.hi
  %i.zb = atomicrmw add ptr %i.za, i64 -1 release, align 8, !noalias !14520
  %.not.i.i.i260.i.i = icmp eq i64 %i.zb, 1
  br i1 %.not.i.i.i260.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %.body.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  fence acquire, !noalias !14521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !14522
  %i.zc = getelementptr i8, ptr %.val.i257.i.i, i64 -8
  %.val.i.i.i.i.i.i = load i64, ptr %i.zc, align 8, !noalias !14520, !noundef !10 ; 2 uses
  %i.zd = icmp ult i64 %.val.i.i.i.i.i.i, 1152921504606846976
  %i.ze = shl i64 %.val.i.i.i.i.i.i, 4            ; 2 uses
  %i.zf = icmp ult i64 %i.ze, 9223372036854775784
  %narrow.i.i.i.i.i.i.i = and i1 %i.zd, %i.zf
  br i1 %narrow.i.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i, label %bb.hj, !prof !16

bb.hj:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #39
          to label %.noexc261.i.i unwind label %bb.ho, !noalias !14520

.noexc261.i.i:                                    ; preds = %bb.hj
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %i.zg = add nuw nsw i64 %i.ze, 16
  %i.zh = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.za, ptr %i.zh, align 8, !noalias !14522
  store i64 8, ptr %i.ad, align 8, !noalias !14522
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %i.zg, ptr %i.zi, align 8, !noalias !14522
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs8jFhWeO2DFb_9typst_pdf(ptr noalias nofree noundef nonnull align 8 %.val.i257.i.i, i64 noundef %.val1.i258.i.i)
          to label %bb.hl unwind label %bb.hk, !noalias !14520

bb.hk:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  %i.zj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body263.i.i unwind label %bb.hm, !noalias !14520

bb.hl:                                            ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs8jFhWeO2DFb_9typst_pdf.exit.i.i.i.i.i
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.noexc262.i.i unwind label %bb.ho, !noalias !14520

.noexc262.i.i:                                    ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !14522
  br label %.body.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.zk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14520
  unreachable

bb.hn:                                            ; preds = %bb.hh
  unreachable

bb.ho:                                            ; preds = %bb.hl, %bb.hj
  %i.zl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body263.i.i

.body263.i.i:                                     ; preds = %bb.ho, %bb.hk
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !14517
  unreachable

bb.hp:                                            ; preds = %bb.hg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.be, i64 24, i1 false), !alias.scope !14521, !noalias !14279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !14279
  %.inv.i.i = fcmp ord double %i.xt, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %i.xt, double 0.000000e+00 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14523)
  %i.zm = load i32, ptr %i.bf, align 8, !range !14, !alias.scope !14523, !noalias !14279, !noundef !10
  %i.zn = trunc nuw i32 %i.zm to i1
  br i1 %i.zn, label %bb.hq, label %bb.ib

bb.hq:                                            ; preds = %bb.hp
  %.val.i289.i.i = load ptr, ptr %i.vi, align 8, !alias.scope !14523, !noalias !14279, !nonnull !10, !noundef !10 ; 5 uses
  %.val5.i.i.i = load double, ptr %i.vj, align 8, !alias.scope !14523, !noalias !14279, !noundef !10
  %i.zo = getelementptr inbounds nuw i8, ptr %.val.i289.i.i, i64 16
  %i.zp = load i64, ptr %i.zo, align 8, !range !29, !noalias !14524, !noundef !10 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.zp, 2
  br i1 %.not.i.i.i.i, label %_RNvXs7_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color16SpotColorantNameNtB5_21SpotColorantToNameExt9to_krilla.exit.i.i.i.i, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.experimental.noalias.scope.decl(metadata !14525)
  %i.zq = trunc nuw i64 %i.zp to i1
  br i1 %i.zq, label %bb.hs, label %_RNvXs7_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color16SpotColorantNameNtB5_21SpotColorantToNameExt9to_krilla.exit.i.i.i.i

bb.hs:                                            ; preds = %bb.hr
  %i.zr = getelementptr inbounds nuw i8, ptr %.val.i289.i.i, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14526)
  %i.zs = getelementptr inbounds nuw i8, ptr %.val.i289.i.i, i64 39
  %i.zt = load i8, ptr %i.zs, align 1, !alias.scope !14527, !noalias !14524, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i290.i.i = icmp sgt i8 %i.zt, -1  ; 2 uses
  %i.zu = and i8 %i.zt, 127
  %i.zv = zext nneg i8 %i.zu to i64
  %i.zw = load ptr, ptr %i.zr, align 8, !alias.scope !14527, !noalias !14524, !nonnull !10
  %i.zx = getelementptr inbounds nuw i8, ptr %.val.i289.i.i, i64 32
  %i.zy = load i64, ptr %i.zx, align 8, !alias.scope !14527, !noalias !14524
  %.sroa.3.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i290.i.i, i64 %i.zy, i64 %i.zv ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i290.i.i, ptr %i.zw, ptr %i.zr
  %.not.i1.i.i.i.i.i.i = icmp slt i64 %.sroa.3.0.i.i.i.i.i.i.i, 0
  br i1 %.not.i1.i.i.i.i.i.i, label %bb.hu, label %bb.ht, !prof !36

bb.ht:                                            ; preds = %bb.hs
  %i.zz = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i.i, 0
  br i1 %i.zz, label %_RNvXs7_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color16SpotColorantNameNtB5_21SpotColorantToNameExt9to_krilla.exit.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.ht
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #41, !noalias !14528
  %i.aaa = call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %.sroa.3.0.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #41, !noalias !14528 ; 3 uses
  %i.aab = icmp eq ptr %i.aaa, null
  br i1 %i.aab, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.hs
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %bb.hs ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i) #39
          to label %.noexc291.i.i unwind label %.loopexit.split-lp349.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !14529

.noexc291.i.i:                                    ; preds = %bb.hu
  unreachable

bb.hv:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aaa, ptr nonnull align 1 %.sroa.0.0.i.i.i.i.i.i.i, i64 %.sroa.3.0.i.i.i.i.i.i.i, i1 false), !noalias !14530
  br label %_RNvXs7_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color16SpotColorantNameNtB5_21SpotColorantToNameExt9to_krilla.exit.i.i.i.i

_RNvXs7_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color16SpotColorantNameNtB5_21SpotColorantToNameExt9to_krilla.exit.i.i.i.i: ; preds = %bb.hv, %bb.ht, %bb.hr, %bb.hq
  %.sroa.9.1.i.i.i.i = phi i64 [ undef, %bb.hr ], [ 0, %bb.ht ], [ %.sroa.3.0.i.i.i.i.i.i.i, %bb.hv ], [ undef, %bb.hq ]
  %.sroa.7.1.i.i.i.i = phi ptr [ undef, %bb.hr ], [ inttoptr (i64 1 to ptr), %bb.ht ], [ %i.aaa, %bb.hv ], [ undef, %bb.hq ] ; 3 uses
  %.sroa.0.1.i.i.i.i = phi i64 [ -9223372036854775807, %bb.hr ], [ 0, %bb.ht ], [ %.sroa.3.0.i.i.i.i.i.i.i, %bb.hv ], [ -9223372036854775808, %bb.hq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !14531
  %i.aac = getelementptr inbounds nuw i8, ptr %.val.i289.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.aac, i64 20, i1 false), !noalias !14524
  call void @llvm.experimental.noalias.scope.decl(metadata !14532)
  %i.aad = load i32, ptr %i.ab, align 4, !range !65, !alias.scope !14532, !noalias !14531, !noundef !10
  switch i32 %i.aad, label %default.unreachable [
    i32 0, label %bb.hw
    i32 1, label %bb.hy
    i32 2, label %bb.hy
    i32 3, label %bb.hy
    i32 4, label %bb.hy
    i32 5, label %bb.hx
    i32 6, label %bb.hy
    i32 7, label %bb.hy
  ]

bb.hw:                                            ; preds = %_RNvXs7_NtCs8jFhWeO2DFb_9typst_pdf4utilNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color16SpotColorantNameNtB5_21SpotColorantToNameExt9to_krilla.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !14533
  invoke void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor8to_space(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(none) dereferenceable(20) %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.ab, i8 noundef 3)
          to label %.noexc318.i.i unwind label %bb.hz, !noalias !14524

.noexc318.i.i:                                    ; preds = %bb.hw
  %i.aae = invoke noundef i32 @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_12ProcessColor10to_vec4_u8(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.x)
          to label %.noexc319.i.i unwind label %bb.hz, !noalias !14524

.noexc319.i.i:                                    ; preds = %.noexc318.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !14533
  %.sroa.02.0.extract.trunc.i.mask.i315.i.i = shl i32 %i.aae, 8
  %i.aaf = and i32 %.sroa.02.0.extract.trunc.i.mask.i315.i.i, 65280
  %i.aag = or disjoint i32 %i.aaf, 1
  %.sroa.03.0.insert.insert.i316.i.i = zext nneg i32 %i.aag to i40
  br label %_RNvNtCs8jFhWeO2DFb_9typst_pdf5paint12convert_spot.exit.i.i.i

end_hunk_0
