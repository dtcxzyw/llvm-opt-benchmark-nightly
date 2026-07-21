inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
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
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store ptr null, ptr %i.g, align 8, !tbaa !10
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.g, i64 noundef 4096, i64 noundef 9600000) #12
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !10   ; 10 uses
  %i.j = ptrtoaddr ptr %i.i to i64                ; 2 uses
  %i.k = icmp eq ptr %i.i, null
  %i.l = icmp ne i32 %i.h, 0
  %or.cond.i.i = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.n = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.m) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8, !tbaa !10
  %i.o = call i32 @posix_memalign(ptr noundef nonnull %i.f, i64 noundef 4096, i64 noundef 9600000) #12
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !10   ; 16 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 2 uses
  %i.r = icmp eq ptr %i.p, null
  %i.s = icmp ne i32 %i.o, 0
  %or.cond.i.i39 = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond.i.i39, label %bb.c, label %polybench_alloc_data.exit40

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.u = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.t) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit40:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !10
  %i.v = call i32 @posix_memalign(ptr noundef nonnull %i.e, i64 noundef 4096, i64 noundef 9600000) #12
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !10   ; 13 uses
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  %i.y = icmp eq ptr %i.w, null
  %i.z = icmp ne i32 %i.v, 0
  %or.cond.i.i41 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i.i41, label %bb.d, label %polybench_alloc_data.exit42

bb.d:                                             ; preds = %polybench_alloc_data.exit40
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ab = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.aa) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit42:                      ; preds = %polybench_alloc_data.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.ac = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 9600000) #12
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !10  ; 11 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %i.af = icmp eq ptr %i.ad, null
  %i.ag = icmp ne i32 %i.ac, 0
  %or.cond.i.i43 = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond.i.i43, label %bb.e, label %polybench_alloc_data.exit44

bb.e:                                             ; preds = %polybench_alloc_data.exit42
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ai = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ah) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit44:                      ; preds = %polybench_alloc_data.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.aj = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 9600000) #12
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !10  ; 17 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 2 uses
  %i.am = icmp eq ptr %i.ak, null
  %i.an = icmp ne i32 %i.aj, 0
  %or.cond.i.i45 = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.i.i45, label %bb.f, label %polybench_alloc_data.exit46

bb.f:                                             ; preds = %polybench_alloc_data.exit44
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ap = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.ao) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit46:                      ; preds = %polybench_alloc_data.exit44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.aq = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 9600000) #12
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !10  ; 14 uses
  %i.as = ptrtoaddr ptr %i.ar to i64              ; 2 uses
  %i.at = icmp eq ptr %i.ar, null
  %i.au = icmp ne i32 %i.aq, 0
  %or.cond.i.i47 = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond.i.i47, label %bb.g, label %polybench_alloc_data.exit48

bb.g:                                             ; preds = %polybench_alloc_data.exit46
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.aw = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.av) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit48:                      ; preds = %polybench_alloc_data.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.ax = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 4000) #12
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !10  ; 8 uses
  %i.az = icmp eq ptr %i.ay, null
  %i.ba = icmp ne i32 %i.ax, 0
  %or.cond.i.i49 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond.i.i49, label %bb.h, label %polybench_alloc_data.exit50

bb.h:                                             ; preds = %polybench_alloc_data.exit48
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.bc = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.bb) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit50:                      ; preds = %polybench_alloc_data.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %polybench_alloc_data.exit50
  %index = phi i64 [ 0, %polybench_alloc_data.exit50 ], [ %index.next.1, %vector.body.1 ] ; 4 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %polybench_alloc_data.exit50 ], [ %vec.ind.next.1, %vector.body.1 ] ; 5 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.bd = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.be = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <2 x double> %i.bd, ptr %i.bf, align 8, !tbaa !8
  store <2 x double> %i.be, ptr %i.bg, align 8, !tbaa !8
  %i.bh = icmp eq i64 %index, 496
  br i1 %i.bh, label %.preheader.i.preheader, label %vector.body.1

vector.body.1:                                    ; preds = %vector.body
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %step.add.1 = add <2 x i32> %vec.ind, splat (i32 6)
  %i.bi = uitofp nneg <2 x i32> %vec.ind.next to <2 x double>
  %i.bj = uitofp nneg <2 x i32> %step.add.1 to <2 x double>
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store <2 x double> %i.bi, ptr %i.bl, align 8, !tbaa !8
  store <2 x double> %i.bj, ptr %i.bm, align 8, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 8
  %vec.ind.next.1 = add <2 x i32> %vec.ind, splat (i32 8)
  br label %vector.body

.preheader.i.preheader:                           ; preds = %vector.body
  %i.bn = sub i64 %i.j, %i.q
  %diff.check = icmp ugt i64 %i.bn, -16
  %i.bo = sub i64 %i.j, %i.x
  %diff.check105 = icmp ugt i64 %i.bo, -16
  %conflict.rdx = or i1 %diff.check, %diff.check105
  %i.bp = sub i64 %i.q, %i.x
  %diff.check106 = icmp ugt i64 %i.bp, -16
  %conflict.rdx107 = or i1 %conflict.rdx, %diff.check106
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %middle.block114
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %middle.block114 ], [ 0, %.preheader.i.preheader ] ; 8 uses
  %i.bq = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv41.i ; 2 uses
  %i.br = getelementptr inbounds nuw [9600 x i8], ptr %i.p, i64 %indvars.iv41.i ; 2 uses
  %i.bs = getelementptr inbounds nuw [9600 x i8], ptr %i.w, i64 %indvars.iv41.i ; 2 uses
  br i1 %conflict.rdx107, label %scalar.ph, label %vector.ph108

vector.ph108:                                     ; preds = %.preheader.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv41.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph108
  %index110 = phi i64 [ 0, %vector.ph108 ], [ %index.next112, %vector.body109 ] ; 4 uses
  %vec.ind111 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph108 ], [ %vec.ind.next113, %vector.body109 ] ; 4 uses
  %i.bt = add nuw nsw <2 x i64> %vec.ind111, splat (i64 1)
  %i.bu = mul nuw nsw <2 x i64> %i.bt, %broadcast.splat
  %i.bv = trunc nuw nsw <2 x i64> %i.bu to <2 x i32>
  %i.bw = uitofp nneg <2 x i32> %i.bv to <2 x double>
  %i.bx = fdiv <2 x double> %i.bw, splat (double 1.000000e+03)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index110
  store <2 x double> %i.bx, ptr %i.by, align 8, !tbaa !8
  %i.bz = add nuw nsw <2 x i64> %vec.ind111, splat (i64 2)
  %i.ca = mul nuw nsw <2 x i64> %i.bz, %broadcast.splat
  %i.cb = trunc nuw nsw <2 x i64> %i.ca to <2 x i32>
  %i.cc = uitofp nneg <2 x i32> %i.cb to <2 x double>
  %i.cd = fdiv <2 x double> %i.cc, splat (double 1.200000e+03)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %index110
  store <2 x double> %i.cd, ptr %i.ce, align 8, !tbaa !8
  %i.cf = add nuw nsw <2 x i64> %vec.ind111, splat (i64 3)
  %i.cg = mul nuw nsw <2 x i64> %i.cf, %broadcast.splat
  %i.ch = trunc nuw nsw <2 x i64> %i.cg to <2 x i32>
  %i.ci = uitofp nneg <2 x i32> %i.ch to <2 x double>
  %i.cj = fdiv <2 x double> %i.ci, splat (double 1.000000e+03)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %index110
  store <2 x double> %i.cj, ptr %i.ck, align 8, !tbaa !8
  %index.next112 = add nuw i64 %index110, 2       ; 2 uses
  %vec.ind.next113 = add nuw nsw <2 x i64> %vec.ind111, splat (i64 2)
  %i.cl = icmp eq i64 %index.next112, 1200
  br i1 %i.cl, label %middle.block114, label %vector.body109, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %scalar.ph ], [ 0, %.preheader.i ] ; 6 uses
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv37.i
  %i.cn = add nuw nsw i64 %indvars.iv37.i, 2
  %i.co = mul nuw nsw i64 %i.cn, %indvars.iv41.i
  %i.cp = mul nuw nsw i64 %indvars.iv.next38.i, %indvars.iv41.i
  %i.cq = trunc nuw nsw i64 %i.co to i32
  %i.cr = trunc nuw nsw i64 %i.cp to i32
  %i.cs = uitofp nneg i32 %i.cq to double
  %i.ct = uitofp nneg i32 %i.cr to double
  %i.cu = insertelement <2 x double> poison, double %i.ct, i64 0
  %i.cv = insertelement <2 x double> %i.cu, double %i.cs, i64 1
  %i.cw = fdiv <2 x double> %i.cv, <double 1.000000e+03, double 1.200000e+03> ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  store double %i.cx, ptr %i.cm, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv37.i
  %i.cz = extractelement <2 x double> %i.cw, i64 1
  store double %i.cz, ptr %i.cy, align 8, !tbaa !8
  %i.da = add nuw nsw i64 %indvars.iv37.i, 3
  %i.db = mul nuw nsw i64 %i.da, %indvars.iv41.i
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = uitofp nneg i32 %i.dc to double
  %i.de = fdiv double %i.dd, 1.000000e+03
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv37.i
  store double %i.de, ptr %i.df, align 8, !tbaa !8
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next38.i, 1200
  br i1 %exitcond40.not.i, label %middle.block114, label %scalar.ph, !llvm.loop !18

middle.block114:                                  ; preds = %vector.body109, %scalar.ph
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond44.not.i = icmp eq i64 %indvars.iv.next42.i, 1000
  br i1 %exitcond44.not.i, label %.preheader80.i.preheader, label %.preheader.i, !llvm.loop !19

.preheader80.i.preheader:                         ; preds = %middle.block114
  %scevgep = getelementptr i8, ptr %i.w, i64 9590392 ; 2 uses
  %scevgep116 = getelementptr i8, ptr %i.i, i64 9590400
  %scevgep117 = getelementptr i8, ptr %i.p, i64 9599992
  %scevgep138 = getelementptr i8, ptr %i.i, i64 8
  %scevgep139 = getelementptr i8, ptr %i.i, i64 9600000
  %scevgep140 = getelementptr i8, ptr %i.w, i64 9600000 ; 2 uses
  %scevgep158 = getelementptr i8, ptr %i.p, i64 9600
  %scevgep159 = getelementptr i8, ptr %i.p, i64 9600000
  %bound0160 = icmp ult ptr %scevgep158, %scevgep140
  %bound1161 = icmp ult ptr %i.w, %scevgep159
  %found.conflict162 = and i1 %bound0160, %bound1161
  %bound0141 = icmp ult ptr %scevgep138, %scevgep140
  %bound1142 = icmp ult ptr %i.w, %scevgep139
  %found.conflict143 = and i1 %bound0141, %bound1142
  %bound0 = icmp ult ptr %i.w, %scevgep116
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0118 = icmp ult ptr %i.w, %scevgep117
  %bound1119 = icmp ult ptr %i.p, %scevgep
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %found.conflict, %found.conflict120
  br label %vector.ph176

vector.ph176:                                     ; preds = %bb.i, %.preheader80.i.preheader
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %bb.i ], [ 0, %.preheader80.i.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv114.i
  %.pre.i = load double, ptr %i.dg, align 8, !tbaa !8
  %broadcast.splatinsert177 = insertelement <2 x double> poison, double %.pre.i, i64 0
  %broadcast.splat178 = shufflevector <2 x double> %broadcast.splatinsert177, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph176
  %index180 = phi i64 [ 0, %vector.ph176 ], [ %index.next181.5, %vector.body179 ] ; 7 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index180 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <2 x double> %broadcast.splat178, ptr %i.dh, align 8, !tbaa !8
  store <2 x double> %broadcast.splat178, ptr %i.di, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index180 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  store <2 x double> %broadcast.splat178, ptr %i.dk, align 8, !tbaa !8
  store <2 x double> %broadcast.splat178, ptr %i.dl, align 8, !tbaa !8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index180 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 80
  store <2 x double> %broadcast.splat178, ptr %i.dn, align 8, !tbaa !8
  store <2 x double> %broadcast.splat178, ptr %i.do, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index180 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 96
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 112
  store <2 x double> %broadcast.splat178, ptr %i.dq, align 8, !tbaa !8
  store <2 x double> %broadcast.splat178, ptr %i.dr, align 8, !tbaa !8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index180 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 128
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 144
  store <2 x double> %broadcast.splat178, ptr %i.dt, align 8, !tbaa !8
  store <2 x double> %broadcast.splat178, ptr %i.du, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index180 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 160
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 176
  store <2 x double> %broadcast.splat178, ptr %i.dw, align 8, !tbaa !8
  store <2 x double> %broadcast.splat178, ptr %i.dx, align 8, !tbaa !8
  %index.next181.5 = add nuw nsw i64 %index180, 24 ; 2 uses
  %i.dy = icmp eq i64 %index.next181.5, 1200
  br i1 %i.dy, label %.preheader76.i, label %vector.body179, !llvm.loop !20

.preheader76.i:                                   ; preds = %vector.body179, %middle.block174
  %indvars.iv94.i = phi i64 [ %indvars.iv.next95.i, %middle.block174 ], [ 1, %vector.body179 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [9600 x i8], ptr %i.p, i64 %indvars.iv94.i ; 3 uses
  %i.ea = getelementptr inbounds nuw [9600 x i8], ptr %i.w, i64 %indvars.iv94.i ; 4 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 -9600  ; 3 uses
  br i1 %found.conflict162, label %scalar.ph163, label %vector.body165

vector.body165:                                   ; preds = %.preheader76.i, %vector.body165
  %index166 = phi i64 [ %index.next173, %vector.body165 ], [ 0, %.preheader76.i ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index166 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %wide.load167 = load <2 x double>, ptr %i.ec, align 8, !tbaa !8, !alias.scope !21, !noalias !24
  %wide.load168 = load <2 x double>, ptr %i.ed, align 8, !tbaa !8, !alias.scope !21, !noalias !24
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %index166 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load169 = load <2 x double>, ptr %i.ee, align 8, !tbaa !8, !alias.scope !24
  %wide.load170 = load <2 x double>, ptr %i.ef, align 8, !tbaa !8, !alias.scope !24
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index166 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load171 = load <2 x double>, ptr %i.eg, align 8, !tbaa !8, !alias.scope !24
  %wide.load172 = load <2 x double>, ptr %i.eh, align 8, !tbaa !8, !alias.scope !24
  %i.ei = fsub <2 x double> %wide.load169, %wide.load171
  %i.ej = fsub <2 x double> %wide.load170, %wide.load172
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load167)
  %i.el = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load168)
  store <2 x double> %i.ek, ptr %i.ec, align 8, !tbaa !8, !alias.scope !21, !noalias !24
  store <2 x double> %i.el, ptr %i.ed, align 8, !tbaa !8, !alias.scope !21, !noalias !24
  %index.next173 = add nuw i64 %index166, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next173, 1200
  br i1 %i.em, label %middle.block174, label %vector.body165, !llvm.loop !26

scalar.ph163:                                     ; preds = %.preheader76.i, %scalar.ph163
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i.1, %scalar.ph163 ], [ 0, %.preheader76.i ] ; 5 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv90.i ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv90.i
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv90.i
  %i.es = load double, ptr %i.er, align 8, !tbaa !8
  %i.et = fsub double %i.eq, %i.es
  %i.eu = call double @llvm.fmuladd.f64(double %i.et, double -5.000000e-01, double %i.eo)
  store double %i.eu, ptr %i.en, align 8, !tbaa !8
  %indvars.iv.next91.i = or disjoint i64 %indvars.iv90.i, 1 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next91.i ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !8
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next91.i
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.next91.i
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !8
  %i.fb = fsub double %i.ey, %i.fa
  %i.fc = call double @llvm.fmuladd.f64(double %i.fb, double -5.000000e-01, double %i.ew)
  store double %i.fc, ptr %i.ev, align 8, !tbaa !8
  %indvars.iv.next91.i.1 = add nuw nsw i64 %indvars.iv90.i, 2 ; 2 uses
  %exitcond93.not.i.1 = icmp eq i64 %indvars.iv.next91.i.1, 1200
  br i1 %exitcond93.not.i.1, label %middle.block174, label %scalar.ph163, !llvm.loop !27

middle.block174:                                  ; preds = %vector.body165, %scalar.ph163
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1 ; 2 uses
  %exitcond97.not.i = icmp eq i64 %indvars.iv.next95.i, 1000
  br i1 %exitcond97.not.i, label %.preheader75.i, label %.preheader76.i, !llvm.loop !28

.preheader75.i:                                   ; preds = %middle.block174, %.unr-lcssa
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %.unr-lcssa ], [ 0, %middle.block174 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv102.i ; 4 uses
  %i.fe = getelementptr inbounds nuw [9600 x i8], ptr %i.w, i64 %indvars.iv102.i ; 4 uses
  br i1 %found.conflict143, label %scalar.ph144.prol, label %vector.body146

vector.body146:                                   ; preds = %.preheader75.i, %vector.body146
  %index147 = phi i64 [ %index.next154, %vector.body146 ], [ 0, %.preheader75.i ] ; 2 uses
  %i.ff = or disjoint i64 %index147, 1            ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %wide.load148 = load <2 x double>, ptr %i.fg, align 8, !tbaa !8, !alias.scope !29, !noalias !32
  %wide.load149 = load <2 x double>, ptr %i.fh, align 8, !tbaa !8, !alias.scope !29, !noalias !32
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ff ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %wide.load150 = load <2 x double>, ptr %i.fi, align 8, !tbaa !8, !alias.scope !32
  %wide.load151 = load <2 x double>, ptr %i.fj, align 8, !tbaa !8, !alias.scope !32
  %i.fk = getelementptr i8, ptr %i.fi, i64 -8
  %i.fl = getelementptr i8, ptr %i.fi, i64 8
  %wide.load152 = load <2 x double>, ptr %i.fk, align 8, !tbaa !8, !alias.scope !32
  %wide.load153 = load <2 x double>, ptr %i.fl, align 8, !tbaa !8, !alias.scope !32
  %i.fm = fsub <2 x double> %wide.load150, %wide.load152
  %i.fn = fsub <2 x double> %wide.load151, %wide.load153
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load148)
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> splat (double -5.000000e-01), <2 x double> %wide.load149)
  store <2 x double> %i.fo, ptr %i.fg, align 8, !tbaa !8, !alias.scope !29, !noalias !32
  store <2 x double> %i.fp, ptr %i.fh, align 8, !tbaa !8, !alias.scope !29, !noalias !32
  %index.next154 = add nuw i64 %index147, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next154, 1196
  br i1 %i.fq, label %scalar.ph144.prol, label %vector.body146, !llvm.loop !34

scalar.ph144.prol:                                ; preds = %vector.body146, %.preheader75.i
  %indvars.iv98.i.ph = phi i64 [ 1, %.preheader75.i ], [ 1197, %vector.body146 ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv98.i.ph ; 2 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv98.i.ph ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !8
  %i.fv = getelementptr i8, ptr %i.ft, i64 -8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !8
  %i.fx = fsub double %i.fu, %i.fw
  %i.fy = call double @llvm.fmuladd.f64(double %i.fx, double -5.000000e-01, double %i.fs)
  store double %i.fy, ptr %i.fr, align 8, !tbaa !8
  %indvars.iv.next99.i.prol = add nuw nsw i64 %indvars.iv98.i.ph, 1
  br label %scalar.ph144

scalar.ph144:                                     ; preds = %scalar.ph144, %scalar.ph144.prol
  %indvars.iv98.i = phi i64 [ %indvars.iv.next99.i.prol, %scalar.ph144.prol ], [ %indvars.iv.next99.i.1, %scalar.ph144 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv98.i ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !8
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv98.i ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !8
  %i.gd = getelementptr i8, ptr %i.gb, i64 -8
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !8
  %i.gf = fsub double %i.gc, %i.ge
  %i.gg = call double @llvm.fmuladd.f64(double %i.gf, double -5.000000e-01, double %i.ga)
  store double %i.gg, ptr %i.fz, align 8, !tbaa !8
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv.next99.i ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !8
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.next99.i ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !8
  %i.gl = getelementptr i8, ptr %i.gj, i64 -8
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !8
  %i.gn = fsub double %i.gk, %i.gm
  %i.go = call double @llvm.fmuladd.f64(double %i.gn, double -5.000000e-01, double %i.gi)
  store double %i.go, ptr %i.gh, align 8, !tbaa !8
  %indvars.iv.next99.i.1 = add nuw nsw i64 %indvars.iv98.i, 2 ; 2 uses
  %exitcond101.not.i.1 = icmp eq i64 %indvars.iv.next99.i.1, 1200
  br i1 %exitcond101.not.i.1, label %.unr-lcssa, label %scalar.ph144, !llvm.loop !35

.unr-lcssa:                                       ; preds = %scalar.ph144
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 1000
  br i1 %exitcond105.not.i, label %.preheader.i54, label %.preheader75.i, !llvm.loop !36

.preheader.i54:                                   ; preds = %.unr-lcssa, %.unr-lcssa291
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %.unr-lcssa291 ], [ 0, %.unr-lcssa ] ; 4 uses
  %i.gp = getelementptr inbounds nuw [9600 x i8], ptr %i.w, i64 %indvars.iv110.i ; 4 uses
  %i.gq = getelementptr inbounds nuw [9600 x i8], ptr %i.i, i64 %indvars.iv110.i ; 8 uses
  %i.gr = getelementptr inbounds nuw [9600 x i8], ptr %i.p, i64 %indvars.iv110.i ; 5 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 9600 ; 4 uses
  br i1 %conflict.rdx121, label %scalar.ph122.prol, label %vector.body124

vector.body124:                                   ; preds = %.preheader.i54, %vector.body124
  %index125 = phi i64 [ %index.next135, %vector.body124 ], [ 0, %.preheader.i54 ] ; 6 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %index125 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gt, align 8, !tbaa !8, !alias.scope !37, !noalias !40
  %wide.load126 = load <2 x double>, ptr %i.gu, align 8, !tbaa !8, !alias.scope !37, !noalias !40
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %index125 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %wide.load127 = load <2 x double>, ptr %i.gw, align 8, !tbaa !8, !alias.scope !43
  %wide.load128 = load <2 x double>, ptr %i.gx, align 8, !tbaa !8, !alias.scope !43
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %index125 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load129 = load <2 x double>, ptr %i.gy, align 8, !tbaa !8, !alias.scope !43
  %wide.load130 = load <2 x double>, ptr %i.gz, align 8, !tbaa !8, !alias.scope !43
  %i.ha = fsub <2 x double> %wide.load127, %wide.load129
  %i.hb = fsub <2 x double> %wide.load128, %wide.load130
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %index125 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %wide.load131 = load <2 x double>, ptr %i.hc, align 8, !tbaa !8, !alias.scope !44
  %wide.load132 = load <2 x double>, ptr %i.hd, align 8, !tbaa !8, !alias.scope !44
  %i.he = fadd <2 x double> %i.ha, %wide.load131
  %i.hf = fadd <2 x double> %i.hb, %wide.load132
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %index125 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %wide.load133 = load <2 x double>, ptr %i.hg, align 8, !tbaa !8, !alias.scope !44
  %wide.load134 = load <2 x double>, ptr %i.hh, align 8, !tbaa !8, !alias.scope !44
  %i.hi = fsub <2 x double> %i.he, %wide.load133
  %i.hj = fsub <2 x double> %i.hf, %wide.load134
  %i.hk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load)
  %i.hl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> splat (double f0xBFE6666666666666), <2 x double> %wide.load126)
  store <2 x double> %i.hk, ptr %i.gt, align 8, !tbaa !8, !alias.scope !37, !noalias !40
  store <2 x double> %i.hl, ptr %i.gu, align 8, !tbaa !8, !alias.scope !37, !noalias !40
  %index.next135 = add nuw i64 %index125, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next135, 1196
  br i1 %i.hm, label %scalar.ph122.prol, label %vector.body124, !llvm.loop !45

scalar.ph122.prol:                                ; preds = %vector.body124, %.preheader.i54
  %indvars.iv106.i.ph = phi i64 [ 0, %.preheader.i54 ], [ 1196, %vector.body124 ] ; 5 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv106.i.ph ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !8
  %indvars.iv.next107.i.prol = or disjoint i64 %indvars.iv106.i.ph, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next107.i.prol
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !8
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv106.i.ph
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !8
  %i.ht = fsub double %i.hq, %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv106.i.ph
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !8
  %i.hw = fadd double %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv106.i.ph
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !8
  %i.hz = fsub double %i.hw, %i.hy
  %i.ia = call double @llvm.fmuladd.f64(double %i.hz, double f0xBFE6666666666666, double %i.ho)
  store double %i.ia, ptr %i.hn, align 8, !tbaa !8
  br label %scalar.ph122

scalar.ph122:                                     ; preds = %scalar.ph122, %scalar.ph122.prol
  %indvars.iv106.i = phi i64 [ %indvars.iv.next107.i.prol, %scalar.ph122.prol ], [ %indvars.iv.next107.i.1, %scalar.ph122 ] ; 6 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv106.i ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !8
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 5 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next107.i
  %i.ie = load double, ptr %i.id, align 8, !tbaa !8
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv106.i
  %i.ig = load double, ptr %i.if, align 8, !tbaa !8
  %i.ih = fsub double %i.ie, %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv106.i
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !8
  %i.ik = fadd double %i.ih, %i.ij
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv106.i
  %i.im = load double, ptr %i.il, align 8, !tbaa !8
  %i.in = fsub double %i.ik, %i.im
  %i.io = call double @llvm.fmuladd.f64(double %i.in, double f0xBFE6666666666666, double %i.ic)
  store double %i.io, ptr %i.ib, align 8, !tbaa !8
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next107.i ; 2 uses
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !8
  %indvars.iv.next107.i.1 = add nuw nsw i64 %indvars.iv106.i, 2 ; 3 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next107.i.1
  %i.is = load double, ptr %i.ir, align 8, !tbaa !8
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gq, i64 %indvars.iv.next107.i
  %i.iu = load double, ptr %i.it, align 8, !tbaa !8
  %i.iv = fsub double %i.is, %i.iu
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv.next107.i
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !8
  %i.iy = fadd double %i.iv, %i.ix
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv.next107.i
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !8
  %i.jb = fsub double %i.iy, %i.ja
  %i.jc = call double @llvm.fmuladd.f64(double %i.jb, double f0xBFE6666666666666, double %i.iq)
  store double %i.jc, ptr %i.ip, align 8, !tbaa !8
  %exitcond109.not.i.1 = icmp eq i64 %indvars.iv.next107.i.1, 1199
  br i1 %exitcond109.not.i.1, label %.unr-lcssa291, label %scalar.ph122, !llvm.loop !46

.unr-lcssa291:                                    ; preds = %scalar.ph122
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 2 uses
  %exitcond113.not.i = icmp eq i64 %indvars.iv.next111.i, 999
  br i1 %exitcond113.not.i, label %bb.i, label %.preheader.i54, !llvm.loop !47

bb.i:                                             ; preds = %.unr-lcssa291
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1 ; 2 uses
  %exitcond117.not.i = icmp eq i64 %indvars.iv.next115.i, 500
  br i1 %exitcond117.not.i, label %vector.body185, label %vector.ph176, !llvm.loop !48

vector.body185:                                   ; preds = %bb.i, %vector.body185.1
  %index186 = phi i64 [ %index.next189.1, %vector.body185.1 ], [ 0, %bb.i ] ; 4 uses
  %vec.ind187 = phi <2 x i32> [ %vec.ind.next190.1, %vector.body185.1 ], [ <i32 0, i32 1>, %bb.i ] ; 5 uses
  %step.add188 = add <2 x i32> %vec.ind187, splat (i32 2)
  %i.jd = uitofp nneg <2 x i32> %vec.ind187 to <2 x double>
  %i.je = uitofp nneg <2 x i32> %step.add188 to <2 x double>
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index186 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <2 x double> %i.jd, ptr %i.jf, align 8, !tbaa !8
  store <2 x double> %i.je, ptr %i.jg, align 8, !tbaa !8
  %i.jh = icmp eq i64 %index186, 496
  br i1 %i.jh, label %.preheader.i58.preheader, label %vector.body185.1

vector.body185.1:                                 ; preds = %vector.body185
  %vec.ind.next190 = add <2 x i32> %vec.ind187, splat (i32 4)
  %step.add188.1 = add <2 x i32> %vec.ind187, splat (i32 6)
  %i.ji = uitofp nneg <2 x i32> %vec.ind.next190 to <2 x double>
  %i.jj = uitofp nneg <2 x i32> %step.add188.1 to <2 x double>
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index186 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 48
  store <2 x double> %i.ji, ptr %i.jl, align 8, !tbaa !8
  store <2 x double> %i.jj, ptr %i.jm, align 8, !tbaa !8
  %index.next189.1 = add nuw nsw i64 %index186, 8
  %vec.ind.next190.1 = add <2 x i32> %vec.ind187, splat (i32 8)
  br label %vector.body185

.preheader.i58.preheader:                         ; preds = %vector.body185
  %i.jn = sub i64 %i.ae, %i.al
  %diff.check193 = icmp ugt i64 %i.jn, -16
  %i.jo = sub i64 %i.ae, %i.as
  %diff.check194 = icmp ugt i64 %i.jo, -16
  %conflict.rdx195 = or i1 %diff.check193, %diff.check194
  %i.jp = sub i64 %i.al, %i.as
  %diff.check196 = icmp ugt i64 %i.jp, -16
  %conflict.rdx197 = or i1 %conflict.rdx195, %diff.check196
  br label %.preheader.i58

.preheader.i58:                                   ; preds = %.preheader.i58.preheader, %middle.block207
  %indvars.iv41.i59 = phi i64 [ %indvars.iv.next42.i63, %middle.block207 ], [ 0, %.preheader.i58.preheader ] ; 8 uses
  %i.jq = getelementptr inbounds nuw [9600 x i8], ptr %i.ad, i64 %indvars.iv41.i59 ; 2 uses
  %i.jr = getelementptr inbounds nuw [9600 x i8], ptr %i.ak, i64 %indvars.iv41.i59 ; 2 uses
  %i.js = getelementptr inbounds nuw [9600 x i8], ptr %i.ar, i64 %indvars.iv41.i59 ; 2 uses
  br i1 %conflict.rdx197, label %scalar.ph198, label %vector.ph199

vector.ph199:                                     ; preds = %.preheader.i58
  %broadcast.splatinsert200 = insertelement <2 x i64> poison, i64 %indvars.iv41.i59, i64 0
  %broadcast.splat201 = shufflevector <2 x i64> %broadcast.splatinsert200, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
  %index203 = phi i64 [ 0, %vector.ph199 ], [ %index.next205, %vector.body202 ] ; 4 uses
  %vec.ind204 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph199 ], [ %vec.ind.next206, %vector.body202 ] ; 4 uses
  %i.jt = add nuw nsw <2 x i64> %vec.ind204, splat (i64 1)
  %i.ju = mul nuw nsw <2 x i64> %i.jt, %broadcast.splat201
  %i.jv = trunc nuw nsw <2 x i64> %i.ju to <2 x i32>
  %i.jw = uitofp nneg <2 x i32> %i.jv to <2 x double>
  %i.jx = fdiv <2 x double> %i.jw, splat (double 1.000000e+03)
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %index203
  store <2 x double> %i.jx, ptr %i.jy, align 8, !tbaa !8
  %i.jz = add nuw nsw <2 x i64> %vec.ind204, splat (i64 2)
  %i.ka = mul nuw nsw <2 x i64> %i.jz, %broadcast.splat201
  %i.kb = trunc nuw nsw <2 x i64> %i.ka to <2 x i32>
  %i.kc = uitofp nneg <2 x i32> %i.kb to <2 x double>
  %i.kd = fdiv <2 x double> %i.kc, splat (double 1.200000e+03)
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %index203
  store <2 x double> %i.kd, ptr %i.ke, align 8, !tbaa !8
  %i.kf = add nuw nsw <2 x i64> %vec.ind204, splat (i64 3)
  %i.kg = mul nuw nsw <2 x i64> %i.kf, %broadcast.splat201
  %i.kh = trunc nuw nsw <2 x i64> %i.kg to <2 x i32>
  %i.ki = uitofp nneg <2 x i32> %i.kh to <2 x double>
  %i.kj = fdiv <2 x double> %i.ki, splat (double 1.000000e+03)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %index203
  store <2 x double> %i.kj, ptr %i.kk, align 8, !tbaa !8
  %index.next205 = add nuw i64 %index203, 2       ; 2 uses
  %vec.ind.next206 = add nuw nsw <2 x i64> %vec.ind204, splat (i64 2)
  %i.kl = icmp eq i64 %index.next205, 1200
  br i1 %i.kl, label %middle.block207, label %vector.body202, !llvm.loop !49

scalar.ph198:                                     ; preds = %.preheader.i58, %scalar.ph198
  %indvars.iv37.i60 = phi i64 [ %indvars.iv.next38.i61, %scalar.ph198 ], [ 0, %.preheader.i58 ] ; 6 uses
  %indvars.iv.next38.i61 = add nuw nsw i64 %indvars.iv37.i60, 1 ; 3 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %indvars.iv37.i60
  %i.kn = add nuw nsw i64 %indvars.iv37.i60, 2
  %i.ko = mul nuw nsw i64 %i.kn, %indvars.iv41.i59
  %i.kp = mul nuw nsw i64 %indvars.iv.next38.i61, %indvars.iv41.i59
  %i.kq = trunc nuw nsw i64 %i.ko to i32
  %i.kr = trunc nuw nsw i64 %i.kp to i32
  %i.ks = uitofp nneg i32 %i.kq to double
  %i.kt = uitofp nneg i32 %i.kr to double
  %i.ku = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.kv = insertelement <2 x double> %i.ku, double %i.ks, i64 1
  %i.kw = fdiv <2 x double> %i.kv, <double 1.000000e+03, double 1.200000e+03> ; 2 uses
  %i.kx = extractelement <2 x double> %i.kw, i64 0
  store double %i.kx, ptr %i.km, align 8, !tbaa !8
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv37.i60
  %i.kz = extractelement <2 x double> %i.kw, i64 1
  store double %i.kz, ptr %i.ky, align 8, !tbaa !8
  %i.la = add nuw nsw i64 %indvars.iv37.i60, 3
  %i.lb = mul nuw nsw i64 %i.la, %indvars.iv41.i59
  %i.lc = trunc nuw nsw i64 %i.lb to i32
  %i.ld = uitofp nneg i32 %i.lc to double
  %i.le = fdiv double %i.ld, 1.000000e+03
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv37.i60
  store double %i.le, ptr %i.lf, align 8, !tbaa !8
  %exitcond40.not.i62 = icmp eq i64 %indvars.iv.next38.i61, 1200
  br i1 %exitcond40.not.i62, label %middle.block207, label %scalar.ph198, !llvm.loop !50

middle.block207:                                  ; preds = %vector.body202, %scalar.ph198
  %indvars.iv.next42.i63 = add nuw nsw i64 %indvars.iv41.i59, 1 ; 2 uses
  %exitcond44.not.i64 = icmp eq i64 %indvars.iv.next42.i63, 1000
  br i1 %exitcond44.not.i64, label %.preheader80.i66.preheader, label %.preheader.i58, !llvm.loop !19

.preheader80.i66.preheader:                       ; preds = %middle.block207
  %scevgep209 = getelementptr i8, ptr %i.ar, i64 9590392 ; 2 uses
  %scevgep210 = getelementptr i8, ptr %i.ad, i64 9590400
  %scevgep211 = getelementptr i8, ptr %i.ak, i64 9599992
  %scevgep237 = getelementptr i8, ptr %i.ad, i64 8
  %scevgep238 = getelementptr i8, ptr %i.ad, i64 9600000
  %scevgep239 = getelementptr i8, ptr %i.ar, i64 9600000 ; 2 uses
  %scevgep257 = getelementptr i8, ptr %i.ak, i64 9600
  %scevgep258 = getelementptr i8, ptr %i.ak, i64 9600000
  %bound0259 = icmp ult ptr %scevgep257, %scevgep239
  %bound1260 = icmp ult ptr %i.ar, %scevgep258
  %found.conflict261 = and i1 %bound0259, %bound1260
  %bound0240 = icmp ult ptr %scevgep237, %scevgep239
  %bound1241 = icmp ult ptr %i.ar, %scevgep238
  %found.conflict242 = and i1 %bound0240, %bound1241
  %bound0212 = icmp ult ptr %i.ar, %scevgep210
  %bound1213 = icmp ult ptr %i.ad, %scevgep209
  %found.conflict214 = and i1 %bound0212, %bound1213
  %bound0215 = icmp ult ptr %i.ar, %scevgep211
  %bound1216 = icmp ult ptr %i.ak, %scevgep209
  %found.conflict217 = and i1 %bound0215, %bound1216
  %conflict.rdx218 = or i1 %found.conflict214, %found.conflict217
  br label %vector.ph275

vector.ph275:                                     ; preds = %bb.j, %.preheader80.i66.preheader
  %indvars.iv114.i67 = phi i64 [ %indvars.iv.next115.i93, %bb.j ], [ 0, %.preheader80.i66.preheader ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv114.i67
  %.pre.i68 = load double, ptr %i.lg, align 8, !tbaa !8
  %broadcast.splatinsert276 = insertelement <2 x double> poison, double %.pre.i68, i64 0
  %broadcast.splat277 = shufflevector <2 x double> %broadcast.splatinsert276, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph275
  %index279 = phi i64 [ 0, %vector.ph275 ], [ %index.next280.5, %vector.body278 ] ; 7 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index279 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  store <2 x double> %broadcast.splat277, ptr %i.lh, align 8, !tbaa !8
  store <2 x double> %broadcast.splat277, ptr %i.li, align 8, !tbaa !8
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index279 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 48
  store <2 x double> %broadcast.splat277, ptr %i.lk, align 8, !tbaa !8
  store <2 x double> %broadcast.splat277, ptr %i.ll, align 8, !tbaa !8
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index279 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 80
  store <2 x double> %broadcast.splat277, ptr %i.ln, align 8, !tbaa !8
  store <2 x double> %broadcast.splat277, ptr %i.lo, align 8, !tbaa !8
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index279 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 96
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 112
  store <2 x double> %broadcast.splat277, ptr %i.lq, align 8, !tbaa !8
  store <2 x double> %broadcast.splat277, ptr %i.lr, align 8, !tbaa !8
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index279 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 128
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 144
  store <2 x double> %broadcast.splat277, ptr %i.lt, align 8, !tbaa !8
  store <2 x double> %broadcast.splat277, ptr %i.lu, align 8, !tbaa !8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index279 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 160
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 176
  store <2 x double> %broadcast.splat277, ptr %i.lw, align 8, !tbaa !8
  store <2 x double> %broadcast.splat277, ptr %i.lx, align 8, !tbaa !8
  %index.next280.5 = add nuw nsw i64 %index279, 24 ; 2 uses
  %i.ly = icmp eq i64 %index.next280.5, 1200
  br i1 %i.ly, label %.preheader76.i72, label %vector.body278, !llvm.loop !51

.preheader76.i72:                                 ; preds = %vector.body278, %middle.block273
  %indvars.iv94.i73 = phi i64 [ %indvars.iv.next95.i77, %middle.block273 ], [ 1, %vector.body278 ] ; 3 uses
  %i.lz = getelementptr inbounds nuw [9600 x i8], ptr %i.ak, i64 %indvars.iv94.i73 ; 3 uses
  %i.ma = getelementptr inbounds nuw [9600 x i8], ptr %i.ar, i64 %indvars.iv94.i73 ; 4 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 -9600  ; 3 uses
  br i1 %found.conflict261, label %scalar.ph262, label %vector.body264

vector.body264:                                   ; preds = %.preheader76.i72, %vector.body264
  %index265 = phi i64 [ %index.next272, %vector.body264 ], [ 0, %.preheader76.i72 ] ; 4 uses
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %index265 ; 3 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %wide.load266 = load <2 x double>, ptr %i.mc, align 8, !tbaa !8, !alias.scope !52, !noalias !55
  %wide.load267 = load <2 x double>, ptr %i.md, align 8, !tbaa !8, !alias.scope !52, !noalias !55
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %index265 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %wide.load268 = load <2 x double>, ptr %i.me, align 8, !tbaa !8, !alias.scope !55
  %wide.load269 = load <2 x double>, ptr %i.mf, align 8, !tbaa !8, !alias.scope !55
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %index265 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %wide.load270 = load <2 x double>, ptr %i.mg, align 8, !tbaa !8, !alias.scope !55
  %wide.load271 = load <2 x double>, ptr %i.mh, align 8, !tbaa !8, !alias.scope !55
  %i.mi = fsub <2 x double> %wide.load268, %wide.load270
  %i.mj = fsub <2 x double> %wide.load269, %wide.load271
  %i.mk = fmul <2 x double> %i.mi, splat (double 5.000000e-01)
  %i.ml = fmul <2 x double> %i.mj, splat (double 5.000000e-01)
  %i.mm = fsub <2 x double> %wide.load266, %i.mk
  %i.mn = fsub <2 x double> %wide.load267, %i.ml
  store <2 x double> %i.mm, ptr %i.mc, align 8, !tbaa !8, !alias.scope !52, !noalias !55
  store <2 x double> %i.mn, ptr %i.md, align 8, !tbaa !8, !alias.scope !52, !noalias !55
  %index.next272 = add nuw i64 %index265, 4       ; 2 uses
  %i.mo = icmp eq i64 %index.next272, 1200
  br i1 %i.mo, label %middle.block273, label %vector.body264, !llvm.loop !57

scalar.ph262:                                     ; preds = %.preheader76.i72, %scalar.ph262
  %indvars.iv90.i74 = phi i64 [ %indvars.iv.next91.i75.1, %scalar.ph262 ], [ 0, %.preheader76.i72 ] ; 5 uses
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv90.i74 ; 2 uses
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !8
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv90.i74
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !8
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv90.i74
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !8
  %i.mv = fsub double %i.ms, %i.mu
  %i.mw = fmul double %i.mv, 5.000000e-01
  %i.mx = fsub double %i.mq, %i.mw
  store double %i.mx, ptr %i.mp, align 8, !tbaa !8
  %indvars.iv.next91.i75 = or disjoint i64 %indvars.iv90.i74, 1 ; 3 uses
  %i.my = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %indvars.iv.next91.i75 ; 2 uses
  %i.mz = load double, ptr %i.my, align 8, !tbaa !8
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %indvars.iv.next91.i75
  %i.nb = load double, ptr %i.na, align 8, !tbaa !8
  %i.nc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.next91.i75
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !8
  %i.ne = fsub double %i.nb, %i.nd
  %i.nf = fmul double %i.ne, 5.000000e-01
  %i.ng = fsub double %i.mz, %i.nf
  store double %i.ng, ptr %i.my, align 8, !tbaa !8
  %indvars.iv.next91.i75.1 = add nuw nsw i64 %indvars.iv90.i74, 2 ; 2 uses
  %exitcond93.not.i76.1 = icmp eq i64 %indvars.iv.next91.i75.1, 1200
  br i1 %exitcond93.not.i76.1, label %middle.block273, label %scalar.ph262, !llvm.loop !58

middle.block273:                                  ; preds = %vector.body264, %scalar.ph262
  %indvars.iv.next95.i77 = add nuw nsw i64 %indvars.iv94.i73, 1 ; 2 uses
  %exitcond97.not.i78 = icmp eq i64 %indvars.iv.next95.i77, 1000
  br i1 %exitcond97.not.i78, label %.preheader75.i79, label %.preheader76.i72, !llvm.loop !59

.preheader75.i79:                                 ; preds = %middle.block273, %.unr-lcssa294
  %indvars.iv102.i80 = phi i64 [ %indvars.iv.next103.i84, %.unr-lcssa294 ], [ 0, %middle.block273 ] ; 3 uses
  %i.nh = getelementptr inbounds nuw [9600 x i8], ptr %i.ad, i64 %indvars.iv102.i80 ; 4 uses
  %i.ni = getelementptr inbounds nuw [9600 x i8], ptr %i.ar, i64 %indvars.iv102.i80 ; 4 uses
  br i1 %found.conflict242, label %scalar.ph243.prol, label %vector.body245

vector.body245:                                   ; preds = %.preheader75.i79, %vector.body245
  %index246 = phi i64 [ %index.next253, %vector.body245 ], [ 0, %.preheader75.i79 ] ; 2 uses
  %i.nj = or disjoint i64 %index246, 1            ; 2 uses
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.nj ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16 ; 2 uses
  %wide.load247 = load <2 x double>, ptr %i.nk, align 8, !tbaa !8, !alias.scope !60, !noalias !63
  %wide.load248 = load <2 x double>, ptr %i.nl, align 8, !tbaa !8, !alias.scope !60, !noalias !63
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nj ; 4 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  %wide.load249 = load <2 x double>, ptr %i.nm, align 8, !tbaa !8, !alias.scope !63
  %wide.load250 = load <2 x double>, ptr %i.nn, align 8, !tbaa !8, !alias.scope !63
  %i.no = getelementptr i8, ptr %i.nm, i64 -8
  %i.np = getelementptr i8, ptr %i.nm, i64 8
  %wide.load251 = load <2 x double>, ptr %i.no, align 8, !tbaa !8, !alias.scope !63
  %wide.load252 = load <2 x double>, ptr %i.np, align 8, !tbaa !8, !alias.scope !63
  %i.nq = fsub <2 x double> %wide.load249, %wide.load251
  %i.nr = fsub <2 x double> %wide.load250, %wide.load252
  %i.ns = fmul <2 x double> %i.nq, splat (double 5.000000e-01)
  %i.nt = fmul <2 x double> %i.nr, splat (double 5.000000e-01)
  %i.nu = fsub <2 x double> %wide.load247, %i.ns
  %i.nv = fsub <2 x double> %wide.load248, %i.nt
  store <2 x double> %i.nu, ptr %i.nk, align 8, !tbaa !8, !alias.scope !60, !noalias !63
  store <2 x double> %i.nv, ptr %i.nl, align 8, !tbaa !8, !alias.scope !60, !noalias !63
  %index.next253 = add nuw i64 %index246, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next253, 1196
  br i1 %i.nw, label %scalar.ph243.prol, label %vector.body245, !llvm.loop !65

scalar.ph243.prol:                                ; preds = %vector.body245, %.preheader75.i79
  %indvars.iv98.i81.ph = phi i64 [ 1, %.preheader75.i79 ], [ 1197, %vector.body245 ] ; 3 uses
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv98.i81.ph ; 2 uses
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !8
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv98.i81.ph ; 2 uses
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !8
  %i.ob = getelementptr i8, ptr %i.nz, i64 -8
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !8
  %i.od = fsub double %i.oa, %i.oc
  %i.oe = fmul double %i.od, 5.000000e-01
  %i.of = fsub double %i.ny, %i.oe
  store double %i.of, ptr %i.nx, align 8, !tbaa !8
  %indvars.iv.next99.i82.prol = add nuw nsw i64 %indvars.iv98.i81.ph, 1
  br label %scalar.ph243

scalar.ph243:                                     ; preds = %scalar.ph243, %scalar.ph243.prol
  %indvars.iv98.i81 = phi i64 [ %indvars.iv.next99.i82.prol, %scalar.ph243.prol ], [ %indvars.iv.next99.i82.1, %scalar.ph243 ] ; 4 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv98.i81 ; 2 uses
  %i.oh = load double, ptr %i.og, align 8, !tbaa !8
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv98.i81 ; 2 uses
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !8
  %i.ok = getelementptr i8, ptr %i.oi, i64 -8
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !8
  %i.om = fsub double %i.oj, %i.ol
  %i.on = fmul double %i.om, 5.000000e-01
  %i.oo = fsub double %i.oh, %i.on
  store double %i.oo, ptr %i.og, align 8, !tbaa !8
  %indvars.iv.next99.i82 = add nuw nsw i64 %indvars.iv98.i81, 1 ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %indvars.iv.next99.i82 ; 2 uses
  %i.oq = load double, ptr %i.op, align 8, !tbaa !8
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %indvars.iv.next99.i82 ; 2 uses
  %i.os = load double, ptr %i.or, align 8, !tbaa !8
  %i.ot = getelementptr i8, ptr %i.or, i64 -8
  %i.ou = load double, ptr %i.ot, align 8, !tbaa !8
  %i.ov = fsub double %i.os, %i.ou
  %i.ow = fmul double %i.ov, 5.000000e-01
  %i.ox = fsub double %i.oq, %i.ow
  store double %i.ox, ptr %i.op, align 8, !tbaa !8
  %indvars.iv.next99.i82.1 = add nuw nsw i64 %indvars.iv98.i81, 2 ; 2 uses
  %exitcond101.not.i83.1 = icmp eq i64 %indvars.iv.next99.i82.1, 1200
  br i1 %exitcond101.not.i83.1, label %.unr-lcssa294, label %scalar.ph243, !llvm.loop !66

.unr-lcssa294:                                    ; preds = %scalar.ph243
  %indvars.iv.next103.i84 = add nuw nsw i64 %indvars.iv102.i80, 1 ; 2 uses
  %exitcond105.not.i85 = icmp eq i64 %indvars.iv.next103.i84, 1000
  br i1 %exitcond105.not.i85, label %.preheader.i86, label %.preheader75.i79, !llvm.loop !67

.preheader.i86:                                   ; preds = %.unr-lcssa294, %.unr-lcssa297
  %indvars.iv110.i87 = phi i64 [ %indvars.iv.next111.i91, %.unr-lcssa297 ], [ 0, %.unr-lcssa294 ] ; 4 uses
  %i.oy = getelementptr inbounds nuw [9600 x i8], ptr %i.ar, i64 %indvars.iv110.i87 ; 4 uses
  %i.oz = getelementptr inbounds nuw [9600 x i8], ptr %i.ad, i64 %indvars.iv110.i87 ; 8 uses
  %i.pa = getelementptr inbounds nuw [9600 x i8], ptr %i.ak, i64 %indvars.iv110.i87 ; 5 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 9600 ; 4 uses
  br i1 %conflict.rdx218, label %scalar.ph219.prol, label %vector.body221

vector.body221:                                   ; preds = %.preheader.i86, %vector.body221
  %index222 = phi i64 [ %index.next233, %vector.body221 ], [ 0, %.preheader.i86 ] ; 6 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %index222 ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16 ; 2 uses
  %wide.load223 = load <2 x double>, ptr %i.pc, align 8, !tbaa !8, !alias.scope !68, !noalias !71
  %wide.load224 = load <2 x double>, ptr %i.pd, align 8, !tbaa !8, !alias.scope !68, !noalias !71
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %index222 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %wide.load225 = load <2 x double>, ptr %i.pf, align 8, !tbaa !8, !alias.scope !74
  %wide.load226 = load <2 x double>, ptr %i.pg, align 8, !tbaa !8, !alias.scope !74
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %index222 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %wide.load227 = load <2 x double>, ptr %i.ph, align 8, !tbaa !8, !alias.scope !74
  %wide.load228 = load <2 x double>, ptr %i.pi, align 8, !tbaa !8, !alias.scope !74
  %i.pj = fsub <2 x double> %wide.load225, %wide.load227
  %i.pk = fsub <2 x double> %wide.load226, %wide.load228
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %index222 ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %wide.load229 = load <2 x double>, ptr %i.pl, align 8, !tbaa !8, !alias.scope !75
  %wide.load230 = load <2 x double>, ptr %i.pm, align 8, !tbaa !8, !alias.scope !75
  %i.pn = fadd <2 x double> %i.pj, %wide.load229
  %i.po = fadd <2 x double> %i.pk, %wide.load230
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %index222 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %wide.load231 = load <2 x double>, ptr %i.pp, align 8, !tbaa !8, !alias.scope !75
  %wide.load232 = load <2 x double>, ptr %i.pq, align 8, !tbaa !8, !alias.scope !75
  %i.pr = fsub <2 x double> %i.pn, %wide.load231
  %i.ps = fsub <2 x double> %i.po, %wide.load232
  %i.pt = fmul <2 x double> %i.pr, splat (double f0x3FE6666666666666)
  %i.pu = fmul <2 x double> %i.ps, splat (double f0x3FE6666666666666)
  %i.pv = fsub <2 x double> %wide.load223, %i.pt
  %i.pw = fsub <2 x double> %wide.load224, %i.pu
  store <2 x double> %i.pv, ptr %i.pc, align 8, !tbaa !8, !alias.scope !68, !noalias !71
  store <2 x double> %i.pw, ptr %i.pd, align 8, !tbaa !8, !alias.scope !68, !noalias !71
  %index.next233 = add nuw i64 %index222, 4       ; 2 uses
  %i.px = icmp eq i64 %index.next233, 1196
  br i1 %i.px, label %scalar.ph219.prol, label %vector.body221, !llvm.loop !76

scalar.ph219.prol:                                ; preds = %vector.body221, %.preheader.i86
  %indvars.iv106.i88.ph = phi i64 [ 0, %.preheader.i86 ], [ 1196, %vector.body221 ] ; 5 uses
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %indvars.iv106.i88.ph ; 2 uses
  %i.pz = load double, ptr %i.py, align 8, !tbaa !8
  %indvars.iv.next107.i89.prol = or disjoint i64 %indvars.iv106.i88.ph, 1 ; 2 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %indvars.iv.next107.i89.prol
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !8
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %indvars.iv106.i88.ph
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !8
  %i.qe = fsub double %i.qb, %i.qd
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %indvars.iv106.i88.ph
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !8
  %i.qh = fadd double %i.qe, %i.qg
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv106.i88.ph
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !8
  %i.qk = fsub double %i.qh, %i.qj
  %i.ql = fmul double %i.qk, f0x3FE6666666666666
  %i.qm = fsub double %i.pz, %i.ql
  store double %i.qm, ptr %i.py, align 8, !tbaa !8
  br label %scalar.ph219

scalar.ph219:                                     ; preds = %scalar.ph219, %scalar.ph219.prol
  %indvars.iv106.i88 = phi i64 [ %indvars.iv.next107.i89.prol, %scalar.ph219.prol ], [ %indvars.iv.next107.i89.1, %scalar.ph219 ] ; 6 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %indvars.iv106.i88 ; 2 uses
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !8
  %indvars.iv.next107.i89 = add nuw nsw i64 %indvars.iv106.i88, 1 ; 5 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %indvars.iv.next107.i89
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !8
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %indvars.iv106.i88
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !8
  %i.qt = fsub double %i.qq, %i.qs
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %indvars.iv106.i88
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !8
  %i.qw = fadd double %i.qt, %i.qv
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv106.i88
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !8
  %i.qz = fsub double %i.qw, %i.qy
  %i.ra = fmul double %i.qz, f0x3FE6666666666666
  %i.rb = fsub double %i.qo, %i.ra
  store double %i.rb, ptr %i.qn, align 8, !tbaa !8
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %indvars.iv.next107.i89 ; 2 uses
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !8
  %indvars.iv.next107.i89.1 = add nuw nsw i64 %indvars.iv106.i88, 2 ; 3 uses
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %indvars.iv.next107.i89.1
  %i.rf = load double, ptr %i.re, align 8, !tbaa !8
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %indvars.iv.next107.i89
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !8
  %i.ri = fsub double %i.rf, %i.rh
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %indvars.iv.next107.i89
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !8
  %i.rl = fadd double %i.ri, %i.rk
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv.next107.i89
  %i.rn = load double, ptr %i.rm, align 8, !tbaa !8
  %i.ro = fsub double %i.rl, %i.rn
  %i.rp = fmul double %i.ro, f0x3FE6666666666666
  %i.rq = fsub double %i.rd, %i.rp
  store double %i.rq, ptr %i.rc, align 8, !tbaa !8
  %exitcond109.not.i90.1 = icmp eq i64 %indvars.iv.next107.i89.1, 1199
  br i1 %exitcond109.not.i90.1, label %.unr-lcssa297, label %scalar.ph219, !llvm.loop !77

.unr-lcssa297:                                    ; preds = %scalar.ph219
  %indvars.iv.next111.i91 = add nuw nsw i64 %indvars.iv110.i87, 1 ; 2 uses
  %exitcond113.not.i92 = icmp eq i64 %indvars.iv.next111.i91, 999
  br i1 %exitcond113.not.i92, label %bb.j, label %.preheader.i86, !llvm.loop !78

bb.j:                                             ; preds = %.unr-lcssa297
  %indvars.iv.next115.i93 = add nuw nsw i64 %indvars.iv114.i67, 1 ; 2 uses
  %exitcond117.not.i94 = icmp eq i64 %indvars.iv.next115.i93, 500
  br i1 %exitcond117.not.i94, label %kernel_fdtd_2d_StrictFP.exit, label %vector.ph275, !llvm.loop !79

kernel_fdtd_2d_StrictFP.exit:                     ; preds = %bb.j
  %i.rr = call noalias dereferenceable_or_null(19201) ptr @malloc(i64 noundef 19201) #15 ; 8 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 19200
  store i8 0, ptr %i.rs, align 1, !tbaa !80
  br label %.preheader.i95

.preheader.i95:                                   ; preds = %bb.p, %kernel_fdtd_2d_StrictFP.exit
  %indvars.iv62.i = phi i64 [ 0, %kernel_fdtd_2d_StrictFP.exit ], [ %indvars.iv.next63.i, %bb.p ] ; 4 uses
  %i.rt = getelementptr inbounds nuw [9600 x i8], ptr %i.ad, i64 %indvars.iv62.i
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.preheader.i95
  %indvars.iv.i96 = phi i64 [ 0, %.preheader.i95 ], [ %indvars.iv.next.i97, %bb.k ] ; 3 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %indvars.iv.i96
  %i.rv = shl nuw nsw i64 %indvars.iv.i96, 4
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rv
  %i.rx = load i64, ptr %i.ru, align 8, !tbaa !8  ; 4 uses
  %i.ry = lshr i64 %i.rx, 56
  %i.rz = trunc nuw i64 %i.ry to i8
  %i.sa = insertelement <2 x i64> poison, i64 %i.rx, i64 0
  %i.sb = shufflevector <2 x i64> %i.sa, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.sc = lshr <2 x i64> %i.sb, <i64 40, i64 48>
  %i.sd = trunc <2 x i64> %i.sc to <2 x i8>
  %i.se = insertelement <4 x i64> poison, i64 %i.rx, i64 0
  %i.sf = shufflevector <4 x i64> %i.se, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.sg = lshr <4 x i64> %i.sf, <i64 8, i64 16, i64 24, i64 32>
  %i.sh = trunc <4 x i64> %i.sg to <4 x i8>
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.rx to i8
  %i.si = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i.i, i64 0
  %i.sj = shufflevector <4 x i8> %i.sh, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sk = shufflevector <8 x i8> %i.si, <8 x i8> %i.sj, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.sl = shufflevector <2 x i8> %i.sd, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.sm = shufflevector <8 x i8> %i.sk, <8 x i8> %i.sl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.sn = insertelement <8 x i8> %i.sm, i8 %i.rz, i64 7
  %i.so = and <8 x i8> %i.sn, splat (i8 15)
  %i.sp = or disjoint <8 x i8> %i.so, splat (i8 48)
  %i.sq = shufflevector <8 x i8> %i.sp, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.sq, ptr %i.rw, align 1, !tbaa !80
  %indvars.iv.next.i97 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %indvars.iv.next.i97, 1200
  br i1 %exitcond.not.i98, label %bb.l, label %bb.k, !llvm.loop !81

bb.l:                                             ; preds = %bb.k
  %i.sr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ss = call i32 @fputs(ptr noundef nonnull %i.rr, ptr noundef %i.sr) #13 ; 0 uses
  %i.st = getelementptr inbounds nuw [9600 x i8], ptr %i.ak, i64 %indvars.iv62.i
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv54.i = phi i64 [ 0, %bb.l ], [ %indvars.iv.next55.i, %bb.m ] ; 3 uses
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %indvars.iv54.i
  %i.sv = shl nuw nsw i64 %indvars.iv54.i, 4
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.sv
  %i.sx = load i64, ptr %i.su, align 8, !tbaa !8  ; 4 uses
  %i.sy = lshr i64 %i.sx, 56
  %i.sz = trunc nuw i64 %i.sy to i8
  %i.ta = insertelement <2 x i64> poison, i64 %i.sx, i64 0
  %i.tb = shufflevector <2 x i64> %i.ta, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.tc = lshr <2 x i64> %i.tb, <i64 40, i64 48>
  %i.td = trunc <2 x i64> %i.tc to <2 x i8>
  %i.te = insertelement <4 x i64> poison, i64 %i.sx, i64 0
  %i.tf = shufflevector <4 x i64> %i.te, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.tg = lshr <4 x i64> %i.tf, <i64 8, i64 16, i64 24, i64 32>
  %i.th = trunc <4 x i64> %i.tg to <4 x i8>
  %.sroa.0.0.extract.trunc.i35.i = trunc i64 %i.sx to i8
  %i.ti = insertelement <8 x i8> poison, i8 %.sroa.0.0.extract.trunc.i35.i, i64 0
  %i.tj = shufflevector <4 x i8> %i.th, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tk = shufflevector <8 x i8> %i.ti, <8 x i8> %i.tj, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.tl = shufflevector <2 x i8> %i.td, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.tm = shufflevector <8 x i8> %i.tk, <8 x i8> %i.tl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.tn = insertelement <8 x i8> %i.tm, i8 %i.sz, i64 7
  %i.to = and <8 x i8> %i.tn, splat (i8 15)
  %i.tp = or disjoint <8 x i8> %i.to, splat (i8 48)
  %i.tq = shufflevector <8 x i8> %i.tp, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.tq, ptr %i.sw, align 1, !tbaa !80
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next55.i, 1200
  br i1 %exitcond57.not.i, label %bb.n, label %bb.m, !llvm.loop !82

bb.n:                                             ; preds = %bb.m
  %i.tr = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ts = call i32 @fputs(ptr noundef nonnull %i.rr, ptr noundef %i.tr) #13 ; 0 uses
  %i.tt = getelementptr inbounds nuw [9600 x i8], ptr %i.ar, i64 %indvars.iv62.i
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv58.i = phi i64 [ 0, %bb.n ], [ %indvars.iv.next59.i, %bb.o ] ; 3 uses
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %indvars.iv58.i
  %i.tv = shl nuw nsw i64 %indvars.iv58.i, 4
  %i.tw = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.tv
end_hunk_0
