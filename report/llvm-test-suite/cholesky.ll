Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cholesky?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
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
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10   ; 13 uses
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
  %i.r = sub i64 %i.f, %i.m
  %diff.check = icmp ugt i64 %i.r, -16
  br label %.preheader87.i

.preheader87.i:                                   ; preds = %._crit_edge.i, %polybench_alloc_data.exit15
  %indvars.iv104.i = phi i64 [ 1, %polybench_alloc_data.exit15 ], [ %indvars.iv.next105.i, %._crit_edge.i ] ; 6 uses
  %indvar.i = phi i64 [ 0, %polybench_alloc_data.exit15 ], [ %indvar.next.i, %._crit_edge.i ] ; 9 uses
  %i.s = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvar.i ; 5 uses
  %i.t = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvar.i ; 5 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv104.i, 2
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader87.i
  %n.vec = and i64 %indvars.iv104.i, 9223372036854775806 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = sub <2 x i32> zeroinitializer, %vec.ind
  %3 = sitofp <2 x i32> %2 to <2 x double>
  %4 = fdiv <2 x double> %3, splat (double 2.000000e+03)
  %5 = fadd <2 x double> %4, splat (double 1.000000e+00) ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index
  store <2 x double> %5, ptr %i.u, align 8, !tbaa !8
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index
  store <2 x double> %5, ptr %6, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv104.i, %n.vec
  br i1 %cmp.n, label %.loopexit124, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader87.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader87.i ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %indvars.iv104.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %7 = trunc i64 %indvars.iv.i.ph to i32
  %8 = sub i32 0, %7
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 2.000000e+03
  %11 = fadd double %10, 1.000000e+00             ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.ph
  store double %11, ptr %i.w, align 8, !tbaa !8
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.ph
  store double %11, ptr %12, align 8, !tbaa !8
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %13 = icmp eq i64 %indvar.i, %indvars.iv.i.ph
  br i1 %13, label %.loopexit124, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %14 = trunc i64 %indvars.iv.i to i32
  %15 = sub i32 0, %14
  %16 = sitofp i32 %15 to double
  %17 = fdiv double %16, 2.000000e+03
  %18 = fadd double %17, 1.000000e+00             ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i
  store double %18, ptr %i.x, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i
  store double %18, ptr %i.y, align 8, !tbaa !8
  %indvars.iv.next.i.1.a = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %19 = trunc i64 %indvars.iv.i to i32
  %.neg = xor i32 %19, -1
  %20 = sitofp i32 %.neg to double
  %21 = fdiv double %20, 2.000000e+03
  %22 = fadd double %21, 1.000000e+00             ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.1.a
  store double %22, ptr %i.z, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.1.a
  store double %22, ptr %i.aa, align 8, !tbaa !8
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %indvars.iv104.i
  br i1 %exitcond.not.i.3, label %.loopexit124, label %scalar.ph, !llvm.loop !18

.loopexit124:                                     ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %i.ab = icmp samesign ult i64 %indvar.i, 1999
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.loopexit124
  %i.ac = mul nuw nsw i64 %indvar.i, 16008
  %i.ad = add nuw nsw i64 %i.ac, 8                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.ad
  %i.ae = shl nuw nsw i64 %indvar.i, 3
  %i.af = sub nsw i64 15992, %i.ae                ; 2 uses
  %scevgep103.i = getelementptr i8, ptr %i.l, i64 %i.ad
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.af, i1 false), !tbaa !8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep103.i, i8 0, i64 %i.af, i1 false), !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.loopexit124
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvar.i
  store double 1.000000e+00, ptr %i.ag, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvar.i
  store double 1.000000e+00, ptr %i.ah, align 8, !tbaa !8
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 1
  %exitcond112.not.i = icmp eq i64 %indvar.next.i, 2000
  br i1 %exitcond112.not.i, label %bb.d, label %.preheader87.i, !llvm.loop !19

bb.d:                                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.ai = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 32000000) #15
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !10  ; 8 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64              ; 2 uses
  %i.al = icmp eq ptr %i.aj, null
  %i.am = icmp ne i32 %i.ai, 0
  %or.cond.i.i.i = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i, label %bb.e, label %polybench_alloc_data.exit.i

bb.e:                                             ; preds = %bb.d
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ao = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.an) #16 ; 0 uses
  call void @exit(i32 noundef 1) #17
  unreachable

polybench_alloc_data.exit.i:                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000000) %i.aj, i8 0, i64 32000000, i1 false), !tbaa !8
  %scevgep = getelementptr i8, ptr %i.aj, i64 32000000
  br label %.preheader84.i

.preheader84.i:                                   ; preds = %bb.f, %polybench_alloc_data.exit.i
  %indvars.iv127.i = phi i64 [ 0, %polybench_alloc_data.exit.i ], [ %indvars.iv.next128.i, %bb.f ] ; 3 uses
  %i.ap = shl nuw nsw i64 %indvars.iv127.i, 3
  %i.aq = getelementptr i8, ptr %i.e, i64 %i.ap
  %scevgep99 = getelementptr i8, ptr %i.aq, i64 31984008
  %invariant.gep94.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv127.i ; 8 uses
  %bound0 = icmp ult ptr %i.aj, %scevgep99
  %bound1 = icmp ult ptr %invariant.gep94.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader83.i

.preheader83.i:                                   ; preds = %middle.block109, %.preheader84.i
  %indvars.iv123.i = phi i64 [ 0, %.preheader84.i ], [ %indvars.iv.next124.i, %middle.block109 ] ; 3 uses
  %gep95.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv123.i ; 3 uses
  %i.ar = getelementptr inbounds nuw [16000 x i8], ptr %i.aj, i64 %indvars.iv123.i ; 3 uses
  br i1 %found.conflict, label %scalar.ph103, label %vector.ph104

vector.ph104:                                     ; preds = %.preheader83.i
  %i.as = load double, ptr %gep95.i, align 8, !tbaa !8, !alias.scope !20
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.as, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph104
  %index106 = phi i64 [ 0, %vector.ph104 ], [ %index.next108, %vector.body105 ] ; 6 uses
  %i.at = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index106
  %i.au = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index106
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16000
  %i.aw = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index106
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32000
  %i.ay = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %index106
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48000
  %i.ba = load double, ptr %i.at, align 8, !tbaa !8, !alias.scope !23
  %i.bb = load double, ptr %i.av, align 8, !tbaa !8, !alias.scope !23
  %i.bc = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.bb, i64 1
  %i.be = load double, ptr %i.ax, align 8, !tbaa !8, !alias.scope !23
  %i.bf = load double, ptr %i.az, align 8, !tbaa !8, !alias.scope !23
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bf, i64 1
  %i.bi = fmul <2 x double> %broadcast.splat, %i.bd
  %i.bj = fmul <2 x double> %broadcast.splat, %i.bh
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %index106 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bk, align 8, !tbaa !8, !alias.scope !25, !noalias !27
  %wide.load107 = load <2 x double>, ptr %i.bl, align 8, !tbaa !8, !alias.scope !25, !noalias !27
  %i.bm = fadd <2 x double> %wide.load, %i.bi
  %i.bn = fadd <2 x double> %wide.load107, %i.bj
  store <2 x double> %i.bm, ptr %i.bk, align 8, !tbaa !8, !alias.scope !25, !noalias !27
  store <2 x double> %i.bn, ptr %i.bl, align 8, !tbaa !8, !alias.scope !25, !noalias !27
  %index.next108 = add nuw i64 %index106, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next108, 2000
  br i1 %i.bo, label %middle.block109, label %vector.body105, !llvm.loop !28

scalar.ph103:                                     ; preds = %.preheader83.i, %scalar.ph103
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.1, %scalar.ph103 ], [ 0, %.preheader83.i ] ; 4 uses
  %i.bp = load double, ptr %gep95.i, align 8, !tbaa !8
  %gep.i = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv119.i
  %i.bq = load double, ptr %gep.i, align 8, !tbaa !8
  %i.br = fmul double %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv119.i ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !8
  %i.bu = fadd double %i.bt, %i.br
  store double %i.bu, ptr %i.bs, align 8, !tbaa !8
  %indvars.iv.next120.i = or disjoint i64 %indvars.iv119.i, 1 ; 2 uses
  %i.bv = load double, ptr %gep95.i, align 8, !tbaa !8
  %gep.i.1 = getelementptr inbounds nuw [16000 x i8], ptr %invariant.gep94.i, i64 %indvars.iv.next120.i
  %i.bw = load double, ptr %gep.i.1, align 8, !tbaa !8
  %i.bx = fmul double %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next120.i ; 2 uses
  %i.bz = load double, ptr %i.by, align 8, !tbaa !8
  %i.ca = fadd double %i.bz, %i.bx
  store double %i.ca, ptr %i.by, align 8, !tbaa !8
  %indvars.iv.next120.i.1 = add nuw nsw i64 %indvars.iv119.i, 2 ; 2 uses
  %exitcond122.not.i.1 = icmp eq i64 %indvars.iv.next120.i.1, 2000
  br i1 %exitcond122.not.i.1, label %middle.block109, label %scalar.ph103, !llvm.loop !29

middle.block109:                                  ; preds = %vector.body105, %scalar.ph103
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond126.not.i = icmp eq i64 %indvars.iv.next124.i, 2000
  br i1 %exitcond126.not.i, label %bb.f, label %.preheader83.i, !llvm.loop !30

bb.f:                                             ; preds = %middle.block109
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next128.i, 2000
  br i1 %exitcond130.not.i, label %.preheader.i.preheader, label %.preheader84.i, !llvm.loop !31

.preheader.i.preheader:                           ; preds = %bb.f
  %i.cb = sub i64 %i.f, %i.m
  %diff.check111 = icmp ugt i64 %i.cb, -32
  %i.cc = sub i64 %i.ak, %i.f
  %diff.check112 = icmp ugt i64 %i.cc, -32
  %conflict.rdx = or i1 %diff.check111, %diff.check112
  %i.cd = sub i64 %i.ak, %i.m
  %diff.check113 = icmp ugt i64 %i.cd, -32
  %conflict.rdx114 = or i1 %conflict.rdx, %diff.check113
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block122
  %indvars.iv135.i = phi i64 [ %indvars.iv.next136.i, %middle.block122 ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [16000 x i8], ptr %i.aj, i64 %indvars.iv135.i ; 6 uses
  %i.cf = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv135.i ; 6 uses
  %i.cg = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv135.i ; 6 uses
  br i1 %conflict.rdx114, label %scalar.ph115, label %vector.body117

vector.body117:                                   ; preds = %.preheader.i, %vector.body117
  %index118 = phi i64 [ %index.next121.1, %vector.body117 ], [ 0, %.preheader.i ] ; 5 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index118 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load119 = load <2 x double>, ptr %i.ch, align 8, !tbaa !8 ; 2 uses
  %wide.load120 = load <2 x double>, ptr %i.ci, align 8, !tbaa !8 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index118 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store <2 x double> %wide.load119, ptr %i.cj, align 8, !tbaa !8
  store <2 x double> %wide.load120, ptr %i.ck, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index118 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x double> %wide.load119, ptr %i.cl, align 8, !tbaa !8
  store <2 x double> %wide.load120, ptr %i.cm, align 8, !tbaa !8
  %index.next121 = or disjoint i64 %index118, 4   ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index.next121 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load119.1 = load <2 x double>, ptr %i.cn, align 8, !tbaa !8 ; 2 uses
  %wide.load120.1 = load <2 x double>, ptr %i.co, align 8, !tbaa !8 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index.next121 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <2 x double> %wide.load119.1, ptr %i.cp, align 8, !tbaa !8
  store <2 x double> %wide.load120.1, ptr %i.cq, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %index.next121 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x double> %wide.load119.1, ptr %i.cr, align 8, !tbaa !8
  store <2 x double> %wide.load120.1, ptr %i.cs, align 8, !tbaa !8
  %index.next121.1 = add nuw nsw i64 %index118, 8 ; 2 uses
  %i.ct = icmp eq i64 %index.next121.1, 2000
  br i1 %i.ct, label %middle.block122, label %vector.body117, !llvm.loop !32

scalar.ph115:                                     ; preds = %.preheader.i, %scalar.ph115
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.3, %scalar.ph115 ], [ 0, %.preheader.i ] ; 7 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv131.i
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !8 ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv131.i
  store double %i.cv, ptr %i.cw, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv131.i
  store double %i.cv, ptr %i.cx, align 8, !tbaa !8
  %indvars.iv.next132.i = or disjoint i64 %indvars.iv131.i, 1 ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next132.i
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !8 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next132.i
  store double %i.cz, ptr %i.da, align 8, !tbaa !8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next132.i
  store double %i.cz, ptr %i.db, align 8, !tbaa !8
  %indvars.iv.next132.i.1 = or disjoint i64 %indvars.iv131.i, 2 ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next132.i.1
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !8 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next132.i.1
  store double %i.dd, ptr %i.de, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next132.i.1
  store double %i.dd, ptr %i.df, align 8, !tbaa !8
  %indvars.iv.next132.i.2 = or disjoint i64 %indvars.iv131.i, 3 ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next132.i.2
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !8 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next132.i.2
  store double %i.dh, ptr %i.di, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.next132.i.2
  store double %i.dh, ptr %i.dj, align 8, !tbaa !8
  %indvars.iv.next132.i.3 = add nuw nsw i64 %indvars.iv131.i, 4 ; 2 uses
  %exitcond134.not.i.3 = icmp eq i64 %indvars.iv.next132.i.3, 2000
  br i1 %exitcond134.not.i.3, label %middle.block122, label %scalar.ph115, !llvm.loop !33

middle.block122:                                  ; preds = %vector.body117, %scalar.ph115
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv135.i, 1 ; 2 uses
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next136.i, 2000
  br i1 %exitcond138.not.i, label %init_array.exit, label %.preheader.i, !llvm.loop !34

init_array.exit:                                  ; preds = %middle.block122
  call void @free(ptr noundef nonnull %i.aj) #15
  br label %.preheader44.i

.preheader44.i:                                   ; preds = %._crit_edge49.i, %init_array.exit
  %indvars.iv64.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next65.i, %._crit_edge49.i ] ; 11 uses
  %.not.i = icmp eq i64 %indvars.iv64.i, 0
  br i1 %.not.i, label %.preheader43.._crit_edge49_crit_edge.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.preheader44.i
  %i.dk = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv64.i ; 10 uses
  br label %.preheader.i16

.preheader43.._crit_edge49_crit_edge.i:           ; preds = %.preheader44.i
  %.pre70.i = load double, ptr %i.e, align 8, !tbaa !8
  br label %._crit_edge49.i

.lr.ph48.i:                                       ; preds = %._crit_edge.i21
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv64.i ; 4 uses
  %.promoted50.i = load double, ptr %i.dl, align 8, !tbaa !8 ; 2 uses
  %xtraiter141 = and i64 %indvars.iv64.i, 1
  %i.dm = icmp eq i64 %indvars.iv64.i, 1
  br i1 %i.dm, label %.epil.preheader140, label %.lr.ph48.i.new

.lr.ph48.i.new:                                   ; preds = %.lr.ph48.i
  %unroll_iter147 = and i64 %indvars.iv64.i, 9223372036854775806
  br label %bb.h

.preheader.i16:                                   ; preds = %._crit_edge.i21, %.preheader.lr.ph.i
  %indvars.iv55.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next56.i, %._crit_edge.i21 ] ; 11 uses
  %.not52.i = icmp eq i64 %indvars.iv55.i, 0
  br i1 %.not52.i, label %.preheader.._crit_edge_crit_edge.i, label %.lr.ph.i17

.preheader.._crit_edge_crit_edge.i:               ; preds = %.preheader.i16
  %.pre.i = load double, ptr %i.dk, align 8, !tbaa !8
  br label %._crit_edge.i21

.lr.ph.i17:                                       ; preds = %.preheader.i16
  %i.dn = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv55.i ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv55.i ; 4 uses
  %.promoted.i = load double, ptr %i.do, align 8, !tbaa !8 ; 2 uses
  %xtraiter136 = and i64 %indvars.iv55.i, 1
  %i.dp = icmp eq i64 %indvars.iv55.i, 1
  br i1 %i.dp, label %.epil.preheader, label %.lr.ph.i17.new

.lr.ph.i17.new:                                   ; preds = %.lr.ph.i17
  %unroll_iter = and i64 %indvars.iv55.i, 9223372036854775806
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i17.new
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17.new ], [ %indvars.iv.next.i19.1, %bb.g ] ; 4 uses
  %i.dq = phi double [ %.promoted.i, %.lr.ph.i17.new ], [ %i.ec, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i17.new ], [ %niter.next.1, %bb.g ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i18
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i18
  %i.du = load double, ptr %i.dt, align 8, !tbaa !8
  %i.dv = fneg double %i.ds
  %i.dw = call double @llvm.fmuladd.f64(double %i.dv, double %i.du, double %i.dq) ; 2 uses
  store double %i.dw, ptr %i.do, align 8, !tbaa !8
  %indvars.iv.next.i19 = or disjoint i64 %indvars.iv.i18, 1 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.next.i19
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next.i19
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = fneg double %i.dy
  %i.ec = call double @llvm.fmuladd.f64(double %i.eb, double %i.ea, double %i.dw) ; 4 uses
  store double %i.ec, ptr %i.do, align 8, !tbaa !8
  %indvars.iv.next.i19.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i21.loopexit.unr-lcssa, label %bb.g, !llvm.loop !35

._crit_edge.i21.loopexit.unr-lcssa:               ; preds = %bb.g
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %._crit_edge.i21, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i21.loopexit.unr-lcssa, %.lr.ph.i17
  %indvars.iv.i18.epil.init = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i19.1, %._crit_edge.i21.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %.promoted.i, %.lr.ph.i17 ], [ %i.ec, %._crit_edge.i21.loopexit.unr-lcssa ]
  %lcmp.mod139 = trunc i64 %indvars.iv55.i to i1
  call void @llvm.assume(i1 %lcmp.mod139)
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv.i18.epil.init
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i18.epil.init
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !8
  %i.eh = fneg double %i.ee
  %i.ei = call double @llvm.fmuladd.f64(double %i.eh, double %i.eg, double %.epil.init) ; 2 uses
  store double %i.ei, ptr %i.do, align 8, !tbaa !8
  br label %._crit_edge.i21

._crit_edge.i21:                                  ; preds = %.epil.preheader, %._crit_edge.i21.loopexit.unr-lcssa, %.preheader.._crit_edge_crit_edge.i
  %i.ej = phi double [ %.pre.i, %.preheader.._crit_edge_crit_edge.i ], [ %i.ec, %._crit_edge.i21.loopexit.unr-lcssa ], [ %i.ei, %.epil.preheader ]
  %i.ek = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv55.i
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv55.i
  %i.em = load double, ptr %i.el, align 8, !tbaa !8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv55.i
  %i.eo = fdiv double %i.ej, %i.em
  store double %i.eo, ptr %i.en, align 8, !tbaa !8
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %indvars.iv64.i
  br i1 %exitcond59.not.i, label %.lr.ph48.i, label %.preheader.i16, !llvm.loop !36

bb.h:                                             ; preds = %bb.h, %.lr.ph48.i.new
  %indvars.iv60.i = phi i64 [ 0, %.lr.ph48.i.new ], [ %indvars.iv.next61.i.1, %bb.h ] ; 3 uses
  %i.ep = phi double [ %.promoted50.i, %.lr.ph48.i.new ], [ %i.ey, %bb.h ]
  %niter148 = phi i64 [ 0, %.lr.ph48.i.new ], [ %niter148.next.1, %bb.h ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv60.i
  %i.er = load double, ptr %i.eq, align 8, !tbaa !8 ; 2 uses
  %i.es = fneg double %i.er
  %i.et = call double @llvm.fmuladd.f64(double %i.es, double %i.er, double %i.ep) ; 2 uses
  store double %i.et, ptr %i.dl, align 8, !tbaa !8
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv60.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !8 ; 2 uses
  %i.ex = fneg double %i.ew
  %i.ey = call double @llvm.fmuladd.f64(double %i.ex, double %i.ew, double %i.et) ; 4 uses
  store double %i.ey, ptr %i.dl, align 8, !tbaa !8
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv60.i, 2 ; 2 uses
  %niter148.next.1 = add i64 %niter148, 2         ; 2 uses
  %niter148.ncmp.1 = icmp eq i64 %niter148.next.1, %unroll_iter147
  br i1 %niter148.ncmp.1, label %._crit_edge49.i.loopexit.unr-lcssa, label %bb.h, !llvm.loop !37

._crit_edge49.i.loopexit.unr-lcssa:               ; preds = %bb.h
  %lcmp.mod144.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod144.not, label %._crit_edge49.i, label %.epil.preheader140

.epil.preheader140:                               ; preds = %._crit_edge49.i.loopexit.unr-lcssa, %.lr.ph48.i
  %indvars.iv60.i.epil.init = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next61.i.1, %._crit_edge49.i.loopexit.unr-lcssa ]
  %.epil.init143 = phi double [ %.promoted50.i, %.lr.ph48.i ], [ %i.ey, %._crit_edge49.i.loopexit.unr-lcssa ]
  %lcmp.mod146 = trunc i64 %indvars.iv64.i to i1
  call void @llvm.assume(i1 %lcmp.mod146)
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv60.i.epil.init
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !8 ; 2 uses
  %i.fb = fneg double %i.fa
  %i.fc = call double @llvm.fmuladd.f64(double %i.fb, double %i.fa, double %.epil.init143) ; 2 uses
  store double %i.fc, ptr %i.dl, align 8, !tbaa !8
  br label %._crit_edge49.i

._crit_edge49.i:                                  ; preds = %.epil.preheader140, %._crit_edge49.i.loopexit.unr-lcssa, %.preheader43.._crit_edge49_crit_edge.i
  %i.fd = phi double [ %.pre70.i, %.preheader43.._crit_edge49_crit_edge.i ], [ %i.ey, %._crit_edge49.i.loopexit.unr-lcssa ], [ %i.fc, %.epil.preheader140 ]
  %i.fe = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv64.i
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv64.i
  %i.fg = call double @sqrt(double noundef %i.fd) #15, !tbaa !4
  store double %i.fg, ptr %i.ff, align 8, !tbaa !8
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 2000
  br i1 %exitcond67.not.i, label %.preheader44.i22, label %.preheader44.i, !llvm.loop !38

.preheader44.i22:                                 ; preds = %._crit_edge49.i, %._crit_edge49.i42
  %indvars.iv64.i23 = phi i64 [ %indvars.iv.next65.i43, %._crit_edge49.i42 ], [ 0, %._crit_edge49.i ] ; 10 uses
  %.not.i24 = icmp eq i64 %indvars.iv64.i23, 0
  br i1 %.not.i24, label %.preheader43.._crit_edge49_crit_edge.i47, label %.preheader.lr.ph.i25

.preheader.lr.ph.i25:                             ; preds = %.preheader44.i22
  %i.fh = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv64.i23 ; 12 uses
  br label %.preheader.i26

.preheader43.._crit_edge49_crit_edge.i47:         ; preds = %.preheader44.i22
  %.pre70.i48 = load double, ptr %i.l, align 8, !tbaa !8
  br label %._crit_edge49.i42

.lr.ph48.i37:                                     ; preds = %._crit_edge.i34
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv64.i23 ; 6 uses
  %.promoted50.i38 = load double, ptr %i.fi, align 8, !tbaa !8 ; 2 uses
  %xtraiter159 = and i64 %indvars.iv64.i23, 3     ; 3 uses
  %i.fj = icmp samesign ult i64 %indvars.iv64.i23, 4
  br i1 %i.fj, label %.epil.preheader158, label %.lr.ph48.i37.new

.lr.ph48.i37.new:                                 ; preds = %.lr.ph48.i37
  %unroll_iter165 = and i64 %indvars.iv64.i23, 9223372036854775804
  br label %bb.j

.preheader.i26:                                   ; preds = %._crit_edge.i34, %.preheader.lr.ph.i25
  %indvars.iv55.i27 = phi i64 [ 0, %.preheader.lr.ph.i25 ], [ %indvars.iv.next56.i35, %._crit_edge.i34 ] ; 11 uses
  %.not52.i28 = icmp eq i64 %indvars.iv55.i27, 0
  br i1 %.not52.i28, label %.preheader.._crit_edge_crit_edge.i45, label %.lr.ph.i29

.preheader.._crit_edge_crit_edge.i45:             ; preds = %.preheader.i26
  %.pre.i46 = load double, ptr %i.fh, align 8, !tbaa !8
  br label %._crit_edge.i34

.lr.ph.i29:                                       ; preds = %.preheader.i26
  %i.fk = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv55.i27 ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv55.i27 ; 4 uses
  %.promoted.i30 = load double, ptr %i.fl, align 8, !tbaa !8 ; 2 uses
  %xtraiter150 = and i64 %indvars.iv55.i27, 1
  %i.fm = icmp eq i64 %indvars.iv55.i27, 1
  br i1 %i.fm, label %.epil.preheader149, label %.lr.ph.i29.new

.lr.ph.i29.new:                                   ; preds = %.lr.ph.i29
  %unroll_iter156 = and i64 %indvars.iv55.i27, 9223372036854775806
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i29.new
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i29.new ], [ %indvars.iv.next.i32.1, %bb.i ] ; 4 uses
  %i.fn = phi double [ %.promoted.i30, %.lr.ph.i29.new ], [ %i.fz, %bb.i ]
  %niter157 = phi i64 [ 0, %.lr.ph.i29.new ], [ %niter157.next.1, %bb.i ]
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i31
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !8
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.i31
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !8
  %i.fs = fmul double %i.fp, %i.fr
  %i.ft = fsub double %i.fn, %i.fs                ; 2 uses
  store double %i.ft, ptr %i.fl, align 8, !tbaa !8
  %indvars.iv.next.i32 = or disjoint i64 %indvars.iv.i31, 1 ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.next.i32
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i32
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !8
  %i.fy = fmul double %i.fv, %i.fx
  %i.fz = fsub double %i.ft, %i.fy                ; 4 uses
  store double %i.fz, ptr %i.fl, align 8, !tbaa !8
  %indvars.iv.next.i32.1 = add nuw nsw i64 %indvars.iv.i31, 2 ; 2 uses
  %niter157.next.1 = add i64 %niter157, 2         ; 2 uses
  %niter157.ncmp.1 = icmp eq i64 %niter157.next.1, %unroll_iter156
  br i1 %niter157.ncmp.1, label %._crit_edge.i34.loopexit.unr-lcssa, label %bb.i, !llvm.loop !39

._crit_edge.i34.loopexit.unr-lcssa:               ; preds = %bb.i
  %lcmp.mod153.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod153.not, label %._crit_edge.i34, label %.epil.preheader149

.epil.preheader149:                               ; preds = %._crit_edge.i34.loopexit.unr-lcssa, %.lr.ph.i29
  %indvars.iv.i31.epil.init = phi i64 [ 0, %.lr.ph.i29 ], [ %indvars.iv.next.i32.1, %._crit_edge.i34.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init152 = phi double [ %.promoted.i30, %.lr.ph.i29 ], [ %i.fz, %._crit_edge.i34.loopexit.unr-lcssa ]
  %lcmp.mod155 = trunc i64 %indvars.iv55.i27 to i1
  call void @llvm.assume(i1 %lcmp.mod155)
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i31.epil.init
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.i31.epil.init
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !8
  %i.ge = fmul double %i.gb, %i.gd
  %i.gf = fsub double %.epil.init152, %i.ge       ; 2 uses
  store double %i.gf, ptr %i.fl, align 8, !tbaa !8
  br label %._crit_edge.i34

._crit_edge.i34:                                  ; preds = %.epil.preheader149, %._crit_edge.i34.loopexit.unr-lcssa, %.preheader.._crit_edge_crit_edge.i45
  %i.gg = phi double [ %.pre.i46, %.preheader.._crit_edge_crit_edge.i45 ], [ %i.fz, %._crit_edge.i34.loopexit.unr-lcssa ], [ %i.gf, %.epil.preheader149 ]
  %i.gh = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv55.i27
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv55.i27
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !8
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv55.i27
  %i.gl = fdiv double %i.gg, %i.gj
  store double %i.gl, ptr %i.gk, align 8, !tbaa !8
  %indvars.iv.next56.i35 = add nuw nsw i64 %indvars.iv55.i27, 1 ; 2 uses
  %exitcond59.not.i36 = icmp eq i64 %indvars.iv.next56.i35, %indvars.iv64.i23
  br i1 %exitcond59.not.i36, label %.lr.ph48.i37, label %.preheader.i26, !llvm.loop !40

bb.j:                                             ; preds = %bb.j, %.lr.ph48.i37.new
  %indvars.iv60.i39 = phi i64 [ 0, %.lr.ph48.i37.new ], [ %indvars.iv.next61.i40.3, %bb.j ] ; 5 uses
  %i.gm = phi double [ %.promoted50.i38, %.lr.ph48.i37.new ], [ %i.hf, %bb.j ]
  %niter166 = phi i64 [ 0, %.lr.ph48.i37.new ], [ %niter166.next.3, %bb.j ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv60.i39
  %i.go = load double, ptr %i.gn, align 8, !tbaa !8 ; 2 uses
  %i.gp = fmul double %i.go, %i.go
  %i.gq = fsub double %i.gm, %i.gp                ; 2 uses
  store double %i.gq, ptr %i.fi, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv60.i39
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !8 ; 2 uses
  %i.gu = fmul double %i.gt, %i.gt
  %i.gv = fsub double %i.gq, %i.gu                ; 2 uses
  store double %i.gv, ptr %i.fi, align 8, !tbaa !8
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv60.i39
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !8 ; 2 uses
  %i.gz = fmul double %i.gy, %i.gy
  %i.ha = fsub double %i.gv, %i.gz                ; 2 uses
  store double %i.ha, ptr %i.fi, align 8, !tbaa !8
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv60.i39
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !8 ; 2 uses
  %i.he = fmul double %i.hd, %i.hd
  %i.hf = fsub double %i.ha, %i.he                ; 4 uses
  store double %i.hf, ptr %i.fi, align 8, !tbaa !8
  %indvars.iv.next61.i40.3 = add nuw nsw i64 %indvars.iv60.i39, 4 ; 2 uses
  %niter166.next.3 = add i64 %niter166, 4         ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %._crit_edge49.i42.loopexit.unr-lcssa, label %bb.j, !llvm.loop !41

._crit_edge49.i42.loopexit.unr-lcssa:             ; preds = %bb.j
  %lcmp.mod162.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod162.not, label %._crit_edge49.i42, label %.epil.preheader158

.epil.preheader158:                               ; preds = %._crit_edge49.i42.loopexit.unr-lcssa, %.lr.ph48.i37
  %indvars.iv60.i39.epil.init = phi i64 [ 0, %.lr.ph48.i37 ], [ %indvars.iv.next61.i40.3, %._crit_edge49.i42.loopexit.unr-lcssa ]
  %.epil.init161 = phi double [ %.promoted50.i38, %.lr.ph48.i37 ], [ %i.hf, %._crit_edge49.i42.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter159, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader158
  %indvars.iv60.i39.epil = phi i64 [ %indvars.iv60.i39.epil.init, %.epil.preheader158 ], [ %indvars.iv.next61.i40.epil, %bb.k ] ; 2 uses
  %i.hg = phi double [ %.epil.init161, %.epil.preheader158 ], [ %i.hk, %bb.k ]
  %epil.iter = phi i64 [ 0, %.epil.preheader158 ], [ %epil.iter.next, %bb.k ]
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv60.i39.epil
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !8 ; 2 uses
  %i.hj = fmul double %i.hi, %i.hi
  %i.hk = fsub double %i.hg, %i.hj                ; 3 uses
  store double %i.hk, ptr %i.fi, align 8, !tbaa !8
  %indvars.iv.next61.i40.epil = add nuw nsw i64 %indvars.iv60.i39.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter159
  br i1 %epil.iter.cmp.not, label %._crit_edge49.i42, label %bb.k, !llvm.loop !42

._crit_edge49.i42:                                ; preds = %._crit_edge49.i42.loopexit.unr-lcssa, %bb.k, %.preheader43.._crit_edge49_crit_edge.i47
  %i.hl = phi double [ %.pre70.i48, %.preheader43.._crit_edge49_crit_edge.i47 ], [ %i.hf, %._crit_edge49.i42.loopexit.unr-lcssa ], [ %i.hk, %bb.k ]
  %i.hm = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv64.i23
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %indvars.iv64.i23
  %i.ho = call double @sqrt(double noundef %i.hl) #15, !tbaa !4
  store double %i.ho, ptr %i.hn, align 8, !tbaa !8
  %indvars.iv.next65.i43 = add nuw nsw i64 %indvars.iv64.i23, 1 ; 2 uses
  %exitcond67.not.i44 = icmp eq i64 %indvars.iv.next65.i43, 2000
  br i1 %exitcond67.not.i44, label %.preheader.i49, label %.preheader44.i22, !llvm.loop !44

.preheader.i49:                                   ; preds = %._crit_edge49.i42, %bb.m
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.m ], [ 0, %._crit_edge49.i42 ] ; 4 uses
  %i.hp = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv39.i ; 2 uses
  %i.hq = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv39.i ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.1, %.preheader.i49
  %indvars.iv.i50 = phi i64 [ 0, %.preheader.i49 ], [ %indvars.iv.next.i51.1, %.critedge.i.1 ] ; 5 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.i50
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !8 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.i50
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !8 ; 2 uses
  %i.hv = fsub double %i.hs, %i.hu
  %i.hw = call double @llvm.fabs.f64(double %i.hv)
  %i.hx = fcmp ule double %i.hw, 1.000000e-05
  br i1 %i.hx, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.l
  %indvars.iv.i50.lcssa = phi i64 [ %indvars.iv.i50, %bb.l ], [ %indvars.iv.next.i51, %.critedge.i ]
  %.lcssa126 = phi double [ %i.hs, %bb.l ], [ %i.id, %.critedge.i ]
  %.lcssa = phi double [ %i.hu, %bb.l ], [ %i.if, %.critedge.i ]
  %i.hy = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.hz = trunc nuw nsw i64 %indvars.iv.i50.lcssa to i32 ; 2 uses
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.2, i32 noundef %i.hy, i32 noundef %i.hz, double noundef %.lcssa126, i32 noundef %i.hy, i32 noundef %i.hz, double noundef %.lcssa, double noundef 1.000000e-05) #18 ; 0 uses
  br label %bb.p

.critedge.i:                                      ; preds = %bb.l
  %indvars.iv.next.i51 = or disjoint i64 %indvars.iv.i50, 1 ; 3 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.next.i51
  %i.id = load double, ptr %i.ic, align 8, !tbaa !8 ; 2 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %indvars.iv.next.i51
  %i.if = load double, ptr %i.ie, align 8, !tbaa !8 ; 2 uses
  %i.ig = fsub double %i.id, %i.if
  %i.ih = call double @llvm.fabs.f64(double %i.ig)
  %i.ii = fcmp ule double %i.ih, 1.000000e-05
  br i1 %i.ii, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %exitcond.not.i52.1 = icmp eq i64 %indvars.iv.next.i51.1, 2000
  br i1 %exitcond.not.i52.1, label %bb.m, label %bb.l, !llvm.loop !45

bb.m:                                             ; preds = %.critedge.i.1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2000
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i49, !llvm.loop !46

check_FP.exit:                                    ; preds = %bb.m
  %i.ij = call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #19 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 32000
  store i8 0, ptr %i.ik, align 1, !tbaa !47
  br label %.preheader.i53

.preheader.i53:                                   ; preds = %bb.o, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.o ] ; 2 uses
  %i.il = getelementptr inbounds nuw [16000 x i8], ptr %i.l, i64 %indvars.iv20.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.i53
  %indvars.iv.i54 = phi i64 [ 0, %.preheader.i53 ], [ %indvars.iv.next.i55, %bb.n ] ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.i54
  %i.in = shl nuw nsw i64 %indvars.iv.i54, 4
  %i.io = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.in
  %i.ip = load i64, ptr %i.im, align 8, !tbaa !8  ; 4 uses
  %i.iq = lshr i64 %i.ip, 56
  %i.ir = trunc nuw i64 %i.iq to i8
  %i.is = insertelement <2 x i64> poison, i64 %i.ip, i64 0
  %i.it = shufflevector <2 x i64> %i.is, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.iu = lshr <2 x i64> %i.it, <i64 40, i64 48>
  %i.iv = trunc <2 x i64> %i.iu to <2 x i8>
  %i.iw = insertelement <4 x i64> poison, i64 %i.ip, i64 0
  %i.ix = shufflevector <4 x i64> %i.iw, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.iy = lshr <4 x i64> %i.ix, <i64 8, i64 16, i64 24, i64 32>
  %i.iz = trunc <4 x i64> %i.iy to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ip to i8
  %i.ja = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.jb = shufflevector <4 x i8> %i.iz, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jc = shufflevector <8 x i8> %i.ja, <8 x i8> %i.jb, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.jd = shufflevector <2 x i8> %i.iv, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.je = shufflevector <8 x i8> %i.jc, <8 x i8> %i.jd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.jf = insertelement <8 x i8> %i.je, i8 %i.ir, i64 7
  %i.jg = and <8 x i8> %i.jf, splat (i8 15)
  %i.jh = or disjoint <8 x i8> %i.jg, splat (i8 48)
  %i.ji = shufflevector <8 x i8> %i.jh, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ji, ptr %i.io, align 1, !tbaa !47
  %indvars.iv.next.i55 = add nuw nsw i64 %indvars.iv.i54, 1 ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %indvars.iv.next.i55, 2000
  br i1 %exitcond.not.i56, label %bb.o, label %bb.n, !llvm.loop !48

bb.o:                                             ; preds = %bb.n
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.jk = call i32 @fputs(ptr noundef nonnull %i.ij, ptr noundef %i.jj) #16 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i53, !llvm.loop !49

print_array.exit:                                 ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ij) #15
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
!19 = distinct !{!19, !15}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = !{!26}
!26 = distinct !{!26, !22}
!27 = !{!24, !21}
!28 = distinct !{!28, !15, !16, !17}
!29 = distinct !{!29, !15, !16}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15, !16, !17}
!33 = distinct !{!33, !15, !16}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = !{!6, !6, i64 0}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15}
end_hunk_0
