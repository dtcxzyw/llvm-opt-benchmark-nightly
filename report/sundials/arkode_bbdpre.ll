Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_bbdpre?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__func__.ARKBBDPrecInit = private unnamed_addr constant [15 x i8] c"ARKBBDPrecInit\00", align 1
@.str = private unnamed_addr constant [61 x i8] c"/opt-bench/work/sundials/sundials/src/arkode/arkode_bbdpre.c\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"A required vector operation is not implemented.\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"A memory request failed.\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"An error arose from a SUNBandLinearSolver routine.\00", align 1
@__func__.ARKBBDPrecReInit = private unnamed_addr constant [17 x i8] c"ARKBBDPrecReInit\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"BBD peconditioner memory is NULL. ARKBBDPrecInit must be called.\00", align 1
@__func__.ARKBBDPrecGetWorkSpace = private unnamed_addr constant [23 x i8] c"ARKBBDPrecGetWorkSpace\00", align 1
@__func__.ARKBBDPrecGetNumGfnEvals = private unnamed_addr constant [25 x i8] c"ARKBBDPrecGetNumGfnEvals\00", align 1
@__func__.ARKBBDPrecSetup = private unnamed_addr constant [16 x i8] c"ARKBBDPrecSetup\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"An error arose from a SUNBandMatrix routine.\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"The gloc or cfn routine failed in an unrecoverable manner.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ARKBBDPrecInit(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, double noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 31 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  %i.g = call i32 @arkLs_AccessARKODELMem(ptr noundef %0, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 656
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !56
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.h, i32 noundef -3, i32 noundef 74, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %bb.ao

bb.e:                                             ; preds = %bb.c
  %i.s = call noalias dereferenceable_or_null(160) ptr @malloc(i64 noundef 160) #9 ; 31 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef nonnull %i.h, i32 noundef -4, i32 noundef 84, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  store ptr %0, ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store ptr %7, ptr %i.v, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %8, ptr %i.w, align 8, !tbaa !26
  %i.x = add nsw i64 %1, -1                       ; 5 uses
  %i.y = call i64 @llvm.smax.i64(i64 %2, i64 0)
  %. = call i64 @llvm.smin.i64(i64 %i.y, i64 %i.x)
  store i64 %., ptr %i.s, align 8, !tbaa !27
  %i.z = call i64 @llvm.smax.i64(i64 %3, i64 0)
  %i.aa = call i64 @llvm.smin.i64(i64 %i.z, i64 %i.x)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !28
  %i.ac = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %i.ad = call i64 @llvm.smin.i64(i64 %i.ac, i64 %i.x) ; 5 uses
  %i.ae = call i64 @llvm.smax.i64(i64 %5, i64 0)
  %i.af = call i64 @llvm.smin.i64(i64 %i.ae, i64 %i.x) ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.ad, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !30
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.aj = call ptr @SUNBandMatrixStorage(i64 noundef %1, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %i.ad, ptr noundef %i.ai) #8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 10 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !31
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.s) #8
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.am, i32 noundef -4, i32 noundef 106, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.i:                                             ; preds = %bb.g
  %i.an = add nsw i64 %i.af, %i.ad
  %.180 = call i64 @llvm.smin.i64(i64 %i.an, i64 %i.x)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.s, i64 64 ; 11 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !32
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !57
  %i.ar = call ptr @SUNBandMatrixStorage(i64 noundef %1, i64 noundef %i.ad, i64 noundef %i.af, i64 noundef %.180, ptr noundef %i.aq) #8 ; 2 uses
  store ptr %i.ar, ptr %i.ao, align 8, !tbaa !32
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %9 = load ptr, ptr %i.ak, align 8, !tbaa !31
  call void @SUNMatDestroy(ptr noundef %9) #8
  call void @free(ptr noundef nonnull %i.s) #8
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.at, i32 noundef -4, i32 noundef 121, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 8 uses
  store ptr null, ptr %i.au, align 8, !tbaa !33
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = call ptr @N_VNewEmpty_Serial(i64 noundef %1, ptr noundef %i.aw) #8 ; 2 uses
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !33
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %10 = load ptr, ptr %i.ao, align 8, !tbaa !32
  call void @SUNMatDestroy(ptr noundef %10) #8
  %11 = load ptr, ptr %i.ak, align 8, !tbaa !31
  call void @SUNMatDestroy(ptr noundef %11) #8
  call void @free(ptr noundef nonnull %i.s) #8
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.az, i32 noundef -4, i32 noundef 136, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.m:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 9 uses
  store ptr null, ptr %i.ba, align 8, !tbaa !34
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.bd = call ptr @N_VNewEmpty_Serial(i64 noundef %1, ptr noundef %i.bc) #8 ; 2 uses
  store ptr %i.bd, ptr %i.ba, align 8, !tbaa !34
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %12 = load ptr, ptr %i.au, align 8, !tbaa !33
  call void @N_VDestroy(ptr noundef %12) #8
  %13 = load ptr, ptr %i.ao, align 8, !tbaa !32
  call void @SUNMatDestroy(ptr noundef %13) #8
  %14 = load ptr, ptr %i.ak, align 8, !tbaa !31
  call void @SUNMatDestroy(ptr noundef %14) #8
  call void @free(ptr noundef nonnull %i.s) #8
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.bf, i32 noundef -4, i32 noundef 150, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.o:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.s, i64 80 ; 6 uses
  store ptr null, ptr %i.bg, align 8, !tbaa !35
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 656
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bk = call i32 @arkAllocVec(ptr noundef %i.bh, ptr noundef %i.bj, ptr noundef nonnull %i.bg) #8
  %.not171 = icmp eq i32 %i.bk, 0
  br i1 %.not171, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.au, align 8, !tbaa !33
  call void @N_VDestroy(ptr noundef %i.bl) #8
  %i.bm = load ptr, ptr %i.ba, align 8, !tbaa !34
  call void @N_VDestroy(ptr noundef %i.bm) #8
  %i.bn = load ptr, ptr %i.ao, align 8, !tbaa !32
  call void @SUNMatDestroy(ptr noundef %i.bn) #8
  %i.bo = load ptr, ptr %i.ak, align 8, !tbaa !31
  call void @SUNMatDestroy(ptr noundef %i.bo) #8
  call void @free(ptr noundef nonnull %i.s) #8
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.bp, i32 noundef -4, i32 noundef 164, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.s, i64 88 ; 5 uses
  store ptr null, ptr %i.bq, align 8, !tbaa !36
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 656
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bu = call i32 @arkAllocVec(ptr noundef %i.br, ptr noundef %i.bt, ptr noundef nonnull %i.bq) #8
  %.not172 = icmp eq i32 %i.bu, 0
  br i1 %.not172, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.bv, ptr noundef nonnull %i.bg) #8
  %i.bw = load ptr, ptr %i.au, align 8, !tbaa !33
  call void @N_VDestroy(ptr noundef %i.bw) #8
  %i.bx = load ptr, ptr %i.ba, align 8, !tbaa !34
  call void @N_VDestroy(ptr noundef %i.bx) #8
  %i.by = load ptr, ptr %i.ao, align 8, !tbaa !32
  call void @SUNMatDestroy(ptr noundef %i.by) #8
  %i.bz = load ptr, ptr %i.ak, align 8, !tbaa !31
  call void @SUNMatDestroy(ptr noundef %i.bz) #8
  call void @free(ptr noundef nonnull %i.s) #8
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.ca, i32 noundef -4, i32 noundef 179, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.s:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 4 uses
  store ptr null, ptr %i.cb, align 8, !tbaa !37
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 656
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !50
  %i.cf = call i32 @arkAllocVec(ptr noundef %i.cc, ptr noundef %i.ce, ptr noundef nonnull %i.cb) #8
  %.not173 = icmp eq i32 %i.cf, 0
  br i1 %.not173, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.cg, ptr noundef nonnull %i.bg) #8
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.ch, ptr noundef nonnull %i.bq) #8
  %i.ci = load ptr, ptr %i.au, align 8, !tbaa !33
  call void @N_VDestroy(ptr noundef %i.ci) #8
  %i.cj = load ptr, ptr %i.ba, align 8, !tbaa !34
  call void @N_VDestroy(ptr noundef %i.cj) #8
  %i.ck = load ptr, ptr %i.ao, align 8, !tbaa !32
  call void @SUNMatDestroy(ptr noundef %i.ck) #8
  %i.cl = load ptr, ptr %i.ak, align 8, !tbaa !31
  call void @SUNMatDestroy(ptr noundef %i.cl) #8
  call void @free(ptr noundef nonnull %i.s) #8
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.cm, i32 noundef -4, i32 noundef 195, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.u:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 72 ; 5 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !38
  %i.co = load ptr, ptr %i.ba, align 8, !tbaa !34
  %i.cp = load ptr, ptr %i.ao, align 8, !tbaa !32
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !57
  %i.cs = call ptr @SUNLinSol_Band(ptr noundef %i.co, ptr noundef %i.cp, ptr noundef %i.cr) #8 ; 3 uses
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !38
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.cu, ptr noundef nonnull %i.bg) #8
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.cv, ptr noundef nonnull %i.bq) #8
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.cw, ptr noundef nonnull %i.cb) #8
  %i.cx = load ptr, ptr %i.au, align 8, !tbaa !33
  call void @N_VDestroy(ptr noundef %i.cx) #8
  %i.cy = load ptr, ptr %i.ba, align 8, !tbaa !34
  call void @N_VDestroy(ptr noundef %i.cy) #8
  %i.cz = load ptr, ptr %i.ao, align 8, !tbaa !32
  call void @SUNMatDestroy(ptr noundef %i.cz) #8
  %i.da = load ptr, ptr %i.ak, align 8, !tbaa !31
  call void @SUNMatDestroy(ptr noundef %i.da) #8
  call void @free(ptr noundef nonnull %i.s) #8
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.db, i32 noundef -4, i32 noundef 214, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #8
  br label %bb.ao

bb.w:                                             ; preds = %bb.u
  %i.dc = call i32 @SUNLinSolInitialize(ptr noundef nonnull %i.cs) #8 ; 0 uses
  %i.dd = load ptr, ptr %i.cn, align 8, !tbaa !38
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.df, ptr noundef nonnull %i.bg) #8
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.dg, ptr noundef nonnull %i.bq) #8
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @arkFreeVec(ptr noundef %i.dh, ptr noundef nonnull %i.cb) #8
  %i.di = load ptr, ptr %i.au, align 8, !tbaa !33
  call void @N_VDestroy(ptr noundef %i.di) #8
  %i.dj = load ptr, ptr %i.ba, align 8, !tbaa !34
  call void @N_VDestroy(ptr noundef %i.dj) #8
  %i.dk = load ptr, ptr %i.ao, align 8, !tbaa !32
  call void @SUNMatDestroy(ptr noundef %i.dk) #8
  %i.dl = load ptr, ptr %i.ak, align 8, !tbaa !31
  call void @SUNMatDestroy(ptr noundef %i.dl) #8
  %i.dm = load ptr, ptr %i.cn, align 8, !tbaa !38
  %i.dn = call i32 @SUNLinSolFree(ptr noundef %i.dm) #8 ; 0 uses
  call void @free(ptr noundef nonnull %i.s) #8
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !10
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @arkProcessError(ptr noundef %i.do, i32 noundef -12, i32 noundef 233, ptr noundef nonnull @__func__.ARKBBDPrecInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #8
  br label %bb.ao

bb.y:                                             ; preds = %bb.w
  %i.dp = fcmp ogt double %6, 0.000000e+00
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  br i1 %i.dp, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !39 ; 2 uses
  %i.ds = fcmp ugt double %i.dr, 0.000000e+00
  br i1 %i.ds, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dt = call double @sqrt(double noundef %i.dr) #8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa, %bb.z
  %i.du = phi double [ 0.000000e+00, %bb.z ], [ %i.dt, %bb.aa ], [ %6, %bb.y ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store double %i.du, ptr %i.dv, align 8, !tbaa !40
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  store i64 %1, ptr %i.dw, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.s, i64 128 ; 11 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dx, i8 0, i64 16, i1 false)
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !50 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !58
  %.not174 = icmp eq ptr %i.ee, null
  br i1 %.not174, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @N_VSpace(ptr noundef nonnull %i.ea, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %i.ef = load i64, ptr %i.c, align 8, !tbaa !42
  %i.eg = mul nsw i64 %i.ef, 3
  %i.eh = load i64, ptr %i.dx, align 8, !tbaa !43
  %i.ei = add nsw i64 %i.eh, %i.eg
  store i64 %i.ei, ptr %i.dx, align 8, !tbaa !43
  %i.ej = load i64, ptr %i.d, align 8, !tbaa !42
  %i.ek = mul nsw i64 %i.ej, 3
  %i.el = load i64, ptr %i.dy, align 8, !tbaa !44
  %i.em = add nsw i64 %i.el, %i.ek
  store i64 %i.em, ptr %i.dy, align 8, !tbaa !44
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.en = load ptr, ptr %i.ba, align 8, !tbaa !34 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !53
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !58
  %.not175 = icmp eq ptr %i.er, null
  br i1 %.not175, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
end_hunk_0
