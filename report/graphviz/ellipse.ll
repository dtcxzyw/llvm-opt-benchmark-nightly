Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/ellipse?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bezier_path_t = type { %union.anon, ptr, %struct.pointf_s }
%union.anon = type { %struct.list_t_ }
%struct.list_t_ = type { ptr, i64, i64, i64 }
%struct.pointf_s = type { double, double }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1

; Function Attrs: nounwind uwtable
define nonnull ptr @ellipticWedge(double %0, double %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.bezier_path_t, align 8      ; 33 uses
  %i.a = tail call double @sin(double noundef %4) #10
  %i.b = fdiv double %i.a, %3
  %i.c = tail call double @cos(double noundef %4) #10
  %i.d = fdiv double %i.c, %2
  %i.e = tail call double @atan2(double noundef %i.b, double noundef %i.d) #10 ; 7 uses
  %i.f = tail call double @sin(double noundef %5) #10
  %i.g = fdiv double %i.f, %3
  %i.h = tail call double @cos(double noundef %5) #10
  %i.i = fdiv double %i.h, %2
  %i.j = tail call double @atan2(double noundef %i.g, double noundef %i.i) #10 ; 2 uses
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #11 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %gv_alloc.exit.preheader.i

gv_alloc.exit.preheader.i:                        ; preds = %bb.a
  %i.m = fsub double %5, %4
  %i.n = fcmp ogt double %i.m, f0x400921FB54442D18
  %i.o = fsub double %i.j, %i.e
  %i.p = fdiv double %i.o, f0x401921FB54442D18
  %i.q = tail call double @llvm.floor.f64(double %i.p)
  %i.r = fdiv double %3, %2                       ; 5 uses
  %i.s = fcmp olt double %i.r, 2.500000e-01
  %7 = insertelement <2 x i1> poison, i1 %i.s, i64 0
  %8 = shufflevector <2 x i1> %7, <2 x i1> poison, <2 x i32> zeroinitializer ; 16 uses
  %9 = select <2 x i1> %8, <2 x double> <double -1.614860e+00, double f0xBFED201040BFE3B0>, <2 x double> <double 1.381480e-01, double 2.309030e-01>
  %10 = select <2 x i1> %8, <2 x double> <double f0x3FE69C2C1B10FD7E, double 3.883830e-01>, <2 x double> <double -1.458040e+00, double -4.502620e-01>
  %11 = insertelement <2 x double> poison, double %i.r, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer ; 12 uses
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %9, <2 x double> %10)
  %13 = select <2 x i1> %8, <2 x double> <double 2.259450e-01, double 5.514450e-03>, <2 x double> <double 1.320440e+00, double 2.199630e-01>
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %i.t, <2 x double> %13)
  %14 = select <2 x i1> %8, <2 x double> <double 2.636820e-01, double 6.718140e-03>, <2 x double> <double 1.384740e+00, double 4.140380e-01>
  %i.v = fadd <2 x double> %12, %14
  %i.w = fdiv <2 x double> %i.u, %i.v             ; 2 uses
  %15 = select <2 x i1> %8, <2 x double> <double 3.852680e+00, double -1.622110e-01>, <2 x double> <double f0x3FB704725587F1D1, double 1.646490e-02>
  %16 = select <2 x i1> %8, <2 x double> <double -2.122900e+01, double f0x4023E2F6E82949A5>, <2 x double> <double -1.923490e+01, double 9.893940e+00>
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %15, <2 x double> %16)
  %17 = select <2 x i1> %8, <2 x double> <double -3.304340e-01, double 1.372300e-01>, <2 x double> <double -4.117110e+00, double 9.194960e-02>
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %i.x, <2 x double> %17)
  %18 = select <2 x i1> %8, <2 x double> <double 1.278420e-02, double 1.240840e-02>, <2 x double> <double 1.833620e-01, double 7.608020e-03>
  %i.z = fadd <2 x double> %12, %18
  %19 = select <2 x i1> %8, <2 x double> <double -6.301840e-01, double -2.531350e-01>, <2 x double> <double 5.905650e-02, double 1.916030e-02>
  %20 = select <2 x i1> %8, <2 x double> <double 1.924020e-01, double 1.877350e-03>, <2 x double> <double -1.010620e-01, double -3.220580e-02>
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %19, <2 x double> %20)
  %21 = select <2 x i1> %8, <2 x double> <double f0x3F843FB01937DF6A, double 2.302860e-02>, <2 x double> <double 4.305920e-02, double 1.346670e-02>
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %i.aa, <2 x double> %21)
  %22 = select <2 x i1> %8, <2 x double> <double 1.025270e-02, double 1.264000e-02>, <2 x double> <double 2.046990e-02, double -8.250180e-02>
  %i.ac = fadd <2 x double> %12, %22
  %i.ad = fdiv <2 x double> %i.y, %i.z
  %i.ae = fdiv <2 x double> %i.ab, %i.ac
  %23 = select <2 x i1> %8, <2 x double> <double f0xBFB1CB344658A9E5, double -3.288560e-02>, <2 x double> <double 1.561920e-02, double -2.367520e-02>
  %24 = select <2 x i1> %8, <2 x double> <double -4.375940e-02, double -9.260320e-03>, <2 x double> <double -1.753500e-02, double 4.058210e-02>
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %23, <2 x double> %24)
  %25 = select <2 x i1> %8, <2 x double> <double 1.206360e-02, double -1.735730e-03>, <2 x double> <double 3.265080e-03, double -1.730860e-02>
  %i.ag = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %i.af, <2 x double> %25)
  %26 = select <2 x i1> %8, <2 x double> <double 1.630870e-02, double 5.273850e-03>, <2 x double> <double -2.281570e-01, double 1.761870e-01>
  %i.ah = fadd <2 x double> %12, %26
  %i.ai = fdiv <2 x double> %i.ag, %i.ah          ; 2 uses
  %i.aj = insertelement <2 x double> poison, double %i.q, i64 0
  %i.ak = insertelement <2 x double> %i.aj, double %i.r, i64 1
  %i.al = insertelement <2 x double> <double poison, double 4.980000e+00>, double %i.j, i64 0
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> <double f0xC01921FB54442D18, double 1.000000e-03>, <2 x double> %i.al) ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.ao = fsub double %i.an, %i.e
  %i.ap = fcmp olt double %i.ao, f0x400921FB54442D18
  %or.cond.i = select i1 %i.n, i1 %i.ap, i1 false
  %i.aq = fadd double %i.an, f0x401921FB54442D18
  %storemerge.i = select i1 %or.cond.i, double %i.aq, double %i.an
  %i.ar = fsub double %storemerge.i, %i.e         ; 2 uses
  %i.as = extractelement <2 x double> %i.am, i64 1
  %i.at = tail call double @llvm.fmuladd.f64(double %i.r, double %i.as, double 2.070000e-01)
  %i.au = fadd double %i.r, 6.700000e-03
  %i.av = fdiv double %i.at, %i.au
  %i.aw = fmul double %2, %i.av
  %i.ax = insertelement <2 x double> %i.w, double 0.000000e+00, i64 1
  %i.ay = shufflevector <2 x double> <double poison, double 0.000000e+00>, <2 x double> %i.w, <2 x i32> <i32 3, i32 1>
  %i.az = extractelement <2 x double> %i.ai, i64 0
  %i.ba = extractelement <2 x double> %i.ai, i64 1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !13
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.1, i64 noundef 16) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.c:                                             ; preds = %gv_alloc.exit.i, %gv_alloc.exit.preheader.i
  %.089104.i = phi i32 [ 1, %gv_alloc.exit.preheader.i ], [ %i.ci, %gv_alloc.exit.i ] ; 3 uses
  %i.bd = sitofp i32 %.089104.i to double
  %i.be = fdiv double %i.ar, %i.bd                ; 2 uses
  %i.bf = fcmp ugt double %i.be, f0x3FF921FB54442D18
  br i1 %i.bf, label %gv_alloc.exit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.087103.i = phi i32 [ %i.cf, %.lr.ph.i ], [ 0, %bb.c ]
  %.095102.i = phi double [ %i.bg, %.lr.ph.i ], [ %i.e, %bb.c ] ; 3 uses
  %i.bg = fadd double %i.be, %.095102.i           ; 3 uses
  %i.bh = fadd double %.095102.i, %i.bg
  %i.bi = fmul double %i.bh, 5.000000e-01         ; 3 uses
  %i.bj = fsub double %i.bg, %.095102.i
  %i.bk = fmul double %i.bi, 2.000000e+00
  %i.bl = tail call double @cos(double noundef %i.bk) #10 ; 2 uses
  %i.bm = fmul double %i.bi, 4.000000e+00
  %i.bn = tail call double @cos(double noundef %i.bm) #10 ; 2 uses
  %i.bo = fmul double %i.bi, 6.000000e+00
  %i.bp = tail call double @cos(double noundef %i.bo) #10 ; 2 uses
  %i.bq = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bl, i64 0
  %i.br = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.ax, <2 x double> %i.ad)
  %i.bs = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.bn, i64 0
  %i.bt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.ay, <2 x double> %i.br)
  %i.bu = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bl, i64 1
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bv, <2 x double> %i.ae, <2 x double> %i.bt) ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 1
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.az, double %i.bx)
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bp, double %i.ba, double %i.by)
  %i.ca = extractelement <2 x double> %i.bw, i64 0
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.bj, double %i.ca)
  %i.cc = tail call double @exp(double noundef %i.cb) #10
  %i.cd = fmul double %i.aw, %i.cc
  %i.ce = fcmp ole double %i.cd, 1.000000e-05     ; 2 uses
  %i.cf = add nuw nsw i32 %.087103.i, 1           ; 2 uses
  %i.cg = icmp samesign ult i32 %i.cf, %.089104.i
  %i.ch = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %i.ch, label %.lr.ph.i, label %gv_alloc.exit.i, !llvm.loop !8

gv_alloc.exit.i:                                  ; preds = %.lr.ph.i, %bb.c
  %.2.i = phi i1 [ false, %bb.c ], [ %i.ce, %.lr.ph.i ]
  %i.ci = shl i32 %.089104.i, 1                   ; 5 uses
  %i.cj = icmp sgt i32 %i.ci, 1023
  %.not97.i = or i1 %i.cj, %.2.i
  br i1 %.not97.i, label %bb.d, label %bb.c, !llvm.loop !9

bb.d:                                             ; preds = %gv_alloc.exit.i
  %i.ck = sitofp i32 %i.ci to double
  %i.cl = fdiv double %i.ar, %i.ck                ; 3 uses
  %i.cm = tail call double @cos(double noundef %i.e) #10 ; 2 uses
  %i.cn = tail call double @sin(double noundef %i.e) #10 ; 2 uses
  %i.co = insertelement <2 x double> poison, double %2, i64 0
  %i.cp = insertelement <2 x double> %i.co, double %3, i64 1 ; 4 uses
  %i.cq = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cr = insertelement <2 x double> %i.cq, double %i.cn, i64 1
  %i.cs = fmul <2 x double> %i.cp, %i.cr
  %i.ct = insertelement <2 x double> poison, double %0, i64 0
  %i.cu = insertelement <2 x double> %i.ct, double %1, i64 1 ; 2 uses
  %i.cv = fadd <2 x double> %i.cu, %i.cs          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 40, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 20 uses
  store double %0, ptr %i.cw, align 8, !tbaa !16
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store double %1, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  %i.cx = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 16) #10
  %i.cy = load ptr, ptr %6, align 8, !tbaa !17
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !18
  %i.da = load ptr, ptr %6, align 8, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.val.i.i = load i64, ptr %i.db, align 8, !tbaa !21
  %i.dc = add i64 %.val.i.i, -1
  %i.dd = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.dc) #10
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dd
  %i.df = load <2 x double>, ptr %i.de, align 8, !tbaa !16
  store <2 x double> %i.df, ptr %i.cw, align 8, !tbaa !16
  %i.dg = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 16) #10
  %i.dh = load ptr, ptr %6, align 8, !tbaa !17
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !18
  store <2 x double> %i.cv, ptr %i.cw, align 8, !tbaa !16
  %i.dj = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 16) #10
  %i.dk = load ptr, ptr %6, align 8, !tbaa !17
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !18
  store <2 x double> %i.cv, ptr %i.cw, align 8, !tbaa !16
  %i.dm = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 16) #10
  %i.dn = load ptr, ptr %6, align 8, !tbaa !17
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !18
  %i.dp = fmul double %i.cl, 5.000000e-01
  %i.dq = call double @tan(double noundef %i.dp) #10 ; 2 uses
  %i.dr = call double @sin(double noundef %i.cl) #10
  %i.ds = fmul double %i.dq, 3.000000e+00
  %i.dt = call double @llvm.fmuladd.f64(double %i.ds, double %i.dq, double 4.000000e+00)
  %i.du = call double @sqrt(double noundef %i.dt) #10
  %i.dv = icmp sgt i32 %i.ci, 0
  br i1 %i.dv, label %.lr.ph111.i, label %genEllipticPath.exit

.lr.ph111.i:                                      ; preds = %bb.d
  %i.dw = fadd double %i.du, -1.000000e+00
  %i.dx = fmul double %i.dr, %i.dw
  %i.dy = fdiv double %i.dx, 3.000000e+00         ; 2 uses
  %i.dz = fneg double %i.cn
  %i.ea = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eb = insertelement <2 x double> %i.ea, double %i.cm, i64 1
  %i.ec = fmul <2 x double> %i.cp, %i.eb
  %i.ed = fneg double %i.dy
  %i.ee = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph111.i
  %.188110.i = phi i32 [ 0, %.lr.ph111.i ], [ %i.fi, %bb.e ]
  %.094105.i = phi double [ %i.e, %.lr.ph111.i ], [ %i.ek, %bb.e ]
  %i.ei = phi <2 x double> [ %i.ec, %.lr.ph111.i ], [ %i.ey, %bb.e ]
  %i.ej = phi <2 x double> [ %i.cv, %.lr.ph111.i ], [ %i.ev, %bb.e ]
  %i.ek = fadd double %i.cl, %.094105.i           ; 3 uses
  %i.el = call double @cos(double noundef %i.ek) #10 ; 2 uses
  %i.em = call double @sin(double noundef %i.ek) #10 ; 2 uses
  %i.en = fneg double %i.em
  %i.eo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ei, <2 x double> %i.ej)
  store <2 x double> %i.eo, ptr %i.cw, align 8, !tbaa !16
  %i.ep = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 16) #10
  %i.eq = load ptr, ptr %6, align 8, !tbaa !17
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !18
  %i.es = insertelement <2 x double> poison, double %i.el, i64 0
  %i.et = insertelement <2 x double> %i.es, double %i.em, i64 1
  %i.eu = fmul <2 x double> %i.cp, %i.et
  %i.ev = fadd <2 x double> %i.cu, %i.eu          ; 4 uses
  %i.ew = insertelement <2 x double> poison, double %i.en, i64 0
  %i.ex = insertelement <2 x double> %i.ew, double %i.el, i64 1
  %i.ey = fmul <2 x double> %i.cp, %i.ex          ; 2 uses
  %i.ez = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.ey, <2 x double> %i.ev)
  store <2 x double> %i.ez, ptr %i.cw, align 8, !tbaa !16
  %i.fa = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 16) #10
  %i.fb = load ptr, ptr %6, align 8, !tbaa !17
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !18
  %i.fd = extractelement <2 x double> %i.ev, i64 0
  store double %i.fd, ptr %i.cw, align 8, !tbaa !16
  %i.fe = extractelement <2 x double> %i.ev, i64 1
  store double %i.fe, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !16
  %i.ff = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 16) #10
  %i.fg = load ptr, ptr %6, align 8, !tbaa !17
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.fg, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !18
  %i.fi = add nuw nsw i32 %.188110.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fi, %i.ci
  br i1 %exitcond.not.i, label %genEllipticPath.exit, label %bb.e, !llvm.loop !10

genEllipticPath.exit:                             ; preds = %bb.e, %bb.d
  %i.fj = load ptr, ptr %6, align 8, !tbaa !17
  %i.fk = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef 0) #10
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fj, i64 %i.fk
  %i.fm = load ptr, ptr %6, align 8, !tbaa !17
  %.val.i.i.i = load i64, ptr %i.db, align 8, !tbaa !21
  %i.fn = add i64 %.val.i.i.i, -1
  %i.fo = load <2 x double>, ptr %i.fl, align 8, !tbaa !16 ; 2 uses
  %i.fp = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %6, i64 noundef %i.fn) #10
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fp
  %i.fr = load <2 x double>, ptr %i.fq, align 8, !tbaa !16
  store <2 x double> %i.fr, ptr %i.cw, align 8, !tbaa !16
  %i.fs = call i64 @gv_list_append_slot_(ptr noundef nonnull %6, i64 noundef 16) #10
  %i.ft = load ptr, ptr %6, align 8, !tbaa !17
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fs
end_hunk_0
