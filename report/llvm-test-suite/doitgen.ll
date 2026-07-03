inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
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
@.str.2 = private unnamed_addr constant [84 x i8] c"A[%d][%d][%d] = %lf and B[%d][%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

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

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.preheader37.lr.ph, label %._crit_edge47.split

.preheader37.lr.ph:                               ; preds = %bb.a
  %i.d = icmp slt i32 %1, 1
  %i.e = icmp slt i32 %2, 1
  %brmerge = or i1 %i.d, %i.e
  br i1 %brmerge, label %._crit_edge47.split, label %.preheader37.us.us.preheader

.preheader37.us.us.preheader:                     ; preds = %.preheader37.lr.ph
  %wide.trip.count84 = zext nneg i32 %0 to i64
  %wide.trip.count79 = zext nneg i32 %1 to i64
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 8 uses
  %i.f = sub i64 %i.b, %i.a
  %xtraiter = and i64 %wide.trip.count67, 1
  %i.g = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count67, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = trunc i32 %2 to i1
  %min.iters.check = icmp ult i32 %2, 4
  %n.vec = and i64 %wide.trip.count67, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  %xtraiter91 = and i64 %wide.trip.count67, 3     ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br label %.preheader37.us.us

.preheader37.us.us:                               ; preds = %.preheader37.us.us.preheader, %._crit_edge43.split.us.split.us.us.us
  %indvars.iv81 = phi i64 [ 0, %.preheader37.us.us.preheader ], [ %indvars.iv.next82, %._crit_edge43.split.us.split.us.us.us ] ; 3 uses
  %i.h = mul nuw nsw i64 %indvars.iv81, 179200
  %6 = add i64 %i.f, %i.h
  %7 = getelementptr inbounds nuw [179200 x i8], ptr %3, i64 %indvars.iv81
  br label %.preheader36.us.us.us.us

.preheader36.us.us.us.us:                         ; preds = %._crit_edge.us45.us.us.us, %.preheader37.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %._crit_edge.us45.us.us.us ], [ 0, %.preheader37.us.us ] ; 3 uses
  %i.i = mul nuw nsw i64 %indvars.iv76, 1280
  %8 = add i64 %6, %i.i
  %i.j = getelementptr inbounds nuw [1280 x i8], ptr %7, i64 %indvars.iv76 ; 9 uses
  br label %.lr.ph.us.us.us.us.us

..preheader_crit_edge.split.us.us.us.us.us:       ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.3, %..preheader_crit_edge.split.us.us.us.us.us ], [ %indvars.iv71.unr, %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv71
  %i.l = load double, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv71
  store double %i.l, ptr %i.m, align 8, !tbaa !8
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next72
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next72
  store double %i.o, ptr %i.p, align 8, !tbaa !8
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next72.1
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next72.1
  store double %i.r, ptr %i.s, align 8, !tbaa !8
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next72.2
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next72.2
  store double %i.u, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond75.not.3 = icmp eq i64 %indvars.iv.next72.3, %wide.trip.count67
  br i1 %exitcond75.not.3, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us, !llvm.loop !14

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader36.us.us.us.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader36.us.us.us.us ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv64 ; 4 uses
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !8
  %invariant.gep.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv64 ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.new:                        ; preds = %.lr.ph.us.us.us.us.us, %.lr.ph.us.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ] ; 4 uses
  %i.x = phi double [ %i.af, %.lr.ph.us.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !8
  %gep.us.us.us.us.us = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv
  %i.aa = load double, ptr %gep.us.us.us.us.us, align 8, !tbaa !8
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.aa, double %i.x) ; 2 uses
  store double %i.ab, ptr %i.w, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !8
  %gep.us.us.us.us.us.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv.next
  %i.ae = load double, ptr %gep.us.us.us.us.us.1, align 8, !tbaa !8
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ae, double %i.ab) ; 3 uses
  store double %i.af, ptr %i.w, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.new, !llvm.loop !17

._crit_edge.us.us.us.us.us.unr-lcssa:             ; preds = %.lr.ph.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us ], [ %i.af, %._crit_edge.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !8
  %gep.us.us.us.us.us.epil = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv.epil.init
  %i.ai = load double, ptr %gep.us.us.us.us.us.epil, align 8, !tbaa !8
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ai, double %.epil.init)
  store double %i.aj, ptr %i.w, align 8, !tbaa !8
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %..preheader_crit_edge.split.us.us.us.us.us.preheader, label %.lr.ph.us.us.us.us.us, !llvm.loop !18

..preheader_crit_edge.split.us.us.us.us.us.preheader: ; preds = %._crit_edge.us.us.us.us.us
  %diff.check = icmp ult i64 %8, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %..preheader_crit_edge.split.us.us.us.us.us.preheader89, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <2 x double>, ptr %i.ak, align 8, !tbaa !8
  %wide.load88 = load <2 x double>, ptr %i.al, align 8, !tbaa !8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x double> %wide.load, ptr %i.am, align 8, !tbaa !8
  store <2 x double> %wide.load88, ptr %i.an, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.preheader89

..preheader_crit_edge.split.us.us.us.us.us.preheader89: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader, %middle.block
  %indvars.iv71.ph = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod92.not, label %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.prol

..preheader_crit_edge.split.us.us.us.us.us.prol:  ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader89, %..preheader_crit_edge.split.us.us.us.us.us.prol
  %indvars.iv71.prol = phi i64 [ %indvars.iv.next72.prol, %..preheader_crit_edge.split.us.us.us.us.us.prol ], [ %indvars.iv71.ph, %..preheader_crit_edge.split.us.us.us.us.us.preheader89 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %..preheader_crit_edge.split.us.us.us.us.us.prol ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader89 ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv71.prol
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv71.prol
  store double %i.aq, ptr %i.ar, align 8, !tbaa !8
  %indvars.iv.next72.prol = add nuw nsw i64 %indvars.iv71.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter91
  br i1 %prol.iter.cmp.not, label %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.prol, !llvm.loop !21

..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol, %..preheader_crit_edge.split.us.us.us.us.us.preheader89
  %indvars.iv71.unr = phi i64 [ %indvars.iv71.ph, %..preheader_crit_edge.split.us.us.us.us.us.preheader89 ], [ %indvars.iv.next72.prol, %..preheader_crit_edge.split.us.us.us.us.us.prol ]
  %i.as = sub nsw i64 %indvars.iv71.ph, %wide.trip.count67
  %i.at = icmp ugt i64 %i.as, -4
  br i1 %i.at, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us

._crit_edge.us45.us.us.us:                        ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us, %middle.block
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge43.split.us.split.us.us.us, label %.preheader36.us.us.us.us, !llvm.loop !23

._crit_edge43.split.us.split.us.us.us:            ; preds = %._crit_edge.us45.us.us.us
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge47.split, label %.preheader37.us.us, !llvm.loop !24

._crit_edge47.split:                              ; preds = %._crit_edge43.split.us.split.us.us.us, %.preheader37.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen_StrictFP(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.preheader37.lr.ph, label %._crit_edge47.split

.preheader37.lr.ph:                               ; preds = %bb.a
  %i.d = icmp slt i32 %1, 1
  %i.e = icmp slt i32 %2, 1
  %brmerge = or i1 %i.d, %i.e
  br i1 %brmerge, label %._crit_edge47.split, label %.preheader37.us.us.preheader

.preheader37.us.us.preheader:                     ; preds = %.preheader37.lr.ph
  %wide.trip.count84 = zext nneg i32 %0 to i64
  %wide.trip.count79 = zext nneg i32 %1 to i64
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 8 uses
  %i.f = sub i64 %i.b, %i.a
  %xtraiter = and i64 %wide.trip.count67, 1
  %i.g = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count67, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = trunc i32 %2 to i1
  %min.iters.check = icmp ult i32 %2, 4
  %n.vec = and i64 %wide.trip.count67, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  %xtraiter91 = and i64 %wide.trip.count67, 3     ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br label %.preheader37.us.us

.preheader37.us.us:                               ; preds = %.preheader37.us.us.preheader, %._crit_edge43.split.us.split.us.us.us
  %indvars.iv81 = phi i64 [ 0, %.preheader37.us.us.preheader ], [ %indvars.iv.next82, %._crit_edge43.split.us.split.us.us.us ] ; 3 uses
  %i.h = mul nuw nsw i64 %indvars.iv81, 179200
  %6 = add i64 %i.f, %i.h
  %7 = getelementptr inbounds nuw [179200 x i8], ptr %3, i64 %indvars.iv81
  br label %.preheader36.us.us.us.us

.preheader36.us.us.us.us:                         ; preds = %._crit_edge.us45.us.us.us, %.preheader37.us.us
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %._crit_edge.us45.us.us.us ], [ 0, %.preheader37.us.us ] ; 3 uses
  %i.i = mul nuw nsw i64 %indvars.iv76, 1280
  %8 = add i64 %6, %i.i
  %i.j = getelementptr inbounds nuw [1280 x i8], ptr %7, i64 %indvars.iv76 ; 9 uses
  br label %.lr.ph.us.us.us.us.us

..preheader_crit_edge.split.us.us.us.us.us:       ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.3, %..preheader_crit_edge.split.us.us.us.us.us ], [ %indvars.iv71.unr, %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv71
  %i.l = load double, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv71
  store double %i.l, ptr %i.m, align 8, !tbaa !8
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next72
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next72
  store double %i.o, ptr %i.p, align 8, !tbaa !8
  %indvars.iv.next72.1 = add nuw nsw i64 %indvars.iv71, 2 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next72.1
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next72.1
  store double %i.r, ptr %i.s, align 8, !tbaa !8
  %indvars.iv.next72.2 = add nuw nsw i64 %indvars.iv71, 3 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next72.2
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next72.2
  store double %i.u, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next72.3 = add nuw nsw i64 %indvars.iv71, 4 ; 2 uses
  %exitcond75.not.3 = icmp eq i64 %indvars.iv.next72.3, %wide.trip.count67
  br i1 %exitcond75.not.3, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us, !llvm.loop !25

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader36.us.us.us.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader36.us.us.us.us ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv64 ; 4 uses
  store double 0.000000e+00, ptr %i.w, align 8, !tbaa !8
  %invariant.gep.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv64 ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.new:                        ; preds = %.lr.ph.us.us.us.us.us, %.lr.ph.us.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ] ; 4 uses
  %i.x = phi double [ %i.ah, %.lr.ph.us.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !8
  %gep.us.us.us.us.us = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv
  %i.aa = load double, ptr %gep.us.us.us.us.us, align 8, !tbaa !8
  %i.ab = fmul double %i.z, %i.aa
  %i.ac = fadd double %i.x, %i.ab                 ; 2 uses
  store double %i.ac, ptr %i.w, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8
  %gep.us.us.us.us.us.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv.next
  %i.af = load double, ptr %gep.us.us.us.us.us.1, align 8, !tbaa !8
  %i.ag = fmul double %i.ae, %i.af
  %i.ah = fadd double %i.ac, %i.ag                ; 3 uses
  store double %i.ah, ptr %i.w, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.new, !llvm.loop !26

._crit_edge.us.us.us.us.us.unr-lcssa:             ; preds = %.lr.ph.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us ], [ %i.ah, %._crit_edge.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !8
  %gep.us.us.us.us.us.epil = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv.epil.init
  %i.ak = load double, ptr %gep.us.us.us.us.us.epil, align 8, !tbaa !8
  %i.al = fmul double %i.aj, %i.ak
  %i.am = fadd double %.epil.init, %i.al
  store double %i.am, ptr %i.w, align 8, !tbaa !8
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %..preheader_crit_edge.split.us.us.us.us.us.preheader, label %.lr.ph.us.us.us.us.us, !llvm.loop !27

..preheader_crit_edge.split.us.us.us.us.us.preheader: ; preds = %._crit_edge.us.us.us.us.us
  %diff.check = icmp ult i64 %8, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %..preheader_crit_edge.split.us.us.us.us.us.preheader89, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !8
  %wide.load88 = load <2 x double>, ptr %i.ao, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %wide.load, ptr %i.ap, align 8, !tbaa !8
  store <2 x double> %wide.load88, ptr %i.aq, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.preheader89

..preheader_crit_edge.split.us.us.us.us.us.preheader89: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader, %middle.block
  %indvars.iv71.ph = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod92.not, label %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.prol

..preheader_crit_edge.split.us.us.us.us.us.prol:  ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader89, %..preheader_crit_edge.split.us.us.us.us.us.prol
  %indvars.iv71.prol = phi i64 [ %indvars.iv.next72.prol, %..preheader_crit_edge.split.us.us.us.us.us.prol ], [ %indvars.iv71.ph, %..preheader_crit_edge.split.us.us.us.us.us.preheader89 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %..preheader_crit_edge.split.us.us.us.us.us.prol ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader89 ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv71.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv71.prol
  store double %i.at, ptr %i.au, align 8, !tbaa !8
  %indvars.iv.next72.prol = add nuw nsw i64 %indvars.iv71.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter91
  br i1 %prol.iter.cmp.not, label %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.prol, !llvm.loop !29

..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol, %..preheader_crit_edge.split.us.us.us.us.us.preheader89
  %indvars.iv71.unr = phi i64 [ %indvars.iv71.ph, %..preheader_crit_edge.split.us.us.us.us.us.preheader89 ], [ %indvars.iv.next72.prol, %..preheader_crit_edge.split.us.us.us.us.us.prol ]
  %i.av = sub nsw i64 %indvars.iv71.ph, %wide.trip.count67
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us

._crit_edge.us45.us.us.us:                        ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us, %middle.block
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %._crit_edge43.split.us.split.us.us.us, label %.preheader36.us.us.us.us, !llvm.loop !30

._crit_edge43.split.us.split.us.us.us:            ; preds = %._crit_edge.us45.us.us.us
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %._crit_edge47.split, label %.preheader37.us.us, !llvm.loop !31

._crit_edge47.split:                              ; preds = %._crit_edge43.split.us.split.us.us.us, %.preheader37.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 26880000) #14
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !10   ; 6 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp ne i32 %i.e, 0
  %or.cond.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.j) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.l = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 26880000) #14
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !10   ; 7 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  %i.p = icmp ne i32 %i.l, 0
  %or.cond.i.i31 = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.i.i31, label %bb.c, label %polybench_alloc_data.exit32

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.r = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.q) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit32:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.s = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 1280) #14
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !10   ; 175 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %i.v = icmp eq ptr %i.t, null
  %i.w = icmp ne i32 %i.s, 0
  %or.cond.i.i33 = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i.i33, label %bb.d, label %polybench_alloc_data.exit34

bb.d:                                             ; preds = %polybench_alloc_data.exit32
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.y = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.x) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit34:                      ; preds = %polybench_alloc_data.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.z = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 204800) #14
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !10  ; 5 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = icmp ne i32 %i.z, 0
  %or.cond.i.i35 = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %or.cond.i.i35, label %bb.e, label %polybench_alloc_data.exit36

bb.e:                                             ; preds = %polybench_alloc_data.exit34
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ae = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ad) #15 ; 0 uses
  call void @exit(i32 noundef 1) #16
  unreachable

polybench_alloc_data.exit36:                      ; preds = %polybench_alloc_data.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.af = sub i64 %i.n, %i.g
  %diff.check = icmp ult i64 %i.af, 16
  br label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.f, %polybench_alloc_data.exit36
  %indvars.iv52.i = phi i64 [ 0, %polybench_alloc_data.exit36 ], [ %indvars.iv.next53.i, %bb.f ] ; 4 uses
  %i.ag = getelementptr inbounds nuw [179200 x i8], ptr %i.f, i64 %indvars.iv52.i
  %i.ah = getelementptr inbounds nuw [179200 x i8], ptr %i.m, i64 %indvars.iv52.i
  br label %.preheader40.i

.preheader40.i:                                   ; preds = %middle.block, %.preheader41.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next49.i, %middle.block ] ; 4 uses
  %i.ai = mul nuw nsw i64 %indvars.iv48.i, %indvars.iv52.i ; 3 uses
  %i.aj = getelementptr inbounds nuw [1280 x i8], ptr %i.ag, i64 %indvars.iv48.i ; 3 uses
  %i.ak = getelementptr inbounds nuw [1280 x i8], ptr %i.ah, i64 %indvars.iv48.i ; 3 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader40.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ai, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.al = add nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.am = trunc nuw nsw <2 x i64> %i.al to <2 x i32>
  %i.an = urem <2 x i32> %i.am, splat (i32 160)
  %i.ao = uitofp nneg <2 x i32> %i.an to <2 x double>
  %i.ap = fdiv <2 x double> %i.ao, splat (double 1.600000e+02) ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index
  store <2 x double> %i.ap, ptr %i.aq, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index
  store <2 x double> %i.ap, ptr %i.ar, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.as = icmp eq i64 %index.next, 160
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !32

scalar.ph:                                        ; preds = %.preheader40.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ 0, %.preheader40.i ] ; 5 uses
  %i.at = add nuw nsw i64 %indvars.iv.i, %i.ai
  %i.au = trunc nuw nsw i64 %i.at to i32
  %i.av = urem i32 %i.au, 160
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = fdiv double %i.aw, 1.600000e+02         ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  store double %i.ax, ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.i
  store double %i.ax, ptr %i.az, align 8, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 3 uses
  %i.ba = add nuw nsw i64 %indvars.iv.next.i, %i.ai
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = urem i32 %i.bb, 160
  %i.bd = uitofp nneg i32 %i.bc to double
  %i.be = fdiv double %i.bd, 1.600000e+02         ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i
  store double %i.be, ptr %i.bf, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i
  store double %i.be, ptr %i.bg, align 8, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 160
  br i1 %exitcond.not.i.1, label %middle.block, label %scalar.ph, !llvm.loop !33

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next49.i, 140
  br i1 %exitcond51.not.i, label %bb.f, label %.preheader40.i, !llvm.loop !34

bb.f:                                             ; preds = %middle.block
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, 150
  br i1 %exitcond55.not.i, label %.preheader.i, label %.preheader41.i, !llvm.loop !35

.preheader.i:                                     ; preds = %bb.f, %middle.block111
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %middle.block111 ], [ 0, %bb.f ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [1280 x i8], ptr %i.aa, i64 %indvars.iv60.i
  %broadcast.splatinsert104 = insertelement <2 x i64> poison, i64 %indvars.iv60.i, i64 0
  %broadcast.splat105 = shufflevector <2 x i64> %broadcast.splatinsert104, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %.preheader.i
  %index107 = phi i64 [ 0, %.preheader.i ], [ %index.next109, %vector.body106 ] ; 2 uses
  %vec.ind108 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i ], [ %vec.ind.next110, %vector.body106 ] ; 2 uses
  %i.bi = mul nuw nsw <2 x i64> %vec.ind108, %broadcast.splat105
  %i.bj = trunc nuw nsw <2 x i64> %i.bi to <2 x i32>
  %i.bk = urem <2 x i32> %i.bj, splat (i32 160)
  %i.bl = uitofp nneg <2 x i32> %i.bk to <2 x double>
  %i.bm = fdiv <2 x double> %i.bl, splat (double 1.600000e+02)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index107
  store <2 x double> %i.bm, ptr %i.bn, align 8, !tbaa !8
  %index.next109 = add nuw i64 %index107, 2       ; 2 uses
  %vec.ind.next110 = add nuw nsw <2 x i64> %vec.ind108, splat (i64 2)
  %i.bo = icmp eq i64 %index.next109, 160
  br i1 %i.bo, label %middle.block111, label %vector.body106, !llvm.loop !36

middle.block111:                                  ; preds = %vector.body106
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next61.i, 160
  br i1 %exitcond63.not.i, label %.preheader37.us.us.i.preheader, label %.preheader.i, !llvm.loop !37

.preheader37.us.us.i.preheader:                   ; preds = %middle.block111
  %i.bp = sub i64 %i.g, %i.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.cb = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  %i.cd = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.ce = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.cf = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 304
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 368
  %i.cn = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.co = getelementptr inbounds nuw i8, ptr %i.t, i64 400
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 416
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 432
  %i.cr = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  %i.ct = getelementptr inbounds nuw i8, ptr %i.t, i64 480
  %i.cu = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  %i.cv = getelementptr inbounds nuw i8, ptr %i.t, i64 512
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 528
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.cy = getelementptr inbounds nuw i8, ptr %i.t, i64 560
  %i.cz = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 592
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 624
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.de = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.df = getelementptr inbounds nuw i8, ptr %i.t, i64 672
  %i.dg = getelementptr inbounds nuw i8, ptr %i.t, i64 688
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 704
  %i.di = getelementptr inbounds nuw i8, ptr %i.t, i64 720
  %i.dj = getelementptr inbounds nuw i8, ptr %i.t, i64 736
  %i.dk = getelementptr inbounds nuw i8, ptr %i.t, i64 752
  %i.dl = getelementptr inbounds nuw i8, ptr %i.t, i64 768
  %i.dm = getelementptr inbounds nuw i8, ptr %i.t, i64 784
  %i.dn = getelementptr inbounds nuw i8, ptr %i.t, i64 800
  %i.do = getelementptr inbounds nuw i8, ptr %i.t, i64 816
  %i.dp = getelementptr inbounds nuw i8, ptr %i.t, i64 832
  %i.dq = getelementptr inbounds nuw i8, ptr %i.t, i64 848
  %i.dr = getelementptr inbounds nuw i8, ptr %i.t, i64 864
  %i.ds = getelementptr inbounds nuw i8, ptr %i.t, i64 880
  %i.dt = getelementptr inbounds nuw i8, ptr %i.t, i64 896
  %i.du = getelementptr inbounds nuw i8, ptr %i.t, i64 912
  %i.dv = getelementptr inbounds nuw i8, ptr %i.t, i64 928
  %i.dw = getelementptr inbounds nuw i8, ptr %i.t, i64 944
  %i.dx = getelementptr inbounds nuw i8, ptr %i.t, i64 960
  %i.dy = getelementptr inbounds nuw i8, ptr %i.t, i64 976
  %i.dz = getelementptr inbounds nuw i8, ptr %i.t, i64 992
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 1008
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 1024
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 1040
  %i.ed = getelementptr inbounds nuw i8, ptr %i.t, i64 1056
  %i.ee = getelementptr inbounds nuw i8, ptr %i.t, i64 1072
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 1088
  %i.eg = getelementptr inbounds nuw i8, ptr %i.t, i64 1104
  %i.eh = getelementptr inbounds nuw i8, ptr %i.t, i64 1120
  %i.ei = getelementptr inbounds nuw i8, ptr %i.t, i64 1136
  %i.ej = getelementptr inbounds nuw i8, ptr %i.t, i64 1152
  %i.ek = getelementptr inbounds nuw i8, ptr %i.t, i64 1168
  %i.el = getelementptr inbounds nuw i8, ptr %i.t, i64 1184
  %i.em = getelementptr inbounds nuw i8, ptr %i.t, i64 1200
  %i.en = getelementptr inbounds nuw i8, ptr %i.t, i64 1216
  %i.eo = getelementptr inbounds nuw i8, ptr %i.t, i64 1232
  %i.ep = getelementptr inbounds nuw i8, ptr %i.t, i64 1248
  %i.eq = getelementptr inbounds nuw i8, ptr %i.t, i64 1264
  br label %.preheader37.us.us.i

.preheader37.us.us.i:                             ; preds = %.preheader37.us.us.i.preheader, %._crit_edge43.split.us.split.us.us.us.i
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %._crit_edge43.split.us.split.us.us.us.i ], [ 0, %.preheader37.us.us.i.preheader ] ; 3 uses
  %i.er = mul nuw nsw i64 %indvars.iv81.i, 179200
  %2 = add i64 %i.bp, %i.er
  %3 = getelementptr inbounds nuw [179200 x i8], ptr %i.f, i64 %indvars.iv81.i
  br label %.preheader36.us.us.us.us.i

.preheader36.us.us.us.us.i:                       ; preds = %._crit_edge.us45.us.us.us.i, %.preheader37.us.us.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %._crit_edge.us45.us.us.us.i ], [ 0, %.preheader37.us.us.i ] ; 3 uses
  %i.es = mul nuw nsw i64 %indvars.iv76.i, 1280
  %4 = add i64 %2, %i.es
  %i.et = getelementptr inbounds nuw [1280 x i8], ptr %3, i64 %indvars.iv76.i ; 87 uses
  br label %.lr.ph.us.us.us.us.us.i

..preheader_crit_edge.split.us.us.us.us.us.i:     ; preds = %vector.memcheck112, %..preheader_crit_edge.split.us.us.us.us.us.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i.4, %..preheader_crit_edge.split.us.us.us.us.us.i ], [ 0, %vector.memcheck112 ] ; 7 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv71.i
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv71.i
  store double %i.ev, ptr %i.ew, align 8, !tbaa !8
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next72.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.next72.i
  store double %i.ey, ptr %i.ez, align 8, !tbaa !8
  %indvars.iv.next72.i.1 = add nuw nsw i64 %indvars.iv71.i, 2 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next72.i.1
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.next72.i.1
  store double %i.fb, ptr %i.fc, align 8, !tbaa !8
  %indvars.iv.next72.i.2 = add nuw nsw i64 %indvars.iv71.i, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next72.i.2
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !8
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.next72.i.2
  store double %i.fe, ptr %i.ff, align 8, !tbaa !8
  %indvars.iv.next72.i.3 = add nuw nsw i64 %indvars.iv71.i, 4 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next72.i.3
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !8
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.next72.i.3
  store double %i.fh, ptr %i.fi, align 8, !tbaa !8
  %indvars.iv.next72.i.4 = add nuw nsw i64 %indvars.iv71.i, 5 ; 2 uses
  %exitcond75.not.i.4 = icmp eq i64 %indvars.iv.next72.i.4, 160
  br i1 %exitcond75.not.i.4, label %._crit_edge.us45.us.us.us.i, label %..preheader_crit_edge.split.us.us.us.us.us.i, !llvm.loop !38

.lr.ph.us.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us.us.i, %.preheader36.us.us.us.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %._crit_edge.us.us.us.us.us.i ], [ 0, %.preheader36.us.us.us.us.i ] ; 3 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv64.i ; 3 uses
  store double 0.000000e+00, ptr %i.fj, align 8, !tbaa !8
  %invariant.gep.us.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv64.i ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.us.us.us.us.i
  %indvars.iv.i37 = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i ], [ %indvars.iv.next.i38.1, %bb.g ] ; 4 uses
  %i.fk = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.i ], [ %i.fs, %bb.g ]
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.i37
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !8
  %gep.us.us.us.us.us.i = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.i, i64 %indvars.iv.i37
  %i.fn = load double, ptr %gep.us.us.us.us.us.i, align 8, !tbaa !8
  %i.fo = call double @llvm.fmuladd.f64(double %i.fm, double %i.fn, double %i.fk) ; 2 uses
  store double %i.fo, ptr %i.fj, align 8, !tbaa !8
  %indvars.iv.next.i38 = or disjoint i64 %indvars.iv.i37, 1 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.next.i38
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !8
  %gep.us.us.us.us.us.i.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.i, i64 %indvars.iv.next.i38
  %i.fr = load double, ptr %gep.us.us.us.us.us.i.1, align 8, !tbaa !8
  %i.fs = call double @llvm.fmuladd.f64(double %i.fq, double %i.fr, double %i.fo) ; 2 uses
  store double %i.fs, ptr %i.fj, align 8, !tbaa !8
  %indvars.iv.next.i38.1 = add nuw nsw i64 %indvars.iv.i37, 2 ; 2 uses
  %exitcond.not.i39.1 = icmp eq i64 %indvars.iv.next.i38.1, 160
  br i1 %exitcond.not.i39.1, label %._crit_edge.us.us.us.us.us.i, label %bb.g, !llvm.loop !17

._crit_edge.us.us.us.us.us.i:                     ; preds = %bb.g
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, 160
  br i1 %exitcond68.not.i, label %vector.memcheck112, label %.lr.ph.us.us.us.us.us.i, !llvm.loop !18

vector.memcheck112:                               ; preds = %._crit_edge.us.us.us.us.us.i
  %diff.check113 = icmp ult i64 %4, 32
  br i1 %diff.check113, label %..preheader_crit_edge.split.us.us.us.us.us.i, label %vector.body116

vector.body116:                                   ; preds = %vector.memcheck112
  %wide.load = load <2 x double>, ptr %i.t, align 8, !tbaa !8
  %wide.load118 = load <2 x double>, ptr %i.bq, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  store <2 x double> %wide.load, ptr %i.et, align 8, !tbaa !8
  store <2 x double> %wide.load118, ptr %i.ft, align 8, !tbaa !8
  %wide.load.1 = load <2 x double>, ptr %i.br, align 8, !tbaa !8
  %wide.load118.1 = load <2 x double>, ptr %i.bs, align 8, !tbaa !8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.fv = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store <2 x double> %wide.load.1, ptr %i.fu, align 8, !tbaa !8
  store <2 x double> %wide.load118.1, ptr %i.fv, align 8, !tbaa !8
  %wide.load.2 = load <2 x double>, ptr %i.bt, align 8, !tbaa !8
  %wide.load118.2 = load <2 x double>, ptr %i.bu, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.et, i64 80
  store <2 x double> %wide.load.2, ptr %i.fw, align 8, !tbaa !8
  store <2 x double> %wide.load118.2, ptr %i.fx, align 8, !tbaa !8
  %wide.load.3 = load <2 x double>, ptr %i.bv, align 8, !tbaa !8
  %wide.load118.3 = load <2 x double>, ptr %i.bw, align 8, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.fz = getelementptr inbounds nuw i8, ptr %i.et, i64 112
  store <2 x double> %wide.load.3, ptr %i.fy, align 8, !tbaa !8
  store <2 x double> %wide.load118.3, ptr %i.fz, align 8, !tbaa !8
  %wide.load.4 = load <2 x double>, ptr %i.bx, align 8, !tbaa !8
  %wide.load118.4 = load <2 x double>, ptr %i.by, align 8, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.et, i64 128
  %i.gb = getelementptr inbounds nuw i8, ptr %i.et, i64 144
  store <2 x double> %wide.load.4, ptr %i.ga, align 8, !tbaa !8
  store <2 x double> %wide.load118.4, ptr %i.gb, align 8, !tbaa !8
  %wide.load.5 = load <2 x double>, ptr %i.bz, align 8, !tbaa !8
  %wide.load118.5 = load <2 x double>, ptr %i.ca, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.et, i64 160
  %i.gd = getelementptr inbounds nuw i8, ptr %i.et, i64 176
  store <2 x double> %wide.load.5, ptr %i.gc, align 8, !tbaa !8
  store <2 x double> %wide.load118.5, ptr %i.gd, align 8, !tbaa !8
  %wide.load.6 = load <2 x double>, ptr %i.cb, align 8, !tbaa !8
  %wide.load118.6 = load <2 x double>, ptr %i.cc, align 8, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.et, i64 192
  %i.gf = getelementptr inbounds nuw i8, ptr %i.et, i64 208
  store <2 x double> %wide.load.6, ptr %i.ge, align 8, !tbaa !8
  store <2 x double> %wide.load118.6, ptr %i.gf, align 8, !tbaa !8
  %wide.load.7 = load <2 x double>, ptr %i.cd, align 8, !tbaa !8
  %wide.load118.7 = load <2 x double>, ptr %i.ce, align 8, !tbaa !8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.et, i64 224
  %i.gh = getelementptr inbounds nuw i8, ptr %i.et, i64 240
  store <2 x double> %wide.load.7, ptr %i.gg, align 8, !tbaa !8
  store <2 x double> %wide.load118.7, ptr %i.gh, align 8, !tbaa !8
  %wide.load.8 = load <2 x double>, ptr %i.cf, align 8, !tbaa !8
  %wide.load118.8 = load <2 x double>, ptr %i.cg, align 8, !tbaa !8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.et, i64 256
  %i.gj = getelementptr inbounds nuw i8, ptr %i.et, i64 272
  store <2 x double> %wide.load.8, ptr %i.gi, align 8, !tbaa !8
  store <2 x double> %wide.load118.8, ptr %i.gj, align 8, !tbaa !8
  %wide.load.9 = load <2 x double>, ptr %i.ch, align 8, !tbaa !8
  %wide.load118.9 = load <2 x double>, ptr %i.ci, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.et, i64 288
  %i.gl = getelementptr inbounds nuw i8, ptr %i.et, i64 304
  store <2 x double> %wide.load.9, ptr %i.gk, align 8, !tbaa !8
  store <2 x double> %wide.load118.9, ptr %i.gl, align 8, !tbaa !8
  %wide.load.10 = load <2 x double>, ptr %i.cj, align 8, !tbaa !8
  %wide.load118.10 = load <2 x double>, ptr %i.ck, align 8, !tbaa !8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.et, i64 320
  %i.gn = getelementptr inbounds nuw i8, ptr %i.et, i64 336
  store <2 x double> %wide.load.10, ptr %i.gm, align 8, !tbaa !8
  store <2 x double> %wide.load118.10, ptr %i.gn, align 8, !tbaa !8
  %wide.load.11 = load <2 x double>, ptr %i.cl, align 8, !tbaa !8
  %wide.load118.11 = load <2 x double>, ptr %i.cm, align 8, !tbaa !8
  %i.go = getelementptr inbounds nuw i8, ptr %i.et, i64 352
  %i.gp = getelementptr inbounds nuw i8, ptr %i.et, i64 368
  store <2 x double> %wide.load.11, ptr %i.go, align 8, !tbaa !8
  store <2 x double> %wide.load118.11, ptr %i.gp, align 8, !tbaa !8
  %wide.load.12 = load <2 x double>, ptr %i.cn, align 8, !tbaa !8
  %wide.load118.12 = load <2 x double>, ptr %i.co, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.et, i64 384
  %i.gr = getelementptr inbounds nuw i8, ptr %i.et, i64 400
  store <2 x double> %wide.load.12, ptr %i.gq, align 8, !tbaa !8
  store <2 x double> %wide.load118.12, ptr %i.gr, align 8, !tbaa !8
  %wide.load.13 = load <2 x double>, ptr %i.cp, align 8, !tbaa !8
  %wide.load118.13 = load <2 x double>, ptr %i.cq, align 8, !tbaa !8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.et, i64 416
  %i.gt = getelementptr inbounds nuw i8, ptr %i.et, i64 432
  store <2 x double> %wide.load.13, ptr %i.gs, align 8, !tbaa !8
  store <2 x double> %wide.load118.13, ptr %i.gt, align 8, !tbaa !8
  %wide.load.14 = load <2 x double>, ptr %i.cr, align 8, !tbaa !8
  %wide.load118.14 = load <2 x double>, ptr %i.cs, align 8, !tbaa !8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.et, i64 448
  %i.gv = getelementptr inbounds nuw i8, ptr %i.et, i64 464
  store <2 x double> %wide.load.14, ptr %i.gu, align 8, !tbaa !8
  store <2 x double> %wide.load118.14, ptr %i.gv, align 8, !tbaa !8
  %wide.load.15 = load <2 x double>, ptr %i.ct, align 8, !tbaa !8
  %wide.load118.15 = load <2 x double>, ptr %i.cu, align 8, !tbaa !8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.et, i64 480
  %i.gx = getelementptr inbounds nuw i8, ptr %i.et, i64 496
  store <2 x double> %wide.load.15, ptr %i.gw, align 8, !tbaa !8
  store <2 x double> %wide.load118.15, ptr %i.gx, align 8, !tbaa !8
  %wide.load.16 = load <2 x double>, ptr %i.cv, align 8, !tbaa !8
  %wide.load118.16 = load <2 x double>, ptr %i.cw, align 8, !tbaa !8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.et, i64 512
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 528
  store <2 x double> %wide.load.16, ptr %i.gy, align 8, !tbaa !8
  store <2 x double> %wide.load118.16, ptr %i.gz, align 8, !tbaa !8
  %wide.load.17 = load <2 x double>, ptr %i.cx, align 8, !tbaa !8
  %wide.load118.17 = load <2 x double>, ptr %i.cy, align 8, !tbaa !8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.et, i64 544
  %i.hb = getelementptr inbounds nuw i8, ptr %i.et, i64 560
  store <2 x double> %wide.load.17, ptr %i.ha, align 8, !tbaa !8
  store <2 x double> %wide.load118.17, ptr %i.hb, align 8, !tbaa !8
  %wide.load.18 = load <2 x double>, ptr %i.cz, align 8, !tbaa !8
  %wide.load118.18 = load <2 x double>, ptr %i.da, align 8, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.et, i64 576
  %i.hd = getelementptr inbounds nuw i8, ptr %i.et, i64 592
  store <2 x double> %wide.load.18, ptr %i.hc, align 8, !tbaa !8
  store <2 x double> %wide.load118.18, ptr %i.hd, align 8, !tbaa !8
  %wide.load.19 = load <2 x double>, ptr %i.db, align 8, !tbaa !8
  %wide.load118.19 = load <2 x double>, ptr %i.dc, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %i.et, i64 608
  %i.hf = getelementptr inbounds nuw i8, ptr %i.et, i64 624
  store <2 x double> %wide.load.19, ptr %i.he, align 8, !tbaa !8
  store <2 x double> %wide.load118.19, ptr %i.hf, align 8, !tbaa !8
  %wide.load.20 = load <2 x double>, ptr %i.dd, align 8, !tbaa !8
  %wide.load118.20 = load <2 x double>, ptr %i.de, align 8, !tbaa !8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.et, i64 640
  %i.hh = getelementptr inbounds nuw i8, ptr %i.et, i64 656
  store <2 x double> %wide.load.20, ptr %i.hg, align 8, !tbaa !8
  store <2 x double> %wide.load118.20, ptr %i.hh, align 8, !tbaa !8
  %wide.load.21 = load <2 x double>, ptr %i.df, align 8, !tbaa !8
  %wide.load118.21 = load <2 x double>, ptr %i.dg, align 8, !tbaa !8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.et, i64 672
  %i.hj = getelementptr inbounds nuw i8, ptr %i.et, i64 688
  store <2 x double> %wide.load.21, ptr %i.hi, align 8, !tbaa !8
  store <2 x double> %wide.load118.21, ptr %i.hj, align 8, !tbaa !8
  %wide.load.22 = load <2 x double>, ptr %i.dh, align 8, !tbaa !8
  %wide.load118.22 = load <2 x double>, ptr %i.di, align 8, !tbaa !8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.et, i64 704
  %i.hl = getelementptr inbounds nuw i8, ptr %i.et, i64 720
  store <2 x double> %wide.load.22, ptr %i.hk, align 8, !tbaa !8
  store <2 x double> %wide.load118.22, ptr %i.hl, align 8, !tbaa !8
  %wide.load.23 = load <2 x double>, ptr %i.dj, align 8, !tbaa !8
  %wide.load118.23 = load <2 x double>, ptr %i.dk, align 8, !tbaa !8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.et, i64 736
  %i.hn = getelementptr inbounds nuw i8, ptr %i.et, i64 752
  store <2 x double> %wide.load.23, ptr %i.hm, align 8, !tbaa !8
  store <2 x double> %wide.load118.23, ptr %i.hn, align 8, !tbaa !8
  %wide.load.24 = load <2 x double>, ptr %i.dl, align 8, !tbaa !8
  %wide.load118.24 = load <2 x double>, ptr %i.dm, align 8, !tbaa !8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.et, i64 768
  %i.hp = getelementptr inbounds nuw i8, ptr %i.et, i64 784
  store <2 x double> %wide.load.24, ptr %i.ho, align 8, !tbaa !8
  store <2 x double> %wide.load118.24, ptr %i.hp, align 8, !tbaa !8
  %wide.load.25 = load <2 x double>, ptr %i.dn, align 8, !tbaa !8
  %wide.load118.25 = load <2 x double>, ptr %i.do, align 8, !tbaa !8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.et, i64 800
  %i.hr = getelementptr inbounds nuw i8, ptr %i.et, i64 816
  store <2 x double> %wide.load.25, ptr %i.hq, align 8, !tbaa !8
  store <2 x double> %wide.load118.25, ptr %i.hr, align 8, !tbaa !8
  %wide.load.26 = load <2 x double>, ptr %i.dp, align 8, !tbaa !8
  %wide.load118.26 = load <2 x double>, ptr %i.dq, align 8, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.et, i64 832
  %i.ht = getelementptr inbounds nuw i8, ptr %i.et, i64 848
  store <2 x double> %wide.load.26, ptr %i.hs, align 8, !tbaa !8
  store <2 x double> %wide.load118.26, ptr %i.ht, align 8, !tbaa !8
  %wide.load.27 = load <2 x double>, ptr %i.dr, align 8, !tbaa !8
  %wide.load118.27 = load <2 x double>, ptr %i.ds, align 8, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.et, i64 864
  %i.hv = getelementptr inbounds nuw i8, ptr %i.et, i64 880
  store <2 x double> %wide.load.27, ptr %i.hu, align 8, !tbaa !8
  store <2 x double> %wide.load118.27, ptr %i.hv, align 8, !tbaa !8
  %wide.load.28 = load <2 x double>, ptr %i.dt, align 8, !tbaa !8
  %wide.load118.28 = load <2 x double>, ptr %i.du, align 8, !tbaa !8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.et, i64 896
  %i.hx = getelementptr inbounds nuw i8, ptr %i.et, i64 912
  store <2 x double> %wide.load.28, ptr %i.hw, align 8, !tbaa !8
  store <2 x double> %wide.load118.28, ptr %i.hx, align 8, !tbaa !8
  %wide.load.29 = load <2 x double>, ptr %i.dv, align 8, !tbaa !8
  %wide.load118.29 = load <2 x double>, ptr %i.dw, align 8, !tbaa !8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.et, i64 928
  %i.hz = getelementptr inbounds nuw i8, ptr %i.et, i64 944
  store <2 x double> %wide.load.29, ptr %i.hy, align 8, !tbaa !8
  store <2 x double> %wide.load118.29, ptr %i.hz, align 8, !tbaa !8
  %wide.load.30 = load <2 x double>, ptr %i.dx, align 8, !tbaa !8
  %wide.load118.30 = load <2 x double>, ptr %i.dy, align 8, !tbaa !8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.et, i64 960
  %i.ib = getelementptr inbounds nuw i8, ptr %i.et, i64 976
  store <2 x double> %wide.load.30, ptr %i.ia, align 8, !tbaa !8
  store <2 x double> %wide.load118.30, ptr %i.ib, align 8, !tbaa !8
  %wide.load.31 = load <2 x double>, ptr %i.dz, align 8, !tbaa !8
  %wide.load118.31 = load <2 x double>, ptr %i.ea, align 8, !tbaa !8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.et, i64 992
  %i.id = getelementptr inbounds nuw i8, ptr %i.et, i64 1008
  store <2 x double> %wide.load.31, ptr %i.ic, align 8, !tbaa !8
  store <2 x double> %wide.load118.31, ptr %i.id, align 8, !tbaa !8
  %wide.load.32 = load <2 x double>, ptr %i.eb, align 8, !tbaa !8
  %wide.load118.32 = load <2 x double>, ptr %i.ec, align 8, !tbaa !8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.et, i64 1024
  %i.if = getelementptr inbounds nuw i8, ptr %i.et, i64 1040
  store <2 x double> %wide.load.32, ptr %i.ie, align 8, !tbaa !8
  store <2 x double> %wide.load118.32, ptr %i.if, align 8, !tbaa !8
  %wide.load.33 = load <2 x double>, ptr %i.ed, align 8, !tbaa !8
  %wide.load118.33 = load <2 x double>, ptr %i.ee, align 8, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.et, i64 1056
  %i.ih = getelementptr inbounds nuw i8, ptr %i.et, i64 1072
  store <2 x double> %wide.load.33, ptr %i.ig, align 8, !tbaa !8
  store <2 x double> %wide.load118.33, ptr %i.ih, align 8, !tbaa !8
  %wide.load.34 = load <2 x double>, ptr %i.ef, align 8, !tbaa !8
  %wide.load118.34 = load <2 x double>, ptr %i.eg, align 8, !tbaa !8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.et, i64 1088
  %i.ij = getelementptr inbounds nuw i8, ptr %i.et, i64 1104
  store <2 x double> %wide.load.34, ptr %i.ii, align 8, !tbaa !8
  store <2 x double> %wide.load118.34, ptr %i.ij, align 8, !tbaa !8
  %wide.load.35 = load <2 x double>, ptr %i.eh, align 8, !tbaa !8
  %wide.load118.35 = load <2 x double>, ptr %i.ei, align 8, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.et, i64 1120
  %i.il = getelementptr inbounds nuw i8, ptr %i.et, i64 1136
  store <2 x double> %wide.load.35, ptr %i.ik, align 8, !tbaa !8
  store <2 x double> %wide.load118.35, ptr %i.il, align 8, !tbaa !8
  %wide.load.36 = load <2 x double>, ptr %i.ej, align 8, !tbaa !8
  %wide.load118.36 = load <2 x double>, ptr %i.ek, align 8, !tbaa !8
  %i.im = getelementptr inbounds nuw i8, ptr %i.et, i64 1152
  %i.in = getelementptr inbounds nuw i8, ptr %i.et, i64 1168
  store <2 x double> %wide.load.36, ptr %i.im, align 8, !tbaa !8
  store <2 x double> %wide.load118.36, ptr %i.in, align 8, !tbaa !8
  %wide.load.37 = load <2 x double>, ptr %i.el, align 8, !tbaa !8
  %wide.load118.37 = load <2 x double>, ptr %i.em, align 8, !tbaa !8
  %i.io = getelementptr inbounds nuw i8, ptr %i.et, i64 1184
  %i.ip = getelementptr inbounds nuw i8, ptr %i.et, i64 1200
  store <2 x double> %wide.load.37, ptr %i.io, align 8, !tbaa !8
  store <2 x double> %wide.load118.37, ptr %i.ip, align 8, !tbaa !8
  %wide.load.38 = load <2 x double>, ptr %i.en, align 8, !tbaa !8
  %wide.load118.38 = load <2 x double>, ptr %i.eo, align 8, !tbaa !8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.et, i64 1216
  %i.ir = getelementptr inbounds nuw i8, ptr %i.et, i64 1232
  store <2 x double> %wide.load.38, ptr %i.iq, align 8, !tbaa !8
  store <2 x double> %wide.load118.38, ptr %i.ir, align 8, !tbaa !8
  %wide.load.39 = load <2 x double>, ptr %i.ep, align 8, !tbaa !8
  %wide.load118.39 = load <2 x double>, ptr %i.eq, align 8, !tbaa !8
  %i.is = getelementptr inbounds nuw i8, ptr %i.et, i64 1248
  %i.it = getelementptr inbounds nuw i8, ptr %i.et, i64 1264
  store <2 x double> %wide.load.39, ptr %i.is, align 8, !tbaa !8
  store <2 x double> %wide.load118.39, ptr %i.it, align 8, !tbaa !8
  br label %._crit_edge.us45.us.us.us.i

._crit_edge.us45.us.us.us.i:                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.i, %vector.body116
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, 140
  br i1 %exitcond80.not.i, label %._crit_edge43.split.us.split.us.us.us.i, label %.preheader36.us.us.us.us.i, !llvm.loop !23

._crit_edge43.split.us.split.us.us.us.i:          ; preds = %._crit_edge.us45.us.us.us.i
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next82.i, 150
  br i1 %exitcond85.not.i, label %.preheader37.us.us.i40.preheader, label %.preheader37.us.us.i, !llvm.loop !24

.preheader37.us.us.i40.preheader:                 ; preds = %._crit_edge43.split.us.split.us.us.us.i
  %i.iu = sub i64 %i.n, %i.u
  %i.iv = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ix = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.iy = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.iz = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.ja = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.jb = getelementptr inbounds nuw i8, ptr %i.t, i64 112
  %i.jc = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.jd = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.je = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.jf = getelementptr inbounds nuw i8, ptr %i.t, i64 176
  %i.jg = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.jh = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  %i.ji = getelementptr inbounds nuw i8, ptr %i.t, i64 224
  %i.jj = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.jk = getelementptr inbounds nuw i8, ptr %i.t, i64 256
  %i.jl = getelementptr inbounds nuw i8, ptr %i.t, i64 272
  %i.jm = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.jn = getelementptr inbounds nuw i8, ptr %i.t, i64 304
  %i.jo = getelementptr inbounds nuw i8, ptr %i.t, i64 320
  %i.jp = getelementptr inbounds nuw i8, ptr %i.t, i64 336
  %i.jq = getelementptr inbounds nuw i8, ptr %i.t, i64 352
  %i.jr = getelementptr inbounds nuw i8, ptr %i.t, i64 368
  %i.js = getelementptr inbounds nuw i8, ptr %i.t, i64 384
  %i.jt = getelementptr inbounds nuw i8, ptr %i.t, i64 400
  %i.ju = getelementptr inbounds nuw i8, ptr %i.t, i64 416
  %i.jv = getelementptr inbounds nuw i8, ptr %i.t, i64 432
  %i.jw = getelementptr inbounds nuw i8, ptr %i.t, i64 448
  %i.jx = getelementptr inbounds nuw i8, ptr %i.t, i64 464
  %i.jy = getelementptr inbounds nuw i8, ptr %i.t, i64 480
  %i.jz = getelementptr inbounds nuw i8, ptr %i.t, i64 496
  %i.ka = getelementptr inbounds nuw i8, ptr %i.t, i64 512
  %i.kb = getelementptr inbounds nuw i8, ptr %i.t, i64 528
  %i.kc = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.kd = getelementptr inbounds nuw i8, ptr %i.t, i64 560
  %i.ke = getelementptr inbounds nuw i8, ptr %i.t, i64 576
  %i.kf = getelementptr inbounds nuw i8, ptr %i.t, i64 592
  %i.kg = getelementptr inbounds nuw i8, ptr %i.t, i64 608
  %i.kh = getelementptr inbounds nuw i8, ptr %i.t, i64 624
  %i.ki = getelementptr inbounds nuw i8, ptr %i.t, i64 640
  %i.kj = getelementptr inbounds nuw i8, ptr %i.t, i64 656
  %i.kk = getelementptr inbounds nuw i8, ptr %i.t, i64 672
  %i.kl = getelementptr inbounds nuw i8, ptr %i.t, i64 688
  %i.km = getelementptr inbounds nuw i8, ptr %i.t, i64 704
  %i.kn = getelementptr inbounds nuw i8, ptr %i.t, i64 720
  %i.ko = getelementptr inbounds nuw i8, ptr %i.t, i64 736
  %i.kp = getelementptr inbounds nuw i8, ptr %i.t, i64 752
  %i.kq = getelementptr inbounds nuw i8, ptr %i.t, i64 768
  %i.kr = getelementptr inbounds nuw i8, ptr %i.t, i64 784
  %i.ks = getelementptr inbounds nuw i8, ptr %i.t, i64 800
  %i.kt = getelementptr inbounds nuw i8, ptr %i.t, i64 816
  %i.ku = getelementptr inbounds nuw i8, ptr %i.t, i64 832
  %i.kv = getelementptr inbounds nuw i8, ptr %i.t, i64 848
  %i.kw = getelementptr inbounds nuw i8, ptr %i.t, i64 864
  %i.kx = getelementptr inbounds nuw i8, ptr %i.t, i64 880
  %i.ky = getelementptr inbounds nuw i8, ptr %i.t, i64 896
  %i.kz = getelementptr inbounds nuw i8, ptr %i.t, i64 912
  %i.la = getelementptr inbounds nuw i8, ptr %i.t, i64 928
  %i.lb = getelementptr inbounds nuw i8, ptr %i.t, i64 944
  %i.lc = getelementptr inbounds nuw i8, ptr %i.t, i64 960
  %i.ld = getelementptr inbounds nuw i8, ptr %i.t, i64 976
  %i.le = getelementptr inbounds nuw i8, ptr %i.t, i64 992
  %i.lf = getelementptr inbounds nuw i8, ptr %i.t, i64 1008
  %i.lg = getelementptr inbounds nuw i8, ptr %i.t, i64 1024
  %i.lh = getelementptr inbounds nuw i8, ptr %i.t, i64 1040
  %i.li = getelementptr inbounds nuw i8, ptr %i.t, i64 1056
  %i.lj = getelementptr inbounds nuw i8, ptr %i.t, i64 1072
  %i.lk = getelementptr inbounds nuw i8, ptr %i.t, i64 1088
  %i.ll = getelementptr inbounds nuw i8, ptr %i.t, i64 1104
  %i.lm = getelementptr inbounds nuw i8, ptr %i.t, i64 1120
  %i.ln = getelementptr inbounds nuw i8, ptr %i.t, i64 1136
  %i.lo = getelementptr inbounds nuw i8, ptr %i.t, i64 1152
  %i.lp = getelementptr inbounds nuw i8, ptr %i.t, i64 1168
  %i.lq = getelementptr inbounds nuw i8, ptr %i.t, i64 1184
  %i.lr = getelementptr inbounds nuw i8, ptr %i.t, i64 1200
  %i.ls = getelementptr inbounds nuw i8, ptr %i.t, i64 1216
  %i.lt = getelementptr inbounds nuw i8, ptr %i.t, i64 1232
  %i.lu = getelementptr inbounds nuw i8, ptr %i.t, i64 1248
  %i.lv = getelementptr inbounds nuw i8, ptr %i.t, i64 1264
  br label %.preheader37.us.us.i40

.preheader37.us.us.i40:                           ; preds = %.preheader37.us.us.i40.preheader, %._crit_edge43.split.us.split.us.us.us.i61
  %indvars.iv81.i41 = phi i64 [ %indvars.iv.next82.i62, %._crit_edge43.split.us.split.us.us.us.i61 ], [ 0, %.preheader37.us.us.i40.preheader ] ; 3 uses
  %i.lw = mul nuw nsw i64 %indvars.iv81.i41, 179200
  %5 = add i64 %i.iu, %i.lw
  %6 = getelementptr inbounds nuw [179200 x i8], ptr %i.m, i64 %indvars.iv81.i41
  br label %.preheader36.us.us.us.us.i42

.preheader36.us.us.us.us.i42:                     ; preds = %._crit_edge.us45.us.us.us.i58, %.preheader37.us.us.i40
  %indvars.iv76.i43 = phi i64 [ %indvars.iv.next77.i59, %._crit_edge.us45.us.us.us.i58 ], [ 0, %.preheader37.us.us.i40 ] ; 3 uses
  %i.lx = mul nuw nsw i64 %indvars.iv76.i43, 1280
  %7 = add i64 %5, %i.lx
  %i.ly = getelementptr inbounds nuw [1280 x i8], ptr %6, i64 %indvars.iv76.i43 ; 87 uses
  br label %.lr.ph.us.us.us.us.us.i44

..preheader_crit_edge.split.us.us.us.us.us.i54:   ; preds = %vector.memcheck121, %..preheader_crit_edge.split.us.us.us.us.us.i54
  %indvars.iv71.i55 = phi i64 [ %indvars.iv.next72.i56.4, %..preheader_crit_edge.split.us.us.us.us.us.i54 ], [ 0, %vector.memcheck121 ] ; 7 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv71.i55
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !8
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv71.i55
  store double %i.ma, ptr %i.mb, align 8, !tbaa !8
  %indvars.iv.next72.i56 = add nuw nsw i64 %indvars.iv71.i55, 1 ; 2 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next72.i56
  %i.md = load double, ptr %i.mc, align 8, !tbaa !8
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next72.i56
  store double %i.md, ptr %i.me, align 8, !tbaa !8
  %indvars.iv.next72.i56.1 = add nuw nsw i64 %indvars.iv71.i55, 2 ; 2 uses
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next72.i56.1
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !8
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next72.i56.1
  store double %i.mg, ptr %i.mh, align 8, !tbaa !8
  %indvars.iv.next72.i56.2 = add nuw nsw i64 %indvars.iv71.i55, 3 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next72.i56.2
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !8
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next72.i56.2
  store double %i.mj, ptr %i.mk, align 8, !tbaa !8
  %indvars.iv.next72.i56.3 = add nuw nsw i64 %indvars.iv71.i55, 4 ; 2 uses
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next72.i56.3
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !8
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next72.i56.3
  store double %i.mm, ptr %i.mn, align 8, !tbaa !8
  %indvars.iv.next72.i56.4 = add nuw nsw i64 %indvars.iv71.i55, 5 ; 2 uses
  %exitcond75.not.i57.4 = icmp eq i64 %indvars.iv.next72.i56.4, 160
  br i1 %exitcond75.not.i57.4, label %._crit_edge.us45.us.us.us.i58, label %..preheader_crit_edge.split.us.us.us.us.us.i54, !llvm.loop !39

.lr.ph.us.us.us.us.us.i44:                        ; preds = %._crit_edge.us.us.us.us.us.i51, %.preheader36.us.us.us.us.i42
  %indvars.iv64.i45 = phi i64 [ %indvars.iv.next65.i52, %._crit_edge.us.us.us.us.us.i51 ], [ 0, %.preheader36.us.us.us.us.i42 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv64.i45 ; 3 uses
  store double 0.000000e+00, ptr %i.mo, align 8, !tbaa !8
  %invariant.gep.us.us.us.us.us.i46 = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv64.i45 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.us.us.us.us.i44
  %indvars.iv.i47 = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i44 ], [ %indvars.iv.next.i49.1, %bb.h ] ; 4 uses
  %i.mp = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.i44 ], [ %i.mz, %bb.h ]
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.i47
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !8
  %gep.us.us.us.us.us.i48 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.i46, i64 %indvars.iv.i47
  %i.ms = load double, ptr %gep.us.us.us.us.us.i48, align 8, !tbaa !8
  %i.mt = fmul double %i.mr, %i.ms
  %i.mu = fadd double %i.mp, %i.mt                ; 2 uses
  store double %i.mu, ptr %i.mo, align 8, !tbaa !8
  %indvars.iv.next.i49 = or disjoint i64 %indvars.iv.i47, 1 ; 2 uses
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %indvars.iv.next.i49
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !8
  %gep.us.us.us.us.us.i48.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.i46, i64 %indvars.iv.next.i49
  %i.mx = load double, ptr %gep.us.us.us.us.us.i48.1, align 8, !tbaa !8
  %i.my = fmul double %i.mw, %i.mx
  %i.mz = fadd double %i.mu, %i.my                ; 2 uses
  store double %i.mz, ptr %i.mo, align 8, !tbaa !8
  %indvars.iv.next.i49.1 = add nuw nsw i64 %indvars.iv.i47, 2 ; 2 uses
  %exitcond.not.i50.1 = icmp eq i64 %indvars.iv.next.i49.1, 160
  br i1 %exitcond.not.i50.1, label %._crit_edge.us.us.us.us.us.i51, label %bb.h, !llvm.loop !26

._crit_edge.us.us.us.us.us.i51:                   ; preds = %bb.h
  %indvars.iv.next65.i52 = add nuw nsw i64 %indvars.iv64.i45, 1 ; 2 uses
  %exitcond68.not.i53 = icmp eq i64 %indvars.iv.next65.i52, 160
  br i1 %exitcond68.not.i53, label %vector.memcheck121, label %.lr.ph.us.us.us.us.us.i44, !llvm.loop !27

vector.memcheck121:                               ; preds = %._crit_edge.us.us.us.us.us.i51
  %diff.check122 = icmp ult i64 %7, 32
  br i1 %diff.check122, label %..preheader_crit_edge.split.us.us.us.us.us.i54, label %vector.body125

vector.body125:                                   ; preds = %vector.memcheck121
  %wide.load127 = load <2 x double>, ptr %i.t, align 8, !tbaa !8
  %wide.load128 = load <2 x double>, ptr %i.iv, align 8, !tbaa !8
  %i.na = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store <2 x double> %wide.load127, ptr %i.ly, align 8, !tbaa !8
  store <2 x double> %wide.load128, ptr %i.na, align 8, !tbaa !8
  %wide.load127.1 = load <2 x double>, ptr %i.iw, align 8, !tbaa !8
  %wide.load128.1 = load <2 x double>, ptr %i.ix, align 8, !tbaa !8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  store <2 x double> %wide.load127.1, ptr %i.nb, align 8, !tbaa !8
  store <2 x double> %wide.load128.1, ptr %i.nc, align 8, !tbaa !8
  %wide.load127.2 = load <2 x double>, ptr %i.iy, align 8, !tbaa !8
  %wide.load128.2 = load <2 x double>, ptr %i.iz, align 8, !tbaa !8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ly, i64 64
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ly, i64 80
  store <2 x double> %wide.load127.2, ptr %i.nd, align 8, !tbaa !8
  store <2 x double> %wide.load128.2, ptr %i.ne, align 8, !tbaa !8
  %wide.load127.3 = load <2 x double>, ptr %i.ja, align 8, !tbaa !8
  %wide.load128.3 = load <2 x double>, ptr %i.jb, align 8, !tbaa !8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ly, i64 96
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ly, i64 112
  store <2 x double> %wide.load127.3, ptr %i.nf, align 8, !tbaa !8
  store <2 x double> %wide.load128.3, ptr %i.ng, align 8, !tbaa !8
  %wide.load127.4 = load <2 x double>, ptr %i.jc, align 8, !tbaa !8
  %wide.load128.4 = load <2 x double>, ptr %i.jd, align 8, !tbaa !8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ly, i64 128
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ly, i64 144
  store <2 x double> %wide.load127.4, ptr %i.nh, align 8, !tbaa !8
  store <2 x double> %wide.load128.4, ptr %i.ni, align 8, !tbaa !8
  %wide.load127.5 = load <2 x double>, ptr %i.je, align 8, !tbaa !8
  %wide.load128.5 = load <2 x double>, ptr %i.jf, align 8, !tbaa !8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ly, i64 160
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ly, i64 176
  store <2 x double> %wide.load127.5, ptr %i.nj, align 8, !tbaa !8
  store <2 x double> %wide.load128.5, ptr %i.nk, align 8, !tbaa !8
  %wide.load127.6 = load <2 x double>, ptr %i.jg, align 8, !tbaa !8
  %wide.load128.6 = load <2 x double>, ptr %i.jh, align 8, !tbaa !8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ly, i64 192
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ly, i64 208
  store <2 x double> %wide.load127.6, ptr %i.nl, align 8, !tbaa !8
  store <2 x double> %wide.load128.6, ptr %i.nm, align 8, !tbaa !8
  %wide.load127.7 = load <2 x double>, ptr %i.ji, align 8, !tbaa !8
  %wide.load128.7 = load <2 x double>, ptr %i.jj, align 8, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ly, i64 224
  %i.no = getelementptr inbounds nuw i8, ptr %i.ly, i64 240
  store <2 x double> %wide.load127.7, ptr %i.nn, align 8, !tbaa !8
  store <2 x double> %wide.load128.7, ptr %i.no, align 8, !tbaa !8
  %wide.load127.8 = load <2 x double>, ptr %i.jk, align 8, !tbaa !8
  %wide.load128.8 = load <2 x double>, ptr %i.jl, align 8, !tbaa !8
  %i.np = getelementptr inbounds nuw i8, ptr %i.ly, i64 256
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ly, i64 272
  store <2 x double> %wide.load127.8, ptr %i.np, align 8, !tbaa !8
  store <2 x double> %wide.load128.8, ptr %i.nq, align 8, !tbaa !8
  %wide.load127.9 = load <2 x double>, ptr %i.jm, align 8, !tbaa !8
  %wide.load128.9 = load <2 x double>, ptr %i.jn, align 8, !tbaa !8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ly, i64 288
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ly, i64 304
  store <2 x double> %wide.load127.9, ptr %i.nr, align 8, !tbaa !8
  store <2 x double> %wide.load128.9, ptr %i.ns, align 8, !tbaa !8
  %wide.load127.10 = load <2 x double>, ptr %i.jo, align 8, !tbaa !8
  %wide.load128.10 = load <2 x double>, ptr %i.jp, align 8, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ly, i64 320
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ly, i64 336
  store <2 x double> %wide.load127.10, ptr %i.nt, align 8, !tbaa !8
  store <2 x double> %wide.load128.10, ptr %i.nu, align 8, !tbaa !8
  %wide.load127.11 = load <2 x double>, ptr %i.jq, align 8, !tbaa !8
  %wide.load128.11 = load <2 x double>, ptr %i.jr, align 8, !tbaa !8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ly, i64 352
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ly, i64 368
  store <2 x double> %wide.load127.11, ptr %i.nv, align 8, !tbaa !8
  store <2 x double> %wide.load128.11, ptr %i.nw, align 8, !tbaa !8
  %wide.load127.12 = load <2 x double>, ptr %i.js, align 8, !tbaa !8
  %wide.load128.12 = load <2 x double>, ptr %i.jt, align 8, !tbaa !8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ly, i64 384
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ly, i64 400
  store <2 x double> %wide.load127.12, ptr %i.nx, align 8, !tbaa !8
  store <2 x double> %wide.load128.12, ptr %i.ny, align 8, !tbaa !8
  %wide.load127.13 = load <2 x double>, ptr %i.ju, align 8, !tbaa !8
  %wide.load128.13 = load <2 x double>, ptr %i.jv, align 8, !tbaa !8
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ly, i64 416
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ly, i64 432
  store <2 x double> %wide.load127.13, ptr %i.nz, align 8, !tbaa !8
  store <2 x double> %wide.load128.13, ptr %i.oa, align 8, !tbaa !8
  %wide.load127.14 = load <2 x double>, ptr %i.jw, align 8, !tbaa !8
  %wide.load128.14 = load <2 x double>, ptr %i.jx, align 8, !tbaa !8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ly, i64 448
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ly, i64 464
  store <2 x double> %wide.load127.14, ptr %i.ob, align 8, !tbaa !8
  store <2 x double> %wide.load128.14, ptr %i.oc, align 8, !tbaa !8
  %wide.load127.15 = load <2 x double>, ptr %i.jy, align 8, !tbaa !8
  %wide.load128.15 = load <2 x double>, ptr %i.jz, align 8, !tbaa !8
  %i.od = getelementptr inbounds nuw i8, ptr %i.ly, i64 480
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ly, i64 496
  store <2 x double> %wide.load127.15, ptr %i.od, align 8, !tbaa !8
  store <2 x double> %wide.load128.15, ptr %i.oe, align 8, !tbaa !8
  %wide.load127.16 = load <2 x double>, ptr %i.ka, align 8, !tbaa !8
  %wide.load128.16 = load <2 x double>, ptr %i.kb, align 8, !tbaa !8
  %i.of = getelementptr inbounds nuw i8, ptr %i.ly, i64 512
  %i.og = getelementptr inbounds nuw i8, ptr %i.ly, i64 528
  store <2 x double> %wide.load127.16, ptr %i.of, align 8, !tbaa !8
  store <2 x double> %wide.load128.16, ptr %i.og, align 8, !tbaa !8
  %wide.load127.17 = load <2 x double>, ptr %i.kc, align 8, !tbaa !8
  %wide.load128.17 = load <2 x double>, ptr %i.kd, align 8, !tbaa !8
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ly, i64 544
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ly, i64 560
  store <2 x double> %wide.load127.17, ptr %i.oh, align 8, !tbaa !8
  store <2 x double> %wide.load128.17, ptr %i.oi, align 8, !tbaa !8
  %wide.load127.18 = load <2 x double>, ptr %i.ke, align 8, !tbaa !8
  %wide.load128.18 = load <2 x double>, ptr %i.kf, align 8, !tbaa !8
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ly, i64 576
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ly, i64 592
  store <2 x double> %wide.load127.18, ptr %i.oj, align 8, !tbaa !8
  store <2 x double> %wide.load128.18, ptr %i.ok, align 8, !tbaa !8
  %wide.load127.19 = load <2 x double>, ptr %i.kg, align 8, !tbaa !8
  %wide.load128.19 = load <2 x double>, ptr %i.kh, align 8, !tbaa !8
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ly, i64 608
  %i.om = getelementptr inbounds nuw i8, ptr %i.ly, i64 624
  store <2 x double> %wide.load127.19, ptr %i.ol, align 8, !tbaa !8
  store <2 x double> %wide.load128.19, ptr %i.om, align 8, !tbaa !8
  %wide.load127.20 = load <2 x double>, ptr %i.ki, align 8, !tbaa !8
  %wide.load128.20 = load <2 x double>, ptr %i.kj, align 8, !tbaa !8
  %i.on = getelementptr inbounds nuw i8, ptr %i.ly, i64 640
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ly, i64 656
  store <2 x double> %wide.load127.20, ptr %i.on, align 8, !tbaa !8
  store <2 x double> %wide.load128.20, ptr %i.oo, align 8, !tbaa !8
  %wide.load127.21 = load <2 x double>, ptr %i.kk, align 8, !tbaa !8
  %wide.load128.21 = load <2 x double>, ptr %i.kl, align 8, !tbaa !8
  %i.op = getelementptr inbounds nuw i8, ptr %i.ly, i64 672
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ly, i64 688
  store <2 x double> %wide.load127.21, ptr %i.op, align 8, !tbaa !8
  store <2 x double> %wide.load128.21, ptr %i.oq, align 8, !tbaa !8
  %wide.load127.22 = load <2 x double>, ptr %i.km, align 8, !tbaa !8
  %wide.load128.22 = load <2 x double>, ptr %i.kn, align 8, !tbaa !8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ly, i64 704
  %i.os = getelementptr inbounds nuw i8, ptr %i.ly, i64 720
  store <2 x double> %wide.load127.22, ptr %i.or, align 8, !tbaa !8
  store <2 x double> %wide.load128.22, ptr %i.os, align 8, !tbaa !8
  %wide.load127.23 = load <2 x double>, ptr %i.ko, align 8, !tbaa !8
  %wide.load128.23 = load <2 x double>, ptr %i.kp, align 8, !tbaa !8
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ly, i64 736
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ly, i64 752
  store <2 x double> %wide.load127.23, ptr %i.ot, align 8, !tbaa !8
  store <2 x double> %wide.load128.23, ptr %i.ou, align 8, !tbaa !8
  %wide.load127.24 = load <2 x double>, ptr %i.kq, align 8, !tbaa !8
  %wide.load128.24 = load <2 x double>, ptr %i.kr, align 8, !tbaa !8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ly, i64 768
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ly, i64 784
  store <2 x double> %wide.load127.24, ptr %i.ov, align 8, !tbaa !8
  store <2 x double> %wide.load128.24, ptr %i.ow, align 8, !tbaa !8
  %wide.load127.25 = load <2 x double>, ptr %i.ks, align 8, !tbaa !8
  %wide.load128.25 = load <2 x double>, ptr %i.kt, align 8, !tbaa !8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ly, i64 800
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ly, i64 816
  store <2 x double> %wide.load127.25, ptr %i.ox, align 8, !tbaa !8
  store <2 x double> %wide.load128.25, ptr %i.oy, align 8, !tbaa !8
  %wide.load127.26 = load <2 x double>, ptr %i.ku, align 8, !tbaa !8
  %wide.load128.26 = load <2 x double>, ptr %i.kv, align 8, !tbaa !8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ly, i64 832
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ly, i64 848
  store <2 x double> %wide.load127.26, ptr %i.oz, align 8, !tbaa !8
  store <2 x double> %wide.load128.26, ptr %i.pa, align 8, !tbaa !8
  %wide.load127.27 = load <2 x double>, ptr %i.kw, align 8, !tbaa !8
  %wide.load128.27 = load <2 x double>, ptr %i.kx, align 8, !tbaa !8
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ly, i64 864
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ly, i64 880
  store <2 x double> %wide.load127.27, ptr %i.pb, align 8, !tbaa !8
  store <2 x double> %wide.load128.27, ptr %i.pc, align 8, !tbaa !8
  %wide.load127.28 = load <2 x double>, ptr %i.ky, align 8, !tbaa !8
  %wide.load128.28 = load <2 x double>, ptr %i.kz, align 8, !tbaa !8
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ly, i64 896
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ly, i64 912
  store <2 x double> %wide.load127.28, ptr %i.pd, align 8, !tbaa !8
  store <2 x double> %wide.load128.28, ptr %i.pe, align 8, !tbaa !8
  %wide.load127.29 = load <2 x double>, ptr %i.la, align 8, !tbaa !8
  %wide.load128.29 = load <2 x double>, ptr %i.lb, align 8, !tbaa !8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ly, i64 928
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ly, i64 944
  store <2 x double> %wide.load127.29, ptr %i.pf, align 8, !tbaa !8
  store <2 x double> %wide.load128.29, ptr %i.pg, align 8, !tbaa !8
  %wide.load127.30 = load <2 x double>, ptr %i.lc, align 8, !tbaa !8
  %wide.load128.30 = load <2 x double>, ptr %i.ld, align 8, !tbaa !8
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ly, i64 960
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ly, i64 976
  store <2 x double> %wide.load127.30, ptr %i.ph, align 8, !tbaa !8
  store <2 x double> %wide.load128.30, ptr %i.pi, align 8, !tbaa !8
  %wide.load127.31 = load <2 x double>, ptr %i.le, align 8, !tbaa !8
  %wide.load128.31 = load <2 x double>, ptr %i.lf, align 8, !tbaa !8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ly, i64 992
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ly, i64 1008
  store <2 x double> %wide.load127.31, ptr %i.pj, align 8, !tbaa !8
  store <2 x double> %wide.load128.31, ptr %i.pk, align 8, !tbaa !8
  %wide.load127.32 = load <2 x double>, ptr %i.lg, align 8, !tbaa !8
  %wide.load128.32 = load <2 x double>, ptr %i.lh, align 8, !tbaa !8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ly, i64 1024
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ly, i64 1040
  store <2 x double> %wide.load127.32, ptr %i.pl, align 8, !tbaa !8
  store <2 x double> %wide.load128.32, ptr %i.pm, align 8, !tbaa !8
end_hunk_0
