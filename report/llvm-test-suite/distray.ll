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
@Lightpos = dso_local local_unnamed_addr global %struct.VECTOR { double -3.000000e+00, double 1.000000e+00, double 5.000000e+00 }, align 8
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
  %i.y = phi i32 [ %i.dz, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.z = phi i32 [ %i.ea, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
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
  %i.aj = phi i32 [ %i.df, %._crit_edge.i ], [ %i.y, %.split.i.preheader ] ; 2 uses
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
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ad, double %i.ax) ; 8 uses
  %i.ba = icmp sgt i32 %i.aj, 0
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split.i
  %i.bb = tail call double @llvm.fabs.f64(double %i.az)
  %i.bc = fcmp ogt double %i.bb, 1.000000e-05     ; 4 uses
  %i.bd = extractelement <2 x double> %i.au, i64 0 ; 3 uses
  %i.be = fneg double %i.bd                       ; 3 uses
  %i.bf = fmul double %i.az, %i.be                ; 3 uses
  %i.bg = fmul double %i.az, %i.bf
  %i.bh = fmul double %i.bf, %i.be
  %i.bi = extractelement <2 x double> %i.au, i64 1 ; 3 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bd, double %i.bj)
  %i.bl = fmul double %i.bi, %i.az                ; 3 uses
  %i.bm = fneg double %i.bl
  %i.bn = fmul double %i.az, %i.bm
  %i.bo = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bl, i64 1
  %i.bq = insertelement <2 x double> %i.au, double %i.az, i64 0
  %i.br = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bh, i64 1
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bq, <2 x double> %i.bs) ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 0
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.bu)
  %i.bv = insertelement <2 x i1> poison, i1 %i.bc, i64 0
  %i.bw = shufflevector <2 x i1> %i.bv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bx = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.by = insertelement <2 x double> %i.bx, double %i.bl, i64 1
  %i.bz = insertelement <2 x double> %i.au, double 1.000000e+00, i64 0
  %i.ca = select <2 x i1> %i.bw, <2 x double> %i.by, <2 x double> %i.bz ; 4 uses
  %.50.i = select i1 %i.bc, double %i.bn, double 0.000000e+00 ; 3 uses
  %..i = select i1 %i.bc, double %i.bf, double %i.be ; 3 uses
  %.51.i = select i1 %i.bc, double %i.bg, double 0.000000e+00 ; 3 uses
  %4 = fmul double %..i, %..i
  %5 = fmul double %.50.i, %.50.i
  %6 = tail call double @llvm.fmuladd.f64(double %.51.i, double %.51.i, double %5)
  %i.cb = insertelement <2 x double> poison, double %6, i64 0
  %7 = insertelement <2 x double> %i.cb, double %4, i64 1
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.ca, <2 x double> %7)
  %9 = fadd <2 x double> %8, <double -0.000000e+00, double 0.000000e+00>
  %10 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %9)
  %i.cc = insertelement <2 x double> poison, double %sqrt.i.i.i, i64 0
  %11 = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer
  %12 = fdiv <2 x double> %11, %10
  %13 = fmul <2 x double> %12, <double f0x3F51111111111111, double 7.812500e-04>
  %i.cd = insertelement <2 x double> poison, double %.51.i, i64 0
  %14 = insertelement <2 x double> %i.cd, double %..i, i64 1
  %15 = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x double> %15, double %.50.i, i64 1
  br label %DistribVector.exit.i

DistribVector.exit.i:                             ; preds = %DistribVector.exit.i, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dc, %DistribVector.exit.i ]
  %.sroa.14.036.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.db, %DistribVector.exit.i ]
  %i.ce = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cz, %DistribVector.exit.i ]
  %i.cf = load i64, ptr @rnd, align 8, !tbaa !18
  %i.cg = mul i64 %i.cf, 1103515245
  %i.ch = add i64 %i.cg, 12345                    ; 2 uses
  %i.ci = mul i64 %i.ch, 1103515245
  %i.cj = add i64 %i.ci, 12345
  %17 = and i64 %i.ch, 2147483647
  %18 = and i64 %i.cj, 2147483647                 ; 2 uses
  %19 = insertelement <2 x i64> poison, i64 %18, i64 0
  %20 = insertelement <2 x i64> %19, i64 %17, i64 1
  %i.ck = uitofp nneg <2 x i64> %20 to <2 x double>
  %i.cl = fdiv nnan <2 x double> %i.ck, splat (double f0x41CFFFFFFF800000)
  %i.cm = fsub nnan <2 x double> splat (double 1.000000e+00), %i.cl
  %i.cn = fmul <2 x double> %13, %i.cm            ; 4 uses
  %i.co = extractelement <2 x double> %i.cn, i64 1
  %i.cp = fmul double %i.co, 0.000000e+00
  store i64 %18, ptr @rnd, align 8, !tbaa !18
  %i.cq = fmul <2 x double> %14, %i.cn
  %i.cr = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = fmul <2 x double> %16, %i.cr
  %foldExtExtBinop33 = fmul <2 x double> %i.ca, %i.cn
  %i.ct = extractelement <2 x double> %foldExtExtBinop33, i64 0
  %i.cu = fadd <2 x double> %i.cq, %i.cs
  %i.cv = fadd double %i.cp, %i.ct
  %i.cw = fadd <2 x double> %i.au, %i.cu
  store <2 x double> %i.cw, ptr %3, align 16, !tbaa !14
  %i.cx = fadd double %i.az, %i.cv
  store double %i.cx, ptr %.sroa.8.0..sroa_idx.i, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull @Camerapos, ptr noundef %3, ptr noundef %2, i32 noundef 6)
  %i.cy = load <2 x double>, ptr %2, align 16, !tbaa !14
  %i.cz = fadd <2 x double> %i.ce, %i.cy          ; 2 uses
  %i.da = load double, ptr %i.v, align 16, !tbaa !16
  %i.db = fadd double %.sroa.14.036.i, %i.da      ; 2 uses
  %i.dc = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %i.dd = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.de = icmp slt i32 %i.dc, %i.dd
  br i1 %i.de, label %DistribVector.exit.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %DistribVector.exit.i, %.split.i
  %i.df = phi i32 [ %i.aj, %.split.i ], [ %i.dd, %DistribVector.exit.i ] ; 4 uses
  %.sroa.14.0.lcssa.i = phi double [ 0.000000e+00, %.split.i ], [ %i.db, %DistribVector.exit.i ]
  %i.dg = phi <2 x double> [ zeroinitializer, %.split.i ], [ %i.cz, %DistribVector.exit.i ] ; 2 uses
  %i.dh = sitofp i32 %i.df to double
  %i.di = fdiv double 1.000000e+00, %i.dh         ; 3 uses
  %i.dj = extractelement <2 x double> %i.dg, i64 0
  %i.dk = fmul double %i.dj, %i.di
  %i.dl = extractelement <2 x double> %i.dg, i64 1
  %i.dm = fmul double %i.dl, %i.di
  %i.dn = fmul double %i.di, %.sroa.14.0.lcssa.i
  %i.do = fmul double %i.dk, 2.550000e+02
  %i.dp = fptoui double %i.do to i8
  %i.dq = add nuw nsw i64 %indvars.iv.i, %i.ae
  %i.dr = mul nuw nsw i64 %i.dq, 3
  %i.ds = getelementptr inbounds nuw i8, ptr @memory, i64 %i.dr ; 3 uses
  store i8 %i.dp, ptr %i.ds, align 1, !tbaa !13
  %i.dt = fmul double %i.dm, 2.550000e+02
  %i.du = fptoui double %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !13
  %i.dw = fmul double %i.dn, 2.550000e+02
  %i.dx = fptoui double %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 640
  br i1 %exitcond.not.i, label %.split43.us.i, label %.split.i, !llvm.loop !22

.split43.us.i:                                    ; preds = %._crit_edge.i, %.split.us.i
  %i.dz = phi i32 [ %i.y, %.split.us.i ], [ %i.df, %._crit_edge.i ]
  %i.ea = phi i32 [ %i.z, %.split.us.i ], [ %i.df, %._crit_edge.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 480
  br i1 %exitcond63.not.i, label %TraceScene.exit, label %.split45.i, !llvm.loop !24

TraceScene.exit:                                  ; preds = %.split43.us.i, %.split45.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %TraceScene.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %TraceScene.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr @memory, i64 %indvars.iv ; 3 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %i.ed = and i8 %i.ec, -2
  %i.ee = zext i8 %i.ed to i32
  %i.ef = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.eg = tail call i32 @fputc(i32 noundef %i.ee, ptr noundef %i.ef) ; 0 uses
  %i.eh = getelementptr i8, ptr %i.eb, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13
  %i.ej = and i8 %i.ei, -2
  %i.ek = zext i8 %i.ej to i32
  %i.el = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.em = tail call i32 @fputc(i32 noundef %i.ek, ptr noundef %i.el) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.en = getelementptr inbounds nuw i8, ptr %i.eb, i64 2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !13
  %i.ep = and i8 %i.eo, -2
  %i.eq = zext i8 %i.ep to i32
  %i.er = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.es = tail call i32 @fputc(i32 noundef %i.eq, ptr noundef %i.er) ; 0 uses
  %i.et = icmp samesign ult i64 %indvars.iv, 921597
  br i1 %i.et, label %bb.d, label %bb.e, !llvm.loop !25

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
  %4 = alloca %struct.VECTOR, align 8             ; 9 uses
  %5 = alloca %struct.VECTOR, align 8             ; 5 uses
  %6 = alloca %struct.VECTOR, align 8             ; 6 uses
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
  %i.h = load double, ptr @Lightpos, align 8, !tbaa !26
  %i.i = load double, ptr %4, align 8, !tbaa !26
  %i.j = fsub double %i.h, %i.i                   ; 6 uses
  store double %i.j, ptr %6, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Lightpos, i64 8), align 8, !tbaa !14
  %i.n = load <2 x double>, ptr %i.k, align 8, !tbaa !14
  %i.o = fsub <2 x double> %i.m, %i.n             ; 11 uses
  %i.p = extractelement <2 x double> %i.o, i64 1  ; 6 uses
  %i.q = extractelement <2 x double> %i.o, i64 0
  store <2 x double> %i.o, ptr %i.l, align 8, !tbaa !14
  %i.r = load double, ptr %5, align 8, !tbaa !26  ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !14 ; 8 uses
  %foldExtExtBinop = fmul <2 x double> %i.o, %i.t
  %i.u = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.v = tail call double @llvm.fmuladd.f64(double %i.j, double %i.r, double %i.u)
  %i.w = extractelement <2 x double> %i.t, i64 1  ; 4 uses
  %i.x = tail call double @llvm.fmuladd.f64(double %i.p, double %i.w, double %i.v) ; 2 uses
  %i.y = fcmp ogt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.ab = load double, ptr @Lightr, align 8, !tbaa !14
  %foldExtExtBinop129 = fmul <2 x double> %i.o, %i.o
  %i.ac = extractelement <2 x double> %foldExtExtBinop129, i64 0
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.j, double %i.j, double %i.ac)
  %rnd.promoted = load i64, ptr @rnd, align 8
  %i.ae = tail call double @llvm.fabs.f64(double %i.p)
  %i.af = fcmp ogt double %i.ae, 1.000000e-05     ; 4 uses
  %i.ag = fneg double %i.j                        ; 3 uses
  %i.ah = fmul double %i.p, %i.ag                 ; 3 uses
  %i.ai = fmul double %i.p, %i.ah
  %i.aj = fmul double %i.ah, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.al = fmul double %i.q, %i.p                  ; 3 uses
  %i.am = fneg double %i.al
  %i.an = fmul double %i.p, %i.am
  %i.ao = insertelement <2 x double> %i.o, double %i.al, i64 0
  %i.ap = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ad, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.o, <2 x double> %i.aq) ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.as) ; 2 uses
  %i.at = fdiv double %i.ab, %sqrt.i
  %i.au = insertelement <2 x i1> poison, i1 %i.af, i64 0
  %i.av = shufflevector <2 x i1> %i.au, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> %i.ar, double %i.al, i64 1
  %i.ax = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %i.o, <2 x i32> <i32 0, i32 2>
  %i.ay = select <2 x i1> %i.av, <2 x double> %i.aw, <2 x double> %i.ax ; 4 uses
  %.100 = select i1 %i.af, double %i.an, double 0.000000e+00 ; 3 uses
  %. = select i1 %i.af, double %i.ah, double %i.ag ; 3 uses
  %.101 = select i1 %i.af, double %i.ai, double 0.000000e+00 ; 3 uses
  %13 = fmul double %., %.
  %14 = fmul double %.100, %.100
  %15 = tail call double @llvm.fmuladd.f64(double %.101, double %.101, double %14)
  %i.az = insertelement <2 x double> poison, double %15, i64 0
  %16 = insertelement <2 x double> %i.az, double %13, i64 1
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %i.ay, <2 x double> %16)
  %18 = fadd <2 x double> %17, <double -0.000000e+00, double 0.000000e+00>
  %19 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %18)
  %i.ba = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %20 = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> zeroinitializer
  %21 = fdiv <2 x double> %20, %19
  %22 = insertelement <2 x double> poison, double %i.at, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = fmul <2 x double> %23, %21
  %25 = insertelement <2 x double> poison, double %.101, i64 0
  %i.bb = insertelement <2 x double> %25, double %., i64 1
  %26 = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %27 = insertelement <2 x double> %26, double %.100, i64 1
  br label %DistribVector.exit

DistribVector.exit:                               ; preds = %.lr.ph, %DistribVector.exit
  %.086 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %DistribVector.exit ]
  %.06385 = phi i32 [ 0, %.lr.ph ], [ %i.cb, %DistribVector.exit ]
  %i.bc = phi i64 [ %rnd.promoted, %.lr.ph ], [ %29, %DistribVector.exit ]
  %i.bd = mul i64 %i.bc, 1103515245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !27
  %i.be = add i64 %i.bd, 12345                    ; 2 uses
  %i.bf = mul i64 %i.be, 1103515245
  %i.bg = add i64 %i.bf, 12345
  %28 = and i64 %i.be, 2147483647
  %29 = and i64 %i.bg, 2147483647                 ; 3 uses
  %30 = insertelement <2 x i64> poison, i64 %29, i64 0
  %31 = insertelement <2 x i64> %30, i64 %28, i64 1
  %i.bh = uitofp nneg <2 x i64> %31 to <2 x double>
  %i.bi = fdiv nnan <2 x double> %i.bh, splat (double f0x41CFFFFFFF800000)
  %i.bj = fsub nnan <2 x double> splat (double 1.000000e+00), %i.bi
  %i.bk = fmul <2 x double> %24, %i.bj            ; 4 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 1
  %i.bm = fmul double %i.bl, 0.000000e+00
  store i64 %29, ptr @rnd, align 8, !tbaa !18
  %i.bn = fmul <2 x double> %i.bb, %i.bk
  %i.bo = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = fmul <2 x double> %27, %i.bo
  %foldExtExtBinop135.a = fmul <2 x double> %i.ay, %i.bk
  %i.bq = extractelement <2 x double> %foldExtExtBinop135.a, i64 0
  %i.br = fadd <2 x double> %i.bn, %i.bp
  %i.bs = fadd double %i.bm, %i.bq
  %i.bt = load <2 x double>, ptr %7, align 16, !tbaa !14
  %i.bu = fadd <2 x double> %i.bt, %i.br
  store <2 x double> %i.bu, ptr %7, align 16, !tbaa !14
  %i.bv = load double, ptr %i.ak, align 16, !tbaa !16
  %i.bw = fadd double %i.bv, %i.bs
  store double %i.bw, ptr %i.ak, align 16, !tbaa !16
  %i.bx = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.by = fcmp olt double %i.bx, 1.000000e-05
  %i.bz = fcmp ogt double %i.bx, 1.000000e+00
  %or.cond = or i1 %i.by, %i.bz
  %i.ca = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %.086, %i.ca     ; 2 uses
  %i.cb = add nuw nsw i32 %.06385, 1              ; 2 uses
  %i.cc = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.cd = icmp slt i32 %i.cb, %i.cc
  br i1 %i.cd, label %DistribVector.exit, label %select.unfold, !llvm.loop !28

bb.f:                                             ; preds = %bb.d
  %i.ce = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.cf = fcmp olt double %i.ce, 1.000000e-05
  %i.cg = fcmp ogt double %i.ce, 1.000000e+00
  %or.cond3 = or i1 %i.cf, %i.cg
  %i.ch = load i32, ptr @DISTRIB, align 4
  br i1 %or.cond3, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %DistribVector.exit, %bb.f
  %.2 = phi i32 [ %i.ch, %bb.f ], [ %spec.select, %DistribVector.exit ] ; 2 uses
  %i.ci = icmp sgt i32 %.2, 0
  br i1 %i.ci, label %bb.g, label %.thread

bb.g:                                             ; preds = %select.unfold
  %i.cj = shufflevector <2 x double> %i.o, <2 x double> %i.t, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ck = fmul <2 x double> %i.cj, %i.cj
  %i.cl = insertelement <2 x double> poison, double %i.j, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.r, i64 1 ; 2 uses
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.cm, <2 x double> %i.ck)
  %i.co = shufflevector <2 x double> %i.t, <2 x double> %i.o, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.co, <2 x double> %i.cn) ; 2 uses
  %shift = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop137.a = fmul <2 x double> %i.cp, %shift
  %i.cq = extractelement <2 x double> %foldExtExtBinop137.a, i64 0
  %i.cr = tail call double @sqrt(double noundef %i.cq) #13, !tbaa !4
  %i.cs = fdiv double %i.x, %i.cr
  %i.ct = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !30
  %i.cw = fmul double %i.cs, %i.cv
  %i.cx = uitofp nneg i32 %.2 to double
  %i.cy = fmul double %i.cw, %i.cx
  %i.cz = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.da = sitofp i32 %i.cz to double
  %i.db = fdiv double %i.cy, %i.da
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c, %select.unfold, %bb.g
  %.065 = phi double [ %i.db, %bb.g ], [ 0.000000e+00, %select.unfold ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !29  ; 4 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !32
  %i.de = load double, ptr @Ambient, align 8, !tbaa !14
  %i.df = fadd double %.065, %i.de
  %i.dg = fmul double %i.dd, %i.df                ; 2 uses
  store double %i.dg, ptr %2, align 8, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.di = load double, ptr @Ambient, align 8, !tbaa !14
  %i.dj = fadd double %.065, %i.di
  %i.dk = load <2 x double>, ptr %i.dh, align 8, !tbaa !14
  %i.dl = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dn = fmul <2 x double> %i.dm, %i.dk          ; 2 uses
  store <2 x double> %i.dn, ptr %i.d, align 8, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 32 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !33
  %i.dq = fcmp ogt double %i.dp, 1.000000e-05
  br i1 %i.dq, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.thread
  %foldExtExtBinop139.a = fmul <2 x double> %i.t, %i.t
  %i.dr = extractelement <2 x double> %foldExtExtBinop139.a, i64 0
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.dr)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.w, double %i.w, double %i.ds)
  %i.du = load double, ptr %1, align 8, !tbaa !26 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dx = load <2 x double>, ptr %i.dv, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop141 = fmul <2 x double> %i.t, %i.dx
  %i.dy = extractelement <2 x double> %foldExtExtBinop141, i64 0
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.du, double %i.r, double %i.dy)
  %i.ea = extractelement <2 x double> %i.dx, i64 1
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.w, double %i.dz)
  %i.ec = fmul double %i.eb, -2.000000e+00
  %i.ed = fdiv double %i.ec, %i.dt                ; 2 uses
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.ed, double %i.r, double %i.du) ; 4 uses
  store double %i.ee, ptr %7, align 16, !tbaa !26
  %i.ef = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.eg = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.t, <2 x double> %i.dx) ; 7 uses
  store <2 x double> %i.eh, ptr %i.dw, align 8, !tbaa !14
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %i.e, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dc, i64 40 ; 2 uses
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !34
  %i.el = fcmp ogt double %i.ek, 1.000000e-05
  br i1 %i.el, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.em = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %.preheader
  %i.eo = extractelement <2 x double> %i.eh, i64 1 ; 5 uses
  %i.ep = tail call double @llvm.fabs.f64(double %i.eo)
  %i.eq = fcmp ogt double %i.ep, 1.000000e-05     ; 5 uses
  %i.er = fneg double %i.ee                       ; 3 uses
  %i.es = fmul double %i.eo, %i.er                ; 3 uses
  %i.et = fmul double %i.eo, %i.es
  %i.eu = fmul double %i.es, %i.er
  %i.ev = extractelement <2 x double> %i.eh, i64 0 ; 2 uses
  %foldExtExtBinop143 = fmul <2 x double> %i.eh, %i.eh
  %i.ew = extractelement <2 x double> %foldExtExtBinop143, i64 0
  %i.ex = tail call double @llvm.fmuladd.f64(double %i.ee, double %i.ee, double %i.ew)
  %i.ey = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ez = add nsw i32 %3, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fb = fmul double %i.eo, %i.ev                ; 3 uses
  %i.fc = fneg double %i.fb
  %i.fd = fmul double %i.eo, %i.fc
  %i.fe = insertelement <2 x double> %i.eh, double %i.fb, i64 0
  %i.ff = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.fg = insertelement <2 x double> %i.ff, double %i.ex, i64 1
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.eh, <2 x double> %i.fg) ; 2 uses
  %i.fi = extractelement <2 x double> %i.fh, i64 1
  %sqrt.i.i77 = tail call double @llvm.sqrt.f64(double %i.fi)
  %32 = extractelement <2 x double> %i.fh, i64 0
  %.104 = select i1 %i.eq, double %32, double 1.000000e+00 ; 2 uses
  %.105 = select i1 %i.eq, double %i.fd, double 0.000000e+00 ; 3 uses
  %.103 = select i1 %i.eq, double %i.fb, double %i.ev ; 2 uses
  %.102 = select i1 %i.eq, double %i.es, double %i.er ; 3 uses
  %.106 = select i1 %i.eq, double %i.et, double 0.000000e+00 ; 3 uses
  %33 = fmul double %.102, %.102
  %34 = fmul double %.105, %.105
  %35 = tail call double @llvm.fmuladd.f64(double %.106, double %.106, double %34)
  %i.fj = insertelement <2 x double> poison, double %.104, i64 0
  %i.fk = insertelement <2 x double> %i.fj, double %.103, i64 1 ; 2 uses
  %i.fl = insertelement <2 x double> poison, double %35, i64 0
  %36 = insertelement <2 x double> %i.fl, double %33, i64 1
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fk, <2 x double> %i.fk, <2 x double> %36)
  %38 = fadd <2 x double> %37, <double -0.000000e+00, double 0.000000e+00>
  %39 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %38)
  %i.fm = insertelement <2 x double> poison, double %sqrt.i.i77, i64 0
  %40 = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = fdiv <2 x double> %40, %39
  %42 = insertelement <2 x double> poison, double %.106, i64 0
  %i.fn = insertelement <2 x double> %42, double %.102, i64 1
  %43 = insertelement <2 x double> poison, double %.103, i64 0
  %44 = insertelement <2 x double> %43, double %.105, i64 1
  br label %DistribVector.exit80

DistribVector.exit80:                             ; preds = %.lr.ph93, %DistribVector.exit80
  %.16492 = phi i32 [ 0, %.lr.ph93 ], [ %i.gs, %DistribVector.exit80 ]
  %i.fo = phi double [ 0.000000e+00, %.lr.ph93 ], [ %i.gp, %DistribVector.exit80 ]
  %i.fp = phi <2 x double> [ zeroinitializer, %.lr.ph93 ], [ %i.gr, %DistribVector.exit80 ]
  %i.fq = load double, ptr %i.ej, align 8, !tbaa !34
  %i.fr = load i64, ptr @rnd, align 8, !tbaa !18
  %i.fs = mul i64 %i.fr, 1103515245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !27
  %i.ft = add i64 %i.fs, 12345                    ; 2 uses
  %i.fu = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fv = shufflevector <2 x double> %i.fu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fw = fmul <2 x double> %i.fv, %41
  %i.fx = mul i64 %i.ft, 1103515245
  %i.fy = add i64 %i.fx, 12345
  %45 = and i64 %i.ft, 2147483647
  %46 = and i64 %i.fy, 2147483647                 ; 2 uses
  %47 = insertelement <2 x i64> poison, i64 %46, i64 0
  %48 = insertelement <2 x i64> %47, i64 %45, i64 1
  %i.fz = uitofp nneg <2 x i64> %48 to <2 x double>
  %i.ga = fdiv nnan <2 x double> %i.fz, splat (double f0x41CFFFFFFF800000)
  %i.gb = fsub nnan <2 x double> splat (double 1.000000e+00), %i.ga
  %i.gc = fmul <2 x double> %i.fw, %i.gb          ; 4 uses
  %i.gd = extractelement <2 x double> %i.gc, i64 1
  %i.ge = fmul double %i.gd, 0.000000e+00
  store i64 %46, ptr @rnd, align 8, !tbaa !18
  %i.gf = fmul <2 x double> %i.fn, %i.gc
  %i.gg = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gh = fmul <2 x double> %44, %i.gg
  %49 = extractelement <2 x double> %i.gc, i64 0
  %50 = fmul double %.104, %49
  %i.gi = fadd <2 x double> %i.gf, %i.gh
  %i.gj = fadd double %i.ge, %50
  %i.gk = load <2 x double>, ptr %8, align 16, !tbaa !14
  %i.gl = fadd <2 x double> %i.gk, %i.gi
  store <2 x double> %i.gl, ptr %8, align 16, !tbaa !14
  %i.gm = load double, ptr %i.ey, align 16, !tbaa !16
  %i.gn = fadd double %i.gm, %i.gj
  store double %i.gn, ptr %i.ey, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %10, i32 noundef %i.ez)
  %i.go = load double, ptr %10, align 8, !tbaa !26
  %i.gp = fadd double %i.go, %i.fo                ; 2 uses
  %i.gq = load <2 x double>, ptr %i.fa, align 8, !tbaa !14
  %i.gr = fadd <2 x double> %i.gq, %i.fp          ; 2 uses
  %i.gs = add nuw nsw i32 %.16492, 1              ; 2 uses
  %i.gt = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.gu = icmp slt i32 %i.gs, %i.gt
  br i1 %i.gu, label %DistribVector.exit80, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %DistribVector.exit80, %.preheader
  %.lcssa87 = phi double [ 0.000000e+00, %.preheader ], [ %i.gp, %DistribVector.exit80 ]
  %.lcssa = phi i32 [ %i.em, %.preheader ], [ %i.gt, %DistribVector.exit80 ]
  %i.gv = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.gr, %DistribVector.exit80 ]
  %i.gw = sitofp i32 %.lcssa to double
  %i.gx = fdiv double 1.000000e+00, %i.gw         ; 2 uses
  %i.gy = fmul double %i.gx, %.lcssa87
  %i.gz = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x double> %i.ha, %i.gv
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.hc = add nsw i32 %3, -1
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %9, i32 noundef %i.hc)
  %.pre = load double, ptr %9, align 8, !tbaa !26
  %i.hd = load <2 x double>, ptr %i.ei, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.he = phi double [ %.pre, %bb.j ], [ %i.gy, %._crit_edge ]
  %i.hf = phi <2 x double> [ %i.hd, %bb.j ], [ %i.hb, %._crit_edge ]
  %i.hg = load double, ptr %i.do, align 8, !tbaa !33 ; 2 uses
  %i.hh = load double, ptr %2, align 8, !tbaa !26
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.he, double %i.hg, double %i.hh) ; 2 uses
  store double %i.hi, ptr %2, align 8, !tbaa !26
  %i.hj = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.hk = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %i.hl, <2 x double> %i.hj) ; 2 uses
  %i.hn = extractelement <2 x double> %i.hm, i64 0
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %i.ho = load double, ptr %1, align 8, !tbaa !26 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !36 ; 2 uses
  %i.hr = fmul double %i.hq, %i.hq
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.ho, double %i.hr) ; 2 uses
  %i.ht = fcmp ogt double %i.hs, 0.000000e+00
  br i1 %i.ht, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %sqrt = tail call double @llvm.sqrt.f64(double %i.hs)
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !16
  %i.hw = tail call double @llvm.fabs.f64(double %i.hv)
  %i.hx = fdiv double %i.hw, %sqrt
  %i.hy = tail call double @atan(double noundef %i.hx) #13, !tbaa !4
  %i.hz = fmul double %i.hy, f0x3FE45F306C8462A6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.066 = phi double [ %i.hz, %bb.m ], [ 1.000000e+00, %bb.l ] ; 3 uses
  %i.ia = load double, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 24), align 8, !tbaa !26
  %i.ib = load double, ptr @Skycolor, align 16, !tbaa !26
  %i.ic = fsub double 1.000000e+00, %.066         ; 2 uses
  %i.id = fmul double %i.ic, %i.ib
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.ia, double %.066, double %i.id) ; 2 uses
  store double %i.ie, ptr %2, align 8, !tbaa !26
  %i.if = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 32), align 16, !tbaa !14
  %i.ig = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 8), align 8, !tbaa !14
  %i.ih = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x double> %i.ii, %i.ig
  %i.ik = insertelement <2 x double> poison, double %.066, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.il, <2 x double> %i.ij) ; 2 uses
  %i.in = extractelement <2 x double> %i.im, i64 0
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.k
  %storemerge = phi double [ %i.in, %bb.n ], [ %i.hn, %bb.k ]
  %.ph123 = phi double [ %i.ie, %bb.n ], [ %i.hi, %bb.k ]
  %i.io = phi <2 x double> [ %i.im, %bb.n ], [ %i.hm, %bb.k ] ; 2 uses
  store double %storemerge, ptr %i.d, align 8, !tbaa !36
  %i.ip = extractelement <2 x double> %i.io, i64 1
  store double %i.ip, ptr %i.c, align 8, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.thread
  %i.iq = phi double [ %i.dg, %.thread ], [ %.ph123, %.sink.split ]
  %i.ir = phi <2 x double> [ %i.dn, %.thread ], [ %i.io, %.sink.split ] ; 2 uses
  %i.is = fcmp ogt double %i.iq, 1.000000e+00
  br i1 %i.is, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %2, align 8, !tbaa !26
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.it = extractelement <2 x double> %i.ir, i64 0
  %i.iu = fcmp ogt double %i.it, 1.000000e+00
  br i1 %i.iu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.iv = extractelement <2 x double> %i.ir, i64 1
  %i.iw = fcmp ogt double %i.iv, 1.000000e+00
  br i1 %i.iw, label %bb.t, label %bb.u

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
  %i.ah = fsub double %.sroa.15.0.copyload, %i.ag ; 4 uses
  %i.ai = load <2 x double>, ptr %1, align 8, !tbaa !14 ; 3 uses
end_hunk_0
