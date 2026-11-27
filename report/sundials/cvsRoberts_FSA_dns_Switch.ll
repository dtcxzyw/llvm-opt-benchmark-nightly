Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvsRoberts_FSA_dns_Switch?download=true
inline.NumInlined: 32
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.5 = private unnamed_addr constant [18 x i8] c"CVodeSVtolerances\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"CVodeSetUserData\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"CVodeSetMaxNumSteps\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"SUNDenseMatrix\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"SUNLinSol_Dense\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"CVodeSetLinearSolver\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"CVodeSetJacFn\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"CVodeSensInit1\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"CVodeSetSensParams\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"CVodeSensEEtolerances\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"CVodeSetSensErrCon\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"runCVode\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"CVodeReInit\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"CVodeSensToggleOff\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Sensitivity: \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"YES (\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"SIMULTANEOUS + \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"STAGGERED + \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"STAGGERED-1 + \00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"FULL ERROR CONTROL + \00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"PARTIAL ERROR CONTROL + \00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"Parameters: [%8.4e  %8.4e  %8.4e]\0A\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"   nst     = %5ld\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"   nfe     = %5ld\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"   netf    = %5ld    nsetups  = %5ld\0A\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"   nni     = %5ld    ncfn     = %5ld\0A\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"   njeD    = %5ld    nfeD     = %5ld\0A\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"   nfSe    = %5ld    nfeS     = %5ld\0A\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"   netfs   = %5ld    nsetupsS = %5ld\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"   nniS    = %5ld    ncfnS    = %5ld\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [48 x i8] c"\0ASUNDIALS_ERROR: %s() failed with retval = %d\0A\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [31 x i8] c"user-provided sensitivity RHS)\00", align 1
@str.2 = private unnamed_addr constant [20 x i8] c"DQ sensitivity RHS)\00", align 1
@str.3 = private unnamed_addr constant [16 x i8] c"Run statistics:\00", align 1
@str.4 = private unnamed_addr constant [39 x i8] c"   -----------------------------------\00", align 1
@switch.table.runCVode = private unnamed_addr constant [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !25
  %i.c = call i32 @SUNContext_Create(i32 noundef 0, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.f = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str, i32 noundef %i.c) #11 ; 0 uses
  br label %bb.af

bb.b:                                             ; preds = %bb.a
  %i.g = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #12 ; 17 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store <2 x double> <double 4.000000e-02, double 1.000000e+04>, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 4 uses
  store double 3.000000e+07, ptr %i.i, align 8, !tbaa !12
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.k = call ptr @N_VNew_Serial(i64 noundef 3, ptr noundef %i.j) #10 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %check_retval.exit141, label %bb.c

check_retval.exit141:                             ; preds = %bb.b
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.1) #11 ; 0 uses
  br label %bb.af

bb.c:                                             ; preds = %bb.b
  %i.o = call ptr @N_VClone(ptr noundef nonnull %i.k) #10 ; 10 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %check_retval.exit143, label %bb.d

check_retval.exit143:                             ; preds = %bb.c
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.r = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2) #11 ; 0 uses
  br label %bb.af

bb.d:                                             ; preds = %bb.c
  %i.s = call ptr @N_VClone(ptr noundef nonnull %i.k) #10 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %check_retval.exit145, label %bb.e

check_retval.exit145:                             ; preds = %bb.d
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.v = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.u, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2) #11 ; 0 uses
  br label %bb.af

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  store <2 x double> <double 1.000000e-08, double f0x3D06849B86A12B9B>, ptr %i.ac, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store double f0x3EB0C6F7A0B5ED8D, ptr %i.ad, align 8, !tbaa !12
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.af = call ptr @CVodeCreate(i32 noundef 2, ptr noundef %i.ae) #10 ; 28 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !28
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %check_retval.exit147, label %bb.f

check_retval.exit147:                             ; preds = %bb.e
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.3) #11 ; 0 uses
  br label %bb.af

bb.f:                                             ; preds = %bb.e
  %i.aj = call i32 @CVodeInit(ptr noundef nonnull %i.af, ptr noundef nonnull @f, double noundef 0.000000e+00, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %check_retval.exit149, label %bb.g

check_retval.exit149:                             ; preds = %bb.f
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.4, i32 noundef %i.aj) #11 ; 0 uses
  br label %bb.af

bb.g:                                             ; preds = %bb.f
  %i.an = call i32 @CVodeSVtolerances(ptr noundef nonnull %i.af, double noundef f0x3EB0C6F7A0B5ED8D, ptr noundef nonnull %i.s) #10 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %check_retval.exit151, label %bb.h

check_retval.exit151:                             ; preds = %bb.g
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.5, i32 noundef %i.an) #11 ; 0 uses
  br label %bb.af

bb.h:                                             ; preds = %bb.g
  %i.ar = call i32 @CVodeSetUserData(ptr noundef nonnull %i.af, ptr noundef nonnull %i.g) #10 ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %check_retval.exit153, label %bb.i

check_retval.exit153:                             ; preds = %bb.h
  %i.at = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.at, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.6, i32 noundef %i.ar) #11 ; 0 uses
  br label %bb.af

bb.i:                                             ; preds = %bb.h
  %i.av = call i32 @CVodeSetMaxNumSteps(ptr noundef nonnull %i.af, i64 noundef 2000) #10 ; 2 uses
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %check_retval.exit155, label %bb.j

check_retval.exit155:                             ; preds = %bb.i
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ax, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.7, i32 noundef %i.av) #11 ; 0 uses
  br label %bb.af

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.ba = call ptr @SUNDenseMatrix(i64 noundef 3, i64 noundef 3, ptr noundef %i.az) #10 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %check_retval.exit157, label %bb.k

check_retval.exit157:                             ; preds = %bb.j
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8) #11 ; 0 uses
  br label %bb.af

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.bf = call ptr @SUNLinSol_Dense(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ba, ptr noundef %i.be) #10 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %check_retval.exit159, label %bb.l

check_retval.exit159:                             ; preds = %bb.k
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bh, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %bb.af

bb.l:                                             ; preds = %bb.k
  %i.bj = call i32 @CVodeSetLinearSolver(ptr noundef nonnull %i.af, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.ba) #10 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %check_retval.exit161, label %bb.m

check_retval.exit161:                             ; preds = %bb.l
  %i.bl = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bl, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.10, i32 noundef %i.bj) #11 ; 0 uses
  br label %bb.af

bb.m:                                             ; preds = %bb.l
  %i.bn = call i32 @CVodeSetJacFn(ptr noundef nonnull %i.af, ptr noundef nonnull @Jac) #10 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %check_retval.exit163, label %bb.n

check_retval.exit163:                             ; preds = %bb.m
  %i.bp = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.bq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bp, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.11, i32 noundef %i.bn) #11 ; 0 uses
  br label %bb.af

bb.n:                                             ; preds = %bb.m
  %2 = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store <4 x i32> <i32 1, i32 1, i32 0, i32 1>, ptr %i.g, align 8, !tbaa !29
  %i.bs = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #12 ; 4 uses
  %i.bt = load <2 x double>, ptr %i.h, align 8, !tbaa !12
  store <2 x double> %i.bt, ptr %i.bs, align 8, !tbaa !12
  %i.bu = load double, ptr %i.i, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store double %i.bu, ptr %i.bv, align 8, !tbaa !12
  %i.bw = call noalias dereferenceable_or_null(12) ptr @malloc(i64 noundef 12) #12 ; 5 uses
  store i32 0, ptr %i.bw, align 4, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 1, ptr %i.bx, align 4, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i32 2, ptr %i.by, align 4, !tbaa !29
  %i.bz = call ptr @N_VCloneVectorArray(i32 noundef 3, ptr noundef nonnull %i.o) #10 ; 7 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !31
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.ca) #10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !31
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.cc) #10
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !31
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef %i.ce) #10
  %i.cf = call ptr @N_VCloneVectorArray(i32 noundef 3, ptr noundef nonnull %i.o) #10
  %i.cg = load i32, ptr %2, align 4, !tbaa !21
  %i.ch = call i32 @CVodeSensInit1(ptr noundef nonnull %i.af, i32 noundef 3, i32 noundef %i.cg, ptr noundef nonnull @fS, ptr noundef nonnull %i.bz) #10 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %check_retval.exit165, label %bb.o

check_retval.exit165:                             ; preds = %bb.n
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ck = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.12, i32 noundef %i.ch) #11 ; 0 uses
  br label %bb.af

bb.o:                                             ; preds = %bb.n
  %i.cl = call i32 @CVodeSetSensParams(ptr noundef nonnull %i.af, ptr noundef nonnull %i.h, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bw) #10 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %check_retval.exit167, label %bb.p

check_retval.exit167:                             ; preds = %bb.o
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.co = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.13, i32 noundef %i.cl) #11 ; 0 uses
  br label %bb.af

bb.p:                                             ; preds = %bb.o
  %i.cp = call i32 @CVodeSensEEtolerances(ptr noundef nonnull %i.af) #10 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %check_retval.exit169, label %bb.q

check_retval.exit169:                             ; preds = %bb.p
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cr, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.14, i32 noundef %i.cp) #11 ; 0 uses
  br label %bb.af

bb.q:                                             ; preds = %bb.p
  %i.ct = load i32, ptr %3, align 4, !tbaa !22
  %i.cu = call i32 @CVodeSetSensErrCon(ptr noundef nonnull %i.af, i32 noundef %i.ct) #10 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %check_retval.exit171, label %bb.r

check_retval.exit171:                             ; preds = %bb.q
  %i.cw = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.cx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cw, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.15, i32 noundef %i.cu) #11 ; 0 uses
  br label %bb.af

bb.r:                                             ; preds = %bb.q
  %i.cy = call fastcc i32 @runCVode(ptr noundef nonnull %i.af, ptr noundef nonnull %i.o, ptr noundef nonnull %i.g) ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 0
  br i1 %i.cz, label %check_retval.exit173, label %bb.s

check_retval.exit173:                             ; preds = %bb.r
  %i.da = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.db = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.da, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.16, i32 noundef %i.cy) #11 ; 0 uses
  br label %bb.af

bb.s:                                             ; preds = %bb.r
  store <2 x double> <double 5.000000e-02, double 2.000000e+04>, ptr %i.h, align 8, !tbaa !12
  store double 2.900000e+07, ptr %i.i, align 8, !tbaa !12
  store i32 0, ptr %i.g, align 8, !tbaa !23
  %i.dc = call i32 @CVodeReInit(ptr noundef nonnull %i.af, double noundef 0.000000e+00, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %check_retval.exit175, label %bb.t

check_retval.exit175:                             ; preds = %bb.s
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.df = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.de, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.17, i32 noundef %i.dc) #11 ; 0 uses
  br label %bb.af

bb.t:                                             ; preds = %bb.s
  %i.dg = call i32 @CVodeSensToggleOff(ptr noundef nonnull %i.af) #10 ; 2 uses
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %check_retval.exit177, label %bb.u

check_retval.exit177:                             ; preds = %bb.t
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.dj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.di, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.18, i32 noundef %i.dg) #11 ; 0 uses
  br label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.dk = call fastcc i32 @runCVode(ptr noundef nonnull %i.af, ptr noundef nonnull %i.o, ptr noundef nonnull %i.g) ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %check_retval.exit179, label %bb.v

check_retval.exit179:                             ; preds = %bb.u
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.dn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.16, i32 noundef %i.dk) #11 ; 0 uses
  br label %bb.af

bb.v:                                             ; preds = %bb.u
  store <2 x double> <double 6.000000e-02, double 3.000000e+04>, ptr %i.h, align 8, !tbaa !12
  store double 2.800000e+07, ptr %i.i, align 8, !tbaa !12
  store i32 1, ptr %i.g, align 8, !tbaa !23
  store i32 1, ptr %i.br, align 8, !tbaa !24
  %i.do = call i32 @CVodeReInit(ptr noundef nonnull %i.af, double noundef 0.000000e+00, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %check_retval.exit181, label %bb.w

check_retval.exit181:                             ; preds = %bb.v
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.dr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.17, i32 noundef %i.do) #11 ; 0 uses
  br label %bb.af

bb.w:                                             ; preds = %bb.v
  call void @CVodeSensFree(ptr noundef nonnull %i.af) #10
  %i.ds = load i32, ptr %2, align 4, !tbaa !21
  %i.dt = call i32 @CVodeSensInit1(ptr noundef nonnull %i.af, i32 noundef 3, i32 noundef %i.ds, ptr noundef null, ptr noundef nonnull %i.bz) #10 ; 2 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %check_retval.exit183, label %bb.x

check_retval.exit183:                             ; preds = %bb.w
  %i.dv = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.dw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dv, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.12, i32 noundef %i.dt) #11 ; 0 uses
  br label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.dx = call fastcc i32 @runCVode(ptr noundef nonnull %i.af, ptr noundef nonnull %i.o, ptr noundef nonnull %i.g) ; 2 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %check_retval.exit185, label %bb.y

check_retval.exit185:                             ; preds = %bb.x
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.16, i32 noundef %i.dx) #11 ; 0 uses
  br label %bb.af

bb.y:                                             ; preds = %bb.x
  store <4 x i32> <i32 1, i32 0, i32 0, i32 2>, ptr %i.g, align 8, !tbaa !29
  %i.eb = call i32 @CVodeReInit(ptr noundef nonnull %i.af, double noundef 0.000000e+00, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %check_retval.exit187, label %bb.z

check_retval.exit187:                             ; preds = %bb.y
  %i.ed = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ee = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ed, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.17, i32 noundef %i.eb) #11 ; 0 uses
  br label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ef = load i32, ptr %3, align 4, !tbaa !22
  %i.eg = call i32 @CVodeSetSensErrCon(ptr noundef nonnull %i.af, i32 noundef %i.ef) #10 ; 2 uses
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %check_retval.exit189, label %bb.aa

check_retval.exit189:                             ; preds = %bb.z
  %i.ei = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ej = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.15, i32 noundef %i.eg) #11 ; 0 uses
  br label %bb.af

bb.aa:                                            ; preds = %bb.z
  call void @CVodeSensFree(ptr noundef nonnull %i.af) #10
  %i.ek = load i32, ptr %2, align 4, !tbaa !21
  %i.el = call i32 @CVodeSensInit1(ptr noundef nonnull %i.af, i32 noundef 3, i32 noundef %i.ek, ptr noundef nonnull @fS, ptr noundef nonnull %i.bz) #10 ; 2 uses
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %check_retval.exit191, label %bb.ab

check_retval.exit191:                             ; preds = %bb.aa
  %i.en = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.eo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.en, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.12, i32 noundef %i.el) #11 ; 0 uses
  br label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ep = call fastcc i32 @runCVode(ptr noundef nonnull %i.af, ptr noundef nonnull %i.o, ptr noundef nonnull %i.g) ; 2 uses
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %check_retval.exit193, label %bb.ac

check_retval.exit193:                             ; preds = %bb.ab
  %i.er = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.es = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.er, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.16, i32 noundef %i.ep) #11 ; 0 uses
  br label %bb.af

bb.ac:                                            ; preds = %bb.ab
  store i32 0, ptr %i.g, align 8, !tbaa !23
  call void @CVodeSensFree(ptr noundef nonnull %i.af) #10
  %i.et = call i32 @CVodeReInit(ptr noundef nonnull %i.af, double noundef 0.000000e+00, ptr noundef nonnull %i.k) #10 ; 2 uses
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %check_retval.exit195, label %bb.ad

check_retval.exit195:                             ; preds = %bb.ac
  %i.ev = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ew = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.17, i32 noundef %i.et) #11 ; 0 uses
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ex = call fastcc i32 @runCVode(ptr noundef nonnull %i.af, ptr noundef nonnull %i.o, ptr noundef nonnull %i.g) ; 2 uses
  %i.ey = icmp slt i32 %i.ex, 0
  br i1 %i.ey, label %check_retval.exit197, label %bb.ae

check_retval.exit197:                             ; preds = %bb.ad
  %i.ez = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.fa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ez, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.16, i32 noundef %i.ex) #11 ; 0 uses
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @N_VDestroy(ptr noundef nonnull %i.k) #10
  call void @N_VDestroy(ptr noundef nonnull %i.o) #10
  call void @N_VDestroy(ptr noundef nonnull %i.s) #10
  call void @N_VDestroyVectorArray(ptr noundef nonnull %i.bz, i32 noundef 3) #10
  call void @N_VDestroyVectorArray(ptr noundef %i.cf, i32 noundef 3) #10
  call void @free(ptr noundef nonnull %i.bw) #10
  call void @free(ptr noundef nonnull %i.bs) #10
  call void @free(ptr noundef nonnull %i.g) #10
  call void @CVodeFree(ptr noundef nonnull %i.a) #10
  %i.fb = call i32 @SUNLinSolFree(ptr noundef nonnull %i.bf) #10 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.ba) #10
  %i.fc = call i32 @SUNContext_Free(ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %check_retval.exit197, %check_retval.exit195, %check_retval.exit193, %check_retval.exit191, %check_retval.exit189, %check_retval.exit187, %check_retval.exit185, %check_retval.exit183, %check_retval.exit181, %check_retval.exit179, %check_retval.exit177, %check_retval.exit175, %check_retval.exit173, %check_retval.exit171, %check_retval.exit169, %check_retval.exit167, %check_retval.exit165, %check_retval.exit163, %check_retval.exit161, %check_retval.exit159, %check_retval.exit157, %check_retval.exit155, %check_retval.exit153, %check_retval.exit151, %check_retval.exit149, %check_retval.exit147, %check_retval.exit145, %check_retval.exit143, %check_retval.exit141, %check_retval.exit, %bb.ae
  %.0110 = phi i32 [ 0, %bb.ae ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit141 ], [ 1, %check_retval.exit143 ], [ 1, %check_retval.exit145 ], [ 1, %check_retval.exit147 ], [ 1, %check_retval.exit149 ], [ 1, %check_retval.exit151 ], [ 1, %check_retval.exit153 ], [ 1, %check_retval.exit155 ], [ 1, %check_retval.exit157 ], [ 1, %check_retval.exit159 ], [ 1, %check_retval.exit161 ], [ 1, %check_retval.exit163 ], [ 1, %check_retval.exit165 ], [ 1, %check_retval.exit167 ], [ 1, %check_retval.exit169 ], [ 1, %check_retval.exit171 ], [ 1, %check_retval.exit173 ], [ 1, %check_retval.exit175 ], [ 1, %check_retval.exit177 ], [ 1, %check_retval.exit179 ], [ 1, %check_retval.exit181 ], [ 1, %check_retval.exit183 ], [ 1, %check_retval.exit185 ], [ 1, %check_retval.exit187 ], [ 1, %check_retval.exit189 ], [ 1, %check_retval.exit191 ], [ 1, %check_retval.exit193 ], [ 1, %check_retval.exit195 ], [ 1, %check_retval.exit197 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare ptr @CVodeCreate(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeInit(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @f(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !12 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.l = load double, ptr %i.k, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.n = load double, ptr %i.m, align 8, !tbaa !12
  %i.o = fneg double %i.j
  %i.p = fmul double %i.f, %i.l
  %i.q = fmul double %i.h, %i.p
  %i.r = tail call double @llvm.fmuladd.f64(double %i.o, double %i.d, double %i.q) ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19   ; 3 uses
  store double %i.r, ptr %i.u, align 8, !tbaa !12
  %i.v = fmul double %i.f, %i.n
  %i.w = fmul double %i.f, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.w, ptr %i.x, align 8, !tbaa !12
  %i.y = fneg double %i.r
  %i.z = fsub double %i.y, %i.w
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.z, ptr %i.aa, align 8, !tbaa !12
  ret i32 0
}

declare i32 @CVodeSVtolerances(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetMaxNumSteps(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CVodeSetJacFn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @Jac(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree readnone captures(none) %6, ptr nofree readnone captures(none) %7) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !12 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.m = load double, ptr %i.l, align 8, !tbaa !12
  %i.n = fneg double %i.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !34
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38   ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 2 uses
  store double %i.n, ptr %i.r, align 8, !tbaa !12
  %i.s = fmul double %i.g, %i.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 3 uses
  store double %i.s, ptr %i.u, align 8, !tbaa !12
  %i.v = fmul double %i.e, %i.k
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !39   ; 2 uses
  store double %i.v, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store double %i.i, ptr %i.y, align 8, !tbaa !12
  %i.z = fneg double %i.k                         ; 2 uses
  %i.aa = fmul double %i.m, 2.000000e+00
  %i.ab = fmul double %i.e, %i.aa                 ; 2 uses
  %i.ac = fneg double %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.g, double %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.ad, ptr %i.ae, align 8, !tbaa !12
  %i.af = fmul double %i.e, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store double %i.ab, ptr %i.ah, align 8, !tbaa !12
  ret i32 0
}

declare ptr @N_VCloneVectorArray(i32 noundef, ptr noundef) local_unnamed_addr #2
end_hunk_0
