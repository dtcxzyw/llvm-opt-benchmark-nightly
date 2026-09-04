Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_erkstep?download=true
inline.NumInlined: 15
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0_@erkStep_ComputeSolutions:bb.a
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %wide.load382 = load <2 x ptr>, ptr %i.ls, align 8, !tbaa !57
  %wide.load383 = load <2 x ptr>, ptr %i.lt, align 8, !tbaa !57
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lp ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store <2 x ptr> %wide.load382, ptr %i.lu, align 8, !tbaa !57
  store <2 x ptr> %wide.load383, ptr %i.lv, align 8, !tbaa !57
  %index.next384 = add nuw i64 %index381, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next384, %n.vec379
  br i1 %i.lw, label %middle.block385, label %vector.body380, !llvm.loop !212

middle.block385:                                  ; preds = %vector.body380
  %cmp.n386 = icmp eq i64 %n.vec379, %wide.trip.count.i107
  br i1 %cmp.n386, label %.preheader.i112, label %.lr.ph.i108.preheader

.lr.ph.i108.preheader:                            ; preds = %vector.memcheck374, %.lr.ph.preheader.i106, %middle.block385
  %indvars.iv.i109.ph = phi i64 [ 0, %vector.memcheck374 ], [ 0, %.lr.ph.preheader.i106 ], [ %n.vec379, %middle.block385 ] ; 5 uses
  %xtraiter397 = and i64 %wide.trip.count.i107, 1
  %lcmp.mod398.not = icmp eq i64 %xtraiter397, 0
  br i1 %lcmp.mod398.not, label %.lr.ph.i108.prol.loopexit, label %.lr.ph.i108.prol

.lr.ph.i108.prol:                                 ; preds = %.lr.ph.i108.preheader
  %i.lx = add nuw nsw i64 %indvars.iv.i109.ph, %i.lj ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.lx
  store double 0.000000e+00, ptr %i.ly, align 8, !tbaa !52
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.i109.ph
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !57
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lx
  store ptr %i.ma, ptr %i.mb, align 8, !tbaa !57
  %indvars.iv.next.i110.prol = or disjoint i64 %indvars.iv.i109.ph, 1
  br label %.lr.ph.i108.prol.loopexit

.lr.ph.i108.prol.loopexit:                        ; preds = %.lr.ph.i108.prol, %.lr.ph.i108.preheader
  %indvars.iv.i109.unr = phi i64 [ %indvars.iv.i109.ph, %.lr.ph.i108.preheader ], [ %indvars.iv.next.i110.prol, %.lr.ph.i108.prol ]
  %i.mc = add nsw i64 %wide.trip.count.i107, -1
  %i.md = icmp eq i64 %indvars.iv.i109.ph, %i.mc
  br i1 %i.md, label %.preheader.i112, label %.lr.ph.i108

.preheader.i112:                                  ; preds = %.lr.ph.i108.prol.loopexit, %.lr.ph.i108, %middle.block385
  br i1 %i.hd, label %.lr.ph43.preheader.i113, label %erkStep_ApplyForcing.exit127

.lr.ph43.preheader.i113:                          ; preds = %.preheader.i112
  %wide.trip.count56.i114 = zext nneg i32 %i.hc to i64
  %invariant.gep.i116 = getelementptr [8 x i8], ptr %i.lb, i64 %i.lj ; 3 uses
  %xtraiter400 = and i64 %wide.trip.count.i107, 1
  %i.me = icmp eq i32 %i.ky, 1
  %unroll_iter403 = and i64 %wide.trip.count.i107, 2147483646
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  %lcmp.mod402 = trunc i32 %i.ky to i1
  br label %.lr.ph43.i117

.lr.ph.i108:                                      ; preds = %.lr.ph.i108.prol.loopexit, %.lr.ph.i108
  %indvars.iv.i109 = phi i64 [ %indvars.iv.next.i110.1, %.lr.ph.i108 ], [ %indvars.iv.i109.unr, %.lr.ph.i108.prol.loopexit ] ; 4 uses
  %i.mf = add nuw nsw i64 %indvars.iv.i109, %i.lj ; 2 uses
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.mf
  store double 0.000000e+00, ptr %i.mg, align 8, !tbaa !52
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.i109
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !57
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.mf
  store ptr %i.mi, ptr %i.mj, align 8, !tbaa !57
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i109, 1 ; 2 uses
  %i.mk = add nuw nsw i64 %indvars.iv.next.i110, %i.lj ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.lb, i64 %i.mk
  store double 0.000000e+00, ptr %i.ml, align 8, !tbaa !52
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.li, i64 %indvars.iv.next.i110
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !57
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.mk
  store ptr %i.mn, ptr %i.mo, align 8, !tbaa !57
  %indvars.iv.next.i110.1 = add nuw nsw i64 %indvars.iv.i109, 2 ; 2 uses
  %exitcond.not.i111.1 = icmp eq i64 %indvars.iv.next.i110.1, %wide.trip.count.i107
  br i1 %exitcond.not.i111.1, label %.preheader.i112, label %.lr.ph.i108, !llvm.loop !213

.lr.ph43.i117:                                    ; preds = %._crit_edge.i124, %.lr.ph43.preheader.i113
  %indvars.iv53.i118 = phi i64 [ 0, %.lr.ph43.preheader.i113 ], [ %indvars.iv.next54.i125, %._crit_edge.i124 ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %indvars.iv53.i118
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !52
  %i.mr = fsub double %i.mq, %i.le
  %i.ms = fdiv double %i.mr, %i.lg                ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv53.i118 ; 3 uses
  br i1 %i.me, label %.epil.preheader399, label %.lr.ph43.i117.new

.lr.ph43.i117.new:                                ; preds = %.lr.ph43.i117, %.lr.ph43.i117.new
  %indvars.iv48.i119 = phi i64 [ %indvars.iv.next49.i122.1, %.lr.ph43.i117.new ], [ 0, %.lr.ph43.i117 ] ; 3 uses
  %.03841.i120 = phi double [ %i.nc, %.lr.ph43.i117.new ], [ 1.000000e+00, %.lr.ph43.i117 ] ; 2 uses
  %niter404 = phi i64 [ %niter404.next.1, %.lr.ph43.i117.new ], [ 0, %.lr.ph43.i117 ]
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !52
  %gep.i121 = getelementptr [8 x i8], ptr %invariant.gep.i116, i64 %indvars.iv48.i119 ; 2 uses
  %i.mv = load double, ptr %gep.i121, align 8, !tbaa !52
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.mu, double %.03841.i120, double %i.mv)
  store double %i.mw, ptr %gep.i121, align 8, !tbaa !52
  %i.mx = fmul double %i.ms, %.03841.i120         ; 2 uses
  %i.my = load double, ptr %i.mt, align 8, !tbaa !52
  %i.mz = getelementptr [8 x i8], ptr %invariant.gep.i116, i64 %indvars.iv48.i119
  %gep.i121.1 = getelementptr i8, ptr %i.mz, i64 8 ; 2 uses
  %i.na = load double, ptr %gep.i121.1, align 8, !tbaa !52
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.my, double %i.mx, double %i.na)
  store double %i.nb, ptr %gep.i121.1, align 8, !tbaa !52
  %i.nc = fmul double %i.ms, %i.mx                ; 2 uses
  %indvars.iv.next49.i122.1 = add nuw nsw i64 %indvars.iv48.i119, 2 ; 2 uses
  %niter404.next.1 = add i64 %niter404, 2         ; 2 uses
  %niter404.ncmp.1 = icmp eq i64 %niter404.next.1, %unroll_iter403
  br i1 %niter404.ncmp.1, label %._crit_edge.i124.unr-lcssa, label %.lr.ph43.i117.new

._crit_edge.i124.unr-lcssa:                       ; preds = %.lr.ph43.i117.new
  br i1 %lcmp.mod401.not, label %._crit_edge.i124, label %.epil.preheader399

.epil.preheader399:                               ; preds = %._crit_edge.i124.unr-lcssa, %.lr.ph43.i117
  %indvars.iv48.i119.epil.init = phi i64 [ 0, %.lr.ph43.i117 ], [ %indvars.iv.next49.i122.1, %._crit_edge.i124.unr-lcssa ]
  %.03841.i120.epil.init = phi double [ 1.000000e+00, %.lr.ph43.i117 ], [ %i.nc, %._crit_edge.i124.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod402)
  %i.nd = load double, ptr %i.mt, align 8, !tbaa !52
  %gep.i121.epil = getelementptr [8 x i8], ptr %invariant.gep.i116, i64 %indvars.iv48.i119.epil.init ; 2 uses
  %i.ne = load double, ptr %gep.i121.epil, align 8, !tbaa !52
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.nd, double %.03841.i120.epil.init, double %i.ne)
  store double %i.nf, ptr %gep.i121.epil, align 8, !tbaa !52
  br label %._crit_edge.i124

._crit_edge.i124:                                 ; preds = %._crit_edge.i124.unr-lcssa, %.epil.preheader399
  %indvars.iv.next54.i125 = add nuw nsw i64 %indvars.iv53.i118, 1 ; 2 uses
  %exitcond57.not.i126 = icmp eq i64 %indvars.iv.next54.i125, %wide.trip.count56.i114
  br i1 %exitcond57.not.i126, label %erkStep_ApplyForcing.exit127, label %.lr.ph43.i117

erkStep_ApplyForcing.exit127:                     ; preds = %._crit_edge.i124, %.preheader.i112
  %i.ng = add nuw nsw i32 %i.ky, %.2139.lcssa194196
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge153.thread, %erkStep_ApplyForcing.exit127, %._crit_edge153
  %.3140 = phi i32 [ %i.ng, %erkStep_ApplyForcing.exit127 ], [ %i.hc, %._crit_edge153 ], [ 0, %._crit_edge153.thread ]
  %i.nh = tail call i32 @N_VLinearCombination(i32 noundef %.3140, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.g) #12
  %.not105 = icmp eq i32 %i.nh, 0
  br i1 %.not105, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !41
  %i.nk = tail call double @N_VWrmsNorm(ptr noundef %i.g, ptr noundef %i.nj) #12
  store double %i.nk, ptr %1, align 8, !tbaa !52
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %bb.f, %bb.j, %bb.k, %bb.h, %bb.b
  %.195 = phi i32 [ -21, %bb.b ], [ -37, %bb.f ], [ -28, %bb.j ], [ -28, %bb.d ], [ 0, %bb.k ], [ 0, %bb.h ]
  ret i32 %.195
}

declare ptr @N_VGetSubvector_ManyVector(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNAdjointCheckpointScheme_LoadVector(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNAdjointStepper_RecomputeFwd(ptr noundef, i64 noundef, double noundef, ptr noundef, double noundef) local_unnamed_addr #2

declare ptr @ARKodeButcherTable_LoadERK(i32 noundef) local_unnamed_addr #2

declare double @N_VWrmsNorm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -49, 3) i32 @erkStep_RelaxDeltaE(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 6 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 1590, ptr noundef nonnull @__func__.erkStep_RelaxDeltaE, ptr noundef nonnull @.str, ptr noundef nonnull @.str.27) #12
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  store double 0.000000e+00, ptr %3, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.o = getelementptr i8, ptr %0, i64 736        ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %scevgep = getelementptr i8, ptr %i.h, i64 8    ; 2 uses
  %scevgep94 = getelementptr i8, ptr %0, i64 744
  %scevgep96 = getelementptr i8, ptr %i.j, i64 8
  %bound0 = icmp ult ptr %scevgep, %scevgep94
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph80, %bb.k
  %indvars.iv88 = phi i64 [ 0, %.lr.ph80 ], [ %indvars.iv.next89, %bb.k ] ; 15 uses
  %i.t = shl nuw nsw i64 %indvars.iv88, 3         ; 3 uses
  %i.u = add nuw i64 %i.t, 8                      ; 2 uses
  %scevgep93 = getelementptr i8, ptr %i.h, i64 %i.u ; 2 uses
  %scevgep97 = getelementptr i8, ptr %i.j, i64 %i.u
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !52
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !68
  store ptr %i.v, ptr %i.j, align 8, !tbaa !57
  %.not82 = icmp eq i64 %indvars.iv88, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv88
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !74  ; 6 uses
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !56  ; 6 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv88, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %scevgep95 = getelementptr i8, ptr %i.aa, i64 %i.t
  %scevgep98 = getelementptr i8, ptr %i.ab, i64 %i.t
  %bound1 = icmp ult ptr %i.o, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  %bound099 = icmp ult ptr %scevgep, %scevgep95
  %bound1100 = icmp ult ptr %i.aa, %scevgep93
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx = or i1 %found.conflict, %found.conflict101
  %bound0102 = icmp ult ptr %scevgep96, %scevgep98
  %bound1103 = icmp ult ptr %i.ab, %scevgep97
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx, %found.conflict104
  br i1 %conflict.rdx105, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %indvars.iv88, 9223372036854775806 ; 3 uses
  %i.ac = or i64 %indvars.iv88, 1                 ; 2 uses
  %i.ad = load double, ptr %i.o, align 8, !tbaa !71, !alias.scope !251
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ad, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ae = or disjoint i64 %index, 1               ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index
  %wide.load.a = load <2 x double>, ptr %i.af, align 8, !tbaa !52, !alias.scope !252
  %i.ag = fmul <2 x double> %broadcast.splat, %wide.load.a
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ae
  store <2 x double> %i.ag, ptr %i.ah, align 8, !tbaa !52, !alias.scope !253, !noalias !254
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index
  %wide.load106 = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !57, !alias.scope !255
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.ae
  store <2 x ptr> %wide.load106, ptr %i.aj, align 8, !tbaa !57, !alias.scope !256, !noalias !255
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv88, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv83.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %indvars.iv.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph ], [ %i.ac, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %indvars.iv83.ph, 1
  %xtraiter = and i64 %indvars.iv88, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.al = load double, ptr %i.o, align 8, !tbaa !71
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv83.ph
  %i.an = load double, ptr %i.am, align 8, !tbaa !52
  %i.ao = fmul double %i.al, %i.an
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  store double %i.ao, ptr %i.ap, align 8, !tbaa !52
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv83.ph
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.ph
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !57
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %indvars.iv.next84.prol = or disjoint i64 %indvars.iv83.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next.lcssa108.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %indvars.iv83.unr = phi i64 [ %indvars.iv83.ph, %scalar.ph.preheader ], [ %indvars.iv.next84.prol, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.at = icmp eq i64 %indvars.iv88, %.neg
  br i1 %i.at, label %._crit_edge.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.1, %scalar.ph ], [ %indvars.iv83.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.au = load double, ptr %i.o, align 8, !tbaa !71
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv83
  %i.aw = load double, ptr %i.av, align 8, !tbaa !52
  %i.ax = fmul double %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store double %i.ax, ptr %i.ay, align 8, !tbaa !52
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv83
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bc = load double, ptr %i.o, align 8, !tbaa !71
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next84
  %i.be = load double, ptr %i.bd, align 8, !tbaa !52
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next
  store double %i.bf, ptr %i.bg, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next84
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !57
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next84.1 = add nuw nsw i64 %indvars.iv83, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next84.1, %indvars.iv88
  br i1 %exitcond.not.1, label %._crit_edge.loopexit, label %scalar.ph, !llvm.loop !250

._crit_edge.loopexit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ac, %middle.block ], [ %indvars.iv.next.lcssa108.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next.1, %scalar.ph ]
  %i.bk = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.0.lcssa = phi i32 [ 1, %bb.d ], [ %i.bk, %._crit_edge.loopexit ]
  %i.bl = tail call i32 @N_VLinearCombination(i32 noundef %.0.lcssa, ptr noundef nonnull %i.h, ptr noundef nonnull %i.j, ptr noundef %i.b) #12
  %.not72 = icmp eq i32 %i.bl, 0
  br i1 %.not72, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %._crit_edge
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !55
  %i.bn = tail call i32 %1(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.bm) #12 ; 2 uses
  %i.bo = load i64, ptr %2, align 8, !tbaa !30
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %2, align 8, !tbaa !30
  %i.bq = icmp slt i32 %i.bn, 0
  br i1 %i.bq, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not73 = icmp eq i32 %i.bn, 0
  br i1 %.not73, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !80  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 320
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !257
  %.not74 = icmp eq ptr %i.bt, null
  br i1 %.not74, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 400
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !258
  %.not75 = icmp eq ptr %i.bv, null
  br i1 %.not75, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !85
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv88
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !52
  %i.cb = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv88
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57
  %i.ce = tail call double @N_VDotProdLocal(ptr noundef nonnull %i.d, ptr noundef %i.cd) #12
  %i.cf = load double, ptr %3, align 8, !tbaa !52
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.ce, double %i.cf)
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !85
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %indvars.iv88
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !52
  %i.cm = load ptr, ptr %i.q, align 8, !tbaa !56
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %indvars.iv88
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !57
  %i.cp = tail call double @N_VDotProd(ptr noundef nonnull %i.d, ptr noundef %i.co) #12
  %i.cq = load double, ptr %3, align 8, !tbaa !52
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.cp, double %i.cq)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %storemerge = phi double [ %i.cr, %bb.j ], [ %i.cg, %bb.i ] ; 2 uses
  store double %storemerge, ptr %3, align 8, !tbaa !52
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %i.cs = load i32, ptr %i.k, align 4, !tbaa !40
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next89, %i.ct
  br i1 %i.cu, label %bb.d, label %._crit_edge81

._crit_edge81:                                    ; preds = %bb.k, %bb.c
  %i.cv = phi double [ 0.000000e+00, %bb.c ], [ %storemerge, %bb.k ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !80 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 320
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !257
  %.not69 = icmp eq ptr %i.cz, null
  br i1 %.not69, label %bb.n, label %bb.l

bb.l:                                             ; preds = %._crit_edge81
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 400
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !258
  %.not70 = icmp eq ptr %i.db, null
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dc = tail call i32 @N_VDotProdMultiAllReduce(i32 noundef 1, ptr noundef nonnull %i.d, ptr noundef nonnull %3) #12
  %.not71 = icmp eq i32 %i.dc, 0
  br i1 %.not71, label %._crit_edge91, label %.loopexit

._crit_edge91:                                    ; preds = %bb.m
  %.pre = load double, ptr %3, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge91, %bb.l, %._crit_edge81
  %i.dd = phi double [ %.pre, %._crit_edge91 ], [ %i.cv, %bb.l ], [ %i.cv, %._crit_edge81 ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.df = load double, ptr %i.de, align 8, !tbaa !71
  %i.dg = fmul double %i.df, %i.dd
  store double %i.dg, ptr %3, align 8, !tbaa !52
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge, %bb.m, %bb.n, %bb.b
  %.066 = phi i32 [ -21, %bb.b ], [ -28, %bb.m ], [ 0, %bb.n ], [ 2, %bb.f ], [ -49, %bb.e ], [ -28, %._crit_edge ]
  ret i32 %.066
}

declare double @N_VDotProdLocal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @N_VDotProd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @N_VDotProdMultiAllReduce(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @erkStep_GetOrder(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define i32 @erkStep_fe_Adj(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
end_hunk_0
