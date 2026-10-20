Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/distray?download=true
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
  %2 = alloca %struct.VECTOR, align 8             ; 5 uses
  %3 = alloca %struct.VECTOR, align 16            ; 5 uses
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11 ; 0 uses
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
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
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !24
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %i.j) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !24
  %i.l = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.k) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !24
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.8, i32 noundef 640, i32 noundef 480) #13 ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !24
  %i.p = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.o) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !24
  %fwrite8 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %i.q) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !24
  %i.s = tail call i32 @fputc(i32 noundef 10, ptr noundef %i.r) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr @DISTRIB, align 4, !tbaa !7 ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.split45.i, label %.split45.us.i

.split45.us.i:                                    ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(921600) @memory, i8 0, i64 921600, i1 false), !tbaa !27
  br label %TraceScene.exit

.split45.i:                                       ; preds = %bb.c, %.split43.us.i
  %i.w = phi i32 [ %i.ej, %.split43.us.i ], [ %i.u, %bb.c ] ; 2 uses
  %i.x = phi i32 [ %i.ek, %.split43.us.i ], [ %i.u, %bb.c ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.i, %.split43.us.i ], [ 0, %bb.c ] ; 4 uses
  %i.y = trunc i64 %indvar.i to i32
  %i.z = sub i32 240, %i.y
  %i.aa = sitofp i32 %i.z to double
  %i.ab = fdiv double %i.aa, 4.800000e+02         ; 2 uses
  %i.ac = mul nuw nsw i64 %indvar.i, 640
  %i.ad = icmp sgt i32 %i.x, 0
  br i1 %i.ad, label %.split.i.preheader, label %.split.us.i

.split.i.preheader:                               ; preds = %.split45.i
  %i.ae = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.i

.split.us.i:                                      ; preds = %.split45.i
  %i.ag = mul nuw nsw i64 %indvar.i, 1920
  %scevgep.i = getelementptr nuw i8, ptr @memory, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %scevgep.i, i8 0, i64 1920, i1 false), !tbaa !27
  br label %.split43.us.i

.split.i:                                         ; preds = %.split.i.preheader, %._crit_edge.i
  %i.ah = phi i32 [ %i.dp, %._crit_edge.i ], [ %i.w, %.split.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.split.i.preheader ] ; 3 uses
  %i.ai = trunc i64 %indvars.iv.i to i32
  %i.aj = add i32 %i.ai, -320
  %i.ak = sitofp i32 %i.aj to double
  %i.al = fdiv double %i.ak, 6.400000e+02         ; 2 uses
  %i.am = load <2 x double>, ptr @Cameraright, align 16, !tbaa !10
  %i.an = load <2 x double>, ptr @Cameradir, align 16, !tbaa !10
  %i.ao = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ap = shufflevector <2 x double> %i.ao, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.ap, <2 x double> %i.an)
  %i.ar = load <2 x double>, ptr @Cameraup, align 16, !tbaa !10
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.af, <2 x double> %i.aq) ; 7 uses
  %i.at = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraright, i64 16), align 16, !tbaa !12
  %i.au = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameradir, i64 16), align 16, !tbaa !12
  %i.av = tail call double @llvm.fmuladd.f64(double %i.at, double %i.al, double %i.au)
  %i.aw = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraup, i64 16), align 16, !tbaa !12
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ab, double %i.av) ; 8 uses
  %i.ay = icmp sgt i32 %i.ah, 0
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split.i
  %i.az = tail call double @llvm.fabs.f64(double %i.ax)
  %i.ba = fcmp ogt double %i.az, 1.000000e-05     ; 2 uses
  %i.bb = extractelement <2 x double> %i.as, i64 0
  %i.bc = fneg double %i.bb                       ; 3 uses
  %i.bd = fmul double %i.ax, %i.bc                ; 3 uses
  %i.be = fmul double %i.ax, %i.bd
  %i.bf = extractelement <2 x double> %i.as, i64 1
  %i.bg = fmul double %i.bf, %i.ax                ; 3 uses
  %i.bh = fneg double %i.bg
  %i.bi = fmul double %i.ax, %i.bh
  %4 = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %5 = insertelement <2 x double> %4, double %i.bd, i64 1
  %6 = insertelement <2 x double> %4, double %i.bc, i64 1
  %7 = fmul <2 x double> %5, %6
  %8 = insertelement <2 x double> %i.as, double %i.bg, i64 1
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %i.as, <2 x double> %7) ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ax, double %10)
  %11 = extractelement <2 x double> %9, i64 1
  %.49.i = select i1 %i.ba, double %11, double 1.000000e+00 ; 3 uses
  %i.bk = insertelement <2 x i1> poison, i1 %i.ba, i64 0
  %i.bl = shufflevector <2 x i1> %i.bk, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bm = insertelement <2 x double> poison, double %i.bg, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bi, i64 1
  %i.bo = shufflevector <2 x double> %i.as, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bp = select <2 x i1> %i.bl, <2 x double> %i.bn, <2 x double> %i.bo ; 3 uses
  %i.bq = insertelement <2 x double> poison, double %i.be, i64 0
  %i.br = insertelement <2 x double> %i.bq, double %i.bd, i64 1
  %i.bs = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bc, i64 1
  %i.bt = select <2 x i1> %i.bl, <2 x double> %i.br, <2 x double> %i.bs ; 3 uses
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> %i.bp, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.bv = fmul <2 x double> %i.bu, %i.bu
  %i.bw = shufflevector <2 x double> %i.bp, <2 x double> %i.bt, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> %i.bw, <2 x double> %i.bv) ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  %i.bz = fadd double %i.by, 0.000000e+00
  %i.ca = extractelement <2 x double> %i.bx, i64 1
  %i.cb = tail call double @llvm.fmuladd.f64(double %.49.i, double %.49.i, double %i.ca)
  %i.cc = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.49.i, i64 0
  br label %DistribVector.exit.i

DistribVector.exit.i:                             ; preds = %DistribVector.exit.i, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dm, %DistribVector.exit.i ]
  %.sroa.026.036.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.dj, %DistribVector.exit.i ]
  %i.cd = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.dl, %DistribVector.exit.i ]
  %i.ce = tail call double @sqrt(double noundef %i.bj) #13, !tbaa !7
  %i.cf = tail call double @sqrt(double noundef %i.bz) #13, !tbaa !7
  %i.cg = load i64, ptr @rnd, align 8, !tbaa !14
  %i.ch = mul i64 %i.cg, 1103515245
  %i.ci = tail call double @sqrt(double noundef %i.cb) #13, !tbaa !7
  %i.cj = add i64 %i.ch, 12345                    ; 2 uses
  %i.ck = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cf, i64 1
  %i.co = fdiv <2 x double> %i.cl, %i.cn
  %i.cp = fmul <2 x double> %i.co, <double f0x3F51111111111111, double 7.812500e-04>
  %i.cq = mul i64 %i.cj, 1103515245
  %i.cr = add i64 %i.cq, 12345                    ; 2 uses
  %i.cs = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %i.ct = insertelement <2 x i64> %i.cs, i64 %i.cj, i64 1
  %i.cu = and <2 x i64> %i.ct, splat (i64 2147483647)
  %i.cv = and i64 %i.cr, 2147483647
  %i.cw = uitofp nneg <2 x i64> %i.cu to <2 x double>
  %i.cx = fdiv nnan <2 x double> %i.cw, splat (double f0x41CFFFFFFF800000)
  %i.cy = fsub nnan <2 x double> splat (double 1.000000e+00), %i.cx
  %i.cz = fmul <2 x double> %i.cp, %i.cy          ; 3 uses
  store i64 %i.cv, ptr @rnd, align 8, !tbaa !14
  %i.da = fmul <2 x double> %i.bt, %i.cz
  %i.db = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = fmul <2 x double> %i.bp, %i.db
  %i.dd = fmul <2 x double> %i.cc, %i.cz          ; 2 uses
  %i.de = fadd <2 x double> %i.da, %i.dc
  %shift = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fadd <2 x double> %shift, %i.dd
  %i.df = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.dg = fadd <2 x double> %i.as, %i.de
  store <2 x double> %i.dg, ptr %3, align 16, !tbaa !10
  %i.dh = fadd double %i.ax, %i.df
  store double %i.dh, ptr %.sroa.8.0..sroa_idx.i, align 16, !tbaa !12
  call fastcc void @TraceLine(ptr noundef nonnull @Camerapos, ptr noundef %3, ptr noundef %2, i32 noundef 6)
  %i.di = load double, ptr %2, align 8, !tbaa !15
  %i.dj = fadd double %.sroa.026.036.i, %i.di     ; 2 uses
  %i.dk = load <2 x double>, ptr %i.t, align 8, !tbaa !10
  %i.dl = fadd <2 x double> %i.cd, %i.dk          ; 2 uses
  %i.dm = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %i.dn = load i32, ptr @DISTRIB, align 4, !tbaa !7 ; 2 uses
  %i.do = icmp slt i32 %i.dm, %i.dn
  br i1 %i.do, label %DistribVector.exit.i, label %._crit_edge.i, !llvm.loop !19

._crit_edge.i:                                    ; preds = %DistribVector.exit.i, %.split.i
  %i.dp = phi i32 [ %i.ah, %.split.i ], [ %i.dn, %DistribVector.exit.i ] ; 4 uses
  %.sroa.026.0.lcssa.i = phi double [ 0.000000e+00, %.split.i ], [ %i.dj, %DistribVector.exit.i ]
  %i.dq = phi <2 x double> [ zeroinitializer, %.split.i ], [ %i.dl, %DistribVector.exit.i ]
  %i.dr = sitofp i32 %i.dp to double
  %i.ds = fdiv double 1.000000e+00, %i.dr         ; 2 uses
  %i.dt = fmul double %i.ds, %.sroa.026.0.lcssa.i
  %i.du = fmul double %i.dt, 2.550000e+02
  %i.dv = fptoui double %i.du to i8
  %i.dw = add nuw nsw i64 %indvars.iv.i, %i.ac
  %i.dx = mul nuw nsw i64 %i.dw, 3
  %i.dy = getelementptr inbounds nuw i8, ptr @memory, i64 %i.dx ; 3 uses
  store i8 %i.dv, ptr %i.dy, align 1, !tbaa !27
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 1
  %i.ea = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ec = fmul <2 x double> %i.dq, %i.eb
  %i.ed = fmul <2 x double> %i.ec, splat (double 2.550000e+02) ; 2 uses
  %i.ee = extractelement <2 x double> %i.ed, i64 0
  %i.ef = fptoui double %i.ee to i8
  store i8 %i.ef, ptr %i.dz, align 1, !tbaa !27
  %i.eg = extractelement <2 x double> %i.ed, i64 1
  %i.eh = fptoui double %i.eg to i8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !27
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 640
  br i1 %exitcond.not.i, label %.split43.us.i, label %.split.i, !llvm.loop !20

.split43.us.i:                                    ; preds = %._crit_edge.i, %.split.us.i
  %i.ej = phi i32 [ %i.w, %.split.us.i ], [ %i.dp, %._crit_edge.i ]
  %i.ek = phi i32 [ %i.x, %.split.us.i ], [ %i.dp, %._crit_edge.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 480
  br i1 %exitcond63.not.i, label %TraceScene.exit, label %.split45.i, !llvm.loop !21

TraceScene.exit:                                  ; preds = %.split43.us.i, %.split45.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %TraceScene.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %TraceScene.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr @memory, i64 %indvars.iv ; 3 uses
  %i.em = load i8, ptr %i.el, align 1, !tbaa !27
  %i.en = and i8 %i.em, -2
  %i.eo = zext i8 %i.en to i32
  %i.ep = load ptr, ptr @stdout, align 8, !tbaa !24
  %i.eq = tail call i32 @fputc(i32 noundef %i.eo, ptr noundef %i.ep) ; 0 uses
  %i.er = getelementptr i8, ptr %i.el, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !27
  %i.et = and i8 %i.es, -2
  %i.eu = zext i8 %i.et to i32
  %i.ev = load ptr, ptr @stdout, align 8, !tbaa !24
  %i.ew = tail call i32 @fputc(i32 noundef %i.eu, ptr noundef %i.ev) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.ex = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !27
  %i.ez = and i8 %i.ey, -2
  %i.fa = zext i8 %i.ez to i32
  %i.fb = load ptr, ptr @stdout, align 8, !tbaa !24
  %i.fc = tail call i32 @fputc(i32 noundef %i.fa, ptr noundef %i.fb) ; 0 uses
  %i.fd = icmp samesign ult i64 %indvars.iv, 921597
  br i1 %i.fd, label %bb.d, label %bb.e, !llvm.loop !22

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
  %5 = alloca %struct.VECTOR, align 16            ; 5 uses
  %6 = alloca %struct.VECTOR, align 16            ; 6 uses
  %7 = alloca %struct.VECTOR, align 16            ; 12 uses
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
  %i.h = load <2 x double>, ptr @Lightpos, align 16, !tbaa !10
  %i.i = load <2 x double>, ptr %4, align 16, !tbaa !10
  %i.j = fsub <2 x double> %i.h, %i.i             ; 8 uses
  store <2 x double> %i.j, ptr %6, align 16, !tbaa !10
  %i.k = load double, ptr getelementptr inbounds nuw (i8, ptr @Lightpos, i64 16), align 16, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = load double, ptr %i.l, align 16, !tbaa !12
  %i.n = fsub double %i.k, %i.m                   ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.n, ptr %i.o, align 16, !tbaa !12
  %i.p = load <2 x double>, ptr %5, align 16, !tbaa !10 ; 9 uses
  %i.q = extractelement <2 x double> %i.j, i64 1  ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.j, %i.p
  %i.r = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.s = extractelement <2 x double> %i.p, i64 0  ; 2 uses
  %i.t = extractelement <2 x double> %i.j, i64 0  ; 4 uses
  %i.u = tail call double @llvm.fmuladd.f64(double %i.t, double %i.s, double %i.r)
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.w = load double, ptr %i.v, align 16, !tbaa !12 ; 4 uses
  %i.x = tail call double @llvm.fmuladd.f64(double %i.n, double %i.w, double %i.u) ; 2 uses
  %i.y = fcmp ogt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = load double, ptr @Lightr, align 8, !tbaa !10
  %i.aa = fmul double %i.q, %i.q
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.t, double %i.t, double %i.aa)
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.n, double %i.n, double %i.ab) ; 2 uses
  %i.ad = tail call double @sqrt(double noundef %i.ac) #13, !tbaa !7
  %i.ae = load i32, ptr @DISTRIB, align 4, !tbaa !7 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.ag = fdiv double %i.z, %i.ad
  %rnd.promoted = load i64, ptr @rnd, align 8
  %i.ah = tail call double @llvm.fabs.f64(double %i.n)
  %i.ai = fcmp ogt double %i.ah, 1.000000e-05     ; 2 uses
  %i.aj = fneg double %i.t                        ; 3 uses
  %i.ak = fmul double %i.n, %i.aj                 ; 3 uses
  %i.al = fmul double %i.n, %i.ak
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %14 = insertelement <2 x i1> poison, i1 %i.ai, i64 0
  %15 = shufflevector <2 x i1> %14, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %16 = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.j, <2 x i32> <i32 3, i32 1>
  %17 = insertelement <2 x double> poison, double %i.al, i64 0
  %18 = insertelement <2 x double> %17, double %i.ak, i64 1
  %19 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.aj, i64 1
  %20 = select <2 x i1> %15, <2 x double> %18, <2 x double> %19 ; 4 uses
  %21 = fmul double %i.q, %i.n                    ; 3 uses
  %22 = fneg double %21
  %23 = fmul double %i.n, %22
  %i.am = insertelement <2 x double> poison, double %21, i64 0
  %24 = insertelement <2 x double> %i.am, double %23, i64 1
  %i.an = select <2 x i1> %15, <2 x double> %24, <2 x double> %16 ; 5 uses
  %i.ao = insertelement <2 x double> %20, double %i.ak, i64 0
  %i.ap = insertelement <2 x double> %20, double %i.aj, i64 0
  %25 = fmul <2 x double> %i.ao, %i.ap
  %26 = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %27 = insertelement <2 x double> %26, double %21, i64 0
  %28 = shufflevector <2 x double> %i.j, <2 x double> %i.an, <2 x i32> <i32 1, i32 2>
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> %28, <2 x double> %25) ; 2 uses
  %30 = extractelement <2 x double> %29, i64 0
  %.96 = select i1 %i.ai, double %30, double 1.000000e+00 ; 3 uses
  %i.aq = extractelement <2 x double> %29, i64 1
  %i.ar = fadd double %i.aq, 0.000000e+00
  %foldExtExtBinop127 = fmul <2 x double> %i.an, %i.an
  %31 = extractelement <2 x double> %foldExtExtBinop127, i64 1
  %i.as = extractelement <2 x double> %20, i64 0  ; 2 uses
  %32 = tail call double @llvm.fmuladd.f64(double %i.as, double %i.as, double %31)
  %i.at = tail call double @llvm.fmuladd.f64(double %.96, double %.96, double %32)
  %i.au = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.96, i64 0
  br label %DistribVector.exit

DistribVector.exit:                               ; preds = %.lr.ph, %DistribVector.exit
  %.083 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %DistribVector.exit ]
  %.06382 = phi i32 [ 0, %.lr.ph ], [ %i.ch, %DistribVector.exit ]
  %i.ax = phi i64 [ %rnd.promoted, %.lr.ph ], [ %i.bo, %DistribVector.exit ]
  %i.ay = tail call double @sqrt(double noundef %i.ac) #13, !tbaa !7
  %i.az = tail call double @sqrt(double noundef %i.ar) #13, !tbaa !7
  %i.ba = mul i64 %i.ax, 1103515245
  %i.bb = tail call double @sqrt(double noundef %i.at) #13, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull align 16 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !31
  %i.bc = add i64 %i.ba, 12345                    ; 2 uses
  %i.bd = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.be = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.az, i64 1
  %i.bh = fdiv <2 x double> %i.be, %i.bg
  %i.bi = fmul <2 x double> %i.av, %i.bh
  %i.bj = mul i64 %i.bc, 1103515245
  %i.bk = add i64 %i.bj, 12345                    ; 2 uses
  %i.bl = insertelement <2 x i64> poison, i64 %i.bk, i64 0
  %i.bm = insertelement <2 x i64> %i.bl, i64 %i.bc, i64 1
  %i.bn = and <2 x i64> %i.bm, splat (i64 2147483647)
  %i.bo = and i64 %i.bk, 2147483647               ; 2 uses
  %i.bp = uitofp nneg <2 x i64> %i.bn to <2 x double>
  %i.bq = fdiv nnan <2 x double> %i.bp, splat (double f0x41CFFFFFFF800000)
  %i.br = fsub nnan <2 x double> splat (double 1.000000e+00), %i.bq
  %i.bs = fmul <2 x double> %i.bi, %i.br          ; 3 uses
  store i64 %i.bo, ptr @rnd, align 8, !tbaa !14
  %i.bt = fmul <2 x double> %20, %i.bs
  %i.bu = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = fmul <2 x double> %i.an, %i.bu
  %i.bw = fmul <2 x double> %i.aw, %i.bs          ; 2 uses
  %i.bx = fadd <2 x double> %i.bt, %i.bv
  %shift = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop129 = fadd <2 x double> %shift, %i.bw
  %i.by = extractelement <2 x double> %foldExtExtBinop129, i64 0
  %i.bz = load <2 x double>, ptr %7, align 16, !tbaa !10
  %i.ca = fadd <2 x double> %i.bz, %i.bx
  store <2 x double> %i.ca, ptr %7, align 16, !tbaa !10
  %i.cb = load double, ptr %13, align 16, !tbaa !12
  %i.cc = fadd double %i.cb, %i.by
  store double %i.cc, ptr %13, align 16, !tbaa !12
  %i.cd = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.ce = fcmp olt double %i.cd, 1.000000e-05
  %i.cf = fcmp ogt double %i.cd, 1.000000e+00
  %or.cond = or i1 %i.ce, %i.cf
  %i.cg = zext i1 %or.cond to i32
  %spec.select = add nuw nsw i32 %.083, %i.cg     ; 2 uses
  %i.ch = add nuw nsw i32 %.06382, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ch, %i.ae
  br i1 %exitcond.not, label %select.unfold, label %DistribVector.exit, !llvm.loop !29

bb.f:                                             ; preds = %bb.d
  %i.ci = call fastcc double @IntersectObjs(ptr noundef nonnull %4, ptr noundef %6, ptr noundef %11, ptr noundef %12, ptr noundef %i.b) ; 2 uses
  %i.cj = fcmp olt double %i.ci, 1.000000e-05
  %i.ck = fcmp ogt double %i.ci, 1.000000e+00
  %or.cond3 = or i1 %i.cj, %i.ck
  %i.cl = load i32, ptr @DISTRIB, align 4         ; 2 uses
  br i1 %or.cond3, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %DistribVector.exit, %bb.f
  %i.cm = phi i32 [ %i.cl, %bb.f ], [ %i.ae, %DistribVector.exit ]
  %.2 = phi i32 [ %i.cl, %bb.f ], [ %spec.select, %DistribVector.exit ] ; 2 uses
  %i.cn = icmp sgt i32 %.2, 0
  br i1 %i.cn, label %bb.g, label %.thread

bb.g:                                             ; preds = %select.unfold
  %i.co = shufflevector <2 x double> %i.p, <2 x double> %i.j, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.cp = fmul <2 x double> %i.co, %i.co
  %i.cq = shufflevector <2 x double> %i.j, <2 x double> %i.p, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cq, <2 x double> %i.cp)
  %i.cs = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ct = insertelement <2 x double> %i.cs, double %i.w, i64 1 ; 2 uses
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.ct, <2 x double> %i.cr) ; 2 uses
  %shift131 = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132.a = fmul <2 x double> %i.cu, %shift131
  %i.cv = extractelement <2 x double> %foldExtExtBinop132.a, i64 0
  %i.cw = tail call double @sqrt(double noundef %i.cv) #13, !tbaa !7
  %i.cx = fdiv double %i.x, %i.cw
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load double, ptr %i.cz, align 8, !tbaa !32
  %i.db = fmul double %i.cx, %i.da
  %i.dc = uitofp nneg i32 %.2 to double
  %i.dd = fmul double %i.db, %i.dc
  %i.de = sitofp i32 %i.cm to double
  %i.df = fdiv double %i.dd, %i.de
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f, %bb.c, %select.unfold, %bb.g
  %.065 = phi double [ %i.df, %bb.g ], [ 0.000000e+00, %select.unfold ], [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !17  ; 4 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !33
  %i.di = load double, ptr @Ambient, align 8, !tbaa !10
  %i.dj = fadd double %.065, %i.di
  %i.dk = fmul double %i.dh, %i.dj                ; 2 uses
  store double %i.dk, ptr %2, align 8, !tbaa !15
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dm = load double, ptr @Ambient, align 8, !tbaa !10
  %i.dn = fadd double %.065, %i.dm
  %i.do = load <2 x double>, ptr %i.dl, align 8, !tbaa !10
  %i.dp = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.dq, %i.do          ; 2 uses
  store <2 x double> %i.dr, ptr %i.d, align 8, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 32 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !34
  %i.du = fcmp ogt double %i.dt, 1.000000e-05
  br i1 %i.du, label %bb.h, label %bb.o

bb.h:                                             ; preds = %.thread
  %i.dv = load <2 x double>, ptr %1, align 8, !tbaa !10 ; 4 uses
  %i.dw = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dx = shufflevector <2 x double> %i.p, <2 x double> %i.dv, <2 x i32> <i32 1, i32 3>
  %i.dy = fmul <2 x double> %i.dw, %i.dx
  %i.dz = shufflevector <2 x double> %i.p, <2 x double> %i.dv, <2 x i32> <i32 0, i32 2>
  %i.ea = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.ea, <2 x double> %i.dy)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !12 ; 2 uses
  %i.ee = insertelement <2 x double> poison, double %i.w, i64 0 ; 2 uses
  %i.ef = insertelement <2 x double> %i.ee, double %i.ed, i64 1
  %i.eg = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.eg, <2 x double> %i.eb) ; 2 uses
  %i.ei = extractelement <2 x double> %i.eh, i64 1
  %i.ej = fmul double %i.ei, -2.000000e+00
  %i.ek = extractelement <2 x double> %i.eh, i64 0
  %i.el = fdiv double %i.ej, %i.ek                ; 3 uses
  %i.em = extractelement <2 x double> %i.dv, i64 0
  %i.en = tail call double @llvm.fmuladd.f64(double %i.el, double %i.s, double %i.em) ; 4 uses
  store double %i.en, ptr %7, align 16, !tbaa !15
  %i.eo = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.el, i64 0
  %i.ep = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.p, <2 x i32> <i32 3, i32 1>
  %i.eq = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.dv, <2 x i32> <i32 3, i32 1>
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.ep, <2 x double> %i.eq) ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.et = extractelement <2 x double> %i.er, i64 0 ; 2 uses
  store double %i.et, ptr %i.es, align 8, !tbaa !35
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.el, double %i.w, double %i.ed) ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.eu, ptr %i.ev, align 16, !tbaa !12
  %i.ew = getelementptr inbounds nuw i8, ptr %9, i64 8
  br i1 %i.e, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dg, i64 40 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !36
  %i.ez = fcmp ogt double %i.ey, 1.000000e-05
  br i1 %i.ez, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %i.fa = load i32, ptr @DISTRIB, align 4, !tbaa !7 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph90, label %._crit_edge

.lr.ph90:                                         ; preds = %.preheader
  %i.fc = tail call double @llvm.fabs.f64(double %i.eu)
  %i.fd = fcmp ogt double %i.fc, 1.000000e-05     ; 2 uses
  %i.fe = fneg double %i.en                       ; 3 uses
  %i.ff = fmul double %i.eu, %i.fe                ; 3 uses
  %i.fg = fmul double %i.eu, %i.ff
  %foldExtExtBinop134 = fmul <2 x double> %i.er, %i.er
  %33 = extractelement <2 x double> %foldExtExtBinop134, i64 0
  %34 = tail call double @llvm.fmuladd.f64(double %i.en, double %i.en, double %33)
  %35 = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.eu, double %34)
  %i.fh = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fi = add nsw i32 %3, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fk = fmul double %i.eu, %i.et                ; 3 uses
  %i.fl = fneg double %i.fk
  %i.fm = fmul double %i.eu, %i.fl
  %i.fn = insertelement <2 x i1> poison, i1 %i.fd, i64 0
  %i.fo = shufflevector <2 x i1> %i.fn, <2 x i1> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fp = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fq = insertelement <2 x double> %i.fp, double %i.fm, i64 1
  %i.fr = select <2 x i1> %i.fo, <2 x double> %i.fq, <2 x double> %i.er ; 5 uses
  %i.fs = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.ft = insertelement <2 x double> %i.fs, double %i.ff, i64 1
  %i.fu = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.fe, i64 1
  %i.fv = select <2 x i1> %i.fo, <2 x double> %i.ft, <2 x double> %i.fu ; 4 uses
  %36 = insertelement <2 x double> %i.fv, double %i.ff, i64 0
  %37 = insertelement <2 x double> %i.fv, double %i.fe, i64 0
  %i.fw = fmul <2 x double> %36, %37
  %i.fx = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.fy = insertelement <2 x double> %i.fx, double %i.fk, i64 0
  %38 = shufflevector <2 x double> %i.er, <2 x double> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %38, <2 x double> %i.fw) ; 2 uses
  %i.ga = extractelement <2 x double> %i.fz, i64 0
  %.101 = select i1 %i.fd, double %i.ga, double 1.000000e+00 ; 3 uses
  %i.gb = extractelement <2 x double> %i.fz, i64 1
  %i.gc = fadd double %i.gb, 0.000000e+00
  %foldExtExtBinop136 = fmul <2 x double> %i.fr, %i.fr
  %i.gd = extractelement <2 x double> %foldExtExtBinop136, i64 1
  %i.ge = extractelement <2 x double> %i.fv, i64 0 ; 2 uses
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.ge, double %i.gd)
  %i.gg = tail call double @llvm.fmuladd.f64(double %.101, double %.101, double %i.gf)
  %i.gh = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.101, i64 0
  br label %DistribVector.exit77

DistribVector.exit77:                             ; preds = %.lr.ph90, %DistribVector.exit77
  %.16489 = phi i32 [ 0, %.lr.ph90 ], [ %i.hx, %DistribVector.exit77 ]
  %i.gi = phi double [ 0.000000e+00, %.lr.ph90 ], [ %i.hu, %DistribVector.exit77 ]
  %i.gj = phi <2 x double> [ zeroinitializer, %.lr.ph90 ], [ %i.hw, %DistribVector.exit77 ]
  %i.gk = load double, ptr %i.ex, align 8, !tbaa !36
  %i.gl = tail call double @sqrt(double noundef %35) #13, !tbaa !7
  %i.gm = tail call double @sqrt(double noundef %i.gc) #13, !tbaa !7
  %i.gn = load i64, ptr @rnd, align 8, !tbaa !14
  %i.go = mul i64 %i.gn, 1103515245
  %i.gp = tail call double @sqrt(double noundef %i.gg) #13, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !31
  %i.gq = add i64 %i.go, 12345                    ; 2 uses
  %i.gr = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gt = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gm, i64 1
  %i.gv = fdiv <2 x double> %i.gs, %i.gu
  %i.gw = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x double> %i.gx, %i.gv
  %i.gz = mul i64 %i.gq, 1103515245
  %i.ha = add i64 %i.gz, 12345                    ; 2 uses
  %i.hb = insertelement <2 x i64> poison, i64 %i.ha, i64 0
  %i.hc = insertelement <2 x i64> %i.hb, i64 %i.gq, i64 1
  %i.hd = and <2 x i64> %i.hc, splat (i64 2147483647)
  %i.he = and i64 %i.ha, 2147483647
  %i.hf = uitofp nneg <2 x i64> %i.hd to <2 x double>
  %i.hg = fdiv nnan <2 x double> %i.hf, splat (double f0x41CFFFFFFF800000)
  %i.hh = fsub nnan <2 x double> splat (double 1.000000e+00), %i.hg
  %i.hi = fmul <2 x double> %i.gy, %i.hh          ; 3 uses
  store i64 %i.he, ptr @rnd, align 8, !tbaa !14
  %i.hj = fmul <2 x double> %i.fv, %i.hi
  %i.hk = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hl = fmul <2 x double> %i.fr, %i.hk
  %i.hm = fmul <2 x double> %i.gh, %i.hi          ; 2 uses
  %i.hn = fadd <2 x double> %i.hj, %i.hl
  %shift138 = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop139 = fadd <2 x double> %shift138, %i.hm
  %i.ho = extractelement <2 x double> %foldExtExtBinop139, i64 0
  %i.hp = load <2 x double>, ptr %8, align 16, !tbaa !10
  %i.hq = fadd <2 x double> %i.hp, %i.hn
  store <2 x double> %i.hq, ptr %8, align 16, !tbaa !10
  %i.hr = load double, ptr %i.fh, align 16, !tbaa !12
  %i.hs = fadd double %i.hr, %i.ho
  store double %i.hs, ptr %i.fh, align 16, !tbaa !12
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %8, ptr noundef %10, i32 noundef %i.fi)
  %i.ht = load double, ptr %10, align 8, !tbaa !15
  %i.hu = fadd double %i.ht, %i.gi                ; 2 uses
  %i.hv = load <2 x double>, ptr %i.fj, align 8, !tbaa !10
  %i.hw = fadd <2 x double> %i.hv, %i.gj          ; 2 uses
  %i.hx = add nuw nsw i32 %.16489, 1              ; 2 uses
  %i.hy = load i32, ptr @DISTRIB, align 4, !tbaa !7 ; 2 uses
  %i.hz = icmp slt i32 %i.hx, %i.hy
  br i1 %i.hz, label %DistribVector.exit77, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %DistribVector.exit77, %.preheader
  %.lcssa84 = phi double [ 0.000000e+00, %.preheader ], [ %i.hu, %DistribVector.exit77 ]
  %.lcssa = phi i32 [ %i.fa, %.preheader ], [ %i.hy, %DistribVector.exit77 ]
  %i.ia = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.hw, %DistribVector.exit77 ]
  %i.ib = sitofp i32 %.lcssa to double
  %i.ic = fdiv double 1.000000e+00, %i.ib         ; 2 uses
  %i.id = fmul double %i.ic, %.lcssa84
  %i.ie = insertelement <2 x double> poison, double %i.ic, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.if, %i.ia
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ih = add nsw i32 %3, -1
  call fastcc void @TraceLine(ptr noundef nonnull %4, ptr noundef %7, ptr noundef %9, i32 noundef %i.ih)
  %.pre = load double, ptr %9, align 8, !tbaa !15
  %i.ii = load <2 x double>, ptr %i.ew, align 8, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ij = phi double [ %.pre, %bb.j ], [ %i.id, %._crit_edge ]
  %i.ik = phi <2 x double> [ %i.ii, %bb.j ], [ %i.ig, %._crit_edge ]
  %i.il = load double, ptr %i.ds, align 8, !tbaa !34 ; 2 uses
  %i.im = load double, ptr %2, align 8, !tbaa !15
  %i.in = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.il, double %i.im) ; 2 uses
  store double %i.in, ptr %2, align 8, !tbaa !15
  %i.io = load <2 x double>, ptr %i.d, align 8, !tbaa !10
  %i.ip = insertelement <2 x double> poison, double %i.il, i64 0
  %i.iq = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ir = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %i.iq, <2 x double> %i.io) ; 2 uses
  %i.is = extractelement <2 x double> %i.ir, i64 0
  br label %.sink.split

bb.l:                                             ; preds = %bb.b
  %i.it = load double, ptr %1, align 8, !tbaa !15 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !35 ; 2 uses
  %i.iw = fmul double %i.iv, %i.iv
  %i.ix = tail call double @llvm.fmuladd.f64(double %i.it, double %i.it, double %i.iw)
  %i.iy = tail call double @sqrt(double noundef %i.ix) #13, !tbaa !7 ; 2 uses
  %i.iz = fcmp ogt double %i.iy, 0.000000e+00
  br i1 %i.iz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !12
  %i.jc = tail call double @llvm.fabs.f64(double %i.jb)
  %i.jd = fdiv double %i.jc, %i.iy
  %i.je = tail call double @atan(double noundef %i.jd) #13, !tbaa !7
  %i.jf = fmul double %i.je, f0x3FE45F306C8462A6
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.066 = phi double [ %i.jf, %bb.m ], [ 1.000000e+00, %bb.l ] ; 3 uses
  %i.jg = load double, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 24), align 8, !tbaa !15
  %i.jh = load double, ptr @Skycolor, align 16, !tbaa !15
  %i.ji = fsub double 1.000000e+00, %.066         ; 2 uses
  %i.jj = fmul double %i.ji, %i.jh
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jg, double %.066, double %i.jj) ; 2 uses
  store double %i.jk, ptr %2, align 8, !tbaa !15
  %i.jl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 32), align 16, !tbaa !10
  %i.jm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Skycolor, i64 8), align 8, !tbaa !10
  %i.jn = insertelement <2 x double> poison, double %i.ji, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x double> %i.jo, %i.jm
  %i.jq = insertelement <2 x double> poison, double %.066, i64 0
  %i.jr = shufflevector <2 x double> %i.jq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.js = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jr, <2 x double> %i.jp) ; 2 uses
  %i.jt = extractelement <2 x double> %i.js, i64 0
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.k
  %storemerge = phi double [ %i.jt, %bb.n ], [ %i.is, %bb.k ]
  %.ph121 = phi double [ %i.jk, %bb.n ], [ %i.in, %bb.k ]
  %i.ju = phi <2 x double> [ %i.js, %bb.n ], [ %i.ir, %bb.k ] ; 2 uses
  store double %storemerge, ptr %i.d, align 8, !tbaa !35
  %i.jv = extractelement <2 x double> %i.ju, i64 1
  store double %i.jv, ptr %i.c, align 8, !tbaa !12
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %.thread
  %i.jw = phi double [ %i.dk, %.thread ], [ %.ph121, %.sink.split ]
  %i.jx = phi <2 x double> [ %i.dr, %.thread ], [ %i.ju, %.sink.split ] ; 2 uses
  %i.jy = fcmp ogt double %i.jw, 1.000000e+00
  br i1 %i.jy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double 1.000000e+00, ptr %2, align 8, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jz = extractelement <2 x double> %i.jx, i64 0
  %i.ka = fcmp ogt double %i.jz, 1.000000e+00
  br i1 %i.ka, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !35
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.kb = extractelement <2 x double> %i.jx, i64 1
  %i.kc = fcmp ogt double %i.kb, 1.000000e+00
  br i1 %i.kc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !12
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
  %i.b = load double, ptr %i.a, align 8, !tbaa !12 ; 3 uses
  %i.c = tail call double @llvm.fabs.f64(double %i.b)
  %i.d = fcmp ogt double %i.c, 1.000000e-05
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr @Groundpos, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !12 ; 2 uses
  %i.h = fsub double %i.e, %i.g
  %i.i = fdiv double %i.h, %i.b                   ; 5 uses
  %i.j = fcmp ogt double %i.i, 1.000000e-05
  %i.k = fcmp olt double %i.i, 1.000000e+05
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load <2 x double>, ptr %0, align 8, !tbaa !10
end_hunk_0
