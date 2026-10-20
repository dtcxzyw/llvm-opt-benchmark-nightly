Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b:bb.a
  %i.n = add nuw nsw i64 %i.m, %i.h
  %i.o = shl i64 %i.l, 32
  %i.p = add i64 %i.o, %i.i                       ; 4 uses
  %i.q = icmp ult i64 %i.p, %i.i
  %i.r = zext i1 %i.q to i64
  %spec.select = add nuw nsw i64 %i.n, %i.r       ; 2 uses
  %i.s = icmp ne i64 %i.p, 0
  %i.t = sub i64 0, %i.p
  %i.u = sext i1 %i.s to i64
  %.sink.i.i = sub nsw i64 %i.u, %spec.select
  %.sroa.518.1 = select i1 %.not.i, i64 %spec.select, i64 %.sink.i.i
  %.sroa.017.0 = select i1 %.not.i, i64 %i.p, i64 %i.t
  %i.v = sub nsw i64 %0, %2                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = sub nsw i64 %5, %i.x                     ; 2 uses
  %.not.unshifted.i11 = xor i64 %i.y, %i.v
  %.not.i12 = icmp sgt i64 %.not.unshifted.i11, -1 ; 2 uses
  %spec.select.i13 = tail call i64 @llvm.abs.i64(i64 %i.v, i1 true) ; 2 uses
  %i.z = lshr i64 %spec.select.i13, 32            ; 2 uses
  %i.aa = and i64 %spec.select.i13, 4294967295    ; 2 uses
  %.0.i14 = tail call i64 @llvm.abs.i64(i64 %i.y, i1 true) ; 2 uses
  %i.ab = lshr i64 %.0.i14, 32                    ; 2 uses
  %i.ac = and i64 %.0.i14, 4294967295             ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ab, %i.z
  %i.ae = mul nuw i64 %i.ac, %i.aa                ; 2 uses
  %i.af = mul nuw nsw i64 %i.ac, %i.z
  %i.ag = mul nuw nsw i64 %i.ab, %i.aa
  %i.ah = add nuw i64 %i.af, %i.ag                ; 2 uses
  %i.ai = lshr i64 %i.ah, 32
  %i.aj = add nuw nsw i64 %i.ai, %i.ad
  %i.ak = shl i64 %i.ah, 32
  %i.al = add i64 %i.ak, %i.ae                    ; 4 uses
  %i.am = icmp ult i64 %i.al, %i.ae
  %i.an = zext i1 %i.am to i64
  %.sroa.5.0 = add nuw nsw i64 %i.aj, %i.an       ; 2 uses
  %i.ao = icmp ne i64 %i.al, 0
  %i.ap = sub i64 0, %i.al
  %i.aq = sext i1 %i.ao to i64
  %.sink.i.i15 = sub nsw i64 %i.aq, %.sroa.5.0
  %.sroa.5.1 = select i1 %.not.i12, i64 %.sroa.5.0, i64 %.sink.i.i15
  %.sroa.0.0 = select i1 %.not.i12, i64 %i.al, i64 %i.ap
  %i.ar = icmp eq i64 %.sroa.518.1, %.sroa.5.1
  %i.as = icmp eq i64 %.sroa.017.0, %.sroa.0.0
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = mul nsw i64 %i.c, %i.a
  %i.av = sub nsw i64 %0, %2
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub nsw i64 %5, %i.ax
  %i.az = mul nsw i64 %i.ay, %i.av
  %i.ba = icmp eq i64 %i.au, %i.az
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN10ClipperLib9Int128MulExx.exit
  %.0 = phi i1 [ %i.at, %_ZN10ClipperLib9Int128MulExx.exit ], [ %i.ba, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10ClipperLib14IntersectPointERNS_5TEdgeES1_RNS_8IntPointE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.b = load double, ptr %i.a, align 8           ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.d = load double, ptr %i.c, align 8           ; 4 uses
  %i.e = fcmp oeq double %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.g, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  br label %.sink.split129

bb.d:                                             ; preds = %bb.b
  %i.n = load i64, ptr %0, align 8
  %i.o = load double, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sub nsw i64 %i.g, %i.q
  %i.s = sitofp i64 %i.r to double
  %i.t = fmul double %i.o, %i.s                   ; 2 uses
  %i.u = fcmp olt double %i.t, 0.000000e+00
  %.0.in.v.i.i = select i1 %i.u, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i = fadd double %i.t, %.0.in.v.i.i
  %.0.i.i = fptosi double %.0.in.i.i to i64
  %i.v = add nsw i64 %i.n, %.0.i.i
  br label %.sink.split129

bb.e:                                             ; preds = %bb.a
  %i.w = fcmp oeq double %i.b, 0.000000e+00
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %0, align 8                ; 2 uses
  store i64 %i.x, ptr %2, align 8
  %i.y = load double, ptr %i.c, align 8           ; 2 uses
  %i.z = fcmp oeq double %i.y, -1.000000e+40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.ad = sitofp i64 %i.ab to double
  %i.ae = load i64, ptr %1, align 8
  %i.af = sitofp i64 %i.ae to double
  %i.ag = sitofp i64 %i.x to double
  %i.ah = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.ai = insertelement <2 x double> %i.ah, double %i.af, i64 1
  %i.aj = insertelement <2 x double> poison, double %i.y, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fdiv <2 x double> %i.ai, %i.ak          ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 1
  %i.an = fsub double %i.ad, %i.am
  %i.ao = extractelement <2 x double> %i.al, i64 0
  %i.ap = fadd double %i.ao, %i.an                ; 2 uses
  %i.aq = fcmp olt double %i.ap, 0.000000e+00
  %.0.in.v.i = select i1 %i.aq, double -5.000000e-01, double 5.000000e-01
  %.0.in.i = fadd double %i.ap, %.0.in.v.i
  %.0.i = fptosi double %.0.in.i to i64           ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i, ptr %i.ar, align 8
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.as = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.as, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.at = load i64, ptr %1, align 8               ; 2 uses
  store i64 %i.at, ptr %2, align 8
  %i.au = load double, ptr %i.a, align 8          ; 2 uses
  %i.av = fcmp oeq double %i.au, -1.000000e+40
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8            ; 3 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ax, ptr %i.ay, align 8
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.az = sitofp i64 %i.ax to double
  %i.ba = load i64, ptr %0, align 8
  %i.bb = sitofp i64 %i.ba to double
  %i.bc = sitofp i64 %i.at to double
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bb, i64 1
  %i.bf = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = fdiv <2 x double> %i.be, %i.bg          ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 1
  %i.bj = fsub double %i.az, %i.bi
  %i.bk = extractelement <2 x double> %i.bh, i64 0
  %i.bl = fadd double %i.bk, %i.bj                ; 2 uses
  %i.bm = fcmp olt double %i.bl, 0.000000e+00
  %.0.in.v.i91 = select i1 %i.bm, double -5.000000e-01, double 5.000000e-01
  %.0.in.i92 = fadd double %i.bl, %.0.in.v.i91
  %.0.i93 = fptosi double %.0.in.i92 to i64       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i93, ptr %i.bn, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i64, ptr %0, align 8
  %i.br = sitofp i64 %i.bq to double
  %i.bs = load i64, ptr %i.bo, align 8
  %i.bt = sitofp i64 %i.bs to double
  %i.bu = load i64, ptr %1, align 8
  %i.bv = sitofp i64 %i.bu to double
  %i.bw = load i64, ptr %i.bp, align 8
  %i.bx = sitofp i64 %i.bw to double
  %i.by = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bt, i64 1
  %i.ca = fneg <2 x double> %i.bz
  %i.cb = insertelement <2 x double> poison, double %i.d, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.b, i64 1
  %i.cd = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.ce = insertelement <2 x double> %i.cd, double %i.br, i64 1
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cc, <2 x double> %i.ce) ; 3 uses
  %shift = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.cf, %shift
  %3 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cg = fsub double %i.b, %i.d
  %i.ch = fdiv double %3, %i.cg                   ; 3 uses
  %i.ci = fcmp olt double %i.ch, 0.000000e+00
  %.0.in.v.i94 = select i1 %i.ci, double -5.000000e-01, double 5.000000e-01
  %.0.in.i95 = fadd double %i.ch, %.0.in.v.i94
  %.0.i96 = fptosi double %.0.in.i95 to i64       ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.i96, ptr %i.cj, align 8
  %i.ck = load double, ptr %i.a, align 8          ; 2 uses
  %i.cl = tail call double @llvm.fabs.f64(double %i.ck)
  %i.cm = load double, ptr %i.c, align 8          ; 2 uses
  %i.cn = tail call double @llvm.fabs.f64(double %i.cm)
  %i.co = fcmp olt double %i.cl, %i.cn
  %4 = insertelement <2 x double> poison, double %i.cm, i64 0
  %5 = insertelement <2 x double> %4, double %i.ck, i64 1
  %6 = insertelement <2 x double> poison, double %i.ch, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %7, <2 x double> %i.cf) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %10 = extractelement <2 x double> %8, i64 1
  %.sink127 = select i1 %i.co, double %10, double %9 ; 2 uses
  %i.cp = fcmp olt double %.sink127, 0.000000e+00
  %.0.in.v.i100 = select i1 %i.cp, double -5.000000e-01, double 5.000000e-01
  %.0.in.i101 = fadd double %.sink127, %.0.in.v.i100
  %storemerge = fptosi double %.0.in.i101 to i64
  store i64 %storemerge, ptr %2, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.g, %bb.k, %bb.l, %bb.m
  %i.cq = phi i64 [ %.0.i, %bb.h ], [ %i.ab, %bb.g ], [ %i.ax, %bb.k ], [ %.0.i93, %bb.l ], [ %.0.i96, %bb.m ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8            ; 2 uses
  %i.cu = icmp slt i64 %i.cq, %i.ct
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.cv = icmp slt i64 %i.cq, %.pre
  %or.cond = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond, label %._crit_edge, label %bb.u

._crit_edge:                                      ; preds = %bb.n
  %. = tail call i64 @llvm.smax.i64(i64 %i.ct, i64 %.pre) ; 6 uses
  store i64 %., ptr %i.cr, align 8
  %i.cw = load double, ptr %i.a, align 8          ; 2 uses
  %i.cx = tail call double @llvm.fabs.f64(double %i.cw)
  %i.cy = load double, ptr %i.c, align 8          ; 2 uses
  %i.cz = tail call double @llvm.fabs.f64(double %i.cy)
  %i.da = fcmp olt double %i.cx, %i.cz
  br i1 %i.da, label %bb.o, label %bb.r

bb.o:                                             ; preds = %._crit_edge
  %i.db = load i64, ptr %i.cs, align 8
  %i.dc = icmp eq i64 %., %i.db
  br i1 %i.dc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.de = load i64, ptr %i.dd, align 8
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %i.df = load i64, ptr %0, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = sub nsw i64 %., %i.dh
  %i.dj = sitofp i64 %i.di to double
  %i.dk = fmul double %i.cw, %i.dj                ; 2 uses
  %i.dl = fcmp olt double %i.dk, 0.000000e+00
  %.0.in.v.i.i103 = select i1 %i.dl, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i104 = fadd double %i.dk, %.0.in.v.i.i103
  %.0.i.i105 = fptosi double %.0.in.i.i104 to i64
  %i.dm = add nsw i64 %i.df, %.0.i.i105
  br label %.sink.split

bb.r:                                             ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = icmp eq i64 %., %i.do
  br i1 %i.dp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dr = load i64, ptr %i.dq, align 8
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.ds = load i64, ptr %1, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = sub nsw i64 %., %i.du
  %i.dw = sitofp i64 %i.dv to double
  %i.dx = fmul double %i.cy, %i.dw                ; 2 uses
  %i.dy = fcmp olt double %i.dx, 0.000000e+00
  %.0.in.v.i.i107 = select i1 %i.dy, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i108 = fadd double %i.dx, %.0.in.v.i.i107
  %.0.i.i109 = fptosi double %.0.in.i.i108 to i64
  %i.dz = add nsw i64 %i.ds, %.0.i.i109
  br label %.sink.split

.sink.split:                                      ; preds = %bb.t, %bb.s, %bb.q, %bb.p
  %.sink128 = phi i64 [ %i.dm, %bb.q ], [ %i.de, %bb.p ], [ %i.dr, %bb.s ], [ %i.dz, %bb.t ]
  store i64 %.sink128, ptr %2, align 8
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.n
  %i.ea = phi i64 [ %i.cq, %bb.n ], [ %., %.sink.split ]
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ec = load i64, ptr %i.eb, align 8            ; 6 uses
  %i.ed = icmp sgt i64 %i.ea, %i.ec
  br i1 %i.ed, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  store i64 %i.ec, ptr %i.cr, align 8
  %i.ee = load double, ptr %i.a, align 8          ; 2 uses
  %i.ef = tail call double @llvm.fabs.f64(double %i.ee)
  %i.eg = load double, ptr %i.c, align 8          ; 2 uses
  %i.eh = tail call double @llvm.fabs.f64(double %i.eg)
  %i.ei = fcmp ogt double %i.ef, %i.eh
  br i1 %i.ei, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ek = load i64, ptr %i.ej, align 8
  %i.el = icmp eq i64 %i.ec, %i.ek
  br i1 %i.el, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.en = load i64, ptr %i.em, align 8
  br label %.sink.split129

bb.y:                                             ; preds = %bb.w
  %i.eo = load i64, ptr %1, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = sub nsw i64 %i.ec, %i.eq
  %i.es = sitofp i64 %i.er to double
  %i.et = fmul double %i.eg, %i.es                ; 2 uses
  %i.eu = fcmp olt double %i.et, 0.000000e+00
  %.0.in.v.i.i111 = select i1 %i.eu, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i112 = fadd double %i.et, %.0.in.v.i.i111
  %.0.i.i113 = fptosi double %.0.in.i.i112 to i64
  %i.ev = add nsw i64 %i.eo, %.0.i.i113
  br label %.sink.split129

bb.z:                                             ; preds = %bb.v
  %i.ew = load i64, ptr %i.cs, align 8
  %i.ex = icmp eq i64 %i.ec, %i.ew
  br i1 %i.ex, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ez = load i64, ptr %i.ey, align 8
  br label %.sink.split129

bb.ab:                                            ; preds = %bb.z
  %i.fa = load i64, ptr %0, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = sub nsw i64 %i.ec, %i.fc
  %i.fe = sitofp i64 %i.fd to double
  %i.ff = fmul double %i.ee, %i.fe                ; 2 uses
  %i.fg = fcmp olt double %i.ff, 0.000000e+00
  %.0.in.v.i.i115 = select i1 %i.fg, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i116 = fadd double %i.ff, %.0.in.v.i.i115
  %.0.i.i117 = fptosi double %.0.in.i.i116 to i64
  %i.fh = add nsw i64 %i.fa, %.0.i.i117
  br label %.sink.split129

.sink.split129:                                   ; preds = %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.d, %bb.c
  %.sink130 = phi i64 [ %i.ev, %bb.y ], [ %i.v, %bb.d ], [ %i.m, %bb.c ], [ %i.en, %bb.x ], [ %i.ez, %bb.aa ], [ %i.fh, %bb.ab ]
  store i64 %.sink130, ptr %2, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split129, %bb.u
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib18ReversePolyPtLinksEPNS_5OutPtE(ptr nofree noundef captures(address) %0) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.b, %.preheader ], [ %0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  store ptr %i.d, ptr %i.a, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.not11 = icmp eq ptr %i.b, %0
  br i1 %.not11, label %.loopexit, label %.preheader, !llvm.loop !5

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN10ClipperLib13DisposeOutPtsERPNS_5OutPtE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.g = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
end_hunk_0
