Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/common?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0
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
  %indvars.iv143.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next144.i.i, %.loopexit.i.i ] ; 17 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 18 uses
  %i.ei = sub nsw i64 8, %indvars.iv143.i.i       ; 3 uses
  %i.ej = sub nsw i64 8, %indvars.iv143.i.i       ; 3 uses
  %i.ek = shl nuw nsw i64 %indvars.iv.i.i, 3
  %scevgep98 = getelementptr nuw i8, ptr %i.a, i64 %i.ek
  %i.el = mul nuw nsw i64 %indvars.iv143.i.i, 80
  %i.em = getelementptr nuw i8, ptr %i.a, i64 %i.el
  %scevgep102 = getelementptr nuw i8, ptr %i.em, i64 8
  %i.en = mul nuw nsw i64 %indvars.iv.i.i, 72
  %scevgep103 = getelementptr nuw i8, ptr %i.a, i64 %i.en
  %i.eo = sub nsw i64 8, %indvars.iv143.i.i       ; 3 uses
  %i.ep = mul nuw nsw i64 %indvars.iv.i.i, 80
  %i.eq = getelementptr i8, ptr %i.a, i64 %i.ep   ; 2 uses
  %3 = mul nuw nsw i64 %indvars.iv143.i.i, 80     ; 2 uses
  %i.er = getelementptr i8, ptr %i.a, i64 %3
  %scevgep89 = getelementptr i8, ptr %i.er, i64 72
  %i.es = shl nuw nsw i64 %indvars.iv143.i.i, 3
  %i.et = getelementptr i8, ptr %i.a, i64 %i.es
  %scevgep90 = getelementptr i8, ptr %i.et, i64 584
  %i.eu = mul nuw nsw i64 %indvars.iv.i.i, 72
  %scevgep92 = getelementptr nuw i8, ptr %i.a, i64 %i.eu
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
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv143.i.i
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
  tail call void @free(ptr noundef nonnull %i.eg) #9
  br label %.loopexit

.preheader111.i.i:                                ; preds = %._crit_edge.i.i
  br i1 %i.ev, label %.lr.ph115.i.i.preheader, label %.loopexit.i.i

.lr.ph115.i.i.preheader:                          ; preds = %.preheader111.i.i
  %min.iters.check120 = icmp ult i64 %i.ei, 4
  br i1 %min.iters.check120, label %.lr.ph115.i.i.preheader140, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph115.i.i.preheader
  %n.vec122 = and i64 %i.ei, 12                   ; 3 uses
  %i.fs = add nuw i64 %indvars.iv.i.i, %n.vec122
  %broadcast.splatinsert123 = insertelement <4 x double> poison, double %i.fn, i64 0
  %broadcast.splat124 = shufflevector <4 x double> %broadcast.splatinsert123, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <4 x i64> poison, i64 %indvars.iv.i.i, i64 0
  %broadcast.splat126 = shufflevector <4 x i64> %broadcast.splatinsert125, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat126, <i64 0, i64 1, i64 2, i64 3>
  %i.ft = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat124
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph121
  %index128 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body127 ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph121 ], [ %vec.ind.next, %vector.body127 ] ; 2 uses
  %i.fu = mul nuw nsw <4 x i64> %vec.ind, splat (i64 72)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.fl, <4 x i64> %i.fu ; 2 uses
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !33
  %i.fv = fneg reassoc nsz arcp contract afn <4 x double> %wide.masked.gather
  %i.fw = fmul reassoc nsz arcp contract afn <4 x double> %i.fv, %i.ft
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.fw, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !33
  %index.next129 = add nuw i64 %index128, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.fx = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.fx, label %middle.block130, label %vector.body127, !llvm.loop !14

middle.block130:                                  ; preds = %vector.body127
  %cmp.n131 = icmp eq i64 %i.ei, %n.vec122
  br i1 %cmp.n131, label %._crit_edge116.i.i, label %.lr.ph115.i.i.preheader140

.lr.ph115.i.i.preheader140:                       ; preds = %.lr.ph115.i.i.preheader, %middle.block130
  %indvars.iv127.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph115.i.i.preheader ], [ %i.fs, %middle.block130 ]
  %i.fy = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.fn
  br label %.lr.ph115.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv124.i.i = phi i64 [ %indvars.iv.next125.i.i.3, %.lr.ph.i.i ], [ %indvars.iv124.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.0100112.i.i = phi i32 [ %spec.select.i.i.3, %.lr.ph.i.i ], [ %.0100112.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv124.i.i, 72
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i
  %i.fz = load double, ptr %gep.i.i, align 8, !tbaa !33
  %i.ga = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fz)
  %i.gb = mul nuw nsw i32 %.0100112.i.i, 9
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gc
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !33
  %i.gf = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ge)
  %i.gg = fcmp reassoc nsz arcp contract afn ogt double %i.ga, %i.gf
  %i.gh = trunc nuw nsw i64 %indvars.iv124.i.i to i32
  %spec.select.i.i = select i1 %i.gg, i32 %i.gh, i32 %.0100112.i.i ; 2 uses
  %indvars.iv.next125.i.i = add nuw nsw i64 %indvars.iv124.i.i, 1 ; 2 uses
  %.idx.i.i.1 = mul nuw nsw i64 %indvars.iv.next125.i.i, 72
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.1
  %i.gi = load double, ptr %gep.i.i.1, align 8, !tbaa !33
  %i.gj = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gi)
  %i.gk = mul nuw nsw i32 %spec.select.i.i, 9
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gl
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !33
  %i.go = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gn)
  %i.gp = fcmp reassoc nsz arcp contract afn ogt double %i.gj, %i.go
  %i.gq = trunc nuw nsw i64 %indvars.iv.next125.i.i to i32
  %spec.select.i.i.1 = select i1 %i.gp, i32 %i.gq, i32 %spec.select.i.i ; 2 uses
  %indvars.iv.next125.i.i.1 = add nuw nsw i64 %indvars.iv124.i.i, 2 ; 2 uses
  %.idx.i.i.2 = mul nuw nsw i64 %indvars.iv.next125.i.i.1, 72
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.2
  %i.gr = load double, ptr %gep.i.i.2, align 8, !tbaa !33
  %i.gs = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gr)
  %i.gt = mul nuw nsw i32 %spec.select.i.i.1, 9
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gu
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !33
  %i.gx = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gw)
  %i.gy = fcmp reassoc nsz arcp contract afn ogt double %i.gs, %i.gx
  %i.gz = trunc nuw nsw i64 %indvars.iv.next125.i.i.1 to i32
  %spec.select.i.i.2 = select i1 %i.gy, i32 %i.gz, i32 %spec.select.i.i.1 ; 2 uses
  %indvars.iv.next125.i.i.2 = add nuw nsw i64 %indvars.iv124.i.i, 3 ; 2 uses
  %.idx.i.i.3 = mul nuw nsw i64 %indvars.iv.next125.i.i.2, 72
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.3
  %i.ha = load double, ptr %gep.i.i.3, align 8, !tbaa !33
  %i.hb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ha)
  %i.hc = mul nuw nsw i32 %spec.select.i.i.2, 9
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !33
  %i.hg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.hf)
  %i.hh = fcmp reassoc nsz arcp contract afn ogt double %i.hb, %i.hg
  %i.hi = trunc nuw nsw i64 %indvars.iv.next125.i.i.2 to i32
  %spec.select.i.i.3 = select i1 %i.hh, i32 %i.hi, i32 %spec.select.i.i.2 ; 2 uses
  %indvars.iv.next125.i.i.3 = add nuw nsw i64 %indvars.iv124.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next125.i.i.3, 9
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge116.i.i:                               ; preds = %.lr.ph115.i.i, %middle.block130
  %i.hj = zext i32 %.0100.lcssa.i.i to i64        ; 2 uses
  %.not.not.i.i = icmp eq i64 %indvars.iv143.i.i, %i.hj
  br i1 %.not.not.i.i, label %.preheader.preheader.i.i, label %.lr.ph118.preheader.i.i

.lr.ph118.preheader.i.i:                          ; preds = %._crit_edge116.i.i
  %invariant.gep153.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fk ; 6 uses
  %invariant.gep155.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fo ; 6 uses
  %min.iters.check108 = icmp ult i64 %i.ej, 4
  br i1 %min.iters.check108, label %.lr.ph118.i.i.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %.lr.ph118.preheader.i.i
  %i.hk = mul nuw nsw i64 %i.hj, 72               ; 2 uses
  %scevgep99 = getelementptr i8, ptr %scevgep98, i64 %i.hk
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.hk
  %bound0104 = icmp ult ptr %scevgep99, %scevgep103
  %bound1105 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %.lr.ph118.i.i.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck97
  %n.vec110 = and i64 %i.ej, 12                   ; 3 uses
  %i.hl = add nuw i64 %indvars.iv.i.i, %n.vec110
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 2 uses
  %i.hm = add nuw i64 %indvars.iv.i.i, %index112  ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %i.hm ; 2 uses
  %wide.load113 = load <4 x double>, ptr %i.hn, align 8, !tbaa !33, !alias.scope !38, !noalias !39
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %i.hm ; 2 uses
  %wide.load114 = load <4 x double>, ptr %i.ho, align 8, !tbaa !33, !alias.scope !39
  store <4 x double> %wide.load114, ptr %i.hn, align 8, !tbaa !33, !alias.scope !38, !noalias !39
  store <4 x double> %wide.load113, ptr %i.ho, align 8, !tbaa !33, !alias.scope !39
  %index.next115 = add nuw i64 %index112, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.hp, label %middle.block116, label %vector.body111, !llvm.loop !18

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %i.ej, %n.vec110
  br i1 %cmp.n117, label %.preheader.preheader.i.i, label %.lr.ph118.i.i.preheader

.lr.ph118.i.i.preheader:                          ; preds = %vector.memcheck97, %.lr.ph118.preheader.i.i, %middle.block116
  %indvars.iv131.i.i.ph = phi i64 [ %indvars.iv.i.i, %vector.memcheck97 ], [ %indvars.iv.i.i, %.lr.ph118.preheader.i.i ], [ %i.hl, %middle.block116 ] ; 4 uses
  %i.hq = sub i64 1, %indvars.iv131.i.i.ph
  %xtraiter141 = and i64 %i.hq, 3                 ; 2 uses
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %.lr.ph118.i.i.prol.loopexit, label %.lr.ph118.i.i.prol

.lr.ph118.i.i.prol:                               ; preds = %.lr.ph118.i.i.preheader, %.lr.ph118.i.i.prol
  %indvars.iv131.i.i.prol = phi i64 [ %indvars.iv.next132.i.i.prol, %.lr.ph118.i.i.prol ], [ %indvars.iv131.i.i.ph, %.lr.ph118.i.i.preheader ] ; 3 uses
  %prol.iter143 = phi i64 [ %prol.iter143.next, %.lr.ph118.i.i.prol ], [ 0, %.lr.ph118.i.i.preheader ]
  %gep154.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv131.i.i.prol ; 2 uses
  %i.hr = load double, ptr %gep154.i.i.prol, align 8, !tbaa !33
  %gep156.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv131.i.i.prol ; 2 uses
  %i.hs = load double, ptr %gep156.i.i.prol, align 8, !tbaa !33
  store double %i.hs, ptr %gep154.i.i.prol, align 8, !tbaa !33
  store double %i.hr, ptr %gep156.i.i.prol, align 8, !tbaa !33
  %indvars.iv.next132.i.i.prol = add nuw nsw i64 %indvars.iv131.i.i.prol, 1 ; 2 uses
  %prol.iter143.next = add i64 %prol.iter143, 1   ; 2 uses
  %prol.iter143.cmp.not = icmp eq i64 %prol.iter143.next, %xtraiter141
  br i1 %prol.iter143.cmp.not, label %.lr.ph118.i.i.prol.loopexit, label %.lr.ph118.i.i.prol, !llvm.loop !19

.lr.ph118.i.i.prol.loopexit:                      ; preds = %.lr.ph118.i.i.prol, %.lr.ph118.i.i.preheader
  %indvars.iv131.i.i.unr = phi i64 [ %indvars.iv131.i.i.ph, %.lr.ph118.i.i.preheader ], [ %indvars.iv.next132.i.i.prol, %.lr.ph118.i.i.prol ]
  %i.ht = add i64 %indvars.iv131.i.i.ph, -6
  %i.hu = icmp ult i64 %i.ht, 3
  br i1 %i.hu, label %.preheader.preheader.i.i, label %.lr.ph118.i.i

.lr.ph115.i.i:                                    ; preds = %.lr.ph115.i.i.preheader140, %.lr.ph115.i.i
  %indvars.iv127.i.i = phi i64 [ %indvars.iv.next128.i.i, %.lr.ph115.i.i ], [ %indvars.iv127.i.i.ph, %.lr.ph115.i.i.preheader140 ] ; 2 uses
  %.idx148.i.i = mul nuw nsw i64 %indvars.iv127.i.i, 72
  %gep152.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx148.i.i ; 2 uses
  %i.hv = load double, ptr %gep152.i.i, align 8, !tbaa !33
  %i.hw = fneg reassoc nsz arcp contract afn double %i.hv
  %i.hx = fmul reassoc nsz arcp contract afn double %i.hw, %i.fy
  store double %i.hx, ptr %gep152.i.i, align 8, !tbaa !33
  %indvars.iv.next128.i.i = add nuw nsw i64 %indvars.iv127.i.i, 1 ; 2 uses
  %exitcond130.not.i.i = icmp eq i64 %indvars.iv.next128.i.i, 9
  br i1 %exitcond130.not.i.i, label %._crit_edge116.i.i, label %.lr.ph115.i.i, !llvm.loop !20

.lr.ph118.i.i:                                    ; preds = %.lr.ph118.i.i.prol.loopexit, %.lr.ph118.i.i
  %indvars.iv131.i.i = phi i64 [ %indvars.iv.next132.i.i.3, %.lr.ph118.i.i ], [ %indvars.iv131.i.i.unr, %.lr.ph118.i.i.prol.loopexit ] ; 6 uses
  %gep154.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv131.i.i ; 2 uses
  %i.hy = load double, ptr %gep154.i.i, align 8, !tbaa !33
  %gep156.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv131.i.i ; 2 uses
  %i.hz = load double, ptr %gep156.i.i, align 8, !tbaa !33
  store double %i.hz, ptr %gep154.i.i, align 8, !tbaa !33
  store double %i.hy, ptr %gep156.i.i, align 8, !tbaa !33
  %indvars.iv.next132.i.i = add nuw nsw i64 %indvars.iv131.i.i, 1 ; 2 uses
  %gep154.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv.next132.i.i ; 2 uses
  %i.ia = load double, ptr %gep154.i.i.1, align 8, !tbaa !33
  %gep156.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv.next132.i.i ; 2 uses
  %i.ib = load double, ptr %gep156.i.i.1, align 8, !tbaa !33
  store double %i.ib, ptr %gep154.i.i.1, align 8, !tbaa !33
  store double %i.ia, ptr %gep156.i.i.1, align 8, !tbaa !33
  %indvars.iv.next132.i.i.1 = add nuw nsw i64 %indvars.iv131.i.i, 2 ; 2 uses
  %gep154.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv.next132.i.i.1 ; 2 uses
  %i.ic = load double, ptr %gep154.i.i.2, align 8, !tbaa !33
  %gep156.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv.next132.i.i.1 ; 2 uses
  %i.id = load double, ptr %gep156.i.i.2, align 8, !tbaa !33
  store double %i.id, ptr %gep154.i.i.2, align 8, !tbaa !33
  store double %i.ic, ptr %gep156.i.i.2, align 8, !tbaa !33
  %indvars.iv.next132.i.i.2 = add nuw nsw i64 %indvars.iv131.i.i, 3 ; 2 uses
  %gep154.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep153.i.i, i64 %indvars.iv.next132.i.i.2 ; 2 uses
  %i.ie = load double, ptr %gep154.i.i.3, align 8, !tbaa !33
  %gep156.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep155.i.i, i64 %indvars.iv.next132.i.i.2 ; 2 uses
  %i.if = load double, ptr %gep156.i.i.3, align 8, !tbaa !33
  store double %i.if, ptr %gep154.i.i.3, align 8, !tbaa !33
  store double %i.ie, ptr %gep156.i.i.3, align 8, !tbaa !33
  %indvars.iv.next132.i.i.3 = add nuw nsw i64 %indvars.iv131.i.i, 4 ; 2 uses
  %exitcond134.not.i.i.3 = icmp eq i64 %indvars.iv.next132.i.i.3, 9
  br i1 %exitcond134.not.i.i.3, label %.preheader.preheader.i.i, label %.lr.ph118.i.i, !llvm.loop !21

.preheader.preheader.i.i:                         ; preds = %.lr.ph118.i.i.prol.loopexit, %.lr.ph118.i.i, %middle.block116, %._crit_edge116.i.i
  %invariant.gep157.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fo ; 6 uses
  %min.iters.check = icmp ult i64 %i.eo, 4
  %bound0 = icmp ult ptr %i.eq, %scevgep90
  %bound1 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %i.eq, %scevgep92
  %bound194 = icmp ult i64 %3, 640
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  %n.vec = and i64 %i.eo, 12                      ; 3 uses
  %i.ig = add nuw i64 %indvars.iv.i.i, %n.vec
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge121.i.i, %.preheader.preheader.i.i
  %indvars.iv139.i.i = phi i64 [ %indvars.iv.i.i, %.preheader.preheader.i.i ], [ %indvars.iv.next140.i.i, %._crit_edge121.i.i ] ; 2 uses
  %i.ih = mul nuw nsw i64 %indvars.iv139.i.i, 9   ; 2 uses
  %gep162.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.ih ; 6 uses
  %invariant.gep159.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ih ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %i.ii = load double, ptr %gep162.i.i, align 8, !tbaa !33, !alias.scope !40
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ii, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ij = add nuw i64 %indvars.iv.i.i, %index     ; 2 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %i.ij
  %wide.load = load <4 x double>, ptr %i.ik, align 8, !tbaa !33, !alias.scope !41
  %i.il = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %broadcast.splat
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %i.ij ; 2 uses
  %wide.load96 = load <4 x double>, ptr %i.im, align 8, !tbaa !33, !alias.scope !42, !noalias !43
  %i.in = fadd reassoc nsz arcp contract afn <4 x double> %wide.load96, %i.il
  store <4 x double> %i.in, ptr %i.im, align 8, !tbaa !33, !alias.scope !42, !noalias !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.io = icmp eq i64 %index.next, %n.vec
  br i1 %i.io, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge121.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %indvars.iv135.i.i.ph = phi i64 [ %i.ig, %middle.block ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 4 uses
  %i.ip = sub i64 1, %indvars.iv135.i.i.ph
  %xtraiter144 = and i64 %i.ip, 3                 ; 2 uses
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv135.i.i.prol = phi i64 [ %indvars.iv.next136.i.i.prol, %scalar.ph.prol ], [ %indvars.iv135.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter146 = phi i64 [ %prol.iter146.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.iq = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv135.i.i.prol
  %i.ir = load double, ptr %gep158.i.i.prol, align 8, !tbaa !33
  %i.is = fmul reassoc nsz arcp contract afn double %i.ir, %i.iq
  %gep160.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv135.i.i.prol ; 2 uses
  %i.it = load double, ptr %gep160.i.i.prol, align 8, !tbaa !33
  %i.iu = fadd reassoc nsz arcp contract afn double %i.it, %i.is
  store double %i.iu, ptr %gep160.i.i.prol, align 8, !tbaa !33
  %indvars.iv.next136.i.i.prol = add nuw nsw i64 %indvars.iv135.i.i.prol, 1 ; 2 uses
  %prol.iter146.next = add i64 %prol.iter146, 1   ; 2 uses
  %prol.iter146.cmp.not = icmp eq i64 %prol.iter146.next, %xtraiter144
  br i1 %prol.iter146.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !27

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv135.i.i.unr = phi i64 [ %indvars.iv135.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next136.i.i.prol, %scalar.ph.prol ]
  %i.iv = add i64 %indvars.iv135.i.i.ph, -6
  %i.iw = icmp ult i64 %i.iv, 3
  br i1 %i.iw, label %._crit_edge121.i.i, label %scalar.ph

._crit_edge121.i.i:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next140.i.i = add nuw nsw i64 %indvars.iv139.i.i, 1 ; 2 uses
  %exitcond142.not.i.i = icmp eq i64 %indvars.iv.next140.i.i, 9
  br i1 %exitcond142.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv135.i.i = phi i64 [ %indvars.iv.next136.i.i.3, %scalar.ph ], [ %indvars.iv135.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ix = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv135.i.i
  %i.iy = load double, ptr %gep158.i.i, align 8, !tbaa !33
  %i.iz = fmul reassoc nsz arcp contract afn double %i.iy, %i.ix
  %gep160.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv135.i.i ; 2 uses
  %i.ja = load double, ptr %gep160.i.i, align 8, !tbaa !33
  %i.jb = fadd reassoc nsz arcp contract afn double %i.ja, %i.iz
  store double %i.jb, ptr %gep160.i.i, align 8, !tbaa !33
  %indvars.iv.next136.i.i = add nuw nsw i64 %indvars.iv135.i.i, 1 ; 2 uses
  %i.jc = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv.next136.i.i
  %i.jd = load double, ptr %gep158.i.i.1, align 8, !tbaa !33
  %i.je = fmul reassoc nsz arcp contract afn double %i.jd, %i.jc
  %gep160.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv.next136.i.i ; 2 uses
  %i.jf = load double, ptr %gep160.i.i.1, align 8, !tbaa !33
  %i.jg = fadd reassoc nsz arcp contract afn double %i.jf, %i.je
  store double %i.jg, ptr %gep160.i.i.1, align 8, !tbaa !33
  %indvars.iv.next136.i.i.1 = add nuw nsw i64 %indvars.iv135.i.i, 2 ; 2 uses
  %i.jh = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv.next136.i.i.1
  %i.ji = load double, ptr %gep158.i.i.2, align 8, !tbaa !33
  %i.jj = fmul reassoc nsz arcp contract afn double %i.ji, %i.jh
  %gep160.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv.next136.i.i.1 ; 2 uses
  %i.jk = load double, ptr %gep160.i.i.2, align 8, !tbaa !33
  %i.jl = fadd reassoc nsz arcp contract afn double %i.jk, %i.jj
  store double %i.jl, ptr %gep160.i.i.2, align 8, !tbaa !33
  %indvars.iv.next136.i.i.2 = add nuw nsw i64 %indvars.iv135.i.i, 3 ; 2 uses
  %i.jm = load double, ptr %gep162.i.i, align 8, !tbaa !33
  %gep158.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep157.i.i, i64 %indvars.iv.next136.i.i.2
  %i.jn = load double, ptr %gep158.i.i.3, align 8, !tbaa !33
  %i.jo = fmul reassoc nsz arcp contract afn double %i.jn, %i.jm
  %gep160.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep159.i.i, i64 %indvars.iv.next136.i.i.2 ; 2 uses
  %i.jp = load double, ptr %gep160.i.i.3, align 8, !tbaa !33
  %i.jq = fadd reassoc nsz arcp contract afn double %i.jp, %i.jo
  store double %i.jq, ptr %gep160.i.i.3, align 8, !tbaa !33
  %indvars.iv.next136.i.i.3 = add nuw nsw i64 %indvars.iv135.i.i, 4 ; 2 uses
  %exitcond138.not.i.i.3 = icmp eq i64 %indvars.iv.next136.i.i.3, 9
  br i1 %exitcond138.not.i.i.3, label %._crit_edge121.i.i, label %scalar.ph, !llvm.loop !28

gauss_solve.exit:                                 ; preds = %.loopexit.i.i
  %i.jr = load i32, ptr %i.eg, align 4, !tbaa !34
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.js ; 2 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !33 ; 2 uses
  store double 0.000000e+00, ptr %i.jt, align 8, !tbaa !33
  store double %i.ju, ptr %i.b, align 16, !tbaa !33
  %i.jv = load <4 x double>, ptr %i.an, align 8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.jx = load double, ptr %i.ax, align 16, !tbaa !33
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.jz = load double, ptr %i.bk, align 8, !tbaa !33
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.kb = load double, ptr %i.bv, align 16, !tbaa !33
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.kd = insertelement <4 x double> %i.jv, double %i.jx, i64 1
  %i.ke = insertelement <4 x double> %i.kd, double %i.jz, i64 2
  %i.kf = insertelement <4 x double> %i.ke, double %i.kb, i64 3
  %i.kg = insertelement <4 x double> poison, double %i.ju, i64 0
  %i.kh = shufflevector <4 x double> %i.kg, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ki = fmul reassoc nsz arcp contract afn <4 x double> %i.kf, %i.kh
  %i.kj = load <4 x double>, ptr %i.jw, align 8, !tbaa !33
  %i.kk = fadd reassoc nsz arcp contract afn <4 x double> %i.kj, %i.ki ; 2 uses
  store <4 x double> %i.kk, ptr %i.jw, align 8, !tbaa !33
  %i.kl = load <4 x double>, ptr %i.cj, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.kn = load double, ptr %i.cv, align 16, !tbaa !33
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 8 uses
  %i.kp = load double, ptr %i.dk, align 8, !tbaa !33
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 9 uses
  %i.kr = load double, ptr %i.dw, align 16, !tbaa !33
  %i.ks = insertelement <4 x double> %i.kl, double %i.kn, i64 1
  %i.kt = insertelement <4 x double> %i.ks, double %i.kp, i64 2
  %i.ku = insertelement <4 x double> %i.kt, double %i.kr, i64 3
  %i.kv = fmul reassoc nsz arcp contract afn <4 x double> %i.ku, %i.kh
  %i.kw = load <4 x double>, ptr %i.km, align 8, !tbaa !33
  %i.kx = fadd reassoc nsz arcp contract afn <4 x double> %i.kw, %i.kv
  store <4 x double> %i.kx, ptr %i.km, align 8, !tbaa !33
  %i.ky = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !34
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.la ; 2 uses
  %i.lc = load double, ptr %i.lb, align 8, !tbaa !33 ; 5 uses
  %i.ld = extractelement <4 x double> %i.kk, i64 0
  store double %i.ld, ptr %i.lb, align 8, !tbaa !33
  store double %i.lc, ptr %i.jw, align 8, !tbaa !33
  %i.le = load <4 x double>, ptr %i.ay, align 8
  %i.lf = load double, ptr %i.bl, align 16, !tbaa !33
  %i.lg = load double, ptr %i.bw, align 8, !tbaa !33
  %i.lh = load double, ptr %i.ck, align 16, !tbaa !33
  %i.li = insertelement <4 x double> %i.le, double %i.lf, i64 1
  %i.lj = insertelement <4 x double> %i.li, double %i.lg, i64 2
  %i.lk = insertelement <4 x double> %i.lj, double %i.lh, i64 3
  %i.ll = insertelement <4 x double> poison, double %i.lc, i64 0
  %i.lm = shufflevector <4 x double> %i.ll, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ln = fmul reassoc nsz arcp contract afn <4 x double> %i.lk, %i.lm
  %i.lo = load <4 x double>, ptr %i.jy, align 16, !tbaa !33
  %i.lp = fadd reassoc nsz arcp contract afn <4 x double> %i.lo, %i.ln ; 2 uses
  store <4 x double> %i.lp, ptr %i.jy, align 16, !tbaa !33
  %i.lq = load double, ptr %i.cw, align 8, !tbaa !33
  %i.lr = fmul reassoc nsz arcp contract afn double %i.lq, %i.lc
  %i.ls = load double, ptr %i.ko, align 16, !tbaa !33
  %i.lt = fadd reassoc nsz arcp contract afn double %i.ls, %i.lr
  store double %i.lt, ptr %i.ko, align 16, !tbaa !33
  %i.lu = load double, ptr %i.dl, align 16, !tbaa !33
  %i.lv = fmul reassoc nsz arcp contract afn double %i.lu, %i.lc
  %i.lw = load double, ptr %i.kq, align 8, !tbaa !33
  %i.lx = fadd reassoc nsz arcp contract afn double %i.lw, %i.lv
  store double %i.lx, ptr %i.kq, align 8, !tbaa !33
  %i.ly = load double, ptr %i.dx, align 8, !tbaa !33
  %i.lz = fmul reassoc nsz arcp contract afn double %i.ly, %i.lc
  %i.ma = load double, ptr %i.ef, align 16, !tbaa !33
  %i.mb = fadd reassoc nsz arcp contract afn double %i.ma, %i.lz
  store double %i.mb, ptr %i.ef, align 16, !tbaa !33
  %i.mc = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !34
  %i.me = sext i32 %i.md to i64
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.me ; 2 uses
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !33 ; 4 uses
  %i.mh = extractelement <4 x double> %i.lp, i64 0
  store double %i.mh, ptr %i.mf, align 8, !tbaa !33
  store double %i.mg, ptr %i.jy, align 16, !tbaa !33
  %i.mi = load <4 x double>, ptr %i.bm, align 8
  %i.mj = load double, ptr %i.ca, align 16, !tbaa !33
  %i.mk = load double, ptr %i.cl, align 8, !tbaa !33
  %i.ml = load double, ptr %i.da, align 16, !tbaa !33
  %i.mm = insertelement <4 x double> %i.mi, double %i.mj, i64 1
end_hunk_0
