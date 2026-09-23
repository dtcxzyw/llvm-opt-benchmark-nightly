Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/common?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @get_homography(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [81 x double], align 16           ; 91 uses
  %i.b = alloca [9 x double], align 16            ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load float, ptr %1, align 4, !tbaa !30
  %i.g = fpext reassoc nsz arcp contract afn float %i.f to double ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !31
  %i.j = fpext reassoc nsz arcp contract afn float %i.i to double ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !30
  %i.m = fpext reassoc nsz arcp contract afn float %i.l to double ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %i.p = fpext reassoc nsz arcp contract afn float %i.o to double ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !30
  %i.s = fpext reassoc nsz arcp contract afn float %i.r to double ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !31
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load float, ptr %i.w, align 4, !tbaa !30
  %i.y = fpext reassoc nsz arcp contract afn float %i.x to double ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aa = load float, ptr %i.z, align 4, !tbaa !31
  %i.ab = fpext reassoc nsz arcp contract afn float %i.aa to double ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load <2 x float>, ptr %0, align 4, !tbaa !12
  %i.ae = fpext <2 x float> %i.ad to <2 x double> ; 3 uses
  %i.af = fneg reassoc nsz arcp contract afn <2 x double> %i.ae ; 2 uses
  store <2 x double> %i.af, ptr %i.a, align 16, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double -1.000000e+00, ptr %i.ag, align 16, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = insertelement <2 x double> poison, double %i.g, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul reassoc nsz arcp contract afn <2 x double> %i.ak, %i.ae
  store <2 x double> %i.al, ptr %i.ai, align 16, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %i.g, ptr %i.am, align 16, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  store <2 x double> %i.af, ptr %i.aq, align 16, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  store double -1.000000e+00, ptr %i.ar, align 16, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.at = insertelement <2 x double> poison, double %i.j, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fmul reassoc nsz arcp contract afn <2 x double> %i.au, %i.ae
  store <2 x double> %i.av, ptr %i.as, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store double %i.j, ptr %i.aw, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.az = load <2 x float>, ptr %i.c, align 4, !tbaa !12
  %i.ba = fpext <2 x float> %i.az to <2 x double> ; 3 uses
  %i.bb = fneg reassoc nsz arcp contract afn <2 x double> %i.ba ; 2 uses
  store <2 x double> %i.bb, ptr %i.ax, align 16, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  store double -1.000000e+00, ptr %i.bc, align 16, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bg = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul reassoc nsz arcp contract afn <2 x double> %i.bh, %i.ba
  store <2 x double> %i.bi, ptr %i.bf, align 16, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store double %i.m, ptr %i.bj, align 16, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store <2 x double> %i.bb, ptr %i.bn, align 16, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  store double -1.000000e+00, ptr %i.bp, align 16, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.br = insertelement <2 x double> poison, double %i.p, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = fmul reassoc nsz arcp contract afn <2 x double> %i.bs, %i.ba
  store <2 x double> %i.bt, ptr %i.bq, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store double %i.p, ptr %i.bu, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.bx = load <2 x float>, ptr %i.d, align 4, !tbaa !12
  %i.by = fpext <2 x float> %i.bx to <2 x double> ; 3 uses
  %i.bz = fneg reassoc nsz arcp contract afn <2 x double> %i.by ; 2 uses
  store <2 x double> %i.bz, ptr %i.bv, align 16, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  store double -1.000000e+00, ptr %i.ca, align 16, !tbaa !33
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  %i.cf = insertelement <2 x double> poison, double %i.s, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul reassoc nsz arcp contract afn <2 x double> %i.cg, %i.by
  store <2 x double> %i.ch, ptr %i.ce, align 16, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store double %i.s, ptr %i.ci, align 16, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 360 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i8 0, i64 24, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store <2 x double> %i.bz, ptr %i.cm, align 16, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  store double -1.000000e+00, ptr %i.co, align 16, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.cr = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ct = fmul reassoc nsz arcp contract afn <2 x double> %i.cs, %i.by
  store <2 x double> %i.ct, ptr %i.cp, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 424 ; 2 uses
  store double %i.v, ptr %i.cu, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.cx = load <2 x float>, ptr %i.e, align 4, !tbaa !12
  %i.cy = fpext <2 x float> %i.cx to <2 x double> ; 3 uses
  %i.cz = fneg reassoc nsz arcp contract afn <2 x double> %i.cy ; 2 uses
  store <2 x double> %i.cz, ptr %i.cv, align 16, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  store double -1.000000e+00, ptr %i.da, align 16, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.dg = insertelement <2 x double> poison, double %i.y, i64 0
  %i.dh = shufflevector <2 x double> %i.dg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.di = fmul reassoc nsz arcp contract afn <2 x double> %i.dh, %i.cy
  store <2 x double> %i.di, ptr %i.de, align 16, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  store double %i.y, ptr %i.dj, align 16, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  store <2 x double> %i.cz, ptr %i.dn, align 16, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 544 ; 2 uses
  store double -1.000000e+00, ptr %i.dp, align 16, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 552 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.ds = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fmul reassoc nsz arcp contract afn <2 x double> %i.dt, %i.cy
  store <2 x double> %i.du, ptr %i.dq, align 8, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  store double %i.ab, ptr %i.dv, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 640 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dw, i8 0, i64 64, i1 false)
  store double 1.000000e+00, ptr %i.ee, align 16, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !tbaa !33
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 12 uses
  store double 1.000000e+00, ptr %i.ef, align 16, !tbaa !33
  %i.eg = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #10 ; 12 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store i32 8, ptr %i.eh, align 4, !tbaa !34
  %scevgep88 = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %scevgep100 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.b

.loopexit.i.i:                                    ; preds = %._crit_edge121.i.i, %.preheader111.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond146.not.i.i = icmp eq i64 %indvars.iv.next144.i.i, 9
  br i1 %exitcond146.not.i.i, label %gauss_solve.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %bb.a
  %indvars.iv143.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next144.i.i, %.loopexit.i.i ] ; 20 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 14 uses
  %i.ei = sub nsw i64 8, %indvars.iv143.i.i       ; 3 uses
  %i.ej = sub nsw i64 8, %indvars.iv143.i.i       ; 3 uses
  %i.ek = shl nuw nsw i64 %indvars.iv143.i.i, 3
  %i.el = getelementptr nuw i8, ptr %i.a, i64 %i.ek
  %scevgep98 = getelementptr nuw i8, ptr %i.el, i64 8
  %i.em = mul nuw nsw i64 %indvars.iv143.i.i, 80
  %i.en = getelementptr nuw i8, ptr %i.a, i64 %i.em
  %scevgep102 = getelementptr nuw i8, ptr %i.en, i64 8
  %i.eo = mul nuw nsw i64 %indvars.iv143.i.i, 72
  %i.ep = getelementptr nuw i8, ptr %i.a, i64 %i.eo
  %scevgep103 = getelementptr nuw i8, ptr %i.ep, i64 72
  %i.eq = sub nsw i64 8, %indvars.iv143.i.i       ; 3 uses
  %i.er = mul nuw nsw i64 %indvars.iv143.i.i, 80  ; 3 uses
  %i.es = getelementptr i8, ptr %i.a, i64 %i.er
  %scevgep = getelementptr i8, ptr %i.es, i64 80  ; 2 uses
  %i.et = getelementptr i8, ptr %i.a, i64 %i.er
  %scevgep89 = getelementptr i8, ptr %i.et, i64 72
  %i.eu = shl nuw nsw i64 %indvars.iv143.i.i, 3
  %i.ev = getelementptr i8, ptr %i.a, i64 %i.eu
  %scevgep90 = getelementptr i8, ptr %i.ev, i64 584
  %i.ew = mul nuw nsw i64 %indvars.iv143.i.i, 72
  %i.ex = getelementptr nuw i8, ptr %i.a, i64 %i.ew
  %scevgep92 = getelementptr nuw i8, ptr %i.ex, i64 72
  %indvars.iv.next144.i.i = add nuw nsw i64 %indvars.iv143.i.i, 1 ; 2 uses
  %i.ey = icmp samesign ult i64 %indvars.iv143.i.i, 8 ; 2 uses
  %i.ez = trunc nuw nsw i64 %indvars.iv143.i.i to i32 ; 3 uses
  br i1 %i.ey, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.fa = sub nsw i64 0, %indvars.iv143.i.i
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143.i.i ; 10 uses
  %xtraiter = and i64 %i.fa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv124.i.i.prol = phi i64 [ %indvars.iv.next125.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.0100112.i.i.prol = phi i32 [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ez, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.idx.i.i.prol = mul nuw nsw i64 %indvars.iv124.i.i.prol, 72
  %gep.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.prol
  %i.fb = load double, ptr %gep.i.i.prol, align 8, !tbaa !33
  %i.fc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fb)
  %i.fd = mul nuw nsw i32 %.0100112.i.i.prol, 9
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.fe
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !33
  %i.fh = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fg)
  %i.fi = fcmp reassoc nsz arcp contract afn ogt double %i.fc, %i.fh
  %i.fj = trunc nuw nsw i64 %indvars.iv124.i.i.prol to i32
  %spec.select.i.i.prol = select i1 %i.fi, i32 %i.fj, i32 %.0100112.i.i.prol ; 3 uses
  %indvars.iv.next125.i.i.prol = add nuw nsw i64 %indvars.iv124.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !13

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv124.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ], [ %indvars.iv.next125.i.i.prol, %.lr.ph.i.i.prol ]
  %.0100112.i.i.unr = phi i32 [ %i.ez, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.fk = icmp ugt i64 %indvars.iv143.i.i, 4
  br i1 %i.fk, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.0100.lcssa.i.i = phi i32 [ %i.ez, %bb.b ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv143.i.i
  store i32 %.0100.lcssa.i.i, ptr %i.fl, align 4, !tbaa !34
  %i.fm = mul nuw nsw i32 %.0100.lcssa.i.i, 9
  %i.fn = zext nneg i32 %i.fm to i64              ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143.i.i ; 4 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fn ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !33 ; 4 uses
  %i.fr = mul nuw nsw i64 %indvars.iv143.i.i, 9   ; 2 uses
  %.idx147.i.i = mul nuw nsw i64 %indvars.iv143.i.i, 80
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx147.i.i ; 2 uses
end_hunk_0
begin_hunk_1_@get_homography:bb.a
  %i.kk = shufflevector <4 x double> %i.kj, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kl = fmul reassoc nsz arcp contract afn <4 x double> %i.ki, %i.kk
  %i.km = load <4 x double>, ptr %i.jz, align 8, !tbaa !33
  %i.kn = fadd reassoc nsz arcp contract afn <4 x double> %i.km, %i.kl ; 2 uses
  store <4 x double> %i.kn, ptr %i.jz, align 8, !tbaa !33
  %i.ko = load <4 x double>, ptr %i.cj, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.kq = load double, ptr %i.cv, align 16, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 8 uses
  %i.ks = load double, ptr %i.dk, align 8, !tbaa !33
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 9 uses
  %i.ku = load double, ptr %i.dw, align 16, !tbaa !33
  %i.kv = insertelement <4 x double> %i.ko, double %i.kq, i64 1
  %i.kw = insertelement <4 x double> %i.kv, double %i.ks, i64 2
  %i.kx = insertelement <4 x double> %i.kw, double %i.ku, i64 3
  %i.ky = fmul reassoc nsz arcp contract afn <4 x double> %i.kx, %i.kk
  %i.kz = load <4 x double>, ptr %i.kp, align 8, !tbaa !33
  %i.la = fadd reassoc nsz arcp contract afn <4 x double> %i.kz, %i.ky
  store <4 x double> %i.la, ptr %i.kp, align 8, !tbaa !33
  %i.lb = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !34
  %i.ld = sext i32 %i.lc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ld ; 2 uses
  %i.lf = load double, ptr %i.le, align 8, !tbaa !33 ; 5 uses
  %i.lg = extractelement <4 x double> %i.kn, i64 0
  store double %i.lg, ptr %i.le, align 8, !tbaa !33
  store double %i.lf, ptr %i.jz, align 8, !tbaa !33
  %i.lh = load <4 x double>, ptr %i.ay, align 8
  %i.li = load double, ptr %i.bl, align 16, !tbaa !33
  %i.lj = load double, ptr %i.bw, align 8, !tbaa !33
  %i.lk = load double, ptr %i.ck, align 16, !tbaa !33
  %i.ll = insertelement <4 x double> %i.lh, double %i.li, i64 1
  %i.lm = insertelement <4 x double> %i.ll, double %i.lj, i64 2
  %i.ln = insertelement <4 x double> %i.lm, double %i.lk, i64 3
  %i.lo = insertelement <4 x double> poison, double %i.lf, i64 0
  %i.lp = shufflevector <4 x double> %i.lo, <4 x double> poison, <4 x i32> zeroinitializer
  %i.lq = fmul reassoc nsz arcp contract afn <4 x double> %i.ln, %i.lp
  %i.lr = load <4 x double>, ptr %i.kb, align 16, !tbaa !33
  %i.ls = fadd reassoc nsz arcp contract afn <4 x double> %i.lr, %i.lq ; 2 uses
  store <4 x double> %i.ls, ptr %i.kb, align 16, !tbaa !33
  %i.lt = load double, ptr %i.cw, align 8, !tbaa !33
  %i.lu = fmul reassoc nsz arcp contract afn double %i.lt, %i.lf
  %i.lv = load double, ptr %i.kr, align 16, !tbaa !33
  %i.lw = fadd reassoc nsz arcp contract afn double %i.lv, %i.lu
  store double %i.lw, ptr %i.kr, align 16, !tbaa !33
  %i.lx = load double, ptr %i.dl, align 16, !tbaa !33
  %i.ly = fmul reassoc nsz arcp contract afn double %i.lx, %i.lf
  %i.lz = load double, ptr %i.kt, align 8, !tbaa !33
  %i.ma = fadd reassoc nsz arcp contract afn double %i.lz, %i.ly
  store double %i.ma, ptr %i.kt, align 8, !tbaa !33
  %i.mb = load double, ptr %i.dx, align 8, !tbaa !33
  %i.mc = fmul reassoc nsz arcp contract afn double %i.mb, %i.lf
  %i.md = load double, ptr %i.ef, align 16, !tbaa !33
  %i.me = fadd reassoc nsz arcp contract afn double %i.md, %i.mc
  store double %i.me, ptr %i.ef, align 16, !tbaa !33
  %i.mf = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !34
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.mh ; 2 uses
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !33 ; 4 uses
  %i.mk = extractelement <4 x double> %i.ls, i64 0
  store double %i.mk, ptr %i.mi, align 8, !tbaa !33
  store double %i.mj, ptr %i.kb, align 16, !tbaa !33
  %i.ml = load <4 x double>, ptr %i.bm, align 8
  %i.mm = load double, ptr %i.ca, align 16, !tbaa !33
  %i.mn = load double, ptr %i.cl, align 8, !tbaa !33
  %i.mo = load double, ptr %i.da, align 16, !tbaa !33
  %i.mp = insertelement <4 x double> %i.ml, double %i.mm, i64 1
  %i.mq = insertelement <4 x double> %i.mp, double %i.mn, i64 2
  %i.mr = insertelement <4 x double> %i.mq, double %i.mo, i64 3
  %i.ms = insertelement <4 x double> poison, double %i.mj, i64 0
  %i.mt = shufflevector <4 x double> %i.ms, <4 x double> poison, <4 x i32> zeroinitializer
  %i.mu = fmul reassoc nsz arcp contract afn <4 x double> %i.mr, %i.mt
  %i.mv = load <4 x double>, ptr %i.kd, align 8, !tbaa !33
  %i.mw = fadd reassoc nsz arcp contract afn <4 x double> %i.mv, %i.mu ; 2 uses
  store <4 x double> %i.mw, ptr %i.kd, align 8, !tbaa !33
  %i.mx = load double, ptr %i.dm, align 8, !tbaa !33
  %i.my = fmul reassoc nsz arcp contract afn double %i.mx, %i.mj
  %i.mz = load double, ptr %i.kt, align 8, !tbaa !33
  %i.na = fadd reassoc nsz arcp contract afn double %i.mz, %i.my
  store double %i.na, ptr %i.kt, align 8, !tbaa !33
  %i.nb = load double, ptr %i.dy, align 16, !tbaa !33
  %i.nc = fmul reassoc nsz arcp contract afn double %i.nb, %i.mj
  %i.nd = load double, ptr %i.ef, align 16, !tbaa !33
  %i.ne = fadd reassoc nsz arcp contract afn double %i.nd, %i.nc
  store double %i.ne, ptr %i.ef, align 16, !tbaa !33
  %i.nf = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !34
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.nh ; 2 uses
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !33 ; 3 uses
  %i.nk = extractelement <4 x double> %i.mw, i64 0
  store double %i.nk, ptr %i.ni, align 8, !tbaa !33
  store double %i.nj, ptr %i.kd, align 8, !tbaa !33
  %i.nl = load <4 x double>, ptr %i.cb, align 8
  %i.nm = load double, ptr %i.cm, align 16, !tbaa !33
  %i.nn = load double, ptr %i.db, align 8, !tbaa !33
  %i.no = load double, ptr %i.dn, align 16, !tbaa !33
  %i.np = insertelement <4 x double> %i.nl, double %i.nm, i64 1
  %i.nq = insertelement <4 x double> %i.np, double %i.nn, i64 2
  %i.nr = insertelement <4 x double> %i.nq, double %i.no, i64 3
  %i.ns = insertelement <4 x double> poison, double %i.nj, i64 0
  %i.nt = shufflevector <4 x double> %i.ns, <4 x double> poison, <4 x i32> zeroinitializer
  %i.nu = fmul reassoc nsz arcp contract afn <4 x double> %i.nr, %i.nt
  %i.nv = load <4 x double>, ptr %i.kf, align 16, !tbaa !33
  %i.nw = fadd reassoc nsz arcp contract afn <4 x double> %i.nv, %i.nu ; 2 uses
  store <4 x double> %i.nw, ptr %i.kf, align 16, !tbaa !33
  %i.nx = load double, ptr %i.dz, align 8, !tbaa !33
  %i.ny = fmul reassoc nsz arcp contract afn double %i.nx, %i.nj
  %i.nz = load double, ptr %i.ef, align 16, !tbaa !33
  %i.oa = fadd reassoc nsz arcp contract afn double %i.nz, %i.ny
  store double %i.oa, ptr %i.ef, align 16, !tbaa !33
  %i.ob = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !34
  %i.od = sext i32 %i.oc to i64
  %i.oe = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.od ; 2 uses
  %i.of = load double, ptr %i.oe, align 8, !tbaa !33 ; 2 uses
  %i.og = extractelement <4 x double> %i.nw, i64 0
  store double %i.og, ptr %i.oe, align 8, !tbaa !33
  store double %i.of, ptr %i.kf, align 16, !tbaa !33
  %i.oh = load <4 x double>, ptr %i.cn, align 8
  %i.oi = load double, ptr %i.dc, align 16, !tbaa !33
  %i.oj = load double, ptr %i.do, align 8, !tbaa !33
  %i.ok = load double, ptr %i.ea, align 16, !tbaa !33
  %i.ol = insertelement <4 x double> %i.oh, double %i.oi, i64 1
  %i.om = insertelement <4 x double> %i.ol, double %i.oj, i64 2
  %i.on = insertelement <4 x double> %i.om, double %i.ok, i64 3
  %i.oo = insertelement <4 x double> poison, double %i.of, i64 0
  %i.op = shufflevector <4 x double> %i.oo, <4 x double> poison, <4 x i32> zeroinitializer
  %i.oq = fmul reassoc nsz arcp contract afn <4 x double> %i.on, %i.op
  %i.or = load <4 x double>, ptr %i.kp, align 8, !tbaa !33
  %i.os = fadd reassoc nsz arcp contract afn <4 x double> %i.or, %i.oq ; 2 uses
  store <4 x double> %i.os, ptr %i.kp, align 8, !tbaa !33
  %i.ot = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !34
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ov ; 2 uses
  %i.ox = load double, ptr %i.ow, align 8, !tbaa !33 ; 3 uses
  %i.oy = extractelement <4 x double> %i.os, i64 0
  store double %i.oy, ptr %i.ow, align 8, !tbaa !33
  store double %i.ox, ptr %i.kp, align 8, !tbaa !33
  %i.oz = load double, ptr %i.dd, align 8, !tbaa !33
  %i.pa = fmul reassoc nsz arcp contract afn double %i.oz, %i.ox
  %i.pb = load double, ptr %i.kr, align 16, !tbaa !33
  %i.pc = fadd reassoc nsz arcp contract afn double %i.pb, %i.pa ; 2 uses
  store double %i.pc, ptr %i.kr, align 16, !tbaa !33
  %i.pd = load <2 x double>, ptr %i.dp, align 16
  %i.pe = load double, ptr %i.eb, align 8, !tbaa !33
  %i.pf = insertelement <2 x double> %i.pd, double %i.pe, i64 1
  %i.pg = insertelement <2 x double> poison, double %i.ox, i64 0
  %i.ph = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = fmul reassoc nsz arcp contract afn <2 x double> %i.pf, %i.ph
  %i.pj = load <2 x double>, ptr %i.kt, align 8, !tbaa !33
  %i.pk = fadd reassoc nsz arcp contract afn <2 x double> %i.pj, %i.pi
  store <2 x double> %i.pk, ptr %i.kt, align 8, !tbaa !33
  %i.pl = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !34
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pn ; 2 uses
  %i.pp = load double, ptr %i.po, align 8, !tbaa !33 ; 3 uses
  store double %i.pc, ptr %i.po, align 8, !tbaa !33
  store double %i.pp, ptr %i.kr, align 16, !tbaa !33
  %i.pq = load double, ptr %i.dq, align 8, !tbaa !33
  %i.pr = fmul reassoc nsz arcp contract afn double %i.pq, %i.pp
  %i.ps = load double, ptr %i.kt, align 8, !tbaa !33
  %i.pt = fadd reassoc nsz arcp contract afn double %i.ps, %i.pr ; 2 uses
  store double %i.pt, ptr %i.kt, align 8, !tbaa !33
  %i.pu = load double, ptr %i.ec, align 16, !tbaa !33
  %i.pv = fmul reassoc nsz arcp contract afn double %i.pu, %i.pp
  %i.pw = load double, ptr %i.ef, align 16, !tbaa !33
  %i.px = fadd reassoc nsz arcp contract afn double %i.pw, %i.pv
  store double %i.px, ptr %i.ef, align 16, !tbaa !33
  %i.py = getelementptr inbounds nuw i8, ptr %i.eg, i64 28
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !34
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.qa ; 2 uses
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !33 ; 2 uses
  store double %i.pt, ptr %i.qb, align 8, !tbaa !33
  %i.qd = load double, ptr %i.ed, align 8, !tbaa !33
  %i.qe = fmul reassoc nsz arcp contract afn double %i.qd, %i.qc
  %i.qf = load double, ptr %i.ef, align 16, !tbaa !33
  %i.qg = fadd reassoc nsz arcp contract afn double %i.qf, %i.qe
  %i.qh = load double, ptr %i.ee, align 16, !tbaa !33
  %i.qi = load double, ptr %i.b, align 16, !tbaa !33
  %i.qj = load double, ptr %i.jz, align 8, !tbaa !33
  %i.qk = load double, ptr %i.kb, align 16, !tbaa !33
  %i.ql = load double, ptr %i.kd, align 8, !tbaa !33
  %i.qm = load double, ptr %i.kf, align 16, !tbaa !33
  %i.qn = load double, ptr %i.cu, align 8, !tbaa !33
  %i.qo = load double, ptr %i.kp, align 8, !tbaa !33
  %i.qp = load double, ptr %i.dj, align 16, !tbaa !33
  %i.qq = load double, ptr %i.kr, align 16, !tbaa !33
  %i.qr = load double, ptr %i.dv, align 8, !tbaa !33
  %i.qs = load double, ptr %i.dr, align 16, !tbaa !33
  %i.qt = load double, ptr %i.cq, align 16, !tbaa !33
  %i.qu = load double, ptr %i.df, align 8, !tbaa !33
  %i.qv = load double, ptr %i.de, align 16, !tbaa !33
  %i.qw = load double, ptr %i.cp, align 8, !tbaa !33
  %i.qx = load double, ptr %i.co, align 16, !tbaa !33
  %i.qy = load double, ptr %i.cc, align 16, !tbaa !33
  %i.qz = load double, ptr %i.bo, align 8, !tbaa !33
  %i.ra = load double, ptr %i.bn, align 16, !tbaa !33
  %i.rb = load double, ptr %i.bc, align 16, !tbaa !33
  %i.rc = load double, ptr %i.ap, align 8, !tbaa !33
  %i.rd = load double, ptr %i.ao, align 16, !tbaa !33
  %i.re = load double, ptr %i.a, align 16, !tbaa !33
  tail call void @free(ptr noundef nonnull %i.eg) #9
  %i.rf = load <4 x double>, ptr %i.cd, align 8, !tbaa !33
  %i.rg = load <4 x double>, ptr %i.bp, align 16, !tbaa !33
  %i.rh = load <4 x double>, ptr %i.be, align 8, !tbaa !33
  %i.ri = load <4 x double>, ptr %i.ar, align 16, !tbaa !33
  %3 = load <2 x double>, ptr %i.bd, align 8, !tbaa !33
  %4 = load <2 x double>, ptr %i.aq, align 16, !tbaa !33
  %i.rj = load <8 x double>, ptr %i.ac, align 8, !tbaa !33
  %i.rk = fdiv reassoc nsz arcp contract afn double %i.qg, %i.qh ; 6 uses
  store double %i.rk, ptr %i.ef, align 16, !tbaa !33
  %i.rl = fmul reassoc nsz arcp contract afn double %i.qn, %i.rk
  %i.rm = fmul reassoc nsz arcp contract afn double %i.qp, %i.rk
  %i.rn = fmul reassoc nsz arcp contract afn double %i.qr, %i.rk
  %i.ro = fsub reassoc nsz arcp contract afn double %i.qc, %i.rn
  %i.rp = fdiv reassoc nsz arcp contract afn double %i.ro, %i.qs ; 5 uses
  store double %i.rp, ptr %i.kt, align 8, !tbaa !33
  %i.rq = fmul reassoc nsz arcp contract afn double %i.qt, %i.rp
  %i.rr = fadd reassoc nsz arcp contract afn double %i.rl, %i.rq
  %i.rs = fmul reassoc nsz arcp contract afn double %i.qu, %i.rp
  %i.rt = fadd reassoc nsz arcp contract afn double %i.rm, %i.rs
  %i.ru = fsub reassoc nsz arcp contract afn double %i.qq, %i.rt
  %i.rv = fdiv reassoc nsz arcp contract afn double %i.ru, %i.qv ; 4 uses
  %i.rw = fmul reassoc nsz arcp contract afn double %i.qw, %i.rv
  %i.rx = fadd reassoc nsz arcp contract afn double %i.rr, %i.rw
  %i.ry = fsub reassoc nsz arcp contract afn double %i.qo, %i.rx
  %i.rz = fdiv reassoc nsz arcp contract afn double %i.ry, %i.qx ; 3 uses
  %i.sa = insertelement <4 x double> poison, double %i.rz, i64 0
  %i.sb = insertelement <4 x double> %i.sa, double %i.rv, i64 1
  %i.sc = insertelement <4 x double> %i.sb, double %i.rp, i64 2
  %i.sd = insertelement <4 x double> %i.sc, double %i.rk, i64 3 ; 4 uses
  %i.se = fmul reassoc nsz arcp contract afn <4 x double> %i.ri, %i.sd ; 2 uses
  %i.sf = fmul reassoc nsz arcp contract afn <4 x double> %i.rh, %i.sd ; 2 uses
  %i.sg = fmul reassoc nsz arcp contract afn <4 x double> %i.rg, %i.sd
  %i.sh = fmul reassoc nsz arcp contract afn <4 x double> %i.rf, %i.sd
  %i.si = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %i.sh)
  %op.rdx = fsub reassoc nsz arcp contract afn double %i.qm, %i.si
  %i.sj = fdiv reassoc nsz arcp contract afn double %op.rdx, %i.qy ; 4 uses
  %i.sk = fmul reassoc nsz arcp contract afn double %i.qz, %i.sj
  %op.rdx133 = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.sk, <4 x double> %i.sg)
  %op.rdx134 = fsub reassoc nsz arcp contract afn double %i.ql, %op.rdx133
  %5 = fdiv reassoc nsz arcp contract afn double %op.rdx134, %i.ra ; 3 uses
  %6 = insertelement <2 x double> poison, double %5, i64 0
  %7 = insertelement <2 x double> %6, double %i.sj, i64 1 ; 2 uses
  %8 = fmul reassoc nsz arcp contract afn <2 x double> %4, %7
  %9 = fmul reassoc nsz arcp contract afn <2 x double> %3, %7
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %11 = fadd reassoc nsz arcp contract afn <4 x double> %i.sf, %10
  %12 = shufflevector <4 x double> %11, <4 x double> %i.sf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %13 = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double 0.000000e+00, <4 x double> %12)
  %op.rdx135.a = fsub reassoc nsz arcp contract afn double %i.qk, %13
  %i.sl = fdiv reassoc nsz arcp contract afn double %op.rdx135.a, %i.rb ; 3 uses
  %i.sm = fmul reassoc nsz arcp contract afn double %i.rc, %i.sl
  %14 = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = fadd reassoc nsz arcp contract afn <4 x double> %i.se, %14
  %16 = shufflevector <4 x double> %15, <4 x double> %i.se, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %op.rdx137 = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v4f64(double %i.sm, <4 x double> %16)
  %op.rdx138.a = fsub reassoc nsz arcp contract afn double %i.qj, %op.rdx137
  %i.sn = fdiv reassoc nsz arcp contract afn double %op.rdx138.a, %i.rd ; 2 uses
  %i.so = insertelement <8 x double> poison, double %i.sn, i64 0
  %i.sp = insertelement <8 x double> %i.so, double %i.sl, i64 1
  %i.sq = insertelement <8 x double> %i.sp, double %5, i64 2
  %i.sr = insertelement <8 x double> %i.sq, double %i.sj, i64 3
  %i.ss = insertelement <8 x double> %i.sr, double %i.rz, i64 4
  %i.st = insertelement <8 x double> %i.ss, double %i.rv, i64 5
  %i.su = insertelement <8 x double> %i.st, double %i.rp, i64 6
  %i.sv = insertelement <8 x double> %i.su, double %i.rk, i64 7
  %i.sw = fmul reassoc nsz arcp contract afn <8 x double> %i.rj, %i.sv
  store double %i.rv, ptr %i.kr, align 16, !tbaa !33
  %i.sx = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v8f64(double 0.000000e+00, <8 x double> %i.sw)
  %op.rdx139.a = fsub reassoc nsz arcp contract afn double %i.qi, %i.sx
  %i.sy = fdiv reassoc nsz arcp contract afn double %op.rdx139.a, %i.re
  %i.sz = load <2 x double>, ptr %i.kr, align 16, !tbaa !33
  %i.ta = insertelement <8 x double> poison, double %i.sy, i64 0
  %i.tb = insertelement <8 x double> %i.ta, double %i.sn, i64 1
  %i.tc = insertelement <8 x double> %i.tb, double %i.sl, i64 2
  %i.td = insertelement <8 x double> %i.tc, double %5, i64 3
  %i.te = insertelement <8 x double> %i.td, double %i.sj, i64 4
  %i.tf = insertelement <8 x double> %i.te, double %i.rz, i64 5
  %i.tg = shufflevector <2 x double> %i.sz, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.th = shufflevector <8 x double> %i.tf, <8 x double> %i.tg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.ti = fptrunc <8 x double> %i.th to <8 x float>
  store <8 x float> %i.ti, ptr %2, align 4, !tbaa !12
  %i.tj = load double, ptr %i.ef, align 16, !tbaa !33
  %i.tk = fptrunc reassoc nsz arcp contract afn double %i.tj to float
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.tk, ptr %i.tl, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %gauss_solve.exit, %gauss_solve.exit.thread
  %i.tm = phi i32 [ 0, %gauss_solve.exit.thread ], [ 1, %gauss_solve.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.tm
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden <2 x float> @apply_homography(<2 x float> %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load float, ptr %i.a, align 4, !tbaa !12
  %i.c = fmul reassoc nsz arcp contract afn float %i.b, %.sroa.0.0.vec.extract
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load float, ptr %i.d, align 4, !tbaa !12
  %i.f = fmul reassoc nsz arcp contract afn float %i.e, %.sroa.0.4.vec.extract
  %i.g = fadd reassoc nsz arcp contract afn float %i.f, %i.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load float, ptr %i.h, align 4, !tbaa !12
  %i.j = fadd reassoc nsz arcp contract afn float %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load <4 x float>, ptr %1, align 4, !tbaa !12 ; 3 uses
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.n = shufflevector <2 x float> %0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.o = fmul reassoc nsz arcp contract afn <2 x float> %i.m, %i.n
  %i.p = load <2 x float>, ptr %i.k, align 4, !tbaa !12
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.r = shufflevector <4 x float> %i.l, <4 x float> %i.q, <2 x i32> <i32 0, i32 4>
  %i.s = fmul reassoc nsz arcp contract afn <2 x float> %i.r, %0
  %i.t = fadd reassoc nsz arcp contract afn <2 x float> %i.s, %i.o
  %i.u = shufflevector <4 x float> %i.l, <4 x float> %i.q, <2 x i32> <i32 2, i32 5>
  %i.v = fadd reassoc nsz arcp contract afn <2 x float> %i.t, %i.u
  %i.w = insertelement <2 x float> poison, float %i.j, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fdiv reassoc nsz arcp contract afn <2 x float> %i.v, %i.x
  ret <2 x float> %i.y
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden float @apply_homography_scaling(<2 x float> %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %0, i64 0 ; 3 uses
  %i.a = load float, ptr %1, align 4, !tbaa !12   ; 2 uses
  %i.b = fmul reassoc nsz arcp contract afn float %i.a, %.sroa.0.0.vec.extract
  %.sroa.0.4.vec.extract = extractelement <2 x float> %0, i64 1 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !12 ; 2 uses
  %i.e = fmul reassoc nsz arcp contract afn float %i.d, %.sroa.0.4.vec.extract
  %i.f = fadd reassoc nsz arcp contract afn float %i.e, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  %i.i = fadd reassoc nsz arcp contract afn float %i.f, %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load float, ptr %i.j, align 4, !tbaa !12 ; 2 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, %.sroa.0.0.vec.extract
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !12 ; 2 uses
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %.sroa.0.4.vec.extract
  %i.p = fadd reassoc nsz arcp contract afn float %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !12
  %i.s = fadd reassoc nsz arcp contract afn float %i.p, %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load float, ptr %i.t, align 4, !tbaa !12 ; 3 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.u, %.sroa.0.0.vec.extract
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.x = load float, ptr %i.w, align 4, !tbaa !12 ; 3 uses
  %i.y = fmul reassoc nsz arcp contract afn float %i.x, %.sroa.0.4.vec.extract
  %i.z = fadd reassoc nsz arcp contract afn float %i.y, %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ac = fadd reassoc nsz arcp contract afn float %i.z, %i.ab ; 6 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.a
  %i.ae = fmul reassoc nsz arcp contract afn float %i.u, %i.i
  %i.af = fsub reassoc nsz arcp contract afn float %i.ad, %i.ae
  %i.ag = fmul reassoc nsz arcp contract afn float %i.ac, %i.d
  %i.ah = fmul reassoc nsz arcp contract afn float %i.x, %i.i
  %i.ai = fsub reassoc nsz arcp contract afn float %i.ag, %i.ah
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ac, %i.k
  %i.ak = fmul reassoc nsz arcp contract afn float %i.s, %i.u
  %i.al = fsub reassoc nsz arcp contract afn float %i.aj, %i.ak
  %i.am = fmul reassoc nsz arcp contract afn float %i.ac, %i.n
  %i.an = fmul reassoc nsz arcp contract afn float %i.x, %i.s
  %i.ao = fsub reassoc nsz arcp contract afn float %i.am, %i.an
  %i.ap = fmul reassoc nsz arcp contract afn float %i.ac, %i.ac ; 2 uses
  %i.aq = fmul reassoc nsz arcp contract afn float %i.af, %i.ao
  %i.ar = fmul reassoc nsz arcp contract afn float %i.ai, %i.al
  %i.as = fsub reassoc nsz arcp contract afn float %i.aq, %i.ar
  %i.at = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.as)
  %i.au = fmul reassoc nsz arcp contract afn float %i.ap, %i.ap
  %i.av = fdiv reassoc nsz arcp contract afn float %i.at, %i.au
  ret float %i.av
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f64.v4p0(<4 x double>, <4 x ptr>, <4 x i1>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v8f64(double, <8 x double>) #3

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !35}
!14 = distinct !{!14, !36, !37}
!15 = distinct !{!15, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !36, !37}
!19 = distinct !{!19, !35}
!20 = distinct !{!20, !37, !36}
!21 = distinct !{!21, !36}
!22 = distinct !{!22, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !36, !37}
!27 = distinct !{!27, !35}
!28 = distinct !{!28, !36}
!29 = !{!"point_t", !11, i64 0, !11, i64 4}
!30 = !{!29, !11, i64 0}
!31 = !{!29, !11, i64 4}
!32 = !{!"double", !7, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!8, !8, i64 0}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!16}
!39 = !{!17}
!40 = !{!23}
!41 = !{!24}
!42 = !{!25}
end_hunk_1
