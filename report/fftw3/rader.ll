Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/rader?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan_adt = type { ptr, ptr, ptr, ptr }

@mksolver.sadt = internal constant { i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @mkplan, ptr null }, align 8
@mkplan.padt = internal constant %struct.plan_adt { ptr @fftw_dft_solve, ptr @awake, ptr @print, ptr @destroy }, align 8
@omegas = internal global ptr null, align 8
@.str = private unnamed_addr constant [30 x i8] c"(dft-rader-%D%ois=%oos=%(%p%)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%(%p%)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fftw_dft_rader_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_mksolver(i64 noundef 16, ptr noundef nonnull @mksolver.sadt) #4
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.a) #4
  ret void
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !34
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = load i32, ptr %i.f, align 8, !tbaa !34
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %applicable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 212 ; 2 uses
  %i.j = load i64, ptr %i.i, align 4
  %i.k = and i64 %i.j, 8
  %.not.i = icmp eq i64 %i.k, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !37 ; 2 uses
  %i.l = icmp sgt i64 %.pre.i, 32
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %._crit_edge.i, label %applicable.exit.thread

._crit_edge.i:                                    ; preds = %bb.c
  %i.m = tail call i32 @fftw_is_prime(i64 noundef %.pre.i) #4
  %.not8.i = icmp eq i32 %i.m, 0
  br i1 %.not8.i, label %applicable.exit.thread, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.n = load i64, ptr %i.i, align 4
  %i.o = and i64 %i.n, 8
  %.not9.i = icmp eq i64 %i.o, 0
  br i1 %.not9.i, label %applicable.exit.thread19, label %applicable.exit

applicable.exit:                                  ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !37
  %i.s = add nsw i64 %i.r, -1
  %i.t = tail call i32 @fftw_factors_into_small_primes(i64 noundef %i.s) #4
  %.not23 = icmp eq i32 %i.t, 0
  br i1 %.not23, label %applicable.exit.thread, label %applicable.exit.thread19

applicable.exit.thread19:                         ; preds = %bb.d, %applicable.exit
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38   ; 4 uses
  %i.aa = load <2 x i64>, ptr %i.x, align 8, !tbaa !39
  %i.ab = tail call ptr @fftw_mkplan_dft(i64 noundef 136, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull @apply) #4 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41
  %i.ag = add nsw i64 %i.w, -1                    ; 7 uses
  %i.ah = shl i64 %i.ag, 4
  %i.ai = tail call ptr @fftw_malloc_plain(i64 noundef %i.ah) #4 ; 7 uses
  %i.aj = tail call ptr @fftw_mktensor_1d(i64 noundef %i.ag, i64 noundef 2, i64 noundef %i.z) #4
  %i.ak = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 4 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.z ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.z ; 2 uses
  %i.ao = tail call ptr @fftw_mkproblem_dft_d(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef %i.ai, ptr noundef nonnull %i.al, ptr noundef %i.am, ptr noundef %i.an) #4
  %i.ap = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.ao, i32 noundef 8, i32 noundef 0, i32 noundef 0) #4 ; 4 uses
  %.not.i17 = icmp eq ptr %i.ap, null
  br i1 %.not.i17, label %bb.g, label %bb.e

bb.e:                                             ; preds = %applicable.exit.thread19
  %i.aq = tail call ptr @fftw_mktensor_1d(i64 noundef %i.ag, i64 noundef %i.z, i64 noundef 2) #4
  %i.ar = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #4
  %i.as = tail call ptr @fftw_mkproblem_dft_d(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %i.am, ptr noundef %i.an, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al) #4
  %i.at = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.as, i32 noundef 8, i32 noundef 0, i32 noundef 0) #4 ; 4 uses
  %.not61.i = icmp eq ptr %i.at, null
  br i1 %.not61.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = tail call ptr @fftw_mktensor_1d(i64 noundef %i.ag, i64 noundef 2, i64 noundef 2) #4
  %i.av = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #4
  %i.aw = tail call ptr @fftw_mkproblem_dft_d(ptr noundef %i.au, ptr noundef %i.av, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.al) #4
  %i.ax = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.aw, i32 noundef 8, i32 noundef 2, i32 noundef 0) #4 ; 2 uses
  %.not62.i = icmp eq ptr %i.ax, null
  br i1 %.not62.i, label %bb.g, label %mkP.exit

mkP.exit:                                         ; preds = %bb.f
  tail call void @fftw_ifree(ptr noundef nonnull %i.ai) #4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr %i.ap, ptr %i.ay, align 8, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store ptr %i.at, ptr %i.az, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store ptr null, ptr %i.bb, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store i64 %i.w, ptr %i.bc, align 8, !tbaa !22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  store <2 x i64> %i.aa, ptr %i.bd, align 8, !tbaa !39
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  tail call void @fftw_ops_add(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) #4
  %i.bh = mul nsw i64 %i.ag, 14
  %i.bi = add nsw i64 %i.bh, 6
  %i.bj = sitofp i64 %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !42
  %i.bm = fadd double %i.bl, %i.bj
  store double %i.bm, ptr %i.bk, align 8, !tbaa !42
  %i.bn = shl nsw i64 %i.ag, 1
  %3 = shl nsw i64 %i.ag, 2
  %4 = add nsw i64 %i.bn, 4
  %5 = sitofp i64 %4 to double
  %i.bo = sitofp i64 %3 to double
  %i.bp = load <2 x double>, ptr %i.bg, align 8, !tbaa !23
  %i.bq = insertelement <2 x double> poison, double %5, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bo, i64 1
  %i.bs = fadd <2 x double> %i.bp, %i.br
  store <2 x double> %i.bs, ptr %i.bg, align 8, !tbaa !23
  br label %applicable.exit.thread

bb.g:                                             ; preds = %applicable.exit.thread19, %bb.e, %bb.f
  %.055.i = phi ptr [ %i.at, %bb.f ], [ null, %bb.e ], [ null, %applicable.exit.thread19 ]
  tail call void @fftw_ifree0(ptr noundef nonnull %i.ai) #4
  tail call void @fftw_plan_destroy_internal(ptr noundef null) #4
  tail call void @fftw_plan_destroy_internal(ptr noundef %.055.i) #4
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.ap) #4
  tail call void @fftw_ifree(ptr noundef %i.ab) #4
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %._crit_edge.i, %mkP.exit, %applicable.exit, %bb.g
  %.0 = phi ptr [ null, %applicable.exit ], [ null, %bb.g ], [ %i.ab, %mkP.exit ], [ null, %._crit_edge.i ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_dft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  tail call void @fftw_plan_awake(ptr noundef %i.c, i32 noundef %1) #4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void @fftw_plan_awake(ptr noundef %i.e, i32 noundef %1) #4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  tail call void @fftw_plan_awake(ptr noundef %i.g, i32 noundef %1) #4
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void @fftw_rader_tl_delete(ptr noundef %i.i, ptr noundef nonnull @omegas) #4
  store ptr null, ptr %i.h, align 8, !tbaa !21
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !22
  %i.l = tail call i64 @fftw_find_generator(i64 noundef %i.k) #4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.l, ptr %i.m, align 8, !tbaa !24
  %i.n = load i64, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.o = add nsw i64 %i.n, -2
  %i.p = tail call i64 @fftw_power_mod(i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.n) #4 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.p, ptr %i.q, align 8, !tbaa !25
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %i.s = load i64, ptr %i.j, align 8, !tbaa !22   ; 10 uses
  %i.t = load ptr, ptr @omegas, align 8, !tbaa !46
  %i.u = tail call ptr @fftw_rader_tl_find(i64 noundef %i.s, i64 noundef %i.s, i64 noundef %i.p, ptr noundef %i.t) #4 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.d, label %mkomega.exit

bb.d:                                             ; preds = %bb.c
  %i.v = add nsw i64 %i.s, -1                     ; 2 uses
  %i.w = shl i64 %i.v, 4
  %i.x = tail call ptr @fftw_malloc_plain(i64 noundef %i.w) #4 ; 6 uses
  %i.y = sitofp i64 %i.s to double
  %i.z = fadd double %i.y, -1.000000e+00          ; 2 uses
  %i.aa = tail call ptr @fftw_mktriggen(i32 noundef range(i32 1, 0) %1, i64 noundef %i.s) #4 ; 3 uses
  %i.ab = icmp sgt i64 %i.s, 1
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = sub nsw i64 92681, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.046.i = phi i64 [ 1, %.lr.ph.i ], [ %i.ar, %bb.h ] ; 4 uses
  %.04145.i = phi i64 [ 0, %.lr.ph.i ], [ %i.an, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !48
  call void %i.af(ptr noundef %i.aa, i64 noundef %.046.i, ptr noundef nonnull %i.a) #4, !inline_history !43
  %i.ag = load double, ptr %i.a, align 16, !tbaa !23
  %i.ah = fdiv double %i.ag, %i.z
  %.idx.i = shl nuw nsw i64 %.04145.i, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i ; 2 uses
  store double %i.ah, ptr %i.ai, align 8, !tbaa !23
  %i.aj = load double, ptr %i.ad, align 8, !tbaa !23
  %i.ak = fneg double %i.aj
  %i.al = fdiv double %i.ak, %i.z
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store double %i.al, ptr %i.am, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %i.an = add nuw nsw i64 %.04145.i, 1            ; 2 uses
  %.not44.i = icmp sgt i64 %.046.i, %i.ae
  br i1 %.not44.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = mul nsw i64 %.046.i, %i.p
  %i.ap = srem i64 %i.ao, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aq = call i64 @fftw_safe_mulmod(i64 noundef %.046.i, i64 noundef %i.p, i64 noundef %i.s) #4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = phi i64 [ %i.ap, %bb.f ], [ %i.aq, %bb.g ]
  %exitcond.not.i = icmp eq i64 %i.an, %i.v
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.h, %bb.d
  call void @fftw_triggen_destroy(ptr noundef %i.aa) #4
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !27
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  call void %i.at(ptr noundef %i.r, ptr noundef %i.x, ptr noundef nonnull %i.au, ptr noundef %i.x, ptr noundef nonnull %i.au) #4, !inline_history !43
  call void @fftw_rader_tl_insert(i64 noundef %i.s, i64 noundef %i.s, i64 noundef %i.p, ptr noundef %i.x, ptr noundef nonnull @omegas) #4
  br label %mkomega.exit

mkomega.exit:                                     ; preds = %bb.c, %._crit_edge.i
  %.042.i = phi ptr [ %i.x, %._crit_edge.i ], [ %i.u, %bb.c ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.042.i, ptr %i.av, align 8, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %mkomega.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.g, ptr noundef %i.i) #4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19   ; 3 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !18
  %.not = icmp eq ptr %i.k, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %1, align 8, !tbaa !50
  tail call void (ptr, ptr, ...) %i.m(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %i.k) #4
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 3 uses
  %.not22 = icmp eq ptr %i.p, %i.n
  br i1 %.not22, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !19
  %.not23 = icmp eq ptr %i.p, %i.q
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %1, align 8, !tbaa !50
  tail call void (ptr, ptr, ...) %i.r(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %i.p) #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  tail call void %i.t(ptr noundef nonnull %1, i8 noundef signext 41) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.d) #4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
end_hunk_0
