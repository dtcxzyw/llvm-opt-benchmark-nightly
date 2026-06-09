inline.NumInlined: 13
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !8
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !8
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #14
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #14
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #14
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10   ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp ne i32 %i.c, 0
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.h = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.g) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.i = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 32000000) #14
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !10   ; 9 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp ne i32 %i.i, 0
  %or.cond.i.i15 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i.i15, label %bb.c, label %polybench_alloc_data.exit16

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.n = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.m) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit16:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call fastcc void @init_array(ptr noundef %i.d)
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %._crit_edge55.i, %polybench_alloc_data.exit16
  %indvars.iv71.i = phi i64 [ 0, %polybench_alloc_data.exit16 ], [ %indvars.iv.next72.i, %._crit_edge55.i ] ; 9 uses
  %.not.i = icmp eq i64 %indvars.iv71.i, 0
  br i1 %.not.i, label %._crit_edge55.i, label %.preheader43.lr.ph.i

.preheader43.lr.ph.i:                             ; preds = %.preheader45.i
  %i.o = getelementptr inbounds nuw [16000 x i8], ptr %i.d, i64 %indvars.iv71.i ; 10 uses
  br label %.preheader43.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge50.us.i
  %indvars.iv73.i = phi i64 [ %indvars.iv.next74.i, %._crit_edge50.us.i ], [ %indvars.iv71.i, %.preheader.us.i.preheader ] ; 3 uses
  %invariant.gep51.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv73.i ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv73.i ; 4 uses
  %.promoted53.us.i = load double, ptr %i.p, align 8, !tbaa !8 ; 2 uses
  br i1 %i.be, label %.epil.preheader99, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.preheader.us.i, %.preheader.us.i.new
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ] ; 4 uses
  %i.q = phi double [ %i.aa, %.preheader.us.i.new ], [ %.promoted53.us.i, %.preheader.us.i ]
  %niter106 = phi i64 [ %niter106.next.1, %.preheader.us.i.new ], [ 0, %.preheader.us.i ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv67.i
  %i.s = load double, ptr %i.r, align 8, !tbaa !8
  %gep52.us.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep51.us.i, i64 %indvars.iv67.i
  %i.t = load double, ptr %gep52.us.i, align 8, !tbaa !8
  %i.u = fneg double %i.s
  %i.v = call double @llvm.fmuladd.f64(double %i.u, double %i.t, double %i.q) ; 2 uses
  store double %i.v, ptr %i.p, align 8, !tbaa !8
  %indvars.iv.next68.i = or disjoint i64 %indvars.iv67.i, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next68.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !8
  %gep52.us.i.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep51.us.i, i64 %indvars.iv.next68.i
  %i.y = load double, ptr %gep52.us.i.1, align 8, !tbaa !8
  %i.z = fneg double %i.x
  %i.aa = call double @llvm.fmuladd.f64(double %i.z, double %i.y, double %i.v) ; 3 uses
  store double %i.aa, ptr %i.p, align 8, !tbaa !8
  %indvars.iv.next68.i.1 = add nuw nsw i64 %indvars.iv67.i, 2 ; 2 uses
  %niter106.next.1 = add i64 %niter106, 2         ; 2 uses
  %niter106.ncmp.1 = icmp eq i64 %niter106.next.1, %unroll_iter105
  br i1 %niter106.ncmp.1, label %._crit_edge50.us.i.unr-lcssa, label %.preheader.us.i.new, !llvm.loop !14

._crit_edge50.us.i.unr-lcssa:                     ; preds = %.preheader.us.i.new
  br i1 %lcmp.mod103.not, label %._crit_edge50.us.i, label %.epil.preheader99

.epil.preheader99:                                ; preds = %._crit_edge50.us.i.unr-lcssa, %.preheader.us.i
  %indvars.iv67.i.epil.init = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next68.i.1, %._crit_edge50.us.i.unr-lcssa ] ; 2 uses
  %.epil.init102 = phi double [ %.promoted53.us.i, %.preheader.us.i ], [ %i.aa, %._crit_edge50.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod104)
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv67.i.epil.init
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %gep52.us.i.epil = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep51.us.i, i64 %indvars.iv67.i.epil.init
  %i.ad = load double, ptr %gep52.us.i.epil, align 8, !tbaa !8
  %i.ae = fneg double %i.ac
  %i.af = call double @llvm.fmuladd.f64(double %i.ae, double %i.ad, double %.epil.init102)
  store double %i.af, ptr %i.p, align 8, !tbaa !8
  br label %._crit_edge50.us.i

._crit_edge50.us.i:                               ; preds = %._crit_edge50.us.i.unr-lcssa, %.epil.preheader99
  %indvars.iv.next74.i = add nuw nsw i64 %indvars.iv73.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next74.i, 2000
  br i1 %exitcond76.not.i, label %._crit_edge55.i, label %.preheader.us.i, !llvm.loop !16

.preheader43.i:                                   ; preds = %._crit_edge.i, %.preheader43.lr.ph.i
  %indvars.iv62.i = phi i64 [ 0, %.preheader43.lr.ph.i ], [ %indvars.iv.next63.i, %._crit_edge.i ] ; 11 uses
  %.not58.i = icmp eq i64 %indvars.iv62.i, 0
  br i1 %.not58.i, label %.preheader43.._crit_edge_crit_edge.i, label %.lr.ph.i

.preheader43.._crit_edge_crit_edge.i:             ; preds = %.preheader43.i
  %.pre.i = load double, ptr %i.o, align 8, !tbaa !8
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader43.i
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv62.i ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv62.i ; 4 uses
  %.promoted.i = load double, ptr %i.ag, align 8, !tbaa !8 ; 2 uses
  %xtraiter = and i64 %indvars.iv62.i, 1
  %i.ah = icmp eq i64 %indvars.iv62.i, 1
  br i1 %i.ah, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %indvars.iv62.i, 9223372036854775806
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %i.ai = phi double [ %.promoted.i, %.lr.ph.i.new ], [ %i.as, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8
  %gep.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.al = load double, ptr %gep.i, align 8, !tbaa !8
  %i.am = fneg double %i.ak
  %i.an = call double @llvm.fmuladd.f64(double %i.am, double %i.al, double %i.ai) ; 2 uses
  store double %i.an, ptr %i.ag, align 8, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !8
  %gep.i.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.aq = load double, ptr %gep.i.1, align 8, !tbaa !8
  %i.ar = fneg double %i.ap
  %i.as = call double @llvm.fmuladd.f64(double %i.ar, double %i.aq, double %i.an) ; 4 uses
  store double %i.as, ptr %i.ag, align 8, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !17

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %.promoted.i, %.lr.ph.i ], [ %i.as, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %indvars.iv62.i to i1
  call void @llvm.assume(i1 %lcmp.mod98)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.i.epil.init
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %gep.i.epil = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init
  %i.av = load double, ptr %gep.i.epil, align 8, !tbaa !8
  %i.aw = fneg double %i.au
  %i.ax = call double @llvm.fmuladd.f64(double %i.aw, double %i.av, double %.epil.init) ; 2 uses
  store double %i.ax, ptr %i.ag, align 8, !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.preheader43.._crit_edge_crit_edge.i
  %i.ay = phi double [ %.pre.i, %.preheader43.._crit_edge_crit_edge.i ], [ %i.as, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ax, %.epil.preheader ]
  %i.az = getelementptr inbounds nuw [16000 x i8], ptr %i.d, i64 %indvars.iv62.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv62.i
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv62.i
  %i.bd = fdiv double %i.ay, %i.bb
  store double %i.bd, ptr %i.bc, align 8, !tbaa !8
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next63.i, %indvars.iv71.i
  br i1 %exitcond66.not.i, label %.preheader.us.i.preheader, label %.preheader43.i, !llvm.loop !18

.preheader.us.i.preheader:                        ; preds = %._crit_edge.i
  %xtraiter100 = and i64 %indvars.iv71.i, 1
  %i.be = icmp eq i64 %indvars.iv71.i, 1
  %unroll_iter105 = and i64 %indvars.iv71.i, 9223372036854775806
  %lcmp.mod103.not = icmp eq i64 %xtraiter100, 0
  %lcmp.mod104 = trunc i64 %indvars.iv71.i to i1
  br label %.preheader.us.i

._crit_edge55.i:                                  ; preds = %._crit_edge50.us.i, %.preheader45.i
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next72.i, 2000
  br i1 %exitcond78.not.i, label %kernel_lu.exit, label %.preheader45.i, !llvm.loop !19

kernel_lu.exit:                                   ; preds = %._crit_edge55.i
  call fastcc void @init_array(ptr noundef %i.j)
  br label %.preheader45.i17

.preheader45.i17:                                 ; preds = %._crit_edge55.i46, %kernel_lu.exit
  %indvars.iv71.i18 = phi i64 [ 0, %kernel_lu.exit ], [ %indvars.iv.next72.i47, %._crit_edge55.i46 ] ; 9 uses
  %.not.i19 = icmp eq i64 %indvars.iv71.i18, 0
  br i1 %.not.i19, label %._crit_edge55.i46, label %.preheader43.lr.ph.i20

.preheader43.lr.ph.i20:                           ; preds = %.preheader45.i17
  %i.bf = getelementptr inbounds nuw [16000 x i8], ptr %i.j, i64 %indvars.iv71.i18 ; 10 uses
  br label %.preheader43.i21

.preheader.us.i35:                                ; preds = %.preheader.us.i35.preheader, %._crit_edge50.us.i43
  %indvars.iv73.i36 = phi i64 [ %indvars.iv.next74.i44, %._crit_edge50.us.i43 ], [ %indvars.iv71.i18, %.preheader.us.i35.preheader ] ; 3 uses
  %invariant.gep51.us.i37 = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv73.i36 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv73.i36 ; 4 uses
  %.promoted53.us.i38 = load double, ptr %i.bg, align 8, !tbaa !8 ; 2 uses
  br i1 %i.cv, label %.epil.preheader116, label %.preheader.us.i35.new

.preheader.us.i35.new:                            ; preds = %.preheader.us.i35, %.preheader.us.i35.new
  %indvars.iv67.i39 = phi i64 [ %indvars.iv.next68.i41.1, %.preheader.us.i35.new ], [ 0, %.preheader.us.i35 ] ; 4 uses
  %i.bh = phi double [ %i.br, %.preheader.us.i35.new ], [ %.promoted53.us.i38, %.preheader.us.i35 ]
  %niter123 = phi i64 [ %niter123.next.1, %.preheader.us.i35.new ], [ 0, %.preheader.us.i35 ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv67.i39
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !8
  %gep52.us.i40 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep51.us.i37, i64 %indvars.iv67.i39
  %i.bk = load double, ptr %gep52.us.i40, align 8, !tbaa !8
  %i.bl = fmul double %i.bj, %i.bk
  %i.bm = fsub double %i.bh, %i.bl                ; 2 uses
  store double %i.bm, ptr %i.bg, align 8, !tbaa !8
  %indvars.iv.next68.i41 = or disjoint i64 %indvars.iv67.i39, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next68.i41
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !8
  %gep52.us.i40.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep51.us.i37, i64 %indvars.iv.next68.i41
  %i.bp = load double, ptr %gep52.us.i40.1, align 8, !tbaa !8
  %i.bq = fmul double %i.bo, %i.bp
  %i.br = fsub double %i.bm, %i.bq                ; 3 uses
  store double %i.br, ptr %i.bg, align 8, !tbaa !8
  %indvars.iv.next68.i41.1 = add nuw nsw i64 %indvars.iv67.i39, 2 ; 2 uses
  %niter123.next.1 = add i64 %niter123, 2         ; 2 uses
  %niter123.ncmp.1 = icmp eq i64 %niter123.next.1, %unroll_iter122
  br i1 %niter123.ncmp.1, label %._crit_edge50.us.i43.unr-lcssa, label %.preheader.us.i35.new, !llvm.loop !20

._crit_edge50.us.i43.unr-lcssa:                   ; preds = %.preheader.us.i35.new
  br i1 %lcmp.mod120.not, label %._crit_edge50.us.i43, label %.epil.preheader116

.epil.preheader116:                               ; preds = %._crit_edge50.us.i43.unr-lcssa, %.preheader.us.i35
end_hunk_0
begin_hunk_1_@main:bb.a
  %xtraiter117 = and i64 %indvars.iv71.i18, 1
  %i.cv = icmp eq i64 %indvars.iv71.i18, 1
  %unroll_iter122 = and i64 %indvars.iv71.i18, 9223372036854775806
  %lcmp.mod120.not = icmp eq i64 %xtraiter117, 0
  %lcmp.mod121 = trunc i64 %indvars.iv71.i18 to i1
  br label %.preheader.us.i35

._crit_edge55.i46:                                ; preds = %._crit_edge50.us.i43, %.preheader45.i17
  %indvars.iv.next72.i47 = add nuw nsw i64 %indvars.iv71.i18, 1 ; 2 uses
  %exitcond78.not.i48 = icmp eq i64 %indvars.iv.next72.i47, 2000
  br i1 %exitcond78.not.i48, label %.preheader.i, label %.preheader45.i17, !llvm.loop !24

.preheader.i:                                     ; preds = %._crit_edge55.i46, %bb.g
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.g ], [ 0, %._crit_edge55.i46 ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [16000 x i8], ptr %i.d, i64 %indvars.iv39.i ; 2 uses
  %i.cx = getelementptr inbounds nuw [16000 x i8], ptr %i.j, i64 %indvars.iv39.i ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.1, %.preheader.i
  %indvars.iv.i51 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i52.1, %.critedge.i.1 ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i51
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !8 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.i51
  %i.db = load double, ptr %i.da, align 8, !tbaa !8 ; 2 uses
  %i.dc = fsub double %i.cz, %i.db
  %i.dd = call double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp ule double %i.dd, 1.000000e-05
  br i1 %i.de, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.f
  %indvars.iv.i51.lcssa = phi i64 [ %indvars.iv.i51, %bb.f ], [ %indvars.iv.next.i52, %.critedge.i ]
  %.lcssa91 = phi double [ %i.cz, %bb.f ], [ %i.dk, %.critedge.i ]
  %.lcssa = phi double [ %i.db, %bb.f ], [ %i.dm, %.critedge.i ]
  %i.df = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.dg = trunc nuw nsw i64 %indvars.iv.i51.lcssa to i32 ; 2 uses
  %i.dh = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.di = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dh, ptr noundef nonnull @.str.2, i32 noundef %i.df, i32 noundef %i.dg, double noundef %.lcssa91, i32 noundef %i.df, i32 noundef %i.dg, double noundef %.lcssa, double noundef 1.000000e-05) #17 ; 0 uses
  br label %bb.j

.critedge.i:                                      ; preds = %bb.f
  %indvars.iv.next.i52 = or disjoint i64 %indvars.iv.i51, 1 ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next.i52
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !8 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv.next.i52
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !8 ; 2 uses
  %i.dn = fsub double %i.dk, %i.dm
  %i.do = call double @llvm.fabs.f64(double %i.dn)
  %i.dp = fcmp ule double %i.do, 1.000000e-05
  br i1 %i.dp, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i52.1 = add nuw nsw i64 %indvars.iv.i51, 2 ; 2 uses
  %exitcond.not.i53.1 = icmp eq i64 %indvars.iv.next.i52.1, 2000
  br i1 %exitcond.not.i53.1, label %bb.g, label %bb.f, !llvm.loop !25

bb.g:                                             ; preds = %.critedge.i.1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2000
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i, !llvm.loop !26

check_FP.exit:                                    ; preds = %bb.g
  %i.dq = call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #18 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32000
  store i8 0, ptr %i.dr, align 1, !tbaa !27
  br label %.preheader.i54

.preheader.i54:                                   ; preds = %bb.i, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [16000 x i8], ptr %i.j, i64 %indvars.iv20.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i54
  %indvars.iv.i55 = phi i64 [ 0, %.preheader.i54 ], [ %indvars.iv.next.i56, %bb.h ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i55
  %i.du = shl nuw nsw i64 %indvars.iv.i55, 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.du
  %i.dw = load i64, ptr %i.dt, align 8, !tbaa !8  ; 4 uses
  %i.dx = lshr i64 %i.dw, 56
  %i.dy = trunc nuw i64 %i.dx to i8
  %i.dz = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %i.ea = shufflevector <2 x i64> %i.dz, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.eb = lshr <2 x i64> %i.ea, <i64 40, i64 48>
  %i.ec = trunc <2 x i64> %i.eb to <2 x i8>
  %i.ed = insertelement <4 x i64> poison, i64 %i.dw, i64 0
  %i.ee = shufflevector <4 x i64> %i.ed, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ef = lshr <4 x i64> %i.ee, <i64 8, i64 16, i64 24, i64 32>
  %i.eg = trunc <4 x i64> %i.ef to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.dw to i8
  %i.eh = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.ei = shufflevector <4 x i8> %i.eg, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ej = shufflevector <8 x i8> %i.eh, <8 x i8> %i.ei, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.ek = shufflevector <2 x i8> %i.ec, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.el = shufflevector <8 x i8> %i.ej, <8 x i8> %i.ek, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.em = insertelement <8 x i8> %i.el, i8 %i.dy, i64 7
  %i.en = and <8 x i8> %i.em, splat (i8 15)
  %i.eo = or disjoint <8 x i8> %i.en, splat (i8 48)
  %i.ep = shufflevector <8 x i8> %i.eo, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ep, ptr %i.dv, align 1, !tbaa !27
  %indvars.iv.next.i56 = add nuw nsw i64 %indvars.iv.i55, 1 ; 2 uses
  %exitcond.not.i57 = icmp eq i64 %indvars.iv.next.i56, 2000
  br i1 %exitcond.not.i57, label %bb.i, label %bb.h, !llvm.loop !28

bb.i:                                             ; preds = %bb.h
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.er = call i32 @fputs(ptr noundef nonnull %i.dq, ptr noundef %i.eq) #15 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i54, !llvm.loop !29

print_array.exit:                                 ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.dq) #14
  call void @free(ptr noundef %i.d) #14
  call void @free(ptr noundef nonnull %i.j) #14
  br label %bb.j

bb.j:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @init_array(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca ptr, align 8                      ; 5 uses
  br label %.preheader75

.preheader75:                                     ; preds = %bb.a, %._crit_edge
  %indvars.iv91 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next92, %._crit_edge ] ; 5 uses
  %indvar = phi i64 [ 0, %bb.a ], [ %indvar.next, %._crit_edge ] ; 6 uses
  %i.c = mul nuw nsw i64 %indvar, 16008
  %i.d = getelementptr i8, ptr %0, i64 %i.c
  %scevgep = getelementptr i8, ptr %i.d, i64 8
  %i.e = shl i64 %indvar, 3
  %i.f = sub i64 15984, %i.e
  %i.g = and i64 %i.f, 34359738360
  %i.h = add nuw nsw i64 %i.g, 8
  %i.i = getelementptr inbounds nuw [16000 x i8], ptr %0, i64 %indvar ; 3 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv91, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader75
  %n.vec = and i64 %indvars.iv91, 9223372036854775806 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.j = sub <2 x i32> zeroinitializer, %vec.ind
  %i.k = sitofp <2 x i32> %i.j to <2 x double>
  %i.l = fdiv <2 x double> %i.k, splat (double 2.000000e+03)
  %i.m = fadd <2 x double> %i.l, splat (double 1.000000e+00)
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index
  store <2 x double> %i.m, ptr %i.n, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv91, %n.vec
  br i1 %cmp.n, label %.loopexit24, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader75, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader75 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.p = trunc i64 %indvars.iv to i32
  %i.q = sub i32 0, %i.p
  %i.r = sitofp i32 %i.q to double
  %i.s = fdiv double %i.r, 2.000000e+03
  %i.t = fadd double %i.s, 1.000000e+00
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  store double %i.t, ptr %i.u, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv91
  br i1 %exitcond.not, label %.loopexit24, label %scalar.ph, !llvm.loop !33

.loopexit24:                                      ; preds = %scalar.ph, %middle.block
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %i.v = icmp samesign ult i64 %indvar, 1999
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i8 0, i64 %i.h, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit24
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvar
  store double 1.000000e+00, ptr %i.w, align 8, !tbaa !8
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond99.not = icmp eq i64 %indvar.next, 2000
  br i1 %exitcond99.not, label %bb.b, label %.preheader75, !llvm.loop !34

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.x = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #14
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !10   ; 8 uses
  %i.z = ptrtoaddr ptr %i.y to i64
  %i.aa = icmp eq ptr %i.y, null
  %i.ab = icmp ne i32 %i.x, 0
  %or.cond.i.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i.i, label %bb.c, label %polybench_alloc_data.exit

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ad = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ac) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %i.y, i8 0, i64 32000000, i1 false), !tbaa !8
  %scevgep1 = getelementptr i8, ptr %i.y, i64 32000000
  br label %.preheader72

.preheader72:                                     ; preds = %polybench_alloc_data.exit, %bb.d
  %indvars.iv115 = phi i64 [ 0, %polybench_alloc_data.exit ], [ %indvars.iv.next116, %bb.d ] ; 3 uses
  %i.ae = shl nuw nsw i64 %indvars.iv115, 3       ; 2 uses
  %scevgep2 = getelementptr nuw i8, ptr %0, i64 %i.ae
  %i.af = getelementptr i8, ptr %0, i64 %i.ae
  %scevgep3 = getelementptr i8, ptr %i.af, i64 31984008
  %invariant.gep82 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv115 ; 7 uses
  %bound0 = icmp ult ptr %i.y, %scevgep3
  %bound1 = icmp ult ptr %scevgep2, %scevgep1
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader72, %middle.block13
  %indvars.iv111 = phi i64 [ 0, %.preheader72 ], [ %indvars.iv.next112, %middle.block13 ] ; 3 uses
  %gep83 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep82, i64 %indvars.iv111 ; 3 uses
  %i.ag = getelementptr inbounds nuw [16000 x i8], ptr %i.y, i64 %indvars.iv111 ; 3 uses
  br i1 %found.conflict, label %scalar.ph7, label %vector.ph8

vector.ph8:                                       ; preds = %.preheader71
  %i.ah = load double, ptr %gep83, align 8, !tbaa !8, !alias.scope !35
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ah, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body9

vector.body9:                                     ; preds = %vector.body9, %vector.ph8
  %index10 = phi i64 [ 0, %vector.ph8 ], [ %index.next12, %vector.body9 ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep82, i64 %index10
  %i.aj = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep82, i64 %index10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16000
  %i.al = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep82, i64 %index10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32000
  %i.an = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep82, i64 %index10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48000
  %i.ap = load double, ptr %i.ai, align 8, !tbaa !8, !alias.scope !38
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !8, !alias.scope !38
  %i.ar = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.aq, i64 1
  %i.at = load double, ptr %i.am, align 8, !tbaa !8, !alias.scope !38
  %i.au = load double, ptr %i.ao, align 8, !tbaa !8, !alias.scope !38
  %i.av = insertelement <2 x double> poison, double %i.at, i64 0
  %i.aw = insertelement <2 x double> %i.av, double %i.au, i64 1
  %i.ax = fmul <2 x double> %broadcast.splat, %i.as
  %i.ay = fmul <2 x double> %broadcast.splat, %i.aw
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index10 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.az, align 8, !tbaa !8, !alias.scope !40, !noalias !42
  %wide.load11 = load <2 x double>, ptr %i.ba, align 8, !tbaa !8, !alias.scope !40, !noalias !42
  %i.bb = fadd <2 x double> %wide.load, %i.ax
  %i.bc = fadd <2 x double> %wide.load11, %i.ay
  store <2 x double> %i.bb, ptr %i.az, align 8, !tbaa !8, !alias.scope !40, !noalias !42
  store <2 x double> %i.bc, ptr %i.ba, align 8, !tbaa !8, !alias.scope !40, !noalias !42
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next12, 2000
  br i1 %i.bd, label %middle.block13, label %vector.body9, !llvm.loop !43

scalar.ph7:                                       ; preds = %.preheader71, %scalar.ph7
  %indvars.iv107 = phi i64 [ %indvars.iv.next108.1, %scalar.ph7 ], [ 0, %.preheader71 ] ; 4 uses
  %i.be = load double, ptr %gep83, align 8, !tbaa !8
  %gep = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep82, i64 %indvars.iv107
  %i.bf = load double, ptr %gep, align 8, !tbaa !8
  %i.bg = fmul double %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv107 ; 2 uses
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !8
  %i.bj = fadd double %i.bi, %i.bg
  store double %i.bj, ptr %i.bh, align 8, !tbaa !8
  %indvars.iv.next108 = or disjoint i64 %indvars.iv107, 1 ; 2 uses
  %i.bk = load double, ptr %gep83, align 8, !tbaa !8
  %gep.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep82, i64 %indvars.iv.next108
  %i.bl = load double, ptr %gep.1, align 8, !tbaa !8
  %i.bm = fmul double %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next108 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !8
  %i.bp = fadd double %i.bo, %i.bm
  store double %i.bp, ptr %i.bn, align 8, !tbaa !8
  %indvars.iv.next108.1 = add nuw nsw i64 %indvars.iv107, 2 ; 2 uses
  %exitcond110.not.1 = icmp eq i64 %indvars.iv.next108.1, 2000
  br i1 %exitcond110.not.1, label %middle.block13, label %scalar.ph7, !llvm.loop !44

middle.block13:                                   ; preds = %vector.body9, %scalar.ph7
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond114.not = icmp eq i64 %indvars.iv.next112, 2000
  br i1 %exitcond114.not, label %bb.d, label %.preheader71, !llvm.loop !45

bb.d:                                             ; preds = %middle.block13
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next116, 2000
  br i1 %exitcond118.not, label %.preheader.preheader, label %.preheader72, !llvm.loop !46

.preheader.preheader:                             ; preds = %bb.d
  %i.bq = sub i64 %i.a, %i.z
  %diff.check = icmp ult i64 %i.bq, 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %middle.block22
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %middle.block22 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw [16000 x i8], ptr %i.y, i64 %indvars.iv127 ; 9 uses
  %i.bs = getelementptr inbounds nuw [16000 x i8], ptr %0, i64 %indvars.iv127 ; 9 uses
  br i1 %diff.check, label %scalar.ph15, label %vector.body17

vector.body17:                                    ; preds = %.preheader, %vector.body17
  %index18 = phi i64 [ %index.next21.3, %vector.body17 ], [ 0, %.preheader ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index18 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load19 = load <2 x double>, ptr %i.bt, align 8, !tbaa !8
  %wide.load20 = load <2 x double>, ptr %i.bu, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index18 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %wide.load19, ptr %i.bv, align 8, !tbaa !8
  store <2 x double> %wide.load20, ptr %i.bw, align 8, !tbaa !8
  %index.next21 = or disjoint i64 %index18, 4     ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index.next21 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %wide.load19.1 = load <2 x double>, ptr %i.bx, align 8, !tbaa !8
  %wide.load20.1 = load <2 x double>, ptr %i.by, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index.next21 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store <2 x double> %wide.load19.1, ptr %i.bz, align 8, !tbaa !8
  store <2 x double> %wide.load20.1, ptr %i.ca, align 8, !tbaa !8
  %index.next21.1 = or disjoint i64 %index18, 8   ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index.next21.1 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load19.2 = load <2 x double>, ptr %i.cb, align 8, !tbaa !8
  %wide.load20.2 = load <2 x double>, ptr %i.cc, align 8, !tbaa !8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index.next21.1 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store <2 x double> %wide.load19.2, ptr %i.cd, align 8, !tbaa !8
  store <2 x double> %wide.load20.2, ptr %i.ce, align 8, !tbaa !8
  %index.next21.2 = or disjoint i64 %index18, 12  ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index.next21.2 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load19.3 = load <2 x double>, ptr %i.cf, align 8, !tbaa !8
  %wide.load20.3 = load <2 x double>, ptr %i.cg, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index.next21.2 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x double> %wide.load19.3, ptr %i.ch, align 8, !tbaa !8
  store <2 x double> %wide.load20.3, ptr %i.ci, align 8, !tbaa !8
  %index.next21.3 = add nuw nsw i64 %index18, 16  ; 2 uses
  %i.cj = icmp eq i64 %index.next21.3, 2000
  br i1 %i.cj, label %middle.block22, label %vector.body17, !llvm.loop !47

scalar.ph15:                                      ; preds = %.preheader, %scalar.ph15
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.4, %scalar.ph15 ], [ 0, %.preheader ] ; 7 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv123
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv123
  store double %i.cl, ptr %i.cm, align 8, !tbaa !8
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next124
  %i.co = load double, ptr %i.cn, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next124
  store double %i.co, ptr %i.cp, align 8, !tbaa !8
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next124.1
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next124.1
  store double %i.cr, ptr %i.cs, align 8, !tbaa !8
  %indvars.iv.next124.2 = add nuw nsw i64 %indvars.iv123, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next124.2
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !8
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next124.2
  store double %i.cu, ptr %i.cv, align 8, !tbaa !8
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.next124.3
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next124.3
  store double %i.cx, ptr %i.cy, align 8, !tbaa !8
  %indvars.iv.next124.4 = add nuw nsw i64 %indvars.iv123, 5 ; 2 uses
  %exitcond126.not.4 = icmp eq i64 %indvars.iv.next124.4, 2000
  br i1 %exitcond126.not.4, label %middle.block22, label %scalar.ph15, !llvm.loop !48

middle.block22:                                   ; preds = %vector.body17, %scalar.ph15
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, 2000
  br i1 %exitcond130.not, label %bb.e, label %.preheader, !llvm.loop !49

bb.e:                                             ; preds = %middle.block22
  call void @free(ptr noundef nonnull %i.y) #14
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = !{!6, !6, i64 0}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !15, !32, !31}
!34 = distinct !{!34, !15}
!35 = !{!36}
!36 = distinct !{!36, !37}
!37 = distinct !{!37, !"LVerDomain"}
!38 = !{!39}
!39 = distinct !{!39, !37}
!40 = !{!41}
!41 = distinct !{!41, !37}
!42 = !{!39, !36}
!43 = distinct !{!43, !15, !31, !32}
!44 = distinct !{!44, !15, !31}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15, !31, !32}
!48 = distinct !{!48, !15, !31}
!49 = distinct !{!49, !15}
end_hunk_1
