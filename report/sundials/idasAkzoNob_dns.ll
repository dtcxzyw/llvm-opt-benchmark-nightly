Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/idasAkzoNob_dns?download=true
inline.NumInlined: 20
inline.NumDeleted: 1
begin_hunk_0
@.str.33 = private unnamed_addr constant [42 x i8] c"Number of error test failures      = %ld\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"Number of nonlinear conv. failures = %ld\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [55 x i8] c"\0ASUNDIALS_ERROR: %s() failed - returned NULL pointer\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"\0ASUNDIALS_ERROR: %s() failed with retval = %d\0A\0A\00", align 1
@str = private unnamed_addr constant [58 x i8] c"\0A--------------------------------------------------------\00", align 1
@str.1 = private unnamed_addr constant [58 x i8] c"--------------------------------------------------------\0A\00", align 1
@str.2 = private unnamed_addr constant [83 x i8] c"\0AidasAkzoNob_dns: Akzo Nobel chemical kinetics DAE serial example problem for IDAS\00", align 1
@str.3 = private unnamed_addr constant [52 x i8] c"Linear solver: DENSE, Jacobian is computed by IDAS.\00", align 1
@str.5 = private unnamed_addr constant [28 x i8] c"      y6    | nst  k      h\00", align 1
@str.6 = private unnamed_addr constant [82 x i8] c"---------------------------------------------------------------------------------\00", align 1
@str.7 = private unnamed_addr constant [25 x i8] c"\0AFinal Run Statistics: \0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @main() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.d = call i32 @SUNContext_Create(i32 noundef 0, ptr noundef nonnull %i.c) #11 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %check_retval.exit, label %bb.b

check_retval.exit:                                ; preds = %bb.a
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.g = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str, i32 noundef %i.d) #12 ; 0 uses
  br label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.h = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #13 ; 8 uses
  store <2 x double> <double 1.870000e+01, double 5.800000e-01>, ptr %i.h, align 8, !tbaa !12
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <2 x double> <double f0x3FB70A3D70A3D70A, double 4.200000e-01>, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store <2 x double> <double 3.440000e+01, double 3.300000e+00>, ptr %i.j, align 8, !tbaa !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store <2 x double> <double 1.158300e+02, double 9.000000e-01>, ptr %i.k, align 8, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store double 7.370000e+02, ptr %i.l, align 8, !tbaa !14
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.n = call ptr @N_VNew_Serial(i64 noundef 6, ptr noundef %i.m) #11 ; 11 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %check_retval.exit79, label %bb.c

check_retval.exit79:                              ; preds = %bb.b
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.q = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.r = call ptr @N_VClone(ptr noundef nonnull %i.n) #11 ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %check_retval.exit81, label %bb.d

check_retval.exit81:                              ; preds = %bb.c
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.u = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 3 uses
  store <2 x double> <double 4.440000e-01, double 1.230000e-03>, ptr %i.x, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> <double 0.000000e+00, double 7.000000e-03>, ptr %i.y, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store <2 x double> <double 0.000000e+00, double f0x3FD70A3BEE17CB23>, ptr %i.z, align 8, !tbaa !12
  call void @N_VConst(double noundef 0.000000e+00, ptr noundef nonnull %i.r) #11
  %i.aa = call ptr @N_VClone(ptr noundef nonnull %i.n) #11 ; 3 uses
  %i.ab = call i32 @res(double poison, ptr noundef nonnull %i.n, ptr noundef nonnull %i.r, ptr noundef %i.aa, ptr noundef nonnull %i.h) ; 0 uses
  call void @N_VScale(double noundef -1.000000e+00, ptr noundef %i.aa, ptr noundef nonnull %i.r) #11
  call void @N_VDestroy(ptr noundef %i.aa) #11
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.ad = call ptr @N_VNew_Serial(i64 noundef 1, ptr noundef %i.ac) #11 ; 6 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %check_retval.exit83, label %bb.e

check_retval.exit83:                              ; preds = %bb.d
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !12
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.al = call ptr @IDACreate(ptr noundef %i.ak) #11 ; 14 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !25
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %check_retval.exit85, label %bb.f

check_retval.exit85:                              ; preds = %bb.e
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ao = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.an, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2) #12 ; 0 uses
  br label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.ap = call i32 @IDAInit(ptr noundef nonnull %i.al, ptr noundef nonnull @res, double noundef 0.000000e+00, ptr noundef nonnull %i.n, ptr noundef nonnull %i.r) #11 ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %check_retval.exit87, label %bb.g

check_retval.exit87:                              ; preds = %bb.f
  %i.ar = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.as = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef %i.ap) #12 ; 0 uses
  br label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.at = call i32 @IDASStolerances(ptr noundef nonnull %i.al, double noundef 1.000000e-08, double noundef 1.000000e-10) #11 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %check_retval.exit89, label %bb.h

check_retval.exit89:                              ; preds = %bb.g
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.aw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, i32 noundef %i.at) #12 ; 0 uses
  br label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.ax = call i32 @IDASetUserData(ptr noundef nonnull %i.al, ptr noundef nonnull %i.h) #11 ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %check_retval.exit91, label %bb.i

check_retval.exit91:                              ; preds = %bb.h
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ba = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.az, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.5, i32 noundef %i.ax) #12 ; 0 uses
  br label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.bc = call ptr @SUNDenseMatrix(i64 noundef 6, i64 noundef 6, ptr noundef %i.bb) #11 ; 4 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %check_retval.exit93, label %bb.j

check_retval.exit93:                              ; preds = %bb.i
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.6) #12 ; 0 uses
  br label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.bh = call ptr @SUNLinSol_Dense(ptr noundef nonnull %i.n, ptr noundef nonnull %i.bc, ptr noundef %i.bg) #11 ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %check_retval.exit95, label %bb.k

check_retval.exit95:                              ; preds = %bb.j
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.7) #12 ; 0 uses
  br label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.bl = call i32 @IDASetLinearSolver(ptr noundef nonnull %i.al, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bc) #11 ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %check_retval.exit97, label %bb.l

check_retval.exit97:                              ; preds = %bb.k
  %i.bn = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bn, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.8, i32 noundef %i.bl) #12 ; 0 uses
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bp = call i32 @IDAQuadInit(ptr noundef nonnull %i.al, ptr noundef nonnull @rhsQ, ptr noundef nonnull %i.ad) #11 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %check_retval.exit99, label %bb.m

check_retval.exit99:                              ; preds = %bb.l
  %i.br = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.9, i32 noundef %i.bp) #12 ; 0 uses
  br label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.bt = call i32 @IDAQuadSStolerances(ptr noundef nonnull %i.al, double noundef 1.000000e-10, double noundef f0x3D719799812DEA11) #11 ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %check_retval.exit101, label %bb.n

check_retval.exit101:                             ; preds = %bb.m
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.bw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.10, i32 noundef %i.bt) #12 ; 0 uses
  br label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.bx = call i32 @IDASetQuadErrCon(ptr noundef nonnull %i.al, i32 noundef 1) #11 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %check_retval.exit103, label %bb.o

check_retval.exit103:                             ; preds = %bb.n
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.11, i32 noundef %i.bx) #12 ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %bb.n
  call fastcc void @PrintHeader()
  call fastcc void @PrintOutput(ptr noundef nonnull %i.al, double noundef 0.000000e+00, ptr noundef nonnull %i.n)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.059 = phi i32 [ 0, %bb.o ], [ %i.cg, %bb.q ]
  %.058 = phi double [ 1.000000e-08, %bb.o ], [ %i.ch, %bb.q ] ; 2 uses
  %i.cb = call i32 @IDASolve(ptr noundef nonnull %i.al, double noundef %.058, ptr noundef nonnull %i.b, ptr noundef nonnull %i.n, ptr noundef nonnull %i.r, i32 noundef 1) #11 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %check_retval.exit105, label %bb.q

check_retval.exit105:                             ; preds = %bb.p
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.ce = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cd, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.12, i32 noundef %i.cb) #12 ; 0 uses
  br label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.cf = load double, ptr %i.b, align 8, !tbaa !12
  call fastcc void @PrintOutput(ptr noundef nonnull %i.al, double noundef %i.cf, ptr noundef nonnull %i.n)
  %i.cg = add nuw nsw i32 %.059, 1                ; 2 uses
  %i.ch = fmul double %.058, f0x400492BA408F6B52
  %exitcond = icmp eq i32 %i.cg, 26
  br i1 %exitcond, label %bb.r, label %bb.p

bb.r:                                             ; preds = %bb.q
  %i.ci = call i32 @IDAGetQuad(ptr noundef nonnull %i.al, ptr noundef nonnull %i.b, ptr noundef nonnull %i.ad) #11 ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %check_retval.exit107, label %bb.s

check_retval.exit107:                             ; preds = %bb.r
  %i.ck = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.cl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ck, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.13, i32 noundef %i.ci) #12 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.cm = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !21
  %i.cp = load double, ptr %i.co, align 8, !tbaa !12
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.cp) ; 0 uses
  %puts76 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.cr = call fastcc i32 @PrintFinalStats(ptr noundef nonnull %i.al) ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %check_retval.exit109, label %bb.t

check_retval.exit109:                             ; preds = %bb.s
  %i.ct = load ptr, ptr @stderr, align 8, !tbaa !9
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ct, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.17, i32 noundef %i.cr) #12 ; 0 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @IDAFree(ptr noundef nonnull %i.a) #11
  %i.cv = call i32 @SUNLinSolFree(ptr noundef nonnull %i.bh) #11 ; 0 uses
  call void @SUNMatDestroy(ptr noundef nonnull %i.bc) #11
  call void @N_VDestroy(ptr noundef nonnull %i.n) #11
  call void @N_VDestroy(ptr noundef nonnull %i.r) #11
  call void @N_VDestroy(ptr noundef nonnull %i.ad) #11
  call void @free(ptr noundef %i.h) #11
  %i.cw = call i32 @SUNContext_Free(ptr noundef nonnull %i.c) #11 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %check_retval.exit109, %check_retval.exit107, %check_retval.exit105, %check_retval.exit103, %check_retval.exit101, %check_retval.exit99, %check_retval.exit97, %check_retval.exit95, %check_retval.exit93, %check_retval.exit91, %check_retval.exit89, %check_retval.exit87, %check_retval.exit85, %check_retval.exit83, %check_retval.exit81, %check_retval.exit79, %check_retval.exit, %bb.t
  %.059.a = phi i32 [ 0, %bb.t ], [ 1, %check_retval.exit ], [ 1, %check_retval.exit79 ], [ 1, %check_retval.exit81 ], [ 1, %check_retval.exit83 ], [ 1, %check_retval.exit85 ], [ 1, %check_retval.exit87 ], [ 1, %check_retval.exit89 ], [ 1, %check_retval.exit91 ], [ 1, %check_retval.exit93 ], [ 1, %check_retval.exit95 ], [ 1, %check_retval.exit97 ], [ 1, %check_retval.exit99 ], [ 1, %check_retval.exit101 ], [ 1, %check_retval.exit103 ], [ 1, %check_retval.exit105 ], [ 1, %check_retval.exit107 ], [ 1, %check_retval.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.059.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @SUNContext_Create(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare ptr @N_VNew_Serial(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @N_VClone(ptr noundef) local_unnamed_addr #2

declare void @N_VConst(double noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @res(double %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load double, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.i = load ptr, ptr %1, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %2, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21   ; 4 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load <2 x double>, ptr %4, align 8, !tbaa !12 ; 2 uses
  %i.u = load <2 x double>, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %i.v = load <2 x double>, ptr %i.h, align 8, !tbaa !12 ; 2 uses
  %i.w = load <2 x double>, ptr %i.k, align 8, !tbaa !12 ; 3 uses
  %i.x = load <4 x double>, ptr %i.l, align 8, !tbaa !12 ; 4 uses
  %i.y = load double, ptr %i.n, align 8, !tbaa !12 ; 2 uses
  %i.z = load double, ptr %i.m, align 8, !tbaa !12
  %i.aa = load <2 x double>, ptr %i.s, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !12
  %i.af = extractelement <2 x double> %i.w, i64 0 ; 3 uses
  %i.ag = tail call double @SUNRpowerI(double noundef %i.af, i32 noundef 4) #11
  %i.ah = extractelement <2 x double> %i.w, i64 1 ; 3 uses
  %i.ai = fcmp ugt double %i.ah, 0.000000e+00
  br i1 %i.ai, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.aj = tail call double @sqrt(double noundef %i.ah) #11
  %i.ak = tail call double @sqrt(double noundef %i.ah) #11
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.al = phi double [ %i.aj, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.am = phi double [ %i.ak, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.an = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ao = fmul double %i.d, %i.y
  %i.ap = fmul double %i.b, %i.af
  %i.aq = shufflevector <2 x double> %i.v, <2 x double> %i.t, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ar = shufflevector <2 x double> %i.v, <2 x double> %i.u, <2 x i32> <i32 1, i32 2>
  %i.as = fdiv <2 x double> %i.aq, %i.ar          ; 2 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = shufflevector <4 x double> %i.x, <4 x double> poison, <2 x i32> <i32 3, i32 0>
  %i.ay = insertelement <2 x double> %i.aq, double %i.ao, i64 0
  %i.az = fmul <2 x double> %i.ax, %i.ay
  %i.ba = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bb = insertelement <2 x double> %i.ba, double %i.ap, i64 0
  %i.bc = shufflevector <4 x double> %i.x, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bd = insertelement <2 x double> %i.bc, double %i.ag, i64 1 ; 2 uses
  %i.be = fmul <2 x double> %i.bb, %i.bd
  %i.bf = insertelement <2 x double> %i.bd, double %i.al, i64 1
  %i.bg = fmul <2 x double> %i.bf, %i.be          ; 5 uses
  %i.bh = shufflevector <4 x double> %i.x, <4 x double> poison, <2 x i32> <i32 poison, i32 1>
  %i.bi = insertelement <2 x double> %i.bh, double %i.am, i64 0
  %i.bj = fmul <2 x double> %i.az, %i.bi          ; 4 uses
  %i.bk = fsub <2 x double> %i.as, %i.an
  %i.bl = fmul <2 x double> %i.as, %i.an
  %i.bm = shufflevector <2 x double> %i.bk, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.bn = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x double> %i.bn, <4 x double> %i.x, <2 x i32> <i32 1, i32 6>
  %i.bp = fmul <2 x double> %i.bo, %i.bm          ; 3 uses
  %i.bq = extractelement <2 x double> %i.bj, i64 1 ; 2 uses
  %i.br = extractelement <2 x double> %i.bp, i64 1 ; 2 uses
  %i.bs = shufflevector <2 x double> %i.bg, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> <double 5.000000e-01, double 0.000000e+00>, <2 x double> %i.aa) ; 2 uses
  %i.bu = fadd <2 x double> %i.bt, %i.bg
  %i.bv = fsub <2 x double> %i.bt, %i.bg
  %i.bw = shufflevector <2 x double> %i.bu, <2 x double> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> <double 5.000000e-01, double 1.000000e+00>, <2 x double> %i.bw)
  %i.by = fsub <2 x double> %i.bx, %i.bp
  store <2 x double> %i.by, ptr %i.aw, align 8, !tbaa !12
  %i.bz = fadd double %i.bq, %i.ac
  %i.ca = fsub double %i.bz, %i.br
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.r, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> splat (double 2.000000e+00), <2 x double> %i.cc) ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.cd, %i.bj
  %foldExtExtBinop78 = fadd <2 x double> %i.bp, %foldExtExtBinop
  %shift = shufflevector <2 x double> %foldExtExtBinop78, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop80 = fadd <2 x double> %i.bg, %shift
  %i.ce = extractelement <2 x double> %foldExtExtBinop80, i64 0
  store double %i.ce, ptr %i.av, align 8, !tbaa !12
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.cg = extractelement <2 x double> %i.cd, i64 0
  store double %i.cg, ptr %i.cf, align 8, !tbaa !12
  %i.ch = fsub double %i.ae, %i.bq
  %i.ci = fadd double %i.br, %i.ch
  %i.cj = extractelement <2 x double> %i.bj, i64 0
  %i.ck = fsub double %i.ci, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store double %i.ck, ptr %i.cl, align 8, !tbaa !12
  %i.cm = fmul double %i.g, %i.af
  %i.cn = fneg double %i.y
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.z, double %i.cn)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store double %i.co, ptr %i.cp, align 8, !tbaa !12
  ret i32 0
}

declare void @N_VScale(double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @N_VDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @IDACreate(ptr noundef) local_unnamed_addr #2

declare i32 @IDAInit(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASStolerances(ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @IDASetUserData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNDenseMatrix(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SUNLinSol_Dense(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDASetLinearSolver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @IDAQuadInit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
end_hunk_0
