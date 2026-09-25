Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idasSlCrank_FSA_dns?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.db = call i32 @IDASetUserData(ptr noundef %i.da, ptr noundef nonnull %i.s) #11 ; 0 uses
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.dd = call i32 @IDASetId(ptr noundef %i.dc, ptr noundef nonnull %i.k) #11 ; 0 uses
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.df = call i32 @IDASetSuppressAlg(ptr noundef %i.de, i32 noundef 1) #11 ; 0 uses
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.dh = call ptr @SUNDenseMatrix(i64 noundef 10, i64 noundef 10, ptr noundef %i.dg) #11 ; 4 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %check_retval.exit191, label %bb.h

check_retval.exit191:                             ; preds = %bb.g
  %i.dj = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dj, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.2) #12 ; 0 uses
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.dm = call ptr @SUNLinSol_Dense(ptr noundef %i.l, ptr noundef nonnull %i.dh, ptr noundef %i.dl) #11 ; 3 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %check_retval.exit193, label %bb.i

check_retval.exit193:                             ; preds = %bb.h
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.3) #12 ; 0 uses
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.dr = call i32 @IDASetLinearSolver(ptr noundef %i.dq, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dh) #11 ; 2 uses
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %check_retval.exit195, label %bb.j

check_retval.exit195:                             ; preds = %bb.i
  %i.dt = load ptr, ptr @stderr, align 8, !tbaa !30
  %i.du = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dt, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.4, i32 noundef %i.dr) #12 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.o) #11
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.dw = call i32 @IDAQuadInit(ptr noundef %i.dv, ptr noundef nonnull @rhsQ, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.dx = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.dy = call i32 @IDAQuadSStolerances(ptr noundef %i.dx, double noundef f0x3EB0C6F7A0B5ED8D, double noundef 1.000000e-08) #11 ; 0 uses
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ea = call i32 @IDASetQuadErrCon(ptr noundef %i.dz, i32 noundef 1) #11 ; 0 uses
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ec = call i32 @IDASolve(ptr noundef %i.eb, double noundef 1.000000e+01, ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.m, i32 noundef 1) #11 ; 0 uses
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ee = call i32 @IDAGetQuad(ptr noundef %i.ed, ptr noundef nonnull %i.b, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.ef = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !21
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !12
  %i.ej = load double, ptr %i.v, align 8, !tbaa !12
  %i.ek = fadd double %i.ej, -1.000000e-05
  store double %i.ek, ptr %i.v, align 8, !tbaa !12
  call fastcc void @setIC(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.s)
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.em = call i32 @IDAReInit(ptr noundef %i.el, double noundef 0.000000e+00, ptr noundef %i.l, ptr noundef %i.m) #11 ; 0 uses
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.o) #11
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.eo = call i32 @IDAQuadReInit(ptr noundef %i.en, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.ep = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.eq = call i32 @IDASolve(ptr noundef %i.ep, double noundef 1.000000e+01, ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.m, i32 noundef 1) #11 ; 0 uses
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.es = call i32 @IDAGetQuad(ptr noundef %i.er, ptr noundef nonnull %i.b, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.et = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !21
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !12
  %i.ex = load double, ptr %i.v, align 8, !tbaa !12
  %i.ey = fadd double %i.ex, 2.000000e-05
  store double %i.ey, ptr %i.v, align 8, !tbaa !12
  call fastcc void @setIC(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.s)
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.fa = call i32 @IDAReInit(ptr noundef %i.ez, double noundef 0.000000e+00, ptr noundef %i.l, ptr noundef %i.m) #11 ; 0 uses
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.o) #11
  %i.fb = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.fc = call i32 @IDAQuadReInit(ptr noundef %i.fb, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.fe = call i32 @IDASolve(ptr noundef %i.fd, double noundef 1.000000e+01, ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.m, i32 noundef 1) #11 ; 0 uses
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.fg = call i32 @IDAGetQuad(ptr noundef %i.ff, ptr noundef nonnull %i.b, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !21
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !12
  store double 1.000000e+00, ptr %i.v, align 8, !tbaa !12
  %i.fl = load double, ptr %i.w, align 8, !tbaa !12
  %i.fm = fadd double %i.fl, -1.000000e-05
  store double %i.fm, ptr %i.w, align 8, !tbaa !12
  call fastcc void @setIC(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.s)
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.fo = call i32 @IDAReInit(ptr noundef %i.fn, double noundef 0.000000e+00, ptr noundef %i.l, ptr noundef %i.m) #11 ; 0 uses
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.o) #11
  %i.fp = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.fq = call i32 @IDAQuadReInit(ptr noundef %i.fp, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.fs = call i32 @IDASolve(ptr noundef %i.fr, double noundef 1.000000e+01, ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.m, i32 noundef 1) #11 ; 0 uses
  %i.ft = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.fu = call i32 @IDAGetQuad(ptr noundef %i.ft, ptr noundef nonnull %i.b, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !21
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !12
  %i.fz = load double, ptr %i.w, align 8, !tbaa !12
  %i.ga = fadd double %i.fz, 2.000000e-05
  store double %i.ga, ptr %i.w, align 8, !tbaa !12
  call fastcc void @setIC(ptr noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.s)
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.gc = call i32 @IDAReInit(ptr noundef %i.gb, double noundef 0.000000e+00, ptr noundef %i.l, ptr noundef %i.m) #11 ; 0 uses
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.o) #11
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.ge = call i32 @IDAQuadReInit(ptr noundef %i.gd, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.gg = call i32 @IDASolve(ptr noundef %i.gf, double noundef 1.000000e+01, ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.m, i32 noundef 1) #11 ; 0 uses
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.gi = call i32 @IDAGetQuad(ptr noundef %i.gh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.o) #11 ; 0 uses
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !21
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !12
  call void @IDAFree(ptr noundef nonnull %i.a) #11
  %i.gn = call i32 @SUNLinSolFree(ptr noundef nonnull %i.dm) #11 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.dh) #11
  %puts173 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %puts174 = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.go = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.gp = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gq = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.fy, i64 1 ; 2 uses
  %i.gs = fsub <2 x double> %i.gp, %i.gr
  %i.gt = fdiv <2 x double> %i.gs, splat (double 1.000000e-05) ; 2 uses
  %i.gu = extractelement <2 x double> %i.gt, i64 0
  %i.gv = extractelement <2 x double> %i.gt, i64 1
  %i.gw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.gu, double noundef %i.gv) ; 0 uses
  %puts175 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts176 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.gx = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gm, i64 1 ; 2 uses
  %i.gz = fsub <2 x double> %i.gy, %i.gp
  %i.ha = fdiv <2 x double> %i.gz, splat (double 1.000000e-05) ; 2 uses
  %i.hb = extractelement <2 x double> %i.ha, i64 0
  %i.hc = extractelement <2 x double> %i.ha, i64 1
  %i.hd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.hb, double noundef %i.hc) ; 0 uses
  %puts177 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %puts178 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.he = fsub <2 x double> %i.gy, %i.gr
  %i.hf = fdiv <2 x double> %i.he, splat (double 2.000000e-05) ; 2 uses
  %i.hg = extractelement <2 x double> %i.hf, i64 0
  %i.hh = extractelement <2 x double> %i.hf, i64 1
  %i.hi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.hg, double noundef %i.hh) ; 0 uses
  %puts179 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  call void @free(ptr noundef nonnull %i.s) #11
  call void @N_VDestroy(ptr noundef nonnull %i.k) #11
  call void @N_VDestroy(ptr noundef %i.l) #11
  call void @N_VDestroy(ptr noundef %i.m) #11
  call void @N_VDestroy(ptr noundef nonnull %i.o) #11
  call void @N_VDestroyVectorArray(ptr noundef nonnull %i.p, i32 noundef 2) #11
  call void @N_VDestroyVectorArray(ptr noundef nonnull %i.q, i32 noundef 2) #11
  call void @N_VDestroyVectorArray(ptr noundef nonnull %i.r, i32 noundef 2) #11
  %i.hj = call i32 @SUNContext_Free(ptr noundef nonnull %i.e) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %check_retval.exit195, %check_retval.exit193, %check_retval.exit191, %check_retval.exit189, %check_retval.exit187, %check_retval.exit185, %check_retval.exit183, %check_retval.exit181, %check_retval.exit, %bb.j
  %.0159 = phi i32 [ 0, %bb.j ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit181 ], [ 1, %check_retval.exit183 ], [ 1, %check_retval.exit185 ], [ 1, %check_retval.exit187 ], [ 1, %check_retval.exit189 ], [ 1, %check_retval.exit191 ], [ 1, %check_retval.exit193 ], [ 1, %check_retval.exit195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0159
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @setIC(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %0) #11
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1) #11
  %i.a = load double, ptr %2, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %3 = load double, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !27
  %i.g = fneg double %i.a
  %i.h = tail call double @asin(double noundef %i.g) #11 ; 4 uses
  %i.i = tail call double @cos(double noundef %i.h) #11 ; 8 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21   ; 6 uses
  store double f0x3FF921FB54442D18, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store double %i.i, ptr %i.m, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store double %i.h, ptr %i.n, align 8, !tbaa !12
  %4 = load double, ptr %2, align 8, !tbaa !24    ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 48
  %5 = load double, ptr %i.o, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %6 = load double, ptr %i.p, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %7 = load double, ptr %i.q, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = load double, ptr %i.r, align 8, !tbaa !14 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.v = tail call double @sin(double noundef %i.h) #11 ; 5 uses
  %i.w = tail call double @cos(double noundef %i.h) #11 ; 4 uses
  %i.x = fneg double %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.w, double f0x3C91A62633145C07, double %i.v)
  %9 = tail call double @llvm.fmuladd.f64(double %4, double f0x3C91A62633145C07, double %i.w)
  %10 = fneg double %9                            ; 2 uses
  %i.z = fmul double %i.i, %10
  %11 = insertelement <2 x double> poison, double %i.i, i64 0
  %12 = insertelement <2 x double> %11, double %4, i64 1 ; 2 uses
  %13 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.z, i64 0
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %12, <2 x double> %13) ; 2 uses
  %15 = extractelement <2 x double> %14, i64 1
  %16 = fmul double %15, 2.500000e-01
  %17 = extractelement <2 x double> %14, i64 0
  %18 = fadd double %16, %17
  %19 = fmul double %4, %i.y
  %20 = fmul double %19, 5.000000e-01
  %21 = fadd double %20, %18
  %22 = tail call double @sqrt(double noundef %21) #11 ; 3 uses
  %i.aa = fmul double %i.i, 2.000000e+00
  %23 = load <2 x double>, ptr %i.t, align 8, !tbaa !12 ; 2 uses
  %24 = load double, ptr %8, align 8, !tbaa !12
  %25 = load <2 x double>, ptr %i.u, align 8, !tbaa !12
  %26 = insertelement <2 x double> poison, double %4, i64 0
  %27 = insertelement <2 x double> %26, double %10, i64 1
  %28 = fmul <2 x double> %23, %27
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %30 = insertelement <2 x double> poison, double %i.aa, i64 0
  %31 = insertelement <2 x double> %30, double %i.v, i64 1
  %32 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %31, <2 x double> %25, <2 x double> %29) ; 2 uses
  %33 = extractelement <2 x double> %32, i64 0
  %34 = extractelement <2 x double> %32, i64 1
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.i, double %34, double %33)
  %35 = extractelement <2 x double> %23, i64 0
  %36 = fsub double %24, %35
  %i.ac = fmul double %22, 2.000000e+00
  %i.ad = fsub double %22, %7
  %i.ae = fmul double %i.w, 5.000000e-01
  %37 = fneg double %i.s
  %38 = load ptr, ptr %1, align 8, !tbaa !17
  %39 = getelementptr inbounds nuw i8, ptr %38, i64 16
  %40 = load ptr, ptr %39, align 8, !tbaa !21     ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %40, i64 24
  %42 = tail call double @llvm.fmuladd.f64(double %i.v, double f0x3C91A62633145C07, double %i.x) ; 2 uses
  %43 = fmul double %4, %42                       ; 2 uses
  %i.af = fmul double %36, %43
  %i.ag = fmul double %i.af, 5.000000e-01
  %44 = fsub double %i.ab, %i.ag
  %45 = fdiv double %44, %i.ac
  %i.ah = fmul double %6, %45
  %46 = tail call double @llvm.fmuladd.f64(double %5, double %i.ad, double %i.ah)
  %47 = fdiv double %46, %22                      ; 2 uses
  %48 = fneg double %47                           ; 2 uses
  %i.ai = fmul double %4, %48
  %i.aj = fmul double %42, 5.000000e-01
  %49 = fadd double %i.i, %i.aj
  %50 = fmul double %49, %i.ai
  %i.ak = fmul double %50, 5.000000e-01
  %51 = fsub double %i.ae, %i.i
  %i.al = fmul double %4, f0x3C91A62633145C07
  %i.am = fmul double %i.al, 5.000000e-01
  %52 = fadd double %i.am, %51
  %i.an = tail call double @llvm.fmuladd.f64(double %47, double %52, double %i.s)
  %53 = fmul double %43, -5.000000e-01
  %54 = tail call double @llvm.fmuladd.f64(double %i.i, double %i.v, double %53)
  %55 = fmul double %54, %48
  %56 = fmul double %55, 5.000000e-01
  %57 = tail call double @llvm.fmuladd.f64(double %37, double %i.v, double %56)
  %i.ao = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = insertelement <2 x double> poison, double %3, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.d, i64 1
  %i.as = fdiv <2 x double> %i.ap, %i.ar
  store <2 x double> %i.as, ptr %41, align 8, !tbaa !12
  %i.at = fdiv double %57, %i.f
  %i.au = getelementptr inbounds nuw i8, ptr %40, i64 40
  store double %i.at, ptr %i.au, align 8, !tbaa !12
  ret void
}

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @ressc(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !24  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !27
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #11 ; 10 uses
  %i.i = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #11 ; 6 uses
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #11 ; 8 uses
  %i.k = load double, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load double, ptr %i.r, align 8, !tbaa !12 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.u = load double, ptr %i.t, align 8, !tbaa !12 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.w = load double, ptr %i.v, align 8, !tbaa !12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.y = load double, ptr %i.x, align 8, !tbaa !12 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.aa = load double, ptr %i.z, align 8, !tbaa !12 ; 2 uses
  %i.ab = tail call double @sin(double noundef %i.k) #11 ; 2 uses
  %i.ac = tail call double @cos(double noundef %i.k) #11 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ag = fmul double %i.a, %i.ab                 ; 3 uses
  %i.ah = fneg double %i.ac
  %i.ai = fmul double %i.a, %i.ah                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.at = insertelement <2 x double> poison, double %i.w, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.ac, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.aw = tail call double @sin(double noundef %i.o) #11 ; 4 uses
  %i.ax = tail call double @cos(double noundef %i.o) #11 ; 3 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !17
  %i.ay = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 6 uses
  %i.az = load double, ptr %4, align 8, !tbaa !24 ; 8 uses
  %i.ba = load double, ptr %i.ae, align 8, !tbaa !28
  %i.bb = load double, ptr %i.af, align 8, !tbaa !14 ; 2 uses
  %i.bc = load double, ptr %.val.val, align 8, !tbaa !12 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val.val, i64 8
  %i.be = load double, ptr %i.bd, align 8, !tbaa !12 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.val, i64 32
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !12 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !12 ; 2 uses
  %i.bn = tail call double @sin(double noundef %i.bc) #11 ; 4 uses
  %i.bo = tail call double @cos(double noundef %i.bc) #11 ; 3 uses
  %i.bp = tail call double @sin(double noundef %i.bg) #11 ; 4 uses
  %i.bq = tail call double @cos(double noundef %i.bg) #11 ; 3 uses
  %i.br = fneg double %i.bn
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 0 ; 2 uses
  %i.bt = insertelement <2 x double> %i.bs, double %i.bn, i64 1
  %i.bu = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bp, i64 1 ; 2 uses
  %i.bw = fmul <2 x double> %i.bt, %i.bv
  %i.bx = shufflevector <2 x double> %i.bv, <2 x double> %i.bs, <2 x i32> <i32 1, i32 2>
  %i.by = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bz, <2 x double> %i.bw) ; 3 uses
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.az, double %i.bo, double %i.bq)
  %i.cc = fneg double %i.cb                       ; 2 uses
  %i.cd = fmul double %i.be, %i.cc
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.be, double %i.be, double %i.cd)
  %i.cf = tail call double @llvm.fmuladd.f64(double %i.az, double %i.az, double 1.000000e+00)
  %i.cg = fmul double %i.cf, 2.500000e-01
  %i.ch = fadd double %i.cg, %i.ce
  %i.ci = extractelement <2 x double> %i.ca, i64 1
  %i.cj = fmul double %i.az, %i.ci
  %i.ck = fmul double %i.cj, 5.000000e-01
  %i.cl = fadd double %i.ck, %i.ch
  %i.cm = tail call double @sqrt(double noundef %i.cl) #11 ; 3 uses
  %i.cn = fmul double %i.be, 2.000000e+00
  %i.co = fmul double %i.bk, %i.cc
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.bk, double %i.co)
  %i.cq = fmul double %i.az, %i.bn
  %i.cr = fmul double %i.bi, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.bm, double %i.cr)
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.be, double %i.cs, double %i.cp)
  %i.cu = extractelement <2 x double> %i.ca, i64 0
  %i.cv = fmul double %i.az, %i.cu                ; 2 uses
  %i.cw = fsub double %i.bm, %i.bi
  %i.cx = fmul double %i.cw, %i.cv
  %i.cy = fmul double %i.cx, 5.000000e-01
  %i.cz = fsub double %i.ct, %i.cy
  %i.da = fmul double %i.cm, 2.000000e+00
  %i.db = fdiv double %i.cz, %i.da
  %i.dc = fsub double %i.cm, %i.ba
  %i.dd = load <2 x double>, ptr %i.ad, align 8, !tbaa !12 ; 2 uses
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> %i.ca, <2 x i32> <i32 1, i32 2>
  %i.df = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.db, i64 0
  %i.dg = fmul <2 x double> %i.de, %i.df
  %i.dh = insertelement <2 x double> %i.dd, double %i.be, i64 1
  %i.di = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.dj = insertelement <2 x double> %i.di, double %i.bn, i64 1
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dh, <2 x double> %i.dj, <2 x double> %i.dg) ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %i.dm = fdiv double %i.dl, %i.cm                ; 2 uses
  %i.dn = fneg double %i.dm                       ; 2 uses
  %i.do = fmul double %i.az, %i.dn
  %i.dp = extractelement <2 x double> %i.dk, i64 1
  %i.dq = fmul double %i.dp, %i.do
  %i.dr = fmul double %i.bq, 5.000000e-01
  %i.ds = fsub double %i.dr, %i.be
  %i.dt = fmul double %i.az, %i.bo
  %i.du = fmul double %i.dt, 5.000000e-01
  %i.dv = fadd double %i.du, %i.ds
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dv, double %i.bb)
  %i.dx = fmul double %i.cv, -5.000000e-01
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bp, double %i.dx)
  %i.dz = fmul double %i.dy, %i.dn
  %i.ea = fmul double %i.dz, 5.000000e-01
  %i.eb = fneg double %i.bb
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.bp, double %i.ea)
  %i.ed = load double, ptr %i.i, align 8, !tbaa !12
  %i.ee = fmul double %i.dq, -5.000000e-01
  %i.ef = fneg double %i.dw
  %i.eg = fneg double %i.ec
  %i.eh = fsub double %i.m, %i.ax
  %i.ei = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.a, i64 1
  %i.ek = fneg <2 x double> %i.ej                 ; 4 uses
  %i.el = extractelement <2 x double> %i.ek, i64 0
  %i.em = fneg double %i.aw
  %i.en = extractelement <2 x double> %i.ek, i64 1
  %i.eo = load <2 x double>, ptr %i.p, align 8, !tbaa !12 ; 3 uses
  %i.ep = load double, ptr %i.q, align 8, !tbaa !12
  %i.eq = extractelement <2 x double> %i.eo, i64 0 ; 2 uses
  %i.er = fsub double %i.ed, %i.eq
  %i.es = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.y, double %i.er)
  %i.et = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.aa, double %i.es)
  store double %i.et, ptr %i.j, align 8, !tbaa !12
  %i.eu = load double, ptr %i.aj, align 8, !tbaa !12
  %i.ev = fsub double %i.eu, %i.ep
  %i.ew = fadd double %i.y, %i.ev
  store double %i.ew, ptr %i.ak, align 8, !tbaa !12
  %i.ex = load double, ptr %i.al, align 8, !tbaa !12
  %i.ey = fsub double %i.ex, %i.s
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.y, double %i.ey)
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.el, double %i.aa, double %i.ez)
  store double %i.fa, ptr %i.am, align 8, !tbaa !12
  %i.fb = load double, ptr %i.an, align 8, !tbaa !12
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.c, double %i.fb, double %i.ee)
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.u, double %i.fc)
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.w, double %i.fd)
  store double %i.fe, ptr %i.ao, align 8, !tbaa !12
  %i.ff = load double, ptr %i.ap, align 8, !tbaa !12
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.e, double %i.ff, double %i.ef)
  %i.fh = fadd double %i.u, %i.fg
  store double %i.fh, ptr %i.aq, align 8, !tbaa !12
  %i.fi = load double, ptr %i.ar, align 8, !tbaa !12
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.g, double %i.fi, double %i.eg)
  %i.fk = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.ag, i64 1
  %i.fm = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fn = insertelement <2 x double> %i.fm, double %i.u, i64 0
  %i.fo = insertelement <2 x double> %i.eo, double %i.fj, i64 0
  %i.fp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fn, <2 x double> %i.fo) ; 2 uses
  %i.fq = insertelement <2 x double> %i.fp, double %i.eh, i64 1
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.au, <2 x double> %i.fq)
  store <2 x double> %i.fr, ptr %i.as, align 8, !tbaa !12
  %i.fs = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ft = insertelement <2 x double> %i.fs, double %i.aw, i64 1
  %i.fu = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.s, i64 1
  %i.fw = insertelement <2 x double> %i.fp, double %i.em, i64 0
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ft, <2 x double> %i.fv, <2 x double> %i.fw)
  store <2 x double> %i.fx, ptr %i.av, align 8, !tbaa !12
  %i.fy = fmul double %i.ac, %i.en
  %i.fz = fneg double %i.s
  %i.ga = fmul double %i.ax, %i.fz
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.eq, double %i.ga)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store double %i.gb, ptr %i.gc, align 8, !tbaa !12
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetSuppressAlg(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDASetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASensInit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetSensParams(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASensEEtolerances(ptr noundef) local_unnamed_addr #2

declare i32 @IDASetSensErrCon(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDAQuadInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @rhsQ(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !27
  %i.g = load ptr, ptr %1, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load double, ptr %i.l, align 8, !tbaa !12 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.o = load double, ptr %i.n, align 8, !tbaa !12 ; 2 uses
  %i.p = fmul double %i.b, %i.k
  %i.q = fmul double %i.d, %i.m
  %i.r = fmul double %i.m, %i.q
  %i.s = tail call double @llvm.fmuladd.f64(double %i.p, double %i.k, double %i.r)
  %i.t = fmul double %i.f, %i.o
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %i.o, double %i.s)
  %i.v = fmul double %i.u, 5.000000e-01
  %i.w = load ptr, ptr %3, align 8, !tbaa !17
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  store double %i.v, ptr %i.y, align 8, !tbaa !12
  ret i32 0
}

declare i32 @IDAQuadSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASetQuadErrCon(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDAQuadSensInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @rhsQS(i32 %0, double %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree readnone captures(none) %9, ptr nofree readnone captures(none) %10, ptr nofree readnone captures(none) %11) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !27
  %i.g = load ptr, ptr %2, align 8, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load double, ptr %i.l, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.o = load double, ptr %i.n, align 8, !tbaa !12
  %i.p = load ptr, ptr %4, align 8, !tbaa !23
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.w = load double, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.y = load double, ptr %i.x, align 8, !tbaa !12
  %i.z = fmul double %i.b, %i.k                   ; 2 uses
  %i.aa = fmul double %i.d, %i.m                  ; 2 uses
  %i.ab = fmul double %i.aa, %i.w
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.z, double %i.u, double %i.ab)
  %i.ad = fmul double %i.f, %i.o                  ; 2 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.y, double %i.ac)
  %i.af = load ptr, ptr %7, align 8, !tbaa !23
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21
  store double %i.ae, ptr %i.ai, align 8, !tbaa !12
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !21 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.at = load double, ptr %i.as, align 8, !tbaa !12
  %i.au = fmul double %i.aa, %i.ar
  %i.av = tail call double @llvm.fmuladd.f64(double %i.z, double %i.ap, double %i.au)
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.at, double %i.av)
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  store double %i.aw, ptr %i.bb, align 8, !tbaa !12
  ret i32 0
}

declare i32 @IDAQuadSensSStolerances(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetQuadSensErrCon(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @IDASolve(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @PrintFinalStats(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  %i.i = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.j = call i32 @IDAGetNumResEvals(ptr noundef %0, ptr noundef nonnull %i.e) #11 ; 0 uses
  %i.k = call i32 @IDAGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.l = call i32 @IDAGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.m = call i32 @IDAGetNumErrTestFails(ptr noundef %0, ptr noundef nonnull %i.g) #11 ; 0 uses
  %i.n = call i32 @IDAGetNumNonlinSolvConvFails(ptr noundef %0, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.o = call i32 @IDAGetNumStepSolveFails(ptr noundef %0, ptr noundef nonnull %i.h) #11 ; 0 uses
  %i.p = call i32 @IDAGetNumLinResEvals(ptr noundef %0, ptr noundef nonnull %i.f) #11
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !33
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i64 noundef %i.q) ; 0 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !33
  %i.t = load i64, ptr %i.f, align 8, !tbaa !33
  %i.u = add nsw i64 %i.t, %i.s
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i64 noundef %i.u) ; 0 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !33
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i64 noundef %i.w) ; 0 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !33
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %i.y) ; 0 uses
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !33
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %i.aa) ; 0 uses
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !33
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %i.ac) ; 0 uses
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !33
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i64 noundef %i.ae) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.p
}

declare i32 @IDAGetQuad(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetQuadSens(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @IDAFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @IDAReInit(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAQuadReInit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroyVectorArray(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumResEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumStepSolveFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumLinResEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!10 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !5, i64 48, !11, i64 64}
!14 = !{!13, !11, i64 64}
!15 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!16 = !{!"_generic_N_Vector", !9, i64 0, !15, i64 8, !10, i64 16}
!17 = !{!16, !9, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"p1 double", !9, i64 0}
!20 = !{!"_N_VectorContent_Serial", !18, i64 0, !6, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 16}
!22 = !{!"p1 _ZTS17_generic_N_Vector", !9, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!13, !11, i64 0}
!25 = !{!13, !11, i64 8}
!26 = !{!13, !11, i64 32}
!27 = !{!13, !11, i64 16}
!28 = !{!13, !11, i64 40}
!29 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!9, !9, i64 0}
!33 = !{!18, !18, i64 0}
end_hunk_0
