Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/nr_jacobi?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef range(i32 0, 2) i32 @_ZN9NR_Jacobi6jacobiEPA4_dPdS1_Pi(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) initializes((0, 32)) %1, ptr nofree noundef captures(none) initializes((0, 128)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
.preheader218:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !tbaa !9
  store double 1.000000e+00, ptr %2, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 24, i1 false), !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 120
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !9
  %i.i = load double, ptr %0, align 8, !tbaa !9   ; 2 uses
  store double %i.i, ptr %1, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.k, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load double, ptr %i.m, align 8, !tbaa !9 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store double %i.n, ptr %i.o, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load double, ptr %i.p, align 8, !tbaa !9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.q, ptr %i.r, align 8, !tbaa !9
  store i32 0, ptr %3, align 4, !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.i, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.k, i64 1
  %i.aa = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ab = insertelement <2 x double> %i.aa, double %i.q, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit214.2

.loopexit214.2:                                   ; preds = %.preheader215.preheader, %.preheader218
  %i.ad = phi i32 [ 0, %.preheader218 ], [ %i.hw, %.preheader215.preheader ]
  %.0190240 = phi i32 [ 0, %.preheader218 ], [ %i.be, %.preheader215.preheader ] ; 3 uses
  %i.ae = phi <2 x double> [ %i.z, %.preheader218 ], [ %i.bb, %.preheader215.preheader ]
  %i.af = phi <2 x double> [ %i.ab, %.preheader218 ], [ %i.bd, %.preheader215.preheader ]
  %i.ag = load <2 x double>, ptr %i.s, align 8, !tbaa !9
  %i.ah = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ah, %shift
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aj = load double, ptr %i.t, align 8, !tbaa !9
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj)
  %i.al = fadd double %i.ai, %i.ak
  %i.am = load double, ptr %i.u, align 8, !tbaa !9
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.am)
  %i.ao = fadd double %i.al, %i.an
  %i.ap = load double, ptr %i.v, align 8, !tbaa !9
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap)
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = load double, ptr %i.w, align 8, !tbaa !9
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = fadd double %i.ar, %i.at                ; 2 uses
  %i.av = fcmp oeq double %i.au, 0.000000e+00
  br i1 %i.av, label %bb.o, label %bb.a

bb.a:                                             ; preds = %.loopexit214.2
  %i.aw = icmp samesign ult i32 %.0190240, 4
  %i.ax = fmul double %i.au, 2.000000e-01
  %i.ay = fmul double %i.ax, 6.250000e-02
  %.0189 = select i1 %i.aw, double %i.ay, double 0.000000e+00
  %i.az = icmp samesign ugt i32 %.0190240, 4
  br label %.lr.ph237

.loopexit:                                        ; preds = %bb.n
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1
  %exitcond274.not = icmp eq i64 %indvars.iv.next272, 3
  br i1 %exitcond274.not, label %.preheader215.preheader, label %.lr.ph237, !llvm.loop !12

.preheader215.preheader:                          ; preds = %.loopexit
  %i.ba = load <2 x double>, ptr %i.a, align 16, !tbaa !9
  %i.bb = fadd <2 x double> %i.ba, %i.ae          ; 2 uses
  store <2 x double> %i.bb, ptr %1, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.a, align 16, !tbaa !9
  %i.bc = load <2 x double>, ptr %i.x, align 16, !tbaa !9
  %i.bd = fadd <2 x double> %i.bc, %i.af          ; 2 uses
  store <2 x double> %i.bd, ptr %i.o, align 8, !tbaa !9
  store <2 x double> zeroinitializer, ptr %i.x, align 16, !tbaa !9
  %i.be = add nuw nsw i32 %.0190240, 1            ; 2 uses
  %exitcond279.not = icmp eq i32 %i.be, 51
  br i1 %exitcond279.not, label %bb.o, label %.loopexit214.2, !llvm.loop !14

.lr.ph237:                                        ; preds = %.loopexit, %bb.a
  %i.bf = phi i32 [ %i.ad, %bb.a ], [ %i.hw, %.loopexit ]
  %indvars.iv271 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next272, %.loopexit ] ; 13 uses
  %indvars.iv252 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next253, %.loopexit ] ; 3 uses
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 3 uses
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv271 ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv271 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv271 ; 2 uses
  %.not.not226.not = icmp eq i64 %indvars.iv271, 0
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv271 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv271 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv271 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv271 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv271 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv271, 1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv271 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph237, %bb.n
  %indvar = phi i64 [ 0, %.lr.ph237 ], [ %indvar.next, %bb.n ] ; 2 uses
  %i.bp = phi i32 [ %i.bf, %.lr.ph237 ], [ %i.hw, %bb.n ] ; 3 uses
  %indvars.iv259 = phi i64 [ %indvars.iv252, %.lr.ph237 ], [ %indvars.iv.next260, %bb.n ] ; 19 uses
  %i.bq = add i64 %indvars.iv271, %indvar
  %i.br = sub i64 2, %i.bq                        ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv259 ; 3 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !9 ; 4 uses
  %i.bu = tail call noundef double @llvm.fabs.f64(double %i.bt) ; 2 uses
  %i.bv = fmul double %i.bu, 1.000000e+02         ; 3 uses
  br i1 %i.az, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bw = load double, ptr %i.bh, align 8, !tbaa !9
  %i.bx = tail call noundef double @llvm.fabs.f64(double %i.bw) ; 2 uses
  %i.by = fadd double %i.bv, %i.bx
  %i.bz = fcmp oeq double %i.by, %i.bx
  br i1 %i.bz, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv259
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !9
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.cb) ; 2 uses
  %i.cd = fadd double %i.bv, %i.cc
  %i.ce = fcmp oeq double %i.cd, %i.cc
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double 0.000000e+00, ptr %i.bs, align 8, !tbaa !9
  br label %bb.n

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.cf = fcmp ogt double %i.bu, %.0189
  br i1 %i.cf, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv259 ; 3 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !9
  %i.ci = load double, ptr %i.bh, align 8, !tbaa !9 ; 2 uses
  %i.cj = fsub double %i.ch, %i.ci                ; 3 uses
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fadd double %i.bv, %i.ck
  %i.cm = fcmp oeq double %i.cl, %i.ck
  br i1 %i.cm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cn = fdiv double %i.bt, %i.cj
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.co = fmul double %i.cj, 5.000000e-01
  %i.cp = fdiv double %i.co, %i.bt                ; 4 uses
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp)
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cp, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.cr)
  %i.cs = fadd double %i.cq, %sqrt
  %i.ct = fdiv double 1.000000e+00, %i.cs         ; 2 uses
  %i.cu = fcmp olt double %i.cp, 0.000000e+00
  br i1 %i.cu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cv = fneg double %i.ct
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.0188 = phi double [ %i.cn, %bb.h ], [ %i.cv, %bb.j ], [ %i.ct, %bb.i ] ; 4 uses
  %i.cw = tail call double @llvm.fmuladd.f64(double %.0188, double %.0188, double 1.000000e+00)
  %sqrt211 = tail call double @llvm.sqrt.f64(double %i.cw)
  %i.cx = fdiv double 1.000000e+00, %sqrt211      ; 2 uses
  %i.cy = fmul double %.0188, %i.cx               ; 13 uses
  %i.cz = fadd double %i.cx, 1.000000e+00
  %i.da = fdiv double %i.cy, %i.cz                ; 12 uses
  %i.db = fmul double %i.bt, %.0188               ; 4 uses
  %i.dc = load double, ptr %i.bi, align 8, !tbaa !9
  %i.dd = fsub double %i.dc, %i.db
  store double %i.dd, ptr %i.bi, align 8, !tbaa !9
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv259 ; 2 uses
  %i.df = load double, ptr %i.de, align 8, !tbaa !9
  %i.dg = fadd double %i.db, %i.df
  store double %i.dg, ptr %i.de, align 8, !tbaa !9
  %i.dh = fsub double %i.ci, %i.db
  store double %i.dh, ptr %i.bh, align 8, !tbaa !9
  %i.di = load double, ptr %i.cg, align 8, !tbaa !9
  %i.dj = fadd double %i.db, %i.di
  store double %i.dj, ptr %i.cg, align 8, !tbaa !9
  store double 0.000000e+00, ptr %i.bs, align 8, !tbaa !9
  br i1 %.not.not226.not, label %.preheader213, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.k
  %i.dk = fneg double %i.cy
  %i.dl = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 1 ; 2 uses
  %i.dn = insertelement <2 x double> poison, double %i.da, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dp = load double, ptr %i.bn, align 8, !tbaa !9 ; 3 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv259 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !9 ; 3 uses
  %i.ds = fneg double %i.dr
  %i.dt = insertelement <2 x double> poison, double %i.ds, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dp, i64 1
  %i.dv = insertelement <2 x double> poison, double %i.dp, i64 0
end_hunk_0
