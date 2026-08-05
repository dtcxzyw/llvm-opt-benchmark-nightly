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
  %i.ar = trunc nsw i64 %i.aq to i32
  %i.as = trunc nsw i64 %i.ao to i32
  %2 = insertelement <2 x i32> poison, i32 %i.as, i64 0
  %3 = insertelement <2 x i32> %2, i32 %i.ar, i64 1
  %4 = urem <2 x i32> %3, splat (i32 100)
  %5 = uitofp nneg <2 x i32> %4 to <2 x double>
  %i.at = fdiv <2 x double> %5, splat (double 6.000000e+01) ; 2 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  store double %i.au, ptr %i.ap, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.i
  %i.aw = extractelement <2 x double> %i.at, i64 1
  store double %i.aw, ptr %i.av, align 8, !tbaa !8
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
  %i.ax = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.ay = insertelement <2 x ptr> %i.ax, ptr %i.l, i64 1 ; 2 uses
  %i.az = getelementptr i8, <2 x ptr> %i.ay, <2 x i64> <i64 38400, i64 28800>
  %i.ba = insertelement <2 x ptr> poison, ptr %i.e, i64 0
  %i.bb = shufflevector <2 x ptr> %i.ba, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.bc = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.bd = shufflevector <2 x ptr> %i.bc, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.be = icmp ult <2 x ptr> %i.bb, %i.az
  %i.bf = icmp ult <2 x ptr> %i.ay, %i.bd
  %i.bg = and <2 x i1> %i.be, %i.bf
  %i.bh = bitcast <2 x i1> %i.bg to i2
  %conflict.rdx.not = icmp eq i2 %i.bh, 0
  br label %.preheader44.i

.preheader.i:                                     ; preds = %middle.block, %.loopexit.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %.loopexit.i ], [ 0, %middle.block ] ; 6 uses
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i, %.loopexit.i ], [ 1, %middle.block ] ; 8 uses
  %i.bi = sub nsw i64 59, %indvars.iv68.i         ; 3 uses
  %i.bj = getelementptr inbounds nuw [480 x i8], ptr %i.l, i64 %indvars.iv68.i ; 4 uses
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
  %i.bk = add nuw nsw <2 x i64> %vec.ind51, %broadcast.splat48
  %i.bl = trunc nuw nsw <2 x i64> %i.bk to <2 x i32>
  %i.bm = urem <2 x i32> %i.bl, splat (i32 100)
  %i.bn = uitofp nneg <2 x i32> %i.bm to <2 x double>
  %i.bo = fdiv <2 x double> %i.bn, splat (double 6.000000e+01)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index50
  store <2 x double> %i.bo, ptr %i.bp, align 8, !tbaa !8
  %index.next52 = add nuw i64 %index50, 2         ; 2 uses
  %vec.ind.next53 = add nuw nsw <2 x i64> %vec.ind51, splat (i64 2)
  %i.bq = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.bq, label %middle.block54, label %vector.body49, !llvm.loop !21

middle.block54:                                   ; preds = %vector.body49
  %cmp.n55 = icmp eq i64 %indvars.iv62.i, %n.vec46
  br i1 %cmp.n55, label %.loopexit, label %scalar.ph42.preheader

scalar.ph42.preheader:                            ; preds = %.preheader.i, %middle.block54
  %indvars.iv56.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec46, %middle.block54 ]
  br label %scalar.ph42

scalar.ph42:                                      ; preds = %scalar.ph42.preheader, %scalar.ph42
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %scalar.ph42 ], [ %indvars.iv56.i.ph, %scalar.ph42.preheader ] ; 3 uses
  %i.br = add nuw nsw i64 %indvars.iv56.i, %indvars.iv68.i
  %i.bs = trunc nuw nsw i64 %i.br to i32
  %i.bt = urem i32 %i.bs, 100
  %i.bu = uitofp nneg i32 %i.bt to double
  %i.bv = fdiv double %i.bu, 6.000000e+01
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv56.i
  store double %i.bv, ptr %i.bw, align 8, !tbaa !8
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1 ; 2 uses
  %exitcond61.not.i = icmp eq i64 %indvars.iv.next57.i, %indvars.iv62.i
  br i1 %exitcond61.not.i, label %.loopexit, label %scalar.ph42, !llvm.loop !22

.loopexit:                                        ; preds = %scalar.ph42, %middle.block54
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.bx = icmp samesign ult i64 %indvars.iv68.i, 59
  br i1 %i.bx, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.loopexit
  %min.iters.check = icmp ult i64 %i.bi, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader78, label %vector.ph37

vector.ph37:                                      ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bi, -4                      ; 3 uses
  %i.by = add i64 %indvars.iv62.i, %n.vec
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv62.i
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph37
  %index39 = phi i64 [ 0, %vector.ph37 ], [ %index.next40, %vector.body38 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %index39 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <2 x double> splat (double -9.990000e+02), ptr %i.ca, align 8, !tbaa !8
  store <2 x double> splat (double -9.990000e+02), ptr %i.cb, align 8, !tbaa !8
  %index.next40 = add nuw i64 %index39, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next40, %n.vec
  br i1 %i.cc, label %middle.block41, label %vector.body38, !llvm.loop !23

middle.block41:                                   ; preds = %vector.body38
  %cmp.n = icmp eq i64 %i.bi, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader78

.lr.ph.i.preheader78:                             ; preds = %.lr.ph.i.preheader, %middle.block41
  %indvars.iv64.i.ph = phi i64 [ %indvars.iv62.i, %.lr.ph.i.preheader ], [ %i.by, %middle.block41 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader78, %.lr.ph.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %.lr.ph.i ], [ %indvars.iv64.i.ph, %.lr.ph.i.preheader78 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv64.i
  store double -9.990000e+02, ptr %i.cd, align 8, !tbaa !8
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 60
  br i1 %exitcond67.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !24

.preheader44.i:                                   ; preds = %.preheader44.i.preheader, %.split.us.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.split.us.i ], [ 0, %.preheader44.i.preheader ] ; 7 uses
  %.not.i = icmp eq i64 %indvars.iv61.i, 0
  %i.ce = getelementptr inbounds nuw [640 x i8], ptr %i.e, i64 %indvars.iv61.i ; 4 uses
  %i.cf = getelementptr inbounds nuw [640 x i8], ptr %i.r, i64 %indvars.iv61.i ; 4 uses
  %i.cg = getelementptr inbounds nuw [480 x i8], ptr %i.l, i64 %indvars.iv61.i ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv61.i ; 4 uses
  br i1 %.not.i, label %vector.memcheck57, label %.preheader.us.i

vector.memcheck57:                                ; preds = %.preheader44.i
  br i1 %conflict.rdx.not, label %vector.ph64, label %.preheader.i22

vector.ph64:                                      ; preds = %vector.memcheck57
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !8, !alias.scope !25
  %broadcast.splatinsert70 = insertelement <2 x double> poison, double %i.ci, i64 0
  %broadcast.splat71 = shufflevector <2 x double> %broadcast.splatinsert70, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph64
  %index66 = phi i64 [ 0, %vector.ph64 ], [ %index.next72, %vector.body65 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index66 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cj, align 8, !tbaa !8, !alias.scope !28, !noalias !30
  %wide.load67 = load <2 x double>, ptr %i.ck, align 8, !tbaa !8, !alias.scope !28, !noalias !30
  %i.cl = fmul <2 x double> %wide.load, splat (double 1.200000e+00)
  %i.cm = fmul <2 x double> %wide.load67, splat (double 1.200000e+00)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index66 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %wide.load68 = load <2 x double>, ptr %i.cn, align 8, !tbaa !8, !alias.scope !32
  %wide.load69 = load <2 x double>, ptr %i.co, align 8, !tbaa !8, !alias.scope !32
  %i.cp = fmul <2 x double> %wide.load68, splat (double 1.500000e+00)
  %i.cq = fmul <2 x double> %wide.load69, splat (double 1.500000e+00)
  %i.cr = fmul <2 x double> %i.cp, %broadcast.splat71
  %i.cs = fmul <2 x double> %i.cq, %broadcast.splat71
  %i.ct = fadd <2 x double> %i.cl, %i.cr
  %i.cu = fadd <2 x double> %i.cm, %i.cs
  %i.cv = fadd <2 x double> %i.ct, zeroinitializer
  %i.cw = fadd <2 x double> %i.cu, zeroinitializer
  store <2 x double> %i.cv, ptr %i.cj, align 8, !tbaa !8, !alias.scope !28, !noalias !30
  store <2 x double> %i.cw, ptr %i.ck, align 8, !tbaa !8, !alias.scope !28, !noalias !30
  %index.next72 = add nuw i64 %index66, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next72, 80
  br i1 %i.cx, label %.split.us.i, label %vector.body65, !llvm.loop !33

.preheader.us.i:                                  ; preds = %.preheader44.i, %._crit_edge.us.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %._crit_edge.us.i ], [ 0, %.preheader44.i ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv53.i ; 2 uses
  %invariant.gep.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv53.i
  %invariant.gep47.us.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv53.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader.us.i
  %indvars.iv.i19 = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i20, %bb.e ] ; 4 uses
  %.046.us.i = phi double [ 0.000000e+00, %.preheader.us.i ], [ %i.dj, %bb.e ]
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !8
  %i.da = fmul double %i.cz, 1.500000e+00
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv.i19 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !8
  %i.dd = fmul double %i.da, %i.dc
  %gep.us.i = getelementptr inbounds nuw [640 x i8], ptr %invariant.gep.us.i, i64 %indvars.iv.i19 ; 2 uses
  %i.de = load double, ptr %gep.us.i, align 8, !tbaa !8
  %i.df = fadd double %i.de, %i.dd
  store double %i.df, ptr %gep.us.i, align 8, !tbaa !8
  %gep48.us.i = getelementptr inbounds nuw [640 x i8], ptr %invariant.gep47.us.i, i64 %indvars.iv.i19
  %i.dg = load double, ptr %gep48.us.i, align 8, !tbaa !8
  %i.dh = load double, ptr %i.db, align 8, !tbaa !8
  %i.di = fmul double %i.dg, %i.dh
  %i.dj = fadd double %.046.us.i, %i.di           ; 2 uses
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, %indvars.iv61.i
  br i1 %exitcond.not.i21, label %._crit_edge.us.i, label %bb.e, !llvm.loop !34

._crit_edge.us.i:                                 ; preds = %bb.e
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv53.i ; 2 uses
end_hunk_0
