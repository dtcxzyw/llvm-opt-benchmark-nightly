inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
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
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 11520000) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 8 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.j = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 11520000) #12
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10   ; 9 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp ne i32 %i.k, 0
  %or.cond.i.i21 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i21, label %bb.c, label %polybench_alloc_data.exit22

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.p) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit22:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.r = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #12
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !10   ; 13 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = icmp ne i32 %i.r, 0
  %or.cond.i.i23 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i23, label %bb.d, label %polybench_alloc_data.exit24

bb.d:                                             ; preds = %polybench_alloc_data.exit22
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.v) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit24:                      ; preds = %polybench_alloc_data.exit22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.preheader35.i

.preheader35.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit24
  %indvars.iv41.i = phi i64 [ 0, %polybench_alloc_data.exit24 ], [ %indvars.iv.next42.i, %middle.block ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8000 x i8], ptr %i.s, i64 %indvars.iv41.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader35.i
  %index = phi i64 [ 0, %.preheader35.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader35.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.y = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.z = trunc <2 x i64> %i.y to <2 x i32>
  %i.aa = add <2 x i32> %i.z, splat (i32 1)
  %i.ab = urem <2 x i32> %i.aa, splat (i32 1200)
  %i.ac = uitofp nneg <2 x i32> %i.ab to <2 x double>
  %i.ad = fdiv <2 x double> %i.ac, splat (double 1.200000e+03)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.af = icmp eq i64 %index.next, 1000
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next42.i, 1200
  br i1 %exitcond44.not.i, label %.preheader.i.preheader, label %.preheader35.i, !llvm.loop !18

.preheader.i.preheader:                           ; preds = %middle.block
  %i.ag = sub i64 %i.f, %i.m
  %diff.check = icmp ugt i64 %i.ag, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block92
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %middle.block92 ], [ 0, %.preheader.i.preheader ] ; 6 uses
  %i.ah = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv49.i ; 3 uses
  %i.ai = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv49.i ; 3 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph84

vector.ph84:                                      ; preds = %.preheader.i
  %broadcast.splatinsert85 = insertelement <2 x i64> poison, i64 %indvars.iv49.i, i64 0
  %broadcast.splat86 = shufflevector <2 x i64> %broadcast.splatinsert85, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph84
  %index88 = phi i64 [ 0, %vector.ph84 ], [ %index.next90, %vector.body87 ] ; 3 uses
  %vec.ind89 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph84 ], [ %vec.ind.next91, %vector.body87 ] ; 2 uses
  %i.aj = mul nuw nsw <2 x i64> %vec.ind89, %broadcast.splat86
  %i.ak = trunc <2 x i64> %i.aj to <2 x i32>
  %i.al = add <2 x i32> %i.ak, splat (i32 2)
  %i.am = urem <2 x i32> %i.al, splat (i32 1000)
  %i.an = uitofp nneg <2 x i32> %i.am to <2 x double>
  %i.ao = fdiv <2 x double> %i.an, splat (double 1.000000e+03) ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index88
  store <2 x double> %i.ao, ptr %i.ap, align 8, !tbaa !8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %index88
  store <2 x double> %i.ao, ptr %i.aq, align 8, !tbaa !8
  %index.next90 = add nuw i64 %index88, 2         ; 2 uses
  %vec.ind.next91 = add nuw nsw <2 x i64> %vec.ind89, splat (i64 2)
  %i.ar = icmp eq i64 %index.next90, 1200
  br i1 %i.ar, label %middle.block92, label %vector.body87, !llvm.loop !19

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i.1, %scalar.ph ], [ 0, %.preheader.i ] ; 5 uses
  %i.as = mul nuw nsw i64 %indvars.iv45.i, %indvars.iv49.i
  %i.at = trunc i64 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, 2
  %i.av = urem i32 %i.au, 1000
  %i.aw = uitofp nneg i32 %i.av to double
  %i.ax = fdiv double %i.aw, 1.000000e+03         ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv45.i
  store double %i.ax, ptr %i.ay, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv45.i
  store double %i.ax, ptr %i.az, align 8, !tbaa !8
  %indvars.iv.next46.i = or disjoint i64 %indvars.iv45.i, 1 ; 3 uses
  %i.ba = mul nuw nsw i64 %indvars.iv.next46.i, %indvars.iv49.i
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = add nuw nsw i32 %i.bb, 2
  %i.bd = urem i32 %i.bc, 1000
  %i.be = uitofp nneg i32 %i.bd to double
  %i.bf = fdiv double %i.be, 1.000000e+03         ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next46.i
  store double %i.bf, ptr %i.bg, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.next46.i
  store double %i.bf, ptr %i.bh, align 8, !tbaa !8
  %indvars.iv.next46.i.1 = add nuw nsw i64 %indvars.iv45.i, 2 ; 2 uses
  %exitcond48.not.i.1 = icmp eq i64 %indvars.iv.next46.i.1, 1200
  br i1 %exitcond48.not.i.1, label %middle.block92, label %scalar.ph, !llvm.loop !20

middle.block92:                                   ; preds = %vector.body87, %scalar.ph
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 1200
  br i1 %exitcond52.not.i, label %.preheader29.i, label %.preheader.i, !llvm.loop !21

.preheader29.i:                                   ; preds = %middle.block92, %bb.e
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i, %bb.e ], [ 0, %middle.block92 ] ; 7 uses
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %bb.e ], [ 1, %middle.block92 ] ; 10 uses
  %i.bi = mul nuw nsw i64 %indvars.iv48.i, 9600
  %scevgep = getelementptr nuw i8, ptr %i.e, i64 %i.bi ; 2 uses
  %i.bj = mul nuw nsw i64 %indvars.iv48.i, 9608
  %i.bk = getelementptr i8, ptr %i.e, i64 %i.bj
  %scevgep94 = getelementptr i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bl = mul nuw nsw i64 %indvars.iv48.i, 8000   ; 2 uses
  %i.bm = getelementptr i8, ptr %i.s, i64 %i.bl
  %scevgep95 = getelementptr i8, ptr %i.bm, i64 8000 ; 2 uses
  %scevgep96 = getelementptr i8, ptr %i.s, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv48.i ; 6 uses
  %min.iters.check110 = icmp samesign ult i64 %indvars.iv46.i, 4
  br i1 %min.iters.check110, label %scalar.ph109.preheader, label %vector.ph111

vector.ph111:                                     ; preds = %.preheader29.i
  %n.vec113 = and i64 %indvars.iv46.i, 9223372036854775804 ; 3 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph111
  %index115 = phi i64 [ 0, %vector.ph111 ], [ %index.next118, %vector.body114 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index115 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load116 = load <2 x double>, ptr %i.bo, align 8, !tbaa !8
  %wide.load117 = load <2 x double>, ptr %i.bp, align 8, !tbaa !8
  %i.bq = fmul <2 x double> %wide.load116, splat (double 1.200000e+00)
  %i.br = fmul <2 x double> %wide.load117, splat (double 1.200000e+00)
  store <2 x double> %i.bq, ptr %i.bo, align 8, !tbaa !8
  store <2 x double> %i.br, ptr %i.bp, align 8, !tbaa !8
  %index.next118 = add nuw i64 %index115, 4       ; 2 uses
  %i.bs = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.bs, label %middle.block119, label %vector.body114, !llvm.loop !22

middle.block119:                                  ; preds = %vector.body114
  %cmp.n120 = icmp eq i64 %indvars.iv46.i, %n.vec113
  br i1 %cmp.n120, label %.preheader28.i, label %scalar.ph109.preheader

scalar.ph109.preheader:                           ; preds = %.preheader29.i, %middle.block119
  %indvars.iv.i25.ph = phi i64 [ 0, %.preheader29.i ], [ %n.vec113, %middle.block119 ]
  br label %scalar.ph109

.preheader28.i:                                   ; preds = %scalar.ph109, %middle.block119
  %i.bt = getelementptr inbounds nuw [8000 x i8], ptr %i.s, i64 %indvars.iv48.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv46.i, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep95
  %bound1 = icmp ult ptr %i.s, %scevgep94
  %found.conflict = and i1 %bound0, %bound1
  %bound097 = icmp ult ptr %scevgep, %scevgep95
  %bound198 = icmp ult ptr %scevgep96, %scevgep94
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx = or i1 %found.conflict, %found.conflict99
  %n.vec = and i64 %indvars.iv46.i, 9223372036854775804 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv46.i, %n.vec
  %xtraiter = and i64 %indvars.iv46.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i28

scalar.ph109:                                     ; preds = %scalar.ph109.preheader, %scalar.ph109
  %indvars.iv.i25 = phi i64 [ %indvars.iv.next.i26, %scalar.ph109 ], [ %indvars.iv.i25.ph, %scalar.ph109.preheader ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.i25 ; 2 uses
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !8
  %i.bw = fmul double %i.bv, 1.200000e+00
  store double %i.bw, ptr %i.bu, align 8, !tbaa !8
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i27 = icmp eq i64 %indvars.iv.next.i26, %indvars.iv46.i
  br i1 %exitcond.not.i27, label %.preheader28.i, label %scalar.ph109, !llvm.loop !23

.preheader.i28:                                   ; preds = %.loopexit162, %.preheader28.i
  %indvars.iv42.i = phi i64 [ 0, %.preheader28.i ], [ %indvars.iv.next43.i, %.loopexit162 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv42.i ; 4 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv42.i ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph100.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %.preheader.i28
  %i.by = load double, ptr %i.bx, align 8, !tbaa !8, !alias.scope !24
  %i.bz = fmul double %i.by, 1.500000e+00
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %i.bz, i64 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph101
  %index103 = phi i64 [ 0, %vector.ph101 ], [ %index.next107, %vector.body102 ] ; 6 uses
  %i.ca = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index103
  %i.cb = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index103
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8000
  %i.cd = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index103
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16000
  %i.cf = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index103
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24000
  %i.ch = load double, ptr %i.ca, align 8, !tbaa !8, !alias.scope !27
  %i.ci = load double, ptr %i.cc, align 8, !tbaa !8, !alias.scope !27
  %i.cj = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ci, i64 1
  %i.cl = load double, ptr %i.ce, align 8, !tbaa !8, !alias.scope !27
  %i.cm = load double, ptr %i.cg, align 8, !tbaa !8, !alias.scope !27
  %i.cn = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cm, i64 1
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index103 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.cp, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %wide.load104 = load <2 x double>, ptr %i.cq, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %i.cr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat106, <2 x double> %i.ck, <2 x double> %wide.load)
  %i.cs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat106, <2 x double> %i.co, <2 x double> %wide.load104)
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  store <2 x double> %i.cs, ptr %i.cq, align 8, !tbaa !8, !alias.scope !29, !noalias !31
  %index.next107 = add nuw i64 %index103, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next107, %n.vec
  br i1 %i.ct, label %middle.block108, label %vector.body102, !llvm.loop !32

middle.block108:                                  ; preds = %vector.body102
  br i1 %cmp.n, label %.loopexit162, label %scalar.ph100.preheader

scalar.ph100.preheader:                           ; preds = %.preheader.i28, %middle.block108
  %indvars.iv37.i.ph = phi i64 [ %n.vec, %middle.block108 ], [ 0, %.preheader.i28 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph100.prol.loopexit, label %scalar.ph100.prol

scalar.ph100.prol:                                ; preds = %scalar.ph100.preheader
  %i.cu = load double, ptr %i.bx, align 8, !tbaa !8
  %i.cv = fmul double %i.cu, 1.500000e+00
  %gep.i.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv37.i.ph
  %i.cw = load double, ptr %gep.i.prol, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv37.i.ph ; 2 uses
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !8
  %i.cz = call double @llvm.fmuladd.f64(double %i.cv, double %i.cw, double %i.cy)
  store double %i.cz, ptr %i.cx, align 8, !tbaa !8
  %indvars.iv.next38.i.prol = or disjoint i64 %indvars.iv37.i.ph, 1
  br label %scalar.ph100.prol.loopexit

scalar.ph100.prol.loopexit:                       ; preds = %scalar.ph100.prol, %scalar.ph100.preheader
  %indvars.iv37.i.unr = phi i64 [ %indvars.iv37.i.ph, %scalar.ph100.preheader ], [ %indvars.iv.next38.i.prol, %scalar.ph100.prol ]
  %i.da = icmp eq i64 %indvars.iv48.i, %indvars.iv37.i.ph
  br i1 %i.da, label %.loopexit162, label %scalar.ph100

scalar.ph100:                                     ; preds = %scalar.ph100.prol.loopexit, %scalar.ph100
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i.1, %scalar.ph100 ], [ %indvars.iv37.i.unr, %scalar.ph100.prol.loopexit ] ; 4 uses
  %i.db = load double, ptr %i.bx, align 8, !tbaa !8
  %i.dc = fmul double %i.db, 1.500000e+00
  %gep.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv37.i
  %i.dd = load double, ptr %gep.i, align 8, !tbaa !8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv37.i ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !8
  %i.dg = call double @llvm.fmuladd.f64(double %i.dc, double %i.dd, double %i.df)
  store double %i.dg, ptr %i.de, align 8, !tbaa !8
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %i.dh = load double, ptr %i.bx, align 8, !tbaa !8
  %i.di = fmul double %i.dh, 1.500000e+00
  %gep.i.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next38.i
  %i.dj = load double, ptr %gep.i.1, align 8, !tbaa !8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv.next38.i ; 2 uses
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !8
  %i.dm = call double @llvm.fmuladd.f64(double %i.di, double %i.dj, double %i.dl)
  store double %i.dm, ptr %i.dk, align 8, !tbaa !8
  %indvars.iv.next38.i.1 = add nuw nsw i64 %indvars.iv37.i, 2 ; 2 uses
  %exitcond41.not.i.1 = icmp eq i64 %indvars.iv.next38.i.1, %indvars.iv46.i
  br i1 %exitcond41.not.i.1, label %.loopexit162, label %scalar.ph100, !llvm.loop !33

.loopexit162:                                     ; preds = %scalar.ph100.prol.loopexit, %scalar.ph100, %middle.block108
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next43.i, 1000
  br i1 %exitcond45.not.i, label %bb.e, label %.preheader.i28, !llvm.loop !34

bb.e:                                             ; preds = %.loopexit162
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond53.not.i = icmp eq i64 %indvars.iv.next49.i, 1200
  br i1 %exitcond53.not.i, label %.preheader29.i29, label %.preheader29.i, !llvm.loop !35

.preheader29.i29:                                 ; preds = %bb.e, %bb.f
  %indvars.iv48.i30 = phi i64 [ %indvars.iv.next49.i45, %bb.f ], [ 0, %bb.e ] ; 7 uses
  %indvars.iv46.i31 = phi i64 [ %indvars.iv.next47.i46, %bb.f ], [ 1, %bb.e ] ; 10 uses
  %i.dn = mul nuw nsw i64 %indvars.iv48.i30, 9600
  %scevgep123 = getelementptr nuw i8, ptr %i.l, i64 %i.dn ; 2 uses
  %i.do = mul nuw nsw i64 %indvars.iv48.i30, 9608
  %i.dp = getelementptr i8, ptr %i.l, i64 %i.do
  %scevgep124 = getelementptr i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dq = mul nuw nsw i64 %indvars.iv48.i30, 8000 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.s, i64 %i.dq
  %scevgep125 = getelementptr i8, ptr %i.dr, i64 8000 ; 2 uses
  %scevgep126 = getelementptr i8, ptr %i.s, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv48.i30 ; 6 uses
  %min.iters.check150 = icmp samesign ult i64 %indvars.iv46.i31, 4
  br i1 %min.iters.check150, label %scalar.ph149.preheader, label %vector.ph151

vector.ph151:                                     ; preds = %.preheader29.i29
  %n.vec153 = and i64 %indvars.iv46.i31, 9223372036854775804 ; 3 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph151
  %index155 = phi i64 [ 0, %vector.ph151 ], [ %index.next158, %vector.body154 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index155 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %wide.load156 = load <2 x double>, ptr %i.dt, align 8, !tbaa !8
  %wide.load157 = load <2 x double>, ptr %i.du, align 8, !tbaa !8
  %i.dv = fmul <2 x double> %wide.load156, splat (double 1.200000e+00)
  %i.dw = fmul <2 x double> %wide.load157, splat (double 1.200000e+00)
  store <2 x double> %i.dv, ptr %i.dt, align 8, !tbaa !8
  store <2 x double> %i.dw, ptr %i.du, align 8, !tbaa !8
  %index.next158 = add nuw i64 %index155, 4       ; 2 uses
  %i.dx = icmp eq i64 %index.next158, %n.vec153
  br i1 %i.dx, label %middle.block159, label %vector.body154, !llvm.loop !36

middle.block159:                                  ; preds = %vector.body154
  %cmp.n160 = icmp eq i64 %indvars.iv46.i31, %n.vec153
  br i1 %cmp.n160, label %.preheader28.i35, label %scalar.ph149.preheader

scalar.ph149.preheader:                           ; preds = %.preheader29.i29, %middle.block159
  %indvars.iv.i32.ph = phi i64 [ 0, %.preheader29.i29 ], [ %n.vec153, %middle.block159 ]
  br label %scalar.ph149

.preheader28.i35:                                 ; preds = %scalar.ph149, %middle.block159
  %i.dy = getelementptr inbounds nuw [8000 x i8], ptr %i.s, i64 %indvars.iv48.i30
  %min.iters.check135 = icmp samesign ult i64 %indvars.iv46.i31, 4
  %bound0127 = icmp ult ptr %scevgep123, %scevgep125
  %bound1128 = icmp ult ptr %i.s, %scevgep124
  %found.conflict129 = and i1 %bound0127, %bound1128
  %bound0130 = icmp ult ptr %scevgep123, %scevgep125
  %bound1131 = icmp ult ptr %scevgep126, %scevgep124
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %found.conflict129, %found.conflict132
  %n.vec138 = and i64 %indvars.iv46.i31, 9223372036854775804 ; 3 uses
  %cmp.n147 = icmp eq i64 %indvars.iv46.i31, %n.vec138
  %xtraiter170 = and i64 %indvars.iv46.i31, 1
  %lcmp.mod171.not = icmp eq i64 %xtraiter170, 0
  br label %.preheader.i36

scalar.ph149:                                     ; preds = %scalar.ph149.preheader, %scalar.ph149
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %scalar.ph149 ], [ %indvars.iv.i32.ph, %scalar.ph149.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i32 ; 2 uses
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !8
  %i.eb = fmul double %i.ea, 1.200000e+00
  store double %i.eb, ptr %i.dz, align 8, !tbaa !8
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %indvars.iv46.i31
  br i1 %exitcond.not.i34, label %.preheader28.i35, label %scalar.ph149, !llvm.loop !37

.preheader.i36:                                   ; preds = %.loopexit, %.preheader28.i35
  %indvars.iv42.i37 = phi i64 [ 0, %.preheader28.i35 ], [ %indvars.iv.next43.i43, %.loopexit ] ; 3 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv42.i37 ; 4 uses
  %invariant.gep.i38 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv42.i37 ; 7 uses
  %brmerge173 = select i1 %min.iters.check135, i1 true, i1 %conflict.rdx133
  br i1 %brmerge173, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.preheader.i36
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !8, !alias.scope !38
  %i.ee = fmul double %i.ed, 1.500000e+00
  %broadcast.splatinsert141 = insertelement <2 x double> poison, double %i.ee, i64 0
  %broadcast.splat142 = shufflevector <2 x double> %broadcast.splatinsert141, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 6 uses
  %i.ef = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %index140
  %i.eg = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %index140
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8000
  %i.ei = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %index140
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16000
  %i.ek = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %index140
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24000
  %i.em = load double, ptr %i.ef, align 8, !tbaa !8, !alias.scope !41
  %i.en = load double, ptr %i.eh, align 8, !tbaa !8, !alias.scope !41
  %i.eo = insertelement <2 x double> poison, double %i.em, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.en, i64 1
  %i.eq = load double, ptr %i.ej, align 8, !tbaa !8, !alias.scope !41
  %i.er = load double, ptr %i.el, align 8, !tbaa !8, !alias.scope !41
  %i.es = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.er, i64 1
  %i.eu = fmul <2 x double> %broadcast.splat142, %i.ep
  %i.ev = fmul <2 x double> %broadcast.splat142, %i.et
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %index140 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load143 = load <2 x double>, ptr %i.ew, align 8, !tbaa !8, !alias.scope !43, !noalias !45
  %wide.load144 = load <2 x double>, ptr %i.ex, align 8, !tbaa !8, !alias.scope !43, !noalias !45
  %i.ey = fadd <2 x double> %wide.load143, %i.eu
  %i.ez = fadd <2 x double> %wide.load144, %i.ev
  store <2 x double> %i.ey, ptr %i.ew, align 8, !tbaa !8, !alias.scope !43, !noalias !45
  store <2 x double> %i.ez, ptr %i.ex, align 8, !tbaa !8, !alias.scope !43, !noalias !45
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.fa, label %middle.block146, label %vector.body139, !llvm.loop !46

middle.block146:                                  ; preds = %vector.body139
  br i1 %cmp.n147, label %.loopexit, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.preheader.i36, %middle.block146
  %indvars.iv37.i39.ph = phi i64 [ %n.vec138, %middle.block146 ], [ 0, %.preheader.i36 ] ; 5 uses
  br i1 %lcmp.mod171.not, label %scalar.ph134.prol.loopexit, label %scalar.ph134.prol

scalar.ph134.prol:                                ; preds = %scalar.ph134.preheader
  %i.fb = load double, ptr %i.ec, align 8, !tbaa !8
  %i.fc = fmul double %i.fb, 1.500000e+00
  %gep.i40.prol = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %indvars.iv37.i39.ph
  %i.fd = load double, ptr %gep.i40.prol, align 8, !tbaa !8
  %i.fe = fmul double %i.fc, %i.fd
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv37.i39.ph ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !8
  %i.fh = fadd double %i.fg, %i.fe
  store double %i.fh, ptr %i.ff, align 8, !tbaa !8
  %indvars.iv.next38.i41.prol = or disjoint i64 %indvars.iv37.i39.ph, 1
  br label %scalar.ph134.prol.loopexit

scalar.ph134.prol.loopexit:                       ; preds = %scalar.ph134.prol, %scalar.ph134.preheader
  %indvars.iv37.i39.unr = phi i64 [ %indvars.iv37.i39.ph, %scalar.ph134.preheader ], [ %indvars.iv.next38.i41.prol, %scalar.ph134.prol ]
  %i.fi = icmp eq i64 %indvars.iv48.i30, %indvars.iv37.i39.ph
  br i1 %i.fi, label %.loopexit, label %scalar.ph134

scalar.ph134:                                     ; preds = %scalar.ph134.prol.loopexit, %scalar.ph134
  %indvars.iv37.i39 = phi i64 [ %indvars.iv.next38.i41.1, %scalar.ph134 ], [ %indvars.iv37.i39.unr, %scalar.ph134.prol.loopexit ] ; 4 uses
  %i.fj = load double, ptr %i.ec, align 8, !tbaa !8
  %i.fk = fmul double %i.fj, 1.500000e+00
  %gep.i40 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %indvars.iv37.i39
  %i.fl = load double, ptr %gep.i40, align 8, !tbaa !8
  %i.fm = fmul double %i.fk, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv37.i39 ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !8
  %i.fp = fadd double %i.fo, %i.fm
  store double %i.fp, ptr %i.fn, align 8, !tbaa !8
  %indvars.iv.next38.i41 = add nuw nsw i64 %indvars.iv37.i39, 1 ; 2 uses
  %i.fq = load double, ptr %i.ec, align 8, !tbaa !8
  %i.fr = fmul double %i.fq, 1.500000e+00
  %gep.i40.1 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i38, i64 %indvars.iv.next38.i41
  %i.fs = load double, ptr %gep.i40.1, align 8, !tbaa !8
  %i.ft = fmul double %i.fr, %i.fs
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next38.i41 ; 2 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !8
  %i.fw = fadd double %i.fv, %i.ft
  store double %i.fw, ptr %i.fu, align 8, !tbaa !8
  %indvars.iv.next38.i41.1 = add nuw nsw i64 %indvars.iv37.i39, 2 ; 2 uses
  %exitcond41.not.i42.1 = icmp eq i64 %indvars.iv.next38.i41.1, %indvars.iv46.i31
  br i1 %exitcond41.not.i42.1, label %.loopexit, label %scalar.ph134, !llvm.loop !47

.loopexit:                                        ; preds = %scalar.ph134.prol.loopexit, %scalar.ph134, %middle.block146
  %indvars.iv.next43.i43 = add nuw nsw i64 %indvars.iv42.i37, 1 ; 2 uses
  %exitcond45.not.i44 = icmp eq i64 %indvars.iv.next43.i43, 1000
  br i1 %exitcond45.not.i44, label %bb.f, label %.preheader.i36, !llvm.loop !48

bb.f:                                             ; preds = %.loopexit
  %indvars.iv.next49.i45 = add nuw nsw i64 %indvars.iv48.i30, 1 ; 2 uses
  %indvars.iv.next47.i46 = add nuw nsw i64 %indvars.iv46.i31, 1
  %exitcond53.not.i47 = icmp eq i64 %indvars.iv.next49.i45, 1200
  br i1 %exitcond53.not.i47, label %.preheader.i48, label %.preheader29.i29, !llvm.loop !49

.preheader.i48:                                   ; preds = %bb.f, %bb.h
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.h ], [ 0, %bb.f ] ; 4 uses
  %i.fx = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv36.i ; 3 uses
  %i.fy = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv36.i ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.2, %.preheader.i48
  %indvars.iv.i49 = phi i64 [ 0, %.preheader.i48 ], [ %indvars.iv.next.i50.2, %.critedge.i.2 ] ; 6 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.i49
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !8 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.i49
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !8 ; 2 uses
  %i.gd = fsub double %i.ga, %i.gc
  %i.ge = call double @llvm.fabs.f64(double %i.gd)
  %i.gf = fcmp ule double %i.ge, 1.000000e-05
  br i1 %i.gf, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.1, %.critedge.i, %bb.g
  %indvars.iv.i49.lcssa = phi i64 [ %indvars.iv.i49, %bb.g ], [ %indvars.iv.next.i50, %.critedge.i ], [ %indvars.iv.next.i50.1, %.critedge.i.1 ]
  %.lcssa165 = phi double [ %i.ga, %bb.g ], [ %i.gl, %.critedge.i ], [ %i.gs, %.critedge.i.1 ]
  %.lcssa = phi double [ %i.gc, %bb.g ], [ %i.gn, %.critedge.i ], [ %i.gu, %.critedge.i.1 ]
  %i.gg = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv.i49.lcssa to i32 ; 2 uses
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.2, i32 noundef %i.gg, i32 noundef %i.gh, double noundef %.lcssa165, i32 noundef %i.gg, i32 noundef %i.gh, double noundef %.lcssa, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %indvars.iv.next.i50 = add nuw nsw i64 %indvars.iv.i49, 1 ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next.i50
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !8 ; 2 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next.i50
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !8 ; 2 uses
  %i.go = fsub double %i.gl, %i.gn
  %i.gp = call double @llvm.fabs.f64(double %i.go)
  %i.gq = fcmp ule double %i.gp, 1.000000e-05
  br i1 %i.gq, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i50.1 = add nuw nsw i64 %indvars.iv.i49, 2 ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv.next.i50.1
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !8 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv.next.i50.1
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !8 ; 2 uses
  %i.gv = fsub double %i.gs, %i.gu
  %i.gw = call double @llvm.fabs.f64(double %i.gv)
  %i.gx = fcmp ule double %i.gw, 1.000000e-05
  br i1 %i.gx, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i50.2 = add nuw nsw i64 %indvars.iv.i49, 3 ; 2 uses
  %exitcond.not.i51.2 = icmp eq i64 %indvars.iv.next.i50.2, 1200
  br i1 %exitcond.not.i51.2, label %bb.h, label %bb.g, !llvm.loop !50

bb.h:                                             ; preds = %.critedge.i.2
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 1200
  br i1 %exitcond39.not.i, label %check_FP.exit, label %.preheader.i48, !llvm.loop !51

check_FP.exit:                                    ; preds = %bb.h
  %i.gy = call noalias dereferenceable_or_null(19201) ptr @malloc(i64 noundef 19201) #16 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 19200
  store i8 0, ptr %i.gz, align 1, !tbaa !52
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %bb.j, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.j ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv20.i
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i52
  %indvars.iv.i53 = phi i64 [ 0, %.preheader.i52 ], [ %indvars.iv.next.i54, %bb.i ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.i53
  %i.hc = shl nuw nsw i64 %indvars.iv.i53, 4
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.hc
  %i.he = load i64, ptr %i.hb, align 8, !tbaa !8  ; 4 uses
  %i.hf = lshr i64 %i.he, 56
  %i.hg = trunc nuw i64 %i.hf to i8
  %i.hh = insertelement <2 x i64> poison, i64 %i.he, i64 0
  %i.hi = shufflevector <2 x i64> %i.hh, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.hj = lshr <2 x i64> %i.hi, <i64 40, i64 48>
  %i.hk = trunc <2 x i64> %i.hj to <2 x i8>
  %i.hl = insertelement <4 x i64> poison, i64 %i.he, i64 0
  %i.hm = shufflevector <4 x i64> %i.hl, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.hn = lshr <4 x i64> %i.hm, <i64 8, i64 16, i64 24, i64 32>
  %i.ho = trunc <4 x i64> %i.hn to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.he to i8
  %i.hp = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.hq = shufflevector <4 x i8> %i.ho, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hr = shufflevector <8 x i8> %i.hp, <8 x i8> %i.hq, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.hs = shufflevector <2 x i8> %i.hk, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ht = shufflevector <8 x i8> %i.hr, <8 x i8> %i.hs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.hu = insertelement <8 x i8> %i.ht, i8 %i.hg, i64 7
  %i.hv = and <8 x i8> %i.hu, splat (i8 15)
  %i.hw = or disjoint <8 x i8> %i.hv, splat (i8 48)
  %i.hx = shufflevector <8 x i8> %i.hw, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.hx, ptr %i.hd, align 1, !tbaa !52
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i53, 1 ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, 1200
end_hunk_0
