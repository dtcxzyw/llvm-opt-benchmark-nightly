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
  %i.y = phi i32 [ %i.dv, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.z = phi i32 [ %i.dw, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
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
  %i.aj = phi i32 [ %i.db, %._crit_edge.i ], [ %i.y, %.split.i.preheader ] ; 2 uses
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
  %4 = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bo = insertelement <2 x double> %4, double %i.bl, i64 1
  %5 = insertelement <2 x double> %i.au, double %i.az, i64 0
  %i.bp = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bq = insertelement <2 x double> %i.bp, double %i.bh, i64 1
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %5, <2 x double> %i.bq) ; 2 uses
  %6 = extractelement <2 x double> %i.br, i64 0
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %6)
  %i.bs = insertelement <2 x i1> poison, i1 %i.bc, i64 0
  %i.bt = shufflevector <2 x i1> %i.bs, <2 x i1> poison, <2 x i32> zeroinitializer
  %7 = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x double> %7, double %i.bl, i64 1
  %i.bu = insertelement <2 x double> %i.au, double 1.000000e+00, i64 0
  %i.bv = select <2 x i1> %i.bt, <2 x double> %8, <2 x double> %i.bu ; 4 uses
  %.50.i = select i1 %i.bc, double %i.bn, double 0.000000e+00 ; 3 uses
  %..i = select i1 %i.bc, double %i.bf, double %i.be ; 3 uses
  %.51.i = select i1 %i.bc, double %i.bg, double 0.000000e+00 ; 3 uses
  %9 = fmul double %..i, %..i
  %10 = fmul double %.50.i, %.50.i
  %11 = tail call double @llvm.fmuladd.f64(double %.51.i, double %.51.i, double %10)
  %i.bw = insertelement <2 x double> poison, double %11, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %9, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.bv, <2 x double> %i.bx)
  %12 = fadd <2 x double> %i.by, <double -0.000000e+00, double 0.000000e+00>
  %13 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %12)
  %14 = insertelement <2 x double> poison, double %sqrt.i.i.i, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = fdiv <2 x double> %15, %13
  %17 = fmul <2 x double> %16, <double f0x3F51111111111111, double 7.812500e-04>
  %i.bz = insertelement <2 x double> poison, double %.51.i, i64 0
  %18 = insertelement <2 x double> %i.bz, double %..i, i64 1
  %19 = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %20 = insertelement <2 x double> %19, double %.50.i, i64 1
  br label %DistribVector.exit.i

DistribVector.exit.i:                             ; preds = %DistribVector.exit.i, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %DistribVector.exit.i ]
  %.sroa.14.036.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.cx, %DistribVector.exit.i ]
  %i.ca = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.cv, %DistribVector.exit.i ]
  %i.cb = load i64, ptr @rnd, align 8, !tbaa !18
  %i.cc = mul i64 %i.cb, 1103515245
  %i.cd = add i64 %i.cc, 12345                    ; 2 uses
  %i.ce = mul i64 %i.cd, 1103515245
  %i.cf = add i64 %i.ce, 12345
  %21 = and i64 %i.cd, 2147483647
  %22 = and i64 %i.cf, 2147483647                 ; 2 uses
  %23 = insertelement <2 x i64> poison, i64 %22, i64 0
  %24 = insertelement <2 x i64> %23, i64 %21, i64 1
  %i.cg = uitofp nneg <2 x i64> %24 to <2 x double>
  %i.ch = fdiv nnan <2 x double> %i.cg, splat (double f0x41CFFFFFFF800000)
  %i.ci = fsub nnan <2 x double> splat (double 1.000000e+00), %i.ch
  %i.cj = fmul <2 x double> %17, %i.ci            ; 4 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1
  %i.cl = fmul double %i.ck, 0.000000e+00
  store i64 %22, ptr @rnd, align 8, !tbaa !18
  %i.cm = fmul <2 x double> %18, %i.cj
  %i.cn = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.co = fmul <2 x double> %20, %i.cn
  %foldExtExtBinop.a = fmul <2 x double> %i.bv, %i.cj
  %i.cp = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.cq = fadd <2 x double> %i.cm, %i.co
  %i.cr = fadd double %i.cl, %i.cp
  %i.cs = fadd <2 x double> %i.au, %i.cq
  store <2 x double> %i.cs, ptr %3, align 16, !tbaa !14
  %i.ct = fadd double %i.az, %i.cr
  store double %i.ct, ptr %.sroa.8.0..sroa_idx.i, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull @Camerapos, ptr noundef %3, ptr noundef %2, i32 noundef 6)
  %i.cu = load <2 x double>, ptr %2, align 16, !tbaa !14
  %i.cv = fadd <2 x double> %i.ca, %i.cu          ; 2 uses
  %i.cw = load double, ptr %i.v, align 16, !tbaa !16
  %i.cx = fadd double %.sroa.14.036.i, %i.cw      ; 2 uses
  %i.cy = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %i.cz = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.da = icmp slt i32 %i.cy, %i.cz
  br i1 %i.da, label %DistribVector.exit.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %DistribVector.exit.i, %.split.i
  %i.db = phi i32 [ %i.aj, %.split.i ], [ %i.cz, %DistribVector.exit.i ] ; 4 uses
  %.sroa.14.0.lcssa.i = phi double [ 0.000000e+00, %.split.i ], [ %i.cx, %DistribVector.exit.i ]
  %i.dc = phi <2 x double> [ zeroinitializer, %.split.i ], [ %i.cv, %DistribVector.exit.i ] ; 2 uses
  %i.dd = sitofp i32 %i.db to double
  %i.de = fdiv double 1.000000e+00, %i.dd         ; 3 uses
  %i.df = extractelement <2 x double> %i.dc, i64 0
  %i.dg = fmul double %i.df, %i.de
  %i.dh = extractelement <2 x double> %i.dc, i64 1
  %i.di = fmul double %i.dh, %i.de
  %i.dj = fmul double %i.de, %.sroa.14.0.lcssa.i
  %i.dk = fmul double %i.dg, 2.550000e+02
  %i.dl = fptoui double %i.dk to i8
  %i.dm = add nuw nsw i64 %indvars.iv.i, %i.ae
  %i.dn = mul nuw nsw i64 %i.dm, 3
  %i.do = getelementptr inbounds nuw i8, ptr @memory, i64 %i.dn ; 3 uses
  store i8 %i.dl, ptr %i.do, align 1, !tbaa !13
  %i.dp = fmul double %i.di, 2.550000e+02
  %i.dq = fptoui double %i.dp to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !13
  %i.ds = fmul double %i.dj, 2.550000e+02
  %i.dt = fptoui double %i.ds to i8
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  store i8 %i.dt, ptr %i.du, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 640
  br i1 %exitcond.not.i, label %.split43.us.i, label %.split.i, !llvm.loop !22

.split43.us.i:                                    ; preds = %._crit_edge.i, %.split.us.i
  %i.dv = phi i32 [ %i.y, %.split.us.i ], [ %i.db, %._crit_edge.i ]
  %i.dw = phi i32 [ %i.z, %.split.us.i ], [ %i.db, %._crit_edge.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 480
  br i1 %exitcond63.not.i, label %TraceScene.exit, label %.split45.i, !llvm.loop !24

TraceScene.exit:                                  ; preds = %.split43.us.i, %.split45.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %TraceScene.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %TraceScene.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr @memory, i64 %indvars.iv ; 3 uses
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !13
  %i.dz = and i8 %i.dy, -2
  %i.ea = zext i8 %i.dz to i32
  %i.eb = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ec = tail call i32 @fputc(i32 noundef %i.ea, ptr noundef %i.eb) ; 0 uses
  %i.ed = getelementptr i8, ptr %i.dx, i64 1
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !13
  %i.ef = and i8 %i.ee, -2
  %i.eg = zext i8 %i.ef to i32
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ei = tail call i32 @fputc(i32 noundef %i.eg, ptr noundef %i.eh) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = and i8 %i.ek, -2
  %i.em = zext i8 %i.el to i32
  %i.en = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.eo = tail call i32 @fputc(i32 noundef %i.em, ptr noundef %i.en) ; 0 uses
  %i.ep = icmp samesign ult i64 %indvars.iv, 921597
  br i1 %i.ep, label %bb.d, label %bb.e, !llvm.loop !25

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
  %13 = load double, ptr @Lightpos, align 8, !tbaa !26
  %14 = load double, ptr %4, align 8, !tbaa !26
  %15 = fsub double %13, %14                      ; 6 uses
  store double %15, ptr %6, align 8, !tbaa !26
  %16 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %17 = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Lightpos, i64 8), align 8, !tbaa !14
  %18 = load <2 x double>, ptr %16, align 8, !tbaa !14
  %19 = fsub <2 x double> %17, %18                ; 11 uses
  %20 = extractelement <2 x double> %19, i64 1    ; 6 uses
  %21 = extractelement <2 x double> %19, i64 0
  store <2 x double> %19, ptr %i.h, align 8, !tbaa !14
  %22 = load double, ptr %5, align 8, !tbaa !26   ; 6 uses
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %24 = load <2 x double>, ptr %23, align 8, !tbaa !14 ; 8 uses
  %foldExtExtBinop = fmul <2 x double> %19, %24
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.j = tail call double @llvm.fmuladd.f64(double %15, double %22, double %i.i)
  %i.k = extractelement <2 x double> %24, i64 1   ; 4 uses
  %i.l = tail call double @llvm.fmuladd.f64(double %20, double %i.k, double %i.j) ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.p = load double, ptr @Lightr, align 8, !tbaa !14
  %foldExtExtBinop129 = fmul <2 x double> %19, %19
  %25 = extractelement <2 x double> %foldExtExtBinop129, i64 0
  %i.q = tail call double @llvm.fmuladd.f64(double %15, double %15, double %25)
  %rnd.promoted = load i64, ptr @rnd, align 8
  %i.r = tail call double @llvm.fabs.f64(double %20)
  %i.s = fcmp ogt double %i.r, 1.000000e-05       ; 4 uses
  %i.t = fneg double %15                          ; 3 uses
  %i.u = fmul double %20, %i.t                    ; 3 uses
  %i.v = fmul double %20, %i.u
  %i.w = fmul double %i.u, %i.t
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.y = fmul double %21, %20                     ; 3 uses
  %i.z = fneg double %i.y
  %i.aa = fmul double %20, %i.z
  %i.ab = insertelement <2 x double> %19, double %i.y, i64 0
  %26 = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ac = insertelement <2 x double> %26, double %i.q, i64 1
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %19, <2 x double> %i.ac) ; 2 uses
  %28 = extractelement <2 x double> %27, i64 1
  %sqrt.i = tail call double @llvm.sqrt.f64(double %28) ; 2 uses
  %29 = fdiv double %i.p, %sqrt.i
  %30 = insertelement <2 x i1> poison, i1 %i.s, i64 0
  %31 = shufflevector <2 x i1> %30, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ad = insertelement <2 x double> %27, double %i.y, i64 1
  %32 = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %19, <2 x i32> <i32 0, i32 2>
  %33 = select <2 x i1> %31, <2 x double> %i.ad, <2 x double> %32 ; 4 uses
  %.100 = select i1 %i.s, double %i.aa, double 0.000000e+00 ; 3 uses
  %. = select i1 %i.s, double %i.u, double %i.t   ; 3 uses
  %.101 = select i1 %i.s, double %i.v, double 0.000000e+00 ; 3 uses
  %34 = fmul double %., %.
  %35 = fmul double %.100, %.100
  %36 = tail call double @llvm.fmuladd.f64(double %.101, double %.101, double %35)
  %i.ae = insertelement <2 x double> poison, double %36, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %34, i64 1
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> %33, <2 x double> %i.af)
  %37 = fadd <2 x double> %i.ag, <double -0.000000e+00, double 0.000000e+00>
  %38 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %37)
  %39 = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %40 = shufflevector <2 x double> %39, <2 x double> poison, <2 x i32> zeroinitializer
  %41 = fdiv <2 x double> %40, %38
  %42 = insertelement <2 x double> poison, double %29, i64 0
  %43 = shufflevector <2 x double> %42, <2 x double> poison, <2 x i32> zeroinitializer
  %44 = fmul <2 x double> %43, %41
  %45 = insertelement <2 x double> poison, double %.101, i64 0
  %i.ah = insertelement <2 x double> %45, double %., i64 1
  %46 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %47 = insertelement <2 x double> %46, double %.100, i64 1
  br label %DistribVector.exit

DistribVector.exit:                               ; preds = %.lr.ph, %DistribVector.exit
  %.086 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %DistribVector.exit ]
  %.06385 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %DistribVector.exit ]
  %i.ai = phi i64 [ %rnd.promoted, %.lr.ph ], [ %49, %DistribVector.exit ]
  %i.aj = mul i64 %i.ai, 1103515245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !27
  %i.ak = add i64 %i.aj, 12345                    ; 2 uses
  %i.al = mul i64 %i.ak, 1103515245
  %i.am = add i64 %i.al, 12345
  %48 = and i64 %i.ak, 2147483647
  %49 = and i64 %i.am, 2147483647                 ; 3 uses
  %50 = insertelement <2 x i64> poison, i64 %49, i64 0
  %51 = insertelement <2 x i64> %50, i64 %48, i64 1
  %i.an = uitofp nneg <2 x i64> %51 to <2 x double>
  %i.ao = fdiv nnan <2 x double> %i.an, splat (double f0x41CFFFFFFF800000)
  %i.ap = fsub nnan <2 x double> splat (double 1.000000e+00), %i.ao
  %i.aq = fmul <2 x double> %44, %i.ap            ; 4 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 1
  %i.as = fmul double %i.ar, 0.000000e+00
  store i64 %49, ptr @rnd, align 8, !tbaa !18
  %i.at = fmul <2 x double> %i.ah, %i.aq
  %i.au = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.av = fmul <2 x double> %47, %i.au
  %foldExtExtBinop131 = fmul <2 x double> %33, %i.aq
  %i.aw = extractelement <2 x double> %foldExtExtBinop131, i64 0
  %i.ax = fadd <2 x double> %i.at, %i.av
  %i.ay = fadd double %i.as, %i.aw
  %i.az = load <2 x double>, ptr %7, align 16, !tbaa !14
  %i.ba = fadd <2 x double> %i.az, %i.ax
  store <2 x double> %i.ba, ptr %7, align 16, !tbaa !14
  %i.bb = load double, ptr %i.x, align 16, !tbaa !16
  %i.bc = fadd double %i.bb, %i.ay
  store double %i.bc, ptr %i.x, align 16, !tbaa !16
  %i.bd = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.be = fcmp olt double %i.bd, 1.000000e-05
  %i.bf = fcmp ogt double %i.bd, 1.000000e+00
  %or.cond = or i1 %i.be, %i.bf
  %i.bg = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %.086, %i.bg     ; 2 uses
  %i.bh = add nuw nsw i32 %.06385, 1              ; 2 uses
  %i.bi = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %DistribVector.exit, label %select.unfold, !llvm.loop !28

bb.f:                                             ; preds = %bb.d
  %i.bk = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.bl = fcmp olt double %i.bk, 1.000000e-05
  %i.bm = fcmp ogt double %i.bk, 1.000000e+00
  %or.cond3 = or i1 %i.bl, %i.bm
  %i.bn = load i32, ptr @DISTRIB, align 4
  br i1 %or.cond3, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %DistribVector.exit, %bb.f
  %.2 = phi i32 [ %i.bn, %bb.f ], [ %spec.select, %DistribVector.exit ] ; 2 uses
  %i.bo = icmp sgt i32 %.2, 0
  br i1 %i.bo, label %bb.g, label %.thread

bb.g:                                             ; preds = %select.unfold
  %52 = shufflevector <2 x double> %19, <2 x double> %24, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bp = fmul <2 x double> %52, %52
  %53 = insertelement <2 x double> poison, double %15, i64 0
  %i.bq = insertelement <2 x double> %53, double %22, i64 1 ; 2 uses
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.bq, <2 x double> %i.bp)
  %54 = shufflevector <2 x double> %24, <2 x double> %19, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %54, <2 x double> %54, <2 x double> %i.br) ; 2 uses
  %shift = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop133 = fmul <2 x double> %i.bs, %shift
  %i.bt = extractelement <2 x double> %foldExtExtBinop133, i64 0
  %i.bu = tail call double @sqrt(double noundef %i.bt) #13, !tbaa !4
  %i.bv = fdiv double %i.l, %i.bu
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load double, ptr %i.bx, align 8, !tbaa !30
  %i.bz = fmul double %i.bv, %i.by
  %i.ca = uitofp nneg i32 %.2 to double
  %i.cb = fmul double %i.bz, %i.ca
  %i.cc = load i32, ptr @DISTRIB, align 4, !tbaa !4
  %i.cd = sitofp i32 %i.cc to double
  %i.ce = fdiv double %i.cb, %i.cd
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c, %select.unfold, %bb.g
  %.065 = phi double [ %i.ce, %bb.g ], [ 0.000000e+00, %select.unfold ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !29  ; 4 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !32
  %i.ch = load double, ptr @Ambient, align 8, !tbaa !14
  %i.ci = fadd double %.065, %i.ch
  %i.cj = fmul double %i.cg, %i.ci                ; 2 uses
  store double %i.cj, ptr %2, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load double, ptr @Ambient, align 8, !tbaa !14
  %i.cm = fadd double %.065, %i.cl
  %i.cn = load <2 x double>, ptr %i.ck, align 8, !tbaa !14
  %i.co = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.cp, %i.cn          ; 2 uses
  store <2 x double> %i.cq, ptr %i.d, align 8, !tbaa !14
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !33
  %i.ct = fcmp ogt double %i.cs, 1.000000e-05
  br i1 %i.ct, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.thread
  %foldExtExtBinop135 = fmul <2 x double> %24, %24
  %i.cu = extractelement <2 x double> %foldExtExtBinop135, i64 0
  %i.cv = tail call double @llvm.fmuladd.f64(double %22, double %22, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.k, double %i.k, double %i.cv)
  %i.cx = load double, ptr %1, align 8, !tbaa !26 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.da = load <2 x double>, ptr %i.cy, align 8, !tbaa !14 ; 3 uses
  %foldExtExtBinop137 = fmul <2 x double> %24, %i.da
  %i.db = extractelement <2 x double> %foldExtExtBinop137, i64 0
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.cx, double %22, double %i.db)
  %i.dd = extractelement <2 x double> %i.da, i64 1
  %i.de = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.k, double %i.dc)
  %i.df = fmul double %i.de, -2.000000e+00
  %i.dg = fdiv double %i.df, %i.cw                ; 2 uses
  %i.dh = tail call double @llvm.fmuladd.f64(double %i.dg, double %22, double %i.cx) ; 4 uses
  store double %i.dh, ptr %7, align 16, !tbaa !26
  %i.di = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %24, <2 x double> %i.da) ; 7 uses
  store <2 x double> %i.dk, ptr %i.cz, align 8, !tbaa !14
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %i.e, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cf, i64 40 ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !34
  %i.do = fcmp ogt double %i.dn, 1.000000e-05
  br i1 %i.do, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.dp = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph93, label %._crit_edge

.lr.ph93:                                         ; preds = %.preheader
  %i.dr = extractelement <2 x double> %i.dk, i64 1 ; 5 uses
  %i.ds = tail call double @llvm.fabs.f64(double %i.dr)
  %i.dt = fcmp ogt double %i.ds, 1.000000e-05     ; 5 uses
  %i.du = fneg double %i.dh                       ; 3 uses
  %i.dv = fmul double %i.dr, %i.du                ; 3 uses
  %i.dw = fmul double %i.dr, %i.dv
  %i.dx = fmul double %i.dv, %i.du
  %i.dy = extractelement <2 x double> %i.dk, i64 0 ; 2 uses
  %foldExtExtBinop139 = fmul <2 x double> %i.dk, %i.dk
  %i.dz = extractelement <2 x double> %foldExtExtBinop139, i64 0
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dh, double %i.dz)
  %i.eb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ec = add nsw i32 %3, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ee = fmul double %i.dr, %i.dy                ; 3 uses
  %i.ef = fneg double %i.ee
  %i.eg = fmul double %i.dr, %i.ef
  %i.eh = insertelement <2 x double> %i.dk, double %i.ee, i64 0
  %i.ei = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.ea, i64 1
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.dk, <2 x double> %i.ej) ; 2 uses
  %i.el = extractelement <2 x double> %i.ek, i64 1
  %sqrt.i.i77 = tail call double @llvm.sqrt.f64(double %i.el)
  %i.em = extractelement <2 x double> %i.ek, i64 0
  %.104 = select i1 %i.dt, double %i.em, double 1.000000e+00 ; 2 uses
  %.105 = select i1 %i.dt, double %i.eg, double 0.000000e+00 ; 3 uses
  %.103 = select i1 %i.dt, double %i.ee, double %i.dy ; 2 uses
  %.102 = select i1 %i.dt, double %i.dv, double %i.du ; 3 uses
  %.106 = select i1 %i.dt, double %i.dw, double 0.000000e+00 ; 3 uses
  %i.en = fmul double %.102, %.102
  %i.eo = fmul double %.105, %.105
  %i.ep = tail call double @llvm.fmuladd.f64(double %.106, double %.106, double %i.eo)
  %i.eq = insertelement <2 x double> poison, double %.104, i64 0
  %i.er = insertelement <2 x double> %i.eq, double %.103, i64 1 ; 2 uses
  %i.es = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.en, i64 1
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.er, <2 x double> %i.er, <2 x double> %i.et)
  %i.ev = fadd <2 x double> %i.eu, <double -0.000000e+00, double 0.000000e+00>
  %i.ew = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ev)
  %i.ex = insertelement <2 x double> poison, double %sqrt.i.i77, i64 0
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = fdiv <2 x double> %i.ey, %i.ew
  %i.fa = insertelement <2 x double> poison, double %.106, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %.102, i64 1
  %i.fc = insertelement <2 x double> poison, double %.103, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %.105, i64 1
  br label %DistribVector.exit80

DistribVector.exit80:                             ; preds = %.lr.ph93, %DistribVector.exit80
  %.16492 = phi i32 [ 0, %.lr.ph93 ], [ %i.go, %DistribVector.exit80 ]
  %i.fe = phi double [ 0.000000e+00, %.lr.ph93 ], [ %i.gl, %DistribVector.exit80 ]
  %i.ff = phi <2 x double> [ zeroinitializer, %.lr.ph93 ], [ %i.gn, %DistribVector.exit80 ]
  %i.fg = load double, ptr %i.dm, align 8, !tbaa !34
  %i.fh = load i64, ptr @rnd, align 8, !tbaa !18
  %i.fi = mul i64 %i.fh, 1103515245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !27
  %i.fj = add i64 %i.fi, 12345                    ; 2 uses
  %i.fk = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x double> %i.fl, %i.ez
  %i.fn = mul i64 %i.fj, 1103515245
  %i.fo = add i64 %i.fn, 12345
  %i.fp = and i64 %i.fj, 2147483647
  %i.fq = and i64 %i.fo, 2147483647               ; 2 uses
  %i.fr = insertelement <2 x i64> poison, i64 %i.fq, i64 0
  %i.fs = insertelement <2 x i64> %i.fr, i64 %i.fp, i64 1
  %i.ft = uitofp nneg <2 x i64> %i.fs to <2 x double>
  %i.fu = fdiv nnan <2 x double> %i.ft, splat (double f0x41CFFFFFFF800000)
  %i.fv = fsub nnan <2 x double> splat (double 1.000000e+00), %i.fu
  %i.fw = fmul <2 x double> %i.fm, %i.fv          ; 4 uses
  %i.fx = extractelement <2 x double> %i.fw, i64 1
  %i.fy = fmul double %i.fx, 0.000000e+00
  store i64 %i.fq, ptr @rnd, align 8, !tbaa !18
  %i.fz = fmul <2 x double> %i.fb, %i.fw
  %i.ga = shufflevector <2 x double> %i.fw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gb = fmul <2 x double> %i.fd, %i.ga
  %i.gc = extractelement <2 x double> %i.fw, i64 0
  %i.gd = fmul double %.104, %i.gc
  %i.ge = fadd <2 x double> %i.fz, %i.gb
  %i.gf = fadd double %i.fy, %i.gd
  %i.gg = load <2 x double>, ptr %8, align 16, !tbaa !14
  %i.gh = fadd <2 x double> %i.gg, %i.ge
  store <2 x double> %i.gh, ptr %8, align 16, !tbaa !14
  %i.gi = load double, ptr %i.eb, align 16, !tbaa !16
  %i.gj = fadd double %i.gi, %i.gf
  store double %i.gj, ptr %i.eb, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %10, i32 noundef %i.ec)
  %i.gk = load double, ptr %10, align 8, !tbaa !26
  %i.gl = fadd double %i.gk, %i.fe                ; 2 uses
  %i.gm = load <2 x double>, ptr %i.ed, align 8, !tbaa !14
  %i.gn = fadd <2 x double> %i.gm, %i.ff          ; 2 uses
  %i.go = add nuw nsw i32 %.16492, 1              ; 2 uses
  %i.gp = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.gq = icmp slt i32 %i.go, %i.gp
  br i1 %i.gq, label %DistribVector.exit80, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %DistribVector.exit80, %.preheader
  %.lcssa87 = phi double [ 0.000000e+00, %.preheader ], [ %i.gl, %DistribVector.exit80 ]
  %.lcssa = phi i32 [ %i.dp, %.preheader ], [ %i.gp, %DistribVector.exit80 ]
  %i.gr = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.gn, %DistribVector.exit80 ]
  %i.gs = sitofp i32 %.lcssa to double
  %i.gt = fdiv double 1.000000e+00, %i.gs         ; 2 uses
  %i.gu = fmul double %i.gt, %.lcssa87
  %i.gv = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.gw = shufflevector <2 x double> %i.gv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = fmul <2 x double> %i.gw, %i.gr
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.gy = add nsw i32 %3, -1
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %9, i32 noundef %i.gy)
  %.pre = load double, ptr %9, align 8, !tbaa !26
  %i.gz = load <2 x double>, ptr %i.dl, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ha = phi double [ %.pre, %bb.j ], [ %i.gu, %._crit_edge ]
  %i.hb = phi <2 x double> [ %i.gz, %bb.j ], [ %i.gx, %._crit_edge ]
  %i.hc = load double, ptr %i.cr, align 8, !tbaa !33 ; 2 uses
  %i.hd = load double, ptr %2, align 8, !tbaa !26
  %i.he = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.hc, double %i.hd) ; 2 uses
  store double %i.he, ptr %2, align 8, !tbaa !26
  %i.hf = load <2 x double>, ptr %i.d, align 8, !tbaa !14
  %i.hg = insertelement <2 x double> poison, double %i.hc, i64 0
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hb, <2 x double> %i.hh, <2 x double> %i.hf) ; 2 uses
  %i.hj = extractelement <2 x double> %i.hi, i64 0
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %i.hk = load double, ptr %1, align 8, !tbaa !26 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !36 ; 2 uses
  %i.hn = fmul double %i.hm, %i.hm
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hk, double %i.hk, double %i.hn) ; 2 uses
  %i.hp = fcmp ogt double %i.ho, 0.000000e+00
  br i1 %i.hp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %sqrt = tail call double @llvm.sqrt.f64(double %i.ho)
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !16
  %i.hs = tail call double @llvm.fabs.f64(double %i.hr)
  %i.ht = fdiv double %i.hs, %sqrt
  %i.hu = tail call double @atan(double noundef %i.ht) #13, !tbaa !4
  %i.hv = fmul double %i.hu, f0x3FE45F306C8462A6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.066 = phi double [ %i.hv, %bb.m ], [ 1.000000e+00, %bb.l ] ; 3 uses
  %i.hw = load double, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 24), align 8, !tbaa !26
  %i.hx = load double, ptr @Skycolor, align 16, !tbaa !26
  %i.hy = fsub double 1.000000e+00, %.066         ; 2 uses
  %i.hz = fmul double %i.hy, %i.hx
  %i.ia = tail call double @llvm.fmuladd.f64(double %i.hw, double %.066, double %i.hz) ; 2 uses
  store double %i.ia, ptr %2, align 8, !tbaa !26
  %i.ib = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 32), align 16, !tbaa !14
  %i.ic = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 8), align 8, !tbaa !14
  %i.id = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x double> %i.ie, %i.ic
  %i.ig = insertelement <2 x double> poison, double %.066, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.ih, <2 x double> %i.if) ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 0
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.k
  %storemerge = phi double [ %i.ij, %bb.n ], [ %i.hj, %bb.k ]
  %.ph123 = phi double [ %i.ia, %bb.n ], [ %i.he, %bb.k ]
  %i.ik = phi <2 x double> [ %i.ii, %bb.n ], [ %i.hi, %bb.k ] ; 2 uses
  store double %storemerge, ptr %i.d, align 8, !tbaa !36
  %i.il = extractelement <2 x double> %i.ik, i64 1
  store double %i.il, ptr %i.c, align 8, !tbaa !16
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.thread
  %i.im = phi double [ %i.cj, %.thread ], [ %.ph123, %.sink.split ]
  %i.in = phi <2 x double> [ %i.cq, %.thread ], [ %i.ik, %.sink.split ] ; 2 uses
  %i.io = fcmp ogt double %i.im, 1.000000e+00
  br i1 %i.io, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %2, align 8, !tbaa !26
end_hunk_0
