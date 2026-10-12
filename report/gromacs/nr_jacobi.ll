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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false), !tbaa !10
  store double 1.000000e+00, ptr %2, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double 1.000000e+00, ptr %i.f, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 24, i1 false), !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 120
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !10
  %i.i = load double, ptr %0, align 8, !tbaa !10  ; 2 uses
  store double %i.i, ptr %1, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load double, ptr %i.j, align 8, !tbaa !10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store double %i.k, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.n = load double, ptr %i.m, align 8, !tbaa !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store double %i.n, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.q = load double, ptr %i.p, align 8, !tbaa !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store double %i.q, ptr %i.r, align 8, !tbaa !10
  store i32 0, ptr %3, align 4, !tbaa !17
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
  %i.ad = phi i32 [ 0, %.preheader218 ], [ %i.hu, %.preheader215.preheader ]
  %.0190240 = phi i32 [ 0, %.preheader218 ], [ %i.be, %.preheader215.preheader ] ; 3 uses
  %i.ae = phi <2 x double> [ %i.z, %.preheader218 ], [ %i.bb, %.preheader215.preheader ]
  %i.af = phi <2 x double> [ %i.ab, %.preheader218 ], [ %i.bd, %.preheader215.preheader ]
  %i.ag = load <2 x double>, ptr %i.s, align 8, !tbaa !10
  %i.ah = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ag) ; 2 uses
  %shift = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ah, %shift
  %i.ai = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aj = load double, ptr %i.t, align 8, !tbaa !10
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj)
  %i.al = fadd double %i.ai, %i.ak
  %i.am = load double, ptr %i.u, align 8, !tbaa !10
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.am)
  %i.ao = fadd double %i.al, %i.an
  %i.ap = load double, ptr %i.v, align 8, !tbaa !10
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap)
  %i.ar = fadd double %i.ao, %i.aq
  %i.as = load double, ptr %i.w, align 8, !tbaa !10
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
  br i1 %exitcond274.not, label %.preheader215.preheader, label %.lr.ph237, !llvm.loop !11

.preheader215.preheader:                          ; preds = %.loopexit
  %i.ba = load <2 x double>, ptr %i.a, align 16, !tbaa !10
  %i.bb = fadd <2 x double> %i.ba, %i.ae          ; 2 uses
  store <2 x double> %i.bb, ptr %1, align 8, !tbaa !10
  store <2 x double> zeroinitializer, ptr %i.a, align 16, !tbaa !10
  %i.bc = load <2 x double>, ptr %i.x, align 16, !tbaa !10
  %i.bd = fadd <2 x double> %i.bc, %i.af          ; 2 uses
  store <2 x double> %i.bd, ptr %i.o, align 8, !tbaa !10
  store <2 x double> zeroinitializer, ptr %i.x, align 16, !tbaa !10
  %i.be = add nuw nsw i32 %.0190240, 1            ; 2 uses
  %exitcond279.not = icmp eq i32 %i.be, 51
  br i1 %exitcond279.not, label %bb.o, label %.loopexit214.2, !llvm.loop !12

.lr.ph237:                                        ; preds = %.loopexit, %bb.a
  %i.bf = phi i32 [ %i.ad, %bb.a ], [ %i.hu, %.loopexit ]
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
  %i.bp = phi i32 [ %i.bf, %.lr.ph237 ], [ %i.hu, %bb.n ] ; 3 uses
  %indvars.iv259 = phi i64 [ %indvars.iv252, %.lr.ph237 ], [ %indvars.iv.next260, %bb.n ] ; 19 uses
  %4 = add i64 %indvars.iv271, %indvar
  %5 = sub i64 2, %4                              ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv259 ; 3 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !10 ; 4 uses
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.br) ; 2 uses
  %i.bt = fmul double %i.bs, 1.000000e+02         ; 3 uses
  br i1 %i.az, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.bu = load double, ptr %i.bh, align 8, !tbaa !10
  %i.bv = tail call noundef double @llvm.fabs.f64(double %i.bu) ; 2 uses
  %i.bw = fadd double %i.bt, %i.bv
  %i.bx = fcmp oeq double %i.bw, %i.bv
  br i1 %i.bx, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv259
  %i.bz = load double, ptr %i.by, align 8, !tbaa !10
  %i.ca = tail call noundef double @llvm.fabs.f64(double %i.bz) ; 2 uses
  %i.cb = fadd double %i.bt, %i.ca
  %i.cc = fcmp oeq double %i.cb, %i.ca
  br i1 %i.cc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !10
  br label %bb.n

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.cd = fcmp ogt double %i.bs, %.0189
  br i1 %i.cd, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv259 ; 3 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !10
  %i.cg = load double, ptr %i.bh, align 8, !tbaa !10 ; 2 uses
  %i.ch = fsub double %i.cf, %i.cg                ; 3 uses
  %i.ci = tail call noundef double @llvm.fabs.f64(double %i.ch) ; 2 uses
  %i.cj = fadd double %i.bt, %i.ci
  %i.ck = fcmp oeq double %i.cj, %i.ci
  br i1 %i.ck, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = fdiv double %i.br, %i.ch
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cm = fmul double %i.ch, 5.000000e-01
  %i.cn = fdiv double %i.cm, %i.br                ; 4 uses
  %i.co = tail call noundef double @llvm.fabs.f64(double %i.cn)
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double 1.000000e+00)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.cp)
  %i.cq = fadd double %i.co, %sqrt
  %i.cr = fdiv double 1.000000e+00, %i.cq         ; 2 uses
  %i.cs = fcmp olt double %i.cn, 0.000000e+00
  br i1 %i.cs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ct = fneg double %i.cr
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.0188 = phi double [ %i.cl, %bb.h ], [ %i.ct, %bb.j ], [ %i.cr, %bb.i ] ; 4 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %.0188, double %.0188, double 1.000000e+00)
  %sqrt211 = tail call double @llvm.sqrt.f64(double %i.cu)
  %i.cv = fdiv double 1.000000e+00, %sqrt211      ; 2 uses
  %i.cw = fmul double %.0188, %i.cv               ; 13 uses
  %i.cx = fadd double %i.cv, 1.000000e+00
  %i.cy = fdiv double %i.cw, %i.cx                ; 12 uses
  %i.cz = fmul double %i.br, %.0188               ; 4 uses
  %i.da = load double, ptr %i.bi, align 8, !tbaa !10
  %i.db = fsub double %i.da, %i.cz
  store double %i.db, ptr %i.bi, align 8, !tbaa !10
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv259 ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !10
  %i.de = fadd double %i.cz, %i.dd
  store double %i.de, ptr %i.dc, align 8, !tbaa !10
  %i.df = fsub double %i.cg, %i.cz
  store double %i.df, ptr %i.bh, align 8, !tbaa !10
  %i.dg = load double, ptr %i.ce, align 8, !tbaa !10
  %i.dh = fadd double %i.cz, %i.dg
  store double %i.dh, ptr %i.ce, align 8, !tbaa !10
  store double 0.000000e+00, ptr %i.bq, align 8, !tbaa !10
  br i1 %.not.not226.not, label %.preheader213, label %.lr.ph228

.lr.ph228:                                        ; preds = %bb.k
  %i.di = fneg double %i.cw
  %i.dj = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.dk = insertelement <2 x double> %i.dj, double %i.di, i64 1 ; 2 uses
  %i.dl = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = load double, ptr %i.bn, align 8, !tbaa !10 ; 3 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv259 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !10 ; 3 uses
  %i.dq = fneg double %i.dp
  %i.dr = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.dn, i64 1
  %i.dt = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.du = insertelement <2 x double> %i.dt, double %i.dp, i64 1
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.dm, <2 x double> %i.du)
  %i.dw = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.dn, i64 1
  %i.dy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dv, <2 x double> %i.dx) ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 1
  store double %i.dz, ptr %i.bn, align 8, !tbaa !10
  %i.ea = extractelement <2 x double> %i.dy, i64 0
  store double %i.ea, ptr %i.do, align 8, !tbaa !10
  br i1 %exitcond.not, label %.preheader213, label %bb.l

.preheader213:                                    ; preds = %.lr.ph228, %bb.l, %bb.k
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv259
  %.not.not201229 = icmp samesign ult i64 %indvars.iv.next272, %indvars.iv259
  br i1 %.not.not201229, label %.lr.ph231, label %.preheader212

.lr.ph231:                                        ; preds = %.preheader213
  %i.eb = fneg double %i.cw
  %i.ec = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.ed = insertelement <2 x double> %i.ec, double %i.eb, i64 1
  %i.ee = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.ef = shufflevector <2 x double> %i.ee, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph228
  %i.eg = load double, ptr %i.bo, align 8, !tbaa !10 ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv259 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !10 ; 3 uses
  %i.ej = fneg double %i.ei
  %i.ek = insertelement <2 x double> poison, double %i.ej, i64 0
  %i.el = insertelement <2 x double> %i.ek, double %i.eg, i64 1
  %i.em = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.en = insertelement <2 x double> %i.em, double %i.ei, i64 1
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> %i.dm, <2 x double> %i.en)
  %i.ep = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eg, i64 1
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.eo, <2 x double> %i.eq) ; 2 uses
  %i.es = extractelement <2 x double> %i.er, i64 1
  store double %i.es, ptr %i.bo, align 8, !tbaa !10
  %i.et = extractelement <2 x double> %i.er, i64 0
  store double %i.et, ptr %i.eh, align 8, !tbaa !10
  br label %.preheader213

.preheader212:                                    ; preds = %bb.m, %.preheader213
  %i.eu = icmp samesign ult i64 %indvars.iv259, 3
  br i1 %i.eu, label %.lr.ph233, label %.preheader212..preheader_crit_edge

.preheader212..preheader_crit_edge:               ; preds = %.preheader212
  %.pre = fneg double %i.cw
  br label %.preheader

.lr.ph233:                                        ; preds = %.preheader212
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv259 ; 2 uses
  %i.ew = fneg double %i.cw                       ; 4 uses
  %min.iters.check = icmp ult i64 %5, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph233
  %n.vec = and i64 %5, -2                         ; 3 uses
  %i.ex = add i64 %indvars.iv259, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ew, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert280 = insertelement <2 x double> poison, double %i.cy, i64 0
  %broadcast.splat281 = shufflevector <2 x double> %broadcast.splatinsert280, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert282 = insertelement <2 x double> poison, double %i.cw, i64 0
  %broadcast.splat283 = shufflevector <2 x double> %broadcast.splatinsert282, <2 x double> poison, <2 x i32> zeroinitializer
  %invariant.op = add nuw i64 %indvars.iv259, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %.reass ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ey, align 8, !tbaa !10 ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.reass ; 2 uses
  %wide.load284 = load <2 x double>, ptr %i.ez, align 8, !tbaa !10 ; 3 uses
  %i.fa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %broadcast.splat281, <2 x double> %wide.load284)
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %i.fa, <2 x double> %wide.load)
  store <2 x double> %i.fb, ptr %i.ey, align 8, !tbaa !10
  %i.fc = fneg <2 x double> %wide.load284
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fc, <2 x double> %broadcast.splat281, <2 x double> %wide.load)
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat283, <2 x double> %i.fd, <2 x double> %wide.load284)
  store <2 x double> %i.fe, ptr %i.ez, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph233, %middle.block
  %indvars.iv261.ph = phi i64 [ %indvars.iv259, %.lr.ph233 ], [ %i.ex, %middle.block ]
  %i.fg = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fi = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.fj = insertelement <2 x double> %i.fi, double %i.ew, i64 1
  br label %scalar.ph

bb.m:                                             ; preds = %.lr.ph231, %bb.m
  %indvars.iv254 = phi i64 [ %indvars.iv252, %.lr.ph231 ], [ %indvars.iv.next255, %bb.m ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv254 ; 2 uses
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !10 ; 3 uses
  %gep = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep, i64 %indvars.iv254 ; 2 uses
  %i.fm = load double, ptr %gep, align 8, !tbaa !10 ; 3 uses
  %i.fn = fneg double %i.fm
  %i.fo = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fp = insertelement <2 x double> %i.fo, double %i.fl, i64 1
  %i.fq = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fm, i64 1
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.ef, <2 x double> %i.fr)
  %i.ft = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fl, i64 1
  %i.fv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.fs, <2 x double> %i.fu) ; 2 uses
  %i.fw = extractelement <2 x double> %i.fv, i64 1
  store double %i.fw, ptr %i.fk, align 8, !tbaa !10
  %i.fx = extractelement <2 x double> %i.fv, i64 0
  store double %i.fx, ptr %gep, align 8, !tbaa !10
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %exitcond258.not = icmp eq i64 %indvars.iv.next255, %indvars.iv259
  br i1 %exitcond258.not, label %.preheader212, label %bb.m, !llvm.loop !14

.preheader:                                       ; preds = %scalar.ph, %middle.block, %.preheader212..preheader_crit_edge
  %.pre-phi = phi double [ %.pre, %.preheader212..preheader_crit_edge ], [ %i.ew, %middle.block ], [ %i.ew, %scalar.ph ] ; 4 uses
  %i.fy = load double, ptr %i.bj, align 8, !tbaa !10 ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv259 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !10 ; 3 uses
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fy, double %i.cy, double %i.ga)
  %i.gc = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.gb, double %i.fy)
  store double %i.gc, ptr %i.bj, align 8, !tbaa !10
  %i.gd = fneg double %i.ga
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.cy, double %i.fy)
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.ge, double %i.ga)
  store double %i.gf, ptr %i.fz, align 8, !tbaa !10
  %i.gg = load double, ptr %i.bk, align 8, !tbaa !10 ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv259 ; 2 uses
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !10 ; 3 uses
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.cy, double %i.gi)
  %i.gk = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.gj, double %i.gg)
  store double %i.gk, ptr %i.bk, align 8, !tbaa !10
  %i.gl = fneg double %i.gi
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.gl, double %i.cy, double %i.gg)
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.gm, double %i.gi)
  store double %i.gn, ptr %i.gh, align 8, !tbaa !10
  %i.go = load double, ptr %i.bl, align 8, !tbaa !10 ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv259 ; 2 uses
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !10 ; 3 uses
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.go, double %i.cy, double %i.gq)
  %i.gs = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.gr, double %i.go)
  store double %i.gs, ptr %i.bl, align 8, !tbaa !10
  %i.gt = fneg double %i.gq
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.gt, double %i.cy, double %i.go)
  %i.gv = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.gu, double %i.gq)
  store double %i.gv, ptr %i.gp, align 8, !tbaa !10
  %i.gw = load double, ptr %i.bm, align 8, !tbaa !10 ; 3 uses
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv259 ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !10 ; 3 uses
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.gw, double %i.cy, double %i.gy)
  %i.ha = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %i.gz, double %i.gw)
  store double %i.ha, ptr %i.bm, align 8, !tbaa !10
  %i.hb = fneg double %i.gy
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.hb, double %i.cy, double %i.gw)
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.hc, double %i.gy)
  store double %i.hd, ptr %i.gx, align 8, !tbaa !10
  %i.he = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.he, ptr %3, align 4, !tbaa !17
  br label %bb.n

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %scalar.ph ], [ %indvars.iv261.ph, %scalar.ph.preheader ]
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 4 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv.next262 ; 2 uses
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !10 ; 3 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %indvars.iv.next262 ; 2 uses
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !10 ; 3 uses
  %i.hj = fneg double %i.hi
  %i.hk = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hg, i64 1
  %i.hm = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.hi, i64 1
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.fh, <2 x double> %i.hn)
  %i.hp = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hq = insertelement <2 x double> %i.hp, double %i.hg, i64 1
  %i.hr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fj, <2 x double> %i.ho, <2 x double> %i.hq) ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 1
  store double %i.hs, ptr %i.hf, align 8, !tbaa !10
  %i.ht = extractelement <2 x double> %i.hr, i64 0
  store double %i.ht, ptr %i.hh, align 8, !tbaa !10
  %exitcond264.not = icmp eq i64 %indvars.iv.next262, 3
  br i1 %exitcond264.not, label %.preheader, label %scalar.ph, !llvm.loop !15

bb.n:                                             ; preds = %bb.e, %.preheader, %bb.f
  %i.hu = phi i32 [ %i.bp, %bb.e ], [ %i.he, %.preheader ], [ %i.bp, %bb.f ] ; 3 uses
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next260, 4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond270.not, label %.loopexit, label %bb.b, !llvm.loop !16

bb.o:                                             ; preds = %.preheader215.preheader, %.loopexit214.2
  %.0200 = phi i32 [ 0, %.loopexit214.2 ], [ 1, %.preheader215.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0200
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZN9NR_Jacobi6eigsrtEPdPA4_d(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 {
._crit_edge:
  %i.a = load double, ptr %0, align 8, !tbaa !10  ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !10 ; 2 uses
  %i.d = fcmp oge double %i.c, %i.a               ; 2 uses
  %.1 = select i1 %i.d, double %i.c, double %i.a  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !10 ; 2 uses
  %i.g = fcmp ult double %i.f, %.1                ; 2 uses
  %.1.159 = select i1 %i.g, double %.1, double %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !10 ; 2 uses
  %i.j = fcmp ult double %i.i, %.1.159            ; 2 uses
  %i.k = zext i1 %i.d to i64
  %i.l = select i1 %i.g, i64 %i.k, i64 2
  %i.m = select i1 %i.j, i64 %i.l, i64 3          ; 6 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge.1, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %._crit_edge
  %.1.262 = select i1 %i.j, double %.1.159, double %i.i
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  store double %i.a, ptr %i.n, align 8, !tbaa !10
  store double %.1.262, ptr %0, align 8, !tbaa !10
  %i.o = load double, ptr %1, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !10
  store double %i.q, ptr %1, align 8, !tbaa !10
  store double %i.o, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !10
  store double %i.u, ptr %i.r, align 8, !tbaa !10
  store double %i.s, ptr %i.t, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
end_hunk_0
