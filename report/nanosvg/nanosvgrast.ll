Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanosvg/original/nanosvgrast?download=true
inline.NumInlined: 431
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@nsvg__expandStroke:bb.a
  store i32 %spec.select.i140.i, ptr %i.em, align 4, !tbaa !120
  %i.tb = load ptr, ptr %i.en, align 8, !tbaa !98
  %i.tc = zext nneg i32 %spec.select.i140.i to i64
  %i.td = shl nuw nsw i64 %i.tc, 5
  %i.te = tail call ptr @realloc(ptr noundef %i.tb, i64 noundef %i.td) #32 ; 3 uses
  store ptr %i.te, ptr %i.en, align 8, !tbaa !98
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %nsvg__roundJoin.exit, label %._crit_edge36.i141.i

._crit_edge36.i141.i:                             ; preds = %bb.aq
  %.pre37.i142.i = load i32, ptr %i.el, align 8, !tbaa !112
  br label %.sink.split.i143.i

.sink.split.i143.i:                               ; preds = %._crit_edge36.i141.i, %._crit_edge.i149.i
  %i.tg = phi i32 [ %i.sx, %._crit_edge.i149.i ], [ %.pre37.i142.i, %._crit_edge36.i141.i ] ; 2 uses
  %i.th = phi ptr [ %.pre.i151.i, %._crit_edge.i149.i ], [ %i.te, %._crit_edge36.i141.i ]
  %i.ti = sext i32 %i.tg to i64
  %i.tj = getelementptr inbounds [32 x i8], ptr %i.th, i64 %i.ti ; 2 uses
  %i.tk = add nsw i32 %i.tg, 1
  store i32 %i.tk, ptr %i.el, align 8, !tbaa !112
  %i.tl = fcmp olt float %i.su, %i.sv             ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 16
  %.49.i148.i = select i1 %i.tl, i32 1, i32 -1
  %i.tn = insertelement <4 x i1> poison, i1 %i.tl, i64 0
  %i.to = shufflevector <4 x i1> %i.tn, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.tp = shufflevector <2 x float> %i.ss, <2 x float> %i.st, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.tq = shufflevector <2 x float> %i.ss, <2 x float> %i.st, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.tr = select <4 x i1> %i.to, <4 x float> %i.tp, <4 x float> %i.tq
  store <4 x float> %i.tr, ptr %i.tj, align 8, !tbaa !31
  store i32 %.49.i148.i, ptr %i.tm, align 8, !tbaa !122
  br label %nsvg__roundJoin.exit

bb.ar:                                            ; preds = %bb.k
  %i.ts = getelementptr inbounds nuw i8, ptr %.1257, i64 20
  %i.tt = load <2 x float>, ptr %.1257, align 4, !tbaa !31 ; 2 uses
  %i.tu = load <2 x float>, ptr %i.ts, align 4, !tbaa !31 ; 2 uses
  %i.tv = fneg <2 x float> %i.tu
  %i.tw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tv, <2 x float> %i.ep, <2 x float> %i.tt) ; 6 uses
  %i.tx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tu, <2 x float> %i.ep, <2 x float> %i.tt) ; 6 uses
  %i.ty = load <2 x float>, ptr %7, align 8, !tbaa !31 ; 2 uses
  %i.tz = load float, ptr %i.ej, align 4, !tbaa !118 ; 2 uses
  %i.ua = extractelement <2 x float> %i.tw, i64 1 ; 2 uses
  %i.ub = fcmp oeq float %i.ua, %i.tz
  br i1 %i.ub, label %nsvg__addEdge.exit.i170, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.uc = load i32, ptr %i.el, align 8, !tbaa !112 ; 2 uses
  %i.ud = load i32, ptr %i.em, align 4, !tbaa !120 ; 3 uses
  %.not.i.i160 = icmp slt i32 %i.uc, %i.ud
  br i1 %.not.i.i160, label %._crit_edge.i.i171, label %bb.at

._crit_edge.i.i171:                               ; preds = %bb.as
  %.pre.i.i173 = load ptr, ptr %i.en, align 8, !tbaa !98
  br label %.sink.split.i.i164

bb.at:                                            ; preds = %bb.as
  %i.ue = icmp sgt i32 %i.ud, 0
  %i.uf = shl nuw nsw i32 %i.ud, 1
  %spec.select.i.i161 = select i1 %i.ue, i32 %i.uf, i32 64 ; 2 uses
  store i32 %spec.select.i.i161, ptr %i.em, align 4, !tbaa !120
  %i.ug = load ptr, ptr %i.en, align 8, !tbaa !98
  %i.uh = zext nneg i32 %spec.select.i.i161 to i64
  %i.ui = shl nuw nsw i64 %i.uh, 5
  %i.uj = tail call ptr @realloc(ptr noundef %i.ug, i64 noundef %i.ui) #32 ; 3 uses
  store ptr %i.uj, ptr %i.en, align 8, !tbaa !98
  %i.uk = icmp eq ptr %i.uj, null
  br i1 %i.uk, label %nsvg__addEdge.exit.i170, label %._crit_edge36.i.i162

._crit_edge36.i.i162:                             ; preds = %bb.at
  %.pre37.i.i163 = load i32, ptr %i.el, align 8, !tbaa !112
  br label %.sink.split.i.i164

.sink.split.i.i164:                               ; preds = %._crit_edge36.i.i162, %._crit_edge.i.i171
  %i.ul = phi i32 [ %i.uc, %._crit_edge.i.i171 ], [ %.pre37.i.i163, %._crit_edge36.i.i162 ] ; 2 uses
  %i.um = phi ptr [ %.pre.i.i173, %._crit_edge.i.i171 ], [ %i.uj, %._crit_edge36.i.i162 ]
  %i.un = sext i32 %i.ul to i64
  %i.uo = getelementptr inbounds [32 x i8], ptr %i.um, i64 %i.un ; 2 uses
  %i.up = add nsw i32 %i.ul, 1
  store i32 %i.up, ptr %i.el, align 8, !tbaa !112
  %i.uq = fcmp olt float %i.ua, %i.tz             ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uo, i64 16
  %.49.i.i169 = select i1 %i.uq, i32 1, i32 -1
  %i.us = insertelement <4 x i1> poison, i1 %i.uq, i64 0
  %i.ut = shufflevector <4 x i1> %i.us, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.uu = shufflevector <2 x float> %i.tw, <2 x float> %i.ty, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uv = shufflevector <2 x float> %i.ty, <2 x float> %i.tw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.uw = select <4 x i1> %i.ut, <4 x float> %i.uu, <4 x float> %i.uv
  store <4 x float> %i.uw, ptr %i.uo, align 8, !tbaa !31
  store i32 %.49.i.i169, ptr %i.ur, align 8, !tbaa !122
  br label %nsvg__addEdge.exit.i170

nsvg__addEdge.exit.i170:                          ; preds = %.sink.split.i.i164, %bb.at, %bb.ar
  %i.ux = load <2 x float>, ptr %8, align 8, !tbaa !31 ; 2 uses
  %i.uy = load float, ptr %i.ek, align 4, !tbaa !118 ; 2 uses
  %i.uz = extractelement <2 x float> %i.tx, i64 1 ; 2 uses
  %i.va = fcmp oeq float %i.uy, %i.uz
  br i1 %i.va, label %nsvg__roundJoin.exit, label %bb.au

bb.au:                                            ; preds = %nsvg__addEdge.exit.i170
  %i.vb = load i32, ptr %i.el, align 8, !tbaa !112 ; 2 uses
  %i.vc = load i32, ptr %i.em, align 4, !tbaa !120 ; 3 uses
  %.not.i31.i = icmp slt i32 %i.vb, %i.vc
  br i1 %.not.i31.i, label %._crit_edge.i41.i, label %bb.av

._crit_edge.i41.i:                                ; preds = %bb.au
  %.pre.i43.i = load ptr, ptr %i.en, align 8, !tbaa !98
  br label %.sink.split.i35.i

bb.av:                                            ; preds = %bb.au
  %i.vd = icmp sgt i32 %i.vc, 0
  %i.ve = shl nuw nsw i32 %i.vc, 1
  %spec.select.i32.i = select i1 %i.vd, i32 %i.ve, i32 64 ; 2 uses
  store i32 %spec.select.i32.i, ptr %i.em, align 4, !tbaa !120
  %i.vf = load ptr, ptr %i.en, align 8, !tbaa !98
  %i.vg = zext nneg i32 %spec.select.i32.i to i64
  %i.vh = shl nuw nsw i64 %i.vg, 5
  %i.vi = tail call ptr @realloc(ptr noundef %i.vf, i64 noundef %i.vh) #32 ; 3 uses
  store ptr %i.vi, ptr %i.en, align 8, !tbaa !98
  %i.vj = icmp eq ptr %i.vi, null
  br i1 %i.vj, label %nsvg__roundJoin.exit, label %._crit_edge36.i33.i

._crit_edge36.i33.i:                              ; preds = %bb.av
  %.pre37.i34.i = load i32, ptr %i.el, align 8, !tbaa !112
  br label %.sink.split.i35.i

.sink.split.i35.i:                                ; preds = %._crit_edge36.i33.i, %._crit_edge.i41.i
  %i.vk = phi i32 [ %i.vb, %._crit_edge.i41.i ], [ %.pre37.i34.i, %._crit_edge36.i33.i ] ; 2 uses
  %i.vl = phi ptr [ %.pre.i43.i, %._crit_edge.i41.i ], [ %i.vi, %._crit_edge36.i33.i ]
  %i.vm = sext i32 %i.vk to i64
  %i.vn = getelementptr inbounds [32 x i8], ptr %i.vl, i64 %i.vm ; 2 uses
  %i.vo = add nsw i32 %i.vk, 1
  store i32 %i.vo, ptr %i.el, align 8, !tbaa !112
  %i.vp = fcmp olt float %i.uy, %i.uz             ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  %.49.i40.i = select i1 %i.vp, i32 1, i32 -1
  %i.vr = insertelement <4 x i1> poison, i1 %i.vp, i64 0
  %i.vs = shufflevector <4 x i1> %i.vr, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.vt = shufflevector <2 x float> %i.tx, <2 x float> %i.ux, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.vu = shufflevector <2 x float> %i.tx, <2 x float> %i.ux, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.vv = select <4 x i1> %i.vs, <4 x float> %i.vt, <4 x float> %i.vu
  store <4 x float> %i.vv, ptr %i.vn, align 8, !tbaa !31
  store i32 %.49.i40.i, ptr %i.vq, align 8, !tbaa !122
  br label %nsvg__roundJoin.exit

nsvg__roundJoin.exit:                             ; preds = %nsvg__addEdge.exit88.i, %.sink.split.i35.i, %bb.av, %nsvg__addEdge.exit.i170, %.sink.split.i143.i, %bb.aq, %nsvg__addEdge.exit138.i, %.sink.split.i101.i, %bb.aj, %nsvg__addEdge.exit96.i, %.sink.split.i89.i, %bb.ab, %nsvg__addEdge.exit84.i
  %i.vw = phi <2 x float> [ %i.qs, %.sink.split.i143.i ], [ %i.iy, %.sink.split.i89.i ], [ %i.tw, %.sink.split.i35.i ], [ %i.iy, %nsvg__addEdge.exit84.i ], [ %i.iy, %bb.ab ], [ %i.nh, %.sink.split.i101.i ], [ %i.nh, %nsvg__addEdge.exit96.i ], [ %i.nh, %bb.aj ], [ %i.qs, %nsvg__addEdge.exit138.i ], [ %i.qs, %bb.aq ], [ %i.tw, %nsvg__addEdge.exit.i170 ], [ %i.tw, %bb.av ], [ %i.gf, %nsvg__addEdge.exit88.i ]
  %i.vx = phi <2 x float> [ %i.ss, %.sink.split.i143.i ], [ %i.jb, %.sink.split.i89.i ], [ %i.tx, %.sink.split.i35.i ], [ %i.jb, %nsvg__addEdge.exit84.i ], [ %i.jb, %bb.ab ], [ %i.on, %.sink.split.i101.i ], [ %i.on, %nsvg__addEdge.exit96.i ], [ %i.on, %bb.aj ], [ %i.ss, %nsvg__addEdge.exit138.i ], [ %i.ss, %bb.aq ], [ %i.tx, %nsvg__addEdge.exit.i170 ], [ %i.tx, %bb.av ], [ %i.gg, %nsvg__addEdge.exit88.i ]
  store <2 x float> %i.vw, ptr %7, align 8, !tbaa !31
  store <2 x float> %i.vx, ptr %8, align 8, !tbaa !31
  %i.vy = getelementptr inbounds nuw i8, ptr %.1257, i64 32 ; 2 uses
  %i.vz = add nuw nsw i32 %.079258, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.vz, %.0251
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !316

._crit_edge:                                      ; preds = %nsvg__roundJoin.exit, %bb.j
  %.182.lcssa = phi ptr [ %.081245, %bb.j ], [ %.1257, %nsvg__roundJoin.exit ]
  %.1.lcssa = phi ptr [ %.080247, %bb.j ], [ %i.vy, %nsvg__roundJoin.exit ]
  br i1 %.not, label %nsvg__normalize.exit189, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge
  %i.wa = load <2 x float>, ptr %7, align 8, !tbaa !31 ; 3 uses
  %i.wb = extractelement <2 x float> %i.wa, i64 1 ; 2 uses
  %i.wc = fcmp oeq float %.sroa.530.0, %i.wb
  br i1 %i.wc, label %nsvg__addEdge.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !112 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !120 ; 3 uses
  %.not.i174 = icmp slt i32 %i.we, %i.wg
  br i1 %.not.i174, label %._crit_edge.i, label %bb.ay

._crit_edge.i:                                    ; preds = %bb.ax
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !98
  br label %.sink.split.i

bb.ay:                                            ; preds = %bb.ax
  %i.wh = icmp sgt i32 %i.wg, 0
  %i.wi = shl nuw nsw i32 %i.wg, 1
  %spec.select.i = select i1 %i.wh, i32 %i.wi, i32 64 ; 2 uses
  store i32 %spec.select.i, ptr %i.wf, align 4, !tbaa !120
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !98
  %i.wl = zext nneg i32 %spec.select.i to i64
  %i.wm = shl nuw nsw i64 %i.wl, 5
  %i.wn = tail call ptr @realloc(ptr noundef %i.wk, i64 noundef %i.wm) #32 ; 3 uses
  store ptr %i.wn, ptr %i.wj, align 8, !tbaa !98
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %nsvg__addEdge.exit, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %bb.ay
  %.pre37.i = load i32, ptr %i.wd, align 8, !tbaa !112
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %._crit_edge36.i, %._crit_edge.i
  %i.wp = phi i32 [ %i.we, %._crit_edge.i ], [ %.pre37.i, %._crit_edge36.i ] ; 2 uses
  %i.wq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.wn, %._crit_edge36.i ]
  %i.wr = sext i32 %i.wp to i64
  %i.ws = getelementptr inbounds [32 x i8], ptr %i.wq, i64 %i.wr ; 3 uses
  %i.wt = add nsw i32 %i.wp, 1
  store i32 %i.wt, ptr %i.wd, align 8, !tbaa !112
  %i.wu = fcmp olt float %.sroa.530.0, %i.wb      ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %.49.i = select i1 %i.wu, i32 1, i32 -1
  %i.ww = insertelement <2 x i1> poison, i1 %i.wu, i64 0
  %10 = shufflevector <2 x i1> %i.ww, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = select <2 x i1> %10, <2 x float> %i.eg, <2 x float> %i.wa
  store <2 x float> %11, ptr %i.ws, align 8, !tbaa !31
  %12 = select <2 x i1> %10, <2 x float> %i.wa, <2 x float> %i.eg
  store <2 x float> %12, ptr %9, align 8, !tbaa !31
  store i32 %.49.i, ptr %i.wv, align 8, !tbaa !122
  br label %nsvg__addEdge.exit

nsvg__addEdge.exit:                               ; preds = %bb.aw, %bb.ay, %.sink.split.i
  %i.wx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.wy = load <2 x float>, ptr %8, align 8, !tbaa !31 ; 2 uses
  %i.wz = load float, ptr %i.wx, align 4, !tbaa !118 ; 2 uses
  %i.xa = fcmp oeq float %i.wz, %.sroa.5.0
  br i1 %i.xa, label %nsvg__addEdge.exit188, label %bb.az

bb.az:                                            ; preds = %nsvg__addEdge.exit
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.xc = load i32, ptr %i.xb, align 8, !tbaa !112 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !120 ; 3 uses
  %.not.i175 = icmp slt i32 %i.xc, %i.xe
  br i1 %.not.i175, label %._crit_edge.i185, label %bb.ba

._crit_edge.i185:                                 ; preds = %bb.az
  %.phi.trans.insert.i186 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i187 = load ptr, ptr %.phi.trans.insert.i186, align 8, !tbaa !98
  br label %.sink.split.i179

bb.ba:                                            ; preds = %bb.az
  %i.xf = icmp sgt i32 %i.xe, 0
  %i.xg = shl nuw nsw i32 %i.xe, 1
  %spec.select.i176 = select i1 %i.xf, i32 %i.xg, i32 64 ; 2 uses
  store i32 %spec.select.i176, ptr %i.xd, align 4, !tbaa !120
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !98
  %i.xj = zext nneg i32 %spec.select.i176 to i64
  %i.xk = shl nuw nsw i64 %i.xj, 5
  %i.xl = tail call ptr @realloc(ptr noundef %i.xi, i64 noundef %i.xk) #32 ; 3 uses
  store ptr %i.xl, ptr %i.xh, align 8, !tbaa !98
  %i.xm = icmp eq ptr %i.xl, null
  br i1 %i.xm, label %nsvg__addEdge.exit188, label %._crit_edge36.i177

._crit_edge36.i177:                               ; preds = %bb.ba
  %.pre37.i178 = load i32, ptr %i.xb, align 8, !tbaa !112
  br label %.sink.split.i179

.sink.split.i179:                                 ; preds = %._crit_edge36.i177, %._crit_edge.i185
  %i.xn = phi i32 [ %i.xc, %._crit_edge.i185 ], [ %.pre37.i178, %._crit_edge36.i177 ] ; 2 uses
  %i.xo = phi ptr [ %.pre.i187, %._crit_edge.i185 ], [ %i.xl, %._crit_edge36.i177 ]
  %i.xp = sext i32 %i.xn to i64
  %i.xq = getelementptr inbounds [32 x i8], ptr %i.xo, i64 %i.xp ; 2 uses
  %i.xr = add nsw i32 %i.xn, 1
  store i32 %i.xr, ptr %i.xb, align 8, !tbaa !112
  %i.xs = fcmp olt float %i.wz, %.sroa.5.0        ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %.49.i184 = select i1 %i.xs, i32 1, i32 -1
  %i.xu = insertelement <4 x i1> poison, i1 %i.xs, i64 0
  %i.xv = shufflevector <4 x i1> %i.xu, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.xw = shufflevector <2 x float> %i.ef, <2 x float> %i.wy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xx = shufflevector <2 x float> %i.wy, <2 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.xy = select <4 x i1> %i.xv, <4 x float> %i.xw, <4 x float> %i.xx
  %i.xz = shufflevector <4 x float> %i.xy, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x float> %i.xz, ptr %i.xq, align 8, !tbaa !31
  store i32 %.49.i184, ptr %i.xt, align 8, !tbaa !122
  br label %nsvg__addEdge.exit188

nsvg__normalize.exit189:                          ; preds = %._crit_edge
  %i.ya = load <2 x float>, ptr %.1.lcssa, align 4, !tbaa !31 ; 6 uses
  %i.yb = load <2 x float>, ptr %.182.lcssa, align 4, !tbaa !31
  %i.yc = fsub <2 x float> %i.ya, %i.yb           ; 5 uses
  %foldExtExtBinop393 = fmul <2 x float> %i.yc, %i.yc
  %i.yd = extractelement <2 x float> %foldExtExtBinop393, i64 1
  %i.ye = extractelement <2 x float> %i.yc, i64 0 ; 2 uses
  %i.yf = tail call float @llvm.fmuladd.f32(float %i.ye, float %i.ye, float %i.yd)
  %i.yg = tail call float @sqrtf(float noundef %i.yf) #30 ; 2 uses
  %i.yh = fcmp ogt float %i.yg, f0x358637BD
  %i.yi = fdiv float 1.000000e+00, %i.yg
  %i.yj = insertelement <2 x float> poison, float %i.yi, i64 0
  %i.yk = shufflevector <2 x float> %i.yj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yl = fmul <2 x float> %i.yc, %i.yk
  %i.ym = insertelement <2 x i1> poison, i1 %i.yh, i64 0
  %i.yn = shufflevector <2 x i1> %i.ym, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.yo = select <2 x i1> %i.yn, <2 x float> %i.yl, <2 x float> %i.yc ; 9 uses
  switch i32 %5, label %nsvg__addEdge.exit188 [
    i32 0, label %bb.bb
    i32 2, label %bb.bi
    i32 1, label %bb.bp
  ]

bb.bb:                                            ; preds = %nsvg__normalize.exit189
  %i.yp = fneg <2 x float> %i.yo                  ; 2 uses
  %i.yq = shufflevector <2 x float> %i.yo, <2 x float> %i.yp, <2 x i32> <i32 1, i32 2>
  %i.yr = insertelement <2 x float> poison, float %i.a, i64 0
  %i.ys = shufflevector <2 x float> %i.yr, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.yt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yq, <2 x float> %i.ys, <2 x float> %i.ya) ; 5 uses
  %i.yu = shufflevector <2 x float> %i.yp, <2 x float> %i.yo, <2 x i32> <i32 1, i32 2>
  %i.yv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yu, <2 x float> %i.ys, <2 x float> %i.ya) ; 5 uses
  %i.yw = extractelement <2 x float> %i.yv, i64 1 ; 4 uses
  %i.yx = extractelement <2 x float> %i.yt, i64 1 ; 4 uses
  %i.yy = fcmp oeq float %i.yx, %i.yw
  br i1 %i.yy, label %nsvg__addEdge.exit.i200, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.za = load i32, ptr %i.yz, align 8, !tbaa !112 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !120 ; 3 uses
  %.not.i.i190 = icmp slt i32 %i.za, %i.zc
  br i1 %.not.i.i190, label %._crit_edge.i.i201, label %bb.bd

._crit_edge.i.i201:                               ; preds = %bb.bc
  %.phi.trans.insert.i.i202 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i203 = load ptr, ptr %.phi.trans.insert.i.i202, align 8, !tbaa !98
  br label %.sink.split.i.i194

bb.bd:                                            ; preds = %bb.bc
  %i.zd = icmp sgt i32 %i.zc, 0
  %i.ze = shl nuw nsw i32 %i.zc, 1
  %spec.select.i.i191 = select i1 %i.zd, i32 %i.ze, i32 64 ; 2 uses
  store i32 %spec.select.i.i191, ptr %i.zb, align 4, !tbaa !120
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !98
  %i.zh = zext nneg i32 %spec.select.i.i191 to i64
  %i.zi = shl nuw nsw i64 %i.zh, 5
  %i.zj = tail call ptr @realloc(ptr noundef %i.zg, i64 noundef %i.zi) #32 ; 3 uses
  store ptr %i.zj, ptr %i.zf, align 8, !tbaa !98
  %i.zk = icmp eq ptr %i.zj, null
  br i1 %i.zk, label %nsvg__addEdge.exit.i200, label %._crit_edge36.i.i192

._crit_edge36.i.i192:                             ; preds = %bb.bd
  %.pre37.i.i193 = load i32, ptr %i.yz, align 8, !tbaa !112
  br label %.sink.split.i.i194

.sink.split.i.i194:                               ; preds = %._crit_edge36.i.i192, %._crit_edge.i.i201
  %i.zl = phi i32 [ %i.za, %._crit_edge.i.i201 ], [ %.pre37.i.i193, %._crit_edge36.i.i192 ] ; 2 uses
  %i.zm = phi ptr [ %.pre.i.i203, %._crit_edge.i.i201 ], [ %i.zj, %._crit_edge36.i.i192 ]
  %i.zn = sext i32 %i.zl to i64
  %i.zo = getelementptr inbounds [32 x i8], ptr %i.zm, i64 %i.zn ; 2 uses
  %i.zp = add nsw i32 %i.zl, 1
  store i32 %i.zp, ptr %i.yz, align 8, !tbaa !112
  %i.zq = fcmp olt float %i.yx, %i.yw             ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zo, i64 16
  %.49.i.i199 = select i1 %i.zq, i32 1, i32 -1
  %i.zs = insertelement <4 x i1> poison, i1 %i.zq, i64 0
  %i.zt = shufflevector <4 x i1> %i.zs, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.zu = shufflevector <2 x float> %i.yt, <2 x float> %i.yv, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zv = shufflevector <2 x float> %i.yv, <2 x float> %i.yt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.zw = select <4 x i1> %i.zt, <4 x float> %i.zu, <4 x float> %i.zv
  store <4 x float> %i.zw, ptr %i.zo, align 8, !tbaa !31
  store i32 %.49.i.i199, ptr %i.zr, align 8, !tbaa !122
  br label %nsvg__addEdge.exit.i200

nsvg__addEdge.exit.i200:                          ; preds = %.sink.split.i.i194, %bb.bd, %bb.bb
  %i.zx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.zy = load <2 x float>, ptr %8, align 8, !tbaa !31 ; 2 uses
  %i.zz = load float, ptr %i.zx, align 4, !tbaa !118 ; 2 uses
  %i.aaa = fcmp oeq float %i.zz, %i.yx
  br i1 %i.aaa, label %nsvg__addEdge.exit53.i, label %bb.be

bb.be:                                            ; preds = %nsvg__addEdge.exit.i200
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !112 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !120 ; 3 uses
  %.not.i40.i = icmp slt i32 %i.aac, %i.aae
  br i1 %.not.i40.i, label %._crit_edge.i50.i, label %bb.bf

._crit_edge.i50.i:                                ; preds = %bb.be
  %.phi.trans.insert.i51.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i52.i = load ptr, ptr %.phi.trans.insert.i51.i, align 8, !tbaa !98
  br label %.sink.split.i44.i

bb.bf:                                            ; preds = %bb.be
  %i.aaf = icmp sgt i32 %i.aae, 0
  %i.aag = shl nuw nsw i32 %i.aae, 1
  %spec.select.i41.i = select i1 %i.aaf, i32 %i.aag, i32 64 ; 2 uses
  store i32 %spec.select.i41.i, ptr %i.aad, align 4, !tbaa !120
  %i.aah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !98
  %i.aaj = zext nneg i32 %spec.select.i41.i to i64
  %i.aak = shl nuw nsw i64 %i.aaj, 5
  %i.aal = tail call ptr @realloc(ptr noundef %i.aai, i64 noundef %i.aak) #32 ; 3 uses
  store ptr %i.aal, ptr %i.aah, align 8, !tbaa !98
  %i.aam = icmp eq ptr %i.aal, null
  br i1 %i.aam, label %nsvg__addEdge.exit53.i, label %._crit_edge36.i42.i

._crit_edge36.i42.i:                              ; preds = %bb.bf
  %.pre37.i43.i = load i32, ptr %i.aab, align 8, !tbaa !112
  br label %.sink.split.i44.i

.sink.split.i44.i:                                ; preds = %._crit_edge36.i42.i, %._crit_edge.i50.i
  %i.aan = phi i32 [ %i.aac, %._crit_edge.i50.i ], [ %.pre37.i43.i, %._crit_edge36.i42.i ] ; 2 uses
  %i.aao = phi ptr [ %.pre.i52.i, %._crit_edge.i50.i ], [ %i.aal, %._crit_edge36.i42.i ]
  %i.aap = sext i32 %i.aan to i64
  %i.aaq = getelementptr inbounds [32 x i8], ptr %i.aao, i64 %i.aap ; 2 uses
  %i.aar = add nsw i32 %i.aan, 1
  store i32 %i.aar, ptr %i.aab, align 8, !tbaa !112
  %i.aas = fcmp olt float %i.zz, %i.yx            ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aaq, i64 16
  %.49.i49.i = select i1 %i.aas, i32 1, i32 -1
  %i.aau = insertelement <4 x i1> poison, i1 %i.aas, i64 0
  %i.aav = shufflevector <4 x i1> %i.aau, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.aaw = shufflevector <2 x float> %i.zy, <2 x float> %i.yt, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aax = shufflevector <2 x float> %i.zy, <2 x float> %i.yt, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aay = select <4 x i1> %i.aav, <4 x float> %i.aaw, <4 x float> %i.aax
end_hunk_0
