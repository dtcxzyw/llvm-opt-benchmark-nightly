Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_onewaycouple_mri?download=true
inline.NumInlined: 15
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"SUNContext_Create\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"    initial conditions:  u0 = %g,  v0 = %g,  w0 = %g\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"    hs = %g,  hf = %g\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"N_VNew_Serial\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ARKStepCreate\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"ARKStepSetTableNum\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ARKodeSetFixedStep\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"ARKodeCreateMRIStepInnerStepper\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"MRIStepCreate\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"ark_onewaycouple_mri_solution.txt\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"# t u v w maxerr\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c" %.16e %.16e %.16e %.16e %.16e\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"  %10.6f  %10.6f  %10.6f  %10.6f  %10.6f\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"ARKodeEvolve\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"ARKodeGetNumSteps\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"ARKodeGetNumRhsEvals\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"   Steps: nsts = %li, nstf = %li\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"   Total RHS evals:  Fs = %li,  Ff = %li\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.25 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"\0ASUNDIALS_ERROR: %s() failed with retval = %d\0A\0A\00", align 1
@str = private unnamed_addr constant [36 x i8] c"\0AOne way coupling ODE test problem:\00", align 1
@str.1 = private unnamed_addr constant [60 x i8] c"        t           u           v           w       max err\00", align 1
@str.3 = private unnamed_addr constant [62 x i8] c"   ----------------------------------------------------------\00", align 1
@str.4 = private unnamed_addr constant [26 x i8] c"\0AFinal Solver Statistics:\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca double, align 8                   ; 7 uses
  %i.e = alloca double, align 8                   ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  store ptr null, ptr %i.j, align 8, !tbaa !22
  %i.k = call i32 @SUNContext_Create(i32 noundef 0, ptr noundef nonnull %i.j) #10 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.n = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str, i32 noundef %i.k) #11 ; 0 uses
  br label %bb.p

bb.b:                                             ; preds = %bb.a
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 2.000000e+00) ; 0 uses
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef 1.000000e-03, double noundef 1.000000e-04) ; 0 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.r = call ptr @N_VNew_Serial(i64 noundef 3, ptr noundef %i.q) #10 ; 12 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %check_retval.exit75, label %bb.c

check_retval.exit75:                              ; preds = %bb.b
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.4) #11 ; 0 uses
  br label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store double 2.000000e+00, ptr %i.y, align 8, !tbaa !11
  %i.z = call ptr @N_VClone(ptr noundef nonnull %i.r) #10 ; 3 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.ab = call ptr @ARKStepCreate(ptr noundef nonnull @ff, ptr noundef null, double noundef 0.000000e+00, ptr noundef nonnull %i.r, ptr noundef %i.aa) #10 ; 7 uses
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !25
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %check_retval.exit77, label %bb.d

check_retval.exit77:                              ; preds = %bb.c
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ae = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.5) #11 ; 0 uses
  br label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.af = call i32 @ARKStepSetTableNum(ptr noundef nonnull %i.ab, i32 noundef -1, i32 noundef 12) #10 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %check_retval.exit79, label %bb.e

check_retval.exit79:                              ; preds = %bb.d
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ai = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.6, i32 noundef %i.af) #11 ; 0 uses
  br label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.aj = call i32 @ARKodeSetFixedStep(ptr noundef nonnull %i.ab, double noundef 1.000000e-04) #10 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %check_retval.exit81, label %bb.f

check_retval.exit81:                              ; preds = %bb.e
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.am = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.7, i32 noundef %i.aj) #11 ; 0 uses
  br label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.an = call i32 @ARKodeCreateMRIStepInnerStepper(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.c) #10 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %check_retval.exit83, label %bb.g

check_retval.exit83:                              ; preds = %bb.f
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.aq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.8, i32 noundef %i.an) #11 ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.at = call ptr @MRIStepCreate(ptr noundef nonnull @fs, ptr noundef null, double noundef 0.000000e+00, ptr noundef nonnull %i.r, ptr noundef %i.ar, ptr noundef %i.as) #10 ; 6 uses
  store ptr %i.at, ptr %i.a, align 8, !tbaa !25
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %check_retval.exit85, label %bb.h

check_retval.exit85:                              ; preds = %bb.g
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.9) #11 ; 0 uses
  br label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ax = call i32 @ARKodeSetFixedStep(ptr noundef nonnull %i.at, double noundef 1.000000e-03) #10 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %check_retval.exit87, label %bb.i

check_retval.exit87:                              ; preds = %bb.h
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.7, i32 noundef %i.ax) #11 ; 0 uses
  br label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.bb = call noalias ptr @fopen(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) ; 4 uses
  %fwrite = call i64 @fwrite(ptr nonnull @.str.12, i64 17, i64 1, ptr %i.bb) ; 0 uses
  %i.bc = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19 ; 3 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !11
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !11
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.13, double noundef 0.000000e+00, double noundef %i.bf, double noundef %i.bh, double noundef %i.bj, double noundef 0.000000e+00) #10 ; 0 uses
  store double 0.000000e+00, ptr %i.d, align 8, !tbaa !11
  %puts67 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %puts68 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !19 ; 3 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !11
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !11
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load double, ptr %i.br, align 8, !tbaa !11
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef 0.000000e+00, double noundef %i.bo, double noundef %i.bq, double noundef %i.bs, double noundef 0.000000e+00) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.k
  %.0132 = phi i32 [ 0, %bb.i ], [ %i.cy, %bb.k ]
  %.058131 = phi double [ 1.000000e-01, %bb.i ], [ %i.cx, %bb.k ] ; 2 uses
  %i.bu = call i32 @ARKodeEvolve(ptr noundef nonnull %i.at, double noundef %.058131, ptr noundef nonnull %i.r, ptr noundef nonnull %i.d, i32 noundef 1) #10 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %check_retval.exit89, label %bb.k

check_retval.exit89:                              ; preds = %bb.j
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bw, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.17, i32 noundef %i.bu) #11 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.by = load double, ptr %i.d, align 8, !tbaa !11
  %.val = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.bz = getelementptr i8, ptr %.val, i64 16
  %.val.val = load ptr, ptr %i.bz, align 8, !tbaa !19
  call fastcc void @ans(double noundef %i.by, ptr %.val.val)
  call fastcc void @err(ptr noundef nonnull %i.r, ptr noundef nonnull %i.z, ptr noundef %i.e)
  %i.ca = load double, ptr %i.d, align 8, !tbaa !11
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !19 ; 3 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !11
  %i.cj = load double, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.ca, double noundef %i.ce, double noundef %i.cg, double noundef %i.ci, double noundef %i.cj) ; 0 uses
  %i.cl = load double, ptr %i.d, align 8, !tbaa !11
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !19 ; 3 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !11
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.13, double noundef %i.cl, double noundef %i.cp, double noundef %i.cr, double noundef %i.ct, double noundef %i.cj) #10 ; 0 uses
  %i.cv = fadd double %.058131, 1.000000e-01      ; 2 uses
  %i.cw = fcmp ogt double %i.cv, 1.000000e+00
  %i.cx = select i1 %i.cw, double 1.000000e+00, double %i.cv
  %i.cy = add nuw nsw i32 %.0132, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.cy, 10
  br i1 %exitcond.not, label %.loopexit, label %bb.j

.loopexit:                                        ; preds = %bb.k, %check_retval.exit89
  %puts72 = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.cz = call i32 @fclose(ptr noundef %i.bb)     ; 0 uses
  %i.da = call i32 @ARKodeGetNumSteps(ptr noundef nonnull %i.at, ptr noundef nonnull %i.f) #10 ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %bb.l, label %check_retval.exit95

bb.l:                                             ; preds = %.loopexit
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.dd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dc, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20, i32 noundef %i.da) #11 ; 0 uses
  br label %check_retval.exit95

check_retval.exit95:                              ; preds = %.loopexit, %bb.l
  %i.de = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.at, i32 noundef 0, ptr noundef nonnull %i.h) #10 ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %bb.m, label %check_retval.exit97

bb.m:                                             ; preds = %check_retval.exit95
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.dh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef %i.de) #11 ; 0 uses
  br label %check_retval.exit97

check_retval.exit97:                              ; preds = %check_retval.exit95, %bb.m
  %i.di = call i32 @ARKodeGetNumSteps(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.g) #10 ; 2 uses
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %bb.n, label %check_retval.exit99

bb.n:                                             ; preds = %check_retval.exit97
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.dl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dk, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.20, i32 noundef %i.di) #11 ; 0 uses
  br label %check_retval.exit99

check_retval.exit99:                              ; preds = %check_retval.exit97, %bb.n
  %i.dm = call i32 @ARKodeGetNumRhsEvals(ptr noundef nonnull %i.ab, i32 noundef 0, ptr noundef nonnull %i.i) #10 ; 2 uses
  %i.dn = icmp slt i32 %i.dm, 0
  br i1 %i.dn, label %bb.o, label %check_retval.exit101

bb.o:                                             ; preds = %check_retval.exit99
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.dp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.21, i32 noundef %i.dm) #11 ; 0 uses
  br label %check_retval.exit101

check_retval.exit101:                             ; preds = %check_retval.exit99, %bb.o
  %puts73 = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.dq = load i64, ptr %i.f, align 8, !tbaa !26
  %i.dr = load i64, ptr %i.g, align 8, !tbaa !26
  %i.ds = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i64 noundef %i.dq, i64 noundef %i.dr) ; 0 uses
  %i.dt = load i64, ptr %i.h, align 8, !tbaa !26
  %i.du = load i64, ptr %i.i, align 8, !tbaa !26
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef %i.dt, i64 noundef %i.du) ; 0 uses
  call void @N_VDestroy(ptr noundef nonnull %i.r) #10
  call void @N_VDestroy(ptr noundef %i.z) #10
  call void @ARKodeFree(ptr noundef nonnull %i.b) #10
  %i.dw = call i32 @MRIStepInnerStepper_Free(ptr noundef nonnull %i.c) #10 ; 0 uses
  call void @ARKodeFree(ptr noundef nonnull %i.a) #10
  %i.dx = call i32 @SUNContext_Free(ptr noundef nonnull %i.j) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %check_retval.exit87, %check_retval.exit85, %check_retval.exit83, %check_retval.exit81, %check_retval.exit79, %check_retval.exit77, %check_retval.exit75, %check_retval.exit, %check_retval.exit101
  %.059 = phi i32 [ 0, %check_retval.exit101 ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit75 ], [ 1, %check_retval.exit77 ], [ 1, %check_retval.exit79 ], [ 1, %check_retval.exit81 ], [ 1, %check_retval.exit83 ], [ 1, %check_retval.exit85 ], [ 1, %check_retval.exit87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.059
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare ptr @ARKStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @ff(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !11
  %i.f = load ptr, ptr %2, align 8, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %i.i = fneg double %i.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store double %i.i, ptr %i.j, align 8, !tbaa !11
  ret i32 0
}

declare i32 @ARKStepSetTableNum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ARKodeSetFixedStep(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKodeCreateMRIStepInnerStepper(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @MRIStepCreate(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fs(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #4 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.d = load ptr, ptr %2, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.g = load <2 x double>, ptr %i.c, align 8, !tbaa !11 ; 2 uses
  %i.h = fmul <2 x double> %i.g, <double 5.000000e+01, double -5.000000e+01>
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.i, ptr %i.f, align 8, !tbaa !11
  %i.j = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store double %i.j, ptr %i.k, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @ARKodeEvolve(ptr noundef, double noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable
define internal fastcc void @ans(double noundef %0, ptr nofree writeonly captures(none) initializes((0, 24)) %.0.val.16.val) unnamed_addr #5 {
bb.a:
  %i.a = fmul double %0, 5.000000e+01             ; 4 uses
  %i.b = tail call double @cos(double noundef %i.a) #10
  store double %i.b, ptr %.0.val.16.val, align 8, !tbaa !11
  %i.c = tail call double @sin(double noundef %i.a) #10
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val.16.val, i64 8
  store double %i.c, ptr %i.d, align 8, !tbaa !11
  %i.e = fneg double %0
  %i.f = tail call double @exp(double noundef %i.e) #10
  %1 = tail call double @cos(double noundef %i.a) #10
  %2 = fmul double %1, f0xBF940FF7CFAFC021
  %3 = tail call double @llvm.fmuladd.f64(double %i.f, double f0x4000281FEF9F5F80, double %2)
  %4 = tail call double @sin(double noundef %i.a) #10
  %5 = tail call double @llvm.fmuladd.f64(double %4, double f0x3F94E1996FAC799A, double %3)
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val.16.val, i64 16
  store double %5, ptr %i.g, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @err(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %0, double noundef -1.000000e+00, ptr noundef %1, ptr noundef %1) #10
  %i.a = tail call double @N_VMaxNorm(ptr noundef %1) #10
  store double %i.a, ptr %2, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @ARKodeGetNumSteps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ARKodeGetNumRhsEvals(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare void @ARKodeFree(ptr noundef) local_unnamed_addr #2

declare i32 @MRIStepInnerStepper_Free(ptr noundef) local_unnamed_addr #2

declare i32 @SUNContext_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare void @N_VLinearSum(double noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @N_VMaxNorm(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
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
!13 = !{!"p1 _ZTS21_generic_N_Vector_Ops", !9, i64 0}
!14 = !{!"_generic_N_Vector", !9, i64 0, !13, i64 8, !12, i64 16}
!15 = !{!14, !9, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"p1 double", !9, i64 0}
!18 = !{!"_N_VectorContent_Serial", !16, i64 0, !6, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 16}
!20 = !{!"p1 _ZTS20_MRIStepInnerStepper", !9, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!12, !12, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!9, !9, i64 0}
!26 = !{!16, !16, i64 0}
end_hunk_0
