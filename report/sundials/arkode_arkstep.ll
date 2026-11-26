Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_arkstep?download=true
inline.NumInlined: 23
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 26
begin_hunk_0_@arkStep_ApplyForcing:bb.a
  %i.u = add nsw i64 %index, %i.q                 ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x double> zeroinitializer, ptr %i.v, align 8, !tbaa !58
  store <2 x double> zeroinitializer, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !97
  %wide.load60 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !97
  %i.z = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.u ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x ptr> %wide.load, ptr %i.z, align 8, !tbaa !97
  store <2 x ptr> %wide.load60, ptr %i.aa, align 8, !tbaa !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader61

.lr.ph.preheader61:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader61
  %i.ac = add nsw i64 %indvars.iv.ph, %i.q        ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ac
  store double 0.000000e+00, ptr %i.ad, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.ph
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !97
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ac
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !97
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader61
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader61 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ah = add nsw i64 %wide.trip.count, -1
  %i.ai = icmp eq i64 %indvars.iv.ph, %i.ah
  br i1 %i.ai, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block
  %i.aj = icmp sgt i32 %3, 0
  br i1 %i.aj, label %.lr.ph43.preheader, label %._crit_edge46.split

.lr.ph43.preheader:                               ; preds = %.preheader
  %i.ak = sext i32 %i.o to i64
  %wide.trip.count56 = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.ak ; 3 uses
  %xtraiter62 = and i64 %wide.trip.count, 1
  %i.al = icmp eq i32 %i.k, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  %lcmp.mod64 = trunc i32 %i.k to i1
  br label %.lr.ph43

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.am = add nsw i64 %indvars.iv, %i.q           ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.am
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !58
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !97
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.am
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = add nsw i64 %indvars.iv.next, %i.q      ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ar
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !58
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !97
  %i.av = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ar
  store ptr %i.au, ptr %i.av, align 8, !tbaa !97
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader, label %.lr.ph, !llvm.loop !247

.lr.ph43:                                         ; preds = %.lr.ph43.preheader, %._crit_edge
  %indvars.iv53 = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvars.iv.next54, %._crit_edge ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv53
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !58
  %i.ay = fsub double %i.ax, %i.g
  %i.az = fdiv double %i.ay, %i.i                 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv53 ; 3 uses
  br i1 %i.al, label %.epil.preheader, label %.lr.ph43.new

.lr.ph43.new:                                     ; preds = %.lr.ph43, %.lr.ph43.new
  %indvars.iv48 = phi i64 [ %indvars.iv.next49.1, %.lr.ph43.new ], [ 0, %.lr.ph43 ] ; 3 uses
  %.03841 = phi double [ %i.bj, %.lr.ph43.new ], [ 1.000000e+00, %.lr.ph43 ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph43.new ], [ 0, %.lr.ph43 ]
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !58
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv48 ; 2 uses
  %i.bc = load double, ptr %gep, align 8, !tbaa !58
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bb, double %.03841, double %i.bc)
  store double %i.bd, ptr %gep, align 8, !tbaa !58
  %i.be = fmul double %i.az, %.03841              ; 2 uses
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !58
  %i.bg = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv48
  %gep.1 = getelementptr i8, ptr %i.bg, i64 8     ; 2 uses
  %i.bh = load double, ptr %gep.1, align 8, !tbaa !58
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.be, double %i.bh)
  store double %i.bi, ptr %gep.1, align 8, !tbaa !58
  %i.bj = fmul double %i.az, %i.be                ; 2 uses
  %indvars.iv.next49.1 = add nuw nsw i64 %indvars.iv48, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph43.new

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph43.new
  br i1 %lcmp.mod63.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph43
  %indvars.iv48.epil.init = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next49.1, %._crit_edge.unr-lcssa ]
  %.03841.epil.init = phi double [ 1.000000e+00, %.lr.ph43 ], [ %i.bj, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.bk = load double, ptr %i.ba, align 8, !tbaa !58
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv48.epil.init ; 2 uses
  %i.bl = load double, ptr %gep.epil, align 8, !tbaa !58
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bk, double %.03841.epil.init, double %i.bl)
  store double %i.bm, ptr %gep.epil, align 8, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge46.split, label %.lr.ph43

._crit_edge46.split:                              ; preds = %._crit_edge, %bb.a, %.preheader
  %i.bn = add nsw i32 %i.o, %i.k
  store i32 %i.bn, ptr %4, align 4, !tbaa !25
  ret void
}

declare i32 @N_VLinearCombination(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeButcherTable_IsStifflyAccurate(ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNNonlinSolSetup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNAdjointCheckpointScheme_NeedsSaving(ptr noundef, i64 noundef, i64 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNAdjointCheckpointScheme_InsertVector(ptr noundef, i64 noundef, i64 noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nounwind uwtable
define range(i32 -21, -22) i32 @arkStep_Predict(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 15 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef null, i32 noundef -21, i32 noundef 2881, ptr noundef nonnull @__func__.arkStep_Predict, ptr noundef nonnull @.str, ptr noundef nonnull @.str.63) #13
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !266
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.h = load i32, ptr %i.g, align 8, !tbaa !86
  %i.i = add i32 %i.h, -1
  %or.cond = icmp ult i32 %i.i, 3
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 2891, ptr noundef nonnull @__func__.arkStep_Predict, ptr noundef nonnull @.str, ptr noundef nonnull @.str.80) #13
  br label %bb.q

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !79   ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81   ; 17 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 988
  %i.o = load i32, ptr %i.n, align 4, !tbaa !118
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %2) #13
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !63   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !119  ; 8 uses
  %i.v = sext i32 %1 to i64                       ; 3 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !58
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 11 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !100 ; 2 uses
  %i.aa = fmul double %i.x, %i.z                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !267
  %i.ad = fdiv double %i.aa, %i.ac                ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !86
  switch i32 %i.af, label %._crit_edge.thread [
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %.preheader149
    i32 5, label %bb.p
  ]

.preheader149:                                    ; preds = %bb.h
  %i.ag = icmp sgt i32 %1, 0
  br i1 %i.ag, label %.lr.ph161.preheader, label %._crit_edge.thread

.lr.ph161.preheader:                              ; preds = %.preheader149
  %wide.trip.count187 = zext nneg i32 %1 to i64   ; 5 uses
  %min.iters.check273 = icmp ult i32 %1, 4
  br i1 %min.iters.check273, label %.lr.ph161.preheader286, label %vector.ph274

vector.ph274:                                     ; preds = %.lr.ph161.preheader
  %n.vec275 = and i64 %wide.trip.count187, 2147483644 ; 3 uses
  br label %vector.body276

vector.body276:                                   ; preds = %vector.body276, %vector.ph274
  %index277 = phi i64 [ 0, %vector.ph274 ], [ %index.next281, %vector.body276 ] ; 2 uses
  %vec.phi = phi <2 x i32> [ splat (i32 -2147483648), %vector.ph274 ], [ %i.al, %vector.body276 ]
  %vec.phi278 = phi <2 x i32> [ splat (i32 -2147483648), %vector.ph274 ], [ %i.am, %vector.body276 ]
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph274 ], [ %vec.ind.next, %vector.body276 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %index277 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %wide.load279.a = load <2 x double>, ptr %i.ah, align 8, !tbaa !58
  %wide.load280 = load <2 x double>, ptr %i.ai, align 8, !tbaa !58
  %i.aj = fcmp une <2 x double> %wide.load279.a, zeroinitializer
  %i.ak = fcmp une <2 x double> %wide.load280, zeroinitializer
  %i.al = select <2 x i1> %i.aj, <2 x i32> %vec.ind, <2 x i32> %vec.phi ; 2 uses
  %i.am = select <2 x i1> %i.ak, <2 x i32> %step.add, <2 x i32> %vec.phi278 ; 2 uses
  %index.next281 = add nuw i64 %index277, 4       ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.an = icmp eq i64 %index.next281, %n.vec275
  br i1 %i.an, label %middle.block282, label %vector.body276, !llvm.loop !248

middle.block282:                                  ; preds = %vector.body276
  %rdx.minmax = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.al, <2 x i32> %i.am)
  %i.ao = tail call i32 @llvm.vector.reduce.smax.v2i32(<2 x i32> %rdx.minmax) ; 2 uses
  %.not285 = icmp eq i32 %i.ao, -2147483648
  %i.ap = select i1 %.not285, i32 -1, i32 %i.ao   ; 2 uses
  %cmp.n283 = icmp eq i64 %n.vec275, %wide.trip.count187
  br i1 %cmp.n283, label %._crit_edge, label %.lr.ph161.preheader286

.lr.ph161.preheader286:                           ; preds = %.lr.ph161.preheader, %middle.block282
  %indvars.iv184.ph = phi i64 [ 0, %.lr.ph161.preheader ], [ %n.vec275, %middle.block282 ]
  %.0123160.ph = phi i32 [ -1, %.lr.ph161.preheader ], [ %i.ap, %middle.block282 ]
  br label %.lr.ph161

bb.i:                                             ; preds = %bb.h
  %i.aq = tail call i32 @arkPredict_MaximumOrder(ptr noundef nonnull %0, double noundef %i.ad, ptr noundef %2) #13 ; 2 uses
  %.not147 = icmp eq i32 %i.aq, -22
  br i1 %.not147, label %._crit_edge.thread, label %bb.q

bb.j:                                             ; preds = %bb.h
  %i.ar = tail call i32 @arkPredict_VariableOrder(ptr noundef nonnull %0, double noundef %i.ad, ptr noundef %2) #13 ; 2 uses
  %.not146 = icmp eq i32 %i.ar, -22
  br i1 %.not146, label %._crit_edge.thread, label %bb.q

bb.k:                                             ; preds = %bb.h
  %i.as = tail call i32 @arkPredict_CutoffOrder(ptr noundef nonnull %0, double noundef %i.ad, ptr noundef %2) #13 ; 2 uses
  %.not145 = icmp eq i32 %i.as, -22
  br i1 %.not145, label %._crit_edge.thread, label %bb.q

.lr.ph161:                                        ; preds = %.lr.ph161.preheader286, %.lr.ph161
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph161 ], [ %indvars.iv184.ph, %.lr.ph161.preheader286 ] ; 3 uses
  %.0123160 = phi i32 [ %i.ax, %.lr.ph161 ], [ %.0123160.ph, %.lr.ph161.preheader286 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv184
  %i.au = load double, ptr %i.at, align 8, !tbaa !58
  %i.av = fcmp une double %i.au, 0.000000e+00
  %i.aw = trunc nuw nsw i64 %indvars.iv184 to i32
  %i.ax = select i1 %i.av, i32 %i.aw, i32 %.0123160 ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %._crit_edge, label %.lr.ph161, !llvm.loop !249

._crit_edge:                                      ; preds = %.lr.ph161, %middle.block282
  %.lcssa = phi i32 [ %i.ap, %middle.block282 ], [ %i.ax, %.lr.ph161 ] ; 4 uses
  %i.ay = icmp eq i32 %.lcssa, -1
  br i1 %i.ay, label %._crit_edge.thread, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %._crit_edge
  %.phi.trans.insert = sext i32 %.lcssa to i64
  %.phi.trans.insert194 = getelementptr inbounds [8 x i8], ptr %i.u, i64 %.phi.trans.insert
  %.pre = load double, ptr %.phi.trans.insert194, align 8, !tbaa !58 ; 2 uses
  %xtraiter293 = and i64 %wide.trip.count187, 1
  %i.az = icmp eq i32 %1, 1
  br i1 %i.az, label %.lr.ph165.epil.preheader, label %.lr.ph165.preheader.new

.lr.ph165.preheader.new:                          ; preds = %.lr.ph165.preheader
  %unroll_iter = and i64 %wide.trip.count187, 2147483646
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165, %.lr.ph165.preheader.new
  %3 = phi double [ %.pre, %.lr.ph165.preheader.new ], [ %5, %.lr.ph165 ] ; 2 uses
  %indvars.iv189.a = phi i64 [ 0, %.lr.ph165.preheader.new ], [ %indvars.iv.next190.1, %.lr.ph165 ] ; 4 uses
  %.1124164 = phi i32 [ %.lcssa, %.lr.ph165.preheader.new ], [ %.2125.1, %.lr.ph165 ]
  %niter = phi i64 [ 0, %.lr.ph165.preheader.new ], [ %niter.next.1, %.lr.ph165 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv189.a
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !58 ; 3 uses
  %i.bc = fcmp ogt double %i.bb, %3
  %i.bd = fcmp une double %i.bb, 0.000000e+00
  %or.cond148 = and i1 %i.bd, %i.bc               ; 2 uses
  %i.be = trunc nuw nsw i64 %indvars.iv189.a to i32
  %.2125 = select i1 %or.cond148, i32 %i.be, i32 %.1124164
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189.a, 1 ; 2 uses
  %4 = select i1 %or.cond148, double %i.bb, double %3 ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next190
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !58 ; 3 uses
  %i.bh = fcmp ogt double %i.bg, %4
  %i.bi = fcmp une double %i.bg, 0.000000e+00
  %or.cond148.1 = and i1 %i.bi, %i.bh             ; 2 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv.next190 to i32
  %.2125.1 = select i1 %or.cond148.1, i32 %i.bj, i32 %.2125 ; 3 uses
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189.a, 2 ; 2 uses
  %5 = select i1 %or.cond148.1, double %i.bg, double %4 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge166.unr-lcssa, label %.lr.ph165

._crit_edge166.unr-lcssa:                         ; preds = %.lr.ph165
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %._crit_edge166, label %.lr.ph165.epil.preheader

.lr.ph165.epil.preheader:                         ; preds = %._crit_edge166.unr-lcssa, %.lr.ph165.preheader
  %.epil.init = phi double [ %.pre, %.lr.ph165.preheader ], [ %5, %._crit_edge166.unr-lcssa ]
  %indvars.iv189.epil.init = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next190.1, %._crit_edge166.unr-lcssa ] ; 2 uses
  %.1124164.epil.init = phi i32 [ %.lcssa, %.lr.ph165.preheader ], [ %.2125.1, %._crit_edge166.unr-lcssa ]
  %lcmp.mod296 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv189.epil.init
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !58 ; 2 uses
  %i.bm = fcmp ogt double %i.bl, %.epil.init
  %i.bn = fcmp une double %i.bl, 0.000000e+00
  %or.cond148.epil = and i1 %i.bn, %i.bm
  %i.bo = trunc nuw nsw i64 %indvars.iv189.epil.init to i32
  %.2125.epil = select i1 %or.cond148.epil, i32 %i.bo, i32 %.1124164.epil.init
  br label %._crit_edge166

._crit_edge166:                                   ; preds = %._crit_edge166.unr-lcssa, %.lr.ph165.epil.preheader
  %.2125.lcssa = phi i32 [ %.2125.1, %._crit_edge166.unr-lcssa ], [ %.2125.epil, %.lr.ph165.epil.preheader ]
  %i.bp = sext i32 %.2125.lcssa to i64            ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8, !tbaa !58
  %i.bs = fmul double %i.z, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !36
  %.not142 = icmp eq i32 %i.bu, 0
  br i1 %.not142, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge166
  store double 1.000000e+00, ptr %i.k, align 8, !tbaa !58
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !96
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bp
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !97
  store ptr %i.by, ptr %i.m, align 8, !tbaa !97
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge166
  %.0 = phi i32 [ 1, %bb.l ], [ 0, %._crit_edge166 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !73
  %.not143 = icmp eq i32 %i.ca, 0
  br i1 %.not143, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = zext nneg i32 %.0 to i64                ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.cb
  store double 1.000000e+00, ptr %i.cc, align 8, !tbaa !58
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !101
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.bp
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !97
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cb
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !97
  %i.ci = add nuw nsw i32 %.0, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi i32 [ %i.ci, %bb.n ], [ %.0, %bb.m ]
  %i.cj = tail call i32 @arkPredict_Bootstrap(ptr noundef nonnull %0, double noundef %i.bs, double noundef %i.aa, i32 noundef %.1, ptr noundef %i.k, ptr noundef %i.m, ptr noundef %2) #13 ; 2 uses
  %.not144 = icmp eq i32 %i.cj, -22
  br i1 %.not144, label %._crit_edge.thread, label %bb.q

bb.p:                                             ; preds = %bb.h
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !73
  %.not139 = icmp ne i32 %i.cl, 0
  %i.cm = icmp sgt i32 %1, 0                      ; 2 uses
  %or.cond168 = and i1 %.not139, %i.cm
  br i1 %or.cond168, label %.lr.ph, label %.loopexit152

.lr.ph:                                           ; preds = %bb.p
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !112
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.v
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !113 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !101 ; 6 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cv = shl nuw nsw i64 %wide.trip.count, 3     ; 4 uses
  %i.cw = getelementptr i8, ptr %i.k, i64 %i.cv   ; 2 uses
  %i.cx = getelementptr i8, ptr %0, i64 744
  %i.cy = getelementptr i8, ptr %i.cs, i64 %i.cv
  %i.cz = getelementptr i8, ptr %i.m, i64 %i.cv
  %i.da = getelementptr i8, ptr %i.cu, i64 %i.cv
  %bound0 = icmp ult ptr %i.k, %i.cx
  %bound1 = icmp ult ptr %i.y, %i.cw
  %found.conflict = and i1 %bound0, %bound1
  %bound0215 = icmp ult ptr %i.k, %i.cy
  %bound1216 = icmp ult ptr %i.cs, %i.cw
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx = or i1 %found.conflict, %found.conflict217
  %bound0218 = icmp ult ptr %i.m, %i.da
  %bound1219 = icmp ult ptr %i.cu, %i.cz
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx, %found.conflict220
  br i1 %conflict.rdx221, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %i.db = load double, ptr %i.y, align 8, !tbaa !100, !alias.scope !268
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.db, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <2 x double>, ptr %i.dc, align 8, !tbaa !58, !alias.scope !269
  %wide.load222.a = load <2 x double>, ptr %i.dd, align 8, !tbaa !58, !alias.scope !269
  %i.de = fmul <2 x double> %broadcast.splat, %wide.load
  %i.df = fmul <2 x double> %broadcast.splat, %wide.load222.a
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <2 x double> %i.de, ptr %i.dg, align 8, !tbaa !58, !alias.scope !270, !noalias !271
  store <2 x double> %i.df, ptr %i.dh, align 8, !tbaa !58, !alias.scope !270, !noalias !271
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %wide.load223.a = load <2 x ptr>, ptr %i.di, align 8, !tbaa !97, !alias.scope !272
  %wide.load224 = load <2 x ptr>, ptr %i.dj, align 8, !tbaa !97, !alias.scope !272
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <2 x ptr> %wide.load223.a, ptr %i.dk, align 8, !tbaa !97, !alias.scope !273, !noalias !272
  store <2 x ptr> %wide.load224, ptr %i.dl, align 8, !tbaa !97, !alias.scope !273, !noalias !272
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit152, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dn = load double, ptr %i.y, align 8, !tbaa !100
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.ph
  %i.dp = load double, ptr %i.do, align 8, !tbaa !58
  %i.dq = fmul double %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.ph
  store double %i.dq, ptr %i.dr, align 8, !tbaa !58
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.ph
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !97
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.ph
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !97
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dv = add nsw i64 %wide.trip.count, -1
  %i.dw = icmp eq i64 %indvars.iv.ph, %i.dv
  br i1 %i.dw, label %.loopexit152, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.dx = load double, ptr %i.y, align 8, !tbaa !100
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !58
  %i.ea = fmul double %i.dx, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.ea, ptr %i.eb, align 8, !tbaa !58
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !97
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !97
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ef = load double, ptr %i.y, align 8, !tbaa !100
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !58
  %i.ei = fmul double %i.ef, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store double %i.ei, ptr %i.ej, align 8, !tbaa !58
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.next
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !97
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  store ptr %i.el, ptr %i.em, align 8, !tbaa !97
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit152, label %scalar.ph, !llvm.loop !257

.loopexit152:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.p
  %.3 = phi i32 [ 0, %bb.p ], [ %1, %middle.block ], [ %1, %scalar.ph ], [ %1, %scalar.ph.prol.loopexit ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !36
  %.not140 = icmp ne i32 %i.eo, 0
  %or.cond169 = and i1 %.not140, %i.cm
  br i1 %or.cond169, label %.lr.ph157, label %.loopexit

.lr.ph157:                                        ; preds = %.loopexit152
  %i.ep = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !112
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.v
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !113 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !96 ; 6 uses
  %i.ev = zext nneg i32 %.3 to i64                ; 5 uses
  %wide.trip.count182 = zext nneg i32 %1 to i64   ; 6 uses
  %min.iters.check244 = icmp ult i32 %1, 14
  br i1 %min.iters.check244, label %scalar.ph243.preheader, label %vector.memcheck245

end_hunk_0
