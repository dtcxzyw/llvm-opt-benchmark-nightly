Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msdfgen/original/convergent-curve-ordering?download=true
inline.NumInlined: 71
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7msdfgen23convergentCurveOrderingEPKNS_7Vector2Eii:bb.a
  %i.bs = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bt = extractelement <2 x double> %i.bm, i64 1 ; 2 uses
  %i.bu = extractelement <2 x double> %i.aq, i64 0 ; 2 uses
  %i.bv = extractelement <2 x double> %i.aq, i64 1 ; 2 uses
  br i1 %i.br, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.bw = fcmp une double %i.bs, 0.000000e+00
  %i.bx = fcmp une double %i.bt, 0.000000e+00
  %i.by = select i1 %i.bw, i1 true, i1 %i.bx
  %i.bz = extractelement <2 x double> %i.bf, i64 0 ; 2 uses
  %i.ca = extractelement <2 x double> %i.bf, i64 1 ; 2 uses
  br i1 %i.by, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.cb = fmul <2 x double> %i.bm, %i.bm
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bl, <2 x double> %i.cb)
  %i.cd = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cc) ; 7 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0 ; 2 uses
  %i.cf = shufflevector <2 x double> %i.be, <2 x double> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.cg = fneg <2 x double> %i.cf                 ; 3 uses
  %i.ch = shufflevector <2 x double> %i.bm, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.ci = fmul <2 x double> %i.ch, %i.cg
  %i.cj = shufflevector <2 x double> %i.bl, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.ck = shufflevector <2 x double> %i.be, <2 x double> %i.ap, <2 x i32> <i32 1, i32 2>
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cj, <2 x double> %i.ck, <2 x double> %i.ci) ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.cd, %i.cl
  %i.cm = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.cn = extractelement <2 x double> %i.cl, i64 0
  %i.co = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.cn, double %i.cm) ; 3 uses
  %i.cp = fcmp oeq double %i.co, 0.000000e+00
  br i1 %i.cp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cq = fcmp ogt double %i.co, 0.000000e+00
  %i.cr = zext i1 %i.cq to i32
  %i.cs = fcmp olt double %i.co, 0.000000e+00
  %.neg.i = sext i1 %i.cs to i32
  %i.ct = add nsw i32 %.neg.i, %i.cr
  br label %bb.af

bb.n:                                             ; preds = %bb.l
  %i.cu = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul <2 x double> %i.cu, %i.cd          ; 2 uses
  %i.cw = fneg double %i.bz                       ; 2 uses
  %i.cx = shufflevector <2 x double> %i.bm, <2 x double> %i.ap, <2 x i32> <i32 0, i32 3>
  %i.cy = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> %i.cg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.da = fmul <2 x double> %i.cx, %i.cz
  %i.db = shufflevector <2 x double> %i.bl, <2 x double> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.dc = shufflevector <2 x double> %i.bf, <2 x double> %i.be, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.db, <2 x double> %i.dc, <2 x double> %i.da) ; 2 uses
  %foldExtExtBinop322 = fmul <2 x double> %i.cd, %i.cd
  %i.de = extractelement <2 x double> %foldExtExtBinop322, i64 1
  %i.df = shufflevector <2 x double> %i.aq, <2 x double> %i.cv, <2 x i32> <i32 3, i32 1>
  %i.dg = shufflevector <2 x double> %i.dd, <2 x double> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.dh = fmul <2 x double> %i.df, %i.dg
  %i.di = shufflevector <2 x double> %i.cv, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.dj = shufflevector <2 x double> %i.dd, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dj, <2 x double> %i.dh) ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  %i.dm = extractelement <2 x double> %i.dk, i64 1
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.de, double %i.dm, double %i.dl) ; 3 uses
  %i.do = fcmp oeq double %i.dn, 0.000000e+00
  br i1 %i.do, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = fcmp ogt double %i.dn, 0.000000e+00
  %i.dq = zext i1 %i.dp to i32
  %i.dr = fcmp olt double %i.dn, 0.000000e+00
  %.neg.i246 = sext i1 %i.dr to i32
  %i.ds = add nsw i32 %.neg.i246, %i.dq
  br label %bb.af

bb.p:                                             ; preds = %bb.n
  %i.dt = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> %i.aq, <2 x i32> <i32 0, i32 3>
  %i.dv = fmul <2 x double> %i.du, %i.cz
  %i.dw = shufflevector <2 x double> %i.ap, <2 x double> %i.aq, <2 x i32> <i32 0, i32 2>
  %i.dx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.dc, <2 x double> %i.dv) ; 2 uses
  %foldExtExtBinop320 = fmul <2 x double> %i.cd, %i.dx
  %i.dy = extractelement <2 x double> %foldExtExtBinop320, i64 1
  %i.dz = extractelement <2 x double> %i.dx, i64 0
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.ce, double %i.dz, double %i.dy) ; 3 uses
  %i.eb = fcmp oeq double %i.ea, 0.000000e+00
  br i1 %i.eb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ec = fcmp ogt double %i.ea, 0.000000e+00
  %i.ed = zext i1 %i.ec to i32
  %i.ee = fcmp olt double %i.ea, 0.000000e+00
  %.neg.i247 = sext i1 %i.ee to i32
  %i.ef = add nsw i32 %.neg.i247, %i.ed
  br label %bb.af

bb.r:                                             ; preds = %bb.p
  %i.eg = fmul double %i.bv, %i.cw
  %i.eh = tail call noundef double @llvm.fmuladd.f64(double %i.bu, double %i.ca, double %i.eg) ; 2 uses
  %i.ei = fcmp ogt double %i.eh, 0.000000e+00
  %i.ej = zext i1 %i.ei to i32
  %i.ek = fcmp olt double %i.eh, 0.000000e+00
  %.neg.i248 = sext i1 %i.ek to i32
  %i.el = add nsw i32 %.neg.i248, %i.ej
  br label %bb.af

bb.s:                                             ; preds = %bb.k, %bb.j
  %.sroa.16279.2 = phi double [ %i.ar, %bb.j ], [ %i.bg, %bb.k ] ; 5 uses
  %.sroa.0277.2 = phi double [ %i.as, %bb.j ], [ %i.bh, %bb.k ] ; 5 uses
  %.sroa.14276.1 = phi double [ %i.bv, %bb.j ], [ %i.ca, %bb.k ] ; 5 uses
  %.sroa.0275.1 = phi double [ %i.bu, %bb.j ], [ %i.bz, %bb.k ] ; 5 uses
  %.sroa.14.0 = phi double [ %i.bt, %bb.j ], [ %i.bp, %bb.k ] ; 2 uses
  %.sroa.0268.0 = phi double [ %i.bs, %bb.j ], [ %i.bn, %bb.k ] ; 2 uses
  %.sroa.16.2 = phi double [ %i.bg, %bb.j ], [ %i.ar, %bb.k ] ; 2 uses
  %.sroa.0262.2 = phi double [ %i.bh, %bb.j ], [ %i.as, %bb.k ] ; 2 uses
  %.0208 = phi i32 [ 1, %bb.j ], [ -1, %bb.k ]    ; 5 uses
  %i.em = phi <2 x double> [ %i.be, %bb.j ], [ %i.ap, %bb.k ] ; 3 uses
  %i.en = phi <2 x double> [ %i.bf, %bb.j ], [ %i.aq, %bb.k ] ; 4 uses
  %i.eo = fcmp une double %.sroa.0268.0, 0.000000e+00
  %i.ep = fcmp une double %.sroa.14.0, 0.000000e+00
  %i.eq = select i1 %i.eo, i1 true, i1 %i.ep
  br i1 %i.eq, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.er = fneg double %.sroa.0268.0
  %i.es = fmul double %.sroa.14276.1, %i.er
  %i.et = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0275.1, double %.sroa.14.0, double %i.es) ; 3 uses
  %i.eu = fcmp oeq double %i.et, 0.000000e+00
  br i1 %i.eu, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ev = fcmp ogt double %i.et, 0.000000e+00
  %i.ew = zext i1 %i.ev to i32
  %i.ex = fcmp olt double %i.et, 0.000000e+00
  %.neg.i249 = sext i1 %i.ex to i32
  %i.ey = add nsw i32 %.neg.i249, %i.ew
  %i.ez = mul nsw i32 %.0208, %i.ey
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.fa = fneg double %.sroa.0262.2               ; 2 uses
  %i.fb = fmul double %.sroa.16279.2, %i.fa
  %i.fc = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0277.2, double %.sroa.16.2, double %i.fb) ; 3 uses
  %i.fd = fcmp oeq double %i.fc, 0.000000e+00
  br i1 %i.fd, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fe = fcmp ogt double %i.fc, 0.000000e+00
  %i.ff = zext i1 %i.fe to i32
  %i.fg = fcmp olt double %i.fc, 0.000000e+00
  %.neg.i250 = sext i1 %i.fg to i32
  %i.fh = add nsw i32 %.neg.i250, %i.ff
  %i.fi = mul nsw i32 %i.fh, %.0208
  br label %bb.af

bb.x:                                             ; preds = %bb.v
  %i.fj = fmul double %.sroa.14276.1, %i.fa
  %i.fk = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0275.1, double %.sroa.16.2, double %i.fj) ; 3 uses
  %i.fl = fcmp oeq double %i.fk, 0.000000e+00
  br i1 %i.fl, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fm = fcmp ogt double %i.fk, 0.000000e+00
  %i.fn = zext i1 %i.fm to i32
  %i.fo = fcmp olt double %i.fk, 0.000000e+00
  %.neg.i251 = sext i1 %i.fo to i32
  %i.fp = add nsw i32 %.neg.i251, %i.fn
  %i.fq = mul nsw i32 %i.fp, %.0208
  br label %bb.af

bb.z:                                             ; preds = %bb.x
  %i.fr = extractelement <2 x double> %i.en, i64 0
  %i.fs = fneg double %i.fr                       ; 2 uses
  %i.ft = fmul double %.sroa.16279.2, %i.fs
  %i.fu = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.fv = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0277.2, double %i.fu, double %i.ft) ; 3 uses
  %i.fw = fcmp oeq double %i.fv, 0.000000e+00
  br i1 %i.fw, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fx = fcmp ogt double %i.fv, 0.000000e+00
  %i.fy = zext i1 %i.fx to i32
  %i.fz = fcmp olt double %i.fv, 0.000000e+00
  %.neg.i252 = sext i1 %i.fz to i32
  %i.ga = add nsw i32 %.neg.i252, %i.fy
  %i.gb = mul nsw i32 %i.ga, %.0208
  br label %bb.af

bb.ab:                                            ; preds = %bb.z
  %i.gc = fmul double %.sroa.14276.1, %i.fs
  %i.gd = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0275.1, double %i.fu, double %i.gc) ; 2 uses
  %i.ge = fcmp ogt double %i.gd, 0.000000e+00
  %i.gf = zext i1 %i.ge to i32
  %i.gg = fcmp olt double %i.gd, 0.000000e+00
  %.neg.i253 = sext i1 %i.gg to i32
  %i.gh = add nsw i32 %.neg.i253, %i.gf
  %i.gi = mul nsw i32 %i.gh, %.0208
  br label %bb.af

bb.ac:                                            ; preds = %bb.s
  %i.gj = fmul double %.sroa.16279.2, %.sroa.16279.2
  %3 = tail call double @llvm.fmuladd.f64(double %.sroa.0277.2, double %.sroa.0277.2, double %i.gj)
  %sqrt.i254 = tail call noundef double @llvm.sqrt.f64(double %3)
  %sqrt309 = tail call double @llvm.sqrt.f64(double %sqrt.i254)
  %i.gk = extractelement <2 x double> %i.en, i64 0
  %i.gl = fneg double %i.gk                       ; 2 uses
  %i.gm = fmul double %.sroa.16279.2, %i.gl
  %i.gn = extractelement <2 x double> %i.en, i64 1 ; 2 uses
  %i.go = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0277.2, double %i.gn, double %i.gm)
  %i.gp = fneg double %.sroa.0262.2
  %i.gq = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.gr = insertelement <2 x double> %i.gq, double %.sroa.14276.1, i64 1
  %i.gs = insertelement <2 x double> %i.gq, double %i.gp, i64 1
  %i.gt = fmul <2 x double> %i.gr, %i.gs
  %i.gu = insertelement <2 x double> %i.em, double %.sroa.0275.1, i64 1
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gu, <2 x double> %i.em, <2 x double> %i.gt) ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 0
  %sqrt309.a = tail call noundef double @llvm.sqrt.f64(double %i.gw)
  %sqrt = tail call double @llvm.sqrt.f64(double %sqrt309.a)
  %i.gx = extractelement <2 x double> %i.gv, i64 1
  %i.gy = fmul double %i.gx, %sqrt
  %i.gz = tail call double @llvm.fmuladd.f64(double %sqrt309, double %i.go, double %i.gy) ; 3 uses
  %i.ha = fcmp oeq double %i.gz, 0.000000e+00
  br i1 %i.ha, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hb = fcmp ogt double %i.gz, 0.000000e+00
  %i.hc = zext i1 %i.hb to i32
  %i.hd = fcmp olt double %i.gz, 0.000000e+00
  %.neg.i256 = sext i1 %i.hd to i32
  %i.he = add nsw i32 %.neg.i256, %i.hc
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.hf = fmul double %.sroa.14276.1, %i.gl
  %i.hg = tail call noundef double @llvm.fmuladd.f64(double %.sroa.0275.1, double %i.gn, double %i.hf) ; 2 uses
  %i.hh = fcmp ogt double %i.hg, 0.000000e+00
  %i.hi = zext i1 %i.hh to i32
  %i.hj = fcmp olt double %i.hg, 0.000000e+00
  %.neg.i257 = sext i1 %i.hj to i32
  %i.hk = add nsw i32 %.neg.i257, %i.hi
  br label %bb.af

bb.af:                                            ; preds = %bb.r, %bb.ae, %bb.ab, %bb.m, %bb.o, %bb.q, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ad, %bb.a
  %.11 = phi i32 [ 0, %bb.a ], [ %i.ct, %bb.m ], [ %i.el, %bb.r ], [ %i.ef, %bb.q ], [ %i.ds, %bb.o ], [ %i.gi, %bb.ab ], [ %i.gb, %bb.aa ], [ %i.fq, %bb.y ], [ %i.fi, %bb.w ], [ %i.ez, %bb.u ], [ %i.hk, %bb.ae ], [ %i.he, %bb.ad ]
  ret i32 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 2) i32 @_ZN7msdfgen23convergentCurveOrderingEPKNS_11EdgeSegmentES2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca [12 x %"struct.msdfgen::Vector2"], align 16 ; 45 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %2, i8 0, i64 192, i1 false), !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(12) %0) ; 4 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(12) %1) ; 3 uses
  %i.k = add i32 %i.f, -1
  %or.cond = icmp ult i32 %i.k, 3
  %i.l = add i32 %i.j, -1
  %i.m = icmp ult i32 %i.l, 3
  %or.cond5 = and i1 %or.cond, %i.m
  %.sink115.sroa.gep = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sink115.sroa.gep116 = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sink115.sroa.gep117 = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sink115.sroa.gep118 = getelementptr inbounds nuw i8, ptr %2, i64 96
  br i1 %or.cond5, label %.lr.ph.preheader, label %bb.p

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = add nuw nsw i32 %i.f, 1
  %wide.trip.count = zext nneg i32 %i.n to i64
  br label %.lr.ph

.lr.ph96.preheader:                               ; preds = %.lr.ph
  %i.o = add nuw nsw i32 %i.j, 1
  %wide.trip.count104 = zext nneg i32 %i.o to i64
  br label %.lr.ph96

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(12) %0)
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph96.preheader, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph96
  %.sroa.0.0.copyload.pre = load double, ptr %i.a, align 16, !tbaa !8 ; 5 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.sroa.2.0.copyload.pre = load double, ptr %.sroa.2.0..sroa_idx.phi.trans.insert, align 8, !tbaa !8 ; 5 uses
  %i.v = zext nneg i32 %i.f to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.v ; 2 uses
  %.sroa.09.0.copyload = load double, ptr %i.w, align 16, !tbaa !8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.210.0.copyload = load double, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !8
  %i.x = fcmp une double %.sroa.09.0.copyload, %.sroa.0.0.copyload.pre
  %i.y = fcmp une double %.sroa.210.0.copyload, %.sroa.2.0.copyload.pre
  %i.z = select i1 %i.x, i1 true, i1 %i.y
  br i1 %i.z, label %bb.p, label %bb.b

.lr.ph96:                                         ; preds = %.lr.ph96.preheader, %.lr.ph96
  %indvars.iv101 = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next102, %.lr.ph96 ] ; 3 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !10
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef ptr %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv101
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !tbaa.struct !12
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count104
  br i1 %exitcond105.not, label %._crit_edge, label %.lr.ph96, !llvm.loop !15

bb.b:                                             ; preds = %._crit_edge
  switch i32 %i.f, label %default.unreachable [
    i32 3, label %bb.c
    i32 2, label %bb.g
    i32 1, label %..thread52_crit_edge.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %.sroa.025.0.copyload.i = load double, ptr %i.ag, align 16, !tbaa !8 ; 2 uses
  %.sroa.226.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.226.0.copyload.i = load double, ptr %.sroa.226.0..sroa_idx.i, align 8, !tbaa !8 ; 2 uses
  %.sroa.023.0.copyload.i = load double, ptr %i.b, align 16, !tbaa !8 ; 3 uses
  %.sroa.224.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.224.0.copyload.i = load double, ptr %.sroa.224.0..sroa_idx.i, align 8, !tbaa !8 ; 3 uses
  %i.ah = fcmp oeq double %.sroa.025.0.copyload.i, %.sroa.023.0.copyload.i
  %i.ai = fcmp oeq double %.sroa.226.0.copyload.i, %.sroa.224.0.copyload.i
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.019.0.copyload.i = load double, ptr %i.ak, align 16, !tbaa !8
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.sroa.220.0.copyload.i = load double, ptr %.sroa.220.0..sroa_idx.i, align 8, !tbaa !8
  %i.al = fcmp oeq double %.sroa.025.0.copyload.i, %.sroa.019.0.copyload.i
  %i.am = fcmp oeq double %.sroa.226.0.copyload.i, %.sroa.220.0.copyload.i
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %bb.e, label %_ZN7msdfgenL23simplifyDegenerateCurveEPNS_7Vector2ERi.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.017.0.copyload.i = load double, ptr %i.ao, align 16, !tbaa !8 ; 2 uses
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  %.sroa.218.0.copyload.i = load double, ptr %.sroa.218.0..sroa_idx.i, align 8, !tbaa !8 ; 2 uses
  %i.ap = fcmp oeq double %.sroa.017.0.copyload.i, %.sroa.023.0.copyload.i
  %i.aq = fcmp oeq double %.sroa.218.0.copyload.i, %.sroa.224.0.copyload.i
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 176
  %.sroa.011.0.copyload.i = load double, ptr %i.as, align 16, !tbaa !8
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 184
  %.sroa.212.0.copyload.i = load double, ptr %.sroa.212.0..sroa_idx.i, align 8, !tbaa !8
  %i.at = fcmp oeq double %.sroa.017.0.copyload.i, %.sroa.011.0.copyload.i
  %i.au = fcmp oeq double %.sroa.218.0.copyload.i, %.sroa.212.0.copyload.i
  %i.av = select i1 %i.at, i1 %i.au, i1 false
  br i1 %i.av, label %.thread.i, label %_ZN7msdfgenL23simplifyDegenerateCurveEPNS_7Vector2ERi.exit

.thread.i:                                        ; preds = %bb.f, %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.aw, i64 16, i1 false), !tbaa.struct !12
  br label %.thread52.i

bb.g:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %.sroa.09.0.copyload.i = load double, ptr %i.ax, align 16, !tbaa !8 ; 2 uses
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 152
  %.sroa.210.0.copyload.i = load double, ptr %.sroa.210.0..sroa_idx.i, align 8, !tbaa !8 ; 2 uses
  %.sroa.07.0.copyload.i = load double, ptr %i.b, align 16, !tbaa !8 ; 2 uses
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 136
  %.sroa.28.0.copyload.i = load double, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !8 ; 2 uses
  %i.ay = fcmp oeq double %.sroa.09.0.copyload.i, %.sroa.07.0.copyload.i
  %i.az = fcmp oeq double %.sroa.210.0.copyload.i, %.sroa.28.0.copyload.i
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %i.ba, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 160
  %.sroa.03.0.copyload.i = load double, ptr %i.bb, align 16, !tbaa !8
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 168
  %.sroa.24.0.copyload.i = load double, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !8
  %i.bc = fcmp oeq double %.sroa.09.0.copyload.i, %.sroa.03.0.copyload.i
  %i.bd = fcmp oeq double %.sroa.210.0.copyload.i, %.sroa.24.0.copyload.i
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %bb.i, label %_ZN7msdfgenL23simplifyDegenerateCurveEPNS_7Vector2ERi.exit

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ax, ptr noundef nonnull align 16 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !12
  br label %.thread52.i

..thread52_crit_edge.i:                           ; preds = %bb.b
  %.sroa.01.0.copyload.pre.i = load double, ptr %i.b, align 16, !tbaa !8
end_hunk_0
