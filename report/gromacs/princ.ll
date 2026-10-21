Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/princ?download=true
inline.NumInlined: 33
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 36
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"inten\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/gmxana/princ.cpp\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"inten[i]\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ev[i]\00", align 1

; Function Attrs: mustprogress uwtable
define void @_Z14principal_compiPKiP6t_atomPA3_fS4_Pf(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
.preheader146.preheader:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca [4 x double], align 16            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 107, i64 noundef 4, i64 noundef 8) ; 8 uses
  %i.d = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 108, i64 noundef 4, i64 noundef 8) ; 8 uses
  %i.e = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 111, i64 noundef 4, i64 noundef 8)
  store ptr %i.e, ptr %i.c, align 8, !tbaa !24
  %i.f = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 112, i64 noundef 4, i64 noundef 8)
  store ptr %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.h = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 111, i64 noundef 4, i64 noundef 8)
  store ptr %i.h, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 112, i64 noundef 4, i64 noundef 8)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.m = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 111, i64 noundef 4, i64 noundef 8)
  store ptr %i.m, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.o = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 112, i64 noundef 4, i64 noundef 8)
  store ptr %i.o, ptr %i.n, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.r = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 111, i64 noundef 4, i64 noundef 8)
  store ptr %i.r, ptr %i.q, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 5 uses
  %i.t = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 112, i64 noundef 4, i64 noundef 8)
  store ptr %i.t, ptr %i.s, align 8, !tbaa !24
  store <4 x double> zeroinitializer, ptr %i.b, align 16, !tbaa !26
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !24   ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i8 0, i64 32, i1 false), !tbaa !26
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !24   ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, i8 0, i64 32, i1 false), !tbaa !26
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !24   ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false), !tbaa !26
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i8 0, i64 32, i1 false), !tbaa !26
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader146.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [36 x i8], ptr %2, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !16 ; 5 uses
  %i.ag = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !17 ; 3 uses
  %i.aj = fmul float %i.ai, %i.ai                 ; 2 uses
  %i.ak = load double, ptr %i.u, align 8, !tbaa !26
  %i.al = load <2 x float>, ptr %i.ag, align 4, !tbaa !17 ; 5 uses
  %i.am = extractelement <2 x float> %i.al, i64 1 ; 3 uses
  %i.an = fmul float %i.am, %i.am                 ; 2 uses
  %i.ao = fadd float %i.an, %i.aj
  %i.ap = fmul float %i.af, %i.ao
  %i.aq = fpext float %i.ap to double
  %i.ar = fadd double %i.ak, %i.aq
  store double %i.ar, ptr %i.u, align 8, !tbaa !26
  %i.as = extractelement <2 x float> %i.al, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.al, %i.al
  %i.at = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.au = fadd float %i.at, %i.aj
  %i.av = fmul float %i.af, %i.au
  %i.aw = fpext float %i.av to double
  %i.ax = load double, ptr %i.z, align 8, !tbaa !26
  %i.ay = fadd double %i.ax, %i.aw
  store double %i.ay, ptr %i.z, align 8, !tbaa !26
  %i.az = fadd float %i.at, %i.an
  %i.ba = fmul float %i.af, %i.az
  %i.bb = fpext float %i.ba to double
  %i.bc = load double, ptr %i.aa, align 8, !tbaa !26
  %i.bd = fadd double %i.bc, %i.bb
  store double %i.bd, ptr %i.aa, align 8, !tbaa !26
  %i.be = fmul float %i.as, %i.am
  %i.bf = fmul float %i.af, %i.be
  %i.bg = fpext float %i.bf to double
  %i.bh = load double, ptr %i.v, align 8, !tbaa !26
  %i.bi = fsub double %i.bh, %i.bg
  store double %i.bi, ptr %i.v, align 8, !tbaa !26
  %i.bj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = fmul <2 x float> %i.al, %i.bk
  %i.bm = insertelement <2 x float> poison, float %i.af, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x float> %i.bn, %i.bl
  %i.bp = fpext <2 x float> %i.bo to <2 x double>
  %i.bq = load <2 x double>, ptr %i.w, align 8, !tbaa !26
  %i.br = fsub <2 x double> %i.bq, %i.bp
  store <2 x double> %i.br, ptr %i.w, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.a, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.a, %.preheader146.preheader
  %i.bs = load double, ptr %i.v, align 8, !tbaa !26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.bs, ptr %i.bt, align 8, !tbaa !26
  %i.bu = load double, ptr %i.w, align 8, !tbaa !26
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store double %i.bu, ptr %i.bv, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !26 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store double %i.bx, ptr %i.by, align 8, !tbaa !26
  %i.bz = load double, ptr %i.bv, align 8, !tbaa !26
  %i.ca = load double, ptr %i.v, align 8, !tbaa !26
  %i.cb = load <2 x double>, ptr %i.u, align 8, !tbaa !26
  %i.cc = insertelement <4 x double> poison, double %i.bz, i64 2
  %i.cd = insertelement <4 x double> %i.cc, double %i.ca, i64 3
  %i.ce = shufflevector <2 x double> %i.cb, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x double> %i.ce, <4 x double> %i.cd, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !26
  %i.ci = load double, ptr %i.w, align 8, !tbaa !26
  %i.cj = insertelement <4 x double> poison, double %i.ch, i64 0
  %i.ck = insertelement <4 x double> %i.cj, double %i.bx, i64 1
  %i.cl = insertelement <4 x double> %i.ck, double %i.ci, i64 2
  %i.cm = shufflevector <4 x double> %i.cl, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %6 = shufflevector <4 x double> %i.cf, <4 x double> %i.cm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %7 = fptrunc <8 x double> %6 to <8 x float>
  store <8 x float> %7, ptr %4, align 4, !tbaa !17
  %i.cn = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.co = load double, ptr %i.cn, align 8, !tbaa !26
  %i.cp = fptrunc double %i.co to float
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store float %i.cp, ptr %i.cq, align 4, !tbaa !17
  call void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.c, i32 noundef 3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.cr = load double, ptr %i.k, align 8, !tbaa !26 ; 3 uses
  %i.cs = call noundef double @llvm.fabs.f64(double %i.cr) ; 2 uses
  %i.ct = load double, ptr %i.b, align 16, !tbaa !26 ; 2 uses
  %i.cu = call noundef double @llvm.fabs.f64(double %i.ct)
  %i.cv = fcmp olt double %i.cs, %i.cu
  %.pre236.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !24 ; 11 uses
  %.pre237.pre.pre = load ptr, ptr %i.i, align 8, !tbaa !24 ; 11 uses
  %.pre238.pre.pre = load ptr, ptr %i.n, align 8, !tbaa !24 ; 10 uses
  br i1 %i.cv, label %.loopexit143.loopexit, label %.loopexit143

.loopexit143.loopexit:                            ; preds = %._crit_edge
  %i.cw = load double, ptr %.pre236.pre.pre, align 8, !tbaa !26
  %i.cx = load double, ptr %.pre237.pre.pre, align 8, !tbaa !26
  %i.cy = load double, ptr %.pre238.pre.pre, align 8, !tbaa !26
  %i.cz = load ptr, ptr %i.s, align 8, !tbaa !24  ; 3 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !26
  store double %i.cr, ptr %i.b, align 16, !tbaa !26
  %i.db = getelementptr inbounds nuw i8, ptr %.pre236.pre.pre, i64 8 ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !26
  store double %i.dc, ptr %.pre236.pre.pre, align 8, !tbaa !26
  %i.dd = getelementptr inbounds nuw i8, ptr %.pre237.pre.pre, i64 8 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !26
  store double %i.de, ptr %.pre237.pre.pre, align 8, !tbaa !26
  %i.df = getelementptr inbounds nuw i8, ptr %.pre238.pre.pre, i64 8 ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !26
  store double %i.dg, ptr %.pre238.pre.pre, align 8, !tbaa !26
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !26
  store double %i.di, ptr %i.cz, align 8, !tbaa !26
  %i.dj = fptrunc double %i.ct to float
  %i.dk = fpext float %i.dj to double
  store double %i.dk, ptr %i.k, align 8, !tbaa !26
  store double %i.cw, ptr %i.db, align 8, !tbaa !26
  store double %i.cx, ptr %i.dd, align 8, !tbaa !26
  store double %i.cy, ptr %i.df, align 8, !tbaa !26
  store double %i.da, ptr %i.dh, align 8, !tbaa !26
  %.pre = load double, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %.pre240 = call noundef double @llvm.fabs.f64(double %.pre)
  br label %.loopexit143

.loopexit143:                                     ; preds = %.loopexit143.loopexit, %._crit_edge
  %.pre-phi = phi double [ %.pre240, %.loopexit143.loopexit ], [ %i.cs, %._crit_edge ] ; 2 uses
  %i.dl = phi double [ %.pre, %.loopexit143.loopexit ], [ %i.cr, %._crit_edge ] ; 2 uses
  %i.dm = load double, ptr %i.p, align 16, !tbaa !26 ; 2 uses
  %i.dn = call noundef double @llvm.fabs.f64(double %i.dm)
  %i.do = fcmp olt double %i.dn, %.pre-phi
  br i1 %i.do, label %.loopexit142.loopexit, label %.loopexit142

.loopexit142.loopexit:                            ; preds = %.loopexit143
  %i.dp = getelementptr inbounds nuw i8, ptr %.pre236.pre.pre, i64 8 ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !26
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre237.pre.pre, i64 8 ; 2 uses
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !26
  %i.dt = getelementptr inbounds nuw i8, ptr %.pre238.pre.pre, i64 8 ; 2 uses
  %i.du = load double, ptr %i.dt, align 8, !tbaa !26
  %i.dv = load ptr, ptr %i.s, align 8, !tbaa !24  ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !26
  store double %i.dm, ptr %i.k, align 8, !tbaa !26
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre236.pre.pre, i64 16 ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !26
  store double %i.dz, ptr %i.dp, align 8, !tbaa !26
  %i.ea = getelementptr inbounds nuw i8, ptr %.pre237.pre.pre, i64 16 ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !26
  store double %i.eb, ptr %i.dr, align 8, !tbaa !26
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre238.pre.pre, i64 16 ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !26
  store double %i.ed, ptr %i.dt, align 8, !tbaa !26
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !26
  store double %i.ef, ptr %i.dw, align 8, !tbaa !26
  %i.eg = fptrunc double %i.dl to float
  %i.eh = fpext float %i.eg to double
  store double %i.eh, ptr %i.p, align 16, !tbaa !26
  store double %i.dq, ptr %i.dy, align 8, !tbaa !26
  store double %i.ds, ptr %i.ea, align 8, !tbaa !26
  store double %i.du, ptr %i.ec, align 8, !tbaa !26
  store double %i.dx, ptr %i.ee, align 8, !tbaa !26
  %.pre234 = load double, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  %.pre241 = call noundef double @llvm.fabs.f64(double %.pre234)
  br label %.loopexit142

.loopexit142:                                     ; preds = %.loopexit142.loopexit, %.loopexit143
  %.pre-phi242 = phi double [ %.pre241, %.loopexit142.loopexit ], [ %.pre-phi, %.loopexit143 ]
  %i.ei = phi double [ %.pre234, %.loopexit142.loopexit ], [ %i.dl, %.loopexit143 ] ; 2 uses
  %i.ej = load double, ptr %i.b, align 16, !tbaa !26 ; 3 uses
  %i.ek = call noundef double @llvm.fabs.f64(double %i.ej)
  %i.el = fcmp olt double %.pre-phi242, %i.ek
  br i1 %i.el, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit142
  %i.em = load double, ptr %.pre236.pre.pre, align 8, !tbaa !26
  %i.en = load double, ptr %.pre237.pre.pre, align 8, !tbaa !26
  %i.eo = load double, ptr %.pre238.pre.pre, align 8, !tbaa !26
  %i.ep = load ptr, ptr %i.s, align 8, !tbaa !24  ; 3 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !26
  store double %i.ei, ptr %i.b, align 16, !tbaa !26
  %i.er = getelementptr inbounds nuw i8, ptr %.pre236.pre.pre, i64 8 ; 2 uses
  %i.es = load double, ptr %i.er, align 8, !tbaa !26
  store double %i.es, ptr %.pre236.pre.pre, align 8, !tbaa !26
  %i.et = getelementptr inbounds nuw i8, ptr %.pre237.pre.pre, i64 8 ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !26
  store double %i.eu, ptr %.pre237.pre.pre, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw i8, ptr %.pre238.pre.pre, i64 8 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !26
  store double %i.ew, ptr %.pre238.pre.pre, align 8, !tbaa !26
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !26
  store double %i.ey, ptr %i.ep, align 8, !tbaa !26
  %i.ez = fptrunc double %i.ej to float
  %i.fa = fpext float %i.ez to double
  store double %i.fa, ptr %i.k, align 8, !tbaa !26
  store double %i.em, ptr %i.er, align 8, !tbaa !26
  store double %i.en, ptr %i.et, align 8, !tbaa !26
  store double %i.eo, ptr %i.ev, align 8, !tbaa !26
  store double %i.eq, ptr %i.ex, align 8, !tbaa !26
  %.pre235 = load double, ptr %i.b, align 16, !tbaa !26
  %.pre239 = load double, ptr %i.k, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit142
  %i.fb = phi double [ %.pre239, %.loopexit.loopexit ], [ %i.ei, %.loopexit142 ]
  %i.fc = phi double [ %.pre235, %.loopexit.loopexit ], [ %i.ej, %.loopexit142 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fh = fptrunc double %i.fc to float
  store float %i.fh, ptr %5, align 4, !tbaa !17
  %i.fi = load double, ptr %.pre236.pre.pre, align 8, !tbaa !26
  %i.fj = load double, ptr %.pre237.pre.pre, align 8, !tbaa !26
  %i.fk = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fl = insertelement <2 x double> %i.fk, double %i.fj, i64 1
  %i.fm = fptrunc <2 x double> %i.fl to <2 x float>
  store <2 x float> %i.fm, ptr %4, align 4, !tbaa !17
  %i.fn = fptrunc double %i.fb to float
  %i.fo = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre236.pre.pre, i64 8
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !26
  %i.fr = getelementptr inbounds nuw i8, ptr %.pre237.pre.pre, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !26
  %i.ft = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fs, i64 1
  %i.fv = fptrunc <2 x double> %i.fu to <2 x float>
  %i.fw = load <2 x double>, ptr %.pre238.pre.pre, align 8, !tbaa !26
  %i.fx = fptrunc <2 x double> %i.fw to <2 x float> ; 2 uses
  %i.fy = extractelement <2 x float> %i.fx, i64 0
  store float %i.fy, ptr %i.fg, align 4, !tbaa !17
  store float %i.fn, ptr %i.fo, align 4, !tbaa !17
  store <2 x float> %i.fv, ptr %i.ff, align 4, !tbaa !17
  %i.fz = extractelement <2 x float> %i.fx, i64 1
  store float %i.fz, ptr %i.fe, align 4, !tbaa !17
  %i.ga = load double, ptr %i.p, align 16, !tbaa !26
  %i.gb = fptrunc double %i.ga to float
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %i.gb, ptr %i.gc, align 4, !tbaa !17
  %i.gd = getelementptr inbounds nuw i8, ptr %.pre236.pre.pre, i64 16
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !26
  %i.gf = getelementptr inbounds nuw i8, ptr %.pre237.pre.pre, i64 16
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !26
  %i.gh = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gg, i64 1
  %i.gj = fptrunc <2 x double> %i.gi to <2 x float>
  store <2 x float> %i.gj, ptr %i.fd, align 4, !tbaa !17
  %i.gk = getelementptr inbounds nuw i8, ptr %.pre238.pre.pre, i64 16
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !26
  %i.gm = fptrunc double %i.gl to float
  store float %i.gm, ptr %i.cq, align 4, !tbaa !17
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !24
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 200, ptr noundef %i.gn)
  %i.go = load ptr, ptr %i.d, align 8, !tbaa !24
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 201, ptr noundef %i.go)
  %i.gp = load ptr, ptr %i.g, align 8, !tbaa !24
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 200, ptr noundef %i.gp)
  %i.gq = load ptr, ptr %i.i, align 8, !tbaa !24
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 201, ptr noundef %i.gq)
  %i.gr = load ptr, ptr %i.l, align 8, !tbaa !24
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 200, ptr noundef %i.gr)
  %i.gs = load ptr, ptr %i.n, align 8, !tbaa !24
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 201, ptr noundef %i.gs)
  %i.gt = load ptr, ptr %i.q, align 8, !tbaa !24
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 200, ptr noundef %i.gt)
  %i.gu = load ptr, ptr %i.s, align 8, !tbaa !24
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 201, ptr noundef %i.gu)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef nonnull %i.c)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 204, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

end_hunk_0
