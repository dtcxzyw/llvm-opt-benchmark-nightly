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
  %i.a = alloca [81 x double], align 16           ; 97 uses
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
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store <2 x double> %i.af, ptr %i.aq, align 16, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  store double -1.000000e+00, ptr %i.as, align 16, !tbaa !33
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.av = insertelement <2 x double> poison, double %i.j, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul reassoc nsz arcp contract afn <2 x double> %i.aw, %i.ae
  store <2 x double> %i.ax, ptr %i.at, align 8, !tbaa !33
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  store double %i.j, ptr %i.ay, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bb = load <2 x float>, ptr %i.c, align 4, !tbaa !12
  %i.bc = fpext <2 x float> %i.bb to <2 x double> ; 3 uses
  %i.bd = fneg reassoc nsz arcp contract afn <2 x double> %i.bc ; 2 uses
  store <2 x double> %i.bd, ptr %i.az, align 16, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  store double -1.000000e+00, ptr %i.be, align 16, !tbaa !33
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i8 0, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.bk = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul reassoc nsz arcp contract afn <2 x double> %i.bl, %i.bc
  store <2 x double> %i.bm, ptr %i.bi, align 16, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  store double %i.m, ptr %i.bn, align 16, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store <2 x double> %i.bd, ptr %i.br, align 16, !tbaa !33
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  store double -1.000000e+00, ptr %i.bt, align 16, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.bw = insertelement <2 x double> poison, double %i.p, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul reassoc nsz arcp contract afn <2 x double> %i.bx, %i.bc
  store <2 x double> %i.by, ptr %i.bu, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  store double %i.p, ptr %i.bz, align 8, !tbaa !33
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.cc = load <2 x float>, ptr %i.d, align 4, !tbaa !12
  %i.cd = fpext <2 x float> %i.cc to <2 x double> ; 3 uses
  %i.ce = fneg reassoc nsz arcp contract afn <2 x double> %i.cd ; 2 uses
  store <2 x double> %i.ce, ptr %i.ca, align 16, !tbaa !33
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  store double -1.000000e+00, ptr %i.cf, align 16, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 336 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, i8 0, i64 24, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  %i.cl = insertelement <2 x double> poison, double %i.s, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = fmul reassoc nsz arcp contract afn <2 x double> %i.cm, %i.cd
  store <2 x double> %i.cn, ptr %i.cj, align 16, !tbaa !33
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 352 ; 2 uses
  store double %i.s, ptr %i.co, align 16, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 360 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store <2 x double> %i.ce, ptr %i.cs, align 16, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  store double -1.000000e+00, ptr %i.cu, align 16, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.cx = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul reassoc nsz arcp contract afn <2 x double> %i.cy, %i.cd
  store <2 x double> %i.cz, ptr %i.cv, align 8, !tbaa !33
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 424 ; 2 uses
  store double %i.v, ptr %i.da, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.dd = load <2 x float>, ptr %i.e, align 4, !tbaa !12
  %i.de = fpext <2 x float> %i.dd to <2 x double> ; 3 uses
  %i.df = fneg reassoc nsz arcp contract afn <2 x double> %i.de ; 2 uses
  store <2 x double> %i.df, ptr %i.db, align 16, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  store double -1.000000e+00, ptr %i.dg, align 16, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.dm = insertelement <2 x double> poison, double %i.y, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = fmul reassoc nsz arcp contract afn <2 x double> %i.dn, %i.de
  store <2 x double> %i.do, ptr %i.dk, align 16, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  store double %i.y, ptr %i.dp, align 16, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, i8 0, i64 24, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  store <2 x double> %i.df, ptr %i.dt, align 16, !tbaa !33
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 544 ; 2 uses
  store double -1.000000e+00, ptr %i.dv, align 16, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 552 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.dy = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.dz = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = fmul reassoc nsz arcp contract afn <2 x double> %i.dz, %i.de
  store <2 x double> %i.ea, ptr %i.dw, align 8, !tbaa !33
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  store double %i.ab, ptr %i.eb, align 8, !tbaa !33
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 640 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ec, i8 0, i64 64, i1 false)
  store double 1.000000e+00, ptr %i.ek, align 16, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !tbaa !33
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 14 uses
  store double 1.000000e+00, ptr %i.el, align 16, !tbaa !33
  %i.em = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #10 ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  store i32 8, ptr %i.en, align 4, !tbaa !34
  %scevgep99 = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  br label %bb.b

.loopexit.i.i:                                    ; preds = %._crit_edge121.i.i, %.preheader111.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond146.not.i.i = icmp eq i64 %indvars.iv.next144.i.i, 9
  br i1 %exitcond146.not.i.i, label %gauss_solve.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %bb.a
  %indvars.iv143.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next144.i.i, %.loopexit.i.i ] ; 23 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 14 uses
  %i.eo = mul nuw nsw i64 %indvars.iv143.i.i, 72
  %i.ep = getelementptr nuw i8, ptr %i.a, i64 %i.eo
  %scevgep = getelementptr nuw i8, ptr %i.ep, i64 72
  %i.eq = mul nuw nsw i64 %indvars.iv143.i.i, 80  ; 3 uses
  %i.er = shl nuw nsw i64 %indvars.iv143.i.i, 3
  %i.es = getelementptr i8, ptr %i.a, i64 %i.er
  %scevgep97 = getelementptr i8, ptr %i.es, i64 584
  %i.et = getelementptr i8, ptr %i.a, i64 %i.eq
  %scevgep98 = getelementptr i8, ptr %i.et, i64 72
  %i.eu = getelementptr i8, ptr %i.a, i64 %i.eq
  %scevgep100 = getelementptr i8, ptr %i.eu, i64 80 ; 2 uses
  %indvars.iv.next144.i.i = add nuw nsw i64 %indvars.iv143.i.i, 1 ; 2 uses
  %i.ev = icmp samesign ult i64 %indvars.iv143.i.i, 8 ; 2 uses
  %i.ew = trunc nuw nsw i64 %indvars.iv143.i.i to i32 ; 3 uses
  br i1 %i.ev, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.ex = sub nsw i64 0, %indvars.iv143.i.i
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143.i.i ; 10 uses
  %xtraiter = and i64 %i.ex, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv124.i.i.prol = phi i64 [ %indvars.iv.next125.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.0100112.i.i.prol = phi i32 [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ew, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.idx.i.i.prol = mul nuw nsw i64 %indvars.iv124.i.i.prol, 72
  %gep.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.prol
  %i.ey = load double, ptr %gep.i.i.prol, align 8, !tbaa !33
  %i.ez = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ey)
  %i.fa = mul nuw nsw i32 %.0100112.i.i.prol, 9
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.fb
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !33
  %i.fe = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fd)
  %i.ff = fcmp reassoc nsz arcp contract afn ogt double %i.ez, %i.fe
  %i.fg = trunc nuw nsw i64 %indvars.iv124.i.i.prol to i32
  %spec.select.i.i.prol = select i1 %i.ff, i32 %i.fg, i32 %.0100112.i.i.prol ; 3 uses
  %indvars.iv.next125.i.i.prol = add nuw nsw i64 %indvars.iv124.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !13

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv124.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ], [ %indvars.iv.next125.i.i.prol, %.lr.ph.i.i.prol ]
  %.0100112.i.i.unr = phi i32 [ %i.ew, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.fh = icmp ugt i64 %indvars.iv143.i.i, 4
  br i1 %i.fh, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.0100.lcssa.i.i = phi i32 [ %i.ew, %bb.b ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv143.i.i
  store i32 %.0100.lcssa.i.i, ptr %i.fi, align 4, !tbaa !34
  %i.fj = mul nuw nsw i32 %.0100.lcssa.i.i, 9
  %i.fk = zext nneg i32 %i.fj to i64              ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143.i.i ; 4 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fk ; 2 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !33 ; 4 uses
  %i.fo = mul nuw nsw i64 %indvars.iv143.i.i, 9   ; 2 uses
  %.idx147.i.i = mul nuw nsw i64 %indvars.iv143.i.i, 80
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx147.i.i ; 2 uses
  %i.fq = load double, ptr %i.fp, align 16, !tbaa !33
  store double %i.fq, ptr %i.fm, align 8, !tbaa !33
  store double %i.fn, ptr %i.fp, align 16, !tbaa !33
  %i.fr = fcmp reassoc nsz arcp contract afn une double %i.fn, 0.000000e+00
  br i1 %i.fr, label %.preheader111.i.i, label %gauss_solve.exit.thread

gauss_solve.exit.thread:                          ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %i.em) #9
  br label %.loopexit

.preheader111.i.i:                                ; preds = %._crit_edge.i.i
  br i1 %i.ev, label %.lr.ph115.i.i.preheader, label %.loopexit.i.i

.lr.ph115.i.i.preheader:                          ; preds = %.preheader111.i.i
  %i.fs = sub nuw nsw i64 8, %indvars.iv143.i.i   ; 2 uses
  %min.iters.check132 = icmp samesign ugt i64 %indvars.iv143.i.i, 4
  br i1 %min.iters.check132, label %.lr.ph115.i.i.preheader145, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph115.i.i.preheader
  %n.vec134 = and i64 %i.fs, 12                   ; 3 uses
  %i.ft = add nuw i64 %indvars.iv.i.i, %n.vec134
  %broadcast.splatinsert135 = insertelement <4 x double> poison, double %i.fn, i64 0
  %broadcast.splat136 = shufflevector <4 x double> %broadcast.splatinsert135, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <4 x i64> poison, i64 %indvars.iv.i.i, i64 0
  %broadcast.splat138 = shufflevector <4 x i64> %broadcast.splatinsert137, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat138, <i64 0, i64 1, i64 2, i64 3>
  %i.fu = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat136
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph133
  %index140 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body139 ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph133 ], [ %vec.ind.next, %vector.body139 ] ; 2 uses
  %i.fv = mul nuw nsw <4 x i64> %vec.ind, splat (i64 72)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.fl, <4 x i64> %i.fv ; 2 uses
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !33
  %i.fw = fneg reassoc nsz arcp contract afn <4 x double> %wide.masked.gather
  %i.fx = fmul reassoc nsz arcp contract afn <4 x double> %i.fw, %i.fu
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.fx, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !33
  %index.next141 = add nuw i64 %index140, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.fy = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.fy, label %middle.block142, label %vector.body139, !llvm.loop !14

middle.block142:                                  ; preds = %vector.body139
  %cmp.n143 = icmp eq i64 %i.fs, %n.vec134
  br i1 %cmp.n143, label %._crit_edge116.i.i, label %.lr.ph115.i.i.preheader145

.lr.ph115.i.i.preheader145:                       ; preds = %.lr.ph115.i.i.preheader, %middle.block142
  %indvars.iv127.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph115.i.i.preheader ], [ %i.ft, %middle.block142 ]
  %i.fz = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.fn
  br label %.lr.ph115.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv124.i.i = phi i64 [ %indvars.iv.next125.i.i.3, %.lr.ph.i.i ], [ %indvars.iv124.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.0100112.i.i = phi i32 [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.0100112.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv124.i.i, 72
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i
  %i.ga = load double, ptr %gep.i.i, align 8, !tbaa !33
  %i.gb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ga)
  %i.gc = mul nuw nsw i32 %.0100112.i.i, 9
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gd
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !33
  %i.gg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gf)
  %i.gh = fcmp reassoc nsz arcp contract afn ogt double %i.gb, %i.gg
  %i.gi = trunc nuw nsw i64 %indvars.iv124.i.i to i32
  %spec.select.i.i = select i1 %i.gh, i32 %i.gi, i32 %.0100112.i.i ; 2 uses
  %indvars.iv.next125.i.i = add nuw nsw i64 %indvars.iv124.i.i, 1 ; 2 uses
  %.idx.i.i.1 = mul nuw nsw i64 %indvars.iv.next125.i.i, 72
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.1
  %i.gj = load double, ptr %gep.i.i.1, align 8, !tbaa !33
  %i.gk = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gj)
  %i.gl = mul nuw nsw i32 %spec.select.i.i, 9
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gm
end_hunk_0
begin_hunk_1_@get_homography:bb.a
  %i.os = extractelement <4 x double> %i.oi, i64 0
  store double %i.os, ptr %i.oq, align 8, !tbaa !33
  store double %i.or, ptr %i.kr, align 16, !tbaa !33
  %i.ot = load <4 x double>, ptr %i.ct, align 8
  %i.ou = load double, ptr %i.di, align 16, !tbaa !33
  %i.ov = load double, ptr %i.du, align 8, !tbaa !33
  %i.ow = load double, ptr %i.eg, align 16, !tbaa !33
  %i.ox = insertelement <4 x double> %i.ot, double %i.ou, i64 1
  %i.oy = insertelement <4 x double> %i.ox, double %i.ov, i64 2
  %i.oz = insertelement <4 x double> %i.oy, double %i.ow, i64 3
  %i.pa = insertelement <4 x double> poison, double %i.or, i64 0
  %i.pb = shufflevector <4 x double> %i.pa, <4 x double> poison, <4 x i32> zeroinitializer
  %i.pc = fmul reassoc nsz arcp contract afn <4 x double> %i.oz, %i.pb
  %i.pd = load <4 x double>, ptr %i.lb, align 8, !tbaa !33
  %i.pe = fadd reassoc nsz arcp contract afn <4 x double> %i.pd, %i.pc ; 2 uses
  store <4 x double> %i.pe, ptr %i.lb, align 8, !tbaa !33
  %i.pf = getelementptr inbounds nuw i8, ptr %i.em, i64 20
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !34
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ph ; 2 uses
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !33 ; 4 uses
  %i.pk = extractelement <4 x double> %i.pe, i64 0
  store double %i.pk, ptr %i.pi, align 8, !tbaa !33
  store double %i.pj, ptr %i.lb, align 8, !tbaa !33
  %i.pl = load double, ptr %i.dj, align 8, !tbaa !33
  %i.pm = fmul reassoc nsz arcp contract afn double %i.pl, %i.pj
  %i.pn = load double, ptr %i.ld, align 16, !tbaa !33
  %i.po = fadd reassoc nsz arcp contract afn double %i.pn, %i.pm ; 2 uses
  store double %i.po, ptr %i.ld, align 16, !tbaa !33
  %i.pp = load double, ptr %i.dv, align 16, !tbaa !33
  %i.pq = fmul reassoc nsz arcp contract afn double %i.pp, %i.pj
  %i.pr = load double, ptr %i.lf, align 8, !tbaa !33
  %i.ps = fadd reassoc nsz arcp contract afn double %i.pr, %i.pq
  store double %i.ps, ptr %i.lf, align 8, !tbaa !33
  %i.pt = load double, ptr %i.eh, align 8, !tbaa !33
  %i.pu = fmul reassoc nsz arcp contract afn double %i.pt, %i.pj
  %i.pv = load double, ptr %i.el, align 16, !tbaa !33
  %i.pw = fadd reassoc nsz arcp contract afn double %i.pv, %i.pu
  store double %i.pw, ptr %i.el, align 16, !tbaa !33
  %i.px = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.py = load i32, ptr %i.px, align 4, !tbaa !34
  %i.pz = sext i32 %i.py to i64
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.pz ; 2 uses
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !33 ; 3 uses
  store double %i.po, ptr %i.qa, align 8, !tbaa !33
  store double %i.qb, ptr %i.ld, align 16, !tbaa !33
  %i.qc = load double, ptr %i.dw, align 8, !tbaa !33
  %i.qd = fmul reassoc nsz arcp contract afn double %i.qc, %i.qb
  %i.qe = load double, ptr %i.lf, align 8, !tbaa !33
  %i.qf = fadd reassoc nsz arcp contract afn double %i.qe, %i.qd ; 2 uses
  store double %i.qf, ptr %i.lf, align 8, !tbaa !33
  %i.qg = load double, ptr %i.ei, align 16, !tbaa !33
  %i.qh = fmul reassoc nsz arcp contract afn double %i.qg, %i.qb
  %i.qi = load double, ptr %i.el, align 16, !tbaa !33
  %i.qj = fadd reassoc nsz arcp contract afn double %i.qi, %i.qh
  store double %i.qj, ptr %i.el, align 16, !tbaa !33
  %i.qk = getelementptr inbounds nuw i8, ptr %i.em, i64 28
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !34
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.qm ; 2 uses
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !33 ; 2 uses
  store double %i.qf, ptr %i.qn, align 8, !tbaa !33
  %i.qp = load double, ptr %i.ej, align 8, !tbaa !33
  %i.qq = fmul reassoc nsz arcp contract afn double %i.qp, %i.qo
  %i.qr = load double, ptr %i.el, align 16, !tbaa !33
  %i.qs = fadd reassoc nsz arcp contract afn double %i.qr, %i.qq
  %i.qt = load double, ptr %i.ek, align 16, !tbaa !33
  %i.qu = load double, ptr %i.b, align 16, !tbaa !33
  %i.qv = load double, ptr %i.ay, align 8, !tbaa !33
  %i.qw = load double, ptr %i.kl, align 8, !tbaa !33
  %i.qx = load double, ptr %i.bn, align 16, !tbaa !33
  %i.qy = load double, ptr %i.kn, align 16, !tbaa !33
  %i.qz = load double, ptr %i.bz, align 8, !tbaa !33
  %i.ra = load double, ptr %i.kp, align 8, !tbaa !33
  %i.rb = load double, ptr %i.co, align 16, !tbaa !33
  %i.rc = load double, ptr %i.kr, align 16, !tbaa !33
  %i.rd = load double, ptr %i.da, align 8, !tbaa !33
  %i.re = load double, ptr %i.lb, align 8, !tbaa !33
  %i.rf = load double, ptr %i.dp, align 16, !tbaa !33
  %i.rg = load double, ptr %i.ld, align 16, !tbaa !33
  %i.rh = load double, ptr %i.eb, align 8, !tbaa !33
  %i.ri = load double, ptr %i.dx, align 16, !tbaa !33
  %i.rj = load double, ptr %i.au, align 16, !tbaa !33
  %i.rk = load double, ptr %i.bj, align 8, !tbaa !33
  %i.rl = load double, ptr %i.bv, align 16, !tbaa !33
  %i.rm = load double, ptr %i.ck, align 8, !tbaa !33
  %i.rn = load double, ptr %i.cw, align 16, !tbaa !33
  %i.ro = load double, ptr %i.dl, align 8, !tbaa !33
  %i.rp = load double, ptr %i.dk, align 16, !tbaa !33
  %i.rq = load double, ptr %i.at, align 8, !tbaa !33
  %i.rr = load double, ptr %i.bi, align 16, !tbaa !33
  %i.rs = load double, ptr %i.bu, align 8, !tbaa !33
  %i.rt = load double, ptr %i.cj, align 16, !tbaa !33
  %i.ru = load double, ptr %i.cv, align 8, !tbaa !33
  %i.rv = load double, ptr %i.cu, align 16, !tbaa !33
  %i.rw = load double, ptr %i.as, align 16, !tbaa !33
  %i.rx = load double, ptr %i.bh, align 8, !tbaa !33
  %i.ry = load double, ptr %i.bt, align 16, !tbaa !33
  %i.rz = load double, ptr %i.ci, align 8, !tbaa !33
  %i.sa = load double, ptr %i.ch, align 16, !tbaa !33
  %i.sb = load double, ptr %i.ar, align 8, !tbaa !33
  %i.sc = load double, ptr %i.bg, align 16, !tbaa !33
  %i.sd = load double, ptr %i.bs, align 8, !tbaa !33
  %i.se = load double, ptr %i.br, align 16, !tbaa !33
  %i.sf = load double, ptr %i.aq, align 16, !tbaa !33
  %i.sg = load double, ptr %i.bf, align 8, !tbaa !33
  %i.sh = load double, ptr %i.be, align 16, !tbaa !33
  %i.si = load double, ptr %i.ap, align 8, !tbaa !33
  %i.sj = load double, ptr %i.ao, align 16, !tbaa !33
  %i.sk = load double, ptr %i.a, align 16, !tbaa !33
  tail call void @free(ptr noundef nonnull %i.em) #9
  %i.sl = fdiv reassoc nsz arcp contract afn double %i.qs, %i.qt ; 9 uses
  store double %i.sl, ptr %i.el, align 16, !tbaa !33
  %i.sm = fmul reassoc nsz arcp contract afn double %i.qv, %i.sl
  %i.sn = fmul reassoc nsz arcp contract afn double %i.qx, %i.sl
  %i.so = fmul reassoc nsz arcp contract afn double %i.qz, %i.sl
  %i.sp = fmul reassoc nsz arcp contract afn double %i.rb, %i.sl
  %i.sq = fmul reassoc nsz arcp contract afn double %i.rd, %i.sl
  %i.sr = fmul reassoc nsz arcp contract afn double %i.rf, %i.sl
  %i.ss = fmul reassoc nsz arcp contract afn double %i.rh, %i.sl
  %i.st = fsub reassoc nsz arcp contract afn double %i.qo, %i.ss
  %i.su = fdiv reassoc nsz arcp contract afn double %i.st, %i.ri ; 8 uses
  store double %i.su, ptr %i.lf, align 8, !tbaa !33
  %i.sv = fmul reassoc nsz arcp contract afn double %i.rj, %i.su
  %i.sw = fadd reassoc nsz arcp contract afn double %i.sm, %i.sv
  %i.sx = fmul reassoc nsz arcp contract afn double %i.rk, %i.su
  %i.sy = fadd reassoc nsz arcp contract afn double %i.sn, %i.sx
  %i.sz = fmul reassoc nsz arcp contract afn double %i.rl, %i.su
  %i.ta = fadd reassoc nsz arcp contract afn double %i.so, %i.sz
  %i.tb = fmul reassoc nsz arcp contract afn double %i.rm, %i.su
  %i.tc = fadd reassoc nsz arcp contract afn double %i.sp, %i.tb
  %i.td = fmul reassoc nsz arcp contract afn double %i.rn, %i.su
  %i.te = fadd reassoc nsz arcp contract afn double %i.sq, %i.td
  %i.tf = fmul reassoc nsz arcp contract afn double %i.ro, %i.su
  %i.tg = fadd reassoc nsz arcp contract afn double %i.sr, %i.tf
  %i.th = fsub reassoc nsz arcp contract afn double %i.rg, %i.tg
  %i.ti = fdiv reassoc nsz arcp contract afn double %i.th, %i.rp ; 7 uses
  %i.tj = fmul reassoc nsz arcp contract afn double %i.rq, %i.ti
  %i.tk = fadd reassoc nsz arcp contract afn double %i.sw, %i.tj
  %i.tl = fmul reassoc nsz arcp contract afn double %i.rr, %i.ti
  %i.tm = fadd reassoc nsz arcp contract afn double %i.sy, %i.tl
  %i.tn = fmul reassoc nsz arcp contract afn double %i.rs, %i.ti
  %i.to = fadd reassoc nsz arcp contract afn double %i.ta, %i.tn
  %i.tp = fmul reassoc nsz arcp contract afn double %i.rt, %i.ti
  %i.tq = fadd reassoc nsz arcp contract afn double %i.tc, %i.tp
  %i.tr = fmul reassoc nsz arcp contract afn double %i.ru, %i.ti
  %i.ts = fadd reassoc nsz arcp contract afn double %i.te, %i.tr
  %i.tt = fsub reassoc nsz arcp contract afn double %i.re, %i.ts
  %i.tu = load <8 x double>, ptr %i.ac, align 8, !tbaa !33
  %i.tv = fdiv reassoc nsz arcp contract afn double %i.tt, %i.rv ; 6 uses
  %i.tw = fmul reassoc nsz arcp contract afn double %i.rw, %i.tv
  %i.tx = fadd reassoc nsz arcp contract afn double %i.tk, %i.tw
  %i.ty = fmul reassoc nsz arcp contract afn double %i.rx, %i.tv
  %i.tz = fadd reassoc nsz arcp contract afn double %i.tm, %i.ty
  %i.ua = fmul reassoc nsz arcp contract afn double %i.ry, %i.tv
  %i.ub = fadd reassoc nsz arcp contract afn double %i.to, %i.ua
  %i.uc = fmul reassoc nsz arcp contract afn double %i.rz, %i.tv
  %i.ud = fadd reassoc nsz arcp contract afn double %i.tq, %i.uc
  %i.ue = fsub reassoc nsz arcp contract afn double %i.rc, %i.ud
  %i.uf = fdiv reassoc nsz arcp contract afn double %i.ue, %i.sa ; 5 uses
  %i.ug = fmul reassoc nsz arcp contract afn double %i.sb, %i.uf
  %i.uh = fadd reassoc nsz arcp contract afn double %i.tx, %i.ug
  %i.ui = fmul reassoc nsz arcp contract afn double %i.sc, %i.uf
  %i.uj = fadd reassoc nsz arcp contract afn double %i.tz, %i.ui
  %i.uk = fmul reassoc nsz arcp contract afn double %i.sd, %i.uf
  %i.ul = fadd reassoc nsz arcp contract afn double %i.ub, %i.uk
  %i.um = fsub reassoc nsz arcp contract afn double %i.ra, %i.ul
  %i.un = fdiv reassoc nsz arcp contract afn double %i.um, %i.se ; 4 uses
  %i.uo = fmul reassoc nsz arcp contract afn double %i.sf, %i.un
  %i.up = fadd reassoc nsz arcp contract afn double %i.uh, %i.uo
  %i.uq = fmul reassoc nsz arcp contract afn double %i.sg, %i.un
  %i.ur = fadd reassoc nsz arcp contract afn double %i.uj, %i.uq
  %i.us = fsub reassoc nsz arcp contract afn double %i.qy, %i.ur
  %i.ut = fdiv reassoc nsz arcp contract afn double %i.us, %i.sh ; 3 uses
  %i.uu = fmul reassoc nsz arcp contract afn double %i.si, %i.ut
  %i.uv = fadd reassoc nsz arcp contract afn double %i.up, %i.uu
  %i.uw = fsub reassoc nsz arcp contract afn double %i.qw, %i.uv
  %i.ux = fdiv reassoc nsz arcp contract afn double %i.uw, %i.sj ; 2 uses
  %i.uy = insertelement <8 x double> poison, double %i.ux, i64 0
  %i.uz = insertelement <8 x double> %i.uy, double %i.ut, i64 1
  %i.va = insertelement <8 x double> %i.uz, double %i.un, i64 2
  %i.vb = insertelement <8 x double> %i.va, double %i.uf, i64 3
  %i.vc = insertelement <8 x double> %i.vb, double %i.tv, i64 4
  %i.vd = insertelement <8 x double> %i.vc, double %i.ti, i64 5
  %i.ve = insertelement <8 x double> %i.vd, double %i.su, i64 6
  %i.vf = insertelement <8 x double> %i.ve, double %i.sl, i64 7
  %i.vg = fmul reassoc nsz arcp contract afn <8 x double> %i.tu, %i.vf
  store double %i.ti, ptr %i.ld, align 16, !tbaa !33
  %i.vh = call reassoc nsz arcp contract afn double @llvm.vector.reduce.fadd.v8f64(double 0.000000e+00, <8 x double> %i.vg)
  %op.rdx = fsub reassoc nsz arcp contract afn double %i.qu, %i.vh
  %i.vi = fdiv reassoc nsz arcp contract afn double %op.rdx, %i.sk
  %i.vj = load <2 x double>, ptr %i.ld, align 16, !tbaa !33
  %i.vk = insertelement <8 x double> poison, double %i.vi, i64 0
  %i.vl = insertelement <8 x double> %i.vk, double %i.ux, i64 1
  %i.vm = insertelement <8 x double> %i.vl, double %i.ut, i64 2
  %i.vn = insertelement <8 x double> %i.vm, double %i.un, i64 3
  %i.vo = insertelement <8 x double> %i.vn, double %i.uf, i64 4
  %i.vp = insertelement <8 x double> %i.vo, double %i.tv, i64 5
  %i.vq = shufflevector <2 x double> %i.vj, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.vr = shufflevector <8 x double> %i.vp, <8 x double> %i.vq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.vs = fptrunc <8 x double> %i.vr to <8 x float>
  store <8 x float> %i.vs, ptr %2, align 4, !tbaa !12
  %i.vt = load double, ptr %i.el, align 16, !tbaa !33
  %i.vu = fptrunc reassoc nsz arcp contract afn double %i.vt to float
  %i.vv = getelementptr inbounds nuw i8, ptr %2, i64 32
  store float %i.vu, ptr %i.vv, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %gauss_solve.exit, %gauss_solve.exit.thread
  %i.vw = phi i32 [ 0, %gauss_solve.exit.thread ], [ 1, %gauss_solve.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.vw
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
!15 = distinct !{!15, i1 false, !"LVerDomain"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !36, !37}
!19 = distinct !{!19, !35}
!20 = distinct !{!20, !37, !36}
!21 = distinct !{!21, !36}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
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
!43 = !{!23, !24}
end_hunk_1
