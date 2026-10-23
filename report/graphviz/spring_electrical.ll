Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/spring_electrical?download=true
inline.NumInlined: 51
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@multilevel_spring_electrical_embedding:bb.a
bb.br:                                            ; preds = %.loopexit187.i
  %i.rp = load ptr, ptr %i.re, align 8, !tbaa !36 ; 3 uses
  %i.rq = load ptr, ptr %i.rg, align 8, !tbaa !37
  %i.rr = load i32, ptr %i.rd, align 8, !tbaa !38 ; 3 uses
  %i.rs = sext i32 %i.rr to i64
  %i.rt = getelementptr inbounds [4 x i8], ptr %i.rp, i64 %i.rs ; 2 uses
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !39 ; 2 uses
  %i.rv = icmp eq i32 %i.ru, 0
  br i1 %i.rv, label %average_edge_length.exit.i, label %.preheader45.i.i

.preheader45.i.i:                                 ; preds = %bb.br
  %i.rw = icmp sgt i32 %i.rr, 0
  br i1 %i.rw, label %.lr.ph.split.us.preheader.i.i, label %._crit_edge.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.preheader45.i.i
  %wide.trip.count67.i.i = zext nneg i32 %i.rr to i64
  %.pre.i.i = load i32, ptr %i.rp, align 4, !tbaa !39
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.loopexit.us.i.i, %.lr.ph.split.us.preheader.i.i
  %i.rx = phi i32 [ %.pre.i.i, %.lr.ph.split.us.preheader.i.i ], [ %i.tg, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv64.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next65.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.04153.us.i.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i ], [ %.1.lcssa.us.i.i, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 3 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %indvars.iv.next65.i.i ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !39 ; 2 uses
  %i.sa = icmp slt i32 %i.rx, %i.rz
  br i1 %i.sa, label %.preheader.lr.ph.us.i.i, label %.loopexit.us.i.i

.preheader.lr.ph.us.i.i:                          ; preds = %.lr.ph.split.us.i.i
  %i.sb = mul nuw nsw i64 %indvars.iv64.i.i, %i.ph
  %i.sc = sext i32 %i.rx to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.sb ; 5 uses
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge.us.us.i.i, %.preheader.lr.ph.us.i.i
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %._crit_edge.us.us.i.i ], [ %i.sc, %.preheader.lr.ph.us.i.i ] ; 2 uses
  %.148.us.us.i.i = phi double [ %i.tc, %._crit_edge.us.us.i.i ], [ %.04153.us.i.i, %.preheader.lr.ph.us.i.i ]
  %i.sd = getelementptr inbounds [4 x i8], ptr %i.rq, i64 %indvars.iv61.i.i
  %i.se = load i32, ptr %i.sd, align 4, !tbaa !39
  %i.sf = mul nsw i32 %i.se, %0
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.sg
  %i.si = load double, ptr %i.sh, align 8, !tbaa !12 ; 5 uses
  br i1 %i.pu, label %.epil.preheader, label %.preheader.us.us.i.i.new

.preheader.us.us.i.i.new:                         ; preds = %.preheader.us.us.i.i, %.preheader.us.us.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ] ; 5 uses
  %.04046.us.us.i.i = phi double [ %i.sx, %.preheader.us.us.i.i.new ], [ 0.000000e+00, %.preheader.us.us.i.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ]
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.sj = load double, ptr %gep.i.i, align 8, !tbaa !12
  %i.sk = fsub double %i.sj, %i.si                ; 2 uses
  %i.sl = call double @llvm.fmuladd.f64(double %i.sk, double %i.sk, double %.04046.us.us.i.i)
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sn = load double, ptr %gep.i.i.1, align 8, !tbaa !12
  %i.so = fsub double %i.sn, %i.si                ; 2 uses
  %i.sp = call double @llvm.fmuladd.f64(double %i.so, double %i.so, double %i.sl)
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.sr = load double, ptr %gep.i.i.2, align 8, !tbaa !12
  %i.ss = fsub double %i.sr, %i.si                ; 2 uses
  %i.st = call double @llvm.fmuladd.f64(double %i.ss, double %i.ss, double %i.sp)
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sv = load double, ptr %gep.i.i.3, align 8, !tbaa !12
  %i.sw = fsub double %i.sv, %i.si                ; 2 uses
  %i.sx = call double @llvm.fmuladd.f64(double %i.sw, double %i.sw, double %i.st) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.i.unr-lcssa, label %.preheader.us.us.i.i.new, !llvm.loop !0

._crit_edge.us.us.i.i.unr-lcssa:                  ; preds = %.preheader.us.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.preheader.us.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.us.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.us.us.i.i.unr-lcssa ]
  %.04046.us.us.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.sx, %._crit_edge.us.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod825)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %bb.bs ], [ %indvars.iv.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.04046.us.us.i.i.epil = phi double [ %i.ta, %bb.bs ], [ %.04046.us.us.i.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.bs ], [ 0, %.epil.preheader ]
  %gep.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil
  %i.sy = load double, ptr %gep.i.i.epil, align 8, !tbaa !12
  %i.sz = fsub double %i.sy, %i.si                ; 2 uses
  %i.ta = call double @llvm.fmuladd.f64(double %i.sz, double %i.sz, double %.04046.us.us.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i.i, label %bb.bs, !llvm.loop !134

._crit_edge.us.us.i.i:                            ; preds = %bb.bs, %._crit_edge.us.us.i.i.unr-lcssa
  %.lcssa = phi double [ %i.sx, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.ta, %bb.bs ]
  %i.tb = call double @sqrt(double noundef %.lcssa) #22
  %i.tc = fadd double %.148.us.us.i.i, %i.tb      ; 2 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, 1 ; 2 uses
  %i.td = load i32, ptr %i.ry, align 4, !tbaa !39 ; 2 uses
  %i.te = sext i32 %i.td to i64
  %i.tf = icmp slt i64 %indvars.iv.next62.i.i, %i.te
  br i1 %i.tf, label %.preheader.us.us.i.i, label %.loopexit.us.i.i, !llvm.loop !1

.loopexit.us.i.i:                                 ; preds = %._crit_edge.us.us.i.i, %.lr.ph.split.us.i.i
  %i.tg = phi i32 [ %i.rz, %.lr.ph.split.us.i.i ], [ %i.td, %._crit_edge.us.us.i.i ]
  %.1.lcssa.us.i.i = phi double [ %.04153.us.i.i, %.lr.ph.split.us.i.i ], [ %i.tc, %._crit_edge.us.us.i.i ] ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %indvars.iv.next65.i.i, %wide.trip.count67.i.i
  br i1 %exitcond68.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i:                         ; preds = %.loopexit.us.i.i
  %.pre69.i.i = load i32, ptr %i.rt, align 4, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader45.i.i
  %i.th = phi i32 [ %i.ru, %.preheader45.i.i ], [ %.pre69.i.i, %._crit_edge.loopexit.i.i ]
  %.041.lcssa.i.i = phi double [ 0.000000e+00, %.preheader45.i.i ], [ %.1.lcssa.us.i.i, %._crit_edge.loopexit.i.i ]
  %i.ti = sitofp i32 %i.th to double
  %i.tj = fdiv double %.041.lcssa.i.i, %i.ti
  br label %average_edge_length.exit.i

average_edge_length.exit.i:                       ; preds = %._crit_edge.i.i, %bb.br
  %.042.i.i = phi double [ %i.tj, %._crit_edge.i.i ], [ 1.000000e+00, %bb.br ] ; 2 uses
  store double %.042.i.i, ptr %i.pb, align 8, !tbaa !29
  br label %bb.bt

bb.bt:                                            ; preds = %average_edge_length.exit.i, %.loopexit187.i
  %.0154.i = phi double [ %.042.i.i, %average_edge_length.exit.i ], [ %i.qr, %.loopexit187.i ] ; 3 uses
  %i.tk = fcmp ult double %i.qq, 0.000000e+00
  br i1 %i.tk, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store double -1.000000e+00, ptr %2, align 8, !tbaa !28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0155.i = phi double [ -1.000000e+00, %bb.bu ], [ %i.qq, %bb.bt ] ; 3 uses
  %i.tl = fsub double 1.000000e+00, %.0155.i
  %i.tm = call double @pow(double noundef %.0154.i, double noundef %i.tl) #22
  %i.tn = fsub double 2.000000e+00, %.0155.i
  %i.to = fdiv double %i.tn, 3.000000e+00
  %i.tp = call double @pow(double noundef 2.000000e-01, double noundef %i.to) #22
  %i.tq = fdiv double %i.tp, %.0154.i             ; 4 uses
  %i.tr = mul nuw nsw i32 %i.ra, %0
  %i.ts = zext nneg i32 %i.tr to i64              ; 2 uses
  %i.tt = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.ts, i64 noundef 8) #23 ; 9 uses
  %i.tu = icmp eq ptr %i.tt, null
  br i1 %i.tu, label %bb.bw, label %gv_calloc.exit.preheader.i

gv_calloc.exit.preheader.i:                       ; preds = %bb.bv
  %i.tv = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %wide.trip.count220.i = zext nneg i32 %i.ra to i64 ; 3 uses
  %i.tw = mul i64 %i.pr, %wide.trip.count220.i    ; 2 uses
  %scevgep600 = getelementptr i8, ptr %.1, i64 %i.tw
  %scevgep601 = getelementptr i8, ptr %i.tt, i64 %i.tw
  %scevgep636 = getelementptr i8, ptr %.1, i64 %i.pn
  %broadcast.splatinsert652 = insertelement <2 x double> poison, double %i.tq, i64 0
  %broadcast.splat653 = shufflevector <2 x double> %broadcast.splatinsert652, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %bound0602 = icmp ult ptr %.1, %scevgep601
  %bound1603 = icmp ult ptr %i.tt, %scevgep600
  %found.conflict604 = and i1 %bound0602, %bound1603
  br label %.lr.ph196.preheader.i

bb.bw:                                            ; preds = %bb.bv
  %i.tx = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ty = shl nuw nsw i64 %i.ts, 3
  %i.tz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tx, ptr noundef nonnull @.str.25, i64 noundef %i.ty) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

.lr.ph196.preheader.i:                            ; preds = %update_step.exit.i, %gv_calloc.exit.preheader.i
  %i.ua = phi i32 [ %i.zl, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ] ; 4 uses
  %.val.i193 = phi i32 [ %.val242.i, %update_step.exit.i ], [ %i.qw, %gv_calloc.exit.preheader.i ] ; 13 uses
  %.0153.i = phi double [ %.0.i.i, %update_step.exit.i ], [ %i.qt, %gv_calloc.exit.preheader.i ] ; 9 uses
  %.0151.i = phi double [ %i.xj, %update_step.exit.i ], [ 0.000000e+00, %gv_calloc.exit.preheader.i ] ; 2 uses
  %.0150.i = phi i32 [ %i.yl, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ]
  %i.ub = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.ra, i32 noundef %.val.i193, ptr noundef %.1) #22 ; 3 uses
  call void @QuadTree_get_repulsive_force(ptr noundef %i.ub, ptr noundef nonnull %i.tt, ptr noundef %.1, double noundef 6.000000e-01, double noundef %.0155.i, double noundef %i.tm, ptr noundef nonnull %i.g) #22
  %.pre.i194 = load i32, ptr %i.rf, align 4, !tbaa !39
  br label %.lr.ph196.i

.loopexit185.i:                                   ; preds = %.loopexit.i199, %.lr.ph196.i
  %i.uc = phi i32 [ %i.uj, %.lr.ph196.i ], [ %i.wl, %.loopexit.i199 ]
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %.lr.ph203.i.preheader, label %.lr.ph196.i, !llvm.loop !135

.lr.ph203.i.preheader:                            ; preds = %.loopexit185.i
  %broadcast.splatinsert609 = insertelement <2 x double> poison, double %.0153.i, i64 0
  %broadcast.splat610 = shufflevector <2 x double> %broadcast.splatinsert609, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph203.i

.lr.ph196.i:                                      ; preds = %.loopexit185.i, %.lr.ph196.preheader.i
  %i.ud = phi i32 [ %.pre.i194, %.lr.ph196.preheader.i ], [ %i.uc, %.loopexit185.i ] ; 2 uses
  %indvars.iv217.i = phi i64 [ 0, %.lr.ph196.preheader.i ], [ %indvars.iv.next218.i, %.loopexit185.i ] ; 5 uses
  %i.ue = mul i64 %i.ps, %indvars.iv217.i
  %i.uf = add i64 %i.pn, %i.ue                    ; 2 uses
  %scevgep635 = getelementptr i8, ptr %i.tt, i64 %i.uf ; 2 uses
  %scevgep638 = getelementptr i8, ptr %.1, i64 %i.uf
  %i.ug = mul nuw nsw i64 %indvars.iv217.i, %i.ph ; 2 uses
  %i.uh = getelementptr [8 x i8], ptr %i.tt, i64 %i.ug ; 6 uses
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 3 uses
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv.next218.i ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !39 ; 3 uses
  %i.uk = icmp slt i32 %i.ud, %i.uj
  br i1 %i.uk, label %.lr.ph194.preheader.i, label %.loopexit185.i

.lr.ph194.preheader.i:                            ; preds = %.lr.ph196.i
  %i.ul = sext i32 %i.ud to i64
  %i.um = trunc nuw nsw i64 %indvars.iv217.i to i32
  %invariant.gep.i197 = getelementptr [8 x i8], ptr %.1, i64 %i.ug ; 5 uses
  %bound0642 = icmp ult ptr %i.uh, %scevgep638
  %bound1643 = icmp ult ptr %invariant.gep.i197, %scevgep635
  %found.conflict644 = and i1 %bound0642, %bound1643
  br label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %.loopexit.i199, %.lr.ph194.preheader.i
  %i.un = phi i32 [ %i.uj, %.lr.ph194.preheader.i ], [ %i.wl, %.loopexit.i199 ]
  %indvars.iv214.i = phi i64 [ %i.ul, %.lr.ph194.preheader.i ], [ %indvars.iv.next215.i, %.loopexit.i199 ] ; 2 uses
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.rh, i64 %indvars.iv214.i ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !39 ; 2 uses
  %i.uq = zext i32 %i.up to i64
  %i.ur = icmp eq i64 %indvars.iv217.i, %i.uq
  br i1 %i.ur, label %.loopexit.i199, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph194.i
  %i.us = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.um, i32 noundef %i.up) #22 ; 4 uses
  %i.ut = load i32, ptr %i.uo, align 4, !tbaa !39
  %i.uu = mul nsw i32 %i.ut, %0
  %i.uv = sext i32 %i.uu to i64                   ; 2 uses
  %invariant.gep264.i = getelementptr [8 x i8], ptr %.1, i64 %i.uv ; 5 uses
  br i1 %min.iters.check647, label %scalar.ph646.preheader, label %vector.memcheck634

vector.memcheck634:                               ; preds = %bb.bx
  %i.uw = shl nsw i64 %i.uv, 3
  %scevgep637 = getelementptr i8, ptr %scevgep636, i64 %i.uw
  %bound0639 = icmp ult ptr %i.uh, %scevgep637
  %bound1640 = icmp ult ptr %invariant.gep264.i, %scevgep635
  %found.conflict641 = and i1 %bound0639, %bound1640
  %conflict.rdx645 = or i1 %found.conflict641, %found.conflict644
  br i1 %conflict.rdx645, label %scalar.ph646.preheader, label %vector.ph648

vector.ph648:                                     ; preds = %vector.memcheck634
  %broadcast.splatinsert650 = insertelement <2 x double> poison, double %i.us, i64 0
  %broadcast.splat651 = shufflevector <2 x double> %broadcast.splatinsert650, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body654

vector.body654:                                   ; preds = %vector.body654, %vector.ph648
  %index655 = phi i64 [ 0, %vector.ph648 ], [ %index.next662, %vector.body654 ] ; 4 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %index655 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16
  %wide.load656 = load <2 x double>, ptr %i.ux, align 8, !tbaa !12, !alias.scope !218
  %wide.load657 = load <2 x double>, ptr %i.uy, align 8, !tbaa !12, !alias.scope !218
  %i.uz = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %index655 ; 2 uses
  %i.va = getelementptr i8, ptr %i.uz, i64 16
  %wide.load658 = load <2 x double>, ptr %i.uz, align 8, !tbaa !12, !alias.scope !219
  %wide.load659 = load <2 x double>, ptr %i.va, align 8, !tbaa !12, !alias.scope !219
  %i.vb = fsub <2 x double> %wide.load656, %wide.load658
  %i.vc = fsub <2 x double> %wide.load657, %wide.load659
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %index655 ; 3 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16 ; 2 uses
  %wide.load660 = load <2 x double>, ptr %i.vd, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %wide.load661 = load <2 x double>, ptr %i.ve, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %i.vf = fneg <2 x double> %i.vb
  %i.vg = fneg <2 x double> %i.vc
  %i.vh = fmul <2 x double> %broadcast.splat653, %i.vf
  %i.vi = fmul <2 x double> %broadcast.splat653, %i.vg
  %i.vj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vh, <2 x double> %broadcast.splat651, <2 x double> %wide.load660)
  %i.vk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vi, <2 x double> %broadcast.splat651, <2 x double> %wide.load661)
  store <2 x double> %i.vj, ptr %i.vd, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  store <2 x double> %i.vk, ptr %i.ve, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %index.next662 = add nuw i64 %index655, 4       ; 2 uses
  %i.vl = icmp eq i64 %index.next662, %n.vec649
  br i1 %i.vl, label %middle.block663, label %vector.body654, !llvm.loop !140

middle.block663:                                  ; preds = %vector.body654
  br i1 %cmp.n664, label %.loopexit.loopexit.i, label %scalar.ph646.preheader

scalar.ph646.preheader:                           ; preds = %vector.memcheck634, %bb.bx, %middle.block663
  %indvars.iv209.i.ph = phi i64 [ 0, %vector.memcheck634 ], [ 0, %bb.bx ], [ %n.vec649, %middle.block663 ] ; 6 uses
  br i1 %lcmp.mod827.not, label %scalar.ph646.prol.loopexit, label %scalar.ph646.prol

scalar.ph646.prol:                                ; preds = %scalar.ph646.preheader
  %gep.i198.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv209.i.ph
  %i.vm = load double, ptr %gep.i198.prol, align 8, !tbaa !12
  %gep265.i.prol = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv209.i.ph
  %i.vn = load double, ptr %gep265.i.prol, align 8, !tbaa !12
  %i.vo = fsub double %i.vm, %i.vn
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %indvars.iv209.i.ph ; 2 uses
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !12
  %i.vr = fneg double %i.vo
  %i.vs = fmul double %i.tq, %i.vr
  %i.vt = call double @llvm.fmuladd.f64(double %i.vs, double %i.us, double %i.vq)
  store double %i.vt, ptr %i.vp, align 8, !tbaa !12
  %indvars.iv.next210.i.prol = or disjoint i64 %indvars.iv209.i.ph, 1
  br label %scalar.ph646.prol.loopexit

scalar.ph646.prol.loopexit:                       ; preds = %scalar.ph646.prol, %scalar.ph646.preheader
  %indvars.iv209.i.unr = phi i64 [ %indvars.iv209.i.ph, %scalar.ph646.preheader ], [ %indvars.iv.next210.i.prol, %scalar.ph646.prol ]
  %i.vu = icmp eq i64 %indvars.iv209.i.ph, %i.pv
  br i1 %i.vu, label %.loopexit.loopexit.i, label %scalar.ph646

scalar.ph646:                                     ; preds = %scalar.ph646.prol.loopexit, %scalar.ph646
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i.1, %scalar.ph646 ], [ %indvars.iv209.i.unr, %scalar.ph646.prol.loopexit ] ; 5 uses
  %gep.i198 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv209.i
  %i.vv = load double, ptr %gep.i198, align 8, !tbaa !12
  %gep265.i = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv209.i
  %i.vw = load double, ptr %gep265.i, align 8, !tbaa !12
  %i.vx = fsub double %i.vv, %i.vw
  %i.vy = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %indvars.iv209.i ; 2 uses
  %i.vz = load double, ptr %i.vy, align 8, !tbaa !12
  %i.wa = fneg double %i.vx
  %i.wb = fmul double %i.tq, %i.wa
  %i.wc = call double @llvm.fmuladd.f64(double %i.wb, double %i.us, double %i.vz)
  store double %i.wc, ptr %i.vy, align 8, !tbaa !12
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 3 uses
  %gep.i198.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv.next210.i
  %i.wd = load double, ptr %gep.i198.1, align 8, !tbaa !12
  %gep265.i.1 = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv.next210.i
  %i.we = load double, ptr %gep265.i.1, align 8, !tbaa !12
  %i.wf = fsub double %i.wd, %i.we
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %indvars.iv.next210.i ; 2 uses
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !12
  %i.wi = fneg double %i.wf
  %i.wj = fmul double %i.tq, %i.wi
  %i.wk = call double @llvm.fmuladd.f64(double %i.wj, double %i.us, double %i.wh)
  store double %i.wk, ptr %i.wg, align 8, !tbaa !12
  %indvars.iv.next210.i.1 = add nuw nsw i64 %indvars.iv209.i, 2 ; 2 uses
  %exitcond213.not.i.1 = icmp eq i64 %indvars.iv.next210.i.1, %i.ph
  br i1 %exitcond213.not.i.1, label %.loopexit.loopexit.i, label %scalar.ph646, !llvm.loop !141

.loopexit.loopexit.i:                             ; preds = %scalar.ph646.prol.loopexit, %scalar.ph646, %middle.block663
  %.pre244.i = load i32, ptr %i.ui, align 4, !tbaa !39
  br label %.loopexit.i199

.loopexit.i199:                                   ; preds = %.loopexit.loopexit.i, %.lr.ph194.i
  %i.wl = phi i32 [ %.pre244.i, %.loopexit.loopexit.i ], [ %i.un, %.lr.ph194.i ] ; 3 uses
  %indvars.iv.next215.i = add nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %i.wm = sext i32 %i.wl to i64
  %i.wn = icmp slt i64 %indvars.iv.next215.i, %i.wm
  br i1 %i.wn, label %.lr.ph194.i, label %.loopexit185.i, !llvm.loop !142

.lr.ph203.i:                                      ; preds = %.lr.ph203.i.preheader, %.loopexit792
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %.loopexit792 ], [ 0, %.lr.ph203.i.preheader ] ; 2 uses
  %.1202.i = phi double [ %i.xj, %.loopexit792 ], [ 0.000000e+00, %.lr.ph203.i.preheader ]
  %i.wo = mul nuw nsw i64 %indvars.iv237.i, %i.ph ; 2 uses
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.wo ; 11 uses
  br i1 %i.pw, label %.epil.preheader828, label %.lr.ph203.i.new

.lr.ph203.i.new:                                  ; preds = %.lr.ph203.i, %.lr.ph203.i.new
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ] ; 5 uses
  %.0152198.i = phi double [ %i.xe, %.lr.ph203.i.new ], [ 0.000000e+00, %.lr.ph203.i ]
  %niter835 = phi i64 [ %niter835.next.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ]
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !12 ; 2 uses
  %i.ws = call double @llvm.fmuladd.f64(double %i.wr, double %i.wr, double %.0152198.i)
  %i.wt = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !12 ; 2 uses
  %i.ww = call double @llvm.fmuladd.f64(double %i.wv, double %i.wv, double %i.ws)
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %i.wz = load double, ptr %i.wy, align 8, !tbaa !12 ; 2 uses
  %i.xa = call double @llvm.fmuladd.f64(double %i.wz, double %i.wz, double %i.ww)
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 24
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !12 ; 2 uses
  %i.xe = call double @llvm.fmuladd.f64(double %i.xd, double %i.xd, double %i.xa) ; 3 uses
  %indvars.iv.next223.i.3 = add nuw nsw i64 %indvars.iv222.i, 4 ; 2 uses
  %niter835.next.3 = add i64 %niter835, 4         ; 2 uses
  %niter835.ncmp.3 = icmp eq i64 %niter835.next.3, %unroll_iter834
  br i1 %niter835.ncmp.3, label %.unr-lcssa, label %.lr.ph203.i.new, !llvm.loop !143

.unr-lcssa:                                       ; preds = %.lr.ph203.i.new
  br i1 %lcmp.mod831.not, label %.epilog-lcssa, label %.epil.preheader828

.epil.preheader828:                               ; preds = %.unr-lcssa, %.lr.ph203.i
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph203.i ], [ %indvars.iv.next223.i.3, %.unr-lcssa ]
  %.0152198.i.epil.init = phi double [ 0.000000e+00, %.lr.ph203.i ], [ %i.xe, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod833)
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.epil.preheader828
  %indvars.iv222.i.epil = phi i64 [ %indvars.iv222.i.epil.init, %.epil.preheader828 ], [ %indvars.iv.next223.i.epil, %bb.by ] ; 2 uses
  %.0152198.i.epil = phi double [ %.0152198.i.epil.init, %.epil.preheader828 ], [ %i.xh, %bb.by ]
  %epil.iter830 = phi i64 [ 0, %.epil.preheader828 ], [ %epil.iter830.next, %bb.by ]
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.wp, i64 %indvars.iv222.i.epil
  %i.xg = load double, ptr %i.xf, align 8, !tbaa !12 ; 2 uses
  %i.xh = call double @llvm.fmuladd.f64(double %i.xg, double %i.xg, double %.0152198.i.epil) ; 2 uses
  %indvars.iv.next223.i.epil = add nuw nsw i64 %indvars.iv222.i.epil, 1
  %epil.iter830.next = add i64 %epil.iter830, 1   ; 2 uses
  %epil.iter830.cmp.not = icmp eq i64 %epil.iter830.next, %xtraiter829
  br i1 %epil.iter830.cmp.not, label %.epilog-lcssa, label %bb.by, !llvm.loop !144

.epilog-lcssa:                                    ; preds = %bb.by, %.unr-lcssa
  %.lcssa803 = phi double [ %i.xe, %.unr-lcssa ], [ %i.xh, %bb.by ]
  %i.xi = call double @sqrt(double noundef %.lcssa803) #22 ; 4 uses
  %i.xj = fadd double %.1202.i, %i.xi             ; 5 uses
  %i.xk = fcmp ogt double %i.xi, 0.000000e+00
  br i1 %i.xk, label %.preheader.i196.preheader, label %.loopexit184.i
end_hunk_0
