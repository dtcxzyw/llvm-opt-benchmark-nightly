inline.NumInlined: 12
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
  tail call void @free(ptr noundef %0) #12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 32000000) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 16000) #12
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10   ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i12 = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond.i.i12, label %bb.c, label %polybench_alloc_data.exit13

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.n) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit13:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 16000) #12
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i.i14 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i.i14, label %bb.d, label %polybench_alloc_data.exit15

bb.d:                                             ; preds = %polybench_alloc_data.exit13
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.u = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.t) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit15:                      ; preds = %polybench_alloc_data.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %polybench_alloc_data.exit15
  %indvars.iv26.i = phi i64 [ 0, %polybench_alloc_data.exit15 ], [ %indvars.iv.next27.i, %.loopexit ] ; 6 uses
  %indvars.iv24.i = phi i64 [ 1, %polybench_alloc_data.exit15 ], [ %indvars.iv.next25.i, %.loopexit ] ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv26.i
  store double -9.990000e+02, ptr %i.v, align 8, !tbaa !8
  %i.w = trunc nuw nsw i64 %indvars.iv26.i to i32
  %i.x = uitofp nneg i32 %i.w to double
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv26.i
  store double %i.x, ptr %i.y, align 8, !tbaa !8
  %i.z = add nuw nsw i64 %indvars.iv26.i, 2000    ; 2 uses
  %i.aa = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv26.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv24.i, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.e
  %n.vec = and i64 %indvars.iv24.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ab = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ac = trunc <2 x i64> %i.ab to <2 x i32>
  %i.ad = shl <2 x i32> %i.ac, splat (i32 1)
  %i.ae = add <2 x i32> %i.ad, splat (i32 2)
  %i.af = uitofp nneg <2 x i32> %i.ae to <2 x double>
  %i.ag = fdiv <2 x double> %i.af, splat (double 2.000000e+03)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index
  store <2 x double> %i.ag, ptr %i.ah, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %indvars.iv24.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.e, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %bb.e ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aj = sub nuw nsw i64 %i.z, %indvars.iv.i
  %.tr.i = trunc i64 %i.aj to i32
  %i.ak = shl i32 %.tr.i, 1
  %i.al = add i32 %i.ak, 2
  %i.am = uitofp nneg i32 %i.al to double
  %i.an = fdiv double %i.am, 2.000000e+03
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i
  store double %i.an, ptr %i.ao, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv24.i
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !18

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next27.i, 2000
  br i1 %exitcond31.not.i, label %init_array.exit, label %bb.e, !llvm.loop !19

init_array.exit:                                  ; preds = %.loopexit, %._crit_edge.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.i ], [ 0, %.loopexit ] ; 11 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv27.i
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8 ; 4 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv27.i ; 5 uses
  store double %i.aq, ptr %i.ar, align 8, !tbaa !8
  %.not.i = icmp eq i64 %indvars.iv27.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %init_array.exit
  %i.as = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv27.i ; 3 uses
  %xtraiter = and i64 %indvars.iv27.i, 1
  %i.at = icmp eq i64 %indvars.iv27.i, 1
  br i1 %i.at, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %indvars.iv27.i, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i17.1, %bb.f ] ; 4 uses
  %i.au = phi double [ %i.aq, %.lr.ph.i.new ], [ %i.bg, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.f ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i16
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i16
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !8
  %i.az = fmul double %i.aw, %i.ay
  %i.ba = fsub double %i.au, %i.az                ; 2 uses
  store double %i.ba, ptr %i.ar, align 8, !tbaa !8
  %indvars.iv.next.i17 = or disjoint i64 %indvars.iv.i16, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next.i17
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.i17
  %i.be = load double, ptr %i.bd, align 8, !tbaa !8
  %i.bf = fmul double %i.bc, %i.be
  %i.bg = fsub double %i.ba, %i.bf                ; 4 uses
  store double %i.bg, ptr %i.ar, align 8, !tbaa !8
  %indvars.iv.next.i17.1 = add nuw nsw i64 %indvars.iv.i16, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.f, !llvm.loop !20

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i16.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i17.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.aq, %.lr.ph.i ], [ %i.bg, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = trunc i64 %indvars.iv27.i to i1
  call void @llvm.assume(i1 %lcmp.mod25)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i16.epil.init
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i16.epil.init
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !8
  %i.bl = fmul double %i.bi, %i.bk
  %i.bm = fsub double %.epil.init, %i.bl          ; 2 uses
  store double %i.bm, ptr %i.ar, align 8, !tbaa !8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %init_array.exit
  %i.bn = phi double [ %i.aq, %init_array.exit ], [ %i.bg, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.bm, %.epil.preheader ]
  %i.bo = getelementptr inbounds nuw [16000 x i8], ptr %i.e, i64 %indvars.iv27.i
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv27.i
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !8
  %i.br = fdiv double %i.bn, %i.bq
  store double %i.br, ptr %i.ar, align 8, !tbaa !8
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 2000
  br i1 %exitcond30.not.i, label %kernel_trisolv.exit, label %init_array.exit, !llvm.loop !21

kernel_trisolv.exit:                              ; preds = %._crit_edge.i
  %i.bs = call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #15 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32000
  store i8 0, ptr %i.bt, align 1, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %kernel_trisolv.exit
  %indvars.iv.i19 = phi i64 [ 0, %kernel_trisolv.exit ], [ %indvars.iv.next.i20, %bb.g ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i19
  %i.bv = shl nuw nsw i64 %indvars.iv.i19, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv
  %i.bx = load i64, ptr %i.bu, align 8, !tbaa !8  ; 4 uses
  %i.by = lshr i64 %i.bx, 56
  %i.bz = trunc nuw i64 %i.by to i8
  %i.ca = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %i.cb = shufflevector <2 x i64> %i.ca, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cc = lshr <2 x i64> %i.cb, <i64 40, i64 48>
  %i.cd = trunc <2 x i64> %i.cc to <2 x i8>
  %i.ce = insertelement <4 x i64> poison, i64 %i.bx, i64 0
  %i.cf = shufflevector <4 x i64> %i.ce, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cg = lshr <4 x i64> %i.cf, <i64 8, i64 16, i64 24, i64 32>
  %i.ch = trunc <4 x i64> %i.cg to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bx to i8
  %i.ci = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.cj = shufflevector <4 x i8> %i.ch, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ck = shufflevector <8 x i8> %i.ci, <8 x i8> %i.cj, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.cl = shufflevector <2 x i8> %i.cd, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cm = shufflevector <8 x i8> %i.ck, <8 x i8> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.cn = insertelement <8 x i8> %i.cm, i8 %i.bz, i64 7
  %i.co = and <8 x i8> %i.cn, splat (i8 15)
  %i.cp = or disjoint <8 x i8> %i.co, splat (i8 48)
  %i.cq = shufflevector <8 x i8> %i.cp, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.cq, ptr %i.bw, align 1, !tbaa !22
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, 2000
  br i1 %exitcond.not.i21, label %print_array.exit, label %bb.g, !llvm.loop !23

print_array.exit:                                 ; preds = %bb.g
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.cs = call i32 @fputs(ptr noundef nonnull %i.bs, ptr noundef %i.cr) #13 ; 0 uses
  call void @free(ptr noundef nonnull %i.bs) #12
  call void @free(ptr noundef nonnull %i.e) #12
  call void @free(ptr noundef nonnull %i.k) #12
  call void @free(ptr noundef nonnull %i.q) #12
  ret i32 0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

end_hunk_0
