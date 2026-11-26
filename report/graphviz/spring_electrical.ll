Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/spring_electrical?download=true
inline.NumInlined: 51
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@multilevel_spring_electrical_embedding:bb.a
  %i.sg = mul nsw i32 %i.sf, %0
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.sh
  %i.sj = load double, ptr %i.si, align 8, !tbaa !12 ; 5 uses
  br i1 %i.pv, label %.epil.preheader, label %.preheader.us.us.i.i.new

.preheader.us.us.i.i.new:                         ; preds = %.preheader.us.us.i.i, %.preheader.us.us.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ] ; 5 uses
  %.04046.us.us.i.i = phi double [ %i.sy, %.preheader.us.us.i.i.new ], [ 0.000000e+00, %.preheader.us.us.i.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ]
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.sk = load double, ptr %gep.i.i, align 8, !tbaa !12
  %i.sl = fsub double %i.sk, %i.sj                ; 2 uses
  %i.sm = call double @llvm.fmuladd.f64(double %i.sl, double %i.sl, double %.04046.us.us.i.i)
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.so = load double, ptr %gep.i.i.1, align 8, !tbaa !12
  %i.sp = fsub double %i.so, %i.sj                ; 2 uses
  %i.sq = call double @llvm.fmuladd.f64(double %i.sp, double %i.sp, double %i.sm)
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.ss = load double, ptr %gep.i.i.2, align 8, !tbaa !12
  %i.st = fsub double %i.ss, %i.sj                ; 2 uses
  %i.su = call double @llvm.fmuladd.f64(double %i.st, double %i.st, double %i.sq)
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %i.sw = load double, ptr %gep.i.i.3, align 8, !tbaa !12
  %i.sx = fsub double %i.sw, %i.sj                ; 2 uses
  %i.sy = call double @llvm.fmuladd.f64(double %i.sx, double %i.sx, double %i.su) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.i.unr-lcssa, label %.preheader.us.us.i.i.new, !llvm.loop !0

._crit_edge.us.us.i.i.unr-lcssa:                  ; preds = %.preheader.us.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.preheader.us.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.us.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.us.us.i.i.unr-lcssa ]
  %.04046.us.us.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.sy, %._crit_edge.us.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod880)
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %bb.bs ], [ %indvars.iv.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.04046.us.us.i.i.epil = phi double [ %i.tb, %bb.bs ], [ %.04046.us.us.i.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.bs ], [ 0, %.epil.preheader ]
  %gep.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil
  %i.sz = load double, ptr %gep.i.i.epil, align 8, !tbaa !12
  %i.ta = fsub double %i.sz, %i.sj                ; 2 uses
  %i.tb = call double @llvm.fmuladd.f64(double %i.ta, double %i.ta, double %.04046.us.us.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i.i, label %bb.bs, !llvm.loop !134

._crit_edge.us.us.i.i:                            ; preds = %bb.bs, %._crit_edge.us.us.i.i.unr-lcssa
  %.lcssa = phi double [ %i.sy, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.tb, %bb.bs ]
  %i.tc = call double @sqrt(double noundef %.lcssa) #22
  %i.td = fadd double %.148.us.us.i.i, %i.tc      ; 2 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, 1 ; 2 uses
  %i.te = load i32, ptr %i.rz, align 4, !tbaa !39 ; 2 uses
  %i.tf = sext i32 %i.te to i64
  %i.tg = icmp slt i64 %indvars.iv.next62.i.i, %i.tf
  br i1 %i.tg, label %.preheader.us.us.i.i, label %.loopexit.us.i.i, !llvm.loop !1

.loopexit.us.i.i:                                 ; preds = %._crit_edge.us.us.i.i, %.lr.ph.split.us.i.i
  %i.th = phi i32 [ %i.sa, %.lr.ph.split.us.i.i ], [ %i.te, %._crit_edge.us.us.i.i ]
  %.1.lcssa.us.i.i = phi double [ %.04153.us.i.i, %.lr.ph.split.us.i.i ], [ %i.td, %._crit_edge.us.us.i.i ] ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %indvars.iv.next65.i.i, %wide.trip.count67.i.i
  br i1 %exitcond68.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !2

._crit_edge.loopexit.i.i:                         ; preds = %.loopexit.us.i.i
  %.pre69.i.i = load i32, ptr %i.ru, align 4, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader45.i.i
  %i.ti = phi i32 [ %i.rv, %.preheader45.i.i ], [ %.pre69.i.i, %._crit_edge.loopexit.i.i ]
  %.041.lcssa.i.i = phi double [ 0.000000e+00, %.preheader45.i.i ], [ %.1.lcssa.us.i.i, %._crit_edge.loopexit.i.i ]
  %i.tj = sitofp i32 %i.ti to double
  %i.tk = fdiv double %.041.lcssa.i.i, %i.tj
  br label %average_edge_length.exit.i

average_edge_length.exit.i:                       ; preds = %._crit_edge.i.i, %bb.br
  %.042.i.i = phi double [ %i.tk, %._crit_edge.i.i ], [ 1.000000e+00, %bb.br ] ; 2 uses
  store double %.042.i.i, ptr %i.pc, align 8, !tbaa !29
  br label %bb.bt

bb.bt:                                            ; preds = %average_edge_length.exit.i, %.loopexit187.i
  %.0154.i = phi double [ %.042.i.i, %average_edge_length.exit.i ], [ %i.qs, %.loopexit187.i ] ; 3 uses
  %i.tl = fcmp ult double %i.qr, 0.000000e+00
  br i1 %i.tl, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  store double -1.000000e+00, ptr %2, align 8, !tbaa !28
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.0155.i = phi double [ -1.000000e+00, %bb.bu ], [ %i.qr, %bb.bt ] ; 3 uses
  %i.tm = fsub double 1.000000e+00, %.0155.i
  %i.tn = call double @pow(double noundef %.0154.i, double noundef %i.tm) #22
  %i.to = fsub double 2.000000e+00, %.0155.i
  %i.tp = fdiv double %i.to, 3.000000e+00
  %i.tq = call double @pow(double noundef 2.000000e-01, double noundef %i.tp) #22
  %i.tr = fdiv double %i.tq, %.0154.i             ; 4 uses
  %i.ts = mul nuw nsw i32 %i.rb, %0
  %i.tt = zext nneg i32 %i.ts to i64              ; 2 uses
  %i.tu = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.tt, i64 noundef 8) #23 ; 9 uses
  %i.tv = icmp eq ptr %i.tu, null
  br i1 %i.tv, label %bb.bw, label %gv_calloc.exit.preheader.i

gv_calloc.exit.preheader.i:                       ; preds = %bb.bv
  %i.tw = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %wide.trip.count220.i = zext nneg i32 %i.rb to i64 ; 3 uses
  %i.tx = mul i64 %i.ps, %wide.trip.count220.i    ; 2 uses
  %scevgep636 = getelementptr i8, ptr %i.tu, i64 %i.tx
  %scevgep637 = getelementptr i8, ptr %.1, i64 %i.tx
  %scevgep684.a = getelementptr i8, ptr %.1, i64 %i.po
  %broadcast.splatinsert700 = insertelement <2 x double> poison, double %i.tr, i64 0
  %broadcast.splat701 = shufflevector <2 x double> %broadcast.splatinsert700, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %bound0641 = icmp ult ptr %.1, %scevgep636
  %bound1642 = icmp ult ptr %i.tu, %scevgep637
  %found.conflict643 = and i1 %bound0641, %bound1642
  br label %.lr.ph196.preheader.i

bb.bw:                                            ; preds = %bb.bv
  %i.ty = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.tz = shl nuw nsw i64 %i.tt, 3
  %i.ua = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ty, ptr noundef nonnull @.str.25, i64 noundef %i.tz) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

.lr.ph196.preheader.i:                            ; preds = %update_step.exit.i, %gv_calloc.exit.preheader.i
  %i.ub = phi i32 [ %i.zn, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ] ; 4 uses
  %.val.i193 = phi i32 [ %.val242.i, %update_step.exit.i ], [ %i.qx, %gv_calloc.exit.preheader.i ] ; 13 uses
  %.0153.i = phi double [ %.0.i.i, %update_step.exit.i ], [ %i.qu, %gv_calloc.exit.preheader.i ] ; 9 uses
  %.0151.i = phi double [ %i.xl, %update_step.exit.i ], [ 0.000000e+00, %gv_calloc.exit.preheader.i ] ; 2 uses
  %.0150.i = phi i32 [ %i.yn, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ]
  %i.uc = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.rb, i32 noundef %.val.i193, ptr noundef %.1) #22 ; 3 uses
  call void @QuadTree_get_repulsive_force(ptr noundef %i.uc, ptr noundef nonnull %i.tu, ptr noundef %.1, double noundef 6.000000e-01, double noundef %.0155.i, double noundef %i.tn, ptr noundef nonnull %i.g) #22
  %.pre.i194 = load i32, ptr %i.rg, align 4, !tbaa !39
  br label %.lr.ph196.i

.loopexit185.i:                                   ; preds = %.loopexit.i199, %.lr.ph196.i
  %i.ud = phi i32 [ %i.uk, %.lr.ph196.i ], [ %i.wn, %.loopexit.i199 ]
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %.lr.ph203.i.preheader, label %.lr.ph196.i, !llvm.loop !135

.lr.ph203.i.preheader:                            ; preds = %.loopexit185.i
  %broadcast.splatinsert646 = insertelement <2 x double> poison, double %.0153.i, i64 0
  %broadcast.splat647 = shufflevector <2 x double> %broadcast.splatinsert646, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph203.i

.lr.ph196.i:                                      ; preds = %.loopexit185.i, %.lr.ph196.preheader.i
  %i.ue = phi i32 [ %.pre.i194, %.lr.ph196.preheader.i ], [ %i.ud, %.loopexit185.i ] ; 2 uses
  %indvars.iv217.i = phi i64 [ 0, %.lr.ph196.preheader.i ], [ %indvars.iv.next218.i, %.loopexit185.i ] ; 5 uses
  %i.uf = mul i64 %i.pt, %indvars.iv217.i
  %i.ug = add i64 %i.po, %i.uf                    ; 2 uses
  %scevgep683 = getelementptr i8, ptr %.1, i64 %i.ug
  %scevgep685 = getelementptr i8, ptr %i.tu, i64 %i.ug ; 2 uses
  %i.uh = mul i64 %indvars.iv217.i, %i.pi         ; 2 uses
  %i.ui = getelementptr [8 x i8], ptr %i.tu, i64 %i.uh ; 6 uses
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 3 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %indvars.iv.next218.i ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !39 ; 3 uses
  %i.ul = icmp slt i32 %i.ue, %i.uk
  br i1 %i.ul, label %.lr.ph194.preheader.i, label %.loopexit185.i

.lr.ph194.preheader.i:                            ; preds = %.lr.ph196.i
  %i.um = sext i32 %i.ue to i64
  %i.un = trunc nuw nsw i64 %indvars.iv217.i to i32
  %invariant.gep.i197 = getelementptr [8 x i8], ptr %.1, i64 %i.uh ; 5 uses
  %bound0692.a = icmp ult ptr %i.ui, %scevgep683
  %bound1693.a = icmp ult ptr %invariant.gep.i197, %scevgep685
  %found.conflict694.a = and i1 %bound0692.a, %bound1693.a
  br label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %.loopexit.i199, %.lr.ph194.preheader.i
  %i.uo = phi i32 [ %i.uk, %.lr.ph194.preheader.i ], [ %i.wn, %.loopexit.i199 ]
  %indvars.iv214.i = phi i64 [ %i.um, %.lr.ph194.preheader.i ], [ %indvars.iv.next215.i, %.loopexit.i199 ] ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %indvars.iv214.i ; 2 uses
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !39 ; 2 uses
  %i.ur = zext i32 %i.uq to i64
  %i.us = icmp eq i64 %indvars.iv217.i, %i.ur
  br i1 %i.us, label %.loopexit.i199, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph194.i
  %i.ut = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.un, i32 noundef %i.uq) #22 ; 4 uses
  %i.uu = load i32, ptr %i.up, align 4, !tbaa !39
  %i.uv = mul nsw i32 %i.uu, %0
  %i.uw = sext i32 %i.uv to i64                   ; 2 uses
  %invariant.gep264.i = getelementptr [8 x i8], ptr %.1, i64 %i.uw ; 5 uses
  br i1 %min.iters.check687, label %scalar.ph686.preheader, label %vector.memcheck688

vector.memcheck688:                               ; preds = %bb.bx
  %i.ux = shl nsw i64 %i.uw, 3
  %i.uy = getelementptr i8, ptr %scevgep684.a, i64 %i.ux
  %bound0689 = icmp ult ptr %i.ui, %i.uy
  %bound1690 = icmp ult ptr %invariant.gep264.i, %scevgep685
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx695 = or i1 %found.conflict691, %found.conflict694.a
  br i1 %conflict.rdx695, label %scalar.ph686.preheader, label %vector.ph696

vector.ph696:                                     ; preds = %vector.memcheck688
  %broadcast.splatinsert698 = insertelement <2 x double> poison, double %i.ut, i64 0
  %broadcast.splat699 = shufflevector <2 x double> %broadcast.splatinsert698, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body702

vector.body702:                                   ; preds = %vector.body702, %vector.ph696
  %index703 = phi i64 [ 0, %vector.ph696 ], [ %index.next710, %vector.body702 ] ; 4 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %index703 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %wide.load704 = load <2 x double>, ptr %i.uz, align 8, !tbaa !12, !alias.scope !218
  %wide.load705 = load <2 x double>, ptr %i.va, align 8, !tbaa !12, !alias.scope !218
  %i.vb = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %index703 ; 2 uses
  %i.vc = getelementptr i8, ptr %i.vb, i64 16
  %wide.load706 = load <2 x double>, ptr %i.vb, align 8, !tbaa !12, !alias.scope !219
  %wide.load707 = load <2 x double>, ptr %i.vc, align 8, !tbaa !12, !alias.scope !219
  %i.vd = fsub <2 x double> %wide.load704, %wide.load706
  %i.ve = fsub <2 x double> %wide.load705, %wide.load707
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %index703 ; 3 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 16 ; 2 uses
  %wide.load708 = load <2 x double>, ptr %i.vf, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %wide.load709 = load <2 x double>, ptr %i.vg, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %i.vh = fneg <2 x double> %i.vd
  %i.vi = fneg <2 x double> %i.ve
  %i.vj = fmul <2 x double> %broadcast.splat701, %i.vh
  %i.vk = fmul <2 x double> %broadcast.splat701, %i.vi
  %i.vl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vj, <2 x double> %broadcast.splat699, <2 x double> %wide.load708)
  %i.vm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vk, <2 x double> %broadcast.splat699, <2 x double> %wide.load709)
  store <2 x double> %i.vl, ptr %i.vf, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  store <2 x double> %i.vm, ptr %i.vg, align 8, !tbaa !12, !alias.scope !220, !noalias !221
  %index.next710 = add nuw i64 %index703, 4       ; 2 uses
  %i.vn = icmp eq i64 %index.next710, %n.vec697
  br i1 %i.vn, label %middle.block711, label %vector.body702, !llvm.loop !140

middle.block711:                                  ; preds = %vector.body702
  br i1 %cmp.n712, label %.loopexit.loopexit.i, label %scalar.ph686.preheader

scalar.ph686.preheader:                           ; preds = %vector.memcheck688, %bb.bx, %middle.block711
  %indvars.iv209.i.ph = phi i64 [ 0, %vector.memcheck688 ], [ 0, %bb.bx ], [ %n.vec697, %middle.block711 ] ; 6 uses
  br i1 %lcmp.mod882.not, label %scalar.ph686.prol.loopexit, label %scalar.ph686.prol

scalar.ph686.prol:                                ; preds = %scalar.ph686.preheader
  %gep.i198.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv209.i.ph
  %i.vo = load double, ptr %gep.i198.prol, align 8, !tbaa !12
  %gep265.i.prol = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv209.i.ph
  %i.vp = load double, ptr %gep265.i.prol, align 8, !tbaa !12
  %i.vq = fsub double %i.vo, %i.vp
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv209.i.ph ; 2 uses
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !12
  %i.vt = fneg double %i.vq
  %i.vu = fmul double %i.tr, %i.vt
  %i.vv = call double @llvm.fmuladd.f64(double %i.vu, double %i.ut, double %i.vs)
  store double %i.vv, ptr %i.vr, align 8, !tbaa !12
  %indvars.iv.next210.i.prol = or disjoint i64 %indvars.iv209.i.ph, 1
  br label %scalar.ph686.prol.loopexit

scalar.ph686.prol.loopexit:                       ; preds = %scalar.ph686.prol, %scalar.ph686.preheader
  %indvars.iv209.i.unr = phi i64 [ %indvars.iv209.i.ph, %scalar.ph686.preheader ], [ %indvars.iv.next210.i.prol, %scalar.ph686.prol ]
  %i.vw = icmp eq i64 %indvars.iv209.i.ph, %i.pw
  br i1 %i.vw, label %.loopexit.loopexit.i, label %scalar.ph686

scalar.ph686:                                     ; preds = %scalar.ph686.prol.loopexit, %scalar.ph686
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i.1, %scalar.ph686 ], [ %indvars.iv209.i.unr, %scalar.ph686.prol.loopexit ] ; 5 uses
  %gep.i198 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv209.i
  %i.vx = load double, ptr %gep.i198, align 8, !tbaa !12
  %gep265.i = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv209.i
  %i.vy = load double, ptr %gep265.i, align 8, !tbaa !12
  %i.vz = fsub double %i.vx, %i.vy
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv209.i ; 2 uses
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !12
  %i.wc = fneg double %i.vz
  %i.wd = fmul double %i.tr, %i.wc
  %i.we = call double @llvm.fmuladd.f64(double %i.wd, double %i.ut, double %i.wb)
  store double %i.we, ptr %i.wa, align 8, !tbaa !12
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 3 uses
  %gep.i198.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i197, i64 %indvars.iv.next210.i
  %i.wf = load double, ptr %gep.i198.1, align 8, !tbaa !12
  %gep265.i.1 = getelementptr [8 x i8], ptr %invariant.gep264.i, i64 %indvars.iv.next210.i
  %i.wg = load double, ptr %gep265.i.1, align 8, !tbaa !12
  %i.wh = fsub double %i.wf, %i.wg
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %i.ui, i64 %indvars.iv.next210.i ; 2 uses
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !12
  %i.wk = fneg double %i.wh
  %i.wl = fmul double %i.tr, %i.wk
  %i.wm = call double @llvm.fmuladd.f64(double %i.wl, double %i.ut, double %i.wj)
  store double %i.wm, ptr %i.wi, align 8, !tbaa !12
  %indvars.iv.next210.i.1 = add nuw nsw i64 %indvars.iv209.i, 2 ; 2 uses
  %exitcond213.not.i.1 = icmp eq i64 %indvars.iv.next210.i.1, %i.pi
  br i1 %exitcond213.not.i.1, label %.loopexit.loopexit.i, label %scalar.ph686, !llvm.loop !141

.loopexit.loopexit.i:                             ; preds = %scalar.ph686.prol.loopexit, %scalar.ph686, %middle.block711
  %.pre244.i = load i32, ptr %i.uj, align 4, !tbaa !39
  br label %.loopexit.i199

.loopexit.i199:                                   ; preds = %.loopexit.loopexit.i, %.lr.ph194.i
  %i.wn = phi i32 [ %.pre244.i, %.loopexit.loopexit.i ], [ %i.uo, %.lr.ph194.i ] ; 3 uses
  %indvars.iv.next215.i = add nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %i.wo = sext i32 %i.wn to i64
  %i.wp = icmp slt i64 %indvars.iv.next215.i, %i.wo
  br i1 %i.wp, label %.lr.ph194.i, label %.loopexit185.i, !llvm.loop !142

.lr.ph203.i:                                      ; preds = %.lr.ph203.i.preheader, %.loopexit847
  %indvars.iv237.i = phi i64 [ %indvars.iv.next238.i, %.loopexit847 ], [ 0, %.lr.ph203.i.preheader ] ; 2 uses
  %.1202.i = phi double [ %i.xl, %.loopexit847 ], [ 0.000000e+00, %.lr.ph203.i.preheader ]
  %i.wq = mul nuw nsw i64 %indvars.iv237.i, %i.pi ; 2 uses
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.wq ; 11 uses
  br i1 %i.px, label %.epil.preheader883, label %.lr.ph203.i.new

.lr.ph203.i.new:                                  ; preds = %.lr.ph203.i, %.lr.ph203.i.new
  %indvars.iv222.i = phi i64 [ %indvars.iv.next223.i.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ] ; 5 uses
  %.0152198.i = phi double [ %i.xg, %.lr.ph203.i.new ], [ 0.000000e+00, %.lr.ph203.i ]
  %niter890 = phi i64 [ %niter890.next.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ]
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !12 ; 2 uses
  %i.wu = call double @llvm.fmuladd.f64(double %i.wt, double %i.wt, double %.0152198.i)
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !12 ; 2 uses
  %i.wy = call double @llvm.fmuladd.f64(double %i.wx, double %i.wx, double %i.wu)
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !12 ; 2 uses
  %i.xc = call double @llvm.fmuladd.f64(double %i.xb, double %i.xb, double %i.wy)
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xf = load double, ptr %i.xe, align 8, !tbaa !12 ; 2 uses
  %i.xg = call double @llvm.fmuladd.f64(double %i.xf, double %i.xf, double %i.xc) ; 3 uses
  %indvars.iv.next223.i.3 = add nuw nsw i64 %indvars.iv222.i, 4 ; 2 uses
  %niter890.next.3 = add i64 %niter890, 4         ; 2 uses
  %niter890.ncmp.3 = icmp eq i64 %niter890.next.3, %unroll_iter889
  br i1 %niter890.ncmp.3, label %.unr-lcssa, label %.lr.ph203.i.new, !llvm.loop !143

.unr-lcssa:                                       ; preds = %.lr.ph203.i.new
  br i1 %lcmp.mod886.not, label %.epilog-lcssa, label %.epil.preheader883

.epil.preheader883:                               ; preds = %.unr-lcssa, %.lr.ph203.i
  %indvars.iv222.i.epil.init = phi i64 [ 0, %.lr.ph203.i ], [ %indvars.iv.next223.i.3, %.unr-lcssa ]
  %.0152198.i.epil.init = phi double [ 0.000000e+00, %.lr.ph203.i ], [ %i.xg, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod888)
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.epil.preheader883
  %indvars.iv222.i.epil = phi i64 [ %indvars.iv222.i.epil.init, %.epil.preheader883 ], [ %indvars.iv.next223.i.epil, %bb.by ] ; 2 uses
  %.0152198.i.epil = phi double [ %.0152198.i.epil.init, %.epil.preheader883 ], [ %i.xj, %bb.by ]
  %epil.iter885 = phi i64 [ 0, %.epil.preheader883 ], [ %epil.iter885.next, %bb.by ]
  %i.xh = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv222.i.epil
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !12 ; 2 uses
  %i.xj = call double @llvm.fmuladd.f64(double %i.xi, double %i.xi, double %.0152198.i.epil) ; 2 uses
  %indvars.iv.next223.i.epil = add nuw nsw i64 %indvars.iv222.i.epil, 1
  %epil.iter885.next = add i64 %epil.iter885, 1   ; 2 uses
  %epil.iter885.cmp.not = icmp eq i64 %epil.iter885.next, %xtraiter884
  br i1 %epil.iter885.cmp.not, label %.epilog-lcssa, label %bb.by, !llvm.loop !144

.epilog-lcssa:                                    ; preds = %bb.by, %.unr-lcssa
  %.lcssa858 = phi double [ %i.xg, %.unr-lcssa ], [ %i.xj, %bb.by ]
  %i.xk = call double @sqrt(double noundef %.lcssa858) #22 ; 4 uses
  %i.xl = fadd double %.1202.i, %i.xk             ; 5 uses
  %i.xm = fcmp ogt double %i.xk, 0.000000e+00
  br i1 %i.xm, label %.preheader.i196.preheader, label %.loopexit184.i

.preheader.i196.preheader:                        ; preds = %.epilog-lcssa
  br i1 %min.iters.check659, label %.preheader.i196.preheader854, label %vector.ph660

vector.ph660:                                     ; preds = %.preheader.i196.preheader
  %broadcast.splatinsert662 = insertelement <2 x double> poison, double %i.xk, i64 0
  %broadcast.splat663 = shufflevector <2 x double> %broadcast.splatinsert662, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph660
  %index665 = phi i64 [ 0, %vector.ph660 ], [ %index.next667, %vector.body664 ] ; 2 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %index665 ; 2 uses
  %wide.load666 = load <2 x double>, ptr %i.xn, align 8, !tbaa !12
  %i.xo = fdiv <2 x double> %wide.load666, %broadcast.splat663
  store <2 x double> %i.xo, ptr %i.xn, align 8, !tbaa !12
  %index.next667 = add nuw i64 %index665, 2       ; 2 uses
  %i.xp = icmp eq i64 %index.next667, %n.vec661
  br i1 %i.xp, label %middle.block668, label %vector.body664, !llvm.loop !145

middle.block668:                                  ; preds = %vector.body664
  br i1 %cmp.n669, label %.loopexit184.i, label %.preheader.i196.preheader854

.preheader.i196.preheader854:                     ; preds = %.preheader.i196.preheader, %middle.block668
  %indvars.iv227.i.ph = phi i64 [ 0, %.preheader.i196.preheader ], [ %n.vec661, %middle.block668 ]
  br label %.preheader.i196

.preheader.i196:                                  ; preds = %.preheader.i196.preheader854, %.preheader.i196
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i, %.preheader.i196 ], [ %indvars.iv227.i.ph, %.preheader.i196.preheader854 ] ; 2 uses
  %i.xq = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %indvars.iv227.i ; 2 uses
  %i.xr = load double, ptr %i.xq, align 8, !tbaa !12
  %i.xs = fdiv double %i.xr, %i.xk
  store double %i.xs, ptr %i.xq, align 8, !tbaa !12
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 2 uses
  %exitcond231.not.i = icmp eq i64 %indvars.iv.next228.i, %i.pi
  br i1 %exitcond231.not.i, label %.loopexit184.i, label %.preheader.i196, !llvm.loop !146

.loopexit184.i:                                   ; preds = %.preheader.i196, %middle.block668, %.epilog-lcssa
  %invariant.gep266.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.wq ; 4 uses
  %brmerge = select i1 %min.iters.check639, i1 true, i1 %found.conflict643
  br i1 %brmerge, label %scalar.ph638.preheader, label %vector.body648
end_hunk_0
begin_hunk_1_@multilevel_spring_electrical_embedding:bb.a
  %i.aak = load i32, ptr %i.aaa, align 8, !tbaa !38 ; 5 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !44 ; 3 uses
  %i.aan = icmp slt i32 %i.aam, 1
  br i1 %i.aan, label %spring_electrical_embedding.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aao = icmp samesign ugt i32 %i.aam, 44       ; 4 uses
  br i1 %i.aao, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(180) %.sroa.5.0..sroa_idx.i, i8 0, i64 180, i1 false)
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  %.val328.i = phi i32 [ %i.aah, %bb.cx ], [ 0, %bb.cw ]
  store i32 0, ptr %7, align 4, !tbaa !39
  %.not.i207 = icmp eq i32 %i.aak, %i.aam
  br i1 %.not.i207, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  store i32 -100, ptr %7, align 4, !tbaa !39
  br label %bb.eg

bb.da:                                            ; preds = %bb.cy
  %i.aap = call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %i.aaa, i1 noundef zeroext true) #22 ; 6 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 32 ; 2 uses
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !36 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 40 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !37
  %i.aau = load i8, ptr %i.pf, align 4
  %i.aav = trunc i8 %i.aau to i1
  br i1 %i.aav, label %.lr.ph.preheader.i253, label %.loopexit241.i

.lr.ph.preheader.i253:                            ; preds = %bb.da
  %i.aaw = load i32, ptr %i.ph, align 8, !tbaa !19
  call void @srand(i32 noundef %i.aaw) #22
  %i.aax = mul i32 %i.aak, %0
  %smax.i254 = call i32 @llvm.smax.i32(i32 %i.aax, i32 1)
  %wide.trip.count.i255 = zext nneg i32 %smax.i254 to i64
  br label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %.lr.ph.i256, %.lr.ph.preheader.i253
  %indvars.iv.i257 = phi i64 [ 0, %.lr.ph.preheader.i253 ], [ %indvars.iv.next.i258, %.lr.ph.i256 ] ; 2 uses
  %i.aay = call double @drand() #22
  %i.aaz = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv.i257
  store double %i.aay, ptr %i.aaz, align 8, !tbaa !12
  %indvars.iv.next.i258 = add nuw nsw i64 %indvars.iv.i257, 1 ; 2 uses
  %exitcond.not.i259 = icmp eq i64 %indvars.iv.next.i258, %wide.trip.count.i255
  br i1 %exitcond.not.i259, label %.loopexit241.i, label %.lr.ph.i256, !llvm.loop !154

.loopexit241.i:                                   ; preds = %.lr.ph.i256, %bb.da
  %i.aba = fcmp olt double %i.aac, 0.000000e+00
  br i1 %i.aba, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %.loopexit241.i
  %i.abb = load ptr, ptr %i.aaq, align 8, !tbaa !36 ; 3 uses
  %i.abc = load ptr, ptr %i.aas, align 8, !tbaa !37
  %i.abd = load i32, ptr %i.aap, align 8, !tbaa !38 ; 3 uses
  %i.abe = sext i32 %i.abd to i64
  %i.abf = getelementptr inbounds [4 x i8], ptr %i.abb, i64 %i.abe ; 2 uses
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !39 ; 2 uses
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %average_edge_length.exit.i227, label %.preheader45.i.i224

.preheader45.i.i224:                              ; preds = %bb.db
  %i.abi = icmp sgt i32 %i.abd, 0
  br i1 %i.abi, label %.lr.ph.split.us.preheader.i.i229, label %._crit_edge.i.i225

.lr.ph.split.us.preheader.i.i229:                 ; preds = %.preheader45.i.i224
  %wide.trip.count67.i.i230 = zext nneg i32 %i.abd to i64
  %.pre.i.i231 = load i32, ptr %i.abb, align 4, !tbaa !39
  br label %.lr.ph.split.us.i.i232

.lr.ph.split.us.i.i232:                           ; preds = %.loopexit.us.i.i236, %.lr.ph.split.us.preheader.i.i229
  %i.abj = phi i32 [ %.pre.i.i231, %.lr.ph.split.us.preheader.i.i229 ], [ %i.acs, %.loopexit.us.i.i236 ] ; 2 uses
  %indvars.iv64.i.i233 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i229 ], [ %indvars.iv.next65.i.i235, %.loopexit.us.i.i236 ] ; 2 uses
  %.04153.us.i.i234 = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i229 ], [ %.1.lcssa.us.i.i237, %.loopexit.us.i.i236 ] ; 2 uses
  %indvars.iv.next65.i.i235 = add nuw nsw i64 %indvars.iv64.i.i233, 1 ; 3 uses
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.abb, i64 %indvars.iv.next65.i.i235 ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !39 ; 2 uses
  %i.abm = icmp slt i32 %i.abj, %i.abl
  br i1 %i.abm, label %.preheader.lr.ph.us.i.i241, label %.loopexit.us.i.i236

.preheader.lr.ph.us.i.i241:                       ; preds = %.lr.ph.split.us.i.i232
  %i.abn = mul nuw nsw i64 %indvars.iv64.i.i233, %i.pi
  %i.abo = sext i32 %i.abj to i64
  %invariant.gep.i.i242 = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.abn ; 5 uses
  br label %.preheader.us.us.i.i243

.preheader.us.us.i.i243:                          ; preds = %._crit_edge.us.us.i.i251, %.preheader.lr.ph.us.i.i241
  %indvars.iv61.i.i244 = phi i64 [ %indvars.iv.next62.i.i252, %._crit_edge.us.us.i.i251 ], [ %i.abo, %.preheader.lr.ph.us.i.i241 ] ; 2 uses
  %.148.us.us.i.i245 = phi double [ %i.aco, %._crit_edge.us.us.i.i251 ], [ %.04153.us.i.i234, %.preheader.lr.ph.us.i.i241 ]
  %i.abp = getelementptr inbounds [4 x i8], ptr %i.abc, i64 %indvars.iv61.i.i244
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !39
  %i.abr = mul nsw i32 %i.abq, %0
  %i.abs = sext i32 %i.abr to i64
  %i.abt = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.abs
  %i.abu = load double, ptr %i.abt, align 8, !tbaa !12 ; 5 uses
  br i1 %i.pz, label %.epil.preheader893, label %.preheader.us.us.i.i243.new

.preheader.us.us.i.i243.new:                      ; preds = %.preheader.us.us.i.i243, %.preheader.us.us.i.i243.new
  %indvars.iv.i.i246 = phi i64 [ %indvars.iv.next.i.i249.3, %.preheader.us.us.i.i243.new ], [ 0, %.preheader.us.us.i.i243 ] ; 5 uses
  %.04046.us.us.i.i247 = phi double [ %i.acj, %.preheader.us.us.i.i243.new ], [ 0.000000e+00, %.preheader.us.us.i.i243 ]
  %niter900 = phi i64 [ %niter900.next.3, %.preheader.us.us.i.i243.new ], [ 0, %.preheader.us.us.i.i243 ]
  %gep.i.i248 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %i.abv = load double, ptr %gep.i.i248, align 8, !tbaa !12
  %i.abw = fsub double %i.abv, %i.abu             ; 2 uses
  %i.abx = call double @llvm.fmuladd.f64(double %i.abw, double %i.abw, double %.04046.us.us.i.i247)
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.1 = getelementptr inbounds nuw i8, ptr %i.aby, i64 8
  %i.abz = load double, ptr %gep.i.i248.1, align 8, !tbaa !12
  %i.aca = fsub double %i.abz, %i.abu             ; 2 uses
  %i.acb = call double @llvm.fmuladd.f64(double %i.aca, double %i.aca, double %i.abx)
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.2 = getelementptr inbounds nuw i8, ptr %i.acc, i64 16
  %i.acd = load double, ptr %gep.i.i248.2, align 8, !tbaa !12
  %i.ace = fsub double %i.acd, %i.abu             ; 2 uses
  %i.acf = call double @llvm.fmuladd.f64(double %i.ace, double %i.ace, double %i.acb)
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246
  %gep.i.i248.3 = getelementptr inbounds nuw i8, ptr %i.acg, i64 24
  %i.ach = load double, ptr %gep.i.i248.3, align 8, !tbaa !12
  %i.aci = fsub double %i.ach, %i.abu             ; 2 uses
  %i.acj = call double @llvm.fmuladd.f64(double %i.aci, double %i.aci, double %i.acf) ; 3 uses
  %indvars.iv.next.i.i249.3 = add nuw nsw i64 %indvars.iv.i.i246, 4 ; 2 uses
  %niter900.next.3 = add i64 %niter900, 4         ; 2 uses
  %niter900.ncmp.3 = icmp eq i64 %niter900.next.3, %unroll_iter899
  br i1 %niter900.ncmp.3, label %._crit_edge.us.us.i.i251.unr-lcssa, label %.preheader.us.us.i.i243.new, !llvm.loop !0

._crit_edge.us.us.i.i251.unr-lcssa:               ; preds = %.preheader.us.us.i.i243.new
  br i1 %lcmp.mod896.not, label %._crit_edge.us.us.i.i251, label %.epil.preheader893

.epil.preheader893:                               ; preds = %._crit_edge.us.us.i.i251.unr-lcssa, %.preheader.us.us.i.i243
  %indvars.iv.i.i246.epil.init = phi i64 [ 0, %.preheader.us.us.i.i243 ], [ %indvars.iv.next.i.i249.3, %._crit_edge.us.us.i.i251.unr-lcssa ]
  %.04046.us.us.i.i247.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i243 ], [ %i.acj, %._crit_edge.us.us.i.i251.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod898)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.epil.preheader893
  %indvars.iv.i.i246.epil = phi i64 [ %indvars.iv.next.i.i249.epil, %bb.dc ], [ %indvars.iv.i.i246.epil.init, %.epil.preheader893 ] ; 2 uses
  %.04046.us.us.i.i247.epil = phi double [ %i.acm, %bb.dc ], [ %.04046.us.us.i.i247.epil.init, %.epil.preheader893 ]
  %epil.iter895 = phi i64 [ %epil.iter895.next, %bb.dc ], [ 0, %.epil.preheader893 ]
  %gep.i.i248.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i242, i64 %indvars.iv.i.i246.epil
  %i.ack = load double, ptr %gep.i.i248.epil, align 8, !tbaa !12
  %i.acl = fsub double %i.ack, %i.abu             ; 2 uses
  %i.acm = call double @llvm.fmuladd.f64(double %i.acl, double %i.acl, double %.04046.us.us.i.i247.epil) ; 2 uses
  %indvars.iv.next.i.i249.epil = add nuw nsw i64 %indvars.iv.i.i246.epil, 1
  %epil.iter895.next = add i64 %epil.iter895, 1   ; 2 uses
  %epil.iter895.cmp.not = icmp eq i64 %epil.iter895.next, %xtraiter894
  br i1 %epil.iter895.cmp.not, label %._crit_edge.us.us.i.i251, label %bb.dc, !llvm.loop !155

._crit_edge.us.us.i.i251:                         ; preds = %bb.dc, %._crit_edge.us.us.i.i251.unr-lcssa
  %.lcssa860 = phi double [ %i.acj, %._crit_edge.us.us.i.i251.unr-lcssa ], [ %i.acm, %bb.dc ]
  %i.acn = call double @sqrt(double noundef %.lcssa860) #22
  %i.aco = fadd double %.148.us.us.i.i245, %i.acn ; 2 uses
  %indvars.iv.next62.i.i252 = add nsw i64 %indvars.iv61.i.i244, 1 ; 2 uses
  %i.acp = load i32, ptr %i.abk, align 4, !tbaa !39 ; 2 uses
  %i.acq = sext i32 %i.acp to i64
  %i.acr = icmp slt i64 %indvars.iv.next62.i.i252, %i.acq
  br i1 %i.acr, label %.preheader.us.us.i.i243, label %.loopexit.us.i.i236, !llvm.loop !1

.loopexit.us.i.i236:                              ; preds = %._crit_edge.us.us.i.i251, %.lr.ph.split.us.i.i232
  %i.acs = phi i32 [ %i.abl, %.lr.ph.split.us.i.i232 ], [ %i.acp, %._crit_edge.us.us.i.i251 ]
  %.1.lcssa.us.i.i237 = phi double [ %.04153.us.i.i234, %.lr.ph.split.us.i.i232 ], [ %i.aco, %._crit_edge.us.us.i.i251 ] ; 2 uses
  %exitcond68.not.i.i238 = icmp eq i64 %indvars.iv.next65.i.i235, %wide.trip.count67.i.i230
  br i1 %exitcond68.not.i.i238, label %._crit_edge.loopexit.i.i239, label %.lr.ph.split.us.i.i232, !llvm.loop !2

._crit_edge.loopexit.i.i239:                      ; preds = %.loopexit.us.i.i236
  %.pre69.i.i240 = load i32, ptr %i.abf, align 4, !tbaa !39
  br label %._crit_edge.i.i225

._crit_edge.i.i225:                               ; preds = %._crit_edge.loopexit.i.i239, %.preheader45.i.i224
  %i.act = phi i32 [ %i.abg, %.preheader45.i.i224 ], [ %.pre69.i.i240, %._crit_edge.loopexit.i.i239 ]
  %.041.lcssa.i.i226 = phi double [ 0.000000e+00, %.preheader45.i.i224 ], [ %.1.lcssa.us.i.i237, %._crit_edge.loopexit.i.i239 ]
  %i.acu = sitofp i32 %i.act to double
  %i.acv = fdiv double %.041.lcssa.i.i226, %i.acu
  br label %average_edge_length.exit.i227

average_edge_length.exit.i227:                    ; preds = %._crit_edge.i.i225, %bb.db
  %.042.i.i228 = phi double [ %i.acv, %._crit_edge.i.i225 ], [ 1.000000e+00, %bb.db ] ; 2 uses
  store double %.042.i.i228, ptr %i.pc, align 8, !tbaa !29
  br label %bb.dd

bb.dd:                                            ; preds = %average_edge_length.exit.i227, %.loopexit241.i
  %.0208.i = phi double [ %.042.i.i228, %average_edge_length.exit.i227 ], [ %i.aac, %.loopexit241.i ] ; 2 uses
  %i.acw = fcmp ult double %i.aab, 0.000000e+00
  br i1 %i.acw, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  store double -1.000000e+00, ptr %2, align 8, !tbaa !28
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.0209.i = phi double [ -1.000000e+00, %bb.de ], [ %i.aab, %bb.dd ] ; 2 uses
  %i.acx = fsub double 1.000000e+00, %.0209.i     ; 3 uses
  %i.acy = call double @pow(double noundef %.0208.i, double noundef %i.acx) #22 ; 5 uses
  %i.acz = fsub double 2.000000e+00, %.0209.i
  %i.ada = fdiv double %i.acz, 3.000000e+00
  %i.adb = call double @pow(double noundef 2.000000e-01, double noundef %i.ada) #22
  %i.adc = fdiv double %i.adb, %.0208.i           ; 4 uses
  %i.add = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.pi, i64 noundef 8) #23 ; 33 uses
  %i.ade = icmp eq ptr %i.add, null
  br i1 %i.ade, label %bb.dg, label %gv_calloc.exit.preheader.i208

gv_calloc.exit.preheader.i208:                    ; preds = %bb.df
  %i.adf = uitofp nneg i32 %i.aak to double
  %wide.trip.count324.i = zext i32 %i.aak to i64  ; 3 uses
  %scevgep = getelementptr i8, ptr %i.add, i64 %i.po ; 5 uses
  %scevgep484 = getelementptr i8, ptr %.1, i64 %i.po
  %scevgep525 = getelementptr i8, ptr %.1, i64 %i.po
  %scevgep562 = getelementptr i8, ptr %.1, i64 %i.po ; 2 uses
  %13 = mul i64 %i.pq, %wide.trip.count324.i
  %scevgep564.a = getelementptr i8, ptr %.1, i64 %13
  %i.adg = insertelement <2 x double> poison, double %i.adf, i64 0
  %i.adh = shufflevector <2 x double> %i.adg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adi = getelementptr i8, ptr %.1, i64 %i.po
  %broadcast.splatinsert616 = insertelement <2 x double> poison, double %i.adc, i64 0
  %broadcast.splat617 = shufflevector <2 x double> %broadcast.splatinsert616, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.adj = insertelement <2 x ptr> poison, ptr %i.add, i64 0
  %14 = shufflevector <2 x ptr> %i.adj, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.adk = insertelement <2 x ptr> poison, ptr %scevgep564.a, i64 0
  %i.adl = insertelement <2 x ptr> poison, ptr %.1, i64 0
  %i.adm = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %15 = shufflevector <2 x ptr> %i.adm, <2 x ptr> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert579 = insertelement <2 x double> poison, double %i.acy, i64 0
  %broadcast.splat580 = shufflevector <2 x double> %broadcast.splatinsert579, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adn = insertelement <2 x ptr> poison, ptr %i.add, i64 0
  %i.ado = shufflevector <2 x ptr> %i.adn, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.adp = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.adq = shufflevector <2 x ptr> %i.adp, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %gv_calloc.exit.i209

bb.dg:                                            ; preds = %bb.df
  %i.adr = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ads = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adr, ptr noundef nonnull @.str.25, i64 noundef %i.po) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit.i209:                              ; preds = %update_step.exit.i216, %gv_calloc.exit.preheader.i208
  %i.adt = phi i32 [ %.val326.i, %update_step.exit.i216 ], [ %.val328.i, %gv_calloc.exit.preheader.i208 ] ; 12 uses
  %.0207.i = phi double [ %.0.i.i217, %update_step.exit.i216 ], [ %i.aae, %gv_calloc.exit.preheader.i208 ] ; 8 uses
  %.0203.i = phi double [ %i.als, %update_step.exit.i216 ], [ 0.000000e+00, %gv_calloc.exit.preheader.i208 ] ; 2 uses
  %.0202.i = phi i32 [ %i.adu, %update_step.exit.i216 ], [ 0, %gv_calloc.exit.preheader.i208 ]
  %.0196.i = phi i32 [ %.1.i210, %update_step.exit.i216 ], [ %i.aah, %gv_calloc.exit.preheader.i208 ]
  %i.adu = add nuw nsw i32 %.0202.i, 1            ; 2 uses
  br i1 %i.aao, label %bb.dh, label %.preheader240.preheader.i

bb.dh:                                            ; preds = %gv_calloc.exit.i209
  %i.adv = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.aak, i32 noundef %i.adt, ptr noundef %.1) #22
  br label %.preheader240.preheader.i

.preheader240.preheader.i:                        ; preds = %bb.dh, %gv_calloc.exit.i209
  %.1.i210 = phi i32 [ %i.adt, %bb.dh ], [ %.0196.i, %gv_calloc.exit.i209 ] ; 3 uses
  %.0.i211 = phi ptr [ %i.adv, %bb.dh ], [ null, %gv_calloc.exit.i209 ] ; 3 uses
  %broadcast.splatinsert489 = insertelement <2 x double> poison, double %.0207.i, i64 0
  %broadcast.splat490 = shufflevector <2 x double> %broadcast.splatinsert489, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader240.i

.loopexit235.i:                                   ; preds = %scalar.ph485.prol.loopexit, %scalar.ph485, %middle.block498
  %exitcond325.not.i = icmp eq i64 %indvars.iv.next322.i, %wide.trip.count324.i
  br i1 %exitcond325.not.i, label %._crit_edge266.i, label %.preheader240.i, !llvm.loop !156

.preheader240.i:                                  ; preds = %.loopexit235.i, %.preheader240.preheader.i
  %indvars.iv321.i = phi i64 [ 0, %.preheader240.preheader.i ], [ %indvars.iv.next322.i, %.loopexit235.i ] ; 13 uses
  %.1204263.i = phi double [ 0.000000e+00, %.preheader240.preheader.i ], [ %i.als, %.loopexit235.i ]
  %i.adw = phi <2 x double> [ zeroinitializer, %.preheader240.preheader.i ], [ %i.aky, %.loopexit235.i ] ; 2 uses
  %i.adx = mul i64 %i.pr, %indvars.iv321.i
  %scevgep601 = getelementptr i8, ptr %i.adi, i64 %i.adx
  %i.ady = trunc i64 %indvars.iv321.i to i32
  %i.adz = mul i32 %0, %i.ady
  %i.aea = zext i32 %i.adz to i64
  %i.aeb = shl nuw nsw i64 %i.aea, 3
  %scevgep563 = getelementptr i8, ptr %scevgep562, i64 %i.aeb
  %i.aec = trunc i64 %indvars.iv321.i to i32
  %i.aed = mul i32 %0, %i.aec
  %i.aee = zext i32 %i.aed to i64
  %i.aef = shl nuw nsw i64 %i.aee, 3
  %scevgep526 = getelementptr i8, ptr %scevgep525, i64 %i.aef
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.add, i8 0, i64 %i.po, i1 false), !tbaa !12
  %i.aeg = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %indvars.iv321.i
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !39 ; 2 uses
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 3 uses
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.aar, i64 %indvars.iv.next322.i ; 2 uses
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !39 ; 2 uses
  %i.aek = icmp slt i32 %i.aeh, %i.aej
  br i1 %i.aek, label %.lr.ph249.i, label %._crit_edge.i212

.lr.ph249.i:                                      ; preds = %.preheader240.i
  %i.ael = mul i64 %indvars.iv321.i, %i.pi
  %i.aem = sext i32 %i.aeh to i64
  %i.aen = trunc nuw nsw i64 %indvars.iv321.i to i32
  %invariant.gep.i221 = getelementptr [8 x i8], ptr %.1, i64 %i.ael ; 5 uses
  %bound0608.a = icmp ult ptr %i.add, %scevgep601
  %bound1609.a = icmp ult ptr %invariant.gep.i221, %scevgep
  %found.conflict610.a = and i1 %bound0608.a, %bound1609.a
  br label %bb.di

bb.di:                                            ; preds = %.loopexit234.i, %.lr.ph249.i
  %i.aeo = phi i32 [ %i.aej, %.lr.ph249.i ], [ %i.agn, %.loopexit234.i ]
  %indvars.iv283.i = phi i64 [ %i.aem, %.lr.ph249.i ], [ %indvars.iv.next284.i, %.loopexit234.i ] ; 2 uses
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.aat, i64 %indvars.iv283.i ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !39 ; 2 uses
  %i.aer = zext i32 %i.aeq to i64
  %i.aes = icmp eq i64 %indvars.iv321.i, %i.aer
  br i1 %i.aes, label %.loopexit234.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.aet = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.aen, i32 noundef %i.aeq) #22 ; 4 uses
  %i.aeu = load i32, ptr %i.aep, align 4, !tbaa !39
  %i.aev = mul nsw i32 %i.aeu, %0
  %i.aew = sext i32 %i.aev to i64                 ; 2 uses
  %invariant.gep352.i = getelementptr [8 x i8], ptr %.1, i64 %i.aew ; 5 uses
  br i1 %min.iters.check603, label %scalar.ph602.preheader, label %vector.memcheck604

vector.memcheck604:                               ; preds = %bb.dj
  %i.aex = shl nsw i64 %i.aew, 3
  %i.aey = getelementptr i8, ptr %scevgep562, i64 %i.aex
  %bound0605 = icmp ult ptr %i.add, %i.aey
  %bound1606 = icmp ult ptr %invariant.gep352.i, %scevgep
  %found.conflict607 = and i1 %bound0605, %bound1606
  %conflict.rdx611 = or i1 %found.conflict607, %found.conflict610.a
  br i1 %conflict.rdx611, label %scalar.ph602.preheader, label %vector.ph612

vector.ph612:                                     ; preds = %vector.memcheck604
  %broadcast.splatinsert614 = insertelement <2 x double> poison, double %i.aet, i64 0
  %broadcast.splat615 = shufflevector <2 x double> %broadcast.splatinsert614, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body618

vector.body618:                                   ; preds = %vector.body618, %vector.ph612
  %index619 = phi i64 [ 0, %vector.ph612 ], [ %index.next626, %vector.body618 ] ; 4 uses
  %i.aez = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %index619 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 16
  %wide.load620 = load <2 x double>, ptr %i.aez, align 8, !tbaa !12, !alias.scope !225
  %wide.load621 = load <2 x double>, ptr %i.afa, align 8, !tbaa !12, !alias.scope !225
  %i.afb = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %index619 ; 2 uses
  %i.afc = getelementptr i8, ptr %i.afb, i64 16
  %wide.load622 = load <2 x double>, ptr %i.afb, align 8, !tbaa !12, !alias.scope !226
  %wide.load623 = load <2 x double>, ptr %i.afc, align 8, !tbaa !12, !alias.scope !226
  %i.afd = fsub <2 x double> %wide.load620, %wide.load622
  %i.afe = fsub <2 x double> %wide.load621, %wide.load623
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index619 ; 3 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 16 ; 2 uses
  %wide.load624 = load <2 x double>, ptr %i.aff, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %wide.load625 = load <2 x double>, ptr %i.afg, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %i.afh = fneg <2 x double> %i.afd
  %i.afi = fneg <2 x double> %i.afe
  %i.afj = fmul <2 x double> %broadcast.splat617, %i.afh
  %i.afk = fmul <2 x double> %broadcast.splat617, %i.afi
  %i.afl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afj, <2 x double> %broadcast.splat615, <2 x double> %wide.load624)
  %i.afm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afk, <2 x double> %broadcast.splat615, <2 x double> %wide.load625)
  store <2 x double> %i.afl, ptr %i.aff, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  store <2 x double> %i.afm, ptr %i.afg, align 8, !tbaa !12, !alias.scope !227, !noalias !228
  %index.next626 = add nuw i64 %index619, 4       ; 2 uses
  %i.afn = icmp eq i64 %index.next626, %n.vec613
  br i1 %i.afn, label %middle.block627, label %vector.body618, !llvm.loop !161

middle.block627:                                  ; preds = %vector.body618
  br i1 %cmp.n628, label %.loopexit234.loopexit.i, label %scalar.ph602.preheader

scalar.ph602.preheader:                           ; preds = %vector.memcheck604, %bb.dj, %middle.block627
  %indvars.iv278.i.ph = phi i64 [ 0, %vector.memcheck604 ], [ 0, %bb.dj ], [ %n.vec613, %middle.block627 ] ; 6 uses
  br i1 %lcmp.mod902.not, label %scalar.ph602.prol.loopexit, label %scalar.ph602.prol

scalar.ph602.prol:                                ; preds = %scalar.ph602.preheader
  %gep.i222.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv278.i.ph
  %i.afo = load double, ptr %gep.i222.prol, align 8, !tbaa !12
  %gep353.i.prol = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv278.i.ph
  %i.afp = load double, ptr %gep353.i.prol, align 8, !tbaa !12
  %i.afq = fsub double %i.afo, %i.afp
  %i.afr = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv278.i.ph ; 2 uses
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !12
  %i.aft = fneg double %i.afq
  %i.afu = fmul double %i.adc, %i.aft
  %i.afv = call double @llvm.fmuladd.f64(double %i.afu, double %i.aet, double %i.afs)
  store double %i.afv, ptr %i.afr, align 8, !tbaa !12
  %indvars.iv.next279.i.prol = or disjoint i64 %indvars.iv278.i.ph, 1
  br label %scalar.ph602.prol.loopexit

scalar.ph602.prol.loopexit:                       ; preds = %scalar.ph602.prol, %scalar.ph602.preheader
  %indvars.iv278.i.unr = phi i64 [ %indvars.iv278.i.ph, %scalar.ph602.preheader ], [ %indvars.iv.next279.i.prol, %scalar.ph602.prol ]
  %i.afw = icmp eq i64 %indvars.iv278.i.ph, %i.qa
  br i1 %i.afw, label %.loopexit234.loopexit.i, label %scalar.ph602

scalar.ph602:                                     ; preds = %scalar.ph602.prol.loopexit, %scalar.ph602
  %indvars.iv278.i = phi i64 [ %indvars.iv.next279.i.1, %scalar.ph602 ], [ %indvars.iv278.i.unr, %scalar.ph602.prol.loopexit ] ; 5 uses
  %gep.i222 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv278.i
  %i.afx = load double, ptr %gep.i222, align 8, !tbaa !12
  %gep353.i = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv278.i
  %i.afy = load double, ptr %gep353.i, align 8, !tbaa !12
  %i.afz = fsub double %i.afx, %i.afy
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv278.i ; 2 uses
  %i.agb = load double, ptr %i.aga, align 8, !tbaa !12
  %i.agc = fneg double %i.afz
  %i.agd = fmul double %i.adc, %i.agc
  %i.age = call double @llvm.fmuladd.f64(double %i.agd, double %i.aet, double %i.agb)
  store double %i.age, ptr %i.aga, align 8, !tbaa !12
  %indvars.iv.next279.i = add nuw nsw i64 %indvars.iv278.i, 1 ; 3 uses
  %gep.i222.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i221, i64 %indvars.iv.next279.i
  %i.agf = load double, ptr %gep.i222.1, align 8, !tbaa !12
  %gep353.i.1 = getelementptr [8 x i8], ptr %invariant.gep352.i, i64 %indvars.iv.next279.i
  %i.agg = load double, ptr %gep353.i.1, align 8, !tbaa !12
  %i.agh = fsub double %i.agf, %i.agg
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv.next279.i ; 2 uses
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !12
  %i.agk = fneg double %i.agh
  %i.agl = fmul double %i.adc, %i.agk
  %i.agm = call double @llvm.fmuladd.f64(double %i.agl, double %i.aet, double %i.agj)
  store double %i.agm, ptr %i.agi, align 8, !tbaa !12
  %indvars.iv.next279.i.1 = add nuw nsw i64 %indvars.iv278.i, 2 ; 2 uses
  %exitcond282.not.i.1 = icmp eq i64 %indvars.iv.next279.i.1, %i.pi
  br i1 %exitcond282.not.i.1, label %.loopexit234.loopexit.i, label %scalar.ph602, !llvm.loop !162

.loopexit234.loopexit.i:                          ; preds = %scalar.ph602.prol.loopexit, %scalar.ph602, %middle.block627
  %.pre.i223 = load i32, ptr %i.aei, align 4, !tbaa !39
  br label %.loopexit234.i

.loopexit234.i:                                   ; preds = %.loopexit234.loopexit.i, %bb.di
  %i.agn = phi i32 [ %.pre.i223, %.loopexit234.loopexit.i ], [ %i.aeo, %bb.di ] ; 2 uses
  %indvars.iv.next284.i = add nsw i64 %indvars.iv283.i, 1 ; 2 uses
  %i.ago = sext i32 %i.agn to i64
  %i.agp = icmp slt i64 %indvars.iv.next284.i, %i.ago
  br i1 %i.agp, label %bb.di, label %._crit_edge.i212, !llvm.loop !163

._crit_edge.i212:                                 ; preds = %.loopexit234.i, %.preheader240.i
  br i1 %i.aao, label %bb.dk, label %.lr.ph252.i

.lr.ph252.i:                                      ; preds = %._crit_edge.i212
  %i.agq = trunc i64 %indvars.iv321.i to i32      ; 2 uses
  %i.agr = mul i32 %0, %i.agq
  %i.ags = zext i32 %i.agr to i64
  %invariant.gep354.i = getelementptr [8 x i8], ptr %.1, i64 %i.ags ; 5 uses
  %i.agt = insertelement <2 x ptr> %i.adk, ptr %scevgep563, i64 1
  %i.agu = insertelement <2 x ptr> %i.adl, ptr %invariant.gep354.i, i64 1
  %i.agv = icmp ult <2 x ptr> %14, %i.agt
  %i.agw = icmp ult <2 x ptr> %i.agu, %15
  %i.agx = and <2 x i1> %i.agv, %i.agw
  %i.agy = bitcast <2 x i1> %i.agx to i2
  %.not849 = icmp eq i2 %i.agy, 0
  br label %bb.dm

bb.dk:                                            ; preds = %._crit_edge.i212
  %i.agz = mul nuw nsw i64 %indvars.iv321.i, %i.pi ; 2 uses
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.agz
  %i.ahb = trunc nuw nsw i64 %indvars.iv321.i to i32
  call void @QuadTree_get_supernodes(ptr noundef %.0.i211, double noundef 6.000000e-01, ptr noundef %i.aha, i32 noundef %i.ahb, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.ahc = load double, ptr %i.f, align 8, !tbaa !12
  %i.ahd = load i32, ptr %i.b, align 4, !tbaa !39 ; 3 uses
  %i.ahe = sitofp i32 %i.ahd to double
  %i.ahf = insertelement <2 x double> poison, double %i.ahe, i64 0
  %i.ahg = insertelement <2 x double> %i.ahf, double %i.ahc, i64 1
  %i.ahh = fadd <2 x double> %i.adw, %i.ahg       ; 2 uses
  %i.ahi = icmp sgt i32 %i.ahd, 0
  br i1 %i.ahi, label %.lr.ph256.i, label %.loopexit237.i

.lr.ph256.i:                                      ; preds = %bb.dk
  %i.ahj = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.ahk = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.ahl = load ptr, ptr %i.c, align 8, !tbaa !43 ; 3 uses
  %i.ahm = and i64 %i.agz, 4294967295
  %wide.trip.count304.i = zext nneg i32 %i.ahd to i64 ; 2 uses
  %invariant.gep358.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ahm ; 5 uses
  %i.ahn = mul i64 %i.pp, %wide.trip.count304.i
  %scevgep524 = getelementptr i8, ptr %i.ahl, i64 %i.ahn
  %i.aho = insertelement <2 x ptr> poison, ptr %scevgep526, i64 0
  %i.ahp = insertelement <2 x ptr> %i.aho, ptr %scevgep524, i64 1
  %i.ahq = insertelement <2 x ptr> poison, ptr %invariant.gep358.i, i64 0
  %i.ahr = insertelement <2 x ptr> %i.ahq, ptr %i.ahl, i64 1
  %i.ahs = icmp ult <2 x ptr> %i.ado, %i.ahp
  %i.aht = icmp ult <2 x ptr> %i.ahr, %i.adq
  %i.ahu = and <2 x i1> %i.ahs, %i.aht
  %i.ahv = bitcast <2 x i1> %i.ahu to i2
  %.not850 = icmp eq i2 %i.ahv, 0
  br label %bb.dl

bb.dl:                                            ; preds = %.loopexit846, %.lr.ph256.i
  %indvars.iv301.i = phi i64 [ 0, %.lr.ph256.i ], [ %indvars.iv.next302.i, %.loopexit846 ] ; 4 uses
  %i.ahw = getelementptr inbounds nuw [8 x i8], ptr %i.ahj, i64 %indvars.iv301.i
  %i.ahx = load double, ptr %i.ahw, align 8, !tbaa !12 ; 2 uses
  %i.ahy = fcmp ogt double %i.ahx, 1.000000e-15
  %i.ahz = select i1 %i.ahy, double %i.ahx, double 1.000000e-15
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.ahk, i64 %indvars.iv301.i
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !12
  %i.aic = fmul double %i.acy, %i.aib             ; 4 uses
  %i.aid = mul nuw nsw i64 %indvars.iv301.i, %i.pi
  %i.aie = call double @pow(double noundef %i.ahz, double noundef %i.acx) #22 ; 4 uses
  %invariant.gep360.i = getelementptr inbounds nuw [8 x i8], ptr %i.ahl, i64 %i.aid ; 4 uses
  %.not850.not = xor i1 %.not850, true
  %brmerge983 = select i1 %min.iters.check528, i1 true, i1 %.not850.not
  br i1 %brmerge983, label %scalar.ph527.preheader, label %vector.ph536

vector.ph536:                                     ; preds = %bb.dl
  %broadcast.splatinsert538 = insertelement <2 x double> poison, double %i.aic, i64 0
  %broadcast.splat539 = shufflevector <2 x double> %broadcast.splatinsert538, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert540 = insertelement <2 x double> poison, double %i.aie, i64 0
  %broadcast.splat541 = shufflevector <2 x double> %broadcast.splatinsert540, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body542

vector.body542:                                   ; preds = %vector.body542, %vector.ph536
  %index543 = phi i64 [ 0, %vector.ph536 ], [ %index.next547, %vector.body542 ] ; 4 uses
  %i.aif = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %index543
  %wide.load544 = load <2 x double>, ptr %i.aif, align 8, !tbaa !12, !alias.scope !229
  %i.aig = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %index543
  %wide.load545 = load <2 x double>, ptr %i.aig, align 8, !tbaa !12, !alias.scope !230
  %i.aih = fsub <2 x double> %wide.load544, %wide.load545
  %i.aii = fmul <2 x double> %broadcast.splat539, %i.aih
  %i.aij = fdiv <2 x double> %i.aii, %broadcast.splat541
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index543 ; 2 uses
  %wide.load546 = load <2 x double>, ptr %i.aik, align 8, !tbaa !12, !alias.scope !231, !noalias !232
  %i.ail = fadd <2 x double> %wide.load546, %i.aij
  store <2 x double> %i.ail, ptr %i.aik, align 8, !tbaa !12, !alias.scope !231, !noalias !232
  %index.next547 = add nuw i64 %index543, 2       ; 2 uses
  %i.aim = icmp eq i64 %index.next547, %n.vec537
  br i1 %i.aim, label %middle.block548, label %vector.body542, !llvm.loop !168

middle.block548:                                  ; preds = %vector.body542
  br i1 %cmp.n549, label %.loopexit846, label %scalar.ph527.preheader

scalar.ph527.preheader:                           ; preds = %bb.dl, %middle.block548
  %indvars.iv296.i.ph = phi i64 [ %n.vec537, %middle.block548 ], [ 0, %bb.dl ] ; 6 uses
  br i1 %lcmp.mod906.not, label %scalar.ph527.prol.loopexit, label %scalar.ph527.prol

scalar.ph527.prol:                                ; preds = %scalar.ph527.preheader
  %gep359.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %indvars.iv296.i.ph
  %i.ain = load double, ptr %gep359.i.prol, align 8, !tbaa !12
  %gep361.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %indvars.iv296.i.ph
  %i.aio = load double, ptr %gep361.i.prol, align 8, !tbaa !12
  %i.aip = fsub double %i.ain, %i.aio
  %i.aiq = fmul double %i.aic, %i.aip
  %i.air = fdiv double %i.aiq, %i.aie
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv296.i.ph ; 2 uses
  %i.ait = load double, ptr %i.ais, align 8, !tbaa !12
  %i.aiu = fadd double %i.ait, %i.air
  store double %i.aiu, ptr %i.ais, align 8, !tbaa !12
  %indvars.iv.next297.i.prol = or disjoint i64 %indvars.iv296.i.ph, 1
  br label %scalar.ph527.prol.loopexit

scalar.ph527.prol.loopexit:                       ; preds = %scalar.ph527.prol, %scalar.ph527.preheader
  %indvars.iv296.i.unr = phi i64 [ %indvars.iv296.i.ph, %scalar.ph527.preheader ], [ %indvars.iv.next297.i.prol, %scalar.ph527.prol ]
  %i.aiv = icmp eq i64 %indvars.iv296.i.ph, %i.qc
  br i1 %i.aiv, label %.loopexit846, label %scalar.ph527

scalar.ph527:                                     ; preds = %scalar.ph527.prol.loopexit, %scalar.ph527
  %indvars.iv296.i = phi i64 [ %indvars.iv.next297.i.1, %scalar.ph527 ], [ %indvars.iv296.i.unr, %scalar.ph527.prol.loopexit ] ; 5 uses
  %gep359.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %indvars.iv296.i
  %i.aiw = load double, ptr %gep359.i, align 8, !tbaa !12
  %gep361.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %indvars.iv296.i
  %i.aix = load double, ptr %gep361.i, align 8, !tbaa !12
  %i.aiy = fsub double %i.aiw, %i.aix
  %i.aiz = fmul double %i.aic, %i.aiy
  %i.aja = fdiv double %i.aiz, %i.aie
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv296.i ; 2 uses
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !12
  %i.ajd = fadd double %i.ajc, %i.aja
  store double %i.ajd, ptr %i.ajb, align 8, !tbaa !12
  %indvars.iv.next297.i = add nuw nsw i64 %indvars.iv296.i, 1 ; 3 uses
  %gep359.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep358.i, i64 %indvars.iv.next297.i
  %i.aje = load double, ptr %gep359.i.1, align 8, !tbaa !12
  %gep361.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep360.i, i64 %indvars.iv.next297.i
  %i.ajf = load double, ptr %gep361.i.1, align 8, !tbaa !12
  %i.ajg = fsub double %i.aje, %i.ajf
  %i.ajh = fmul double %i.aic, %i.ajg
  %i.aji = fdiv double %i.ajh, %i.aie
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv.next297.i ; 2 uses
  %i.ajk = load double, ptr %i.ajj, align 8, !tbaa !12
  %i.ajl = fadd double %i.ajk, %i.aji
  store double %i.ajl, ptr %i.ajj, align 8, !tbaa !12
  %indvars.iv.next297.i.1 = add nuw nsw i64 %indvars.iv296.i, 2 ; 2 uses
  %exitcond300.not.i.1 = icmp eq i64 %indvars.iv.next297.i.1, %i.pi
  br i1 %exitcond300.not.i.1, label %.loopexit846, label %scalar.ph527, !llvm.loop !169

.loopexit846:                                     ; preds = %scalar.ph527.prol.loopexit, %scalar.ph527, %middle.block548
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 2 uses
  %exitcond305.not.i = icmp eq i64 %indvars.iv.next302.i, %wide.trip.count304.i
  br i1 %exitcond305.not.i, label %.loopexit237.i, label %bb.dl, !llvm.loop !170

bb.dm:                                            ; preds = %.loopexit.i213, %.lr.ph252.i
  %indvars.iv291.i = phi i64 [ 0, %.lr.ph252.i ], [ %indvars.iv.next292.i, %.loopexit.i213 ] ; 4 uses
  %i.ajm = icmp eq i64 %indvars.iv291.i, %indvars.iv321.i
  br i1 %i.ajm, label %.loopexit.i213, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ajn = trunc nuw nsw i64 %indvars.iv291.i to i32
  %i.ajo = call double @distance_cropped(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.agq, i32 noundef %i.ajn) #22
  %i.ajp = mul nuw nsw i64 %indvars.iv291.i, %i.pi
  %i.ajq = call double @pow(double noundef %i.ajo, double noundef %i.acx) #22 ; 4 uses
  %invariant.gep356.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ajp ; 4 uses
  %.not849.not = xor i1 %.not849, true
  %brmerge984 = select i1 %min.iters.check566, i1 true, i1 %.not849.not
  br i1 %brmerge984, label %scalar.ph565.preheader, label %vector.ph575

vector.ph575:                                     ; preds = %bb.dn
  %broadcast.splatinsert577 = insertelement <2 x double> poison, double %i.ajq, i64 0
  %broadcast.splat578 = shufflevector <2 x double> %broadcast.splatinsert577, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body581

vector.body581:                                   ; preds = %vector.body581, %vector.ph575
  %index582 = phi i64 [ 0, %vector.ph575 ], [ %index.next586, %vector.body581 ] ; 4 uses
  %i.ajr = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %index582
  %wide.load583 = load <2 x double>, ptr %i.ajr, align 8, !tbaa !12, !alias.scope !233
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %index582
  %wide.load584 = load <2 x double>, ptr %i.ajs, align 8, !tbaa !12, !alias.scope !234
  %i.ajt = fsub <2 x double> %wide.load583, %wide.load584
  %i.aju = fmul <2 x double> %broadcast.splat580, %i.ajt
  %i.ajv = fdiv <2 x double> %i.aju, %broadcast.splat578
  %i.ajw = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %index582 ; 2 uses
  %wide.load585 = load <2 x double>, ptr %i.ajw, align 8, !tbaa !12, !alias.scope !235, !noalias !236
  %i.ajx = fadd <2 x double> %wide.load585, %i.ajv
  store <2 x double> %i.ajx, ptr %i.ajw, align 8, !tbaa !12, !alias.scope !235, !noalias !236
  %index.next586 = add nuw i64 %index582, 2       ; 2 uses
  %i.ajy = icmp eq i64 %index.next586, %n.vec576
  br i1 %i.ajy, label %middle.block587, label %vector.body581, !llvm.loop !175

middle.block587:                                  ; preds = %vector.body581
  br i1 %cmp.n588, label %.loopexit.i213, label %scalar.ph565.preheader

scalar.ph565.preheader:                           ; preds = %bb.dn, %middle.block587
  %indvars.iv286.i.ph = phi i64 [ %n.vec576, %middle.block587 ], [ 0, %bb.dn ] ; 6 uses
  br i1 %lcmp.mod904.not, label %scalar.ph565.prol.loopexit, label %scalar.ph565.prol

scalar.ph565.prol:                                ; preds = %scalar.ph565.preheader
  %gep355.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep354.i, i64 %indvars.iv286.i.ph
  %i.ajz = load double, ptr %gep355.i.prol, align 8, !tbaa !12
  %gep357.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep356.i, i64 %indvars.iv286.i.ph
  %i.aka = load double, ptr %gep357.i.prol, align 8, !tbaa !12
  %i.akb = fsub double %i.ajz, %i.aka
  %i.akc = fmul double %i.acy, %i.akb
  %i.akd = fdiv double %i.akc, %i.ajq
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.add, i64 %indvars.iv286.i.ph ; 2 uses
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !12
  %i.akg = fadd double %i.akf, %i.akd
  store double %i.akg, ptr %i.ake, align 8, !tbaa !12
  %indvars.iv.next287.i.prol = or disjoint i64 %indvars.iv286.i.ph, 1
  br label %scalar.ph565.prol.loopexit

scalar.ph565.prol.loopexit:                       ; preds = %scalar.ph565.prol, %scalar.ph565.preheader
  %indvars.iv286.i.unr = phi i64 [ %indvars.iv286.i.ph, %scalar.ph565.preheader ], [ %indvars.iv.next287.i.prol, %scalar.ph565.prol ]
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.add.v4i32
!21 = !{!14, !13, i64 56}
!22 = !{!14, !8, i64 60}
!23 = !{!14, !11, i64 64}
!24 = !{!14, !8, i64 80}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !25, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!14, !11, i64 0}
!29 = !{!14, !11, i64 8}
!30 = !{!14, !11, i64 72}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!"long", !7, i64 0}
!34 = !{!"p1 int", !25, i64 0}
!35 = !{!"SparseMatrix_struct", !8, i64 0, !8, i64 4, !33, i64 8, !33, i64 16, !8, i64 24, !34, i64 32, !34, i64 40, !25, i64 48, !8, i64 56, !13, i64 60, !13, i64 60, !13, i64 60, !33, i64 64}
!36 = !{!35, !34, i64 32}
!37 = !{!35, !34, i64 40}
!38 = !{!35, !8, i64 0}
!39 = !{!8, !8, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!"p1 double", !25, i64 0}
!43 = !{!42, !42, i64 0}
!44 = !{!35, !8, i64 4}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = !{!7, !7, i64 0}
!48 = !{!"", !7, i64 0, !25, i64 32, !8, i64 40}
!49 = !{!48, !8, i64 40}
!50 = !{!"", !25, i64 0, !33, i64 8, !33, i64 16, !33, i64 24}
!51 = !{!50, !33, i64 16}
!52 = !{!48, !25, i64 32}
!53 = !{!14, !8, i64 48}
!54 = !{!"p1 omnipotent char", !25, i64 0}
!55 = !{!54, !54, i64 0}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !40, !45, !46}
!60 = distinct !{!60, !40, !46, !45}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40, !45, !46}
!63 = distinct !{!63, !40, !45, !46}
!64 = distinct !{!64, !40, !46, !45}
!65 = distinct !{!65, !40, !46, !45}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40, !46, !45}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40, !45, !46}
!70 = distinct !{!70, !40, !46, !45}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !40, !45, !46}
!74 = distinct !{!74, !40, !46, !45}
!75 = distinct !{!75, !40, !46, !45}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !40, !45, !46}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40, !45, !46}
!81 = !{!35, !25, i64 48}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = distinct !{!84, !40}
!85 = distinct !{!85, !40}
!86 = !{!"", !7, i64 0, !33, i64 8}
!87 = !{!86, !33, i64 8}
!88 = distinct !{!88, !40, !45, !46}
!89 = distinct !{!89, !40, !45, !46}
!90 = distinct !{!90, !40, !46, !45}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40, !46, !45}
!93 = distinct !{!93, !40, !45, !46}
!94 = distinct !{!94, !40, !46, !45}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40, !45, !46}
!97 = distinct !{!97, !40, !46, !45}
!98 = distinct !{!98, !40}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40, !45, !46}
!102 = distinct !{!102, !40, !46, !45}
!103 = distinct !{!103, !41}
!104 = distinct !{!104, !40}
!105 = distinct !{!105, !40}
!106 = distinct !{!106, !40}
!107 = distinct !{!107, !40}
!108 = distinct !{!108, !40}
!109 = distinct !{null}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !40}
!112 = distinct !{!112, !40, !45, !46}
!113 = distinct !{!113, !40, !45, !46}
!114 = distinct !{!114, !40, !46, !45}
!115 = distinct !{!115, !40, !46, !45}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40, !45, !46}
!119 = distinct !{!119, i1 false, !"LVerDomain"}
!120 = distinct !{!120, !119}
!121 = distinct !{!121, !119}
!122 = distinct !{!122, !40, !45, !46}
!123 = distinct !{!123, !41}
!124 = distinct !{!124, !40, !45}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !40, !46, !45}
!127 = distinct !{!127, !40}
!128 = distinct !{!128, !40, !45, !46}
!129 = distinct !{!129, !40, !46, !45}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, i1 true, !"oned_optimizer_new"}
!132 = distinct !{!132, !131, !"oned_optimizer_new: argument 0"}
!133 = distinct !{!133, !40}
!134 = distinct !{!134, !41}
!135 = distinct !{!135, !40}
!136 = distinct !{!136, i1 false, !"LVerDomain"}
!137 = distinct !{!137, !136}
!138 = distinct !{!138, !136}
!139 = distinct !{!139, !136}
!140 = distinct !{!140, !40, !45, !46}
!141 = distinct !{!141, !40, !45}
!142 = distinct !{!142, !40}
!143 = distinct !{!143, !40}
!144 = distinct !{!144, !41}
!145 = distinct !{!145, !40, !45, !46}
!146 = distinct !{!146, !40, !46, !45}
!147 = distinct !{!147, i1 false, !"LVerDomain"}
!148 = distinct !{!148, !147}
!149 = distinct !{!149, !147}
!150 = distinct !{!150, !40, !45, !46}
!151 = distinct !{!151, !40, !45}
!152 = distinct !{!152, !40}
!153 = distinct !{!153, !40}
!154 = distinct !{!154, !40}
!155 = distinct !{!155, !41}
!156 = distinct !{!156, !40}
!157 = distinct !{!157, i1 false, !"LVerDomain"}
!158 = distinct !{!158, !157}
!159 = distinct !{!159, !157}
!160 = distinct !{!160, !157}
!161 = distinct !{!161, !40, !45, !46}
!162 = distinct !{!162, !40, !45}
!163 = distinct !{!163, !40}
!164 = distinct !{!164, i1 false, !"LVerDomain"}
!165 = distinct !{!165, !164}
!166 = distinct !{!166, !164}
!167 = distinct !{!167, !164}
!168 = distinct !{!168, !40, !45, !46}
!169 = distinct !{!169, !40, !45}
!170 = distinct !{!170, !40}
!171 = distinct !{!171, i1 false, !"LVerDomain"}
!172 = distinct !{!172, !171}
!173 = distinct !{!173, !171}
!174 = distinct !{!174, !171}
!175 = distinct !{!175, !40, !45, !46}
!176 = distinct !{!176, !40, !45}
!177 = distinct !{!177, !40}
!178 = distinct !{!178, !40}
!179 = distinct !{!179, !41}
!180 = distinct !{!180, !40, !45, !46}
!181 = distinct !{!181, !40, !46, !45}
!182 = distinct !{!182, i1 false, !"LVerDomain"}
!183 = distinct !{!183, !182}
!184 = distinct !{!184, !182}
!185 = distinct !{!185, !40, !45, !46}
!186 = distinct !{!186, !40, !45}
!187 = distinct !{!187, !40}
!188 = distinct !{!188, !40, !45, !46}
!189 = distinct !{!189, !40, !46, !45}
!190 = distinct !{!190, !40}
!191 = distinct !{!191, !40, !45, !46}
!192 = distinct !{!192, !40, !46, !45}
!193 = distinct !{!193, !40}
!194 = distinct !{!194, !40}
!195 = distinct !{!195, !40}
!196 = distinct !{!196, !40}
!197 = distinct !{!197, !40, !45, !46}
!198 = distinct !{!198, !40, !45, !46}
!199 = distinct !{!199, !40, !46, !45}
!200 = distinct !{!200, !40}
!201 = distinct !{!201, !40, !46, !45}
!202 = distinct !{!202, !40, !45, !46}
!203 = distinct !{!203, !40, !46, !45}
!204 = distinct !{!204, !40}
!205 = distinct !{!205, !40}
!206 = !{!13, !13, i64 0}
!207 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 4, !39, i64 20, i64 4, !39, i64 24, i64 4, !39, i64 32, i64 8, !12, i64 40, i64 4, !39, i64 44, i64 1, !47, i64 48, i64 4, !39, i64 52, i64 4, !39, i64 56, i64 1, !206, i64 60, i64 4, !39, i64 64, i64 8, !12, i64 72, i64 8, !12, i64 80, i64 4, !39}
!208 = !{!35, !8, i64 24}
!209 = !{!120}
!210 = !{!121}
!211 = !{!"p1 _ZTS19SparseMatrix_struct", !25, i64 0}
!212 = !{!"p1 _ZTS17Multilevel_struct", !25, i64 0}
!213 = !{!"Multilevel_struct", !8, i64 0, !8, i64 4, !211, i64 8, !211, i64 16, !211, i64 24, !212, i64 32, !212, i64 40, !13, i64 48}
!214 = !{!213, !212, i64 40}
!215 = !{!213, !8, i64 4}
!216 = !{!213, !211, i64 8}
!217 = !{!132}
!218 = !{!137}
!219 = !{!138}
!220 = !{!139}
!221 = !{!138, !137}
!222 = !{!148}
!223 = !{!149}
!224 = !{!35, !33, i64 8}
!225 = !{!158}
!226 = !{!159}
!227 = !{!160}
!228 = !{!159, !158}
!229 = !{!165}
!230 = !{!166}
!231 = !{!167}
!232 = !{!165, !166}
!233 = !{!172}
!234 = !{!173}
!235 = !{!174}
!236 = !{!173, !172}
!237 = !{!183}
!238 = !{!184}
!239 = !{!"", !8, i64 0, !7, i64 8, !8, i64 176}
!240 = !{!239, !8, i64 176}
!241 = !{!213, !211, i64 16}
!242 = !{!213, !211, i64 24}
!243 = distinct !{!243, !40}
!244 = distinct !{!244, !41}
!245 = distinct !{!245, !40, !45, !46}
!246 = distinct !{!246, !40, !45, !46}
!247 = distinct !{!247, !40, !46, !45}
!248 = distinct !{!248, !40}
!249 = distinct !{!249, !40, !46, !45}
!250 = distinct !{!250, !40}
!251 = distinct !{!251, !40}
!252 = distinct !{!252, !40, !45, !46}
!253 = distinct !{!253, !40, !45, !46}
!254 = distinct !{!254, !40, !46, !45}
!255 = distinct !{!255, !40}
!256 = distinct !{!256, !40, !46, !45}
!257 = distinct !{!257, !40}
!258 = distinct !{!258, !41}
!259 = distinct !{!259, !40, !45, !46}
!260 = distinct !{!260, !40, !46, !45}
!261 = distinct !{!261, !40, !45, !46}
!262 = distinct !{!262, !40, !46, !45}
!263 = distinct !{!263, !40}
!264 = distinct !{!264, !40}
end_hunk_2
