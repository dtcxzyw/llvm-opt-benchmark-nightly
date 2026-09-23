Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsDiurnal_kry?download=true
inline.NumInlined: 31
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SUNContext_Create\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"N_VNew_Serial\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"CVodeCreate\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"CVodeSetUserData\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CVodeInit\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"CVodeSStolerances\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"SUNLinSol_SPGMR\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"CVodeSetLinearSolver\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"CVodeSetJacTimes\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"CVodeSetPreconditioner\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"CVode\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"CVodeGetNumSteps\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"CVodeGetLastOrder\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"CVodeGetLastStep\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"t = %.2e   no. steps = %ld   order = %d   stepsize = %.2e\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"c1 (bot.left/middle/top rt.) = %12.3e  %12.3e  %12.3e\0A\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"c2 (bot.left/middle/top rt.) = %12.3e  %12.3e  %12.3e\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"CVodeGetWorkSpace\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"CVodeGetNumRhsEvals\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"CVodeGetNumLinSolvSetups\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"CVodeGetNumErrTestFails\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"CVodeGetNumNonlinSolvIters\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"CVodeGetNumNonlinSolvConvFails\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"CVodeGetLinWorkSpace\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"CVodeGetNumLinIters\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"CVodeGetNumPrecEvals\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"CVodeGetNumPrecSolves\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"CVodeGetNumLinConvFails\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"CVodeGetNumLinRhsEvals\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"lenrw   = %5ld     leniw   = %5ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"lenrwLS = %5ld     leniwLS = %5ld\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"nst     = %5ld\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"nfe     = %5ld     nfeLS   = %5ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"nni     = %5ld     nli     = %5ld\0A\00", align 1
@.str.37 = private unnamed_addr constant [35 x i8] c"nsetups = %5ld     netf    = %5ld\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"npe     = %5ld     nps     = %5ld\0A\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"ncfn    = %5ld     ncfl    = %5ld\0A\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.40 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"\0ASUNDIALS_ERROR: %s() failed with retval = %d\0A\0A\00", align 1
@str = private unnamed_addr constant [49 x i8] c" \0A2-species diurnal advection-diffusion problem\0A\00", align 1
@str.1 = private unnamed_addr constant [22 x i8] c"\0AFinal Statistics.. \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = call i32 @SUNContext_Create(i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str, i32 noundef %i.d) #10 ; 0 uses
  br label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.i = call ptr @N_VNew_Serial(i64 noundef 200, ptr noundef %i.h) #9 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %check_retval.exit36, label %bb.c

check_retval.exit36:                              ; preds = %bb.b
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1) #10 ; 0 uses
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.m = call noalias dereferenceable_or_null(2456) ptr @malloc(i64 noundef 2456) #11 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 800
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1600
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i, %bb.c
  %indvars.iv.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.i, %.preheader.i ] ; 4 uses
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %i.m, i64 %indvars.iv.i ; 10 uses
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %indvars.iv.i ; 10 uses
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %indvars.iv.i ; 10 uses
  %i.s = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  store ptr %i.s, ptr %i.p, align 8, !tbaa !14
  %i.t = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  store ptr %i.t, ptr %i.q, align 8, !tbaa !14
  %i.u = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  store ptr %i.u, ptr %i.r, align 8, !tbaa !16
  %i.v = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.v, ptr %i.w, align 8, !tbaa !14
  %i.x = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.x, ptr %i.y, align 8, !tbaa !14
  %i.z = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !16
  %i.ab = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !14
  %i.ad = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !14
  %i.af = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !16
  %i.ah = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !14
  %i.aj = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !14
  %i.al = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.al, ptr %i.am, align 8, !tbaa !16
  %i.an = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !14
  %i.ap = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !14
  %i.ar = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !16
  %i.at = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.at, ptr %i.au, align 8, !tbaa !14
  %i.av = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !14
  %i.ax = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !16
  %i.az = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !14
  %i.bb = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !14
  %i.bd = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.be = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !16
  %i.bf = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !14
  %i.bh = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !14
  %i.bj = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !16
  %i.bl = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !14
  %i.bn = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !14
  %i.bp = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !16
  %i.br = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.bs = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !14
  %i.bt = call ptr @SUNDlsMat_newDenseMat(i64 noundef 2, i64 noundef 2) #9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !14
  %i.bv = call ptr @SUNDlsMat_newIndexArray(i64 noundef 2) #9
  %i.bw = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 10
  br i1 %exitcond.not.i, label %check_retval.exit38, label %.preheader.i

check_retval.exit38:                              ; preds = %.preheader.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 2408
  store <2 x double> <double f0x3F13104B57CF96AF, double f0x4001C71C71C71C72>, ptr %i.bx, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 2424
  store <2 x double> <double f0x4001C71C71C71C72, double f0x3EAB2DD8D6457178>, ptr %i.by, align 8, !tbaa !18
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 2440
  store <2 x double> <double 2.250000e-04, double 2.025000e-09>, ptr %i.bz, align 8, !tbaa !18
  %i.ca = call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.i) #9 ; 60 uses
  store <4 x double> <double 2.500000e+05, double 2.500000e+11, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.ca, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  store <2 x double> <double f0x41168D57EB160BA1, double f0x425581E3AC6E122F>, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  store <4 x double> <double f0x411B50AB74F03291, double f0x425A0CBAC39161F9, double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B>, ptr %i.cc, align 8, !tbaa !18
  %0 = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store <4 x double> <double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B, double f0x411B50AB74F03291, double f0x425A0CBAC39161F9>, ptr %0, align 8, !tbaa !18
  %1 = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  store <2 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %1, align 8, !tbaa !18
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double 2.500000e+05, double 2.500000e+11>, ptr %i.cd, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 160
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC>, ptr %i.ce, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  store <2 x double> <double f0x411A126930D354BA, double f0x4258DD36D9544A79>, ptr %i.cf, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 208
  store <4 x double> <double f0x411F940AC5A86538, double f0x425E1D8B15E84C27, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.cg, align 8, !tbaa !18
  %2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 240
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411F940AC5A86538, double f0x425E1D8B15E84C27>, ptr %2, align 8, !tbaa !18
  %3 = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  store <2 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %3, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 288
  store <4 x double> <double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.ch, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 320
  store <4 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E, double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.ci, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 352
  store <2 x double> <double f0x4120AA6E6854DDC0, double f0x425FC99265EF1E94>, ptr %i.cj, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 368
  store <4 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794, double f0x41264681EF7A8A41, double f0x42653E55C2867902>, ptr %i.ck, align 8, !tbaa !18
  %4 = getelementptr inbounds nuw i8, ptr %i.ca, i64 400
  store <4 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867902, double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %4, align 8, !tbaa !18
  %5 = getelementptr inbounds nuw i8, ptr %i.ca, i64 432
  store <2 x double> <double f0x4120AA6E6854DDBF, double f0x425FC99265EF1E92>, ptr %5, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 448
  store <4 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78, double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.cl, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 480
  store <4 x double> <double f0x411B50AB74F03290, double f0x425A0CBAC39161F9, double f0x411F940AC5A86537, double f0x425E1D8B15E84C27>, ptr %i.cm, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 512
  store <2 x double> <double f0x41242F7FAE1226DA, double f0x4263401C5FDDC795>, ptr %i.cn, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 528
  store <4 x double> <double f0x412872DEFECA5981, double f0x426750ECB234B1C3, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %i.co, align 8, !tbaa !18
  %6 = getelementptr inbounds nuw i8, ptr %i.ca, i64 560
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412872DEFECA5981, double f0x426750ECB234B1C3>, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds nuw i8, ptr %i.ca, i64 592
  store <2 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %7, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 608
  store <4 x double> <double f0x411F940AC5A86537, double f0x425E1D8B15E84C27, double f0x411B50AB74F03290, double f0x425A0CBAC39161F9>, ptr %i.cp, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 640
  store <4 x double> <double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.cq, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 672
  store <2 x double> <double f0x41264681EF7A8A42, double f0x42653E55C2867902>, ptr %i.cr, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 688
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412DC5F732040A80, double f0x426C64DF726EE294>, ptr %i.cs, align 8, !tbaa !18
  %8 = getelementptr inbounds nuw i8, ptr %i.ca, i64 720
  store <4 x double> <double f0x412DC5F732040A80, double f0x426C64DF726EE294, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %8, align 8, !tbaa !18
  %9 = getelementptr inbounds nuw i8, ptr %i.ca, i64 752
  store <2 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867901>, ptr %9, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 768
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A>, ptr %i.ct, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 800
  store <4 x double> <double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.cu, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 832
  store <2 x double> <double f0x41264681EF7A8A42, double f0x42653E55C2867902>, ptr %i.cv, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 848
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412DC5F732040A80, double f0x426C64DF726EE294>, ptr %i.cw, align 8, !tbaa !18
  %10 = getelementptr inbounds nuw i8, ptr %i.ca, i64 880
  store <4 x double> <double f0x412DC5F732040A80, double f0x426C64DF726EE294, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds nuw i8, ptr %i.ca, i64 912
  store <2 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867901>, ptr %11, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 928
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A>, ptr %i.cx, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 960
  store <4 x double> <double f0x411B50AB74F03290, double f0x425A0CBAC39161F9, double f0x411F940AC5A86537, double f0x425E1D8B15E84C27>, ptr %i.cy, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 992
  store <2 x double> <double f0x41242F7FAE1226DA, double f0x4263401C5FDDC795>, ptr %i.cz, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 1008
  store <4 x double> <double f0x412872DEFECA5981, double f0x426750ECB234B1C3, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %i.da, align 8, !tbaa !18
  %12 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1040
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412872DEFECA5981, double f0x426750ECB234B1C3>, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1072
  store <2 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %13, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 1088
  store <4 x double> <double f0x411F940AC5A86537, double f0x425E1D8B15E84C27, double f0x411B50AB74F03290, double f0x425A0CBAC39161F9>, ptr %i.db, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1120
  store <4 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E, double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.dc, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 1152
  store <2 x double> <double f0x4120AA6E6854DDC0, double f0x425FC99265EF1E94>, ptr %i.dd, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 1168
  store <4 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794, double f0x41264681EF7A8A41, double f0x42653E55C2867902>, ptr %i.de, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1200
  store <4 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867902, double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %14, align 8, !tbaa !18
  %15 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1232
  store <2 x double> <double f0x4120AA6E6854DDBF, double f0x425FC99265EF1E92>, ptr %15, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 1248
  store <4 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78, double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.df, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1280
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC>, ptr %i.dg, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 1312
  store <2 x double> <double f0x411A126930D354BA, double f0x4258DD36D9544A79>, ptr %i.dh, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 1328
  store <4 x double> <double f0x411F940AC5A86538, double f0x425E1D8B15E84C27, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.di, align 8, !tbaa !18
  %16 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1360
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411F940AC5A86538, double f0x425E1D8B15E84C27>, ptr %16, align 8, !tbaa !18
  %17 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1392
  store <2 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %17, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 1408
  store <4 x double> <double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.dj, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 1440
  store <4 x double> <double 2.500000e+05, double 2.500000e+11, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.dk, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 1472
  store <2 x double> <double f0x41168D57EB160BA1, double f0x425581E3AC6E122F>, ptr %i.dl, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 1488
  store <4 x double> <double f0x411B50AB74F03291, double f0x425A0CBAC39161F9, double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B>, ptr %i.dm, align 8, !tbaa !18
  %18 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1520
  store <4 x double> <double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B, double f0x411B50AB74F03291, double f0x425A0CBAC39161F9>, ptr %18, align 8, !tbaa !18
  %19 = getelementptr inbounds nuw i8, ptr %i.ca, i64 1552
  store <2 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %19, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 1568
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double 2.500000e+05, double 2.500000e+11>, ptr %i.dn, align 8, !tbaa !18
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.dp = call ptr @CVodeCreate(i32 noundef 2, ptr noundef %i.do) #9 ; 11 uses
  store ptr %i.dp, ptr %i.c, align 8, !tbaa !32
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %check_retval.exit43, label %bb.d

check_retval.exit43:                              ; preds = %check_retval.exit38
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %check_retval.exit38
  %i.dt = call i32 @CVodeSetUserData(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.m) #9 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %check_retval.exit45, label %bb.e

check_retval.exit45:                              ; preds = %bb.d
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.4, i32 noundef %i.dt) #10 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.dx = call i32 @CVodeInit(ptr noundef nonnull %i.dp, ptr noundef nonnull @f, double noundef 0.000000e+00, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %check_retval.exit47, label %bb.f

check_retval.exit47:                              ; preds = %bb.e
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.5, i32 noundef %i.dx) #10 ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.eb = call i32 @CVodeSStolerances(ptr noundef nonnull %i.dp, double noundef 1.000000e-05, double noundef 1.000000e-03) #9 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %check_retval.exit49, label %bb.g

check_retval.exit49:                              ; preds = %bb.f
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.6, i32 noundef %i.eb) #10 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.eg = call ptr @SUNLinSol_SPGMR(ptr noundef nonnull %i.i, i32 noundef 1, i32 noundef 0, ptr noundef %i.ef) #9 ; 3 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %check_retval.exit51, label %bb.h

check_retval.exit51:                              ; preds = %bb.g
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ej = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ek = call i32 @CVodeSetLinearSolver(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.eg, ptr noundef null) #9 ; 2 uses
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %check_retval.exit53, label %bb.i

check_retval.exit53:                              ; preds = %bb.h
  %i.em = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.en = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.em, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8, i32 noundef %i.ek) #10 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.eo = call i32 @CVodeSetJacTimes(ptr noundef nonnull %i.dp, ptr noundef null, ptr noundef nonnull @jtv) #9 ; 2 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %check_retval.exit55, label %bb.j

check_retval.exit55:                              ; preds = %bb.i
  %i.eq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.er = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eq, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.9, i32 noundef %i.eo) #10 ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.es = call i32 @CVodeSetPreconditioner(ptr noundef nonnull %i.dp, ptr noundef nonnull @Precond, ptr noundef nonnull @PSolve) #9 ; 2 uses
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %check_retval.exit57, label %bb.k

check_retval.exit57:                              ; preds = %bb.j
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ev = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.10, i32 noundef %i.es) #10 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.m
  %.090 = phi i32 [ 1, %bb.k ], [ %i.fb, %bb.m ]
  %.02289 = phi double [ 7.200000e+03, %bb.k ], [ %i.fc, %bb.m ] ; 2 uses
  %i.ew = call i32 @CVode(ptr noundef nonnull %i.dp, double noundef %.02289, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i32 noundef 1) #9 ; 2 uses
  %i.ex = load double, ptr %i.b, align 8, !tbaa !18
  call fastcc void @PrintOutput(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.i, double noundef %i.ex)
  %i.ey = icmp slt i32 %i.ew, 0
  br i1 %i.ey, label %check_retval.exit59, label %bb.m

check_retval.exit59:                              ; preds = %bb.l
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.12, i32 noundef %i.ew) #10 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.fb = add nuw nsw i32 %.090, 1                ; 2 uses
  %i.fc = fadd double %.02289, 7.200000e+03
  %exitcond.not = icmp eq i32 %i.fb, 13
  br i1 %exitcond.not, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.m, %check_retval.exit59
  call fastcc void @PrintFinalStats(ptr noundef nonnull %i.dp)
  call void @N_VDestroy(ptr noundef nonnull %i.i) #9
  call fastcc void @FreeUserData(ptr noundef nonnull %i.m)
  call void @CVodeFree(ptr noundef nonnull %i.c) #9
  %i.fd = call i32 @SUNLinSolFree(ptr noundef nonnull %i.eg) #9 ; 0 uses
  %i.fe = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %check_retval.exit57, %check_retval.exit55, %check_retval.exit53, %check_retval.exit51, %check_retval.exit49, %check_retval.exit47, %check_retval.exit45, %check_retval.exit43, %check_retval.exit36, %check_retval.exit, %.loopexit
  %.023 = phi i32 [ 0, %.loopexit ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit36 ], [ 1, %check_retval.exit57 ], [ 1, %check_retval.exit43 ], [ 1, %check_retval.exit45 ], [ 1, %check_retval.exit47 ], [ 1, %check_retval.exit49 ], [ 1, %check_retval.exit51 ], [ 1, %check_retval.exit53 ], [ 1, %check_retval.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.023
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @f(double noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef captures(none) initializes((2400, 2408)) %3) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 15 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %2) #9 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 2408
  %i.d = load double, ptr %i.c, align 8, !tbaa !20
  %i.e = fmul double %0, %i.d
  %i.f = tail call double @sin(double noundef %i.e) #9 ; 2 uses
  %i.g = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = insertelement <2 x double> poison, double %i.f, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fdiv <2 x double> <double -2.262000e+01, double f0xC01E676C8B439581>, %i.i ; 2 uses
  %i.k = extractelement <2 x double> %i.j, i64 0
  %i.l = tail call double @exp(double noundef %i.k) #9
  %i.m = extractelement <2 x double> %i.j, i64 1
  %i.n = tail call double @exp(double noundef %i.m) #9
  %i.o = fmul double %i.l, 3.700000e+16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ] ; 4 uses
  %.0122 = phi double [ %i.o, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 2400
  store double %.sink, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 2424
  %i.r = load double, ptr %i.q, align 8, !tbaa !22 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 2448
  %i.t = load double, ptr %i.s, align 8, !tbaa !23 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2432
  %i.v = load double, ptr %i.u, align 8, !tbaa !24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2440
  %i.x = load double, ptr %i.w, align 8, !tbaa !25 ; 6 uses
  %i.y = insertelement <2 x double> poison, double %.0122, i64 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.c
  %indvars.iv128 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next129, %.loopexit.peel.begin ] ; 9 uses
  %i.aa = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.ab = uitofp nneg i32 %i.aa to double
  %i.ac = fadd double %i.ab, -5.000000e-01
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.r, double 3.000000e+01) ; 2 uses
  %i.ae = fadd double %i.r, %i.ad
  %i.af = fmul double %i.ad, 2.000000e-01
  %i.ag = tail call double @exp(double noundef %i.af) #9
  %i.ah = fmul double %i.ae, 2.000000e-01
  %i.ai = tail call double @exp(double noundef %i.ah) #9
  %i.aj = icmp eq i64 %indvars.iv128, 0
  %i.ak = select i1 %i.aj, i64 1, i64 4294967295
  %i.al = icmp eq i64 %indvars.iv128, 9
  %i.am = select i1 %i.al, i64 4294967295, i64 1
  %i.an = mul nuw nsw i64 %indvars.iv128, 20      ; 11 uses
  %i.ao = add nuw i64 %i.ak, %indvars.iv128
  %i.ap = add nuw i64 %i.am, %indvars.iv128
  %i.aq = or disjoint i64 %i.an, 1                ; 2 uses
  %sext = mul i64 %i.ap, 85899345920
  %i.ar = ashr exact i64 %sext, 32                ; 2 uses
  %sext132 = mul i64 %i.ao, 85899345920
end_hunk_0
