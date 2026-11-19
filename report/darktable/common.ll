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
  %i.a = alloca [81 x double], align 16           ; 94 uses
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
  %i.ae = fpext reassoc nsz arcp contract afn <2 x float> %i.ad to <2 x double> ; 3 uses
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
  %i.bc = fpext reassoc nsz arcp contract afn <2 x float> %i.bb to <2 x double> ; 3 uses
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
  %i.cd = fpext reassoc nsz arcp contract afn <2 x float> %i.cc to <2 x double> ; 3 uses
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
  %i.de = fpext reassoc nsz arcp contract afn <2 x float> %i.dd to <2 x double> ; 3 uses
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
  %scevgep115 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.b

.loopexit.i.i:                                    ; preds = %._crit_edge121.i.i, %.preheader111.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond146.not.i.i = icmp eq i64 %indvars.iv.next144.i.i, 9
  br i1 %exitcond146.not.i.i, label %gauss_solve.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %bb.a
  %indvars.iv143.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next144.i.i, %.loopexit.i.i ] ; 22 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 14 uses
  %i.eo = mul nuw nsw i64 %indvars.iv143.i.i, 72
  %i.ep = getelementptr nuw i8, ptr %i.a, i64 %i.eo
  %scevgep = getelementptr nuw i8, ptr %i.ep, i64 72
  %i.eq = mul nuw nsw i64 %indvars.iv143.i.i, 80  ; 2 uses
  %i.er = getelementptr i8, ptr %i.a, i64 %i.eq
  %scevgep100 = getelementptr i8, ptr %i.er, i64 80
  %indvars.iv.next144.i.i = add nuw nsw i64 %indvars.iv143.i.i, 1 ; 2 uses
  %i.es = icmp samesign ult i64 %indvars.iv143.i.i, 8 ; 2 uses
  %i.et = trunc nuw nsw i64 %indvars.iv143.i.i to i32 ; 3 uses
  br i1 %i.es, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.eu = sub nsw i64 0, %indvars.iv143.i.i
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143.i.i ; 10 uses
  %xtraiter = and i64 %i.eu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv124.i.i.prol = phi i64 [ %indvars.iv.next125.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.0100112.i.i.prol = phi i32 [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ], [ %i.et, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.idx.i.i.prol = mul nuw nsw i64 %indvars.iv124.i.i.prol, 72
  %gep.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.prol
  %i.ev = load double, ptr %gep.i.i.prol, align 8, !tbaa !33
  %i.ew = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ev)
  %i.ex = mul nuw nsw i32 %.0100112.i.i.prol, 9
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ey
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !33
  %i.fb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fa)
  %i.fc = fcmp reassoc nsz arcp contract afn ogt double %i.ew, %i.fb
  %i.fd = trunc nuw nsw i64 %indvars.iv124.i.i.prol to i32
  %spec.select.i.i.prol = select i1 %i.fc, i32 %i.fd, i32 %.0100112.i.i.prol ; 3 uses
  %indvars.iv.next125.i.i.prol = add nuw nsw i64 %indvars.iv124.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !13

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %spec.select.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv124.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ], [ %indvars.iv.next125.i.i.prol, %.lr.ph.i.i.prol ]
  %.0100112.i.i.unr = phi i32 [ %i.et, %.lr.ph.preheader.i.i ], [ %spec.select.i.i.prol, %.lr.ph.i.i.prol ]
  %i.fe = icmp ugt i64 %indvars.iv143.i.i, 4
  br i1 %i.fe, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.0100.lcssa.i.i = phi i32 [ %i.et, %bb.b ], [ %spec.select.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %spec.select.i.i.3, %.lr.ph.i.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %indvars.iv143.i.i
  store i32 %.0100.lcssa.i.i, ptr %i.ff, align 4, !tbaa !34
  %i.fg = mul nuw nsw i32 %.0100.lcssa.i.i, 9
  %i.fh = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv143.i.i ; 4 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh ; 2 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !33 ; 4 uses
  %i.fl = mul nuw nsw i64 %indvars.iv143.i.i, 9   ; 2 uses
  %.idx147.i.i = mul nuw nsw i64 %indvars.iv143.i.i, 80
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx147.i.i ; 2 uses
  %i.fn = load double, ptr %i.fm, align 16, !tbaa !33
  store double %i.fn, ptr %i.fj, align 8, !tbaa !33
  store double %i.fk, ptr %i.fm, align 16, !tbaa !33
  %i.fo = fcmp reassoc nsz arcp contract afn une double %i.fk, 0.000000e+00
  br i1 %i.fo, label %.preheader111.i.i, label %gauss_solve.exit.thread

gauss_solve.exit.thread:                          ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %i.em) #9
  br label %.loopexit

.preheader111.i.i:                                ; preds = %._crit_edge.i.i
  br i1 %i.es, label %.lr.ph115.i.i.preheader, label %.loopexit.i.i

.lr.ph115.i.i.preheader:                          ; preds = %.preheader111.i.i
  %i.fp = sub nuw nsw i64 8, %indvars.iv143.i.i   ; 2 uses
  %min.iters.check133 = icmp samesign ugt i64 %indvars.iv143.i.i, 4
  br i1 %min.iters.check133, label %.lr.ph115.i.i.preheader146, label %vector.ph134

vector.ph134:                                     ; preds = %.lr.ph115.i.i.preheader
  %n.vec135 = and i64 %i.fp, 12                   ; 3 uses
  %i.fq = add nuw i64 %indvars.iv.i.i, %n.vec135
  %broadcast.splatinsert136 = insertelement <4 x double> poison, double %i.fk, i64 0
  %broadcast.splat137 = shufflevector <4 x double> %broadcast.splatinsert136, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert138 = insertelement <4 x i64> poison, i64 %indvars.iv.i.i, i64 0
  %broadcast.splat139 = shufflevector <4 x i64> %broadcast.splatinsert138, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat139, <i64 0, i64 1, i64 2, i64 3>
  %i.fr = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat137
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph134
  %index141 = phi i64 [ 0, %vector.ph134 ], [ %index.next142, %vector.body140 ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph134 ], [ %vec.ind.next, %vector.body140 ] ; 2 uses
  %i.fs = mul nuw nsw <4 x i64> %vec.ind, splat (i64 72)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.fi, <4 x i64> %i.fs ; 2 uses
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !33
  %i.ft = fneg reassoc nsz arcp contract afn <4 x double> %wide.masked.gather
  %i.fu = fmul reassoc nsz arcp contract afn <4 x double> %i.ft, %i.fr
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.fu, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !33
  %index.next142 = add nuw i64 %index141, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.fv = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.fv, label %middle.block143, label %vector.body140, !llvm.loop !14

middle.block143:                                  ; preds = %vector.body140
  %cmp.n144 = icmp eq i64 %i.fp, %n.vec135
  br i1 %cmp.n144, label %._crit_edge116.i.i, label %.lr.ph115.i.i.preheader146

.lr.ph115.i.i.preheader146:                       ; preds = %.lr.ph115.i.i.preheader, %middle.block143
  %indvars.iv127.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph115.i.i.preheader ], [ %i.fq, %middle.block143 ]
  %i.fw = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.fk
  br label %.lr.ph115.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv124.i.i = phi i64 [ %indvars.iv.next125.i.i.3, %.lr.ph.i.i ], [ %indvars.iv124.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.0100112.i.i = phi i32 [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.0100112.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv124.i.i, 72
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i
  %i.fx = load double, ptr %gep.i.i, align 8, !tbaa !33
  %i.fy = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fx)
  %i.fz = mul nuw nsw i32 %.0100112.i.i, 9
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ga
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !33
  %i.gd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gc)
  %i.ge = fcmp reassoc nsz arcp contract afn ogt double %i.fy, %i.gd
  %i.gf = trunc nuw nsw i64 %indvars.iv124.i.i to i32
  %spec.select.i.i = select i1 %i.ge, i32 %i.gf, i32 %.0100112.i.i ; 2 uses
  %indvars.iv.next125.i.i = add nuw nsw i64 %indvars.iv124.i.i, 1 ; 2 uses
  %.idx.i.i.1 = mul nuw nsw i64 %indvars.iv.next125.i.i, 72
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.1
  %i.gg = load double, ptr %gep.i.i.1, align 8, !tbaa !33
  %i.gh = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gg)
  %i.gi = mul nuw nsw i32 %spec.select.i.i, 9
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gj
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !33
  %i.gm = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gl)
  %i.gn = fcmp reassoc nsz arcp contract afn ogt double %i.gh, %i.gm
  %i.go = trunc nuw nsw i64 %indvars.iv.next125.i.i to i32
  %spec.select.i.i.1 = select i1 %i.gn, i32 %i.go, i32 %spec.select.i.i ; 2 uses
  %indvars.iv.next125.i.i.1 = add nuw nsw i64 %indvars.iv124.i.i, 2 ; 2 uses
  %.idx.i.i.2 = mul nuw nsw i64 %indvars.iv.next125.i.i.1, 72
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.2
  %i.gp = load double, ptr %gep.i.i.2, align 8, !tbaa !33
  %i.gq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gp)
  %i.gr = mul nuw nsw i32 %spec.select.i.i.1, 9
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !33
  %i.gv = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gu)
  %i.gw = fcmp reassoc nsz arcp contract afn ogt double %i.gq, %i.gv
  %i.gx = trunc nuw nsw i64 %indvars.iv.next125.i.i.1 to i32
  %spec.select.i.i.2 = select i1 %i.gw, i32 %i.gx, i32 %spec.select.i.i.1 ; 2 uses
  %indvars.iv.next125.i.i.2 = add nuw nsw i64 %indvars.iv124.i.i, 3 ; 2 uses
  %.idx.i.i.3 = mul nuw nsw i64 %indvars.iv.next125.i.i.2, 72
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.3
  %i.gy = load double, ptr %gep.i.i.3, align 8, !tbaa !33
  %i.gz = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gy)
  %i.ha = mul nuw nsw i32 %spec.select.i.i.2, 9
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !33
  %i.he = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.hd)
  %i.hf = fcmp reassoc nsz arcp contract afn ogt double %i.gz, %i.he
  %i.hg = trunc nuw nsw i64 %indvars.iv.next125.i.i.2 to i32
  %spec.select.i.i.3 = select i1 %i.hf, i32 %i.hg, i32 %spec.select.i.i.2 ; 2 uses
  %indvars.iv.next125.i.i.3 = add nuw nsw i64 %indvars.iv124.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next125.i.i.3, 9
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge116.i.i:                               ; preds = %.lr.ph115.i.i, %middle.block143
  %i.hh = zext i32 %.0100.lcssa.i.i to i64        ; 2 uses
  %.not.not.i.i = icmp eq i64 %indvars.iv143.i.i, %i.hh
  br i1 %.not.not.i.i, label %.preheader.preheader.i.i, label %.lr.ph118.preheader.i.i

.lr.ph118.preheader.i.i:                          ; preds = %._crit_edge116.i.i
  %invariant.gep153.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fh ; 6 uses
  %invariant.gep155.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fl ; 6 uses
  %i.hi = sub nuw nsw i64 8, %indvars.iv143.i.i   ; 2 uses
  %min.iters.check117 = icmp samesign ugt i64 %indvars.iv143.i.i, 4
  br i1 %min.iters.check117, label %.lr.ph118.i.i.preheader, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.lr.ph118.preheader.i.i
  %i.hj = shl nuw nsw i64 %indvars.iv143.i.i, 3
  %i.hk = mul nuw nsw i64 %i.hh, 72               ; 2 uses
  %i.hl = getelementptr i8, ptr %i.a, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 8
  %i.hn = getelementptr i8, ptr %i.hm, i64 %i.hk
  %i.ho = getelementptr i8, ptr %scevgep115, i64 %i.hk
  %i.hp = mul nuw nsw i64 %indvars.iv143.i.i, 80
  %i.hq = getelementptr nuw i8, ptr %i.a, i64 %i.hp
  %i.hr = getelementptr nuw i8, ptr %i.hq, i64 8
  %i.hs = mul nuw nsw i64 %indvars.iv143.i.i, 72
  %i.ht = getelementptr nuw i8, ptr %i.a, i64 %i.hs
  %i.hu = getelementptr nuw i8, ptr %i.ht, i64 72
  %bound0119 = icmp ult ptr %i.hn, %i.hu
  %bound1120 = icmp ult ptr %i.hr, %i.ho
  %found.conflict121 = and i1 %bound0119, %bound1120
  br i1 %found.conflict121, label %.lr.ph118.i.i.preheader, label %vector.ph122

vector.ph122:                                     ; preds = %vector.memcheck118
  %n.vec123 = and i64 %i.hi, 12                   ; 3 uses
  %i.hv = add nuw i64 %indvars.iv.i.i, %n.vec123
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph122
  %index125 = phi i64 [ 0, %vector.ph122 ], [ %index.next128, %vector.body124 ] ; 2 uses
  %i.hw = add nuw i64 %indvars.iv.i.i, %index125  ; 2 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %i.hw ; 2 uses
  %wide.load126 = load <4 x double>, ptr %i.hx, align 8, !tbaa !33, !alias.scope !38, !noalias !39
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %i.hw ; 2 uses
  %wide.load127 = load <4 x double>, ptr %i.hy, align 8, !tbaa !33, !alias.scope !39
  store <4 x double> %wide.load127, ptr %i.hx, align 8, !tbaa !33, !alias.scope !38, !noalias !39
  store <4 x double> %wide.load126, ptr %i.hy, align 8, !tbaa !33, !alias.scope !39
  %index.next128 = add nuw i64 %index125, 4       ; 2 uses
  %i.hz = icmp eq i64 %index.next128, %n.vec123
  br i1 %i.hz, label %middle.block129, label %vector.body124, !llvm.loop !18

middle.block129:                                  ; preds = %vector.body124
  %cmp.n130 = icmp eq i64 %i.hi, %n.vec123
  br i1 %cmp.n130, label %.preheader.preheader.i.i, label %.lr.ph118.i.i.preheader

.lr.ph118.i.i.preheader:                          ; preds = %vector.memcheck118, %.lr.ph118.preheader.i.i, %middle.block129
  %indvars.iv131.i.i.ph = phi i64 [ %indvars.iv.i.i, %vector.memcheck118 ], [ %indvars.iv.i.i, %.lr.ph118.preheader.i.i ], [ %i.hv, %middle.block129 ] ; 4 uses
  %i.ia = sub i64 1, %indvars.iv131.i.i.ph
  %xtraiter147 = and i64 %i.ia, 3                 ; 2 uses
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %.lr.ph118.i.i.prol.loopexit, label %.lr.ph118.i.i.prol

.lr.ph118.i.i.prol:                               ; preds = %.lr.ph118.i.i.preheader, %.lr.ph118.i.i.prol
  %indvars.iv131.i.i.prol = phi i64 [ %indvars.iv.next132.i.i.prol, %.lr.ph118.i.i.prol ], [ %indvars.iv131.i.i.ph, %.lr.ph118.i.i.preheader ] ; 3 uses
  %prol.iter149 = phi i64 [ %prol.iter149.next, %.lr.ph118.i.i.prol ], [ 0, %.lr.ph118.i.i.preheader ]
  %gep154.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv131.i.i.prol ; 2 uses
  %i.ib = load double, ptr %gep154.i.i.prol, align 8, !tbaa !33
  %gep156.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv131.i.i.prol ; 2 uses
  %i.ic = load double, ptr %gep156.i.i.prol, align 8, !tbaa !33
  store double %i.ic, ptr %gep154.i.i.prol, align 8, !tbaa !33
  store double %i.ib, ptr %gep156.i.i.prol, align 8, !tbaa !33
  %indvars.iv.next132.i.i.prol = add nuw nsw i64 %indvars.iv131.i.i.prol, 1 ; 2 uses
  %prol.iter149.next = add i64 %prol.iter149, 1   ; 2 uses
  %prol.iter149.cmp.not = icmp eq i64 %prol.iter149.next, %xtraiter147
  br i1 %prol.iter149.cmp.not, label %.lr.ph118.i.i.prol.loopexit, label %.lr.ph118.i.i.prol, !llvm.loop !19

.lr.ph118.i.i.prol.loopexit:                      ; preds = %.lr.ph118.i.i.prol, %.lr.ph118.i.i.preheader
  %indvars.iv131.i.i.unr = phi i64 [ %indvars.iv131.i.i.ph, %.lr.ph118.i.i.preheader ], [ %indvars.iv.next132.i.i.prol, %.lr.ph118.i.i.prol ]
  %i.id = add i64 %indvars.iv131.i.i.ph, -6
  %i.ie = icmp ult i64 %i.id, 3
  br i1 %i.ie, label %.preheader.preheader.i.i, label %.lr.ph118.i.i

.lr.ph115.i.i:                                    ; preds = %.lr.ph115.i.i.preheader146, %.lr.ph115.i.i
  %indvars.iv127.i.i = phi i64 [ %indvars.iv.next128.i.i, %.lr.ph115.i.i ], [ %indvars.iv127.i.i.ph, %.lr.ph115.i.i.preheader146 ] ; 2 uses
  %.idx148.i.i = mul nuw nsw i64 %indvars.iv127.i.i, 72
  %gep152.i.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx148.i.i ; 2 uses
  %i.if = load double, ptr %gep152.i.i, align 8, !tbaa !33
  %i.ig = fneg reassoc nsz arcp contract afn double %i.if
  %i.ih = fmul reassoc nsz arcp contract afn double %i.ig, %i.fw
  store double %i.ih, ptr %gep152.i.i, align 8, !tbaa !33
  %indvars.iv.next128.i.i = add nuw nsw i64 %indvars.iv127.i.i, 1 ; 2 uses
  %exitcond130.not.i.i = icmp eq i64 %indvars.iv.next128.i.i, 9
  br i1 %exitcond130.not.i.i, label %._crit_edge116.i.i, label %.lr.ph115.i.i, !llvm.loop !20

.lr.ph118.i.i:                                    ; preds = %.lr.ph118.i.i.prol.loopexit, %.lr.ph118.i.i
  %indvars.iv131.i.i = phi i64 [ %indvars.iv.next132.i.i.3, %.lr.ph118.i.i ], [ %indvars.iv131.i.i.unr, %.lr.ph118.i.i.prol.loopexit ] ; 6 uses
  %gep154.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv131.i.i ; 2 uses
  %i.ii = load double, ptr %gep154.i.i, align 8, !tbaa !33
  %gep156.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv131.i.i ; 2 uses
  %i.ij = load double, ptr %gep156.i.i, align 8, !tbaa !33
  store double %i.ij, ptr %gep154.i.i, align 8, !tbaa !33
  store double %i.ii, ptr %gep156.i.i, align 8, !tbaa !33
  %indvars.iv.next132.i.i = add nuw nsw i64 %indvars.iv131.i.i, 1 ; 2 uses
  %gep154.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv.next132.i.i ; 2 uses
  %i.ik = load double, ptr %gep154.i.i.1, align 8, !tbaa !33
  %gep156.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv.next132.i.i ; 2 uses
  %i.il = load double, ptr %gep156.i.i.1, align 8, !tbaa !33
  store double %i.il, ptr %gep154.i.i.1, align 8, !tbaa !33
  store double %i.ik, ptr %gep156.i.i.1, align 8, !tbaa !33
  %indvars.iv.next132.i.i.1 = add nuw nsw i64 %indvars.iv131.i.i, 2 ; 2 uses
  %gep154.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv.next132.i.i.1 ; 2 uses
  %i.im = load double, ptr %gep154.i.i.2, align 8, !tbaa !33
  %gep156.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv.next132.i.i.1 ; 2 uses
  %i.in = load double, ptr %gep156.i.i.2, align 8, !tbaa !33
  store double %i.in, ptr %gep154.i.i.2, align 8, !tbaa !33
  store double %i.im, ptr %gep156.i.i.2, align 8, !tbaa !33
  %indvars.iv.next132.i.i.2 = add nuw nsw i64 %indvars.iv131.i.i, 3 ; 2 uses
  %gep154.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv.next132.i.i.2 ; 2 uses
  %i.io = load double, ptr %gep154.i.i.3, align 8, !tbaa !33
  %gep156.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv.next132.i.i.2 ; 2 uses
  %i.ip = load double, ptr %gep156.i.i.3, align 8, !tbaa !33
  store double %i.ip, ptr %gep154.i.i.3, align 8, !tbaa !33
  store double %i.io, ptr %gep156.i.i.3, align 8, !tbaa !33
  %indvars.iv.next132.i.i.3 = add nuw nsw i64 %indvars.iv131.i.i, 4 ; 2 uses
  %exitcond134.not.i.i.3 = icmp eq i64 %indvars.iv.next132.i.i.3, 9
  br i1 %exitcond134.not.i.i.3, label %.preheader.preheader.i.i, label %.lr.ph118.i.i, !llvm.loop !21

.preheader.preheader.i.i:                         ; preds = %.lr.ph118.i.i.prol.loopexit, %.lr.ph118.i.i, %middle.block129, %._crit_edge116.i.i
  %invariant.gep157.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fl ; 6 uses
  %i.iq = sub nuw nsw i64 8, %indvars.iv143.i.i   ; 2 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv143.i.i, 4
  %bound0101 = icmp ult ptr %scevgep100, %scevgep
  %bound1102 = icmp ult i64 %i.eq, 640
  %found.conflict103 = and i1 %bound0101, %bound1102
  %n.vec = and i64 %i.iq, 12                      ; 3 uses
  %i.ir = add nuw i64 %indvars.iv.i.i, %n.vec
  %cmp.n = icmp eq i64 %i.iq, %n.vec
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge121.i.i, %.preheader.preheader.i.i
  %indvars.iv139.i.i = phi i64 [ %indvars.iv.i.i, %.preheader.preheader.i.i ], [ %indvars.iv.next140.i.i, %._crit_edge121.i.i ] ; 2 uses
  %i.is = mul nuw nsw i64 %indvars.iv139.i.i, 9   ; 2 uses
  %gep162.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.is ; 6 uses
  %invariant.gep159.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.is ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict103
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %i.it = load double, ptr %gep162.i.i, align 8, !tbaa !33, !alias.scope !40
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.it, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iu = add nuw i64 %indvars.iv.i.i, %index     ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %i.iu
  %wide.load = load <4 x double>, ptr %i.iv, align 8, !tbaa !33, !alias.scope !41
  %i.iw = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %broadcast.splat
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %i.iu ; 2 uses
  %wide.load104 = load <4 x double>, ptr %i.ix, align 8, !tbaa !33, !alias.scope !42, !noalias !43
  %i.iy = fadd reassoc nsz arcp contract afn <4 x double> %wide.load104, %i.iw
  store <4 x double> %i.iy, ptr %i.ix, align 8, !tbaa !33, !alias.scope !42, !noalias !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge121.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %indvars.iv135.i.i.ph = phi i64 [ %i.ir, %middle.block ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 4 uses
  %i.ja = sub i64 1, %indvars.iv135.i.i.ph
  %xtraiter150 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv135.i.i.prol = phi i64 [ %indvars.iv.next136.i.i.prol, %scalar.ph.prol ], [ %indvars.iv135.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter152 = phi i64 [ %prol.iter152.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.jb = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv135.i.i.prol
  %i.jc = load double, ptr %gep158.i.i.prol, align 8, !tbaa !33
  %i.jd = fmul reassoc nsz arcp contract afn double %i.jc, %i.jb
  %gep160.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv135.i.i.prol ; 2 uses
  %i.je = load double, ptr %gep160.i.i.prol, align 8, !tbaa !33
  %i.jf = fadd reassoc nsz arcp contract afn double %i.je, %i.jd
  store double %i.jf, ptr %gep160.i.i.prol, align 8, !tbaa !33
  %indvars.iv.next136.i.i.prol = add nuw nsw i64 %indvars.iv135.i.i.prol, 1 ; 2 uses
  %prol.iter152.next = add i64 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i64 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !27

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv135.i.i.unr = phi i64 [ %indvars.iv135.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next136.i.i.prol, %scalar.ph.prol ]
  %i.jg = add i64 %indvars.iv135.i.i.ph, -6
  %i.jh = icmp ult i64 %i.jg, 3
  br i1 %i.jh, label %._crit_edge121.i.i, label %scalar.ph

._crit_edge121.i.i:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next140.i.i = add nuw nsw i64 %indvars.iv139.i.i, 1 ; 2 uses
  %exitcond142.not.i.i = icmp eq i64 %indvars.iv.next140.i.i, 9
  br i1 %exitcond142.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv135.i.i = phi i64 [ %indvars.iv.next136.i.i.3, %scalar.ph ], [ %indvars.iv135.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ji = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv135.i.i
  %i.jj = load double, ptr %gep158.i.i, align 8, !tbaa !33
  %i.jk = fmul reassoc nsz arcp contract afn double %i.jj, %i.ji
  %gep160.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv135.i.i ; 2 uses
  %i.jl = load double, ptr %gep160.i.i, align 8, !tbaa !33
  %i.jm = fadd reassoc nsz arcp contract afn double %i.jl, %i.jk
  store double %i.jm, ptr %gep160.i.i, align 8, !tbaa !33
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %i.jn = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv.next136.i.i
  %i.jo = load double, ptr %gep158.i.i.1, align 8, !tbaa !33
  %i.jp = fmul reassoc nsz arcp contract afn double %i.jo, %i.jn
  %gep160.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv.next136.i.i ; 2 uses
  %i.jq = load double, ptr %gep160.i.i.1, align 8, !tbaa !33
  %i.jr = fadd reassoc nsz arcp contract afn double %i.jq, %i.jp
  store double %i.jr, ptr %gep160.i.i.1, align 8, !tbaa !33
  %indvars.iv.next136.i.i.1 = add nuw nsw i64 %indvars.iv135.i.i, 2 ; 2 uses
  %i.js = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv.next136.i.i.1
  %i.jt = load double, ptr %gep158.i.i.2, align 8, !tbaa !33
  %i.ju = fmul reassoc nsz arcp contract afn double %i.jt, %i.js
  %gep160.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv.next136.i.i.1 ; 2 uses
  %i.jv = load double, ptr %gep160.i.i.2, align 8, !tbaa !33
  %i.jw = fadd reassoc nsz arcp contract afn double %i.jv, %i.ju
  store double %i.jw, ptr %gep160.i.i.2, align 8, !tbaa !33
  %indvars.iv.next136.i.i.2 = add nuw nsw i64 %indvars.iv135.i.i, 3 ; 2 uses
  %i.jx = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv.next136.i.i.2
  %i.jy = load double, ptr %gep158.i.i.3, align 8, !tbaa !33
  %i.jz = fmul reassoc nsz arcp contract afn double %i.jy, %i.jx
  %gep160.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv.next136.i.i.2 ; 2 uses
  %i.ka = load double, ptr %gep160.i.i.3, align 8, !tbaa !33
  %i.kb = fadd reassoc nsz arcp contract afn double %i.ka, %i.jz
  store double %i.kb, ptr %gep160.i.i.3, align 8, !tbaa !33
  %indvars.iv.next136.i.i.3 = add nuw nsw i64 %indvars.iv135.i.i, 4 ; 2 uses
  %exitcond138.not.i.i.3 = icmp eq i64 %indvars.iv.next136.i.i.3, 9
  br i1 %exitcond138.not.i.i.3, label %._crit_edge121.i.i, label %scalar.ph, !llvm.loop !28

gauss_solve.exit:                                 ; preds = %.loopexit.i.i
  %i.kc = load i32, ptr %i.em, align 4, !tbaa !34
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.kd ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !33 ; 2 uses
  store double 0.000000e+00, ptr %i.ke, align 8, !tbaa !33
  store double %i.kf, ptr %i.b, align 16, !tbaa !33
  %i.kg = load <4 x double>, ptr %i.an, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ki = load double, ptr %i.az, align 16, !tbaa !33
  %i.kj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.kk = load double, ptr %i.bo, align 8, !tbaa !33
  %i.kl = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.km = load double, ptr %i.ca, align 16, !tbaa !33
  %i.kn = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.ko = insertelement <4 x double> %i.kg, double %i.ki, i64 1
  %i.kp = insertelement <4 x double> %i.ko, double %i.kk, i64 2
  %i.kq = insertelement <4 x double> %i.kp, double %i.km, i64 3
  %i.kr = insertelement <4 x double> poison, double %i.kf, i64 0
  %i.ks = shufflevector <4 x double> %i.kr, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kt = fmul reassoc nsz arcp contract afn <4 x double> %i.kq, %i.ks
  %i.ku = load <4 x double>, ptr %i.kh, align 8, !tbaa !33
  %i.kv = fadd reassoc nsz arcp contract afn <4 x double> %i.ku, %i.kt ; 2 uses
  store <4 x double> %i.kv, ptr %i.kh, align 8, !tbaa !33
  %i.kw = load <4 x double>, ptr %i.cp, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.ky = load double, ptr %i.db, align 16, !tbaa !33
  %i.kz = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 8 uses
  %i.la = load double, ptr %i.dq, align 8, !tbaa !33
  %i.lb = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 9 uses
  %i.lc = load double, ptr %i.ec, align 16, !tbaa !33
  %i.ld = insertelement <4 x double> %i.kw, double %i.ky, i64 1
  %i.le = insertelement <4 x double> %i.ld, double %i.la, i64 2
  %i.lf = insertelement <4 x double> %i.le, double %i.lc, i64 3
  %i.lg = fmul reassoc nsz arcp contract afn <4 x double> %i.lf, %i.ks
  %i.lh = load <4 x double>, ptr %i.kx, align 8, !tbaa !33
  %i.li = fadd reassoc nsz arcp contract afn <4 x double> %i.lh, %i.lg
  store <4 x double> %i.li, ptr %i.kx, align 8, !tbaa !33
  %i.lj = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !34
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ll ; 2 uses
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !33 ; 5 uses
  %i.lo = extractelement <4 x double> %i.kv, i64 0
  store double %i.lo, ptr %i.lm, align 8, !tbaa !33
  store double %i.ln, ptr %i.kh, align 8, !tbaa !33
  %i.lp = load <4 x double>, ptr %i.ba, align 8
  %i.lq = load double, ptr %i.bp, align 16, !tbaa !33
  %i.lr = load double, ptr %i.cb, align 8, !tbaa !33
  %i.ls = load double, ptr %i.cq, align 16, !tbaa !33
  %i.lt = insertelement <4 x double> %i.lp, double %i.lq, i64 1
  %i.lu = insertelement <4 x double> %i.lt, double %i.lr, i64 2
  %i.lv = insertelement <4 x double> %i.lu, double %i.ls, i64 3
  %i.lw = insertelement <4 x double> poison, double %i.ln, i64 0
  %i.lx = shufflevector <4 x double> %i.lw, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ly = fmul reassoc nsz arcp contract afn <4 x double> %i.lv, %i.lx
  %i.lz = load <4 x double>, ptr %i.kj, align 16, !tbaa !33
  %i.ma = fadd reassoc nsz arcp contract afn <4 x double> %i.lz, %i.ly ; 2 uses
  store <4 x double> %i.ma, ptr %i.kj, align 16, !tbaa !33
  %i.mb = load double, ptr %i.dc, align 8, !tbaa !33
  %i.mc = fmul reassoc nsz arcp contract afn double %i.mb, %i.ln
  %i.md = load double, ptr %i.kz, align 16, !tbaa !33
  %i.me = fadd reassoc nsz arcp contract afn double %i.md, %i.mc
  store double %i.me, ptr %i.kz, align 16, !tbaa !33
  %i.mf = load double, ptr %i.dr, align 16, !tbaa !33
  %i.mg = fmul reassoc nsz arcp contract afn double %i.mf, %i.ln
  %i.mh = load double, ptr %i.lb, align 8, !tbaa !33
  %i.mi = fadd reassoc nsz arcp contract afn double %i.mh, %i.mg
  store double %i.mi, ptr %i.lb, align 8, !tbaa !33
  %i.mj = load double, ptr %i.ed, align 8, !tbaa !33
  %i.mk = fmul reassoc nsz arcp contract afn double %i.mj, %i.ln
  %i.ml = load double, ptr %i.el, align 16, !tbaa !33
  %i.mm = fadd reassoc nsz arcp contract afn double %i.ml, %i.mk
  store double %i.mm, ptr %i.el, align 16, !tbaa !33
  %i.mn = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !34
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.mp ; 2 uses
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !33 ; 4 uses
  %i.ms = extractelement <4 x double> %i.ma, i64 0
  store double %i.ms, ptr %i.mq, align 8, !tbaa !33
  store double %i.mr, ptr %i.kj, align 16, !tbaa !33
  %i.mt = load <4 x double>, ptr %i.bq, align 8
  %i.mu = load double, ptr %i.cf, align 16, !tbaa !33
  %i.mv = load double, ptr %i.cr, align 8, !tbaa !33
  %i.mw = load double, ptr %i.dg, align 16, !tbaa !33
  %i.mx = insertelement <4 x double> %i.mt, double %i.mu, i64 1
  %i.my = insertelement <4 x double> %i.mx, double %i.mv, i64 2
  %i.mz = insertelement <4 x double> %i.my, double %i.mw, i64 3
  %i.na = insertelement <4 x double> poison, double %i.mr, i64 0
  %i.nb = shufflevector <4 x double> %i.na, <4 x double> poison, <4 x i32> zeroinitializer
  %i.nc = fmul reassoc nsz arcp contract afn <4 x double> %i.mz, %i.nb
  %i.nd = load <4 x double>, ptr %i.kl, align 8, !tbaa !33
  %i.ne = fadd reassoc nsz arcp contract afn <4 x double> %i.nd, %i.nc ; 2 uses
  store <4 x double> %i.ne, ptr %i.kl, align 8, !tbaa !33
  %i.nf = load double, ptr %i.ds, align 8, !tbaa !33
  %i.ng = fmul reassoc nsz arcp contract afn double %i.nf, %i.mr
  %i.nh = load double, ptr %i.lb, align 8, !tbaa !33
  %i.ni = fadd reassoc nsz arcp contract afn double %i.nh, %i.ng
  store double %i.ni, ptr %i.lb, align 8, !tbaa !33
end_hunk_0
