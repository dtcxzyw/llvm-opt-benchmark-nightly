Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/edge_drawing?download=true
inline.NumInlined: 1880
inline.NumDeleted: 742
loop-unroll.NumCompletelyUnrolled: 82
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 151
begin_hunk_0_@_ZN2cv8ximgproc15EdgeDrawingImpl10EllipseFitEPdS2_iP15EllipseEquationi:bb.a
bb.dh:                                            ; preds = %.lr.ph.i323.6
  tail call void @_ZdaPv(ptr noundef nonnull %i.awz) #43
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit327

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit327: ; preds = %bb.dh, %.lr.ph.i323.6
  tail call void @_ZdaPv(ptr noundef nonnull %i.cq) #43
  %i.axb = load ptr, ptr %i.de, align 8, !tbaa !279 ; 2 uses
  %i.axc = icmp eq ptr %i.axb, null
  br i1 %i.axc, label %.lr.ph.i329.1, label %bb.di

bb.di:                                            ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit327
  tail call void @_ZdaPv(ptr noundef nonnull %i.axb) #43
  br label %.lr.ph.i329.1

.lr.ph.i329.1:                                    ; preds = %bb.di, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit327
  %i.axd = load ptr, ptr %i.dh, align 8, !tbaa !279 ; 2 uses
  %i.axe = icmp eq ptr %i.axd, null
  br i1 %i.axe, label %.lr.ph.i329.2, label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.i329.1
  tail call void @_ZdaPv(ptr noundef nonnull %i.axd) #43
  br label %.lr.ph.i329.2

.lr.ph.i329.2:                                    ; preds = %bb.dj, %.lr.ph.i329.1
  %i.axf = load ptr, ptr %i.dj, align 8, !tbaa !279 ; 2 uses
  %i.axg = icmp eq ptr %i.axf, null
  br i1 %i.axg, label %.lr.ph.i329.3, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i329.2
  tail call void @_ZdaPv(ptr noundef nonnull %i.axf) #43
  br label %.lr.ph.i329.3

.lr.ph.i329.3:                                    ; preds = %bb.dk, %.lr.ph.i329.2
  %i.axh = load ptr, ptr %i.dl, align 8, !tbaa !279 ; 2 uses
  %i.axi = icmp eq ptr %i.axh, null
  br i1 %i.axi, label %.lr.ph.i329.4, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i329.3
  tail call void @_ZdaPv(ptr noundef nonnull %i.axh) #43
  br label %.lr.ph.i329.4

.lr.ph.i329.4:                                    ; preds = %bb.dl, %.lr.ph.i329.3
  %i.axj = load ptr, ptr %i.dn, align 8, !tbaa !279 ; 2 uses
  %i.axk = icmp eq ptr %i.axj, null
  br i1 %i.axk, label %.lr.ph.i329.5, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i329.4
  tail call void @_ZdaPv(ptr noundef nonnull %i.axj) #43
  br label %.lr.ph.i329.5

.lr.ph.i329.5:                                    ; preds = %bb.dm, %.lr.ph.i329.4
  %i.axl = load ptr, ptr %i.dp, align 8, !tbaa !279 ; 2 uses
  %i.axm = icmp eq ptr %i.axl, null
  br i1 %i.axm, label %.lr.ph.i329.6, label %bb.dn

bb.dn:                                            ; preds = %.lr.ph.i329.5
  tail call void @_ZdaPv(ptr noundef nonnull %i.axl) #43
  br label %.lr.ph.i329.6

.lr.ph.i329.6:                                    ; preds = %bb.dn, %.lr.ph.i329.5
  %i.axn = load ptr, ptr %i.dr, align 8, !tbaa !279 ; 2 uses
  %i.axo = icmp eq ptr %i.axn, null
  br i1 %i.axo, label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333, label %bb.do

bb.do:                                            ; preds = %.lr.ph.i329.6
  tail call void @_ZdaPv(ptr noundef nonnull %i.axn) #43
  br label %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333

_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333: ; preds = %bb.do, %.lr.ph.i329.6
  tail call void @_ZdaPv(ptr noundef nonnull %i.de) #43
  br label %bb.dp

bb.dp:                                            ; preds = %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit277, %bb.c
  %.0129 = phi i1 [ false, %bb.c ], [ %or.cond, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit277 ], [ false, %_ZN2cv8ximgproc15EdgeDrawingImpl16DeallocateMatrixEPPdi.exit333 ]
  ret i1 %.0129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl19ComputeEllipseErrorEP15EllipseEquationPdS4_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #30 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 3 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !46 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !46 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load double, ptr %i.i, align 8, !tbaa !46 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !46 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !46 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !46 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %i.q = call noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl34ComputeEllipseCenterAndAxisLengthsEP15EllipseEquationPdS4_S4_S4_(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) ; 0 uses
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = load double, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.t = load double, ptr %i.b, align 8, !tbaa !46 ; 3 uses
  %i.u = insertelement <2 x double> poison, double %i.f, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.v, <double 2.000000e+00, double 1.000000e+00>
  %i.x = fmul double %i.j, 2.000000e+00           ; 5 uses
  %i.y = fmul double %i.j, 4.000000e+00           ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.z = insertelement <2 x double> poison, double %i.h, i64 0 ; 3 uses
  %i.aa = insertelement <2 x double> %i.z, double %i.l, i64 1
  %i.ab = insertelement <2 x double> poison, double %i.n, i64 0 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.0259.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.gm, %bb.i ]
  %i.ac = sitofp i32 %3 to double
  %i.ad = fdiv double %.0259.lcssa, %i.ac
  %i.ae = tail call double @sqrt(double noundef %i.ad) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret double %i.ae

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.0259276 = phi double [ 0.000000e+00, %.lr.ph ], [ %i.gm, %bb.i ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ag = load double, ptr %i.af, align 8, !tbaa !46 ; 5 uses
  %i.ah = fsub double %i.ag, %i.s                 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !46 ; 7 uses
  %i.ak = fsub double %i.aj, %i.t                 ; 3 uses
  %i.al = tail call double @llvm.fabs.f64(double %i.ah)
  %i.am = tail call double @llvm.fabs.f64(double %i.ak)
  %i.an = fcmp ogt double %i.al, %i.am
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ao = fdiv double %i.ak, %i.ah                ; 7 uses
  %i.ap = fneg double %i.ao
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.s, double %i.t) ; 6 uses
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ao, double %i.f)
  %i.as = fmul double %i.j, %i.ao
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ao, double %i.ar) ; 2 uses
  %i.au = fmul double %i.x, %i.ao
  %i.av = fmul double %i.au, %i.aq
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.h, double %i.aq, double %i.av)
  %i.ax = fadd double %i.l, %i.aw
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.n, double %i.ao, double %i.ax) ; 4 uses
  %i.az = fmul double %i.j, %i.aq
  %i.ba = fmul double %i.n, %i.aq
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.az, double %i.aq, double %i.ba)
  %i.bc = fadd double %i.p, %i.bb
  %i.bd = fmul double %i.at, 4.000000e+00
  %i.be = fneg double %i.bc
  %i.bf = fmul double %i.bd, %i.be
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.ay, double %i.ay, double %i.bf) ; 2 uses
  %i.bh = fcmp olt double %i.bg, 0.000000e+00
  %spec.store.select = select i1 %i.bh, double 0.000000e+00, double %i.bg
  %i.bi = tail call double @sqrt(double noundef %spec.store.select) #42 ; 2 uses
  %i.bj = fadd double %i.ay, %i.bi
  %i.bk = fmul double %i.at, 2.000000e+00
  %i.bl = fsub double %i.ay, %i.bi
  %i.bm = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1
  %i.bo = fneg <2 x double> %i.bn
  %i.bp = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fdiv <2 x double> %i.bo, %i.bq          ; 4 uses
  %i.bs = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.br, <2 x double> %i.bv)
  %i.bx = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = fsub <2 x double> %i.by, %i.br          ; 2 uses
  %i.ca = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = fsub <2 x double> %i.cb, %i.bw          ; 2 uses
  %i.cd = fmul <2 x double> %i.cc, %i.cc
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> %i.bz, <2 x double> %i.cd) ; 2 uses
  %i.cf = extractelement <2 x double> %i.ce, i64 0 ; 2 uses
  %i.cg = extractelement <2 x double> %i.ce, i64 1 ; 2 uses
  %i.ch = fcmp olt double %i.cf, %i.cg            ; 2 uses
  %. = select i1 %i.ch, double %i.cf, double %i.cg
  %i.ci = extractelement <2 x double> %i.br, i64 0
  %i.cj = extractelement <2 x double> %i.br, i64 1
  %.269 = select i1 %i.ch, double %i.ci, double %i.cj
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ck = fdiv double %i.ah, %i.ak                ; 6 uses
  %i.cl = fneg double %i.ck
  %4 = tail call double @llvm.fmuladd.f64(double %i.cl, double %i.t, double %i.s) ; 2 uses
  %i.cm = fmul double %i.f, %i.ck
  %i.cn = fmul double %i.h, %i.ck
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.ck, double %i.cn)
  %i.cp = fadd double %i.j, %i.co                 ; 2 uses
  %i.cq = insertelement <2 x double> poison, double %i.ck, i64 0 ; 2 uses
  %i.cr = insertelement <2 x double> %i.cq, double %4, i64 1
  %i.cs = fmul <2 x double> %i.w, %i.cr
  %i.ct = insertelement <2 x double> poison, double %4, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cv = fmul <2 x double> %i.aa, %i.cu
  %i.cw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.cu, <2 x double> %i.cv) ; 2 uses
  %i.cx = extractelement <2 x double> %i.cw, i64 0
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.l, double %i.ck, double %i.cx)
  %i.cz = fadd double %i.n, %i.cy                 ; 4 uses
  %i.da = extractelement <2 x double> %i.cw, i64 1
  %i.db = fadd double %i.p, %i.da
  %i.dc = fmul double %i.cp, 4.000000e+00
  %i.dd = fneg double %i.db
  %i.de = fmul double %i.dc, %i.dd
  %i.df = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %i.de) ; 2 uses
  %i.dg = fcmp olt double %i.df, 0.000000e+00
  %spec.store.select1 = select i1 %i.dg, double 0.000000e+00, double %i.df
  %i.dh = tail call double @sqrt(double noundef %spec.store.select1) #42 ; 2 uses
  %i.di = fadd double %i.cz, %i.dh
  %i.dj = fmul double %i.cp, 2.000000e+00
  %i.dk = fsub double %i.cz, %i.dh
  %i.dl = insertelement <2 x double> poison, double %i.di, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.dk, i64 1
  %i.dn = fneg <2 x double> %i.dm
  %i.do = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = fdiv <2 x double> %i.dn, %i.dp          ; 2 uses
  %i.dr = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dr, <2 x double> %i.dq, <2 x double> %i.cu) ; 3 uses
  %i.dt = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fsub <2 x double> %i.du, %i.ds          ; 2 uses
  %i.dw = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.dx = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = fsub <2 x double> %i.dx, %i.dq          ; 2 uses
  %i.dz = fmul <2 x double> %i.dy, %i.dy
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.dv, <2 x double> %i.dz) ; 2 uses
  %i.eb = extractelement <2 x double> %i.ea, i64 0 ; 2 uses
  %i.ec = extractelement <2 x double> %i.ea, i64 1 ; 2 uses
  %i.ed = fcmp olt double %i.eb, %i.ec            ; 2 uses
  %.270 = select i1 %i.ed, double %i.eb, double %i.ec
  %i.ee = extractelement <2 x double> %i.ds, i64 0
  %i.ef = extractelement <2 x double> %i.ds, i64 1
  %.271 = select i1 %i.ed, double %i.ee, double %i.ef
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2255 = phi double [ %., %bb.c ], [ %.270, %bb.d ]
  %.2 = phi double [ %.269, %bb.c ], [ %.271, %bb.d ] ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.backedge, %bb.e
  %.3 = phi double [ %.2255, %bb.e ], [ %.3.be, %.backedge ] ; 3 uses
  %.0 = phi double [ %.2, %bb.e ], [ %i.eg, %.backedge ]
  %i.eg = fadd double %.0, 5.000000e-01           ; 5 uses
  %i.eh = fmul double %i.f, %i.eg
  %i.ei = fmul double %i.l, %i.eg
  %i.ej = insertelement <2 x double> %i.z, double %i.eh, i64 1
  %i.ek = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = insertelement <2 x double> %i.ab, double %i.ei, i64 1
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.el, <2 x double> %i.em) ; 2 uses
  %i.eo = extractelement <2 x double> %i.en, i64 0 ; 4 uses
  %i.ep = extractelement <2 x double> %i.en, i64 1
  %i.eq = fadd double %i.p, %i.ep
  %i.er = fneg double %i.eq
  %i.es = fmul double %i.y, %i.er
  %i.et = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %i.es) ; 2 uses
  %i.eu = fcmp olt double %i.et, 0.000000e+00
  %spec.store.select2 = select i1 %i.eu, double 0.000000e+00, double %i.et
  %i.ev = tail call double @sqrt(double noundef %spec.store.select2) #42 ; 2 uses
  %i.ew = fadd double %i.ev, %i.eo
  %i.ex = fsub double %i.ag, %i.eg                ; 4 uses
  %i.ey = fdiv double %i.ew, %i.x
  %i.ez = fadd double %i.aj, %i.ey                ; 2 uses
  %i.fa = fmul double %i.ez, %i.ez
  %i.fb = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ex, double %i.fa) ; 2 uses
  %i.fc = fcmp ugt double %i.fb, %.3
  br i1 %i.fc, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.fd = fsub double %i.eo, %i.ev
  %i.fe = fdiv double %i.fd, %i.x
  %i.ff = fadd double %i.aj, %i.fe                ; 2 uses
  %i.fg = fmul double %i.ff, %i.ff
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ex, double %i.fg) ; 2 uses
  %i.fi = fcmp ugt double %i.fh, %.3
  br i1 %i.fi, label %.preheader, label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.f
  %.3.be = phi double [ %i.fb, %bb.f ], [ %i.fh, %bb.g ]
  br label %bb.f

.preheader:                                       ; preds = %bb.g, %.preheader.backedge
  %.6 = phi double [ %.6.be, %.preheader.backedge ], [ %.3, %bb.g ] ; 3 uses
  %.1 = phi double [ %i.fj, %.preheader.backedge ], [ %.2, %bb.g ]
  %i.fj = fadd double %.1, -5.000000e-01          ; 5 uses
  %i.fk = fmul double %i.f, %i.fj
  %i.fl = fmul double %i.l, %i.fj
  %i.fm = insertelement <2 x double> %i.z, double %i.fk, i64 1
  %i.fn = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fp = insertelement <2 x double> %i.ab, double %i.fl, i64 1
  %i.fq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fo, <2 x double> %i.fp) ; 2 uses
  %i.fr = extractelement <2 x double> %i.fq, i64 0 ; 4 uses
  %i.fs = extractelement <2 x double> %i.fq, i64 1
  %i.ft = fadd double %i.p, %i.fs
  %i.fu = fneg double %i.ft
  %i.fv = fmul double %i.y, %i.fu
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double %i.fv) ; 2 uses
  %i.fx = fcmp olt double %i.fw, 0.000000e+00
  %spec.store.select3 = select i1 %i.fx, double 0.000000e+00, double %i.fw
  %i.fy = tail call double @sqrt(double noundef %spec.store.select3) #42 ; 2 uses
  %i.fz = fadd double %i.fy, %i.fr
  %i.ga = fsub double %i.ag, %i.fj                ; 4 uses
  %i.gb = fdiv double %i.fz, %i.x
  %i.gc = fadd double %i.aj, %i.gb                ; 2 uses
  %i.gd = fmul double %i.gc, %i.gc
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.ga, double %i.gd) ; 2 uses
  %i.gf = fcmp ugt double %i.ge, %.6
  br i1 %i.gf, label %bb.h, label %.preheader.backedge

bb.h:                                             ; preds = %.preheader
  %i.gg = fsub double %i.fr, %i.fy
  %i.gh = fdiv double %i.gg, %i.x
  %i.gi = fadd double %i.aj, %i.gh                ; 2 uses
  %i.gj = fmul double %i.gi, %i.gi
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.ga, double %i.ga, double %i.gj) ; 2 uses
  %i.gl = fcmp ugt double %i.gk, %.6
  br i1 %i.gl, label %bb.i, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.h, %.preheader
  %.6.be = phi double [ %i.gk, %bb.h ], [ %i.ge, %.preheader ]
  br label %.preheader

bb.i:                                             ; preds = %bb.h
  %i.gm = fadd double %.0259276, %.6              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !539
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv8ximgproc15EdgeDrawingImpl9addCircleEP6CircleRiddddPdS5_i(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !44
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [152 x i8], ptr %0, i64 %i.b ; 8 uses
  store double %2, ptr %i.c, align 8, !tbaa !246
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store double %3, ptr %i.d, align 8, !tbaa !247
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double %4, ptr %i.e, align 8, !tbaa !248
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store double %5, ptr %i.f, align 8, !tbaa !249
  %i.g = sitofp i32 %8 to double
  %i.h = fdiv nnan double %i.g, f0x401921FB54442D18
  %i.i = fmul double %4, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store double %i.i, ptr %i.j, align 8, !tbaa !250
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %6, ptr %i.k, align 8, !tbaa !251
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %7, ptr %i.l, align 8, !tbaa !252
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %8, ptr %i.m, align 8, !tbaa !253
  %i.n = load i32, ptr %1, align 4, !tbaa !44     ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [152 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  store i8 0, ptr %i.q, align 8, !tbaa !256
  %i.r = add nsw i32 %i.n, 1
  store i32 %i.r, ptr %1, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden noundef double @_ZN2cv8ximgproc15EdgeDrawingImpl34ComputeEllipseCenterAndAxisLengthsEP15EllipseEquationPdS4_S4_S4_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !46 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !46
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !46
  %i.k = fdiv double %i.d, %i.b                   ; 4 uses
  %i.l = insertelement <2 x double> poison, double %i.b, i64 0 ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = fdiv <2 x double> %i.h, %i.m             ; 4 uses
  %i.o = fdiv double %i.j, %i.b
  %i.p = insertelement <2 x double> %i.l, double %i.f, i64 1
  %i.q = fdiv <2 x double> %i.p, %i.m             ; 5 uses
  %i.r = fcmp une double %i.k, 0.000000e+00       ; 2 uses
  br i1 %i.r, label %bb.b, label %bb.c

end_hunk_0
