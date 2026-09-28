Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jacobi-2d?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 5
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
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 13520000) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !11   ; 11 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 13520000) #13
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !11   ; 12 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = icmp eq ptr %i.k, null
  %i.n = icmp ne i32 %i.j, 0
  %or.cond.i.i22 = or i1 %i.n, %i.m
  br i1 %or.cond.i.i22, label %bb.c, label %polybench_alloc_data.exit24

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i23 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit24:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 13520000) #13
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !11   ; 17 uses
  %i.r = ptrtoaddr ptr %i.q to i64                ; 2 uses
  %i.s = icmp eq ptr %i.q, null
  %i.t = icmp ne i32 %i.p, 0
  %or.cond.i.i25 = or i1 %i.t, %i.s
  br i1 %or.cond.i.i25, label %bb.d, label %polybench_alloc_data.exit27

bb.d:                                             ; preds = %polybench_alloc_data.exit24
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i26 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.u) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit27:                      ; preds = %polybench_alloc_data.exit24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.v = sub i64 %i.f, %i.r
  %diff.check = icmp ugt i64 %i.v, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %polybench_alloc_data.exit27
  %indvars.iv22.i = phi i64 [ 0, %polybench_alloc_data.exit27 ], [ %indvars.iv.next23.i, %middle.block ] ; 6 uses
  %i.w = getelementptr inbounds nuw [10400 x i8], ptr %i.e, i64 %indvars.iv22.i ; 2 uses
  %i.x = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv22.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv22.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.y = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.z = mul nuw nsw <2 x i64> %i.y, %broadcast.splat
  %i.aa = trunc <2 x i64> %i.z to <2 x i32>
  %i.ab = add <2 x i32> %i.aa, splat (i32 2)
  %i.ac = uitofp nneg <2 x i32> %i.ab to <2 x double>
  %i.ad = fdiv <2 x double> %i.ac, splat (double 1.300000e+03)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %index
  store <2 x double> %i.ad, ptr %i.ae, align 8, !tbaa !9
  %i.af = add nuw nsw <2 x i64> %vec.ind, splat (i64 3)
  %i.ag = mul nuw nsw <2 x i64> %i.af, %broadcast.splat
  %i.ah = trunc <2 x i64> %i.ag to <2 x i32>
  %i.ai = add <2 x i32> %i.ah, splat (i32 3)
  %i.aj = uitofp nneg <2 x i32> %i.ai to <2 x double>
  %i.ak = fdiv <2 x double> %i.aj, splat (double 1.300000e+03)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.am = icmp eq i64 %index.next, 1300
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader.i ] ; 5 uses
  %i.an = add nuw nsw i64 %indvars.iv.i, 2
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.ap = add nuw nsw i64 %indvars.iv.i, 3
  %i.aq = mul nuw nsw i64 %i.an, %indvars.iv22.i
  %i.ar = trunc i64 %i.aq to i32
  %i.as = add i32 %i.ar, 2
  %i.at = uitofp nneg i32 %i.as to double
  %i.au = mul nuw nsw i64 %i.ap, %indvars.iv22.i
  %i.av = trunc i64 %i.au to i32
  %i.aw = add i32 %i.av, 3
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = insertelement <2 x double> poison, double %i.at, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ax, i64 1
  %i.ba = fdiv <2 x double> %i.az, splat (double 1.300000e+03) ; 2 uses
  %i.bb = extractelement <2 x double> %i.ba, i64 0
  store double %i.bb, ptr %i.ao, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.bd = extractelement <2 x double> %i.ba, i64 1
  store double %i.bd, ptr %i.bc, align 8, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1300
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !15

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next23.i, 1300
  br i1 %exitcond25.not.i, label %.preheader57.i.preheader, label %.preheader.i, !llvm.loop !16

.preheader57.i.preheader:                         ; preds = %middle.block
  %scevgep = getelementptr i8, ptr %i.e, i64 10408
  %scevgep93 = getelementptr i8, ptr %i.e, i64 13509592
  %scevgep94 = getelementptr i8, ptr %i.q, i64 8
  %scevgep95 = getelementptr i8, ptr %i.q, i64 13519992
  %scevgep107 = getelementptr i8, ptr %i.q, i64 10408
  %scevgep108 = getelementptr i8, ptr %i.q, i64 13509592
  %scevgep109 = getelementptr i8, ptr %i.e, i64 8
  %scevgep110 = getelementptr i8, ptr %i.e, i64 13519992
  %bound0111 = icmp ult ptr %scevgep107, %scevgep110
  %bound1112 = icmp ult ptr %scevgep109, %scevgep108
  %found.conflict113 = and i1 %bound0111, %bound1112
  %bound0 = icmp ult ptr %scevgep, %scevgep95
  %bound1 = icmp ult ptr %scevgep94, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader57.i

.preheader57.i:                                   ; preds = %.preheader57.i.preheader, %bb.e
  %.05262.i = phi i32 [ %i.fa, %bb.e ], [ 0, %.preheader57.i.preheader ]
  br label %.preheader55.i

.preheader55.i:                                   ; preds = %middle.block124, %.preheader57.i
  %indvars.iv64.i = phi i64 [ 1, %.preheader57.i ], [ %indvars.iv.next65.i, %middle.block124 ] ; 3 uses
  %i.be = getelementptr inbounds nuw [10400 x i8], ptr %i.e, i64 %indvars.iv64.i ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 10400 ; 3 uses
  %i.bg = getelementptr i8, ptr %i.be, i64 -10400 ; 3 uses
  %i.bh = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv64.i ; 3 uses
  br i1 %found.conflict113, label %scalar.ph114, label %vector.body116

vector.body116:                                   ; preds = %.preheader55.i, %vector.body116
  %index117 = phi i64 [ %index.next123, %vector.body116 ], [ 0, %.preheader55.i ] ; 3 uses
  %i.bi = or disjoint i64 %index117, 1            ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bi ; 2 uses
  %wide.load118 = load <2 x double>, ptr %i.bj, align 8, !tbaa !9, !alias.scope !52
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %wide.load119 = load <2 x double>, ptr %i.bk, align 8, !tbaa !9, !alias.scope !52
  %i.bl = fadd <2 x double> %wide.load118, %wide.load119
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index117
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load120 = load <2 x double>, ptr %i.bn, align 8, !tbaa !9, !alias.scope !52
  %i.bo = fadd <2 x double> %i.bl, %wide.load120
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bi
  %wide.load121 = load <2 x double>, ptr %i.bp, align 8, !tbaa !9, !alias.scope !52
  %i.bq = fadd <2 x double> %i.bo, %wide.load121
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bi
  %wide.load122 = load <2 x double>, ptr %i.br, align 8, !tbaa !9, !alias.scope !52
  %i.bs = fadd <2 x double> %i.bq, %wide.load122
  %i.bt = fmul <2 x double> %i.bs, splat (double 2.000000e-01)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bi
  store <2 x double> %i.bt, ptr %i.bu, align 8, !tbaa !9, !alias.scope !53, !noalias !52
  %index.next123 = add nuw i64 %index117, 2       ; 2 uses
  %i.bv = icmp eq i64 %index.next123, 1298
  br i1 %i.bv, label %middle.block124, label %vector.body116, !llvm.loop !20

scalar.ph114:                                     ; preds = %.preheader55.i, %scalar.ph114
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29.1, %scalar.ph114 ], [ 1, %.preheader55.i ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i28 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !9
  %i.by = getelementptr i8, ptr %i.bw, i64 -8
  %i.bz = load double, ptr %i.by, align 8, !tbaa !9
  %i.ca = fadd double %i.bx, %i.bz
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 1 ; 5 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i29
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !9
  %i.cd = fadd double %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i28
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !9
  %i.cg = fadd double %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.i28
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !9
  %i.cj = fadd double %i.cg, %i.ci
  %i.ck = fmul double %i.cj, 2.000000e-01
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i28
  store double %i.ck, ptr %i.cl, align 8, !tbaa !9
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i29 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !9
  %i.co = getelementptr i8, ptr %i.cm, i64 -8
  %i.cp = load double, ptr %i.co, align 8, !tbaa !9
  %i.cq = fadd double %i.cn, %i.cp
  %indvars.iv.next.i29.1 = add nuw nsw i64 %indvars.iv.i28, 2 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i29.1
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !9
  %i.ct = fadd double %i.cq, %i.cs
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i29
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !9
  %i.cw = fadd double %i.ct, %i.cv
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i29
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !9
  %i.cz = fadd double %i.cw, %i.cy
  %i.da = fmul double %i.cz, 2.000000e-01
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i29
  store double %i.da, ptr %i.db, align 8, !tbaa !9
  %exitcond.not.i30.1 = icmp eq i64 %indvars.iv.next.i29.1, 1299
  br i1 %exitcond.not.i30.1, label %middle.block124, label %scalar.ph114, !llvm.loop !21

middle.block124:                                  ; preds = %vector.body116, %scalar.ph114
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 1299
  br i1 %exitcond67.not.i, label %.preheader.i31, label %.preheader55.i, !llvm.loop !22

.preheader.i31:                                   ; preds = %middle.block124, %middle.block105
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %middle.block105 ], [ 1, %middle.block124 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv72.i ; 8 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 10400 ; 3 uses
  %i.de = getelementptr i8, ptr %i.dc, i64 -10400 ; 3 uses
  %i.df = getelementptr inbounds nuw [10400 x i8], ptr %i.e, i64 %indvars.iv72.i ; 3 uses
  br i1 %found.conflict, label %scalar.ph96, label %vector.body98

vector.body98:                                    ; preds = %.preheader.i31, %vector.body98
  %index99 = phi i64 [ %index.next104, %vector.body98 ], [ 0, %.preheader.i31 ] ; 3 uses
  %i.dg = or disjoint i64 %index99, 1             ; 4 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dg ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dh, align 8, !tbaa !9, !alias.scope !54
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %wide.load100 = load <2 x double>, ptr %i.di, align 8, !tbaa !9, !alias.scope !54
  %i.dj = fadd <2 x double> %wide.load, %wide.load100
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %index99
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load101 = load <2 x double>, ptr %i.dl, align 8, !tbaa !9, !alias.scope !54
  %i.dm = fadd <2 x double> %i.dj, %wide.load101
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.dg
  %wide.load102 = load <2 x double>, ptr %i.dn, align 8, !tbaa !9, !alias.scope !54
  %i.do = fadd <2 x double> %i.dm, %wide.load102
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dg
  %wide.load103 = load <2 x double>, ptr %i.dp, align 8, !tbaa !9, !alias.scope !54
  %i.dq = fadd <2 x double> %i.do, %wide.load103
  %i.dr = fmul <2 x double> %i.dq, splat (double 2.000000e-01)
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dg
  store <2 x double> %i.dr, ptr %i.ds, align 8, !tbaa !9, !alias.scope !55, !noalias !54
  %index.next104 = add nuw i64 %index99, 2        ; 2 uses
  %i.dt = icmp eq i64 %index.next104, 1298
end_hunk_0
begin_hunk_1_@main:bb.a
  %exitcond25.not.i38 = icmp eq i64 %indvars.iv.next23.i37, 1300
  br i1 %exitcond25.not.i38, label %.preheader57.i40.preheader, label %.preheader.i32, !llvm.loop !16

.preheader57.i40.preheader:                       ; preds = %middle.block136
  %scevgep138 = getelementptr i8, ptr %i.k, i64 10408
  %scevgep139 = getelementptr i8, ptr %i.k, i64 13509592
  %scevgep140 = getelementptr i8, ptr %i.q, i64 8
  %scevgep141 = getelementptr i8, ptr %i.q, i64 13519992
  %scevgep157 = getelementptr i8, ptr %i.q, i64 10408
  %scevgep158 = getelementptr i8, ptr %i.q, i64 13509592
  %scevgep159 = getelementptr i8, ptr %i.k, i64 8
  %scevgep160 = getelementptr i8, ptr %i.k, i64 13519992
  %bound0161 = icmp ult ptr %scevgep157, %scevgep160
  %bound1162 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0142 = icmp ult ptr %scevgep138, %scevgep141
  %bound1143 = icmp ult ptr %scevgep140, %scevgep139
  %found.conflict144 = and i1 %bound0142, %bound1143
  br label %.preheader57.i40

.preheader57.i40:                                 ; preds = %.preheader57.i40.preheader, %bb.f
  %.05262.i41 = phi i32 [ %i.kg, %bb.f ], [ 0, %.preheader57.i40.preheader ]
  br label %.preheader55.i42

.preheader55.i42:                                 ; preds = %middle.block174, %.preheader57.i40
  %indvars.iv64.i43 = phi i64 [ 1, %.preheader57.i40 ], [ %indvars.iv.next65.i47, %middle.block174 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [10400 x i8], ptr %i.k, i64 %indvars.iv64.i43 ; 8 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 10400 ; 3 uses
  %i.gm = getelementptr i8, ptr %i.gk, i64 -10400 ; 3 uses
  %i.gn = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv64.i43 ; 3 uses
  br i1 %found.conflict163, label %scalar.ph164, label %vector.body166

vector.body166:                                   ; preds = %.preheader55.i42, %vector.body166
  %index167 = phi i64 [ %index.next173, %vector.body166 ], [ 0, %.preheader55.i42 ] ; 3 uses
  %i.go = or disjoint i64 %index167, 1            ; 4 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.go ; 2 uses
  %wide.load168 = load <2 x double>, ptr %i.gp, align 8, !tbaa !9, !alias.scope !56
  %i.gq = getelementptr i8, ptr %i.gp, i64 -8
  %wide.load169 = load <2 x double>, ptr %i.gq, align 8, !tbaa !9, !alias.scope !56
  %i.gr = fadd <2 x double> %wide.load168, %wide.load169
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index167
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %wide.load170 = load <2 x double>, ptr %i.gt, align 8, !tbaa !9, !alias.scope !56
  %i.gu = fadd <2 x double> %i.gr, %wide.load170
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.go
  %wide.load171 = load <2 x double>, ptr %i.gv, align 8, !tbaa !9, !alias.scope !56
  %i.gw = fadd <2 x double> %i.gu, %wide.load171
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.go
  %wide.load172 = load <2 x double>, ptr %i.gx, align 8, !tbaa !9, !alias.scope !56
  %i.gy = fadd <2 x double> %i.gw, %wide.load172
  %i.gz = fmul <2 x double> %i.gy, splat (double 2.000000e-01)
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.go
  store <2 x double> %i.gz, ptr %i.ha, align 8, !tbaa !9, !alias.scope !57, !noalias !56
  %index.next173 = add nuw i64 %index167, 2       ; 2 uses
  %i.hb = icmp eq i64 %index.next173, 1298
  br i1 %i.hb, label %middle.block174, label %vector.body166, !llvm.loop !35

scalar.ph164:                                     ; preds = %.preheader55.i42, %scalar.ph164
  %indvars.iv.i44 = phi i64 [ %indvars.iv.next.i45.1, %scalar.ph164 ], [ 1, %.preheader55.i42 ] ; 6 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.i44 ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !9
  %i.he = getelementptr i8, ptr %i.hc, i64 -8
  %i.hf = load double, ptr %i.he, align 8, !tbaa !9
  %i.hg = fadd double %i.hd, %i.hf
  %indvars.iv.next.i45 = add nuw nsw i64 %indvars.iv.i44, 1 ; 5 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i45
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !9
  %i.hj = fadd double %i.hg, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.i44
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !9
  %i.hm = fadd double %i.hj, %i.hl
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.i44
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !9
  %i.hp = fadd double %i.hm, %i.ho
  %i.hq = fmul double %i.hp, 2.000000e-01
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.i44
  store double %i.hq, ptr %i.hr, align 8, !tbaa !9
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i45 ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !9
  %i.hu = getelementptr i8, ptr %i.hs, i64 -8
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !9
  %i.hw = fadd double %i.ht, %i.hv
  %indvars.iv.next.i45.1 = add nuw nsw i64 %indvars.iv.i44, 2 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %indvars.iv.next.i45.1
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !9
  %i.hz = fadd double %i.hw, %i.hy
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %indvars.iv.next.i45
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !9
  %i.ic = fadd double %i.hz, %i.ib
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %indvars.iv.next.i45
  %i.ie = load double, ptr %i.id, align 8, !tbaa !9
  %i.if = fadd double %i.ic, %i.ie
  %i.ig = fmul double %i.if, 2.000000e-01
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv.next.i45
  store double %i.ig, ptr %i.ih, align 8, !tbaa !9
  %exitcond.not.i46.1 = icmp eq i64 %indvars.iv.next.i45.1, 1299
  br i1 %exitcond.not.i46.1, label %middle.block174, label %scalar.ph164, !llvm.loop !36

middle.block174:                                  ; preds = %vector.body166, %scalar.ph164
  %indvars.iv.next65.i47 = add nuw nsw i64 %indvars.iv64.i43, 1 ; 2 uses
  %exitcond67.not.i48 = icmp eq i64 %indvars.iv.next65.i47, 1299
  br i1 %exitcond67.not.i48, label %.preheader.i49, label %.preheader55.i42, !llvm.loop !37

.preheader.i49:                                   ; preds = %middle.block174, %middle.block155
  %indvars.iv72.i50 = phi i64 [ %indvars.iv.next73.i54, %middle.block155 ], [ 1, %middle.block174 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [10400 x i8], ptr %i.q, i64 %indvars.iv72.i50 ; 8 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 10400 ; 3 uses
  %i.ik = getelementptr i8, ptr %i.ii, i64 -10400 ; 3 uses
  %i.il = getelementptr inbounds nuw [10400 x i8], ptr %i.k, i64 %indvars.iv72.i50 ; 3 uses
  br i1 %found.conflict144, label %scalar.ph145, label %vector.body147

vector.body147:                                   ; preds = %.preheader.i49, %vector.body147
  %index148 = phi i64 [ %index.next154, %vector.body147 ], [ 0, %.preheader.i49 ] ; 3 uses
  %i.im = or disjoint i64 %index148, 1            ; 4 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.im ; 2 uses
  %wide.load149 = load <2 x double>, ptr %i.in, align 8, !tbaa !9, !alias.scope !58
  %i.io = getelementptr i8, ptr %i.in, i64 -8
  %wide.load150 = load <2 x double>, ptr %i.io, align 8, !tbaa !9, !alias.scope !58
  %i.ip = fadd <2 x double> %wide.load149, %wide.load150
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %index148
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %wide.load151 = load <2 x double>, ptr %i.ir, align 8, !tbaa !9, !alias.scope !58
  %i.is = fadd <2 x double> %i.ip, %wide.load151
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.im
  %wide.load152 = load <2 x double>, ptr %i.it, align 8, !tbaa !9, !alias.scope !58
  %i.iu = fadd <2 x double> %i.is, %wide.load152
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.im
  %wide.load153 = load <2 x double>, ptr %i.iv, align 8, !tbaa !9, !alias.scope !58
  %i.iw = fadd <2 x double> %i.iu, %wide.load153
  %i.ix = fmul <2 x double> %i.iw, splat (double 2.000000e-01)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.im
  store <2 x double> %i.ix, ptr %i.iy, align 8, !tbaa !9, !alias.scope !59, !noalias !58
  %index.next154 = add nuw i64 %index148, 2       ; 2 uses
  %i.iz = icmp eq i64 %index.next154, 1298
  br i1 %i.iz, label %middle.block155, label %vector.body147, !llvm.loop !41

scalar.ph145:                                     ; preds = %.preheader.i49, %scalar.ph145
  %indvars.iv68.i51 = phi i64 [ %indvars.iv.next69.i52.1, %scalar.ph145 ], [ 1, %.preheader.i49 ] ; 6 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv68.i51 ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !9
  %i.jc = getelementptr i8, ptr %i.ja, i64 -8
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !9
  %i.je = fadd double %i.jb, %i.jd
  %indvars.iv.next69.i52 = add nuw nsw i64 %indvars.iv68.i51, 1 ; 5 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next69.i52
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !9
  %i.jh = fadd double %i.je, %i.jg
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv68.i51
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !9
  %i.jk = fadd double %i.jh, %i.jj
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv68.i51
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !9
  %i.jn = fadd double %i.jk, %i.jm
  %i.jo = fmul double %i.jn, 2.000000e-01
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv68.i51
  store double %i.jo, ptr %i.jp, align 8, !tbaa !9
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next69.i52 ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !9
  %i.js = getelementptr i8, ptr %i.jq, i64 -8
  %i.jt = load double, ptr %i.js, align 8, !tbaa !9
  %i.ju = fadd double %i.jr, %i.jt
  %indvars.iv.next69.i52.1 = add nuw nsw i64 %indvars.iv68.i51, 2 ; 3 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %indvars.iv.next69.i52.1
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !9
  %i.jx = fadd double %i.ju, %i.jw
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %indvars.iv.next69.i52
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !9
  %i.ka = fadd double %i.jx, %i.jz
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next69.i52
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !9
  %i.kd = fadd double %i.ka, %i.kc
  %i.ke = fmul double %i.kd, 2.000000e-01
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %indvars.iv.next69.i52
  store double %i.ke, ptr %i.kf, align 8, !tbaa !9
  %exitcond71.not.i53.1 = icmp eq i64 %indvars.iv.next69.i52.1, 1299
  br i1 %exitcond71.not.i53.1, label %middle.block155, label %scalar.ph145, !llvm.loop !42

middle.block155:                                  ; preds = %vector.body147, %scalar.ph145
  %indvars.iv.next73.i54 = add nuw nsw i64 %indvars.iv72.i50, 1 ; 2 uses
  %exitcond75.not.i55 = icmp eq i64 %indvars.iv.next73.i54, 1299
  br i1 %exitcond75.not.i55, label %bb.f, label %.preheader.i49, !llvm.loop !43

bb.f:                                             ; preds = %middle.block155
  %i.kg = add nuw nsw i32 %.05262.i41, 1          ; 2 uses
  %exitcond76.not.i56 = icmp eq i32 %i.kg, 500
  br i1 %exitcond76.not.i56, label %.preheader.i57, label %.preheader57.i40, !llvm.loop !44

.preheader.i57:                                   ; preds = %bb.f, %bb.h
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.h ], [ 0, %bb.f ] ; 4 uses
  %i.kh = getelementptr inbounds nuw [10400 x i8], ptr %i.e, i64 %indvars.iv39.i ; 2 uses
  %i.ki = getelementptr inbounds nuw [10400 x i8], ptr %i.k, i64 %indvars.iv39.i ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.1, %.preheader.i57
  %indvars.iv.i58 = phi i64 [ 0, %.preheader.i57 ], [ %indvars.iv.next.i59.1, %.critedge.i.1 ] ; 5 uses
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv.i58
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !9 ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.i58
  %i.km = load double, ptr %i.kl, align 8, !tbaa !9 ; 2 uses
  %i.kn = fsub double %i.kk, %i.km
  %2 = tail call double @llvm.fabs.f64(double %i.kn)
  %i.ko = fcmp ule double %2, 1.000000e-05
  br i1 %i.ko, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.g
  %indvars.iv.i58.lcssa = phi i64 [ %indvars.iv.i58, %bb.g ], [ %indvars.iv.next.i59, %.critedge.i ]
  %.lcssa182 = phi double [ %i.kk, %bb.g ], [ %i.kt, %.critedge.i ]
  %.lcssa = phi double [ %i.km, %bb.g ], [ %i.kv, %.critedge.i ]
  %i.kp = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv.i58.lcssa to i32 ; 2 uses
  %i.kr = load ptr, ptr @stderr, align 8, !tbaa !13
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kr, ptr noundef nonnull @.str.2, i32 noundef %i.kp, i32 noundef %i.kq, double noundef %.lcssa182, i32 noundef %i.kp, i32 noundef %i.kq, double noundef %.lcssa, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.k

.critedge.i:                                      ; preds = %bb.g
  %indvars.iv.next.i59 = or disjoint i64 %indvars.iv.i58, 1 ; 3 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %indvars.iv.next.i59
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !9 ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %indvars.iv.next.i59
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !9 ; 2 uses
  %i.kw = fsub double %i.kt, %i.kv
  %4 = tail call double @llvm.fabs.f64(double %i.kw)
  %i.kx = fcmp ule double %4, 1.000000e-05
  br i1 %i.kx, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i59.1 = add nuw nsw i64 %indvars.iv.i58, 2 ; 2 uses
  %exitcond.not.i60.1 = icmp eq i64 %indvars.iv.next.i59.1, 1300
  br i1 %exitcond.not.i60.1, label %bb.h, label %bb.g, !llvm.loop !45

bb.h:                                             ; preds = %.critedge.i.1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 1300
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i57, !llvm.loop !46

check_FP.exit:                                    ; preds = %bb.h
  %5 = tail call noalias dereferenceable_or_null(20801) ptr @malloc(i64 noundef 20801) #17 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %5, i64 20800
  store i8 0, ptr %i.ky, align 1, !tbaa !60
  br label %.preheader.i61

.preheader.i61:                                   ; preds = %bb.j, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.j ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [10400 x i8], ptr %i.k, i64 %indvars.iv20.i
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i61
  %indvars.iv.i62 = phi i64 [ 0, %.preheader.i61 ], [ %indvars.iv.next.i63, %bb.i ] ; 3 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %indvars.iv.i62
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !9
  %i.lc = shl nuw nsw i64 %indvars.iv.i62, 4
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 %i.lc
  %.inner = and i64 %i.lb, 1085102592571150095
  %.inner180 = or disjoint i64 %.inner, 3472328296227680304
  %i.le = bitcast i64 %.inner180 to <8 x i8>
  %i.lf = shufflevector <8 x i8> %i.le, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.lf, ptr %i.ld, align 1, !tbaa !60
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, 1300
  br i1 %exitcond.not.i64, label %bb.j, label %bb.i, !llvm.loop !47

bb.j:                                             ; preds = %bb.i
  %i.lg = load ptr, ptr @stderr, align 8, !tbaa !13
  %6 = tail call i32 @fputs(ptr noundef nonnull %5, ptr noundef %i.lg) #14 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 1300
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i61, !llvm.loop !48

print_array.exit:                                 ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %5) #13
  tail call void @free(ptr noundef %i.e) #13
  tail call void @free(ptr noundef nonnull %i.k) #13
  tail call void @free(ptr noundef %i.q) #13
  br label %bb.k

bb.k:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noundef i32 @posix_memalign(ptr noundef writeonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

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
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
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
!14 = distinct !{!14, !49, !50, !51}
!15 = distinct !{!15, !49, !50}
!16 = distinct !{!16, !49}
!17 = distinct !{!17, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !49, !50, !51}
!21 = distinct !{!21, !49, !50}
!22 = distinct !{!22, !49}
!23 = distinct !{!23, !"LVerDomain"}
!24 = distinct !{!24, !23}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !49, !50, !51}
!27 = distinct !{!27, !49, !50}
!28 = distinct !{!28, !49}
!29 = distinct !{!29, !49}
!30 = distinct !{!30, !49, !50, !51}
!31 = distinct !{!31, !49, !50}
!32 = distinct !{!32, !"LVerDomain"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !49, !50, !51}
!36 = distinct !{!36, !49, !50}
!37 = distinct !{!37, !49}
!38 = distinct !{!38, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !49, !50, !51}
!42 = distinct !{!42, !49, !50}
!43 = distinct !{!43, !49}
!44 = distinct !{!44, !49}
!45 = distinct !{!45, !49}
!46 = distinct !{!46, !49}
!47 = distinct !{!47, !49}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!18}
!53 = !{!19}
!54 = !{!24}
!55 = !{!25}
!56 = !{!33}
!57 = !{!34}
!58 = !{!39}
!59 = !{!40}
!60 = !{!5, !5, i64 0}
end_hunk_1
