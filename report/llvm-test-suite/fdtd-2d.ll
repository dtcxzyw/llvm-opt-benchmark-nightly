Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/fdtd-2d?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 !guid !22 {
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
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 !guid !23 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #3 !guid !24 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_start, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #3 !guid !25 {
bb.a:
  store double 0.000000e+00, ptr @polybench_t_end, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #4 !guid !26 {
bb.a:
  %i.a = load double, ptr @polybench_t_end, align 8, !tbaa !17
  %i.b = load double, ptr @polybench_t_start, align 8, !tbaa !17
  %i.c = fsub double %i.a, %i.b
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @polybench_free_data(ptr noundef captures(none) %0) local_unnamed_addr #6 !guid !27 {
bb.a:
  tail call void @free(ptr noundef %0) #13
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 !guid !28 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = sext i32 %1 to i64
  %i.c = mul i64 %0, %i.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 !guid !80 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store ptr null, ptr %i.g, align 8, !tbaa !19
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.g, i64 noundef 4096, i64 noundef 9600000) #13
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !19   ; 9 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = icmp eq ptr %i.i, null
  %i.l = icmp ne i32 %i.h, 0
  %or.cond.i.i = or i1 %i.l, %i.k
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.m) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store ptr null, ptr %i.f, align 8, !tbaa !19
  %i.n = call i32 @posix_memalign(ptr noundef nonnull %i.f, i64 noundef 4096, i64 noundef 9600000) #13
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !19   ; 15 uses
  %i.p = ptrtoaddr ptr %i.o to i64                ; 2 uses
  %i.q = icmp eq ptr %i.o, null
  %i.r = icmp ne i32 %i.n, 0
  %or.cond.i.i39 = or i1 %i.r, %i.q
  br i1 %or.cond.i.i39, label %bb.c, label %polybench_alloc_data.exit41

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i40 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.s) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit41:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store ptr null, ptr %i.e, align 8, !tbaa !19
  %i.t = call i32 @posix_memalign(ptr noundef nonnull %i.e, i64 noundef 4096, i64 noundef 9600000) #13
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !19   ; 12 uses
  %i.v = ptrtoaddr ptr %i.u to i64                ; 2 uses
  %i.w = icmp eq ptr %i.u, null
  %i.x = icmp ne i32 %i.t, 0
  %or.cond.i.i42 = or i1 %i.x, %i.w
  br i1 %or.cond.i.i42, label %bb.d, label %polybench_alloc_data.exit44

bb.d:                                             ; preds = %polybench_alloc_data.exit41
  %i.y = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i43 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.y) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit44:                      ; preds = %polybench_alloc_data.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !19
  %i.z = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 9600000) #13
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !19  ; 10 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64              ; 2 uses
  %i.ac = icmp eq ptr %i.aa, null
  %i.ad = icmp ne i32 %i.z, 0
  %or.cond.i.i45 = or i1 %i.ad, %i.ac
  br i1 %or.cond.i.i45, label %bb.e, label %polybench_alloc_data.exit47

bb.e:                                             ; preds = %polybench_alloc_data.exit44
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i46 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ae) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit47:                      ; preds = %polybench_alloc_data.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !19
  %i.af = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 9600000) #13
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !19  ; 16 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64              ; 2 uses
  %i.ai = icmp eq ptr %i.ag, null
  %i.aj = icmp ne i32 %i.af, 0
  %or.cond.i.i48 = or i1 %i.aj, %i.ai
  br i1 %or.cond.i.i48, label %bb.f, label %polybench_alloc_data.exit50

bb.f:                                             ; preds = %polybench_alloc_data.exit47
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i49 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ak) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit50:                      ; preds = %polybench_alloc_data.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !19
  %i.al = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 9600000) #13
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !19  ; 13 uses
  %i.an = ptrtoaddr ptr %i.am to i64              ; 2 uses
  %i.ao = icmp eq ptr %i.am, null
  %i.ap = icmp ne i32 %i.al, 0
  %or.cond.i.i51 = or i1 %i.ap, %i.ao
  br i1 %or.cond.i.i51, label %bb.g, label %polybench_alloc_data.exit53

bb.g:                                             ; preds = %polybench_alloc_data.exit50
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i52 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aq) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit53:                      ; preds = %polybench_alloc_data.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.ar = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 4000) #13
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !19  ; 8 uses
  %i.at = icmp eq ptr %i.as, null
  %i.au = icmp ne i32 %i.ar, 0
  %or.cond.i.i54 = or i1 %i.au, %i.at
  br i1 %or.cond.i.i54, label %bb.h, label %polybench_alloc_data.exit56

bb.h:                                             ; preds = %polybench_alloc_data.exit53
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !21
  %fwrite.i.i55 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.av) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit56:                      ; preds = %polybench_alloc_data.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %polybench_alloc_data.exit56
  %index = phi i64 [ 0, %polybench_alloc_data.exit56 ], [ %index.next.1, %vector.body.1 ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %polybench_alloc_data.exit56 ], [ %vec.ind.next.1, %vector.body.1 ] ; 5 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.aw = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.ax = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <2 x double> %i.aw, ptr %i.ay, align 8, !tbaa !17
  store <2 x double> %i.ax, ptr %i.az, align 8, !tbaa !17
  %i.ba = icmp eq i64 %index, 496
  br i1 %i.ba, label %.preheader.i.preheader, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %step.add.1 = add <2 x i32> %vec.ind, splat (i32 6)
  %i.bb = uitofp nneg <2 x i32> %vec.ind.next to <2 x double>
  %i.bc = uitofp nneg <2 x i32> %step.add.1 to <2 x double>
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store <2 x double> %i.bb, ptr %i.be, align 8, !tbaa !17
  store <2 x double> %i.bc, ptr %i.bf, align 8, !tbaa !17
  %index.next.1 = add nuw nsw i64 %index, 8
  %vec.ind.next.1 = add <2 x i32> %vec.ind, splat (i32 8)
  br label %vector.body

.preheader.i.preheader:                           ; preds = %vector.body
  %i.bg = sub i64 %i.j, %i.p
  %diff.check = icmp ugt i64 %i.bg, -16
  %i.bh = sub i64 %i.j, %i.v
  %diff.check114 = icmp ugt i64 %i.bh, -16
  %conflict.rdx = or i1 %diff.check, %diff.check114
  %i.bi = sub i64 %i.p, %i.v
  %diff.check115 = icmp ugt i64 %i.bi, -16
  %conflict.rdx116 = or i1 %conflict.rdx, %diff.check115
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block123
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %middle.block123 ], [ 0, %.preheader.i.preheader ] ; 8 uses
  %i.bj = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv41.i ; 2 uses
  %i.bk = getelementptr inbounds nuw [9600 x i8], ptr %i.o, i64 %indvars.iv41.i ; 2 uses
  %i.bl = getelementptr inbounds nuw [9600 x i8], ptr %i.u, i64 %indvars.iv41.i ; 2 uses
  br i1 %conflict.rdx116, label %scalar.ph, label %vector.ph117

vector.ph117:                                     ; preds = %.preheader.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph117
  %index119 = phi i64 [ 0, %vector.ph117 ], [ %index.next121, %vector.body118 ] ; 4 uses
  %vec.ind120 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph117 ], [ %vec.ind.next122, %vector.body118 ] ; 4 uses
  %i.bm = add nuw nsw <2 x i64> %vec.ind120, splat (i64 1)
  %i.bn = mul nuw nsw <2 x i64> %i.bm, %broadcast.splat
  %i.bo = trunc nuw nsw <2 x i64> %i.bn to <2 x i32>
  %i.bp = uitofp nneg <2 x i32> %i.bo to <2 x double>
  %i.bq = fdiv <2 x double> %i.bp, splat (double 1.000000e+03)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %index119
  store <2 x double> %i.bq, ptr %i.br, align 8, !tbaa !17
  %i.bs = add nuw nsw <2 x i64> %vec.ind120, splat (i64 2)
  %i.bt = mul nuw nsw <2 x i64> %i.bs, %broadcast.splat
  %i.bu = trunc nuw nsw <2 x i64> %i.bt to <2 x i32>
  %i.bv = uitofp nneg <2 x i32> %i.bu to <2 x double>
  %i.bw = fdiv <2 x double> %i.bv, splat (double 1.200000e+03)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index119
  store <2 x double> %i.bw, ptr %i.bx, align 8, !tbaa !17
  %i.by = add nuw nsw <2 x i64> %vec.ind120, splat (i64 3)
  %i.bz = mul nuw nsw <2 x i64> %i.by, %broadcast.splat
  %i.ca = trunc nuw nsw <2 x i64> %i.bz to <2 x i32>
  %i.cb = uitofp nneg <2 x i32> %i.ca to <2 x double>
  %i.cc = fdiv <2 x double> %i.cb, splat (double 1.000000e+03)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %index119
  store <2 x double> %i.cc, ptr %i.cd, align 8, !tbaa !17
  %index.next121 = add nuw i64 %index119, 2       ; 2 uses
  %vec.ind.next122 = add nuw nsw <2 x i64> %vec.ind120, splat (i64 2)
  %i.ce = icmp eq i64 %index.next121, 1200
  br i1 %i.ce, label %middle.block123, label %vector.body118, !llvm.loop !29

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %scalar.ph ], [ 0, %.preheader.i ] ; 6 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv37.i
  %i.cg = add nuw nsw i64 %indvars.iv37.i, 2
  %i.ch = mul nuw nsw i64 %indvars.iv.next38.i, %indvars.iv41.i
  %i.ci = trunc nuw nsw i64 %i.ch to i32
  %i.cj = uitofp nneg i32 %i.ci to double
  %i.ck = mul nuw nsw i64 %i.cg, %indvars.iv41.i
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = uitofp nneg i32 %i.cl to double
  %i.cn = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.cm, i64 1
  %i.cp = fdiv <2 x double> %i.co, <double 1.000000e+03, double 1.200000e+03> ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  store double %i.cq, ptr %i.cf, align 8, !tbaa !17
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv37.i
  %i.cs = extractelement <2 x double> %i.cp, i64 1
  store double %i.cs, ptr %i.cr, align 8, !tbaa !17
  %i.ct = add nuw nsw i64 %indvars.iv37.i, 3
  %i.cu = mul nuw nsw i64 %i.ct, %indvars.iv41.i
  %i.cv = trunc nuw nsw i64 %i.cu to i32
  %i.cw = uitofp nneg i32 %i.cv to double
  %i.cx = fdiv double %i.cw, 1.000000e+03
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv37.i
  store double %i.cx, ptr %i.cy, align 8, !tbaa !17
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next38.i, 1200
  br i1 %exitcond40.not.i, label %middle.block123, label %scalar.ph, !llvm.loop !30

middle.block123:                                  ; preds = %vector.body118, %scalar.ph
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next42.i, 1000
  br i1 %exitcond44.not.i, label %.preheader80.i.preheader, label %.preheader.i, !llvm.loop !31

.preheader80.i.preheader:                         ; preds = %middle.block123
  %i.cz = insertelement <2 x ptr> poison, ptr %i.i, i64 0
  %i.da = insertelement <2 x ptr> %i.cz, ptr %i.o, i64 1 ; 2 uses
  %i.db = getelementptr i8, <2 x ptr> %i.da, <2 x i64> <i64 9590400, i64 9599992>
  %scevgep132.a = getelementptr i8, ptr %i.u, i64 9590392
  %scevgep160.a = getelementptr i8, ptr %i.u, i64 9600000 ; 2 uses
  %scevgep161 = getelementptr i8, ptr %i.i, i64 9600000
  %scevgep162 = getelementptr i8, ptr %i.i, i64 8
  %scevgep186 = getelementptr i8, ptr %i.o, i64 9600000
  %scevgep187 = getelementptr i8, ptr %i.o, i64 9600
  %bound0190 = icmp ult ptr %scevgep187, %scevgep160.a
  %bound1191 = icmp ult ptr %i.u, %scevgep186
  %found.conflict192 = and i1 %bound0190, %bound1191
  %bound0165 = icmp ult ptr %scevgep162, %scevgep160.a
  %bound1166 = icmp ult ptr %i.u, %scevgep161
  %found.conflict167 = and i1 %bound0165, %bound1166
  %i.dc = insertelement <2 x ptr> poison, ptr %i.u, i64 0
  %i.dd = shufflevector <2 x ptr> %i.dc, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.de = icmp ult <2 x ptr> %i.dd, %i.db
  %i.df = insertelement <2 x ptr> poison, ptr %scevgep132.a, i64 0
  %i.dg = shufflevector <2 x ptr> %i.df, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.dh = icmp ult <2 x ptr> %i.da, %i.dg
  %i.di = and <2 x i1> %i.de, %i.dh
  %i.dj = bitcast <2 x i1> %i.di to i2
  %.not = icmp eq i2 %i.dj, 0
  br label %vector.ph205

vector.ph205:                                     ; preds = %bb.i, %.preheader80.i.preheader
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %bb.i ], [ 0, %.preheader80.i.preheader ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv114.i
  %.pre.i = load double, ptr %i.dk, align 8, !tbaa !17
  %broadcast.splatinsert206 = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat207 = shufflevector <2 x double> %broadcast.splatinsert206, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  br label %vector.body208

vector.body208:                                   ; preds = %vector.body208, %vector.ph205
  %index209 = phi i64 [ 0, %vector.ph205 ], [ %index.next210.5, %vector.body208 ] ; 7 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index209 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x double> %broadcast.splat207, ptr %i.dl, align 8, !tbaa !17
  store <2 x double> %broadcast.splat207, ptr %i.dm, align 8, !tbaa !17
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index209 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store <2 x double> %broadcast.splat207, ptr %i.do, align 8, !tbaa !17
  store <2 x double> %broadcast.splat207, ptr %i.dp, align 8, !tbaa !17
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index209 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 80
  store <2 x double> %broadcast.splat207, ptr %i.dr, align 8, !tbaa !17
  store <2 x double> %broadcast.splat207, ptr %i.ds, align 8, !tbaa !17
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index209 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 96
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 112
  store <2 x double> %broadcast.splat207, ptr %i.du, align 8, !tbaa !17
  store <2 x double> %broadcast.splat207, ptr %i.dv, align 8, !tbaa !17
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index209 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 128
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 144
  store <2 x double> %broadcast.splat207, ptr %i.dx, align 8, !tbaa !17
  store <2 x double> %broadcast.splat207, ptr %i.dy, align 8, !tbaa !17
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index209 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 160
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 176
  store <2 x double> %broadcast.splat207, ptr %i.ea, align 8, !tbaa !17
  store <2 x double> %broadcast.splat207, ptr %i.eb, align 8, !tbaa !17
  %index.next210.5 = add nuw nsw i64 %index209, 24 ; 2 uses
  %i.ec = icmp eq i64 %index.next210.5, 1200
  br i1 %i.ec, label %.preheader76.i, label %vector.body208, !llvm.loop !32

.preheader76.i:                                   ; preds = %vector.body208, %middle.block203
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %middle.block203 ], [ 1, %vector.body208 ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [9600 x i8], ptr %i.o, i64 %indvars.iv94.i ; 3 uses
  %i.ee = getelementptr inbounds nuw [9600 x i8], ptr %i.u, i64 %indvars.iv94.i ; 4 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 -9600  ; 3 uses
  br i1 %found.conflict192, label %scalar.ph188, label %vector.body194

vector.body194:                                   ; preds = %.preheader76.i, %vector.body194
  %index195 = phi i64 [ %index.next202, %vector.body194 ], [ 0, %.preheader76.i ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %index195 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %wide.load196 = load <2 x double>, ptr %i.eg, align 8, !tbaa !17, !alias.scope !84, !noalias !85
  %wide.load197 = load <2 x double>, ptr %i.eh, align 8, !tbaa !17, !alias.scope !84, !noalias !85
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %index195 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load198 = load <2 x double>, ptr %i.ei, align 8, !tbaa !17, !alias.scope !85
  %wide.load199 = load <2 x double>, ptr %i.ej, align 8, !tbaa !17, !alias.scope !85
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index195 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load200 = load <2 x double>, ptr %i.ek, align 8, !tbaa !17, !alias.scope !85
  %wide.load201 = load <2 x double>, ptr %i.el, align 8, !tbaa !17, !alias.scope !85
  %i.em = fsub <2 x double> %wide.load198, %wide.load200
  %i.en = fsub <2 x double> %wide.load199, %wide.load201
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load196)
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load197)
  store <2 x double> %i.eo, ptr %i.eg, align 8, !tbaa !17, !alias.scope !84, !noalias !85
  store <2 x double> %i.ep, ptr %i.eh, align 8, !tbaa !17, !alias.scope !84, !noalias !85
  %index.next202 = add nuw i64 %index195, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next202, 1200
  br i1 %i.eq, label %middle.block203, label %vector.body194, !llvm.loop !36

scalar.ph188:                                     ; preds = %.preheader76.i, %scalar.ph188
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %scalar.ph188 ], [ 0, %.preheader76.i ] ; 5 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv90.i ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !17
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv90.i
  %i.eu = load double, ptr %i.et, align 8, !tbaa !17
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv90.i
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !17
  %i.ex = fsub double %i.eu, %i.ew
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double -5.000000e-01, double %i.es)
  store double %i.ey, ptr %i.er, align 8, !tbaa !17
  %indvars.iv.next91.i = or disjoint i64 %indvars.iv90.i, 1 ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next91.i ; 2 uses
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !17
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv.next91.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !17
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.next91.i
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !17
  %i.ff = fsub double %i.fc, %i.fe
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double -5.000000e-01, double %i.fa)
  store double %i.fg, ptr %i.ez, align 8, !tbaa !17
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %exitcond93.not.i.1 = icmp eq i64 %indvars.iv.next91.i.1, 1200
  br i1 %exitcond93.not.i.1, label %middle.block203, label %scalar.ph188, !llvm.loop !37

middle.block203:                                  ; preds = %vector.body194, %scalar.ph188
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next95.i, 1000
  br i1 %exitcond97.not.i, label %.preheader75.i, label %.preheader76.i, !llvm.loop !38

.preheader75.i:                                   ; preds = %middle.block203, %.unr-lcssa
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %.unr-lcssa ], [ 0, %middle.block203 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv102.i ; 4 uses
  %i.fi = getelementptr inbounds nuw [9600 x i8], ptr %i.u, i64 %indvars.iv102.i ; 4 uses
  br i1 %found.conflict167, label %scalar.ph163.prol, label %vector.body169

vector.body169:                                   ; preds = %.preheader75.i, %vector.body169
  %index170 = phi i64 [ %index.next177, %vector.body169 ], [ 0, %.preheader75.i ] ; 2 uses
  %i.fj = or disjoint i64 %index170, 1            ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %i.fj ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 2 uses
  %wide.load171.a = load <2 x double>, ptr %i.fk, align 8, !tbaa !17, !alias.scope !86, !noalias !87
  %wide.load172.a = load <2 x double>, ptr %i.fl, align 8, !tbaa !17, !alias.scope !86, !noalias !87
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fj ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load173.a = load <2 x double>, ptr %i.fm, align 8, !tbaa !17, !alias.scope !87
  %wide.load174.a = load <2 x double>, ptr %i.fn, align 8, !tbaa !17, !alias.scope !87
  %i.fo = getelementptr i8, ptr %i.fm, i64 -8
  %i.fp = getelementptr i8, ptr %i.fm, i64 8
  %wide.load175 = load <2 x double>, ptr %i.fo, align 8, !tbaa !17, !alias.scope !87
  %wide.load176 = load <2 x double>, ptr %i.fp, align 8, !tbaa !17, !alias.scope !87
  %i.fq = fsub <2 x double> %wide.load173.a, %wide.load175
  %i.fr = fsub <2 x double> %wide.load174.a, %wide.load176
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load171.a)
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load172.a)
  store <2 x double> %i.fs, ptr %i.fk, align 8, !tbaa !17, !alias.scope !86, !noalias !87
  store <2 x double> %i.ft, ptr %i.fl, align 8, !tbaa !17, !alias.scope !86, !noalias !87
  %index.next177 = add nuw i64 %index170, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next177, 1196
  br i1 %i.fu, label %scalar.ph163.prol, label %vector.body169, !llvm.loop !42

scalar.ph163.prol:                                ; preds = %vector.body169, %.preheader75.i
  %indvars.iv98.i.ph = phi i64 [ 1, %.preheader75.i ], [ 1197, %vector.body169 ] ; 3 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv98.i.ph ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !17
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv98.i.ph ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !17
  %i.fz = getelementptr i8, ptr %i.fx, i64 -8
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !17
  %i.gb = fsub double %i.fy, %i.ga
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double -5.000000e-01, double %i.fw)
  store double %i.gc, ptr %i.fv, align 8, !tbaa !17
  %indvars.iv.next99.i.prol = add nuw nsw i64 %indvars.iv98.i.ph, 1
  br label %scalar.ph163

scalar.ph163:                                     ; preds = %scalar.ph163, %scalar.ph163.prol
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i.prol, %scalar.ph163.prol ], [ %indvars.iv.next99.i.1, %scalar.ph163 ] ; 4 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv98.i ; 2 uses
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !17
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv98.i ; 2 uses
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !17
  %i.gh = getelementptr i8, ptr %i.gf, i64 -8
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !17
  %i.gj = fsub double %i.gg, %i.gi
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.gj, double -5.000000e-01, double %i.ge)
  store double %i.gk, ptr %i.gd, align 8, !tbaa !17
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.next99.i ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !17
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv.next99.i ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !17
  %i.gp = getelementptr i8, ptr %i.gn, i64 -8
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !17
  %i.gr = fsub double %i.go, %i.gq
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.gr, double -5.000000e-01, double %i.gm)
  store double %i.gs, ptr %i.gl, align 8, !tbaa !17
  %indvars.iv.next99.i.1 = add nuw nsw i64 %indvars.iv98.i, 2 ; 2 uses
  %exitcond101.not.i.1 = icmp eq i64 %indvars.iv.next99.i.1, 1200
  br i1 %exitcond101.not.i.1, label %.unr-lcssa, label %scalar.ph163, !llvm.loop !43

.unr-lcssa:                                       ; preds = %scalar.ph163
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 1000
  br i1 %exitcond105.not.i, label %.preheader.i60, label %.preheader75.i, !llvm.loop !44

.preheader.i60:                                   ; preds = %.unr-lcssa, %.unr-lcssa356
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %.unr-lcssa356 ], [ 0, %.unr-lcssa ] ; 4 uses
  %i.gt = getelementptr inbounds nuw [9600 x i8], ptr %i.u, i64 %indvars.iv110.i ; 4 uses
  %i.gu = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv110.i ; 8 uses
  %i.gv = getelementptr inbounds nuw [9600 x i8], ptr %i.o, i64 %indvars.iv110.i ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 9600 ; 4 uses
  br i1 %.not, label %vector.body140, label %scalar.ph133.prol

vector.body140:                                   ; preds = %.preheader.i60, %vector.body140
  %index141 = phi i64 [ %index.next151, %vector.body140 ], [ 0, %.preheader.i60 ] ; 6 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %index141 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gx, align 8, !tbaa !17, !alias.scope !88, !noalias !89
  %wide.load142 = load <2 x double>, ptr %i.gy, align 8, !tbaa !17, !alias.scope !88, !noalias !89
end_hunk_0
begin_hunk_1_@main:bb.a
  %wide.load148 = load <2 x double>, ptr %i.hh, align 8, !tbaa !17, !alias.scope !91
  %i.hi = fadd <2 x double> %i.he, %wide.load147
  %i.hj = fadd <2 x double> %i.hf, %wide.load148
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %index141 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %wide.load149 = load <2 x double>, ptr %i.hk, align 8, !tbaa !17, !alias.scope !91
  %wide.load150 = load <2 x double>, ptr %i.hl, align 8, !tbaa !17, !alias.scope !91
  %i.hm = fsub <2 x double> %i.hi, %wide.load149
  %i.hn = fsub <2 x double> %i.hj, %wide.load150
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hm, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load)
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load142)
  store <2 x double> %i.ho, ptr %i.gx, align 8, !tbaa !17, !alias.scope !88, !noalias !89
  store <2 x double> %i.hp, ptr %i.gy, align 8, !tbaa !17, !alias.scope !88, !noalias !89
  %index.next151 = add nuw i64 %index141, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next151, 1196
  br i1 %i.hq, label %scalar.ph133.prol, label %vector.body140, !llvm.loop !49

scalar.ph133.prol:                                ; preds = %vector.body140, %.preheader.i60
  %indvars.iv106.i.ph = phi i64 [ 0, %.preheader.i60 ], [ 1196, %vector.body140 ] ; 5 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv106.i.ph ; 2 uses
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !17
  %indvars.iv.next107.i.prol = or disjoint i64 %indvars.iv106.i.ph, 1 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next107.i.prol
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !17
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv106.i.ph
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !17
  %i.hx = fsub double %i.hu, %i.hw
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv106.i.ph
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !17
  %i.ia = fadd double %i.hx, %i.hz
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv106.i.ph
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !17
  %i.id = fsub double %i.ia, %i.ic
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double f0xBFE6666666666666, double %i.hs)
  store double %i.ie, ptr %i.hr, align 8, !tbaa !17
  br label %scalar.ph133

scalar.ph133:                                     ; preds = %scalar.ph133, %scalar.ph133.prol
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i.prol, %scalar.ph133.prol ], [ %indvars.iv.next107.i.1, %scalar.ph133 ] ; 6 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv106.i ; 2 uses
  %i.ig = load double, ptr %i.if, align 8, !tbaa !17
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 5 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next107.i
  %i.ii = load double, ptr %i.ih, align 8, !tbaa !17
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv106.i
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !17
  %i.il = fsub double %i.ii, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv106.i
  %i.in = load double, ptr %i.im, align 8, !tbaa !17
  %i.io = fadd double %i.il, %i.in
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv106.i
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !17
  %i.ir = fsub double %i.io, %i.iq
  %i.is = tail call double @llvm.fmuladd.f64(double %i.ir, double f0xBFE6666666666666, double %i.ig)
  store double %i.is, ptr %i.if, align 8, !tbaa !17
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv.next107.i ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !17
  %indvars.iv.next107.i.1 = add nuw nsw i64 %indvars.iv106.i, 2 ; 3 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next107.i.1
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !17
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %indvars.iv.next107.i
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !17
  %i.iz = fsub double %i.iw, %i.iy
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv.next107.i
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !17
  %i.jc = fadd double %i.iz, %i.jb
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next107.i
  %i.je = load double, ptr %i.jd, align 8, !tbaa !17
  %i.jf = fsub double %i.jc, %i.je
  %i.jg = tail call double @llvm.fmuladd.f64(double %i.jf, double f0xBFE6666666666666, double %i.iu)
  store double %i.jg, ptr %i.it, align 8, !tbaa !17
  %exitcond109.not.i.1 = icmp eq i64 %indvars.iv.next107.i.1, 1199
  br i1 %exitcond109.not.i.1, label %.unr-lcssa356, label %scalar.ph133, !llvm.loop !50

.unr-lcssa356:                                    ; preds = %scalar.ph133
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next111.i, 999
  br i1 %exitcond113.not.i, label %bb.i, label %.preheader.i60, !llvm.loop !51

bb.i:                                             ; preds = %.unr-lcssa356
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1 ; 2 uses
  %exitcond117.not.i = icmp eq i64 %indvars.iv.next115.i, 500
  br i1 %exitcond117.not.i, label %vector.body214, label %vector.ph205, !llvm.loop !52

vector.body214:                                   ; preds = %bb.i, %vector.body214.1
  %index215 = phi i64 [ %index.next218.1, %vector.body214.1 ], [ 0, %bb.i ] ; 4 uses
  %vec.ind216 = phi <2 x i32> [ %vec.ind.next219.1, %vector.body214.1 ], [ <i32 0, i32 1>, %bb.i ] ; 5 uses
  %step.add217 = add <2 x i32> %vec.ind216, splat (i32 2)
  %i.jh = uitofp nneg <2 x i32> %vec.ind216 to <2 x double>
  %i.ji = uitofp nneg <2 x i32> %step.add217 to <2 x double>
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index215 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store <2 x double> %i.jh, ptr %i.jj, align 8, !tbaa !17
  store <2 x double> %i.ji, ptr %i.jk, align 8, !tbaa !17
  %i.jl = icmp eq i64 %index215, 496
  br i1 %i.jl, label %.preheader.i64.preheader, label %vector.body214.1

vector.body214.1:                                 ; preds = %vector.body214
  %vec.ind.next219 = add <2 x i32> %vec.ind216, splat (i32 4)
  %step.add217.1 = add <2 x i32> %vec.ind216, splat (i32 6)
  %i.jm = uitofp nneg <2 x i32> %vec.ind.next219 to <2 x double>
  %i.jn = uitofp nneg <2 x i32> %step.add217.1 to <2 x double>
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index215 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 32
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 48
  store <2 x double> %i.jm, ptr %i.jp, align 8, !tbaa !17
  store <2 x double> %i.jn, ptr %i.jq, align 8, !tbaa !17
  %index.next218.1 = add nuw nsw i64 %index215, 8
  %vec.ind.next219.1 = add <2 x i32> %vec.ind216, splat (i32 8)
  br label %vector.body214

.preheader.i64.preheader:                         ; preds = %vector.body214
  %i.jr = sub i64 %i.ab, %i.ah
  %diff.check229 = icmp ugt i64 %i.jr, -16
  %i.js = sub i64 %i.ab, %i.an
  %diff.check230 = icmp ugt i64 %i.js, -16
  %conflict.rdx231 = or i1 %diff.check229, %diff.check230
  %i.jt = sub i64 %i.ah, %i.an
  %diff.check232 = icmp ugt i64 %i.jt, -16
  %conflict.rdx233 = or i1 %conflict.rdx231, %diff.check232
  br label %.preheader.i64

.preheader.i64:                                   ; preds = %.preheader.i64.preheader, %middle.block242
  %indvars.iv41.i65 = phi i64 [ %indvars.iv.next42.i69, %middle.block242 ], [ 0, %.preheader.i64.preheader ] ; 8 uses
  %i.ju = getelementptr inbounds nuw [9600 x i8], ptr %i.aa, i64 %indvars.iv41.i65 ; 2 uses
  %i.jv = getelementptr inbounds nuw [9600 x i8], ptr %i.ag, i64 %indvars.iv41.i65 ; 2 uses
  %i.jw = getelementptr inbounds nuw [9600 x i8], ptr %i.am, i64 %indvars.iv41.i65 ; 2 uses
  br i1 %conflict.rdx233, label %scalar.ph227, label %vector.ph234

vector.ph234:                                     ; preds = %.preheader.i64
  %broadcast.splatinsert235 = insertelement <2 x i64> poison, i64 %indvars.iv41.i65, i64 0
  %broadcast.splat236 = shufflevector <2 x i64> %broadcast.splatinsert235, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %vector.body237

vector.body237:                                   ; preds = %vector.body237, %vector.ph234
  %index238 = phi i64 [ 0, %vector.ph234 ], [ %index.next240, %vector.body237 ] ; 4 uses
  %vec.ind239 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph234 ], [ %vec.ind.next241, %vector.body237 ] ; 4 uses
  %i.jx = add nuw nsw <2 x i64> %vec.ind239, splat (i64 1)
  %i.jy = mul nuw nsw <2 x i64> %i.jx, %broadcast.splat236
  %i.jz = trunc nuw nsw <2 x i64> %i.jy to <2 x i32>
  %i.ka = uitofp nneg <2 x i32> %i.jz to <2 x double>
  %i.kb = fdiv <2 x double> %i.ka, splat (double 1.000000e+03)
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %index238
  store <2 x double> %i.kb, ptr %i.kc, align 8, !tbaa !17
  %i.kd = add nuw nsw <2 x i64> %vec.ind239, splat (i64 2)
  %i.ke = mul nuw nsw <2 x i64> %i.kd, %broadcast.splat236
  %i.kf = trunc nuw nsw <2 x i64> %i.ke to <2 x i32>
  %i.kg = uitofp nneg <2 x i32> %i.kf to <2 x double>
  %i.kh = fdiv <2 x double> %i.kg, splat (double 1.200000e+03)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %index238
  store <2 x double> %i.kh, ptr %i.ki, align 8, !tbaa !17
  %i.kj = add nuw nsw <2 x i64> %vec.ind239, splat (i64 3)
  %i.kk = mul nuw nsw <2 x i64> %i.kj, %broadcast.splat236
  %i.kl = trunc nuw nsw <2 x i64> %i.kk to <2 x i32>
  %i.km = uitofp nneg <2 x i32> %i.kl to <2 x double>
  %i.kn = fdiv <2 x double> %i.km, splat (double 1.000000e+03)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %index238
  store <2 x double> %i.kn, ptr %i.ko, align 8, !tbaa !17
  %index.next240 = add nuw i64 %index238, 2       ; 2 uses
  %vec.ind.next241 = add nuw nsw <2 x i64> %vec.ind239, splat (i64 2)
  %i.kp = icmp eq i64 %index.next240, 1200
  br i1 %i.kp, label %middle.block242, label %vector.body237, !llvm.loop !53

scalar.ph227:                                     ; preds = %.preheader.i64, %scalar.ph227
  %indvars.iv37.i66 = phi i64 [ %indvars.iv.next38.i67, %scalar.ph227 ], [ 0, %.preheader.i64 ] ; 6 uses
  %indvars.iv.next38.i67 = add nuw nsw i64 %indvars.iv37.i66, 1 ; 3 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %indvars.iv37.i66
  %i.kr = add nuw nsw i64 %indvars.iv37.i66, 2
  %i.ks = mul nuw nsw i64 %indvars.iv.next38.i67, %indvars.iv41.i65
  %i.kt = trunc nuw nsw i64 %i.ks to i32
  %i.ku = uitofp nneg i32 %i.kt to double
  %i.kv = mul nuw nsw i64 %i.kr, %indvars.iv41.i65
  %i.kw = trunc nuw nsw i64 %i.kv to i32
  %i.kx = uitofp nneg i32 %i.kw to double
  %i.ky = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %i.kx, i64 1
  %i.la = fdiv <2 x double> %i.kz, <double 1.000000e+03, double 1.200000e+03> ; 2 uses
  %i.lb = extractelement <2 x double> %i.la, i64 0
  store double %i.lb, ptr %i.kq, align 8, !tbaa !17
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv37.i66
  %i.ld = extractelement <2 x double> %i.la, i64 1
  store double %i.ld, ptr %i.lc, align 8, !tbaa !17
  %i.le = add nuw nsw i64 %indvars.iv37.i66, 3
  %i.lf = mul nuw nsw i64 %i.le, %indvars.iv41.i65
  %i.lg = trunc nuw nsw i64 %i.lf to i32
  %i.lh = uitofp nneg i32 %i.lg to double
  %i.li = fdiv double %i.lh, 1.000000e+03
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %indvars.iv37.i66
  store double %i.li, ptr %i.lj, align 8, !tbaa !17
  %exitcond40.not.i68 = icmp eq i64 %indvars.iv.next38.i67, 1200
  br i1 %exitcond40.not.i68, label %middle.block242, label %scalar.ph227, !llvm.loop !54

middle.block242:                                  ; preds = %vector.body237, %scalar.ph227
  %indvars.iv.next42.i69 = add nuw nsw i64 %indvars.iv41.i65, 1 ; 2 uses
  %exitcond44.not.i70 = icmp eq i64 %indvars.iv.next42.i69, 1000
  br i1 %exitcond44.not.i70, label %.preheader80.i72.preheader, label %.preheader.i64, !llvm.loop !31

.preheader80.i72.preheader:                       ; preds = %middle.block242
  %i.lk = insertelement <2 x ptr> poison, ptr %i.aa, i64 0
  %i.ll = insertelement <2 x ptr> %i.lk, ptr %i.ag, i64 1 ; 2 uses
  %i.lm = getelementptr i8, <2 x ptr> %i.ll, <2 x i64> <i64 9590400, i64 9599992>
  %scevgep256.a = getelementptr i8, ptr %i.am, i64 9590392
  %scevgep289.a = getelementptr i8, ptr %i.am, i64 9600000 ; 2 uses
  %scevgep290 = getelementptr i8, ptr %i.aa, i64 9600000
  %scevgep291 = getelementptr i8, ptr %i.aa, i64 8
  %scevgep315 = getelementptr i8, ptr %i.ag, i64 9600000
  %scevgep316 = getelementptr i8, ptr %i.ag, i64 9600
  %bound0319 = icmp ult ptr %scevgep316, %scevgep289.a
  %bound1320 = icmp ult ptr %i.am, %scevgep315
  %found.conflict321 = and i1 %bound0319, %bound1320
  %bound0294 = icmp ult ptr %scevgep291, %scevgep289.a
  %bound1295 = icmp ult ptr %i.am, %scevgep290
  %found.conflict296 = and i1 %bound0294, %bound1295
  %i.ln = insertelement <2 x ptr> poison, ptr %i.am, i64 0
  %i.lo = shufflevector <2 x ptr> %i.ln, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.lp = icmp ult <2 x ptr> %i.lo, %i.lm
  %i.lq = insertelement <2 x ptr> poison, ptr %scevgep256.a, i64 0
  %i.lr = shufflevector <2 x ptr> %i.lq, <2 x ptr> poison, <2 x i32> zeroinitializer
  %i.ls = icmp ult <2 x ptr> %i.ll, %i.lr
  %i.lt = and <2 x i1> %i.lp, %i.ls
  %i.lu = bitcast <2 x i1> %i.lt to i2
  %.not349 = icmp eq i2 %i.lu, 0
  br label %vector.ph334

vector.ph334:                                     ; preds = %bb.j, %.preheader80.i72.preheader
  %indvars.iv114.i73 = phi i64 [ %indvars.iv.next115.i99, %bb.j ], [ 0, %.preheader80.i72.preheader ] ; 2 uses
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv114.i73
  %.pre.i74 = load double, ptr %i.lv, align 8, !tbaa !17
  %broadcast.splatinsert335 = insertelement <2 x double> poison, double %.pre.i74, i64 0
  %broadcast.splat336 = shufflevector <2 x double> %broadcast.splatinsert335, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  br label %vector.body337

vector.body337:                                   ; preds = %vector.body337, %vector.ph334
  %index338 = phi i64 [ 0, %vector.ph334 ], [ %index.next339.5, %vector.body337 ] ; 7 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index338 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 16
  store <2 x double> %broadcast.splat336, ptr %i.lw, align 8, !tbaa !17
  store <2 x double> %broadcast.splat336, ptr %i.lx, align 8, !tbaa !17
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index338 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 48
  store <2 x double> %broadcast.splat336, ptr %i.lz, align 8, !tbaa !17
  store <2 x double> %broadcast.splat336, ptr %i.ma, align 8, !tbaa !17
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index338 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 64
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 80
  store <2 x double> %broadcast.splat336, ptr %i.mc, align 8, !tbaa !17
  store <2 x double> %broadcast.splat336, ptr %i.md, align 8, !tbaa !17
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index338 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 96
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 112
  store <2 x double> %broadcast.splat336, ptr %i.mf, align 8, !tbaa !17
  store <2 x double> %broadcast.splat336, ptr %i.mg, align 8, !tbaa !17
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index338 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 128
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 144
  store <2 x double> %broadcast.splat336, ptr %i.mi, align 8, !tbaa !17
  store <2 x double> %broadcast.splat336, ptr %i.mj, align 8, !tbaa !17
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index338 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 160
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 176
  store <2 x double> %broadcast.splat336, ptr %i.ml, align 8, !tbaa !17
  store <2 x double> %broadcast.splat336, ptr %i.mm, align 8, !tbaa !17
  %index.next339.5 = add nuw nsw i64 %index338, 24 ; 2 uses
  %i.mn = icmp eq i64 %index.next339.5, 1200
  br i1 %i.mn, label %.preheader76.i78, label %vector.body337, !llvm.loop !55

.preheader76.i78:                                 ; preds = %vector.body337, %middle.block332
  %indvars.iv94.i79 = phi i64 [ %indvars.iv.next95.i83, %middle.block332 ], [ 1, %vector.body337 ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [9600 x i8], ptr %i.ag, i64 %indvars.iv94.i79 ; 3 uses
  %i.mp = getelementptr inbounds nuw [9600 x i8], ptr %i.am, i64 %indvars.iv94.i79 ; 4 uses
  %i.mq = getelementptr i8, ptr %i.mp, i64 -9600  ; 3 uses
  br i1 %found.conflict321, label %scalar.ph317, label %vector.body323

vector.body323:                                   ; preds = %.preheader76.i78, %vector.body323
  %index324 = phi i64 [ %index.next331, %vector.body323 ], [ 0, %.preheader76.i78 ] ; 4 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %index324 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 16 ; 2 uses
  %wide.load325 = load <2 x double>, ptr %i.mr, align 8, !tbaa !17, !alias.scope !92, !noalias !93
  %wide.load326 = load <2 x double>, ptr %i.ms, align 8, !tbaa !17, !alias.scope !92, !noalias !93
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %index324 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %wide.load327 = load <2 x double>, ptr %i.mt, align 8, !tbaa !17, !alias.scope !93
  %wide.load328 = load <2 x double>, ptr %i.mu, align 8, !tbaa !17, !alias.scope !93
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %index324 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %wide.load329 = load <2 x double>, ptr %i.mv, align 8, !tbaa !17, !alias.scope !93
  %wide.load330 = load <2 x double>, ptr %i.mw, align 8, !tbaa !17, !alias.scope !93
  %i.mx = fsub <2 x double> %wide.load327, %wide.load329
  %i.my = fsub <2 x double> %wide.load328, %wide.load330
  %i.mz = fmul <2 x double> %i.mx, splat (double 5.000000e-01)
  %i.na = fmul <2 x double> %i.my, splat (double 5.000000e-01)
  %i.nb = fsub <2 x double> %wide.load325, %i.mz
  %i.nc = fsub <2 x double> %wide.load326, %i.na
  store <2 x double> %i.nb, ptr %i.mr, align 8, !tbaa !17, !alias.scope !92, !noalias !93
  store <2 x double> %i.nc, ptr %i.ms, align 8, !tbaa !17, !alias.scope !92, !noalias !93
  %index.next331 = add nuw i64 %index324, 4       ; 2 uses
  %i.nd = icmp eq i64 %index.next331, 1200
  br i1 %i.nd, label %middle.block332, label %vector.body323, !llvm.loop !59

scalar.ph317:                                     ; preds = %.preheader76.i78, %scalar.ph317
  %indvars.iv90.i80 = phi i64 [ %indvars.iv.next91.i81.1, %scalar.ph317 ], [ 0, %.preheader76.i78 ] ; 5 uses
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv90.i80 ; 2 uses
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !17
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv90.i80
  %i.nh = load double, ptr %i.ng, align 8, !tbaa !17
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv90.i80
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !17
  %i.nk = fsub double %i.nh, %i.nj
  %i.nl = fmul double %i.nk, 5.000000e-01
  %i.nm = fsub double %i.nf, %i.nl
  store double %i.nm, ptr %i.ne, align 8, !tbaa !17
  %indvars.iv.next91.i81 = or disjoint i64 %indvars.iv90.i80, 1 ; 3 uses
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.mo, i64 %indvars.iv.next91.i81 ; 2 uses
  %i.no = load double, ptr %i.nn, align 8, !tbaa !17
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %indvars.iv.next91.i81
  %i.nq = load double, ptr %i.np, align 8, !tbaa !17
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %i.mq, i64 %indvars.iv.next91.i81
  %i.ns = load double, ptr %i.nr, align 8, !tbaa !17
  %i.nt = fsub double %i.nq, %i.ns
  %i.nu = fmul double %i.nt, 5.000000e-01
  %i.nv = fsub double %i.no, %i.nu
  store double %i.nv, ptr %i.nn, align 8, !tbaa !17
  %indvars.iv.next91.i81.1 = add nuw nsw i64 %indvars.iv90.i80, 2 ; 2 uses
  %exitcond93.not.i82.1 = icmp eq i64 %indvars.iv.next91.i81.1, 1200
  br i1 %exitcond93.not.i82.1, label %middle.block332, label %scalar.ph317, !llvm.loop !60

middle.block332:                                  ; preds = %vector.body323, %scalar.ph317
  %indvars.iv.next95.i83 = add nuw nsw i64 %indvars.iv94.i79, 1 ; 2 uses
  %exitcond97.not.i84 = icmp eq i64 %indvars.iv.next95.i83, 1000
  br i1 %exitcond97.not.i84, label %.preheader75.i85, label %.preheader76.i78, !llvm.loop !61

.preheader75.i85:                                 ; preds = %middle.block332, %.unr-lcssa359
  %indvars.iv102.i86 = phi i64 [ %indvars.iv.next103.i90, %.unr-lcssa359 ], [ 0, %middle.block332 ] ; 3 uses
  %i.nw = getelementptr inbounds nuw [9600 x i8], ptr %i.aa, i64 %indvars.iv102.i86 ; 4 uses
  %i.nx = getelementptr inbounds nuw [9600 x i8], ptr %i.am, i64 %indvars.iv102.i86 ; 4 uses
  br i1 %found.conflict296, label %scalar.ph292.prol, label %vector.body298

vector.body298:                                   ; preds = %.preheader75.i85, %vector.body298
  %index299 = phi i64 [ %index.next306, %vector.body298 ], [ 0, %.preheader75.i85 ] ; 2 uses
  %i.ny = or disjoint i64 %index299, 1            ; 2 uses
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.ny ; 3 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16 ; 2 uses
  %wide.load300.a = load <2 x double>, ptr %i.nz, align 8, !tbaa !17, !alias.scope !94, !noalias !95
  %wide.load301.a = load <2 x double>, ptr %i.oa, align 8, !tbaa !17, !alias.scope !94, !noalias !95
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.ny ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %wide.load302.a = load <2 x double>, ptr %i.ob, align 8, !tbaa !17, !alias.scope !95
  %wide.load303.a = load <2 x double>, ptr %i.oc, align 8, !tbaa !17, !alias.scope !95
  %i.od = getelementptr i8, ptr %i.ob, i64 -8
  %i.oe = getelementptr i8, ptr %i.ob, i64 8
  %wide.load304 = load <2 x double>, ptr %i.od, align 8, !tbaa !17, !alias.scope !95
  %wide.load305 = load <2 x double>, ptr %i.oe, align 8, !tbaa !17, !alias.scope !95
  %i.of = fsub <2 x double> %wide.load302.a, %wide.load304
  %i.og = fsub <2 x double> %wide.load303.a, %wide.load305
  %i.oh = fmul <2 x double> %i.of, splat (double 5.000000e-01)
  %i.oi = fmul <2 x double> %i.og, splat (double 5.000000e-01)
  %i.oj = fsub <2 x double> %wide.load300.a, %i.oh
  %i.ok = fsub <2 x double> %wide.load301.a, %i.oi
  store <2 x double> %i.oj, ptr %i.nz, align 8, !tbaa !17, !alias.scope !94, !noalias !95
  store <2 x double> %i.ok, ptr %i.oa, align 8, !tbaa !17, !alias.scope !94, !noalias !95
  %index.next306 = add nuw i64 %index299, 4       ; 2 uses
  %i.ol = icmp eq i64 %index.next306, 1196
  br i1 %i.ol, label %scalar.ph292.prol, label %vector.body298, !llvm.loop !65

scalar.ph292.prol:                                ; preds = %vector.body298, %.preheader75.i85
  %indvars.iv98.i87.ph = phi i64 [ 1, %.preheader75.i85 ], [ 1197, %vector.body298 ] ; 3 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv98.i87.ph ; 2 uses
  %i.on = load double, ptr %i.om, align 8, !tbaa !17
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv98.i87.ph ; 2 uses
  %i.op = load double, ptr %i.oo, align 8, !tbaa !17
  %i.oq = getelementptr i8, ptr %i.oo, i64 -8
  %i.or = load double, ptr %i.oq, align 8, !tbaa !17
  %i.os = fsub double %i.op, %i.or
  %i.ot = fmul double %i.os, 5.000000e-01
  %i.ou = fsub double %i.on, %i.ot
  store double %i.ou, ptr %i.om, align 8, !tbaa !17
  %indvars.iv.next99.i88.prol = add nuw nsw i64 %indvars.iv98.i87.ph, 1
  br label %scalar.ph292

scalar.ph292:                                     ; preds = %scalar.ph292, %scalar.ph292.prol
  %indvars.iv98.i87 = phi i64 [ %indvars.iv.next99.i88.prol, %scalar.ph292.prol ], [ %indvars.iv.next99.i88.1, %scalar.ph292 ] ; 4 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv98.i87 ; 2 uses
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !17
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv98.i87 ; 2 uses
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !17
  %i.oz = getelementptr i8, ptr %i.ox, i64 -8
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !17
  %i.pb = fsub double %i.oy, %i.pa
  %i.pc = fmul double %i.pb, 5.000000e-01
  %i.pd = fsub double %i.ow, %i.pc
  store double %i.pd, ptr %i.ov, align 8, !tbaa !17
  %indvars.iv.next99.i88 = add nuw nsw i64 %indvars.iv98.i87, 1 ; 2 uses
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %indvars.iv.next99.i88 ; 2 uses
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !17
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %indvars.iv.next99.i88 ; 2 uses
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !17
  %i.pi = getelementptr i8, ptr %i.pg, i64 -8
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !17
  %i.pk = fsub double %i.ph, %i.pj
  %i.pl = fmul double %i.pk, 5.000000e-01
  %i.pm = fsub double %i.pf, %i.pl
  store double %i.pm, ptr %i.pe, align 8, !tbaa !17
  %indvars.iv.next99.i88.1 = add nuw nsw i64 %indvars.iv98.i87, 2 ; 2 uses
  %exitcond101.not.i89.1 = icmp eq i64 %indvars.iv.next99.i88.1, 1200
  br i1 %exitcond101.not.i89.1, label %.unr-lcssa359, label %scalar.ph292, !llvm.loop !66

.unr-lcssa359:                                    ; preds = %scalar.ph292
  %indvars.iv.next103.i90 = add nuw nsw i64 %indvars.iv102.i86, 1 ; 2 uses
  %exitcond105.not.i91 = icmp eq i64 %indvars.iv.next103.i90, 1000
  br i1 %exitcond105.not.i91, label %.preheader.i92, label %.preheader75.i85, !llvm.loop !67

.preheader.i92:                                   ; preds = %.unr-lcssa359, %.unr-lcssa362
  %indvars.iv110.i93 = phi i64 [ %indvars.iv.next111.i97, %.unr-lcssa362 ], [ 0, %.unr-lcssa359 ] ; 4 uses
  %i.pn = getelementptr inbounds nuw [9600 x i8], ptr %i.am, i64 %indvars.iv110.i93 ; 4 uses
  %i.po = getelementptr inbounds nuw [9600 x i8], ptr %i.aa, i64 %indvars.iv110.i93 ; 8 uses
  %i.pp = getelementptr inbounds nuw [9600 x i8], ptr %i.ag, i64 %indvars.iv110.i93 ; 5 uses
end_hunk_1
