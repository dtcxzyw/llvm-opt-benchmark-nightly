Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/kinKrylovDemo_ls?download=true
inline.NumInlined: 36
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [14 x i8] c"N_VNew_Serial\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"KINCreate\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"KINInit\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"KINSetUserData\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"KINSetConstraints\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"KINSetFuncNormTol\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"KINSetScaledStepTol\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"SUNLinSol_SPGMR\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"KINSetLinearSolver\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"SUNLinSol_SPGMRSetMaxRestarts\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"SUNLinSol_SPBCGS\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"SUNLinSol_SPTFQMR\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"SUNLinSol_SPFGMR\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"KINSetPreconditioner\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"KINSol\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Mesh dimensions = %d X %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"Number of species = %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"Total system size = %d\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"Flag globalstrategy = %d (0 = None, 1 = Linesearch)\0A\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"Linear solver is SPGMR with maxl = %d, maxlrst = %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"Linear solver is SPBCGS with maxl = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"Linear solver is SPTFQMR with maxl = %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"Linear solver is SPFGMR with maxl = %d, maxlrst = %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"Tolerance parameters:  fnormtol = %g   scsteptol = %g\0A\00", align 1
@.str.40 = private unnamed_addr constant [42 x i8] c"At all mesh points:  %g %g %g   %g %g %g\0A\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"\0AAt bottom left:\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c" %g\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"\0A\0AAt top right:\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"KINGetNumNonlinSolvIters\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"KINGetNumFuncEvals\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"KINGetNumLinIters\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"KINGetNumPrecEvals\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"KINGetNumPrecSolves\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"KINGetNumLinConvFails\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"KINGetNumLinFuncEvals\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"nni    = %5ld    nli   = %5ld\0A\00", align 1
@.str.55 = private unnamed_addr constant [31 x i8] c"nfe    = %5ld    nfeSG = %5ld\0A\00", align 1
@.str.56 = private unnamed_addr constant [48 x i8] c"nps    = %5ld    npe   = %5ld     ncfl  = %5ld\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.58 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"\0ASUNDIALS_ERROR: %s() failed with flag = %d\0A\0A\00", align 1
@str = private unnamed_addr constant [13 x i8] c" \0A| SPFGMR |\00", align 1
@str.2 = private unnamed_addr constant [14 x i8] c" \0A| SPTFQMR |\00", align 1
@str.3 = private unnamed_addr constant [11 x i8] c" ---------\00", align 1
@str.4 = private unnamed_addr constant [13 x i8] c" \0A| SPBCGS |\00", align 1
@str.5 = private unnamed_addr constant [10 x i8] c" --------\00", align 1
@str.6 = private unnamed_addr constant [12 x i8] c" \0A| SPGMR |\00", align 1
@str.7 = private unnamed_addr constant [9 x i8] c" -------\00", align 1
@str.8 = private unnamed_addr constant [47 x i8] c"\0A\0AComputed equilibrium species concentrations:\00", align 1
@str.9 = private unnamed_addr constant [57 x i8] c"\0APredator-prey test problem --  KINSol (serial version)\0A\00", align 1
@str.10 = private unnamed_addr constant [60 x i8] c"Preconditioning uses interaction-only block-diagonal matrix\00", align 1
@str.11 = private unnamed_addr constant [50 x i8] c"Positivity constraints imposed on all components \00", align 1
@str.12 = private unnamed_addr constant [34 x i8] c"\0AInitial profile of concentration\00", align 1
@str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.14 = private unnamed_addr constant [20 x i8] c"Final Statistics.. \00", align 1
@str.15 = private unnamed_addr constant [60 x i8] c"\0A=========================================================\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 16 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !37
  %i.c = call i32 @SUNContext_Create(i32 noundef 0, ptr noundef nonnull %i.b) #10 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.d = call noalias dereferenceable_or_null(504) ptr @malloc(i64 noundef 504) #11 ; 62 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.f = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  store ptr %i.f, ptr %i.d, align 8, !tbaa !13
  %i.g = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  store ptr %i.g, ptr %i.e, align 8, !tbaa !15
  %i.h = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8, !tbaa !13
  %i.j = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store ptr %i.j, ptr %i.k, align 8, !tbaa !15
  %i.l = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !13
  %i.n = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store ptr %i.n, ptr %i.o, align 8, !tbaa !15
  %i.p = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.p, ptr %i.q, align 8, !tbaa !13
  %i.r = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr %i.r, ptr %i.s, align 8, !tbaa !15
  %i.t = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.t, ptr %i.u, align 8, !tbaa !13
  %i.v = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  store ptr %i.v, ptr %i.w, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %i.z = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  store ptr %i.z, ptr %i.x, align 8, !tbaa !13
  %i.aa = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !15
  %i.ab = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !13
  %i.ad = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !15
  %i.af = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !13
  %i.ah = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !15
  %i.aj = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !13
  %i.al = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  store ptr %i.al, ptr %i.am, align 8, !tbaa !15
  %i.an = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !13
  %i.ap = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 272
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  %i.at = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !13
  %i.au = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  store ptr %i.au, ptr %i.as, align 8, !tbaa !15
  %i.av = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !13
  %i.ax = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !15
  %i.az = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !13
  %i.bb = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !15
  %i.bd = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !13
  %i.bf = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !15
  %i.bh = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !13
  %i.bj = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %i.bn = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !13
  %i.bo = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !15
  %i.bp = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !13
  %i.br = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !15
  %i.bt = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !13
  %i.bv = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !15
  %i.bx = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !13
  %i.bz = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !15
  %i.cb = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !13
  %i.cd = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.ch = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !13
  %i.ci = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !15
  %i.cj = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !13
  %i.cl = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 368
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !15
  %i.cn = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !13
  %i.cp = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !15
  %i.cr = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !13
  %i.ct = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !15
  %i.cv = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !13
  %i.cx = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 392
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !15
  %i.cz = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #10 ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !20
  %i.db = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #11 ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !21
  %i.dd = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #11 ; 7 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !22
  %i.df = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #11 ; 7 uses
  %0 = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store ptr %i.df, ptr %0, align 8, !tbaa !23
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  store i64 21474836485, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  store i64 12884901894, ptr %i.dh, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store <2 x double> splat (double 1.000000e+00), ptr %i.di, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  store <2 x double> splat (double 2.500000e-01), ptr %i.dj, align 8, !tbaa !24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  store <2 x double> <double f0x3CB0000000000000, double f0x3E50000000000000>, ptr %i.dk, align 8, !tbaa !24
  %i.dl = load ptr, ptr %i.cz, align 8, !tbaa !25 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !25 ; 6 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store double -5.000000e-07, ptr %i.dm, align 8, !tbaa !24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store double 1.000000e+04, ptr %i.do, align 8, !tbaa !24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store double -5.000000e-07, ptr %i.dq, align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store double 1.000000e+04, ptr %i.dr, align 8, !tbaa !24
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store double 0.000000e+00, ptr %i.ds, align 8, !tbaa !24
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  store double 0.000000e+00, ptr %i.dt, align 8, !tbaa !24
  store double -5.000000e-07, ptr %i.du, align 8, !tbaa !24
  store double 1.000000e+04, ptr %i.dv, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.dx, align 8, !tbaa !24
  store double -1.000000e+00, ptr %i.dl, align 8, !tbaa !24
  store double -1.000000e+00, ptr %i.dp, align 8, !tbaa !24
  store double 1.000000e+00, ptr %i.db, align 8, !tbaa !24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store double -1.000000e+00, ptr %i.dy, align 8, !tbaa !24
  store double 1.600000e+01, ptr %i.dd, align 8, !tbaa !24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store double 8.000000e+00, ptr %i.dz, align 8, !tbaa !24
  store double 1.600000e+01, ptr %i.df, align 8, !tbaa !24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store double 8.000000e+00, ptr %i.ea, align 8, !tbaa !24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !25 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !25 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store double -5.000000e-07, ptr %i.ed, align 8, !tbaa !24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store double 1.000000e+04, ptr %i.ef, align 8, !tbaa !24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store double 0.000000e+00, ptr %i.ec, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.eg, align 8, !tbaa !24
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store double -5.000000e-07, ptr %i.eh, align 8, !tbaa !24
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  store double 1.000000e+04, ptr %i.ei, align 8, !tbaa !24
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 40
  store double -5.000000e-07, ptr %i.ek, align 8, !tbaa !24
  store double 1.000000e+04, ptr %i.el, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.em, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.en, align 8, !tbaa !24
  store double -1.000000e+00, ptr %i.ej, align 8, !tbaa !24
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  store double -1.000000e+00, ptr %i.eo, align 8, !tbaa !24
  %i.ep = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store double 1.000000e+00, ptr %i.ep, align 8, !tbaa !24
  %i.eq = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  store double -1.000000e+00, ptr %i.eq, align 8, !tbaa !24
  %i.er = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store double 1.600000e+01, ptr %i.er, align 8, !tbaa !24
  %i.es = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store double 8.000000e+00, ptr %i.es, align 8, !tbaa !24
  %i.et = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store double 1.600000e+01, ptr %i.et, align 8, !tbaa !24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  store double 8.000000e+00, ptr %i.eu, align 8, !tbaa !24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !25 ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !25 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store double -5.000000e-07, ptr %i.ex, align 8, !tbaa !24
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store double 1.000000e+04, ptr %i.ez, align 8, !tbaa !24
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store double 0.000000e+00, ptr %i.ew, align 8, !tbaa !24
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  store double 0.000000e+00, ptr %i.fa, align 8, !tbaa !24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store double -5.000000e-07, ptr %i.fb, align 8, !tbaa !24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store double 1.000000e+04, ptr %i.fc, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.fd, align 8, !tbaa !24
  store double 0.000000e+00, ptr %i.fe, align 8, !tbaa !24
  store double -5.000000e-07, ptr %i.ff, align 8, !tbaa !24
  store double 1.000000e+04, ptr %i.fg, align 8, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store double -1.000000e+00, ptr %i.fh, align 8, !tbaa !24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  store double -1.000000e+00, ptr %i.fi, align 8, !tbaa !24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store double 1.000000e+00, ptr %i.fj, align 8, !tbaa !24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store double -1.000000e+00, ptr %i.fk, align 8, !tbaa !24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store double 1.600000e+01, ptr %i.fl, align 8, !tbaa !24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store double 8.000000e+00, ptr %i.fm, align 8, !tbaa !24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  store double 1.600000e+01, ptr %i.fn, align 8, !tbaa !24
  %i.fo = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store double 8.000000e+00, ptr %i.fo, align 8, !tbaa !24
  %i.fp = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.fq = call ptr @N_VNew_Serial(i64 noundef 150, ptr noundef %i.fp) #10 ; 10 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %check_flag.exit92, label %bb.b

check_flag.exit92:                                ; preds = %bb.a
  %i.fs = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ft = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fs, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.fu = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.fv = call ptr @N_VNew_Serial(i64 noundef 150, ptr noundef %i.fu) #10 ; 5 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %check_flag.exit94, label %bb.c

check_flag.exit94:                                ; preds = %bb.b
  %i.fx = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.fy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fx, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.fz = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.ga = call ptr @N_VNew_Serial(i64 noundef 150, ptr noundef %i.fz) #10 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !28
  %i.gc = icmp eq ptr %i.ga, null
  br i1 %i.gc, label %check_flag.exit96, label %bb.d

check_flag.exit96:                                ; preds = %bb.c
  %i.gd = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ge = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gd, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.z

bb.d:                                             ; preds = %bb.c
  %i.gf = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.gg = call ptr @N_VNew_Serial(i64 noundef 150, ptr noundef %i.gf) #10 ; 4 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %check_flag.exit98, label %bb.e

check_flag.exit98:                                ; preds = %bb.d
  %i.gi = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.gj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gi, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.z

bb.e:                                             ; preds = %bb.d
  call void @N_VConst(double noundef 2.000000e+00, ptr noundef nonnull %i.gg) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.x
  %.059281 = phi i32 [ 0, %bb.e ], [ %i.ms, %bb.x ] ; 4 uses
  %i.gk = load ptr, ptr %i.fq, align 8, !tbaa !31
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !34 ; 5 uses
  %i.gn = load ptr, ptr %i.fv, align 8, !tbaa !31
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !34 ; 5 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.f
  %indvars.iv.i = phi i64 [ 0, %bb.f ], [ %indvars.iv.next.i, %.preheader.i ] ; 2 uses
  %i.gq = mul nuw nsw i64 %indvars.iv.i, 30       ; 6 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gq ; 6 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.gq ; 6 uses
  store double 1.000000e+00, ptr %i.gr, align 8, !tbaa !24
  store double 1.000000e+00, ptr %i.gs, align 8, !tbaa !24
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store double 1.000000e+00, ptr %i.gt, align 8, !tbaa !24
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store double 1.000000e+00, ptr %i.gu, align 8, !tbaa !24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store double 1.000000e+00, ptr %i.gv, align 8, !tbaa !24
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store double 1.000000e+00, ptr %i.gw, align 8, !tbaa !24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  store double 3.000000e+04, ptr %i.gx, align 8, !tbaa !24
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  store double 1.000000e-05, ptr %i.gy, align 8, !tbaa !24
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  store double 3.000000e+04, ptr %i.gz, align 8, !tbaa !24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  store double 1.000000e-05, ptr %i.ha, align 8, !tbaa !24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  store double 3.000000e+04, ptr %i.hb, align 8, !tbaa !24
end_hunk_0
begin_hunk_1_@func:bb.a
  %i.hu = tail call double @llvm.fmuladd.f64(double %i.ht, double %i.hl, double %i.ex)
  %i.hv = fmul double %i.hs, %i.hu
  store double %i.hv, ptr %i.ey, align 8, !tbaa !24
  %i.hw = load double, ptr %i.cs, align 8, !tbaa !24
  %i.hx = load double, ptr %i.bk, align 8, !tbaa !24
  %i.hy = tail call double @llvm.fmuladd.f64(double %i.hx, double %i.hl, double %i.fq)
  %i.hz = fmul double %i.hw, %i.hy
  store double %i.hz, ptr %i.fr, align 8, !tbaa !24
  %i.ia = load double, ptr %i.ct, align 8, !tbaa !24
  %i.ib = load double, ptr %i.bl, align 8, !tbaa !24
  %i.ic = tail call double @llvm.fmuladd.f64(double %i.ib, double %i.hl, double %i.gj)
  %i.id = fmul double %i.ia, %i.ic
  store double %i.id, ptr %i.gk, align 8, !tbaa !24
  %i.ie = load double, ptr %i.cu, align 8, !tbaa !24
  %i.if = load double, ptr %i.bm, align 8, !tbaa !24
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.if, double %i.hl, double %i.hi)
  %i.ih = fmul double %i.ie, %i.ig
  store double %i.ih, ptr %i.gp, align 8, !tbaa !24
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.neg ; 6 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ce ; 6 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.neg67 ; 6 uses
  %i.il = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.ck ; 6 uses
  %i.im = load double, ptr %i.cn, align 8, !tbaa !24 ; 4 uses
  %i.in = load double, ptr %i.ii, align 8, !tbaa !24
  %i.io = fsub double %i.im, %i.in
  %i.ip = load double, ptr %i.ij, align 8, !tbaa !24
  %i.iq = fsub double %i.ip, %i.im
  %i.ir = load double, ptr %i.ik, align 8, !tbaa !24
  %i.is = fsub double %i.im, %i.ir
  %i.it = load double, ptr %i.il, align 8, !tbaa !24
  %i.iu = fsub double %i.it, %i.im
  %i.iv = load double, ptr %i.bo, align 8, !tbaa !24
  %i.iw = fsub double %i.iq, %i.io
  %i.ix = load double, ptr %i.bq, align 8, !tbaa !24
  %i.iy = fsub double %i.iu, %i.is
  %i.iz = fmul double %i.iy, %i.ix
  %i.ja = tail call double @llvm.fmuladd.f64(double %i.iv, double %i.iw, double %i.iz)
  %i.jb = fadd double %i.hn, %i.ja
  store double %i.jb, ptr %i.cp, align 8, !tbaa !24
  %i.jc = load double, ptr %i.cq, align 8, !tbaa !24 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.je = load double, ptr %i.jd, align 8, !tbaa !24
  %i.jf = fsub double %i.jc, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !24
  %i.ji = fsub double %i.jh, %i.jc
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !24
  %i.jl = fsub double %i.jc, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !24
  %i.jo = fsub double %i.jn, %i.jc
  %i.jp = load double, ptr %i.br, align 8, !tbaa !24
  %i.jq = fsub double %i.ji, %i.jf
  %i.jr = load double, ptr %i.bs, align 8, !tbaa !24
  %i.js = fsub double %i.jo, %i.jl
  %i.jt = fmul double %i.js, %i.jr
  %i.ju = tail call double @llvm.fmuladd.f64(double %i.jp, double %i.jq, double %i.jt)
  %i.jv = load double, ptr %i.ef, align 8, !tbaa !24
  %i.jw = fadd double %i.jv, %i.ju
  %i.jx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store double %i.jw, ptr %i.jx, align 8, !tbaa !24
  %i.jy = load double, ptr %i.cr, align 8, !tbaa !24 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !24
  %i.kb = fsub double %i.jy, %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !24
  %i.ke = fsub double %i.kd, %i.jy
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !24
  %i.kh = fsub double %i.jy, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !24
  %i.kk = fsub double %i.kj, %i.jy
  %i.kl = load double, ptr %i.bt, align 8, !tbaa !24
  %i.km = fsub double %i.ke, %i.kb
  %i.kn = load double, ptr %i.bu, align 8, !tbaa !24
  %i.ko = fsub double %i.kk, %i.kh
  %i.kp = fmul double %i.ko, %i.kn
  %i.kq = tail call double @llvm.fmuladd.f64(double %i.kl, double %i.km, double %i.kp)
  %i.kr = load double, ptr %i.ey, align 8, !tbaa !24
  %i.ks = fadd double %i.kr, %i.kq
  %i.kt = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store double %i.ks, ptr %i.kt, align 8, !tbaa !24
  %i.ku = load double, ptr %i.cs, align 8, !tbaa !24 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !24
  %i.kx = fsub double %i.ku, %i.kw
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.kz = load double, ptr %i.ky, align 8, !tbaa !24
  %i.la = fsub double %i.kz, %i.ku
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !24
  %i.ld = fsub double %i.ku, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.lf = load double, ptr %i.le, align 8, !tbaa !24
  %i.lg = fsub double %i.lf, %i.ku
  %i.lh = load double, ptr %i.bv, align 8, !tbaa !24
  %i.li = fsub double %i.la, %i.kx
  %i.lj = load double, ptr %i.bw, align 8, !tbaa !24
  %i.lk = fsub double %i.lg, %i.ld
  %i.ll = fmul double %i.lk, %i.lj
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.li, double %i.ll)
  %i.ln = load double, ptr %i.fr, align 8, !tbaa !24
  %i.lo = fadd double %i.ln, %i.lm
  %i.lp = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  store double %i.lo, ptr %i.lp, align 8, !tbaa !24
  %i.lq = load double, ptr %i.ct, align 8, !tbaa !24 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !24
  %i.lt = fsub double %i.lq, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !24
  %i.lw = fsub double %i.lv, %i.lq
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.ly = load double, ptr %i.lx, align 8, !tbaa !24
  %i.lz = fsub double %i.lq, %i.ly
  %i.ma = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !24
  %i.mc = fsub double %i.mb, %i.lq
  %i.md = load double, ptr %i.bx, align 8, !tbaa !24
  %i.me = fsub double %i.lw, %i.lt
  %i.mf = load double, ptr %i.by, align 8, !tbaa !24
  %i.mg = fsub double %i.mc, %i.lz
  %i.mh = fmul double %i.mg, %i.mf
  %i.mi = tail call double @llvm.fmuladd.f64(double %i.md, double %i.me, double %i.mh)
  %i.mj = load double, ptr %i.gk, align 8, !tbaa !24
  %i.mk = fadd double %i.mj, %i.mi
  %i.ml = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store double %i.mk, ptr %i.ml, align 8, !tbaa !24
  %i.mm = load double, ptr %i.cu, align 8, !tbaa !24 ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ii, i64 40
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !24
  %i.mp = fsub double %i.mm, %i.mo
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ij, i64 40
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !24
  %i.ms = fsub double %i.mr, %i.mm
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ik, i64 40
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !24
  %i.mv = fsub double %i.mm, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %i.il, i64 40
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !24
  %i.my = fsub double %i.mx, %i.mm
  %i.mz = load double, ptr %i.bz, align 8, !tbaa !24
  %i.na = fsub double %i.ms, %i.mp
  %i.nb = load double, ptr %i.ca, align 8, !tbaa !24
  %i.nc = fsub double %i.my, %i.mv
  %i.nd = fmul double %i.nc, %i.nb
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.mz, double %i.na, double %i.nd)
  %i.nf = load double, ptr %i.gp, align 8, !tbaa !24
  %i.ng = fadd double %i.nf, %i.ne
  %i.nh = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store double %i.ng, ptr %i.nh, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next74, 5
  br i1 %exitcond76.not, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

declare i32 @KINSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINSetConstraints(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINSetFuncNormTol(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @KINSetScaledStepTol(ptr noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSol_SPGMRSetMaxRestarts(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPBCGS(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPTFQMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPFGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @PrecSetupBD(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 456
  %i.b = load double, ptr %i.a, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 464
  %i.d = load double, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.f = load double, ptr %i.e, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 480
  %i.h = load double, ptr %i.g, align 8, !tbaa !40
  %i.i = tail call double @N_VWL2Norm(ptr noundef %2, ptr noundef %3) #10
  %i.j = fmul double %i.f, 1.000000e+03
  %i.k = fmul double %i.j, %i.i
  %i.l = fmul double %i.k, 1.500000e+02           ; 2 uses
  %i.m = fcmp oeq double %i.l, 0.000000e+00
  %spec.store.select = select i1 %i.m, double 1.000000e+00, double %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 416
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 400
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 408
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 200
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv90 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next91, %bb.g ] ; 5 uses
  %i.r = trunc nuw nsw i64 %indvars.iv90 to i32
  %i.s = uitofp nneg i32 %i.r to double
  %i.t = fmul double %i.d, %i.s
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv90
  %i.u = mul nuw nsw i64 %indvars.iv90, 30
  %invariant.gep79 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv90
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next87, 5
  br i1 %exitcond89.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv86 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next87, %bb.c ] ; 5 uses
  %i.v = trunc nuw nsw i64 %indvars.iv86 to i32
  %i.w = uitofp nneg i32 %i.v to double
  %i.x = fmul double %i.b, %i.w
  %gep = getelementptr inbounds nuw [40 x i8], ptr %invariant.gep, i64 %indvars.iv86
  %i.y = load ptr, ptr %gep, align 8, !tbaa !13   ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = mul nuw nsw i64 %indvars.iv86, 6
  %i.ad = add nuw nsw i64 %i.ac, %i.u             ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ad ; 6 uses
  %i.af = load ptr, ptr %1, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ad
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ad ; 6 uses
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !20  ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !25 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !25 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !25 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !25 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !25 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.by = tail call double @llvm.fmuladd.f64(double %i.x, double %i.t, double 1.000000e+00) ; 2 uses
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !21  ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ci = insertelement <2 x double> poison, double %i.by, i64 1 ; 2 uses
  %i.cj = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv ; 3 uses
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !24 ; 3 uses
  %i.cn = tail call double @llvm.fabs.f64(double %i.cm)
  %i.co = fmul double %i.h, %i.cn                 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !24
  %i.cr = fdiv double %spec.store.select, %i.cq   ; 2 uses
  %i.cs = fcmp ogt double %i.co, %i.cr
  %. = select i1 %i.cs, double %i.co, double %i.cr ; 2 uses
  %i.ct = fadd double %i.cm, %.
  store double %i.ct, ptr %i.cl, align 8, !tbaa !24
  %i.cu = fdiv double 1.000000e+00, %.            ; 6 uses
  %i.cv = load double, ptr %i.bn, align 8, !tbaa !24
  %i.cw = load double, ptr %i.bo, align 8, !tbaa !24
  %i.cx = load double, ptr %i.bp, align 8, !tbaa !24
  %i.cy = load double, ptr %i.bq, align 8, !tbaa !24
  %i.cz = load double, ptr %i.br, align 8, !tbaa !24
  %i.da = load double, ptr %i.bs, align 8, !tbaa !24
  %i.db = load double, ptr %i.bw, align 8, !tbaa !24
  %i.dc = load double, ptr %i.bx, align 8, !tbaa !24
  %i.dd = load double, ptr %i.bz, align 8, !tbaa !24
  %i.de = load double, ptr %i.at, align 8, !tbaa !24
  %i.df = load <4 x double>, ptr %i.ae, align 8, !tbaa !24 ; 8 uses
  %i.dg = load double, ptr %i.aq, align 8, !tbaa !24 ; 4 uses
  %i.dh = load double, ptr %i.ap, align 8, !tbaa !24 ; 5 uses
  %i.di = extractelement <4 x double> %i.df, i64 0 ; 3 uses
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double %i.de, double 0.000000e+00)
  %i.dk = load double, ptr %i.au, align 8, !tbaa !24
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dk, double %i.dj)
  %i.dm = load <2 x double>, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %i.dn = load <2 x double>, ptr %i.ar, align 8, !tbaa !24 ; 5 uses
  %i.do = load double, ptr %i.as, align 8, !tbaa !24 ; 4 uses
  %i.dp = load <2 x double>, ptr %i.aw, align 8, !tbaa !24 ; 2 uses
  %i.dq = extractelement <4 x double> %i.df, i64 2 ; 2 uses
  %i.dr = extractelement <2 x double> %i.dn, i64 0 ; 2 uses
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.di, double %i.cv, double 0.000000e+00)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.cw, double %i.ds)
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.cx, double %i.dt)
  %i.dv = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.cy, double %i.du)
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.cz, double %i.dv)
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.do, double %i.da, double %i.dw)
  %i.dy = load <2 x double>, ptr %i.bu, align 8, !tbaa !24 ; 2 uses
  %i.dz = shufflevector <4 x double> %i.df, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ea = shufflevector <2 x double> %i.dy, <2 x double> %i.dm, <2 x i32> <i32 0, i32 2>
  %i.eb = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.dl, i64 1
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.ea, <2 x double> %i.eb)
  %i.ed = shufflevector <4 x double> %i.df, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ee = shufflevector <2 x double> %i.dy, <2 x double> %i.dm, <2 x i32> <i32 1, i32 3>
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.ec)
  %i.eg = load <2 x double>, ptr %i.bv, align 8, !tbaa !24 ; 2 uses
  %i.eh = shufflevector <2 x double> %i.dn, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ei = shufflevector <4 x double> %i.df, <4 x double> %i.eh, <2 x i32> <i32 2, i32 4>
  %i.ej = shufflevector <2 x double> %i.eg, <2 x double> %i.dp, <2 x i32> <i32 0, i32 2>
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.ej, <2 x double> %i.ef)
  %i.el = shufflevector <4 x double> %i.df, <4 x double> %i.eh, <2 x i32> <i32 3, i32 5>
  %i.em = shufflevector <2 x double> %i.eg, <2 x double> %i.dp, <2 x i32> <i32 1, i32 3>
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.em, <2 x double> %i.ek)
  %i.eo = insertelement <2 x double> %i.dn, double %i.dd, i64 1
  %i.ep = insertelement <2 x double> %i.ci, double %i.db, i64 0
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ep, <2 x double> %i.en) ; 2 uses
  %i.er = load double, ptr %i.ca, align 8, !tbaa !24
  %i.es = load double, ptr %i.ay, align 8, !tbaa !24
  %i.et = load double, ptr %i.az, align 8, !tbaa !24
  %i.eu = load double, ptr %i.ba, align 8, !tbaa !24
  %i.ev = load double, ptr %i.bb, align 8, !tbaa !24
  %i.ew = load double, ptr %i.bc, align 8, !tbaa !24
  %i.ex = load double, ptr %i.bd, align 8, !tbaa !24
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.di, double %i.es, double 0.000000e+00)
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.et, double %i.ey)
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.eu, double %i.ez)
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.ev, double %i.fa)
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.ew, double %i.fb)
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.do, double %i.ex, double %i.fc)
  %i.fe = insertelement <2 x double> poison, double %i.do, i64 0 ; 2 uses
  %i.ff = insertelement <2 x double> %i.fe, double %i.er, i64 1
  %i.fg = insertelement <2 x double> %i.ci, double %i.dc, i64 0
  %i.fh = insertelement <2 x double> %i.eq, double %i.fd, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ff, <2 x double> %i.fg, <2 x double> %i.fh) ; 2 uses
  %i.fj = insertelement <2 x double> %i.dz, double %i.dh, i64 1
  %i.fk = shufflevector <2 x double> %i.eq, <2 x double> %i.fi, <2 x i32> <i32 1, i32 3>
  %i.fl = fmul <2 x double> %i.fj, %i.fk          ; 2 uses
  %i.fm = load <2 x double>, ptr %i.bf, align 8, !tbaa !24 ; 2 uses
  %i.fn = load <2 x double>, ptr %i.bg, align 8, !tbaa !24 ; 2 uses
  %i.fo = load <2 x double>, ptr %i.bh, align 8, !tbaa !24 ; 2 uses
  %i.fp = load <2 x double>, ptr %i.bj, align 8, !tbaa !24 ; 2 uses
  %i.fq = load <2 x double>, ptr %i.bk, align 8, !tbaa !24 ; 2 uses
  %i.fr = load <2 x double>, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.fs = shufflevector <4 x double> %i.df, <4 x double> poison, <2 x i32> zeroinitializer
  %i.ft = shufflevector <2 x double> %i.fm, <2 x double> %i.fp, <2 x i32> <i32 0, i32 2>
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.ft, <2 x double> zeroinitializer)
  %i.fv = insertelement <2 x double> poison, double %i.dh, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = shufflevector <2 x double> %i.fm, <2 x double> %i.fp, <2 x i32> <i32 1, i32 3>
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fx, <2 x double> %i.fu)
  %i.fz = shufflevector <4 x double> %i.df, <4 x double> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.ga = shufflevector <2 x double> %i.fn, <2 x double> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.ga, <2 x double> %i.fy)
  %i.gc = insertelement <2 x double> poison, double %i.dg, i64 0
end_hunk_1
begin_hunk_2_@PrecSolveBD:.preheader
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 912
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 384
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !15
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.gf, i64 noundef 6, ptr noundef %i.gh, ptr noundef nonnull %i.gd) #10
  %i.gi = load ptr, ptr %4, align 8, !tbaa !31
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !34
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1152
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !13
  %i.go = getelementptr inbounds nuw i8, ptr %5, i64 392
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !15
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.gn, i64 noundef 6, ptr noundef %i.gp, ptr noundef nonnull %i.gl) #10
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintHeader(i32 noundef %0, i32 noundef range(i32 -2147483648, 4) %1) unnamed_addr #5 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 5, i32 noundef 5) ; 0 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef 6) ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef 150) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef 0) ; 0 uses
  switch i32 %1, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef %0, i32 noundef 2) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %0) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %0) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %0, i32 noundef 2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %puts9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, double noundef f0x3E7AD7F29ABCAF48, double noundef 1.000000e-13) ; 0 uses
  %puts11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 3.000000e+04, double noundef 3.000000e+04, double noundef 3.000000e+04) ; 0 uses
  ret void
}

declare i32 @KINSol(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @PrintOutput(ptr nofree noundef readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 6 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41) ; 0 uses
  %putchar17 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.e = load double, ptr %i.c, align 8, !tbaa !24
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %i.e) ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre) ; 0 uses
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre25 = load double, ptr %.phi.trans.insert24, align 8, !tbaa !24
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre25) ; 0 uses
  %.phi.trans.insert27 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.pre28 = load double, ptr %.phi.trans.insert27, align 8, !tbaa !24
  %i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre28) ; 0 uses
  %.phi.trans.insert30 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.pre31 = load double, ptr %.phi.trans.insert30, align 8, !tbaa !24
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre31) ; 0 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.pre34 = load double, ptr %.phi.trans.insert33, align 8, !tbaa !24
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre34) ; 0 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1152
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.q = load double, ptr %i.o, align 8, !tbaa !24
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %i.q) ; 0 uses
  %.phi.trans.insert37 = getelementptr inbounds nuw i8, ptr %i.n, i64 1160
  %.pre38 = load double, ptr %.phi.trans.insert37, align 8, !tbaa !24
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre38) ; 0 uses
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %i.n, i64 1168
  %.pre41 = load double, ptr %.phi.trans.insert40, align 8, !tbaa !24
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre41) ; 0 uses
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %i.n, i64 1176
  %.pre44 = load double, ptr %.phi.trans.insert43, align 8, !tbaa !24
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre44) ; 0 uses
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %i.n, i64 1184
  %.pre47 = load double, ptr %.phi.trans.insert46, align 8, !tbaa !24
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre47) ; 0 uses
  %.phi.trans.insert49 = getelementptr inbounds nuw i8, ptr %i.n, i64 1192
  %.pre50 = load double, ptr %.phi.trans.insert49, align 8, !tbaa !24
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, double noundef %.pre50) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintFinalStats(ptr noundef %0, i32 noundef range(i32 -2147483648, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.h = call i32 @KINGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %check_flag.exit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.k = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.46, i32 noundef %i.h) #12 ; 0 uses
  br label %check_flag.exit

check_flag.exit:                                  ; preds = %bb.a, %bb.b
  %i.l = call i32 @KINGetNumFuncEvals(ptr noundef %0, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %check_flag.exit9

bb.c:                                             ; preds = %check_flag.exit
  %i.n = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.o = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.47, i32 noundef %i.l) #12 ; 0 uses
  br label %check_flag.exit9

check_flag.exit9:                                 ; preds = %check_flag.exit, %bb.c
  %i.p = call i32 @KINGetNumLinIters(ptr noundef %0, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %check_flag.exit11

bb.d:                                             ; preds = %check_flag.exit9
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.s = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.48, i32 noundef %i.p) #12 ; 0 uses
  br label %check_flag.exit11

check_flag.exit11:                                ; preds = %check_flag.exit9, %bb.d
  %i.t = call i32 @KINGetNumPrecEvals(ptr noundef %0, ptr noundef nonnull %i.d) #10 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.e, label %check_flag.exit13

bb.e:                                             ; preds = %check_flag.exit11
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.49, i32 noundef %i.t) #12 ; 0 uses
  br label %check_flag.exit13

check_flag.exit13:                                ; preds = %check_flag.exit11, %bb.e
  %i.x = call i32 @KINGetNumPrecSolves(ptr noundef %0, ptr noundef nonnull %i.e) #10 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.f, label %check_flag.exit15

bb.f:                                             ; preds = %check_flag.exit13
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.aa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.50, i32 noundef %i.x) #12 ; 0 uses
  br label %check_flag.exit15

check_flag.exit15:                                ; preds = %check_flag.exit13, %bb.f
  %i.ab = call i32 @KINGetNumLinConvFails(ptr noundef %0, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %check_flag.exit17

bb.g:                                             ; preds = %check_flag.exit15
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.51, i32 noundef %i.ab) #12 ; 0 uses
  br label %check_flag.exit17

check_flag.exit17:                                ; preds = %check_flag.exit15, %bb.g
  %i.af = call i32 @KINGetNumLinFuncEvals(ptr noundef %0, ptr noundef nonnull %i.g) #10 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %check_flag.exit19

bb.h:                                             ; preds = %check_flag.exit17
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.52, i32 noundef %i.af) #12 ; 0 uses
  br label %check_flag.exit19

check_flag.exit19:                                ; preds = %check_flag.exit17, %bb.h
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.14) ; 0 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !41
  %i.ak = load i64, ptr %i.c, align 8, !tbaa !41
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i64 noundef %i.aj, i64 noundef %i.ak) ; 0 uses
  %i.am = load i64, ptr %i.b, align 8, !tbaa !41
  %i.an = load i64, ptr %i.g, align 8, !tbaa !41
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i64 noundef %i.am, i64 noundef %i.an) ; 0 uses
  %i.ap = load i64, ptr %i.e, align 8, !tbaa !41
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !41
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !41
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i64 noundef %i.ap, i64 noundef %i.aq, i64 noundef %i.ar) ; 0 uses
  %i.at = icmp slt i32 %1, 3
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %check_flag.exit19
  %puts7 = call i32 @puts(ptr nonnull dereferenceable(1) @str.15) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %check_flag.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @KINFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @FreeUserData(ptr noundef captures(none) %0) unnamed_addr #0 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load ptr, ptr %0, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.b) #10
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.c) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.e) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.g) #10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.i) #10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.k) #10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.m) #10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.o) #10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.q) #10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.s) #10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.v) #10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.w) #10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.y) #10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.aa) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ac) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ae) #10
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ag) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ai) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ak) #10
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.am) #10
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ap) #10
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.aq) #10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.as) #10
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.au) #10
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.aw) #10
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ay) #10
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ba) #10
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bc) #10
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.be) #10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bg) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bj) #10
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bk) #10
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bm) #10
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bo) #10
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bq) #10
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bs) #10
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bu) #10
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bw) #10
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.by) #10
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ca) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.cd) #10
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ce) #10
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.cg) #10
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ci) #10
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ck) #10
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.cm) #10
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.co) #10
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.cq) #10
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !13
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.cs) #10
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.cu) #10
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !20
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.cw) #10
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.cy) #10
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.da) #10
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.dc) #10
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !28
  tail call void @N_VDestroy(ptr noundef %i.de) #10
  tail call void @free(ptr noundef %0) #10
  ret void
}

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare double @N_VWL2Norm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare i64 @SUNDlsMat_denseGETRF(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_denseGETRS(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare ptr @SUNDlsMat_newDenseMat(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDlsMat_newIndexArray(i64 noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyMat(ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyArray(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare i32 @KINGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINGetNumFuncEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINGetNumLinIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINGetNumPrecEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINGetNumPrecSolves(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINGetNumLinConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @KINGetNumLinFuncEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!11 = !{!"any p2 pointer", !9, i64 0}
!12 = !{!"p2 double", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 long", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 double", !9, i64 0}
!17 = !{!"p1 _ZTS17_generic_N_Vector", !9, i64 0}
!18 = !{!"double", !5, i64 0}
!19 = !{!"", !5, i64 0, !5, i64 200, !12, i64 400, !16, i64 408, !17, i64 416, !16, i64 424, !16, i64 432, !18, i64 440, !18, i64 448, !18, i64 456, !18, i64 464, !18, i64 472, !18, i64 480, !6, i64 488, !6, i64 492, !6, i64 496, !6, i64 500}
!20 = !{!19, !12, i64 400}
!21 = !{!19, !16, i64 408}
!22 = !{!19, !16, i64 424}
!23 = !{!19, !16, i64 432}
!24 = !{!18, !18, i64 0}
!25 = !{!16, !16, i64 0}
!26 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!19, !17, i64 416}
!29 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!30 = !{!"_generic_N_Vector", !9, i64 0, !29, i64 8, !10, i64 16}
!31 = !{!30, !9, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"_N_VectorContent_Serial", !32, i64 0, !6, i64 8, !16, i64 16}
!34 = !{!33, !16, i64 16}
!35 = !{!19, !18, i64 456}
!36 = !{!19, !18, i64 464}
!37 = !{!10, !10, i64 0}
!38 = !{!9, !9, i64 0}
!39 = !{!19, !18, i64 472}
!40 = !{!19, !18, i64 480}
!41 = !{!32, !32, i64 0}
end_hunk_2
