inline.NumInlined: 15
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OBJ = type { %struct.VECTOR, double, %struct.TEXTURE }
%struct.VECTOR = type { double, double, double }
%struct.TEXTURE = type { %struct.VECTOR, double, double, double }

@objs = dso_local global [4 x %struct.OBJ] [%struct.OBJ { %struct.VECTOR { double 0.000000e+00, double 4.000000e+00, double 1.000000e+00 }, double 1.000000e+00, %struct.TEXTURE { %struct.VECTOR { double 1.000000e+00, double 4.000000e-01, double 0.000000e+00 }, double 4.000000e-01, double 8.000000e-01, double 2.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 5.000000e-01, double 3.000000e-01, double 1.000000e+00 }, double 5.000000e-01, double 9.000000e-01, double 1.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double -3.000000e-01, double 1.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 1.000000e-01, double f0x3FEE666666666666, double 2.000000e-01 }, double 6.000000e-01, double 8.000000e-01, double 1.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double 1.000000e+00, double 2.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 8.600000e-01, double 8.300000e-01, double 0.000000e+00 }, double f0x3FE6666666666666, double 6.000000e-01, double 1.000000e-02 } }], align 16
@Groundpos = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@Groundtxt = dso_local global [2 x %struct.TEXTURE] [%struct.TEXTURE { %struct.VECTOR { double 0.000000e+00, double 1.000000e-01, double 5.000000e-01 }, double 8.000000e-01, double 4.400000e-01, double 2.000000e-02 }, %struct.TEXTURE { %struct.VECTOR { double 6.000000e-01, double 1.000000e+00, double 5.000000e-01 }, double 8.000000e-01, double 4.400000e-01, double 1.000000e-02 }], align 16
@Lightpos = dso_local local_unnamed_addr global %struct.VECTOR { double -3.000000e+00, double 1.000000e+00, double 5.000000e+00 }, align 16
@Lightr = dso_local local_unnamed_addr global double 4.000000e-01, align 8
@Camerapos = dso_local global %struct.VECTOR { double 1.500000e+00, double -1.400000e+00, double 1.200000e+00 }, align 8
@Cameraright = dso_local local_unnamed_addr global %struct.VECTOR { double 3.000000e+00, double 1.000000e+00, double 0.000000e+00 }, align 16
@Cameradir = dso_local local_unnamed_addr global %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 0.000000e+00 }, align 16
@Cameraup = dso_local local_unnamed_addr global %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.371700e+00 }, align 16
@Ambient = dso_local local_unnamed_addr global double 3.000000e-01, align 8
@Skycolor = dso_local local_unnamed_addr global [2 x %struct.VECTOR] [%struct.VECTOR { double 5.000000e-01, double 3.000000e-01, double f0x3FE6666666666666 }, %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.000000e-01 }], align 16
@rnd = dso_local local_unnamed_addr global i64 1380328551, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@DISTRIB = dso_local global i32 0, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@memory = dso_local local_unnamed_addr global [921600 x i8] zeroinitializer, align 16
@str = private unnamed_addr constant [34 x i8] c"ERROR: Could not open indata file\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.VECTOR, align 16            ; 5 uses
  %3 = alloca %struct.VECTOR, align 16            ; 5 uses
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call noalias ptr @fopen(ptr noundef %i.f, ptr noundef nonnull @.str.4) ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.6, ptr noundef nonnull @DISTRIB) #13 ; 0 uses
  %i.i = tail call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.j) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.m = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.l) ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.n, ptr noundef nonnull @.str.8, i32 noundef 640, i32 noundef 480) #13 ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.q = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.p) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.s = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %i.r) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.u = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.t) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.split45.i, label %.split45.us.i

.split45.us.i:                                    ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(921600) @memory, i8 0, i64 921600, i1 false), !tbaa !13
  br label %TraceScene.exit

.split45.i:                                       ; preds = %bb.c, %.split43.us.i
  %i.y = phi i32 [ %i.dx, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.z = phi i32 [ %i.dy, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.i, %.split43.us.i ], [ 0, %bb.c ] ; 4 uses
  %i.aa = trunc i64 %indvar.i to i32
  %i.ab = sub i32 240, %i.aa
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fdiv double %i.ac, 4.800000e+02         ; 2 uses
  %i.ae = mul nuw nsw i64 %indvar.i, 640
  %i.af = icmp sgt i32 %i.z, 0
  br i1 %i.af, label %.split.i.preheader, label %.split.us.i

.split.i.preheader:                               ; preds = %.split45.i
  %i.ag = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.i

.split.us.i:                                      ; preds = %.split45.i
  %i.ai = mul nuw nsw i64 %indvar.i, 1920
  %scevgep.i = getelementptr nuw i8, ptr @memory, i64 %i.ai
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %scevgep.i, i8 0, i64 1920, i1 false), !tbaa !13
  br label %.split43.us.i

.split.i:                                         ; preds = %.split.i.preheader, %._crit_edge.i
  %i.aj = phi i32 [ %i.dd, %._crit_edge.i ], [ %i.y, %.split.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.split.i.preheader ] ; 3 uses
  %i.ak = trunc i64 %indvars.iv.i to i32
  %i.al = add i32 %i.ak, -320
  %i.am = sitofp i32 %i.al to double
  %i.an = fdiv double %i.am, 6.400000e+02         ; 2 uses
  %i.ao = load <2 x double>, ptr @Cameraright, align 16, !tbaa !14
  %i.ap = load <2 x double>, ptr @Cameradir, align 16, !tbaa !14
  %i.aq = insertelement <2 x double> poison, double %i.an, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ar, <2 x double> %i.ap)
  %i.at = load <2 x double>, ptr @Cameraup, align 16, !tbaa !14
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.ah, <2 x double> %i.as) ; 5 uses
  %i.av = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraright, i64 16), align 16, !tbaa !16
  %i.aw = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameradir, i64 16), align 16, !tbaa !16
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.av, double %i.an, double %i.aw)
  %i.ay = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraup, i64 16), align 16, !tbaa !16
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ad, double %i.ax) ; 7 uses
  %i.ba = icmp sgt i32 %i.aj, 0
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split.i
  %i.bb = tail call double @llvm.fabs.f64(double %i.az)
  %i.bc = fcmp ogt double %i.bb, 1.000000e-05
  %i.bd = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.be = fneg double %i.bd                       ; 3 uses
  %i.bf = fmul double %i.az, %i.be                ; 3 uses
  %i.bg = fmul double %i.az, %i.bf
  %i.bh = fmul double %i.bf, %i.be
  %i.bi = extractelement <2 x double> %i.au, i64 1 ; 3 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.bj)
  %4 = fmul double %i.bi, %i.az                   ; 3 uses
  %5 = fneg double %4
  %6 = fmul double %i.az, %5
  %7 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %4, i64 0 ; 2 uses
  %8 = shufflevector <2 x double> %i.au, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bl = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %4, i64 1
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> %8, <2 x double> %i.bm)
  %10 = insertelement <2 x i1> poison, i1 %i.bc, i64 0
  %11 = shufflevector <2 x i1> %10, <2 x i1> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bn = insertelement <2 x double> %i.au, double 1.000000e+00, i64 0
  %i.bo = select <2 x i1> %11, <2 x double> %9, <2 x double> %i.bn ; 3 uses
  %12 = insertelement <2 x double> %7, double %6, i64 1
  %13 = select <2 x i1> %11, <2 x double> %12, <2 x double> %8 ; 3 uses
  %14 = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bp = insertelement <2 x double> %14, double %i.bf, i64 1
  %15 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.be, i64 1
  %16 = select <2 x i1> %11, <2 x double> %i.bp, <2 x double> %15 ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %16, %16
  %foldExtExtBinop31 = fmul <2 x double> %13, %13
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %18 = insertelement <2 x double> %17, double %i.az, i64 0 ; 2 uses
  %i.bq = insertelement <2 x double> %foldExtExtBinop31, double %i.bk, i64 0
  %19 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %18, <2 x double> %18, <2 x double> %i.bq) ; 2 uses
  %20 = extractelement <2 x double> %19, i64 0
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %20)
  %21 = shufflevector <2 x double> %19, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.bo, <2 x double> %21)
  %i.bs = fadd <2 x double> %i.br, <double -0.000000e+00, double 0.000000e+00>
  %i.bt = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bs)
  %i.bu = insertelement <2 x double> poison, double %sqrt.i.i.i, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fdiv <2 x double> %i.bv, %i.bt
  %i.bx = fmul <2 x double> %i.bw, <double f0x3F51111111111111, double 7.812500e-04>
  br label %DistribVector.exit.i

DistribVector.exit.i:                             ; preds = %DistribVector.exit.i, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %i.da, %DistribVector.exit.i ]
  %.sroa.14.036.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.cz, %DistribVector.exit.i ]
  %i.by = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cx, %DistribVector.exit.i ]
  %i.bz = load i64, ptr @rnd, align 8, !tbaa !18
  %i.ca = mul i64 %i.bz, 1103515245
  %i.cb = add i64 %i.ca, 12345                    ; 2 uses
  %i.cc = mul i64 %i.cb, 1103515245
  %i.cd = add i64 %i.cc, 12345                    ; 2 uses
  %i.ce = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.cf = insertelement <2 x i64> %i.ce, i64 %i.cb, i64 1
  %i.cg = and <2 x i64> %i.cf, splat (i64 2147483647)
  %i.ch = and i64 %i.cd, 2147483647
  %i.ci = uitofp nneg <2 x i64> %i.cg to <2 x double>
  %i.cj = fdiv nnan <2 x double> %i.ci, splat (double f0x41CFFFFFFF800000)
  %i.ck = fsub nnan <2 x double> splat (double 1.000000e+00), %i.cj
  %i.cl = fmul <2 x double> %i.bx, %i.ck          ; 4 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 1
  %i.cn = fmul double %i.cm, 0.000000e+00
  store i64 %i.ch, ptr @rnd, align 8, !tbaa !18
  %i.co = fmul <2 x double> %16, %i.cl
  %i.cp = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = fmul <2 x double> %13, %i.cp
  %foldExtExtBinop33 = fmul <2 x double> %i.bo, %i.cl
  %i.cr = extractelement <2 x double> %foldExtExtBinop33, i64 0
  %i.cs = fadd <2 x double> %i.co, %i.cq
  %i.ct = fadd double %i.cn, %i.cr
  %i.cu = fadd <2 x double> %i.au, %i.cs
  store <2 x double> %i.cu, ptr %3, align 16, !tbaa !14
  %i.cv = fadd double %i.az, %i.ct
  store double %i.cv, ptr %.sroa.8.0..sroa_idx.i, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull @Camerapos, ptr noundef %3, ptr noundef %2, i32 noundef 6)
  %i.cw = load <2 x double>, ptr %2, align 16, !tbaa !14
  %i.cx = fadd <2 x double> %i.by, %i.cw          ; 2 uses
  %i.cy = load double, ptr %i.v, align 16, !tbaa !16
  %i.cz = fadd double %.sroa.14.036.i, %i.cy      ; 2 uses
  %i.da = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %i.db = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %DistribVector.exit.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %DistribVector.exit.i, %.split.i
  %i.dd = phi i32 [ %i.aj, %.split.i ], [ %i.db, %DistribVector.exit.i ] ; 4 uses
  %.sroa.14.0.lcssa.i = phi double [ 0.000000e+00, %.split.i ], [ %i.cz, %DistribVector.exit.i ]
  %i.de = phi <2 x double> [ zeroinitializer, %.split.i ], [ %i.cx, %DistribVector.exit.i ] ; 2 uses
  %i.df = sitofp i32 %i.dd to double
  %i.dg = fdiv double 1.000000e+00, %i.df         ; 3 uses
  %i.dh = extractelement <2 x double> %i.de, i64 0
  %i.di = fmul double %i.dh, %i.dg
  %i.dj = extractelement <2 x double> %i.de, i64 1
  %i.dk = fmul double %i.dj, %i.dg
  %i.dl = fmul double %i.dg, %.sroa.14.0.lcssa.i
  %i.dm = fmul double %i.di, 2.550000e+02
  %i.dn = fptoui double %i.dm to i8
  %i.do = add nuw nsw i64 %indvars.iv.i, %i.ae
  %i.dp = mul nuw nsw i64 %i.do, 3
  %i.dq = getelementptr inbounds nuw i8, ptr @memory, i64 %i.dp ; 3 uses
  store i8 %i.dn, ptr %i.dq, align 1, !tbaa !13
  %i.dr = fmul double %i.dk, 2.550000e+02
  %i.ds = fptoui double %i.dr to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !13
  %i.du = fmul double %i.dl, 2.550000e+02
  %i.dv = fptoui double %i.du to i8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store i8 %i.dv, ptr %i.dw, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 640
  br i1 %exitcond.not.i, label %.split43.us.i, label %.split.i, !llvm.loop !22

.split43.us.i:                                    ; preds = %._crit_edge.i, %.split.us.i
  %i.dx = phi i32 [ %i.y, %.split.us.i ], [ %i.dd, %._crit_edge.i ]
  %i.dy = phi i32 [ %i.z, %.split.us.i ], [ %i.dd, %._crit_edge.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 480
  br i1 %exitcond63.not.i, label %TraceScene.exit, label %.split45.i, !llvm.loop !24

TraceScene.exit:                                  ; preds = %.split43.us.i, %.split45.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %TraceScene.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %TraceScene.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr @memory, i64 %indvars.iv ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !13
  %i.eb = and i8 %i.ea, -2
  %i.ec = zext i8 %i.eb to i32
  %i.ed = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ee = tail call i32 @fputc(i32 noundef %i.ec, ptr noundef %i.ed) ; 0 uses
  %i.ef = getelementptr i8, ptr %i.dz, i64 1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !13
  %i.eh = and i8 %i.eg, -2
  %i.ei = zext i8 %i.eh to i32
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ek = tail call i32 @fputc(i32 noundef %i.ei, ptr noundef %i.ej) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !13
  %i.en = and i8 %i.em, -2
  %i.eo = zext i8 %i.en to i32
  %i.ep = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.eq = tail call i32 @fputc(i32 noundef %i.eo, ptr noundef %i.ep) ; 0 uses
  %i.er = icmp samesign ult i64 %indvars.iv, 921597
  br i1 %i.er, label %bb.d, label %bb.e, !llvm.loop !25

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @TraceLine(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((0, 24)) %2, i32 noundef range(i32 0, 7) %3) unnamed_addr #6 {
bb.a:
  %4 = alloca %struct.VECTOR, align 16            ; 9 uses
  %5 = alloca %struct.VECTOR, align 8             ; 5 uses
  %6 = alloca %struct.VECTOR, align 16            ; 6 uses
  %7 = alloca %struct.VECTOR, align 16            ; 11 uses
  %8 = alloca %struct.VECTOR, align 16            ; 7 uses
  %9 = alloca %struct.VECTOR, align 8             ; 5 uses
  %10 = alloca %struct.VECTOR, align 8            ; 5 uses
  %11 = alloca %struct.VECTOR, align 8            ; 4 uses
  %12 = alloca %struct.VECTOR, align 8            ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.not = icmp eq i32 %3, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i32 %3, 3              ; 2 uses
  %i.f = call fastcc double @IntersectObjs(ptr noundef %0, ptr noundef %1, ptr noundef %4, ptr noundef %5, ptr noundef %i.a)
  %i.g = fcmp ogt double %i.f, 1.000000e-05
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = load <2 x double>, ptr @Lightpos, align 16, !tbaa !14
  %i.i = load <2 x double>, ptr %4, align 16, !tbaa !14
  %i.j = fsub <2 x double> %i.h, %i.i             ; 7 uses
  store <2 x double> %i.j, ptr %6, align 16, !tbaa !14
  %i.k = load double, ptr getelementptr inbounds nuw (i8, ptr @Lightpos, i64 16), align 16, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load double, ptr %i.l, align 16, !tbaa !16
  %i.n = fsub double %i.k, %i.m                   ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.n, ptr %i.o, align 16, !tbaa !16
  %i.p = load double, ptr %5, align 8, !tbaa !26  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = load <2 x double>, ptr %i.q, align 8, !tbaa !14 ; 8 uses
  %i.s = extractelement <2 x double> %i.r, i64 0
  %i.t = extractelement <2 x double> %i.j, i64 1  ; 4 uses
  %i.u = fmul double %i.t, %i.s
  %i.v = extractelement <2 x double> %i.j, i64 0  ; 4 uses
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.p, double %i.u)
  %i.x = extractelement <2 x double> %i.r, i64 1  ; 4 uses
  %i.y = tail call double @llvm.fmuladd.f64(double %i.n, double %i.x, double %i.w) ; 2 uses
  %i.z = fcmp ogt double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.ac = load double, ptr @Lightr, align 8, !tbaa !14
  %i.ad = fmul double %i.t, %i.t
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.v, double %i.v, double %i.ad)
  %rnd.promoted = load i64, ptr @rnd, align 8
  %i.af = tail call double @llvm.fabs.f64(double %i.n)
  %i.ag = fcmp ogt double %i.af, 1.000000e-05
  %i.ah = fneg double %i.v                        ; 3 uses
  %i.ai = fmul double %i.n, %i.ah                 ; 3 uses
  %i.aj = fmul double %i.n, %i.ai
  %i.ak = fmul double %i.ai, %i.ah
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %13 = fmul double %i.t, %i.n                    ; 3 uses
  %14 = fneg double %13
  %15 = fmul double %i.n, %14
  %i.am = insertelement <2 x double> <double poison, double -0.000000e+00>, double %13, i64 0 ; 2 uses
  %16 = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.j, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.an = insertelement <2 x double> poison, double %i.ak, i64 0
  %17 = insertelement <2 x double> %i.an, double %13, i64 1
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %16, <2 x double> %17)
  %19 = insertelement <2 x i1> poison, i1 %i.ag, i64 0
  %20 = shufflevector <2 x i1> %19, <2 x i1> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ao = insertelement <2 x double> %i.j, double 1.000000e+00, i64 0
  %21 = select <2 x i1> %20, <2 x double> %18, <2 x double> %i.ao ; 3 uses
  %i.ap = insertelement <2 x double> %i.am, double %15, i64 1
  %22 = select <2 x i1> %20, <2 x double> %i.ap, <2 x double> %16 ; 3 uses
  %i.aq = insertelement <2 x double> poison, double %i.aj, i64 0
  %23 = insertelement <2 x double> %i.aq, double %i.ai, i64 1
  %i.ar = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ah, i64 1
  %i.as = select <2 x i1> %20, <2 x double> %23, <2 x double> %i.ar ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.as, %i.as
  %foldExtExtBinop129 = fmul <2 x double> %22, %22
  %24 = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %25 = insertelement <2 x double> %24, double %i.n, i64 0 ; 2 uses
  %i.at = insertelement <2 x double> %foldExtExtBinop129, double %i.ae, i64 0
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %25, <2 x double> %i.at) ; 2 uses
  %27 = extractelement <2 x double> %26, i64 0
  %sqrt.i = tail call double @llvm.sqrt.f64(double %27) ; 2 uses
  %28 = fdiv double %i.ac, %sqrt.i
  %29 = shufflevector <2 x double> %26, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 3>
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %21, <2 x double> %29)
  %i.av = fadd <2 x double> %i.au, <double -0.000000e+00, double 0.000000e+00>
  %i.aw = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.av)
  %i.ax = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %i.ay = shufflevector <2 x double> %i.ax, <2 x double> poison, <2 x i32> zeroinitializer
  %i.az = fdiv <2 x double> %i.ay, %i.aw
  %i.ba = insertelement <2 x double> poison, double %28, i64 0
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x double> %i.bb, %i.az
  br label %DistribVector.exit

DistribVector.exit:                               ; preds = %.lr.ph, %DistribVector.exit
  %.086 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %DistribVector.exit ]
  %.06385 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %DistribVector.exit ]
  %i.bd = phi i64 [ %rnd.promoted, %.lr.ph ], [ %i.bl, %DistribVector.exit ]
  %i.be = mul i64 %i.bd, 1103515245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !27
  %i.bf = add i64 %i.be, 12345                    ; 2 uses
  %i.bg = mul i64 %i.bf, 1103515245
  %i.bh = add i64 %i.bg, 12345                    ; 2 uses
  %i.bi = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %i.bj = insertelement <2 x i64> %i.bi, i64 %i.bf, i64 1
  %i.bk = and <2 x i64> %i.bj, splat (i64 2147483647)
  %i.bl = and i64 %i.bh, 2147483647               ; 2 uses
  %i.bm = uitofp nneg <2 x i64> %i.bk to <2 x double>
  %i.bn = fdiv nnan <2 x double> %i.bm, splat (double f0x41CFFFFFFF800000)
  %i.bo = fsub nnan <2 x double> splat (double 1.000000e+00), %i.bn
  %i.bp = fmul <2 x double> %i.bc, %i.bo          ; 4 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 1
  %i.br = fmul double %i.bq, 0.000000e+00
  store i64 %i.bl, ptr @rnd, align 8, !tbaa !18
  %i.bs = fmul <2 x double> %i.as, %i.bp
  %i.bt = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bu = fmul <2 x double> %22, %i.bt
  %foldExtExtBinop131.a = fmul <2 x double> %21, %i.bp
  %i.bv = extractelement <2 x double> %foldExtExtBinop131.a, i64 0
  %i.bw = fadd <2 x double> %i.bs, %i.bu
  %i.bx = fadd double %i.br, %i.bv
  %i.by = load <2 x double>, ptr %7, align 16, !tbaa !14
  %i.bz = fadd <2 x double> %i.by, %i.bw
  store <2 x double> %i.bz, ptr %7, align 16, !tbaa !14
  %i.ca = load double, ptr %i.al, align 16, !tbaa !16
  %i.cb = fadd double %i.ca, %i.bx
  store double %i.cb, ptr %i.al, align 16, !tbaa !16
  %i.cc = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.cd = fcmp olt double %i.cc, 1.000000e-05
  %i.ce = fcmp ogt double %i.cc, 1.000000e+00
  %or.cond = or i1 %i.cd, %i.ce
  %i.cf = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %.086, %i.cf     ; 2 uses
  %i.cg = add nuw nsw i32 %.06385, 1              ; 2 uses
  %i.ch = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %DistribVector.exit, label %select.unfold, !llvm.loop !28

bb.f:                                             ; preds = %bb.d
  %i.cj = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.ck = fcmp olt double %i.cj, 1.000000e-05
  %i.cl = fcmp ogt double %i.cj, 1.000000e+00
  %or.cond3 = or i1 %i.ck, %i.cl
  %i.cm = load i32, ptr @DISTRIB, align 4
  br i1 %or.cond3, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %DistribVector.exit, %bb.f
  %.2 = phi i32 [ %i.cm, %bb.f ], [ %spec.select, %DistribVector.exit ] ; 2 uses
  %i.cn = icmp sgt i32 %.2, 0
  br i1 %i.cn, label %bb.g, label %.thread

bb.g:                                             ; preds = %select.unfold
  %i.co = shufflevector <2 x double> %i.j, <2 x double> %i.r, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cp = fmul <2 x double> %i.co, %i.co
  %i.cq = insertelement <2 x double> %i.j, double %i.p, i64 1 ; 2 uses
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cq, <2 x double> %i.cp)
  %i.cs = insertelement <2 x double> %i.r, double %i.n, i64 0 ; 2 uses
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cs, <2 x double> %i.cr) ; 2 uses
  %shift = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop133.a = fmul <2 x double> %i.ct, %shift
  %i.cu = extractelement <2 x double> %foldExtExtBinop133.a, i64 0
  %i.cv = tail call double @sqrt(double noundef %i.cu) #13, !tbaa !4
  %i.cw = fdiv double %i.y, %i.cv
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !30
  %i.da = fmul double %i.cw, %i.cz
  %i.db = uitofp nneg i32 %.2 to double
  %i.dc = fmul double %i.da, %i.db
  %i.dd = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.de = sitofp i32 %i.dd to double
  %i.df = fdiv double %i.dc, %i.de
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c, %select.unfold, %bb.g
  %.065 = phi double [ %i.df, %bb.g ], [ 0.000000e+00, %select.unfold ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !29  ; 4 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !32
  %i.di = load double, ptr @Ambient, align 8, !tbaa !14
  %i.dj = fadd double %.065, %i.di
  %i.dk = fmul double %i.dh, %i.dj                ; 2 uses
  store double %i.dk, ptr %2, align 8, !tbaa !26
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load double, ptr @Ambient, align 8, !tbaa !14
  %i.dn = fadd double %.065, %i.dm
  %i.do = load <2 x double>, ptr %i.dl, align 8, !tbaa !14
  %i.dp = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.dq, %i.do          ; 2 uses
  store <2 x double> %i.dr, ptr %i.d, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !33
  %i.du = fcmp ogt double %i.dt, 1.000000e-05
  br i1 %i.du, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.thread
  %foldExtExtBinop135.a = fmul <2 x double> %i.r, %i.r
  %i.dv = extractelement <2 x double> %foldExtExtBinop135.a, i64 0
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.dv)
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.x, double %i.x, double %i.dw)
  %i.dy = load double, ptr %1, align 8, !tbaa !26 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.eb = load <2 x double>, ptr %i.dz, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop137.a = fmul <2 x double> %i.r, %i.eb
  %i.ec = extractelement <2 x double> %foldExtExtBinop137.a, i64 0
  %i.ed = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.p, double %i.ec)
  %i.ee = extractelement <2 x double> %i.eb, i64 1
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.x, double %i.ed)
  %i.eg = fmul double %i.ef, -2.000000e+00
  %i.eh = fdiv double %i.eg, %i.dx                ; 2 uses
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.p, double %i.dy) ; 4 uses
  store double %i.ei, ptr %7, align 16, !tbaa !26
  %i.ej = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ek, <2 x double> %i.r, <2 x double> %i.eb) ; 7 uses
  store <2 x double> %i.el, ptr %i.ea, align 8, !tbaa !14
  %i.em = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %i.e, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.en = getelementptr inbounds nuw i8, ptr %i.dg, i64 40 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !34
  %i.ep = fcmp ogt double %i.eo, 1.000000e-05
  br i1 %i.ep, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.eq = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %.preheader
  %i.es = extractelement <2 x double> %i.el, i64 1 ; 5 uses
  %i.et = tail call double @llvm.fabs.f64(double %i.es)
  %i.eu = fcmp ogt double %i.et, 1.000000e-05     ; 5 uses
  %i.ev = fneg double %i.ei                       ; 3 uses
  %i.ew = fmul double %i.es, %i.ev                ; 3 uses
  %i.ex = fmul double %i.es, %i.ew
  %i.ey = fmul double %i.ew, %i.ev
  %i.ez = extractelement <2 x double> %i.el, i64 0 ; 2 uses
  %foldExtExtBinop139 = fmul <2 x double> %i.el, %i.el
  %i.fa = extractelement <2 x double> %foldExtExtBinop139, i64 0
  %30 = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fc = add nsw i32 %3, -1
  %i.fd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fe = fmul double %i.es, %i.ez                ; 3 uses
  %i.ff = fneg double %i.fe
  %i.fg = fmul double %i.es, %i.ff
  %i.fh = insertelement <2 x double> %i.el, double %i.fe, i64 0
  %i.fi = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %30, i64 1
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.el, <2 x double> %i.fj) ; 2 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 1
  %sqrt.i.i77 = tail call double @llvm.sqrt.f64(double %i.fl)
  %i.fm = extractelement <2 x double> %i.fk, i64 0
  %.104 = select i1 %i.eu, double %i.fm, double 1.000000e+00 ; 2 uses
  %.105 = select i1 %i.eu, double %i.fg, double 0.000000e+00 ; 3 uses
  %.103.a = select i1 %i.eu, double %i.fe, double %i.ez ; 2 uses
  %.102.a = select i1 %i.eu, double %i.ew, double %i.ev ; 3 uses
  %.106.a = select i1 %i.eu, double %i.ex, double 0.000000e+00 ; 3 uses
  %i.fn = fmul double %.102.a, %.102.a
  %31 = fmul double %.105, %.105
  %32 = tail call double @llvm.fmuladd.f64(double %.106.a, double %.106.a, double %31)
  %i.fo = insertelement <2 x double> poison, double %.104, i64 0
  %33 = insertelement <2 x double> %i.fo, double %.103.a, i64 1 ; 2 uses
  %i.fp = insertelement <2 x double> poison, double %32, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.fn, i64 1
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> %33, <2 x double> %i.fq)
  %i.fs = fadd <2 x double> %i.fr, <double -0.000000e+00, double 0.000000e+00>
  %i.ft = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fs)
  %i.fu = insertelement <2 x double> poison, double %sqrt.i.i77, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fdiv <2 x double> %i.fv, %i.ft
  %34 = insertelement <2 x double> poison, double %.106.a, i64 0
  %35 = insertelement <2 x double> %34, double %.102.a, i64 1
  %i.fx = insertelement <2 x double> poison, double %.103.a, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %.105, i64 1
  br label %DistribVector.exit80

DistribVector.exit80:                             ; preds = %.lr.ph93, %DistribVector.exit80
  %.16492 = phi i32 [ 0, %.lr.ph93 ], [ %i.hj, %DistribVector.exit80 ]
  %i.fz = phi double [ 0.000000e+00, %.lr.ph93 ], [ %i.hg, %DistribVector.exit80 ]
  %i.ga = phi <2 x double> [ zeroinitializer, %.lr.ph93 ], [ %i.hi, %DistribVector.exit80 ]
  %i.gb = load double, ptr %i.en, align 8, !tbaa !34
  %i.gc = load i64, ptr @rnd, align 8, !tbaa !18
  %i.gd = mul i64 %i.gc, 1103515245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !27
  %i.ge = add i64 %i.gd, 12345                    ; 2 uses
  %i.gf = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gg = shufflevector <2 x double> %i.gf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x double> %i.gg, %i.fw
  %i.gi = mul i64 %i.ge, 1103515245
  %i.gj = add i64 %i.gi, 12345
  %i.gk = and i64 %i.ge, 2147483647
  %i.gl = and i64 %i.gj, 2147483647               ; 2 uses
  %i.gm = insertelement <2 x i64> poison, i64 %i.gl, i64 0
  %i.gn = insertelement <2 x i64> %i.gm, i64 %i.gk, i64 1
  %i.go = uitofp nneg <2 x i64> %i.gn to <2 x double>
  %i.gp = fdiv nnan <2 x double> %i.go, splat (double f0x41CFFFFFFF800000)
  %i.gq = fsub nnan <2 x double> splat (double 1.000000e+00), %i.gp
  %i.gr = fmul <2 x double> %i.gh, %i.gq          ; 4 uses
  %i.gs = extractelement <2 x double> %i.gr, i64 1
  %i.gt = fmul double %i.gs, 0.000000e+00
  store i64 %i.gl, ptr @rnd, align 8, !tbaa !18
  %i.gu = fmul <2 x double> %35, %i.gr
  %i.gv = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gw = fmul <2 x double> %i.fy, %i.gv
  %i.gx = extractelement <2 x double> %i.gr, i64 0
  %i.gy = fmul double %.104, %i.gx
  %i.gz = fadd <2 x double> %i.gu, %i.gw
  %i.ha = fadd double %i.gt, %i.gy
  %i.hb = load <2 x double>, ptr %8, align 16, !tbaa !14
  %i.hc = fadd <2 x double> %i.hb, %i.gz
  store <2 x double> %i.hc, ptr %8, align 16, !tbaa !14
  %i.hd = load double, ptr %i.fb, align 16, !tbaa !16
  %i.he = fadd double %i.hd, %i.ha
  store double %i.he, ptr %i.fb, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %10, i32 noundef %i.fc)
  %i.hf = load double, ptr %10, align 8, !tbaa !26
  %i.hg = fadd double %i.hf, %i.fz                ; 2 uses
  %i.hh = load <2 x double>, ptr %i.fd, align 8, !tbaa !14
  %i.hi = fadd <2 x double> %i.hh, %i.ga          ; 2 uses
  %i.hj = add nuw nsw i32 %.16492, 1              ; 2 uses
  %i.hk = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.hl = icmp slt i32 %i.hj, %i.hk
  br i1 %i.hl, label %DistribVector.exit80, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %DistribVector.exit80, %.preheader
  %.lcssa87 = phi double [ 0.000000e+00, %.preheader ], [ %i.hg, %DistribVector.exit80 ]
  %.lcssa = phi i32 [ %i.eq, %.preheader ], [ %i.hk, %DistribVector.exit80 ]
  %i.hm = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.hi, %DistribVector.exit80 ]
  %i.hn = sitofp i32 %.lcssa to double
  %i.ho = fdiv double 1.000000e+00, %i.hn         ; 2 uses
  %i.hp = fmul double %i.ho, %.lcssa87
  %i.hq = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fmul <2 x double> %i.hr, %i.hm
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ht = add nsw i32 %3, -1
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %9, i32 noundef %i.ht)
  %.pre = load double, ptr %9, align 8, !tbaa !26
  %i.hu = load <2 x double>, ptr %i.em, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.hv = phi double [ %.pre, %bb.j ], [ %i.hp, %._crit_edge ]
  %i.hw = phi <2 x double> [ %i.hu, %bb.j ], [ %i.hs, %._crit_edge ]
  %i.hx = load double, ptr %i.ds, align 8, !tbaa !33 ; 2 uses
  %i.hy = load double, ptr %2, align 8, !tbaa !26
  %i.hz = tail call double @llvm.fmuladd.f64(double %i.hv, double %i.hx, double %i.hy) ; 2 uses
  store double %i.hz, ptr %2, align 8, !tbaa !26
  %i.ia = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.ib = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.ic, <2 x double> %i.ia) ; 2 uses
  %i.ie = extractelement <2 x double> %i.id, i64 0
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %i.if = load double, ptr %1, align 8, !tbaa !26 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !36 ; 2 uses
  %i.ii = fmul double %i.ih, %i.ih
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.if, double %i.if, double %i.ii) ; 2 uses
  %i.ik = fcmp ogt double %i.ij, 0.000000e+00
  br i1 %i.ik, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ij)
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.im = load double, ptr %i.il, align 8, !tbaa !16
  %i.in = tail call double @llvm.fabs.f64(double %i.im)
  %i.io = fdiv double %i.in, %sqrt
  %i.ip = tail call double @atan(double noundef %i.io) #13, !tbaa !4
  %i.iq = fmul double %i.ip, f0x3FE45F306C8462A6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.066 = phi double [ %i.iq, %bb.m ], [ 1.000000e+00, %bb.l ] ; 3 uses
  %i.ir = load double, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 24), align 8, !tbaa !26
  %i.is = load double, ptr @Skycolor, align 16, !tbaa !26
  %i.it = fsub double 1.000000e+00, %.066         ; 2 uses
  %i.iu = fmul double %i.it, %i.is
  %i.iv = tail call double @llvm.fmuladd.f64(double %i.ir, double %.066, double %i.iu) ; 2 uses
  store double %i.iv, ptr %2, align 8, !tbaa !26
  %i.iw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 32), align 16, !tbaa !14
  %i.ix = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 8), align 8, !tbaa !14
  %i.iy = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x double> %i.iz, %i.ix
  %i.jb = insertelement <2 x double> poison, double %.066, i64 0
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> %i.jc, <2 x double> %i.ja) ; 2 uses
  %i.je = extractelement <2 x double> %i.jd, i64 0
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.k
  %storemerge = phi double [ %i.je, %bb.n ], [ %i.ie, %bb.k ]
  %.ph123 = phi double [ %i.iv, %bb.n ], [ %i.hz, %bb.k ]
  %i.jf = phi <2 x double> [ %i.jd, %bb.n ], [ %i.id, %bb.k ] ; 2 uses
  store double %storemerge, ptr %i.d, align 8, !tbaa !36
  %i.jg = extractelement <2 x double> %i.jf, i64 1
  store double %i.jg, ptr %i.c, align 8, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.thread
  %i.jh = phi double [ %i.dk, %.thread ], [ %.ph123, %.sink.split ]
  %i.ji = phi <2 x double> [ %i.dr, %.thread ], [ %i.jf, %.sink.split ] ; 2 uses
  %i.jj = fcmp ogt double %i.jh, 1.000000e+00
  br i1 %i.jj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %2, align 8, !tbaa !26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jk = extractelement <2 x double> %i.ji, i64 0
  %i.jl = fcmp ogt double %i.jk, 1.000000e+00
  br i1 %i.jl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.jm = extractelement <2 x double> %i.ji, i64 1
  %i.jn = fcmp ogt double %i.jm, 1.000000e+00
  br i1 %i.jn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !16
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc double @IntersectObjs(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !16 ; 3 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, 1.000000e-05
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr @Groundpos, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !16 ; 2 uses
  %i.h = fsub double %i.e, %i.g
  %i.i = fdiv double %i.h, %i.b                   ; 5 uses
  %i.j = fcmp ogt double %i.i, 1.000000e-05
  %i.k = fcmp olt double %i.i, 1.000000e+05
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load <2 x double>, ptr %0, align 8, !tbaa !14
  %i.m = load <2 x double>, ptr %1, align 8, !tbaa !14
  %i.n = insertelement <2 x double> poison, double %i.i, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.o, <2 x double> %i.l)
  store <2 x double> %i.p, ptr %2, align 8, !tbaa !14
  %i.q = tail call double @llvm.fmuladd.f64(double %i.b, double %i.i, double %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.q, ptr %i.r, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.s, align 8, !tbaa !16
  %i.t = load <2 x double>, ptr %2, align 8, !tbaa !14
  %i.u = fadd <2 x double> %i.t, splat (double 5.000000e+04)
  %i.v = fptosi <2 x double> %i.u to <2 x i32>
  %i.w = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.v)
  %i.x = and i32 %i.w, 1
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [48 x i8], ptr @Groundtxt, i64 %i.y
  store ptr %i.z, ptr %4, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.095 = phi double [ %i.i, %bb.c ], [ -1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.a ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %.sroa.15.0.copyload = load double, ptr getelementptr inbounds nuw (i8, ptr @objs, i64 16), align 16, !tbaa !14
  %i.ad = load <2 x double>, ptr @objs, align 16, !tbaa !14
  %i.ae = load <2 x double>, ptr %0, align 8, !tbaa !14
  %i.af = fsub <2 x double> %i.ad, %i.ae          ; 3 uses
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !16
end_hunk_0
