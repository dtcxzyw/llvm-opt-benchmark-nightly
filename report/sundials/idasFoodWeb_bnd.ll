Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idasFoodWeb_bnd?download=true
inline.NumInlined: 28
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@PrintFinalStats:bb.a
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %i.i = call i32 @IDAGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.a) #12 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.24, i32 noundef %i.i) #13 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.m = call i32 @IDAGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.d) #12 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %check_retval.exit10

bb.c:                                             ; preds = %check_retval.exit
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.29, i32 noundef %i.m) #13 ; 0 uses
  br label %check_retval.exit10

check_retval.exit10:                              ; preds = %check_retval.exit, %bb.c
  %i.q = call i32 @IDAGetNumResEvals(ptr noundef %0, ptr noundef nonnull %i.b) #12 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %check_retval.exit12

bb.d:                                             ; preds = %check_retval.exit10
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.30, i32 noundef %i.q) #13 ; 0 uses
  br label %check_retval.exit12

check_retval.exit12:                              ; preds = %check_retval.exit10, %bb.d
  %i.u = call i32 @IDAGetNumErrTestFails(ptr noundef %0, ptr noundef nonnull %i.g) #12 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.e, label %check_retval.exit14

bb.e:                                             ; preds = %check_retval.exit12
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.x = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.31, i32 noundef %i.u) #13 ; 0 uses
  br label %check_retval.exit14

check_retval.exit14:                              ; preds = %check_retval.exit12, %bb.e
  %i.y = call i32 @IDAGetNumNonlinSolvConvFails(ptr noundef %0, ptr noundef nonnull %i.e) #12 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.f, label %check_retval.exit16

bb.f:                                             ; preds = %check_retval.exit14
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.32, i32 noundef %i.y) #13 ; 0 uses
  br label %check_retval.exit16

check_retval.exit16:                              ; preds = %check_retval.exit14, %bb.f
  %i.ac = call i32 @IDAGetNumStepSolveFails(ptr noundef %0, ptr noundef nonnull %i.h) #12 ; 2 uses
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %check_retval.exit18

bb.g:                                             ; preds = %check_retval.exit16
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.af = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.33, i32 noundef %i.ac) #13 ; 0 uses
  br label %check_retval.exit18

check_retval.exit18:                              ; preds = %check_retval.exit16, %bb.g
  %i.ag = call i32 @IDAGetNumJacEvals(ptr noundef %0, ptr noundef nonnull %i.f) #12 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.h, label %check_retval.exit20

bb.h:                                             ; preds = %check_retval.exit18
  %i.ai = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ai, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.34, i32 noundef %i.ag) #13 ; 0 uses
  br label %check_retval.exit20

check_retval.exit20:                              ; preds = %check_retval.exit18, %bb.h
  %i.ak = call i32 @IDAGetNumLinResEvals(ptr noundef %0, ptr noundef nonnull %i.c) #12 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.i, label %check_retval.exit22

bb.i:                                             ; preds = %check_retval.exit20
  %i.am = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.an = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.am, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.35, i32 noundef %i.ak) #13 ; 0 uses
  br label %check_retval.exit22

check_retval.exit22:                              ; preds = %check_retval.exit20, %bb.i
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  %puts8 = call i32 @puts(ptr nonnull dereferenceable(1) @str.6) ; 0 uses
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !31
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %i.ao) ; 0 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !31
  %i.ar = load i64, ptr %i.c, align 8, !tbaa !31
  %i.as = add nsw i64 %i.ar, %i.aq
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.as) ; 0 uses
  %i.au = load i64, ptr %i.f, align 8, !tbaa !31
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.au) ; 0 uses
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !31
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, i64 noundef %i.aw) ; 0 uses
  %i.ay = load i64, ptr %i.g, align 8, !tbaa !31
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i64 noundef %i.ay) ; 0 uses
  %i.ba = load i64, ptr %i.e, align 8, !tbaa !31
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i64 noundef %i.ba) ; 0 uses
  %i.bc = load i64, ptr %i.h, align 8, !tbaa !31
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i64 noundef %i.bc) ; 0 uses
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

declare void @IDAFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @SUNMatDestroy(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyMat(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Fweb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 3 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !30   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.a
  %.05967 = phi i64 [ 0, %bb.a ], [ %i.ip, %.loopexit.peel.begin ] ; 5 uses
  %i.z = uitofp nneg i64 %.05967 to double
  %.not = icmp eq i64 %.05967, 19
  %i.aa = select i1 %.not, i64 -40, i64 40        ; 3 uses
  %.not61 = icmp eq i64 %.05967, 0
  %.neg = select i1 %.not61, i64 40, i64 -40      ; 3 uses
  %i.ab = mul nuw nsw i64 %.05967, 40             ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ab ; 9 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ab ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ab ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !22
  %i.ah = load double, ptr %i.o, align 8, !tbaa !22
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.ah, double 0.000000e+00)
  %i.aj = load double, ptr %i.af, align 8, !tbaa !22
  %i.ak = load double, ptr %i.p, align 8, !tbaa !22
  %i.al = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ak, double %i.ai) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.an = load <2 x double>, ptr %i.a, align 8, !tbaa !22
  %i.ao = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.z, i64 1
  %i.ap = fmul <2 x double> %i.an, %i.ao          ; 5 uses
  store double %i.al, ptr %i.ad, align 8, !tbaa !22
  %i.aq = load double, ptr %i.ac, align 8, !tbaa !22
  %i.ar = load double, ptr %i.r, align 8, !tbaa !22
  %i.as = load double, ptr %i.af, align 8, !tbaa !22
  %i.at = load double, ptr %i.s, align 8, !tbaa !22
  %i.au = extractelement <2 x double> %i.ap, i64 0
  %i.av = fmul ninf double %i.au, 5.000000e+01
  %i.aw = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.av, i64 1
  %i.ay = insertelement <2 x double> %i.ap, double %i.ar, i64 0
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ay, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %3 = extractelement <2 x double> %i.az, i64 0
  %4 = tail call double @llvm.fmuladd.f64(double %i.as, double %i.at, double %3) ; 2 uses
  store double %4, ptr %i.am, align 8, !tbaa !22
  %5 = fmul <2 x double> %i.ap, splat (double f0x402921FB54442D28) ; 2 uses
  %i.ba = extractelement <2 x double> %5, i64 0
  %i.bb = tail call double @sin(double noundef %i.ba) #12
  %6 = fmul double %i.bb, 1.000000e+03
  %7 = extractelement <2 x double> %5, i64 1      ; 3 uses
  %8 = tail call double @sin(double noundef %7) #12
  %i.bc = extractelement <2 x double> %i.az, i64 1
  %9 = tail call double @llvm.fmuladd.f64(double %6, double %8, double %i.bc) ; 2 uses
  %i.bd = load double, ptr %i.ac, align 8, !tbaa !22
  %i.be = load double, ptr %i.t, align 8, !tbaa !22
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double %9, double %i.al)
  %i.bg = fmul double %i.bd, %i.bf                ; 2 uses
  store double %i.bg, ptr %i.ad, align 8, !tbaa !22
  %i.bh = load double, ptr %i.af, align 8, !tbaa !22
  %i.bi = load double, ptr %i.u, align 8, !tbaa !22
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %9, double %4)
  %i.bk = fmul double %i.bh, %i.bj
  store double %i.bk, ptr %i.am, align 8, !tbaa !22
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %.neg ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.aa ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.bo = load double, ptr %i.ac, align 8, !tbaa !22 ; 4 uses
  %i.bp = load double, ptr %i.bl, align 8, !tbaa !22
  %i.bq = fsub double %i.bo, %i.bp
  %i.br = load double, ptr %i.bm, align 8, !tbaa !22
  %i.bs = fsub double %i.br, %i.bo
  %i.bt = load double, ptr %i.bn, align 8, !tbaa !22 ; 2 uses
  %i.bu = fsub double %i.bo, %i.bt
  %i.bv = fsub double %i.bt, %i.bo
  %i.bw = load double, ptr %i.v, align 8, !tbaa !22
  %i.bx = fsub double %i.bs, %i.bq
  %i.by = load double, ptr %i.w, align 8, !tbaa !22
  %i.bz = fsub double %i.bv, %i.bu
  %i.ca = fmul double %i.by, %i.bz
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bx, double %i.ca)
  %i.cc = fadd double %i.bg, %i.cb
  store double %i.cc, ptr %i.ae, align 8, !tbaa !22
  %i.cd = load double, ptr %i.af, align 8, !tbaa !22 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !22
  %i.cg = fsub double %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !22
  %i.cj = fsub double %i.ci, %i.cd
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !22 ; 2 uses
  %i.cm = fsub double %i.cd, %i.cl
  %i.cn = fsub double %i.cl, %i.cd
  %i.co = load double, ptr %i.x, align 8, !tbaa !22
  %i.cp = fsub double %i.cj, %i.cg
  %i.cq = load double, ptr %i.y, align 8, !tbaa !22
  %i.cr = fsub double %i.cn, %i.cm
  %i.cs = fmul double %i.cq, %i.cr
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cp, double %i.cs)
  %i.cu = load double, ptr %i.am, align 8, !tbaa !22
  %i.cv = fadd double %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store double %i.cv, ptr %i.cw, align 8, !tbaa !22
  br label %bb.b

bb.b:                                             ; preds = %.peel.next, %bb.b
  %.06066 = phi i64 [ 1, %.peel.next ], [ %i.fv, %bb.b ] ; 3 uses
  %i.cx = load double, ptr %i.a, align 8, !tbaa !25
  %i.cy = uitofp nneg i64 %.06066 to double
  %i.cz = fmul double %i.cx, %i.cy                ; 2 uses
  %i.da = shl nuw nsw i64 %.06066, 1
  %i.db = add nuw nsw i64 %i.da, %i.ab            ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.db ; 11 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.db ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.db ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 4 uses
  %i.dg = load double, ptr %i.dc, align 8, !tbaa !22
  %i.dh = load double, ptr %i.o, align 8, !tbaa !22
  %i.di = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dh, double 0.000000e+00)
  %i.dj = load double, ptr %i.df, align 8, !tbaa !22
  %i.dk = load double, ptr %i.p, align 8, !tbaa !22
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.dk, double %i.di) ; 2 uses
  store double %i.dl, ptr %i.dd, align 8, !tbaa !22
  %i.dm = load double, ptr %i.dc, align 8, !tbaa !22
  %i.dn = load double, ptr %i.r, align 8, !tbaa !22
  %i.do = load double, ptr %i.df, align 8, !tbaa !22
  %i.dp = load double, ptr %i.s, align 8, !tbaa !22
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.dr = fmul double %i.cz, 5.000000e+01
  %i.ds = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.dr, i64 1
  %i.du = insertelement <2 x double> %i.ap, double %i.dn, i64 0
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dt, <2 x double> %i.du, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %10 = extractelement <2 x double> %i.dv, i64 0
  %11 = tail call double @llvm.fmuladd.f64(double %i.do, double %i.dp, double %10) ; 2 uses
  store double %11, ptr %i.dq, align 8, !tbaa !22
  %12 = fmul double %i.cz, f0x402921FB54442D28
  %13 = tail call double @sin(double noundef %12) #12
  %14 = fmul double %13, 1.000000e+03
  %15 = tail call double @sin(double noundef %7) #12
  %i.dw = extractelement <2 x double> %i.dv, i64 1
  %16 = tail call double @llvm.fmuladd.f64(double %14, double %15, double %i.dw) ; 2 uses
  %i.dx = load double, ptr %i.dc, align 8, !tbaa !22
  %i.dy = load double, ptr %i.t, align 8, !tbaa !22
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dy, double %16, double %i.dl)
  %i.ea = fmul double %i.dx, %i.dz                ; 2 uses
  store double %i.ea, ptr %i.dd, align 8, !tbaa !22
  %i.eb = load double, ptr %i.df, align 8, !tbaa !22
  %i.ec = load double, ptr %i.u, align 8, !tbaa !22
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.ec, double %16, double %11)
  %i.ee = fmul double %i.eb, %i.ed
  store double %i.ee, ptr %i.dq, align 8, !tbaa !22
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.neg ; 2 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.aa ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.dc, i64 -16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.ej = load double, ptr %i.dc, align 8, !tbaa !22 ; 4 uses
  %i.ek = load double, ptr %i.ef, align 8, !tbaa !22
  %i.el = fsub double %i.ej, %i.ek
  %i.em = load double, ptr %i.eg, align 8, !tbaa !22
  %i.en = fsub double %i.em, %i.ej
  %i.eo = load double, ptr %i.eh, align 8, !tbaa !22
  %i.ep = fsub double %i.ej, %i.eo
  %i.eq = load double, ptr %i.ei, align 8, !tbaa !22
  %i.er = fsub double %i.eq, %i.ej
  %i.es = load double, ptr %i.v, align 8, !tbaa !22
  %i.et = fsub double %i.en, %i.el
  %i.eu = load double, ptr %i.w, align 8, !tbaa !22
  %i.ev = fsub double %i.er, %i.ep
  %i.ew = fmul double %i.eu, %i.ev
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.es, double %i.et, double %i.ew)
  %i.ey = fadd double %i.ea, %i.ex
  store double %i.ey, ptr %i.de, align 8, !tbaa !22
  %i.ez = load double, ptr %i.df, align 8, !tbaa !22 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !22
  %i.fc = fsub double %i.ez, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !22
  %i.ff = fsub double %i.fe, %i.ez
  %i.fg = getelementptr inbounds i8, ptr %i.dc, i64 -8
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !22
  %i.fi = fsub double %i.ez, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !22
  %i.fl = fsub double %i.fk, %i.ez
  %i.fm = load double, ptr %i.x, align 8, !tbaa !22
  %i.fn = fsub double %i.ff, %i.fc
  %i.fo = load double, ptr %i.y, align 8, !tbaa !22
  %i.fp = fsub double %i.fl, %i.fi
  %i.fq = fmul double %i.fo, %i.fp
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fn, double %i.fq)
  %i.fs = load double, ptr %i.dq, align 8, !tbaa !22
  %i.ft = fadd double %i.fs, %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store double %i.ft, ptr %i.fu, align 8, !tbaa !22
  %i.fv = add nuw nsw i64 %.06066, 1              ; 3 uses
  %exitcond.not = icmp eq i64 %i.fv, 19
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.b, !llvm.loop !40

.loopexit.peel.begin:                             ; preds = %bb.b
  %i.fw = load double, ptr %i.a, align 8, !tbaa !25
  %i.fx = uitofp nneg i64 %i.fv to double
  %i.fy = fmul double %i.fw, %i.fx                ; 2 uses
  %i.fz = add nuw nsw i64 %i.ab, 38               ; 3 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fz ; 9 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.fz ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.fz ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 4 uses
  %i.ge = load double, ptr %i.ga, align 8, !tbaa !22
  %i.gf = load double, ptr %i.o, align 8, !tbaa !22
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.gf, double 0.000000e+00)
  %i.gh = load double, ptr %i.gd, align 8, !tbaa !22
  %i.gi = load double, ptr %i.p, align 8, !tbaa !22
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.gi, double %i.gg) ; 2 uses
  store double %i.gj, ptr %i.gb, align 8, !tbaa !22
  %i.gk = load double, ptr %i.ga, align 8, !tbaa !22
  %i.gl = load double, ptr %i.r, align 8, !tbaa !22
  %i.gm = load double, ptr %i.gd, align 8, !tbaa !22
  %i.gn = load double, ptr %i.s, align 8, !tbaa !22
  %i.go = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 3 uses
  %i.gp = fmul double %i.fy, 5.000000e+01
  %i.gq = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gp, i64 1
  %i.gs = insertelement <2 x double> %i.ap, double %i.gl, i64 0
  %i.gt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gs, <2 x double> <double 0.000000e+00, double 1.000000e+00>) ; 2 uses
  %17 = extractelement <2 x double> %i.gt, i64 0
  %18 = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.gn, double %17) ; 2 uses
  store double %18, ptr %i.go, align 8, !tbaa !22
  %19 = fmul double %i.fy, f0x402921FB54442D28
  %20 = tail call double @sin(double noundef %19) #12
  %21 = fmul double %20, 1.000000e+03
  %22 = tail call double @sin(double noundef %7) #12
  %i.gu = extractelement <2 x double> %i.gt, i64 1
  %23 = tail call double @llvm.fmuladd.f64(double %21, double %22, double %i.gu) ; 2 uses
  %i.gv = load double, ptr %i.ga, align 8, !tbaa !22
  %i.gw = load double, ptr %i.t, align 8, !tbaa !22
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gw, double %23, double %i.gj)
  %i.gy = fmul double %i.gv, %i.gx                ; 2 uses
  store double %i.gy, ptr %i.gb, align 8, !tbaa !22
  %i.gz = load double, ptr %i.gd, align 8, !tbaa !22
  %i.ha = load double, ptr %i.u, align 8, !tbaa !22
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.ha, double %23, double %18)
  %i.hc = fmul double %i.gz, %i.hb
  store double %i.hc, ptr %i.go, align 8, !tbaa !22
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %.neg ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.ga, i64 %i.aa ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.ga, i64 -16
  %i.hg = load double, ptr %i.ga, align 8, !tbaa !22 ; 4 uses
  %i.hh = load double, ptr %i.hd, align 8, !tbaa !22
  %i.hi = fsub double %i.hg, %i.hh
  %i.hj = load double, ptr %i.he, align 8, !tbaa !22
  %i.hk = fsub double %i.hj, %i.hg
  %i.hl = load double, ptr %i.hf, align 8, !tbaa !22 ; 2 uses
  %i.hm = fsub double %i.hg, %i.hl
  %i.hn = fsub double %i.hl, %i.hg
  %i.ho = load double, ptr %i.v, align 8, !tbaa !22
  %i.hp = fsub double %i.hk, %i.hi
  %i.hq = load double, ptr %i.w, align 8, !tbaa !22
  %i.hr = fsub double %i.hn, %i.hm
  %i.hs = fmul double %i.hq, %i.hr
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.hp, double %i.hs)
  %i.hu = fadd double %i.gy, %i.ht
  store double %i.hu, ptr %i.gc, align 8, !tbaa !22
  %i.hv = load double, ptr %i.gd, align 8, !tbaa !22 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !22
  %i.hy = fsub double %i.hv, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !22
  %i.ib = fsub double %i.ia, %i.hv
  %i.ic = getelementptr inbounds i8, ptr %i.ga, i64 -8
  %i.id = load double, ptr %i.ic, align 8, !tbaa !22 ; 2 uses
  %i.ie = fsub double %i.hv, %i.id
  %i.if = fsub double %i.id, %i.hv
  %i.ig = load double, ptr %i.x, align 8, !tbaa !22
  %i.ih = fsub double %i.ib, %i.hy
  %i.ii = load double, ptr %i.y, align 8, !tbaa !22
  %i.ij = fsub double %i.if, %i.ie
  %i.ik = fmul double %i.ii, %i.ij
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.ih, double %i.ik)
  %i.im = load double, ptr %i.go, align 8, !tbaa !22
  %i.in = fadd double %i.im, %i.il
  %i.io = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  store double %i.in, ptr %i.io, align 8, !tbaa !22
  %i.ip = add nuw nsw i64 %.05967, 1              ; 2 uses
  %exitcond69.not = icmp eq i64 %i.ip, 20
  br i1 %exitcond69.not, label %bb.c, label %.peel.next

bb.c:                                             ; preds = %.loopexit.peel.begin
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

declare i32 @IDAGetLastOrder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetLastStep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumResEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumStepSolveFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumJacEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAGetNumLinResEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"double", !5, i64 0}
!15 = !{!"any p2 pointer", !9, i64 0}
!16 = !{!"p2 double", !15, i64 0}
!17 = !{!"p1 _ZTS17_generic_N_Vector", !9, i64 0}
!18 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !14, i64 40, !14, i64 48, !16, i64 56, !5, i64 64, !5, i64 80, !5, i64 96, !17, i64 112}
!19 = !{!18, !17, i64 112}
!20 = !{!18, !16, i64 56}
!21 = !{!18, !13, i64 16}
!22 = !{!14, !14, i64 0}
!23 = !{!"p1 double", !9, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!18, !14, i64 40}
!26 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!27 = !{!"_generic_N_Vector", !9, i64 0, !26, i64 8, !12, i64 16}
!28 = !{!27, !9, i64 0}
!29 = !{!"_N_VectorContent_Serial", !13, i64 0, !6, i64 8, !23, i64 16}
!30 = !{!29, !23, i64 16}
!31 = !{!13, !13, i64 0}
!32 = !{!12, !12, i64 0}
!33 = !{!18, !13, i64 24}
!34 = !{!18, !13, i64 32}
!35 = !{!18, !13, i64 8}
!36 = !{!18, !13, i64 0}
!37 = !{!9, !9, i64 0}
!38 = !{!18, !14, i64 48}
!39 = !{!6, !6, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_0
