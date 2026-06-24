inline.NumInlined: 15
inline.NumDeleted: 6
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
@Cameraright = dso_local local_unnamed_addr global %struct.VECTOR { double 3.000000e+00, double 1.000000e+00, double 0.000000e+00 }, align 8
@Cameradir = dso_local local_unnamed_addr global %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 0.000000e+00 }, align 8
@Cameraup = dso_local local_unnamed_addr global %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.371700e+00 }, align 8
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
  %3 = alloca %struct.VECTOR, align 8             ; 6 uses
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
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 3 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.split45.i, label %.split45.us.i

.split45.us.i:                                    ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(921600) @memory, i8 0, i64 921600, i1 false), !tbaa !13
  br label %TraceScene.exit

.split45.i:                                       ; preds = %bb.c, %.split43.us.i
  %i.y = phi i32 [ %i.ec, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.z = phi i32 [ %i.ed, %.split43.us.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvar.i = phi i64 [ %indvar.next.i, %.split43.us.i ], [ 0, %bb.c ] ; 4 uses
  %i.aa = trunc i64 %indvar.i to i32
  %i.ab = sub i32 240, %i.aa
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fdiv double %i.ac, 4.800000e+02         ; 3 uses
  %i.ae = mul nuw nsw i64 %indvar.i, 640
  %i.af = icmp sgt i32 %i.z, 0
  br i1 %i.af, label %.split.i, label %.split.us.i

.split.us.i:                                      ; preds = %.split45.i
  %i.ag = mul nuw nsw i64 %indvar.i, 1920
  %scevgep.i = getelementptr nuw i8, ptr @memory, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1920) %scevgep.i, i8 0, i64 1920, i1 false), !tbaa !13
  br label %.split43.us.i

.split.i:                                         ; preds = %.split45.i, %._crit_edge.i
  %i.ah = phi i32 [ %i.di, %._crit_edge.i ], [ %i.y, %.split45.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %.split45.i ] ; 3 uses
  %i.ai = trunc i64 %indvars.iv.i to i32
  %i.aj = add i32 %i.ai, -320
  %i.ak = sitofp i32 %i.aj to double
  %i.al = fdiv double %i.ak, 6.400000e+02         ; 3 uses
  %i.am = load double, ptr @Cameraright, align 8, !tbaa !14
  %i.an = load double, ptr @Cameradir, align 8, !tbaa !14
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.am, double %i.al, double %i.an)
  %i.ap = load double, ptr @Cameraup, align 8, !tbaa !14
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ad, double %i.ao) ; 4 uses
  %i.ar = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraright, i64 8), align 8, !tbaa !17
  %i.as = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameradir, i64 8), align 8, !tbaa !17
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.al, double %i.as)
  %i.au = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraup, i64 8), align 8, !tbaa !17
  %i.av = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ad, double %i.at) ; 6 uses
  %i.aw = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraright, i64 16), align 8, !tbaa !18
  %i.ax = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameradir, i64 16), align 8, !tbaa !18
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.al, double %i.ax)
  %i.az = load double, ptr getelementptr inbounds nuw (i8, ptr @Cameraup, i64 16), align 8, !tbaa !18
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double %i.ad, double %i.ay) ; 8 uses
  %i.bb = icmp sgt i32 %i.ah, 0
  br i1 %i.bb, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.split.i
  %i.bc = tail call double @llvm.fabs.f64(double %i.ba)
  %i.bd = fcmp ogt double %i.bc, 1.000000e-05     ; 5 uses
  %i.be = fneg double %i.aq                       ; 3 uses
  %i.bf = fmul double %i.av, %i.ba                ; 3 uses
  %i.bg = fmul double %i.ba, %i.be                ; 3 uses
  %i.bh = fmul double %i.ba, %i.bg
  %i.bi = fneg double %i.bf
  %i.bj = fmul double %i.ba, %i.bi
  %i.bk = fmul double %i.bg, %i.be
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bf, double %i.av, double %i.bk)
  %i.bm = fmul double %i.av, %i.av
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.bm)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.ba, double %i.bn)
  %sqrt.i.i.i = tail call double @llvm.sqrt.f64(double %i.bo) ; 2 uses
  %..i = select i1 %i.bd, double %i.bg, double %i.be ; 3 uses
  %.48.i = select i1 %i.bd, double %i.bf, double %i.av ; 3 uses
  %.49.i = select i1 %i.bd, double %i.bl, double 1.000000e+00 ; 3 uses
  %.50.i = select i1 %i.bd, double %i.bj, double 0.000000e+00 ; 3 uses
  %.51.i = select i1 %i.bd, double %i.bh, double 0.000000e+00 ; 3 uses
  %i.bp = fmul double %..i, %..i
  %i.bq = tail call double @llvm.fmuladd.f64(double %.48.i, double %.48.i, double %i.bp)
  %i.br = fadd double %i.bq, 0.000000e+00
  %sqrt.i19.i.i = tail call double @llvm.sqrt.f64(double %i.br)
  %i.bs = fdiv double %sqrt.i.i.i, %sqrt.i19.i.i
  %i.bt = fmul double %i.bs, 7.812500e-04
  %i.bu = fmul double %.50.i, %.50.i
  %i.bv = tail call double @llvm.fmuladd.f64(double %.51.i, double %.51.i, double %i.bu)
  %i.bw = tail call double @llvm.fmuladd.f64(double %.49.i, double %.49.i, double %i.bv)
  %sqrt.i20.i.i = tail call double @llvm.sqrt.f64(double %i.bw)
  %i.bx = fdiv double %sqrt.i.i.i, %sqrt.i20.i.i
  %i.by = fmul double %i.bx, f0x3F51111111111111
  br label %DistribVector.exit.i

DistribVector.exit.i:                             ; preds = %DistribVector.exit.i, %.lr.ph.i
  %.037.i = phi i32 [ 0, %.lr.ph.i ], [ %i.df, %DistribVector.exit.i ]
  %.sroa.14.036.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %i.de, %DistribVector.exit.i ]
  %i.bz = phi <2 x double> [ zeroinitializer, %.lr.ph.i ], [ %i.dc, %DistribVector.exit.i ]
  %i.ca = load i64, ptr @rnd, align 8, !tbaa !19
  %i.cb = mul i64 %i.ca, 1103515245
  %i.cc = add i64 %i.cb, 12345                    ; 2 uses
  %i.cd = and i64 %i.cc, 2147483647
  %i.ce = uitofp nneg i64 %i.cd to double
  %i.cf = fdiv nnan double %i.ce, f0x41CFFFFFFF800000
  %i.cg = fsub nnan double 1.000000e+00, %i.cf
  %i.ch = fmul double %i.bt, %i.cg                ; 3 uses
  %i.ci = fmul double %.48.i, %i.ch
  %i.cj = fmul double %..i, %i.ch
  %i.ck = fmul double %i.ch, 0.000000e+00
  %i.cl = mul i64 %i.cc, 1103515245
  %i.cm = add i64 %i.cl, 12345
  %i.cn = and i64 %i.cm, 2147483647               ; 2 uses
  store i64 %i.cn, ptr @rnd, align 8, !tbaa !19
  %i.co = uitofp nneg i64 %i.cn to double
  %i.cp = fdiv nnan double %i.co, f0x41CFFFFFFF800000
  %i.cq = fsub nnan double 1.000000e+00, %i.cp
  %i.cr = fmul double %i.by, %i.cq                ; 3 uses
  %i.cs = fmul double %.51.i, %i.cr
  %i.ct = fmul double %.50.i, %i.cr
  %i.cu = fmul double %.49.i, %i.cr
  %i.cv = fadd double %i.ci, %i.cs
  %i.cw = fadd double %i.cj, %i.ct
  %i.cx = fadd double %i.ck, %i.cu
  %i.cy = fadd double %i.aq, %i.cv
  store double %i.cy, ptr %3, align 8, !tbaa !14
  %i.cz = fadd double %i.av, %i.cw
  store double %i.cz, ptr %.sroa.625.0..sroa_idx.i, align 8, !tbaa !17
  %i.da = fadd double %i.ba, %i.cx
  store double %i.da, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !18
  call fastcc void @TraceLine(ptr noundef nonnull @Camerapos, ptr noundef %3, ptr noundef %2, i32 noundef 6)
  %i.db = load <2 x double>, ptr %2, align 16, !tbaa !21
  %i.dc = fadd <2 x double> %i.bz, %i.db          ; 2 uses
  %i.dd = load double, ptr %i.v, align 16, !tbaa !18
  %i.de = fadd double %.sroa.14.036.i, %i.dd      ; 2 uses
  %i.df = add nuw nsw i32 %.037.i, 1              ; 2 uses
  %i.dg = load i32, ptr @DISTRIB, align 4, !tbaa !4 ; 2 uses
  %i.dh = icmp slt i32 %i.df, %i.dg
  br i1 %i.dh, label %DistribVector.exit.i, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %DistribVector.exit.i, %.split.i
  %i.di = phi i32 [ %i.ah, %.split.i ], [ %i.dg, %DistribVector.exit.i ] ; 4 uses
  %.sroa.14.0.lcssa.i = phi double [ 0.000000e+00, %.split.i ], [ %i.de, %DistribVector.exit.i ]
  %i.dj = phi <2 x double> [ zeroinitializer, %.split.i ], [ %i.dc, %DistribVector.exit.i ] ; 2 uses
  %i.dk = sitofp i32 %i.di to double
  %i.dl = fdiv double 1.000000e+00, %i.dk         ; 3 uses
  %i.dm = extractelement <2 x double> %i.dj, i64 0
  %i.dn = fmul double %i.dm, %i.dl
  %i.do = extractelement <2 x double> %i.dj, i64 1
  %i.dp = fmul double %i.do, %i.dl
  %i.dq = fmul double %i.dl, %.sroa.14.0.lcssa.i
  %i.dr = fmul double %i.dn, 2.550000e+02
  %i.ds = fptoui double %i.dr to i8
  %i.dt = add nuw nsw i64 %indvars.iv.i, %i.ae
  %i.du = mul nuw nsw i64 %i.dt, 3
  %i.dv = getelementptr inbounds nuw i8, ptr @memory, i64 %i.du ; 3 uses
  store i8 %i.ds, ptr %i.dv, align 1, !tbaa !13
  %i.dw = fmul double %i.dp, 2.550000e+02
  %i.dx = fptoui double %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !13
  %i.dz = fmul double %i.dq, 2.550000e+02
  %i.ea = fptoui double %i.dz to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 640
  br i1 %exitcond.not.i, label %.split43.us.i, label %.split.i, !llvm.loop !24

.split43.us.i:                                    ; preds = %._crit_edge.i, %.split.us.i
  %i.ec = phi i32 [ %i.y, %.split.us.i ], [ %i.di, %._crit_edge.i ]
  %i.ed = phi i32 [ %i.z, %.split.us.i ], [ %i.di, %._crit_edge.i ]
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvar.next.i, 480
  br i1 %exitcond63.not.i, label %TraceScene.exit, label %.split45.i, !llvm.loop !26

TraceScene.exit:                                  ; preds = %.split43.us.i, %.split45.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.d

bb.d:                                             ; preds = %TraceScene.exit, %bb.d
  %indvars.iv = phi i64 [ 0, %TraceScene.exit ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr @memory, i64 %indvars.iv ; 3 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !13
  %i.eg = and i8 %i.ef, -2
  %i.eh = zext i8 %i.eg to i32
  %i.ei = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ej = tail call i32 @fputc(i32 noundef %i.eh, ptr noundef %i.ei) ; 0 uses
  %i.ek = getelementptr i8, ptr %i.ee, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !13
  %i.em = and i8 %i.el, -2
  %i.en = zext i8 %i.em to i32
  %i.eo = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ep = tail call i32 @fputc(i32 noundef %i.en, ptr noundef %i.eo) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !13
  %i.es = and i8 %i.er, -2
  %i.et = zext i8 %i.es to i32
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !8
  %i.ev = tail call i32 @fputc(i32 noundef %i.et, ptr noundef %i.eu) ; 0 uses
  %i.ew = icmp samesign ult i64 %indvars.iv, 921597
  br i1 %i.ew, label %bb.d, label %bb.e, !llvm.loop !27

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
end_hunk_0
