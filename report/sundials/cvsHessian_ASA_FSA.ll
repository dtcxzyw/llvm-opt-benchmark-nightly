Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsHessian_ASA_FSA?download=true
inline.NumInlined: 75
inline.NumDeleted: 1
begin_hunk_0_@fS:bb.a
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.ax, double %i.bc)
  %i.bf = fneg double %i.az
  %i.bg = fmul double %i.ad, %i.bc
  %i.bh = extractelement <2 x double> %i.ab, i64 1
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.az, double %i.bg)
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !14
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !21 ; 3 uses
  store double %i.be, ptr %i.bn, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store double %i.bf, ptr %i.bo, align 8, !tbaa !11
  %i.bp = fmul double %i.r, 2.000000e+00
  %i.bq = fneg double %i.g
  %i.br = fmul double %i.bp, %i.bq
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double %i.i, double %i.bi)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store double %i.bs, ptr %i.bt, align 8, !tbaa !11
  ret i32 0
}

declare i32 @CVodeSensEEtolerances(ptr noundef) local_unnamed_addr #3

declare i32 @CVodeSetSensErrCon(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CVodeQuadSensInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fQS(i32 %0, double %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree readnone captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7, ptr nofree readnone captures(none) %8) #4 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !11 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !14
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 3 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = fmul double %i.f, %i.o
  %i.s = tail call double @llvm.fmuladd.f64(double %i.d, double %i.m, double %i.r)
  %i.t = tail call double @llvm.fmuladd.f64(double %i.h, double %i.q, double %i.s)
  %i.u = load ptr, ptr %5, align 8, !tbaa !14
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21
  store double %i.t, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21 ; 3 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = fmul double %i.f, %i.af
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.d, double %i.ad, double %i.ai)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ah, double %i.aj)
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !14
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  store double %i.ak, ptr %i.ap, align 8, !tbaa !11
  ret i32 0
}

declare i32 @CVodeQuadSensEEtolerances(ptr noundef) local_unnamed_addr #3

declare i32 @CVodeSetQuadSensErrCon(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CVodeAdjInit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @CVodeF(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeGetQuad(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeGetSens(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeGetQuadSens(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @PrintFwdStats(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 3 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 3 uses
  %i.p = alloca i32, align 4                      ; 3 uses
  %i.q = alloca double, align 8                   ; 3 uses
  %i.r = alloca double, align 8                   ; 3 uses
  %i.s = alloca double, align 8                   ; 3 uses
  %i.t = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #9
  %i.u = call i32 @CVodeGetIntegratorStats(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #9 ; 0 uses
  %i.v = call i32 @CVodeGetNonlinSolvStats(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.w = call i32 @CVodeGetQuadStats(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #9 ; 0 uses
  %i.x = call i32 @CVodeGetSensStats(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef nonnull %i.k) #9 ; 0 uses
  %i.y = call i32 @CVodeGetQuadSensStats(ptr noundef %0, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #9
  %i.z = load i64, ptr %i.a, align 8, !tbaa !25
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i64 noundef %i.z) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.22) ; 0 uses
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !25
  %i.ac = load i64, ptr %i.g, align 8, !tbaa !25
  %i.ad = load i64, ptr %i.i, align 8, !tbaa !25
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !25
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i64 noundef %i.ab, i64 noundef %i.ac, i64 noundef %i.ad, i64 noundef %i.ae) ; 0 uses
  %puts5 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !25
  %i.ah = load i64, ptr %i.h, align 8, !tbaa !25
  %i.ai = load i64, ptr %i.l, align 8, !tbaa !25
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !25
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i64 noundef %i.ag, i64 noundef %i.ah, i64 noundef %i.ai, i64 noundef %i.aj) ; 0 uses
  %puts6 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24) ; 0 uses
  %i.al = load i64, ptr %i.c, align 8, !tbaa !25
  %i.am = load i64, ptr %i.k, align 8, !tbaa !25
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i64 noundef %i.al, i64 noundef %i.am) ; 0 uses
  %puts7 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, i64 noundef %i.ao) ; 0 uses
  %puts8 = call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !25
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i64 noundef %i.aq) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.y
}

declare i32 @CVodeCreateB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeInitBS(ptr noundef, i32 noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fB1(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %6 = load double, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !14
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.h = load double, ptr %8, align 8, !tbaa !11  ; 2 uses
  %9 = load ptr, ptr %3, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %10 = load double, ptr %i.k, align 8, !tbaa !11 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !11 ; 2 uses
  %11 = fneg double %6
  %i.o = load ptr, ptr %4, align 8, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 4 uses
  %i.r = load <2 x double>, ptr %5, align 8, !tbaa !11 ; 5 uses
  %12 = load <2 x double>, ptr %i.j, align 8, !tbaa !11 ; 3 uses
  %13 = insertelement <2 x double> %i.r, double 2.000000e+00, i64 0
  %14 = fmul <2 x double> %i.r, %13               ; 2 uses
  %15 = insertelement <2 x double> %12, double %10, i64 1
  %16 = insertelement <2 x double> %12, double %11, i64 0
  %17 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %18 = extractelement <2 x double> %12, i64 0    ; 2 uses
  %19 = fmul double %18, 2.000000e+00
  %20 = extractelement <2 x double> %i.r, i64 0
  %21 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %22 = load <2 x double>, ptr %i.l, align 8, !tbaa !11 ; 3 uses
  %23 = insertelement <2 x double> %22, double %i.n, i64 1
  %24 = extractelement <2 x double> %i.r, i64 1
  %i.s = fmul double %24, %10
  %25 = shufflevector <2 x double> %i.r, <2 x double> %14, <2 x i32> <i32 1, i32 3>
  %26 = insertelement <2 x double> poison, double %i.s, i64 0
  %27 = load <2 x double>, ptr %7, align 8, !tbaa !11 ; 3 uses
  %28 = insertelement <2 x double> %27, double %6, i64 0
  %29 = fmul <2 x double> %14, %28                ; 2 uses
  %30 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %15, <2 x double> %16) ; 2 uses
  %31 = extractelement <2 x double> %30, i64 0
  %32 = shufflevector <2 x double> %26, <2 x double> %27, <2 x i32> <i32 0, i32 2>
  %33 = fmul <2 x double> %25, %32                ; 3 uses
  %i.t = extractelement <2 x double> %33, i64 1
  %34 = tail call double @llvm.fmuladd.f64(double %i.t, double %10, double %18)
  %35 = shufflevector <2 x double> %30, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %36 = insertelement <2 x double> %35, double %34, i64 1
  %37 = fsub <2 x double> %36, %27
  %38 = insertelement <2 x double> poison, double %i.h, i64 0
  %39 = insertelement <2 x double> %38, double %i.n, i64 1
  %i.u = load <2 x double>, ptr %i.g, align 8, !tbaa !11 ; 3 uses
  %40 = extractelement <2 x double> %i.u, i64 0
  %41 = tail call double @llvm.fmuladd.f64(double %20, double %40, double %6)
  %42 = fmul double %41, %19
  %i.v = insertelement <2 x double> %22, double %42, i64 0
  store double %31, ptr %i.q, align 8, !tbaa !11
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %29, <2 x double> %23, <2 x double> %i.v) ; 2 uses
  store <2 x double> %37, ptr %17, align 8, !tbaa !11
  %43 = shufflevector <2 x double> %i.w, <2 x double> %22, <2 x i32> <i32 1, i32 2>
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> %39, <2 x double> %43) ; 2 uses
  %44 = shufflevector <2 x double> %i.w, <2 x double> %i.x, <2 x i32> <i32 0, i32 2>
  %i.y = fsub <2 x double> %44, %i.u
  store <2 x double> %i.y, ptr %21, align 8, !tbaa !11
  %45 = extractelement <2 x double> %i.x, i64 1
  %46 = extractelement <2 x double> %33, i64 0
  %47 = extractelement <2 x double> %i.u, i64 1
  %48 = tail call double @llvm.fmuladd.f64(double %46, double %47, double %45)
  %49 = fsub double %48, %i.h
  %50 = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store double %49, ptr %50, align 8, !tbaa !11
  ret i32 0
}

declare i32 @CVodeSStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @CVodeSetUserDataB(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeQuadInitBS(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fQB1(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !24 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !11 ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !14
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %i.r = load ptr, ptr %3, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 3 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = fneg double %i.f
  %i.z = load ptr, ptr %4, align 8, !tbaa !17
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21 ; 3 uses
  %i.ac = fmul double %i.b, -2.000000e+00
  %i.ad = fmul double %i.ac, %i.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.af = fmul double %i.u, 2.000000e+00
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = fmul double %i.b, %i.j
  %i.ai = fmul double %i.b, %i.h
  %i.aj = fmul double %i.ai, %i.q
  %i.ak = load double, ptr %i.n, align 8, !tbaa !11
  %i.al = load double, ptr %i.o, align 8, !tbaa !11
  %i.am = load <2 x double>, ptr %i.v, align 8, !tbaa !11 ; 3 uses
  %i.an = insertelement <2 x double> poison, double %i.f, i64 0 ; 2 uses
  %i.ao = insertelement <2 x double> %i.an, double %i.j, i64 1
  %i.ap = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ad, i64 1
  %i.ar = fmul <2 x double> %i.ao, %i.aq          ; 3 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = fmul double %i.as, %i.u
  store double %i.at, ptr %i.ab, align 8, !tbaa !11
  %shift = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.am
  %i.au = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.au, ptr %i.ae, align 8, !tbaa !11
  %i.av = shufflevector <2 x double> %i.an, <2 x double> %i.am, <2 x i32> <i32 0, i32 2>
  %i.aw = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.af, i64 0
  %i.ax = fmul <2 x double> %i.av, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.al, double %i.aj)
  %i.az = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ay, i64 1
  %i.bb = fneg <2 x double> %i.ba
  %i.bc = fmul <2 x double> %i.ax, %i.bb
  %i.bd = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x double> %i.bd, double %i.x, i64 1
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.be, <2 x double> %i.bc)
  store <2 x double> %i.bf, ptr %i.ag, align 8, !tbaa !11
  ret i32 0
}

declare i32 @CVodeQuadSStolerancesB(ptr noundef, i32 noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @CVodeSetQuadErrConB(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CVodeSetLinearSolverB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fB2(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 2 uses
  %6 = load double, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %3, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %8 = load double, ptr %7, align 8, !tbaa !11    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load double, ptr %i.p, align 8, !tbaa !11
  %9 = fneg double %6
  %i.r = load ptr, ptr %4, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 4 uses
  %i.u = load <2 x double>, ptr %5, align 8, !tbaa !11 ; 4 uses
  %10 = load <2 x double>, ptr %i.n, align 8, !tbaa !11 ; 3 uses
  %11 = insertelement <2 x double> %i.u, double 2.000000e+00, i64 0
  %12 = fmul <2 x double> %i.u, %11               ; 3 uses
  %13 = insertelement <2 x double> %10, double %8, i64 1
  %14 = insertelement <2 x double> %10, double %9, i64 0
  %15 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = extractelement <2 x double> %10, i64 0   ; 2 uses
  %16 = load <2 x double>, ptr %i.d, align 8, !tbaa !11 ; 4 uses
  %i.w = insertelement <2 x double> %16, double %6, i64 0
  %i.x = fmul <2 x double> %12, %i.w              ; 3 uses
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %13, <2 x double> %14) ; 2 uses
  %i.y = extractelement <2 x double> %17, i64 0
  %shift = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %16 ; 2 uses
  %18 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %8, double %i.v)
  %20 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %21 = insertelement <2 x double> %20, double %19, i64 1
  %22 = fsub <2 x double> %21, %16
  %23 = fmul double %i.v, 2.000000e+00
  %24 = extractelement <2 x double> %i.u, i64 0
  %25 = fmul double %24, %23
  %26 = fmul double %i.j, %25
  %27 = extractelement <2 x double> %i.x, i64 0
  %28 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.z = extractelement <2 x double> %i.u, i64 1
  %i.aa = fmul double %i.z, 2.000000e+00
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ac = load <2 x double>, ptr %i.k, align 8, !tbaa !11 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.o, align 8, !tbaa !11 ; 2 uses
  store double %i.y, ptr %i.t, align 8, !tbaa !11
  store <2 x double> %22, ptr %15, align 8, !tbaa !11
  %29 = extractelement <2 x double> %i.ad, i64 0
  %30 = tail call double @llvm.fmuladd.f64(double %27, double %29, double %26)
  %31 = fsub double %30, %i.j
  store double %31, ptr %28, align 8, !tbaa !11
  %32 = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.ae = insertelement <2 x double> poison, double %i.q, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> %i.af, <2 x double> %i.ad)
  %i.ah = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x double> %i.ah, %i.ac
  %i.aj = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %16, <2 x double> %i.ai)
  %i.al = insertelement <2 x double> poison, double %8, i64 0
  %34 = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %33, <2 x double> %i.ag)
  %36 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.am = fsub <2 x double> %36, %i.ac
  store <2 x double> %i.am, ptr %i.ab, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fQB2(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !24 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !11 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load double, ptr %i.o, align 8, !tbaa !11
  %i.q = load ptr, ptr %3, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.w = load double, ptr %i.v, align 8, !tbaa !11
  %i.x = load ptr, ptr %4, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21   ; 3 uses
  %i.aa = fmul double %i.b, -2.000000e+00
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = fmul double %i.t, 2.000000e+00
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ae = fmul double %i.b, %i.h
  %i.af = load <2 x double>, ptr %i.e, align 8, !tbaa !11 ; 3 uses
  %i.ag = load double, ptr %i.f, align 8, !tbaa !11 ; 3 uses
  %i.ah = load double, ptr %i.m, align 8, !tbaa !11
  %i.ai = load double, ptr %i.n, align 8, !tbaa !11
  %i.aj = load <2 x double>, ptr %i.u, align 8, !tbaa !11 ; 3 uses
  %i.ak = extractelement <2 x double> %i.af, i64 0
  %i.al = fneg double %i.ak
  %i.am = fmul double %i.aa, %i.ag
  %i.an = insertelement <2 x double> %i.af, double %i.h, i64 1
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.am, i64 1
  %i.aq = fmul <2 x double> %i.an, %i.ap          ; 3 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  %i.as = fmul double %i.ar, %i.t
  store double %i.as, ptr %i.z, align 8, !tbaa !11
  %shift = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.aj
  %i.at = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.at, ptr %i.ab, align 8, !tbaa !11
  %i.au = shufflevector <2 x double> %i.af, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.av = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.ac, i64 0
  %i.aw = fmul <2 x double> %i.au, %i.av
  %i.ax = fmul double %i.b, %i.ag
  %i.ay = fmul double %i.ax, %i.p
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ai, double %i.ay)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.h, double %i.az)
  %i.bb = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.ba, i64 1
  %i.bd = fneg <2 x double> %i.bc
  %i.be = fmul <2 x double> %i.aw, %i.bd
  %i.bf = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bg = insertelement <2 x double> %i.bf, double %i.w, i64 1
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.bg, <2 x double> %i.be)
  store <2 x double> %i.bh, ptr %i.ad, align 8, !tbaa !11
  ret i32 0
}

declare i32 @CVodeB(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CVodeGetB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeGetQuadB(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @PrintBckStats(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 3 uses
  %i.j = alloca i32, align 4                      ; 3 uses
  %i.k = alloca double, align 8                   ; 3 uses
  %i.l = alloca double, align 8                   ; 3 uses
  %i.m = alloca double, align 8                   ; 3 uses
  %i.n = alloca double, align 8                   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  %i.o = tail call ptr @CVodeGetAdjCVodeBmem(ptr noundef %0, i32 noundef %1) #9 ; 3 uses
  %i.p = call i32 @CVodeGetIntegratorStats(ptr noundef %i.o, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n) #9 ; 0 uses
  %i.q = call i32 @CVodeGetNonlinSolvStats(ptr noundef %i.o, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.r = call i32 @CVodeGetQuadStats(ptr noundef %i.o, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #9
  %i.s = load i64, ptr %i.a, align 8, !tbaa !25
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.75, i64 noundef %i.s) ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.22) ; 0 uses
  %i.u = load i64, ptr %i.b, align 8, !tbaa !25
  %i.v = load i64, ptr %i.g, align 8, !tbaa !25
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i64 noundef %i.u, i64 noundef %i.v) ; 0 uses
  %puts5 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23) ; 0 uses
  %i.x = load i64, ptr %i.f, align 8, !tbaa !25
  %i.y = load i64, ptr %i.h, align 8, !tbaa !25
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.x, i64 noundef %i.y) ; 0 uses
  %puts6 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24) ; 0 uses
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !25
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.88, i64 noundef %i.aa) ; 0 uses
  %puts7 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25) ; 0 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !25
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, i64 noundef %i.ac) ; 0 uses
  %puts8 = call i32 @puts(ptr nonnull dereferenceable(1) @str.26) ; 0 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !25
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i64 noundef %i.ae) ; 0 uses
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.r
}

declare void @CVodeFree(ptr noundef) local_unnamed_addr #3

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #3

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #3

declare i32 @CVode(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @CVodeReInit(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeQuadReInit(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #3

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @CVodeGetIntegratorStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeGetNonlinSolvStats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeGetQuadStats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeGetSensStats(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CVodeGetQuadSensStats(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @CVodeGetAdjCVodeBmem(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"double", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!13 = !{!"p1 _ZTS17_generic_N_Vector", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!16 = !{!"_generic_N_Vector", !9, i64 0, !15, i64 8, !12, i64 16}
!17 = !{!16, !9, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"p1 double", !9, i64 0}
!20 = !{!"_N_VectorContent_Serial", !18, i64 0, !6, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 16}
!22 = !{!"", !10, i64 0, !10, i64 8}
!23 = !{!22, !10, i64 0}
!24 = !{!22, !10, i64 8}
!25 = !{!18, !18, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!12, !12, i64 0}
!30 = !{!6, !6, i64 0}
end_hunk_0
