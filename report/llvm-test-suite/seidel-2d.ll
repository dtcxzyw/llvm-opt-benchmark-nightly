Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/seidel-2d?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumUnrolled: 1
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
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.i, label %bb.b, label %xmalloc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.h) #13 ; 0 uses
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
  store ptr null, ptr %i.b, align 8, !tbaa !11
  %i.c = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 32000000) #12
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !11   ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  %i.f = icmp ne i32 %i.c, 0
  %or.cond.i.i = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.g) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.h = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 32000000) #12
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !11   ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  %i.k = icmp ne i32 %i.h, 0
  %or.cond.i.i17 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond.i.i17, label %bb.c, label %polybench_alloc_data.exit19

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !13
  %fwrite.i.i18 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.l) #13 ; 0 uses
  call void @exit(i32 noundef 1) #14
  unreachable

polybench_alloc_data.exit19:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
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
  store <2 x double> %i.s, ptr %i.t, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.u = icmp eq i64 %index.next, 2000
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1 ; 2 uses
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next17.i, 2000
  br i1 %exitcond19.not.i, label %.preheader41.i, label %.preheader.i, !llvm.loop !15

.preheader41.i:                                   ; preds = %middle.block, %bb.f
  %.03944.i = phi i32 [ %i.au, %bb.f ], [ 0, %middle.block ]
  br label %.preheader.i20

.preheader.i20:                                   ; preds = %bb.e, %.preheader41.i
  %indvars.iv46.i = phi i64 [ 1, %.preheader41.i ], [ %indvars.iv.next47.i, %bb.e ] ; 2 uses
  %i.v = getelementptr [16000 x i8], ptr %i.d, i64 %indvars.iv46.i ; 8 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -16000   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16000 ; 2 uses
  %.pre.i = load double, ptr %i.w, align 8, !tbaa !9
  %.phi.trans.insert.i = getelementptr i8, ptr %i.v, i64 -15992
  %.pre51.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !9
  %.pre52.i = load double, ptr %i.v, align 8, !tbaa !9
  %.phi.trans.insert53.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre54.i = load double, ptr %.phi.trans.insert53.i, align 8, !tbaa !9
  %.pre55.i = load double, ptr %i.x, align 8, !tbaa !9
  %.phi.trans.insert56.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16008
  %.pre57.i = load double, ptr %.phi.trans.insert56.i, align 8, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader.i20
  %i.y = phi double [ %.pre57.i, %.preheader.i20 ], [ %i.ar, %bb.d ] ; 2 uses
  %i.z = phi double [ %.pre55.i, %.preheader.i20 ], [ %i.y, %bb.d ]
  %i.aa = phi double [ %.pre54.i, %.preheader.i20 ], [ %i.am, %bb.d ]
  %i.ab = phi double [ %.pre52.i, %.preheader.i20 ], [ %i.at, %bb.d ]
  %i.ac = phi double [ %.pre51.i, %.preheader.i20 ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ad = phi double [ %.pre.i, %.preheader.i20 ], [ %i.ac, %bb.d ]
  %indvars.iv.i21 = phi i64 [ 1, %.preheader.i20 ], [ %indvars.iv.next.i22, %bb.d ] ; 2 uses
  %i.ae = fadd double %i.ac, %i.ad
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1 ; 5 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next.i22
  %i.ag = load double, ptr %i.af, align 8, !tbaa !9 ; 2 uses
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = fadd double %i.ab, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i21
  %i.ak = fadd double %i.aa, %i.ai
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i22
  %i.am = load double, ptr %i.al, align 8, !tbaa !9 ; 2 uses
  %i.an = fadd double %i.am, %i.ak
  %i.ao = fadd double %i.z, %i.an
  %i.ap = fadd double %i.y, %i.ao
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next.i22
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !9 ; 2 uses
  %i.as = fadd double %i.ar, %i.ap
  %i.at = fdiv double %i.as, 9.000000e+00         ; 2 uses
  store double %i.at, ptr %i.aj, align 8, !tbaa !9
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, 1999
  br i1 %exitcond.not.i23, label %bb.e, label %bb.d, !llvm.loop !16

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond49.not.i = icmp eq i64 %indvars.iv.next47.i, 1999
  br i1 %exitcond49.not.i, label %bb.f, label %.preheader.i20, !llvm.loop !17

bb.f:                                             ; preds = %bb.e
  %i.au = add nuw nsw i32 %.03944.i, 1            ; 2 uses
  %exitcond50.not.i = icmp eq i32 %i.au, 500
  br i1 %exitcond50.not.i, label %.preheader.i24, label %.preheader41.i, !llvm.loop !18

.preheader.i24:                                   ; preds = %bb.f, %middle.block93
  %indvars.iv16.i25 = phi i64 [ %indvars.iv.next17.i29, %middle.block93 ], [ 0, %bb.f ] ; 3 uses
  %i.av = getelementptr inbounds nuw [16000 x i8], ptr %i.i, i64 %indvars.iv16.i25
  %broadcast.splatinsert86 = insertelement <2 x i64> poison, i64 %indvars.iv16.i25, i64 0
  %broadcast.splat87 = shufflevector <2 x i64> %broadcast.splatinsert86, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %vector.body88

vector.body88:                                    ; preds = %vector.body88, %.preheader.i24
  %index89 = phi i64 [ 0, %.preheader.i24 ], [ %index.next91, %vector.body88 ] ; 2 uses
  %vec.ind90 = phi <2 x i64> [ <i64 0, i64 1>, %.preheader.i24 ], [ %vec.ind.next92, %vector.body88 ] ; 2 uses
  %i.aw = add nuw nsw <2 x i64> %vec.ind90, splat (i64 2)
  %i.ax = mul nuw nsw <2 x i64> %i.aw, %broadcast.splat87
  %i.ay = trunc <2 x i64> %i.ax to <2 x i32>
  %i.az = add <2 x i32> %i.ay, splat (i32 2)
  %i.ba = uitofp nneg <2 x i32> %i.az to <2 x double>
  %i.bb = fdiv <2 x double> %i.ba, splat (double 2.000000e+03)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index89
  store <2 x double> %i.bb, ptr %i.bc, align 8, !tbaa !9
  %index.next91 = add nuw i64 %index89, 2         ; 2 uses
  %vec.ind.next92 = add nuw nsw <2 x i64> %vec.ind90, splat (i64 2)
  %i.bd = icmp eq i64 %index.next91, 2000
  br i1 %i.bd, label %middle.block93, label %vector.body88, !llvm.loop !19

middle.block93:                                   ; preds = %vector.body88
  %indvars.iv.next17.i29 = add nuw nsw i64 %indvars.iv16.i25, 1 ; 2 uses
  %exitcond19.not.i30 = icmp eq i64 %indvars.iv.next17.i29, 2000
  br i1 %exitcond19.not.i30, label %.preheader41.i32, label %.preheader.i24, !llvm.loop !15

.preheader41.i32:                                 ; preds = %middle.block93, %bb.i
  %.03944.i33 = phi i32 [ %i.cd, %bb.i ], [ 0, %middle.block93 ]
  br label %.preheader.i34

.preheader.i34:                                   ; preds = %bb.h, %.preheader41.i32
  %indvars.iv46.i35 = phi i64 [ 1, %.preheader41.i32 ], [ %indvars.iv.next47.i48, %bb.h ] ; 2 uses
  %i.be = getelementptr [16000 x i8], ptr %i.i, i64 %indvars.iv46.i35 ; 8 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -16000 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 16000 ; 2 uses
  %.pre.i36 = load double, ptr %i.bf, align 8, !tbaa !9
  %.phi.trans.insert.i37 = getelementptr i8, ptr %i.be, i64 -15992
  %.pre51.i38 = load double, ptr %.phi.trans.insert.i37, align 8, !tbaa !9
  %.pre52.i39 = load double, ptr %i.be, align 8, !tbaa !9
  %.phi.trans.insert53.i40 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre54.i41 = load double, ptr %.phi.trans.insert53.i40, align 8, !tbaa !9
  %.pre55.i42 = load double, ptr %i.bg, align 8, !tbaa !9
  %.phi.trans.insert56.i43 = getelementptr inbounds nuw i8, ptr %i.be, i64 16008
  %.pre57.i44 = load double, ptr %.phi.trans.insert56.i43, align 8, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i34
  %i.bh = phi double [ %.pre57.i44, %.preheader.i34 ], [ %i.ca, %bb.g ] ; 2 uses
  %i.bi = phi double [ %.pre55.i42, %.preheader.i34 ], [ %i.bh, %bb.g ]
  %i.bj = phi double [ %.pre54.i41, %.preheader.i34 ], [ %i.bv, %bb.g ]
  %i.bk = phi double [ %.pre52.i39, %.preheader.i34 ], [ %i.cc, %bb.g ]
  %i.bl = phi double [ %.pre51.i38, %.preheader.i34 ], [ %i.bp, %bb.g ] ; 2 uses
  %i.bm = phi double [ %.pre.i36, %.preheader.i34 ], [ %i.bl, %bb.g ]
  %indvars.iv.i45 = phi i64 [ 1, %.preheader.i34 ], [ %indvars.iv.next.i46, %bb.g ] ; 2 uses
  %i.bn = fadd double %i.bl, %i.bm
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 5 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i46
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !9 ; 2 uses
  %i.bq = fadd double %i.bn, %i.bp
  %i.br = fadd double %i.bk, %i.bq
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i45
  %i.bt = fadd double %i.bj, %i.br
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.i46
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !9 ; 2 uses
  %i.bw = fadd double %i.bv, %i.bt
  %i.bx = fadd double %i.bi, %i.bw
  %i.by = fadd double %i.bh, %i.bx
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next.i46
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !9 ; 2 uses
  %i.cb = fadd double %i.ca, %i.by
  %i.cc = fdiv double %i.cb, 9.000000e+00         ; 2 uses
  store double %i.cc, ptr %i.bs, align 8, !tbaa !9
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 1999
  br i1 %exitcond.not.i47, label %bb.h, label %bb.g, !llvm.loop !20

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next47.i48 = add nuw nsw i64 %indvars.iv46.i35, 1 ; 2 uses
  %exitcond49.not.i49 = icmp eq i64 %indvars.iv.next47.i48, 1999
  br i1 %exitcond49.not.i49, label %bb.i, label %.preheader.i34, !llvm.loop !21

bb.i:                                             ; preds = %bb.h
  %i.cd = add nuw nsw i32 %.03944.i33, 1          ; 2 uses
  %exitcond50.not.i50 = icmp eq i32 %i.cd, 500
  br i1 %exitcond50.not.i50, label %.preheader.i51, label %.preheader41.i32, !llvm.loop !22

.preheader.i51:                                   ; preds = %bb.i, %bb.k
  %indvars.iv39.i = phi i64 [ %indvars.iv.next40.i, %bb.k ], [ 0, %bb.i ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [16000 x i8], ptr %i.d, i64 %indvars.iv39.i ; 2 uses
  %i.cf = getelementptr inbounds nuw [16000 x i8], ptr %i.i, i64 %indvars.iv39.i ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i.1, %.preheader.i51
  %indvars.iv.i52 = phi i64 [ 0, %.preheader.i51 ], [ %indvars.iv.next.i53.1, %.critedge.i.1 ] ; 5 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i52
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !9 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.i52
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !9 ; 2 uses
  %i.ck = fsub double %i.ch, %i.cj
  %2 = call double @llvm.fabs.f64(double %i.ck)
  %i.cl = fcmp ule double %2, 1.000000e-05
  br i1 %i.cl, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.j
  %indvars.iv.i52.lcssa = phi i64 [ %indvars.iv.i52, %bb.j ], [ %indvars.iv.next.i53, %.critedge.i ]
  %.lcssa96 = phi double [ %i.ch, %bb.j ], [ %i.cq, %.critedge.i ]
  %.lcssa = phi double [ %i.cj, %bb.j ], [ %i.cs, %.critedge.i ]
  %i.cm = trunc nuw nsw i64 %indvars.iv39.i to i32 ; 2 uses
  %i.cn = trunc nuw nsw i64 %indvars.iv.i52.lcssa to i32 ; 2 uses
  %i.co = load ptr, ptr @stderr, align 8, !tbaa !13
  %3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.co, ptr noundef nonnull @.str.2, i32 noundef %i.cm, i32 noundef %i.cn, double noundef %.lcssa96, i32 noundef %i.cm, i32 noundef %i.cn, double noundef %.lcssa, double noundef 1.000000e-05) #15 ; 0 uses
  br label %bb.n

.critedge.i:                                      ; preds = %bb.j
  %indvars.iv.next.i53 = or disjoint i64 %indvars.iv.i52, 1 ; 3 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.next.i53
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !9 ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i53
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !9 ; 2 uses
  %i.ct = fsub double %i.cq, %i.cs
  %4 = call double @llvm.fabs.f64(double %i.ct)
  %i.cu = fcmp ule double %4, 1.000000e-05
  br i1 %i.cu, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i53.1 = add nuw nsw i64 %indvars.iv.i52, 2 ; 2 uses
  %exitcond.not.i54.1 = icmp eq i64 %indvars.iv.next.i53.1, 2000
  br i1 %exitcond.not.i54.1, label %bb.k, label %bb.j, !llvm.loop !23

bb.k:                                             ; preds = %.critedge.i.1
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1 ; 2 uses
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next40.i, 2000
  br i1 %exitcond42.not.i, label %check_FP.exit, label %.preheader.i51, !llvm.loop !24

check_FP.exit:                                    ; preds = %bb.k
  %5 = call noalias dereferenceable_or_null(32001) ptr @malloc(i64 noundef 32001) #16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 32000
  store i8 0, ptr %i.cv, align 1, !tbaa !30
  br label %.preheader.i55

.preheader.i55:                                   ; preds = %bb.m, %check_FP.exit
  %indvars.iv20.i = phi i64 [ 0, %check_FP.exit ], [ %indvars.iv.next21.i, %bb.m ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [16000 x i8], ptr %i.i, i64 %indvars.iv20.i
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader.i55
  %indvars.iv.i56 = phi i64 [ 0, %.preheader.i55 ], [ %indvars.iv.next.i57, %bb.l ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.i56
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !9
  %i.cz = shl nuw nsw i64 %indvars.iv.i56, 4
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 %i.cz
  %.inner = and i64 %i.cy, 1085102592571150095
  %.inner94 = or disjoint i64 %.inner, 3472328296227680304
  %i.db = bitcast i64 %.inner94 to <8 x i8>
  %i.dc = shufflevector <8 x i8> %i.db, <8 x i8> poison, <16 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  store <16 x i8> %i.dc, ptr %i.da, align 1, !tbaa !30
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, 2000
  br i1 %exitcond.not.i58, label %bb.m, label %bb.l, !llvm.loop !25

bb.m:                                             ; preds = %bb.l
  %i.dd = load ptr, ptr @stderr, align 8, !tbaa !13
  %6 = call i32 @fputs(ptr noundef nonnull %5, ptr noundef %i.dd) #13 ; 0 uses
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next21.i, 2000
  br i1 %exitcond23.not.i, label %print_array.exit, label %.preheader.i55, !llvm.loop !26

print_array.exit:                                 ; preds = %bb.m
  call void @free(ptr noundef nonnull %5) #12
  call void @free(ptr noundef %i.d) #12
  call void @free(ptr noundef nonnull %i.i) #12
  br label %bb.n

bb.n:                                             ; preds = %check_FP.exit.thread, %print_array.exit
  %.0 = phi i32 [ 0, %print_array.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

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
!14 = distinct !{!14, !27, !28, !29}
!15 = distinct !{!15, !27}
!16 = distinct !{!16, !27}
!17 = distinct !{!17, !27}
!18 = distinct !{!18, !27}
!19 = distinct !{!19, !27, !28, !29}
!20 = distinct !{!20, !27}
!21 = distinct !{!21, !27}
!22 = distinct !{!22, !27}
!23 = distinct !{!23, !27}
!24 = distinct !{!24, !27}
!25 = distinct !{!25, !27}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!5, !5, i64 0}
end_hunk_0
