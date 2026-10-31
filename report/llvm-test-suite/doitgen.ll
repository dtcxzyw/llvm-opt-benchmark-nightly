Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/doitgen?download=true
inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
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
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !17
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !17
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #15
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #15
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
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
  %wide.trip.count82 = zext nneg i32 %0 to i64
  %wide.trip.count77 = zext nneg i32 %1 to i64
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 8 uses
  %i.f = sub i64 %i.b, %i.a
  %xtraiter = and i64 %wide.trip.count67, 1
  %i.g = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count67, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i32 %2 to i1
  %min.iters.check = icmp ult i32 %2, 4
  %invariant.op91 = add i64 %i.f, -1
  %n.vec = and i64 %wide.trip.count67, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  %xtraiter89 = and i64 %wide.trip.count67, 3     ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br label %.preheader37.us.us

.preheader37.us.us:                               ; preds = %.preheader37.us.us.preheader, %._crit_edge43.split.us.split.us.us.us
  %indvars.iv79 = phi i64 [ 0, %.preheader37.us.us.preheader ], [ %indvars.iv.next80, %._crit_edge43.split.us.split.us.us.us ] ; 3 uses
  %i.h = mul nuw nsw i64 %indvars.iv79, 179200
  %i.i = getelementptr inbounds nuw [179200 x i8], ptr %3, i64 %indvars.iv79
  %invariant.op.reass = add i64 %i.h, %invariant.op91
  br label %.preheader36.us.us.us.us

.preheader36.us.us.us.us:                         ; preds = %._crit_edge.us45.us.us.us, %.preheader37.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.us45.us.us.us ], [ 0, %.preheader37.us.us ] ; 3 uses
  %i.j = getelementptr inbounds nuw [1280 x i8], ptr %i.i, i64 %indvars.iv74 ; 9 uses
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader36.us.us.us.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader36.us.us.us.us ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv64 ; 4 uses
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !17
  %invariant.gep.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv64 ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.new:                        ; preds = %.lr.ph.us.us.us.us.us, %.lr.ph.us.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ] ; 4 uses
  %i.l = phi double [ %i.t, %.lr.ph.us.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !17
  %gep.us.us.us.us.us = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv
  %i.o = load double, ptr %gep.us.us.us.us.us, align 8, !tbaa !17
  %i.p = tail call double @llvm.fmuladd.f64(double %i.n, double %i.o, double %i.l) ; 2 uses
  store double %i.p, ptr %i.k, align 8, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.r = load double, ptr %i.q, align 8, !tbaa !17
  %gep.us.us.us.us.us.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv.next
  %i.s = load double, ptr %gep.us.us.us.us.us.1, align 8, !tbaa !17
  %i.t = tail call double @llvm.fmuladd.f64(double %i.r, double %i.s, double %i.p) ; 3 uses
  store double %i.t, ptr %i.k, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.new, !llvm.loop !0

._crit_edge.us.us.us.us.us.unr-lcssa:             ; preds = %.lr.ph.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us ], [ %i.t, %._crit_edge.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.v = load double, ptr %i.u, align 8, !tbaa !17
  %gep.us.us.us.us.us.epil = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv.epil.init
  %i.w = load double, ptr %gep.us.us.us.us.us.epil, align 8, !tbaa !17
  %i.x = tail call double @llvm.fmuladd.f64(double %i.v, double %i.w, double %.epil.init)
  store double %i.x, ptr %i.k, align 8, !tbaa !17
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %..preheader_crit_edge.split.us.us.us.us.us.preheader, label %.lr.ph.us.us.us.us.us, !llvm.loop !1

..preheader_crit_edge.split.us.us.us.us.us.preheader: ; preds = %._crit_edge.us.us.us.us.us
  br i1 %min.iters.check, label %..preheader_crit_edge.split.us.us.us.us.us.preheader87, label %..preheader_crit_edge.split.us.us.us.us.us.preheader.a

..preheader_crit_edge.split.us.us.us.us.us.preheader.a: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader
  %6 = mul nuw nsw i64 %indvars.iv74, 1280
  %.reass = add i64 %6, %invariant.op.reass
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %..preheader_crit_edge.split.us.us.us.us.us.preheader87, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader.a ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x double>, ptr %i.y, align 8, !tbaa !17
  %wide.load86 = load <2 x double>, ptr %i.z, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load, ptr %i.aa, align 8, !tbaa !17
  store <2 x double> %wide.load86, ptr %i.ab, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.preheader87

..preheader_crit_edge.split.us.us.us.us.us.preheader87: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader.a, %..preheader_crit_edge.split.us.us.us.us.us.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader.a ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod90.not, label %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.prol

..preheader_crit_edge.split.us.us.us.us.us.prol:  ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader87, %..preheader_crit_edge.split.us.us.us.us.us.prol
  %indvars.iv69.prol = phi i64 [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.prol ], [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.preheader87 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %..preheader_crit_edge.split.us.us.us.us.us.prol ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader87 ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69.prol
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv69.prol
  store double %i.ae, ptr %i.af, align 8, !tbaa !17
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter89
  br i1 %prol.iter.cmp.not, label %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.prol, !llvm.loop !27

..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol, %..preheader_crit_edge.split.us.us.us.us.us.preheader87
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.preheader87 ], [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.prol ]
  %i.ag = sub nsw i64 %indvars.iv69.ph, %wide.trip.count67
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us

..preheader_crit_edge.split.us.us.us.us.us:       ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.3, %..preheader_crit_edge.split.us.us.us.us.us ], [ %indvars.iv69.unr, %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !17
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv69
  store double %i.aj, ptr %i.ak, align 8, !tbaa !17
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70
  %i.am = load double, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next70
  store double %i.am, ptr %i.an, align 8, !tbaa !17
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.1
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next70.1
  store double %i.ap, ptr %i.aq, align 8, !tbaa !17
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.2
  %i.as = load double, ptr %i.ar, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next70.2
  store double %i.as, ptr %i.at, align 8, !tbaa !17
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %exitcond73.not.3 = icmp eq i64 %indvars.iv.next70.3, %wide.trip.count67
  br i1 %exitcond73.not.3, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us, !llvm.loop !28

._crit_edge.us45.us.us.us:                        ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us, %middle.block
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge43.split.us.split.us.us.us, label %.preheader36.us.us.us.us, !llvm.loop !2

._crit_edge43.split.us.split.us.us.us:            ; preds = %._crit_edge.us45.us.us.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge47.split, label %.preheader37.us.us, !llvm.loop !3

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
  %wide.trip.count82 = zext nneg i32 %0 to i64
  %wide.trip.count77 = zext nneg i32 %1 to i64
  %wide.trip.count67 = zext nneg i32 %2 to i64    ; 8 uses
  %i.f = sub i64 %i.b, %i.a
  %xtraiter = and i64 %wide.trip.count67, 1
  %i.g = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count67, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i32 %2 to i1
  %min.iters.check = icmp ult i32 %2, 4
  %invariant.op91 = add i64 %i.f, -1
  %n.vec = and i64 %wide.trip.count67, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count67
  %xtraiter89 = and i64 %wide.trip.count67, 3     ; 2 uses
  %lcmp.mod90.not = icmp eq i64 %xtraiter89, 0
  br label %.preheader37.us.us

.preheader37.us.us:                               ; preds = %.preheader37.us.us.preheader, %._crit_edge43.split.us.split.us.us.us
  %indvars.iv79 = phi i64 [ 0, %.preheader37.us.us.preheader ], [ %indvars.iv.next80, %._crit_edge43.split.us.split.us.us.us ] ; 3 uses
  %i.h = mul nuw nsw i64 %indvars.iv79, 179200
  %i.i = getelementptr inbounds nuw [179200 x i8], ptr %3, i64 %indvars.iv79
  %invariant.op.reass = add i64 %i.h, %invariant.op91
  br label %.preheader36.us.us.us.us

.preheader36.us.us.us.us:                         ; preds = %._crit_edge.us45.us.us.us, %.preheader37.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %._crit_edge.us45.us.us.us ], [ 0, %.preheader37.us.us ] ; 3 uses
  %i.j = getelementptr inbounds nuw [1280 x i8], ptr %i.i, i64 %indvars.iv74 ; 9 uses
  br label %.lr.ph.us.us.us.us.us

.lr.ph.us.us.us.us.us:                            ; preds = %._crit_edge.us.us.us.us.us, %.preheader36.us.us.us.us
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %._crit_edge.us.us.us.us.us ], [ 0, %.preheader36.us.us.us.us ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv64 ; 4 uses
  store double 0.000000e+00, ptr %i.k, align 8, !tbaa !17
  %invariant.gep.us.us.us.us.us = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv64 ; 3 uses
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.us.us.us.us.us.new

.lr.ph.us.us.us.us.us.new:                        ; preds = %.lr.ph.us.us.us.us.us, %.lr.ph.us.us.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ] ; 4 uses
  %i.l = phi double [ %i.v, %.lr.ph.us.us.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.us.us.new ], [ 0, %.lr.ph.us.us.us.us.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !17
  %gep.us.us.us.us.us = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv
  %i.o = load double, ptr %gep.us.us.us.us.us, align 8, !tbaa !17
  %i.p = fmul double %i.n, %i.o
  %i.q = fadd double %i.l, %i.p                   ; 2 uses
  store double %i.q, ptr %i.k, align 8, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next
  %i.s = load double, ptr %i.r, align 8, !tbaa !17
  %gep.us.us.us.us.us.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv.next
  %i.t = load double, ptr %gep.us.us.us.us.us.1, align 8, !tbaa !17
  %i.u = fmul double %i.s, %i.t
  %i.v = fadd double %i.q, %i.u                   ; 3 uses
  store double %i.v, ptr %i.k, align 8, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us.us.new, !llvm.loop !4

._crit_edge.us.us.us.us.us.unr-lcssa:             ; preds = %.lr.ph.us.us.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.us.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us ], [ %i.v, %._crit_edge.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil.init
  %i.x = load double, ptr %i.w, align 8, !tbaa !17
  %gep.us.us.us.us.us.epil = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us, i64 %indvars.iv.epil.init
  %i.y = load double, ptr %gep.us.us.us.us.us.epil, align 8, !tbaa !17
  %i.z = fmul double %i.x, %i.y
  %i.aa = fadd double %.epil.init, %i.z
  store double %i.aa, ptr %i.k, align 8, !tbaa !17
  br label %._crit_edge.us.us.us.us.us

._crit_edge.us.us.us.us.us:                       ; preds = %._crit_edge.us.us.us.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %..preheader_crit_edge.split.us.us.us.us.us.preheader, label %.lr.ph.us.us.us.us.us, !llvm.loop !5

..preheader_crit_edge.split.us.us.us.us.us.preheader: ; preds = %._crit_edge.us.us.us.us.us
  br i1 %min.iters.check, label %..preheader_crit_edge.split.us.us.us.us.us.preheader87, label %..preheader_crit_edge.split.us.us.us.us.us.preheader.a

..preheader_crit_edge.split.us.us.us.us.us.preheader.a: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader
  %6 = mul nuw nsw i64 %indvars.iv74, 1280
  %.reass = add i64 %6, %invariant.op.reass
  %diff.check = icmp ult i64 %.reass, 31
  br i1 %diff.check, label %..preheader_crit_edge.split.us.us.us.us.us.preheader87, label %vector.body

vector.body:                                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader.a ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !17
  %wide.load86 = load <2 x double>, ptr %i.ac, align 8, !tbaa !17
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x double> %wide.load, ptr %i.ad, align 8, !tbaa !17
  store <2 x double> %wide.load86, ptr %i.ae, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us.preheader87

..preheader_crit_edge.split.us.us.us.us.us.preheader87: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader.a, %..preheader_crit_edge.split.us.us.us.us.us.preheader, %middle.block
  %indvars.iv69.ph = phi i64 [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader.a ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod90.not, label %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.prol

..preheader_crit_edge.split.us.us.us.us.us.prol:  ; preds = %..preheader_crit_edge.split.us.us.us.us.us.preheader87, %..preheader_crit_edge.split.us.us.us.us.us.prol
  %indvars.iv69.prol = phi i64 [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.prol ], [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.preheader87 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %..preheader_crit_edge.split.us.us.us.us.us.prol ], [ 0, %..preheader_crit_edge.split.us.us.us.us.us.preheader87 ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69.prol
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv69.prol
  store double %i.ah, ptr %i.ai, align 8, !tbaa !17
  %indvars.iv.next70.prol = add nuw nsw i64 %indvars.iv69.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter89
  br i1 %prol.iter.cmp.not, label %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, label %..preheader_crit_edge.split.us.us.us.us.us.prol, !llvm.loop !30

..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit: ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol, %..preheader_crit_edge.split.us.us.us.us.us.preheader87
  %indvars.iv69.unr = phi i64 [ %indvars.iv69.ph, %..preheader_crit_edge.split.us.us.us.us.us.preheader87 ], [ %indvars.iv.next70.prol, %..preheader_crit_edge.split.us.us.us.us.us.prol ]
  %i.aj = sub nsw i64 %indvars.iv69.ph, %wide.trip.count67
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us

..preheader_crit_edge.split.us.us.us.us.us:       ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us
  %indvars.iv69 = phi i64 [ %indvars.iv.next70.3, %..preheader_crit_edge.split.us.us.us.us.us ], [ %indvars.iv69.unr, %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv69
  %i.am = load double, ptr %i.al, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv69
  store double %i.am, ptr %i.an, align 8, !tbaa !17
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !17
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next70
  store double %i.ap, ptr %i.aq, align 8, !tbaa !17
  %indvars.iv.next70.1 = add nuw nsw i64 %indvars.iv69, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.1
  %i.as = load double, ptr %i.ar, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next70.1
  store double %i.as, ptr %i.at, align 8, !tbaa !17
  %indvars.iv.next70.2 = add nuw nsw i64 %indvars.iv69, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.next70.2
  %i.av = load double, ptr %i.au, align 8, !tbaa !17
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next70.2
  store double %i.av, ptr %i.aw, align 8, !tbaa !17
  %indvars.iv.next70.3 = add nuw nsw i64 %indvars.iv69, 4 ; 2 uses
  %exitcond73.not.3 = icmp eq i64 %indvars.iv.next70.3, %wide.trip.count67
  br i1 %exitcond73.not.3, label %._crit_edge.us45.us.us.us, label %..preheader_crit_edge.split.us.us.us.us.us, !llvm.loop !31

._crit_edge.us45.us.us.us:                        ; preds = %..preheader_crit_edge.split.us.us.us.us.us.prol.loopexit, %..preheader_crit_edge.split.us.us.us.us.us, %middle.block
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge43.split.us.split.us.us.us, label %.preheader36.us.us.us.us, !llvm.loop !6

._crit_edge43.split.us.split.us.us.us:            ; preds = %._crit_edge.us45.us.us.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge47.split, label %.preheader37.us.us, !llvm.loop !7

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8, !tbaa !19
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 26880000) #15
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !19   ; 6 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp ne i32 %i.e, 0
  %or.cond.i.i = or i1 %i.i, %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.j) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !19
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 26880000) #15
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !19   ; 7 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 2 uses
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp ne i32 %i.k, 0
  %or.cond.i.i31 = or i1 %i.o, %i.n
  br i1 %or.cond.i.i31, label %bb.c, label %polybench_alloc_data.exit33

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i32 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.p) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit33:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 1280) #15
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !19   ; 175 uses
  %i.s = ptrtoaddr ptr %i.r to i64                ; 2 uses
  %i.t = icmp eq ptr %i.r, null
  %i.u = icmp ne i32 %i.q, 0
  %or.cond.i.i34 = or i1 %i.u, %i.t
  br i1 %or.cond.i.i34, label %bb.d, label %polybench_alloc_data.exit36

bb.d:                                             ; preds = %polybench_alloc_data.exit33
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i35 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.v) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit36:                      ; preds = %polybench_alloc_data.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.w = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 204800) #15
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = icmp ne i32 %i.w, 0
  %or.cond.i.i37 = or i1 %i.z, %i.y
  br i1 %or.cond.i.i37, label %bb.e, label %polybench_alloc_data.exit39

bb.e:                                             ; preds = %polybench_alloc_data.exit36
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i38 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aa) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit39:                      ; preds = %polybench_alloc_data.exit36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.ab = sub i64 %i.g, %i.m
  %diff.check = icmp ugt i64 %i.ab, -16
  br label %.preheader41.i

.preheader41.i:                                   ; preds = %bb.f, %polybench_alloc_data.exit39
  %indvars.iv52.i = phi i64 [ 0, %polybench_alloc_data.exit39 ], [ %indvars.iv.next53.i, %bb.f ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [179200 x i8], ptr %i.f, i64 %indvars.iv52.i
  %i.ad = getelementptr inbounds nuw [179200 x i8], ptr %i.l, i64 %indvars.iv52.i
  br label %.preheader40.i

.preheader40.i:                                   ; preds = %middle.block, %.preheader41.i
  %indvars.iv48.i = phi i64 [ 0, %.preheader41.i ], [ %indvars.iv.next49.i, %middle.block ] ; 4 uses
  %i.ae = mul nuw nsw i64 %indvars.iv48.i, %indvars.iv52.i ; 2 uses
  %i.af = getelementptr inbounds nuw [1280 x i8], ptr %i.ac, i64 %indvars.iv48.i ; 2 uses
  %i.ag = getelementptr inbounds nuw [1280 x i8], ptr %i.ad, i64 %indvars.iv48.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader40.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ah = add nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ai = trunc nuw nsw <2 x i64> %i.ah to <2 x i32>
  %i.aj = urem <2 x i32> %i.ai, splat (i32 160)
  %i.ak = uitofp nneg <2 x i32> %i.aj to <2 x double>
  %i.al = fdiv <2 x double> %i.ak, splat (double 1.600000e+02) ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %index
  store <2 x double> %i.al, ptr %i.am, align 8, !tbaa !17
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index
  store <2 x double> %i.al, ptr %i.an, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ao = icmp eq i64 %index.next, 160
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !32

scalar.ph:                                        ; preds = %.preheader40.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader40.i ] ; 4 uses
  %i.ap = add nuw nsw i64 %indvars.iv.i, %i.ae
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = urem i32 %i.aq, 160
  %i.as = uitofp nneg i32 %i.ar to double
  %i.at = fdiv double %i.as, 1.600000e+02         ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv.i
  store double %i.at, ptr %i.au, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i
  store double %i.at, ptr %i.av, align 8, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 160
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !33

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %exitcond51.not.i = icmp eq i64 %indvars.iv.next49.i, 140
  br i1 %exitcond51.not.i, label %bb.f, label %.preheader40.i, !llvm.loop !34

bb.f:                                             ; preds = %middle.block
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, 150
  br i1 %exitcond55.not.i, label %.preheader.i, label %.preheader41.i, !llvm.loop !35

.preheader.i:                                     ; preds = %bb.f, %middle.block114
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %middle.block114 ], [ 0, %bb.f ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [1280 x i8], ptr %i.x, i64 %indvars.iv60.i
  %broadcast.splatinsert107 = insertelement <2 x i64> poison, i64 %indvars.iv60.i, i64 0
  %broadcast.splat108 = shufflevector <2 x i64> %broadcast.splatinsert107, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %.preheader.i
  %index110 = phi i64 [ 0, %.preheader.i ], [ %index.next112, %vector.body109 ] ; 2 uses
  %vec.ind111 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i ], [ %vec.ind.next113, %vector.body109 ] ; 2 uses
  %i.ax = mul nuw nsw <2 x i64> %vec.ind111, %broadcast.splat108
  %i.ay = trunc nuw nsw <2 x i64> %i.ax to <2 x i32>
  %i.az = urem <2 x i32> %i.ay, splat (i32 160)
  %i.ba = uitofp nneg <2 x i32> %i.az to <2 x double>
  %i.bb = fdiv <2 x double> %i.ba, splat (double 1.600000e+02)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index110
  store <2 x double> %i.bb, ptr %i.bc, align 8, !tbaa !17
  %index.next112 = add nuw i64 %index110, 2       ; 2 uses
  %vec.ind.next113 = add nuw nsw <2 x i64> %vec.ind111, splat (i64 2)
  %i.bd = icmp eq i64 %index.next112, 160
  br i1 %i.bd, label %middle.block114, label %vector.body109, !llvm.loop !36

middle.block114:                                  ; preds = %vector.body109
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next61.i, 160
  br i1 %exitcond63.not.i, label %.preheader37.us.us.i.preheader, label %.preheader.i, !llvm.loop !37

.preheader37.us.us.i.preheader:                   ; preds = %middle.block114
  %i.be = sub i64 %i.g, %i.s
  %invariant.op146 = add i64 %i.be, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.bo = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.bp = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 208
  %i.bs = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.bt = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.bu = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.bv = getelementptr inbounds nuw i8, ptr %i.r, i64 272
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 288
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 304
  %i.by = getelementptr inbounds nuw i8, ptr %i.r, i64 320
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 352
  %i.cb = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %i.cc = getelementptr inbounds nuw i8, ptr %i.r, i64 384
  %i.cd = getelementptr inbounds nuw i8, ptr %i.r, i64 400
  %i.ce = getelementptr inbounds nuw i8, ptr %i.r, i64 416
  %i.cf = getelementptr inbounds nuw i8, ptr %i.r, i64 432
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 464
  %i.ci = getelementptr inbounds nuw i8, ptr %i.r, i64 480
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  %i.cl = getelementptr inbounds nuw i8, ptr %i.r, i64 528
  %i.cm = getelementptr inbounds nuw i8, ptr %i.r, i64 544
  %i.cn = getelementptr inbounds nuw i8, ptr %i.r, i64 560
  %i.co = getelementptr inbounds nuw i8, ptr %i.r, i64 576
  %i.cp = getelementptr inbounds nuw i8, ptr %i.r, i64 592
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 608
  %i.cr = getelementptr inbounds nuw i8, ptr %i.r, i64 624
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 640
  %i.ct = getelementptr inbounds nuw i8, ptr %i.r, i64 656
  %i.cu = getelementptr inbounds nuw i8, ptr %i.r, i64 672
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 688
  %i.cw = getelementptr inbounds nuw i8, ptr %i.r, i64 704
  %i.cx = getelementptr inbounds nuw i8, ptr %i.r, i64 720
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 736
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 752
  %i.da = getelementptr inbounds nuw i8, ptr %i.r, i64 768
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 784
  %i.dc = getelementptr inbounds nuw i8, ptr %i.r, i64 800
  %i.dd = getelementptr inbounds nuw i8, ptr %i.r, i64 816
  %i.de = getelementptr inbounds nuw i8, ptr %i.r, i64 832
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 848
  %i.dg = getelementptr inbounds nuw i8, ptr %i.r, i64 864
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 880
  %i.di = getelementptr inbounds nuw i8, ptr %i.r, i64 896
  %i.dj = getelementptr inbounds nuw i8, ptr %i.r, i64 912
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 928
  %i.dl = getelementptr inbounds nuw i8, ptr %i.r, i64 944
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 960
  %i.dn = getelementptr inbounds nuw i8, ptr %i.r, i64 976
  %i.do = getelementptr inbounds nuw i8, ptr %i.r, i64 992
  %i.dp = getelementptr inbounds nuw i8, ptr %i.r, i64 1008
  %i.dq = getelementptr inbounds nuw i8, ptr %i.r, i64 1024
  %i.dr = getelementptr inbounds nuw i8, ptr %i.r, i64 1040
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 1056
  %i.dt = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  %i.du = getelementptr inbounds nuw i8, ptr %i.r, i64 1088
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 1104
  %i.dw = getelementptr inbounds nuw i8, ptr %i.r, i64 1120
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 1136
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 1152
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 1168
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 1184
  %i.eb = getelementptr inbounds nuw i8, ptr %i.r, i64 1200
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 1216
  %i.ed = getelementptr inbounds nuw i8, ptr %i.r, i64 1232
  %i.ee = getelementptr inbounds nuw i8, ptr %i.r, i64 1248
  %i.ef = getelementptr inbounds nuw i8, ptr %i.r, i64 1264
  br label %.preheader37.us.us.i

.preheader37.us.us.i:                             ; preds = %.preheader37.us.us.i.preheader, %._crit_edge43.split.us.split.us.us.us.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %._crit_edge43.split.us.split.us.us.us.i ], [ 0, %.preheader37.us.us.i.preheader ] ; 3 uses
  %i.eg = mul nuw nsw i64 %indvars.iv79.i, 179200
  %i.eh = getelementptr inbounds nuw [179200 x i8], ptr %i.f, i64 %indvars.iv79.i
  %invariant.op.reass = add i64 %i.eg, %invariant.op146
  br label %.preheader36.us.us.us.us.i

.preheader36.us.us.us.us.i:                       ; preds = %._crit_edge.us45.us.us.us.i, %.preheader37.us.us.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %._crit_edge.us45.us.us.us.i ], [ 0, %.preheader37.us.us.i ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [1280 x i8], ptr %i.eh, i64 %indvars.iv74.i ; 87 uses
  br label %.lr.ph.us.us.us.us.us.i

.lr.ph.us.us.us.us.us.i:                          ; preds = %._crit_edge.us.us.us.us.us.i, %.preheader36.us.us.us.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %._crit_edge.us.us.us.us.us.i ], [ 0, %.preheader36.us.us.us.us.i ] ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv64.i ; 3 uses
  store double 0.000000e+00, ptr %i.ej, align 8, !tbaa !17
  %invariant.gep.us.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv64.i ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.us.us.us.us.us.i
  %indvars.iv.i40 = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i ], [ %indvars.iv.next.i41.1, %bb.g ] ; 4 uses
  %i.ek = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.i ], [ %i.es, %bb.g ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.i40
  %i.em = load double, ptr %i.el, align 8, !tbaa !17
  %gep.us.us.us.us.us.i = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.i, i64 %indvars.iv.i40
  %i.en = load double, ptr %gep.us.us.us.us.us.i, align 8, !tbaa !17
  %i.eo = tail call double @llvm.fmuladd.f64(double %i.em, double %i.en, double %i.ek) ; 2 uses
  store double %i.eo, ptr %i.ej, align 8, !tbaa !17
  %indvars.iv.next.i41 = or disjoint i64 %indvars.iv.i40, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next.i41
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !17
  %gep.us.us.us.us.us.i.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.i, i64 %indvars.iv.next.i41
  %i.er = load double, ptr %gep.us.us.us.us.us.i.1, align 8, !tbaa !17
  %i.es = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.er, double %i.eo) ; 2 uses
  store double %i.es, ptr %i.ej, align 8, !tbaa !17
  %indvars.iv.next.i41.1 = add nuw nsw i64 %indvars.iv.i40, 2 ; 2 uses
  %exitcond.not.i42.1 = icmp eq i64 %indvars.iv.next.i41.1, 160
  br i1 %exitcond.not.i42.1, label %._crit_edge.us.us.us.us.us.i, label %bb.g, !llvm.loop !0

._crit_edge.us.us.us.us.us.i:                     ; preds = %bb.g
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, 160
  br i1 %exitcond68.not.i, label %vector.memcheck115, label %.lr.ph.us.us.us.us.us.i, !llvm.loop !1

vector.memcheck115:                               ; preds = %._crit_edge.us.us.us.us.us.i
  %2 = mul nuw nsw i64 %indvars.iv74.i, 1280
  %.reass = add i64 %2, %invariant.op.reass
  %diff.check116 = icmp ult i64 %.reass, 31
  br i1 %diff.check116, label %..preheader_crit_edge.split.us.us.us.us.us.i, label %vector.body119

vector.body119:                                   ; preds = %vector.memcheck115
  %wide.load = load <2 x double>, ptr %i.r, align 8, !tbaa !17
  %wide.load121 = load <2 x double>, ptr %i.bf, align 8, !tbaa !17
  %i.et = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store <2 x double> %wide.load, ptr %i.ei, align 8, !tbaa !17
  store <2 x double> %wide.load121, ptr %i.et, align 8, !tbaa !17
  %wide.load.1 = load <2 x double>, ptr %i.bg, align 8, !tbaa !17
  %wide.load121.1 = load <2 x double>, ptr %i.bh, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  store <2 x double> %wide.load.1, ptr %i.eu, align 8, !tbaa !17
  store <2 x double> %wide.load121.1, ptr %i.ev, align 8, !tbaa !17
  %wide.load.2 = load <2 x double>, ptr %i.bi, align 8, !tbaa !17
  %wide.load121.2 = load <2 x double>, ptr %i.bj, align 8, !tbaa !17
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  store <2 x double> %wide.load.2, ptr %i.ew, align 8, !tbaa !17
  store <2 x double> %wide.load121.2, ptr %i.ex, align 8, !tbaa !17
  %wide.load.3 = load <2 x double>, ptr %i.bk, align 8, !tbaa !17
  %wide.load121.3 = load <2 x double>, ptr %i.bl, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 96
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ei, i64 112
  store <2 x double> %wide.load.3, ptr %i.ey, align 8, !tbaa !17
  store <2 x double> %wide.load121.3, ptr %i.ez, align 8, !tbaa !17
  %wide.load.4 = load <2 x double>, ptr %i.bm, align 8, !tbaa !17
  %wide.load121.4 = load <2 x double>, ptr %i.bn, align 8, !tbaa !17
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ei, i64 128
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ei, i64 144
  store <2 x double> %wide.load.4, ptr %i.fa, align 8, !tbaa !17
  store <2 x double> %wide.load121.4, ptr %i.fb, align 8, !tbaa !17
  %wide.load.5 = load <2 x double>, ptr %i.bo, align 8, !tbaa !17
  %wide.load121.5 = load <2 x double>, ptr %i.bp, align 8, !tbaa !17
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ei, i64 160
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 176
  store <2 x double> %wide.load.5, ptr %i.fc, align 8, !tbaa !17
  store <2 x double> %wide.load121.5, ptr %i.fd, align 8, !tbaa !17
  %wide.load.6 = load <2 x double>, ptr %i.bq, align 8, !tbaa !17
  %wide.load121.6 = load <2 x double>, ptr %i.br, align 8, !tbaa !17
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 192
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ei, i64 208
  store <2 x double> %wide.load.6, ptr %i.fe, align 8, !tbaa !17
  store <2 x double> %wide.load121.6, ptr %i.ff, align 8, !tbaa !17
  %wide.load.7 = load <2 x double>, ptr %i.bs, align 8, !tbaa !17
  %wide.load121.7 = load <2 x double>, ptr %i.bt, align 8, !tbaa !17
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ei, i64 224
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ei, i64 240
  store <2 x double> %wide.load.7, ptr %i.fg, align 8, !tbaa !17
  store <2 x double> %wide.load121.7, ptr %i.fh, align 8, !tbaa !17
  %wide.load.8 = load <2 x double>, ptr %i.bu, align 8, !tbaa !17
  %wide.load121.8 = load <2 x double>, ptr %i.bv, align 8, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ei, i64 256
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ei, i64 272
  store <2 x double> %wide.load.8, ptr %i.fi, align 8, !tbaa !17
  store <2 x double> %wide.load121.8, ptr %i.fj, align 8, !tbaa !17
  %wide.load.9 = load <2 x double>, ptr %i.bw, align 8, !tbaa !17
  %wide.load121.9 = load <2 x double>, ptr %i.bx, align 8, !tbaa !17
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ei, i64 288
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ei, i64 304
  store <2 x double> %wide.load.9, ptr %i.fk, align 8, !tbaa !17
  store <2 x double> %wide.load121.9, ptr %i.fl, align 8, !tbaa !17
  %wide.load.10 = load <2 x double>, ptr %i.by, align 8, !tbaa !17
  %wide.load121.10 = load <2 x double>, ptr %i.bz, align 8, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ei, i64 320
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ei, i64 336
  store <2 x double> %wide.load.10, ptr %i.fm, align 8, !tbaa !17
  store <2 x double> %wide.load121.10, ptr %i.fn, align 8, !tbaa !17
  %wide.load.11 = load <2 x double>, ptr %i.ca, align 8, !tbaa !17
  %wide.load121.11 = load <2 x double>, ptr %i.cb, align 8, !tbaa !17
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ei, i64 352
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ei, i64 368
  store <2 x double> %wide.load.11, ptr %i.fo, align 8, !tbaa !17
  store <2 x double> %wide.load121.11, ptr %i.fp, align 8, !tbaa !17
  %wide.load.12 = load <2 x double>, ptr %i.cc, align 8, !tbaa !17
  %wide.load121.12 = load <2 x double>, ptr %i.cd, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ei, i64 384
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ei, i64 400
  store <2 x double> %wide.load.12, ptr %i.fq, align 8, !tbaa !17
  store <2 x double> %wide.load121.12, ptr %i.fr, align 8, !tbaa !17
  %wide.load.13 = load <2 x double>, ptr %i.ce, align 8, !tbaa !17
  %wide.load121.13 = load <2 x double>, ptr %i.cf, align 8, !tbaa !17
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ei, i64 416
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ei, i64 432
  store <2 x double> %wide.load.13, ptr %i.fs, align 8, !tbaa !17
  store <2 x double> %wide.load121.13, ptr %i.ft, align 8, !tbaa !17
  %wide.load.14 = load <2 x double>, ptr %i.cg, align 8, !tbaa !17
  %wide.load121.14 = load <2 x double>, ptr %i.ch, align 8, !tbaa !17
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ei, i64 448
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ei, i64 464
  store <2 x double> %wide.load.14, ptr %i.fu, align 8, !tbaa !17
  store <2 x double> %wide.load121.14, ptr %i.fv, align 8, !tbaa !17
  %wide.load.15 = load <2 x double>, ptr %i.ci, align 8, !tbaa !17
  %wide.load121.15 = load <2 x double>, ptr %i.cj, align 8, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ei, i64 480
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ei, i64 496
  store <2 x double> %wide.load.15, ptr %i.fw, align 8, !tbaa !17
  store <2 x double> %wide.load121.15, ptr %i.fx, align 8, !tbaa !17
  %wide.load.16 = load <2 x double>, ptr %i.ck, align 8, !tbaa !17
  %wide.load121.16 = load <2 x double>, ptr %i.cl, align 8, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ei, i64 512
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ei, i64 528
  store <2 x double> %wide.load.16, ptr %i.fy, align 8, !tbaa !17
  store <2 x double> %wide.load121.16, ptr %i.fz, align 8, !tbaa !17
  %wide.load.17 = load <2 x double>, ptr %i.cm, align 8, !tbaa !17
  %wide.load121.17 = load <2 x double>, ptr %i.cn, align 8, !tbaa !17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ei, i64 544
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ei, i64 560
  store <2 x double> %wide.load.17, ptr %i.ga, align 8, !tbaa !17
  store <2 x double> %wide.load121.17, ptr %i.gb, align 8, !tbaa !17
  %wide.load.18 = load <2 x double>, ptr %i.co, align 8, !tbaa !17
  %wide.load121.18 = load <2 x double>, ptr %i.cp, align 8, !tbaa !17
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ei, i64 576
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ei, i64 592
  store <2 x double> %wide.load.18, ptr %i.gc, align 8, !tbaa !17
  store <2 x double> %wide.load121.18, ptr %i.gd, align 8, !tbaa !17
  %wide.load.19 = load <2 x double>, ptr %i.cq, align 8, !tbaa !17
  %wide.load121.19 = load <2 x double>, ptr %i.cr, align 8, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ei, i64 608
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ei, i64 624
  store <2 x double> %wide.load.19, ptr %i.ge, align 8, !tbaa !17
  store <2 x double> %wide.load121.19, ptr %i.gf, align 8, !tbaa !17
  %wide.load.20 = load <2 x double>, ptr %i.cs, align 8, !tbaa !17
  %wide.load121.20 = load <2 x double>, ptr %i.ct, align 8, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ei, i64 640
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ei, i64 656
  store <2 x double> %wide.load.20, ptr %i.gg, align 8, !tbaa !17
  store <2 x double> %wide.load121.20, ptr %i.gh, align 8, !tbaa !17
  %wide.load.21 = load <2 x double>, ptr %i.cu, align 8, !tbaa !17
  %wide.load121.21 = load <2 x double>, ptr %i.cv, align 8, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ei, i64 672
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ei, i64 688
  store <2 x double> %wide.load.21, ptr %i.gi, align 8, !tbaa !17
  store <2 x double> %wide.load121.21, ptr %i.gj, align 8, !tbaa !17
  %wide.load.22 = load <2 x double>, ptr %i.cw, align 8, !tbaa !17
  %wide.load121.22 = load <2 x double>, ptr %i.cx, align 8, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ei, i64 704
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ei, i64 720
  store <2 x double> %wide.load.22, ptr %i.gk, align 8, !tbaa !17
  store <2 x double> %wide.load121.22, ptr %i.gl, align 8, !tbaa !17
  %wide.load.23 = load <2 x double>, ptr %i.cy, align 8, !tbaa !17
  %wide.load121.23 = load <2 x double>, ptr %i.cz, align 8, !tbaa !17
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ei, i64 736
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ei, i64 752
  store <2 x double> %wide.load.23, ptr %i.gm, align 8, !tbaa !17
  store <2 x double> %wide.load121.23, ptr %i.gn, align 8, !tbaa !17
  %wide.load.24 = load <2 x double>, ptr %i.da, align 8, !tbaa !17
  %wide.load121.24 = load <2 x double>, ptr %i.db, align 8, !tbaa !17
  %i.go = getelementptr inbounds nuw i8, ptr %i.ei, i64 768
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ei, i64 784
  store <2 x double> %wide.load.24, ptr %i.go, align 8, !tbaa !17
  store <2 x double> %wide.load121.24, ptr %i.gp, align 8, !tbaa !17
  %wide.load.25 = load <2 x double>, ptr %i.dc, align 8, !tbaa !17
  %wide.load121.25 = load <2 x double>, ptr %i.dd, align 8, !tbaa !17
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ei, i64 800
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ei, i64 816
  store <2 x double> %wide.load.25, ptr %i.gq, align 8, !tbaa !17
  store <2 x double> %wide.load121.25, ptr %i.gr, align 8, !tbaa !17
  %wide.load.26 = load <2 x double>, ptr %i.de, align 8, !tbaa !17
  %wide.load121.26 = load <2 x double>, ptr %i.df, align 8, !tbaa !17
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ei, i64 832
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ei, i64 848
  store <2 x double> %wide.load.26, ptr %i.gs, align 8, !tbaa !17
  store <2 x double> %wide.load121.26, ptr %i.gt, align 8, !tbaa !17
  %wide.load.27 = load <2 x double>, ptr %i.dg, align 8, !tbaa !17
  %wide.load121.27 = load <2 x double>, ptr %i.dh, align 8, !tbaa !17
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ei, i64 864
  %i.gv = getelementptr inbounds nuw i8, ptr %i.ei, i64 880
  store <2 x double> %wide.load.27, ptr %i.gu, align 8, !tbaa !17
  store <2 x double> %wide.load121.27, ptr %i.gv, align 8, !tbaa !17
  %wide.load.28 = load <2 x double>, ptr %i.di, align 8, !tbaa !17
  %wide.load121.28 = load <2 x double>, ptr %i.dj, align 8, !tbaa !17
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ei, i64 896
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ei, i64 912
  store <2 x double> %wide.load.28, ptr %i.gw, align 8, !tbaa !17
  store <2 x double> %wide.load121.28, ptr %i.gx, align 8, !tbaa !17
  %wide.load.29 = load <2 x double>, ptr %i.dk, align 8, !tbaa !17
  %wide.load121.29 = load <2 x double>, ptr %i.dl, align 8, !tbaa !17
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ei, i64 928
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ei, i64 944
  store <2 x double> %wide.load.29, ptr %i.gy, align 8, !tbaa !17
  store <2 x double> %wide.load121.29, ptr %i.gz, align 8, !tbaa !17
  %wide.load.30 = load <2 x double>, ptr %i.dm, align 8, !tbaa !17
  %wide.load121.30 = load <2 x double>, ptr %i.dn, align 8, !tbaa !17
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ei, i64 960
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ei, i64 976
  store <2 x double> %wide.load.30, ptr %i.ha, align 8, !tbaa !17
  store <2 x double> %wide.load121.30, ptr %i.hb, align 8, !tbaa !17
  %wide.load.31 = load <2 x double>, ptr %i.do, align 8, !tbaa !17
  %wide.load121.31 = load <2 x double>, ptr %i.dp, align 8, !tbaa !17
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ei, i64 992
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ei, i64 1008
  store <2 x double> %wide.load.31, ptr %i.hc, align 8, !tbaa !17
  store <2 x double> %wide.load121.31, ptr %i.hd, align 8, !tbaa !17
  %wide.load.32 = load <2 x double>, ptr %i.dq, align 8, !tbaa !17
  %wide.load121.32 = load <2 x double>, ptr %i.dr, align 8, !tbaa !17
  %i.he = getelementptr inbounds nuw i8, ptr %i.ei, i64 1024
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ei, i64 1040
  store <2 x double> %wide.load.32, ptr %i.he, align 8, !tbaa !17
  store <2 x double> %wide.load121.32, ptr %i.hf, align 8, !tbaa !17
  %wide.load.33 = load <2 x double>, ptr %i.ds, align 8, !tbaa !17
  %wide.load121.33 = load <2 x double>, ptr %i.dt, align 8, !tbaa !17
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ei, i64 1056
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ei, i64 1072
  store <2 x double> %wide.load.33, ptr %i.hg, align 8, !tbaa !17
  store <2 x double> %wide.load121.33, ptr %i.hh, align 8, !tbaa !17
  %wide.load.34 = load <2 x double>, ptr %i.du, align 8, !tbaa !17
  %wide.load121.34 = load <2 x double>, ptr %i.dv, align 8, !tbaa !17
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ei, i64 1088
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ei, i64 1104
  store <2 x double> %wide.load.34, ptr %i.hi, align 8, !tbaa !17
  store <2 x double> %wide.load121.34, ptr %i.hj, align 8, !tbaa !17
  %wide.load.35 = load <2 x double>, ptr %i.dw, align 8, !tbaa !17
  %wide.load121.35 = load <2 x double>, ptr %i.dx, align 8, !tbaa !17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ei, i64 1120
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ei, i64 1136
  store <2 x double> %wide.load.35, ptr %i.hk, align 8, !tbaa !17
  store <2 x double> %wide.load121.35, ptr %i.hl, align 8, !tbaa !17
  %wide.load.36 = load <2 x double>, ptr %i.dy, align 8, !tbaa !17
  %wide.load121.36 = load <2 x double>, ptr %i.dz, align 8, !tbaa !17
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ei, i64 1152
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ei, i64 1168
  store <2 x double> %wide.load.36, ptr %i.hm, align 8, !tbaa !17
  store <2 x double> %wide.load121.36, ptr %i.hn, align 8, !tbaa !17
  %wide.load.37 = load <2 x double>, ptr %i.ea, align 8, !tbaa !17
  %wide.load121.37 = load <2 x double>, ptr %i.eb, align 8, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ei, i64 1184
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ei, i64 1200
  store <2 x double> %wide.load.37, ptr %i.ho, align 8, !tbaa !17
  store <2 x double> %wide.load121.37, ptr %i.hp, align 8, !tbaa !17
  %wide.load.38 = load <2 x double>, ptr %i.ec, align 8, !tbaa !17
  %wide.load121.38 = load <2 x double>, ptr %i.ed, align 8, !tbaa !17
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ei, i64 1216
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ei, i64 1232
  store <2 x double> %wide.load.38, ptr %i.hq, align 8, !tbaa !17
  store <2 x double> %wide.load121.38, ptr %i.hr, align 8, !tbaa !17
  %wide.load.39 = load <2 x double>, ptr %i.ee, align 8, !tbaa !17
  %wide.load121.39 = load <2 x double>, ptr %i.ef, align 8, !tbaa !17
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ei, i64 1248
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ei, i64 1264
  store <2 x double> %wide.load.39, ptr %i.hs, align 8, !tbaa !17
  store <2 x double> %wide.load121.39, ptr %i.ht, align 8, !tbaa !17
  br label %._crit_edge.us45.us.us.us.i

..preheader_crit_edge.split.us.us.us.us.us.i:     ; preds = %vector.memcheck115, %..preheader_crit_edge.split.us.us.us.us.us.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i.4, %..preheader_crit_edge.split.us.us.us.us.us.i ], [ 0, %vector.memcheck115 ] ; 7 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv69.i
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !17
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv69.i
  store double %i.hv, ptr %i.hw, align 8, !tbaa !17
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next70.i
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !17
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next70.i
  store double %i.hy, ptr %i.hz, align 8, !tbaa !17
  %indvars.iv.next70.i.1 = add nuw nsw i64 %indvars.iv69.i, 2 ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next70.i.1
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !17
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next70.i.1
  store double %i.ib, ptr %i.ic, align 8, !tbaa !17
  %indvars.iv.next70.i.2 = add nuw nsw i64 %indvars.iv69.i, 3 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next70.i.2
  %i.ie = load double, ptr %i.id, align 8, !tbaa !17
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next70.i.2
  store double %i.ie, ptr %i.if, align 8, !tbaa !17
  %indvars.iv.next70.i.3 = add nuw nsw i64 %indvars.iv69.i, 4 ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next70.i.3
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !17
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv.next70.i.3
  store double %i.ih, ptr %i.ii, align 8, !tbaa !17
  %indvars.iv.next70.i.4 = add nuw nsw i64 %indvars.iv69.i, 5 ; 2 uses
  %exitcond73.not.i.4 = icmp eq i64 %indvars.iv.next70.i.4, 160
  br i1 %exitcond73.not.i.4, label %._crit_edge.us45.us.us.us.i, label %..preheader_crit_edge.split.us.us.us.us.us.i, !llvm.loop !38

._crit_edge.us45.us.us.us.i:                      ; preds = %..preheader_crit_edge.split.us.us.us.us.us.i, %vector.body119
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, 140
  br i1 %exitcond78.not.i, label %._crit_edge43.split.us.split.us.us.us.i, label %.preheader36.us.us.us.us.i, !llvm.loop !2

._crit_edge43.split.us.split.us.us.us.i:          ; preds = %._crit_edge.us45.us.us.us.i
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, 150
  br i1 %exitcond83.not.i, label %.preheader37.us.us.i43.preheader, label %.preheader37.us.us.i, !llvm.loop !3

.preheader37.us.us.i43.preheader:                 ; preds = %._crit_edge43.split.us.split.us.us.us.i
  %i.ij = sub i64 %i.m, %i.s
  %invariant.op148 = add i64 %i.ij, -1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.il = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.im = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.io = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.ip = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.iq = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.ir = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.is = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.it = getelementptr inbounds nuw i8, ptr %i.r, i64 160
  %i.iu = getelementptr inbounds nuw i8, ptr %i.r, i64 176
  %i.iv = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.iw = getelementptr inbounds nuw i8, ptr %i.r, i64 208
  %i.ix = getelementptr inbounds nuw i8, ptr %i.r, i64 224
  %i.iy = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.iz = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.ja = getelementptr inbounds nuw i8, ptr %i.r, i64 272
  %i.jb = getelementptr inbounds nuw i8, ptr %i.r, i64 288
  %i.jc = getelementptr inbounds nuw i8, ptr %i.r, i64 304
  %i.jd = getelementptr inbounds nuw i8, ptr %i.r, i64 320
  %i.je = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  %i.jf = getelementptr inbounds nuw i8, ptr %i.r, i64 352
  %i.jg = getelementptr inbounds nuw i8, ptr %i.r, i64 368
  %i.jh = getelementptr inbounds nuw i8, ptr %i.r, i64 384
  %i.ji = getelementptr inbounds nuw i8, ptr %i.r, i64 400
  %i.jj = getelementptr inbounds nuw i8, ptr %i.r, i64 416
  %i.jk = getelementptr inbounds nuw i8, ptr %i.r, i64 432
  %i.jl = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  %i.jm = getelementptr inbounds nuw i8, ptr %i.r, i64 464
  %i.jn = getelementptr inbounds nuw i8, ptr %i.r, i64 480
  %i.jo = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.jp = getelementptr inbounds nuw i8, ptr %i.r, i64 512
  %i.jq = getelementptr inbounds nuw i8, ptr %i.r, i64 528
  %i.jr = getelementptr inbounds nuw i8, ptr %i.r, i64 544
  %i.js = getelementptr inbounds nuw i8, ptr %i.r, i64 560
  %i.jt = getelementptr inbounds nuw i8, ptr %i.r, i64 576
  %i.ju = getelementptr inbounds nuw i8, ptr %i.r, i64 592
  %i.jv = getelementptr inbounds nuw i8, ptr %i.r, i64 608
  %i.jw = getelementptr inbounds nuw i8, ptr %i.r, i64 624
  %i.jx = getelementptr inbounds nuw i8, ptr %i.r, i64 640
  %i.jy = getelementptr inbounds nuw i8, ptr %i.r, i64 656
  %i.jz = getelementptr inbounds nuw i8, ptr %i.r, i64 672
  %i.ka = getelementptr inbounds nuw i8, ptr %i.r, i64 688
  %i.kb = getelementptr inbounds nuw i8, ptr %i.r, i64 704
  %i.kc = getelementptr inbounds nuw i8, ptr %i.r, i64 720
  %i.kd = getelementptr inbounds nuw i8, ptr %i.r, i64 736
  %i.ke = getelementptr inbounds nuw i8, ptr %i.r, i64 752
  %i.kf = getelementptr inbounds nuw i8, ptr %i.r, i64 768
  %i.kg = getelementptr inbounds nuw i8, ptr %i.r, i64 784
  %i.kh = getelementptr inbounds nuw i8, ptr %i.r, i64 800
  %i.ki = getelementptr inbounds nuw i8, ptr %i.r, i64 816
  %i.kj = getelementptr inbounds nuw i8, ptr %i.r, i64 832
  %i.kk = getelementptr inbounds nuw i8, ptr %i.r, i64 848
  %i.kl = getelementptr inbounds nuw i8, ptr %i.r, i64 864
  %i.km = getelementptr inbounds nuw i8, ptr %i.r, i64 880
  %i.kn = getelementptr inbounds nuw i8, ptr %i.r, i64 896
  %i.ko = getelementptr inbounds nuw i8, ptr %i.r, i64 912
  %i.kp = getelementptr inbounds nuw i8, ptr %i.r, i64 928
  %i.kq = getelementptr inbounds nuw i8, ptr %i.r, i64 944
  %i.kr = getelementptr inbounds nuw i8, ptr %i.r, i64 960
  %i.ks = getelementptr inbounds nuw i8, ptr %i.r, i64 976
  %i.kt = getelementptr inbounds nuw i8, ptr %i.r, i64 992
  %i.ku = getelementptr inbounds nuw i8, ptr %i.r, i64 1008
  %i.kv = getelementptr inbounds nuw i8, ptr %i.r, i64 1024
  %i.kw = getelementptr inbounds nuw i8, ptr %i.r, i64 1040
  %i.kx = getelementptr inbounds nuw i8, ptr %i.r, i64 1056
  %i.ky = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  %i.kz = getelementptr inbounds nuw i8, ptr %i.r, i64 1088
  %i.la = getelementptr inbounds nuw i8, ptr %i.r, i64 1104
  %i.lb = getelementptr inbounds nuw i8, ptr %i.r, i64 1120
  %i.lc = getelementptr inbounds nuw i8, ptr %i.r, i64 1136
  %i.ld = getelementptr inbounds nuw i8, ptr %i.r, i64 1152
  %i.le = getelementptr inbounds nuw i8, ptr %i.r, i64 1168
  %i.lf = getelementptr inbounds nuw i8, ptr %i.r, i64 1184
  %i.lg = getelementptr inbounds nuw i8, ptr %i.r, i64 1200
  %i.lh = getelementptr inbounds nuw i8, ptr %i.r, i64 1216
  %i.li = getelementptr inbounds nuw i8, ptr %i.r, i64 1232
  %i.lj = getelementptr inbounds nuw i8, ptr %i.r, i64 1248
  %i.lk = getelementptr inbounds nuw i8, ptr %i.r, i64 1264
  br label %.preheader37.us.us.i43

.preheader37.us.us.i43:                           ; preds = %.preheader37.us.us.i43.preheader, %._crit_edge43.split.us.split.us.us.us.i64
  %indvars.iv79.i44 = phi i64 [ %indvars.iv.next80.i65, %._crit_edge43.split.us.split.us.us.us.i64 ], [ 0, %.preheader37.us.us.i43.preheader ] ; 3 uses
  %i.ll = mul nuw nsw i64 %indvars.iv79.i44, 179200
  %i.lm = getelementptr inbounds nuw [179200 x i8], ptr %i.l, i64 %indvars.iv79.i44
  %invariant.op.reass149 = add i64 %i.ll, %invariant.op148
  br label %.preheader36.us.us.us.us.i45

.preheader36.us.us.us.us.i45:                     ; preds = %._crit_edge.us45.us.us.us.i61, %.preheader37.us.us.i43
  %indvars.iv74.i46 = phi i64 [ %indvars.iv.next75.i62, %._crit_edge.us45.us.us.us.i61 ], [ 0, %.preheader37.us.us.i43 ] ; 3 uses
  %i.ln = getelementptr inbounds nuw [1280 x i8], ptr %i.lm, i64 %indvars.iv74.i46 ; 87 uses
  br label %.lr.ph.us.us.us.us.us.i47

.lr.ph.us.us.us.us.us.i47:                        ; preds = %._crit_edge.us.us.us.us.us.i54, %.preheader36.us.us.us.us.i45
  %indvars.iv64.i48 = phi i64 [ %indvars.iv.next65.i55, %._crit_edge.us.us.us.us.us.i54 ], [ 0, %.preheader36.us.us.us.us.i45 ] ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv64.i48 ; 3 uses
  store double 0.000000e+00, ptr %i.lo, align 8, !tbaa !17
  %invariant.gep.us.us.us.us.us.i49 = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv64.i48 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.us.us.us.us.us.i47
  %indvars.iv.i50 = phi i64 [ 0, %.lr.ph.us.us.us.us.us.i47 ], [ %indvars.iv.next.i52.1, %bb.h ] ; 4 uses
  %i.lp = phi double [ 0.000000e+00, %.lr.ph.us.us.us.us.us.i47 ], [ %i.lz, %bb.h ]
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.i50
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !17
  %gep.us.us.us.us.us.i51 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.i49, i64 %indvars.iv.i50
  %i.ls = load double, ptr %gep.us.us.us.us.us.i51, align 8, !tbaa !17
  %i.lt = fmul double %i.lr, %i.ls
  %i.lu = fadd double %i.lp, %i.lt                ; 2 uses
  store double %i.lu, ptr %i.lo, align 8, !tbaa !17
  %indvars.iv.next.i52 = or disjoint i64 %indvars.iv.i50, 1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %indvars.iv.next.i52
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !17
  %gep.us.us.us.us.us.i51.1 = getelementptr inbounds nuw [1280 x i8], ptr %invariant.gep.us.us.us.us.us.i49, i64 %indvars.iv.next.i52
  %i.lx = load double, ptr %gep.us.us.us.us.us.i51.1, align 8, !tbaa !17
  %i.ly = fmul double %i.lw, %i.lx
  %i.lz = fadd double %i.lu, %i.ly                ; 2 uses
  store double %i.lz, ptr %i.lo, align 8, !tbaa !17
  %indvars.iv.next.i52.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %exitcond.not.i53.1 = icmp eq i64 %indvars.iv.next.i52.1, 160
  br i1 %exitcond.not.i53.1, label %._crit_edge.us.us.us.us.us.i54, label %bb.h, !llvm.loop !4

._crit_edge.us.us.us.us.us.i54:                   ; preds = %bb.h
  %indvars.iv.next65.i55 = add nuw nsw i64 %indvars.iv64.i48, 1 ; 2 uses
  %exitcond68.not.i56 = icmp eq i64 %indvars.iv.next65.i55, 160
  br i1 %exitcond68.not.i56, label %vector.memcheck124, label %.lr.ph.us.us.us.us.us.i47, !llvm.loop !5

vector.memcheck124:                               ; preds = %._crit_edge.us.us.us.us.us.i54
  %3 = mul nuw nsw i64 %indvars.iv74.i46, 1280
  %.reass147 = add i64 %3, %invariant.op.reass149
  %diff.check125 = icmp ult i64 %.reass147, 31
  br i1 %diff.check125, label %..preheader_crit_edge.split.us.us.us.us.us.i57, label %vector.body128

vector.body128:                                   ; preds = %vector.memcheck124
  %wide.load130 = load <2 x double>, ptr %i.r, align 8, !tbaa !17
  %wide.load131 = load <2 x double>, ptr %i.ik, align 8, !tbaa !17
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store <2 x double> %wide.load130, ptr %i.ln, align 8, !tbaa !17
  store <2 x double> %wide.load131, ptr %i.ma, align 8, !tbaa !17
  %wide.load130.1 = load <2 x double>, ptr %i.il, align 8, !tbaa !17
  %wide.load131.1 = load <2 x double>, ptr %i.im, align 8, !tbaa !17
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  store <2 x double> %wide.load130.1, ptr %i.mb, align 8, !tbaa !17
  store <2 x double> %wide.load131.1, ptr %i.mc, align 8, !tbaa !17
  %wide.load130.2 = load <2 x double>, ptr %i.in, align 8, !tbaa !17
  %wide.load131.2 = load <2 x double>, ptr %i.io, align 8, !tbaa !17
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %i.ln, i64 80
  store <2 x double> %wide.load130.2, ptr %i.md, align 8, !tbaa !17
  store <2 x double> %wide.load131.2, ptr %i.me, align 8, !tbaa !17
  %wide.load130.3 = load <2 x double>, ptr %i.ip, align 8, !tbaa !17
  %wide.load131.3 = load <2 x double>, ptr %i.iq, align 8, !tbaa !17
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ln, i64 96
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ln, i64 112
  store <2 x double> %wide.load130.3, ptr %i.mf, align 8, !tbaa !17
  store <2 x double> %wide.load131.3, ptr %i.mg, align 8, !tbaa !17
  %wide.load130.4 = load <2 x double>, ptr %i.ir, align 8, !tbaa !17
  %wide.load131.4 = load <2 x double>, ptr %i.is, align 8, !tbaa !17
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ln, i64 128
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ln, i64 144
  store <2 x double> %wide.load130.4, ptr %i.mh, align 8, !tbaa !17
  store <2 x double> %wide.load131.4, ptr %i.mi, align 8, !tbaa !17
  %wide.load130.5 = load <2 x double>, ptr %i.it, align 8, !tbaa !17
  %wide.load131.5 = load <2 x double>, ptr %i.iu, align 8, !tbaa !17
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ln, i64 160
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ln, i64 176
  store <2 x double> %wide.load130.5, ptr %i.mj, align 8, !tbaa !17
  store <2 x double> %wide.load131.5, ptr %i.mk, align 8, !tbaa !17
  %wide.load130.6 = load <2 x double>, ptr %i.iv, align 8, !tbaa !17
  %wide.load131.6 = load <2 x double>, ptr %i.iw, align 8, !tbaa !17
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ln, i64 192
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ln, i64 208
  store <2 x double> %wide.load130.6, ptr %i.ml, align 8, !tbaa !17
  store <2 x double> %wide.load131.6, ptr %i.mm, align 8, !tbaa !17
  %wide.load130.7 = load <2 x double>, ptr %i.ix, align 8, !tbaa !17
  %wide.load131.7 = load <2 x double>, ptr %i.iy, align 8, !tbaa !17
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ln, i64 224
  %i.mo = getelementptr inbounds nuw i8, ptr %i.ln, i64 240
  store <2 x double> %wide.load130.7, ptr %i.mn, align 8, !tbaa !17
  store <2 x double> %wide.load131.7, ptr %i.mo, align 8, !tbaa !17
  %wide.load130.8 = load <2 x double>, ptr %i.iz, align 8, !tbaa !17
  %wide.load131.8 = load <2 x double>, ptr %i.ja, align 8, !tbaa !17
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ln, i64 256
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ln, i64 272
  store <2 x double> %wide.load130.8, ptr %i.mp, align 8, !tbaa !17
  store <2 x double> %wide.load131.8, ptr %i.mq, align 8, !tbaa !17
  %wide.load130.9 = load <2 x double>, ptr %i.jb, align 8, !tbaa !17
  %wide.load131.9 = load <2 x double>, ptr %i.jc, align 8, !tbaa !17
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ln, i64 288
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ln, i64 304
  store <2 x double> %wide.load130.9, ptr %i.mr, align 8, !tbaa !17
  store <2 x double> %wide.load131.9, ptr %i.ms, align 8, !tbaa !17
  %wide.load130.10 = load <2 x double>, ptr %i.jd, align 8, !tbaa !17
  %wide.load131.10 = load <2 x double>, ptr %i.je, align 8, !tbaa !17
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ln, i64 320
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ln, i64 336
  store <2 x double> %wide.load130.10, ptr %i.mt, align 8, !tbaa !17
  store <2 x double> %wide.load131.10, ptr %i.mu, align 8, !tbaa !17
  %wide.load130.11 = load <2 x double>, ptr %i.jf, align 8, !tbaa !17
  %wide.load131.11 = load <2 x double>, ptr %i.jg, align 8, !tbaa !17
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ln, i64 352
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ln, i64 368
  store <2 x double> %wide.load130.11, ptr %i.mv, align 8, !tbaa !17
  store <2 x double> %wide.load131.11, ptr %i.mw, align 8, !tbaa !17
  %wide.load130.12 = load <2 x double>, ptr %i.jh, align 8, !tbaa !17
  %wide.load131.12 = load <2 x double>, ptr %i.ji, align 8, !tbaa !17
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ln, i64 384
  %i.my = getelementptr inbounds nuw i8, ptr %i.ln, i64 400
  store <2 x double> %wide.load130.12, ptr %i.mx, align 8, !tbaa !17
  store <2 x double> %wide.load131.12, ptr %i.my, align 8, !tbaa !17
  %wide.load130.13 = load <2 x double>, ptr %i.jj, align 8, !tbaa !17
  %wide.load131.13 = load <2 x double>, ptr %i.jk, align 8, !tbaa !17
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ln, i64 416
  %i.na = getelementptr inbounds nuw i8, ptr %i.ln, i64 432
  store <2 x double> %wide.load130.13, ptr %i.mz, align 8, !tbaa !17
  store <2 x double> %wide.load131.13, ptr %i.na, align 8, !tbaa !17
  %wide.load130.14 = load <2 x double>, ptr %i.jl, align 8, !tbaa !17
  %wide.load131.14 = load <2 x double>, ptr %i.jm, align 8, !tbaa !17
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ln, i64 448
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ln, i64 464
  store <2 x double> %wide.load130.14, ptr %i.nb, align 8, !tbaa !17
  store <2 x double> %wide.load131.14, ptr %i.nc, align 8, !tbaa !17
  %wide.load130.15 = load <2 x double>, ptr %i.jn, align 8, !tbaa !17
  %wide.load131.15 = load <2 x double>, ptr %i.jo, align 8, !tbaa !17
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ln, i64 480
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ln, i64 496
  store <2 x double> %wide.load130.15, ptr %i.nd, align 8, !tbaa !17
  store <2 x double> %wide.load131.15, ptr %i.ne, align 8, !tbaa !17
  %wide.load130.16 = load <2 x double>, ptr %i.jp, align 8, !tbaa !17
  %wide.load131.16 = load <2 x double>, ptr %i.jq, align 8, !tbaa !17
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ln, i64 512
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ln, i64 528
  store <2 x double> %wide.load130.16, ptr %i.nf, align 8, !tbaa !17
  store <2 x double> %wide.load131.16, ptr %i.ng, align 8, !tbaa !17
  %wide.load130.17 = load <2 x double>, ptr %i.jr, align 8, !tbaa !17
  %wide.load131.17 = load <2 x double>, ptr %i.js, align 8, !tbaa !17
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ln, i64 544
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ln, i64 560
  store <2 x double> %wide.load130.17, ptr %i.nh, align 8, !tbaa !17
  store <2 x double> %wide.load131.17, ptr %i.ni, align 8, !tbaa !17
  %wide.load130.18 = load <2 x double>, ptr %i.jt, align 8, !tbaa !17
  %wide.load131.18 = load <2 x double>, ptr %i.ju, align 8, !tbaa !17
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ln, i64 576
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ln, i64 592
  store <2 x double> %wide.load130.18, ptr %i.nj, align 8, !tbaa !17
  store <2 x double> %wide.load131.18, ptr %i.nk, align 8, !tbaa !17
  %wide.load130.19 = load <2 x double>, ptr %i.jv, align 8, !tbaa !17
  %wide.load131.19 = load <2 x double>, ptr %i.jw, align 8, !tbaa !17
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ln, i64 608
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ln, i64 624
  store <2 x double> %wide.load130.19, ptr %i.nl, align 8, !tbaa !17
  store <2 x double> %wide.load131.19, ptr %i.nm, align 8, !tbaa !17
  %wide.load130.20 = load <2 x double>, ptr %i.jx, align 8, !tbaa !17
  %wide.load131.20 = load <2 x double>, ptr %i.jy, align 8, !tbaa !17
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ln, i64 640
  %i.no = getelementptr inbounds nuw i8, ptr %i.ln, i64 656
  store <2 x double> %wide.load130.20, ptr %i.nn, align 8, !tbaa !17
  store <2 x double> %wide.load131.20, ptr %i.no, align 8, !tbaa !17
  %wide.load130.21 = load <2 x double>, ptr %i.jz, align 8, !tbaa !17
  %wide.load131.21 = load <2 x double>, ptr %i.ka, align 8, !tbaa !17
  %i.np = getelementptr inbounds nuw i8, ptr %i.ln, i64 672
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ln, i64 688
  store <2 x double> %wide.load130.21, ptr %i.np, align 8, !tbaa !17
  store <2 x double> %wide.load131.21, ptr %i.nq, align 8, !tbaa !17
  %wide.load130.22 = load <2 x double>, ptr %i.kb, align 8, !tbaa !17
  %wide.load131.22 = load <2 x double>, ptr %i.kc, align 8, !tbaa !17
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ln, i64 704
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ln, i64 720
  store <2 x double> %wide.load130.22, ptr %i.nr, align 8, !tbaa !17
  store <2 x double> %wide.load131.22, ptr %i.ns, align 8, !tbaa !17
  %wide.load130.23 = load <2 x double>, ptr %i.kd, align 8, !tbaa !17
  %wide.load131.23 = load <2 x double>, ptr %i.ke, align 8, !tbaa !17
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ln, i64 736
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ln, i64 752
  store <2 x double> %wide.load130.23, ptr %i.nt, align 8, !tbaa !17
  store <2 x double> %wide.load131.23, ptr %i.nu, align 8, !tbaa !17
  %wide.load130.24 = load <2 x double>, ptr %i.kf, align 8, !tbaa !17
  %wide.load131.24 = load <2 x double>, ptr %i.kg, align 8, !tbaa !17
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ln, i64 768
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ln, i64 784
  store <2 x double> %wide.load130.24, ptr %i.nv, align 8, !tbaa !17
  store <2 x double> %wide.load131.24, ptr %i.nw, align 8, !tbaa !17
  %wide.load130.25 = load <2 x double>, ptr %i.kh, align 8, !tbaa !17
  %wide.load131.25 = load <2 x double>, ptr %i.ki, align 8, !tbaa !17
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ln, i64 800
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ln, i64 816
  store <2 x double> %wide.load130.25, ptr %i.nx, align 8, !tbaa !17
  store <2 x double> %wide.load131.25, ptr %i.ny, align 8, !tbaa !17
  %wide.load130.26 = load <2 x double>, ptr %i.kj, align 8, !tbaa !17
  %wide.load131.26 = load <2 x double>, ptr %i.kk, align 8, !tbaa !17
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ln, i64 832
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ln, i64 848
  store <2 x double> %wide.load130.26, ptr %i.nz, align 8, !tbaa !17
  store <2 x double> %wide.load131.26, ptr %i.oa, align 8, !tbaa !17
  %wide.load130.27 = load <2 x double>, ptr %i.kl, align 8, !tbaa !17
  %wide.load131.27 = load <2 x double>, ptr %i.km, align 8, !tbaa !17
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ln, i64 864
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ln, i64 880
  store <2 x double> %wide.load130.27, ptr %i.ob, align 8, !tbaa !17
  store <2 x double> %wide.load131.27, ptr %i.oc, align 8, !tbaa !17
  %wide.load130.28 = load <2 x double>, ptr %i.kn, align 8, !tbaa !17
  %wide.load131.28 = load <2 x double>, ptr %i.ko, align 8, !tbaa !17
  %i.od = getelementptr inbounds nuw i8, ptr %i.ln, i64 896
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ln, i64 912
  store <2 x double> %wide.load130.28, ptr %i.od, align 8, !tbaa !17
  store <2 x double> %wide.load131.28, ptr %i.oe, align 8, !tbaa !17
  %wide.load130.29 = load <2 x double>, ptr %i.kp, align 8, !tbaa !17
  %wide.load131.29 = load <2 x double>, ptr %i.kq, align 8, !tbaa !17
  %i.of = getelementptr inbounds nuw i8, ptr %i.ln, i64 928
  %i.og = getelementptr inbounds nuw i8, ptr %i.ln, i64 944
  store <2 x double> %wide.load130.29, ptr %i.of, align 8, !tbaa !17
  store <2 x double> %wide.load131.29, ptr %i.og, align 8, !tbaa !17
  %wide.load130.30 = load <2 x double>, ptr %i.kr, align 8, !tbaa !17
  %wide.load131.30 = load <2 x double>, ptr %i.ks, align 8, !tbaa !17
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ln, i64 960
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ln, i64 976
  store <2 x double> %wide.load130.30, ptr %i.oh, align 8, !tbaa !17
  store <2 x double> %wide.load131.30, ptr %i.oi, align 8, !tbaa !17
  %wide.load130.31 = load <2 x double>, ptr %i.kt, align 8, !tbaa !17
  %wide.load131.31 = load <2 x double>, ptr %i.ku, align 8, !tbaa !17
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ln, i64 992
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ln, i64 1008
  store <2 x double> %wide.load130.31, ptr %i.oj, align 8, !tbaa !17
  store <2 x double> %wide.load131.31, ptr %i.ok, align 8, !tbaa !17
  %wide.load130.32 = load <2 x double>, ptr %i.kv, align 8, !tbaa !17
  %wide.load131.32 = load <2 x double>, ptr %i.kw, align 8, !tbaa !17
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ln, i64 1024
  %i.om = getelementptr inbounds nuw i8, ptr %i.ln, i64 1040
end_hunk_0
