Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/floyd-warshall?download=true
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
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 31360000) #13
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11   ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp ne i32 %i.c, 0
  %or.cond.i.i = or i1 %i.f, %i.e
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.g) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 31360000) #13
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !11   ; 12 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp ne i32 %i.h, 0
  %or.cond.i.i15 = or i1 %i.k, %i.j
  br i1 %or.cond.i.i15, label %bb.c, label %polybench_alloc_data.exit17

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !13
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
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next28.i, 2800
  br i1 %exitcond30.not.i, label %.preheader34.i.preheader, label %.preheader.i, !llvm.loop !15

.preheader34.i.preheader:                         ; preds = %middle.block
  %scevgep = getelementptr i8, ptr %i.d, i64 31360000
  %i.ae = insertelement <2 x ptr> poison, ptr %i.d, i64 0
  %i.af = shufflevector <2 x ptr> %i.ae, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.ah = shufflevector <2 x ptr> %i.ag, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.preheader34.i

.preheader34.i:                                   ; preds = %.preheader34.i.preheader, %bb.d
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %bb.d ], [ 0, %.preheader34.i.preheader ] ; 5 uses
  %i.ai = shl nuw nsw i64 %indvars.iv43.i, 2      ; 2 uses
  %scevgep82 = getelementptr nuw i8, ptr %i.d, i64 %i.ai
  %i.aj = getelementptr i8, ptr %i.d, i64 %i.ai
  %i.ak = mul nuw nsw i64 %indvars.iv43.i, 11200
  %i.al = getelementptr i8, ptr %i.d, i64 %i.ak
  %i.am = insertelement <2 x ptr> poison, ptr %i.aj, i64 0
  %i.an = insertelement <2 x ptr> %i.am, ptr %i.al, i64 1
  %i.ao = getelementptr i8, <2 x ptr> %i.an, <2 x i64> <i64 31348804, i64 11200>
  %i.ap = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv43.i ; 4 uses
  %i.aq = insertelement <2 x ptr> poison, ptr %scevgep82, i64 0
  %i.ar = insertelement <2 x ptr> %i.aq, ptr %i.ap, i64 1
  %i.as = icmp ult <2 x ptr> %i.af, %i.ao
  %i.at = icmp ult <2 x ptr> %i.ar, %i.ah
  %i.au = and <2 x i1> %i.as, %i.at
  %i.av = bitcast <2 x i1> %i.au to i2
  %.not = icmp eq i2 %i.av, 0
  br label %.preheader.i18

.preheader.i18:                                   ; preds = %middle.block97, %.preheader34.i
  %indvars.iv39.i = phi i64 [ 0, %.preheader34.i ], [ %indvars.iv.next40.i, %middle.block97 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [11200 x i8], ptr %i.d, i64 %indvars.iv39.i ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv43.i ; 3 uses
  br i1 %.not, label %vector.ph88, label %scalar.ph

vector.ph88:                                      ; preds = %.preheader.i18
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7, !alias.scope !40
  %broadcast.splatinsert94 = insertelement <4 x i32> poison, i32 %i.ay, i64 0
  %broadcast.splat95 = shufflevector <4 x i32> %broadcast.splatinsert94, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph88
  %index90 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body89 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index90 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.az, align 4, !tbaa !7, !alias.scope !41, !noalias !42
  %wide.load91 = load <4 x i32>, ptr %i.ba, align 4, !tbaa !7, !alias.scope !41, !noalias !42
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index90 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load92 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !7, !alias.scope !43
  %wide.load93 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !7, !alias.scope !43
  %i.bd = add nsw <4 x i32> %wide.load92, %broadcast.splat95
  %i.be = add nsw <4 x i32> %wide.load93, %broadcast.splat95
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %i.bd)
  %3 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load91, <4 x i32> %i.be)
  store <4 x i32> %2, ptr %i.az, align 4, !tbaa !7, !alias.scope !41, !noalias !42
  store <4 x i32> %3, ptr %i.ba, align 4, !tbaa !7, !alias.scope !41, !noalias !42
  %index.next96 = add nuw i64 %index90, 8         ; 2 uses
  %i.bf = icmp eq i64 %index.next96, 2800
  br i1 %i.bf, label %middle.block97, label %vector.body89, !llvm.loop !20

scalar.ph:                                        ; preds = %.preheader.i18, %scalar.ph
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i20.1, %scalar.ph ], [ 0, %.preheader.i18 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i19 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !7
  %i.bi = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.i19
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = add nsw i32 %i.bk, %i.bi
  %..i = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %i.bl)
  store i32 %..i, ptr %i.bg, align 4, !tbaa !7
  %indvars.iv.next.i20 = or disjoint i64 %indvars.iv.i19, 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i20 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %i.bo = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.i20
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = add nsw i32 %i.bq, %i.bo
  %..i.1 = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.br)
  store i32 %..i.1, ptr %i.bm, align 4, !tbaa !7
  %indvars.iv.next.i20.1 = add nuw nsw i64 %indvars.iv.i19, 2 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %indvars.iv.next.i20.1, 2800
  br i1 %exitcond.not.i21.1, label %middle.block97, label %scalar.ph, !llvm.loop !21

middle.block97:                                   ; preds = %vector.body89, %scalar.ph
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2800
  br i1 %exitcond42.not.i, label %bb.d, label %.preheader.i18, !llvm.loop !22

bb.d:                                             ; preds = %middle.block97
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next44.i, 2800
  br i1 %exitcond46.not.i, label %.preheader.i22, label %.preheader34.i, !llvm.loop !23

.preheader.i22:                                   ; preds = %bb.d, %middle.block107
  %indvars.iv27.i23 = phi i64 [ %indvars.iv.next28.i30, %middle.block107 ], [ 0, %bb.d ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv27.i23
  %broadcast.splatinsert100 = insertelement <4 x i64> poison, i64 %indvars.iv27.i23, i64 0
  %broadcast.splat101 = shufflevector <4 x i64> %broadcast.splatinsert100, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %.preheader.i22
  %index103 = phi i64 [ 0, %.preheader.i22 ], [ %index.next105, %vector.body102 ] ; 2 uses
  %vec.ind104 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %.preheader.i22 ], [ %vec.ind.next106, %vector.body102 ] ; 3 uses
  %i.bt = mul nuw nsw <4 x i64> %vec.ind104, %broadcast.splat101
  %i.bu = trunc nuw nsw <4 x i64> %i.bt to <4 x i32>
  %i.bv = urem <4 x i32> %i.bu, splat (i32 7)
  %i.bw = add nuw nsw <4 x i32> %i.bv, splat (i32 1)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index103
  %i.by = add nuw nsw <4 x i64> %vec.ind104, %broadcast.splat101
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
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %vec.ind.next106 = add nuw nsw <4 x i64> %vec.ind104, splat (i64 4)
  %i.cj = icmp eq i64 %index.next105, 2800
  br i1 %i.cj, label %middle.block107, label %vector.body102, !llvm.loop !24

middle.block107:                                  ; preds = %vector.body102
  %indvars.iv.next28.i30 = add nuw nsw i64 %indvars.iv27.i23, 1 ; 2 uses
  %exitcond30.not.i31 = icmp eq i64 %indvars.iv.next28.i30, 2800
  br i1 %exitcond30.not.i31, label %.preheader34.i33.preheader, label %.preheader.i22, !llvm.loop !15

.preheader34.i33.preheader:                       ; preds = %middle.block107
  %scevgep109 = getelementptr i8, ptr %i.i, i64 31360000
  %i.ck = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.cl = shufflevector <2 x ptr> %i.ck, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cm = insertelement <2 x ptr> poison, ptr %scevgep109, i64 0
  %i.cn = shufflevector <2 x ptr> %i.cm, <2 x ptr> poison, <2 x i32> zeroinitializer
  br label %.preheader34.i33

.preheader34.i33:                                 ; preds = %.preheader34.i33.preheader, %bb.e
  %indvars.iv43.i34 = phi i64 [ %indvars.iv.next44.i43, %bb.e ], [ 0, %.preheader34.i33.preheader ] ; 5 uses
  %i.co = shl nuw nsw i64 %indvars.iv43.i34, 2    ; 2 uses
  %scevgep110 = getelementptr nuw i8, ptr %i.i, i64 %i.co
  %i.cp = getelementptr i8, ptr %i.i, i64 %i.co
  %i.cq = mul nuw nsw i64 %indvars.iv43.i34, 11200
  %i.cr = getelementptr i8, ptr %i.i, i64 %i.cq
  %i.cs = insertelement <2 x ptr> poison, ptr %i.cp, i64 0
  %i.ct = insertelement <2 x ptr> %i.cs, ptr %i.cr, i64 1
  %i.cu = getelementptr i8, <2 x ptr> %i.ct, <2 x i64> <i64 31348804, i64 11200>
  %i.cv = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv43.i34 ; 4 uses
  %i.cw = insertelement <2 x ptr> poison, ptr %scevgep110, i64 0
  %i.cx = insertelement <2 x ptr> %i.cw, ptr %i.cv, i64 1
  %i.cy = icmp ult <2 x ptr> %i.cl, %i.cu
  %i.cz = icmp ult <2 x ptr> %i.cx, %i.cn
  %i.da = and <2 x i1> %i.cy, %i.cz
  %i.db = bitcast <2 x i1> %i.da to i2
  %.not134 = icmp eq i2 %i.db, 0
  br label %.preheader.i35

.preheader.i35:                                   ; preds = %middle.block131, %.preheader34.i33
  %indvars.iv39.i36 = phi i64 [ 0, %.preheader34.i33 ], [ %indvars.iv.next40.i41, %middle.block131 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv39.i36 ; 4 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv43.i34 ; 3 uses
  br i1 %.not134, label %vector.ph121, label %scalar.ph120

vector.ph121:                                     ; preds = %.preheader.i35
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7, !alias.scope !44
  %broadcast.splatinsert128 = insertelement <4 x i32> poison, i32 %i.de, i64 0
  %broadcast.splat129 = shufflevector <4 x i32> %broadcast.splatinsert128, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph121
  %index123 = phi i64 [ 0, %vector.ph121 ], [ %index.next130, %vector.body122 ] ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %index123 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load124 = load <4 x i32>, ptr %i.df, align 4, !tbaa !7, !alias.scope !45, !noalias !46
  %wide.load125 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !7, !alias.scope !45, !noalias !46
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %index123 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load126 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !7, !alias.scope !47
  %wide.load127 = load <4 x i32>, ptr %i.di, align 4, !tbaa !7, !alias.scope !47
  %i.dj = add nsw <4 x i32> %wide.load126, %broadcast.splat129
  %i.dk = add nsw <4 x i32> %wide.load127, %broadcast.splat129
  %4 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load124, <4 x i32> %i.dj)
  %5 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load125, <4 x i32> %i.dk)
  store <4 x i32> %4, ptr %i.df, align 4, !tbaa !7, !alias.scope !45, !noalias !46
  store <4 x i32> %5, ptr %i.dg, align 4, !tbaa !7, !alias.scope !45, !noalias !46
  %index.next130 = add nuw i64 %index123, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next130, 2800
  br i1 %i.dl, label %middle.block131, label %vector.body122, !llvm.loop !29

scalar.ph120:                                     ; preds = %.preheader.i35, %scalar.ph120
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i39.1, %scalar.ph120 ], [ 0, %.preheader.i35 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.i37 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !7
  %i.do = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i37
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7
  %i.dr = add nsw i32 %i.dq, %i.do
  %..i38 = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %i.dr)
  store i32 %..i38, ptr %i.dm, align 4, !tbaa !7
  %indvars.iv.next.i39 = or disjoint i64 %indvars.iv.i37, 1 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next.i39 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !7
  %i.du = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.next.i39
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  %i.dx = add nsw i32 %i.dw, %i.du
  %..i38.1 = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 %i.dx)
  store i32 %..i38.1, ptr %i.ds, align 4, !tbaa !7
  %indvars.iv.next.i39.1 = add nuw nsw i64 %indvars.iv.i37, 2 ; 2 uses
  %exitcond.not.i40.1 = icmp eq i64 %indvars.iv.next.i39.1, 2800
  br i1 %exitcond.not.i40.1, label %middle.block131, label %scalar.ph120, !llvm.loop !30

middle.block131:                                  ; preds = %vector.body122, %scalar.ph120
  %indvars.iv.next40.i41 = add nuw nsw i64 %indvars.iv39.i36, 1 ; 2 uses
  %exitcond42.not.i42 = icmp eq i64 %indvars.iv.next40.i41, 2800
  br i1 %exitcond42.not.i42, label %bb.e, label %.preheader.i35, !llvm.loop !31

bb.e:                                             ; preds = %middle.block131
  %indvars.iv.next44.i43 = add nuw nsw i64 %indvars.iv43.i34, 1 ; 2 uses
  %exitcond46.not.i44 = icmp eq i64 %indvars.iv.next44.i43, 2800
  br i1 %exitcond46.not.i44, label %.preheader.i45, label %.preheader34.i33, !llvm.loop !32

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
  %.lcssa136 = phi i32 [ %i.eb, %bb.f ], [ %i.ek, %.critedge.i ], [ %i.eo, %.critedge.i.1 ], [ %i.es, %.critedge.i.2 ], [ %i.ew, %.critedge.i.3 ]
  %.lcssa = phi i32 [ %i.ed, %bb.f ], [ %i.em, %.critedge.i ], [ %i.eq, %.critedge.i.1 ], [ %i.eu, %.critedge.i.2 ], [ %i.ey, %.critedge.i.3 ]
  %i.ee = trunc nuw nsw i64 %indvars.iv39.i46 to i32 ; 2 uses
  %i.ef = trunc nuw nsw i64 %indvars.iv.i47.lcssa to i32 ; 2 uses
  %i.eg = sitofp i32 %.lcssa to double
  %i.eh = sitofp i32 %.lcssa136 to double
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !13
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.2, i32 noundef %i.ee, i32 noundef %i.ef, double noundef %i.eh, i32 noundef %i.ee, i32 noundef %i.ef, double noundef %i.eg, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.j

.critedge.i:                                      ; preds = %bb.f
  %indvars.iv.next.i48 = add nuw nsw i64 %indvars.iv.i47, 1 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i48
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7  ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i48
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7  ; 2 uses
  %.not.i.1 = icmp eq i32 %i.ek, %i.em
  br i1 %.not.i.1, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i48.1 = add nuw nsw i64 %indvars.iv.i47, 2 ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i48.1
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !7  ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i48.1
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !7  ; 2 uses
  %.not.i.2 = icmp eq i32 %i.eo, %i.eq
  br i1 %.not.i.2, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i48.2 = add nuw nsw i64 %indvars.iv.i47, 3 ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i48.2
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7  ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i48.2
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !7  ; 2 uses
  %.not.i.3 = icmp eq i32 %i.es, %i.eu
  br i1 %.not.i.3, label %.critedge.i.3, label %check_FP.exit.thread

.critedge.i.3:                                    ; preds = %.critedge.i.2
  %indvars.iv.next.i48.3 = add nuw nsw i64 %indvars.iv.i47, 4 ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv.next.i48.3
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7  ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.i48.3
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7  ; 2 uses
  %.not.i.4 = icmp eq i32 %i.ew, %i.ey
  br i1 %.not.i.4, label %.critedge.i.4, label %check_FP.exit.thread

.critedge.i.4:                                    ; preds = %.critedge.i.3
  %indvars.iv.next.i48.4 = add nuw nsw i64 %indvars.iv.i47, 5 ; 2 uses
  %exitcond.not.i49.4 = icmp eq i64 %indvars.iv.next.i48.4, 2800
  br i1 %exitcond.not.i49.4, label %bb.g, label %bb.f, !llvm.loop !33

bb.g:                                             ; preds = %.critedge.i.4
  %indvars.iv.next40.i50 = add nuw nsw i64 %indvars.iv39.i46, 1 ; 2 uses
  %exitcond42.not.i51 = icmp eq i64 %indvars.iv.next40.i50, 2800
  br i1 %exitcond42.not.i51, label %check_FP.exit, label %.preheader.i45, !llvm.loop !34

check_FP.exit:                                    ; preds = %bb.g
  %7 = tail call noalias dereferenceable_or_null(44801) ptr @malloc(i64 noundef 44801) #17 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 44800
  store i8 0, ptr %i.ez, align 1, !tbaa !48
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %bb.i, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.i ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [11200 x i8], ptr %i.i, i64 %indvars.iv20.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.preheader.i52
  %indvars.iv.i53 = phi i64 [ 0, %.preheader.i52 ], [ %indvars.iv.next.i54, %bb.h ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv.i53
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !7
  %i.fd = sitofp i32 %i.fc to double
  %i.fe = shl nuw nsw i64 %indvars.iv.i53, 4
  %i.ff = bitcast double %i.fd to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %7, i64 %i.fe
  %.inner = and i64 %i.ff, 1085102592571150095
  %.inner133 = or disjoint i64 %.inner, 3472328296227680304
  %i.fh = bitcast i64 %.inner133 to <8 x i8>
  %i.fi = shufflevector <8 x i8> %i.fh, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.fi, ptr %i.fg, align 1, !tbaa !48
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, 2800
  br i1 %exitcond.not.i55, label %bb.i, label %bb.h, !llvm.loop !35

bb.i:                                             ; preds = %bb.h
  %i.fj = load ptr, ptr @stderr, align 8, !tbaa !13
  %8 = tail call i32 @fputs(ptr noundef nonnull %7, ptr noundef %i.fj) #14 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2800
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i52, !llvm.loop !36

print_array.exit:                                 ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %7) #13
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

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #12

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
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }

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
!14 = distinct !{!14, !37, !38, !39}
!15 = distinct !{!15, !37}
!16 = distinct !{!16, !"LVerDomain"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !37, !38, !39}
!21 = distinct !{!21, !37, !38}
!22 = distinct !{!22, !37}
!23 = distinct !{!23, !37}
!24 = distinct !{!24, !37, !38, !39}
!25 = distinct !{!25, !"LVerDomain"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !25}
!29 = distinct !{!29, !37, !38, !39}
!30 = distinct !{!30, !37, !38}
!31 = distinct !{!31, !37}
!32 = distinct !{!32, !37}
!33 = distinct !{!33, !37}
!34 = distinct !{!34, !37}
!35 = distinct !{!35, !37}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!17}
!41 = !{!18}
!42 = !{!17, !19}
!43 = !{!19}
!44 = !{!26}
!45 = !{!27}
!46 = !{!26, !28}
!47 = !{!28}
!48 = !{!5, !5, i64 0}
end_hunk_0
