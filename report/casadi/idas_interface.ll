Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/idas_interface?download=true
inline.NumInlined: 1656
inline.NumDeleted: 527
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZNK6casadi13IdasInterface16solve_transposedEPNS_10IdasMemoryEdPKdS4_S4_Pd:bb.a
  %i.tk = add nuw nsw i64 %.014.i142.us338, 4     ; 2 uses
  %exitcond.not.i145.us341.3 = icmp eq i64 %i.tk, %i.mc
  br i1 %exitcond.not.i145.us341.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343, label %.lr.ph.i141.us337, !llvm.loop !532

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343: ; preds = %.lr.ph.i141.us337.prol.loopexit, %.lr.ph.i141.us337, %middle.block715, %.lr.ph308.split.split.us325
  %i.tl = getelementptr inbounds [8 x i8], ptr %.3306.us327, i64 %i.mb
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.tl, i64 %i.mc ; 2 uses
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next460, %i.me
  br i1 %exitcond462.not, label %._crit_edge309.split.us346, label %.lr.ph308.split.split.us325, !llvm.loop !520

._crit_edge309.split.us346:                       ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343
  %.us-phi318.us = phi ptr [ %i.tm, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us343 ], [ %i.qi, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us314.us ]
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1
  %exitcond466 = icmp eq i64 %indvars.iv463, %i.mh
  %indvar.next691 = add i64 %indvar690, 1
  br i1 %exitcond466, label %.loopexit170, label %.preheader169.us, !llvm.loop !533

.preheader169.lr.ph.split.split:                  ; preds = %.preheader169.lr.ph.split
  br i1 %invariant.op311.fr320, label %.preheader169.us349.preheader, label %.loopexit170

.preheader169.us349.preheader:                    ; preds = %.preheader169.lr.ph.split.split
  %i.tn = shl i64 %i.mc, 3                        ; 3 uses
  %i.to = shl i64 %i.mb, 3                        ; 3 uses
  %i.tp = add i64 %i.to, %i.tn                    ; 2 uses
  %i.tq = mul i64 %i.me, %i.mc
  %i.tr = shl i64 %i.tq, 4
  %i.ts = shl i64 %i.mn, 3                        ; 2 uses
  %i.tt = mul i64 %i.me, %i.mc
  %i.tu = shl i64 %i.tt, 3                        ; 2 uses
  %i.tv = add nsw i64 %i.me, -1
  %i.tw = mul i64 %i.tp, %i.tv
  %i.tx = getelementptr i8, ptr %i.ml, i64 %i.tr
  %i.ty = getelementptr i8, ptr %i.tx, i64 %i.ts
  %i.tz = getelementptr i8, ptr %i.ml, i64 %i.tu
  %i.ua = getelementptr i8, ptr %i.tz, i64 %i.ts
  %min.iters.check655 = icmp ult i64 %i.mc, 6
  %i.ub = or i64 %i.tn, %i.tp
  %i.uc = icmp slt i64 %i.ub, 0
  %n.vec663 = and i64 %i.mc, -4                   ; 4 uses
  %i.ud = shl i64 %n.vec663, 3                    ; 2 uses
  %cmp.n674 = icmp eq i64 %i.mc, %n.vec663
  %xtraiter918 = and i64 %i.mc, 3                 ; 2 uses
  %lcmp.mod919.not = icmp eq i64 %xtraiter918, 0
  br label %.preheader169.us349

.preheader169.us349:                              ; preds = %.preheader169.us349.preheader, %._crit_edge309.split.us.split.us356
  %indvar = phi i64 [ 0, %.preheader169.us349.preheader ], [ %indvar.next, %._crit_edge309.split.us.split.us356 ] ; 2 uses
  %indvars.iv451 = phi i64 [ 1, %.preheader169.us349.preheader ], [ %indvars.iv.next452, %._crit_edge309.split.us.split.us356 ] ; 3 uses
  %.2322.us351 = phi ptr [ %i.mg, %.preheader169.us349.preheader ], [ %i.vy, %._crit_edge309.split.us.split.us356 ] ; 3 uses
  %i.ue = mul i64 %i.tu, %indvar                  ; 2 uses
  %scevgep650.a = getelementptr i8, ptr %i.ty, i64 %i.ue
  %scevgep651.a = getelementptr i8, ptr %i.ua, i64 %i.ue
  %i.uf = mul nuw nsw i64 %indvars.iv451, %i.me
  %i.ug = getelementptr i8, ptr %.2322.us351, i64 %i.tw
  %i.uh = getelementptr i8, ptr %i.ug, i64 %i.to
  %scevgep652 = getelementptr i8, ptr %i.uh, i64 %i.tn
  %scevgep653 = getelementptr i8, ptr %.2322.us351, i64 %i.to
  %bound0657 = icmp ult ptr %scevgep653, %scevgep650.a
  %bound1658 = icmp ult ptr %scevgep651.a, %scevgep652
  %found.conflict659 = and i1 %bound0657, %bound1658
  %i.ui = or i1 %found.conflict659, %i.uc
  br label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353: ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, %.preheader169.us349
  %indvars.iv447 = phi i64 [ %indvars.iv.next448, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us ], [ 0, %.preheader169.us349 ] ; 2 uses
  %.3306.us.us355 = phi ptr [ %i.vy, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us ], [ %.2322.us351, %.preheader169.us349 ] ; 2 uses
  %i.uj = getelementptr inbounds [8 x i8], ptr %.3306.us.us355, i64 %i.mb ; 4 uses
  %.not380 = icmp eq ptr %.3306.us.us355, null
  br i1 %.not380, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, label %.lr.ph.i141.us.us.preheader

.lr.ph.i141.us.us.preheader:                      ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353
  %i.uk = add nuw nsw i64 %indvars.iv447, %i.uf
  %i.ul = mul nsw i64 %i.uk, %i.mc
  %i.um = getelementptr inbounds [8 x i8], ptr %i.mo, i64 %i.ul ; 3 uses
  %brmerge982.a = select i1 %min.iters.check655, i1 true, i1 %i.ui
  br i1 %brmerge982.a, label %.lr.ph.i141.us.us.preheader876, label %vector.ph662

vector.ph662:                                     ; preds = %.lr.ph.i141.us.us.preheader
  %i.un = getelementptr i8, ptr %i.uj, i64 %i.ud
  %i.uo = getelementptr i8, ptr %i.um, i64 %i.ud
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph662
  %index665 = phi i64 [ 0, %vector.ph662 ], [ %index.next672, %vector.body664 ] ; 2 uses
  %i.up = shl i64 %index665, 3                    ; 2 uses
  %next.gep666 = getelementptr i8, ptr %i.uj, i64 %i.up ; 3 uses
  %next.gep667 = getelementptr i8, ptr %i.um, i64 %i.up ; 2 uses
  %i.uq = getelementptr i8, ptr %next.gep667, i64 16
  %wide.load668.a = load <2 x double>, ptr %next.gep667, align 8, !tbaa !136, !alias.scope !570
  %wide.load669.a = load <2 x double>, ptr %i.uq, align 8, !tbaa !136, !alias.scope !570
  %i.ur = getelementptr i8, ptr %next.gep666, i64 16 ; 2 uses
  %wide.load670 = load <2 x double>, ptr %next.gep666, align 8, !tbaa !136, !alias.scope !571, !noalias !570
  %wide.load671 = load <2 x double>, ptr %i.ur, align 8, !tbaa !136, !alias.scope !571, !noalias !570
  %i.us = fsub <2 x double> %wide.load670, %wide.load668.a
  %i.ut = fsub <2 x double> %wide.load671, %wide.load669.a
  store <2 x double> %i.us, ptr %next.gep666, align 8, !tbaa !136, !alias.scope !571, !noalias !570
  store <2 x double> %i.ut, ptr %i.ur, align 8, !tbaa !136, !alias.scope !571, !noalias !570
  %index.next672 = add nuw i64 %index665, 4       ; 2 uses
  %i.uu = icmp eq i64 %index.next672, %n.vec663
  br i1 %i.uu, label %middle.block673, label %vector.body664, !llvm.loop !537

middle.block673:                                  ; preds = %vector.body664
  br i1 %cmp.n674, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, label %.lr.ph.i141.us.us.preheader876

.lr.ph.i141.us.us.preheader876:                   ; preds = %.lr.ph.i141.us.us.preheader, %middle.block673
  %.014.i142.us.us.ph = phi i64 [ %n.vec663, %middle.block673 ], [ 0, %.lr.ph.i141.us.us.preheader ] ; 3 uses
  %.0813.i143.us.us.ph = phi ptr [ %i.un, %middle.block673 ], [ %i.uj, %.lr.ph.i141.us.us.preheader ] ; 2 uses
  %.0912.i144.us.us.ph = phi ptr [ %i.uo, %middle.block673 ], [ %i.um, %.lr.ph.i141.us.us.preheader ] ; 2 uses
  br i1 %lcmp.mod919.not, label %.lr.ph.i141.us.us.prol.loopexit, label %.lr.ph.i141.us.us.prol

.lr.ph.i141.us.us.prol:                           ; preds = %.lr.ph.i141.us.us.preheader876, %.lr.ph.i141.us.us.prol
  %.014.i142.us.us.prol = phi i64 [ %i.va, %.lr.ph.i141.us.us.prol ], [ %.014.i142.us.us.ph, %.lr.ph.i141.us.us.preheader876 ]
  %.0813.i143.us.us.prol = phi ptr [ %i.ux, %.lr.ph.i141.us.us.prol ], [ %.0813.i143.us.us.ph, %.lr.ph.i141.us.us.preheader876 ] ; 3 uses
  %.0912.i144.us.us.prol = phi ptr [ %i.uv, %.lr.ph.i141.us.us.prol ], [ %.0912.i144.us.us.ph, %.lr.ph.i141.us.us.preheader876 ] ; 2 uses
  %prol.iter920 = phi i64 [ %prol.iter920.next, %.lr.ph.i141.us.us.prol ], [ 0, %.lr.ph.i141.us.us.preheader876 ]
  %i.uv = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us.prol, i64 8 ; 2 uses
  %i.uw = load double, ptr %.0912.i144.us.us.prol, align 8, !tbaa !136
  %i.ux = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us.prol, i64 8 ; 2 uses
  %i.uy = load double, ptr %.0813.i143.us.us.prol, align 8, !tbaa !136
  %i.uz = fsub double %i.uy, %i.uw
  store double %i.uz, ptr %.0813.i143.us.us.prol, align 8, !tbaa !136
  %i.va = add nuw nsw i64 %.014.i142.us.us.prol, 1 ; 2 uses
  %prol.iter920.next = add i64 %prol.iter920, 1   ; 2 uses
  %prol.iter920.cmp.not = icmp eq i64 %prol.iter920.next, %xtraiter918
  br i1 %prol.iter920.cmp.not, label %.lr.ph.i141.us.us.prol.loopexit, label %.lr.ph.i141.us.us.prol, !llvm.loop !538

.lr.ph.i141.us.us.prol.loopexit:                  ; preds = %.lr.ph.i141.us.us.prol, %.lr.ph.i141.us.us.preheader876
  %.014.i142.us.us.unr = phi i64 [ %.014.i142.us.us.ph, %.lr.ph.i141.us.us.preheader876 ], [ %i.va, %.lr.ph.i141.us.us.prol ]
  %.0813.i143.us.us.unr = phi ptr [ %.0813.i143.us.us.ph, %.lr.ph.i141.us.us.preheader876 ], [ %i.ux, %.lr.ph.i141.us.us.prol ]
  %.0912.i144.us.us.unr = phi ptr [ %.0912.i144.us.us.ph, %.lr.ph.i141.us.us.preheader876 ], [ %i.uv, %.lr.ph.i141.us.us.prol ]
  %i.vb = sub i64 %.014.i142.us.us.ph, %i.mc
  %i.vc = icmp ugt i64 %i.vb, -4
  br i1 %i.vc, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, label %.lr.ph.i141.us.us

.lr.ph.i141.us.us:                                ; preds = %.lr.ph.i141.us.us.prol.loopexit, %.lr.ph.i141.us.us
  %.014.i142.us.us = phi i64 [ %i.vx, %.lr.ph.i141.us.us ], [ %.014.i142.us.us.unr, %.lr.ph.i141.us.us.prol.loopexit ]
  %.0813.i143.us.us = phi ptr [ %i.vu, %.lr.ph.i141.us.us ], [ %.0813.i143.us.us.unr, %.lr.ph.i141.us.us.prol.loopexit ] ; 6 uses
  %.0912.i144.us.us = phi ptr [ %i.vs, %.lr.ph.i141.us.us ], [ %.0912.i144.us.us.unr, %.lr.ph.i141.us.us.prol.loopexit ] ; 5 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us, i64 8
  %i.ve = load double, ptr %.0912.i144.us.us, align 8, !tbaa !136
  %i.vf = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us, i64 8 ; 2 uses
  %i.vg = load double, ptr %.0813.i143.us.us, align 8, !tbaa !136
  %i.vh = fsub double %i.vg, %i.ve
  store double %i.vh, ptr %.0813.i143.us.us, align 8, !tbaa !136
  %i.vi = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us, i64 16
  %i.vj = load double, ptr %i.vd, align 8, !tbaa !136
  %i.vk = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us, i64 16 ; 2 uses
  %i.vl = load double, ptr %i.vf, align 8, !tbaa !136
  %i.vm = fsub double %i.vl, %i.vj
  store double %i.vm, ptr %i.vf, align 8, !tbaa !136
  %i.vn = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us, i64 24
  %i.vo = load double, ptr %i.vi, align 8, !tbaa !136
  %i.vp = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us, i64 24 ; 2 uses
  %i.vq = load double, ptr %i.vk, align 8, !tbaa !136
  %i.vr = fsub double %i.vq, %i.vo
  store double %i.vr, ptr %i.vk, align 8, !tbaa !136
  %i.vs = getelementptr inbounds nuw i8, ptr %.0912.i144.us.us, i64 32
  %i.vt = load double, ptr %i.vn, align 8, !tbaa !136
  %i.vu = getelementptr inbounds nuw i8, ptr %.0813.i143.us.us, i64 32
  %i.vv = load double, ptr %i.vp, align 8, !tbaa !136
  %i.vw = fsub double %i.vv, %i.vt
  store double %i.vw, ptr %i.vp, align 8, !tbaa !136
  %i.vx = add nuw nsw i64 %.014.i142.us.us, 4     ; 2 uses
  %exitcond.not.i145.us.us.3 = icmp eq i64 %i.vx, %i.mc
  br i1 %exitcond.not.i145.us.us.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us, label %.lr.ph.i141.us.us, !llvm.loop !539

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us: ; preds = %.lr.ph.i141.us.us.prol.loopexit, %.lr.ph.i141.us.us, %middle.block673, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353
  %i.vy = getelementptr inbounds [8 x i8], ptr %i.uj, i64 %i.mc ; 2 uses
  %indvars.iv.next448 = add nuw nsw i64 %indvars.iv447, 1 ; 2 uses
  %exitcond450.not = icmp eq i64 %indvars.iv.next448, %i.me
  br i1 %exitcond450.not, label %._crit_edge309.split.us.split.us356, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.us.us353, !llvm.loop !520

._crit_edge309.split.us.split.us356:              ; preds = %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit146.us.us
  %indvars.iv.next452 = add nuw nsw i64 %indvars.iv451, 1
  %exitcond454 = icmp eq i64 %indvars.iv451, %i.mh
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond454, label %.loopexit170, label %.preheader169.us349, !llvm.loop !533

.loopexit170:                                     ; preds = %._crit_edge309.split.us.split.us356, %._crit_edge309.split.us346, %.preheader169.lr.ph.split.split, %..loopexit170_crit_edge, %bb.i
  %i.vz = phi i64 [ %i.hn, %..loopexit170_crit_edge ], [ %i.mh, %._crit_edge309.split.us346 ], [ %i.mh, %bb.i ], [ %i.mh, %.preheader169.lr.ph.split.split ], [ %i.mh, %._crit_edge309.split.us.split.us356 ]
  %i.wa = phi i64 [ %.pre482, %..loopexit170_crit_edge ], [ %i.mc, %._crit_edge309.split.us346 ], [ %i.mc, %bb.i ], [ %i.mc, %.preheader169.lr.ph.split.split ], [ %i.mc, %._crit_edge309.split.us.split.us356 ]
  %i.wb = phi i64 [ %i.cu, %..loopexit170_crit_edge ], [ %i.me, %._crit_edge309.split.us346 ], [ %i.me, %bb.i ], [ %i.me, %.preheader169.lr.ph.split.split ], [ %i.me, %._crit_edge309.split.us.split.us356 ] ; 3 uses
  %i.wc = phi i64 [ %.pre480, %..loopexit170_crit_edge ], [ %i.mb, %._crit_edge309.split.us346 ], [ %i.mb, %bb.i ], [ %i.mb, %.preheader169.lr.ph.split.split ], [ %i.mb, %._crit_edge309.split.us.split.us356 ]
  %i.wd = phi ptr [ %.pre478, %..loopexit170_crit_edge ], [ %i.ma, %._crit_edge309.split.us346 ], [ %i.ma, %bb.i ], [ %i.ma, %.preheader169.lr.ph.split.split ], [ %i.ma, %._crit_edge309.split.us.split.us356 ]
  %i.we = load ptr, ptr %i.co, align 8, !tbaa !232
  %i.wf = mul nsw i64 %i.wb, %i.wc
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.wd, i64 %i.wf
  %i.wh = mul nsw i64 %i.wa, %i.wb
  %i.wi = getelementptr inbounds [8 x i8], ptr %i.wg, i64 %i.wh
  %i.wj = mul nsw i64 %i.vz, %i.wb
  %i.wk = load i32, ptr %i.cr, align 8, !tbaa !233
  %i.wl = tail call noundef i32 @_ZNK6casadi6Linsol5solveEPKdPdxbi(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef %i.we, ptr noundef %i.wi, i64 noundef %i.wj, i1 noundef zeroext true, i32 noundef %i.wk)
  %.not96 = icmp eq i32 %i.wl, 0
  br i1 %.not96, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.loopexit170
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 1696
  %i.wo = load ptr, ptr %i.a, align 8, !tbaa !235
  %i.wp = load i64, ptr %i.wn, align 8, !tbaa !554 ; 17 uses
  %i.wq = load i64, ptr %i.wm, align 8, !tbaa !555 ; 16 uses
  %i.wr = add i64 %i.wq, %i.wp
  %i.ws = load i64, ptr %i.cq, align 8, !tbaa !224 ; 10 uses
  %i.wt = mul i64 %i.wr, %i.ws
  %i.wu = getelementptr [8 x i8], ptr %i.wo, i64 %i.wt
  %i.wv = load i64, ptr %i.c, align 8, !tbaa !236 ; 2 uses
  %.not97373 = icmp slt i64 %i.wv, 1
  br i1 %.not97373, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.j
  %i.ww = icmp sgt i64 %i.ws, 0
  %i.wx = icmp sgt i64 %i.wp, 0                   ; 2 uses
  %i.wy = shl nuw i64 %i.wp, 3
  %i.wz = icmp sgt i64 %i.wq, 0                   ; 2 uses
  %i.xa = shl nuw i64 %i.wq, 3
  br i1 %i.ww, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.not.i147 = icmp eq ptr %6, null
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %8 = load i64, ptr %7, align 8, !tbaa !201      ; 2 uses
  %9 = getelementptr inbounds [8 x i8], ptr %6, i64 %8 ; 2 uses
  br i1 %.not.i147, label %.loopexit, label %.preheader.lr.ph.split.a

.preheader.lr.ph.split.a:                         ; preds = %.preheader.lr.ph.split
  %10 = shl i64 %i.wq, 3                          ; 3 uses
  %11 = shl i64 %i.wp, 3                          ; 3 uses
  %i.xb = add i64 %10, %11                        ; 2 uses
  %i.xc = add nsw i64 %i.ws, -1
  %i.xd = mul i64 %i.xb, %i.xc
  %i.xe = mul i64 %i.wq, %i.ws
  %i.xf = shl i64 %i.xe, 4
  %i.xg = shl i64 %8, 3                           ; 2 uses
  %i.xh = mul i64 %i.wq, %i.ws
  %12 = shl i64 %i.xh, 3                          ; 2 uses
  %13 = shl i64 %i.wp, 3                          ; 2 uses
  %14 = add i64 %i.wq, %i.wp
  %i.xi = shl i64 %14, 3                          ; 2 uses
  %15 = add nsw i64 %i.ws, -1
  %16 = mul i64 %i.xi, %15
  %i.xj = mul i64 %i.ws, %i.wp
  %i.xk = shl i64 %i.xj, 4
  %i.xl = mul i64 %i.ws, %i.wp
  %i.xm = shl i64 %i.xl, 3                        ; 2 uses
  %i.xn = getelementptr i8, ptr %6, i64 %i.xk
  %i.xo = getelementptr i8, ptr %6, i64 %i.xm
  %i.xp = getelementptr i8, ptr %6, i64 %i.xf
  %i.xq = getelementptr i8, ptr %i.xp, i64 %i.xg
  %i.xr = getelementptr i8, ptr %6, i64 %12
  %i.xs = getelementptr i8, ptr %i.xr, i64 %i.xg
  %min.iters.check845 = icmp ult i64 %i.wp, 8
  %i.xt = or i64 %i.xi, %13
  %i.xu = icmp slt i64 %i.xt, 0
  %n.vec853 = and i64 %i.wp, 9223372036854775804  ; 4 uses
  %i.xv = shl i64 %n.vec853, 3                    ; 2 uses
  %cmp.n862 = icmp eq i64 %i.wp, %n.vec853
  %min.iters.check811 = icmp ult i64 %i.wq, 8
  %i.xw = or i64 %i.xb, %10
  %i.xx = icmp slt i64 %i.xw, 0
  %n.vec819 = and i64 %i.wq, 9223372036854775804  ; 4 uses
  %i.xy = shl i64 %n.vec819, 3                    ; 2 uses
  %cmp.n828 = icmp eq i64 %i.wq, %n.vec819
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.a, %._crit_edge362
  %indvar806 = phi i64 [ 0, %.preheader.lr.ph.split.a ], [ %indvar.next807, %._crit_edge362 ] ; 3 uses
  %indvars.iv474 = phi i64 [ 1, %.preheader.lr.ph.split.a ], [ %indvars.iv.next475, %._crit_edge362 ] ; 3 uses
  %.4374 = phi ptr [ %i.wu, %.preheader.lr.ph.split.a ], [ %i.abl, %._crit_edge362 ] ; 5 uses
  %i.xz = mul i64 %i.xm, %indvar806               ; 2 uses
  %scevgep842 = getelementptr i8, ptr %i.xn, i64 %i.xz
  %scevgep843 = getelementptr i8, ptr %i.xo, i64 %i.xz
  %i.ya = mul i64 %12, %indvar806                 ; 2 uses
  %scevgep808 = getelementptr i8, ptr %i.xq, i64 %i.ya
  %scevgep809 = getelementptr i8, ptr %i.xs, i64 %i.ya
  %i.yb = mul nuw nsw i64 %indvars.iv474, %i.ws
  %17 = getelementptr i8, ptr %.4374, i64 %i.xd
  %18 = getelementptr i8, ptr %17, i64 %10
  %scevgep802 = getelementptr i8, ptr %18, i64 %11
  %i.yc = getelementptr i8, ptr %.4374, i64 %11
  %i.yd = getelementptr i8, ptr %.4374, i64 %16
  %scevgep = getelementptr i8, ptr %i.yd, i64 %13
  %bound0845 = icmp ult ptr %scevgep843, %scevgep
  %bound1846 = icmp ult ptr %.4374, %scevgep842
  %found.conflict847 = and i1 %bound0845, %bound1846
  %19 = or i1 %found.conflict847, %i.xu
  %bound0811 = icmp ult ptr %scevgep809, %scevgep802
  %bound1812 = icmp ult ptr %i.yc, %scevgep808
  %found.conflict813 = and i1 %bound0811, %bound1812
  %20 = or i1 %found.conflict813, %i.xx
  br label %.lr.ph361.split.split

._crit_edge362:                                   ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1
  %exitcond477 = icmp eq i64 %indvars.iv474, %i.wv
  %indvar.next807 = add i64 %indvar806, 1
  br i1 %exitcond477, label %.loopexit, label %.preheader, !llvm.loop !540

.lr.ph361.split.split:                            ; preds = %.preheader, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168
  %indvars.iv467 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next468, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168 ] ; 2 uses
  %.5359 = phi ptr [ %.4374, %.preheader ], [ %i.abl, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168 ] ; 6 uses
  %i.ye = add nuw nsw i64 %indvars.iv467, %i.yb   ; 3 uses
  %i.yf = mul nsw i64 %i.ye, %i.wp
  %i.yg = getelementptr inbounds [8 x i8], ptr %6, i64 %i.yf ; 4 uses
  %.not15.i148 = icmp eq ptr %.5359, null
  br i1 %.not15.i148, label %.preheader.i155, label %.preheader16.i149

.preheader16.i149:                                ; preds = %.lr.ph361.split.split
  br i1 %i.wx, label %.lr.ph.i150.preheader, label %.preheader16.i160

.lr.ph.i150.preheader:                            ; preds = %.preheader16.i149
  %brmerge983 = select i1 %min.iters.check845, i1 true, i1 %19
  br i1 %brmerge983, label %.lr.ph.i150.preheader869, label %vector.ph852

vector.ph852:                                     ; preds = %.lr.ph.i150.preheader
  %i.yh = getelementptr i8, ptr %i.yg, i64 %i.xv
  %i.yi = getelementptr i8, ptr %.5359, i64 %i.xv
  br label %vector.body854

vector.body854:                                   ; preds = %vector.body854, %vector.ph852
  %index855 = phi i64 [ 0, %vector.ph852 ], [ %index.next860, %vector.body854 ] ; 2 uses
  %i.yj = shl i64 %index855, 3                    ; 2 uses
  %next.gep856 = getelementptr i8, ptr %i.yg, i64 %i.yj ; 2 uses
  %next.gep857 = getelementptr i8, ptr %.5359, i64 %i.yj ; 2 uses
  %i.yk = getelementptr i8, ptr %next.gep857, i64 16
  %wide.load858 = load <2 x double>, ptr %next.gep857, align 8, !tbaa !136, !alias.scope !572
  %wide.load859 = load <2 x double>, ptr %i.yk, align 8, !tbaa !136, !alias.scope !572
  %i.yl = getelementptr i8, ptr %next.gep856, i64 16
  store <2 x double> %wide.load858, ptr %next.gep856, align 8, !tbaa !136, !alias.scope !573, !noalias !572
  store <2 x double> %wide.load859, ptr %i.yl, align 8, !tbaa !136, !alias.scope !573, !noalias !572
  %index.next860 = add nuw i64 %index855, 4       ; 2 uses
  %i.ym = icmp eq i64 %index.next860, %n.vec853
  br i1 %i.ym, label %middle.block861, label %vector.body854, !llvm.loop !544

middle.block861:                                  ; preds = %vector.body854
  br i1 %cmp.n862, label %.preheader16.i160, label %.lr.ph.i150.preheader869

.lr.ph.i150.preheader869:                         ; preds = %.lr.ph.i150.preheader, %middle.block861
  %.020.i151.ph = phi i64 [ %n.vec853, %middle.block861 ], [ 0, %.lr.ph.i150.preheader ] ; 4 uses
  %.01019.i152.ph = phi ptr [ %i.yh, %middle.block861 ], [ %i.yg, %.lr.ph.i150.preheader ] ; 2 uses
  %.01218.i153.ph = phi ptr [ %i.yi, %middle.block861 ], [ %.5359, %.lr.ph.i150.preheader ] ; 2 uses
  %i.yn = sub nsw i64 %i.wp, %.020.i151.ph
  %xtraiter930 = and i64 %i.yn, 7                 ; 2 uses
  %lcmp.mod931.not = icmp eq i64 %xtraiter930, 0
  br i1 %lcmp.mod931.not, label %.lr.ph.i150.prol.loopexit, label %.lr.ph.i150.prol

.lr.ph.i150.prol:                                 ; preds = %.lr.ph.i150.preheader869, %.lr.ph.i150.prol
  %.020.i151.prol = phi i64 [ %i.yr, %.lr.ph.i150.prol ], [ %.020.i151.ph, %.lr.ph.i150.preheader869 ]
  %.01019.i152.prol = phi ptr [ %i.yq, %.lr.ph.i150.prol ], [ %.01019.i152.ph, %.lr.ph.i150.preheader869 ] ; 2 uses
  %.01218.i153.prol = phi ptr [ %i.yo, %.lr.ph.i150.prol ], [ %.01218.i153.ph, %.lr.ph.i150.preheader869 ] ; 2 uses
  %prol.iter932 = phi i64 [ %prol.iter932.next, %.lr.ph.i150.prol ], [ 0, %.lr.ph.i150.preheader869 ]
  %i.yo = getelementptr inbounds nuw i8, ptr %.01218.i153.prol, i64 8 ; 2 uses
  %i.yp = load double, ptr %.01218.i153.prol, align 8, !tbaa !136
  %i.yq = getelementptr inbounds nuw i8, ptr %.01019.i152.prol, i64 8 ; 2 uses
  store double %i.yp, ptr %.01019.i152.prol, align 8, !tbaa !136
  %i.yr = add nuw nsw i64 %.020.i151.prol, 1      ; 2 uses
  %prol.iter932.next = add i64 %prol.iter932, 1   ; 2 uses
  %prol.iter932.cmp.not = icmp eq i64 %prol.iter932.next, %xtraiter930
  br i1 %prol.iter932.cmp.not, label %.lr.ph.i150.prol.loopexit, label %.lr.ph.i150.prol, !llvm.loop !545

.lr.ph.i150.prol.loopexit:                        ; preds = %.lr.ph.i150.prol, %.lr.ph.i150.preheader869
  %.020.i151.unr = phi i64 [ %.020.i151.ph, %.lr.ph.i150.preheader869 ], [ %i.yr, %.lr.ph.i150.prol ]
  %.01019.i152.unr = phi ptr [ %.01019.i152.ph, %.lr.ph.i150.preheader869 ], [ %i.yq, %.lr.ph.i150.prol ]
  %.01218.i153.unr = phi ptr [ %.01218.i153.ph, %.lr.ph.i150.preheader869 ], [ %i.yo, %.lr.ph.i150.prol ]
  %i.ys = sub nsw i64 %.020.i151.ph, %i.wp
  %i.yt = icmp ugt i64 %i.ys, -8
  br i1 %i.yt, label %.preheader16.i160, label %.lr.ph.i150

.preheader.i155:                                  ; preds = %.lr.ph361.split.split
  br i1 %i.wx, label %.lr.ph23.preheader.i156, label %.preheader.i166

.lr.ph23.preheader.i156:                          ; preds = %.preheader.i155
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.yg, i8 0, i64 %i.wy, i1 false), !tbaa !136
  br label %.preheader.i166

.lr.ph.i150:                                      ; preds = %.lr.ph.i150.prol.loopexit, %.lr.ph.i150
  %.020.i151 = phi i64 [ %i.zs, %.lr.ph.i150 ], [ %.020.i151.unr, %.lr.ph.i150.prol.loopexit ]
  %.01019.i152 = phi ptr [ %i.zr, %.lr.ph.i150 ], [ %.01019.i152.unr, %.lr.ph.i150.prol.loopexit ] ; 9 uses
  %.01218.i153 = phi ptr [ %i.zp, %.lr.ph.i150 ], [ %.01218.i153.unr, %.lr.ph.i150.prol.loopexit ] ; 9 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 8
  %i.yv = load double, ptr %.01218.i153, align 8, !tbaa !136
  %i.yw = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 8
  store double %i.yv, ptr %.01019.i152, align 8, !tbaa !136
  %i.yx = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 16
  %i.yy = load double, ptr %i.yu, align 8, !tbaa !136
  %i.yz = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 16
  store double %i.yy, ptr %i.yw, align 8, !tbaa !136
  %i.za = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 24
  %i.zb = load double, ptr %i.yx, align 8, !tbaa !136
  %i.zc = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 24
  store double %i.zb, ptr %i.yz, align 8, !tbaa !136
  %i.zd = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 32
  %i.ze = load double, ptr %i.za, align 8, !tbaa !136
  %i.zf = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 32
  store double %i.ze, ptr %i.zc, align 8, !tbaa !136
  %i.zg = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 40
  %i.zh = load double, ptr %i.zd, align 8, !tbaa !136
  %i.zi = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 40
  store double %i.zh, ptr %i.zf, align 8, !tbaa !136
  %i.zj = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 48
  %i.zk = load double, ptr %i.zg, align 8, !tbaa !136
  %i.zl = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 48
  store double %i.zk, ptr %i.zi, align 8, !tbaa !136
  %i.zm = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 56
  %i.zn = load double, ptr %i.zj, align 8, !tbaa !136
  %i.zo = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 56
  store double %i.zn, ptr %i.zl, align 8, !tbaa !136
  %i.zp = getelementptr inbounds nuw i8, ptr %.01218.i153, i64 64
  %i.zq = load double, ptr %i.zm, align 8, !tbaa !136
  %i.zr = getelementptr inbounds nuw i8, ptr %.01019.i152, i64 64
  store double %i.zq, ptr %i.zo, align 8, !tbaa !136
  %i.zs = add nuw nsw i64 %.020.i151, 8           ; 2 uses
  %exitcond.not.i154.7 = icmp eq i64 %i.zs, %i.wp
  br i1 %exitcond.not.i154.7, label %.preheader16.i160, label %.lr.ph.i150, !llvm.loop !546

.preheader16.i160:                                ; preds = %.lr.ph.i150.prol.loopexit, %.lr.ph.i150, %middle.block861, %.preheader16.i149
  %i.zt = getelementptr inbounds [8 x i8], ptr %.5359, i64 %i.wp ; 3 uses
  %i.zu = mul nsw i64 %i.ye, %i.wq
  %i.zv = getelementptr inbounds [8 x i8], ptr %9, i64 %i.zu ; 3 uses
  br i1 %i.wz, label %.lr.ph.i161.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168

.lr.ph.i161.preheader:                            ; preds = %.preheader16.i160
  %brmerge984 = select i1 %min.iters.check811, i1 true, i1 %20
  br i1 %brmerge984, label %.lr.ph.i161.preheader868, label %vector.ph818

vector.ph818:                                     ; preds = %.lr.ph.i161.preheader
  %i.zw = getelementptr i8, ptr %i.zv, i64 %i.xy
  %i.zx = getelementptr i8, ptr %i.zt, i64 %i.xy
  br label %vector.body820

vector.body820:                                   ; preds = %vector.body820, %vector.ph818
  %index821 = phi i64 [ 0, %vector.ph818 ], [ %index.next826, %vector.body820 ] ; 2 uses
  %i.zy = shl i64 %index821, 3                    ; 2 uses
  %next.gep822 = getelementptr i8, ptr %i.zv, i64 %i.zy ; 2 uses
  %next.gep823 = getelementptr i8, ptr %i.zt, i64 %i.zy ; 2 uses
  %i.zz = getelementptr i8, ptr %next.gep823, i64 16
  %wide.load824 = load <2 x double>, ptr %next.gep823, align 8, !tbaa !136, !alias.scope !574
  %wide.load825 = load <2 x double>, ptr %i.zz, align 8, !tbaa !136, !alias.scope !574
  %i.aaa = getelementptr i8, ptr %next.gep822, i64 16
  store <2 x double> %wide.load824, ptr %next.gep822, align 8, !tbaa !136, !alias.scope !575, !noalias !574
  store <2 x double> %wide.load825, ptr %i.aaa, align 8, !tbaa !136, !alias.scope !575, !noalias !574
  %index.next826 = add nuw i64 %index821, 4       ; 2 uses
  %i.aab = icmp eq i64 %index.next826, %n.vec819
  br i1 %i.aab, label %middle.block827, label %vector.body820, !llvm.loop !550

middle.block827:                                  ; preds = %vector.body820
  br i1 %cmp.n828, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168, label %.lr.ph.i161.preheader868

.lr.ph.i161.preheader868:                         ; preds = %.lr.ph.i161.preheader, %middle.block827
  %.020.i162.ph = phi i64 [ %n.vec819, %middle.block827 ], [ 0, %.lr.ph.i161.preheader ] ; 4 uses
  %.01019.i163.ph = phi ptr [ %i.zw, %middle.block827 ], [ %i.zv, %.lr.ph.i161.preheader ] ; 2 uses
  %.01218.i164.ph = phi ptr [ %i.zx, %middle.block827 ], [ %i.zt, %.lr.ph.i161.preheader ] ; 2 uses
  %i.aac = sub nsw i64 %i.wq, %.020.i162.ph
  %xtraiter933 = and i64 %i.aac, 7                ; 2 uses
  %lcmp.mod934.not = icmp eq i64 %xtraiter933, 0
  br i1 %lcmp.mod934.not, label %.lr.ph.i161.prol.loopexit, label %.lr.ph.i161.prol

.lr.ph.i161.prol:                                 ; preds = %.lr.ph.i161.preheader868, %.lr.ph.i161.prol
  %.020.i162.prol = phi i64 [ %i.aag, %.lr.ph.i161.prol ], [ %.020.i162.ph, %.lr.ph.i161.preheader868 ]
  %.01019.i163.prol = phi ptr [ %i.aaf, %.lr.ph.i161.prol ], [ %.01019.i163.ph, %.lr.ph.i161.preheader868 ] ; 2 uses
  %.01218.i164.prol = phi ptr [ %i.aad, %.lr.ph.i161.prol ], [ %.01218.i164.ph, %.lr.ph.i161.preheader868 ] ; 2 uses
  %prol.iter935 = phi i64 [ %prol.iter935.next, %.lr.ph.i161.prol ], [ 0, %.lr.ph.i161.preheader868 ]
  %i.aad = getelementptr inbounds nuw i8, ptr %.01218.i164.prol, i64 8 ; 2 uses
  %i.aae = load double, ptr %.01218.i164.prol, align 8, !tbaa !136
  %i.aaf = getelementptr inbounds nuw i8, ptr %.01019.i163.prol, i64 8 ; 2 uses
  store double %i.aae, ptr %.01019.i163.prol, align 8, !tbaa !136
  %i.aag = add nuw nsw i64 %.020.i162.prol, 1     ; 2 uses
  %prol.iter935.next = add i64 %prol.iter935, 1   ; 2 uses
  %prol.iter935.cmp.not = icmp eq i64 %prol.iter935.next, %xtraiter933
  br i1 %prol.iter935.cmp.not, label %.lr.ph.i161.prol.loopexit, label %.lr.ph.i161.prol, !llvm.loop !551

.lr.ph.i161.prol.loopexit:                        ; preds = %.lr.ph.i161.prol, %.lr.ph.i161.preheader868
  %.020.i162.unr = phi i64 [ %.020.i162.ph, %.lr.ph.i161.preheader868 ], [ %i.aag, %.lr.ph.i161.prol ]
  %.01019.i163.unr = phi ptr [ %.01019.i163.ph, %.lr.ph.i161.preheader868 ], [ %i.aaf, %.lr.ph.i161.prol ]
  %.01218.i164.unr = phi ptr [ %.01218.i164.ph, %.lr.ph.i161.preheader868 ], [ %i.aad, %.lr.ph.i161.prol ]
  %i.aah = sub nsw i64 %.020.i162.ph, %i.wq
  %i.aai = icmp ugt i64 %i.aah, -8
  br i1 %i.aai, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168, label %.lr.ph.i161

.preheader.i166:                                  ; preds = %.preheader.i155, %.lr.ph23.preheader.i156
  br i1 %i.wz, label %.lr.ph23.preheader.i167, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168

.lr.ph23.preheader.i167:                          ; preds = %.preheader.i166
  %i.aaj = mul nuw nsw i64 %i.ye, %i.wq
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.aaj
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aak, i8 0, i64 %i.xa, i1 false), !tbaa !136
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168

.lr.ph.i161:                                      ; preds = %.lr.ph.i161.prol.loopexit, %.lr.ph.i161
  %.020.i162 = phi i64 [ %i.abj, %.lr.ph.i161 ], [ %.020.i162.unr, %.lr.ph.i161.prol.loopexit ]
  %.01019.i163 = phi ptr [ %i.abi, %.lr.ph.i161 ], [ %.01019.i163.unr, %.lr.ph.i161.prol.loopexit ] ; 9 uses
  %.01218.i164 = phi ptr [ %i.abg, %.lr.ph.i161 ], [ %.01218.i164.unr, %.lr.ph.i161.prol.loopexit ] ; 9 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.01218.i164, i64 8
  %i.aam = load double, ptr %.01218.i164, align 8, !tbaa !136
  %i.aan = getelementptr inbounds nuw i8, ptr %.01019.i163, i64 8
  store double %i.aam, ptr %.01019.i163, align 8, !tbaa !136
  %i.aao = getelementptr inbounds nuw i8, ptr %.01218.i164, i64 16
  %i.aap = load double, ptr %i.aal, align 8, !tbaa !136
  %i.aaq = getelementptr inbounds nuw i8, ptr %.01019.i163, i64 16
  store double %i.aap, ptr %i.aan, align 8, !tbaa !136
  %i.aar = getelementptr inbounds nuw i8, ptr %.01218.i164, i64 24
  %i.aas = load double, ptr %i.aao, align 8, !tbaa !136
  %i.aat = getelementptr inbounds nuw i8, ptr %.01019.i163, i64 24
  store double %i.aas, ptr %i.aaq, align 8, !tbaa !136
  %i.aau = getelementptr inbounds nuw i8, ptr %.01218.i164, i64 32
  %i.aav = load double, ptr %i.aar, align 8, !tbaa !136
  %i.aaw = getelementptr inbounds nuw i8, ptr %.01019.i163, i64 32
  store double %i.aav, ptr %i.aat, align 8, !tbaa !136
  %i.aax = getelementptr inbounds nuw i8, ptr %.01218.i164, i64 40
  %i.aay = load double, ptr %i.aau, align 8, !tbaa !136
  %i.aaz = getelementptr inbounds nuw i8, ptr %.01019.i163, i64 40
  store double %i.aay, ptr %i.aaw, align 8, !tbaa !136
  %i.aba = getelementptr inbounds nuw i8, ptr %.01218.i164, i64 48
  %i.abb = load double, ptr %i.aax, align 8, !tbaa !136
  %i.abc = getelementptr inbounds nuw i8, ptr %.01019.i163, i64 48
  store double %i.abb, ptr %i.aaz, align 8, !tbaa !136
  %i.abd = getelementptr inbounds nuw i8, ptr %.01218.i164, i64 56
  %i.abe = load double, ptr %i.aba, align 8, !tbaa !136
  %i.abf = getelementptr inbounds nuw i8, ptr %.01019.i163, i64 56
  store double %i.abe, ptr %i.abc, align 8, !tbaa !136
  %i.abg = getelementptr inbounds nuw i8, ptr %.01218.i164, i64 64
  %i.abh = load double, ptr %i.abd, align 8, !tbaa !136
  %i.abi = getelementptr inbounds nuw i8, ptr %.01019.i163, i64 64
  store double %i.abh, ptr %i.abf, align 8, !tbaa !136
  %i.abj = add nuw nsw i64 %.020.i162, 8          ; 2 uses
  %exitcond.not.i165.7 = icmp eq i64 %i.abj, %i.wq
  br i1 %exitcond.not.i165.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168, label %.lr.ph.i161, !llvm.loop !552

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit168:    ; preds = %.lr.ph.i161.prol.loopexit, %.lr.ph.i161, %middle.block827, %.preheader16.i160, %.preheader.i166, %.lr.ph23.preheader.i167
  %i.abk = getelementptr inbounds [8 x i8], ptr %.5359, i64 %i.wp
  %i.abl = getelementptr inbounds [8 x i8], ptr %i.abk, i64 %i.wq ; 2 uses
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next468, %i.ws
  br i1 %exitcond470.not, label %._crit_edge362, label %.lr.ph361.split.split, !llvm.loop !553

.loopexit:                                        ; preds = %._crit_edge362, %.preheader.lr.ph.split, %bb.j, %.preheader.lr.ph, %._crit_edge, %.loopexit170, %_ZN6casadi12casadi_clearIdEEvPT_x.exit135, %._crit_edge202.split
  %.081 = phi i32 [ 1, %.loopexit170 ], [ 1, %._crit_edge202.split ], [ 1, %_ZN6casadi12casadi_clearIdEEvPT_x.exit135 ], [ 0, %._crit_edge ], [ 0, %.preheader.lr.ph ], [ 0, %bb.j ], [ 0, %.preheader.lr.ph.split ], [ 0, %._crit_edge362 ]
  ret i32 %.081
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6casadi13IdasInterface8impulseBEPNS_16IntegratorMemoryEPKdS4_S4_(ptr noundef nonnull align 8 dereferenceable(2280) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6casadi13IdasInterface6to_memEPv(ptr noundef %1) ; 22 uses
  tail call void @_ZNK6casadi17SundialsInterface8impulseBEPNS_16IntegratorMemoryEPKdS4_S4_(ptr noundef nonnull align 8 dereferenceable(2192) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @_ZNK6casadi13IdasInterface10z_impulseBEPNS_10IdasMemoryEPKd(ptr noundef nonnull align 8 dereferenceable(2280) %0, ptr noundef %i.a, ptr noundef %3)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !228, !range !76, !noundef !77
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 736 ; 16 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !202  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 744 ; 16 uses
  br i1 %i.d, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @IDACreateB(ptr noundef %i.f, ptr noundef nonnull %i.g)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.99, i32 noundef %i.h)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.j = load i32, ptr %i.g, align 8, !tbaa !241
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.l = load double, ptr %i.k, align 8, !tbaa !239
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !227
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !226
  %i.q = tail call i32 @IDAInitB(ptr noundef %i.i, i32 noundef %i.j, ptr noundef nonnull @_ZN6casadi13IdasInterface4resBEdP17_generic_N_VectorS2_S2_S2_S2_Pv, double noundef %i.l, ptr noundef %i.n, ptr noundef %i.p)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.100, i32 noundef %i.q)
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.s = load i32, ptr %i.g, align 8, !tbaa !241
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1992 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !207
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1984 ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !208
  %i.x = tail call i32 @IDASStolerancesB(ptr noundef %i.r, i32 noundef %i.s, double noundef %i.u, double noundef %i.w)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.101, i32 noundef %i.x)
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.z = load i32, ptr %i.g, align 8, !tbaa !241
  %i.aa = tail call i32 @IDASetUserDataB(ptr noundef %i.y, i32 noundef %i.z, ptr noundef nonnull %i.a)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.102, i32 noundef %i.aa)
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.ac = load i32, ptr %i.g, align 8, !tbaa !241
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !209
  %i.af = tail call i32 @IDASetMaxNumStepsB(ptr noundef %i.ab, i32 noundef %i.ac, i64 noundef %i.ae)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.103, i32 noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !201
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1672 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !225
  %i.ak = add nsw i64 %i.aj, %i.ah
  %i.al = tail call ptr @N_VNew_Serial(i64 noundef %i.ak) ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !194
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !196 ; 5 uses
  %i.ap = load i64, ptr %i.ag, align 8, !tbaa !201 ; 3 uses
  %i.aq = icmp slt i64 %i.ap, 1
  br i1 %i.aq, label %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %.idx.i.i = shl nuw nsw i64 %i.ap, 3            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i.i
  %i.as = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.at = lshr exact i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.av = shl i64 %n.vec, 3
  %i.aw = getelementptr i8, ptr %i.ao, i64 %i.av
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %next.gep, align 8, !tbaa !136
  store <2 x double> splat (double 1.000000e+00), ptr %i.ay, align 8, !tbaa !136
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !576

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.06.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.aw, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.06.i.i.i.i = phi ptr [ %i.ba, %scalar.ph ], [ %.06.i.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  store double 1.000000e+00, ptr %.06.i.i.i.i, align 8, !tbaa !136
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ar
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit, label %scalar.ph, !llvm.loop !577

_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit:              ; preds = %scalar.ph, %middle.block, %bb.b
  %i.bb = load i64, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 1
  br i1 %i.bc, label %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit97, label %.lr.ph.i.i.i.i92

.lr.ph.i.i.i.i92:                                 ; preds = %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.ap
  %.idx.i.i93 = shl nuw nsw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bd, i8 0, i64 %.idx.i.i93, i1 false), !tbaa !136
  br label %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit97

_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit97:            ; preds = %.lr.ph.i.i.i.i92, %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !241
  %i.bg = tail call i32 @IDASetIdB(ptr noundef %i.be, i32 noundef %i.bf, ptr noundef nonnull %i.al)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.104, i32 noundef %i.bg)
  tail call void @N_VDestroy_Serial(ptr noundef nonnull %i.al)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !210
  switch i32 %i.bi, label %bb.g [
    i32 0, label %bb.c
    i32 3, label %bb.f
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit97
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !202 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1816
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !242
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !247 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  store ptr %i.a, ptr %i.bo, align 8, !tbaa !578
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !250 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1632
  store ptr %i.a, ptr %i.br, align 8, !tbaa !215
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 1600
  store ptr @_ZN6casadi13IdasInterface7lsetupBEP9IDAMemRecP17_generic_N_VectorS4_S4_S4_S4_S4_, ptr %i.bs, align 8, !tbaa !216
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 1608
  store ptr @_ZN6casadi13IdasInterface7lsolveBEP9IDAMemRecP17_generic_N_VectorS4_S4_S4_S4_, ptr %i.bt, align 8, !tbaa !217
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1648
  store i32 1, ptr %i.bu, align 8, !tbaa !218
  br label %bb.i

bb.d:                                             ; preds = %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit97
  %i.bv = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.bw = load i32, ptr %i.g, align 8, !tbaa !241
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !219
  %i.bz = trunc i64 %i.by to i32
  %i.ca = tail call i32 @IDASpgmrB(ptr noundef %i.bv, i32 noundef %i.bw, i32 noundef %i.bz)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.106, i32 noundef %i.ca)
  br label %bb.g

bb.e:                                             ; preds = %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit97
  %i.cb = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.cc = load i32, ptr %i.g, align 8, !tbaa !241
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !219
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = tail call i32 @IDASpbcgB(ptr noundef %i.cb, i32 noundef %i.cc, i32 noundef %i.cf)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.107, i32 noundef %i.cg)
  br label %bb.g

bb.f:                                             ; preds = %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit97
  %i.ch = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.ci = load i32, ptr %i.g, align 8, !tbaa !241
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 2120
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !219
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = tail call i32 @IDASptfqmrB(ptr noundef %i.ch, i32 noundef %i.ci, i32 noundef %i.cl)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.108, i32 noundef %i.cm)
  br label %bb.g

bb.g:                                             ; preds = %_ZSt6fill_nIPdxiET_S1_T0_RKT1_.exit97, %bb.f, %bb.e, %bb.d
  %i.cn = load ptr, ptr %i.e, align 8, !tbaa !202
  %i.co = load i32, ptr %i.g, align 8, !tbaa !241
  %i.cp = tail call i32 @IDASpilsSetJacTimesVecFnB(ptr noundef %i.cn, i32 noundef %i.co, ptr noundef nonnull @_ZN6casadi13IdasInterface7jtimesBEdP17_generic_N_VectorS2_S2_S2_S2_S2_S2_dPvS2_S2_)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.109, i32 noundef %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 2128
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !220, !range !76, !noundef !77
  %i.cs = trunc nuw i8 %i.cr to i1
  %.pre99 = load ptr, ptr %i.e, align 8, !tbaa !202 ; 2 uses
  br i1 %i.cs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ct = load i32, ptr %i.g, align 8, !tbaa !241
  %i.cu = tail call i32 @IDASpilsSetPreconditionerB(ptr noundef %.pre99, i32 noundef %i.ct, ptr noundef nonnull @_ZN6casadi13IdasInterface7psetupBEdP17_generic_N_VectorS2_S2_S2_S2_dPvS2_S2_S2_, ptr noundef nonnull @_ZN6casadi13IdasInterface7psolveBEdP17_generic_N_VectorS2_S2_S2_S2_S2_S2_ddPvS2_)
  tail call void @_ZN6casadi13IdasInterface10idas_errorEPKci(ptr noundef nonnull @.str.110, i32 noundef %i.cu)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !202
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c
  %i.cv = phi ptr [ %.pre99, %bb.g ], [ %.pre, %bb.h ], [ %i.bj, %bb.c ]
  %i.cw = load i32, ptr %i.g, align 8, !tbaa !241
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 424
end_hunk_0
