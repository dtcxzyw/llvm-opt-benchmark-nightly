Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/floyd-warshall?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4, !guid !8
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !guid !9
@polybench_t_start = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !guid !10
@polybench_t_end = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !guid !11
@.str = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1, !guid !12
@polybench_c_start = dso_local local_unnamed_addr global i64 0, align 8, !guid !13
@polybench_c_end = dso_local local_unnamed_addr global i64 0, align 8, !guid !14
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1, !guid !15
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1, !guid !16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 !guid !23 {
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
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 !guid !24 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 !guid !25 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 !guid !26 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 !guid !27 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !18
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !18
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 !guid !28 {
bb.a:
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !guid !29 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 !guid !53 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 31360000) #13
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !20   ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp ne i32 %i.c, 0
  %or.cond.i.i = or i1 %i.f, %i.e
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.g) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 31360000) #13
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !20   ; 12 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp ne i32 %i.h, 0
  %or.cond.i.i15 = or i1 %i.k, %i.j
  br i1 %or.cond.i.i15, label %bb.c, label %polybench_alloc_data.exit17

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i16 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.l) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit17:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %polybench_alloc_data.exit17
  %indvars.iv27.i = phi i64 [ 0, %polybench_alloc_data.exit17 ], [ %indvars.iv.next28.i, %middle.block ] ; 3 uses
  %i.m = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv27.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv27.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.n = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.o = trunc nuw nsw <4 x i64> %i.n to <4 x i32>
  %i.p = urem <4 x i32> %i.o, splat (i32 7)
  %i.q = add nuw nsw <4 x i32> %i.p, splat (i32 1)
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index
  %i.s = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.t = trunc nuw nsw <4 x i64> %i.s to <4 x i32> ; 3 uses
  %i.u = urem <4 x i32> %i.t, splat (i32 13)
  %i.v = icmp eq <4 x i32> %i.u, zeroinitializer
  %i.w = urem <4 x i32> %i.t, splat (i32 7)
  %i.x = icmp eq <4 x i32> %i.w, zeroinitializer
  %i.y = or <4 x i1> %i.v, %i.x
  %i.z = urem <4 x i32> %i.t, splat (i32 11)
  %i.aa = icmp eq <4 x i32> %i.z, zeroinitializer
  %i.ab = or <4 x i1> %i.aa, %i.y
  %i.ac = select <4 x i1> %i.ab, <4 x i32> splat (i32 999), <4 x i32> %i.q
  store <4 x i32> %i.ac, ptr %i.r, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.ad = icmp eq i64 %index.next, 2800
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 2800
  br i1 %exitcond30.not.i, label %.preheader34.i.preheader, label %.preheader.i, !llvm.loop !31

.preheader34.i.preheader:                         ; preds = %middle.block
  %scevgep90 = getelementptr i8, ptr %i.d, i64 31360000
  %i.ae = insertelement <2 x ptr> poison, ptr %i.d, i64 0
  %i.af = shufflevector <2 x ptr> %i.ae, <2 x ptr> poison, <2 x i32> zeroinitializer
  %2 = insertelement <2 x ptr> poison, ptr %scevgep90, i64 0
  %3 = shufflevector <2 x ptr> %2, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.preheader34.i.preheader, %bb.d
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %bb.d ], [ 0, %.preheader34.i.preheader ] ; 5 uses
  %i.ag = mul nuw nsw i64 %indvars.iv43.i, 11200
  %i.ah = getelementptr i8, ptr %i.d, i64 %i.ag
  %i.ai = shl nuw nsw i64 %indvars.iv43.i, 2      ; 2 uses
  %i.aj = getelementptr i8, ptr %i.d, i64 %i.ai
  %i.ak = insertelement <2 x ptr> poison, ptr %i.aj, i64 0
  %i.al = insertelement <2 x ptr> %i.ak, ptr %i.ah, i64 1
  %i.am = getelementptr i8, <2 x ptr> %i.al, <2 x i64> <i64 31348804, i64 11200>
  %scevgep89 = getelementptr nuw i8, ptr %i.d, i64 %i.ai
  %i.an = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv43.i ; 4 uses
  %i.ao = insertelement <2 x ptr> poison, ptr %scevgep89, i64 0
  %i.ap = insertelement <2 x ptr> %i.ao, ptr %i.an, i64 1
  %i.aq = icmp ult <2 x ptr> %i.af, %i.am
  %i.ar = icmp ult <2 x ptr> %i.ap, %3
  %i.as = and <2 x i1> %i.aq, %i.ar
  %i.at = bitcast <2 x i1> %i.as to i2
  %.not = icmp eq i2 %i.at, 0
  br label %.preheader.i18

.preheader.i18:                                   ; preds = %middle.block103, %.preheader34.i
  %indvars.iv39.i = phi i64 [ 0, %.preheader34.i ], [ %indvars.iv.next40.i, %middle.block103 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv39.i ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv43.i ; 3 uses
  br i1 %.not, label %vector.ph94, label %scalar.ph

vector.ph94:                                      ; preds = %.preheader.i18
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7, !alias.scope !57
  %broadcast.splatinsert100 = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat101 = shufflevector <4 x i32> %broadcast.splatinsert100, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body95

vector.body95:                                    ; preds = %vector.body95, %vector.ph94
  %index96 = phi i64 [ 0, %vector.ph94 ], [ %index.next102, %vector.body95 ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index96 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !7, !alias.scope !58, !noalias !59
  %wide.load97 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !7, !alias.scope !58, !noalias !59
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index96 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %wide.load98 = load <4 x i32>, ptr %i.az, align 4, !tbaa !7, !alias.scope !60
  %wide.load99 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !7, !alias.scope !60
  %i.bb = add nsw <4 x i32> %wide.load98, %broadcast.splat101
  %i.bc = add nsw <4 x i32> %wide.load99, %broadcast.splat101
  %i.bd = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %i.bb)
  %i.be = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load97, <4 x i32> %i.bc)
  store <4 x i32> %i.bd, ptr %i.ax, align 4, !tbaa !7, !alias.scope !58, !noalias !59
  store <4 x i32> %i.be, ptr %i.ay, align 4, !tbaa !7, !alias.scope !58, !noalias !59
  %index.next102 = add nuw i64 %index96, 8        ; 2 uses
  %i.bf = icmp eq i64 %index.next102, 2800
  br i1 %i.bf, label %middle.block103, label %vector.body95, !llvm.loop !36

scalar.ph:                                        ; preds = %.preheader.i18, %scalar.ph
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i20.1, %scalar.ph ], [ 0, %.preheader.i18 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i19 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = load i32, ptr %i.av, align 4, !tbaa !7
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i19
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = add nsw i32 %i.bk, %i.bi
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bl)
  store i32 %..i, ptr %i.bg, align 4, !tbaa !7
  %indvars.iv.next.i20 = or disjoint i64 %indvars.iv.i19, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i20 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = load i32, ptr %i.av, align 4, !tbaa !7
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.i20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = add nsw i32 %i.bq, %i.bo
  %..i.1 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.br)
  store i32 %..i.1, ptr %i.bm, align 4, !tbaa !7
  %indvars.iv.next.i20.1 = add nuw nsw i64 %indvars.iv.i19, 2 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %indvars.iv.next.i20.1, 2800
  br i1 %exitcond.not.i21.1, label %middle.block103, label %scalar.ph, !llvm.loop !37

middle.block103:                                  ; preds = %vector.body95, %scalar.ph
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2800
  br i1 %exitcond42.not.i, label %bb.d, label %.preheader.i18, !llvm.loop !38

bb.d:                                             ; preds = %middle.block103
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next44.i, 2800
  br i1 %exitcond46.not.i, label %.preheader.i22, label %.preheader34.i, !llvm.loop !39

.preheader.i22:                                   ; preds = %bb.d, %middle.block113
  %indvars.iv27.i23 = phi i64 [ %indvars.iv.next28.i30, %middle.block113 ], [ 0, %bb.d ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv27.i23
  %broadcast.splatinsert106 = insertelement <4 x i64> poison, i64 %indvars.iv27.i23, i64 0
  %broadcast.splat107 = shufflevector <4 x i64> %broadcast.splatinsert106, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %.preheader.i22
  %index109 = phi i64 [ 0, %.preheader.i22 ], [ %index.next111, %vector.body108 ] ; 2 uses
  %vec.ind110 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i22 ], [ %vec.ind.next112, %vector.body108 ] ; 3 uses
  %i.bt = mul nuw nsw <4 x i64> %vec.ind110, %broadcast.splat107
  %i.bu = trunc nuw nsw <4 x i64> %i.bt to <4 x i32>
  %i.bv = urem <4 x i32> %i.bu, splat (i32 7)
  %i.bw = add nuw nsw <4 x i32> %i.bv, splat (i32 1)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index109
  %i.by = add nuw nsw <4 x i64> %vec.ind110, %broadcast.splat107
  %i.bz = trunc nuw nsw <4 x i64> %i.by to <4 x i32> ; 3 uses
  %i.ca = urem <4 x i32> %i.bz, splat (i32 13)
  %i.cb = icmp eq <4 x i32> %i.ca, zeroinitializer
  %i.cc = urem <4 x i32> %i.bz, splat (i32 7)
  %i.cd = icmp eq <4 x i32> %i.cc, zeroinitializer
  %i.ce = or <4 x i1> %i.cb, %i.cd
  %i.cf = urem <4 x i32> %i.bz, splat (i32 11)
  %i.cg = icmp eq <4 x i32> %i.cf, zeroinitializer
  %i.ch = or <4 x i1> %i.cg, %i.ce
  %i.ci = select <4 x i1> %i.ch, <4 x i32> splat (i32 999), <4 x i32> %i.bw
  store <4 x i32> %i.ci, ptr %i.bx, align 4, !tbaa !7
  %index.next111 = add nuw i64 %index109, 4       ; 2 uses
  %vec.ind.next112 = add nuw nsw <4 x i64> %vec.ind110, splat (i64 4)
  %i.cj = icmp eq i64 %index.next111, 2800
  br i1 %i.cj, label %middle.block113, label %vector.body108, !llvm.loop !40

middle.block113:                                  ; preds = %vector.body108
  %indvars.iv.next28.i30 = add nuw nsw i64 %indvars.iv27.i23, 1 ; 2 uses
  %exitcond30.not.i31 = icmp eq i64 %indvars.iv.next28.i30, 2800
  br i1 %exitcond30.not.i31, label %.preheader34.i33.preheader, label %.preheader.i22, !llvm.loop !31

.preheader34.i33.preheader:                       ; preds = %middle.block113
  %scevgep129 = getelementptr i8, ptr %i.i, i64 31360000
  %i.ck = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.cl = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <2 x i32> zeroinitializer
  %4 = insertelement <2 x ptr> poison, ptr %scevgep129, i64 0
  %5 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.preheader34.i33

.preheader34.i33:                                 ; preds = %.preheader34.i33.preheader, %bb.e
  %indvars.iv43.i34 = phi i64 [ %indvars.iv.next44.i43, %bb.e ], [ 0, %.preheader34.i33.preheader ] ; 5 uses
  %i.cm = mul nuw nsw i64 %indvars.iv43.i34, 11200
  %i.cn = getelementptr i8, ptr %i.i, i64 %i.cm
  %i.co = shl nuw nsw i64 %indvars.iv43.i34, 2    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.i, i64 %i.co
  %i.cq = insertelement <2 x ptr> poison, ptr %i.cp, i64 0
  %i.cr = insertelement <2 x ptr> %i.cq, ptr %i.cn, i64 1
  %i.cs = getelementptr i8, <2 x ptr> %i.cr, <2 x i64> <i64 31348804, i64 11200>
  %scevgep128 = getelementptr nuw i8, ptr %i.i, i64 %i.co
  %i.ct = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv43.i34 ; 4 uses
  %i.cu = insertelement <2 x ptr> poison, ptr %scevgep128, i64 0
  %i.cv = insertelement <2 x ptr> %i.cu, ptr %i.ct, i64 1
  %i.cw = icmp ult <2 x ptr> %i.cl, %i.cs
  %i.cx = icmp ult <2 x ptr> %i.cv, %5
  %i.cy = and <2 x i1> %i.cw, %i.cx
  %i.cz = bitcast <2 x i1> %i.cy to i2
  %.not152 = icmp eq i2 %i.cz, 0
  br label %.preheader.i35

.preheader.i35:                                   ; preds = %middle.block149, %.preheader34.i33
  %indvars.iv39.i36 = phi i64 [ 0, %.preheader34.i33 ], [ %indvars.iv.next40.i41, %middle.block149 ] ; 2 uses
  %i.da = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv39.i36 ; 4 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv43.i34 ; 3 uses
  br i1 %.not152, label %vector.ph139, label %scalar.ph130

vector.ph139:                                     ; preds = %.preheader.i35
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !7, !alias.scope !61
  %broadcast.splatinsert146 = insertelement <4 x i32> poison, i32 %i.dc, i64 0
  %broadcast.splat147 = shufflevector <4 x i32> %broadcast.splatinsert146, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph139
  %index141 = phi i64 [ 0, %vector.ph139 ], [ %index.next148, %vector.body140 ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %index141 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %wide.load142 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !7, !alias.scope !62, !noalias !63
  %wide.load143 = load <4 x i32>, ptr %i.de, align 4, !tbaa !7, !alias.scope !62, !noalias !63
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %index141 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load144 = load <4 x i32>, ptr %i.df, align 4, !tbaa !7, !alias.scope !64
  %wide.load145 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !7, !alias.scope !64
  %i.dh = add nsw <4 x i32> %wide.load144, %broadcast.splat147
  %i.di = add nsw <4 x i32> %wide.load145, %broadcast.splat147
  %i.dj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load142, <4 x i32> %i.dh)
  %i.dk = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load143, <4 x i32> %i.di)
  store <4 x i32> %i.dj, ptr %i.dd, align 4, !tbaa !7, !alias.scope !62, !noalias !63
  store <4 x i32> %i.dk, ptr %i.de, align 4, !tbaa !7, !alias.scope !62, !noalias !63
  %index.next148 = add nuw i64 %index141, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next148, 2800
  br i1 %i.dl, label %middle.block149, label %vector.body140, !llvm.loop !45

scalar.ph130:                                     ; preds = %.preheader.i35, %scalar.ph130
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i39.1, %scalar.ph130 ], [ 0, %.preheader.i35 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i37 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.do = load i32, ptr %i.db, align 4, !tbaa !7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i37
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7
  %i.dr = add nsw i32 %i.dq, %i.do
  %..i38 = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %i.dr)
  store i32 %..i38, ptr %i.dm, align 4, !tbaa !7
  %indvars.iv.next.i39 = or disjoint i64 %indvars.iv.i37, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i39 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %i.du = load i32, ptr %i.db, align 4, !tbaa !7
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.next.i39
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  %i.dx = add nsw i32 %i.dw, %i.du
  %..i38.1 = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 %i.dx)
  store i32 %..i38.1, ptr %i.ds, align 4, !tbaa !7
  %indvars.iv.next.i39.1 = add nuw nsw i64 %indvars.iv.i37, 2 ; 2 uses
  %exitcond.not.i40.1 = icmp eq i64 %indvars.iv.next.i39.1, 2800
  br i1 %exitcond.not.i40.1, label %middle.block149, label %scalar.ph130, !llvm.loop !46

middle.block149:                                  ; preds = %vector.body140, %scalar.ph130
  %indvars.iv.next40.i41 = add nuw nsw i64 %indvars.iv39.i36, 1 ; 2 uses
  %exitcond42.not.i42 = icmp eq i64 %indvars.iv.next40.i41, 2800
  br i1 %exitcond42.not.i42, label %bb.e, label %.preheader.i35, !llvm.loop !47

bb.e:                                             ; preds = %middle.block149
  %indvars.iv.next44.i43 = add nuw nsw i64 %indvars.iv43.i34, 1 ; 2 uses
  %exitcond46.not.i44 = icmp eq i64 %indvars.iv.next44.i43, 2800
  br i1 %exitcond46.not.i44, label %.preheader.i45, label %.preheader34.i33, !llvm.loop !48

.preheader.i45:                                   ; preds = %bb.e, %bb.g
  %indvars.iv39.i46 = phi i64 [ %indvars.iv.next40.i50, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv39.i46 ; 5 uses
  %i.dz = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv39.i46 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.4, %.preheader.i45
  %indvars.iv.i47 = phi i64 [ 0, %.preheader.i45 ], [ %indvars.iv.next.i48.4, %.critedge.i.4 ] ; 8 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.i47
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7  ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.i47
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7  ; 2 uses
  %.not.i = icmp eq i32 %i.eb, %i.ed
  br i1 %.not.i, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.3, %.critedge.i.2, %.critedge.i.1, %.critedge.i, %bb.f
  %indvars.iv.i47.lcssa = phi i64 [ %indvars.iv.i47, %bb.f ], [ %indvars.iv.next.i48, %.critedge.i ], [ %indvars.iv.next.i48.1, %.critedge.i.1 ], [ %indvars.iv.next.i48.2, %.critedge.i.2 ], [ %indvars.iv.next.i48.3, %.critedge.i.3 ]
  %.lcssa154 = phi i32 [ %i.eb, %bb.f ], [ %i.el, %.critedge.i ], [ %i.ep, %.critedge.i.1 ], [ %i.et, %.critedge.i.2 ], [ %i.ex, %.critedge.i.3 ]
  %.lcssa = phi i32 [ %i.ed, %bb.f ], [ %i.en, %.critedge.i ], [ %i.er, %.critedge.i.1 ], [ %i.ev, %.critedge.i.2 ], [ %i.ez, %.critedge.i.3 ]
  %i.ee = trunc nuw nsw i64 %indvars.iv39.i46 to i32 ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv.i47.lcssa to i32 ; 2 uses
  %i.eg = sitofp i32 %.lcssa to double
  %i.eh = sitofp i32 %.lcssa154 to double
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ej = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.2, i32 noundef %i.ee, i32 noundef %i.ef, double noundef %i.eh, i32 noundef %i.ee, i32 noundef %i.ef, double noundef %i.eg, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.j

.critedge.i:                                      ; preds = %bb.f
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i48
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !7  ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i48
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7  ; 2 uses
  %.not.i.1 = icmp eq i32 %i.el, %i.en
  br i1 %.not.i.1, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i48.1 = add nuw nsw i64 %indvars.iv.i47, 2 ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i48.1
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7  ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i48.1
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7  ; 2 uses
  %.not.i.2 = icmp eq i32 %i.ep, %i.er
  br i1 %.not.i.2, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i48.2 = add nuw nsw i64 %indvars.iv.i47, 3 ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i48.2
  %i.et = load i32, ptr %i.es, align 4, !tbaa !7  ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i48.2
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7  ; 2 uses
  %.not.i.3 = icmp eq i32 %i.et, %i.ev
  br i1 %.not.i.3, label %.critedge.i.3, label %check_FP.exit.thread

.critedge.i.3:                                    ; preds = %.critedge.i.2
  %indvars.iv.next.i48.3 = add nuw nsw i64 %indvars.iv.i47, 4 ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i48.3
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !7  ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i48.3
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !7  ; 2 uses
  %.not.i.4 = icmp eq i32 %i.ex, %i.ez
  br i1 %.not.i.4, label %.critedge.i.4, label %check_FP.exit.thread

.critedge.i.4:                                    ; preds = %.critedge.i.3
  %indvars.iv.next.i48.4 = add nuw nsw i64 %indvars.iv.i47, 5 ; 2 uses
  %exitcond.not.i49.4 = icmp eq i64 %indvars.iv.next.i48.4, 2800
  br i1 %exitcond.not.i49.4, label %bb.g, label %bb.f, !llvm.loop !49

bb.g:                                             ; preds = %.critedge.i.4
  %indvars.iv.next40.i50 = add nuw nsw i64 %indvars.iv39.i46, 1 ; 2 uses
  %exitcond42.not.i51 = icmp eq i64 %indvars.iv.next40.i50, 2800
  br i1 %exitcond42.not.i51, label %check_FP.exit, label %.preheader.i45, !llvm.loop !50

check_FP.exit:                                    ; preds = %bb.g
  %i.fa = tail call noalias dereferenceable_or_null(44801) ptr @malloc(i64 noundef 44801) #17 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 44800
  store i8 0, ptr %i.fb, align 1, !tbaa !65
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %bb.i, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.i ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv20.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i52
  %indvars.iv.i53 = phi i64 [ 0, %.preheader.i52 ], [ %indvars.iv.next.i54, %bb.h ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %indvars.iv.i53
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !7
  %i.ff = sitofp i32 %i.fe to double
  %i.fg = shl nuw nsw i64 %indvars.iv.i53, 4
  %i.fh = bitcast double %i.ff to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fg
  %.inner = and i64 %i.fh, 1085102592571150095
  %.inner151 = or disjoint i64 %.inner, 3472328296227680304
  %i.fj = bitcast i64 %.inner151 to <8 x i8>
  %i.fk = shufflevector <8 x i8> %i.fj, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.fk, ptr %i.fi, align 1, !tbaa !65
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, 2800
  br i1 %exitcond.not.i55, label %bb.i, label %bb.h, !llvm.loop !51

bb.i:                                             ; preds = %bb.h
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.fm = tail call i32 @fputs(ptr noundef nonnull %i.fa, ptr noundef %i.fl) #14 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2800
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i52, !llvm.loop !52

print_array.exit:                                 ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.fa) #13
  tail call void @free(ptr noundef %i.d) #13
  tail call void @free(ptr noundef nonnull %i.i) #13
  br label %bb.j

bb.j:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10
end_hunk_0
