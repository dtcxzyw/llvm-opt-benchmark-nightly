inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 3
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
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 31360000) #12
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10   ; 13 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp ne i32 %i.c, 0
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.h = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.g) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.i = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 31360000) #12
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !10   ; 14 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = icmp ne i32 %i.i, 0
  %or.cond.i.i15 = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i.i15, label %bb.c, label %polybench_alloc_data.exit16

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.n = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.m) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit16:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %polybench_alloc_data.exit16
  %indvars.iv27.i = phi i64 [ 0, %polybench_alloc_data.exit16 ], [ %indvars.iv.next28.i, %middle.block ] ; 3 uses
  %i.o = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv27.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv27.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.p = mul nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.q = trunc nuw nsw <4 x i64> %i.p to <4 x i32>
  %i.r = urem <4 x i32> %i.q, splat (i32 7)
  %i.s = add nuw nsw <4 x i32> %i.r, splat (i32 1)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index
  %i.u = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %i.v = trunc nuw nsw <4 x i64> %i.u to <4 x i32> ; 3 uses
  %i.w = urem <4 x i32> %i.v, splat (i32 13)
  %i.x = icmp eq <4 x i32> %i.w, zeroinitializer
  %i.y = urem <4 x i32> %i.v, splat (i32 7)
  %i.z = icmp eq <4 x i32> %i.y, zeroinitializer
  %i.aa = or <4 x i1> %i.x, %i.z
  %i.ab = urem <4 x i32> %i.v, splat (i32 11)
  %i.ac = icmp eq <4 x i32> %i.ab, zeroinitializer
  %i.ad = or <4 x i1> %i.ac, %i.aa
  %i.ae = select <4 x i1> %i.ad, <4 x i32> splat (i32 999), <4 x i32> %i.s
  store <4 x i32> %i.ae, ptr %i.t, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.af = icmp eq i64 %index.next, 2800
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 2800
  br i1 %exitcond30.not.i, label %.preheader34.i.preheader, label %.preheader.i, !llvm.loop !18

.preheader34.i.preheader:                         ; preds = %middle.block
  %scevgep = getelementptr i8, ptr %i.d, i64 31360000 ; 2 uses
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.preheader34.i.preheader, %bb.d
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %bb.d ], [ 0, %.preheader34.i.preheader ] ; 5 uses
  %i.ag = shl nuw nsw i64 %indvars.iv43.i, 2      ; 2 uses
  %scevgep81 = getelementptr nuw i8, ptr %i.d, i64 %i.ag
  %i.ah = getelementptr i8, ptr %i.d, i64 %i.ag
  %scevgep82 = getelementptr i8, ptr %i.ah, i64 31348804
  %2 = mul nuw nsw i64 %indvars.iv43.i, 11200     ; 2 uses
  %scevgep83 = getelementptr nuw i8, ptr %i.d, i64 %2
  %3 = getelementptr i8, ptr %i.d, i64 %2
  %scevgep84 = getelementptr i8, ptr %3, i64 11200
  %i.ai = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv43.i ; 3 uses
  %bound0 = icmp ult ptr %i.d, %scevgep82
  %bound1 = icmp ult ptr %scevgep81, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %i.d, %scevgep84
  %bound186 = icmp ult ptr %scevgep83, %scevgep
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  br label %.preheader.i17

.preheader.i17:                                   ; preds = %middle.block97, %.preheader34.i
  %indvars.iv39.i = phi i64 [ 0, %.preheader34.i ], [ %indvars.iv.next40.i, %middle.block97 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv39.i ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv43.i ; 3 uses
  br i1 %conflict.rdx, label %scalar.ph, label %vector.ph88

vector.ph88:                                      ; preds = %.preheader.i17
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4, !alias.scope !19
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %i.al, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph88
  %index90 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body89 ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index90 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !4, !alias.scope !22, !noalias !24
  %wide.load91 = load <4 x i32>, ptr %i.an, align 4, !tbaa !4, !alias.scope !22, !noalias !24
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index90 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load92 = load <4 x i32>, ptr %i.ao, align 4, !tbaa !4, !alias.scope !26
  %wide.load93 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !4, !alias.scope !26
  %i.aq = add nsw <4 x i32> %wide.load92, %broadcast.splat95
  %i.ar = add nsw <4 x i32> %wide.load93, %broadcast.splat95
  %i.as = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %i.aq)
  %i.at = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load91, <4 x i32> %i.ar)
  store <4 x i32> %i.as, ptr %i.am, align 4, !tbaa !4, !alias.scope !22, !noalias !24
  store <4 x i32> %i.at, ptr %i.an, align 4, !tbaa !4, !alias.scope !22, !noalias !24
  %index.next96 = add nuw i64 %index90, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next96, 2800
  br i1 %i.au, label %middle.block97, label %vector.body89, !llvm.loop !27

scalar.ph:                                        ; preds = %.preheader.i17, %scalar.ph
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19.1, %scalar.ph ], [ 0, %.preheader.i17 ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i18 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i18
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !4
  %i.ba = add nsw i32 %i.az, %i.ax
  %..i = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.ba)
  store i32 %..i, ptr %i.av, align 4, !tbaa !4
  %indvars.iv.next.i19 = or disjoint i64 %indvars.iv.i18, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next.i19 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !4
  %i.bd = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next.i19
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = add nsw i32 %i.bf, %i.bd
  %..i.1 = call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.bg)
  store i32 %..i.1, ptr %i.bb, align 4, !tbaa !4
  %indvars.iv.next.i19.1 = add nuw nsw i64 %indvars.iv.i18, 2 ; 2 uses
  %exitcond.not.i20.1 = icmp eq i64 %indvars.iv.next.i19.1, 2800
  br i1 %exitcond.not.i20.1, label %middle.block97, label %scalar.ph, !llvm.loop !28

middle.block97:                                   ; preds = %vector.body89, %scalar.ph
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2800
  br i1 %exitcond42.not.i, label %bb.d, label %.preheader.i17, !llvm.loop !29

bb.d:                                             ; preds = %middle.block97
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next44.i, 2800
  br i1 %exitcond46.not.i, label %.preheader.i21, label %.preheader34.i, !llvm.loop !30

.preheader.i21:                                   ; preds = %bb.d, %middle.block107
  %indvars.iv27.i22 = phi i64 [ %indvars.iv.next28.i29, %middle.block107 ], [ 0, %bb.d ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv27.i22
  %broadcast.splatinsert100 = insertelement <4 x i64> poison, i64 %indvars.iv27.i22, i64 0
  %broadcast.splat101 = shufflevector <4 x i64> %broadcast.splatinsert100, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %.preheader.i21
  %index103 = phi i64 [ 0, %.preheader.i21 ], [ %index.next105, %vector.body102 ] ; 2 uses
  %vec.ind104 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i21 ], [ %vec.ind.next106, %vector.body102 ] ; 3 uses
  %i.bi = mul nuw nsw <4 x i64> %vec.ind104, %broadcast.splat101
  %i.bj = trunc nuw nsw <4 x i64> %i.bi to <4 x i32>
  %i.bk = urem <4 x i32> %i.bj, splat (i32 7)
  %i.bl = add nuw nsw <4 x i32> %i.bk, splat (i32 1)
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index103
  %i.bn = add nuw nsw <4 x i64> %vec.ind104, %broadcast.splat101
  %i.bo = trunc nuw nsw <4 x i64> %i.bn to <4 x i32> ; 3 uses
  %i.bp = urem <4 x i32> %i.bo, splat (i32 13)
  %i.bq = icmp eq <4 x i32> %i.bp, zeroinitializer
  %i.br = urem <4 x i32> %i.bo, splat (i32 7)
  %i.bs = icmp eq <4 x i32> %i.br, zeroinitializer
  %i.bt = or <4 x i1> %i.bq, %i.bs
  %i.bu = urem <4 x i32> %i.bo, splat (i32 11)
  %i.bv = icmp eq <4 x i32> %i.bu, zeroinitializer
  %i.bw = or <4 x i1> %i.bv, %i.bt
  %i.bx = select <4 x i1> %i.bw, <4 x i32> splat (i32 999), <4 x i32> %i.bl
  store <4 x i32> %i.bx, ptr %i.bm, align 4, !tbaa !4
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %vec.ind.next106 = add nuw nsw <4 x i64> %vec.ind104, splat (i64 4)
  %i.by = icmp eq i64 %index.next105, 2800
  br i1 %i.by, label %middle.block107, label %vector.body102, !llvm.loop !31

middle.block107:                                  ; preds = %vector.body102
  %indvars.iv.next28.i29 = add nuw nsw i64 %indvars.iv27.i22, 1 ; 2 uses
  %exitcond30.not.i30 = icmp eq i64 %indvars.iv.next28.i29, 2800
  br i1 %exitcond30.not.i30, label %.preheader34.i32.preheader, label %.preheader.i21, !llvm.loop !18

.preheader34.i32.preheader:                       ; preds = %middle.block107
  %scevgep109 = getelementptr i8, ptr %i.j, i64 31360000 ; 2 uses
  br label %.preheader34.i32

.preheader34.i32:                                 ; preds = %.preheader34.i32.preheader, %bb.e
  %indvars.iv43.i33 = phi i64 [ %indvars.iv.next44.i42, %bb.e ], [ 0, %.preheader34.i32.preheader ] ; 5 uses
  %i.bz = shl nuw nsw i64 %indvars.iv43.i33, 2    ; 2 uses
  %scevgep110 = getelementptr nuw i8, ptr %i.j, i64 %i.bz
  %i.ca = getelementptr i8, ptr %i.j, i64 %i.bz
  %scevgep111 = getelementptr i8, ptr %i.ca, i64 31348804
  %4 = mul nuw nsw i64 %indvars.iv43.i33, 11200   ; 2 uses
  %scevgep112 = getelementptr nuw i8, ptr %i.j, i64 %4
  %5 = getelementptr i8, ptr %i.j, i64 %4
  %scevgep113 = getelementptr i8, ptr %5, i64 11200
  %i.cb = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv43.i33 ; 3 uses
  %bound0114 = icmp ult ptr %i.j, %scevgep111
  %bound1115 = icmp ult ptr %scevgep110, %scevgep109
  %found.conflict116 = and i1 %bound0114, %bound1115
  %bound0117 = icmp ult ptr %i.j, %scevgep113
  %bound1118 = icmp ult ptr %scevgep112, %scevgep109
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %found.conflict116, %found.conflict119
  br label %.preheader.i34

.preheader.i34:                                   ; preds = %middle.block132, %.preheader34.i32
  %indvars.iv39.i35 = phi i64 [ 0, %.preheader34.i32 ], [ %indvars.iv.next40.i40, %middle.block132 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv39.i35 ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv43.i33 ; 3 uses
  br i1 %conflict.rdx120, label %scalar.ph121, label %vector.ph122

vector.ph122:                                     ; preds = %.preheader.i34
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4, !alias.scope !32
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.ce, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph122
  %index124 = phi i64 [ 0, %vector.ph122 ], [ %index.next131, %vector.body123 ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %index124 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load125 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !4, !alias.scope !35, !noalias !37
  %wide.load126 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !4, !alias.scope !35, !noalias !37
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index124 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load127 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !4, !alias.scope !39
  %wide.load128 = load <4 x i32>, ptr %i.ci, align 4, !tbaa !4, !alias.scope !39
  %i.cj = add nsw <4 x i32> %wide.load127, %broadcast.splat130
  %i.ck = add nsw <4 x i32> %wide.load128, %broadcast.splat130
  %i.cl = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load125, <4 x i32> %i.cj)
  %i.cm = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load126, <4 x i32> %i.ck)
  store <4 x i32> %i.cl, ptr %i.cf, align 4, !tbaa !4, !alias.scope !35, !noalias !37
  store <4 x i32> %i.cm, ptr %i.cg, align 4, !tbaa !4, !alias.scope !35, !noalias !37
  %index.next131 = add nuw i64 %index124, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next131, 2800
  br i1 %i.cn, label %middle.block132, label %vector.body123, !llvm.loop !40

scalar.ph121:                                     ; preds = %.preheader.i34, %scalar.ph121
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i38.1, %scalar.ph121 ], [ 0, %.preheader.i34 ] ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i36 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4
  %i.cq = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i36
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = add nsw i32 %i.cs, %i.cq
  %..i37 = call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.ct)
  store i32 %..i37, ptr %i.co, align 4, !tbaa !4
  %indvars.iv.next.i38 = or disjoint i64 %indvars.iv.i36, 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next.i38 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.next.i38
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = add nsw i32 %i.cy, %i.cw
  %..i37.1 = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.cz)
  store i32 %..i37.1, ptr %i.cu, align 4, !tbaa !4
  %indvars.iv.next.i38.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %exitcond.not.i39.1 = icmp eq i64 %indvars.iv.next.i38.1, 2800
  br i1 %exitcond.not.i39.1, label %middle.block132, label %scalar.ph121, !llvm.loop !41

middle.block132:                                  ; preds = %vector.body123, %scalar.ph121
  %indvars.iv.next40.i40 = add nuw nsw i64 %indvars.iv39.i35, 1 ; 2 uses
  %exitcond42.not.i41 = icmp eq i64 %indvars.iv.next40.i40, 2800
  br i1 %exitcond42.not.i41, label %bb.e, label %.preheader.i34, !llvm.loop !42

bb.e:                                             ; preds = %middle.block132
  %indvars.iv.next44.i42 = add nuw nsw i64 %indvars.iv43.i33, 1 ; 2 uses
  %exitcond46.not.i43 = icmp eq i64 %indvars.iv.next44.i42, 2800
  br i1 %exitcond46.not.i43, label %.preheader.i44, label %.preheader34.i32, !llvm.loop !43

.preheader.i44:                                   ; preds = %bb.e, %bb.g
  %indvars.iv39.i45 = phi i64 [ %indvars.iv.next40.i49, %bb.g ], [ 0, %bb.e ] ; 4 uses
  %i.da = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv39.i45 ; 5 uses
  %i.db = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv39.i45 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.4, %.preheader.i44
  %indvars.iv.i46 = phi i64 [ 0, %.preheader.i44 ], [ %indvars.iv.next.i47.4, %.critedge.i.4 ] ; 8 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i46
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4  ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i46
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4  ; 2 uses
  %.not.i = icmp eq i32 %i.dd, %i.df
  br i1 %.not.i, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.3, %.critedge.i.2, %.critedge.i.1, %.critedge.i, %bb.f
  %indvars.iv.i46.lcssa = phi i64 [ %indvars.iv.i46, %bb.f ], [ %indvars.iv.next.i47, %.critedge.i ], [ %indvars.iv.next.i47.1, %.critedge.i.1 ], [ %indvars.iv.next.i47.2, %.critedge.i.2 ], [ %indvars.iv.next.i47.3, %.critedge.i.3 ]
  %.lcssa135 = phi i32 [ %i.dd, %bb.f ], [ %i.dn, %.critedge.i ], [ %i.dr, %.critedge.i.1 ], [ %i.dv, %.critedge.i.2 ], [ %i.dz, %.critedge.i.3 ]
  %.lcssa = phi i32 [ %i.df, %bb.f ], [ %i.dp, %.critedge.i ], [ %i.dt, %.critedge.i.1 ], [ %i.dx, %.critedge.i.2 ], [ %i.eb, %.critedge.i.3 ]
  %i.dg = trunc nuw nsw i64 %indvars.iv39.i45 to i32 ; 2 uses
  %i.dh = trunc nuw nsw i64 %indvars.iv.i46.lcssa to i32 ; 2 uses
  %i.di = sitofp i32 %.lcssa to double
  %i.dj = sitofp i32 %.lcssa135 to double
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.2, i32 noundef %i.dg, i32 noundef %i.dh, double noundef %i.dj, i32 noundef %i.dg, i32 noundef %i.dh, double noundef %i.di, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.j

.critedge.i:                                      ; preds = %bb.f
  %indvars.iv.next.i47 = add nuw nsw i64 %indvars.iv.i46, 1 ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i47
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4  ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i47
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4  ; 2 uses
  %.not.i.1 = icmp eq i32 %i.dn, %i.dp
  br i1 %.not.i.1, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i47.1 = add nuw nsw i64 %indvars.iv.i46, 2 ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i47.1
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4  ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i47.1
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !4  ; 2 uses
  %.not.i.2 = icmp eq i32 %i.dr, %i.dt
  br i1 %.not.i.2, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i47.2 = add nuw nsw i64 %indvars.iv.i46, 3 ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i47.2
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4  ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i47.2
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4  ; 2 uses
  %.not.i.3 = icmp eq i32 %i.dv, %i.dx
  br i1 %.not.i.3, label %.critedge.i.3, label %check_FP.exit.thread

.critedge.i.3:                                    ; preds = %.critedge.i.2
  %indvars.iv.next.i47.3 = add nuw nsw i64 %indvars.iv.i46, 4 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.next.i47.3
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4  ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next.i47.3
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %.not.i.4 = icmp eq i32 %i.dz, %i.eb
  br i1 %.not.i.4, label %.critedge.i.4, label %check_FP.exit.thread

.critedge.i.4:                                    ; preds = %.critedge.i.3
  %indvars.iv.next.i47.4 = add nuw nsw i64 %indvars.iv.i46, 5 ; 2 uses
  %exitcond.not.i48.4 = icmp eq i64 %indvars.iv.next.i47.4, 2800
  br i1 %exitcond.not.i48.4, label %bb.g, label %bb.f, !llvm.loop !44

bb.g:                                             ; preds = %.critedge.i.4
  %indvars.iv.next40.i49 = add nuw nsw i64 %indvars.iv39.i45, 1 ; 2 uses
  %exitcond42.not.i50 = icmp eq i64 %indvars.iv.next40.i49, 2800
  br i1 %exitcond42.not.i50, label %check_FP.exit, label %.preheader.i44, !llvm.loop !45

check_FP.exit:                                    ; preds = %bb.g
  %i.ec = call noalias dereferenceable_or_null(44801) ptr @malloc(i64 noundef 44801) #16 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 44800
  store i8 0, ptr %i.ed, align 1, !tbaa !46
  br label %.preheader.i51

.preheader.i51:                                   ; preds = %bb.i, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.i ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [11200 x i8], ptr %i.j, i64 %indvars.iv20.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i51
  %indvars.iv.i52 = phi i64 [ 0, %.preheader.i51 ], [ %indvars.iv.next.i53, %bb.h ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i52
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = sitofp i32 %i.eg to double
  %i.ei = shl nuw nsw i64 %indvars.iv.i52, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ei
  %i.ek = bitcast double %i.eh to i64             ; 5 uses
  %i.el = lshr i64 %i.ek, 56
  %.sroa.0.6.extract.shift.i.i = lshr i64 %i.ek, 48
  %.sroa.0.5.extract.shift.i.i = lshr i64 %i.ek, 40
  %i.em = trunc nuw i64 %i.el to i8
  %.sroa.0.6.extract.trunc.i.i = trunc i64 %.sroa.0.6.extract.shift.i.i to i8
  %.sroa.0.5.extract.trunc.i.i = trunc i64 %.sroa.0.5.extract.shift.i.i to i8
  %i.en = insertelement <4 x i64> poison, i64 %i.ek, i64 0
  %i.eo = shufflevector <4 x i64> %i.en, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ep = lshr <4 x i64> %i.eo, <i64 8, i64 16, i64 24, i64 32>
  %i.eq = trunc <4 x i64> %i.ep to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.ek to i8
  %i.er = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.es = shufflevector <4 x i8> %i.eq, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.et = shufflevector <8 x i8> %i.er, <8 x i8> %i.es, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.eu = insertelement <8 x i8> %i.et, i8 %.sroa.0.5.extract.trunc.i.i, i64 5
  %i.ev = insertelement <8 x i8> %i.eu, i8 %.sroa.0.6.extract.trunc.i.i, i64 6
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.em, i64 7
  %i.ex = and <8 x i8> %i.ew, splat (i8 15)
  %i.ey = or disjoint <8 x i8> %i.ex, splat (i8 48)
  %i.ez = shufflevector <8 x i8> %i.ey, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ez, ptr %i.ej, align 1, !tbaa !46
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, 2800
  br i1 %exitcond.not.i54, label %bb.i, label %bb.h, !llvm.loop !47

bb.i:                                             ; preds = %bb.h
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.fb = call i32 @fputs(ptr noundef nonnull %i.ec, ptr noundef %i.fa) #13 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2800
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i51, !llvm.loop !48

print_array.exit:                                 ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.ec) #12
  call void @free(ptr noundef %i.d) #12
  call void @free(ptr noundef nonnull %i.j) #12
  br label %bb.j

bb.j:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5
end_hunk_0
