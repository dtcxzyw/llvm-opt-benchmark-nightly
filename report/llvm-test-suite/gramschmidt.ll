inline.NumInlined: 10
inline.NumDeleted: 4
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
@.str.2 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

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
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #13
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 9600000) #13
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 9 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.e, null
  %i.h = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.g, i1 true, i1 %i.h
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.j = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.i) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.k = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 11520000) #13
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !10   ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  %i.n = icmp ne i32 %i.k, 0
  %or.cond.i.i17 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond.i.i17, label %bb.c, label %polybench_alloc_data.exit18

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.p = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.o) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit18:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.q = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 9600000) #13
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !10   ; 11 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = icmp ne i32 %i.q, 0
  %or.cond.i.i19 = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond.i.i19, label %bb.d, label %polybench_alloc_data.exit20

bb.d:                                             ; preds = %polybench_alloc_data.exit18
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.v = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.u) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit20:                      ; preds = %polybench_alloc_data.exit18
  %i.w = ptrtoaddr ptr %i.r to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.x = sub i64 %i.w, %i.f
  %diff.check = icmp ult i64 %i.x, 16
  br label %.preheader29.i

.preheader29.i:                                   ; preds = %middle.block, %polybench_alloc_data.exit20
  %indvars.iv35.i = phi i64 [ 0, %polybench_alloc_data.exit20 ], [ %indvars.iv.next36.i, %middle.block ] ; 5 uses
  %i.y = getelementptr inbounds nuw [9600 x i8], ptr %i.e, i64 %indvars.iv35.i ; 2 uses
  %i.z = getelementptr inbounds nuw [9600 x i8], ptr %i.r, i64 %indvars.iv35.i ; 2 uses
  br i1 %diff.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader29.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv35.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.aa = mul nuw nsw <2 x i64> %vec.ind, %broadcast.splat
  %i.ab = trunc nuw nsw <2 x i64> %i.aa to <2 x i32>
  %i.ac = urem <2 x i32> %i.ab, splat (i32 1000)
  %i.ad = uitofp nneg <2 x i32> %i.ac to <2 x double>
  %i.ae = fdiv nnan <2 x double> %i.ad, splat (double 1.000000e+03)
  %i.af = fmul nnan <2 x double> %i.ae, splat (double 1.000000e+02)
  %i.ag = fadd <2 x double> %i.af, splat (double 1.000000e+01)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index
  store <2 x double> %i.ag, ptr %i.ah, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index
  store <2 x double> zeroinitializer, ptr %i.ai, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.aj = icmp eq i64 %index.next, 1200
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !14

scalar.ph:                                        ; preds = %.preheader29.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader29.i ] ; 4 uses
  %i.ak = mul nuw nsw i64 %indvars.iv.i, %indvars.iv35.i
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = urem i32 %i.al, 1000
  %i.an = uitofp nneg i32 %i.am to double
  %i.ao = fdiv nnan double %i.an, 1.000000e+03
  %i.ap = fmul nnan double %i.ao, 1.000000e+02
  %i.aq = fadd double %i.ap, 1.000000e+01
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i
  store double %i.aq, ptr %i.ar, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1200
  br i1 %exitcond.not.i, label %middle.block, label %scalar.ph, !llvm.loop !18

middle.block:                                     ; preds = %vector.body, %scalar.ph
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next36.i, 1000
  br i1 %exitcond38.not.i, label %init_array.exit, label %.preheader29.i, !llvm.loop !19

init_array.exit:                                  ; preds = %middle.block
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(11520000) %i.l, i8 0, i64 11520000, i1 false), !tbaa !8
  %scevgep27.a = getelementptr i8, ptr %i.e, i64 9600000 ; 3 uses
  %scevgep44 = getelementptr i8, ptr %i.r, i64 9600000 ; 2 uses
  %scevgep45 = getelementptr i8, ptr %i.l, i64 11520000
  %bound046 = icmp ult ptr %i.r, %scevgep27.a
  %bound147 = icmp ult ptr %i.e, %scevgep44
  %found.conflict48 = and i1 %bound046, %bound147
  %bound049 = icmp ult ptr %i.r, %scevgep45
  %bound150 = icmp ult ptr %i.l, %scevgep44
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %found.conflict48, %found.conflict51
  br label %.preheader67.i

.loopexit.i:                                      ; preds = %middle.block42, %middle.block60
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next107.i, 1200
  br i1 %exitcond109.not.i, label %kernel_gramschmidt.exit, label %.preheader67.i, !llvm.loop !20

.preheader67.i:                                   ; preds = %.loopexit.i, %init_array.exit
  %indvars.iv106.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next107.i, %.loopexit.i ] ; 9 uses
  %indvars.iv100.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next101.i, %.loopexit.i ] ; 2 uses
  %2 = shl nuw nsw i64 %indvars.iv106.i, 3        ; 3 uses
  %3 = getelementptr i8, ptr %i.e, i64 %2
  %scevgep = getelementptr i8, ptr %3, i64 8      ; 2 uses
  %scevgep28 = getelementptr i8, ptr %i.r, i64 %2
  %4 = getelementptr i8, ptr %i.r, i64 %2
  %scevgep29 = getelementptr i8, ptr %4, i64 9590408
  %5 = mul nuw nsw i64 %indvars.iv106.i, 9608
  %6 = getelementptr i8, ptr %i.l, i64 %5
  %scevgep30 = getelementptr i8, ptr %6, i64 8
  %7 = mul nuw nsw i64 %indvars.iv106.i, 9600
  %8 = getelementptr i8, ptr %i.l, i64 %7
  %scevgep31 = getelementptr i8, ptr %8, i64 9600
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv106.i ; 9 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.preheader67.i
  %indvars.iv.i21 = phi i64 [ 0, %.preheader67.i ], [ %indvars.iv.next.i22.4, %bb.e ] ; 6 uses
  %.069.i = phi double [ 0.000000e+00, %.preheader67.i ], [ %i.bl, %bb.e ]
  %gep.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %i.at = load double, ptr %gep.i, align 8, !tbaa !8 ; 2 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = fadd double %.069.i, %i.au
  %i.aw = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.aw, i64 9600
  %i.ax = load double, ptr %gep.i.1, align 8, !tbaa !8 ; 2 uses
  %i.ay = fmul double %i.ax, %i.ax
  %i.az = fadd double %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.ba, i64 19200
  %i.bb = load double, ptr %gep.i.2, align 8, !tbaa !8 ; 2 uses
  %i.bc = fmul double %i.bb, %i.bb
  %i.bd = fadd double %i.az, %i.bc
  %i.be = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.be, i64 28800
  %i.bf = load double, ptr %gep.i.3, align 8, !tbaa !8 ; 2 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = fadd double %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i21
  %gep.i.4 = getelementptr inbounds nuw i8, ptr %i.bi, i64 38400
  %i.bj = load double, ptr %gep.i.4, align 8, !tbaa !8 ; 2 uses
  %i.bk = fmul double %i.bj, %i.bj
  %i.bl = fadd double %i.bh, %i.bk                ; 2 uses
  %indvars.iv.next.i22.4 = add nuw nsw i64 %indvars.iv.i21, 5 ; 2 uses
  %exitcond.not.i23.4 = icmp eq i64 %indvars.iv.next.i22.4, 1000
  br i1 %exitcond.not.i23.4, label %vector.memcheck43, label %bb.e, !llvm.loop !21

vector.memcheck43:                                ; preds = %bb.e
  %i.bm = call double @sqrt(double noundef %i.bl) #13, !tbaa !4
  %i.bn = getelementptr inbounds nuw [9600 x i8], ptr %i.l, i64 %indvars.iv106.i ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv106.i ; 4 uses
  store double %i.bm, ptr %i.bo, align 8, !tbaa !8
  %invariant.gep72.i = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv106.i ; 12 uses
  br i1 %conflict.rdx52, label %scalar.ph53, label %vector.ph54

vector.ph54:                                      ; preds = %vector.memcheck43
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !8, !alias.scope !22
  %broadcast.splatinsert57 = insertelement <2 x double> poison, double %i.bp, i64 0
  %broadcast.splat58 = shufflevector <2 x double> %broadcast.splatinsert57, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph54
  %index56 = phi i64 [ 0, %vector.ph54 ], [ %index.next59, %vector.body55 ] ; 4 uses
  %i.bq = or disjoint i64 %index56, 1             ; 2 uses
  %i.br = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %index56
  %i.bs = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %i.bq
  %i.bt = load double, ptr %i.br, align 8, !tbaa !8, !alias.scope !25
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !8, !alias.scope !25
  %i.bv = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bu, i64 1
  %i.bx = fdiv <2 x double> %i.bw, %broadcast.splat58 ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  %i.bz = extractelement <2 x double> %i.bx, i64 1
  %i.ca = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %index56
  %i.cb = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %i.bq
  store double %i.by, ptr %i.ca, align 8, !tbaa !8, !alias.scope !27, !noalias !29
  store double %i.bz, ptr %i.cb, align 8, !tbaa !8, !alias.scope !27, !noalias !29
  %index.next59 = add nuw i64 %index56, 2         ; 2 uses
  %i.cc = icmp eq i64 %index.next59, 1000
  br i1 %i.cc, label %middle.block60, label %vector.body55, !llvm.loop !30

scalar.ph53:                                      ; preds = %vector.memcheck43, %scalar.ph53
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i.1, %scalar.ph53 ], [ 0, %vector.memcheck43 ] ; 4 uses
  %gep71.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv88.i
  %i.cd = load double, ptr %gep71.i, align 8, !tbaa !8
  %i.ce = load double, ptr %i.bo, align 8, !tbaa !8
  %i.cf = fdiv double %i.cd, %i.ce
  %gep73.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv88.i
  store double %i.cf, ptr %gep73.i, align 8, !tbaa !8
  %indvars.iv.next89.i = or disjoint i64 %indvars.iv88.i, 1 ; 2 uses
  %gep71.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next89.i
  %i.cg = load double, ptr %gep71.i.1, align 8, !tbaa !8
  %i.ch = load double, ptr %i.bo, align 8, !tbaa !8
  %i.ci = fdiv double %i.cg, %i.ch
  %gep73.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv.next89.i
  store double %i.ci, ptr %gep73.i.1, align 8, !tbaa !8
  %indvars.iv.next89.i.1 = add nuw nsw i64 %indvars.iv88.i, 2 ; 2 uses
  %exitcond91.not.i.1 = icmp eq i64 %indvars.iv.next89.i.1, 1000
  br i1 %exitcond91.not.i.1, label %middle.block60, label %scalar.ph53, !llvm.loop !31

middle.block60:                                   ; preds = %vector.body55, %scalar.ph53
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.cj = icmp samesign ult i64 %indvars.iv106.i, 1199
  br i1 %i.cj, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %middle.block60
  %bound0 = icmp ult ptr %scevgep, %scevgep29
  %bound1 = icmp ult ptr %scevgep28, %scevgep27.a
  %found.conflict = and i1 %bound0, %bound1
  %bound032 = icmp ult ptr %scevgep, %scevgep31
  %bound133 = icmp ult ptr %scevgep30, %scevgep27.a
  %found.conflict34 = and i1 %bound032, %bound133
  %conflict.rdx = or i1 %found.conflict, %found.conflict34
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %middle.block42
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %middle.block42 ], [ %indvars.iv100.i, %.lr.ph.i.preheader ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv102.i ; 6 uses
  store double 0.000000e+00, ptr %i.ck, align 8, !tbaa !8
  %invariant.gep77.i = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv102.i ; 8 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv92.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next93.i.1, %bb.f ] ; 4 uses
  %i.cl = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.ct, %bb.f ]
  %gep76.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv92.i
  %i.cm = load double, ptr %gep76.i, align 8, !tbaa !8
  %gep78.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %indvars.iv92.i
  %i.cn = load double, ptr %gep78.i, align 8, !tbaa !8
  %i.co = fmul double %i.cm, %i.cn
  %i.cp = fadd double %i.cl, %i.co                ; 2 uses
  store double %i.cp, ptr %i.ck, align 8, !tbaa !8
  %indvars.iv.next93.i = or disjoint i64 %indvars.iv92.i, 1 ; 2 uses
  %gep76.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv.next93.i
  %i.cq = load double, ptr %gep76.i.1, align 8, !tbaa !8
  %gep78.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %indvars.iv.next93.i
  %i.cr = load double, ptr %gep78.i.1, align 8, !tbaa !8
  %i.cs = fmul double %i.cq, %i.cr
  %i.ct = fadd double %i.cp, %i.cs                ; 2 uses
  store double %i.ct, ptr %i.ck, align 8, !tbaa !8
  %indvars.iv.next93.i.1 = add nuw nsw i64 %indvars.iv92.i, 2 ; 2 uses
  %exitcond95.not.i.1 = icmp eq i64 %indvars.iv.next93.i.1, 1000
  br i1 %exitcond95.not.i.1, label %vector.memcheck26, label %bb.f, !llvm.loop !32

vector.memcheck26:                                ; preds = %bb.f
  br i1 %conflict.rdx, label %.preheader.i, label %vector.ph36

vector.ph36:                                      ; preds = %vector.memcheck26
  %9 = load double, ptr %i.ck, align 8, !tbaa !8, !alias.scope !33
  %broadcast.splatinsert39 = insertelement <2 x double> poison, double %9, i64 0
  %broadcast.splat40 = shufflevector <2 x double> %broadcast.splatinsert39, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph36
  %index38 = phi i64 [ 0, %vector.ph36 ], [ %index.next41, %vector.body37 ] ; 6 uses
  %10 = or disjoint i64 %index38, 1               ; 2 uses
  %11 = or disjoint i64 %index38, 2               ; 2 uses
  %12 = or disjoint i64 %index38, 3               ; 2 uses
  %13 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %index38 ; 2 uses
  %14 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %10 ; 2 uses
  %15 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %11 ; 2 uses
  %16 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %12 ; 2 uses
  %17 = load double, ptr %13, align 8, !tbaa !8, !alias.scope !36, !noalias !38
  %18 = load double, ptr %14, align 8, !tbaa !8, !alias.scope !36, !noalias !38
  %19 = insertelement <2 x double> poison, double %17, i64 0
  %20 = insertelement <2 x double> %19, double %18, i64 1
  %21 = load double, ptr %15, align 8, !tbaa !8, !alias.scope !36, !noalias !38
  %22 = load double, ptr %16, align 8, !tbaa !8, !alias.scope !36, !noalias !38
  %23 = insertelement <2 x double> poison, double %21, i64 0
  %24 = insertelement <2 x double> %23, double %22, i64 1
  %25 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %index38
  %26 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %10
  %27 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %11
  %28 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %12
  %29 = load double, ptr %25, align 8, !tbaa !8, !alias.scope !40
  %30 = load double, ptr %26, align 8, !tbaa !8, !alias.scope !40
  %31 = insertelement <2 x double> poison, double %29, i64 0
  %32 = insertelement <2 x double> %31, double %30, i64 1
  %33 = load double, ptr %27, align 8, !tbaa !8, !alias.scope !40
  %34 = load double, ptr %28, align 8, !tbaa !8, !alias.scope !40
  %35 = insertelement <2 x double> poison, double %33, i64 0
  %36 = insertelement <2 x double> %35, double %34, i64 1
  %37 = fmul <2 x double> %32, %broadcast.splat40
  %38 = fmul <2 x double> %36, %broadcast.splat40
  %39 = fsub <2 x double> %20, %37                ; 2 uses
  %40 = extractelement <2 x double> %39, i64 0
  %41 = extractelement <2 x double> %39, i64 1
  %42 = fsub <2 x double> %24, %38                ; 2 uses
  %43 = extractelement <2 x double> %42, i64 0
  %44 = extractelement <2 x double> %42, i64 1
  store double %40, ptr %13, align 8, !tbaa !8, !alias.scope !36, !noalias !38
  store double %41, ptr %14, align 8, !tbaa !8, !alias.scope !36, !noalias !38
  store double %43, ptr %15, align 8, !tbaa !8, !alias.scope !36, !noalias !38
  store double %44, ptr %16, align 8, !tbaa !8, !alias.scope !36, !noalias !38
  %index.next41 = add nuw i64 %index38, 4         ; 2 uses
  %45 = icmp eq i64 %index.next41, 1000
  br i1 %45, label %middle.block42, label %vector.body37, !llvm.loop !41

.preheader.i:                                     ; preds = %vector.memcheck26, %.preheader.i
  %indvars.iv96.i = phi i64 [ %indvars.iv.next97.i.1, %.preheader.i ], [ 0, %vector.memcheck26 ] ; 4 uses
  %gep81.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %indvars.iv96.i ; 2 uses
  %i.cu = load double, ptr %gep81.i, align 8, !tbaa !8
  %gep83.i = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv96.i
  %i.cv = load double, ptr %gep83.i, align 8, !tbaa !8
  %i.cw = load double, ptr %i.ck, align 8, !tbaa !8
  %i.cx = fmul double %i.cv, %i.cw
  %i.cy = fsub double %i.cu, %i.cx
  store double %i.cy, ptr %gep81.i, align 8, !tbaa !8
  %indvars.iv.next97.i = or disjoint i64 %indvars.iv96.i, 1 ; 2 uses
  %gep81.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep77.i, i64 %indvars.iv.next97.i ; 2 uses
  %i.cz = load double, ptr %gep81.i.1, align 8, !tbaa !8
  %gep83.i.1 = getelementptr inbounds nuw [9600 x i8], ptr %invariant.gep72.i, i64 %indvars.iv.next97.i
  %i.da = load double, ptr %gep83.i.1, align 8, !tbaa !8
  %i.db = load double, ptr %i.ck, align 8, !tbaa !8
  %i.dc = fmul double %i.da, %i.db
  %i.dd = fsub double %i.cz, %i.dc
  store double %i.dd, ptr %gep81.i.1, align 8, !tbaa !8
  %indvars.iv.next97.i.1 = add nuw nsw i64 %indvars.iv96.i, 2 ; 2 uses
  %exitcond99.not.i.1 = icmp eq i64 %indvars.iv.next97.i.1, 1000
  br i1 %exitcond99.not.i.1, label %middle.block42, label %.preheader.i, !llvm.loop !42

middle.block42:                                   ; preds = %vector.body37, %.preheader.i
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next103.i, 1200
  br i1 %exitcond105.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !43

kernel_gramschmidt.exit:                          ; preds = %.loopexit.i
  call fastcc void @print_array(ptr noundef %i.l, ptr noundef %i.r)
  call void @free(ptr noundef nonnull %i.e) #13
  call void @free(ptr noundef nonnull %i.l) #13
  call void @free(ptr noundef nonnull %i.r) #13
  ret i32 0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.2, i64 22, i64 1, ptr %i.a) #14 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #16 ; 0 uses
  br label %.preheader1

.preheader1:                                      ; preds = %bb.a, %bb.e
  %indvars.iv7 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next8, %bb.e ] ; 3 uses
  %i.e = mul nuw nsw i64 %indvars.iv7, 1200
  %i.f = getelementptr inbounds nuw [9600 x i8], ptr %0, i64 %indvars.iv7
  br label %bb.b

bb.b:                                             ; preds = %.preheader1, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.g = add nuw nsw i64 %indvars.iv, %i.e
  %i.h = trunc nuw nsw i64 %i.g to i32
  %i.i = urem i32 %i.h, 20
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc26 = tail call i32 @fputc(i32 10, ptr %i.k) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !8
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.6, double noundef %i.n) #16 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 1200
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !44

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1 ; 2 uses
  %exitcond10.not = icmp eq i64 %indvars.iv.next8, 1200
  br i1 %exitcond10.not, label %bb.f, label %.preheader1, !llvm.loop !45

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4) #16 ; 0 uses
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8) #16 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.j
  %indvars.iv15 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next16, %bb.j ] ; 3 uses
  %i.t = mul nuw nsw i64 %indvars.iv15, 1200
  %i.u = getelementptr inbounds nuw [9600 x i8], ptr %1, i64 %indvars.iv15
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %bb.i
  %indvars.iv11 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next12, %bb.i ] ; 3 uses
  %i.v = add nuw nsw i64 %indvars.iv11, %i.t
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = urem i32 %i.w, 20
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.z) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv11
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.6, double noundef %i.ac) #16 ; 0 uses
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1 ; 2 uses
  %exitcond14.not = icmp eq i64 %indvars.iv.next12, 1200
  br i1 %exitcond14.not, label %bb.j, label %bb.g, !llvm.loop !46

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1 ; 2 uses
  %exitcond18.not = icmp eq i64 %indvars.iv.next16, 1000
  br i1 %exitcond18.not, label %bb.k, label %.preheader, !llvm.loop !47

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #16 ; 0 uses
  %i.ag = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.ah = tail call i64 @fwrite(ptr nonnull @.str.9, i64 22, i64 1, ptr %i.ag) #14 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold noreturn nounwind }
attributes #16 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15, !16}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!23}
!23 = distinct !{!23, !24}
!24 = distinct !{!24, !"LVerDomain"}
!25 = !{!26}
!26 = distinct !{!26, !24}
!27 = !{!28}
!28 = distinct !{!28, !24}
!29 = !{!26, !23}
!30 = distinct !{!30, !15, !16, !17}
!31 = distinct !{!31, !15, !16}
!32 = distinct !{!32, !15}
!33 = !{!34}
!34 = distinct !{!34, !35}
!35 = distinct !{!35, !"LVerDomain"}
!36 = !{!37}
!37 = distinct !{!37, !35}
!38 = !{!39, !34}
!39 = distinct !{!39, !35}
!40 = !{!39}
!41 = distinct !{!41, !15, !16, !17}
!42 = distinct !{!42, !15, !16}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
end_hunk_0
