Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SampleProfileInference?download=true
inline.NumInlined: 1802
inline.NumDeleted: 887
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm18applyFlowInferenceERKNS_11ProfiParamsERNS_12FlowFunctionE:bb.a
_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i.i.i: ; preds = %bb.dk, %_ZNKSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %i.uy, i64 8 ; 2 uses
  %.not.i21.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i.i.i, label %_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i.i.i
  %i.vb = load ptr, ptr %i.ts, align 8, !tbaa !214, !noalias !204
  %i.vc = ptrtoint ptr %i.vb to i64
  %i.vd = sub i64 %i.vc, %i.un
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %i.vd) #19, !noalias !204
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.dl, %_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit20.i.i.i.i.i.i
  store ptr %i.ux, ptr %i.ti, align 8, !tbaa !212, !noalias !204
  store ptr %i.va, ptr %i.tk, align 8, !tbaa !213, !noalias !204
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uv
  store ptr %i.ve, ptr %i.ts, align 8, !tbaa !214, !noalias !204
  br label %_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE9push_backEOS3_.exit.i.i.i

_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE9push_backEOS3_.exit.i.i.i: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i, %bb.dh, %bb.df, %bb.de, %bb.dd, %.lr.ph102.i.i.i
  %.val.i.i.i.i.i.i168 = phi ptr [ %i.ux, %_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %bb.dh ], [ %.val.i.i.i.i.i.i, %bb.df ], [ %.val.i.i.i.i.i.i, %bb.de ], [ %.val.i.i.i.i.i.i, %bb.dd ], [ %.val.i.i.i.i.i.i, %.lr.ph102.i.i.i ]
  %i.vf = phi ptr [ %i.va, %_ZNSt6vectorIPN12_GLOBAL__N_114MinCostMaxFlow4EdgeESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i ], [ %i.ul, %bb.dh ], [ %i.tu, %bb.df ], [ %i.tu, %bb.de ], [ %i.tu, %bb.dd ], [ %i.tu, %.lr.ph102.i.i.i ]
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.078.0101.i.i.i, i64 56 ; 2 uses
  %.not95.i.i.i = icmp eq ptr %i.vg, %.val42.i.i.i
  br i1 %.not95.i.i.i, label %._crit_edge103.i.i.i, label %.lr.ph102.i.i.i

_ZN12_GLOBAL__N_114MinCostMaxFlow17findAugmentingDAGEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i26.i.i, %._crit_edge107.i.i.i
  %i.vh = shl i64 %.sroa.993.1.i.i, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.089.1.i.i, i64 noundef %i.vh) #19, !noalias !204
  %.not4456.i.i.i = icmp eq ptr %.sroa.0.1.i.i, %.sroa.6.1.i.i ; 2 uses
  br i1 %.not4456.i.i.i, label %._crit_edge60.thread.i.i.i, label %.lr.ph59.i.i.i

._crit_edge60.thread.i.i.i:                       ; preds = %_ZN12_GLOBAL__N_114MinCostMaxFlow17findAugmentingDAGEv.exit.i.i
  store double 1.000000e+00, ptr %i.kx, align 8, !tbaa !215
  store i64 1125899906842624, ptr %i.ky, align 8, !tbaa !216
  br label %.critedge.i.i.i

._crit_edge60.i.i.i:                              ; preds = %._crit_edge.i33.i.i
  store double 1.000000e+00, ptr %i.kx, align 8, !tbaa !215
  br label %bb.dm

.lr.ph59.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_114MinCostMaxFlow17findAugmentingDAGEv.exit.i.i, %._crit_edge.i33.i.i
  %.sroa.038.057.i.i.i = phi ptr [ %i.vn, %._crit_edge.i33.i.i ], [ %.sroa.0.1.i.i, %_ZN12_GLOBAL__N_114MinCostMaxFlow17findAugmentingDAGEv.exit.i.i ] ; 2 uses
  %i.vi = load i64, ptr %.sroa.038.057.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.vj = getelementptr inbounds nuw [72 x i8], ptr %.val8.i.i.i, i64 %i.vi
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 32
  %i.vl = getelementptr inbounds nuw [24 x i8], ptr %.val66.i.i.i, i64 %i.vi ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vk, i8 0, i64 16, i1 false)
  %.val128.i.i.i = load ptr, ptr %i.vl, align 8, !tbaa !217 ; 2 uses
  %i.vm = getelementptr i8, ptr %i.vl, i64 8
  %.val123.i.i.i = load ptr, ptr %i.vm, align 8, !tbaa !217 ; 2 uses
  %.not5254.i.i.i = icmp eq ptr %.val128.i.i.i, %.val123.i.i.i
  br i1 %.not5254.i.i.i, label %._crit_edge.i33.i.i, label %.lr.ph.i32.i.i

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i32.i.i, %.lr.ph59.i.i.i
  %i.vn = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8 ; 2 uses
  %.not44.i.i.i = icmp eq ptr %i.vn, %.sroa.6.1.i.i
  br i1 %.not44.i.i.i, label %._crit_edge60.i.i.i, label %.lr.ph59.i.i.i

.lr.ph.i32.i.i:                                   ; preds = %.lr.ph59.i.i.i, %.lr.ph.i32.i.i
  %.sroa.036.055.i.i.i = phi ptr [ %i.vq, %.lr.ph.i32.i.i ], [ %.val128.i.i.i, %.lr.ph59.i.i.i ] ; 2 uses
  %i.vo = load ptr, ptr %.sroa.036.055.i.i.i, align 8, !tbaa !202
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 48
  store i64 0, ptr %i.vp, align 8, !tbaa !218
  %i.vq = getelementptr inbounds nuw i8, ptr %.sroa.036.055.i.i.i, i64 8 ; 2 uses
  %.not52.i.i.i = icmp eq ptr %i.vq, %.val123.i.i.i
  br i1 %.not52.i.i.i, label %._crit_edge.i33.i.i, label %.lr.ph.i32.i.i

._crit_edge72.i.i.i:                              ; preds = %._crit_edge66.i.i.i
  %i.vr = icmp eq i64 %.142.lcssa.i.i.i, 0
  br i1 %i.vr, label %.lr.ph.i45.i.i, label %bb.dq

bb.dm:                                            ; preds = %._crit_edge66.i.i.i, %._crit_edge60.i.i.i
  %.sroa.029.069.i.i.i = phi ptr [ %.sroa.0.1.i.i, %._crit_edge60.i.i.i ], [ %i.wc, %._crit_edge66.i.i.i ] ; 2 uses
  %.04168.i.i.i = phi i64 [ 1125899906842624, %._crit_edge60.i.i.i ], [ %.142.lcssa.i.i.i, %._crit_edge66.i.i.i ] ; 2 uses
  %i.vs = load i64, ptr %.sroa.029.069.i.i.i, align 8, !tbaa !35 ; 2 uses
  %i.vt = getelementptr inbounds nuw [24 x i8], ptr %.val66.i.i.i, i64 %i.vs ; 2 uses
  %.val93.i.i.i = load ptr, ptr %i.vt, align 8, !tbaa !212 ; 3 uses
  %i.vu = getelementptr i8, ptr %i.vt, i64 8
  %.val94.i.i.i = load ptr, ptr %i.vu, align 8, !tbaa !213 ; 3 uses
  %.not5161.i.i.i = icmp eq ptr %.val93.i.i.i, %.val94.i.i.i
  br i1 %.not5161.i.i.i, label %._crit_edge66.i.i.i, label %.lr.ph65.i.i.i

.lr.ph65.i.i.i:                                   ; preds = %bb.dm
  %i.vv = ptrtoint ptr %.val94.i.i.i to i64
  %i.vw = ptrtoint ptr %.val93.i.i.i to i64
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = ashr exact i64 %i.vx, 3
  %i.vz = getelementptr inbounds nuw [72 x i8], ptr %.val8.i.i.i, i64 %i.vs
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 32
  %i.wb = uitofp i64 %i.vy to double
  br label %bb.dn

._crit_edge66.i.i.i:                              ; preds = %bb.dp, %bb.dm
  %.142.lcssa.i.i.i = phi i64 [ %.04168.i.i.i, %bb.dm ], [ %.243.i.i.i, %bb.dp ] ; 3 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.029.069.i.i.i, i64 8 ; 2 uses
  %.not45.i.i.i = icmp eq ptr %i.wc, %.sroa.6.1.i.i
  br i1 %.not45.i.i.i, label %._crit_edge72.i.i.i, label %bb.dm

bb.dn:                                            ; preds = %bb.dp, %.lr.ph65.i.i.i
  %.sroa.027.063.i.i.i = phi ptr [ %.val93.i.i.i, %.lr.ph65.i.i.i ], [ %i.wv, %bb.dp ] ; 2 uses
  %.14262.i.i.i = phi i64 [ %.04168.i.i.i, %.lr.ph65.i.i.i ], [ %.243.i.i.i, %bb.dp ] ; 2 uses
  %i.wd = load double, ptr %i.wa, align 8, !tbaa !215
  %i.we = fdiv double %i.wd, %i.wb                ; 2 uses
  %i.wf = load ptr, ptr %.sroa.027.063.i.i.i, align 8, !tbaa !202 ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 24
  %i.wh = load i64, ptr %i.wg, align 8, !tbaa !198
  %i.wi = getelementptr inbounds nuw [72 x i8], ptr %.val8.i.i.i, i64 %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 32 ; 2 uses
  %i.wk = load double, ptr %i.wj, align 8, !tbaa !215
  %i.wl = fadd double %i.we, %i.wk
  store double %i.wl, ptr %i.wj, align 8, !tbaa !215
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !197 ; 2 uses
  %i.wo = icmp eq i64 %i.wn, 1125899906842624
  br i1 %i.wo, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wf, i64 16
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !196
  %i.wr = sub nsw i64 %i.wn, %i.wq
  %i.ws = sitofp i64 %i.wr to double
  %i.wt = fdiv double %i.ws, %i.we
  %i.wu = fptoui double %i.wt to i64
  %.sroa.speculated23.i.i.i = tail call i64 @llvm.umin.i64(i64 %.14262.i.i.i, i64 %i.wu)
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.243.i.i.i = phi i64 [ %.14262.i.i.i, %bb.dn ], [ %.sroa.speculated23.i.i.i, %bb.do ] ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %.sroa.027.063.i.i.i, i64 8 ; 2 uses
  %.not51.i.i.i = icmp eq ptr %i.wv, %.val94.i.i.i
  br i1 %.not51.i.i.i, label %._crit_edge66.i.i.i, label %bb.dn

bb.dq:                                            ; preds = %._crit_edge72.i.i.i
  store i64 %.142.lcssa.i.i.i, ptr %i.ky, align 8, !tbaa !216
  br label %bb.dr

bb.dr:                                            ; preds = %._crit_edge78.i.i.i, %bb.dq
  %.sroa.019.080.i.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.dq ], [ %i.yc, %._crit_edge78.i.i.i ] ; 2 uses
  %i.ww = load i64, ptr %.sroa.019.080.i.i.i, align 8, !tbaa !35 ; 3 uses
  %.not.i34.i.i = icmp eq i64 %i.ww, %i.ae
  br i1 %.not.i34.i.i, label %.critedge.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.wx = getelementptr inbounds nuw [24 x i8], ptr %.val66.i.i.i, i64 %i.ww ; 2 uses
  %.val.i35.i.i = load ptr, ptr %i.wx, align 8, !tbaa !212 ; 3 uses
  %i.wy = getelementptr i8, ptr %i.wx, i64 8
  %.val92.i.i.i = load ptr, ptr %i.wy, align 8, !tbaa !213 ; 3 uses
  %i.wz = ptrtoint ptr %.val92.i.i.i to i64
  %i.xa = ptrtoint ptr %.val.i35.i.i to i64
  %i.xb = sub i64 %i.wz, %i.xa
  %i.xc = ashr exact i64 %i.xb, 3                 ; 2 uses
  %i.xd = getelementptr inbounds nuw [72 x i8], ptr %.val8.i.i.i, i64 %i.ww
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 40 ; 4 uses
  %i.xf = load i64, ptr %i.xe, align 8, !tbaa !216
  %i.xg = add i64 %i.xf, -1
  %i.xh = add i64 %i.xg, %i.xc
  %i.xi = udiv i64 %i.xh, %i.xc
  %.not4774.i.i.i = icmp eq ptr %.val.i35.i.i, %.val92.i.i.i
  br i1 %.not4774.i.i.i, label %._crit_edge78.i.i.i, label %.lr.ph77.i.i.i

.lr.ph77.i.i.i:                                   ; preds = %bb.ds, %.lr.ph77.i.i.i
  %.sroa.014.075.i.i.i = phi ptr [ %i.yb, %.lr.ph77.i.i.i ], [ %.val.i35.i.i, %bb.ds ] ; 2 uses
  %i.xj = load ptr, ptr %.sroa.014.075.i.i.i, align 8, !tbaa !202 ; 4 uses
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 24
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !198
  %i.xm = load i64, ptr %i.xe, align 8, !tbaa !35
  %.sroa.speculated15.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.xi, i64 %i.xm)
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xj, i64 8
  %i.xo = load i64, ptr %i.xn, align 8, !tbaa !197
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !196
  %i.xr = sub nsw i64 %i.xo, %i.xq
  %.sroa.speculated.i36.i.i = tail call i64 @llvm.umin.i64(i64 %i.xr, i64 %.sroa.speculated15.i.i.i) ; 3 uses
  %i.xs = getelementptr inbounds nuw [72 x i8], ptr %.val8.i.i.i, i64 %i.xl
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 40 ; 2 uses
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !216
  %i.xv = add i64 %.sroa.speculated.i36.i.i, %i.xu
  store i64 %i.xv, ptr %i.xt, align 8, !tbaa !216
  %i.xw = load i64, ptr %i.xe, align 8, !tbaa !216
  %i.xx = sub i64 %i.xw, %.sroa.speculated.i36.i.i
  store i64 %i.xx, ptr %i.xe, align 8, !tbaa !216
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xj, i64 48 ; 2 uses
  %i.xz = load i64, ptr %i.xy, align 8, !tbaa !218
  %i.ya = add i64 %i.xz, %.sroa.speculated.i36.i.i
  store i64 %i.ya, ptr %i.xy, align 8, !tbaa !218
  %i.yb = getelementptr inbounds nuw i8, ptr %.sroa.014.075.i.i.i, i64 8 ; 2 uses
  %.not47.i37.i.i = icmp eq ptr %i.yb, %.val92.i.i.i
  br i1 %.not47.i37.i.i, label %._crit_edge78.i.i.i, label %.lr.ph77.i.i.i

._crit_edge78.i.i.i:                              ; preds = %.lr.ph77.i.i.i, %bb.ds
  %i.yc = getelementptr inbounds nuw i8, ptr %.sroa.019.080.i.i.i, i64 8 ; 2 uses
  %.not46.i.i.i = icmp eq ptr %i.yc, %.sroa.6.1.i.i
  br i1 %.not46.i.i.i, label %.critedge.i.i.i, label %bb.dr

.critedge.i.i.i:                                  ; preds = %._crit_edge78.i.i.i, %bb.dr, %._crit_edge60.thread.i.i.i
  store i64 0, ptr %i.kz, align 8, !tbaa !216
  %i.yd = ptrtoint ptr %.sroa.6.1.i.i to i64
  %i.ye = ptrtoint ptr %.sroa.0.1.i.i to i64
  %i.yf = sub i64 %i.yd, %i.ye
  %i.yg = ashr exact i64 %i.yf, 3                 ; 2 uses
  %.08488.i.i.i = add nsw i64 %i.yg, -1           ; 2 uses
  %.not9089.i.i.i = icmp eq i64 %.08488.i.i.i, 0
  br i1 %.not9089.i.i.i, label %.preheader.i38.i.i, label %.lr.ph92.i.i.i

.loopexit53.i.i.i:                                ; preds = %bb.dv, %.lr.ph92.i.i.i
  %.084.i.i.i = add i64 %.08491.i.i.i, -1         ; 2 uses
  %.not90.i.i.i = icmp eq i64 %.084.i.i.i, 0
  br i1 %.not90.i.i.i, label %.preheader.i38.i.i, label %.lr.ph92.i.i.i, !llvm.loop !136

.preheader.i38.i.i:                               ; preds = %.loopexit53.i.i.i, %.critedge.i.i.i
  br i1 %.not4456.i.i.i, label %.lr.ph.i45.i.i, label %.lr.ph103.i.i.i

.lr.ph103.i.i.i:                                  ; preds = %.preheader.i38.i.i
  %.val95.i.i.i = load ptr, ptr %i.bw, align 8
  br label %bb.dw

.lr.ph92.i.i.i:                                   ; preds = %.critedge.i.i.i, %.loopexit53.i.i.i
  %.08491.i.i.i = phi i64 [ %.084.i.i.i, %.loopexit53.i.i.i ], [ %.08488.i.i.i, %.critedge.i.i.i ] ; 2 uses
  %.084.in90.i.i.i = phi i64 [ %.08491.i.i.i, %.loopexit53.i.i.i ], [ %i.yg, %.critedge.i.i.i ]
  %i.yh = getelementptr [8 x i8], ptr %.sroa.0.1.i.i, i64 %.084.in90.i.i.i
  %i.yi = getelementptr i8, ptr %i.yh, i64 -16
  %i.yj = load i64, ptr %i.yi, align 8, !tbaa !35 ; 2 uses
  %i.yk = getelementptr inbounds nuw [24 x i8], ptr %.val66.i.i.i, i64 %i.yj ; 2 uses
  %.val125.i.i.i = load ptr, ptr %i.yk, align 8, !tbaa !217 ; 2 uses
  %i.yl = getelementptr i8, ptr %i.yk, i64 8
  %.val120.i.i.i = load ptr, ptr %i.yl, align 8, !tbaa !217 ; 2 uses
  %.not4884.i.i.i = icmp eq ptr %.val125.i.i.i, %.val120.i.i.i
  br i1 %.not4884.i.i.i, label %.loopexit53.i.i.i, label %.lr.ph87.i.i.i

.lr.ph87.i.i.i:                                   ; preds = %.lr.ph92.i.i.i
  %i.ym = getelementptr inbounds nuw [72 x i8], ptr %.val8.i.i.i, i64 %i.yj
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 40 ; 2 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.dv, %.lr.ph87.i.i.i
  %.sroa.07.085.i.i.i = phi ptr [ %.val125.i.i.i, %.lr.ph87.i.i.i ], [ %i.zc, %bb.dv ] ; 2 uses
  %i.yo = load ptr, ptr %.sroa.07.085.i.i.i, align 8, !tbaa !202 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.yq = load i64, ptr %i.yp, align 8, !tbaa !198
  %i.yr = getelementptr inbounds nuw [72 x i8], ptr %.val8.i.i.i, i64 %i.yq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 40 ; 2 uses
  %i.yt = load i64, ptr %i.ys, align 8, !tbaa !216 ; 3 uses
  %i.yu = icmp eq i64 %i.yt, 0
  br i1 %i.yu, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yo, i64 48 ; 2 uses
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !35 ; 2 uses
  %i.yx = tail call i64 @llvm.umin.i64(i64 %i.yw, i64 %i.yt) ; 3 uses
  %i.yy = sub i64 %i.yt, %i.yx
  store i64 %i.yy, ptr %i.ys, align 8, !tbaa !216
  %i.yz = load i64, ptr %i.yn, align 8, !tbaa !216
  %i.za = add i64 %i.yz, %i.yx
  store i64 %i.za, ptr %i.yn, align 8, !tbaa !216
  %i.zb = sub i64 %i.yw, %i.yx
  store i64 %i.zb, ptr %i.yv, align 8, !tbaa !218
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.zc = getelementptr inbounds nuw i8, ptr %.sroa.07.085.i.i.i, i64 8 ; 2 uses
  %.not48.i.i.i = icmp eq ptr %i.zc, %.val120.i.i.i
  br i1 %.not48.i.i.i, label %.loopexit53.i.i.i, label %bb.dt

bb.dw:                                            ; preds = %._crit_edge98.i.i.i, %.lr.ph103.i.i.i
  %.0102.i.i.i = phi i1 [ false, %.lr.ph103.i.i.i ], [ %.1.lcssa.i.i.i, %._crit_edge98.i.i.i ] ; 2 uses
  %.sroa.03.0101.i.i.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph103.i.i.i ], [ %i.zg, %._crit_edge98.i.i.i ] ; 2 uses
  %i.zd = load i64, ptr %.sroa.03.0101.i.i.i, align 8, !tbaa !35
  %i.ze = getelementptr inbounds nuw [24 x i8], ptr %.val66.i.i.i, i64 %i.zd ; 2 uses
  %.val124.i.i.i = load ptr, ptr %i.ze, align 8, !tbaa !217 ; 2 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 8
  %.val119.i.i.i = load ptr, ptr %i.zf, align 8, !tbaa !217 ; 2 uses
  %.not5093.i.i.i = icmp eq ptr %.val124.i.i.i, %.val119.i.i.i
  br i1 %.not5093.i.i.i, label %._crit_edge98.i.i.i, label %.lr.ph97.i.i.i

._crit_edge98.i.i.i:                              ; preds = %.lr.ph97.i.i.i, %bb.dw
  %.1.lcssa.i.i.i = phi i1 [ %.0102.i.i.i, %bb.dw ], [ %.2.i39.i.i, %.lr.ph97.i.i.i ] ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.03.0101.i.i.i, i64 8 ; 2 uses
  %.not49.i.i.i = icmp eq ptr %i.zg, %.sroa.6.1.i.i
  br i1 %.not49.i.i.i, label %.lr.ph.i45.i.i, label %bb.dw

.lr.ph97.i.i.i:                                   ; preds = %bb.dw, %.lr.ph97.i.i.i
  %.195.i.i.i = phi i1 [ %.2.i39.i.i, %.lr.ph97.i.i.i ], [ %.0102.i.i.i, %bb.dw ]
  %.sroa.01.094.i.i.i = phi ptr [ %i.aab, %.lr.ph97.i.i.i ], [ %.val124.i.i.i, %bb.dw ] ; 2 uses
  %i.zh = load ptr, ptr %.sroa.01.094.i.i.i, align 8, !tbaa !202 ; 5 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 24
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !198
  %i.zk = getelementptr inbounds nuw [24 x i8], ptr %.val95.i.i.i, i64 %i.zj
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zh, i64 32
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !219
  %.val111.i.i.i = load ptr, ptr %i.zk, align 8, !tbaa !56
  %i.zn = getelementptr inbounds nuw [56 x i8], ptr %.val111.i.i.i, i64 %i.zm
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zh, i64 48
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !218 ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zh, i64 16 ; 3 uses
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !196
  %i.zs = add i64 %i.zr, %i.zp
  store i64 %i.zs, ptr %i.zq, align 8, !tbaa !196
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zn, i64 16 ; 2 uses
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !196
  %i.zv = sub i64 %i.zu, %i.zp
  store i64 %i.zv, ptr %i.zt, align 8, !tbaa !196
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zh, i64 8
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !197
  %i.zy = load i64, ptr %i.zq, align 8, !tbaa !196
  %i.zz = icmp eq i64 %i.zx, %i.zy
  %.not91.i.i.i = icmp ne i64 %i.zp, 0
  %i.aaa = select i1 %i.zz, i1 %.not91.i.i.i, i1 false
  %.2.i39.i.i = select i1 %i.aaa, i1 true, i1 %.195.i.i.i ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.sroa.01.094.i.i.i, i64 8 ; 2 uses
  %.not50.i.i.i = icmp eq ptr %i.aab, %.val119.i.i.i
  br i1 %.not50.i.i.i, label %._crit_edge98.i.i.i, label %.lr.ph97.i.i.i

.lr.ph.i45.i.i:                                   ; preds = %._crit_edge98.i.i.i, %._crit_edge72.i.i.i, %.preheader.i38.i.i
  %.083.i.i.i = phi i1 [ false, %._crit_edge72.i.i.i ], [ false, %.preheader.i38.i.i ], [ %.1.lcssa.i.i.i, %._crit_edge98.i.i.i ] ; 2 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dx, %.lr.ph.i45.i.i
  %.017.i48.i.i = phi i64 [ %i.ae, %.lr.ph.i45.i.i ], [ %i.aae, %bb.dx ]
  %.01416.i49.i.i = phi i64 [ 1125899906842624, %.lr.ph.i45.i.i ], [ %.sroa.speculated.i51.i.i, %bb.dx ]
  %i.aac = getelementptr inbounds nuw [72 x i8], ptr %.val8.i.i.i, i64 %.017.i48.i.i ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aae = load i64, ptr %i.aad, align 8, !tbaa !200 ; 3 uses
  %i.aaf = getelementptr inbounds nuw [24 x i8], ptr %.val.i11.i.i, i64 %i.aae
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !201
  %.val9.i50.i.i = load ptr, ptr %i.aaf, align 8, !tbaa !56
  %i.aai = getelementptr inbounds nuw [56 x i8], ptr %.val9.i50.i.i, i64 %i.aah ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aai, i64 8
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !197
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !196
  %i.aan = sub nsw i64 %i.aak, %i.aam
  %.sroa.speculated.i51.i.i = tail call i64 @llvm.umin.i64(i64 %i.aan, i64 %.01416.i49.i.i) ; 5 uses
  %.not.i52.i.i = icmp eq i64 %i.aae, %i.ad
  br i1 %.not.i52.i.i, label %_ZN12_GLOBAL__N_114MinCostMaxFlow29computeAugmentingPathCapacityEv.exit55.i.i, label %bb.dx, !llvm.loop !129

_ZN12_GLOBAL__N_114MinCostMaxFlow29computeAugmentingPathCapacityEv.exit55.i.i: ; preds = %bb.dx
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.0.1.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN12_GLOBAL__N_114MinCostMaxFlow29computeAugmentingPathCapacityEv.exit55.i.i
  %i.aao = ptrtoint ptr %.sroa.9.1.i.i to i64
  %i.aap = ptrtoint ptr %.sroa.0.1.i.i to i64
  %i.aaq = sub i64 %i.aao, %i.aap
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.i.i, i64 noundef %i.aaq) #19
  br i1 %.083.i.i.i, label %_ZN12_GLOBAL__N_114MinCostMaxFlow20augmentFlowAlongPathEm.exit.i.i, label %.lr.ph.i56.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %_ZN12_GLOBAL__N_114MinCostMaxFlow29computeAugmentingPathCapacityEv.exit55.i.i
  br i1 %.083.i.i.i, label %_ZN12_GLOBAL__N_114MinCostMaxFlow20augmentFlowAlongPathEm.exit.i.i, label %.lr.ph.i56.i.i

.lr.ph.i56.i.i:                                   ; preds = %.lr.ph.i.i, %.split.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %.1117.i.i = phi i64 [ %.sroa.speculated.i51.i.i, %.split.i.i ], [ %.sroa.speculated.i51.i.i, %_ZNSt6vectorImSaImEED2Ev.exit.i.i ], [ %.06134.i.i, %.lr.ph.i.i ] ; 2 uses
  %.val13.i.i.i = load ptr, ptr %8, align 8, !tbaa !176 ; 2 uses
  %.val11.i.i.i = load ptr, ptr %i.bw, align 8, !tbaa !39 ; 2 uses
  %.phi.trans.insert.i57.i.i = getelementptr inbounds nuw [24 x i8], ptr %.val11.i.i.i, i64 %i.ae
  %.val14.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i57.i.i, align 8, !tbaa !56
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dy, %.lr.ph.i56.i.i
  %.val14.i.i.i = phi ptr [ %.val14.pre.i.i.i, %.lr.ph.i56.i.i ], [ %.val15.i.i.i, %bb.dy ]
  %.017.i58.i.i = phi i64 [ %i.ae, %.lr.ph.i56.i.i ], [ %i.aat, %bb.dy ]
  %i.aar = getelementptr inbounds nuw [72 x i8], ptr %.val13.i.i.i, i64 %.017.i58.i.i ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 8
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !200 ; 3 uses
  %i.aau = getelementptr inbounds nuw [24 x i8], ptr %.val11.i.i.i, i64 %i.aat
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 16
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !201
  %.val15.i.i.i = load ptr, ptr %i.aau, align 8, !tbaa !56 ; 2 uses
  %i.aax = getelementptr inbounds nuw [56 x i8], ptr %.val15.i.i.i, i64 %i.aaw ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 32
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !219
  %i.aba = getelementptr inbounds nuw [56 x i8], ptr %.val14.i.i.i, i64 %i.aaz
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aax, i64 16 ; 2 uses
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !196
  %i.abd = add i64 %i.abc, %.1117.i.i
  store i64 %i.abd, ptr %i.abb, align 8, !tbaa !196
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aba, i64 16 ; 2 uses
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !196
  %i.abg = sub i64 %i.abf, %.1117.i.i
  store i64 %i.abg, ptr %i.abe, align 8, !tbaa !196
  %.not.i59.i.i = icmp eq i64 %i.aat, %i.ad
  br i1 %.not.i59.i.i, label %.loopexit.i.i, label %bb.dy, !llvm.loop !137

_ZN12_GLOBAL__N_114MinCostMaxFlow20augmentFlowAlongPathEm.exit.i.i: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %.split.i.i
  %.not.i.i = icmp eq i64 %.sroa.speculated.i51.i.i, 0
  br i1 %.not.i.i, label %.loopexit.i.i.loopexit155, label %.lr.ph.i.i, !llvm.loop !138

_ZN12_GLOBAL__N_114MinCostMaxFlow3runEv.exit:     ; preds = %_ZN12_GLOBAL__N_114MinCostMaxFlow18findAugmentingPathEv.exit.i.i
  %.val = load ptr, ptr %i.bw, align 8
  %i.abh = load ptr, ptr %i.c, align 8, !tbaa !63 ; 2 uses
  %i.abi = load ptr, ptr %1, align 8, !tbaa !41   ; 2 uses
  %i.abj = ptrtoint ptr %i.abh to i64
  %i.abk = ptrtoint ptr %i.abi to i64
  %i.abl = sub i64 %i.abj, %i.abk                 ; 2 uses
  %i.abm = sdiv exact i64 %i.abl, 80              ; 7 uses
  %i.abn = load ptr, ptr %i.g, align 8, !tbaa !220 ; 3 uses
  %i.abo = load ptr, ptr %i.e, align 8, !tbaa !186 ; 4 uses
  %.not30.i = icmp eq ptr %i.abn, %i.abo
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN12_GLOBAL__N_114MinCostMaxFlow3runEv.exit
  %i.abp = ptrtoint ptr %i.abn to i64
  %i.abq = ptrtoint ptr %i.abo to i64
  %i.abr = sub i64 %i.abp, %i.abq
  %i.abs = sdiv exact i64 %i.abr, 40
  br label %.lr.ph.i30

._crit_edge.i:                                    ; preds = %_ZNK12_GLOBAL__N_114MinCostMaxFlow7getFlowEmm.exit.i, %_ZN12_GLOBAL__N_114MinCostMaxFlow3runEv.exit
  %i.abt = icmp ugt i64 %i.abm, 1152921504606846975
  br i1 %i.abt, label %bb.dz, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.dz:                                            ; preds = %._crit_edge.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #17
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %._crit_edge.i
  %.not.i.i.i.i.i36 = icmp eq ptr %i.abh, %i.abi  ; 2 uses
  br i1 %.not.i.i.i.i.i36, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit46.i, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i39.i

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i39.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.abu = shl nuw nsw i64 %i.abm, 3              ; 4 uses
end_hunk_0
