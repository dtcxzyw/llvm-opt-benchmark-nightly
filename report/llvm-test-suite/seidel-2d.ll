Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/seidel-2d?download=true
inline.NumInlined: 14
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
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 !guid !43 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #13
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !20   ; 5 uses
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
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 32000000) #13
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !20   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp ne i32 %i.h, 0
  %or.cond.i.i17 = or i1 %i.k, %i.j
  br i1 %or.cond.i.i17, label %bb.c, label %polybench_alloc_data.exit19

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !22
  %fwrite.i.i18 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.l) #14 ; 0 uses
  tail call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit19:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.preheader.i

.preheader.i:                                     ; preds = %middle.block, %polybench_alloc_data.exit19
  %indvars.iv16.i = phi i64 [ 0, %polybench_alloc_data.exit19 ], [ %indvars.iv.next17.i, %middle.block ] ; 3 uses
  %i.m = getelementptr inbounds nuw [16000 x i8], ptr %i.d, i64 %indvars.iv16.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %indvars.iv16.i, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader.i
  %index = phi i64 [ 0, %.preheader.i ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.n = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.o = mul nuw nsw <2 x i64> %i.n, %broadcast.splat
  %i.p = trunc <2 x i64> %i.o to <2 x i32>
  %i.q = add <2 x i32> %i.p, splat (i32 2)
  %i.r = uitofp nneg <2 x i32> %i.q to <2 x double>
  %i.s = fdiv <2 x double> %i.r, splat (double 2.000000e+03)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index
  store <2 x double> %i.s, ptr %i.t, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.u = icmp eq i64 %index.next, 2000
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1 ; 2 uses
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next17.i, 2000
  br i1 %exitcond19.not.i, label %.preheader41.i, label %.preheader.i, !llvm.loop !31

.preheader41.i:                                   ; preds = %middle.block, %bb.f
  %.03944.i = phi i32 [ %i.as, %bb.f ], [ 0, %middle.block ]
  br label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e, %.preheader41.i
  %indvars.iv46.i = phi i64 [ 1, %.preheader41.i ], [ %indvars.iv.next47.i, %bb.e ] ; 2 uses
  %i.v = getelementptr [16000 x i8], ptr %i.d, i64 %indvars.iv46.i ; 8 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -16000   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16000 ; 2 uses
  %.pre.i = load double, ptr %i.w, align 8, !tbaa !18
  %.phi.trans.insert.i = getelementptr i8, ptr %i.v, i64 -15992
  %.pre51.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !18
  %.pre52.i.a = load double, ptr %i.v, align 8, !tbaa !18
  %.phi.trans.insert53.i.a = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre54.i.a = load double, ptr %.phi.trans.insert53.i.a, align 8, !tbaa !18
  %.pre55.i = load double, ptr %i.x, align 8, !tbaa !18
  %.phi.trans.insert56.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16008
  %.pre57.i = load double, ptr %.phi.trans.insert56.i, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i20
  %i.y = phi double [ %.pre57.i, %.preheader.i20 ], [ %i.ap, %bb.d ] ; 2 uses
  %i.z = phi double [ %.pre55.i, %.preheader.i20 ], [ %i.y, %bb.d ]
  %i.aa = phi double [ %.pre54.i.a, %.preheader.i20 ], [ %i.ak, %bb.d ]
  %i.ab = phi double [ %.pre52.i.a, %.preheader.i20 ], [ %i.ar, %bb.d ]
  %2 = phi double [ %.pre51.i, %.preheader.i20 ], [ %i.ae, %bb.d ] ; 2 uses
  %3 = phi double [ %.pre.i, %.preheader.i20 ], [ %2, %bb.d ]
  %indvars.iv.i21 = phi i64 [ 1, %.preheader.i20 ], [ %indvars.iv.next.i22, %bb.d ] ; 2 uses
  %i.ac = fadd double %2, %3
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i22
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.af = fadd double %i.ac, %i.ae
  %i.ag = fadd double %i.ab, %i.af
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i21
  %i.ai = fadd double %i.aa, %i.ag
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i22
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18 ; 2 uses
  %i.al = fadd double %i.ak, %i.ai
  %i.am = fadd double %i.z, %i.al
  %i.an = fadd double %i.y, %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i22
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !18 ; 2 uses
  %i.aq = fadd double %i.ap, %i.an
  %i.ar = fdiv double %i.aq, 9.000000e+00         ; 2 uses
  store double %i.ar, ptr %i.ah, align 8, !tbaa !18
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, 1999
  br i1 %exitcond.not.i23, label %bb.e, label %bb.d, !llvm.loop !32

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next47.i, 1999
  br i1 %exitcond49.not.i, label %bb.f, label %.preheader.i20, !llvm.loop !33

bb.f:                                             ; preds = %bb.e
  %i.as = add nuw nsw i32 %.03944.i, 1            ; 2 uses
  %exitcond50.not.i = icmp eq i32 %i.as, 500
  br i1 %exitcond50.not.i, label %.preheader.i24, label %.preheader41.i, !llvm.loop !34

.preheader.i24:                                   ; preds = %bb.f, %middle.block93
  %indvars.iv16.i25 = phi i64 [ %indvars.iv.next17.i29, %middle.block93 ], [ 0, %bb.f ] ; 3 uses
  %i.at = getelementptr inbounds nuw [16000 x i8], ptr %i.i, i64 %indvars.iv16.i25
  %broadcast.splatinsert86 = insertelement <2 x i64> poison, i64 %indvars.iv16.i25, i64 0
  %broadcast.splat87 = shufflevector <2 x i64> %broadcast.splatinsert86, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %.preheader.i24
  %index89 = phi i64 [ 0, %.preheader.i24 ], [ %index.next91, %vector.body88 ] ; 2 uses
  %vec.ind90 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i24 ], [ %vec.ind.next92, %vector.body88 ] ; 2 uses
  %i.au = add nuw nsw <2 x i64> %vec.ind90, splat (i64 2)
  %i.av = mul nuw nsw <2 x i64> %i.au, %broadcast.splat87
  %i.aw = trunc <2 x i64> %i.av to <2 x i32>
  %i.ax = add <2 x i32> %i.aw, splat (i32 2)
  %i.ay = uitofp nneg <2 x i32> %i.ax to <2 x double>
  %i.az = fdiv <2 x double> %i.ay, splat (double 2.000000e+03)
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index89
  store <2 x double> %i.az, ptr %i.ba, align 8, !tbaa !18
  %index.next91 = add nuw i64 %index89, 2         ; 2 uses
  %vec.ind.next92 = add nuw nsw <2 x i64> %vec.ind90, splat (i64 2)
  %i.bb = icmp eq i64 %index.next91, 2000
  br i1 %i.bb, label %middle.block93, label %vector.body88, !llvm.loop !35

middle.block93:                                   ; preds = %vector.body88
  %indvars.iv.next17.i29 = add nuw nsw i64 %indvars.iv16.i25, 1 ; 2 uses
  %exitcond19.not.i30 = icmp eq i64 %indvars.iv.next17.i29, 2000
  br i1 %exitcond19.not.i30, label %.preheader41.i32, label %.preheader.i24, !llvm.loop !31

.preheader41.i32:                                 ; preds = %middle.block93, %bb.i
  %.03944.i33 = phi i32 [ %i.bz, %bb.i ], [ 0, %middle.block93 ]
  br label %.preheader.i34

.preheader.i34:                                   ; preds = %bb.h, %.preheader41.i32
  %indvars.iv46.i35 = phi i64 [ 1, %.preheader41.i32 ], [ %indvars.iv.next47.i48, %bb.h ] ; 2 uses
  %i.bc = getelementptr [16000 x i8], ptr %i.i, i64 %indvars.iv46.i35 ; 8 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 -16000 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16000 ; 2 uses
  %.pre.i36 = load double, ptr %i.bd, align 8, !tbaa !18
  %.phi.trans.insert.i37 = getelementptr i8, ptr %i.bc, i64 -15992
  %.pre51.i38 = load double, ptr %.phi.trans.insert.i37, align 8, !tbaa !18
  %.pre52.i39.a = load double, ptr %i.bc, align 8, !tbaa !18
  %.phi.trans.insert53.i40.a = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.pre54.i41.a = load double, ptr %.phi.trans.insert53.i40.a, align 8, !tbaa !18
  %.pre55.i42 = load double, ptr %i.be, align 8, !tbaa !18
  %.phi.trans.insert56.i43 = getelementptr inbounds nuw i8, ptr %i.bc, i64 16008
  %.pre57.i44 = load double, ptr %.phi.trans.insert56.i43, align 8, !tbaa !18
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i34
  %i.bf = phi double [ %.pre57.i44, %.preheader.i34 ], [ %i.bw, %bb.g ] ; 2 uses
  %i.bg = phi double [ %.pre55.i42, %.preheader.i34 ], [ %i.bf, %bb.g ]
  %i.bh = phi double [ %.pre54.i41.a, %.preheader.i34 ], [ %i.br, %bb.g ]
  %i.bi = phi double [ %.pre52.i39.a, %.preheader.i34 ], [ %i.by, %bb.g ]
  %4 = phi double [ %.pre51.i38, %.preheader.i34 ], [ %i.bl, %bb.g ] ; 2 uses
  %5 = phi double [ %.pre.i36, %.preheader.i34 ], [ %4, %bb.g ]
  %indvars.iv.i45 = phi i64 [ 1, %.preheader.i34 ], [ %indvars.iv.next.i46, %bb.g ] ; 2 uses
  %i.bj = fadd double %4, %5
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i46
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !18 ; 2 uses
  %i.bm = fadd double %i.bj, %i.bl
  %i.bn = fadd double %i.bi, %i.bm
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i45
  %i.bp = fadd double %i.bh, %i.bn
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i46
  %i.br = load double, ptr %i.bq, align 8, !tbaa !18 ; 2 uses
  %i.bs = fadd double %i.br, %i.bp
  %i.bt = fadd double %i.bg, %i.bs
  %i.bu = fadd double %i.bf, %i.bt
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i46
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !18 ; 2 uses
  %i.bx = fadd double %i.bw, %i.bu
  %i.by = fdiv double %i.bx, 9.000000e+00         ; 2 uses
  store double %i.by, ptr %i.bo, align 8, !tbaa !18
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 1999
  br i1 %exitcond.not.i47, label %bb.h, label %bb.g, !llvm.loop !36

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next47.i48 = add nuw nsw i64 %indvars.iv46.i35, 1 ; 2 uses
  %exitcond49.not.i49 = icmp eq i64 %indvars.iv.next47.i48, 1999
  br i1 %exitcond49.not.i49, label %bb.i, label %.preheader.i34, !llvm.loop !37

bb.i:                                             ; preds = %bb.h
  %i.bz = add nuw nsw i32 %.03944.i33, 1          ; 2 uses
  %exitcond50.not.i50 = icmp eq i32 %i.bz, 500
  br i1 %exitcond50.not.i50, label %.preheader.i51, label %.preheader41.i32, !llvm.loop !38

.preheader.i51:                                   ; preds = %bb.i, %bb.k
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.k ], [ 0, %bb.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [16000 x i8], ptr %i.d, i64 %indvars.iv39.i ; 2 uses
  %i.cb = getelementptr inbounds nuw [16000 x i8], ptr %i.i, i64 %indvars.iv39.i ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i.1, %.preheader.i51
  %indvars.iv.i52 = phi i64 [ 0, %.preheader.i51 ], [ %indvars.iv.next.i53.1, %.critedge.i.1 ] ; 5 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i52
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.i52
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !18 ; 2 uses
  %i.cg = fsub double %i.cd, %i.cf
  %i.ch = tail call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fcmp ule double %i.ch, 1.000000e-05
  br i1 %i.ci, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.j
  %indvars.iv.i52.lcssa = phi i64 [ %indvars.iv.i52, %bb.j ], [ %indvars.iv.next.i53, %.critedge.i ]
  %.lcssa96 = phi double [ %i.cd, %bb.j ], [ %i.co, %.critedge.i ]
  %.lcssa = phi double [ %i.cf, %bb.j ], [ %i.cq, %.critedge.i ]
  %i.cj = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.ck = trunc nuw nsw i64 %indvars.iv.i52.lcssa to i32 ; 2 uses
  %i.cl = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.cm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cl, ptr noundef nonnull @.str.2, i32 noundef %i.cj, i32 noundef %i.ck, double noundef %.lcssa96, i32 noundef %i.cj, i32 noundef %i.ck, double noundef %.lcssa, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %indvars.iv.next.i53 = or disjoint i64 %indvars.iv.i52, 1 ; 3 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next.i53
  %i.co = load double, ptr %i.cn, align 8, !tbaa !18 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv.next.i53
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !18 ; 2 uses
  %i.cr = fsub double %i.co, %i.cq
  %i.cs = tail call double @llvm.fabs.f64(double %i.cr)
  %i.ct = fcmp ule double %i.cs, 1.000000e-05
  br i1 %i.ct, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i53.1 = add nuw nsw i64 %indvars.iv.i52, 2 ; 2 uses
  %exitcond.not.i54.1 = icmp eq i64 %indvars.iv.next.i53.1, 2000
  br i1 %exitcond.not.i54.1, label %bb.k, label %bb.j, !llvm.loop !39

bb.k:                                             ; preds = %.critedge.i.1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2000
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i51, !llvm.loop !40

check_FP.exit:                                    ; preds = %bb.k
  %i.cu = tail call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #17 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32000
  store i8 0, ptr %i.cv, align 1, !tbaa !47
  br label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.m, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.m ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16000 x i8], ptr %i.i, i64 %indvars.iv20.i
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i55
  %indvars.iv.i56 = phi i64 [ 0, %.preheader.i55 ], [ %indvars.iv.next.i57, %bb.l ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i56
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !18
  %i.cz = shl nuw nsw i64 %indvars.iv.i56, 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %.inner = and i64 %i.cy, 1085102592571150095
  %.inner94 = or disjoint i64 %.inner, 3472328296227680304
  %i.db = bitcast i64 %.inner94 to <8 x i8>
  %i.dc = shufflevector <8 x i8> %i.db, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.dc, ptr %i.da, align 1, !tbaa !47
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, 2000
  br i1 %exitcond.not.i58, label %bb.m, label %bb.l, !llvm.loop !41

bb.m:                                             ; preds = %bb.l
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.de = tail call i32 @fputs(ptr noundef nonnull %i.cu, ptr noundef %i.dd) #14 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i55, !llvm.loop !42

print_array.exit:                                 ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.cu) #13
  tail call void @free(ptr noundef %i.d) #13
  tail call void @free(ptr noundef nonnull %i.i) #13
  br label %bb.n

bb.n:                                             ; preds = %check_FP.exit.thread, %print_array.exit
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
!8 = !{i64 -806784931565097052}
!9 = !{i64 1361650078910839278}
!10 = !{i64 -5417346137170862001}
!11 = !{i64 4595329937442580317}
!12 = !{i64 -7025293608926814208}
!13 = !{i64 -7342903817849636275}
!14 = !{i64 774085790601897068}
!15 = !{i64 -2998297523276577248}
!16 = !{i64 2637074913101792993}
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
!30 = distinct !{!30, !44, !45, !46}
!31 = distinct !{!31, !44}
!32 = distinct !{!32, !44}
!33 = distinct !{!33, !44}
!34 = distinct !{!34, !44}
!35 = distinct !{!35, !44, !45, !46}
!36 = distinct !{!36, !44}
!37 = distinct !{!37, !44}
!38 = distinct !{!38, !44}
!39 = distinct !{!39, !44}
!40 = distinct !{!40, !44}
!41 = distinct !{!41, !44}
!42 = distinct !{!42, !44}
!43 = !{i64 -2624081020897602054}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
