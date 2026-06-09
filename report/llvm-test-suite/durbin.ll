inline.NumInlined: 13
inline.NumDeleted: 6
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
@.str.2 = private unnamed_addr constant [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
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
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [2000 x double], align 16         ; 5 uses
  %i.b = alloca [2000 x double], align 16         ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store ptr null, ptr %i.e, align 8, !tbaa !10
  %i.f = call i32 @posix_memalign(ptr noundef nonnull %i.e, i64 noundef 4096, i64 noundef 16000) #13
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !10   ; 12 uses
  %i.h = icmp eq ptr %i.g, null
  %i.i = icmp ne i32 %i.f, 0
  %or.cond.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond.i.i, label %bb.b, label %polybench_alloc_data.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.k = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.j) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.l = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 16000) #13
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !10   ; 14 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = icmp ne i32 %i.l, 0
  %or.cond.i.i18 = select i1 %i.n, i1 true, i1 %i.o
  br i1 %or.cond.i.i18, label %bb.c, label %polybench_alloc_data.exit19

bb.c:                                             ; preds = %polybench_alloc_data.exit
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.q = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.p) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit19:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.r = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 16000) #13
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !10   ; 15 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = icmp ne i32 %i.r, 0
  %or.cond.i.i20 = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i20, label %bb.d, label %polybench_alloc_data.exit21

bb.d:                                             ; preds = %polybench_alloc_data.exit19
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.w = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %i.v) #14 ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

polybench_alloc_data.exit21:                      ; preds = %polybench_alloc_data.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %polybench_alloc_data.exit21
  %index = phi i64 [ 0, %polybench_alloc_data.exit21 ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %polybench_alloc_data.exit21 ], [ %vec.ind.next.1, %vector.body ] ; 5 uses
  %i.x = sub <2 x i32> splat (i32 2001), %vec.ind
  %i.y = sub <2 x i32> splat (i32 1999), %vec.ind
  %i.z = uitofp nneg <2 x i32> %i.x to <2 x double>
  %i.aa = uitofp nneg <2 x i32> %i.y to <2 x double>
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x double> %i.z, ptr %i.ab, align 8, !tbaa !8
  store <2 x double> %i.aa, ptr %i.ac, align 8, !tbaa !8
  %i.ad = sub <2 x i32> splat (i32 1997), %vec.ind
  %i.ae = sub <2 x i32> splat (i32 1995), %vec.ind
  %i.af = uitofp nneg <2 x i32> %i.ad to <2 x double>
  %i.ag = uitofp nneg <2 x i32> %i.ae to <2 x double>
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store <2 x double> %i.af, ptr %i.ai, align 8, !tbaa !8
  store <2 x double> %i.ag, ptr %i.aj, align 8, !tbaa !8
  %index.next.1 = add nuw nsw i64 %index, 8       ; 2 uses
  %vec.ind.next.1 = add <2 x i32> %vec.ind, splat (i32 8)
  %i.ak = icmp eq i64 %index.next.1, 2000
  br i1 %i.ak, label %init_array.exit, label %vector.body, !llvm.loop !14

init_array.exit:                                  ; preds = %vector.body
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.al = load double, ptr %i.g, align 8, !tbaa !8
  %i.am = fneg double %i.al
  store double %i.am, ptr %i.m, align 8, !tbaa !8
  %i.an = load double, ptr %i.g, align 8, !tbaa !8
  %i.ao = fneg double %i.an
  br label %bb.e

bb.e:                                             ; preds = %.preheader.preheader.i, %init_array.exit
  %indvars.iv60.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next61.i, %.preheader.preheader.i ] ; 9 uses
  %indvar.i = phi i64 [ 0, %init_array.exit ], [ %indvar.next.i, %.preheader.preheader.i ] ; 3 uses
  %.04249.i = phi double [ 1.000000e+00, %init_array.exit ], [ %i.ca, %.preheader.preheader.i ]
  %.04348.i = phi double [ %i.ao, %init_array.exit ], [ %i.ce, %.preheader.preheader.i ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv60.i ; 6 uses
  %xtraiter = and i64 %indvars.iv60.i, 3          ; 3 uses
  %i.aq = icmp samesign ult i64 %indvar.i, 3
  br i1 %i.aq, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %indvars.iv60.i, 9223372036854775804
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %indvars.iv.i22 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i23.3, %bb.f ] ; 9 uses
  %.04144.i = phi double [ 0.000000e+00, %.new ], [ %i.br, %bb.f ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.f ]
  %i.ar = xor i64 %indvars.iv.i22, -1
  %i.as = getelementptr [8 x i8], ptr %i.ap, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i22
  %i.av = load double, ptr %i.au, align 8, !tbaa !8
  %i.aw = call double @llvm.fmuladd.f64(double %i.at, double %i.av, double %.04144.i)
  %i.ax = xor i64 %indvars.iv.i22, -2
  %i.ay = getelementptr [8 x i8], ptr %i.ap, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i22
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !8
  %i.bd = call double @llvm.fmuladd.f64(double %i.az, double %i.bc, double %i.aw)
  %i.be = xor i64 %indvars.iv.i22, -3
  %i.bf = getelementptr [8 x i8], ptr %i.ap, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !8
  %i.bk = call double @llvm.fmuladd.f64(double %i.bg, double %i.bj, double %i.bd)
  %i.bl = xor i64 %indvars.iv.i22, -4
  %i.bm = getelementptr [8 x i8], ptr %i.ap, i64 %i.bl
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !8
  %i.br = call double @llvm.fmuladd.f64(double %i.bn, double %i.bq, double %i.bk) ; 3 uses
  %indvars.iv.next.i23.3 = add nuw nsw i64 %indvars.iv.i22, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.f, !llvm.loop !18

.unr-lcssa:                                       ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.e
  %indvars.iv.i22.epil.init = phi i64 [ 0, %bb.e ], [ %indvars.iv.next.i23.3, %.unr-lcssa ]
  %.04144.i.epil.init = phi double [ 0.000000e+00, %bb.e ], [ %i.br, %.unr-lcssa ]
  %lcmp.mod120 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod120)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %indvars.iv.i22.epil = phi i64 [ %indvars.iv.i22.epil.init, %.epil.preheader ], [ %indvars.iv.next.i23.epil, %bb.g ] ; 3 uses
  %.04144.i.epil = phi double [ %.04144.i.epil.init, %.epil.preheader ], [ %i.bx, %bb.g ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.bs = xor i64 %indvars.iv.i22.epil, -1
  %i.bt = getelementptr [8 x i8], ptr %i.ap, i64 %i.bs
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i22.epil
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8
  %i.bx = call double @llvm.fmuladd.f64(double %i.bu, double %i.bw, double %.04144.i.epil) ; 2 uses
  %indvars.iv.next.i23.epil = add nuw nsw i64 %indvars.iv.i22.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.g, !llvm.loop !19

.epilog-lcssa:                                    ; preds = %bb.g, %.unr-lcssa
  %.lcssa118 = phi double [ %i.br, %.unr-lcssa ], [ %i.bx, %bb.g ]
  %i.by = fneg double %.04348.i
  %i.bz = call double @llvm.fmuladd.f64(double %i.by, double %.04348.i, double 1.000000e+00)
  %i.ca = fmul double %.04249.i, %i.bz            ; 2 uses
  %i.cb = load double, ptr %i.ap, align 8, !tbaa !8
  %i.cc = fadd double %.lcssa118, %i.cb
  %i.cd = fneg double %i.cc
  %i.ce = fdiv double %i.cd, %i.ca                ; 4 uses
  %i.cf = getelementptr [8 x i8], ptr %i.m, i64 %indvars.iv60.i ; 3 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv60.i, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %.epilog-lcssa
  %n.vec = and i64 %indvars.iv60.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ce, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph76
  %index78 = phi i64 [ 0, %vector.ph76 ], [ %index.next83, %vector.body77 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index78 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !tbaa !8
  %wide.load79 = load <2 x double>, ptr %i.ch, align 8, !tbaa !8
  %i.ci = xor i64 %index78, -1
  %i.cj = getelementptr [8 x i8], ptr %i.cf, i64 %i.ci ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = getelementptr i8, ptr %i.cj, i64 -24
  %wide.load80 = load <2 x double>, ptr %i.ck, align 8, !tbaa !8
  %wide.load81 = load <2 x double>, ptr %i.cl, align 8, !tbaa !8
  %reverse = shufflevector <2 x double> %wide.load80, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse82 = shufflevector <2 x double> %wide.load81, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %reverse, <2 x double> %wide.load)
  %i.cn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %reverse82, <2 x double> %wide.load79)
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index78 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <2 x double> %i.cm, ptr %i.co, align 16, !tbaa !8
  store <2 x double> %i.cn, ptr %i.cp, align 16, !tbaa !8
  %index.next83 = add nuw i64 %index78, 4         ; 2 uses
  %i.cq = icmp eq i64 %index.next83, %n.vec
  br i1 %i.cq, label %middle.block84, label %vector.body77, !llvm.loop !21

middle.block84:                                   ; preds = %vector.body77
  %cmp.n = icmp eq i64 %indvars.iv60.i, %n.vec
  br i1 %cmp.n, label %.preheader.preheader.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.epilog-lcssa, %middle.block84
  %indvars.iv52.i.ph = phi i64 [ 0, %.epilog-lcssa ], [ %n.vec, %middle.block84 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %scalar.ph ], [ %indvars.iv52.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv52.i
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = xor i64 %indvars.iv52.i, -1
  %i.cu = getelementptr [8 x i8], ptr %i.cf, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !8
  %i.cw = call double @llvm.fmuladd.f64(double %i.ce, double %i.cv, double %i.cs)
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv52.i
  store double %i.cw, ptr %i.cx, align 8, !tbaa !8
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next53.i, %indvars.iv60.i
  br i1 %exitcond56.not.i, label %.preheader.preheader.i, label %scalar.ph, !llvm.loop !22

.preheader.preheader.i:                           ; preds = %scalar.ph, %middle.block84
  %i.cy = shl nuw nsw i64 %indvar.i, 3
  %i.cz = add nuw nsw i64 %i.cy, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 16 dereferenceable(1) %i.b, i64 %i.cz, i1 false), !tbaa !8
  store double %i.ce, ptr %i.cf, align 8, !tbaa !8
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 1999
  br i1 %exitcond63.not.i, label %kernel_durbin.exit, label %bb.e, !llvm.loop !23

kernel_durbin.exit:                               ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %kernel_durbin.exit
  %index88 = phi i64 [ 0, %kernel_durbin.exit ], [ %index.next91.1, %vector.body87 ] ; 3 uses
  %vec.ind89 = phi <2 x i32> [ <i32 0, i32 1>, %kernel_durbin.exit ], [ %vec.ind.next92.1, %vector.body87 ] ; 5 uses
  %i.da = sub <2 x i32> splat (i32 2001), %vec.ind89
  %i.db = sub <2 x i32> splat (i32 1999), %vec.ind89
  %i.dc = uitofp nneg <2 x i32> %i.da to <2 x double>
  %i.dd = uitofp nneg <2 x i32> %i.db to <2 x double>
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index88 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.fa = getelementptr [8 x i8], ptr %i.ds, i64 %i.ez
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i33.epil
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !8
  %i.fe = fmul double %i.fb, %i.fd
  %i.ff = fadd double %.04144.i34.epil, %i.fe     ; 2 uses
  %indvars.iv.next.i35.epil = add nuw nsw i64 %indvars.iv.i33.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %.epilog-lcssa127, label %bb.j, !llvm.loop !26

.epilog-lcssa127:                                 ; preds = %bb.j, %.unr-lcssa122
  %.lcssa117 = phi double [ %i.ey, %.unr-lcssa122 ], [ %i.ff, %bb.j ]
  %i.fg = fmul double %.04348.i32, %.04348.i32
  %i.fh = fsub double 1.000000e+00, %i.fg
  %i.fi = fmul double %.04249.i31, %i.fh          ; 2 uses
  %i.fj = load double, ptr %i.ds, align 8, !tbaa !8
  %i.fk = fadd double %.lcssa117, %i.fj
  %i.fl = fneg double %i.fk
  %i.fm = fdiv double %i.fl, %i.fi                ; 4 uses
  %i.fn = getelementptr [8 x i8], ptr %i.s, i64 %indvars.iv60.i29 ; 3 uses
  %min.iters.check95 = icmp samesign ult i64 %indvars.iv60.i29, 4
  br i1 %min.iters.check95, label %scalar.ph94.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %.epilog-lcssa127
  %n.vec98 = and i64 %indvars.iv60.i29, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %i.fm, i64 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph96
  %index102 = phi i64 [ 0, %vector.ph96 ], [ %index.next109, %vector.body101 ] ; 4 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index102 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %wide.load103 = load <2 x double>, ptr %i.fo, align 8, !tbaa !8
  %wide.load104 = load <2 x double>, ptr %i.fp, align 8, !tbaa !8
  %i.fq = xor i64 %index102, -1
  %i.fr = getelementptr [8 x i8], ptr %i.fn, i64 %i.fq ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = getelementptr i8, ptr %i.fr, i64 -24
  %wide.load105 = load <2 x double>, ptr %i.fs, align 8, !tbaa !8
  %wide.load106 = load <2 x double>, ptr %i.ft, align 8, !tbaa !8
  %reverse107 = shufflevector <2 x double> %wide.load105, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse108 = shufflevector <2 x double> %wide.load106, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.fu = fmul <2 x double> %broadcast.splat100, %reverse107
  %i.fv = fmul <2 x double> %broadcast.splat100, %reverse108
  %i.fw = fadd <2 x double> %wide.load103, %i.fu
  %i.fx = fadd <2 x double> %wide.load104, %i.fv
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index102 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x double> %i.fw, ptr %i.fy, align 16, !tbaa !8
  store <2 x double> %i.fx, ptr %i.fz, align 16, !tbaa !8
  %index.next109 = add nuw i64 %index102, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next109, %n.vec98
  br i1 %i.ga, label %middle.block110, label %vector.body101, !llvm.loop !27

middle.block110:                                  ; preds = %vector.body101
  %cmp.n111 = icmp eq i64 %indvars.iv60.i29, %n.vec98
  br i1 %cmp.n111, label %.preheader.preheader.i40, label %scalar.ph94.preheader

scalar.ph94.preheader:                            ; preds = %.epilog-lcssa127, %middle.block110
  %indvars.iv52.i37.ph = phi i64 [ 0, %.epilog-lcssa127 ], [ %n.vec98, %middle.block110 ]
  br label %scalar.ph94

scalar.ph94:                                      ; preds = %scalar.ph94.preheader, %scalar.ph94
  %indvars.iv52.i37 = phi i64 [ %indvars.iv.next53.i38, %scalar.ph94 ], [ %indvars.iv52.i37.ph, %scalar.ph94.preheader ] ; 4 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv52.i37
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !8
  %i.gd = xor i64 %indvars.iv52.i37, -1
  %i.ge = getelementptr [8 x i8], ptr %i.fn, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !8
  %i.gg = fmul double %i.fm, %i.gf
  %i.gh = fadd double %i.gc, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv52.i37
  store double %i.gh, ptr %i.gi, align 8, !tbaa !8
  %indvars.iv.next53.i38 = add nuw nsw i64 %indvars.iv52.i37, 1 ; 2 uses
  %exitcond56.not.i39 = icmp eq i64 %indvars.iv.next53.i38, %indvars.iv60.i29
  br i1 %exitcond56.not.i39, label %.preheader.preheader.i40, label %scalar.ph94, !llvm.loop !28

.preheader.preheader.i40:                         ; preds = %scalar.ph94, %middle.block110
  %i.gj = shl nuw nsw i64 %indvar.i30, 3
  %i.gk = add nuw nsw i64 %i.gj, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.gk, i1 false), !tbaa !8
  store double %i.fm, ptr %i.fn, align 8, !tbaa !8
  %indvars.iv.next61.i41 = add nuw nsw i64 %indvars.iv60.i29, 1
  %indvar.next.i42 = add nuw nsw i64 %indvar.i30, 1 ; 2 uses
  %exitcond63.not.i43 = icmp eq i64 %indvar.next.i42, 1999
  br i1 %exitcond63.not.i43, label %kernel_durbin_StrictFP.exit, label %bb.h, !llvm.loop !29

kernel_durbin_StrictFP.exit:                      ; preds = %.preheader.preheader.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.k:                                             ; preds = %.critedge.i.1, %kernel_durbin_StrictFP.exit
  %indvars.iv.i44 = phi i64 [ 0, %kernel_durbin_StrictFP.exit ], [ %indvars.iv.next.i45.1, %.critedge.i.1 ] ; 5 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i44
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !8 ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i44
  %i.go = load double, ptr %i.gn, align 8, !tbaa !8 ; 2 uses
  %i.gp = fsub double %i.gm, %i.go
  %i.gq = call double @llvm.fabs.f64(double %i.gp)
  %i.gr = fcmp ule double %i.gq, 1.000000e-05
  br i1 %i.gr, label %.critedge.i, label %check_FP.exit.thread

check_FP.exit.thread:                             ; preds = %.critedge.i, %bb.k
  %indvars.iv.i44.lcssa = phi i64 [ %indvars.iv.i44, %bb.k ], [ %indvars.iv.next.i45, %.critedge.i ]
  %.lcssa114 = phi double [ %i.gm, %bb.k ], [ %i.gw, %.critedge.i ]
  %.lcssa = phi double [ %i.go, %bb.k ], [ %i.gy, %.critedge.i ]
  %i.gs = trunc nuw nsw i64 %indvars.iv.i44.lcssa to i32 ; 2 uses
  %i.gt = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.gu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gt, ptr noundef nonnull @.str.2, i32 noundef %i.gs, double noundef %.lcssa114, i32 noundef %i.gs, double noundef %.lcssa, double noundef 1.000000e-05) #16 ; 0 uses
  br label %bb.l

.critedge.i:                                      ; preds = %bb.k
  %indvars.iv.next.i45 = or disjoint i64 %indvars.iv.i44, 1 ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i45
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !8 ; 2 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i45
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !8 ; 2 uses
  %i.gz = fsub double %i.gw, %i.gy
  %i.ha = call double @llvm.fabs.f64(double %i.gz)
  %i.hb = fcmp ule double %i.ha, 1.000000e-05
  br i1 %i.hb, label %.critedge.i.1, label %check_FP.exit.thread

.critedge.i.1:                                    ; preds = %.critedge.i
  %indvars.iv.next.i45.1 = add nuw nsw i64 %indvars.iv.i44, 2 ; 2 uses
  %exitcond.not.i46.1 = icmp eq i64 %indvars.iv.next.i45.1, 2000
  br i1 %exitcond.not.i46.1, label %check_FP.exit, label %bb.k, !llvm.loop !30

check_FP.exit:                                    ; preds = %.critedge.i.1
  call fastcc void @print_array(ptr noundef %i.s)
  call void @free(ptr noundef %i.g) #13
  call void @free(ptr noundef nonnull %i.m) #13
  call void @free(ptr noundef nonnull %i.s) #13
  br label %bb.l

bb.l:                                             ; preds = %check_FP.exit.thread, %check_FP.exit
  %.0 = phi i32 [ 0, %check_FP.exit ], [ 1, %check_FP.exit.thread ]
  ret i32 %.0
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @print_array(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.b = tail call i64 @fwrite(ptr nonnull @.str.3, i64 22, i64 1, ptr %i.a) #14 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #16 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.lhs.trunc = trunc i64 %indvars.iv to i16
  %i.e = urem i16 %.lhs.trunc, 20
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !12
  %fputc = tail call i32 @fputc(i32 10, ptr %i.g) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.j = load double, ptr %i.i, align 8, !tbaa !8
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.7, double noundef %i.j) #16 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !31

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.l, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #16 ; 0 uses
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !12
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.9, i64 22, i64 1, ptr %i.n) #14 ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

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
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.unroll.disable"}
!21 = distinct !{!21, !15, !16, !17}
!22 = distinct !{!22, !15, !17, !16}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15, !16, !17}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !15, !16, !17}
!28 = distinct !{!28, !15, !17, !16}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
end_hunk_1
