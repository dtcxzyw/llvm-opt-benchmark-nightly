inline.NumInlined: 12
inline.NumDeleted: 6
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
  tail call void @free(ptr noundef %0) #11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #11
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 38400) #11
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 9 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.j = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 28800) #11
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10   ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp ne i32 %i.k, 0
  %or.cond.i.i15 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i.i15, label %bb.c, label %polybench_alloc_data.exit16

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.p = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit16:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 38400) #11
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !10   ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = icmp ne i32 %i.q, 0
  %or.cond.i.i17 = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i17, label %bb.d, label %polybench_alloc_data.exit18

bb.d:                                             ; preds = %polybench_alloc_data.exit16
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.v = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.u) #12 ; 0 uses
  call void @exit(i32 noundef 1) #13
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit16
  %i.w = ptrtoaddr ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.x = sub i64 %i.f, %i.w
  %diff.check = icmp ugt i64 %i.x, -16
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit18
  %indvars.iv52.i = phi i64 [ 0, %polybench_alloc_data.exit18 ], [ %indvars.iv.next53.i, %middle.block ] ; 6 uses
  %i.y = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %indvars.iv52.i ; 2 uses
  %i.z = add nuw nsw i64 %indvars.iv52.i, 80      ; 2 uses
  %i.aa = getelementptr inbounds nuw [640 x i8], ptr %i.r, i64 %indvars.iv52.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader45.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv52.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert34 = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %broadcast.splat35 = shufflevector <2 x i64> %broadcast.splatinsert34, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.ab = add nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ac = trunc nuw nsw <2 x i64> %i.ab to <2 x i32>
  %i.ad = urem <2 x i32> %i.ac, splat (i32 100)
  %i.ae = uitofp nneg <2 x i32> %i.ad to <2 x double>
  %i.af = fdiv <2 x double> %i.ae, splat (double 6.000000e+01)
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  store <2 x double> %i.af, ptr %i.ag, align 8, !tbaa !8
  %i.ah = sub nuw nsw <2 x i64> %broadcast.splat35, %vec.ind
  %i.ai = trunc nuw nsw <2 x i64> %i.ah to <2 x i32>
  %i.aj = urem <2 x i32> %i.ai, splat (i32 100)
  %i.ak = uitofp nneg <2 x i32> %i.aj to <2 x double>
  %i.al = fdiv <2 x double> %i.ak, splat (double 6.000000e+01)
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %index
  store <2 x double> %i.al, ptr %i.am, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.an = icmp eq i64 %index.next, 80
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader45.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader45.i ] ; 5 uses
  %i.ao = add nuw nsw i64 %indvars.iv.i, %indvars.iv52.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aq = sub nuw nsw i64 %i.z, %indvars.iv.i
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = trunc nuw nsw i64 %i.ao to i32
  %i.at = urem i32 %i.ar, 100
  %i.au = urem i32 %i.as, 100
  %i.av = uitofp nneg i32 %i.at to double
  %i.aw = uitofp nneg i32 %i.au to double
  %i.ax = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.av, i64 1
  %i.az = fdiv <2 x double> %i.ay, splat (double 6.000000e+01) ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 0
  store double %i.ba, ptr %i.ap, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.bc = extractelement <2 x double> %i.az, i64 1
  store double %i.bc, ptr %i.bb, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 80
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !18

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond55.not.i = icmp eq i64 %indvars.iv.next53.i, 60
  br i1 %exitcond55.not.i, label %.preheader.i, label %.preheader45.i, !llvm.loop !19

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block41, %.loopexit
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next69.i, 60
  br i1 %exitcond73.not.i, label %.preheader44.i.preheader, label %.preheader.i, !llvm.loop !20

.preheader44.i.preheader:                         ; preds = %.loopexit.i
  %scevgep = getelementptr i8, ptr %i.e, i64 38400
  %2 = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.l, i64 1 ; 2 uses
  %4 = getelementptr i8, <2 x ptr> %3, <2 x i64> <i64 38400, i64 28800>
  %5 = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %6 = shufflevector <2 x ptr> %5, <2 x ptr> poison, <2 x i32> zeroinitializer
  %7 = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %8 = shufflevector <2 x ptr> %7, <2 x ptr> poison, <2 x i32> zeroinitializer
  %9 = icmp ult <2 x ptr> %6, %4
  %10 = icmp ult <2 x ptr> %3, %8
  %11 = and <2 x i1> %9, %10
  %12 = bitcast <2 x i1> %11 to i2
  %conflict.rdx.not = icmp eq i2 %12, 0
  br label %.preheader44.i

.preheader.i:                                     ; preds = %middle.block, %.loopexit.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %.loopexit.i ], [ 0, %middle.block ] ; 6 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.loopexit.i ], [ 1, %middle.block ] ; 8 uses
  %i.bd = sub nsw i64 59, %indvars.iv68.i         ; 3 uses
  %i.be = getelementptr inbounds nuw [480 x i8], ptr %i.l, i64 %indvars.iv68.i ; 4 uses
  %min.iters.check43 = icmp samesign ult i64 %indvars.iv62.i, 2
  br i1 %min.iters.check43, label %scalar.ph42.preheader, label %vector.ph44

vector.ph44:                                      ; preds = %.preheader.i
  %n.vec46 = and i64 %indvars.iv62.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert47 = insertelement <2 x i64> poison, i64 %indvars.iv68.i, i64 0
  %broadcast.splat48 = shufflevector <2 x i64> %broadcast.splatinsert47, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph44
  %index50 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body49 ] ; 2 uses
  %vec.ind51 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph44 ], [ %vec.ind.next53, %vector.body49 ] ; 2 uses
  %i.bf = add nuw nsw <2 x i64> %vec.ind51, %broadcast.splat48
  %i.bg = trunc nuw nsw <2 x i64> %i.bf to <2 x i32>
  %i.bh = urem <2 x i32> %i.bg, splat (i32 100)
  %i.bi = uitofp nneg <2 x i32> %i.bh to <2 x double>
  %i.bj = fdiv <2 x double> %i.bi, splat (double 6.000000e+01)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index50
  store <2 x double> %i.bj, ptr %i.bk, align 8, !tbaa !8
  %index.next52 = add nuw i64 %index50, 2         ; 2 uses
  %vec.ind.next53 = add nuw nsw <2 x i64> %vec.ind51, splat (i64 2)
  %i.bl = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.bl, label %middle.block54, label %vector.body49, !llvm.loop !21

middle.block54:                                   ; preds = %vector.body49
  %cmp.n55 = icmp eq i64 %indvars.iv62.i, %n.vec46
  br i1 %cmp.n55, label %.loopexit, label %scalar.ph42.preheader

scalar.ph42.preheader:                            ; preds = %.preheader.i, %middle.block54
  %indvars.iv56.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec46, %middle.block54 ]
  br label %scalar.ph42

scalar.ph42:                                      ; preds = %scalar.ph42.preheader, %scalar.ph42
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %scalar.ph42 ], [ %indvars.iv56.i.ph, %scalar.ph42.preheader ] ; 3 uses
  %i.bm = add nuw nsw i64 %indvars.iv56.i, %indvars.iv68.i
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = urem i32 %i.bn, 100
  %i.bp = uitofp nneg i32 %i.bo to double
  %i.bq = fdiv double %i.bp, 6.000000e+01
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv56.i
  store double %i.bq, ptr %i.br, align 8, !tbaa !8
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next57.i, %indvars.iv62.i
  br i1 %exitcond61.not.i, label %.loopexit, label %scalar.ph42, !llvm.loop !22

.loopexit:                                        ; preds = %scalar.ph42, %middle.block54
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.bs = icmp samesign ult i64 %indvars.iv68.i, 59
  br i1 %i.bs, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %i.bd, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader77, label %vector.ph37

vector.ph37:                                      ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bd, -4                      ; 3 uses
  %i.bt = add i64 %indvars.iv62.i, %n.vec
  %i.bu = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv62.i
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph37
  %index39 = phi i64 [ 0, %vector.ph37 ], [ %index.next40, %vector.body38 ] ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bu, i64 %index39 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> splat (double -9.990000e+02), ptr %i.bv, align 8, !tbaa !8
  store <2 x double> splat (double -9.990000e+02), ptr %i.bw, align 8, !tbaa !8
  %index.next40 = add nuw i64 %index39, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next40, %n.vec
  br i1 %i.bx, label %middle.block41, label %vector.body38, !llvm.loop !23

middle.block41:                                   ; preds = %vector.body38
  %cmp.n = icmp eq i64 %i.bd, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader77

.lr.ph.i.preheader77:                             ; preds = %.lr.ph.i.preheader, %middle.block41
  %indvars.iv64.i.ph = phi i64 [ %indvars.iv62.i, %.lr.ph.i.preheader ], [ %i.bt, %middle.block41 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader77, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph.i ], [ %indvars.iv64.i.ph, %.lr.ph.i.preheader77 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv64.i
  store double -9.990000e+02, ptr %i.by, align 8, !tbaa !8
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 60
  br i1 %exitcond67.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !24

.preheader44.i:                                   ; preds = %.preheader44.i.preheader, %.split.us.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.split.us.i ], [ 0, %.preheader44.i.preheader ] ; 7 uses
  %.not.i = icmp eq i64 %indvars.iv61.i, 0
  %i.bz = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %indvars.iv61.i ; 4 uses
  %i.ca = getelementptr inbounds nuw [640 x i8], ptr %i.r, i64 %indvars.iv61.i ; 4 uses
  %i.cb = getelementptr inbounds nuw [480 x i8], ptr %i.l, i64 %indvars.iv61.i ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv61.i ; 4 uses
  br i1 %.not.i, label %vector.memcheck57, label %.preheader.us.i

vector.memcheck57:                                ; preds = %.preheader44.i
  br i1 %conflict.rdx.not, label %vector.ph64, label %.preheader.i22

vector.ph64:                                      ; preds = %vector.memcheck57
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !8, !alias.scope !25
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.cd, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph64
  %index66 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body65 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index66 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !8, !alias.scope !28, !noalias !30
  %wide.load67 = load <2 x double>, ptr %i.cf, align 8, !tbaa !8, !alias.scope !28, !noalias !30
  %i.cg = fmul <2 x double> %wide.load, splat (double 1.200000e+00)
  %i.ch = fmul <2 x double> %wide.load67, splat (double 1.200000e+00)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %index66 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load68 = load <2 x double>, ptr %i.ci, align 8, !tbaa !8, !alias.scope !32
  %wide.load69 = load <2 x double>, ptr %i.cj, align 8, !tbaa !8, !alias.scope !32
  %i.ck = fmul <2 x double> %wide.load68, splat (double 1.500000e+00)
  %i.cl = fmul <2 x double> %wide.load69, splat (double 1.500000e+00)
  %i.cm = fmul <2 x double> %i.ck, %broadcast.splat71
  %i.cn = fmul <2 x double> %i.cl, %broadcast.splat71
  %i.co = fadd <2 x double> %i.cg, %i.cm
  %i.cp = fadd <2 x double> %i.ch, %i.cn
  %i.cq = fadd <2 x double> %i.co, zeroinitializer
  %i.cr = fadd <2 x double> %i.cp, zeroinitializer
  store <2 x double> %i.cq, ptr %i.ce, align 8, !tbaa !8, !alias.scope !28, !noalias !30
  store <2 x double> %i.cr, ptr %i.cf, align 8, !tbaa !8, !alias.scope !28, !noalias !30
  %index.next72 = add nuw i64 %index66, 4         ; 2 uses
  %i.cs = icmp eq i64 %index.next72, 80
  br i1 %i.cs, label %.split.us.i, label %vector.body65, !llvm.loop !33

.preheader.us.i:                                  ; preds = %.preheader44.i, %._crit_edge.us.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %._crit_edge.us.i ], [ 0, %.preheader44.i ] ; 5 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv53.i ; 2 uses
  %invariant.gep.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv53.i
  %invariant.gep47.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv53.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.i
  %indvars.iv.i19 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i20, %bb.e ] ; 4 uses
  %.046.us.i = phi double [ 0.000000e+00, %.preheader.us.i ], [ %i.de, %bb.e ]
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !8
  %i.cv = fmul double %i.cu, 1.500000e+00
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i19 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !8
  %i.cy = fmul double %i.cv, %i.cx
  %gep.us.i = getelementptr inbounds nuw [640 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.i19 ; 2 uses
  %i.cz = load double, ptr %gep.us.i, align 8, !tbaa !8
  %i.da = fadd double %i.cz, %i.cy
  store double %i.da, ptr %gep.us.i, align 8, !tbaa !8
  %gep48.us.i = getelementptr inbounds nuw [640 x i8], ptr %invariant.gep47.us.i, i64 %indvars.iv.i19
  %i.db = load double, ptr %gep48.us.i, align 8, !tbaa !8
  %i.dc = load double, ptr %i.cw, align 8, !tbaa !8
  %i.dd = fmul double %i.db, %i.dc
  %i.de = fadd double %.046.us.i, %i.dd           ; 2 uses
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, %indvars.iv61.i
  br i1 %exitcond.not.i21, label %._crit_edge.us.i, label %bb.e, !llvm.loop !34

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv53.i ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !8
  %i.dh = fmul double %i.dg, 1.200000e+00
  %i.di = load double, ptr %i.ct, align 8, !tbaa !8
  %i.dj = fmul double %i.di, 1.500000e+00
  %i.dk = load double, ptr %i.cc, align 8, !tbaa !8
  %i.dl = fmul double %i.dj, %i.dk
  %i.dm = fadd double %i.dh, %i.dl
  %i.dn = fmul double %i.de, 1.500000e+00
  %i.do = fadd double %i.dn, %i.dm
  store double %i.do, ptr %i.df, align 8, !tbaa !8
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, 80
  br i1 %exitcond56.not.i, label %.split.us.i, label %.preheader.us.i, !llvm.loop !35

.preheader.i22:                                   ; preds = %vector.memcheck57, %.preheader.i22
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i.1, %.preheader.i22 ], [ 0, %vector.memcheck57 ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv57.i ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !8
  %i.dr = fmul double %i.dq, 1.200000e+00
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv57.i
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !8
  %i.du = fmul double %i.dt, 1.500000e+00
  %i.dv = load double, ptr %i.cc, align 8, !tbaa !8
  %i.dw = fmul double %i.du, %i.dv
  %i.dx = fadd double %i.dr, %i.dw
  %i.dy = fadd double %i.dx, 0.000000e+00
  store double %i.dy, ptr %i.dp, align 8, !tbaa !8
  %indvars.iv.next58.i = or disjoint i64 %indvars.iv57.i, 1 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv.next58.i ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = fmul double %i.ea, 1.200000e+00
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next58.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !8
  %i.ee = fmul double %i.ed, 1.500000e+00
  %i.ef = load double, ptr %i.cc, align 8, !tbaa !8
  %i.eg = fmul double %i.ee, %i.ef
  %i.eh = fadd double %i.eb, %i.eg
  %i.ei = fadd double %i.eh, 0.000000e+00
  store double %i.ei, ptr %i.dz, align 8, !tbaa !8
  %indvars.iv.next58.i.1 = add nuw nsw i64 %indvars.iv57.i, 2 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i64 %indvars.iv.next58.i.1, 80
  br i1 %exitcond60.not.i.1, label %.split.us.i, label %.preheader.i22, !llvm.loop !36

.split.us.i:                                      ; preds = %._crit_edge.us.i, %vector.body65, %.preheader.i22
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next62.i, 60
  br i1 %exitcond64.not.i, label %kernel_symm.exit, label %.preheader44.i, !llvm.loop !37

kernel_symm.exit:                                 ; preds = %.split.us.i
  %i.ej = call noalias dereferenceable_or_null(1281) ptr @malloc(i64 noundef 1281) #14 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1280
  store i8 0, ptr %i.ek, align 1, !tbaa !38
  br label %.preheader.i23

.preheader.i23:                                   ; preds = %bb.g, %kernel_symm.exit
  %indvars.iv19.i = phi i64 [ 0, %kernel_symm.exit ], [ %indvars.iv.next20.i, %bb.g ] ; 2 uses
  %i.el = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %indvars.iv19.i
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader.i23
  %indvars.iv.i24 = phi i64 [ 0, %.preheader.i23 ], [ %indvars.iv.next.i25, %bb.f ] ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv.i24
  %i.en = shl nuw nsw i64 %indvars.iv.i24, 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.en
  %i.ep = load i64, ptr %i.em, align 8, !tbaa !8  ; 4 uses
  %i.eq = lshr i64 %i.ep, 56
  %i.er = trunc nuw i64 %i.eq to i8
  %i.es = insertelement <2 x i64> poison, i64 %i.ep, i64 0
  %i.et = shufflevector <2 x i64> %i.es, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.eu = lshr <2 x i64> %i.et, <i64 40, i64 48>
  %i.ev = trunc <2 x i64> %i.eu to <2 x i8>
  %i.ew = insertelement <4 x i64> poison, i64 %i.ep, i64 0
  %i.ex = shufflevector <4 x i64> %i.ew, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ey = lshr <4 x i64> %i.ex, <i64 8, i64 16, i64 24, i64 32>
  %i.ez = trunc <4 x i64> %i.ey to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ep to i8
  %i.fa = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.fb = shufflevector <4 x i8> %i.ez, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fc = shufflevector <8 x i8> %i.fa, <8 x i8> %i.fb, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.fd = shufflevector <2 x i8> %i.ev, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fe = shufflevector <8 x i8> %i.fc, <8 x i8> %i.fd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.er, i64 7
  %i.fg = and <8 x i8> %i.ff, splat (i8 15)
  %i.fh = or disjoint <8 x i8> %i.fg, splat (i8 48)
  %i.fi = shufflevector <8 x i8> %i.fh, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.fi, ptr %i.eo, align 1, !tbaa !38
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, 80
  br i1 %exitcond.not.i26, label %bb.g, label %bb.f, !llvm.loop !39

bb.g:                                             ; preds = %bb.f
  %i.fj = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fk = call i32 @fputs(ptr noundef nonnull %i.ej, ptr noundef %i.fj) #12 ; 0 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next20.i, 60
  br i1 %exitcond22.not.i, label %print_array.exit, label %.preheader.i23, !llvm.loop !40

print_array.exit:                                 ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.ej) #11
  call void @free(ptr noundef nonnull %i.e) #11
  call void @free(ptr noundef %i.l) #11
  call void @free(ptr noundef %i.r) #11
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

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
end_hunk_0
