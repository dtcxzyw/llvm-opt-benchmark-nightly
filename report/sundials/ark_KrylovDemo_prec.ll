Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_KrylovDemo_prec?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@main:bb.a
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !14
  %i.bb = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !16
  %i.bd = call ptr @N_VNew_Serial(i64 noundef 216, ptr noundef %i.am) #11
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 2432
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !20
  %i.bf = call ptr @N_VNew_Serial(i64 noundef 216, ptr noundef %i.am) #11
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 2424
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 336
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.bk, i8 0, i64 272, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 264
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 432
  store double -1.000000e+00, ptr %i.bh, align 8, !tbaa !22
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 504
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 552
  store <2 x double> splat (double 1.000000e+04), ptr %i.bj, align 8, !tbaa !22
  store <2 x double> splat (double -5.000000e-07), ptr %i.bl, align 8, !tbaa !22
  store <2 x double> splat (double 1.000000e+04), ptr %i.bm, align 8, !tbaa !22
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 248
  store <2 x double> splat (double -5.000000e-07), ptr %i.bn, align 8, !tbaa !22
  store <2 x double> splat (double 1.000000e+04), ptr %i.bo, align 8, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 320
  store double -1.000000e+00, ptr %i.br, align 8, !tbaa !22
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 416
  store double -1.000000e+00, ptr %i.bt, align 8, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 488
  store <2 x double> splat (double -1.000000e+00), ptr %i.bp, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 536
  store <2 x double> splat (double 5.000000e-01), ptr %i.bq, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 352
  store <2 x double> <double 1.000000e+04, double -1.000000e+00>, ptr %i.bw, align 8, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 232
  store double -5.000000e-07, ptr %i.bx, align 8, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 400
  store double 1.000000e+04, ptr %i.by, align 8, !tbaa !22
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 280
  store double -5.000000e-07, ptr %i.bz, align 8, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 448
  store double 1.000000e+04, ptr %i.ca, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 304
  store <2 x double> splat (double -5.000000e-07), ptr %i.bs, align 8, !tbaa !22
  store <2 x double> <double -1.000000e+00, double -5.000000e-07>, ptr %i.cb, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 472
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, ptr %i.cc, align 8, !tbaa !22
  store <2 x double> splat (double 1.000000e+00), ptr %i.bu, align 8, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 520
  store <2 x double> <double -1.000000e+00, double 1.000000e+00>, ptr %i.cd, align 8, !tbaa !22
  store <2 x double> splat (double 1.000000e+00), ptr %i.bv, align 8, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 568
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 68
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 672
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 680 ; 2 uses
  store <2 x double> <double 5.000000e-01, double f0x4038FFFFFFFFFFFF>, ptr %i.ce, align 8, !tbaa !22
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 584
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 632
  store <2 x double> splat (double f0x4038FFFFFFFFFFFF), ptr %i.ci, align 8, !tbaa !22
  store <2 x double> splat (double f0x4038FFFFFFFFFFFF), ptr %i.cj, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 600
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 648
  store <2 x double> splat (double f0x4028FFFFFFFFFFFF), ptr %i.ck, align 8, !tbaa !22
  store <2 x double> splat (double f0x4028FFFFFFFFFFFF), ptr %i.cl, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.an, i64 616
  store <2 x double> <double f0x4028FFFFFFFFFFFF, double f0x4038FFFFFFFFFFFF>, ptr %i.cm, align 8, !tbaa !22
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 664
  store <2 x double> <double f0x4028FFFFFFFFFFFF, double 2.000000e-01>, ptr %i.cn, align 8, !tbaa !22
  store <4 x i32> <i32 6, i32 36, i32 6, i32 36>, ptr %i.bi, align 8, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  store <2 x double> <double 2.000000e-01, double f0x3E50000000000000>, ptr %i.ch, align 8, !tbaa !22
  store <4 x i32> <i32 6, i32 6, i32 4, i32 2>, ptr %i.co, align 8, !tbaa !23
  %i.cp = getelementptr inbounds nuw i8, ptr %i.an, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 128
  store <4 x i32> <i32 2, i32 36, i32 0, i32 3>, ptr %i.cp, align 8, !tbaa !23
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cq, i8 0, i64 12, i1 false), !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 140
  store i32 1, ptr %i.cs, align 4, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  store i32 1, ptr %i.ct, align 8, !tbaa !23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 148
  store i32 1, ptr %i.cu, align 4, !tbaa !23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 180
  store i32 4, ptr %i.cv, align 4, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 152
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 184
  store <4 x i32> <i32 6, i32 0, i32 3, i32 6>, ptr %i.cr, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cw, i8 0, i64 12, i1 false), !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 164
  store <4 x i32> splat (i32 1), ptr %i.cy, align 4, !tbaa !23
  store i32 1, ptr %i.cx, align 8, !tbaa !23
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 188
  store i32 4, ptr %i.cz, align 4, !tbaa !23
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef 6) ; 0 uses
  %puts1.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, double noundef 1.000000e+00, double noundef 1.000000e+04, double noundef 5.000000e-07) ; 0 uses
  %i.dc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef 1.000000e+00) ; 0 uses
  %i.dd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, double noundef 1.000000e+00, double noundef 5.000000e-01) ; 0 uses
  %i.de = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef 1.000000e+00) ; 0 uses
  %i.df = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef 6, i32 noundef 6) ; 0 uses
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef 216) ; 0 uses
  %i.dh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, double noundef 1.000000e-05, double noundef 1.000000e-05) ; 0 uses
  %puts2.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.di = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28) ; 0 uses
  %i.dj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef 5) ; 0 uses
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) ; 0 uses
  %puts3.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, i32 noundef 4) ; 0 uses
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef 2, i32 noundef 2) ; 0 uses
  %i.dn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34) ; 0 uses
  %puts4.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.7) ; 0 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.an, i64 2440
  %switch.selectcmp = icmp eq i32 %.055, 2
  %switch.select = select i1 %switch.selectcmp, double -1.000000e+00, double 0.000000e+00
  %switch.selectcmp80 = icmp eq i32 %.055, 1
  %switch.select81 = select i1 %switch.selectcmp80, double f0x402D64D51E0DB1C6, double %switch.select
  br label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.at
  %i.dp = phi i1 [ true, %bb.e ], [ false, %bb.at ] ; 2 uses
  %exitcond315.not = phi i1 [ false, %bb.e ], [ true, %bb.at ]
  %.058257 = phi i32 [ 1, %bb.e ], [ 2, %bb.at ]
  %.059256 = phi ptr [ null, %bb.e ], [ %.2165, %bb.at ]
  %.str.37..str.38.i = select i1 %i.dp, ptr @.str.37, ptr @.str.38
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %PrintFinalStats.exit
  %i.dq = phi i1 [ true, %.preheader ], [ false, %PrintFinalStats.exit ] ; 2 uses
  %exitcond314.not = phi i1 [ false, %.preheader ], [ true, %PrintFinalStats.exit ]
  %.057255 = phi i32 [ 1, %.preheader ], [ 2, %PrintFinalStats.exit ]
  %.1254 = phi ptr [ %.059256, %.preheader ], [ %.2165, %PrintFinalStats.exit ] ; 3 uses
  %i.dr = call ptr @N_VGetArrayPointer(ptr noundef nonnull %i.ai) #11 ; 6 uses
  %i.ds = load i32, ptr %i.bi, align 8, !tbaa !24 ; 15 uses
  %i.dt = load double, ptr %i.ch, align 8, !tbaa !25
  %.not41.i = icmp slt i32 %i.ds, 1
  br i1 %.not41.i, label %CInit.exit, label %.split.preheader.i

.split.preheader.i:                               ; preds = %bb.f
  %i.du = load double, ptr %i.cg, align 8, !tbaa !26 ; 3 uses
  %i.dv = load i32, ptr %i.cf, align 4, !tbaa !27
  %i.dw = add nuw i32 %i.ds, 1
  %i.dx = zext nneg i32 %i.ds to i64              ; 5 uses
  %i.dy = sext i32 %i.dv to i64
  %wide.trip.count.i = zext i32 %i.dw to i64      ; 6 uses
  %i.dz = fsub double 1.000000e+00, %i.du
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.dr, i64 %i.dx
  %i.ea = insertelement <2 x double> poison, double %i.du, i64 0
  %i.eb = shufflevector <2 x double> %i.ea, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = fmul <2 x double> %i.eb, <double 0.000000e+00, double 2.000000e+00> ; 3 uses
  %i.ed = extractelement <2 x double> %i.ec, i64 0
  %i.ee = fsub double 1.000000e+00, %i.ed
  %i.ef = fmul <2 x double> %i.ec, splat (double 4.000000e+00) ; 2 uses
  %i.eg = extractelement <2 x double> %i.ef, i64 0
  %i.eh = fmul double %i.eg, %i.ee                ; 2 uses
  %i.ei = fmul ninf double %i.eh, %i.eh           ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.dx, 4
  %i.ej = getelementptr i8, ptr %i.dr, i64 %.idx.i
  %.idx57.i = mul nuw nsw i64 %i.dx, 24
  %i.ek = getelementptr i8, ptr %i.dr, i64 %.idx57.i
  %i.el = fmul <2 x double> %i.eb, <double 3.000000e+00, double 4.000000e+00> ; 3 uses
  %i.em = extractelement <2 x double> %i.el, i64 1 ; 2 uses
  %i.en = fmul double %i.em, %i.dz                ; 2 uses
  %i.eo = fmul double %i.en, %i.en                ; 2 uses
  %i.ep = shufflevector <2 x double> %i.ec, <2 x double> %i.el, <2 x i32> <i32 1, i32 2>
  %i.eq = fsub <2 x double> splat (double 1.000000e+00), %i.ep ; 2 uses
  %shift = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %i.eq ; 2 uses
  %foldExtExtBinop556 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop ; 2 uses
  %i.er = extractelement <2 x double> %foldExtExtBinop556, i64 0
  %i.es = fmul <2 x double> %i.el, splat (double 4.000000e+00) ; 2 uses
  %shift558 = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop559 = fmul <2 x double> %i.es, %shift558 ; 2 uses
  %foldExtExtBinop561 = fmul <2 x double> %foldExtExtBinop559, %foldExtExtBinop559 ; 2 uses
  %i.et = extractelement <2 x double> %foldExtExtBinop561, i64 0
  %i.eu = fsub double 1.000000e+00, %i.em
  %i.ev = extractelement <2 x double> %i.es, i64 1
  %i.ew = fmul double %i.ev, %i.eu                ; 2 uses
  %i.ex = fmul double %i.ew, %i.ew                ; 2 uses
  %.idx58.i = shl nuw nsw i64 %i.dx, 5
  %i.ey = getelementptr i8, ptr %i.dr, i64 %.idx58.i
  %i.ez = fmul double %i.du, 5.000000e+00         ; 2 uses
  %i.fa = fmul double %i.ez, 4.000000e+00
  %i.fb = fsub double 1.000000e+00, %i.ez
  %i.fc = fmul double %i.fa, %i.fb                ; 2 uses
  %i.fd = fmul double %i.fc, %i.fc                ; 2 uses
  %.idx59.i = mul nuw nsw i64 %i.dx, 40
  %i.fe = getelementptr i8, ptr %i.dr, i64 %.idx59.i
  %i.ff = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check539 = icmp ult i32 %i.ds, 4
  %n.vec541 = and i64 %i.ff, 2147483644           ; 3 uses
  %i.fg = or disjoint i64 %n.vec541, 1
  %broadcast.splatinsert544 = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat545 = shufflevector <2 x double> %broadcast.splatinsert544, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n553 = icmp eq i64 %n.vec541, %i.ff
  %2 = call ninf double @llvm.fabs.f64(double %i.ei)
  %i.fh = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check522 = icmp ult i32 %i.ds, 4
  %n.vec524 = and i64 %i.fh, 2147483644           ; 3 uses
  %i.fi = or disjoint i64 %n.vec524, 1
  %broadcast.splatinsert525 = insertelement <2 x double> poison, double %i.eo, i64 0
  %broadcast.splat526 = shufflevector <2 x double> %broadcast.splatinsert525, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n536 = icmp eq i64 %n.vec524, %i.fh
  %i.fj = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check505 = icmp ult i32 %i.ds, 4
  %n.vec507 = and i64 %i.fj, 2147483644           ; 3 uses
  %i.fk = or disjoint i64 %n.vec507, 1
  %broadcast.splat509 = shufflevector <2 x double> %foldExtExtBinop556, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n519 = icmp eq i64 %n.vec507, %i.fj
  %i.fl = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check488 = icmp ult i32 %i.ds, 4
  %n.vec490 = and i64 %i.fl, 2147483644           ; 3 uses
  %i.fm = or disjoint i64 %n.vec490, 1
  %broadcast.splat492 = shufflevector <2 x double> %foldExtExtBinop561, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n502 = icmp eq i64 %n.vec490, %i.fl
  %i.fn = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check471 = icmp ult i32 %i.ds, 4
  %n.vec473 = and i64 %i.fn, 2147483644           ; 3 uses
  %i.fo = or disjoint i64 %n.vec473, 1
  %broadcast.splatinsert474 = insertelement <2 x double> poison, double %i.ex, i64 0
  %broadcast.splat475 = shufflevector <2 x double> %broadcast.splatinsert474, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n485 = icmp eq i64 %n.vec473, %i.fn
  %i.fp = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ds, 4
  %n.vec = and i64 %i.fp, 2147483644              ; 3 uses
  %i.fq = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fd, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.fp
  br label %.split.i

.split.i:                                         ; preds = %._crit_edge.5.i, %.split.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.split.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.5.i ] ; 3 uses
  %i.fr = trunc nuw nsw i64 %indvars.iv53.i to i32
  %i.fs = uitofp nneg i32 %i.fr to double
  %i.ft = fmul double %i.dt, %i.fs                ; 2 uses
  %i.fu = fmul double %i.ft, 4.000000e+00
  %i.fv = fsub double 1.000000e+00, %i.ft
  %i.fw = fmul double %i.fu, %i.fv                ; 2 uses
  %i.fx = fmul double %i.fw, %i.fw                ; 12 uses
  %i.fy = mul nsw i64 %indvars.iv53.i, %i.dy      ; 6 uses
  %i.fz = getelementptr [8 x i8], ptr %i.dr, i64 %i.fy ; 2 uses
  br i1 %min.iters.check539, label %scalar.ph538.preheader, label %vector.ph540

vector.ph540:                                     ; preds = %.split.i
  %broadcast.splatinsert542 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat543 = shufflevector <2 x double> %broadcast.splatinsert542, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph540
  %index547 = phi i64 [ 0, %vector.ph540 ], [ %index.next550, %vector.body546 ] ; 2 uses
  %vec.ind548 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph540 ], [ %vec.ind.next551, %vector.body546 ] ; 3 uses
  %step.add549 = add <2 x i32> %vec.ind548, splat (i32 2)
  %i.ga = uitofp nneg <2 x i32> %vec.ind548 to <2 x double>
  %i.gb = uitofp nneg <2 x i32> %step.add549 to <2 x double>
  %i.gc = fmul ninf <2 x double> %broadcast.splat545, %i.ga
  %i.gd = fmul ninf <2 x double> %broadcast.splat545, %i.gb
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %broadcast.splat543, <2 x double> splat (double 1.000000e+01))
  %i.gf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gd, <2 x double> %broadcast.splat543, <2 x double> splat (double 1.000000e+01))
  %i.gg = getelementptr [8 x i8], ptr %i.fz, i64 %index547 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  store <2 x double> %i.ge, ptr %i.gg, align 8, !tbaa !22
  store <2 x double> %i.gf, ptr %i.gh, align 8, !tbaa !22
  %index.next550 = add nuw i64 %index547, 4       ; 2 uses
  %vec.ind.next551 = add <2 x i32> %vec.ind548, splat (i32 4)
  %i.gi = icmp eq i64 %index.next550, %n.vec541
  br i1 %i.gi, label %middle.block552, label %vector.body546, !llvm.loop !36

middle.block552:                                  ; preds = %vector.body546
  br i1 %cmp.n553, label %._crit_edge.i, label %scalar.ph538.preheader

scalar.ph538.preheader:                           ; preds = %.split.i, %middle.block552
  %indvars.iv.i.ph = phi i64 [ 1, %.split.i ], [ %i.fg, %middle.block552 ]
  %3 = call double @llvm.fmuladd.f64(double %2, double %i.fx, double 1.000000e+01)
  br label %scalar.ph538

scalar.ph538:                                     ; preds = %scalar.ph538.preheader, %scalar.ph538
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph538 ], [ %indvars.iv.i.ph, %scalar.ph538.preheader ] ; 2 uses
  %i.gj = getelementptr [8 x i8], ptr %i.fz, i64 %indvars.iv.i
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  store double %3, ptr %i.gk, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph538, !llvm.loop !37

._crit_edge.i:                                    ; preds = %scalar.ph538, %middle.block552
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.fy ; 2 uses
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.ph523

vector.ph523:                                     ; preds = %._crit_edge.i
  %broadcast.splatinsert527 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat528 = shufflevector <2 x double> %broadcast.splatinsert527, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph523
  %index530 = phi i64 [ 0, %vector.ph523 ], [ %index.next533, %vector.body529 ] ; 2 uses
  %vec.ind531 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph523 ], [ %vec.ind.next534, %vector.body529 ] ; 3 uses
  %step.add532 = add <2 x i32> %vec.ind531, splat (i32 2)
  %i.gl = uitofp nneg <2 x i32> %vec.ind531 to <2 x double>
  %i.gm = uitofp nneg <2 x i32> %step.add532 to <2 x double>
  %i.gn = fmul <2 x double> %broadcast.splat526, %i.gl
  %i.go = fmul <2 x double> %broadcast.splat526, %i.gm
  %i.gp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gn, <2 x double> %broadcast.splat528, <2 x double> splat (double 1.000000e+01))
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %broadcast.splat528, <2 x double> splat (double 1.000000e+01))
  %i.gr = getelementptr [8 x i8], ptr %gep.i, i64 %index530 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store <2 x double> %i.gp, ptr %i.gr, align 8, !tbaa !22
  store <2 x double> %i.gq, ptr %i.gs, align 8, !tbaa !22
  %index.next533 = add nuw i64 %index530, 4       ; 2 uses
  %vec.ind.next534 = add <2 x i32> %vec.ind531, splat (i32 4)
  %i.gt = icmp eq i64 %index.next533, %n.vec524
  br i1 %i.gt, label %middle.block535, label %vector.body529, !llvm.loop !38

middle.block535:                                  ; preds = %vector.body529
  br i1 %cmp.n536, label %._crit_edge.1.i, label %scalar.ph521.preheader

scalar.ph521.preheader:                           ; preds = %._crit_edge.i, %middle.block535
  %indvars.iv.1.i.ph = phi i64 [ 1, %._crit_edge.i ], [ %i.fi, %middle.block535 ]
  br label %scalar.ph521

scalar.ph521:                                     ; preds = %scalar.ph521.preheader, %scalar.ph521
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %scalar.ph521 ], [ %indvars.iv.1.i.ph, %scalar.ph521.preheader ] ; 3 uses
  %i.gu = trunc nuw nsw i64 %indvars.iv.1.i to i32
  %i.gv = uitofp nneg i32 %i.gu to double
  %i.gw = fmul double %i.eo, %i.gv
  %i.gx = call double @llvm.fmuladd.f64(double %i.gw, double %i.fx, double 1.000000e+01)
  %i.gy = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.1.i
  %i.gz = getelementptr i8, ptr %i.gy, i64 -8
  store double %i.gx, ptr %i.gz, align 8, !tbaa !22
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %._crit_edge.1.i, label %scalar.ph521, !llvm.loop !39

._crit_edge.1.i:                                  ; preds = %scalar.ph521, %middle.block535
  %i.ha = getelementptr [8 x i8], ptr %i.ej, i64 %i.fy ; 2 uses
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %._crit_edge.1.i
  %broadcast.splatinsert510 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat511 = shufflevector <2 x double> %broadcast.splatinsert510, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph506
  %index513 = phi i64 [ 0, %vector.ph506 ], [ %index.next516, %vector.body512 ] ; 2 uses
  %vec.ind514 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph506 ], [ %vec.ind.next517, %vector.body512 ] ; 3 uses
  %step.add515 = add <2 x i32> %vec.ind514, splat (i32 2)
  %i.hb = uitofp nneg <2 x i32> %vec.ind514 to <2 x double>
  %i.hc = uitofp nneg <2 x i32> %step.add515 to <2 x double>
  %i.hd = fmul <2 x double> %broadcast.splat509, %i.hb
  %i.he = fmul <2 x double> %broadcast.splat509, %i.hc
  %i.hf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hd, <2 x double> %broadcast.splat511, <2 x double> splat (double 1.000000e+01))
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %broadcast.splat511, <2 x double> splat (double 1.000000e+01))
  %i.hh = getelementptr [8 x i8], ptr %i.ha, i64 %index513 ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  store <2 x double> %i.hf, ptr %i.hh, align 8, !tbaa !22
  store <2 x double> %i.hg, ptr %i.hi, align 8, !tbaa !22
  %index.next516 = add nuw i64 %index513, 4       ; 2 uses
  %vec.ind.next517 = add <2 x i32> %vec.ind514, splat (i32 4)
  %i.hj = icmp eq i64 %index.next516, %n.vec507
  br i1 %i.hj, label %middle.block518, label %vector.body512, !llvm.loop !40

middle.block518:                                  ; preds = %vector.body512
  br i1 %cmp.n519, label %._crit_edge.2.i, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %._crit_edge.1.i, %middle.block518
  %indvars.iv.2.i.ph = phi i64 [ 1, %._crit_edge.1.i ], [ %i.fk, %middle.block518 ]
  br label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %scalar.ph504
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %scalar.ph504 ], [ %indvars.iv.2.i.ph, %scalar.ph504.preheader ] ; 3 uses
  %i.hk = trunc nuw nsw i64 %indvars.iv.2.i to i32
  %i.hl = uitofp nneg i32 %i.hk to double
  %i.hm = fmul double %i.er, %i.hl
  %i.hn = call double @llvm.fmuladd.f64(double %i.hm, double %i.fx, double 1.000000e+01)
  %i.ho = getelementptr [8 x i8], ptr %i.ha, i64 %indvars.iv.2.i
  %i.hp = getelementptr i8, ptr %i.ho, i64 -8
  store double %i.hn, ptr %i.hp, align 8, !tbaa !22
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.i
  br i1 %exitcond.2.not.i, label %._crit_edge.2.i, label %scalar.ph504, !llvm.loop !41

._crit_edge.2.i:                                  ; preds = %scalar.ph504, %middle.block518
  %i.hq = getelementptr [8 x i8], ptr %i.ek, i64 %i.fy ; 2 uses
  br i1 %min.iters.check488, label %scalar.ph487.preheader, label %vector.ph489

vector.ph489:                                     ; preds = %._crit_edge.2.i
  %broadcast.splatinsert493 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat494 = shufflevector <2 x double> %broadcast.splatinsert493, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph489
  %index496 = phi i64 [ 0, %vector.ph489 ], [ %index.next499, %vector.body495 ] ; 2 uses
  %vec.ind497 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph489 ], [ %vec.ind.next500, %vector.body495 ] ; 3 uses
  %step.add498 = add <2 x i32> %vec.ind497, splat (i32 2)
  %i.hr = uitofp nneg <2 x i32> %vec.ind497 to <2 x double>
  %i.hs = uitofp nneg <2 x i32> %step.add498 to <2 x double>
  %i.ht = fmul <2 x double> %broadcast.splat492, %i.hr
  %i.hu = fmul <2 x double> %broadcast.splat492, %i.hs
  %i.hv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %broadcast.splat494, <2 x double> splat (double 1.000000e+01))
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %broadcast.splat494, <2 x double> splat (double 1.000000e+01))
  %i.hx = getelementptr [8 x i8], ptr %i.hq, i64 %index496 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  store <2 x double> %i.hv, ptr %i.hx, align 8, !tbaa !22
  store <2 x double> %i.hw, ptr %i.hy, align 8, !tbaa !22
  %index.next499 = add nuw i64 %index496, 4       ; 2 uses
  %vec.ind.next500 = add <2 x i32> %vec.ind497, splat (i32 4)
  %i.hz = icmp eq i64 %index.next499, %n.vec490
  br i1 %i.hz, label %middle.block501, label %vector.body495, !llvm.loop !42

middle.block501:                                  ; preds = %vector.body495
  br i1 %cmp.n502, label %._crit_edge.3.i, label %scalar.ph487.preheader

scalar.ph487.preheader:                           ; preds = %._crit_edge.2.i, %middle.block501
  %indvars.iv.3.i.ph = phi i64 [ 1, %._crit_edge.2.i ], [ %i.fm, %middle.block501 ]
  br label %scalar.ph487

scalar.ph487:                                     ; preds = %scalar.ph487.preheader, %scalar.ph487
  %indvars.iv.3.i = phi i64 [ %indvars.iv.next.3.i, %scalar.ph487 ], [ %indvars.iv.3.i.ph, %scalar.ph487.preheader ] ; 3 uses
  %i.ia = trunc nuw nsw i64 %indvars.iv.3.i to i32
  %i.ib = uitofp nneg i32 %i.ia to double
  %i.ic = fmul double %i.et, %i.ib
  %i.id = call double @llvm.fmuladd.f64(double %i.ic, double %i.fx, double 1.000000e+01)
  %i.ie = getelementptr [8 x i8], ptr %i.hq, i64 %indvars.iv.3.i
  %i.if = getelementptr i8, ptr %i.ie, i64 -8
  store double %i.id, ptr %i.if, align 8, !tbaa !22
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.i
  br i1 %exitcond.3.not.i, label %._crit_edge.3.i, label %scalar.ph487, !llvm.loop !43

._crit_edge.3.i:                                  ; preds = %scalar.ph487, %middle.block501
  %i.ig = getelementptr [8 x i8], ptr %i.ey, i64 %i.fy ; 2 uses
  br i1 %min.iters.check471, label %scalar.ph470.preheader, label %vector.ph472

vector.ph472:                                     ; preds = %._crit_edge.3.i
  %broadcast.splatinsert476 = insertelement <2 x double> poison, double %i.fx, i64 0
  %broadcast.splat477 = shufflevector <2 x double> %broadcast.splatinsert476, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph472
  %index479 = phi i64 [ 0, %vector.ph472 ], [ %index.next482, %vector.body478 ] ; 2 uses
  %vec.ind480 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph472 ], [ %vec.ind.next483, %vector.body478 ] ; 3 uses
  %step.add481 = add <2 x i32> %vec.ind480, splat (i32 2)
  %i.ih = uitofp nneg <2 x i32> %vec.ind480 to <2 x double>
  %i.ii = uitofp nneg <2 x i32> %step.add481 to <2 x double>
  %i.ij = fmul <2 x double> %broadcast.splat475, %i.ih
  %i.ik = fmul <2 x double> %broadcast.splat475, %i.ii
  %i.il = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ij, <2 x double> %broadcast.splat477, <2 x double> splat (double 1.000000e+01))
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %broadcast.splat477, <2 x double> splat (double 1.000000e+01))
  %i.in = getelementptr [8 x i8], ptr %i.ig, i64 %index479 ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 16
  store <2 x double> %i.il, ptr %i.in, align 8, !tbaa !22
  store <2 x double> %i.im, ptr %i.io, align 8, !tbaa !22
  %index.next482 = add nuw i64 %index479, 4       ; 2 uses
  %vec.ind.next483 = add <2 x i32> %vec.ind480, splat (i32 4)
  %i.ip = icmp eq i64 %index.next482, %n.vec473
  br i1 %i.ip, label %middle.block484, label %vector.body478, !llvm.loop !44

middle.block484:                                  ; preds = %vector.body478
  br i1 %cmp.n485, label %._crit_edge.4.i, label %scalar.ph470.preheader

scalar.ph470.preheader:                           ; preds = %._crit_edge.3.i, %middle.block484
  %indvars.iv.4.i.ph = phi i64 [ 1, %._crit_edge.3.i ], [ %i.fo, %middle.block484 ]
  br label %scalar.ph470

scalar.ph470:                                     ; preds = %scalar.ph470.preheader, %scalar.ph470
  %indvars.iv.4.i = phi i64 [ %indvars.iv.next.4.i, %scalar.ph470 ], [ %indvars.iv.4.i.ph, %scalar.ph470.preheader ] ; 3 uses
  %i.iq = trunc nuw nsw i64 %indvars.iv.4.i to i32
  %i.ir = uitofp nneg i32 %i.iq to double
  %i.is = fmul double %i.ex, %i.ir
  %i.it = call double @llvm.fmuladd.f64(double %i.is, double %i.fx, double 1.000000e+01)
  %i.iu = getelementptr [8 x i8], ptr %i.ig, i64 %indvars.iv.4.i
  %i.iv = getelementptr i8, ptr %i.iu, i64 -8
  store double %i.it, ptr %i.iv, align 8, !tbaa !22
  %indvars.iv.next.4.i = add nuw nsw i64 %indvars.iv.4.i, 1 ; 2 uses
  %exitcond.4.not.i = icmp eq i64 %indvars.iv.next.4.i, %wide.trip.count.i
  br i1 %exitcond.4.not.i, label %._crit_edge.4.i, label %scalar.ph470, !llvm.loop !45

._crit_edge.4.i:                                  ; preds = %scalar.ph470, %middle.block484
  %i.iw = getelementptr [8 x i8], ptr %i.fe, i64 %i.fy ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

end_hunk_0
