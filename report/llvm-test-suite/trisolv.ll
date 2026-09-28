Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/trisolv?download=true
inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 32000000) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11   ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i.i = or i1 %i.g, %i.f
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.i = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 16000) #13
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !11   ; 8 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp ne i32 %i.i, 0
  %or.cond.i.i12 = or i1 %i.l, %i.k
  br i1 %or.cond.i.i12, label %bb.c, label %polybench_alloc_data.exit14

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i13 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.m) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit14:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.n = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 16000) #13
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = icmp ne i32 %i.n, 0
  %or.cond.i.i15 = or i1 %i.q, %i.p
  br i1 %or.cond.i.i15, label %bb.d, label %polybench_alloc_data.exit17

bb.d:                                             ; preds = %polybench_alloc_data.exit14
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i16 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.r) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit17:                      ; preds = %polybench_alloc_data.exit14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %polybench_alloc_data.exit17
  %indvars.iv26.i = phi i64 [ 0, %polybench_alloc_data.exit17 ], [ %indvars.iv.next27.i, %.loopexit ] ; 6 uses
  %indvars.iv24.i = phi i64 [ 1, %polybench_alloc_data.exit17 ], [ %indvars.iv.next25.i, %.loopexit ] ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv26.i
  store double -9.990000e+02, ptr %i.s, align 8, !tbaa !9
  %i.t = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.u = uitofp nneg i32 %i.t to double
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv26.i
  store double %i.u, ptr %i.v, align 8, !tbaa !9
  %i.w = add nuw nsw i64 %indvars.iv26.i, 2000    ; 2 uses
  %i.x = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv26.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv24.i, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %indvars.iv24.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.w, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.y = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.z = trunc <2 x i64> %i.y to <2 x i32>
  %i.aa = shl <2 x i32> %i.z, splat (i32 1)
  %i.ab = add <2 x i32> %i.aa, splat (i32 2)
  %i.ac = uitofp nneg <2 x i32> %i.ab to <2 x double>
  %i.ad = fdiv <2 x double> %i.ac, splat (double 2.000000e+03)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv24.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.e, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ag = sub nuw nsw i64 %i.w, %indvars.iv.i
  %.tr.i = trunc i64 %i.ag to i32
  %i.ah = shl i32 %.tr.i, 1
  %i.ai = add i32 %i.ah, 2
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fdiv double %i.aj, 2.000000e+03
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  store double %i.ak, ptr %i.al, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv24.i
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !15

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next27.i, 2000
  br i1 %exitcond31.not.i, label %init_array.exit, label %bb.e, !llvm.loop !16

init_array.exit:                                  ; preds = %.loopexit, %._crit_edge.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.i ], [ 0, %.loopexit ] ; 11 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv27.i
  %i.an = load double, ptr %i.am, align 8, !tbaa !9 ; 4 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv27.i ; 5 uses
  store double %i.an, ptr %i.ao, align 8, !tbaa !9
  %.not.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %init_array.exit
  %i.ap = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv27.i ; 3 uses
  %xtraiter = and i64 %indvars.iv27.i, 1
  %i.aq = icmp eq i64 %indvars.iv27.i, 1
  br i1 %i.aq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %indvars.iv27.i, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i19.1, %bb.f ] ; 4 uses
  %i.ar = phi double [ %i.an, %.lr.ph.i.new ], [ %i.bd, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i18
  %i.at = load double, ptr %i.as, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i18
  %i.av = load double, ptr %i.au, align 8, !tbaa !9
  %i.aw = fmul double %i.at, %i.av
  %i.ax = fsub double %i.ar, %i.aw                ; 2 uses
  store double %i.ax, ptr %i.ao, align 8, !tbaa !9
  %indvars.iv.next.i19 = or disjoint i64 %indvars.iv.i18, 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i19
  %i.az = load double, ptr %i.ay, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i19
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !9
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = fsub double %i.ax, %i.bc                ; 4 uses
  store double %i.bd, ptr %i.ao, align 8, !tbaa !9
  %indvars.iv.next.i19.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !17

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i18.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i19.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.an, %.lr.ph.i ], [ %i.bd, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i64 %indvars.iv27.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.i18.epil.init
  %i.bf = load double, ptr %i.be, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i18.epil.init
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !9
  %i.bi = fmul double %i.bf, %i.bh
  %i.bj = fsub double %.epil.init, %i.bi          ; 2 uses
  store double %i.bj, ptr %i.ao, align 8, !tbaa !9
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %init_array.exit
  %i.bk = phi double [ %i.an, %init_array.exit ], [ %i.bd, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bj, %.epil.preheader ]
  %i.bl = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv27.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv27.i
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !9
  %i.bo = fdiv double %i.bk, %i.bn
  store double %i.bo, ptr %i.ao, align 8, !tbaa !9
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 2000
  br i1 %exitcond30.not.i, label %kernel_trisolv.exit, label %init_array.exit, !llvm.loop !18

kernel_trisolv.exit:                              ; preds = %._crit_edge.i
  %2 = tail call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #16 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32000
  store i8 0, ptr %i.bp, align 1, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %kernel_trisolv.exit
  %indvars.iv.i21 = phi i64 [ 0, %kernel_trisolv.exit ], [ %indvars.iv.next.i22, %bb.g ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i21
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !9
  %i.bs = shl nuw nsw i64 %indvars.iv.i21, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %i.bs
  %.inner = and i64 %i.br, 1085102592571150095
  %.inner26 = or disjoint i64 %.inner, 3472328296227680304
  %i.bu = bitcast i64 %.inner26 to <8 x i8>
  %i.bv = shufflevector <8 x i8> %i.bu, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.bv, ptr %i.bt, align 1, !tbaa !23
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, 2000
  br i1 %exitcond.not.i23, label %print_array.exit, label %bb.g, !llvm.loop !19

print_array.exit:                                 ; preds = %bb.g
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !13
  %3 = tail call i32 @fputs(ptr noundef nonnull %2, ptr noundef %i.bw) #14 ; 0 uses
  tail call void @free(ptr noundef nonnull %2) #13
  tail call void @free(ptr noundef nonnull %i.e) #13
  tail call void @free(ptr noundef nonnull %i.j) #13
  tail call void @free(ptr noundef nonnull %i.o) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"double", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!12, !12, i64 0}
!14 = distinct !{!14, !20, !21, !22}
!15 = distinct !{!15, !20, !22, !21}
!16 = distinct !{!16, !20}
!17 = distinct !{!17, !20}
!18 = distinct !{!18, !20}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!5, !5, i64 0}
end_hunk_0
