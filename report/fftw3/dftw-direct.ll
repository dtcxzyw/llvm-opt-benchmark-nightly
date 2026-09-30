Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/dftw-direct?download=true
inline.NumInlined: 11
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.plan_adt = type { ptr, ptr, ptr, ptr }

@fftw_mksolver_ct_hook = external local_unnamed_addr global ptr, align 8
@mkcldw.padt = internal constant %struct.plan_adt { ptr null, ptr @awake, ptr @print, ptr @destroy }, align 8
@.str = private unnamed_addr constant [33 x i8] c"(dftw-directbuf/%D-%D/%D%v \22%s\22)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"(dftw-direct-%D/%D%v \22%s\22)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fftw_regsolver_ct_directw(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !15
  %i.b = tail call ptr @fftw_mksolver_ct(i64 noundef 72, i64 noundef %i.a, i32 noundef %3, ptr noundef nonnull @mkcldw, ptr noundef null) #2 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %1, ptr %i.c, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %2, ptr %i.d, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.e, align 8, !tbaa !22
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.b) #2
  %i.f = load ptr, ptr @fftw_mksolver_ct_hook, align 8, !tbaa !47 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %regone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %2, align 8, !tbaa !15
  %i.h = tail call ptr %i.f(i64 noundef 72, i64 noundef %i.g, i32 noundef %3, ptr noundef nonnull @mkcldw, ptr noundef null) #2, !inline_history !46 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %1, ptr %i.i, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %2, ptr %i.j, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i32 0, ptr %i.k, align 8, !tbaa !22
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.h) #2
  br label %regone.exit

regone.exit:                                      ; preds = %bb.a, %bb.b
  %i.l = load i64, ptr %2, align 8, !tbaa !15
  %i.m = tail call ptr @fftw_mksolver_ct(i64 noundef 72, i64 noundef %i.l, i32 noundef %3, ptr noundef nonnull @mkcldw, ptr noundef null) #2 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr %1, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %2, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i32 1, ptr %i.p, align 8, !tbaa !22
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.m) #2
  %i.q = load ptr, ptr @fftw_mksolver_ct_hook, align 8, !tbaa !47 ; 2 uses
  %.not.i7 = icmp eq ptr %i.q, null
  br i1 %.not.i7, label %regone.exit8, label %bb.c

bb.c:                                             ; preds = %regone.exit
  %i.r = load i64, ptr %2, align 8, !tbaa !15
  %i.s = tail call ptr %i.q(i64 noundef 72, i64 noundef %i.r, i32 noundef %3, ptr noundef nonnull @mkcldw, ptr noundef null) #2, !inline_history !46 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %1, ptr %i.t, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %2, ptr %i.u, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i32 1, ptr %i.v, align 8, !tbaa !22
  tail call void @fftw_solver_register(ptr noundef %0, ptr noundef %i.s) #2
  br label %regone.exit8

regone.exit8:                                     ; preds = %regone.exit, %bb.c
  ret void
}

declare ptr @fftw_mksolver_ct(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @mkcldw(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 11 uses
  %i.c = add nsw i64 %10, %9                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %14 = load i32, ptr %i.d, align 8, !tbaa !22
  %.not.i = icmp eq i32 %14, 0
  %i.e = load i64, ptr %i.b, align 8, !tbaa !15
  %i.f = icmp eq i64 %1, %i.e
  %i.g = icmp eq i64 %2, %3
  %or.cond.i47.i = and i1 %i.g, %i.f
  %i.h = icmp eq i64 %7, %8
  %or.cond64.i.i = and i1 %i.h, %or.cond.i47.i    ; 2 uses
  br i1 %.not.i, label %bb.c, label %15

15:                                               ; preds = %bb.a
  br i1 %or.cond64.i.i, label %bb.b, label %applicable.exit.thread

bb.b:                                             ; preds = %15
  %i.i = add nsw i64 %1, 3
  %i.j = and i64 %i.i, -4
  %i.k = or disjoint i64 %i.j, 2                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.o = shl nsw i64 %i.k, 1                      ; 2 uses
  %i.p = add nsw i64 %9, %i.k
  %i.q = tail call i32 %i.n(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull inttoptr (i64 8 to ptr), i64 noundef %i.o, i64 noundef 0, i64 noundef %4, i64 noundef %9, i64 noundef %i.p, i64 noundef 2, ptr noundef %13) #2, !inline_history !48
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %applicable.exit.thread, label %applicable0_buf.exit.i

applicable0_buf.exit.i:                           ; preds = %bb.b
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.t = tail call i32 %i.s(ptr noundef nonnull %i.b, ptr noundef null, ptr noundef nonnull inttoptr (i64 8 to ptr), i64 noundef %i.o, i64 noundef 0, i64 noundef %4, i64 noundef %9, i64 noundef %i.c, i64 noundef 2, ptr noundef %13) #2, !inline_history !48
  %.not51.i = icmp eq i32 %i.t, 0
  br i1 %.not51.i, label %applicable.exit.thread, label %bb.h

bb.c:                                             ; preds = %bb.a
  br i1 %or.cond64.i.i, label %bb.d, label %applicable.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = tail call i32 %i.w(ptr noundef nonnull %i.b, ptr noundef %11, ptr noundef %12, i64 noundef %2, i64 noundef %7, i64 noundef %4, i64 noundef %9, i64 noundef %i.c, i64 noundef %5, ptr noundef %13) #2, !inline_history !49
  %.not.i48.i = icmp eq i32 %i.x, 0
  br i1 %.not.i48.i, label %bb.e, label %applicable0.exit.i

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %9, 0
  %i.z = icmp eq i64 %i.c, %4
  %or.cond65.i.i = and i1 %i.y, %i.z
  br i1 %or.cond65.i.i, label %bb.f, label %applicable.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52
  %i.ac = add nsw i64 %4, -1                      ; 2 uses
  %i.ad = tail call i32 %i.ab(ptr noundef nonnull %i.b, ptr noundef %11, ptr noundef %12, i64 noundef %2, i64 noundef %7, i64 noundef %4, i64 noundef 0, i64 noundef %i.ac, i64 noundef %5, ptr noundef %13) #2, !inline_history !49
  %.not62.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not62.i.i, label %applicable.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  %i.ag = add nsw i64 %4, 1
  %i.ah = tail call i32 %i.af(ptr noundef nonnull %i.b, ptr noundef %11, ptr noundef %12, i64 noundef %2, i64 noundef %7, i64 noundef %4, i64 noundef %i.ac, i64 noundef %i.ag, i64 noundef %5, ptr noundef %13) #2, !inline_history !49
  %.not63.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not63.i.i, label %applicable.exit.thread, label %applicable0.exit.i

applicable0.exit.i:                               ; preds = %bb.g, %bb.d
  %.1 = phi i64 [ 1, %bb.g ], [ 0, %bb.d ]        ; 2 uses
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.ak = getelementptr inbounds [8 x i8], ptr %11, i64 %7
  %i.al = getelementptr inbounds [8 x i8], ptr %12, i64 %7
  %i.am = sub nsw i64 %i.c, %.1
  %i.an = tail call i32 %i.aj(ptr noundef nonnull %i.b, ptr noundef %i.ak, ptr noundef %i.al, i64 noundef %2, i64 noundef %7, i64 noundef %4, i64 noundef %9, i64 noundef %i.am, i64 noundef %5, ptr noundef %13) #2, !inline_history !49
  %.not52.i = icmp eq i32 %i.an, 0
  br i1 %.not52.i, label %applicable.exit.thread, label %bb.h

bb.h:                                             ; preds = %applicable0.exit.i, %applicable0_buf.exit.i
  %.072 = phi i64 [ %.1, %applicable0.exit.i ], [ 0, %applicable0_buf.exit.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 212 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 4
  %i.aq = and i64 %i.ap, 65536
  %.not42.i = icmp eq i64 %i.aq, 0
  br i1 %.not42.i, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = mul nsw i64 %4, %1
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.d, align 8, !tbaa !22
  %.not43.i = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not43.i, i64 16, i64 512
  %i.at = mul nsw i64 %4, %1                      ; 2 uses
  %i.au = tail call i32 @fftw_ct_uglyp(i64 noundef %i.as, i64 noundef %6, i64 noundef %i.at, i64 noundef %1) #2
  %.not44.i = icmp eq i32 %i.au, 0
  br i1 %.not44.i, label %bb.j, label %applicable.exit.thread

bb.j:                                             ; preds = %bb.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.at, %bb.i ]
  %i.av = icmp sgt i64 %.pre-phi.i, 262144
  br i1 %i.av, label %bb.k, label %applicable.exit

bb.k:                                             ; preds = %bb.j
  %i.aw = load i64, ptr %i.ao, align 4
  %i.ax = and i64 %i.aw, 2048
  %.not45.i = icmp eq i64 %i.ax, 0
  br i1 %.not45.i, label %applicable.exit, label %applicable.exit.thread

applicable.exit:                                  ; preds = %bb.k, %bb.j
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !22
  %.not67 = icmp eq i32 %i.ay, 0
  %.not68 = icmp eq i64 %.072, 0
  %i.az = select i1 %.not68, ptr @apply, ptr @apply_extra_iter
  %.sink = select i1 %.not67, ptr %i.az, ptr @apply_buf
  %i.ba = tail call ptr @fftw_mkplan_dftw(i64 noundef 168, ptr noundef nonnull @mkcldw.padt, ptr noundef nonnull %.sink) #2 ; 17 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  store ptr %i.bc, ptr %i.bd, align 8, !tbaa !28
  %i.be = tail call ptr @fftw_mkstride(i64 noundef %1, i64 noundef %2) #2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  store ptr null, ptr %i.bg, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  store i64 %1, ptr %i.bh, align 8, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  store i64 %4, ptr %i.bi, align 8, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  store i64 %5, ptr %i.bj, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 104
  store i64 %6, ptr %i.bk, align 8, !tbaa !34
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 112
  store i64 %7, ptr %i.bl, align 8, !tbaa !35
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 120
  store i64 %9, ptr %i.bm, align 8, !tbaa !36
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 128
  store i64 %i.c, ptr %i.bn, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 160
  store ptr %0, ptr %i.bo, align 8, !tbaa !38
  %i.bp = shl i64 %1, 1
  %i.bq = add i64 %i.bp, 6
  %i.br = and i64 %i.bq, -8
  %i.bs = or disjoint i64 %i.br, 4
  %i.bt = tail call ptr @fftw_mkstride(i64 noundef %1, i64 noundef %i.bs) #2
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 144
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !39
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 136
  store i64 %.072, ptr %i.bv, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  tail call void @fftw_ops_zero(ptr noundef nonnull %i.bw) #2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !53
  %i.cb = sdiv i64 %10, %i.ca
  %i.cc = mul nsw i64 %i.cb, %6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @fftw_ops_madd2(i64 noundef %i.cc, ptr noundef nonnull %i.cd, ptr noundef nonnull %i.bw) #2
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !22
  %.not69 = icmp eq i32 %i.ce, 0                  ; 2 uses
  br i1 %.not69, label %bb.m, label %bb.l

bb.l:                                             ; preds = %applicable.exit
  %i.cf = shl nsw i64 %1, 3
  %i.cg = mul i64 %i.cf, %6
  %i.ch = mul i64 %i.cg, %10
  %i.ci = sitofp i64 %i.ch to double
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !54
  %i.cl = fadd double %i.ck, %i.ci
  store double %i.cl, ptr %i.cj, align 8, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %applicable.exit
  %i.cm = add i64 %1, -5
  %i.cn = icmp ult i64 %i.cm, 59
  %i.co = icmp sge i64 %4, %1
  %i.cp = and i1 %i.cn, %i.co
  %i.cq = and i1 %i.cp, %.not69
  %i.cr = zext i1 %i.cq to i32
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 52
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !55
  br label %applicable.exit.thread

applicable.exit.thread:                           ; preds = %bb.c, %bb.f, %bb.e, %bb.g, %bb.b, %15, %bb.k, %applicable0_buf.exit.i, %bb.i, %applicable0.exit.i, %bb.m
  %.066 = phi ptr [ %i.ba, %bb.m ], [ null, %applicable0.exit.i ], [ null, %bb.i ], [ null, %applicable0_buf.exit.i ], [ null, %bb.k ], [ null, %15 ], [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.c ]
  ret ptr %.066
}

declare void @fftw_solver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @awake(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i64, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = mul nsw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load i64, ptr %i.m, align 8, !tbaa !40
  %i.o = add nsw i64 %i.n, %i.k
  tail call void @fftw_twiddle_awake(i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef %i.g, i64 noundef %i.l, i64 noundef %i.i, i64 noundef %i.o) #2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.f = load i32, ptr %i.e, align 8, !tbaa !22
  %.not = icmp eq i32 %i.f, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !57     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8, !tbaa !31   ; 5 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i64 %i.i, 3
  %i.k = and i64 %i.j, -4
  %i.l = or disjoint i64 %i.k, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41
  %i.o = tail call i64 @fftw_twiddle_length(i64 noundef %i.i, ptr noundef %i.n) #2
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !58
  tail call void (ptr, ptr, ...) %i.g(ptr noundef nonnull %1, ptr noundef nonnull @.str, i64 noundef %i.l, i64 noundef %i.i, i64 noundef %i.o, i64 noundef %i.q, ptr noundef %i.s) #2
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = tail call i64 @fftw_twiddle_length(i64 noundef %i.i, ptr noundef %i.u) #2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load i64, ptr %i.w, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !58
  tail call void (ptr, ptr, ...) %i.g(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i64 noundef %i.i, i64 noundef %i.v, i64 noundef %i.x, ptr noundef %i.z) #2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @destroy(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @fftw_stride_destroy(ptr noundef %i.b) #2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  tail call void @fftw_stride_destroy(ptr noundef %i.d) #2
  ret void
}

declare ptr @fftw_mkplan_dftw(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @apply_buf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 7 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = add nsw i64 %i.d, 3
  %i.f = and i64 %i.e, -4
  %i.g = or disjoint i64 %i.f, 2                  ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !36   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 6 uses
  %i.l = shl i64 %i.d, 4
  %i.m = mul i64 %i.l, %i.g                       ; 3 uses
  %i.n = icmp ult i64 %i.m, 65536                 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = add nuw nsw i64 %i.m, 32
  %i.p = alloca i8, i64 %i.o, align 16
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = add i64 %i.q, 16
  %i.s = and i64 %i.r, -32
  %i.t = inttoptr i64 %i.s to ptr
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.u = tail call ptr @fftw_malloc_plain(i64 noundef %i.m) #2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.t, %bb.b ], [ %i.u, %bb.c ]  ; 11 uses
  %i.v = icmp sgt i64 %i.b, 0
  br i1 %i.v, label %.preheader.lr.ph, label %._crit_edge50

.preheader.lr.ph:                                 ; preds = %bb.d
  %i.w = add nsw i64 %i.i, %i.g                   ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  br i1 %i.x, label %.preheader.us, label %.preheader.lr.ph.split

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us
  %.04049.us = phi i64 [ %i.bp, %._crit_edge.us ], [ 0, %.preheader.lr.ph ]
  %.04148.us = phi ptr [ %i.bs, %._crit_edge.us ], [ %2, %.preheader.lr.ph ] ; 3 uses
  %.04247.us = phi ptr [ %i.br, %._crit_edge.us ], [ %1, %.preheader.lr.ph ] ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.e
  %i.af = phi i64 [ %i.w, %.preheader.us ], [ %i.aw, %bb.e ] ; 6 uses
  %.03946.us = phi i64 [ %i.i, %.preheader.us ], [ %i.af, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !62 ; 2 uses
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !62 ; 2 uses
  %i.am = load i64, ptr %i.aa, align 8, !tbaa !33 ; 3 uses
  %i.an = mul nsw i64 %i.am, %.03946.us           ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %.04247.us, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %.04148.us, i64 %i.an ; 2 uses
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !31
  call void @fftw_cpy2d_pair_ci(ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef %.0, ptr noundef nonnull %i.ab, i64 noundef %i.aq, i64 noundef %i.al, i64 noundef %i.ai, i64 noundef %i.g, i64 noundef %i.am, i64 noundef 2) #2
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.as = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !39
  call void %i.ar(ptr noundef %.0, ptr noundef nonnull %i.ab, ptr noundef %i.at, ptr noundef %i.au, i64 noundef %.03946.us, i64 noundef %i.af, i64 noundef 2) #2, !inline_history !59
  %i.av = load i64, ptr %i.c, align 8, !tbaa !31
  call void @fftw_cpy2d_pair_co(ptr noundef %.0, ptr noundef nonnull %i.ab, ptr noundef %i.ao, ptr noundef %i.ap, i64 noundef %i.av, i64 noundef %i.ai, i64 noundef %i.al, i64 noundef %i.g, i64 noundef 2, i64 noundef %i.am) #2
  %i.aw = add nsw i64 %i.af, %i.g                 ; 2 uses
  %i.ax = icmp slt i64 %i.aw, %i.k
  br i1 %i.ax, label %bb.e, label %._crit_edge.us, !llvm.loop !60

._crit_edge.us:                                   ; preds = %bb.e
  %i.ay = load ptr, ptr %i.y, align 8, !tbaa !39
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !62 ; 2 uses
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !62 ; 2 uses
  %i.be = load i64, ptr %i.aa, align 8, !tbaa !33 ; 3 uses
  %i.bf = mul nsw i64 %i.be, %i.af                ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %.04247.us, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.04148.us, i64 %i.bf ; 2 uses
  %i.bi = load i64, ptr %i.c, align 8, !tbaa !31
  %i.bj = sub nsw i64 %i.k, %i.af                 ; 2 uses
  call void @fftw_cpy2d_pair_ci(ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef nonnull %.0, ptr noundef nonnull %i.ab, i64 noundef %i.bi, i64 noundef %i.bd, i64 noundef %i.ba, i64 noundef %i.bj, i64 noundef %i.be, i64 noundef 2) #2
  %i.bk = load ptr, ptr %i.ac, align 8, !tbaa !28
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !44
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !39
  call void %i.bk(ptr noundef nonnull %.0, ptr noundef nonnull %i.ab, ptr noundef %i.bm, ptr noundef %i.bn, i64 noundef %i.af, i64 noundef %i.k, i64 noundef 2) #2, !inline_history !59
  %i.bo = load i64, ptr %i.c, align 8, !tbaa !31
  call void @fftw_cpy2d_pair_co(ptr noundef nonnull %.0, ptr noundef nonnull %i.ab, ptr noundef %i.bg, ptr noundef %i.bh, i64 noundef %i.bo, i64 noundef %i.ba, i64 noundef %i.bd, i64 noundef %i.bj, i64 noundef 2, i64 noundef %i.be) #2
  %i.bp = add nuw nsw i64 %.04049.us, 1           ; 2 uses
  %i.bq = load i64, ptr %i.ae, align 8, !tbaa !35 ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.04247.us, i64 %i.bq
  %i.bs = getelementptr inbounds [8 x i8], ptr %.04148.us, i64 %i.bq
  %exitcond52.not = icmp eq i64 %i.bp, %i.b
  br i1 %exitcond52.not, label %._crit_edge50, label %.preheader.us, !llvm.loop !61

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bt = sub nsw i64 %i.k, %i.i                  ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %.preheader
  %.04049 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %i.ck, %.preheader ]
end_hunk_0
