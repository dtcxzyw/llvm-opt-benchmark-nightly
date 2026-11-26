Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/syr2k?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 1
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
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 !guid !64 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !20
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 11520000) #13
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !20   ; 7 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp ne i32 %i.e, 0
  %or.cond.i.i = or i1 %i.i, %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.j) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !20
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 11520000) #13
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !20   ; 8 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = icmp eq ptr %i.l, null
  %i.o = icmp ne i32 %i.k, 0
  %or.cond.i.i25 = or i1 %i.o, %i.n
  br i1 %or.cond.i.i25, label %bb.c, label %polybench_alloc_data.exit27

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i26 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.p) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit27:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 9600000) #13
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !20   ; 11 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = icmp eq ptr %i.r, null
  %i.u = icmp ne i32 %i.q, 0
  %or.cond.i.i28 = or i1 %i.u, %i.t
  br i1 %or.cond.i.i28, label %bb.d, label %polybench_alloc_data.exit30

bb.d:                                             ; preds = %polybench_alloc_data.exit27
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i29 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.v) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit30:                      ; preds = %polybench_alloc_data.exit27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !20
  %i.w = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #13
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !20   ; 11 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = icmp ne i32 %i.w, 0
  %or.cond.i.i31 = or i1 %i.z, %i.y
  br i1 %or.cond.i.i31, label %bb.e, label %polybench_alloc_data.exit33

bb.e:                                             ; preds = %polybench_alloc_data.exit30
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i32 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aa) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit33:                      ; preds = %polybench_alloc_data.exit30
  %i.ab = ptrtoaddr ptr %i.x to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ac = sub i64 %i.s, %i.ab
  %diff.check = icmp ugt i64 %i.ac, -16
  br label %.preheader43.i

.preheader43.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit33
  %indvars.iv49.i = phi i64 [ 0, %polybench_alloc_data.exit33 ], [ %indvars.iv.next50.i, %middle.block ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8000 x i8], ptr %i.r, i64 %indvars.iv49.i ; 2 uses
  %i.ae = getelementptr inbounds nuw [8000 x i8], ptr %i.x, i64 %indvars.iv49.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader43.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv49.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.af = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ag = trunc <2 x i64> %i.af to <2 x i32>      ; 2 uses
  %i.ah = add <2 x i32> %i.ag, splat (i32 1)
  %i.ai = urem <2 x i32> %i.ah, splat (i32 1200)
  %i.aj = uitofp nneg <2 x i32> %i.ai to <2 x double>
  %i.ak = fdiv <2 x double> %i.aj, splat (double 1.200000e+03)
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index
  store <2 x double> %i.ak, ptr %i.al, align 8, !tbaa !18
  %i.am = add <2 x i32> %i.ag, splat (i32 2)
  %i.an = urem <2 x i32> %i.am, splat (i32 1000)
  %i.ao = uitofp nneg <2 x i32> %i.an to <2 x double>
  %i.ap = fdiv <2 x double> %i.ao, splat (double 1.000000e+03)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %index
  store <2 x double> %i.ap, ptr %i.aq, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.ar = icmp eq i64 %index.next, 1000
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !30

scalar.ph:                                        ; preds = %.preheader43.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader43.i ] ; 4 uses
  %i.as = mul nuw nsw i64 %indvars.iv.i, %indvars.iv49.i
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.av = add i32 %i.at, 1
  %i.aw = urem i32 %i.av, 1200
  %i.ax = uitofp nneg i32 %i.aw to double
  %i.ay = add i32 %i.at, 2
  %i.az = urem i32 %i.ay, 1000
  %i.ba = uitofp nneg i32 %i.az to double
  %i.bb = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fdiv <2 x double> %i.bc, <double 1.200000e+03, double 1.000000e+03> ; 2 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0
  store double %i.be, ptr %i.au, align 8, !tbaa !18
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.bg = extractelement <2 x double> %i.bd, i64 1
  store double %i.bg, ptr %i.bf, align 8, !tbaa !18
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1000
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !31

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next50.i, 1200
  br i1 %exitcond52.not.i, label %.preheader.i.preheader, label %.preheader43.i, !llvm.loop !32

.preheader.i.preheader:                           ; preds = %middle.block
  %i.bh = sub i64 %i.g, %i.m
  %diff.check102 = icmp ugt i64 %i.bh, -16
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block111
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %middle.block111 ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i ; 2 uses
  %i.bj = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv57.i ; 2 uses
  br i1 %diff.check102, label %scalar.ph100, label %vector.ph103

vector.ph103:                                     ; preds = %.preheader.i
  %broadcast.splatinsert104 = insertelement <2 x i64> poison, i64 %indvars.iv57.i, i64 0
  %broadcast.splat105 = shufflevector <2 x i64> %broadcast.splatinsert104, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph103
  %index107 = phi i64 [ 0, %vector.ph103 ], [ %index.next109, %vector.body106 ] ; 3 uses
  %vec.ind108 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph103 ], [ %vec.ind.next110, %vector.body106 ] ; 2 uses
  %i.bk = mul nuw nsw <2 x i64> %vec.ind108, %broadcast.splat105
  %i.bl = trunc <2 x i64> %i.bk to <2 x i32>
  %i.bm = add <2 x i32> %i.bl, splat (i32 3)
  %i.bn = urem <2 x i32> %i.bm, splat (i32 1200)
  %i.bo = uitofp nneg <2 x i32> %i.bn to <2 x double>
  %i.bp = fdiv <2 x double> %i.bo, splat (double 1.000000e+03) ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index107
  store <2 x double> %i.bp, ptr %i.bq, align 8, !tbaa !18
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index107
  store <2 x double> %i.bp, ptr %i.br, align 8, !tbaa !18
  %index.next109 = add nuw i64 %index107, 2       ; 2 uses
  %vec.ind.next110 = add nuw nsw <2 x i64> %vec.ind108, splat (i64 2)
  %i.bs = icmp eq i64 %index.next109, 1200
  br i1 %i.bs, label %middle.block111, label %vector.body106, !llvm.loop !33

scalar.ph100:                                     ; preds = %.preheader.i, %scalar.ph100
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %scalar.ph100 ], [ 0, %.preheader.i ] ; 4 uses
  %i.bt = mul nuw nsw i64 %indvars.iv53.i, %indvars.iv57.i
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = add i32 %i.bu, 3
  %i.bw = urem i32 %i.bv, 1200
  %i.bx = uitofp nneg i32 %i.bw to double
  %i.by = fdiv double %i.bx, 1.000000e+03         ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv53.i
  store double %i.by, ptr %i.bz, align 8, !tbaa !18
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv53.i
  store double %i.by, ptr %i.ca, align 8, !tbaa !18
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, 1200
  br i1 %exitcond56.not.i, label %middle.block111, label %scalar.ph100, !llvm.loop !34

middle.block111:                                  ; preds = %vector.body106, %scalar.ph100
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next58.i, 1200
  br i1 %exitcond60.not.i, label %.preheader36.i.preheader, label %.preheader.i, !llvm.loop !35

.preheader36.i.preheader:                         ; preds = %middle.block111
  %i.cb = insertelement <2 x ptr> poison, ptr %i.r, i64 0
  %i.cc = insertelement <2 x ptr> %i.cb, ptr %i.x, i64 1 ; 2 uses
  br label %.preheader36.i

.preheader36.i:                                   ; preds = %.preheader36.i.preheader, %bb.f
  %indvars.iv57.i34 = phi i64 [ %indvars.iv.next58.i39, %bb.f ], [ 0, %.preheader36.i.preheader ] ; 6 uses
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %bb.f ], [ 1, %.preheader36.i.preheader ] ; 9 uses
  %i.cd = mul nuw nsw i64 %indvars.iv57.i34, 8000
  %i.ce = add nuw i64 %i.cd, 8000                 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.ce
  %scevgep126 = getelementptr i8, ptr %i.r, i64 %i.ce
  %i.cf = mul nuw nsw i64 %indvars.iv57.i34, 9608
  %i.cg = getelementptr i8, ptr %i.f, i64 %i.cf
  %scevgep127 = getelementptr i8, ptr %i.cg, i64 8
  %i.ch = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv57.i34 ; 5 uses
  %min.iters.check149 = icmp samesign ult i64 %indvars.iv55.i, 4
  br i1 %min.iters.check149, label %scalar.ph148.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %.preheader36.i
  %n.vec151 = and i64 %indvars.iv55.i, 9223372036854775804 ; 3 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph150
  %index153 = phi i64 [ 0, %vector.ph150 ], [ %index.next156, %vector.body152 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %index153 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 2 uses
  %wide.load154 = load <2 x double>, ptr %i.ci, align 8, !tbaa !18
  %wide.load155 = load <2 x double>, ptr %i.cj, align 8, !tbaa !18
  %i.ck = fmul <2 x double> %wide.load154, splat (double 1.200000e+00)
  %i.cl = fmul <2 x double> %wide.load155, splat (double 1.200000e+00)
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !18
  store <2 x double> %i.cl, ptr %i.cj, align 8, !tbaa !18
  %index.next156 = add nuw i64 %index153, 4       ; 2 uses
  %i.cm = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.cm, label %middle.block157, label %vector.body152, !llvm.loop !36

middle.block157:                                  ; preds = %vector.body152
  %cmp.n158 = icmp eq i64 %indvars.iv55.i, %n.vec151
  br i1 %cmp.n158, label %.preheader35.i, label %scalar.ph148.preheader

scalar.ph148.preheader:                           ; preds = %.preheader36.i, %middle.block157
  %indvars.iv.i35.ph = phi i64 [ 0, %.preheader36.i ], [ %n.vec151, %middle.block157 ]
  br label %scalar.ph148

.preheader35.i:                                   ; preds = %scalar.ph148, %middle.block157
  %i.cn = getelementptr inbounds nuw [8000 x i8], ptr %i.x, i64 %indvars.iv57.i34 ; 2 uses
  %i.co = getelementptr inbounds nuw [8000 x i8], ptr %i.r, i64 %indvars.iv57.i34 ; 2 uses
  %i.cp = insertelement <2 x ptr> poison, ptr %i.ch, i64 0
  %i.cq = shufflevector <2 x ptr> %i.cp, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.cr = insertelement <2 x ptr> poison, ptr %scevgep126, i64 0
  %i.cs = insertelement <2 x ptr> %i.cr, ptr %scevgep, i64 1
  %i.ct = insertelement <2 x ptr> poison, ptr %i.co, i64 0
  %i.cu = insertelement <2 x ptr> %i.ct, ptr %i.cn, i64 1
  %2 = insertelement <2 x ptr> poison, ptr %scevgep127, i64 0
  %3 = shufflevector <2 x ptr> %2, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv55.i, 2
  %i.cv = icmp ult <2 x ptr> %i.cq, %i.cs
  %i.cw = icmp ult <2 x ptr> %i.cc, %3
  %i.cx = icmp ult <2 x ptr> %i.cu, %3
  %i.cy = or <2 x i1> %i.cx, %i.cw
  %i.cz = and <2 x i1> %i.cv, %i.cy
  %i.da = bitcast <2 x i1> %i.cz to i2
  %.not = icmp eq i2 %i.da, 0
  %n.vec = and i64 %indvars.iv55.i, 9223372036854775806 ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv55.i, %n.vec
  br label %.preheader.i38

scalar.ph148:                                     ; preds = %scalar.ph148.preheader, %scalar.ph148
  %indvars.iv.i35 = phi i64 [ %indvars.iv.next.i36, %scalar.ph148 ], [ %indvars.iv.i35.ph, %scalar.ph148.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv.i35 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !18
  %i.dd = fmul double %i.dc, 1.200000e+00
  store double %i.dd, ptr %i.db, align 8, !tbaa !18
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i35, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %indvars.iv55.i
  br i1 %exitcond.not.i37, label %.preheader35.i, label %scalar.ph148, !llvm.loop !37

.preheader.i38:                                   ; preds = %.loopexit223, %.preheader35.i
  %indvars.iv51.i = phi i64 [ 0, %.preheader35.i ], [ %indvars.iv.next52.i, %.loopexit223 ] ; 5 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51.i ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv51.i ; 2 uses
  %invariant.gep38.i = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv51.i ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %indvars.iv51.i ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check, i1 true, i1 %.not.not
  br i1 %brmerge, label %scalar.ph128.preheader, label %vector.ph139

vector.ph139:                                     ; preds = %.preheader.i38
  %i.dg = load double, ptr %i.de, align 8, !tbaa !18, !alias.scope !68
  %broadcast.splatinsert144 = insertelement <2 x double> poison, double %i.dg, i64 0
  %broadcast.splat145 = shufflevector <2 x double> %broadcast.splatinsert144, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = load double, ptr %i.df, align 8, !tbaa !18, !alias.scope !69
  %broadcast.splatinsert142 = insertelement <2 x double> poison, double %i.dh, i64 0
  %broadcast.splat143 = shufflevector <2 x double> %broadcast.splatinsert142, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph139
  %index141 = phi i64 [ 0, %vector.ph139 ], [ %index.next146, %vector.body140 ] ; 5 uses
  %i.di = or disjoint i64 %index141, 1            ; 2 uses
  %i.dj = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %index141
  %i.dk = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %i.di
  %i.dl = load double, ptr %i.dj, align 8, !tbaa !18, !alias.scope !70
  %i.dm = load double, ptr %i.dk, align 8, !tbaa !18, !alias.scope !70
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dm, i64 1
  %i.dp = fmul <2 x double> %i.do, splat (double 1.500000e+00)
  %i.dq = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %index141
  %i.dr = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %i.di
  %i.ds = load double, ptr %i.dq, align 8, !tbaa !18, !alias.scope !71
  %i.dt = load double, ptr %i.dr, align 8, !tbaa !18, !alias.scope !71
  %i.du = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dt, i64 1
  %i.dw = fmul <2 x double> %i.dv, splat (double 1.500000e+00)
  %i.dx = fmul <2 x double> %i.dw, %broadcast.splat143
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %broadcast.splat145, <2 x double> %i.dx)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %index141 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dz, align 8, !tbaa !18, !alias.scope !72, !noalias !73
  %i.ea = fadd <2 x double> %wide.load, %i.dy
  store <2 x double> %i.ea, ptr %i.dz, align 8, !tbaa !18, !alias.scope !72, !noalias !73
  %index.next146 = add nuw i64 %index141, 2       ; 2 uses
  %i.eb = icmp eq i64 %index.next146, %n.vec
  br i1 %i.eb, label %middle.block147, label %vector.body140, !llvm.loop !44

middle.block147:                                  ; preds = %vector.body140
  br i1 %cmp.n, label %.loopexit223, label %scalar.ph128.preheader

scalar.ph128.preheader:                           ; preds = %.preheader.i38, %middle.block147
  %indvars.iv46.i.ph = phi i64 [ %n.vec, %middle.block147 ], [ 0, %.preheader.i38 ]
  br label %scalar.ph128

scalar.ph128:                                     ; preds = %scalar.ph128.preheader, %scalar.ph128
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %scalar.ph128 ], [ %indvars.iv46.i.ph, %scalar.ph128.preheader ] ; 4 uses
  %gep.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i, i64 %indvars.iv46.i
  %i.ec = load double, ptr %gep.i, align 8, !tbaa !18
  %i.ed = fmul double %i.ec, 1.500000e+00
  %i.ee = load double, ptr %i.de, align 8, !tbaa !18
  %gep39.i = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i, i64 %indvars.iv46.i
  %i.ef = load double, ptr %gep39.i, align 8, !tbaa !18
  %i.eg = fmul double %i.ef, 1.500000e+00
  %i.eh = load double, ptr %i.df, align 8, !tbaa !18
  %i.ei = fmul double %i.eg, %i.eh
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.ee, double %i.ei)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %indvars.iv46.i ; 2 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !18
  %i.em = fadd double %i.el, %i.ej
  store double %i.em, ptr %i.ek, align 8, !tbaa !18
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %indvars.iv55.i
  br i1 %exitcond50.not.i, label %.loopexit223, label %scalar.ph128, !llvm.loop !45

.loopexit223:                                     ; preds = %scalar.ph128, %middle.block147
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next52.i, 1000
  br i1 %exitcond54.not.i, label %bb.f, label %.preheader.i38, !llvm.loop !46

bb.f:                                             ; preds = %.loopexit223
  %indvars.iv.next58.i39 = add nuw nsw i64 %indvars.iv57.i34, 1 ; 2 uses
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next58.i39, 1200
  br i1 %exitcond62.not.i, label %.preheader36.i40, label %.preheader36.i, !llvm.loop !47

.preheader36.i40:                                 ; preds = %bb.f, %bb.g
  %indvars.iv57.i41 = phi i64 [ %indvars.iv.next58.i58, %bb.g ], [ 0, %bb.f ] ; 6 uses
  %indvars.iv55.i42 = phi i64 [ %indvars.iv.next56.i59, %bb.g ], [ 1, %bb.f ] ; 9 uses
  %i.en = mul nuw nsw i64 %indvars.iv57.i41, 8000
  %i.eo = add nuw i64 %i.en, 8000                 ; 2 uses
  %scevgep179 = getelementptr i8, ptr %i.x, i64 %i.eo
  %scevgep180 = getelementptr i8, ptr %i.r, i64 %i.eo
  %i.ep = mul nuw nsw i64 %indvars.iv57.i41, 9608
  %i.eq = getelementptr i8, ptr %i.l, i64 %i.ep
  %scevgep181 = getelementptr i8, ptr %i.eq, i64 8
  %i.er = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv57.i41 ; 5 uses
  %min.iters.check212 = icmp samesign ult i64 %indvars.iv55.i42, 4
  br i1 %min.iters.check212, label %scalar.ph211.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %.preheader36.i40
  %n.vec214 = and i64 %indvars.iv55.i42, 9223372036854775804 ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next219, %vector.body215 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %index216 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %wide.load217 = load <2 x double>, ptr %i.es, align 8, !tbaa !18
  %wide.load218 = load <2 x double>, ptr %i.et, align 8, !tbaa !18
  %i.eu = fmul <2 x double> %wide.load217, splat (double 1.200000e+00)
  %i.ev = fmul <2 x double> %wide.load218, splat (double 1.200000e+00)
  store <2 x double> %i.eu, ptr %i.es, align 8, !tbaa !18
  store <2 x double> %i.ev, ptr %i.et, align 8, !tbaa !18
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.ew, label %middle.block220, label %vector.body215, !llvm.loop !48

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %indvars.iv55.i42, %n.vec214
  br i1 %cmp.n221, label %.preheader35.i46, label %scalar.ph211.preheader

scalar.ph211.preheader:                           ; preds = %.preheader36.i40, %middle.block220
  %indvars.iv.i43.ph = phi i64 [ 0, %.preheader36.i40 ], [ %n.vec214, %middle.block220 ]
  br label %scalar.ph211

.preheader35.i46:                                 ; preds = %scalar.ph211, %middle.block220
  %i.ex = getelementptr inbounds nuw [8000 x i8], ptr %i.x, i64 %indvars.iv57.i41 ; 2 uses
  %i.ey = getelementptr inbounds nuw [8000 x i8], ptr %i.r, i64 %indvars.iv57.i41 ; 2 uses
  %i.ez = insertelement <2 x ptr> poison, ptr %i.er, i64 0
  %i.fa = shufflevector <2 x ptr> %i.ez, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.fb = insertelement <2 x ptr> poison, ptr %scevgep180, i64 0
  %i.fc = insertelement <2 x ptr> %i.fb, ptr %scevgep179, i64 1
  %i.fd = insertelement <2 x ptr> poison, ptr %i.ey, i64 0
  %i.fe = insertelement <2 x ptr> %i.fd, ptr %i.ex, i64 1
  %4 = insertelement <2 x ptr> poison, ptr %scevgep181, i64 0
  %5 = shufflevector <2 x ptr> %4, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %min.iters.check183 = icmp samesign ult i64 %indvars.iv55.i42, 2
  %i.ff = icmp ult <2 x ptr> %i.fa, %i.fc
  %i.fg = icmp ult <2 x ptr> %i.cc, %5
  %i.fh = icmp ult <2 x ptr> %i.fe, %5
  %i.fi = or <2 x i1> %i.fh, %i.fg
  %i.fj = and <2 x i1> %i.ff, %i.fi
  %i.fk = bitcast <2 x i1> %i.fj to i2
  %.not229 = icmp eq i2 %i.fk, 0
  %n.vec199 = and i64 %indvars.iv55.i42, 9223372036854775806 ; 3 uses
  %cmp.n209 = icmp eq i64 %indvars.iv55.i42, %n.vec199
  br label %.preheader.i47

scalar.ph211:                                     ; preds = %scalar.ph211.preheader, %scalar.ph211
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %scalar.ph211 ], [ %indvars.iv.i43.ph, %scalar.ph211.preheader ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv.i43 ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !18
  %i.fn = fmul double %i.fm, 1.200000e+00
  store double %i.fn, ptr %i.fl, align 8, !tbaa !18
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %indvars.iv55.i42
  br i1 %exitcond.not.i45, label %.preheader35.i46, label %scalar.ph211, !llvm.loop !49

.preheader.i47:                                   ; preds = %.loopexit, %.preheader35.i46
  %indvars.iv51.i48 = phi i64 [ 0, %.preheader35.i46 ], [ %indvars.iv.next52.i56, %.loopexit ] ; 5 uses
  %invariant.gep.i49 = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv51.i48 ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv51.i48 ; 2 uses
  %invariant.gep38.i50 = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv51.i48 ; 3 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv51.i48 ; 2 uses
  %.not229.not = xor i1 %.not229, true
  %brmerge240 = select i1 %min.iters.check183, i1 true, i1 %.not229.not
  br i1 %brmerge240, label %scalar.ph182.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %.preheader.i47
  %i.fq = load double, ptr %i.fo, align 8, !tbaa !18, !alias.scope !74
  %broadcast.splatinsert202 = insertelement <2 x double> poison, double %i.fq, i64 0
  %broadcast.splat203 = shufflevector <2 x double> %broadcast.splatinsert202, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = load double, ptr %i.fp, align 8, !tbaa !18, !alias.scope !75
  %broadcast.splatinsert204 = insertelement <2 x double> poison, double %i.fr, i64 0
  %broadcast.splat205 = shufflevector <2 x double> %broadcast.splatinsert204, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next207, %vector.body200 ] ; 5 uses
  %i.fs = or disjoint i64 %index201, 1            ; 2 uses
  %i.ft = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i49, i64 %index201
  %i.fu = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i49, i64 %i.fs
  %i.fv = load double, ptr %i.ft, align 8, !tbaa !18, !alias.scope !76
  %i.fw = load double, ptr %i.fu, align 8, !tbaa !18, !alias.scope !76
  %i.fx = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.fw, i64 1
  %i.fz = fmul <2 x double> %i.fy, splat (double 1.500000e+00)
  %i.ga = fmul <2 x double> %i.fz, %broadcast.splat203
  %i.gb = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i50, i64 %index201
  %i.gc = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i50, i64 %i.fs
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !18, !alias.scope !77
  %i.ge = load double, ptr %i.gc, align 8, !tbaa !18, !alias.scope !77
  %i.gf = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.ge, i64 1
  %i.gh = fmul <2 x double> %i.gg, splat (double 1.500000e+00)
  %i.gi = fmul <2 x double> %i.gh, %broadcast.splat205
  %i.gj = fadd <2 x double> %i.ga, %i.gi
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %index201 ; 2 uses
  %wide.load206 = load <2 x double>, ptr %i.gk, align 8, !tbaa !18, !alias.scope !78, !noalias !79
  %i.gl = fadd <2 x double> %wide.load206, %i.gj
  store <2 x double> %i.gl, ptr %i.gk, align 8, !tbaa !18, !alias.scope !78, !noalias !79
  %index.next207 = add nuw i64 %index201, 2       ; 2 uses
  %i.gm = icmp eq i64 %index.next207, %n.vec199
  br i1 %i.gm, label %middle.block208, label %vector.body200, !llvm.loop !56

middle.block208:                                  ; preds = %vector.body200
  br i1 %cmp.n209, label %.loopexit, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %.preheader.i47, %middle.block208
  %indvars.iv46.i51.ph = phi i64 [ %n.vec199, %middle.block208 ], [ 0, %.preheader.i47 ]
  br label %scalar.ph182

scalar.ph182:                                     ; preds = %scalar.ph182.preheader, %scalar.ph182
  %indvars.iv46.i51 = phi i64 [ %indvars.iv.next47.i54, %scalar.ph182 ], [ %indvars.iv46.i51.ph, %scalar.ph182.preheader ] ; 4 uses
  %gep.i52 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep.i49, i64 %indvars.iv46.i51
  %i.gn = load double, ptr %gep.i52, align 8, !tbaa !18
  %i.go = fmul double %i.gn, 1.500000e+00
  %i.gp = load double, ptr %i.fo, align 8, !tbaa !18
  %i.gq = fmul double %i.go, %i.gp
  %gep39.i53 = getelementptr inbounds nuw [8000 x i8], ptr %invariant.gep38.i50, i64 %indvars.iv46.i51
  %i.gr = load double, ptr %gep39.i53, align 8, !tbaa !18
  %i.gs = fmul double %i.gr, 1.500000e+00
  %i.gt = load double, ptr %i.fp, align 8, !tbaa !18
  %i.gu = fmul double %i.gs, %i.gt
  %i.gv = fadd double %i.gq, %i.gu
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv46.i51 ; 2 uses
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !18
  %i.gy = fadd double %i.gx, %i.gv
  store double %i.gy, ptr %i.gw, align 8, !tbaa !18
  %indvars.iv.next47.i54 = add nuw nsw i64 %indvars.iv46.i51, 1 ; 2 uses
  %exitcond50.not.i55 = icmp eq i64 %indvars.iv.next47.i54, %indvars.iv55.i42
  br i1 %exitcond50.not.i55, label %.loopexit, label %scalar.ph182, !llvm.loop !57

.loopexit:                                        ; preds = %scalar.ph182, %middle.block208
  %indvars.iv.next52.i56 = add nuw nsw i64 %indvars.iv51.i48, 1 ; 2 uses
  %exitcond54.not.i57 = icmp eq i64 %indvars.iv.next52.i56, 1000
  br i1 %exitcond54.not.i57, label %bb.g, label %.preheader.i47, !llvm.loop !58

bb.g:                                             ; preds = %.loopexit
  %indvars.iv.next58.i58 = add nuw nsw i64 %indvars.iv57.i41, 1 ; 2 uses
  %indvars.iv.next56.i59 = add nuw nsw i64 %indvars.iv55.i42, 1
  %exitcond62.not.i60 = icmp eq i64 %indvars.iv.next58.i58, 1200
  br i1 %exitcond62.not.i60, label %.preheader.i61, label %.preheader36.i40, !llvm.loop !59

.preheader.i61:                                   ; preds = %bb.g, %bb.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %bb.i ], [ 0, %bb.g ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [9600 x i8], ptr %i.f, i64 %indvars.iv36.i ; 3 uses
  %i.ha = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv36.i ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.2, %.preheader.i61
  %indvars.iv.i62 = phi i64 [ 0, %.preheader.i61 ], [ %indvars.iv.next.i63.2, %.critedge.i.2 ] ; 6 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i62
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !18 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.i62
  %i.he = load double, ptr %i.hd, align 8, !tbaa !18 ; 2 uses
  %i.hf = fsub double %i.hc, %i.he
  %i.hg = tail call double @llvm.fabs.f64(double %i.hf)
  %i.hh = fcmp ule double %i.hg, 1.000000e-05
  br i1 %i.hh, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i.1, %.critedge.i, %bb.h
  %indvars.iv.i62.lcssa = phi i64 [ %indvars.iv.i62, %bb.h ], [ %indvars.iv.next.i63, %.critedge.i ], [ %indvars.iv.next.i63.1, %.critedge.i.1 ]
  %.lcssa231 = phi double [ %i.hc, %bb.h ], [ %i.hn, %.critedge.i ], [ %i.hu, %.critedge.i.1 ]
  %.lcssa = phi double [ %i.he, %bb.h ], [ %i.hp, %.critedge.i ], [ %i.hw, %.critedge.i.1 ]
  %i.hi = trunc nuw nsw i64 %indvars.iv36.i to i32 ; 2 uses
  %i.hj = trunc nuw nsw i64 %indvars.iv.i62.lcssa to i32 ; 2 uses
  %i.hk = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.hl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hk, ptr noundef nonnull @.str.2, i32 noundef %i.hi, i32 noundef %i.hj, double noundef %.lcssa231, i32 noundef %i.hi, i32 noundef %i.hj, double noundef %.lcssa, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.l

.critedge.i:                                      ; preds = %bb.h
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1 ; 3 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i63
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !18 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i63
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !18 ; 2 uses
  %i.hq = fsub double %i.hn, %i.hp
  %i.hr = tail call double @llvm.fabs.f64(double %i.hq)
  %i.hs = fcmp ule double %i.hr, 1.000000e-05
  br i1 %i.hs, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i63.1 = add nuw nsw i64 %indvars.iv.i62, 2 ; 3 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i63.1
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !18 ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv.next.i63.1
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !18 ; 2 uses
  %i.hx = fsub double %i.hu, %i.hw
  %i.hy = tail call double @llvm.fabs.f64(double %i.hx)
  %i.hz = fcmp ule double %i.hy, 1.000000e-05
  br i1 %i.hz, label %.critedge.i.2, label %check_FP.exit.thread

.critedge.i.2:                                    ; preds = %.critedge.i.1
  %indvars.iv.next.i63.2 = add nuw nsw i64 %indvars.iv.i62, 3 ; 2 uses
  %exitcond.not.i64.2 = icmp eq i64 %indvars.iv.next.i63.2, 1200
  br i1 %exitcond.not.i64.2, label %bb.i, label %bb.h, !llvm.loop !60

bb.i:                                             ; preds = %.critedge.i.2
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next37.i, 1200
  br i1 %exitcond39.not.i, label %check_FP.exit, label %.preheader.i61, !llvm.loop !61

check_FP.exit:                                    ; preds = %bb.i
  %i.ia = tail call noalias dereferenceable_or_null(19201) ptr @malloc(i64 noundef 19201) #17 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 19200
  store i8 0, ptr %i.ib, align 1, !tbaa !80
  br label %.preheader.i65

.preheader.i65:                                   ; preds = %bb.k, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.k ] ; 2 uses
  %i.ic = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv20.i
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.preheader.i65
  %indvars.iv.i66 = phi i64 [ 0, %.preheader.i65 ], [ %indvars.iv.next.i67, %bb.j ] ; 3 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i66
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !18
  %i.if = shl nuw nsw i64 %indvars.iv.i66, 4
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.if
  %.inner = and i64 %i.ie, 1085102592571150095
  %.inner228 = or disjoint i64 %.inner, 3472328296227680304
  %i.ih = bitcast i64 %.inner228 to <8 x i8>
  %i.ii = shufflevector <8 x i8> %i.ih, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.ii, ptr %i.ig, align 1, !tbaa !80
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i66, 1 ; 2 uses
  %exitcond.not.i68 = icmp eq i64 %indvars.iv.next.i67, 1200
  br i1 %exitcond.not.i68, label %bb.k, label %bb.j, !llvm.loop !62

bb.k:                                             ; preds = %bb.j
  %i.ij = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ik = tail call i32 @fputs(ptr noundef nonnull %i.ia, ptr noundef %i.ij) #14 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 1200
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i65, !llvm.loop !63

print_array.exit:                                 ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ia) #13
  tail call void @free(ptr noundef %i.f) #13
  tail call void @free(ptr noundef nonnull %i.l) #13
  tail call void @free(ptr noundef %i.r) #13
  tail call void @free(ptr noundef %i.x) #13
  br label %bb.l

bb.l:                                             ; preds = %check_FP.exit.thread, %print_array.exit
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
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

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
!8 = !{i64 -806784931565097052}
!9 = !{i64 1361650078910839278}
!10 = !{i64 -5417346137170862001}
!11 = !{i64 4595329937442580317}
!12 = !{i64 7346986919536024009}
!13 = !{i64 -7342903817849636275}
!14 = !{i64 774085790601897068}
!15 = !{i64 4295035857218506947}
!16 = !{i64 5247508322149746428}
!17 = !{!"double", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{i64 6924298717434635471}
!24 = !{i64 2466723648033828072}
!25 = !{i64 3849196629037768006}
!26 = !{i64 -3113547621970457501}
!27 = !{i64 8579997554498101488}
!28 = !{i64 -2159351921628453241}
!29 = !{i64 -6990721254753607707}
!30 = distinct !{!30, !65, !66, !67}
!31 = distinct !{!31, !65, !66}
!32 = distinct !{!32, !65}
!33 = distinct !{!33, !65, !66, !67}
!34 = distinct !{!34, !65, !66}
!35 = distinct !{!35, !65}
!36 = distinct !{!36, !65, !66, !67}
!37 = distinct !{!37, !65, !67, !66}
!38 = distinct !{!38, i1 false, !"LVerDomain"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = distinct !{!41, !38}
!42 = distinct !{!42, !38}
!43 = distinct !{!43, !38}
!44 = distinct !{!44, !65, !66, !67}
!45 = distinct !{!45, !65, !66}
!46 = distinct !{!46, !65}
!47 = distinct !{!47, !65}
!48 = distinct !{!48, !65, !66, !67}
!49 = distinct !{!49, !65, !67, !66}
!50 = distinct !{!50, i1 false, !"LVerDomain"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = distinct !{!54, !50}
!55 = distinct !{!55, !50}
!56 = distinct !{!56, !65, !66, !67}
!57 = distinct !{!57, !65, !66}
!58 = distinct !{!58, !65}
!59 = distinct !{!59, !65}
!60 = distinct !{!60, !65}
!61 = distinct !{!61, !65}
!62 = distinct !{!62, !65}
!63 = distinct !{!63, !65}
!64 = !{i64 -2624081020897602054}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !{!"llvm.loop.unroll.runtime.disable"}
!68 = !{!39}
!69 = !{!40}
!70 = !{!41}
!71 = !{!42}
!72 = !{!43}
!73 = !{!41, !40, !39, !42}
!74 = !{!51}
!75 = !{!52}
!76 = !{!53}
!77 = !{!54}
!78 = !{!55}
!79 = !{!53, !52, !51, !54}
!80 = !{!5, !5, i64 0}
end_hunk_0
