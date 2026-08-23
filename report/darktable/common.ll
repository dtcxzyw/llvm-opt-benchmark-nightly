Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/common?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0
; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @get_homography(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [81 x double], align 16           ; 93 uses
  %i.b = alloca [9 x double], align 16            ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load float, ptr %1, align 4, !tbaa !11
  %i.g = fpext reassoc nsz arcp contract afn float %i.f to double ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !14
  %i.j = fpext reassoc nsz arcp contract afn float %i.i to double ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load float, ptr %i.k, align 4, !tbaa !11
  %i.m = fpext reassoc nsz arcp contract afn float %i.l to double ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load float, ptr %i.n, align 4, !tbaa !14
  %i.p = fpext reassoc nsz arcp contract afn float %i.o to double ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load float, ptr %i.q, align 4, !tbaa !11
  %i.s = fpext reassoc nsz arcp contract afn float %i.r to double ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !14
  %i.v = fpext reassoc nsz arcp contract afn float %i.u to double ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load float, ptr %i.w, align 4, !tbaa !11
  %i.y = fpext reassoc nsz arcp contract afn float %i.x to double ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aa = load float, ptr %i.z, align 4, !tbaa !14
  %i.ab = fpext reassoc nsz arcp contract afn float %i.aa to double ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load <2 x float>, ptr %0, align 4, !tbaa !15
  %i.ae = fpext <2 x float> %i.ad to <2 x double> ; 3 uses
  %i.af = fneg reassoc nsz arcp contract afn <2 x double> %i.ae ; 2 uses
  store <2 x double> %i.af, ptr %i.a, align 16, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double -1.000000e+00, ptr %i.ag, align 16, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.aj = insertelement <2 x double> poison, double %i.g, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul reassoc nsz arcp contract afn <2 x double> %i.ak, %i.ae
  store <2 x double> %i.al, ptr %i.ai, align 16, !tbaa !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %i.g, ptr %i.am, align 16, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store <2 x double> %i.af, ptr %i.aq, align 16, !tbaa !16
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  store double -1.000000e+00, ptr %i.as, align 16, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.au = insertelement <2 x double> poison, double %i.j, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fmul reassoc nsz arcp contract afn <2 x double> %i.av, %i.ae
  store <2 x double> %i.aw, ptr %i.at, align 8, !tbaa !16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store double %i.j, ptr %i.ax, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.ba = load <2 x float>, ptr %i.c, align 4, !tbaa !15
  %i.bb = fpext <2 x float> %i.ba to <2 x double> ; 3 uses
  %i.bc = fneg reassoc nsz arcp contract afn <2 x double> %i.bb ; 2 uses
  store <2 x double> %i.bc, ptr %i.ay, align 16, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  store double -1.000000e+00, ptr %i.bd, align 16, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  %i.bi = insertelement <2 x double> poison, double %i.m, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul reassoc nsz arcp contract afn <2 x double> %i.bj, %i.bb
  store <2 x double> %i.bk, ptr %i.bh, align 16, !tbaa !16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store double %i.m, ptr %i.bl, align 16, !tbaa !16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 216 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store <2 x double> %i.bc, ptr %i.bp, align 16, !tbaa !16
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  store double -1.000000e+00, ptr %i.br, align 16, !tbaa !16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.bt = insertelement <2 x double> poison, double %i.p, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul reassoc nsz arcp contract afn <2 x double> %i.bu, %i.bb
  store <2 x double> %i.bv, ptr %i.bs, align 8, !tbaa !16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store double %i.p, ptr %i.bw, align 8, !tbaa !16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 288 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.bz = load <2 x float>, ptr %i.d, align 4, !tbaa !15
  %i.ca = fpext <2 x float> %i.bz to <2 x double> ; 3 uses
  %i.cb = fneg reassoc nsz arcp contract afn <2 x double> %i.ca ; 2 uses
  store <2 x double> %i.cb, ptr %i.bx, align 16, !tbaa !16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  store double -1.000000e+00, ptr %i.cc, align 16, !tbaa !16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 312 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i8 0, i64 24, i1 false)
  %i.ch = insertelement <2 x double> poison, double %i.s, i64 0
  %i.ci = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fmul reassoc nsz arcp contract afn <2 x double> %i.ci, %i.ca
  store <2 x double> %i.cj, ptr %i.cg, align 16, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store double %i.s, ptr %i.ck, align 16, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 360 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i8 0, i64 24, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  store <2 x double> %i.cb, ptr %i.co, align 16, !tbaa !16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  store double -1.000000e+00, ptr %i.cq, align 16, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.ct = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cv = fmul reassoc nsz arcp contract afn <2 x double> %i.cu, %i.ca
  store <2 x double> %i.cv, ptr %i.cr, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 424 ; 2 uses
  store double %i.v, ptr %i.cw, align 8, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 432 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %i.cz = load <2 x float>, ptr %i.e, align 4, !tbaa !15
  %i.da = fpext <2 x float> %i.cz to <2 x double> ; 3 uses
  %i.db = fneg reassoc nsz arcp contract afn <2 x double> %i.da ; 2 uses
  store <2 x double> %i.db, ptr %i.cx, align 16, !tbaa !16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 448 ; 2 uses
  store double -1.000000e+00, ptr %i.dc, align 16, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i8 0, i64 24, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  %i.di = insertelement <2 x double> poison, double %i.y, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dk = fmul reassoc nsz arcp contract afn <2 x double> %i.dj, %i.da
  store <2 x double> %i.dk, ptr %i.dg, align 16, !tbaa !16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  store double %i.y, ptr %i.dl, align 16, !tbaa !16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 528 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i8 0, i64 24, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 536
  store <2 x double> %i.db, ptr %i.dp, align 16, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 544 ; 2 uses
  store double -1.000000e+00, ptr %i.dr, align 16, !tbaa !16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 552 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  %i.du = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul reassoc nsz arcp contract afn <2 x double> %i.dv, %i.da
  store <2 x double> %i.dw, ptr %i.ds, align 8, !tbaa !16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 568 ; 2 uses
  store double %i.ab, ptr %i.dx, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 576 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 600
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 616
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 640 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dy, i8 0, i64 64, i1 false)
  store double 1.000000e+00, ptr %i.eg, align 16, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 12 uses
  store double 1.000000e+00, ptr %i.eh, align 16, !tbaa !16
  %i.ei = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #10 ; 12 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  store i32 8, ptr %i.ej, align 4, !tbaa !18
  %scevgep88 = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %scevgep100 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  br label %bb.b

.loopexit.i.i:                                    ; preds = %._crit_edge120.i.i, %.preheader110.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond145.not.i.i = icmp eq i64 %indvars.iv.next143.i.i, 9
  br i1 %exitcond145.not.i.i, label %gauss_solve.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i, %bb.a
  %indvars.iv142.i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next143.i.i, %.loopexit.i.i ] ; 17 uses
  %indvars.iv.i.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.i, %.loopexit.i.i ] ; 18 uses
  %i.ek = sub nsw i64 8, %indvars.iv142.i.i       ; 3 uses
  %i.el = sub nsw i64 8, %indvars.iv142.i.i       ; 3 uses
  %i.em = shl nuw nsw i64 %indvars.iv.i.i, 3
  %scevgep98 = getelementptr nuw i8, ptr %i.a, i64 %i.em
  %i.en = mul nuw nsw i64 %indvars.iv142.i.i, 80
  %i.eo = getelementptr nuw i8, ptr %i.a, i64 %i.en
  %scevgep102 = getelementptr nuw i8, ptr %i.eo, i64 8
  %i.ep = mul nuw nsw i64 %indvars.iv.i.i, 72
  %scevgep103 = getelementptr nuw i8, ptr %i.a, i64 %i.ep
  %i.eq = sub nsw i64 8, %indvars.iv142.i.i       ; 3 uses
  %i.er = mul nuw nsw i64 %indvars.iv.i.i, 80
  %i.es = getelementptr i8, ptr %i.a, i64 %i.er   ; 2 uses
  %3 = mul nuw nsw i64 %indvars.iv142.i.i, 80     ; 2 uses
  %i.et = getelementptr i8, ptr %i.a, i64 %3
  %scevgep89 = getelementptr i8, ptr %i.et, i64 72
  %i.eu = shl nuw nsw i64 %indvars.iv142.i.i, 3
  %i.ev = getelementptr i8, ptr %i.a, i64 %i.eu
  %scevgep90 = getelementptr i8, ptr %i.ev, i64 584
  %i.ew = mul nuw nsw i64 %indvars.iv.i.i, 72
  %scevgep92 = getelementptr nuw i8, ptr %i.a, i64 %i.ew
  %indvars.iv.next143.i.i = add nuw nsw i64 %indvars.iv142.i.i, 1 ; 2 uses
  %i.ex = icmp samesign ult i64 %indvars.iv142.i.i, 8 ; 2 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv142.i.i to i32 ; 3 uses
  br i1 %i.ex, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.ez = sub nsw i64 0, %indvars.iv142.i.i
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv142.i.i ; 10 uses
  %xtraiter = and i64 %i.ez, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv123.i.i.prol = phi i64 [ %indvars.iv.next124.i.i.prol, %.lr.ph.i.i.prol ], [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %.0100111.i.i.prol = phi i32 [ %.1101.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ey, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %.idx.i.i.prol = mul nuw nsw i64 %indvars.iv123.i.i.prol, 72
  %gep.i.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.prol
  %i.fa = load double, ptr %gep.i.i.prol, align 8, !tbaa !16
  %i.fb = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.fa)
  %i.fc = mul nuw nsw i32 %.0100111.i.i.prol, 9
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.fd
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !16
  %i.fg = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.ff)
  %i.fh = fcmp reassoc nsz arcp contract afn ogt double %i.fb, %i.fg
  %i.fi = trunc nuw nsw i64 %indvars.iv123.i.i.prol to i32
  %.1101.i.i.prol = select i1 %i.fh, i32 %i.fi, i32 %.0100111.i.i.prol ; 3 uses
  %indvars.iv.next124.i.i.prol = add nuw nsw i64 %indvars.iv123.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !19

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %.1101.i.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i.i ], [ %.1101.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv123.i.i.unr = phi i64 [ %indvars.iv.i.i, %.lr.ph.preheader.i.i ], [ %indvars.iv.next124.i.i.prol, %.lr.ph.i.i.prol ]
  %.0100111.i.i.unr = phi i32 [ %i.ey, %.lr.ph.preheader.i.i ], [ %.1101.i.i.prol, %.lr.ph.i.i.prol ]
  %i.fj = icmp ugt i64 %indvars.iv142.i.i, 4
  br i1 %i.fj, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.0100.lcssa.i.i = phi i32 [ %i.ey, %bb.b ], [ %.1101.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.1101.i.i.3, %.lr.ph.i.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv142.i.i
  store i32 %.0100.lcssa.i.i, ptr %i.fk, align 4, !tbaa !18
  %i.fl = mul nuw nsw i32 %.0100.lcssa.i.i, 9
  %i.fm = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv142.i.i ; 4 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm ; 2 uses
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !16 ; 4 uses
  %i.fq = mul nuw nsw i64 %indvars.iv142.i.i, 9   ; 2 uses
  %.idx146.i.i = mul nuw nsw i64 %indvars.iv142.i.i, 80
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx146.i.i ; 2 uses
  %i.fs = load double, ptr %i.fr, align 16, !tbaa !16
  store double %i.fs, ptr %i.fo, align 8, !tbaa !16
  store double %i.fp, ptr %i.fr, align 16, !tbaa !16
  %i.ft = fcmp reassoc nsz arcp contract afn une double %i.fp, 0.000000e+00
  br i1 %i.ft, label %.preheader110.i.i, label %gauss_solve.exit.thread

gauss_solve.exit.thread:                          ; preds = %._crit_edge.i.i
  tail call void @free(ptr noundef nonnull %i.ei) #9
  br label %.loopexit

.preheader110.i.i:                                ; preds = %._crit_edge.i.i
  br i1 %i.ex, label %.lr.ph114.i.i.preheader, label %.loopexit.i.i

.lr.ph114.i.i.preheader:                          ; preds = %.preheader110.i.i
  %min.iters.check120 = icmp ult i64 %i.ek, 4
  br i1 %min.iters.check120, label %.lr.ph114.i.i.preheader138, label %vector.ph121

vector.ph121:                                     ; preds = %.lr.ph114.i.i.preheader
  %n.vec122 = and i64 %i.ek, 12                   ; 3 uses
  %i.fu = add nuw i64 %indvars.iv.i.i, %n.vec122
  %broadcast.splatinsert123 = insertelement <4 x double> poison, double %i.fp, i64 0
  %broadcast.splat124 = shufflevector <4 x double> %broadcast.splatinsert123, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <4 x i64> poison, i64 %indvars.iv.i.i, i64 0
  %broadcast.splat126 = shufflevector <4 x i64> %broadcast.splatinsert125, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nuw nsw <4 x i64> %broadcast.splat126, <i64 0, i64 1, i64 2, i64 3>
  %i.fv = fdiv reassoc nsz arcp contract afn <4 x double> splat (double 1.000000e+00), %broadcast.splat124
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph121
  %index128 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body127 ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph121 ], [ %vec.ind.next, %vector.body127 ] ; 2 uses
  %i.fw = mul nuw nsw <4 x i64> %vec.ind, splat (i64 72)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.fn, <4 x i64> %i.fw ; 2 uses
  %wide.masked.gather = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !16
  %i.fx = fneg reassoc nsz arcp contract afn <4 x double> %wide.masked.gather
  %i.fy = fmul reassoc nsz arcp contract afn <4 x double> %i.fx, %i.fv
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.fy, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !16
  %index.next129 = add nuw i64 %index128, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.fz = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.fz, label %middle.block130, label %vector.body127, !llvm.loop !21

middle.block130:                                  ; preds = %vector.body127
  %cmp.n131 = icmp eq i64 %i.ek, %n.vec122
  br i1 %cmp.n131, label %._crit_edge115.i.i, label %.lr.ph114.i.i.preheader138

.lr.ph114.i.i.preheader138:                       ; preds = %.lr.ph114.i.i.preheader, %middle.block130
  %indvars.iv126.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph114.i.i.preheader ], [ %i.fu, %middle.block130 ]
  %i.ga = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.fp
  br label %.lr.ph114.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv123.i.i = phi i64 [ %indvars.iv.next124.i.i.3, %.lr.ph.i.i ], [ %indvars.iv123.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %.0100111.i.i = phi i32 [ %.1101.i.i.3, %.lr.ph.i.i ], [ %.0100111.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %indvars.iv123.i.i, 72
  %gep.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i
  %i.gb = load double, ptr %gep.i.i, align 8, !tbaa !16
  %i.gc = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gb)
  %i.gd = mul nuw nsw i32 %.0100111.i.i, 9
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !16
  %i.gh = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gg)
  %i.gi = fcmp reassoc nsz arcp contract afn ogt double %i.gc, %i.gh
  %i.gj = trunc nuw nsw i64 %indvars.iv123.i.i to i32
  %.1101.i.i = select i1 %i.gi, i32 %i.gj, i32 %.0100111.i.i ; 2 uses
  %indvars.iv.next124.i.i = add nuw nsw i64 %indvars.iv123.i.i, 1 ; 2 uses
  %.idx.i.i.1 = mul nuw nsw i64 %indvars.iv.next124.i.i, 72
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.1
  %i.gk = load double, ptr %gep.i.i.1, align 8, !tbaa !16
  %i.gl = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gk)
  %i.gm = mul nuw nsw i32 %.1101.i.i, 9
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gn
  %i.gp = load double, ptr %i.go, align 8, !tbaa !16
  %i.gq = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gp)
  %i.gr = fcmp reassoc nsz arcp contract afn ogt double %i.gl, %i.gq
  %i.gs = trunc nuw nsw i64 %indvars.iv.next124.i.i to i32
  %.1101.i.i.1 = select i1 %i.gr, i32 %i.gs, i32 %.1101.i.i ; 2 uses
  %indvars.iv.next124.i.i.1 = add nuw nsw i64 %indvars.iv123.i.i, 2 ; 2 uses
  %.idx.i.i.2 = mul nuw nsw i64 %indvars.iv.next124.i.i.1, 72
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.2
  %i.gt = load double, ptr %gep.i.i.2, align 8, !tbaa !16
  %i.gu = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gt)
  %i.gv = mul nuw nsw i32 %.1101.i.i.1, 9
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.gw
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !16
  %i.gz = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.gy)
  %i.ha = fcmp reassoc nsz arcp contract afn ogt double %i.gu, %i.gz
  %i.hb = trunc nuw nsw i64 %indvars.iv.next124.i.i.1 to i32
  %.1101.i.i.2 = select i1 %i.ha, i32 %i.hb, i32 %.1101.i.i.1 ; 2 uses
  %indvars.iv.next124.i.i.2 = add nuw nsw i64 %indvars.iv123.i.i, 3 ; 2 uses
  %.idx.i.i.3 = mul nuw nsw i64 %indvars.iv.next124.i.i.2, 72
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i.i, i64 %.idx.i.i.3
  %i.hc = load double, ptr %gep.i.i.3, align 8, !tbaa !16
  %i.hd = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.hc)
  %i.he = mul nuw nsw i32 %.1101.i.i.2, 9
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %i.hf
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !16
  %i.hi = tail call reassoc nsz arcp contract afn double @llvm.fabs.f64(double %i.hh)
  %i.hj = fcmp reassoc nsz arcp contract afn ogt double %i.hd, %i.hi
  %i.hk = trunc nuw nsw i64 %indvars.iv.next124.i.i.2 to i32
  %.1101.i.i.3 = select i1 %i.hj, i32 %i.hk, i32 %.1101.i.i.2 ; 2 uses
  %indvars.iv.next124.i.i.3 = add nuw nsw i64 %indvars.iv123.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next124.i.i.3, 9
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge115.i.i:                               ; preds = %.lr.ph114.i.i, %middle.block130
  %i.hl = zext i32 %.0100.lcssa.i.i to i64        ; 2 uses
  %.not.not.i.i = icmp eq i64 %indvars.iv142.i.i, %i.hl
  br i1 %.not.not.i.i, label %.preheader.preheader.i.i, label %.lr.ph117.preheader.i.i

.lr.ph117.preheader.i.i:                          ; preds = %._crit_edge115.i.i
  %invariant.gep152.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fm ; 6 uses
  %invariant.gep154.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fq ; 6 uses
  %min.iters.check108 = icmp ult i64 %i.el, 4
  br i1 %min.iters.check108, label %.lr.ph117.i.i.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %.lr.ph117.preheader.i.i
  %i.hm = mul nuw nsw i64 %i.hl, 72               ; 2 uses
  %scevgep99 = getelementptr i8, ptr %scevgep98, i64 %i.hm
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.hm
  %bound0104 = icmp ult ptr %scevgep99, %scevgep103
  %bound1105 = icmp ult ptr %scevgep102, %scevgep101
  %found.conflict106 = and i1 %bound0104, %bound1105
  br i1 %found.conflict106, label %.lr.ph117.i.i.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %vector.memcheck97
  %n.vec110 = and i64 %i.el, 12                   ; 3 uses
  %i.hn = add nuw i64 %indvars.iv.i.i, %n.vec110
  br label %vector.body111

vector.body111:                                   ; preds = %vector.body111, %vector.ph109
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next115, %vector.body111 ] ; 2 uses
  %i.ho = add nuw i64 %indvars.iv.i.i, %index112  ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i, i64 %i.ho ; 2 uses
  %wide.load113 = load <4 x double>, ptr %i.hp, align 8, !tbaa !16, !alias.scope !24, !noalias !27
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i, i64 %i.ho ; 2 uses
  %wide.load114 = load <4 x double>, ptr %i.hq, align 8, !tbaa !16, !alias.scope !27
  store <4 x double> %wide.load114, ptr %i.hp, align 8, !tbaa !16, !alias.scope !24, !noalias !27
  store <4 x double> %wide.load113, ptr %i.hq, align 8, !tbaa !16, !alias.scope !27
  %index.next115 = add nuw i64 %index112, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.hr, label %middle.block116, label %vector.body111, !llvm.loop !29

middle.block116:                                  ; preds = %vector.body111
  %cmp.n117 = icmp eq i64 %i.el, %n.vec110
  br i1 %cmp.n117, label %.preheader.preheader.i.i, label %.lr.ph117.i.i.preheader

.lr.ph117.i.i.preheader:                          ; preds = %vector.memcheck97, %.lr.ph117.preheader.i.i, %middle.block116
  %indvars.iv130.i.i.ph = phi i64 [ %indvars.iv.i.i, %vector.memcheck97 ], [ %indvars.iv.i.i, %.lr.ph117.preheader.i.i ], [ %i.hn, %middle.block116 ] ; 4 uses
  %i.hs = sub i64 1, %indvars.iv130.i.i.ph
  %xtraiter139 = and i64 %i.hs, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph117.i.i.prol.loopexit, label %.lr.ph117.i.i.prol

.lr.ph117.i.i.prol:                               ; preds = %.lr.ph117.i.i.preheader, %.lr.ph117.i.i.prol
  %indvars.iv130.i.i.prol = phi i64 [ %indvars.iv.next131.i.i.prol, %.lr.ph117.i.i.prol ], [ %indvars.iv130.i.i.ph, %.lr.ph117.i.i.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph117.i.i.prol ], [ 0, %.lr.ph117.i.i.preheader ]
  %gep153.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i, i64 %indvars.iv130.i.i.prol ; 2 uses
  %i.ht = load double, ptr %gep153.i.i.prol, align 8, !tbaa !16
  %gep155.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i, i64 %indvars.iv130.i.i.prol ; 2 uses
  %i.hu = load double, ptr %gep155.i.i.prol, align 8, !tbaa !16
  store double %i.hu, ptr %gep153.i.i.prol, align 8, !tbaa !16
  store double %i.ht, ptr %gep155.i.i.prol, align 8, !tbaa !16
  %indvars.iv.next131.i.i.prol = add nuw nsw i64 %indvars.iv130.i.i.prol, 1 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph117.i.i.prol.loopexit, label %.lr.ph117.i.i.prol, !llvm.loop !30

.lr.ph117.i.i.prol.loopexit:                      ; preds = %.lr.ph117.i.i.prol, %.lr.ph117.i.i.preheader
  %indvars.iv130.i.i.unr = phi i64 [ %indvars.iv130.i.i.ph, %.lr.ph117.i.i.preheader ], [ %indvars.iv.next131.i.i.prol, %.lr.ph117.i.i.prol ]
  %i.hv = add i64 %indvars.iv130.i.i.ph, -6
  %i.hw = icmp ult i64 %i.hv, 3
  br i1 %i.hw, label %.preheader.preheader.i.i, label %.lr.ph117.i.i

.lr.ph114.i.i:                                    ; preds = %.lr.ph114.i.i.preheader138, %.lr.ph114.i.i
  %indvars.iv126.i.i = phi i64 [ %indvars.iv.next127.i.i, %.lr.ph114.i.i ], [ %indvars.iv126.i.i.ph, %.lr.ph114.i.i.preheader138 ] ; 2 uses
  %.idx147.i.i = mul nuw nsw i64 %indvars.iv126.i.i, 72
  %gep151.i.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.idx147.i.i ; 2 uses
  %i.hx = load double, ptr %gep151.i.i, align 8, !tbaa !16
  %i.hy = fneg reassoc nsz arcp contract afn double %i.hx
  %i.hz = fmul reassoc nsz arcp contract afn double %i.hy, %i.ga
  store double %i.hz, ptr %gep151.i.i, align 8, !tbaa !16
  %indvars.iv.next127.i.i = add nuw nsw i64 %indvars.iv126.i.i, 1 ; 2 uses
  %exitcond129.not.i.i = icmp eq i64 %indvars.iv.next127.i.i, 9
  br i1 %exitcond129.not.i.i, label %._crit_edge115.i.i, label %.lr.ph114.i.i, !llvm.loop !31

.lr.ph117.i.i:                                    ; preds = %.lr.ph117.i.i.prol.loopexit, %.lr.ph117.i.i
  %indvars.iv130.i.i = phi i64 [ %indvars.iv.next131.i.i.3, %.lr.ph117.i.i ], [ %indvars.iv130.i.i.unr, %.lr.ph117.i.i.prol.loopexit ] ; 6 uses
  %gep153.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i, i64 %indvars.iv130.i.i ; 2 uses
  %i.ia = load double, ptr %gep153.i.i, align 8, !tbaa !16
  %gep155.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i, i64 %indvars.iv130.i.i ; 2 uses
  %i.ib = load double, ptr %gep155.i.i, align 8, !tbaa !16
  store double %i.ib, ptr %gep153.i.i, align 8, !tbaa !16
  store double %i.ia, ptr %gep155.i.i, align 8, !tbaa !16
  %indvars.iv.next131.i.i = add nuw nsw i64 %indvars.iv130.i.i, 1 ; 2 uses
  %gep153.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i, i64 %indvars.iv.next131.i.i ; 2 uses
  %i.ic = load double, ptr %gep153.i.i.1, align 8, !tbaa !16
  %gep155.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i, i64 %indvars.iv.next131.i.i ; 2 uses
  %i.id = load double, ptr %gep155.i.i.1, align 8, !tbaa !16
  store double %i.id, ptr %gep153.i.i.1, align 8, !tbaa !16
  store double %i.ic, ptr %gep155.i.i.1, align 8, !tbaa !16
  %indvars.iv.next131.i.i.1 = add nuw nsw i64 %indvars.iv130.i.i, 2 ; 2 uses
  %gep153.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i, i64 %indvars.iv.next131.i.i.1 ; 2 uses
  %i.ie = load double, ptr %gep153.i.i.2, align 8, !tbaa !16
  %gep155.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i, i64 %indvars.iv.next131.i.i.1 ; 2 uses
  %i.if = load double, ptr %gep155.i.i.2, align 8, !tbaa !16
  store double %i.if, ptr %gep153.i.i.2, align 8, !tbaa !16
  store double %i.ie, ptr %gep155.i.i.2, align 8, !tbaa !16
  %indvars.iv.next131.i.i.2 = add nuw nsw i64 %indvars.iv130.i.i, 3 ; 2 uses
  %gep153.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep152.i.i, i64 %indvars.iv.next131.i.i.2 ; 2 uses
  %i.ig = load double, ptr %gep153.i.i.3, align 8, !tbaa !16
  %gep155.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep154.i.i, i64 %indvars.iv.next131.i.i.2 ; 2 uses
  %i.ih = load double, ptr %gep155.i.i.3, align 8, !tbaa !16
  store double %i.ih, ptr %gep153.i.i.3, align 8, !tbaa !16
  store double %i.ig, ptr %gep155.i.i.3, align 8, !tbaa !16
  %indvars.iv.next131.i.i.3 = add nuw nsw i64 %indvars.iv130.i.i, 4 ; 2 uses
  %exitcond133.not.i.i.3 = icmp eq i64 %indvars.iv.next131.i.i.3, 9
  br i1 %exitcond133.not.i.i.3, label %.preheader.preheader.i.i, label %.lr.ph117.i.i, !llvm.loop !32

.preheader.preheader.i.i:                         ; preds = %.lr.ph117.i.i.prol.loopexit, %.lr.ph117.i.i, %middle.block116, %._crit_edge115.i.i
  %invariant.gep156.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fq ; 6 uses
  %min.iters.check = icmp ult i64 %i.eq, 4
  %bound0 = icmp ult ptr %i.es, %scevgep90
  %bound1 = icmp ult ptr %scevgep89, %scevgep88
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %i.es, %scevgep92
  %bound194 = icmp ult i64 %3, 640
  %found.conflict95 = and i1 %bound093, %bound194
  %conflict.rdx = or i1 %found.conflict, %found.conflict95
  %n.vec = and i64 %i.eq, 12                      ; 3 uses
  %i.ii = add nuw i64 %indvars.iv.i.i, %n.vec
  %cmp.n = icmp eq i64 %i.eq, %n.vec
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge120.i.i, %.preheader.preheader.i.i
  %indvars.iv138.i.i = phi i64 [ %indvars.iv.i.i, %.preheader.preheader.i.i ], [ %indvars.iv.next139.i.i, %._crit_edge120.i.i ] ; 2 uses
  %i.ij = mul nuw nsw i64 %indvars.iv138.i.i, 9   ; 2 uses
  %gep161.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.ij ; 6 uses
  %invariant.gep158.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ij ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i
  %i.ik = load double, ptr %gep161.i.i, align 8, !tbaa !16, !alias.scope !33
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ik, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.il = add nuw i64 %indvars.iv.i.i, %index     ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i, i64 %i.il
  %wide.load = load <4 x double>, ptr %i.im, align 8, !tbaa !16, !alias.scope !36
  %i.in = fmul reassoc nsz arcp contract afn <4 x double> %wide.load, %broadcast.splat
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i, i64 %i.il ; 2 uses
  %wide.load96 = load <4 x double>, ptr %i.io, align 8, !tbaa !16, !alias.scope !38, !noalias !40
  %i.ip = fadd reassoc nsz arcp contract afn <4 x double> %wide.load96, %i.in
  store <4 x double> %i.ip, ptr %i.io, align 8, !tbaa !16, !alias.scope !38, !noalias !40
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge120.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i, %middle.block
  %indvars.iv134.i.i.ph = phi i64 [ %i.ii, %middle.block ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 4 uses
  %i.ir = sub i64 1, %indvars.iv134.i.i.ph
  %xtraiter142 = and i64 %i.ir, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv134.i.i.prol = phi i64 [ %indvars.iv.next135.i.i.prol, %scalar.ph.prol ], [ %indvars.iv134.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.is = load double, ptr %gep161.i.i, align 8, !tbaa !16
  %gep157.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i, i64 %indvars.iv134.i.i.prol
  %i.it = load double, ptr %gep157.i.i.prol, align 8, !tbaa !16
  %i.iu = fmul reassoc nsz arcp contract afn double %i.it, %i.is
  %gep159.i.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i, i64 %indvars.iv134.i.i.prol ; 2 uses
  %i.iv = load double, ptr %gep159.i.i.prol, align 8, !tbaa !16
  %i.iw = fadd reassoc nsz arcp contract afn double %i.iv, %i.iu
  store double %i.iw, ptr %gep159.i.i.prol, align 8, !tbaa !16
  %indvars.iv.next135.i.i.prol = add nuw nsw i64 %indvars.iv134.i.i.prol, 1 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !42

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv134.i.i.unr = phi i64 [ %indvars.iv134.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next135.i.i.prol, %scalar.ph.prol ]
  %i.ix = add i64 %indvars.iv134.i.i.ph, -6
  %i.iy = icmp ult i64 %i.ix, 3
  br i1 %i.iy, label %._crit_edge120.i.i, label %scalar.ph

._crit_edge120.i.i:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next139.i.i = add nuw nsw i64 %indvars.iv138.i.i, 1 ; 2 uses
  %exitcond141.not.i.i = icmp eq i64 %indvars.iv.next139.i.i, 9
  br i1 %exitcond141.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv134.i.i = phi i64 [ %indvars.iv.next135.i.i.3, %scalar.ph ], [ %indvars.iv134.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.iz = load double, ptr %gep161.i.i, align 8, !tbaa !16
  %gep157.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i, i64 %indvars.iv134.i.i
  %i.ja = load double, ptr %gep157.i.i, align 8, !tbaa !16
  %i.jb = fmul reassoc nsz arcp contract afn double %i.ja, %i.iz
  %gep159.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i, i64 %indvars.iv134.i.i ; 2 uses
  %i.jc = load double, ptr %gep159.i.i, align 8, !tbaa !16
  %i.jd = fadd reassoc nsz arcp contract afn double %i.jc, %i.jb
  store double %i.jd, ptr %gep159.i.i, align 8, !tbaa !16
  %indvars.iv.next135.i.i = add nuw nsw i64 %indvars.iv134.i.i, 1 ; 2 uses
  %i.je = load double, ptr %gep161.i.i, align 8, !tbaa !16
  %gep157.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i, i64 %indvars.iv.next135.i.i
  %i.jf = load double, ptr %gep157.i.i.1, align 8, !tbaa !16
  %i.jg = fmul reassoc nsz arcp contract afn double %i.jf, %i.je
  %gep159.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i, i64 %indvars.iv.next135.i.i ; 2 uses
  %i.jh = load double, ptr %gep159.i.i.1, align 8, !tbaa !16
  %i.ji = fadd reassoc nsz arcp contract afn double %i.jh, %i.jg
  store double %i.ji, ptr %gep159.i.i.1, align 8, !tbaa !16
  %indvars.iv.next135.i.i.1 = add nuw nsw i64 %indvars.iv134.i.i, 2 ; 2 uses
  %i.jj = load double, ptr %gep161.i.i, align 8, !tbaa !16
  %gep157.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i, i64 %indvars.iv.next135.i.i.1
  %i.jk = load double, ptr %gep157.i.i.2, align 8, !tbaa !16
  %i.jl = fmul reassoc nsz arcp contract afn double %i.jk, %i.jj
  %gep159.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i, i64 %indvars.iv.next135.i.i.1 ; 2 uses
  %i.jm = load double, ptr %gep159.i.i.2, align 8, !tbaa !16
  %i.jn = fadd reassoc nsz arcp contract afn double %i.jm, %i.jl
  store double %i.jn, ptr %gep159.i.i.2, align 8, !tbaa !16
  %indvars.iv.next135.i.i.2 = add nuw nsw i64 %indvars.iv134.i.i, 3 ; 2 uses
  %i.jo = load double, ptr %gep161.i.i, align 8, !tbaa !16
  %gep157.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep156.i.i, i64 %indvars.iv.next135.i.i.2
  %i.jp = load double, ptr %gep157.i.i.3, align 8, !tbaa !16
  %i.jq = fmul reassoc nsz arcp contract afn double %i.jp, %i.jo
  %gep159.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep158.i.i, i64 %indvars.iv.next135.i.i.2 ; 2 uses
  %i.jr = load double, ptr %gep159.i.i.3, align 8, !tbaa !16
  %i.js = fadd reassoc nsz arcp contract afn double %i.jr, %i.jq
  store double %i.js, ptr %gep159.i.i.3, align 8, !tbaa !16
  %indvars.iv.next135.i.i.3 = add nuw nsw i64 %indvars.iv134.i.i, 4 ; 2 uses
  %exitcond137.not.i.i.3 = icmp eq i64 %indvars.iv.next135.i.i.3, 9
  br i1 %exitcond137.not.i.i.3, label %._crit_edge120.i.i, label %scalar.ph, !llvm.loop !43

gauss_solve.exit:                                 ; preds = %.loopexit.i.i
  %i.jt = load i32, ptr %i.ei, align 4, !tbaa !18
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ju ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !16 ; 2 uses
  store double 0.000000e+00, ptr %i.jv, align 8, !tbaa !16
  store double %i.jw, ptr %i.b, align 16, !tbaa !16
  %i.jx = load <4 x double>, ptr %i.an, align 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.jz = load double, ptr %i.ay, align 16, !tbaa !16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.kb = load double, ptr %i.bm, align 8, !tbaa !16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.kd = load double, ptr %i.bx, align 16, !tbaa !16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.kf = insertelement <4 x double> %i.jx, double %i.jz, i64 1
  %i.kg = insertelement <4 x double> %i.kf, double %i.kb, i64 2
  %i.kh = insertelement <4 x double> %i.kg, double %i.kd, i64 3
  %i.ki = insertelement <4 x double> poison, double %i.jw, i64 0
  %i.kj = shufflevector <4 x double> %i.ki, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kk = fmul reassoc nsz arcp contract afn <4 x double> %i.kh, %i.kj
  %i.kl = load <4 x double>, ptr %i.jy, align 8, !tbaa !16
  %i.km = fadd reassoc nsz arcp contract afn <4 x double> %i.kl, %i.kk ; 2 uses
  store <4 x double> %i.km, ptr %i.jy, align 8, !tbaa !16
  %i.kn = load <4 x double>, ptr %i.cl, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 6 uses
  %i.kp = load double, ptr %i.cx, align 16, !tbaa !16
  %i.kq = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 8 uses
  %i.kr = load double, ptr %i.dm, align 8, !tbaa !16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 9 uses
  %i.kt = load double, ptr %i.dy, align 16, !tbaa !16
  %i.ku = insertelement <4 x double> %i.kn, double %i.kp, i64 1
  %i.kv = insertelement <4 x double> %i.ku, double %i.kr, i64 2
  %i.kw = insertelement <4 x double> %i.kv, double %i.kt, i64 3
  %i.kx = fmul reassoc nsz arcp contract afn <4 x double> %i.kw, %i.kj
  %i.ky = load <4 x double>, ptr %i.ko, align 8, !tbaa !16
  %i.kz = fadd reassoc nsz arcp contract afn <4 x double> %i.ky, %i.kx
  store <4 x double> %i.kz, ptr %i.ko, align 8, !tbaa !16
  %i.la = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !18
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.lc ; 2 uses
  %i.le = load double, ptr %i.ld, align 8, !tbaa !16 ; 5 uses
  %i.lf = extractelement <4 x double> %i.km, i64 0
  store double %i.lf, ptr %i.ld, align 8, !tbaa !16
  store double %i.le, ptr %i.jy, align 8, !tbaa !16
  %i.lg = load <4 x double>, ptr %i.az, align 8
  %i.lh = load double, ptr %i.bn, align 16, !tbaa !16
  %i.li = load double, ptr %i.by, align 8, !tbaa !16
  %i.lj = load double, ptr %i.cm, align 16, !tbaa !16
  %i.lk = insertelement <4 x double> %i.lg, double %i.lh, i64 1
  %i.ll = insertelement <4 x double> %i.lk, double %i.li, i64 2
  %i.lm = insertelement <4 x double> %i.ll, double %i.lj, i64 3
  %i.ln = insertelement <4 x double> poison, double %i.le, i64 0
  %i.lo = shufflevector <4 x double> %i.ln, <4 x double> poison, <4 x i32> zeroinitializer
  %i.lp = fmul reassoc nsz arcp contract afn <4 x double> %i.lm, %i.lo
  %i.lq = load <4 x double>, ptr %i.ka, align 16, !tbaa !16
  %i.lr = fadd reassoc nsz arcp contract afn <4 x double> %i.lq, %i.lp ; 2 uses
  store <4 x double> %i.lr, ptr %i.ka, align 16, !tbaa !16
  %i.ls = load double, ptr %i.cy, align 8, !tbaa !16
  %i.lt = fmul reassoc nsz arcp contract afn double %i.ls, %i.le
  %i.lu = load double, ptr %i.kq, align 16, !tbaa !16
  %i.lv = fadd reassoc nsz arcp contract afn double %i.lu, %i.lt
  store double %i.lv, ptr %i.kq, align 16, !tbaa !16
  %i.lw = load double, ptr %i.dn, align 16, !tbaa !16
  %i.lx = fmul reassoc nsz arcp contract afn double %i.lw, %i.le
  %i.ly = load double, ptr %i.ks, align 8, !tbaa !16
  %i.lz = fadd reassoc nsz arcp contract afn double %i.ly, %i.lx
  store double %i.lz, ptr %i.ks, align 8, !tbaa !16
  %i.ma = load double, ptr %i.dz, align 8, !tbaa !16
  %i.mb = fmul reassoc nsz arcp contract afn double %i.ma, %i.le
  %i.mc = load double, ptr %i.eh, align 16, !tbaa !16
  %i.md = fadd reassoc nsz arcp contract afn double %i.mc, %i.mb
  store double %i.md, ptr %i.eh, align 16, !tbaa !16
  %i.me = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !18
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.mg ; 2 uses
  %i.mi = load double, ptr %i.mh, align 8, !tbaa !16 ; 4 uses
  %i.mj = extractelement <4 x double> %i.lr, i64 0
  store double %i.mj, ptr %i.mh, align 8, !tbaa !16
  store double %i.mi, ptr %i.ka, align 16, !tbaa !16
  %i.mk = load <4 x double>, ptr %i.bo, align 8
  %i.ml = load double, ptr %i.cc, align 16, !tbaa !16
  %i.mm = load double, ptr %i.cn, align 8, !tbaa !16
  %i.mn = load double, ptr %i.dc, align 16, !tbaa !16
  %i.mo = insertelement <4 x double> %i.mk, double %i.ml, i64 1
end_hunk_0
