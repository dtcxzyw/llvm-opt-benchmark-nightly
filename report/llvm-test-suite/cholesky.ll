inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
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
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #15
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #16 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 32000000) #15
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 14 uses
  %i.f = ptrtoaddr ptr %i.e to i64                ; 3 uses
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.j = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #16 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #15
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10   ; 12 uses
  %i.m = ptrtoaddr ptr %i.l to i64                ; 3 uses
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp ne i32 %i.k, 0
  %or.cond.i.i14 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i14, label %bb.c, label %polybench_alloc_data.exit15

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.p) #16 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit15:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.r = sub i64 %i.m, %i.f                       ; 2 uses
  %diff.check99 = icmp ult i64 %i.r, 16
  %diff.check = icmp ult i64 %i.r, 32
  br label %.preheader87.i

.preheader87.i:                                   ; preds = %._crit_edge.i, %polybench_alloc_data.exit15
  %indvars.iv109.i = phi i64 [ 0, %polybench_alloc_data.exit15 ], [ %indvars.iv.next110.i, %._crit_edge.i ] ; 8 uses
  %indvars.iv103.i = phi i64 [ 1, %polybench_alloc_data.exit15 ], [ %indvars.iv.next104.i, %._crit_edge.i ] ; 9 uses
  %2 = sub nsw i64 1999, %indvars.iv109.i         ; 3 uses
  %i.s = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv109.i ; 11 uses
  %i.t = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv109.i ; 11 uses
  %min.iters.check101 = icmp samesign ult i64 %indvars.iv103.i, 2
  %or.cond = or i1 %min.iters.check101, %diff.check99
  br i1 %or.cond, label %scalar.ph100.preheader, label %vector.ph102

vector.ph102:                                     ; preds = %.preheader87.i
  %n.vec104 = and i64 %indvars.iv103.i, 9223372036854775806 ; 3 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next107, %vector.body105 ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph102 ], [ %vec.ind.next, %vector.body105 ] ; 2 uses
  %i.u = sub <2 x i32> zeroinitializer, %vec.ind
  %i.v = sitofp <2 x i32> %i.u to <2 x double>
  %i.w = fdiv <2 x double> %i.v, splat (double 2.000000e+03)
  %i.x = fadd <2 x double> %i.w, splat (double 1.000000e+00) ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index106
  store <2 x double> %i.x, ptr %i.y, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index106
  store <2 x double> %i.x, ptr %i.z, align 8, !tbaa !8
  %index.next107 = add nuw i64 %index106, 2       ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.aa = icmp eq i64 %index.next107, %n.vec104
  br i1 %i.aa, label %middle.block108, label %vector.body105, !llvm.loop !14

middle.block108:                                  ; preds = %vector.body105
  %cmp.n109 = icmp eq i64 %indvars.iv103.i, %n.vec104
  br i1 %cmp.n109, label %.loopexit138, label %scalar.ph100.preheader

scalar.ph100.preheader:                           ; preds = %.preheader87.i, %middle.block108
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader87.i ], [ %n.vec104, %middle.block108 ] ; 6 uses
  %xtraiter = and i64 %indvars.iv103.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph100.prol.loopexit, label %scalar.ph100.prol

scalar.ph100.prol:                                ; preds = %scalar.ph100.preheader
  %i.ab = trunc i64 %indvars.iv.i.ph to i32
  %i.ac = sub i32 0, %i.ab
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fdiv double %i.ad, 2.000000e+03
  %i.af = fadd double %i.ae, 1.000000e+00         ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.ph
  store double %i.af, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.ph
  store double %i.af, ptr %i.ah, align 8, !tbaa !8
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph100.prol.loopexit

scalar.ph100.prol.loopexit:                       ; preds = %scalar.ph100.prol, %scalar.ph100.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph100.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph100.prol ]
  %i.ai = icmp eq i64 %indvars.iv109.i, %indvars.iv.i.ph
  br i1 %i.ai, label %.loopexit138, label %scalar.ph100

scalar.ph100:                                     ; preds = %scalar.ph100.prol.loopexit, %scalar.ph100
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph100 ], [ %indvars.iv.i.unr, %scalar.ph100.prol.loopexit ] ; 6 uses
  %i.aj = trunc i64 %indvars.iv.i to i32
  %i.ak = sub i32 0, %i.aj
  %i.al = sitofp i32 %i.ak to double
  %i.am = fdiv double %i.al, 2.000000e+03
  %i.an = fadd double %i.am, 1.000000e+00         ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  store double %i.an, ptr %i.ao, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store double %i.an, ptr %i.ap, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = trunc i64 %indvars.iv.i to i32
  %.neg = xor i32 %i.aq, -1
  %i.ar = sitofp i32 %.neg to double
  %i.as = fdiv double %i.ar, 2.000000e+03
  %i.at = fadd double %i.as, 1.000000e+00         ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i
  store double %i.at, ptr %i.au, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i
  store double %i.at, ptr %i.av, align 8, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %indvars.iv103.i
  br i1 %exitcond.not.i.1, label %.loopexit138, label %scalar.ph100, !llvm.loop !18

.loopexit138:                                     ; preds = %scalar.ph100.prol.loopexit, %scalar.ph100, %middle.block108
  %indvars.iv.next110.i = add nuw nsw i64 %indvars.iv109.i, 1 ; 2 uses
  %i.aw = icmp samesign ult i64 %indvars.iv109.i, 1999
  br i1 %i.aw, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.loopexit138
  %min.iters.check = icmp ult i64 %2, 4
  %or.cond139 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond139, label %.lr.ph.i.preheader151, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %2, -4                         ; 3 uses
  %3 = add i64 %indvars.iv103.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = add i64 %indvars.iv103.i, %index        ; 2 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.ax ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x double> zeroinitializer, ptr %4, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.ay, align 8, !tbaa !8
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x double> zeroinitializer, ptr %5, align 8, !tbaa !8
  store <2 x double> zeroinitializer, ptr %i.az, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader151

.lr.ph.i.preheader151:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv105.i.ph = phi i64 [ %indvars.iv103.i, %.lr.ph.i.preheader ], [ %3, %middle.block ] ; 4 uses
  %7 = sub i64 0, %indvars.iv105.i.ph
  %xtraiter152 = and i64 %7, 3                    ; 2 uses
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader151, %.lr.ph.i.prol
  %indvars.iv105.i.prol = phi i64 [ %indvars.iv.next106.i.prol, %.lr.ph.i.prol ], [ %indvars.iv105.i.ph, %.lr.ph.i.preheader151 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader151 ]
  %8 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv105.i.prol
  store double 0.000000e+00, ptr %8, align 8, !tbaa !8
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv105.i.prol
  store double 0.000000e+00, ptr %9, align 8, !tbaa !8
  %indvars.iv.next106.i.prol = add nuw nsw i64 %indvars.iv105.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter152
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !20

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader151
  %indvars.iv105.i.unr = phi i64 [ %indvars.iv105.i.ph, %.lr.ph.i.preheader151 ], [ %indvars.iv.next106.i.prol, %.lr.ph.i.prol ]
  %10 = add i64 %indvars.iv105.i.ph, -1997
  %11 = icmp ult i64 %10, 3
  br i1 %11, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i.3, %.lr.ph.i ], [ %indvars.iv105.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv105.i
  store double 0.000000e+00, ptr %12, align 8, !tbaa !8
  %13 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv105.i
  store double 0.000000e+00, ptr %13, align 8, !tbaa !8
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %14 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next106.i
  store double 0.000000e+00, ptr %14, align 8, !tbaa !8
  %15 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next106.i
  store double 0.000000e+00, ptr %15, align 8, !tbaa !8
  %indvars.iv.next106.i.1 = add nuw nsw i64 %indvars.iv105.i, 2 ; 2 uses
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next106.i.1
  store double 0.000000e+00, ptr %16, align 8, !tbaa !8
  %17 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next106.i.1
  store double 0.000000e+00, ptr %17, align 8, !tbaa !8
  %indvars.iv.next106.i.2 = add nuw nsw i64 %indvars.iv105.i, 3 ; 2 uses
  %18 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next106.i.2
  store double 0.000000e+00, ptr %18, align 8, !tbaa !8
  %19 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next106.i.2
  store double 0.000000e+00, ptr %19, align 8, !tbaa !8
  %indvars.iv.next106.i.3 = add nuw nsw i64 %indvars.iv105.i, 4 ; 2 uses
  %exitcond108.not.i.3 = icmp eq i64 %indvars.iv.next106.i.3, 2000
  br i1 %exitcond108.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.loopexit138
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv109.i
  store double 1.000000e+00, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv109.i
  store double 1.000000e+00, ptr %i.bb, align 8, !tbaa !8
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next110.i, 2000
  br i1 %exitcond114.not.i, label %bb.d, label %.preheader87.i, !llvm.loop !23

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.bc = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 32000000) #15
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !10  ; 8 uses
  %i.be = ptrtoaddr ptr %i.bd to i64              ; 2 uses
  %i.bf = icmp eq ptr %i.bd, null
  %i.bg = icmp ne i32 %i.bc, 0
  %or.cond.i.i.i = select i1 %i.bf, i1 true, i1 %i.bg
  br i1 %or.cond.i.i.i, label %bb.e, label %polybench_alloc_data.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bi = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bh) #16 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit.i:                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %i.bd, i8 0, i64 32000000, i1 false), !tbaa !8
  %scevgep = getelementptr i8, ptr %i.bd, i64 32000000
  br label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.f, %polybench_alloc_data.exit.i
  %indvars.iv127.i = phi i64 [ 0, %polybench_alloc_data.exit.i ], [ %indvars.iv.next128.i, %bb.f ] ; 3 uses
  %i.bj = shl nuw nsw i64 %indvars.iv127.i, 3     ; 2 uses
  %scevgep112 = getelementptr nuw i8, ptr %i.e, i64 %i.bj
  %i.bk = getelementptr i8, ptr %i.e, i64 %i.bj
  %scevgep113 = getelementptr i8, ptr %i.bk, i64 31984008
  %invariant.gep94.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv127.i ; 7 uses
  %bound0 = icmp ult ptr %i.bd, %scevgep113
  %bound1 = icmp ult ptr %scevgep112, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader83.i

.preheader83.i:                                   ; preds = %middle.block123.a, %.preheader84.i
  %indvars.iv123.i = phi i64 [ 0, %.preheader84.i ], [ %indvars.iv.next124.i, %middle.block123.a ] ; 3 uses
  %gep95.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv123.i ; 3 uses
  %i.bl = getelementptr inbounds nuw [16000 x i8], ptr %i.bd, i64 %indvars.iv123.i ; 3 uses
  br i1 %found.conflict, label %scalar.ph117, label %vector.ph118

vector.ph118:                                     ; preds = %.preheader83.i
  %i.bm = load double, ptr %gep95.i, align 8, !tbaa !8, !alias.scope !24
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.bm, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body119

vector.body119:                                   ; preds = %vector.body119, %vector.ph118
  %index120 = phi i64 [ 0, %vector.ph118 ], [ %index.next122.a, %vector.body119 ] ; 6 uses
  %i.bn = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index120
  %i.bo = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index120
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16000
  %i.bq = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index120
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32000
  %i.bs = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index120
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48000
  %i.bu = load double, ptr %i.bn, align 8, !tbaa !8, !alias.scope !27
  %i.bv = load double, ptr %i.bp, align 8, !tbaa !8, !alias.scope !27
  %i.bw = insertelement <2 x double> poison, double %i.bu, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bv, i64 1
  %i.by = load double, ptr %i.br, align 8, !tbaa !8, !alias.scope !27
  %i.bz = load double, ptr %i.bt, align 8, !tbaa !8, !alias.scope !27
  %i.ca = insertelement <2 x double> poison, double %i.by, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bz, i64 1
  %i.cc = fmul <2 x double> %broadcast.splat, %i.bx
  %i.cd = fmul <2 x double> %broadcast.splat, %i.cb
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index120 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %wide.load121.a = load <2 x double>, ptr %i.cf, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %i.cg = fadd <2 x double> %wide.load, %i.cc
  %i.ch = fadd <2 x double> %wide.load121.a, %i.cd
  store <2 x double> %i.cg, ptr %i.ce, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %index.next122.a = add nuw i64 %index120, 4     ; 2 uses
  %i.ci = icmp eq i64 %index.next122.a, 2000
  br i1 %i.ci, label %middle.block123.a, label %vector.body119, !llvm.loop !32

scalar.ph117:                                     ; preds = %.preheader83.i, %scalar.ph117
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %scalar.ph117 ], [ 0, %.preheader83.i ] ; 4 uses
  %i.cj = load double, ptr %gep95.i, align 8, !tbaa !8
  %gep.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv119.i
  %i.ck = load double, ptr %gep.i, align 8, !tbaa !8
  %i.cl = fmul double %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv119.i ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !8
  %i.co = fadd double %i.cn, %i.cl
  store double %i.co, ptr %i.cm, align 8, !tbaa !8
  %indvars.iv.next120.i = or disjoint i64 %indvars.iv119.i, 1 ; 2 uses
  %i.cp = load double, ptr %gep95.i, align 8, !tbaa !8
  %gep.i.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv.next120.i
  %i.cq = load double, ptr %gep.i.1, align 8, !tbaa !8
  %i.cr = fmul double %i.cp, %i.cq
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next120.i ; 2 uses
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !8
  %i.cu = fadd double %i.ct, %i.cr
  store double %i.cu, ptr %i.cs, align 8, !tbaa !8
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %exitcond122.not.i.1 = icmp eq i64 %indvars.iv.next120.i.1, 2000
  br i1 %exitcond122.not.i.1, label %middle.block123.a, label %scalar.ph117, !llvm.loop !33

middle.block123.a:                                ; preds = %vector.body119, %scalar.ph117
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 2000
  br i1 %exitcond126.not.i, label %bb.f, label %.preheader83.i, !llvm.loop !34

bb.f:                                             ; preds = %middle.block123.a
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next128.i, 2000
  br i1 %exitcond130.not.i, label %.preheader.i.preheader, label %.preheader84.i, !llvm.loop !35

.preheader.i.preheader:                           ; preds = %bb.f
  %i.cv = sub i64 %i.m, %i.f
  %i.cw = sub i64 %i.f, %i.be
  %i.cx = sub i64 %i.m, %i.be
  %diff.check125 = icmp ult i64 %i.cv, 32
  %diff.check126 = icmp ult i64 %i.cw, 32
  %conflict.rdx = or i1 %diff.check125, %diff.check126
  %diff.check127 = icmp ult i64 %i.cx, 32
  %conflict.rdx128 = or i1 %conflict.rdx, %diff.check127
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block136
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %middle.block136 ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [16000 x i8], ptr %i.bd, i64 %indvars.iv135.i ; 6 uses
  %i.cz = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv135.i ; 6 uses
  %i.da = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv135.i ; 6 uses
  br i1 %conflict.rdx128, label %scalar.ph129, label %vector.body131

vector.body131:                                   ; preds = %.preheader.i, %vector.body131
  %index132 = phi i64 [ %index.next135.1, %vector.body131 ], [ 0, %.preheader.i ] ; 5 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index132 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %wide.load133 = load <2 x double>, ptr %i.db, align 8, !tbaa !8 ; 2 uses
  %wide.load134 = load <2 x double>, ptr %i.dc, align 8, !tbaa !8 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index132 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x double> %wide.load133, ptr %i.dd, align 8, !tbaa !8
  store <2 x double> %wide.load134, ptr %i.de, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %index132 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store <2 x double> %wide.load133, ptr %i.df, align 8, !tbaa !8
  store <2 x double> %wide.load134, ptr %i.dg, align 8, !tbaa !8
  %index.next135 = or disjoint i64 %index132, 4   ; 3 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index.next135 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load133.1 = load <2 x double>, ptr %i.dh, align 8, !tbaa !8 ; 2 uses
  %wide.load134.1 = load <2 x double>, ptr %i.di, align 8, !tbaa !8 ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %index.next135 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store <2 x double> %wide.load133.1, ptr %i.dj, align 8, !tbaa !8
  store <2 x double> %wide.load134.1, ptr %i.dk, align 8, !tbaa !8
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %index.next135 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x double> %wide.load133.1, ptr %i.dl, align 8, !tbaa !8
  store <2 x double> %wide.load134.1, ptr %i.dm, align 8, !tbaa !8
  %index.next135.1 = add nuw nsw i64 %index132, 8 ; 2 uses
  %i.dn = icmp eq i64 %index.next135.1, 2000
  br i1 %i.dn, label %middle.block136, label %vector.body131, !llvm.loop !36

scalar.ph129:                                     ; preds = %.preheader.i, %scalar.ph129
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.3, %scalar.ph129 ], [ 0, %.preheader.i ] ; 7 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv131.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !8 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv131.i
  store double %i.dp, ptr %i.dq, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv131.i
  store double %i.dp, ptr %i.dr, align 8, !tbaa !8
  %indvars.iv.next132.i = or disjoint i64 %indvars.iv131.i, 1 ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next132.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !8 ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next132.i
  store double %i.dt, ptr %i.du, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next132.i
  store double %i.dt, ptr %i.dv, align 8, !tbaa !8
  %indvars.iv.next132.i.1 = or disjoint i64 %indvars.iv131.i, 2 ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next132.i.1
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !8 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next132.i.1
  store double %i.dx, ptr %i.dy, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next132.i.1
  store double %i.dx, ptr %i.dz, align 8, !tbaa !8
  %indvars.iv.next132.i.2 = or disjoint i64 %indvars.iv131.i, 3 ; 3 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next132.i.2
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !8 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.next132.i.2
  store double %i.eb, ptr %i.ec, align 8, !tbaa !8
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %indvars.iv.next132.i.2
  store double %i.eb, ptr %i.ed, align 8, !tbaa !8
  %indvars.iv.next132.i.3 = add nuw nsw i64 %indvars.iv131.i, 4 ; 2 uses
  %exitcond134.not.i.3 = icmp eq i64 %indvars.iv.next132.i.3, 2000
  br i1 %exitcond134.not.i.3, label %middle.block136, label %scalar.ph129, !llvm.loop !37

middle.block136:                                  ; preds = %vector.body131, %scalar.ph129
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next136.i, 2000
  br i1 %exitcond138.not.i, label %init_array.exit, label %.preheader.i, !llvm.loop !38

init_array.exit:                                  ; preds = %middle.block136
  call void @free(ptr noundef nonnull %i.bd) #15
  br label %.preheader44.i

.preheader44.i:                                   ; preds = %._crit_edge49.i, %init_array.exit
  %indvars.iv64.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next65.i, %._crit_edge49.i ] ; 11 uses
  %.not.i = icmp eq i64 %indvars.iv64.i, 0
  br i1 %.not.i, label %.preheader43.._crit_edge49_crit_edge.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader44.i
  %i.ee = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv64.i ; 10 uses
  br label %.preheader.i16

.preheader43.._crit_edge49_crit_edge.i:           ; preds = %.preheader44.i
  %.pre70.i = load double, ptr %i.e, align 8, !tbaa !8
  br label %._crit_edge49.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i21
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv64.i ; 4 uses
  %.promoted50.i = load double, ptr %i.ef, align 8, !tbaa !8 ; 2 uses
  %xtraiter159 = and i64 %indvars.iv64.i, 1
  %i.eg = icmp eq i64 %indvars.iv64.i, 1
  br i1 %i.eg, label %.epil.preheader158, label %.lr.ph48.i.new

.lr.ph48.i.new:                                   ; preds = %.lr.ph48.i
  %unroll_iter165 = and i64 %indvars.iv64.i, 9223372036854775806
  br label %bb.h

.preheader.i16:                                   ; preds = %._crit_edge.i21, %.preheader.lr.ph.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next56.i, %._crit_edge.i21 ] ; 11 uses
  %.not52.i = icmp eq i64 %indvars.iv55.i, 0
  br i1 %.not52.i, label %.preheader.._crit_edge_crit_edge.i, label %.lr.ph.i17

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i16
  %.pre.i = load double, ptr %i.ee, align 8, !tbaa !8
  br label %._crit_edge.i21

.lr.ph.i17:                                       ; preds = %.preheader.i16
  %i.eh = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv55.i ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv55.i ; 4 uses
  %.promoted.i = load double, ptr %i.ei, align 8, !tbaa !8 ; 2 uses
  %xtraiter154 = and i64 %indvars.iv55.i, 1
  %i.ej = icmp eq i64 %indvars.iv55.i, 1
  br i1 %i.ej, label %.epil.preheader, label %.lr.ph.i17.new

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %indvars.iv55.i, 9223372036854775806
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i17.new
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17.new ], [ %indvars.iv.next.i19.1, %bb.g ] ; 4 uses
  %i.ek = phi double [ %.promoted.i, %.lr.ph.i17.new ], [ %i.ew, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.g ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i18
  %i.em = load double, ptr %i.el, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i18
  %i.eo = load double, ptr %i.en, align 8, !tbaa !8
  %i.ep = fneg double %i.em
  %i.eq = call double @llvm.fmuladd.f64(double %i.ep, double %i.eo, double %i.ek) ; 2 uses
  store double %i.eq, ptr %i.ei, align 8, !tbaa !8
  %indvars.iv.next.i19 = or disjoint i64 %indvars.iv.i18, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next.i19
  %i.es = load double, ptr %i.er, align 8, !tbaa !8
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next.i19
  %i.eu = load double, ptr %i.et, align 8, !tbaa !8
  %i.ev = fneg double %i.es
  %i.ew = call double @llvm.fmuladd.f64(double %i.ev, double %i.eu, double %i.eq) ; 4 uses
  store double %i.ew, ptr %i.ei, align 8, !tbaa !8
  %indvars.iv.next.i19.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i21.loopexit.unr-lcssa, label %bb.g, !llvm.loop !39

._crit_edge.i21.loopexit.unr-lcssa:               ; preds = %bb.g
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %._crit_edge.i21, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i21.loopexit.unr-lcssa, %.lr.ph.i17
  %indvars.iv.i18.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i19.1, %._crit_edge.i21.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %.promoted.i, %.lr.ph.i17 ], [ %i.ew, %._crit_edge.i21.loopexit.unr-lcssa ]
  %lcmp.mod157 = trunc i64 %indvars.iv55.i to i1
  call void @llvm.assume(i1 %lcmp.mod157)
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.i18.epil.init
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i18.epil.init
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !8
  %i.fb = fneg double %i.ey
  %i.fc = call double @llvm.fmuladd.f64(double %i.fb, double %i.fa, double %.epil.init) ; 2 uses
  store double %i.fc, ptr %i.ei, align 8, !tbaa !8
  br label %._crit_edge.i21

._crit_edge.i21:                                  ; preds = %.epil.preheader, %._crit_edge.i21.loopexit.unr-lcssa, %.preheader.._crit_edge_crit_edge.i
  %i.fd = phi double [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.ew, %._crit_edge.i21.loopexit.unr-lcssa ], [ %i.fc, %.epil.preheader ]
  %i.fe = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv55.i
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv55.i
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !8
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv55.i
  %i.fi = fdiv double %i.fd, %i.fg
  store double %i.fi, ptr %i.fh, align 8, !tbaa !8
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %indvars.iv64.i
  br i1 %exitcond59.not.i, label %.lr.ph48.i, label %.preheader.i16, !llvm.loop !40

bb.h:                                             ; preds = %bb.h, %.lr.ph48.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph48.i.new ], [ %indvars.iv.next61.i.1, %bb.h ] ; 3 uses
  %i.fj = phi double [ %.promoted50.i, %.lr.ph48.i.new ], [ %i.fs, %bb.h ]
  %niter166 = phi i64 [ 0, %.lr.ph48.i.new ], [ %niter166.next.1, %bb.h ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv60.i
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !8 ; 2 uses
  %i.fm = fneg double %i.fl
  %i.fn = call double @llvm.fmuladd.f64(double %i.fm, double %i.fl, double %i.fj) ; 2 uses
  store double %i.fn, ptr %i.ef, align 8, !tbaa !8
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv60.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !8 ; 2 uses
  %i.fr = fneg double %i.fq
  %i.fs = call double @llvm.fmuladd.f64(double %i.fr, double %i.fq, double %i.fn) ; 4 uses
  store double %i.fs, ptr %i.ef, align 8, !tbaa !8
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter166.next.1 = add i64 %niter166, 2         ; 2 uses
  %niter166.ncmp.1 = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1, label %._crit_edge49.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !41

._crit_edge49.i.loopexit.unr-lcssa:               ; preds = %bb.h
  %lcmp.mod162.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod162.not, label %._crit_edge49.i, label %.epil.preheader158

.epil.preheader158:                               ; preds = %._crit_edge49.i.loopexit.unr-lcssa, %.lr.ph48.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next61.i.1, %._crit_edge49.i.loopexit.unr-lcssa ]
  %.epil.init161 = phi double [ %.promoted50.i, %.lr.ph48.i ], [ %i.fs, %._crit_edge49.i.loopexit.unr-lcssa ]
  %lcmp.mod164 = trunc i64 %indvars.iv64.i to i1
  call void @llvm.assume(i1 %lcmp.mod164)
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv60.i.epil.init
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !8 ; 2 uses
  %i.fv = fneg double %i.fu
  %i.fw = call double @llvm.fmuladd.f64(double %i.fv, double %i.fu, double %.epil.init161) ; 2 uses
  store double %i.fw, ptr %i.ef, align 8, !tbaa !8
  br label %._crit_edge49.i

._crit_edge49.i:                                  ; preds = %.epil.preheader158, %._crit_edge49.i.loopexit.unr-lcssa, %.preheader43.._crit_edge49_crit_edge.i
  %i.fx = phi double [ %.pre70.i, %.preheader43.._crit_edge49_crit_edge.i ], [ %i.fs, %._crit_edge49.i.loopexit.unr-lcssa ], [ %i.fw, %.epil.preheader158 ]
  %i.fy = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv64.i
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv64.i
  %i.ga = call double @sqrt(double noundef %i.fx) #15, !tbaa !4
  store double %i.ga, ptr %i.fz, align 8, !tbaa !8
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 2000
  br i1 %exitcond67.not.i, label %.preheader44.i22, label %.preheader44.i, !llvm.loop !42

.preheader44.i22:                                 ; preds = %._crit_edge49.i, %._crit_edge49.i42
  %indvars.iv64.i23 = phi i64 [ %indvars.iv.next65.i43, %._crit_edge49.i42 ], [ 0, %._crit_edge49.i ] ; 10 uses
  %.not.i24 = icmp eq i64 %indvars.iv64.i23, 0
  br i1 %.not.i24, label %.preheader43.._crit_edge49_crit_edge.i47, label %.preheader.lr.ph.i25

.preheader.lr.ph.i25:                             ; preds = %.preheader44.i22
  %i.gb = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv64.i23 ; 12 uses
  br label %.preheader.i26

.preheader43.._crit_edge49_crit_edge.i47:         ; preds = %.preheader44.i22
  %.pre70.i48 = load double, ptr %i.l, align 8, !tbaa !8
  br label %._crit_edge49.i42

.lr.ph48.i37:                                     ; preds = %._crit_edge.i34
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv64.i23 ; 6 uses
  %.promoted50.i38 = load double, ptr %i.gc, align 8, !tbaa !8 ; 2 uses
  %xtraiter177 = and i64 %indvars.iv64.i23, 3     ; 3 uses
  %i.gd = icmp samesign ult i64 %indvars.iv64.i23, 4
  br i1 %i.gd, label %.epil.preheader176, label %.lr.ph48.i37.new

.lr.ph48.i37.new:                                 ; preds = %.lr.ph48.i37
  %unroll_iter183 = and i64 %indvars.iv64.i23, 9223372036854775804
  br label %bb.j

.preheader.i26:                                   ; preds = %._crit_edge.i34, %.preheader.lr.ph.i25
  %indvars.iv55.i27 = phi i64 [ 0, %.preheader.lr.ph.i25 ], [ %indvars.iv.next56.i35, %._crit_edge.i34 ] ; 11 uses
  %.not52.i28 = icmp eq i64 %indvars.iv55.i27, 0
  br i1 %.not52.i28, label %.preheader.._crit_edge_crit_edge.i45, label %.lr.ph.i29

.preheader.._crit_edge_crit_edge.i45:             ; preds = %.preheader.i26
  %.pre.i46 = load double, ptr %i.gb, align 8, !tbaa !8
  br label %._crit_edge.i34

.lr.ph.i29:                                       ; preds = %.preheader.i26
  %i.ge = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv55.i27 ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv55.i27 ; 4 uses
  %.promoted.i30 = load double, ptr %i.gf, align 8, !tbaa !8 ; 2 uses
  %xtraiter168 = and i64 %indvars.iv55.i27, 1
  %i.gg = icmp eq i64 %indvars.iv55.i27, 1
  br i1 %i.gg, label %.epil.preheader167, label %.lr.ph.i29.new

.lr.ph.i29.new:                                   ; preds = %.lr.ph.i29
  %unroll_iter174 = and i64 %indvars.iv55.i27, 9223372036854775806
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i29.new
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i29.new ], [ %indvars.iv.next.i32.1, %bb.i ] ; 4 uses
  %i.gh = phi double [ %.promoted.i30, %.lr.ph.i29.new ], [ %i.gt, %bb.i ]
  %niter175 = phi i64 [ 0, %.lr.ph.i29.new ], [ %niter175.next.1, %bb.i ]
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.i31
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i31
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !8
  %i.gm = fmul double %i.gj, %i.gl
  %i.gn = fsub double %i.gh, %i.gm                ; 2 uses
  store double %i.gn, ptr %i.gf, align 8, !tbaa !8
  %indvars.iv.next.i32 = or disjoint i64 %indvars.iv.i31, 1 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.next.i32
  %i.gp = load double, ptr %i.go, align 8, !tbaa !8
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i32
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !8
  %i.gs = fmul double %i.gp, %i.gr
  %i.gt = fsub double %i.gn, %i.gs                ; 4 uses
  store double %i.gt, ptr %i.gf, align 8, !tbaa !8
  %indvars.iv.next.i32.1 = add nuw nsw i64 %indvars.iv.i31, 2 ; 2 uses
  %niter175.next.1 = add i64 %niter175, 2         ; 2 uses
  %niter175.ncmp.1 = icmp eq i64 %niter175.next.1, %unroll_iter174
  br i1 %niter175.ncmp.1, label %._crit_edge.i34.loopexit.unr-lcssa, label %bb.i, !llvm.loop !43

._crit_edge.i34.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod171.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod171.not, label %._crit_edge.i34, label %.epil.preheader167

.epil.preheader167:                               ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %.lr.ph.i29
  %indvars.iv.i31.epil.init = phi i64 [ 0, %.lr.ph.i29 ], [ %indvars.iv.next.i32.1, %._crit_edge.i34.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init170 = phi double [ %.promoted.i30, %.lr.ph.i29 ], [ %i.gt, %._crit_edge.i34.loopexit.unr-lcssa ]
  %lcmp.mod173 = trunc i64 %indvars.iv55.i27 to i1
  call void @llvm.assume(i1 %lcmp.mod173)
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv.i31.epil.init
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !8
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i31.epil.init
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !8
  %i.gy = fmul double %i.gv, %i.gx
  %i.gz = fsub double %.epil.init170, %i.gy       ; 2 uses
  store double %i.gz, ptr %i.gf, align 8, !tbaa !8
  br label %._crit_edge.i34

._crit_edge.i34:                                  ; preds = %.epil.preheader167, %._crit_edge.i34.loopexit.unr-lcssa, %.preheader.._crit_edge_crit_edge.i45
  %i.ha = phi double [ %.pre.i46, %.preheader.._crit_edge_crit_edge.i45 ], [ %i.gt, %._crit_edge.i34.loopexit.unr-lcssa ], [ %i.gz, %.epil.preheader167 ]
  %i.hb = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv55.i27
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv55.i27
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv55.i27
  %i.hf = fdiv double %i.ha, %i.hd
  store double %i.hf, ptr %i.he, align 8, !tbaa !8
  %indvars.iv.next56.i35 = add nuw nsw i64 %indvars.iv55.i27, 1 ; 2 uses
  %exitcond59.not.i36 = icmp eq i64 %indvars.iv.next56.i35, %indvars.iv64.i23
  br i1 %exitcond59.not.i36, label %.lr.ph48.i37, label %.preheader.i26, !llvm.loop !44

bb.j:                                             ; preds = %bb.j, %.lr.ph48.i37.new
  %indvars.iv60.i39 = phi i64 [ 0, %.lr.ph48.i37.new ], [ %indvars.iv.next61.i40.3, %bb.j ] ; 5 uses
  %i.hg = phi double [ %.promoted50.i38, %.lr.ph48.i37.new ], [ %i.hz, %bb.j ]
  %niter184 = phi i64 [ 0, %.lr.ph48.i37.new ], [ %niter184.next.3, %bb.j ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv60.i39
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !8 ; 2 uses
  %i.hj = fmul double %i.hi, %i.hi
  %i.hk = fsub double %i.hg, %i.hj                ; 2 uses
  store double %i.hk, ptr %i.gc, align 8, !tbaa !8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv60.i39
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !8 ; 2 uses
  %i.ho = fmul double %i.hn, %i.hn
  %i.hp = fsub double %i.hk, %i.ho                ; 2 uses
  store double %i.hp, ptr %i.gc, align 8, !tbaa !8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv60.i39
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !8 ; 2 uses
  %i.ht = fmul double %i.hs, %i.hs
  %i.hu = fsub double %i.hp, %i.ht                ; 2 uses
  store double %i.hu, ptr %i.gc, align 8, !tbaa !8
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv60.i39
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !8 ; 2 uses
  %i.hy = fmul double %i.hx, %i.hx
  %i.hz = fsub double %i.hu, %i.hy                ; 4 uses
  store double %i.hz, ptr %i.gc, align 8, !tbaa !8
  %indvars.iv.next61.i40.3 = add nuw nsw i64 %indvars.iv60.i39, 4 ; 2 uses
  %niter184.next.3 = add i64 %niter184, 4         ; 2 uses
  %niter184.ncmp.3 = icmp eq i64 %niter184.next.3, %unroll_iter183
  br i1 %niter184.ncmp.3, label %._crit_edge49.i42.loopexit.unr-lcssa, label %bb.j, !llvm.loop !45

._crit_edge49.i42.loopexit.unr-lcssa:             ; preds = %bb.j
  %lcmp.mod180.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod180.not, label %._crit_edge49.i42, label %.epil.preheader176

.epil.preheader176:                               ; preds = %._crit_edge49.i42.loopexit.unr-lcssa, %.lr.ph48.i37
  %indvars.iv60.i39.epil.init = phi i64 [ 0, %.lr.ph48.i37 ], [ %indvars.iv.next61.i40.3, %._crit_edge49.i42.loopexit.unr-lcssa ]
  %.epil.init179 = phi double [ %.promoted50.i38, %.lr.ph48.i37 ], [ %i.hz, %._crit_edge49.i42.loopexit.unr-lcssa ]
  %lcmp.mod182 = icmp ne i64 %xtraiter177, 0
  call void @llvm.assume(i1 %lcmp.mod182)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader176
  %indvars.iv60.i39.epil = phi i64 [ %indvars.iv60.i39.epil.init, %.epil.preheader176 ], [ %indvars.iv.next61.i40.epil, %bb.k ] ; 2 uses
  %i.ia = phi double [ %.epil.init179, %.epil.preheader176 ], [ %i.ie, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader176 ], [ %epil.iter.next, %bb.k ]
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv60.i39.epil
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !8 ; 2 uses
  %i.id = fmul double %i.ic, %i.ic
  %i.ie = fsub double %i.ia, %i.id                ; 3 uses
  store double %i.ie, ptr %i.gc, align 8, !tbaa !8
  %indvars.iv.next61.i40.epil = add nuw nsw i64 %indvars.iv60.i39.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter177
  br i1 %epil.iter.cmp.not, label %._crit_edge49.i42, label %bb.k, !llvm.loop !46

._crit_edge49.i42:                                ; preds = %._crit_edge49.i42.loopexit.unr-lcssa, %bb.k, %.preheader43.._crit_edge49_crit_edge.i47
  %i.if = phi double [ %.pre70.i48, %.preheader43.._crit_edge49_crit_edge.i47 ], [ %i.hz, %._crit_edge49.i42.loopexit.unr-lcssa ], [ %i.ie, %bb.k ]
  %i.ig = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv64.i23
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv64.i23
  %i.ii = call double @sqrt(double noundef %i.if) #15, !tbaa !4
  store double %i.ii, ptr %i.ih, align 8, !tbaa !8
  %indvars.iv.next65.i43 = add nuw nsw i64 %indvars.iv64.i23, 1 ; 2 uses
  %exitcond67.not.i44 = icmp eq i64 %indvars.iv.next65.i43, 2000
  br i1 %exitcond67.not.i44, label %.preheader.i49, label %.preheader44.i22, !llvm.loop !47

.preheader.i49:                                   ; preds = %._crit_edge49.i42, %bb.m
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.m ], [ 0, %._crit_edge49.i42 ] ; 4 uses
  %i.ij = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv39.i ; 2 uses
  %i.ik = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv39.i ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.1, %.preheader.i49
  %indvars.iv.i50 = phi i64 [ 0, %.preheader.i49 ], [ %indvars.iv.next.i51.1, %.critedge.i.1 ] ; 5 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.i50
  %i.im = load double, ptr %i.il, align 8, !tbaa !8 ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.i50
  %i.io = load double, ptr %i.in, align 8, !tbaa !8 ; 2 uses
  %i.ip = fsub double %i.im, %i.io
  %i.iq = call double @llvm.fabs.f64(double %i.ip)
  %i.ir = fcmp ule double %i.iq, 1.000000e-05
  br i1 %i.ir, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.l
  %indvars.iv.i50.lcssa = phi i64 [ %indvars.iv.i50, %bb.l ], [ %indvars.iv.next.i51, %.critedge.i ]
  %.lcssa141 = phi double [ %i.im, %bb.l ], [ %i.ix, %.critedge.i ]
  %.lcssa = phi double [ %i.io, %bb.l ], [ %i.iz, %.critedge.i ]
  %i.is = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.it = trunc nuw nsw i64 %indvars.iv.i50.lcssa to i32 ; 2 uses
  %i.iu = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.iv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iu, ptr noundef nonnull @.str.2, i32 noundef %i.is, i32 noundef %i.it, double noundef %.lcssa141, i32 noundef %i.is, i32 noundef %i.it, double noundef %.lcssa, double noundef 1.000000e-05) #18 ; 0 uses
  br label %bb.p

.critedge.i:                                      ; preds = %bb.l
  %indvars.iv.next.i51 = or disjoint i64 %indvars.iv.i50, 1 ; 3 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next.i51
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !8 ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next.i51
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !8 ; 2 uses
  %i.ja = fsub double %i.ix, %i.iz
  %i.jb = call double @llvm.fabs.f64(double %i.ja)
  %i.jc = fcmp ule double %i.jb, 1.000000e-05
  br i1 %i.jc, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %exitcond.not.i52.1 = icmp eq i64 %indvars.iv.next.i51.1, 2000
  br i1 %exitcond.not.i52.1, label %bb.m, label %bb.l, !llvm.loop !48

bb.m:                                             ; preds = %.critedge.i.1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2000
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i49, !llvm.loop !49

check_FP.exit:                                    ; preds = %bb.m
  %i.jd = call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #19 ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32000
  store i8 0, ptr %i.je, align 1, !tbaa !50
  br label %.preheader.i53

.preheader.i53:                                   ; preds = %bb.o, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.o ] ; 2 uses
  %i.jf = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv20.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.i53
  %indvars.iv.i54 = phi i64 [ 0, %.preheader.i53 ], [ %indvars.iv.next.i55, %bb.n ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.i54
  %i.jh = shl nuw nsw i64 %indvars.iv.i54, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.jh
  %i.jj = load i64, ptr %i.jg, align 8, !tbaa !8  ; 4 uses
  %i.jk = lshr i64 %i.jj, 56
  %i.jl = trunc nuw i64 %i.jk to i8
  %i.jm = insertelement <2 x i64> poison, i64 %i.jj, i64 0
  %i.jn = shufflevector <2 x i64> %i.jm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.jo = lshr <2 x i64> %i.jn, <i64 40, i64 48>
  %i.jp = trunc <2 x i64> %i.jo to <2 x i8>
  %i.jq = insertelement <4 x i64> poison, i64 %i.jj, i64 0
  %i.jr = shufflevector <4 x i64> %i.jq, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.js = lshr <4 x i64> %i.jr, <i64 8, i64 16, i64 24, i64 32>
  %i.jt = trunc <4 x i64> %i.js to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.jj to i8
  %i.ju = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.jv = shufflevector <4 x i8> %i.jt, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jw = shufflevector <8 x i8> %i.ju, <8 x i8> %i.jv, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.jx = shufflevector <2 x i8> %i.jp, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jy = shufflevector <8 x i8> %i.jw, <8 x i8> %i.jx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.jz = insertelement <8 x i8> %i.jy, i8 %i.jl, i64 7
  %i.ka = and <8 x i8> %i.jz, splat (i8 15)
  %i.kb = or disjoint <8 x i8> %i.ka, splat (i8 48)
  %i.kc = shufflevector <8 x i8> %i.kb, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.kc, ptr %i.ji, align 1, !tbaa !50
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, 2000
  br i1 %exitcond.not.i56, label %bb.o, label %bb.n, !llvm.loop !51

bb.o:                                             ; preds = %bb.n
  %i.kd = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ke = call i32 @fputs(ptr noundef nonnull %i.jd, ptr noundef %i.kd) #16 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i53, !llvm.loop !52

print_array.exit:                                 ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.jd) #15
  call void @free(ptr noundef %i.e) #15
  call void @free(ptr noundef nonnull %i.l) #15
  br label %bb.p

bb.p:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

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
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

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
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15, !16}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !15, !16}
!23 = distinct !{!23, !15}
!24 = !{!25}
!25 = distinct !{!25, !26}
!26 = distinct !{!26, !"LVerDomain"}
!27 = !{!28}
!28 = distinct !{!28, !26}
!29 = !{!30}
!30 = distinct !{!30, !26}
!31 = !{!28, !25}
!32 = distinct !{!32, !15, !16, !17}
!33 = distinct !{!33, !15, !16}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15, !16, !17}
!37 = distinct !{!37, !15, !16}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !15}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
!50 = !{!6, !6, i64 0}
!51 = distinct !{!51, !15}
!52 = distinct !{!52, !15}
end_hunk_0
