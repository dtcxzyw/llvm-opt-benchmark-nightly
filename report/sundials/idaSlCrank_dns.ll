inline.NumInlined: 7
inline.NumDeleted: 1
begin_hunk_0_@main:bb.a
bb.g:                                             ; preds = %bb.f
  %i.av = load double, ptr %i.e, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.aw = call ptr @N_VGetArrayPointer(ptr noundef %i.p) #12 ; 3 uses
  %i.ax = call i32 @IDAGetLastOrder(ptr noundef %i.x, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.ay = call i32 @IDAGetNumSteps(ptr noundef %i.x, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.az = call i32 @IDAGetLastStep(ptr noundef %i.x, ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.ba = load double, ptr %i.aw, align 8, !tbaa !12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !12
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !24
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !25
  %i.bh = load double, ptr %i.c, align 8, !tbaa !12
  %i.bi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.av, double noundef %i.ba, double noundef %i.bc, double noundef %i.be, i64 noundef %i.bf, i32 noundef %i.bg, double noundef %i.bh) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bj = add nuw nsw i32 %.072, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, 41
  br i1 %exitcond.not, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.f, %bb.g
  call fastcc void @PrintFinalStats(ptr noundef %i.x)
  call void @free(ptr noundef %i.k) #12
  call void @IDAFree(ptr noundef nonnull %i.d) #12
  %i.bk = call i32 @SUNLinSolFree(ptr noundef nonnull %i.aj) #12 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.ae) #12
  call void @N_VDestroy(ptr noundef %i.p) #12
  call void @N_VDestroy(ptr noundef %i.q) #12
  call void @N_VDestroy(ptr noundef nonnull %i.r) #12
  %i.bl = call i32 @SUNContext_Free(ptr noundef nonnull %i.f) #12 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %check_retval.exit62, %check_retval.exit60, %check_retval.exit58, %check_retval.exit, %bb.h
  %.053 = phi i32 [ 0, %bb.h ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit58 ], [ 1, %check_retval.exit60 ], [ 1, %check_retval.exit62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  ret i32 %.053
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @setIC(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %0) #12
  tail call void @N_VConst(double noundef 0.000000e+00, ptr noundef %1) #12
  %i.a = load double, ptr %2, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !29
  %i.g = fneg double %i.a
  %i.h = tail call double @asin(double noundef %i.g) #12 ; 4 uses
  %i.i = tail call double @cos(double noundef %i.h) #12 ; 9 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load double, ptr %i.s, align 8, !tbaa !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.v = load double, ptr %i.u, align 8, !tbaa !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !12 ; 2 uses
  %i.y = tail call double @sin(double noundef %i.h) #12 ; 5 uses
  %i.z = tail call double @cos(double noundef %i.h) #12 ; 4 uses
  %i.aa = fneg double %i.z
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double f0x3C91A62633145C07, double %i.y)
  %i.ac = fmul double %i.i, 2.000000e+00
  %i.ad = fsub double %i.x, %i.t
  %i.ae = fmul double %i.z, 5.000000e-01
  %i.af = load double, ptr %i.b, align 8, !tbaa !30
  store double f0x3FF921FB54442D18, ptr %i.l, align 8, !tbaa !12
  store double %i.i, ptr %i.m, align 8, !tbaa !12
  store double %i.h, ptr %i.n, align 8, !tbaa !12
  %i.ag = load double, ptr %2, align 8, !tbaa !26 ; 8 uses
  %i.ah = load double, ptr %i.o, align 8, !tbaa !31
  %i.ai = load double, ptr %i.p, align 8, !tbaa !32
  %i.aj = load double, ptr %i.q, align 8, !tbaa !33
  %i.ak = load double, ptr %i.r, align 8, !tbaa !34 ; 2 uses
  %i.al = tail call double @llvm.fmuladd.f64(double %i.y, double f0x3C91A62633145C07, double %i.aa) ; 2 uses
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ag, double f0x3C91A62633145C07, double %i.z)
  %i.an = fneg double %i.am                       ; 2 uses
  %i.ao = fmul double %i.i, %i.an
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.ao)
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double 1.000000e+00)
  %i.ar = fmul double %i.aq, 2.500000e-01
  %i.as = fadd double %i.ar, %i.ap
  %i.at = fmul double %i.ag, %i.ab
  %i.au = fmul double %i.at, 5.000000e-01
  %i.av = fadd double %i.au, %i.as
  %i.aw = tail call double @sqrt(double noundef %i.av) #12 ; 3 uses
  %i.ax = fmul double %i.v, %i.an
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.v, double %i.ax)
  %i.az = fmul double %i.ag, %i.t
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.y, double %i.x, double %i.az)
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.i, double %i.ba, double %i.ay)
  %i.bc = fmul double %i.ag, %i.al                ; 2 uses
  %i.bd = fmul double %i.ad, %i.bc
  %i.be = fmul double %i.bd, 5.000000e-01
  %i.bf = fsub double %i.bb, %i.be
  %i.bg = fmul double %i.aw, 2.000000e+00
  %i.bh = fdiv double %i.bf, %i.bg
  %i.bi = fsub double %i.aw, %i.aj
  %i.bj = fmul double %i.ai, %i.bh
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.bi, double %i.bj)
  %i.bl = fdiv double %i.bk, %i.aw                ; 2 uses
  %i.bm = fneg double %i.bl                       ; 2 uses
  %i.bn = fsub double %i.ae, %i.i
  %i.bo = fmul double %i.ag, %i.bm
  %i.bp = fmul double %i.ag, f0x3C91A62633145C07
  %i.bq = fmul double %i.al, 5.000000e-01
  %i.br = fmul double %i.bp, 5.000000e-01
  %i.bs = fadd double %i.i, %i.bq
  %i.bt = fadd double %i.br, %i.bn
  %i.bu = fmul double %i.bs, %i.bo
  %i.bv = fmul double %i.bu, 5.000000e-01
  %i.bw = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bt, double %i.ak)
  %i.bx = fmul double %i.bc, -5.000000e-01
  %i.by = tail call double @llvm.fmuladd.f64(double %i.i, double %i.y, double %i.bx)
  %i.bz = fmul double %i.by, %i.bm
  %i.ca = fmul double %i.bz, 5.000000e-01
  %i.cb = fneg double %i.ak
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.y, double %i.ca)
  %i.cd = load ptr, ptr %1, align 8, !tbaa !16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !19 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.bw, i64 1
  %i.cj = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.d, i64 1
  %i.cl = fdiv <2 x double> %i.ci, %i.ck
  store <2 x double> %i.cl, ptr %i.cg, align 8, !tbaa !12
  %i.cm = fdiv double %i.cc, %i.f
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store double %i.cm, ptr %i.cn, align 8, !tbaa !12
  ret void
}

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @ressc(double %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = load double, ptr %4, align 8, !tbaa !26  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !30
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !29
  %i.h = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #12 ; 10 uses
  %i.i = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #12 ; 6 uses
  %i.j = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #12 ; 8 uses
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
  %i.ab = tail call double @sin(double noundef %i.k) #12 ; 2 uses
  %i.ac = tail call double @cos(double noundef %i.k) #12 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 48
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 56
  %8 = fmul double %i.a, %i.ab                    ; 3 uses
  %9 = fneg double %i.ac
  %10 = fmul double %i.a, %9                      ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %15 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %16 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %17 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %18 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %19 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %20 = insertelement <2 x double> poison, double %i.w, i64 0
  %21 = insertelement <2 x double> %20, double %i.ac, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %22 = tail call double @sin(double noundef %i.o) #12 ; 4 uses
  %23 = tail call double @cos(double noundef %i.o) #12 ; 3 uses
  %i.af = load double, ptr %4, align 8, !tbaa !26 ; 8 uses
  %24 = load double, ptr %6, align 8, !tbaa !33
  %i.ag = load double, ptr %7, align 8, !tbaa !34 ; 2 uses
  %i.ah = load ptr, ptr %1, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19 ; 6 uses
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load double, ptr %i.al, align 8, !tbaa !12 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load double, ptr %i.an, align 8, !tbaa !12 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !12 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.as = load double, ptr %i.ar, align 8, !tbaa !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.au = load double, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  %i.av = tail call double @sin(double noundef %i.ak) #12 ; 4 uses
  %i.aw = tail call double @cos(double noundef %i.ak) #12 ; 3 uses
  %i.ax = tail call double @sin(double noundef %i.ao) #12 ; 4 uses
  %i.ay = tail call double @cos(double noundef %i.ao) #12 ; 3 uses
  %i.az = fneg double %i.av
  %i.ba = insertelement <2 x double> poison, double %i.ay, i64 0 ; 2 uses
  %i.bb = insertelement <2 x double> %i.ba, double %i.av, i64 1
  %i.bc = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.ax, i64 1 ; 2 uses
  %i.be = fmul <2 x double> %i.bb, %i.bd
  %i.bf = shufflevector <2 x double> %i.bd, <2 x double> %i.ba, <2 x i32> <i32 1, i32 2>
  %i.bg = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bh, <2 x double> %i.be) ; 3 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.af, double %i.aw, double %i.ay)
  %i.bk = fneg double %i.bj                       ; 2 uses
  %i.bl = fmul double %i.am, %i.bk
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.am, double %i.am, double %i.bl)
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.af, double %i.af, double 1.000000e+00)
  %i.bo = fmul double %i.bn, 2.500000e-01
  %i.bp = fadd double %i.bo, %i.bm
  %i.bq = extractelement <2 x double> %i.bi, i64 1
  %i.br = fmul double %i.af, %i.bq
  %i.bs = fmul double %i.br, 5.000000e-01
  %i.bt = fadd double %i.bs, %i.bp
  %i.bu = tail call double @sqrt(double noundef %i.bt) #12 ; 3 uses
  %i.bv = fmul double %i.am, 2.000000e+00
  %i.bw = fmul double %i.as, %i.bk
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.as, double %i.bw)
  %i.by = fmul double %i.af, %i.av
  %i.bz = fmul double %i.aq, %i.by
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.au, double %i.bz)
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ca, double %i.bx)
  %i.cc = extractelement <2 x double> %i.bi, i64 0
  %i.cd = fmul double %i.af, %i.cc                ; 2 uses
  %i.ce = fsub double %i.au, %i.aq
  %i.cf = fmul double %i.ce, %i.cd
  %i.cg = fmul double %i.cf, 5.000000e-01
  %i.ch = fsub double %i.cb, %i.cg
  %i.ci = fmul double %i.bu, 2.000000e+00
  %i.cj = fdiv double %i.ch, %i.ci
  %i.ck = fsub double %i.bu, %24
  %i.cl = load <2 x double>, ptr %5, align 8, !tbaa !12 ; 2 uses
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> %i.bi, <2 x i32> <i32 1, i32 2>
  %i.cn = insertelement <2 x double> <double poison, double 5.000000e-01>, double %i.cj, i64 0
  %i.co = fmul <2 x double> %i.cm, %i.cn
  %i.cp = insertelement <2 x double> %i.cl, double %i.am, i64 1
  %i.cq = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.av, i64 1
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cr, <2 x double> %i.co) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = fdiv double %i.ct, %i.bu                ; 2 uses
  %i.cv = fneg double %i.cu                       ; 2 uses
  %i.cw = fmul double %i.af, %i.cv
  %i.cx = extractelement <2 x double> %i.cs, i64 1
  %i.cy = fmul double %i.cx, %i.cw
  %i.cz = fmul double %i.ay, 5.000000e-01
  %i.da = fsub double %i.cz, %i.am
  %i.db = fmul double %i.af, %i.aw
  %i.dc = fmul double %i.db, 5.000000e-01
  %i.dd = fadd double %i.dc, %i.da
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.dd, double %i.ag)
  %i.df = fmul double %i.cd, -5.000000e-01
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ax, double %i.df)
  %i.dh = fmul double %i.dg, %i.cv
  %i.di = fmul double %i.dh, 5.000000e-01
  %i.dj = fneg double %i.ag
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.ax, double %i.di)
  %i.dl = load double, ptr %i.i, align 8, !tbaa !12
  %i.dm = fmul double %i.cy, -5.000000e-01
  %i.dn = fneg double %i.de
  %i.do = fneg double %i.dk
  %i.dp = fsub double %i.m, %23
  %i.dq = insertelement <2 x double> poison, double %23, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.a, i64 1
  %i.ds = fneg <2 x double> %i.dr                 ; 4 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 0
  %25 = fneg double %22
  %i.du = extractelement <2 x double> %i.ds, i64 1
  %i.dv = load <2 x double>, ptr %i.p, align 8, !tbaa !12 ; 3 uses
  %i.dw = load double, ptr %i.q, align 8, !tbaa !12
  %i.dx = extractelement <2 x double> %i.dv, i64 0 ; 2 uses
  %i.dy = fsub double %i.dl, %i.dx
  %i.dz = tail call double @llvm.fmuladd.f64(double %8, double %i.y, double %i.dy)
  %i.ea = tail call double @llvm.fmuladd.f64(double %10, double %i.aa, double %i.dz)
  store double %i.ea, ptr %i.j, align 8, !tbaa !12
  %i.eb = load double, ptr %11, align 8, !tbaa !12
  %i.ec = fsub double %i.eb, %i.dw
  %i.ed = fadd double %i.y, %i.ec
  store double %i.ed, ptr %12, align 8, !tbaa !12
  %i.ee = load double, ptr %13, align 8, !tbaa !12
  %i.ef = fsub double %i.ee, %i.s
  %i.eg = tail call double @llvm.fmuladd.f64(double %22, double %i.y, double %i.ef)
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.aa, double %i.eg)
  store double %i.eh, ptr %14, align 8, !tbaa !12
  %i.ei = load double, ptr %15, align 8, !tbaa !12
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.c, double %i.ei, double %i.dm)
  %i.ek = tail call double @llvm.fmuladd.f64(double %8, double %i.u, double %i.ej)
  %i.el = tail call double @llvm.fmuladd.f64(double %10, double %i.w, double %i.ek)
  store double %i.el, ptr %16, align 8, !tbaa !12
  %i.em = load double, ptr %17, align 8, !tbaa !12
  %i.en = tail call double @llvm.fmuladd.f64(double %i.e, double %i.em, double %i.dn)
  %i.eo = fadd double %i.u, %i.en
  store double %i.eo, ptr %18, align 8, !tbaa !12
  %i.ep = load double, ptr %19, align 8, !tbaa !12
  %i.eq = tail call double @llvm.fmuladd.f64(double %i.g, double %i.ep, double %i.do)
  %i.er = insertelement <2 x double> poison, double %22, i64 0
  %i.es = insertelement <2 x double> %i.er, double %8, i64 1
  %i.et = shufflevector <2 x double> %i.dv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eu = insertelement <2 x double> %i.et, double %i.u, i64 0
  %i.ev = insertelement <2 x double> %i.dv, double %i.eq, i64 0
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.eu, <2 x double> %i.ev) ; 2 uses
  %i.ex = insertelement <2 x double> %i.ew, double %i.dp, i64 1
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %21, <2 x double> %i.ex)
  store <2 x double> %i.ey, ptr %i.ad, align 8, !tbaa !12
  %i.ez = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fa = insertelement <2 x double> %i.ez, double %22, i64 1
  %i.fb = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.fc = insertelement <2 x double> %i.fb, double %i.s, i64 1
  %i.fd = insertelement <2 x double> %i.ew, double %25, i64 0
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fa, <2 x double> %i.fc, <2 x double> %i.fd)
  store <2 x double> %i.fe, ptr %i.ae, align 8, !tbaa !12
  %i.ff = fmul double %i.ac, %i.du
  %i.fg = fneg double %i.s
  %i.fh = fmul double %23, %i.fg
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.dx, double %i.fh)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store double %i.fi, ptr %i.fj, align 8, !tbaa !12
  ret i32 0
}

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetId(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetSuppressAlg(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintHeader() unnamed_addr #4 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %puts2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef f0x3EB0C6F7A0B5ED8D, double noundef f0x3EB0C6F7A0B5ED8D) ; 0 uses
  %puts3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  %puts4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %puts5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintOutput(ptr noundef %0, double noundef nofpclass(nan inf nzero sub norm) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #12 ; 3 uses
  %i.e = call i32 @IDAGetLastOrder(ptr noundef %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.f = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.g = call i32 @IDAGetLastStep(ptr noundef %0, ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.h = load double, ptr %i.d, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load double, ptr %i.k, align 8, !tbaa !12
  %i.m = load i64, ptr %i.b, align 8, !tbaa !24
  %i.n = load i32, ptr %i.a, align 4, !tbaa !25
  %i.o = load double, ptr %i.c, align 8, !tbaa !12
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %1, double noundef %i.h, double noundef %i.j, double noundef %i.l, i64 noundef %i.m, i32 noundef %i.n, double noundef %i.o) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

declare i32 @IDASolve(ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintFinalStats(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.i = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.a) #12 ; 0 uses
  %i.j = call i32 @IDAGetNumResEvals(ptr noundef %0, ptr noundef nonnull %i.e) #12 ; 0 uses
  %i.k = call i32 @IDAGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.l = call i32 @IDAGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.b) #12 ; 0 uses
  %i.m = call i32 @IDAGetNumErrTestFails(ptr noundef %0, ptr noundef nonnull %i.g) #12 ; 0 uses
  %i.n = call i32 @IDAGetNumNonlinSolvConvFails(ptr noundef %0, ptr noundef nonnull %i.c) #12 ; 0 uses
  %i.o = call i32 @IDAGetNumStepSolveFails(ptr noundef %0, ptr noundef nonnull %i.h) #12 ; 0 uses
  %i.p = call i32 @IDAGetNumLinResEvals(ptr noundef %0, ptr noundef nonnull %i.f) #12 ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %i.q = load i64, ptr %i.a, align 8, !tbaa !24
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.q) ; 0 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !24
  %i.t = load i64, ptr %i.f, align 8, !tbaa !24
  %i.u = add nsw i64 %i.t, %i.s
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i64 noundef %i.u) ; 0 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !24
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %i.w) ; 0 uses
  %i.y = load i64, ptr %i.b, align 8, !tbaa !24
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %i.y) ; 0 uses
  %i.aa = load i64, ptr %i.g, align 8, !tbaa !24
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i64 noundef %i.aa) ; 0 uses
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !24
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %i.ac) ; 0 uses
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !24
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i64 noundef %i.ae) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @IDAFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @force(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !26  ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load double, ptr %i.c, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = load double, ptr %i.e, align 8, !tbaa !34 ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 6 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load double, ptr %i.k, align 8, !tbaa !12 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.p = load double, ptr %i.o, align 8, !tbaa !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.r = load double, ptr %i.q, align 8, !tbaa !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.t = load double, ptr %i.s, align 8, !tbaa !12 ; 2 uses
  %i.u = tail call double @sin(double noundef %i.j) #12 ; 4 uses
  %i.v = tail call double @cos(double noundef %i.j) #12 ; 3 uses
  %i.w = tail call double @sin(double noundef %i.n) #12 ; 4 uses
  %i.x = tail call double @cos(double noundef %i.n) #12 ; 3 uses
  %i.y = fneg double %i.u
  %i.z = insertelement <2 x double> poison, double %i.x, i64 0 ; 2 uses
  %i.aa = insertelement <2 x double> %i.z, double %i.u, i64 1
  %i.ab = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.w, i64 1 ; 2 uses
  %i.ad = fmul <2 x double> %i.aa, %i.ac
  %i.ae = shufflevector <2 x double> %i.ac, <2 x double> %i.z, <2 x i32> <i32 1, i32 2>
  %i.af = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ag, <2 x double> %i.ad) ; 3 uses
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.a, double %i.v, double %i.x)
  %i.aj = fneg double %i.ai                       ; 2 uses
  %i.ak = fmul double %i.l, %i.aj
  %i.al = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.a, double %i.a, double 1.000000e+00)
  %i.an = fmul double %i.am, 2.500000e-01
  %i.ao = fadd double %i.an, %i.al
  %i.ap = extractelement <2 x double> %i.ah, i64 1
  %i.aq = fmul double %i.a, %i.ap
  %i.ar = fmul double %i.aq, 5.000000e-01
  %i.as = fadd double %i.ar, %i.ao
  %i.at = tail call double @sqrt(double noundef %i.as) #12 ; 3 uses
  %i.au = fmul double %i.l, 2.000000e+00
  %i.av = fmul double %i.r, %i.aj
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.r, double %i.av)
  %i.ax = fmul double %i.a, %i.u
  %i.ay = fmul double %i.p, %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.ay)
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.l, double %i.az, double %i.aw)
  %i.bb = extractelement <2 x double> %i.ah, i64 0
  %i.bc = fmul double %i.a, %i.bb                 ; 2 uses
  %i.bd = fsub double %i.t, %i.p
  %i.be = fmul double %i.bd, %i.bc
end_hunk_0
