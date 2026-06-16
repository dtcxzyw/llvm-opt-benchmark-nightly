begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"Residual norm[%d] = %e   \00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Relative residual norm[%d] = %e\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_PCGFunctionsCreate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr %0(i32 noundef 1, i32 noundef 112) #10 ; 15 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %3, ptr %i.d, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %4, ptr %i.e, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %5, ptr %i.f, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %6, ptr %i.g, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %7, ptr %i.h, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %8, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %9, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %10, ptr %i.k, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %11, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %12, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %13, ptr %i.n, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_PCGCreate(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = tail call ptr %i.a(i32 noundef 1, i32 noundef 112) #10 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %0, ptr %i.c, align 8, !tbaa !24
  store <2 x double> <double f0x3EB0C6F7A0B5ED8D, double 0.000000e+00>, ptr %i.b, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store <4 x i32> <i32 1000, i32 0, i32 0, i32 0>, ptr %i.d, align 8, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.f, i8 0, i64 20, i1 false)
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PCGDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = tail call i32 %i.g(ptr noundef %i.i) #10 ; 0 uses
  store ptr null, ptr %i.h, align 8, !tbaa !30
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.n = tail call i32 %i.k(ptr noundef %i.m) #10 ; 0 uses
  store ptr null, ptr %i.l, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.s = tail call i32 %i.p(ptr noundef %i.r) #10 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = tail call i32 %i.u(ptr noundef %i.w) #10 ; 0 uses
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  %i.ab = tail call i32 %i.y(ptr noundef %i.aa) #10 ; 0 uses
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35
  %i.af = tail call i32 %i.ac(ptr noundef %i.ae) #10 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ai = tail call i32 %i.ah(ptr noundef nonnull %0) #10 ; 0 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !11
  %i.ak = tail call i32 %i.aj(ptr noundef %i.b) #10 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PCGSetup(ptr nofree noundef captures(none) initializes((32, 72)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.l = tail call ptr %i.k(ptr noundef %3) #10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.m, align 8, !tbaa !33
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.o = tail call ptr %i.n(ptr noundef %3) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !34
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !12
  %i.r = tail call ptr %i.q(ptr noundef %2) #10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.s, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = tail call ptr %i.u(ptr noundef %1, ptr noundef %3) #10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.v, ptr %i.w, align 8, !tbaa !32
  %i.x = tail call i32 (ptr, ptr, ptr, ptr, ...) %i.f(ptr noundef %i.h, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ac = add nsw i32 %i.d, 1                     ; 2 uses
  %i.ad = tail call ptr %i.ab(i32 noundef %i.ac, i32 noundef 8) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !30
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.ag = tail call ptr %i.af(i32 noundef %i.ac, i32 noundef 8) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_PCGSolve(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 11 uses
  %i.c = load double, ptr %0, align 8, !tbaa !39  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !33   ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 11 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !23   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !37   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !30 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31 ; 2 uses
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !19
  %i.ah = tail call i32 %i.ag(ptr noundef %i.o) #10 ; 0 uses
  %i.ai = tail call i32 (ptr, ptr, ptr, ptr, ...) %i.w(ptr noundef %i.y, ptr noundef %1, ptr noundef %2, ptr noundef %i.o) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.o, %bb.b ], [ %2, %bb.a ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17
  %i.al = tail call double %i.ak(ptr noundef %.sink, ptr noundef %2) #10 ; 4 uses
  %i.am = fcmp ogt double %i.al, 0.000000e+00
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.an = fmul double %i.c, %i.c                  ; 2 uses
  %i.ao = icmp eq i32 %i.m, 0
  %i.ap = icmp ne i32 %i.k, 0                     ; 2 uses
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  %i.aq = fdiv double %i.an, %i.al
  %.0171 = select i1 %or.cond, double %i.an, double %i.aq ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18
  %i.at = tail call i32 %i.as(ptr noundef %2, ptr noundef %i.s) #10 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.aw = tail call i32 %i.av(ptr noundef %i.u, double noundef -1.000000e+00, ptr noundef %1, ptr noundef %3, double noundef 1.000000e+00, ptr noundef %i.s) #10 ; 0 uses
  %i.ax = icmp sgt i32 %i.aa, 0                   ; 3 uses
  %i.ay = fcmp ogt double %i.e, 0.000000e+00      ; 2 uses
  %or.cond3 = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond3, label %bb.g, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !18
  %i.bb = tail call i32 %i.ba(ptr noundef %2, ptr noundef %3) #10 ; 0 uses
  %i.bc = icmp sgt i32 %i.aa, 0
  br i1 %i.bc, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  store double 0.000000e+00, ptr %i.ac, align 8, !tbaa !28
  store double 0.000000e+00, ptr %i.ae, align 8, !tbaa !28
  br label %bb.t

bb.g:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.bf = tail call double %i.be(ptr noundef %i.s, ptr noundef %i.s) #10 ; 3 uses
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = tail call double @sqrt(double noundef %i.bf) #10, !tbaa !4
  store double %i.bg, ptr %i.ac, align 8, !tbaa !28
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.d
  %.0168 = phi double [ %i.bf, %bb.h ], [ %i.bf, %bb.g ], [ undef, %bb.d ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.bj = tail call i32 %i.bi(ptr noundef %i.o) #10 ; 0 uses
  %i.bk = tail call i32 (ptr, ptr, ptr, ptr, ...) %i.w(ptr noundef %i.y, ptr noundef %1, ptr noundef %i.s, ptr noundef %i.o) #10 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 6 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bn = tail call double %i.bm(ptr noundef %i.s, ptr noundef %i.o) #10
  %.not174.not176 = icmp sgt i32 %i.g, 0
  br i1 %.not174.not176, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %4 = add nuw i32 %i.g, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 7 uses
  %.0165178 = phi double [ %i.bn, %.lr.ph ], [ %i.ce, %bb.s ] ; 2 uses
  %.0166177 = phi double [ 0.000000e+00, %.lr.ph ], [ %.1167, %bb.s ] ; 4 uses
  %i.bq = load ptr, ptr %i.au, align 8, !tbaa !15
  %i.br = tail call i32 %i.bq(ptr noundef %i.u, double noundef 1.000000e+00, ptr noundef %1, ptr noundef %i.o, double noundef 0.000000e+00, ptr noundef %i.q) #10 ; 0 uses
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.bt = tail call double %i.bs(ptr noundef %i.q, ptr noundef %i.o) #10
  %i.bu = fdiv double %.0165178, %i.bt            ; 4 uses
  %i.bv = load ptr, ptr %i.bo, align 8, !tbaa !21
  %i.bw = tail call i32 %i.bv(double noundef %i.bu, ptr noundef %i.o, ptr noundef %3) #10 ; 0 uses
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !21
  %i.by = fneg double %i.bu
  %i.bz = tail call i32 %i.bx(double noundef %i.by, ptr noundef %i.q, ptr noundef %i.s) #10 ; 0 uses
  %i.ca = load ptr, ptr %i.bh, align 8, !tbaa !19
  %i.cb = tail call i32 %i.ca(ptr noundef %i.q) #10 ; 0 uses
  %i.cc = tail call i32 (ptr, ptr, ptr, ptr, ...) %i.w(ptr noundef %i.y, ptr noundef %1, ptr noundef %i.s, ptr noundef %i.q) #10 ; 0 uses
  %i.cd = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.ce = tail call double %i.cd(ptr noundef %i.s, ptr noundef %i.q) #10 ; 3 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.cg = tail call double %i.cf(ptr noundef %i.s, ptr noundef %i.s) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.0170 = phi double [ %i.cg, %bb.k ], [ %i.ce, %bb.j ] ; 5 uses
  br i1 %i.ax, label %bb.m, label %._crit_edge186

._crit_edge186:                                   ; preds = %bb.l
  %.pre = fdiv double %.0170, %i.al
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ch = tail call double @sqrt(double noundef %.0170) #10, !tbaa !4
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  store double %i.ch, ptr %i.ci, align 8, !tbaa !28
  %i.cj = fdiv double %.0170, %i.al               ; 2 uses
  %i.ck = tail call double @sqrt(double noundef %i.cj) #10, !tbaa !4
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  store double %i.ck, ptr %i.cl, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge186, %bb.m
  %.pre-phi = phi double [ %.pre, %._crit_edge186 ], [ %i.cj, %bb.m ]
  %i.cm = fcmp olt double %.pre-phi, %.0171
  br i1 %i.cm, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cn = fcmp ogt double %.0170, 0.000000e+00
  %or.cond175 = select i1 %i.ap, i1 %i.cn, i1 false
  br i1 %or.cond175, label %bb.p, label %._crit_edge.loopexit.split.loop.exit188

bb.p:                                             ; preds = %bb.o
  %i.co = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.cp = tail call double %i.co(ptr noundef %i.o, ptr noundef %i.o) #10
  %i.cq = load ptr, ptr %i.bl, align 8, !tbaa !17
  %i.cr = tail call double %i.cq(ptr noundef %3, ptr noundef %3) #10
  %i.cs = fmul double %i.bu, %i.bu
  %i.ct = fmul double %i.cs, %i.cp
  %i.cu = fdiv double %i.ct, %i.cr
  %i.cv = fcmp olt double %i.cu, %.0171
  br i1 %i.cv, label %._crit_edge.loopexit.split.loop.exit190, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  br i1 %i.ay, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cw = fdiv double %.0170, %.0168
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.cx = shl i32 %indvars.iv.tr, 1
  %i.cy = uitofp i32 %i.cx to double
  %i.cz = fdiv double 1.000000e+00, %i.cy
  %i.da = tail call double @pow(double noundef %i.cw, double noundef %i.cz) #10, !tbaa !4 ; 5 uses
  %i.db = fsub double %i.da, %.0166177
  %i.dc = tail call double @llvm.fabs.f64(double %i.db)
  %i.dd = fcmp olt double %i.da, %.0166177
  %i.de = select i1 %i.dd, double %.0166177, double %i.da
  %i.df = fdiv double %i.dc, %i.de
  %i.dg = fsub double 1.000000e+00, %i.df
  %i.dh = fmul double %i.da, %i.dg
  %i.di = fcmp ogt double %i.dh, %i.e
  br i1 %i.di, label %._crit_edge.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1167 = phi double [ %i.da, %bb.r ], [ %.0166177, %bb.q ]
  %i.dj = fdiv double %i.ce, %.0165178
  %i.dk = load ptr, ptr %i.bp, align 8, !tbaa !20
  %i.dl = tail call i32 %i.dk(double noundef %i.dj, ptr noundef %i.o) #10 ; 0 uses
  %i.dm = load ptr, ptr %i.bo, align 8, !tbaa !21
  %i.dn = tail call i32 %i.dm(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %i.o) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !44

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.r
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge.loopexit.split.loop.exit188:          ; preds = %bb.o
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge.loopexit.split.loop.exit190:          ; preds = %bb.p
  %i.do = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %._crit_edge.loopexit.split.loop.exit, %._crit_edge.loopexit.split.loop.exit188, %._crit_edge.loopexit.split.loop.exit190, %bb.i
  %.1 = phi i32 [ 0, %bb.i ], [ %i.do, %._crit_edge.loopexit.split.loop.exit190 ], [ %6, %._crit_edge.loopexit.split.loop.exit188 ], [ %5, %._crit_edge.loopexit.split.loop.exit ], [ %i.g, %bb.s ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %.1, ptr %i.dp, align 8, !tbaa !46
  br label %bb.t

bb.t:                                             ; preds = %bb.e, %bb.f, %._crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PCGSetTol(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  store double %1, ptr %0, align 8, !tbaa !39
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PCGSetConvergenceFactorTol(ptr nofree noundef writeonly captures(none) initializes((8, 16)) %0, double noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %1, ptr %i.a, align 8, !tbaa !40
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PCGSetMaxIter(ptr nofree noundef writeonly captures(none) initializes((16, 20)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !36
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PCGSetTwoNorm(ptr nofree noundef writeonly captures(none) initializes((20, 24)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %i.a, align 4, !tbaa !41
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PCGSetRelChange(ptr nofree noundef writeonly captures(none) initializes((24, 28)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.a, align 8, !tbaa !42
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PCGSetStopCrit(ptr nofree noundef writeonly captures(none) initializes((28, 32)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %1, ptr %i.a, align 4, !tbaa !43
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_PCGGetPrecond(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37
  store ptr %i.b, ptr %1, align 8, !tbaa !47
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_PCGSetPrecond(ptr nofree noundef captures(none) initializes((72, 80)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %1, ptr %i.c, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %2, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %3, ptr %i.e, align 8, !tbaa !37
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_PCGSetLogging(ptr nofree noundef writeonly captures(none) initializes((92, 96)) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %1, ptr %i.a, align 4, !tbaa !29
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @hypre_PCGGetNumIterations(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  store i32 %i.b, ptr %1, align 4, !tbaa !4
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @hypre_PCGPrintLogging(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = icmp eq i32 %1, 0
  %i.j = icmp sgt i32 %i.d, 0
  %or.cond = select i1 %i.i, i1 %i.j, i1 false
  %i.k = icmp sgt i32 %i.b, 0
  %or.cond18 = select i1 %or.cond, i1 %i.k, i1 false
  br i1 %or.cond18, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !28
  %i.n = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.n, double noundef %i.m) ; 0 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load double, ptr %i.p, align 8, !tbaa !28
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.n, double noundef %i.q) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !49

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -1, 1) i32 @hypre_PCGGetFinalRelativeResidualNorm(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.h
  %i.j = load double, ptr %i.i, align 8, !tbaa !28
  store double %i.j, ptr %1, align 8, !tbaa !28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

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
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104}
!10 = !{!"any pointer", !6, i64 0}
end_hunk_0
