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
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %2, 0
  %or.cond86 = and i1 %or.cond, %i.c
  br i1 %or.cond86, label %.preheader37.us.us.us.preheader, label %._crit_edge

.preheader37.us.us.us.preheader:                  ; preds = %bb.a
  %i.d = ptrtoaddr ptr %3 to i64
  %i.e = ptrtoaddr ptr %5 to i64
  %wide.trip.count82 = zext nneg i32 %0 to i64
  %wide.trip.count77 = zext nneg i32 %1 to i64
  %wide.trip.count65 = zext nneg i32 %2 to i64    ; 8 uses
  %i.f = sub i64 %i.d, %i.e
  %xtraiter = and i64 %wide.trip.count65, 1
  %i.g = icmp eq i32 %2, 1
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
  %i.h = mul nuw nsw i64 %indvars.iv79, 179200
  %i.i = add i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw [179200 x i8], ptr %3, i64 %indvars.iv79
  br label %.preheader36.us.us.us.us.us

.preheader36.us.us.us.us.us:                      ; preds = %._crit_edge.us45.us.us.us.us, %.preheader37.us.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.us45.us.us.us.us ], [ 0, %.preheader37.us.us.us ] ; 3 uses
  %i.k = mul nuw nsw i64 %indvars.iv74, 1280
  %i.l = add i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw [1280 x i8], ptr %i.j, i64 %indvars.iv74 ; 9 uses
  br label %.lr.ph.us.us.us.us.us.us

..preheader_crit_edge.split.us.us.us.us.us.us:    ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.3, %..preheader_crit_edge.split.us.us.us.us.us.us ], [ %indvars.iv69.unr, %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv69
  store double %i.o, ptr %i.p, align 8, !tbaa !8
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next70
  store double %i.r, ptr %i.s, align 8, !tbaa !8
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.1
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next70.1
  store double %i.u, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.2
  %i.x = load double, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next70.2
  store double %i.x, ptr %i.y, align 8, !tbaa !8
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %exitcond73.not.3 = icmp eq i64 %indvars.iv.next70.3, %wide.trip.count65
  br i1 %exitcond73.not.3, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us, !llvm.loop !14

.lr.ph.us.us.us.us.us.us:                         ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader36.us.us.us.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge.us.us.us.us.us.us ], [ 0, %.preheader36.us.us.us.us.us ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62 ; 4 uses
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !8
  %invariant.gep.us.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv62 ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.us.new:                     ; preds = %.lr.ph.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ] ; 4 uses
  %i.aa = phi double [ %i.ai, %.lr.ph.us.us.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %gep.us.us.us.us.us.us = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv
  %i.ad = load double, ptr %gep.us.us.us.us.us.us, align 8, !tbaa !8
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.ad, double %i.aa) ; 2 uses
  store double %i.ae, ptr %i.z, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8
  %gep.us.us.us.us.us.us.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv.next
  %i.ah = load double, ptr %gep.us.us.us.us.us.us.1, align 8, !tbaa !8
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ah, double %i.ae) ; 3 uses
  store double %i.ai, ptr %i.z, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.new, !llvm.loop !17

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.lr.ph.us.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us ], [ %i.ai, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8
  %gep.us.us.us.us.us.us.epil = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv.epil.init
  %i.al = load double, ptr %gep.us.us.us.us.us.us.epil, align 8, !tbaa !8
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.al, double %.epil.init)
  store double %i.am, ptr %i.z, align 8, !tbaa !8
  br label %._crit_edge.us.us.us.us.us.us

._crit_edge.us.us.us.us.us.us:                    ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !18

..preheader_crit_edge.split.us.us.us.us.us.us.preheader: ; preds = %._crit_edge.us.us.us.us.us.us
  %diff.check = icmp ult i64 %i.l, 32
  %or.cond88 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond88, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !8
  %wide.load87 = load <2 x double>, ptr %i.ao, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x double> %wide.load, ptr %i.ap, align 8, !tbaa !8
  store <2 x double> %wide.load87, ptr %i.aq, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89

..preheader_crit_edge.split.us.us.us.us.us.us.preheader89: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod92.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol

..preheader_crit_edge.split.us.us.us.us.us.us.prol: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89, %..preheader_crit_edge.split.us.us.us.us.us.us.prol
  %indvars.iv69.prol = phi i64 [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ], [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69.prol
  %i.at = load double, ptr %i.as, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv69.prol
  store double %i.at, ptr %i.au, align 8, !tbaa !8
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter91
  br i1 %prol.iter.cmp.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol, !llvm.loop !21

..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ], [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ]
  %i.av = sub nsw i64 %indvars.iv69.ph, %wide.trip.count65
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us

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
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %2, 0
  %or.cond86 = and i1 %or.cond, %i.c
  br i1 %or.cond86, label %.preheader37.us.us.us.preheader, label %._crit_edge

.preheader37.us.us.us.preheader:                  ; preds = %bb.a
  %i.d = ptrtoaddr ptr %3 to i64
  %i.e = ptrtoaddr ptr %5 to i64
  %wide.trip.count82 = zext nneg i32 %0 to i64
  %wide.trip.count77 = zext nneg i32 %1 to i64
  %wide.trip.count65 = zext nneg i32 %2 to i64    ; 8 uses
  %i.f = sub i64 %i.d, %i.e
  %xtraiter = and i64 %wide.trip.count65, 1
  %i.g = icmp eq i32 %2, 1
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
  %i.h = mul nuw nsw i64 %indvars.iv79, 179200
  %i.i = add i64 %i.f, %i.h
  %i.j = getelementptr inbounds nuw [179200 x i8], ptr %3, i64 %indvars.iv79
  br label %.preheader36.us.us.us.us.us

.preheader36.us.us.us.us.us:                      ; preds = %._crit_edge.us45.us.us.us.us, %.preheader37.us.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.us45.us.us.us.us ], [ 0, %.preheader37.us.us.us ] ; 3 uses
  %i.k = mul nuw nsw i64 %indvars.iv74, 1280
  %i.l = add i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw [1280 x i8], ptr %i.j, i64 %indvars.iv74 ; 9 uses
  br label %.lr.ph.us.us.us.us.us.us

..preheader_crit_edge.split.us.us.us.us.us.us:    ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.3, %..preheader_crit_edge.split.us.us.us.us.us.us ], [ %indvars.iv69.unr, %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv69
  store double %i.o, ptr %i.p, align 8, !tbaa !8
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next70
  store double %i.r, ptr %i.s, align 8, !tbaa !8
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.1
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next70.1
  store double %i.u, ptr %i.v, align 8, !tbaa !8
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.2
  %i.x = load double, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next70.2
  store double %i.x, ptr %i.y, align 8, !tbaa !8
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %exitcond73.not.3 = icmp eq i64 %indvars.iv.next70.3, %wide.trip.count65
  br i1 %exitcond73.not.3, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us, !llvm.loop !25

.lr.ph.us.us.us.us.us.us:                         ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader36.us.us.us.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %._crit_edge.us.us.us.us.us.us ], [ 0, %.preheader36.us.us.us.us.us ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv62 ; 4 uses
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !8
  %invariant.gep.us.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv62 ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.us.new:                     ; preds = %.lr.ph.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ] ; 4 uses
  %i.aa = phi double [ %i.ak, %.lr.ph.us.us.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us.us ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %gep.us.us.us.us.us.us = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv
  %i.ad = load double, ptr %gep.us.us.us.us.us.us, align 8, !tbaa !8
  %i.ae = fmul double %i.ac, %i.ad
  %i.af = fadd double %i.aa, %i.ae                ; 2 uses
  store double %i.af, ptr %i.z, align 8, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !8
  %gep.us.us.us.us.us.us.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv.next
  %i.ai = load double, ptr %gep.us.us.us.us.us.us.1, align 8, !tbaa !8
  %i.aj = fmul double %i.ah, %i.ai
  %i.ak = fadd double %i.af, %i.aj                ; 3 uses
  store double %i.ak, ptr %i.z, align 8, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.us.new, !llvm.loop !26

._crit_edge.us.us.us.us.us.us.unr-lcssa:          ; preds = %.lr.ph.us.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.us ], [ %i.ak, %._crit_edge.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.epil.init
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %gep.us.us.us.us.us.us.epil = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.us, i64 %indvars.iv.epil.init
  %i.an = load double, ptr %gep.us.us.us.us.us.us.epil, align 8, !tbaa !8
  %i.ao = fmul double %i.am, %i.an
  %i.ap = fadd double %.epil.init, %i.ao
  store double %i.ap, ptr %i.z, align 8, !tbaa !8
  br label %._crit_edge.us.us.us.us.us.us

._crit_edge.us.us.us.us.us.us:                    ; preds = %._crit_edge.us.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !27

..preheader_crit_edge.split.us.us.us.us.us.us.preheader: ; preds = %._crit_edge.us.us.us.us.us.us
  %diff.check = icmp ult i64 %i.l, 32
  %or.cond88 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond88, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 8, !tbaa !8
  %wide.load87 = load <2 x double>, ptr %i.ar, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <2 x double> %wide.load, ptr %i.as, align 8, !tbaa !8
  store <2 x double> %wide.load87, ptr %i.at, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89

..preheader_crit_edge.split.us.us.us.us.us.us.preheader89: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod92.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol

..preheader_crit_edge.split.us.us.us.us.us.us.prol: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89, %..preheader_crit_edge.split.us.us.us.us.us.us.prol
  %indvars.iv69.prol = phi i64 [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ], [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69.prol
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv69.prol
  store double %i.aw, ptr %i.ax, align 8, !tbaa !8
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter91
  br i1 %prol.iter.cmp.not, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.us.prol, !llvm.loop !29

..preheader_crit_edge.split.us.us.us.us.us.us.prol.loopexit: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.us.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.us.preheader89 ], [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.us.prol ]
  %i.ay = sub nsw i64 %indvars.iv69.ph, %wide.trip.count65
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.us45.us.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.us

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
  br label %.preheader37.us.us.us.i

.preheader37.us.us.us.i:                          ; preds = %.preheader37.us.us.us.i.preheader, %._crit_edge43.split.us.us.us.split.us.us.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge43.split.us.us.us.split.us.us.i ], [ 0, %.preheader37.us.us.us.i.preheader ] ; 3 uses
  %i.er = mul nuw nsw i64 %indvars.iv79.i, 179200
  %i.es = add i64 %i.bp, %i.er
  %i.et = getelementptr inbounds nuw [179200 x i8], ptr %i.f, i64 %indvars.iv79.i
  br label %.preheader36.us.us.us.us.us.i

.preheader36.us.us.us.us.us.i:                    ; preds = %._crit_edge.us45.us.us.us.us.i, %.preheader37.us.us.us.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %._crit_edge.us45.us.us.us.us.i ], [ 0, %.preheader37.us.us.us.i ] ; 3 uses
  %i.eu = mul nuw nsw i64 %indvars.iv74.i, 1280
  %i.ev = add i64 %i.es, %i.eu
  %i.ew = getelementptr inbounds nuw [1280 x i8], ptr %i.et, i64 %indvars.iv74.i ; 87 uses
  br label %.lr.ph.us.us.us.us.us.us.i

..preheader_crit_edge.split.us.us.us.us.us.us.i:  ; preds = %vector.memcheck112, %..preheader_crit_edge.split.us.us.us.us.us.us.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.4, %..preheader_crit_edge.split.us.us.us.us.us.us.i ], [ 0, %vector.memcheck112 ] ; 7 uses
end_hunk_0
