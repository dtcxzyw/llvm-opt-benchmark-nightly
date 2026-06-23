inline.NumInlined: 15
inline.NumDeleted: 6
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
  %6 = icmp sgt i32 %0, 0
  %7 = icmp sgt i32 %1, 0
  %or.cond = and i1 %6, %7
  %i.a = icmp sgt i32 %2, 0
  %or.cond86 = and i1 %or.cond, %i.a
  br i1 %or.cond86, label %.preheader37.us.us.us.preheader, label %._crit_edge

.preheader37.us.us.us.preheader:                  ; preds = %bb.a
  %8 = ptrtoaddr ptr %3 to i64
  %9 = ptrtoaddr ptr %5 to i64
  %wide.trip.count82 = zext nneg i32 %0 to i64
  %wide.trip.count77 = zext nneg i32 %1 to i64
  %wide.trip.count65 = zext nneg i32 %2 to i64    ; 8 uses
  %i.b = sub i64 %8, %9
  %xtraiter = and i64 %wide.trip.count65, 1
  %i.c = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count65, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = trunc i32 %2 to i1
  %min.iters.check = icmp ult i32 %2, 4
  %n.vec = and i64 %wide.trip.count65, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65
  %xtraiter91 = and i64 %wide.trip.count65, 3     ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br label %.preheader37.us.us.us

.preheader37.us.us.us:                            ; preds = %.preheader37.us.us.us.preheader, %._crit_edge43.split.us.us.us.split.us.us
  %indvars.iv79 = phi i64 [ 0, %.preheader37.us.us.us.preheader ], [ %indvars.iv.next80, %._crit_edge43.split.us.us.us.split.us.us ] ; 3 uses
  %i.d = mul nuw nsw i64 %indvars.iv79, 179200
  %i.e = add i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw [179200 x i8], ptr %3, i64 %indvars.iv79
  br label %.preheader36.us.us.us.us.us

.preheader36.us.us.us.us.us:                      ; preds = %._crit_edge.us45.us.us.us.us, %.preheader37.us.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.us45.us.us.us.us ], [ 0, %.preheader37.us.us.us ] ; 3 uses
  %i.g = mul nuw nsw i64 %indvars.iv74, 1280
  %i.h = add i64 %i.e, %i.g
  %i.i = getelementptr inbounds nuw [1280 x i8], ptr %i.f, i64 %indvars.iv74 ; 9 uses
  br label %.lr.ph.us.us.us.us.us.us

..preheader_crit_edge.split.us.us.us.us.us.us:    ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.3, %..preheader_crit_edge.split.us.us.us.us.us.us ], [ %indvars.iv69.unr, %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv69
  store double %i.k, ptr %i.l, align 8, !tbaa !8
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70
  %i.n = load double, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next70
  store double %i.n, ptr %i.o, align 8, !tbaa !8
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.1
  %i.q = load double, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next70.1
  store double %i.q, ptr %i.r, align 8, !tbaa !8
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.2
  %i.t = load double, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next70.2
  store double %i.t, ptr %i.u, align 8, !tbaa !8
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %exitcond73.not.3 = icmp eq i64 %indvars.iv.next70.3, %wide.trip.count65
  br i1 %exitcond73.not.3, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us, !llvm.loop !14

.lr.ph.us.us.us.us.us.us:                         ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader36.us.us.us.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge.us.us.us.us.us.us ], [ 0, %.preheader36.us.us.us.us.us ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62 ; 4 uses
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !8
  %invariant.gep.us.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv62 ; 3 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.us.new:                     ; preds = %.lr.ph.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ] ; 4 uses
  %i.w = phi double [ %i.ae, %.lr.ph.us.us.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !8
  %gep.us.us.us.us.us.us = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv
  %i.z = load double, ptr %gep.us.us.us.us.us.us, align 8, !tbaa !8
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.w) ; 2 uses
  store double %i.aa, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %gep.us.us.us.us.us.us.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv.next
  %i.ad = load double, ptr %gep.us.us.us.us.us.us.1, align 8, !tbaa !8
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ad, double %i.aa) ; 3 uses
  store double %i.ae, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.new, !llvm.loop !17

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.lr.ph.us.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us ], [ %i.ae, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8
  %gep.us.us.us.us.us.us.epil = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv.epil.init
  %i.ah = load double, ptr %gep.us.us.us.us.us.us.epil, align 8, !tbaa !8
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ah, double %.epil.init)
  store double %i.ai, ptr %i.v, align 8, !tbaa !8
  br label %._crit_edge.us.us.us.us.us.us

._crit_edge.us.us.us.us.us.us:                    ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !18

..preheader_crit_edge.split.us.us.us.us.us.us.preheader: ; preds = %._crit_edge.us.us.us.us.us.us
  %diff.check = icmp ult i64 %i.h, 32
  %or.cond88 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond88, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <2 x double>, ptr %i.aj, align 8, !tbaa !8
  %wide.load87 = load <2 x double>, ptr %i.ak, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %wide.load, ptr %i.al, align 8, !tbaa !8
  store <2 x double> %wide.load87, ptr %i.am, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89

..preheader_crit_edge.split.us.us.us.us.us.us.preheader89: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod92.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol

..preheader_crit_edge.split.us.us.us.us.us.us.prol: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89, %..preheader_crit_edge.split.us.us.us.us.us.us.prol
  %indvars.iv69.prol = phi i64 [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ], [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69.prol
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv69.prol
  store double %i.ap, ptr %i.aq, align 8, !tbaa !8
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter91
  br i1 %prol.iter.cmp.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol, !llvm.loop !21

..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ], [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ]
  %i.ar = sub nsw i64 %indvars.iv69.ph, %wide.trip.count65
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us

._crit_edge.us45.us.us.us.us:                     ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us.us, %middle.block
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge43.split.us.us.us.split.us.us, label %.preheader36.us.us.us.us.us, !llvm.loop !23

._crit_edge43.split.us.us.us.split.us.us:         ; preds = %._crit_edge.us45.us.us.us.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge, label %.preheader37.us.us.us, !llvm.loop !24

._crit_edge:                                      ; preds = %._crit_edge43.split.us.us.us.split.us.us, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @kernel_doitgen_StrictFP(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #7 {
bb.a:
  %6 = icmp sgt i32 %0, 0
  %7 = icmp sgt i32 %1, 0
  %or.cond = and i1 %6, %7
  %i.a = icmp sgt i32 %2, 0
  %or.cond86 = and i1 %or.cond, %i.a
  br i1 %or.cond86, label %.preheader37.us.us.us.preheader, label %._crit_edge

.preheader37.us.us.us.preheader:                  ; preds = %bb.a
  %8 = ptrtoaddr ptr %3 to i64
  %9 = ptrtoaddr ptr %5 to i64
  %wide.trip.count82 = zext nneg i32 %0 to i64
  %wide.trip.count77 = zext nneg i32 %1 to i64
  %wide.trip.count65 = zext nneg i32 %2 to i64    ; 8 uses
  %i.b = sub i64 %8, %9
  %xtraiter = and i64 %wide.trip.count65, 1
  %i.c = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count65, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = trunc i32 %2 to i1
  %min.iters.check = icmp ult i32 %2, 4
  %n.vec = and i64 %wide.trip.count65, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count65
  %xtraiter91 = and i64 %wide.trip.count65, 3     ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br label %.preheader37.us.us.us

.preheader37.us.us.us:                            ; preds = %.preheader37.us.us.us.preheader, %._crit_edge43.split.us.us.us.split.us.us
  %indvars.iv79 = phi i64 [ 0, %.preheader37.us.us.us.preheader ], [ %indvars.iv.next80, %._crit_edge43.split.us.us.us.split.us.us ] ; 3 uses
  %i.d = mul nuw nsw i64 %indvars.iv79, 179200
  %i.e = add i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw [179200 x i8], ptr %3, i64 %indvars.iv79
  br label %.preheader36.us.us.us.us.us

.preheader36.us.us.us.us.us:                      ; preds = %._crit_edge.us45.us.us.us.us, %.preheader37.us.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.us45.us.us.us.us ], [ 0, %.preheader37.us.us.us ] ; 3 uses
  %i.g = mul nuw nsw i64 %indvars.iv74, 1280
  %i.h = add i64 %i.e, %i.g
  %i.i = getelementptr inbounds nuw [1280 x i8], ptr %i.f, i64 %indvars.iv74 ; 9 uses
  br label %.lr.ph.us.us.us.us.us.us

..preheader_crit_edge.split.us.us.us.us.us.us:    ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.3, %..preheader_crit_edge.split.us.us.us.us.us.us ], [ %indvars.iv69.unr, %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69
  %i.k = load double, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv69
  store double %i.k, ptr %i.l, align 8, !tbaa !8
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70
  %i.n = load double, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next70
  store double %i.n, ptr %i.o, align 8, !tbaa !8
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.1
  %i.q = load double, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next70.1
  store double %i.q, ptr %i.r, align 8, !tbaa !8
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.2
  %i.t = load double, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next70.2
  store double %i.t, ptr %i.u, align 8, !tbaa !8
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %exitcond73.not.3 = icmp eq i64 %indvars.iv.next70.3, %wide.trip.count65
  br i1 %exitcond73.not.3, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us, !llvm.loop !25

.lr.ph.us.us.us.us.us.us:                         ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader36.us.us.us.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge.us.us.us.us.us.us ], [ 0, %.preheader36.us.us.us.us.us ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62 ; 4 uses
  store double 0.000000e+00, ptr %i.v, align 8, !tbaa !8
  %invariant.gep.us.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv62 ; 3 uses
  br i1 %i.c, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.us.new:                     ; preds = %.lr.ph.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ] ; 4 uses
  %i.w = phi double [ %i.ag, %.lr.ph.us.us.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !8
  %gep.us.us.us.us.us.us = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv
  %i.z = load double, ptr %gep.us.us.us.us.us.us, align 8, !tbaa !8
  %i.aa = fmul double %i.y, %i.z
  %i.ab = fadd double %i.w, %i.aa                 ; 2 uses
  store double %i.ab, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !8
  %gep.us.us.us.us.us.us.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv.next
  %i.ae = load double, ptr %gep.us.us.us.us.us.us.1, align 8, !tbaa !8
  %i.af = fmul double %i.ad, %i.ae
  %i.ag = fadd double %i.ab, %i.af                ; 3 uses
  store double %i.ag, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.new, !llvm.loop !26

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.lr.ph.us.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us ], [ %i.ag, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8
  %gep.us.us.us.us.us.us.epil = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv.epil.init
  %i.aj = load double, ptr %gep.us.us.us.us.us.us.epil, align 8, !tbaa !8
  %i.ak = fmul double %i.ai, %i.aj
  %i.al = fadd double %.epil.init, %i.ak
  store double %i.al, ptr %i.v, align 8, !tbaa !8
  br label %._crit_edge.us.us.us.us.us.us

._crit_edge.us.us.us.us.us.us:                    ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !27

..preheader_crit_edge.split.us.us.us.us.us.us.preheader: ; preds = %._crit_edge.us.us.us.us.us.us
  %diff.check = icmp ult i64 %i.h, 32
  %or.cond88 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond88, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !8
  %wide.load87 = load <2 x double>, ptr %i.an, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <2 x double> %wide.load, ptr %i.ao, align 8, !tbaa !8
  store <2 x double> %wide.load87, ptr %i.ap, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89

..preheader_crit_edge.split.us.us.us.us.us.us.preheader89: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod92.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol

..preheader_crit_edge.split.us.us.us.us.us.us.prol: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89, %..preheader_crit_edge.split.us.us.us.us.us.us.prol
  %indvars.iv69.prol = phi i64 [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ], [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69.prol
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv69.prol
  store double %i.as, ptr %i.at, align 8, !tbaa !8
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter91
  br i1 %prol.iter.cmp.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol, !llvm.loop !29

..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ], [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ]
  %i.au = sub nsw i64 %indvars.iv69.ph, %wide.trip.count65
  %i.av = icmp ugt i64 %i.au, -4
  br i1 %i.av, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us

._crit_edge.us45.us.us.us.us:                     ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us.us, %middle.block
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge43.split.us.us.us.split.us.us, label %.preheader36.us.us.us.us.us, !llvm.loop !30

._crit_edge43.split.us.us.us.split.us.us:         ; preds = %._crit_edge.us45.us.us.us.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge, label %.preheader37.us.us.us, !llvm.loop !31

._crit_edge:                                      ; preds = %._crit_edge43.split.us.us.us.split.us.us, %bb.a
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
  br i1 %exitcond63.not.i, label %.preheader37.us.us.us.i.preheader, label %.preheader.i, !llvm.loop !37

.preheader37.us.us.us.i.preheader:                ; preds = %middle.block111
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
end_hunk_0
