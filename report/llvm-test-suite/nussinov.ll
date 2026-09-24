Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/nussinov?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
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
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !9
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !9
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 2500) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11   ; 14 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.i = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 25000000) #13
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !11   ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp ne i32 %i.i, 0
  %or.cond.i.i20 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i.i20, label %bb.c, label %polybench_alloc_data.exit22

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i21 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.m) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit22:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.n = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 25000000) #13
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !11   ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = icmp ne i32 %i.n, 0
  %or.cond.i.i23 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond.i.i23, label %bb.d, label %polybench_alloc_data.exit25

bb.d:                                             ; preds = %polybench_alloc_data.exit22
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i24 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.r) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit25:                      ; preds = %polybench_alloc_data.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %polybench_alloc_data.exit25
  %index = phi i64 [ 0, %polybench_alloc_data.exit25 ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <16 x i8> [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %polybench_alloc_data.exit25 ], [ %vec.ind.next.2, %vector.body ] ; 7 uses
  %2 = and <16 x i8> %vec.ind, splat (i8 3)
  %3 = and <16 x i8> %vec.ind, splat (i8 3)
  %4 = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <16 x i8> %2, ptr %4, align 1, !tbaa !26
  store <16 x i8> %3, ptr %5, align 1, !tbaa !26
  %6 = and <16 x i8> %vec.ind, splat (i8 3)
  %7 = and <16 x i8> %vec.ind, splat (i8 3)
  %8 = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 32
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <16 x i8> %6, ptr %9, align 1, !tbaa !26
  store <16 x i8> %7, ptr %10, align 1, !tbaa !26
  %11 = and <16 x i8> %vec.ind, splat (i8 3)
  %i.s = and <16 x i8> %vec.ind, splat (i8 3)
  %12 = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 80
  store <16 x i8> %11, ptr %13, align 1, !tbaa !26
  store <16 x i8> %i.s, ptr %i.t, align 1, !tbaa !26
  %index.next = add nuw nsw i64 %index, 96        ; 2 uses
  %vec.ind.next.2 = add <16 x i8> %vec.ind, splat (i8 96)
  %i.u = icmp eq i64 %index.next, 2496
  br i1 %i.u, label %scalar.ph, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %vector.body
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.v, align 1, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %i.j, i8 0, i64 25000000, i1 false), !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge135.i, %scalar.ph
  %indvars.iv144.i = phi i64 [ 2499, %scalar.ph ], [ %indvars.iv.next145.i, %._crit_edge135.i ] ; 7 uses
  %indvars.iv.i26 = phi i64 [ 2500, %scalar.ph ], [ %indvars.iv.next.i27, %._crit_edge135.i ] ; 5 uses
  %i.w = add nuw nsw i64 %indvars.iv144.i, 1      ; 2 uses
  %i.x = icmp samesign ult i64 %indvars.iv144.i, 2499
  br i1 %i.x, label %.lr.ph134.i, label %._crit_edge135.i

.lr.ph134.i:                                      ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [10000 x i8], ptr %i.j, i64 %indvars.iv144.i ; 5 uses
  %i.z = getelementptr inbounds nuw [10000 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv144.i
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i26
  %indvars.iv.next138.i.prol = add nuw nsw i64 %indvars.iv.i26, 1 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %.lr.ph134.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.i ], [ 0, %.lr.ph134.i ] ; 3 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i, %._crit_edge.i ], [ %indvars.iv.i26, %.lr.ph134.i ] ; 8 uses
  %i.ac = add nsw i64 %indvars.iv140.i, -1        ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv140.i ; 6 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.ac
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = call i32 @llvm.smax.i32(i32 %i.ae, i32 %i.ag)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv140.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %..i = call i32 @llvm.smax.i32(i32 %i.ah, i32 %i.aj) ; 2 uses
  store i32 %..i, ptr %i.ad, align 4, !tbaa !7
  %i.ak = icmp samesign ult i64 %indvars.iv144.i, %i.ac
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ac
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7  ; 2 uses
  br i1 %i.ak, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %bb.f
  %i.an = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.ao = sext i8 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv140.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !26
  %i.ar = sext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, %i.ao
  %i.at = icmp eq i32 %i.as, 3
  %i.au = zext i1 %i.at to i32
  %i.av = add nsw i32 %i.am, %i.au
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %.sink.i = phi i32 [ %i.av, %bb.g ], [ %i.am, %bb.f ]
  %.127.i = call i32 @llvm.smax.i32(i32 %..i, i32 %.sink.i) ; 3 uses
  store i32 %.127.i, ptr %i.ad, align 4, !tbaa !7
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv140.i ; 3 uses
  %i.aw = icmp samesign ult i64 %i.w, %indvars.iv140.i
  br i1 %i.aw, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.critedge.i
  %xtraiter = and i64 %indvar, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ax = load i32, ptr %i.ab, align 4, !tbaa !7
  %gep.i.prol = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next138.i.prol
  %i.ay = load i32, ptr %gep.i.prol, align 4, !tbaa !7
  %i.az = add nsw i32 %i.ay, %i.ax
  %.129.i.prol = call i32 @llvm.smax.i32(i32 %.127.i, i32 %i.az) ; 2 uses
  store i32 %.129.i.prol, ptr %i.ad, align 4, !tbaa !7
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv137.i.unr = phi i64 [ %indvars.iv.i26, %.lr.ph.i.preheader ], [ %indvars.iv.next138.i.prol, %.lr.ph.i.prol ]
  %.129131.i.unr = phi i32 [ %.127.i, %.lr.ph.i.preheader ], [ %.129.i.prol, %.lr.ph.i.prol ]
  %i.ba = icmp eq i64 %indvar, 1
  br i1 %i.ba, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i.1, %.lr.ph.i ], [ %indvars.iv137.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.129131.i = phi i32 [ %.129.i.1, %.lr.ph.i ], [ %.129131.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv137.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %gep.i = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next138.i
  %i.bd = load i32, ptr %gep.i, align 4, !tbaa !7
  %i.be = add nsw i32 %i.bd, %i.bc
  %.129.i = call i32 @llvm.smax.i32(i32 %.129131.i, i32 %i.be) ; 2 uses
  store i32 %.129.i, ptr %i.ad, align 4, !tbaa !7
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.next138.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %indvars.iv.next138.i.1 = add nuw nsw i64 %indvars.iv137.i, 2 ; 3 uses
  %gep.i.1 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next138.i.1
  %i.bh = load i32, ptr %gep.i.1, align 4, !tbaa !7
  %i.bi = add nsw i32 %i.bh, %i.bg
  %.129.i.1 = call i32 @llvm.smax.i32(i32 %.129.i, i32 %i.bi) ; 2 uses
  store i32 %.129.i.1, ptr %i.ad, align 4, !tbaa !7
  %exitcond.not.i28.1 = icmp eq i64 %indvars.iv.next138.i.1, %indvars.iv140.i
  br i1 %exitcond.not.i28.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.critedge.i
  %indvars.iv.next141.i = add nuw nsw i64 %indvars.iv140.i, 1 ; 2 uses
  %exitcond143.not.i = icmp eq i64 %indvars.iv.next141.i, 2500
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond143.not.i, label %._crit_edge135.i, label %bb.f, !llvm.loop !16

._crit_edge135.i:                                 ; preds = %._crit_edge.i, %bb.e
  %indvars.iv.next145.i = add nsw i64 %indvars.iv144.i, -1
  %.not.i = icmp eq i64 %indvars.iv144.i, 0
  %indvars.iv.next.i27 = add nsw i64 %indvars.iv.i26, -1
  br i1 %.not.i, label %vector.body94, label %bb.e, !llvm.loop !17

vector.body94:                                    ; preds = %._crit_edge135.i, %vector.body94
  %index95 = phi i64 [ %index.next97, %vector.body94 ], [ 0, %._crit_edge135.i ] ; 4 uses
  %vec.ind100 = phi <16 x i8> [ %vec.ind.next103.2, %vector.body94 ], [ <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, %._crit_edge135.i ] ; 7 uses
  %14 = and <16 x i8> %vec.ind100, splat (i8 3)
  %15 = and <16 x i8> %vec.ind100, splat (i8 3)
  %16 = getelementptr inbounds nuw i8, ptr %i.e, i64 %index95 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  store <16 x i8> %14, ptr %16, align 1, !tbaa !26
  store <16 x i8> %15, ptr %17, align 1, !tbaa !26
  %18 = and <16 x i8> %vec.ind100, splat (i8 3)
  %19 = and <16 x i8> %vec.ind100, splat (i8 3)
  %20 = getelementptr inbounds nuw i8, ptr %i.e, i64 %index95 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %20, i64 48
  store <16 x i8> %18, ptr %21, align 1, !tbaa !26
  store <16 x i8> %19, ptr %22, align 1, !tbaa !26
  %23 = and <16 x i8> %vec.ind100, splat (i8 3)
  %i.bj = and <16 x i8> %vec.ind100, splat (i8 3)
  %24 = getelementptr inbounds nuw i8, ptr %i.e, i64 %index95 ; 2 uses
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %24, i64 80
  store <16 x i8> %23, ptr %25, align 1, !tbaa !26
  store <16 x i8> %i.bj, ptr %i.bk, align 1, !tbaa !26
  %index.next97 = add nuw nsw i64 %index95, 96    ; 2 uses
  %vec.ind.next103.2 = add <16 x i8> %vec.ind100, splat (i8 96)
  %i.bl = icmp eq i64 %index.next97, 2496
  br i1 %i.bl, label %kernel_nussinov.exit, label %vector.body94, !llvm.loop !18

kernel_nussinov.exit:                             ; preds = %vector.body94
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.bm, align 1, !tbaa !26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25000000) %i.o, i8 0, i64 25000000, i1 false), !tbaa !7
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge135.i35, %kernel_nussinov.exit
  %indvars.iv144.i33 = phi i64 [ 2499, %kernel_nussinov.exit ], [ %indvars.iv.next145.i36, %._crit_edge135.i35 ] ; 7 uses
  %indvars.iv.i34 = phi i64 [ 2500, %kernel_nussinov.exit ], [ %indvars.iv.next.i38, %._crit_edge135.i35 ] ; 5 uses
  %i.bn = add nuw nsw i64 %indvars.iv144.i33, 1   ; 2 uses
  %i.bo = icmp samesign ult i64 %indvars.iv144.i33, 2499
  br i1 %i.bo, label %.lr.ph134.i39, label %._crit_edge135.i35

.lr.ph134.i39:                                    ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw [10000 x i8], ptr %i.o, i64 %indvars.iv144.i33 ; 5 uses
  %i.bq = getelementptr inbounds nuw [10000 x i8], ptr %i.o, i64 %i.bn ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv144.i33
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i34
  %indvars.iv.next138.i52.prol = add nuw nsw i64 %indvars.iv.i34, 1 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i46, %.lr.ph134.i39
  %indvar105 = phi i64 [ %indvar.next106, %._crit_edge.i46 ], [ 0, %.lr.ph134.i39 ] ; 3 uses
  %indvars.iv140.i40 = phi i64 [ %indvars.iv.next141.i47, %._crit_edge.i46 ], [ %indvars.iv.i34, %.lr.ph134.i39 ] ; 8 uses
  %i.bt = add nsw i64 %indvars.iv140.i40, -1      ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv140.i40 ; 6 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bt
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = call i32 @llvm.smax.i32(i32 %i.bv, i32 %i.bx)
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv140.i40
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %..i41 = call i32 @llvm.smax.i32(i32 %i.by, i32 %i.ca) ; 2 uses
  store i32 %..i41, ptr %i.bu, align 4, !tbaa !7
  %i.cb = icmp samesign ult i64 %indvars.iv144.i33, %i.bt
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bt
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7  ; 2 uses
  br i1 %i.cb, label %bb.j, label %.critedge.i42

bb.j:                                             ; preds = %bb.i
  %i.ce = load i8, ptr %i.br, align 1, !tbaa !26
  %i.cf = sext i8 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv140.i40
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !26
  %i.ci = sext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, %i.cf
  %i.ck = icmp eq i32 %i.cj, 3
  %i.cl = zext i1 %i.ck to i32
  %i.cm = add nsw i32 %i.cd, %i.cl
  br label %.critedge.i42

.critedge.i42:                                    ; preds = %bb.j, %bb.i
  %.sink.i43 = phi i32 [ %i.cm, %bb.j ], [ %i.cd, %bb.i ]
  %.127.i44 = call i32 @llvm.smax.i32(i32 %..i41, i32 %.sink.i43) ; 3 uses
  store i32 %.127.i44, ptr %i.bu, align 4, !tbaa !7
  %invariant.gep.i45 = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv140.i40 ; 3 uses
  %i.cn = icmp samesign ult i64 %i.bn, %indvars.iv140.i40
  br i1 %i.cn, label %.lr.ph.i49.preheader, label %._crit_edge.i46

.lr.ph.i49.preheader:                             ; preds = %.critedge.i42
  %xtraiter107 = and i64 %indvar105, 1
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %.lr.ph.i49.prol.loopexit, label %.lr.ph.i49.prol

.lr.ph.i49.prol:                                  ; preds = %.lr.ph.i49.preheader
  %i.co = load i32, ptr %i.bs, align 4, !tbaa !7
  %gep.i53.prol = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i45, i64 %indvars.iv.next138.i52.prol
  %i.cp = load i32, ptr %gep.i53.prol, align 4, !tbaa !7
  %i.cq = add nsw i32 %i.cp, %i.co
  %.129.i54.prol = call i32 @llvm.smax.i32(i32 %.127.i44, i32 %i.cq) ; 2 uses
  store i32 %.129.i54.prol, ptr %i.bu, align 4, !tbaa !7
  br label %.lr.ph.i49.prol.loopexit

.lr.ph.i49.prol.loopexit:                         ; preds = %.lr.ph.i49.prol, %.lr.ph.i49.preheader
  %indvars.iv137.i50.unr = phi i64 [ %indvars.iv.i34, %.lr.ph.i49.preheader ], [ %indvars.iv.next138.i52.prol, %.lr.ph.i49.prol ]
  %.129131.i51.unr = phi i32 [ %.127.i44, %.lr.ph.i49.preheader ], [ %.129.i54.prol, %.lr.ph.i49.prol ]
  %i.cr = icmp eq i64 %indvar105, 1
  br i1 %i.cr, label %._crit_edge.i46, label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49
  %indvars.iv137.i50 = phi i64 [ %indvars.iv.next138.i52.1, %.lr.ph.i49 ], [ %indvars.iv137.i50.unr, %.lr.ph.i49.prol.loopexit ] ; 3 uses
  %.129131.i51 = phi i32 [ %.129.i54.1, %.lr.ph.i49 ], [ %.129131.i51.unr, %.lr.ph.i49.prol.loopexit ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv137.i50
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %indvars.iv.next138.i52 = add nuw nsw i64 %indvars.iv137.i50, 1 ; 2 uses
  %gep.i53 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i45, i64 %indvars.iv.next138.i52
  %i.cu = load i32, ptr %gep.i53, align 4, !tbaa !7
  %i.cv = add nsw i32 %i.cu, %i.ct
  %.129.i54 = call i32 @llvm.smax.i32(i32 %.129131.i51, i32 %i.cv) ; 2 uses
  store i32 %.129.i54, ptr %i.bu, align 4, !tbaa !7
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.next138.i52
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7
  %indvars.iv.next138.i52.1 = add nuw nsw i64 %indvars.iv137.i50, 2 ; 3 uses
  %gep.i53.1 = getelementptr inbounds nuw [10000 x i8], ptr %invariant.gep.i45, i64 %indvars.iv.next138.i52.1
  %i.cy = load i32, ptr %gep.i53.1, align 4, !tbaa !7
  %i.cz = add nsw i32 %i.cy, %i.cx
  %.129.i54.1 = call i32 @llvm.smax.i32(i32 %.129.i54, i32 %i.cz) ; 2 uses
  store i32 %.129.i54.1, ptr %i.bu, align 4, !tbaa !7
  %exitcond.not.i55.1 = icmp eq i64 %indvars.iv.next138.i52.1, %indvars.iv140.i40
  br i1 %exitcond.not.i55.1, label %._crit_edge.i46, label %.lr.ph.i49, !llvm.loop !19

._crit_edge.i46:                                  ; preds = %.lr.ph.i49.prol.loopexit, %.lr.ph.i49, %.critedge.i42
  %indvars.iv.next141.i47 = add nuw nsw i64 %indvars.iv140.i40, 1 ; 2 uses
  %exitcond143.not.i48 = icmp eq i64 %indvars.iv.next141.i47, 2500
  %indvar.next106 = add i64 %indvar105, 1
  br i1 %exitcond143.not.i48, label %._crit_edge135.i35, label %bb.i, !llvm.loop !20

._crit_edge135.i35:                               ; preds = %._crit_edge.i46, %bb.h
  %indvars.iv.next145.i36 = add nsw i64 %indvars.iv144.i33, -1
  %.not.i37 = icmp eq i64 %indvars.iv144.i33, 0
  %indvars.iv.next.i38 = add nsw i64 %indvars.iv.i34, -1
  br i1 %.not.i37, label %.preheader.i, label %bb.h, !llvm.loop !21

.preheader.i:                                     ; preds = %._crit_edge135.i35, %bb.l
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.l ], [ 0, %._crit_edge135.i35 ] ; 4 uses
  %i.da = getelementptr inbounds nuw [10000 x i8], ptr %i.j, i64 %indvars.iv39.i ; 5 uses
  %i.db = getelementptr inbounds nuw [10000 x i8], ptr %i.o, i64 %indvars.iv39.i ; 5 uses
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i58.4, %.preheader.i
  %indvars.iv.i56 = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i59.4, %.critedge.i58.4 ] ; 8 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i56
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7  ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i56
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7  ; 2 uses
  %.not.i57 = icmp eq i32 %i.dd, %i.df
  br i1 %.not.i57, label %.critedge.i58, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i58.3, %.critedge.i58.2, %.critedge.i58.1, %.critedge.i58, %bb.k
  %indvars.iv.i56.lcssa = phi i64 [ %indvars.iv.i56, %bb.k ], [ %indvars.iv.next.i59, %.critedge.i58 ], [ %indvars.iv.next.i59.1, %.critedge.i58.1 ], [ %indvars.iv.next.i59.2, %.critedge.i58.2 ], [ %indvars.iv.next.i59.3, %.critedge.i58.3 ]
  %.lcssa101 = phi i32 [ %i.dd, %bb.k ], [ %i.dn, %.critedge.i58 ], [ %i.dr, %.critedge.i58.1 ], [ %i.dv, %.critedge.i58.2 ], [ %i.dz, %.critedge.i58.3 ]
  %.lcssa = phi i32 [ %i.df, %bb.k ], [ %i.dp, %.critedge.i58 ], [ %i.dt, %.critedge.i58.1 ], [ %i.dx, %.critedge.i58.2 ], [ %i.eb, %.critedge.i58.3 ]
  %i.dg = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv.i56.lcssa to i32 ; 2 uses
  %i.di = sitofp i32 %.lcssa to double
  %i.dj = sitofp i32 %.lcssa101 to double
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.2, i32 noundef %i.dg, i32 noundef %i.dh, double noundef %i.dj, i32 noundef %i.dg, i32 noundef %i.dh, double noundef %i.di, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.o

.critedge.i58:                                    ; preds = %bb.k
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i56, 1 ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i59
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7  ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i59
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !7  ; 2 uses
  %.not.i57.1 = icmp eq i32 %i.dn, %i.dp
  br i1 %.not.i57.1, label %.critedge.i58.1, label %check_FP.exit.thread

.critedge.i58.1:                                  ; preds = %.critedge.i58
  %indvars.iv.next.i59.1 = add nuw nsw i64 %indvars.iv.i56, 2 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i59.1
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7  ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i59.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7  ; 2 uses
  %.not.i57.2 = icmp eq i32 %i.dr, %i.dt
  br i1 %.not.i57.2, label %.critedge.i58.2, label %check_FP.exit.thread

.critedge.i58.2:                                  ; preds = %.critedge.i58.1
  %indvars.iv.next.i59.2 = add nuw nsw i64 %indvars.iv.i56, 3 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i59.2
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7  ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i59.2
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !7  ; 2 uses
  %.not.i57.3 = icmp eq i32 %i.dv, %i.dx
  br i1 %.not.i57.3, label %.critedge.i58.3, label %check_FP.exit.thread

.critedge.i58.3:                                  ; preds = %.critedge.i58.2
  %indvars.iv.next.i59.3 = add nuw nsw i64 %indvars.iv.i56, 4 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i59.3
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !7  ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i59.3
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7  ; 2 uses
  %.not.i57.4 = icmp eq i32 %i.dz, %i.eb
  br i1 %.not.i57.4, label %.critedge.i58.4, label %check_FP.exit.thread

.critedge.i58.4:                                  ; preds = %.critedge.i58.3
  %indvars.iv.next.i59.4 = add nuw nsw i64 %indvars.iv.i56, 5 ; 2 uses
  %exitcond.not.i60.4 = icmp eq i64 %indvars.iv.next.i59.4, 2500
  br i1 %exitcond.not.i60.4, label %bb.l, label %bb.k, !llvm.loop !22

bb.l:                                             ; preds = %.critedge.i58.4
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2500
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i, !llvm.loop !23

check_FP.exit:                                    ; preds = %bb.l
  %i.ec = call noalias dereferenceable_or_null(40001) ptr @malloc(i64 noundef 40001) #17 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40000
  store i8 0, ptr %i.ed, align 1, !tbaa !26
  br label %.preheader.i61

.preheader.i61:                                   ; preds = %bb.n, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.n ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [10000 x i8], ptr %i.o, i64 %indvars.iv20.i
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i61
  %indvars.iv.i62 = phi i64 [ 0, %.preheader.i61 ], [ %indvars.iv.next.i63, %bb.m ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i62
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  %i.eh = sitofp i32 %i.eg to double
  %i.ei = shl nuw nsw i64 %indvars.iv.i62, 4
end_hunk_0
