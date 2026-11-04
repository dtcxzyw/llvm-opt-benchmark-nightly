Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/dht-rader?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan_adt = type { ptr, ptr, ptr, ptr }

@mksolver.sadt = internal constant { i32, [4 x i8], ptr, ptr } { i32 2, [4 x i8] zeroinitializer, ptr @mkplan, ptr null }, align 8
@mkplan.padt = internal constant %struct.plan_adt { ptr @fftw_rdft_solve, ptr @awake, ptr @print, ptr @destroy }, align 8
@omegas = internal global ptr null, align 8
@.str = private unnamed_addr constant [33 x i8] c"(dht-rader-%D/%D%ois=%oos=%(%p%)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%(%p%)\00", align 1
@choose_transform_size.primes = internal constant [4 x i64] [i64 2, i64 3, i64 5, i64 0], align 16

; Function Attrs: nounwind uwtable
define dso_local void @fftw_dht_rader_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_mksolver(i64 noundef 24, ptr noundef nonnull @mksolver.sadt) #6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !12
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.a) #6
  %i.c = tail call ptr @fftw_mksolver(i64 noundef 24, ptr noundef nonnull @mksolver.sadt) #6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 1, ptr %i.d, align 8, !tbaa !12
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.c) #6
  ret void
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %applicable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = icmp eq i32 %i.j, 8
  br i1 %i.k, label %bb.d, label %applicable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !43
  %i.n = tail call i32 @fftw_is_prime(i64 noundef %i.m) #6
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %applicable.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43   ; 4 uses
  %i.r = icmp sgt i64 %i.q, 2
  br i1 %i.r, label %bb.f, label %applicable.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.t = load i64, ptr %i.s, align 4
  %i.u = and i64 %i.t, 8
  %.not10.i = icmp eq i64 %i.u, 0                 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.q, 32           ; 2 uses
  %i.w = xor i1 %i.v, true
  %brmerge.i = or i1 %.not10.i, %i.w
  br i1 %brmerge.i, label %applicable.exit, label %.split

.split:                                           ; preds = %bb.f
  %i.x = add nsw i64 %i.q, -1
  %i.y = tail call i32 @fftw_factors_into_small_primes(i64 noundef %i.x) #6
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %applicable.exit.thread, label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !37  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre85 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %bb.g

applicable.exit:                                  ; preds = %bb.f
  %or.cond.i = or i1 %i.v, %.not10.i
  br i1 %or.cond.i, label %bb.g, label %applicable.exit.thread

bb.g:                                             ; preds = %.split._crit_edge, %applicable.exit
  %3 = phi i64 [ %.pre85, %.split._crit_edge ], [ %i.q, %applicable.exit ] ; 6 uses
  %4 = phi ptr [ %.pre, %.split._crit_edge ], [ %i.o, %applicable.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load <2 x i64>, ptr %i.z, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !12
  %.not78 = icmp eq i32 %i.ac, 0
  br i1 %.not78, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = shl i64 %3, 1
  %i.ae = add i64 %i.ad, -3
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i, %bb.h
  %.0.i = phi i64 [ %i.ae, %bb.h ], [ %i.ag, %.critedge.i ] ; 4 uses
  %i.af = tail call i32 @fftw_factors_into(i64 noundef %.0.i, ptr noundef nonnull @choose_transform_size.primes) #6
  %.not.i82 = icmp eq i32 %i.af, 0
  %.not4.i = trunc i64 %.0.i to i1
  %or.cond.i83 = or i1 %.not.i82, %.not4.i
  %i.ag = add nsw i64 %.0.i, 1
  br i1 %or.cond.i83, label %.critedge.i, label %choose_transform_size.exit, !llvm.loop !34

bb.i:                                             ; preds = %bb.g
  %i.ah = add nsw i64 %3, -1
  br label %choose_transform_size.exit

choose_transform_size.exit:                       ; preds = %.critedge.i, %bb.i
  %.072 = phi i64 [ %i.ah, %bb.i ], [ %.0.i, %.critedge.i ] ; 7 uses
  %i.ai = shl i64 %.072, 3
  %i.aj = tail call ptr @fftw_malloc_plain(i64 noundef %i.ai) #6 ; 8 uses
  %i.ak = tail call ptr @fftw_mktensor_1d(i64 noundef %.072, i64 noundef 1, i64 noundef 1) #6
  %i.al = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #6
  %i.am = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef %i.aj, ptr noundef %i.aj, i32 noundef 0) #6
  %i.an = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.am, i32 noundef 8, i32 noundef 0, i32 noundef 0) #6 ; 4 uses
  %.not79 = icmp eq ptr %i.an, null
  br i1 %.not79, label %bb.m, label %bb.j

bb.j:                                             ; preds = %choose_transform_size.exit
  %i.ao = tail call ptr @fftw_mktensor_1d(i64 noundef %.072, i64 noundef 1, i64 noundef 1) #6
  %i.ap = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #6
  %i.aq = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef %i.aj, ptr noundef %i.aj, i32 noundef 0) #6
  %i.ar = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.aq, i32 noundef 8, i32 noundef 0, i32 noundef 0) #6 ; 4 uses
  %.not80 = icmp eq ptr %i.ar, null
  br i1 %.not80, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = tail call ptr @fftw_mktensor_1d(i64 noundef %.072, i64 noundef 1, i64 noundef 1) #6
  %i.at = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #6
  %i.au = tail call ptr @fftw_mkproblem_rdft_1_d(ptr noundef %i.as, ptr noundef %i.at, ptr noundef %i.aj, ptr noundef %i.aj, i32 noundef 0) #6
  %i.av = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.au, i32 noundef 8, i32 noundef 2, i32 noundef 0) #6 ; 2 uses
  %.not81 = icmp eq ptr %i.av, null
  br i1 %.not81, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @fftw_ifree(ptr noundef %i.aj) #6
  %i.aw = tail call ptr @fftw_mkplan_rdft(i64 noundef 144, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull @apply) #6 ; 11 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %i.an, ptr %i.ax, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  store ptr %i.ar, ptr %i.ay, align 8, !tbaa !23
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 136
  store ptr %i.av, ptr %i.az, align 8, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store ptr null, ptr %i.ba, align 8, !tbaa !25
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store i64 %3, ptr %i.bb, align 8, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  store i64 %.072, ptr %i.bc, align 8, !tbaa !27
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  store <2 x i64> %i.aa, ptr %i.bd, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 3 uses
  tail call void @fftw_ops_add(ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) #6
  %i.bh = sdiv i64 %.072, 2
  %i.bi = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.bj = mul nsw i64 %i.bi, 6
  %i.bk = add nsw i64 %3, -1
  %i.bl = load i32, ptr %i.ab, align 8, !tbaa !12
  %i.bm = sext i32 %i.bl to i64                   ; 4 uses
  %i.bn = mul nsw i64 %i.bk, %i.bm                ; 2 uses
  %i.bo = add i64 %.072, %3
  %i.bp = add i64 %i.bo, %i.bj
  %i.bq = add nsw i64 %i.bp, %i.bn
  %i.br = sitofp i64 %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !45
  %i.bu = fadd double %i.bt, %i.br
  %i.bv = shl nsw i64 %i.bi, 1                    ; 2 uses
  %i.bw = add nsw i64 %i.bv, 2
  %i.bx = add nsw i64 %i.bw, %i.bn
  %i.by = sitofp i64 %i.bx to double
  %i.bz = load double, ptr %i.bg, align 8, !tbaa !46
  %i.ca = fadd double %i.bz, %i.by
  %i.cb = shl nsw i64 %i.bi, 2
  %i.cc = or disjoint i64 %i.cb, 2
  %i.cd = add nsw i64 %i.cc, %i.bm
  %i.ce = sitofp i64 %i.cd to double
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !47
  %i.ch = fadd double %i.cg, %i.ce
  store double %i.ch, ptr %i.cf, align 8, !tbaa !47
  %i.ci = add nsw i64 %3, -2                      ; 2 uses
  %i.cj = sub nsw i64 %i.ci, %i.bm
  %i.ck = sitofp i64 %i.cj to double
  %i.cl = fadd double %i.bu, %i.ck
  store double %i.cl, ptr %i.bs, align 8, !tbaa !45
  %i.cm = add nsw i64 %i.bv, %i.ci
  %i.cn = sub i64 %i.cm, %i.bm
  %i.co = sitofp i64 %i.cn to double
  %i.cp = fadd double %i.ca, %i.co
  store double %i.cp, ptr %i.bg, align 8, !tbaa !46
  br label %applicable.exit.thread

bb.m:                                             ; preds = %bb.k, %bb.j, %choose_transform_size.exit
  %.071 = phi ptr [ %i.ar, %bb.k ], [ null, %bb.j ], [ null, %choose_transform_size.exit ]
  tail call void @fftw_ifree0(ptr noundef %i.aj) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef null) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef %.071) #6
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.an) #6
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %.split, %applicable.exit, %bb.m, %bb.l
  %.073 = phi ptr [ %i.aw, %bb.l ], [ null, %bb.m ], [ null, %applicable.exit ], [ null, %.split ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @fftw_rdft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  tail call void @fftw_plan_awake(ptr noundef %i.c, i32 noundef %1) #6
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23
  tail call void @fftw_plan_awake(ptr noundef %i.e, i32 noundef %1) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !24
  tail call void @fftw_plan_awake(ptr noundef %i.g, i32 noundef %1) #6
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25
  tail call void @fftw_rader_tl_delete(ptr noundef %i.i, ptr noundef nonnull @omegas) #6
  store ptr null, ptr %i.h, align 8, !tbaa !25
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26
  %i.l = tail call i64 @fftw_find_generator(i64 noundef %i.k) #6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.l, ptr %i.m, align 8, !tbaa !28
  %i.n = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.o = add nsw i64 %i.n, -2
  %i.p = tail call i64 @fftw_power_mod(i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.n) #6 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.p, ptr %i.q, align 8, !tbaa !29
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %i.s = load i64, ptr %i.j, align 8, !tbaa !26   ; 13 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 16 uses
  %i.v = add nsw i64 %i.u, 1                      ; 2 uses
  %i.w = load ptr, ptr @omegas, align 8, !tbaa !54
  %i.x = tail call ptr @fftw_rader_tl_find(i64 noundef %i.s, i64 noundef %i.v, i64 noundef %i.p, ptr noundef %i.w) #6 ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.d, label %mkomega.exit

bb.d:                                             ; preds = %bb.c
  %i.y = shl i64 %i.u, 3                          ; 2 uses
  %i.z = tail call ptr @fftw_malloc_plain(i64 noundef %i.y) #6 ; 26 uses
  %i.aa = sitofp i64 %i.u to double
  %i.ab = tail call ptr @fftw_mktriggen(i32 noundef range(i32 1, 0) %1, i64 noundef %i.s) #6 ; 3 uses
  %i.ac = add i64 %i.s, -1                        ; 13 uses
  %i.ad = icmp sgt i64 %i.s, 1
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = sub nsw i64 92681, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.060.i = phi i64 [ 1, %.lr.ph.i ], [ %i.ap, %bb.h ] ; 4 uses
  %.05259.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !56
  call void %i.ag(ptr noundef %i.ab, i64 noundef %.060.i, ptr noundef nonnull %i.a) #6, !inline_history !48
  %i.ah = load <2 x double>, ptr %i.a, align 16, !tbaa !30
  %i.ai = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.ah)
  %i.aj = fdiv double %i.ai, %i.aa
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05259.i
  store double %i.aj, ptr %i.ak, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.al = add nuw nsw i64 %.05259.i, 1            ; 2 uses
  %.not58.i = icmp sgt i64 %.060.i, %i.af
  br i1 %.not58.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = mul nsw i64 %.060.i, %i.p
  %i.an = srem i64 %i.am, %i.s
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ao = call i64 @fftw_safe_mulmod(i64 noundef %.060.i, i64 noundef %i.p, i64 noundef %i.s) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i64 [ %i.an, %bb.f ], [ %i.ao, %bb.g ]
  %exitcond.not.i = icmp eq i64 %i.al, %i.ac
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !49

._crit_edge.i:                                    ; preds = %bb.h, %bb.d
  %.052.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.ac, %bb.h ] ; 2 uses
  call void @fftw_triggen_destroy(ptr noundef %i.ab) #6
  %i.aq = icmp slt i64 %.052.lcssa.i, %i.u
  br i1 %i.aq, label %.lr.ph64.preheader.i, label %._crit_edge65.i

.lr.ph64.preheader.i:                             ; preds = %._crit_edge.i
  %i.ar = shl i64 %.052.lcssa.i, 3                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.z, i64 %i.ar
  %i.as = sub i64 %i.y, %i.ar
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.as, i1 false), !tbaa !30
  br label %._crit_edge65.i

._crit_edge65.i:                                  ; preds = %.lr.ph64.preheader.i, %._crit_edge.i
  %.not57.i = icmp sge i64 %i.u, %i.s
  %i.at = icmp sgt i64 %i.s, 2
  %or.cond.i = and i1 %i.at, %.not57.i
  br i1 %or.cond.i, label %.lr.ph67.i.preheader, label %.loopexit.i

.lr.ph67.i.preheader:                             ; preds = %._crit_edge65.i
  %i.au = add nsw i64 %i.s, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 10
  br i1 %min.iters.check, label %.lr.ph67.i.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph67.i.preheader
  %i.av = sub i64 %i.s, %i.u
  %i.aw = shl i64 %i.av, 3
  %i.ax = add i64 %i.aw, -9
  %diff.check = icmp ult i64 %i.ax, 31
  br i1 %diff.check, label %.lr.ph67.i.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.au, -4                      ; 3 uses
  %i.ay = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = or disjoint i64 %index, 1               ; 2 uses
  %i.ba = sub nuw nsw i64 %i.ac, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -24
  %wide.load = load <2 x double>, ptr %i.bc, align 8, !tbaa !30
  %wide.load27 = load <2 x double>, ptr %i.bd, align 8, !tbaa !30
  %i.be = sub nuw nsw i64 %i.u, %i.az
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 -24
  store <2 x double> %wide.load, ptr %i.bg, align 8, !tbaa !30
  store <2 x double> %wide.load27, ptr %i.bh, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph67.i.preheader28

.lr.ph67.i.preheader28:                           ; preds = %vector.memcheck, %.lr.ph67.i.preheader, %middle.block
  %.266.i.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph67.i.preheader ], [ %i.ay, %middle.block ] ; 4 uses
  %i.bj = xor i64 %.266.i.ph, -1
  %i.bk = add i64 %i.s, %i.bj
  %i.bl = add nsw i64 %i.s, -2
  %i.bm = sub i64 %i.bl, %.266.i.ph
  %xtraiter = and i64 %i.bk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol

.lr.ph67.i.prol:                                  ; preds = %.lr.ph67.i.preheader28, %.lr.ph67.i.prol
  %.266.i.prol = phi i64 [ %i.bs, %.lr.ph67.i.prol ], [ %.266.i.ph, %.lr.ph67.i.preheader28 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph67.i.prol ], [ 0, %.lr.ph67.i.preheader28 ]
  %i.bn = sub nuw nsw i64 %i.ac, %.266.i.prol
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bn
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !30
  %i.bq = sub nuw nsw i64 %i.u, %.266.i.prol
  %i.br = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bq
  store double %i.bp, ptr %i.br, align 8, !tbaa !30
  %i.bs = add nuw nsw i64 %.266.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph67.i.prol.loopexit, label %.lr.ph67.i.prol, !llvm.loop !51

.lr.ph67.i.prol.loopexit:                         ; preds = %.lr.ph67.i.prol, %.lr.ph67.i.preheader28
  %.266.i.unr = phi i64 [ %.266.i.ph, %.lr.ph67.i.preheader28 ], [ %i.bs, %.lr.ph67.i.prol ]
  %i.bt = icmp ult i64 %i.bm, 7
  br i1 %i.bt, label %.loopexit.i, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i
  %.266.i = phi i64 [ %i.dp, %.lr.ph67.i ], [ %.266.i.unr, %.lr.ph67.i.prol.loopexit ] ; 10 uses
  %i.bu = sub nuw nsw i64 %i.ac, %.266.i
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !30
  %i.bx = sub nuw nsw i64 %i.u, %.266.i
  %i.by = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.bx
  store double %i.bw, ptr %i.by, align 8, !tbaa !30
  %i.bz = add nuw nsw i64 %.266.i, 1              ; 2 uses
  %i.ca = sub nuw nsw i64 %i.ac, %i.bz
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ca
end_hunk_0
begin_hunk_1_@awake:bb.a
  store double %i.da, ptr %i.dc, align 8, !tbaa !30
  %i.dd = add nuw nsw i64 %.266.i, 6              ; 2 uses
  %i.de = sub nuw nsw i64 %i.ac, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !30
  %i.dh = sub nuw nsw i64 %i.u, %i.dd
  %i.di = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dh
  store double %i.dg, ptr %i.di, align 8, !tbaa !30
  %i.dj = add nuw nsw i64 %.266.i, 7              ; 2 uses
  %i.dk = sub nuw nsw i64 %i.ac, %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !30
  %i.dn = sub nuw nsw i64 %i.u, %i.dj
  %i.do = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.dn
  store double %i.dm, ptr %i.do, align 8, !tbaa !30
  %i.dp = add nuw nsw i64 %.266.i, 8              ; 2 uses
  %exitcond70.not.i.7 = icmp eq i64 %i.dp, %i.ac
  br i1 %exitcond70.not.i.7, label %.loopexit.i, label %.lr.ph67.i, !llvm.loop !52

.loopexit.i:                                      ; preds = %.lr.ph67.i.prol.loopexit, %.lr.ph67.i, %middle.block, %._crit_edge65.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31
  call void %i.dr(ptr noundef %i.r, ptr noundef %i.z, ptr noundef %i.z) #6, !inline_history !48
  call void @fftw_rader_tl_insert(i64 noundef %i.s, i64 noundef %i.v, i64 noundef %i.p, ptr noundef %i.z, ptr noundef nonnull @omegas) #6
  br label %mkomega.exit

mkomega.exit:                                     ; preds = %bb.c, %.loopexit.i
  %.053.i = phi ptr [ %i.z, %.loopexit.i ], [ %i.x, %bb.c ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.053.i, ptr %i.ds, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %mkomega.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i64, ptr %i.d, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) %i.a(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %i.i, ptr noundef %i.k) #6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 3 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !22
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) %i.o(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %i.m) #6
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %.pre, %bb.b ], [ %i.m, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24   ; 3 uses
  %.not23 = icmp eq ptr %i.r, %i.p
  br i1 %.not23, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !23
  %.not24 = icmp eq ptr %i.r, %i.s
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %1, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) %i.t(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef %i.r) #6
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !62
  tail call void %i.v(ptr noundef nonnull %1, i8 noundef signext 41) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.b) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.d) #6
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  tail call void @fftw_plan_destroy_internal(ptr noundef %i.f) #6
  ret void
}

declare ptr @fftw_malloc_plain(i64 noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_f_d(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mkproblem_rdft_1_d(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @fftw_mktensor_1d(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @fftw_ifree(ptr noundef) local_unnamed_addr #1

declare ptr @fftw_mkplan_rdft(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32
  %i.g = shl i64 %i.d, 3
  %i.h = tail call ptr @fftw_malloc_plain(i64 noundef %i.g) #6 ; 27 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28   ; 3 uses
  %i.k = add i64 %i.b, -1                         ; 3 uses
  %i.l = icmp sgt i64 %i.b, 1
  br i1 %i.l, label %.lr.ph, label %.preheader171

.lr.ph:                                           ; preds = %bb.a
  %i.m = sub nsw i64 92681, %i.j
  br label %bb.b

.preheader171:                                    ; preds = %bb.e, %bb.a
  %.not197 = icmp sgt i64 %i.b, %i.d
  br i1 %.not197, label %._crit_edge, label %.lr.ph176.preheader

.lr.ph176.preheader:                              ; preds = %.preheader171
  %i.n = shl i64 %i.b, 3
  %i.o = getelementptr i8, ptr %i.h, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 -8
  %i.p = add i64 %i.d, 1
  %i.q = sub i64 %i.p, %i.b
  %i.r = shl nuw i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.r, i1 false), !tbaa !30
  br label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0174 = phi i64 [ 0, %.lr.ph ], [ %i.w, %bb.e ] ; 2 uses
  %.0158173 = phi i64 [ 1, %.lr.ph ], [ %i.aa, %bb.e ] ; 4 uses
  %i.s = mul nsw i64 %.0158173, %i.f
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0174
  store double %i.u, ptr %i.v, align 8, !tbaa !30
  %i.w = add nuw nsw i64 %.0174, 1                ; 2 uses
  %.not168 = icmp sgt i64 %.0158173, %i.m
  br i1 %.not168, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = mul nsw i64 %.0158173, %i.j
  %i.y = srem i64 %i.x, %i.b
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.z = tail call i64 @fftw_safe_mulmod(i64 noundef %.0158173, i64 noundef %i.j, i64 noundef %i.b) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi i64 [ %i.y, %bb.c ], [ %i.z, %bb.d ]
  %exitcond.not = icmp eq i64 %i.w, %i.k
  br i1 %exitcond.not, label %.preheader171, label %bb.b, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph176.preheader, %.preheader171
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !33 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !31
  tail call void %i.ag(ptr noundef %i.ae, ptr noundef %i.h, ptr noundef %i.h) #6
  %i.ah = load double, ptr %1, align 8, !tbaa !30 ; 2 uses
  %i.ai = load double, ptr %i.h, align 8, !tbaa !30
  %i.aj = fadd double %i.ah, %i.ai
  store double %i.aj, ptr %2, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !25 ; 8 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !30
  %i.an = load double, ptr %i.h, align 8, !tbaa !30
  %i.ao = fmul double %i.am, %i.an                ; 2 uses
  store double %i.ao, ptr %i.h, align 8, !tbaa !30
  %i.ap = sdiv i64 %i.d, 2                        ; 2 uses
  %i.aq = icmp sgt i64 %i.d, 3                    ; 2 uses
  br i1 %i.aq, label %.lr.ph179.preheader, label %._crit_edge180

.lr.ph179.preheader:                              ; preds = %._crit_edge
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 2) ; 2 uses
  %i.ar = add nsw i64 %smax, -1                   ; 3 uses
  %i.as = icmp slt i64 %i.d, 6
  br i1 %i.as, label %.lr.ph179.epil.preheader, label %.lr.ph179.preheader.new

.lr.ph179.preheader.new:                          ; preds = %.lr.ph179.preheader
  %unroll_iter = and i64 %i.ar, -2
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179, %.lr.ph179.preheader.new
  %.2177 = phi i64 [ 1, %.lr.ph179.preheader.new ], [ %i.cq, %.lr.ph179 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph179.preheader.new ], [ %niter.next.1, %.lr.ph179 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2177
  %i.au = load double, ptr %i.at, align 8, !tbaa !30
  %i.av = sub nsw i64 %i.d, %.2177                ; 2 uses
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2177 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !30 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.av ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !30 ; 2 uses
  %i.bc = fneg double %i.bb
  %i.bd = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.az, i64 1
  %i.bh = fmul <2 x double> %i.be, %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bb, i64 1
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.bl, <2 x double> %i.bh) ; 2 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 0 ; 2 uses
  %i.bo = extractelement <2 x double> %i.bm, i64 1 ; 2 uses
  %i.bp = fadd double %i.bo, %i.bn
  store double %i.bp, ptr %i.ay, align 8, !tbaa !30
  %i.bq = fsub double %i.bn, %i.bo
  store double %i.bq, ptr %i.ba, align 8, !tbaa !30
  %i.br = add nuw nsw i64 %.2177, 1               ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.br
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !30
  %i.bu = sub nsw i64 %i.d, %i.br                 ; 2 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bu
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !30
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.br ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.bu ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !30 ; 2 uses
  %i.cb = fneg double %i.ca
  %i.cc = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cf = insertelement <2 x double> %i.ce, double %i.by, i64 1
  %i.cg = fmul <2 x double> %i.cd, %i.cf
  %i.ch = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ca, i64 1
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.ck, <2 x double> %i.cg) ; 2 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0 ; 2 uses
  %i.cn = extractelement <2 x double> %i.cl, i64 1 ; 2 uses
  %i.co = fadd double %i.cn, %i.cm
  store double %i.co, ptr %i.bx, align 8, !tbaa !30
  %i.cp = fsub double %i.cm, %i.cn
  store double %i.cp, ptr %i.bz, align 8, !tbaa !30
  %i.cq = add nuw nsw i64 %.2177, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge180.loopexit.unr-lcssa, label %.lr.ph179, !llvm.loop !64

._crit_edge180.loopexit.unr-lcssa:                ; preds = %.lr.ph179
  %lcmp.mod.not = trunc i64 %i.ar to i1
  br i1 %lcmp.mod.not, label %.lr.ph179.epil.preheader, label %._crit_edge180.loopexit

.lr.ph179.epil.preheader:                         ; preds = %._crit_edge180.loopexit.unr-lcssa, %.lr.ph179.preheader
  %.2177.epil.init = phi i64 [ 1, %.lr.ph179.preheader ], [ %i.cq, %._crit_edge180.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod217 = trunc i64 %i.ar to i1
  tail call void @llvm.assume(i1 %lcmp.mod217)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2177.epil.init
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !30
  %i.ct = sub nsw i64 %i.d, %.2177.epil.init      ; 2 uses
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !30
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2177.epil.init ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ct ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !30 ; 2 uses
  %i.da = fneg double %i.cz
  %i.db = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = insertelement <2 x double> poison, double %i.da, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.cx, i64 1
  %i.df = fmul <2 x double> %i.dc, %i.de
  %i.dg = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.cz, i64 1
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.dj, <2 x double> %i.df) ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0 ; 2 uses
  %i.dm = extractelement <2 x double> %i.dk, i64 1 ; 2 uses
  %i.dn = fadd double %i.dm, %i.dl
  store double %i.dn, ptr %i.cw, align 8, !tbaa !30
  %i.do = fsub double %i.dl, %i.dm
  store double %i.do, ptr %i.cy, align 8, !tbaa !30
  br label %._crit_edge180.loopexit

._crit_edge180.loopexit:                          ; preds = %._crit_edge180.loopexit.unr-lcssa, %.lr.ph179.epil.preheader
  %.pre = load double, ptr %i.h, align 8, !tbaa !30
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %._crit_edge180.loopexit, %._crit_edge
  %i.dp = phi double [ %i.ao, %._crit_edge ], [ %.pre, %._crit_edge180.loopexit ]
  %.2.lcssa = phi i64 [ 1, %._crit_edge ], [ %smax, %._crit_edge180.loopexit ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.2.lcssa
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !30
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2.lcssa ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !30
  %i.du = fmul double %i.dr, %i.dt
  store double %i.du, ptr %i.ds, align 8, !tbaa !30
  %i.dv = fadd double %i.ah, %i.dp
  store double %i.dv, ptr %i.h, align 8, !tbaa !30
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !23 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !31
  tail call void %i.dz(ptr noundef %i.dx, ptr noundef nonnull %i.h, ptr noundef nonnull %i.h) #6
  %i.ea = load double, ptr %i.h, align 8, !tbaa !30
  %i.eb = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  store double %i.ea, ptr %i.eb, align 8, !tbaa !30
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !29 ; 13 uses
  %i.ee = icmp eq i64 %i.d, %i.k
  br i1 %i.ee, label %.preheader, label %.preheader169

.preheader169:                                    ; preds = %._crit_edge180
  %i.ef = icmp sgt i64 %i.b, 2
  br i1 %i.ef, label %.lr.ph185, label %.loopexit

.lr.ph185:                                        ; preds = %.preheader169
  %i.eg = sub nsw i64 92681, %i.ed
  br label %bb.p

.preheader:                                       ; preds = %._crit_edge180
  %i.eh = sub nsw i64 92681, %i.ed                ; 3 uses
  br i1 %i.aq, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader
  %smax203 = tail call i64 @llvm.smax.i64(i64 %i.ap, i64 2) ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph188, %bb.i
  %.3187 = phi i64 [ 1, %.lr.ph188 ], [ %i.eq, %bb.i ] ; 3 uses
  %.1159186 = phi i64 [ %i.ed, %.lr.ph188 ], [ %i.eu, %bb.i ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.3187
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !30
  %i.ek = sub nsw i64 %i.d, %.3187
  %i.el = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !30
  %i.en = fadd double %i.ej, %i.em
  %i.eo = mul nsw i64 %.1159186, %i.ac
  %i.ep = getelementptr inbounds [8 x i8], ptr %2, i64 %i.eo
  store double %i.en, ptr %i.ep, align 8, !tbaa !30
  %i.eq = add nuw nsw i64 %.3187, 1               ; 2 uses
  %.not167 = icmp sgt i64 %.1159186, %i.eh
  br i1 %.not167, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.er = mul nsw i64 %.1159186, %i.ed
  %i.es = srem i64 %i.er, %i.b
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.et = tail call i64 @fftw_safe_mulmod(i64 noundef %.1159186, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.eu = phi i64 [ %i.es, %bb.g ], [ %i.et, %bb.h ] ; 2 uses
  %exitcond204.not = icmp eq i64 %i.eq, %smax203
  br i1 %exitcond204.not, label %._crit_edge189, label %bb.f, !llvm.loop !65

._crit_edge189:                                   ; preds = %bb.i, %.preheader
  %.1159.lcssa = phi i64 [ %i.ed, %.preheader ], [ %i.eu, %bb.i ] ; 4 uses
  %.3.lcssa = phi i64 [ 1, %.preheader ], [ %smax203, %bb.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.3.lcssa
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !30
  %i.ex = mul nsw i64 %.1159.lcssa, %i.ac
  %i.ey = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ex
  store double %i.ew, ptr %i.ey, align 8, !tbaa !30
  %.not165 = icmp sgt i64 %.1159.lcssa, %i.eh
  br i1 %.not165, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge189
  %i.ez = mul nsw i64 %.1159.lcssa, %i.ed
  %i.fa = srem i64 %i.ez, %i.b
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge189
  %i.fb = tail call i64 @fftw_safe_mulmod(i64 noundef %.1159.lcssa, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fc = phi i64 [ %i.fa, %bb.j ], [ %i.fb, %bb.k ]
  %.4192 = add nuw nsw i64 %.3.lcssa, 1           ; 2 uses
  %i.fd = icmp slt i64 %.4192, %i.d
  br i1 %i.fd, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %bb.l, %bb.o
  %.4194 = phi i64 [ %.4, %bb.o ], [ %.4192, %bb.l ] ; 3 uses
  %.2160193 = phi i64 [ %i.fp, %bb.o ], [ %i.fc, %bb.l ] ; 4 uses
  %i.fe = sub nuw nsw i64 %i.d, %.4194
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !30
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.4194
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !30
  %i.fj = fsub double %i.fg, %i.fi
  %i.fk = mul nsw i64 %.2160193, %i.ac
  %i.fl = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fk
  store double %i.fj, ptr %i.fl, align 8, !tbaa !30
  %.not166 = icmp sgt i64 %.2160193, %i.eh
  br i1 %.not166, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph196
  %i.fm = mul nsw i64 %.2160193, %i.ed
  %i.fn = srem i64 %i.fm, %i.b
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph196
  %i.fo = tail call i64 @fftw_safe_mulmod(i64 noundef %.2160193, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fp = phi i64 [ %i.fn, %bb.m ], [ %i.fo, %bb.n ]
  %.4 = add nuw i64 %.4194, 1                     ; 2 uses
  %exitcond205.not = icmp eq i64 %.4, %i.d
  br i1 %exitcond205.not, label %.loopexit, label %.lr.ph196, !llvm.loop !66

bb.p:                                             ; preds = %.lr.ph185, %bb.s
  %.5184 = phi i64 [ 1, %.lr.ph185 ], [ %i.fy, %bb.s ] ; 3 uses
  %.3161183 = phi i64 [ %i.ed, %.lr.ph185 ], [ %i.gc, %bb.s ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.5184
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !30
  %i.fs = sub nsw i64 %i.d, %.5184
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !30
  %i.fv = fadd double %i.fr, %i.fu
  %i.fw = mul nsw i64 %.3161183, %i.ac
  %i.fx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.fw
  store double %i.fv, ptr %i.fx, align 8, !tbaa !30
  %i.fy = add nuw nsw i64 %.5184, 1               ; 2 uses
  %.not = icmp sgt i64 %.3161183, %i.eg
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fz = mul nsw i64 %.3161183, %i.ed
  %i.ga = srem i64 %i.fz, %i.b
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.gb = tail call i64 @fftw_safe_mulmod(i64 noundef %.3161183, i64 noundef %i.ed, i64 noundef %i.b) #6
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gc = phi i64 [ %i.ga, %bb.q ], [ %i.gb, %bb.r ]
  %exitcond202.not = icmp eq i64 %i.fy, %i.k
  br i1 %exitcond202.not, label %.loopexit, label %bb.p, !llvm.loop !67

.loopexit:                                        ; preds = %bb.s, %bb.o, %.preheader169, %bb.l
  tail call void @fftw_ifree(ptr noundef nonnull %i.h) #6
  ret void
}

declare void @fftw_ops_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

end_hunk_1
