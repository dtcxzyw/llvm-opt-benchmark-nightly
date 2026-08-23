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
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.split45.i, label %.split45.us.i

.split45.us.i:                                    ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(921600) @memory, i8 0, i64 921600, i1 false), !tbaa !13
  br label %TraceScene.exit

.split45.i:                                       ; preds = %bb.c, %.split43.us.i
  %i.y = phi i32 [ %i.eh, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.z = phi i32 [ %i.ei, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.i, %.split43.us.i ], [ 0, %bb.c ] ; 4 uses
  %i.aa = trunc i64 %indvar.i to i32
  %i.ab = sub i32 240, %i.aa
  %4 = sitofp i32 %i.ab to double
  %i.ac = fdiv double %4, 4.800000e+02            ; 2 uses
  %i.ad = mul nuw nsw i64 %indvar.i, 640
  %i.ae = icmp sgt i32 %i.z, 0
  br i1 %i.ae, label %.split.i.preheader, label %.split.us.i

.split.i.preheader:                               ; preds = %.split45.i
  %i.af = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.split.i

.split.us.i:                                      ; preds = %.split45.i
  %i.ah = mul nuw nsw i64 %indvar.i, 1920
  %scevgep.i = getelementptr nuw i8, ptr @memory, i64 %i.ah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %scevgep.i, i8 0, i64 1920, i1 false), !tbaa !13
  br label %.split43.us.i

.split.i:                                         ; preds = %.split.i.preheader, %._crit_edge.i
  %i.ai = phi i32 [ %i.dn, %._crit_edge.i ], [ %i.y, %.split.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.split.i.preheader ] ; 3 uses
  %i.aj = trunc i64 %indvars.iv.i to i32
  %i.ak = add i32 %i.aj, -320
  %i.al = sitofp i32 %i.ak to double
  %i.am = fdiv double %i.al, 6.400000e+02         ; 2 uses
  %i.an = load <2 x double>, ptr @Cameraright, align 16, !tbaa !14
  %i.ao = load <2 x double>, ptr @Cameradir, align 16, !tbaa !14
  %i.ap = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.aq, <2 x double> %i.ao)
  %i.as = load <2 x double>, ptr @Cameraup, align 16, !tbaa !14
  %i.at = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.ag, <2 x double> %i.ar) ; 6 uses
  %i.au = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraright, i64 16), align 16, !tbaa !16
  %i.av = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameradir, i64 16), align 16, !tbaa !16
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.au, double %i.am, double %i.av)
  %i.ax = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraup, i64 16), align 16, !tbaa !16
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ac, double %i.aw) ; 8 uses
  %i.az = icmp sgt i32 %i.ai, 0
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split.i
  %i.ba = tail call double @llvm.fabs.f64(double %i.ay)
  %i.bb = fcmp ogt double %i.ba, 1.000000e-05     ; 5 uses
  %i.bc = extractelement <2 x double> %i.at, i64 0
  %i.bd = fneg double %i.bc                       ; 3 uses
  %i.be = fmul double %i.ay, %i.bd                ; 3 uses
  %i.bf = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.bg = fmul double %i.bf, %i.ay                ; 3 uses
  %i.bh = fmul double %i.ay, %i.be
  %i.bi = fneg double %i.bg
  %i.bj = fmul double %i.ay, %i.bi
  %i.bk = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.bl = insertelement <2 x double> %i.bk, double %i.be, i64 1
  %i.bm = insertelement <2 x double> %i.bk, double %i.bd, i64 1
  %i.bn = fmul <2 x double> %i.bl, %i.bm
  %i.bo = insertelement <2 x double> %i.at, double %i.bg, i64 1
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bo, <2 x double> %i.at, <2 x double> %i.bn) ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0
  %i.br = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.bq)
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.br)
  %i.bs = extractelement <2 x double> %i.bp, i64 1
  %.49.i = select i1 %i.bb, double %i.bs, double 1.000000e+00 ; 2 uses
  %.50.i = select i1 %i.bb, double %i.bj, double 0.000000e+00
  %..i = select i1 %i.bb, double %i.be, double %i.bd
  %.48.i = select i1 %i.bb, double %i.bg, double %i.bf
  %.51.i = select i1 %i.bb, double %i.bh, double 0.000000e+00 ; 2 uses
  %i.bt = insertelement <2 x double> poison, double %.50.i, i64 0 ; 2 uses
  %i.bu = insertelement <2 x double> %i.bt, double %..i, i64 1 ; 3 uses
  %i.bv = fmul <2 x double> %i.bu, %i.bu
  %i.bw = insertelement <2 x double> poison, double %.51.i, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %.48.i, i64 1 ; 3 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bx, <2 x double> %i.bv)
  %i.bz = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.49.i, i64 0 ; 2 uses
  %i.ca = insertelement <2 x double> %i.bz, double 0.000000e+00, i64 1
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.ca, <2 x double> %i.by)
  %i.cc = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cb)
  %i.cd = insertelement <2 x double> poison, double %sqrt.i.i.i, i64 0
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = fdiv <2 x double> %i.ce, %i.cc
  %i.cg = fmul <2 x double> %i.cf, <double f0x3F51111111111111, double 7.812500e-04>
  %i.ch = shufflevector <2 x double> %i.bx, <2 x double> %i.bt, <2 x i32> <i32 1, i32 2>
  %i.ci = insertelement <2 x double> %i.bu, double %.51.i, i64 0
  %i.cj = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.49.i, i64 0
  br label %DistribVector.exit.i

DistribVector.exit.i:                             ; preds = %DistribVector.exit.i, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %i.dk, %DistribVector.exit.i ]
  %.sroa.026.036.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.dh, %DistribVector.exit.i ]
  %i.ck = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.dj, %DistribVector.exit.i ]
  %i.cl = load i64, ptr @rnd, align 8, !tbaa !18
  %i.cm = mul i64 %i.cl, 1103515245
  %i.cn = add i64 %i.cm, 12345                    ; 2 uses
  %i.co = mul i64 %i.cn, 1103515245
  %i.cp = add i64 %i.co, 12345
  %i.cq = and i64 %i.cn, 2147483647
  %i.cr = and i64 %i.cp, 2147483647               ; 2 uses
  %i.cs = insertelement <2 x i64> poison, i64 %i.cr, i64 0
  %i.ct = insertelement <2 x i64> %i.cs, i64 %i.cq, i64 1
  %i.cu = uitofp nneg <2 x i64> %i.ct to <2 x double>
  %i.cv = fdiv nnan <2 x double> %i.cu, splat (double f0x41CFFFFFFF800000)
  %i.cw = fsub nnan <2 x double> splat (double 1.000000e+00), %i.cv
  %i.cx = fmul <2 x double> %i.cg, %i.cw          ; 3 uses
  store i64 %i.cr, ptr @rnd, align 8, !tbaa !18
  %i.cy = fmul <2 x double> %i.ci, %i.cx
  %i.cz = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.da = fmul <2 x double> %i.ch, %i.cz
  %i.db = fmul <2 x double> %i.cj, %i.cx          ; 2 uses
  %i.dc = fadd <2 x double> %i.cy, %i.da
  %shift = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %shift, %i.db
  %i.dd = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.de = fadd <2 x double> %i.at, %i.dc
  store <2 x double> %i.de, ptr %3, align 16, !tbaa !14
  %i.df = fadd double %i.ay, %i.dd
  store double %i.df, ptr %.sroa.8.0..sroa_idx.i, align 16, !tbaa !16
  call fastcc void @TraceLine(ptr noundef nonnull @Camerapos, ptr noundef %3, ptr noundef %2, i32 noundef 6)
  %i.dg = load double, ptr %2, align 8, !tbaa !20
  %i.dh = fadd double %.sroa.026.036.i, %i.dg     ; 2 uses
  %i.di = load <2 x double>, ptr %i.v, align 8, !tbaa !14
  %i.dj = fadd <2 x double> %i.ck, %i.di          ; 2 uses
  %i.dk = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %i.dl = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %DistribVector.exit.i, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %DistribVector.exit.i, %.split.i
  %i.dn = phi i32 [ %i.ai, %.split.i ], [ %i.dl, %DistribVector.exit.i ] ; 4 uses
  %.sroa.026.0.lcssa.i = phi double [ 0.000000e+00, %.split.i ], [ %i.dh, %DistribVector.exit.i ]
  %i.do = phi <2 x double> [ zeroinitializer, %.split.i ], [ %i.dj, %DistribVector.exit.i ]
  %i.dp = sitofp i32 %i.dn to double
  %i.dq = fdiv double 1.000000e+00, %i.dp         ; 2 uses
  %i.dr = fmul double %i.dq, %.sroa.026.0.lcssa.i
  %i.ds = fmul double %i.dr, 2.550000e+02
  %i.dt = fptoui double %i.ds to i8
  %i.du = add nuw nsw i64 %indvars.iv.i, %i.ad
  %i.dv = mul nuw nsw i64 %i.du, 3
  %i.dw = getelementptr inbounds nuw i8, ptr @memory, i64 %i.dv ; 3 uses
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.dy = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x double> %i.do, %i.dz
  %i.eb = fmul <2 x double> %i.ea, splat (double 2.550000e+02) ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %i.ed = fptoui double %i.ec to i8
  store i8 %i.ed, ptr %i.dx, align 1, !tbaa !13
  %i.ee = extractelement <2 x double> %i.eb, i64 1
  %i.ef = fptoui double %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 640
  br i1 %exitcond.not.i, label %.split43.us.i, label %.split.i, !llvm.loop !23

.split43.us.i:                                    ; preds = %._crit_edge.i, %.split.us.i
  %i.eh = phi i32 [ %i.y, %.split.us.i ], [ %i.dn, %._crit_edge.i ]
  %i.ei = phi i32 [ %i.z, %.split.us.i ], [ %i.dn, %._crit_edge.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 480
  br i1 %exitcond63.not.i, label %TraceScene.exit, label %.split45.i, !llvm.loop !25

TraceScene.exit:                                  ; preds = %.split43.us.i, %.split45.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %TraceScene.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %TraceScene.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr @memory, i64 %indvars.iv ; 3 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = and i8 %i.ek, -2
  %i.em = zext i8 %i.el to i32
  %i.en = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.eo = tail call i32 @fputc(i32 noundef %i.em, ptr noundef %i.en) ; 0 uses
  %i.ep = getelementptr i8, ptr %i.ej, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !13
  %i.er = and i8 %i.eq, -2
  %i.es = zext i8 %i.er to i32
  %i.et = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.eu = tail call i32 @fputc(i32 noundef %i.es, ptr noundef %i.et) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 2
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !13
  %i.ex = and i8 %i.ew, -2
  %i.ey = zext i8 %i.ex to i32
  %i.ez = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.fa = tail call i32 @fputc(i32 noundef %i.ey, ptr noundef %i.ez) ; 0 uses
  %i.fb = icmp samesign ult i64 %indvars.iv, 921597
  br i1 %i.fb, label %bb.d, label %bb.e, !llvm.loop !26

bb.e:                                             ; preds = %bb.d
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2
end_hunk_0
