Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlanv2?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1

; Function Attrs: nounwind uwtable
define void @dlanv2_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr nofree noundef captures(none) %8, ptr nofree noundef captures(none) %9) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = tail call double @dlamch_(ptr noundef nonnull @.str) #6
  %i.e = tail call double @dlamch_(ptr noundef nonnull @.str.1) #6 ; 2 uses
  %i.f = tail call double @dlamch_(ptr noundef nonnull @.str.2) #6 ; 2 uses
  %i.g = fdiv double %i.d, %i.e
  %i.h = tail call double @log(double noundef %i.g) #6
  %i.i = tail call double @dlamch_(ptr noundef nonnull @.str.2) #6
  %i.j = tail call double @log(double noundef %i.i) #6
  %i.k = fdiv double %i.h, %i.j
  %i.l = fmul double %i.k, 5.000000e-01
  %i.m = fptosi double %i.l to i32                ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %dpow_ui.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp slt i32 %i.m, 0
  %i.o = fdiv double 1.000000e+00, %i.f
  %.013.i = select i1 %i.n, double %i.o, double %i.f ; 2 uses
  %.012.i = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true) ; 2 uses
  %.not1719.i = trunc i32 %.012.i to i1
  %spec.select20.i = select i1 %.not1719.i, double %.013.i, double 1.000000e+00 ; 2 uses
  %10 = lshr i32 %.012.i, 1                       ; 2 uses
  %.not1821.i = icmp eq i32 %10, 0
  br i1 %.not1821.i, label %dpow_ui.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %11 = zext nneg i32 %10 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.p = phi i64 [ %i.s, %.lr.ph.i ], [ %11, %.lr.ph.preheader.i ] ; 2 uses
  %spec.select23.i = phi double [ %spec.select.i, %.lr.ph.i ], [ %spec.select20.i, %.lr.ph.preheader.i ] ; 2 uses
  %.11422.i = phi double [ %i.q, %.lr.ph.i ], [ %.013.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.q = fmul double %.11422.i, %.11422.i         ; 2 uses
  %.not17.i = trunc i64 %i.p to i1
  %i.r = fmul double %spec.select23.i, %i.q
  %spec.select.i = select i1 %.not17.i, double %i.r, double %spec.select23.i ; 2 uses
  %i.s = lshr i64 %i.p, 1                         ; 2 uses
  %.not18.i = icmp eq i64 %i.s, 0
  br i1 %.not18.i, label %dpow_ui.exit, label %.lr.ph.i

dpow_ui.exit:                                     ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.2.i = phi double [ 1.000000e+00, %bb.a ], [ %spec.select20.i, %bb.b ], [ %spec.select.i, %.lr.ph.i ] ; 4 uses
  %i.t = fdiv double 1.000000e+00, %.2.i          ; 4 uses
  %i.u = load double, ptr %2, align 8, !tbaa !9   ; 6 uses
  %i.v = fcmp oeq double %i.u, 0.000000e+00
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %dpow_ui.exit
  store double 1.000000e+00, ptr %8, align 8, !tbaa !9
  store double 0.000000e+00, ptr %9, align 8, !tbaa !9
  br label %bb.s

bb.d:                                             ; preds = %dpow_ui.exit
  %i.w = load double, ptr %1, align 8, !tbaa !9   ; 6 uses
  %i.x = fcmp oeq double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store double 0.000000e+00, ptr %8, align 8, !tbaa !9
  store double 1.000000e+00, ptr %9, align 8, !tbaa !9
  %i.y = load double, ptr %3, align 8, !tbaa !9
  %i.z = load double, ptr %0, align 8, !tbaa !9
  store double %i.z, ptr %3, align 8, !tbaa !9
  store double %i.y, ptr %0, align 8, !tbaa !9
  %i.aa = load double, ptr %2, align 8, !tbaa !9
  %i.ab = fneg double %i.aa
  store double %i.ab, ptr %1, align 8, !tbaa !9
  store double 0.000000e+00, ptr %2, align 8, !tbaa !9
  br label %bb.s

bb.f:                                             ; preds = %bb.d
  %i.ac = load double, ptr %0, align 8, !tbaa !9
  %i.ad = load double, ptr %3, align 8, !tbaa !9  ; 2 uses
  %i.ae = fsub double %i.ac, %i.ad                ; 4 uses
  %i.af = fcmp oeq double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = fcmp ult double %i.w, 0.000000e+00
  %i.ah = fcmp ult double %i.u, 0.000000e+00
  %i.ai = xor i1 %i.ah, %i.ag
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double 1.000000e+00, ptr %8, align 8, !tbaa !9
  store double 0.000000e+00, ptr %9, align 8, !tbaa !9
  br label %bb.s

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.aj = fmul double %i.ae, 5.000000e-01         ; 6 uses
  %i.ak = fcmp ult double %i.w, 0.000000e+00      ; 2 uses
  %i.al = fneg double %i.w
  %i.am = select i1 %i.ak, double %i.al, double %i.w ; 4 uses
  %i.an = fcmp ult double %i.u, 0.000000e+00      ; 2 uses
  %i.ao = fneg double %i.u
  %i.ap = select i1 %i.an, double %i.ao, double %i.u ; 4 uses
  %i.aq = fcmp oge double %i.am, %i.ap
  %i.ar = select i1 %i.aq, double %i.am, double %i.ap ; 4 uses
  %i.as = fcmp ole double %i.am, %i.ap
  %i.at = select i1 %i.as, double %i.am, double %i.ap ; 2 uses
  %i.au = fneg double %i.at
  %i.av = select i1 %i.ak, double %i.au, double %i.at ; 2 uses
  %i.aw = fneg double %i.av
  %i.ax = select i1 %i.an, double %i.aw, double %i.av ; 2 uses
  %i.ay = fcmp oge double %i.aj, 0.000000e+00     ; 2 uses
  %i.az = fneg double %i.aj
  %i.ba = select i1 %i.ay, double %i.aj, double %i.az ; 2 uses
  %i.bb = fcmp oge double %i.ba, %i.ar
  %i.bc = select i1 %i.bb, double %i.ba, double %i.ar ; 3 uses
  %i.bd = fdiv double %i.aj, %i.bc
  %i.be = fdiv double %i.ar, %i.bc
  %i.bf = fmul double %i.ax, %i.be
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.aj, double %i.bf) ; 2 uses
  %i.bh = fmul double %i.e, 4.000000e+00
  %i.bi = fcmp ult double %i.bg, %i.bh
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = tail call double @sqrt(double noundef %i.bc) #6
  %i.bk = tail call double @sqrt(double noundef %i.bg) #6
  %i.bl = fmul double %i.bj, %i.bk                ; 3 uses
  %i.bm = fcmp oge double %i.bl, 0.000000e+00
  %i.bn = fneg double %i.bl
  %i.bo = xor i1 %i.bm, %i.ay
  %i.bp = select i1 %i.bo, double %i.bn, double %i.bl
  %i.bq = fadd double %i.aj, %i.bp                ; 3 uses
  store double %i.bq, ptr %i.b, align 8, !tbaa !9
  %i.br = fadd double %i.ad, %i.bq
  store double %i.br, ptr %0, align 8, !tbaa !9
  %i.bs = load double, ptr %3, align 8, !tbaa !9
  %i.bt = fneg double %i.ar
  %i.bu = fdiv double %i.bt, %i.bq
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.ax, double %i.bs)
  store double %i.bv, ptr %3, align 8, !tbaa !9
  %i.bw = call double @dlapy2_(ptr noundef nonnull %2, ptr noundef nonnull %i.b) #6 ; 2 uses
  %i.bx = load double, ptr %i.b, align 8, !tbaa !9
  %i.by = fdiv double %i.bx, %i.bw
  store double %i.by, ptr %8, align 8, !tbaa !9
  %i.bz = load double, ptr %2, align 8, !tbaa !9
  %i.ca = fdiv double %i.bz, %i.bw
  store double %i.ca, ptr %9, align 8, !tbaa !9
  %i.cb = load double, ptr %2, align 8, !tbaa !9
  %i.cc = load double, ptr %1, align 8, !tbaa !9
  %i.cd = fsub double %i.cc, %i.cb
  store double %i.cd, ptr %1, align 8, !tbaa !9
  store double 0.000000e+00, ptr %2, align 8, !tbaa !9
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.ce = fadd double %i.u, %i.w                  ; 2 uses
  %i.cf = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.ce, i64 1
  %i.ch = insertelement <2 x double> poison, double %.2.i, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> poison, double %i.t, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.k
  %i.cl = phi double [ %i.ce, %bb.k ], [ %.be, %.backedge.backedge ]
  %i.cm = phi double [ %i.ae, %bb.k ], [ %.be256, %.backedge.backedge ]
  %.0 = phi i32 [ 0, %bb.k ], [ %i.co, %.backedge.backedge ] ; 3 uses
  %i.cn = phi <2 x double> [ %i.cg, %bb.k ], [ %.be257, %.backedge.backedge ] ; 5 uses
  %i.co = add nuw nsw i32 %.0, 1
  %i.cp = fcmp oge <2 x double> %i.cn, zeroinitializer
  %i.cq = fneg <2 x double> %i.cn
  %i.cr = select <2 x i1> %i.cp, <2 x double> %i.cn, <2 x double> %i.cq ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0 ; 2 uses
  %i.ct = extractelement <2 x double> %i.cr, i64 1 ; 2 uses
  %i.cu = fcmp oge double %i.cs, %i.ct
  %i.cv = select i1 %i.cu, double %i.cs, double %i.ct ; 3 uses
  %i.cw = fcmp ult double %i.cv, %i.t
  br i1 %i.cw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.backedge
  %i.cx = fmul <2 x double> %i.ci, %i.cn          ; 3 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 1 ; 3 uses
  %i.cz = extractelement <2 x double> %i.cx, i64 0 ; 3 uses
  %i.da = icmp samesign ult i32 %.0, 20
  br i1 %i.da, label %.backedge.backedge, label %.thread

.backedge.backedge:                               ; preds = %bb.l, %bb.n
  %.be = phi double [ %i.cy, %bb.l ], [ %i.dg, %bb.n ]
  %.be256 = phi double [ %i.cz, %bb.l ], [ %i.dh, %bb.n ]
  %.be257 = phi <2 x double> [ %i.cx, %bb.l ], [ %i.df, %bb.n ]
  br label %.backedge

bb.m:                                             ; preds = %.backedge
  %i.db = fcmp ugt double %i.cv, %.2.i
  br i1 %i.db, label %.loopexit, label %bb.n

.thread:                                          ; preds = %bb.l
  %i.dc = fcmp ugt double %i.cv, %.2.i
  br i1 %i.dc, label %.loopexit, label %.thread246

.thread246:                                       ; preds = %.thread
  %i.dd = fmul double %i.t, %i.cy
  %i.de = fmul double %i.t, %i.cz
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.df = fmul <2 x double> %i.ck, %i.cn          ; 3 uses
  %i.dg = extractelement <2 x double> %i.df, i64 1 ; 2 uses
  %i.dh = extractelement <2 x double> %i.df, i64 0 ; 2 uses
  %i.di = icmp samesign ult i32 %.0, 20
  br i1 %i.di, label %.backedge.backedge, label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.m, %.thread246, %.thread
  %i.dj = phi double [ %i.cy, %.thread ], [ %i.dd, %.thread246 ], [ %i.cl, %bb.m ], [ %i.dg, %bb.n ]
  %i.dk = phi double [ %i.cz, %.thread ], [ %i.de, %.thread246 ], [ %i.cm, %bb.m ], [ %i.dh, %bb.n ] ; 2 uses
  store double %i.dk, ptr %i.a, align 8
  store double %i.dj, ptr %i.c, align 8
  %i.dl = call double @dlapy2_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.dm = load double, ptr %i.c, align 8, !tbaa !9 ; 3 uses
  %i.dn = fcmp ult double %i.dm, 0.000000e+00     ; 2 uses
  %i.do = fneg double %i.dm
  %i.dp = select i1 %i.dn, double %i.do, double %i.dm
  %i.dq = fdiv double %i.dp, %i.dl
  %i.dr = fadd double %i.dq, 1.000000e+00
  %i.ds = fmul double %i.dr, 5.000000e-01
  %i.dt = call double @sqrt(double noundef %i.ds) #6 ; 2 uses
  store double %i.dt, ptr %8, align 8, !tbaa !9
  %i.du = fmul double %i.dl, %i.dt
  %i.dv = fmul double %i.dk, -5.000000e-01
  %i.dw = fdiv double %i.dv, %i.du                ; 2 uses
  %i.dx = fneg double %i.dw
  %i.dy = select i1 %i.dn, double %i.dx, double %i.dw ; 6 uses
  store double %i.dy, ptr %9, align 8, !tbaa !9
  %i.dz = load double, ptr %0, align 8, !tbaa !9  ; 2 uses
  %i.ea = load double, ptr %8, align 8, !tbaa !9  ; 5 uses
  %i.eb = load double, ptr %1, align 8, !tbaa !9  ; 2 uses
  %i.ec = fmul double %i.dy, %i.eb
  %i.ed = call double @llvm.fmuladd.f64(double %i.dz, double %i.ea, double %i.ec) ; 2 uses
  %i.ee = fneg double %i.dz
  %i.ef = fmul double %i.ea, %i.eb
  %i.eg = call double @llvm.fmuladd.f64(double %i.ee, double %i.dy, double %i.ef) ; 2 uses
end_hunk_0
