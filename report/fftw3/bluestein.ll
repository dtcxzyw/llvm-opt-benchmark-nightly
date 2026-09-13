Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/bluestein?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan_adt = type { ptr, ptr, ptr, ptr }

@mksolver.sadt = internal constant { i32, [4 x i8], ptr, ptr } { i32 1, [4 x i8] zeroinitializer, ptr @mkplan, ptr null }, align 8
@mkplan.padt = internal constant %struct.plan_adt { ptr @fftw_dft_solve, ptr @awake, ptr @print, ptr @destroy }, align 8
@.str = private unnamed_addr constant [28 x i8] c"(dft-bluestein-%D/%D%(%p%))\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fftw_dft_bluestein_register(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @fftw_mksolver(i64 noundef 16, ptr noundef nonnull @mksolver.sadt) #5
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.a) #5
  ret void
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkplan(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !31
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %applicable.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !34
  %i.k = tail call i32 @fftw_is_prime(i64 noundef %i.j) #5
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %applicable.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34   ; 7 uses
  %i.o = icmp sgt i64 %i.n, 16
  br i1 %i.o, label %bb.e, label %applicable.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.q = load i64, ptr %i.p, align 4
  %i.r = and i64 %i.q, 8
  %.not7.i = icmp ne i64 %i.r, 0
  %i.s = icmp samesign ult i64 %i.n, 25
  %or.cond = select i1 %.not7.i, i1 %i.s, i1 false
  br i1 %or.cond, label %applicable.exit.thread, label %applicable.exit.thread46

applicable.exit.thread46:                         ; preds = %bb.e
  %i.t = shl nuw nsw i64 %i.n, 1
  %i.u = add nsw i64 %i.t, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %applicable.exit.thread46
  %.0.i = phi i64 [ %i.u, %applicable.exit.thread46 ], [ %i.w, %bb.f ] ; 8 uses
  %i.v = tail call i32 @fftw_factors_into_small_primes(i64 noundef %.0.i) #5
  %.not.i44 = icmp eq i32 %i.v, 0
  %i.w = add nuw nsw i64 %.0.i, 1
  br i1 %.not.i44, label %bb.f, label %choose_transform_size.exit, !llvm.loop !26

choose_transform_size.exit:                       ; preds = %bb.f
  %i.x = shl i64 %.0.i, 4
  %i.y = tail call ptr @fftw_malloc_plain(i64 noundef %i.x) #5 ; 5 uses
  %i.z = tail call ptr @fftw_mktensor_1d(i64 noundef %.0.i, i64 noundef 2, i64 noundef 2) #5
  %i.aa = tail call ptr @fftw_mktensor_1d(i64 noundef 1, i64 noundef 0, i64 noundef 0) #5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = tail call ptr @fftw_mkproblem_dft_d(ptr noundef %i.z, ptr noundef %i.aa, ptr noundef %i.y, ptr noundef nonnull %i.ab, ptr noundef %i.y, ptr noundef nonnull %i.ab) #5
  %i.ad = tail call ptr @fftw_mkplan_f_d(ptr noundef nonnull %2, ptr noundef %i.ac, i32 noundef 8, i32 noundef 0, i32 noundef 0) #5 ; 3 uses
  %.not43 = icmp eq ptr %i.ad, null
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %choose_transform_size.exit
  %i.ae = shl nuw nsw i64 %.0.i, 1
  tail call void @fftw_ifree(ptr noundef nonnull %i.y) #5
  %i.af = tail call ptr @fftw_mkplan_dft(i64 noundef 120, ptr noundef nonnull @mkplan.padt, ptr noundef nonnull @apply) #5 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i64 %i.n, ptr %i.ag, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  store i64 %.0.i, ptr %i.ah, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !21
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  %i.an = load <2 x i64>, ptr %i.al, align 8, !tbaa !35
  store <2 x i64> %i.an, ptr %i.am, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  tail call void @fftw_ops_add(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap) #5
  %i.aq = shl nsw i64 %i.n, 2
  %i.ar = shl nsw i64 %i.n, 3
  %i.as = shl nsw i64 %.0.i, 2
  %i.at = add nuw nsw i64 %i.as, %i.ar
  %i.au = add nuw nsw i64 %i.ae, %i.aq
  %i.av = insertelement <2 x i64> poison, i64 %i.au, i64 0
  %i.aw = insertelement <2 x i64> %i.av, i64 %i.at, i64 1
  %i.ax = uitofp <2 x i64> %i.aw to <2 x double>
  %i.ay = load <2 x double>, ptr %i.ap, align 8, !tbaa !22
  %i.az = fadd <2 x double> %i.ay, %i.ax
  store <2 x double> %i.az, ptr %i.ap, align 8, !tbaa !22
  %i.ba = add nuw nsw i64 %.0.i, %i.n
  %i.bb = mul nsw i64 %i.ba, 6
  %i.bc = uitofp nneg i64 %i.bb to double
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !36
  %i.bf = fadd double %i.be, %i.bc
  store double %i.bf, ptr %i.bd, align 8, !tbaa !36
  br label %applicable.exit.thread

bb.h:                                             ; preds = %choose_transform_size.exit
  tail call void @fftw_ifree0(ptr noundef nonnull %i.y) #5
  tail call void @fftw_plan_destroy_internal(ptr noundef null) #5
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.e, %bb.a, %bb.b, %bb.c, %bb.d, %bb.h, %bb.g
  %.0 = phi ptr [ %i.af, %bb.g ], [ null, %bb.h ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @fftw_mksolver(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @fftw_dft_solve(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr nofree noundef captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  tail call void @fftw_plan_awake(ptr noundef %i.b, i32 noundef %1) #5
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23
  tail call void @fftw_ifree0(ptr noundef %i.d) #5
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @fftw_ifree0(ptr noundef %i.f) #5
  store ptr null, ptr %i.e, align 8, !tbaa !24
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8, !tbaa !20   ; 6 uses
  %i.k = sitofp i64 %i.j to double                ; 8 uses
  %i.l = shl i64 %i.h, 4
  %i.m = tail call ptr @fftw_malloc_plain(i64 noundef %i.l) #5 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.m, ptr %i.n, align 8, !tbaa !23
  %i.o = shl i64 %i.j, 4                          ; 2 uses
  %i.p = tail call ptr @fftw_malloc_plain(i64 noundef %i.o) #5 ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.p, ptr %i.q, align 8, !tbaa !24
  %i.r = shl nsw i64 %i.h, 1                      ; 3 uses
  %i.s = tail call ptr @fftw_mktriggen(i32 noundef range(i32 1, 0) %1, i64 noundef %i.r) #5 ; 3 uses
  %i.t = icmp sgt i64 %i.h, 0
  br i1 %i.t, label %.lr.ph.i.i, label %bluestein_sequence.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.020.i.i = phi i64 [ %.1.i.i, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %.01719.i.i = phi i64 [ %i.ab, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.v = shl nuw nsw i64 %.01719.i.i, 1           ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.v
  tail call void %i.u(ptr noundef nonnull %i.s, i64 noundef %.020.i.i, ptr noundef %i.w) #5, !inline_history !37
  %i.x = add nsw i64 %.020.i.i, 1
  %i.y = add i64 %i.x, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %i.aa, %bb.d ] ; 3 uses
  %i.z = icmp sgt i64 %.1.i.i, %i.r
  %i.aa = sub nuw nsw i64 %.1.i.i, %i.r
  br i1 %i.z, label %bb.d, label %bb.e, !llvm.loop !38

bb.e:                                             ; preds = %bb.d
  %i.ab = add nuw nsw i64 %.01719.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.h
  br i1 %exitcond.not.i.i, label %bluestein_sequence.exit.i, label %.lr.ph.i.i, !llvm.loop !39

bluestein_sequence.exit.i:                        ; preds = %bb.e, %bb.c
  tail call void @fftw_triggen_destroy(ptr noundef %i.s) #5
  %i.ac = icmp sgt i64 %i.j, 0
  br i1 %i.ac, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bluestein_sequence.exit.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.o, i1 false), !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bluestein_sequence.exit.i
  %i.ad = load double, ptr %i.m, align 8, !tbaa !22
  %i.ae = fdiv double %i.ad, %i.k
  store double %i.ae, ptr %i.p, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !22
  %i.ah = fdiv double %i.ag, %i.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store double %i.ah, ptr %i.ai, align 8, !tbaa !22
  %i.aj = icmp sgt i64 %i.h, 1
  br i1 %i.aj, label %.lr.ph53.i.preheader, label %mktwiddle.exit

.lr.ph53.i.preheader:                             ; preds = %._crit_edge.i
  %i.ak = add nsw i64 %i.h, -1                    ; 3 uses
  %xtraiter = and i64 %i.ak, 1
  %i.al = icmp eq i64 %i.h, 2
  br i1 %i.al, label %.lr.ph53.i.epil.preheader, label %.lr.ph53.i.preheader.new

.lr.ph53.i.preheader.new:                         ; preds = %.lr.ph53.i.preheader
  %unroll_iter = and i64 %i.ak, -2
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %.lr.ph53.i, %.lr.ph53.i.preheader.new
  %.151.i = phi i64 [ 1, %.lr.ph53.i.preheader.new ], [ %i.bn, %.lr.ph53.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph53.i.preheader.new ], [ %niter.next.1, %.lr.ph53.i ]
  %i.am = shl nuw nsw i64 %.151.i, 1              ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !22
  %i.ap = fdiv double %i.ao, %i.k                 ; 2 uses
  %i.aq = sub nsw i64 %i.j, %.151.i
  %.idx.i = shl nsw i64 %i.aq, 4
  %i.ar = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i ; 2 uses
  store double %i.ap, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.am
  store double %i.ap, ptr %i.as, align 8, !tbaa !22
  %i.at = or disjoint i64 %i.am, 1                ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !22
  %i.aw = fdiv double %i.av, %i.k                 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ar, i64 8
  store double %i.aw, ptr %i.ax, align 8, !tbaa !22
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.at
  store double %i.aw, ptr %i.ay, align 8, !tbaa !22
  %i.az = add nuw nsw i64 %.151.i, 1              ; 2 uses
  %i.ba = shl nuw nsw i64 %i.az, 1                ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !22
  %i.bd = fdiv double %i.bc, %i.k                 ; 2 uses
  %i.be = sub nsw i64 %i.j, %i.az
  %.idx.i.1 = shl nsw i64 %i.be, 4
  %i.bf = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i.1 ; 2 uses
  store double %i.bd, ptr %i.bf, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ba
  store double %i.bd, ptr %i.bg, align 8, !tbaa !22
  %i.bh = or disjoint i64 %i.ba, 1                ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bh
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !22
  %i.bk = fdiv double %i.bj, %i.k                 ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bf, i64 8
  store double %i.bk, ptr %i.bl, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bh
  store double %i.bk, ptr %i.bm, align 8, !tbaa !22
  %i.bn = add nuw nsw i64 %.151.i, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mktwiddle.exit.loopexit.unr-lcssa, label %.lr.ph53.i, !llvm.loop !40

mktwiddle.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph53.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %mktwiddle.exit, label %.lr.ph53.i.epil.preheader

.lr.ph53.i.epil.preheader:                        ; preds = %mktwiddle.exit.loopexit.unr-lcssa, %.lr.ph53.i.preheader
  %.151.i.epil.init = phi i64 [ 1, %.lr.ph53.i.preheader ], [ %i.bn, %mktwiddle.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod11 = trunc i64 %i.ak to i1
  tail call void @llvm.assume(i1 %lcmp.mod11)
  %i.bo = shl nuw nsw i64 %.151.i.epil.init, 1    ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !22
  %i.br = fdiv double %i.bq, %i.k                 ; 2 uses
  %i.bs = sub nsw i64 %i.j, %.151.i.epil.init
  %.idx.i.epil = shl nsw i64 %i.bs, 4
  %i.bt = getelementptr inbounds i8, ptr %i.p, i64 %.idx.i.epil ; 2 uses
  store double %i.br, ptr %i.bt, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bo
  store double %i.br, ptr %i.bu, align 8, !tbaa !22
  %i.bv = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bv
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !22
  %i.by = fdiv double %i.bx, %i.k                 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bt, i64 8
  store double %i.by, ptr %i.bz, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.bv
  store double %i.by, ptr %i.ca, align 8, !tbaa !22
  br label %mktwiddle.exit

mktwiddle.exit:                                   ; preds = %.lr.ph53.i.epil.preheader, %mktwiddle.exit.loopexit.unr-lcssa, %._crit_edge.i
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25
  tail call void %i.cd(ptr noundef %i.cb, ptr noundef nonnull %i.p, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.p, ptr noundef nonnull %i.ai) #5, !inline_history !41
  br label %bb.f

bb.f:                                             ; preds = %mktwiddle.exit, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
end_hunk_0
