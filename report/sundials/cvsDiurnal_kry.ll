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
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !30
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
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  store <4 x double> <double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B, double f0x411B50AB74F03291, double f0x425A0CBAC39161F9>, ptr %i.cd, align 8, !tbaa !18
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 112
  store <2 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.ce, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double 2.500000e+05, double 2.500000e+11>, ptr %i.cf, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 160
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC>, ptr %i.cg, align 8, !tbaa !18
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  store <2 x double> <double f0x411A126930D354BA, double f0x4258DD36D9544A79>, ptr %i.ch, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 208
  store <4 x double> <double f0x411F940AC5A86538, double f0x425E1D8B15E84C27, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.ci, align 8, !tbaa !18
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 240
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411F940AC5A86538, double f0x425E1D8B15E84C27>, ptr %i.cj, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  store <2 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.ck, align 8, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ca, i64 288
  store <4 x double> <double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.cl, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 320
  store <4 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E, double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.cm, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 352
  store <2 x double> <double f0x4120AA6E6854DDC0, double f0x425FC99265EF1E94>, ptr %i.cn, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 368
  store <4 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794, double f0x41264681EF7A8A41, double f0x42653E55C2867902>, ptr %i.co, align 8, !tbaa !18
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 400
  store <4 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867902, double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %i.cp, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 432
  store <2 x double> <double f0x4120AA6E6854DDBF, double f0x425FC99265EF1E92>, ptr %i.cq, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 448
  store <4 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78, double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.cr, align 8, !tbaa !18
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ca, i64 480
  store <4 x double> <double f0x411B50AB74F03290, double f0x425A0CBAC39161F9, double f0x411F940AC5A86537, double f0x425E1D8B15E84C27>, ptr %i.cs, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ca, i64 512
  store <2 x double> <double f0x41242F7FAE1226DA, double f0x4263401C5FDDC795>, ptr %i.ct, align 8, !tbaa !18
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ca, i64 528
  store <4 x double> <double f0x412872DEFECA5981, double f0x426750ECB234B1C3, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %i.cu, align 8, !tbaa !18
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ca, i64 560
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412872DEFECA5981, double f0x426750ECB234B1C3>, ptr %i.cv, align 8, !tbaa !18
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ca, i64 592
  store <2 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %i.cw, align 8, !tbaa !18
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ca, i64 608
  store <4 x double> <double f0x411F940AC5A86537, double f0x425E1D8B15E84C27, double f0x411B50AB74F03290, double f0x425A0CBAC39161F9>, ptr %i.cx, align 8, !tbaa !18
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ca, i64 640
  store <4 x double> <double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.cy, align 8, !tbaa !18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 672
  store <2 x double> <double f0x41264681EF7A8A42, double f0x42653E55C2867902>, ptr %i.cz, align 8, !tbaa !18
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 688
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412DC5F732040A80, double f0x426C64DF726EE294>, ptr %i.da, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 720
  store <4 x double> <double f0x412DC5F732040A80, double f0x426C64DF726EE294, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %i.db, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 752
  store <2 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867901>, ptr %i.dc, align 8, !tbaa !18
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ca, i64 768
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A>, ptr %i.dd, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 800
  store <4 x double> <double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.de, align 8, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 832
  store <2 x double> <double f0x41264681EF7A8A42, double f0x42653E55C2867902>, ptr %i.df, align 8, !tbaa !18
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 848
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412DC5F732040A80, double f0x426C64DF726EE294>, ptr %i.dg, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ca, i64 880
  store <4 x double> <double f0x412DC5F732040A80, double f0x426C64DF726EE294, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %i.dh, align 8, !tbaa !18
  %i.di = getelementptr inbounds nuw i8, ptr %i.ca, i64 912
  store <2 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867901>, ptr %i.di, align 8, !tbaa !18
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ca, i64 928
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411E24A50EC9B9B0, double f0x425CBF2A794E595A>, ptr %i.dj, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ca, i64 960
  store <4 x double> <double f0x411B50AB74F03290, double f0x425A0CBAC39161F9, double f0x411F940AC5A86537, double f0x425E1D8B15E84C27>, ptr %i.dk, align 8, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ca, i64 992
  store <2 x double> <double f0x41242F7FAE1226DA, double f0x4263401C5FDDC795>, ptr %i.dl, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 1008
  store <4 x double> <double f0x412872DEFECA5981, double f0x426750ECB234B1C3, double f0x412AFADF96B7B795, double f0x4269BAE863184CD0>, ptr %i.dm, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 1040
  store <4 x double> <double f0x412AFADF96B7B795, double f0x4269BAE863184CD0, double f0x412872DEFECA5981, double f0x426750ECB234B1C3>, ptr %i.dn, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %i.ca, i64 1072
  store <2 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %i.do, align 8, !tbaa !18
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ca, i64 1088
  store <4 x double> <double f0x411F940AC5A86537, double f0x425E1D8B15E84C27, double f0x411B50AB74F03290, double f0x425A0CBAC39161F9>, ptr %i.dp, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ca, i64 1120
  store <4 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E, double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.dq, align 8, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ca, i64 1152
  store <2 x double> <double f0x4120AA6E6854DDC0, double f0x425FC99265EF1E94>, ptr %i.dr, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ca, i64 1168
  store <4 x double> <double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794, double f0x41264681EF7A8A41, double f0x42653E55C2867902>, ptr %i.ds, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ca, i64 1200
  store <4 x double> <double f0x41264681EF7A8A41, double f0x42653E55C2867902, double f0x41242F7FAE1226D9, double f0x4263401C5FDDC794>, ptr %i.dt, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 1232
  store <2 x double> <double f0x4120AA6E6854DDBF, double f0x425FC99265EF1E92>, ptr %i.du, align 8, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ca, i64 1248
  store <4 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78, double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.dv, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ca, i64 1280
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC>, ptr %i.dw, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 1312
  store <2 x double> <double f0x411A126930D354BA, double f0x4258DD36D9544A79>, ptr %i.dx, align 8, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ca, i64 1328
  store <4 x double> <double f0x411F940AC5A86538, double f0x425E1D8B15E84C27, double f0x41216C815B037382, double f0x42609DDE8CF01694>, ptr %i.dy, align 8, !tbaa !18
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ca, i64 1360
  store <4 x double> <double f0x41216C815B037382, double f0x42609DDE8CF01694, double f0x411F940AC5A86538, double f0x425E1D8B15E84C27>, ptr %i.dz, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ca, i64 1392
  store <2 x double> <double f0x411A126930D354B9, double f0x4258DD36D9544A78>, ptr %i.ea, align 8, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1408
  store <4 x double> <double f0x411464BA8F579BB7, double f0x425372DFFADBA8BC, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.eb, align 8, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ca, i64 1440
  store <4 x double> <double 2.500000e+05, double 2.500000e+11, double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5>, ptr %i.ec, align 8, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ca, i64 1472
  store <2 x double> <double f0x41168D57EB160BA1, double f0x425581E3AC6E122F>, ptr %i.ed, align 8, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ca, i64 1488
  store <4 x double> <double f0x411B50AB74F03291, double f0x425A0CBAC39161F9, double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B>, ptr %i.ee, align 8, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ca, i64 1520
  store <4 x double> <double f0x411E24A50EC9B9B1, double f0x425CBF2A794E595B, double f0x411B50AB74F03291, double f0x425A0CBAC39161F9>, ptr %i.ef, align 8, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ca, i64 1552
  store <2 x double> <double f0x41168D57EB160BA0, double f0x425581E3AC6E122E>, ptr %i.eg, align 8, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ca, i64 1568
  store <4 x double> <double f0x4111A3E9C4ED1378, double f0x4250D2B5DC91A7E5, double 2.500000e+05, double 2.500000e+11>, ptr %i.eh, align 8, !tbaa !18
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.ej = call ptr @CVodeCreate(i32 noundef 2, ptr noundef %i.ei) #9 ; 11 uses
  store ptr %i.ej, ptr %i.c, align 8, !tbaa !31
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %check_retval.exit43, label %bb.d

check_retval.exit43:                              ; preds = %check_retval.exit38
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.em = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.el, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3) #10 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %check_retval.exit38
  %i.en = call i32 @CVodeSetUserData(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.m) #9 ; 2 uses
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %check_retval.exit45, label %bb.e

check_retval.exit45:                              ; preds = %bb.d
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.4, i32 noundef %i.en) #10 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.er = call i32 @CVodeInit(ptr noundef nonnull %i.ej, ptr noundef nonnull @f, double noundef 0.000000e+00, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %check_retval.exit47, label %bb.f

check_retval.exit47:                              ; preds = %bb.e
  %i.et = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.eu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.et, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.5, i32 noundef %i.er) #10 ; 0 uses
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ev = call i32 @CVodeSStolerances(ptr noundef nonnull %i.ej, double noundef 1.000000e-05, double noundef 1.000000e-03) #9 ; 2 uses
  %i.ew = icmp slt i32 %i.ev, 0
  br i1 %i.ew, label %check_retval.exit49, label %bb.g

check_retval.exit49:                              ; preds = %bb.f
  %i.ex = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ey = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ex, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.6, i32 noundef %i.ev) #10 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.fa = call ptr @SUNLinSol_SPGMR(ptr noundef nonnull %i.i, i32 noundef 1, i32 noundef 0, ptr noundef %i.ez) #9 ; 3 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %check_retval.exit51, label %bb.h

check_retval.exit51:                              ; preds = %bb.g
  %i.fc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fc, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.7) #10 ; 0 uses
  br label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.fe = call i32 @CVodeSetLinearSolver(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.fa, ptr noundef null) #9 ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %check_retval.exit53, label %bb.i

check_retval.exit53:                              ; preds = %bb.h
  %i.fg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fg, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8, i32 noundef %i.fe) #10 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.fi = call i32 @CVodeSetJacTimes(ptr noundef nonnull %i.ej, ptr noundef null, ptr noundef nonnull @jtv) #9 ; 2 uses
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %check_retval.exit55, label %bb.j

check_retval.exit55:                              ; preds = %bb.i
  %i.fk = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fk, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.9, i32 noundef %i.fi) #10 ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.fm = call i32 @CVodeSetPreconditioner(ptr noundef nonnull %i.ej, ptr noundef nonnull @Precond, ptr noundef nonnull @PSolve) #9 ; 2 uses
  %i.fn = icmp slt i32 %i.fm, 0
  br i1 %i.fn, label %check_retval.exit57, label %bb.k

check_retval.exit57:                              ; preds = %bb.j
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.10, i32 noundef %i.fm) #10 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %bb.j
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.m
  %.090 = phi i32 [ 1, %bb.k ], [ %i.fv, %bb.m ]
  %.02289 = phi double [ 7.200000e+03, %bb.k ], [ %i.fw, %bb.m ] ; 2 uses
  %i.fq = call i32 @CVode(ptr noundef nonnull %i.ej, double noundef %.02289, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b, i32 noundef 1) #9 ; 2 uses
  %i.fr = load double, ptr %i.b, align 8, !tbaa !18
  call fastcc void @PrintOutput(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.i, double noundef %i.fr)
  %i.fs = icmp slt i32 %i.fq, 0
  br i1 %i.fs, label %check_retval.exit59, label %bb.m

check_retval.exit59:                              ; preds = %bb.l
  %i.ft = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ft, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.12, i32 noundef %i.fq) #10 ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.fv = add nuw nsw i32 %.090, 1                ; 2 uses
  %i.fw = fadd double %.02289, 7.200000e+03
  %exitcond.not = icmp eq i32 %i.fv, 13
  br i1 %exitcond.not, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.m, %check_retval.exit59
  call fastcc void @PrintFinalStats(ptr noundef nonnull %i.ej)
  call void @N_VDestroy(ptr noundef nonnull %i.i) #9
  call fastcc void @FreeUserData(ptr noundef nonnull %i.m)
  call void @CVodeFree(ptr noundef nonnull %i.c) #9
  %i.fx = call i32 @SUNLinSolFree(ptr noundef nonnull %i.fa) #9 ; 0 uses
  %i.fy = call i32 @SUNContext_Free(ptr noundef nonnull %i.a) #9 ; 0 uses
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
  %i.t = load double, ptr %i.s, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 2432
  %i.v = load double, ptr %i.u, align 8, !tbaa !24 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2440
  %i.x = load double, ptr %i.w, align 8, !tbaa !33 ; 6 uses
  %i.y = insertelement <2 x double> poison, double %i.t, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = insertelement <2 x double> poison, double %.0122, i64 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.c
  %indvars.iv128 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next129, %.loopexit.peel.begin ] ; 9 uses
  %i.ac = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.ad = uitofp nneg i32 %i.ac to double
  %i.ae = fadd double %i.ad, -5.000000e-01
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.r, double 3.000000e+01) ; 2 uses
  %i.ag = fadd double %i.r, %i.af
  %i.ah = fmul double %i.af, 2.000000e-01
  %i.ai = tail call double @exp(double noundef %i.ah) #9
  %i.aj = fmul double %i.ag, 2.000000e-01
  %i.ak = tail call double @exp(double noundef %i.aj) #9
  %i.al = icmp eq i64 %indvars.iv128, 0
  %i.am = select i1 %i.al, i64 1, i64 4294967295
  %i.an = icmp eq i64 %indvars.iv128, 9
  %i.ao = select i1 %i.an, i64 4294967295, i64 1
  %i.ap = mul nuw nsw i64 %indvars.iv128, 20      ; 11 uses
  %i.aq = add nuw i64 %i.am, %indvars.iv128
  %i.ar = add nuw i64 %i.ao, %indvars.iv128
  %i.as = or disjoint i64 %i.ap, 1                ; 2 uses
  %sext = mul i64 %i.ar, 85899345920
  %i.at = ashr exact i64 %sext, 32                ; 2 uses
  %sext132 = mul i64 %i.aq, 85899345920
  %i.au = ashr exact i64 %sext132, 32             ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.au
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.at
  %i.ay = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.az = insertelement <2 x double> %i.ay, double %i.ai, i64 1
  %i.ba = fmul <2 x double> %i.z, %i.az           ; 6 uses
  %i.bb = load <2 x double>, ptr %i.av, align 8, !tbaa !18 ; 5 uses
  %i.bc = extractelement <2 x double> %i.bb, i64 0 ; 2 uses
  %i.bd = fmul double %i.bc, 1.630000e-16
  %i.be = fmul double %i.bd, 3.700000e+16         ; 2 uses
  %i.bf = fmul double %i.bc, 4.660000e-16
  %i.bg = extractelement <2 x double> %i.bb, i64 1 ; 2 uses
  %i.bh = fmul double %i.bf, %i.bg                ; 2 uses
  %i.bi = fmul double %.sink, %i.bg               ; 2 uses
  %i.bj = fneg double %i.be
  %i.bk = fsub double %i.bj, %i.bh
  %i.bl = tail call double @llvm.fmuladd.f64(double %.0122, double 2.000000e+00, double %i.bk)
  %i.bm = fadd double %i.bi, %i.bl
  %i.bn = fsub double %i.be, %i.bh
  %i.bo = fsub double %i.bn, %i.bi
  %i.bp = load <2 x double>, ptr %i.aw, align 8, !tbaa !18
  %i.bq = load <2 x double>, ptr %i.ax, align 8, !tbaa !18
  %i.br = fsub <2 x double> %i.bq, %i.bb
  %i.bs = fsub <2 x double> %i.bb, %i.bp
  %i.bt = fneg <2 x double> %i.bs
  %i.bu = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = fmul <2 x double> %i.bu, %i.bt
  %i.bw = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.br, <2 x double> %i.bv) ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ap
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18 ; 4 uses
  %i.cb = trunc nuw nsw i64 %i.as to i32
  %i.cc = mul i64 %indvars.iv128, 85899345920
  %i.cd = ashr exact i64 %i.cc, 29
  %i.ce = getelementptr i8, ptr %i.a, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !18 ; 4 uses
  %i.ch = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.ci = insertelement <2 x double> %i.ch, double %i.cg, i64 1
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ci) ; 2 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 0
  %i.cl = fadd double %i.ca, %i.ck
  %i.cm = fmul double %i.v, %i.cl
  %i.cn = extractelement <2 x double> %i.cj, i64 1
  %i.co = fadd double %i.cg, %i.cn
  %i.cp = fmul double %i.v, %i.co
  %i.cq = fsub double %i.ca, %i.ca
  %i.cr = fmul double %i.x, %i.cq
  %i.cs = fsub double %i.cg, %i.cg
  %i.ct = fmul double %i.x, %i.cs
  %i.cu = extractelement <2 x double> %i.bx, i64 0
  %i.cv = fadd double %i.cu, %i.cm
  %i.cw = fadd double %i.cr, %i.cv
  %i.cx = fadd double %i.bm, %i.cw
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ap
  store double %i.cx, ptr %i.cy, align 8, !tbaa !18
  %i.cz = extractelement <2 x double> %i.bx, i64 1
  %i.da = fadd double %i.cz, %i.cp
  %i.db = fadd double %i.ct, %i.da
  %i.dc = fadd double %i.bo, %i.db
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ap
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store double %i.dc, ptr %i.de, align 8, !tbaa !18
  %invariant.gep = getelementptr [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %invariant.gep134 = getelementptr [8 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %invariant.gep136 = getelementptr [8 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.a, i64 %i.as ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.di = extractelement <2 x double> %i.ba, i64 1 ; 4 uses
  %i.dj = shufflevector <2 x double> %i.aa, <2 x double> %i.ba, <2 x i32> <i32 0, i32 2> ; 2 uses
  %invariant.gep142 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.dk = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.dl = add nuw nsw i64 %i.dk, %i.ap            ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dl
  %i.dn = or disjoint i64 %i.dk, 1                ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.dk
  %i.do = load double, ptr %gep, align 8, !tbaa !18
  %gep135 = getelementptr [8 x i8], ptr %invariant.gep134, i64 %i.dn
  %i.dp = load double, ptr %gep135, align 8, !tbaa !18
  %gep137 = getelementptr [8 x i8], ptr %invariant.gep136, i64 %i.dk
  %i.dq = load <2 x double>, ptr %i.dm, align 8, !tbaa !18 ; 4 uses
  %i.dr = extractelement <2 x double> %i.dq, i64 1 ; 4 uses
  %i.ds = fmul double %.sink, %i.dr               ; 2 uses
  %i.dt = load <2 x double>, ptr %gep137, align 8, !tbaa !18
  %i.du = extractelement <2 x double> %i.dq, i64 0 ; 3 uses
  %i.dv = fmul double %i.du, 1.630000e-16
  %i.dw = fmul double %i.du, 4.660000e-16
  %i.dx = fmul double %i.dw, %i.dr                ; 2 uses
  %i.dy = fsub double %i.du, %i.do
  %i.dz = fmul double %i.dv, 3.700000e+16         ; 2 uses
  %i.ea = fneg double %i.dy
  %i.eb = fneg double %i.dz
  %i.ec = fmul double %i.di, %i.ea
  %i.ed = fsub double %i.eb, %i.dx
  %i.ee = fsub <2 x double> %i.dt, %i.dq          ; 2 uses
  %i.ef = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.ee, <2 x i32> <i32 0, i32 2>
  %i.eg = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eh = insertelement <2 x double> %i.eg, double %i.ec, i64 1
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.ef, <2 x double> %i.eh) ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = fadd double %i.ds, %i.ej
  %i.el = fsub double %i.dz, %i.dx
  %i.em = fsub double %i.el, %i.ds
  %i.en = fsub double %i.dr, %i.dp
  %i.eo = fneg double %i.en
  %i.ep = fmul double %i.di, %i.eo
  %i.eq = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.er = shl nuw nsw i32 %i.eq, 1
  %i.es = add nsw i32 %i.er, -2
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.df, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !18 ; 2 uses
  %i.ew = getelementptr [8 x i8], ptr %i.dg, i64 %i.et
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !18 ; 2 uses
  %i.ey = shl i32 %i.eq, 1
  %i.ez = add i32 %i.ey, 2                        ; 2 uses
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr [8 x i8], ptr %i.dh, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !18 ; 2 uses
  %i.fd = add nuw nsw i32 %i.ez, %i.cb
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !18 ; 2 uses
  %i.fh = shufflevector <2 x double> %i.ba, <2 x double> %i.dq, <2 x i32> <i32 0, i32 2>
  %i.fi = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.ee, <2 x i32> <i32 3, i32 1>
  %i.fj = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %i.fc, i64 1
  %i.fl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.fi, <2 x double> %i.fk) ; 2 uses
  %i.fm = extractelement <2 x double> %i.fl, i64 1
  %i.fn = fadd double %i.ev, %i.fm
  %i.fo = fmul double %i.v, %i.fn
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.dr, double -2.000000e+00, double %i.fg)
  %i.fq = fadd double %i.ex, %i.fp
  %i.fr = fmul double %i.v, %i.fq
  %i.fs = fsub double %i.fc, %i.ev
  %i.ft = fmul double %i.x, %i.fs
  %i.fu = fsub double %i.fg, %i.ex
  %i.fv = fmul double %i.x, %i.fu
  %i.fw = extractelement <2 x double> %i.ei, i64 1
  %i.fx = fadd double %i.fw, %i.fo
  %i.fy = fadd double %i.ft, %i.fx
  %i.fz = fadd double %i.ek, %i.fy
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.dl
  store double %i.fz, ptr %i.ga, align 8, !tbaa !18
  %i.gb = extractelement <2 x double> %i.fl, i64 0
  %i.gc = fadd double %i.gb, %i.fr
  %i.gd = fadd double %i.fv, %i.gc
  %i.ge = fadd double %i.em, %i.gd
  %gep143 = getelementptr inbounds [8 x i8], ptr %invariant.gep142, i64 %i.dn
  store double %i.ge, ptr %gep143, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !32

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.gf = add nuw nsw i64 %i.ap, 18               ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.gf
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 144
  %i.gh = load double, ptr %gep.peel, align 8, !tbaa !18
  %gep135.peel = getelementptr i8, ptr %invariant.gep134, i64 152
  %i.gi = load double, ptr %gep135.peel, align 8, !tbaa !18
  %gep137.peel = getelementptr i8, ptr %invariant.gep136, i64 144
  %i.gj = load <2 x double>, ptr %i.gg, align 8, !tbaa !18 ; 4 uses
  %i.gk = extractelement <2 x double> %i.gj, i64 1 ; 4 uses
  %i.gl = fmul double %.sink, %i.gk               ; 2 uses
  %i.gm = load <2 x double>, ptr %gep137.peel, align 8, !tbaa !18
  %i.gn = extractelement <2 x double> %i.gj, i64 0 ; 3 uses
  %i.go = fmul double %i.gn, 1.630000e-16
  %i.gp = fmul double %i.gn, 4.660000e-16
  %i.gq = fmul double %i.gp, %i.gk                ; 2 uses
  %i.gr = fsub double %i.gn, %i.gh
  %i.gs = fmul double %i.go, 3.700000e+16         ; 2 uses
  %i.gt = fneg double %i.gr
  %i.gu = fneg double %i.gs
  %i.gv = fmul double %i.di, %i.gt
  %i.gw = fsub double %i.gu, %i.gq
  %i.gx = fsub <2 x double> %i.gm, %i.gj          ; 2 uses
  %i.gy = shufflevector <2 x double> <double 2.000000e+00, double poison>, <2 x double> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.gz = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.ha = insertelement <2 x double> %i.gz, double %i.gv, i64 1
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.gy, <2 x double> %i.ha) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0
  %i.hd = fadd double %i.gl, %i.hc
  %i.he = fsub double %i.gs, %i.gq
  %i.hf = fsub double %i.he, %i.gl
  %i.hg = fsub double %i.gk, %i.gi
  %i.hh = fneg double %i.hg
  %i.hi = fmul double %i.di, %i.hh
  %i.hj = getelementptr i8, ptr %i.df, i64 128
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !18 ; 2 uses
  %i.hl = getelementptr i8, ptr %i.dg, i64 128
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !18 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.dh, i64 128
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !18 ; 2 uses
  %i.hp = mul i64 %indvars.iv128, 85899345920
  %sext141 = add i64 %i.hp, 73014444032
  %i.hq = ashr exact i64 %sext141, 29
  %i.hr = getelementptr inbounds i8, ptr %i.a, i64 %i.hq
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !18 ; 2 uses
  %i.ht = shufflevector <2 x double> %i.ba, <2 x double> %i.gj, <2 x i32> <i32 0, i32 2>
  %i.hu = shufflevector <2 x double> <double poison, double -2.000000e+00>, <2 x double> %i.gx, <2 x i32> <i32 3, i32 1>
  %i.hv = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.ho, i64 1
  %i.hx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.hu, <2 x double> %i.hw) ; 2 uses
  %i.hy = extractelement <2 x double> %i.hx, i64 1
  %i.hz = fadd double %i.hk, %i.hy
  %i.ia = fmul double %i.v, %i.hz
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.gk, double -2.000000e+00, double %i.hs)
  %i.ic = fadd double %i.hm, %i.ib
  %i.id = fmul double %i.v, %i.ic
  %i.ie = fsub double %i.ho, %i.hk
  %i.if = fmul double %i.x, %i.ie
  %i.ig = fsub double %i.hs, %i.hm
  %i.ih = fmul double %i.x, %i.ig
  %i.ii = extractelement <2 x double> %i.hb, i64 1
  %i.ij = fadd double %i.ii, %i.ia
  %i.ik = fadd double %i.if, %i.ij
  %i.il = fadd double %i.hd, %i.ik
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gf
  store double %i.il, ptr %i.im, align 8, !tbaa !18
  %i.in = extractelement <2 x double> %i.hx, i64 0
  %i.io = fadd double %i.in, %i.id
  %i.ip = fadd double %i.ih, %i.io
  %i.iq = fadd double %i.hf, %i.ip
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ap
  store double %i.iq, ptr %i.ir, align 8, !tbaa !18
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next129, 10
  br i1 %exitcond131.not, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.loopexit.peel.begin
  ret i32 0
}

declare i32 @CVodeSStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_SPGMR(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetJacTimes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @jtv(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4, ptr nofree noundef captures(none) initializes((2400, 2408)) %5, ptr nofree readnone captures(none) %6) #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %3) #9 ; 6 uses
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #9 ; 16 uses
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 2408
  %i.e = load double, ptr %i.d, align 8, !tbaa !20
  %i.f = fmul double %2, %i.e
  %i.g = tail call double @sin(double noundef %i.f) #9 ; 2 uses
  %i.h = fcmp ogt double %i.g, 0.000000e+00
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = fdiv double f0xC01E676C8B439581, %i.g
  %i.j = tail call double @exp(double noundef %i.i) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi double [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 2400
  store double %.sink, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 2424
  %i.m = load double, ptr %i.l, align 8, !tbaa !22 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 2448
  %i.o = load double, ptr %i.n, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 2432
  %7 = load <2 x double>, ptr %i.p, align 8, !tbaa !18 ; 2 uses
  %i.q = insertelement <2 x double> poison, double %i.o, i64 0
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.s = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.t = insertelement <2 x double> poison, double %.sink, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  br label %.peel.next

.peel.next:                                       ; preds = %.loopexit.peel.begin, %bb.c
  %indvars.iv134 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next135, %.loopexit.peel.begin ] ; 9 uses
  %i.v = trunc nuw nsw i64 %indvars.iv134 to i32
  %i.w = uitofp nneg i32 %i.v to double
  %i.x = fadd double %i.w, -5.000000e-01
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.m, double 3.000000e+01) ; 2 uses
  %i.z = fadd double %i.m, %i.y
  %i.aa = fmul double %i.y, 2.000000e-01
  %i.ab = tail call double @exp(double noundef %i.aa) #9
  %i.ac = fmul double %i.z, 2.000000e-01
  %i.ad = tail call double @exp(double noundef %i.ac) #9
  %i.ae = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = fmul <2 x double> %i.r, %i.af           ; 4 uses
  %i.ah = icmp eq i64 %indvars.iv134, 0
  %i.ai = select i1 %i.ah, i64 1, i64 4294967295
  %i.aj = icmp eq i64 %indvars.iv134, 9
  %i.ak = select i1 %i.aj, i64 4294967295, i64 1
  %i.al = mul nuw nsw i64 %indvars.iv134, 20      ; 12 uses
  %i.am = add nuw i64 %i.ai, %indvars.iv134
  %i.an = add nuw i64 %i.ak, %indvars.iv134
  %shift = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ag, %shift
  %i.ao = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ap = fneg double %i.ao
  %sext = mul i64 %i.an, 85899345920
  %i.aq = ashr exact i64 %sext, 32                ; 2 uses
  %sext138 = mul i64 %i.am, 85899345920
  %i.ar = ashr exact i64 %sext138, 32             ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.al
  %i.at = load double, ptr %i.as, align 8, !tbaa !18
  %i.au = or disjoint i64 %i.al, 1                ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !18 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.au
  %i.az = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ar
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.aq
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.al
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !18
  %i.be = trunc i64 %i.al to i32
  %i.bf = or disjoint i32 %i.be, 1
  %i.bg = mul i64 %indvars.iv134, 85899345920
  %i.bh = ashr exact i64 %i.bg, 29
  %i.bi = getelementptr i8, ptr %i.b, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 24
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.aw, double 4.660000e-16, double f0x40181FBE76C8B43A)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.al
  %i.bn = load double, ptr %i.ay, align 8, !tbaa !18
  %i.bo = load <2 x double>, ptr %i.ax, align 8, !tbaa !18 ; 4 uses
  %i.bp = load <2 x double>, ptr %i.az, align 8, !tbaa !18
  %i.bq = load <2 x double>, ptr %i.ba, align 8, !tbaa !18
  %i.br = fneg double %i.bl
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.aw, double -4.660000e-16, double f0x40181FBE76C8B43A)
  %i.bt = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.u)
  %i.bw = fneg double %i.bn
  %i.bx = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = fmul <2 x double> %i.bv, %i.by
  %i.ca = insertelement <2 x double> poison, double %i.br, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.bs, i64 1
  %i.cc = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.cc, <2 x double> %i.bz)
  %i.ce = fadd <2 x double> %i.cd, zeroinitializer
  %i.cf = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.cg = fmul <2 x double> %i.cf, %i.bq
  %i.ch = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.bo, <2 x double> %i.cg)
  %i.ck = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.bp, <2 x double> %i.cj)
  %i.cm = fadd <2 x double> %i.ce, %i.cl
  %i.cn = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.bk, i64 1 ; 4 uses
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> splat (double -2.000000e+00), <2 x double> %i.co)
  %i.cq = fadd <2 x double> %i.co, %i.cp
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.cq, <2 x double> %i.cm)
  %i.cs = fsub <2 x double> %i.co, %i.co
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.cs, <2 x double> %i.cr)
  store <2 x double> %i.ct, ptr %i.bm, align 8, !tbaa !18
  %invariant.gep = getelementptr [8 x i8], ptr %i.b, i64 %i.ar ; 2 uses
  %invariant.gep142 = getelementptr [8 x i8], ptr %i.b, i64 %i.aq ; 2 uses
  %i.cu = getelementptr [8 x i8], ptr %i.b, i64 %i.al ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.b, i64 %i.al ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.peel.next, %bb.d
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.cw = shl nuw nsw i64 %indvars.iv, 1          ; 4 uses
  %i.cx = add nuw nsw i64 %i.cw, %i.al            ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !18
  %i.da = or disjoint i64 %i.cw, 1
  %i.db = add nuw nsw i64 %i.da, %i.al            ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.db
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.cx
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.db
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.cw
  %gep143 = getelementptr [8 x i8], ptr %invariant.gep142, i64 %i.cw
  %i.dg = trunc nuw nsw i64 %indvars.iv to i32
  %i.dh = shl nuw i64 %indvars.iv, 1
  %i.di = and i64 %i.dh, 4294967294
  %i.dj = getelementptr [8 x i8], ptr %i.cu, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 -16
  %i.dl = shl i32 %i.dg, 1
  %i.dm = add i32 %i.dl, 2                        ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr [8 x i8], ptr %i.cv, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !18
  %i.dq = add nuw nsw i32 %i.dm, %i.bf
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !18
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.cx
  %i.dv = load double, ptr %i.df, align 8, !tbaa !18
  %i.dw = load <2 x double>, ptr %i.de, align 8, !tbaa !18 ; 4 uses
  %i.dx = load <2 x double>, ptr %gep, align 8, !tbaa !18
  %i.dy = load <2 x double>, ptr %gep143, align 8, !tbaa !18
  %i.dz = load <2 x double>, ptr %i.dk, align 8, !tbaa !18 ; 2 uses
  %i.ea = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> <double 4.660000e-16, double -4.660000e-16>, <2 x double> splat (double f0x40181FBE76C8B43A)) ; 2 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0
  %i.ee = fneg double %i.ed
  %i.ef = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.u)
  %i.ei = fneg double %i.dv
  %i.ej = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ek = insertelement <2 x double> %i.ej, double %i.ei, i64 1
  %i.el = fmul <2 x double> %i.eh, %i.ek
  %i.em = insertelement <2 x double> %i.ec, double %i.ee, i64 0
  %i.en = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.en, <2 x double> %i.el)
  %i.ep = fadd <2 x double> %i.eo, zeroinitializer
  %i.eq = fmul <2 x double> %i.cf, %i.dy
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.dw, <2 x double> %i.eq)
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.dx, <2 x double> %i.er)
  %i.et = fadd <2 x double> %i.ep, %i.es
  %i.eu = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.ev = insertelement <2 x double> %i.eu, double %i.dt, i64 1 ; 2 uses
  %i.ew = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> splat (double -2.000000e+00), <2 x double> %i.ev)
  %i.ex = fadd <2 x double> %i.dz, %i.ew
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.ex, <2 x double> %i.et)
  %i.ez = fsub <2 x double> %i.ev, %i.dz
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.ez, <2 x double> %i.ey)
  store <2 x double> %i.fa, ptr %i.du, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 9
  br i1 %exitcond.not, label %.loopexit.peel.begin, label %bb.d, !llvm.loop !34

.loopexit.peel.begin:                             ; preds = %bb.d
  %i.fb = add nuw nsw i64 %i.al, 18               ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !18
  %i.fe = add nuw nsw i64 %i.al, 19               ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fb
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.fe
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 144
  %gep143.peel = getelementptr i8, ptr %invariant.gep142, i64 144
  %i.fj = getelementptr i8, ptr %i.cu, i64 128
  %i.fk = getelementptr i8, ptr %i.cv, i64 128
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !18
  %i.fm = mul i64 %indvars.iv134, 85899345920
  %sext148 = add i64 %i.fm, 73014444032
  %i.fn = ashr exact i64 %sext148, 29
  %i.fo = getelementptr inbounds i8, ptr %i.b, i64 %i.fn
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !18
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.fb
  %i.fr = load double, ptr %i.fi, align 8, !tbaa !18
  %i.fs = load <2 x double>, ptr %i.fh, align 8, !tbaa !18 ; 4 uses
  %i.ft = load <2 x double>, ptr %gep.peel, align 8, !tbaa !18
  %i.fu = load <2 x double>, ptr %gep143.peel, align 8, !tbaa !18
  %i.fv = load <2 x double>, ptr %i.fj, align 8, !tbaa !18 ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fx = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> <double 4.660000e-16, double -4.660000e-16>, <2 x double> splat (double f0x40181FBE76C8B43A)) ; 2 uses
  %i.fz = extractelement <2 x double> %i.fy, i64 0
  %i.ga = fneg double %i.fz
  %i.gb = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> <double -4.660000e-16, double 4.660000e-16>, <2 x double> %i.u)
  %i.ge = fneg double %i.fr
  %i.gf = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gg = insertelement <2 x double> %i.gf, double %i.ge, i64 1
  %i.gh = fmul <2 x double> %i.gd, %i.gg
  %i.gi = insertelement <2 x double> %i.fy, double %i.ga, i64 0
  %i.gj = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gi, <2 x double> %i.gj, <2 x double> %i.gh)
  %i.gl = fadd <2 x double> %i.gk, zeroinitializer
  %i.gm = fmul <2 x double> %i.cf, %i.fu
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.fs, <2 x double> %i.gm)
  %i.go = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.ft, <2 x double> %i.gn)
  %i.gp = fadd <2 x double> %i.gl, %i.go
  %i.gq = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.fp, i64 1 ; 2 uses
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> splat (double -2.000000e+00), <2 x double> %i.gr)
  %i.gt = fadd <2 x double> %i.fv, %i.gs
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.gt, <2 x double> %i.gp)
  %i.gv = fsub <2 x double> %i.gr, %i.fv
  %i.gw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.gv, <2 x double> %i.gu)
  store <2 x double> %i.gw, ptr %i.fq, align 8, !tbaa !18
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next135, 10
  br i1 %exitcond137.not, label %bb.e, label %.peel.next

bb.e:                                             ; preds = %.loopexit.peel.begin
  ret i32 0
}

declare i32 @CVodeSetPreconditioner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Precond(double %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, double noundef %5, ptr nofree noundef readonly captures(none) %6) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 800 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 1600
  %i.c = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %.preheader95

.preheader95:                                     ; preds = %bb.a, %.preheader95
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader95 ], [ 0, %bb.a ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 10 uses
  %invariant.gep98 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv ; 10 uses
  %i.d = load ptr, ptr %invariant.gep, align 8, !tbaa !14
  %i.e = load ptr, ptr %invariant.gep98, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.d, ptr noundef %i.e, i64 noundef 2, i64 noundef 2) #9
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 80
  %i.f = load ptr, ptr %gep.1, align 8, !tbaa !14
  %gep99.1 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 80
  %i.g = load ptr, ptr %gep99.1, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.f, ptr noundef %i.g, i64 noundef 2, i64 noundef 2) #9
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 160
  %i.h = load ptr, ptr %gep.2, align 8, !tbaa !14
  %gep99.2 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 160
  %i.i = load ptr, ptr %gep99.2, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.h, ptr noundef %i.i, i64 noundef 2, i64 noundef 2) #9
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 240
  %i.j = load ptr, ptr %gep.3, align 8, !tbaa !14
  %gep99.3 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 240
  %i.k = load ptr, ptr %gep99.3, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.j, ptr noundef %i.k, i64 noundef 2, i64 noundef 2) #9
  %gep.4 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 320
  %i.l = load ptr, ptr %gep.4, align 8, !tbaa !14
  %gep99.4 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 320
  %i.m = load ptr, ptr %gep99.4, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.l, ptr noundef %i.m, i64 noundef 2, i64 noundef 2) #9
  %gep.5 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 400
  %i.n = load ptr, ptr %gep.5, align 8, !tbaa !14
  %gep99.5 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 400
  %i.o = load ptr, ptr %gep99.5, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.n, ptr noundef %i.o, i64 noundef 2, i64 noundef 2) #9
  %gep.6 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 480
  %i.p = load ptr, ptr %gep.6, align 8, !tbaa !14
  %gep99.6 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 480
  %i.q = load ptr, ptr %gep99.6, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.p, ptr noundef %i.q, i64 noundef 2, i64 noundef 2) #9
  %gep.7 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 560
  %i.r = load ptr, ptr %gep.7, align 8, !tbaa !14
  %gep99.7 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 560
  %i.s = load ptr, ptr %gep99.7, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.r, ptr noundef %i.s, i64 noundef 2, i64 noundef 2) #9
  %gep.8 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 640
  %i.t = load ptr, ptr %gep.8, align 8, !tbaa !14
  %gep99.8 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 640
  %i.u = load ptr, ptr %gep99.8, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.t, ptr noundef %i.u, i64 noundef 2, i64 noundef 2) #9
  %gep.9 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 720
  %i.v = load ptr, ptr %gep.9, align 8, !tbaa !14
  %gep99.9 = getelementptr inbounds nuw i8, ptr %invariant.gep98, i64 720
  %i.w = load ptr, ptr %gep99.9, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseCopy(ptr noundef %i.v, ptr noundef %i.w, i64 noundef 2, i64 noundef 2) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %.loopexit94, label %.preheader95

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 2400
  %i.y = load double, ptr %i.x, align 8, !tbaa !21 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 2424
  %i.aa = load double, ptr %i.z, align 8, !tbaa !22 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 2448
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 2432
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !24
  %i.af = fneg double %i.y
  %i.ag = insertelement <2 x double> <double poison, double f0x40181FBE76C8B43A>, double %i.af, i64 0 ; 10 uses
  %i.ah = insertelement <2 x double> <double poison, double f0xC0181FBE76C8B43A>, double %i.y, i64 0 ; 10 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv122 = phi i64 [ 0, %bb.b ], [ %indvars.iv.next123, %bb.c ] ; 5 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv122 to i32
  %i.aj = uitofp nneg i32 %i.ai to double
  %i.ak = fadd double %i.aj, -5.000000e-01
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.aa, double 3.000000e+01) ; 2 uses
  %i.am = fadd double %i.aa, %i.al
  %i.an = fmul double %i.al, 2.000000e-01
  %i.ao = tail call double @exp(double noundef %i.an) #9
  %i.ap = fmul double %i.am, 2.000000e-01
  %i.aq = tail call double @exp(double noundef %i.ap) #9
  %i.ar = fmul double %i.ac, %i.ao
  %i.as = fmul double %i.ac, %i.aq
  %i.at = fadd double %i.ar, %i.as
  %i.au = tail call double @llvm.fmuladd.f64(double %i.ae, double 2.000000e+00, double %i.at)
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %invariant.gep143.idx = mul nuw nsw i64 %indvars.iv122, 160
  %invariant.gep143 = getelementptr inbounds nuw i8, ptr %i.c, i64 %invariant.gep143.idx ; 10 uses
  %invariant.gep104 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv122 ; 10 uses
  %invariant.gep102 = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv122 ; 10 uses
  %i.ax = load ptr, ptr %invariant.gep102, align 8, !tbaa !14 ; 3 uses
  %i.ay = load ptr, ptr %invariant.gep104, align 8, !tbaa !14
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !36 ; 2 uses
  %i.ba = load <2 x double>, ptr %invariant.gep143, align 8, !tbaa !18 ; 2 uses
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %i.be = extractelement <2 x double> %i.bb, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.bh = extractelement <2 x double> %i.bg, i64 1
  %i.bi = shufflevector <2 x double> %i.bb, <2 x double> %i.bg, <2 x i32> <i32 1, i32 2>
  %i.bj = fsub <2 x double> %i.bi, %i.aw          ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  store double %i.bk, ptr %i.az, align 8, !tbaa !18
  store double %i.be, ptr %i.bd, align 8, !tbaa !18
  store double %i.bh, ptr %i.bf, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bm = extractelement <2 x double> %i.bj, i64 1
  store double %i.bm, ptr %i.bl, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i64 noundef 2, i64 noundef 2) #9
  %gep.1146 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 16
  %gep103.1 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 80
  %i.bn = load ptr, ptr %gep103.1, align 8, !tbaa !14 ; 3 uses
  %gep105.1 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 80
  %i.bo = load ptr, ptr %gep105.1, align 8, !tbaa !14
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %i.bq = load <2 x double>, ptr %gep.1146, align 8, !tbaa !18 ; 2 uses
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !36 ; 2 uses
  %i.bu = extractelement <2 x double> %i.br, i64 0
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  %i.by = shufflevector <2 x double> %i.br, <2 x double> %i.bw, <2 x i32> <i32 1, i32 2>
  %i.bz = fsub <2 x double> %i.by, %i.aw          ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 0
  store double %i.ca, ptr %i.bp, align 8, !tbaa !18
  store double %i.bu, ptr %i.bt, align 8, !tbaa !18
  store double %i.bx, ptr %i.bv, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cc = extractelement <2 x double> %i.bz, i64 1
  store double %i.cc, ptr %i.cb, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.bn, ptr noundef %i.bo, i64 noundef 2, i64 noundef 2) #9
  %gep.2147 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 32
  %gep103.2 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 160
  %i.cd = load ptr, ptr %gep103.2, align 8, !tbaa !14 ; 3 uses
  %gep105.2 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 160
  %i.ce = load ptr, ptr %gep105.2, align 8, !tbaa !14
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !36 ; 2 uses
  %i.cg = load <2 x double>, ptr %gep.2147, align 8, !tbaa !18 ; 2 uses
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !36 ; 2 uses
  %i.ck = extractelement <2 x double> %i.ch, i64 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 1
  %i.co = shufflevector <2 x double> %i.ch, <2 x double> %i.cm, <2 x i32> <i32 1, i32 2>
  %i.cp = fsub <2 x double> %i.co, %i.aw          ; 2 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  store double %i.cq, ptr %i.cf, align 8, !tbaa !18
  store double %i.ck, ptr %i.cj, align 8, !tbaa !18
  store double %i.cn, ptr %i.cl, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cs = extractelement <2 x double> %i.cp, i64 1
  store double %i.cs, ptr %i.cr, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.cd, ptr noundef %i.ce, i64 noundef 2, i64 noundef 2) #9
  %gep.3148 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 48
  %gep103.3 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 240
  %i.ct = load ptr, ptr %gep103.3, align 8, !tbaa !14 ; 3 uses
  %gep105.3 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 240
  %i.cu = load ptr, ptr %gep105.3, align 8, !tbaa !14
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !36 ; 2 uses
  %i.cw = load <2 x double>, ptr %gep.3148, align 8, !tbaa !18 ; 2 uses
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !36 ; 2 uses
  %i.da = extractelement <2 x double> %i.cx, i64 0
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.dd = extractelement <2 x double> %i.dc, i64 1
  %i.de = shufflevector <2 x double> %i.cx, <2 x double> %i.dc, <2 x i32> <i32 1, i32 2>
  %i.df = fsub <2 x double> %i.de, %i.aw          ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  store double %i.dg, ptr %i.cv, align 8, !tbaa !18
  store double %i.da, ptr %i.cz, align 8, !tbaa !18
  store double %i.dd, ptr %i.db, align 8, !tbaa !18
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.di = extractelement <2 x double> %i.df, i64 1
  store double %i.di, ptr %i.dh, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.ct, ptr noundef %i.cu, i64 noundef 2, i64 noundef 2) #9
  %gep.4149 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 64
  %gep103.4 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 320
  %i.dj = load ptr, ptr %gep103.4, align 8, !tbaa !14 ; 3 uses
  %gep105.4 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 320
  %i.dk = load ptr, ptr %gep105.4, align 8, !tbaa !14
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !36 ; 2 uses
  %i.dm = load <2 x double>, ptr %gep.4149, align 8, !tbaa !18 ; 2 uses
  %i.dn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !36 ; 2 uses
  %i.dq = extractelement <2 x double> %i.dn, i64 0
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.dt = extractelement <2 x double> %i.ds, i64 1
  %i.du = shufflevector <2 x double> %i.dn, <2 x double> %i.ds, <2 x i32> <i32 1, i32 2>
  %i.dv = fsub <2 x double> %i.du, %i.aw          ; 2 uses
  %i.dw = extractelement <2 x double> %i.dv, i64 0
  store double %i.dw, ptr %i.dl, align 8, !tbaa !18
  store double %i.dq, ptr %i.dp, align 8, !tbaa !18
  store double %i.dt, ptr %i.dr, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dy = extractelement <2 x double> %i.dv, i64 1
  store double %i.dy, ptr %i.dx, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.dj, ptr noundef %i.dk, i64 noundef 2, i64 noundef 2) #9
  %gep.5150 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 80
  %gep103.5 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 400
  %i.dz = load ptr, ptr %gep103.5, align 8, !tbaa !14 ; 3 uses
  %gep105.5 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 400
  %i.ea = load ptr, ptr %gep105.5, align 8, !tbaa !14
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !36 ; 2 uses
  %i.ec = load <2 x double>, ptr %gep.5150, align 8, !tbaa !18 ; 2 uses
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !36 ; 2 uses
  %i.eg = extractelement <2 x double> %i.ed, i64 0
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 1
  %i.ek = shufflevector <2 x double> %i.ed, <2 x double> %i.ei, <2 x i32> <i32 1, i32 2>
  %i.el = fsub <2 x double> %i.ek, %i.aw          ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 0
  store double %i.em, ptr %i.eb, align 8, !tbaa !18
  store double %i.eg, ptr %i.ef, align 8, !tbaa !18
  store double %i.ej, ptr %i.eh, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eo = extractelement <2 x double> %i.el, i64 1
  store double %i.eo, ptr %i.en, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.dz, ptr noundef %i.ea, i64 noundef 2, i64 noundef 2) #9
  %gep.6151 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 96
  %gep103.6 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 480
  %i.ep = load ptr, ptr %gep103.6, align 8, !tbaa !14 ; 3 uses
  %gep105.6 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 480
  %i.eq = load ptr, ptr %gep105.6, align 8, !tbaa !14
  %i.er = load ptr, ptr %i.ep, align 8, !tbaa !36 ; 2 uses
  %i.es = load <2 x double>, ptr %gep.6151, align 8, !tbaa !18 ; 2 uses
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !36 ; 2 uses
  %i.ew = extractelement <2 x double> %i.et, i64 0
  %i.ex = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 1
  %i.fa = shufflevector <2 x double> %i.et, <2 x double> %i.ey, <2 x i32> <i32 1, i32 2>
  %i.fb = fsub <2 x double> %i.fa, %i.aw          ; 2 uses
  %i.fc = extractelement <2 x double> %i.fb, i64 0
  store double %i.fc, ptr %i.er, align 8, !tbaa !18
  store double %i.ew, ptr %i.ev, align 8, !tbaa !18
  store double %i.ez, ptr %i.ex, align 8, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fe = extractelement <2 x double> %i.fb, i64 1
  store double %i.fe, ptr %i.fd, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.ep, ptr noundef %i.eq, i64 noundef 2, i64 noundef 2) #9
  %gep.7152 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 112
  %gep103.7 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 560
  %i.ff = load ptr, ptr %gep103.7, align 8, !tbaa !14 ; 3 uses
  %gep105.7 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 560
  %i.fg = load ptr, ptr %gep105.7, align 8, !tbaa !14
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !36 ; 2 uses
  %i.fi = load <2 x double>, ptr %gep.7152, align 8, !tbaa !18 ; 2 uses
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !36 ; 2 uses
  %i.fm = extractelement <2 x double> %i.fj, i64 0
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 1
  %i.fq = shufflevector <2 x double> %i.fj, <2 x double> %i.fo, <2 x i32> <i32 1, i32 2>
  %i.fr = fsub <2 x double> %i.fq, %i.aw          ; 2 uses
  %i.fs = extractelement <2 x double> %i.fr, i64 0
  store double %i.fs, ptr %i.fh, align 8, !tbaa !18
  store double %i.fm, ptr %i.fl, align 8, !tbaa !18
  store double %i.fp, ptr %i.fn, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fu = extractelement <2 x double> %i.fr, i64 1
  store double %i.fu, ptr %i.ft, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.ff, ptr noundef %i.fg, i64 noundef 2, i64 noundef 2) #9
  %gep.8153 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 128
  %gep103.8 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 640
  %i.fv = load ptr, ptr %gep103.8, align 8, !tbaa !14 ; 3 uses
  %gep105.8 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 640
  %i.fw = load ptr, ptr %gep105.8, align 8, !tbaa !14
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !36 ; 2 uses
  %i.fy = load <2 x double>, ptr %gep.8153, align 8, !tbaa !18 ; 2 uses
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !36 ; 2 uses
  %i.gc = extractelement <2 x double> %i.fz, i64 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.gf = extractelement <2 x double> %i.ge, i64 1
  %i.gg = shufflevector <2 x double> %i.fz, <2 x double> %i.ge, <2 x i32> <i32 1, i32 2>
  %i.gh = fsub <2 x double> %i.gg, %i.aw          ; 2 uses
  %i.gi = extractelement <2 x double> %i.gh, i64 0
  store double %i.gi, ptr %i.fx, align 8, !tbaa !18
  store double %i.gc, ptr %i.gb, align 8, !tbaa !18
  store double %i.gf, ptr %i.gd, align 8, !tbaa !18
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gk = extractelement <2 x double> %i.gh, i64 1
  store double %i.gk, ptr %i.gj, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.fv, ptr noundef %i.fw, i64 noundef 2, i64 noundef 2) #9
  %gep.9154 = getelementptr inbounds nuw i8, ptr %invariant.gep143, i64 144
  %gep103.9 = getelementptr inbounds nuw i8, ptr %invariant.gep102, i64 720
  %i.gl = load ptr, ptr %gep103.9, align 8, !tbaa !14 ; 3 uses
  %gep105.9 = getelementptr inbounds nuw i8, ptr %invariant.gep104, i64 720
  %i.gm = load ptr, ptr %gep105.9, align 8, !tbaa !14
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !36 ; 2 uses
  %i.go = load <2 x double>, ptr %gep.9154, align 8, !tbaa !18 ; 2 uses
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ah) ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !36 ; 2 uses
  %i.gs = extractelement <2 x double> %i.gp, i64 0
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> splat (double -4.660000e-16), <2 x double> %i.ag) ; 2 uses
  %i.gv = extractelement <2 x double> %i.gu, i64 1
  %i.gw = shufflevector <2 x double> %i.gp, <2 x double> %i.gu, <2 x i32> <i32 1, i32 2>
  %i.gx = fsub <2 x double> %i.gw, %i.aw          ; 2 uses
  %i.gy = extractelement <2 x double> %i.gx, i64 0
  store double %i.gy, ptr %i.gn, align 8, !tbaa !18
  store double %i.gs, ptr %i.gr, align 8, !tbaa !18
  store double %i.gv, ptr %i.gt, align 8, !tbaa !18
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.ha = extractelement <2 x double> %i.gx, i64 1
  store double %i.ha, ptr %i.gz, align 8, !tbaa !18
  tail call void @SUNDlsMat_denseCopy(ptr noundef nonnull %i.gl, ptr noundef %i.gm, i64 noundef 2, i64 noundef 2) #9
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next123, 10
  br i1 %exitcond125.not, label %.loopexit94, label %bb.c

.loopexit94:                                      ; preds = %.preheader95, %bb.c
  %storemerge = phi i32 [ 1, %bb.c ], [ 0, %.preheader95 ]
  store i32 %storemerge, ptr %4, align 4, !tbaa !26
  %i.hb = fneg double %5                          ; 10 uses
  br label %.preheader93

.preheader93:                                     ; preds = %.loopexit94, %.preheader93
  %indvars.iv130 = phi i64 [ 0, %.loopexit94 ], [ %indvars.iv.next131, %.preheader93 ] ; 2 uses
  %invariant.gep108 = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv130 ; 10 uses
  %i.hc = load ptr, ptr %invariant.gep108, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hc, i64 noundef 2, i64 noundef 2) #9
  %gep109.1 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 80
  %i.hd = load ptr, ptr %gep109.1, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hd, i64 noundef 2, i64 noundef 2) #9
  %gep109.2 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 160
  %i.he = load ptr, ptr %gep109.2, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.he, i64 noundef 2, i64 noundef 2) #9
  %gep109.3 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 240
  %i.hf = load ptr, ptr %gep109.3, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hf, i64 noundef 2, i64 noundef 2) #9
  %gep109.4 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 320
  %i.hg = load ptr, ptr %gep109.4, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hg, i64 noundef 2, i64 noundef 2) #9
  %gep109.5 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 400
  %i.hh = load ptr, ptr %gep109.5, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hh, i64 noundef 2, i64 noundef 2) #9
  %gep109.6 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 480
  %i.hi = load ptr, ptr %gep109.6, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hi, i64 noundef 2, i64 noundef 2) #9
  %gep109.7 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 560
  %i.hj = load ptr, ptr %gep109.7, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hj, i64 noundef 2, i64 noundef 2) #9
  %gep109.8 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 640
  %i.hk = load ptr, ptr %gep109.8, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hk, i64 noundef 2, i64 noundef 2) #9
  %gep109.9 = getelementptr inbounds nuw i8, ptr %invariant.gep108, i64 720
  %i.hl = load ptr, ptr %gep109.9, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseScale(double noundef %i.hb, ptr noundef %i.hl, i64 noundef 2, i64 noundef 2) #9
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next131, 10
  br i1 %exitcond133.not, label %.preheader, label %.preheader93

.preheader:                                       ; preds = %.preheader93, %bb.m
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.m ], [ 0, %.preheader93 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [80 x i8], ptr %6, i64 %indvars.iv138 ; 11 uses
  %i.hn = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %indvars.iv138 ; 10 uses
  %i.ho = load ptr, ptr %i.hm, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.ho, i64 noundef 2) #9
  %i.hp = load ptr, ptr %i.hm, align 8, !tbaa !14
  %i.hq = load ptr, ptr %i.hn, align 8, !tbaa !16
  %i.hr = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.hp, i64 noundef 2, i64 noundef 2, ptr noundef %i.hq) #9
  %.not90 = icmp eq i64 %i.hr, 0
  br i1 %.not90, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.preheader
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.ht, i64 noundef 2) #9
  %i.hu = load ptr, ptr %i.hs, align 8, !tbaa !14
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !16
  %i.hx = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.hu, i64 noundef 2, i64 noundef 2, ptr noundef %i.hw) #9
  %.not90.1 = icmp eq i64 %i.hx, 0
  br i1 %.not90.1, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.hz, i64 noundef 2) #9
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !14
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !16
  %i.id = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.ia, i64 noundef 2, i64 noundef 2, ptr noundef %i.ic) #9
  %.not90.2 = icmp eq i64 %i.id, 0
  br i1 %.not90.2, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hm, i64 24 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.if, i64 noundef 2) #9
  %i.ig = load ptr, ptr %i.ie, align 8, !tbaa !14
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !16
  %i.ij = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.ig, i64 noundef 2, i64 noundef 2, ptr noundef %i.ii) #9
  %.not90.3 = icmp eq i64 %i.ij, 0
  br i1 %.not90.3, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hm, i64 32 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.il, i64 noundef 2) #9
  %i.im = load ptr, ptr %i.ik, align 8, !tbaa !14
  %i.in = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !16
  %i.ip = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.im, i64 noundef 2, i64 noundef 2, ptr noundef %i.io) #9
  %.not90.4 = icmp eq i64 %i.ip, 0
  br i1 %.not90.4, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hm, i64 40 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.ir, i64 noundef 2) #9
  %i.is = load ptr, ptr %i.iq, align 8, !tbaa !14
  %i.it = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !16
  %i.iv = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.is, i64 noundef 2, i64 noundef 2, ptr noundef %i.iu) #9
  %.not90.5 = icmp eq i64 %i.iv, 0
  br i1 %.not90.5, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hm, i64 48 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.ix, i64 noundef 2) #9
  %i.iy = load ptr, ptr %i.iw, align 8, !tbaa !14
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !16
  %i.jb = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.iy, i64 noundef 2, i64 noundef 2, ptr noundef %i.ja) #9
  %.not90.6 = icmp eq i64 %i.jb, 0
  br i1 %.not90.6, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hm, i64 56 ; 2 uses
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.jd, i64 noundef 2) #9
  %i.je = load ptr, ptr %i.jc, align 8, !tbaa !14
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !16
  %i.jh = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.je, i64 noundef 2, i64 noundef 2, ptr noundef %i.jg) #9
  %.not90.7 = icmp eq i64 %i.jh, 0
  br i1 %.not90.7, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hm, i64 64 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.jj, i64 noundef 2) #9
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !14
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !16
  %i.jn = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.jk, i64 noundef 2, i64 noundef 2, ptr noundef %i.jm) #9
  %.not90.8 = icmp eq i64 %i.jn, 0
  br i1 %.not90.8, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hm, i64 72 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !14
  tail call void @SUNDlsMat_denseAddIdentity(ptr noundef %i.jp, i64 noundef 2) #9
  %i.jq = load ptr, ptr %i.jo, align 8, !tbaa !14
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hn, i64 72
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !16
  %i.jt = tail call i64 @SUNDlsMat_denseGETRF(ptr noundef %i.jq, i64 noundef 2, i64 noundef 2, ptr noundef %i.js) #9
  %.not90.9 = icmp eq i64 %i.jt, 0
  br i1 %.not90.9, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, 10
  br i1 %exitcond141.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.089 = phi i32 [ 1, %.preheader ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %bb.g ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.m ]
  ret i32 %.089
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @PSolve(double %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr noundef %3, ptr noundef %4, double %5, double %6, i32 %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 1600
  %i.b = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #9 ; 10 uses
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %3, ptr noundef %4) #9
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %i.c = shl nuw nsw i64 %indvars.iv, 1           ; 10 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %8, i64 %indvars.iv ; 10 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %indvars.iv ; 10 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.g, i64 noundef 2, ptr noundef %i.h, ptr noundef %i.f) #9
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.l, i64 noundef 2, ptr noundef %i.n, ptr noundef nonnull %i.j) #9
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.r, i64 noundef 2, ptr noundef %i.t, ptr noundef nonnull %i.p) #9
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 480
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.x, i64 noundef 2, ptr noundef %i.z, ptr noundef nonnull %i.v) #9
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 640
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.ad, i64 noundef 2, ptr noundef %i.af, ptr noundef nonnull %i.ab) #9
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 800
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.aj, i64 noundef 2, ptr noundef %i.al, ptr noundef nonnull %i.ah) #9
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 960
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.ap, i64 noundef 2, ptr noundef %i.ar, ptr noundef nonnull %i.an) #9
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1120
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.av, i64 noundef 2, ptr noundef %i.ax, ptr noundef nonnull %i.at) #9
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1280
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.bb, i64 noundef 2, ptr noundef %i.bd, ptr noundef nonnull %i.az) #9
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1440
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.bh, i64 noundef 2, ptr noundef %i.bj, ptr noundef nonnull %i.bf) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @CVode(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintOutput(ptr noundef %0, ptr noundef %1, double noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = tail call ptr @N_VGetArrayPointer(ptr noundef %1) #9 ; 6 uses
  %i.e = call i32 @CVodeGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.h = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.13, i32 noundef %i.e) #10 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.i = call i32 @CVodeGetLastOrder(ptr noundef %0, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %check_retval.exit19

bb.c:                                             ; preds = %check_retval.exit
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.l = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.14, i32 noundef %i.i) #10 ; 0 uses
  br label %check_retval.exit19

check_retval.exit19:                              ; preds = %check_retval.exit, %bb.c
  %i.m = call i32 @CVodeGetLastStep(ptr noundef %0, ptr noundef nonnull %i.c) #9 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %check_retval.exit21

bb.d:                                             ; preds = %check_retval.exit19
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.p = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.15, i32 noundef %i.m) #10 ; 0 uses
  br label %check_retval.exit21

check_retval.exit21:                              ; preds = %check_retval.exit19, %bb.d
  %i.q = load i64, ptr %i.a, align 8, !tbaa !28
  %i.r = load i32, ptr %i.b, align 4, !tbaa !26
  %i.s = load double, ptr %i.c, align 8, !tbaa !18
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %2, i64 noundef %i.q, i32 noundef %i.r, double noundef %i.s) ; 0 uses
  %i.u = load double, ptr %i.d, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 704
  %i.w = load double, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 1584
  %i.y = load double, ptr %i.x, align 8, !tbaa !18
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %i.u, double noundef %i.w, double noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 712
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1592
  %i.af = load double, ptr %i.ae, align 8, !tbaa !18
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, double noundef %i.ab, double noundef %i.ad, double noundef %i.af) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

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
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca i64, align 8                      ; 4 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
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
  %i.p = call i32 @CVodeGetWorkSpace(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.b, label %check_retval.exit

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.s = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.19, i32 noundef %i.p) #10 ; 0 uses
  br label %check_retval.exit

check_retval.exit:                                ; preds = %bb.a, %bb.b
  %i.t = call i32 @CVodeGetNumSteps(ptr noundef %0, ptr noundef nonnull %i.e) #9 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %bb.c, label %check_retval.exit14

bb.c:                                             ; preds = %check_retval.exit
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.w = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.13, i32 noundef %i.t) #10 ; 0 uses
  br label %check_retval.exit14

check_retval.exit14:                              ; preds = %check_retval.exit, %bb.c
  %i.x = call i32 @CVodeGetNumRhsEvals(ptr noundef %0, ptr noundef nonnull %i.f) #9 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %check_retval.exit16

bb.d:                                             ; preds = %check_retval.exit14
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.20, i32 noundef %i.x) #10 ; 0 uses
  br label %check_retval.exit16

check_retval.exit16:                              ; preds = %check_retval.exit14, %bb.d
  %i.ab = call i32 @CVodeGetNumLinSolvSetups(ptr noundef %0, ptr noundef nonnull %i.g) #9 ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %check_retval.exit18

bb.e:                                             ; preds = %check_retval.exit16
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.21, i32 noundef %i.ab) #10 ; 0 uses
  br label %check_retval.exit18

check_retval.exit18:                              ; preds = %check_retval.exit16, %bb.e
  %i.af = call i32 @CVodeGetNumErrTestFails(ptr noundef %0, ptr noundef nonnull %i.j) #9 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.f, label %check_retval.exit20

bb.f:                                             ; preds = %check_retval.exit18
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.22, i32 noundef %i.af) #10 ; 0 uses
  br label %check_retval.exit20

check_retval.exit20:                              ; preds = %check_retval.exit18, %bb.f
  %i.aj = call i32 @CVodeGetNumNonlinSolvIters(ptr noundef %0, ptr noundef nonnull %i.h) #9 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.g, label %check_retval.exit22

bb.g:                                             ; preds = %check_retval.exit20
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.23, i32 noundef %i.aj) #10 ; 0 uses
  br label %check_retval.exit22

check_retval.exit22:                              ; preds = %check_retval.exit20, %bb.g
  %i.an = call i32 @CVodeGetNumNonlinSolvConvFails(ptr noundef %0, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %bb.h, label %check_retval.exit24

bb.h:                                             ; preds = %check_retval.exit22
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.24, i32 noundef %i.an) #10 ; 0 uses
  br label %check_retval.exit24

check_retval.exit24:                              ; preds = %check_retval.exit22, %bb.h
  %i.ar = call i32 @CVodeGetLinWorkSpace(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #9 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.i, label %check_retval.exit26

bb.i:                                             ; preds = %check_retval.exit24
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.25, i32 noundef %i.ar) #10 ; 0 uses
  br label %check_retval.exit26

check_retval.exit26:                              ; preds = %check_retval.exit24, %bb.i
  %i.av = call i32 @CVodeGetNumLinIters(ptr noundef %0, ptr noundef nonnull %i.k) #9 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.j, label %check_retval.exit28

bb.j:                                             ; preds = %check_retval.exit26
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.26, i32 noundef %i.av) #10 ; 0 uses
  br label %check_retval.exit28

check_retval.exit28:                              ; preds = %check_retval.exit26, %bb.j
  %i.az = call i32 @CVodeGetNumPrecEvals(ptr noundef %0, ptr noundef nonnull %i.l) #9 ; 2 uses
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %check_retval.exit30

bb.k:                                             ; preds = %check_retval.exit28
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.27, i32 noundef %i.az) #10 ; 0 uses
  br label %check_retval.exit30

check_retval.exit30:                              ; preds = %check_retval.exit28, %bb.k
  %i.bd = call i32 @CVodeGetNumPrecSolves(ptr noundef %0, ptr noundef nonnull %i.m) #9 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.l, label %check_retval.exit32

bb.l:                                             ; preds = %check_retval.exit30
  %i.bf = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.28, i32 noundef %i.bd) #10 ; 0 uses
  br label %check_retval.exit32

check_retval.exit32:                              ; preds = %check_retval.exit30, %bb.l
  %i.bh = call i32 @CVodeGetNumLinConvFails(ptr noundef %0, ptr noundef nonnull %i.n) #9 ; 2 uses
  %i.bi = icmp slt i32 %i.bh, 0
  br i1 %i.bi, label %bb.m, label %check_retval.exit34

bb.m:                                             ; preds = %check_retval.exit32
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.29, i32 noundef %i.bh) #10 ; 0 uses
  br label %check_retval.exit34

check_retval.exit34:                              ; preds = %check_retval.exit32, %bb.m
  %i.bl = call i32 @CVodeGetNumLinRhsEvals(ptr noundef %0, ptr noundef nonnull %i.o) #9 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %check_retval.exit36

bb.n:                                             ; preds = %check_retval.exit34
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30, i32 noundef %i.bl) #10 ; 0 uses
  br label %check_retval.exit36

check_retval.exit36:                              ; preds = %check_retval.exit34, %bb.n
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !28
  %i.bq = load i64, ptr %i.b, align 8, !tbaa !28
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i64 noundef %i.bp, i64 noundef %i.bq) ; 0 uses
  %i.bs = load i64, ptr %i.c, align 8, !tbaa !28
  %i.bt = load i64, ptr %i.d, align 8, !tbaa !28
  %i.bu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i64 noundef %i.bs, i64 noundef %i.bt) ; 0 uses
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !28
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %i.bv) ; 0 uses
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !28
  %i.by = load i64, ptr %i.o, align 8, !tbaa !28
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i64 noundef %i.bx, i64 noundef %i.by) ; 0 uses
  %i.ca = load i64, ptr %i.h, align 8, !tbaa !28
  %i.cb = load i64, ptr %i.k, align 8, !tbaa !28
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i64 noundef %i.ca, i64 noundef %i.cb) ; 0 uses
  %i.cd = load i64, ptr %i.g, align 8, !tbaa !28
  %i.ce = load i64, ptr %i.j, align 8, !tbaa !28
  %i.cf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i64 noundef %i.cd, i64 noundef %i.ce) ; 0 uses
  %i.cg = load i64, ptr %i.l, align 8, !tbaa !28
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !28
  %i.ci = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i64 noundef %i.cg, i64 noundef %i.ch) ; 0 uses
  %i.cj = load i64, ptr %i.i, align 8, !tbaa !28
  %i.ck = load i64, ptr %i.n, align 8, !tbaa !28
  %i.cl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i64 noundef %i.cj, i64 noundef %i.ck) ; 0 uses
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
  ret void
}

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @FreeUserData(ptr noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1600
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %indvars.iv ; 10 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %i.a, i64 %indvars.iv ; 10 uses
  %i.e = getelementptr inbounds nuw [80 x i8], ptr %i.b, i64 %indvars.iv ; 10 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.f) #9
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.g) #9
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.h) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.l) #9
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.n) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.p) #9
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.r) #9
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.t) #9
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.v) #9
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.x) #9
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.z) #9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ab) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ad) #9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.af) #9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ah) #9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.aj) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.al) #9
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.an) #9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.ap) #9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ar) #9
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.at) #9
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.av) #9
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.ax) #9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.az) #9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bb) #9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bd) #9
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bf) #9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14
  tail call void @SUNDlsMat_destroyMat(ptr noundef %i.bh) #9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !16
  tail call void @SUNDlsMat_destroyArray(ptr noundef %i.bj) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  tail call void @free(ptr noundef nonnull %0) #9
  ret void
}

declare void @CVodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSolFree(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare ptr @SUNDlsMat_newDenseMat(i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDlsMat_newIndexArray(i64 noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyMat(ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_destroyArray(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare ptr @N_VGetArrayPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare i32 @CVodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetLastOrder(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetLastStep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetWorkSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinSolvSetups(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumErrTestFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumNonlinSolvIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumNonlinSolvConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetLinWorkSpace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinIters(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumPrecEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumPrecSolves(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinConvFails(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeGetNumLinRhsEvals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

declare void @SUNDlsMat_denseCopy(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @SUNDlsMat_denseScale(double noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @SUNDlsMat_denseAddIdentity(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @SUNDlsMat_denseGETRF(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SUNDlsMat_denseGETRS(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

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
!12 = !{!"any p2 pointer", !9, i64 0}
!13 = !{!"p2 double", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"p1 long", !9, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"", !5, i64 0, !5, i64 800, !5, i64 1600, !17, i64 2400, !17, i64 2408, !17, i64 2416, !17, i64 2424, !17, i64 2432, !17, i64 2440, !17, i64 2448}
!20 = !{!19, !17, i64 2408}
!21 = !{!19, !17, i64 2400}
!22 = !{!19, !17, i64 2424}
!23 = !{!19, !17, i64 2448}
!24 = !{!19, !17, i64 2432}
!25 = !{!"llvm.loop.peeled.count", i32 2}
!26 = !{!6, !6, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTS11SUNContext_", !9, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!9, !9, i64 0}
!32 = distinct !{!32, !25}
!33 = !{!19, !17, i64 2440}
!34 = distinct !{!34, !25}
!35 = !{!"p1 double", !9, i64 0}
!36 = !{!35, !35, i64 0}
end_hunk_0
