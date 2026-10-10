Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_KrylovDemo_prec?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@main:bb.a
  store ptr null, ptr %i.w, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #11
  %i.y = call i32 @SUNContext_Create(i32 noundef 0, ptr noundef nonnull %i.x) #11 ; 2 uses
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %check_flag.exit, label %bb.b

check_flag.exit:                                  ; preds = %bb.a
  %i.aa = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ab = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aa, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str, i32 noundef %i.y) #12 ; 0 uses
  br label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.ac = icmp sgt i32 %0, 1
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = call i64 @strtol(ptr noundef nonnull captures(none) %i.ae, ptr noundef null, i32 noundef 10) #11, !inline_history !35
  %i.ag = trunc i64 %i.af to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.055 = phi i32 [ %i.ag, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.ai = call ptr @N_VNew_Serial(i64 noundef 216, ptr noundef %i.ah) #11 ; 9 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %check_flag.exit84, label %bb.e

check_flag.exit84:                                ; preds = %bb.d
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.al = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ak, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.av

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !52  ; 2 uses
  %i.an = call noalias dereferenceable_or_null(2448) ptr @malloc(i64 noundef 2448) #13 ; 58 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #11
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !14
  %i.aq = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #11
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !16
  %i.ar = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #11
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !14
  %i.at = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #11
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store ptr %i.at, ptr %i.au, align 8, !tbaa !16
  %i.av = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #11
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !14
  %i.ax = call ptr @SUNDlsMat_newIndexArray(i64 noundef 6) #11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !16
  %i.az = call ptr @SUNDlsMat_newDenseMat(i64 noundef 6, i64 noundef 6) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 24
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
  %2 = fsub double 1.000000e+00, %i.du
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.dr, i64 %i.dx
  %3 = insertelement <2 x double> poison, double %i.du, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %5 = fmul <2 x double> %4, <double 0.000000e+00, double 2.000000e+00> ; 3 uses
  %6 = extractelement <2 x double> %5, i64 0
  %i.dz = fsub double 1.000000e+00, %6
  %7 = fmul <2 x double> %5, splat (double 4.000000e+00) ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %i.ea = fmul double %8, %i.dz                   ; 2 uses
  %i.eb = fmul ninf double %i.ea, %i.ea           ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.dx, 4
  %9 = getelementptr i8, ptr %i.dr, i64 %.idx.i
  %.idx57.i = mul nuw nsw i64 %i.dx, 24
  %10 = getelementptr i8, ptr %i.dr, i64 %.idx57.i
  %11 = fmul <2 x double> %4, <double 3.000000e+00, double 4.000000e+00> ; 3 uses
  %12 = extractelement <2 x double> %11, i64 1    ; 2 uses
  %i.ec = fmul double %12, %2                     ; 2 uses
  %i.ed = fmul double %i.ec, %i.ec                ; 2 uses
  %13 = shufflevector <2 x double> %5, <2 x double> %11, <2 x i32> <i32 1, i32 2>
  %14 = fsub <2 x double> splat (double 1.000000e+00), %13 ; 2 uses
  %shift = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %shift, %14 ; 2 uses
  %foldExtExtBinop556 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop ; 2 uses
  %15 = extractelement <2 x double> %foldExtExtBinop556, i64 0
  %16 = fmul <2 x double> %11, splat (double 4.000000e+00) ; 2 uses
  %shift558 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop559 = fmul <2 x double> %16, %shift558 ; 2 uses
  %foldExtExtBinop561 = fmul <2 x double> %foldExtExtBinop559, %foldExtExtBinop559 ; 2 uses
  %17 = extractelement <2 x double> %foldExtExtBinop561, i64 0
  %i.ee = fsub double 1.000000e+00, %12
  %18 = extractelement <2 x double> %16, i64 1
  %i.ef = fmul double %18, %i.ee                  ; 2 uses
  %i.eg = fmul double %i.ef, %i.ef                ; 2 uses
  %.idx58.i = shl nuw nsw i64 %i.dx, 5
  %i.eh = getelementptr i8, ptr %i.dr, i64 %.idx58.i
  %i.ei = fmul double %i.du, 5.000000e+00         ; 2 uses
  %i.ej = fmul double %i.ei, 4.000000e+00
  %i.ek = fsub double 1.000000e+00, %i.ei
  %i.el = fmul double %i.ej, %i.ek                ; 2 uses
  %i.em = fmul double %i.el, %i.el                ; 2 uses
  %.idx59.i = mul nuw nsw i64 %i.dx, 40
  %i.en = getelementptr i8, ptr %i.dr, i64 %.idx59.i
  %i.eo = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check539 = icmp ult i32 %i.ds, 4
  %n.vec541 = and i64 %i.eo, 2147483644           ; 3 uses
  %i.ep = or disjoint i64 %n.vec541, 1
  %broadcast.splatinsert544 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat545 = shufflevector <2 x double> %broadcast.splatinsert544, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n553 = icmp eq i64 %n.vec541, %i.eo
  %i.eq = call ninf double @llvm.fabs.f64(double %i.eb)
  %i.er = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check522 = icmp ult i32 %i.ds, 4
  %n.vec524 = and i64 %i.er, 2147483644           ; 3 uses
  %i.es = or disjoint i64 %n.vec524, 1
  %broadcast.splatinsert525 = insertelement <2 x double> poison, double %i.ed, i64 0
  %broadcast.splat526 = shufflevector <2 x double> %broadcast.splatinsert525, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n536 = icmp eq i64 %n.vec524, %i.er
  %i.et = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check505 = icmp ult i32 %i.ds, 4
  %n.vec507 = and i64 %i.et, 2147483644           ; 3 uses
  %i.eu = or disjoint i64 %n.vec507, 1
  %broadcast.splat509 = shufflevector <2 x double> %foldExtExtBinop556, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n519 = icmp eq i64 %n.vec507, %i.et
  %i.ev = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check488 = icmp ult i32 %i.ds, 4
  %n.vec490 = and i64 %i.ev, 2147483644           ; 3 uses
  %i.ew = or disjoint i64 %n.vec490, 1
  %broadcast.splat492 = shufflevector <2 x double> %foldExtExtBinop561, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n502 = icmp eq i64 %n.vec490, %i.ev
  %i.ex = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check471 = icmp ult i32 %i.ds, 4
  %n.vec473 = and i64 %i.ex, 2147483644           ; 3 uses
  %i.ey = or disjoint i64 %n.vec473, 1
  %broadcast.splatinsert474 = insertelement <2 x double> poison, double %i.eg, i64 0
  %broadcast.splat475 = shufflevector <2 x double> %broadcast.splatinsert474, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n485 = icmp eq i64 %n.vec473, %i.ex
  %i.ez = zext nneg i32 %i.ds to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ds, 4
  %n.vec = and i64 %i.ez, 2147483644              ; 3 uses
  %i.fa = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.em, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ez
  br label %.split.i

.split.i:                                         ; preds = %._crit_edge.5.i, %.split.preheader.i
  %indvars.iv53.i = phi i64 [ 0, %.split.preheader.i ], [ %indvars.iv.next54.i, %._crit_edge.5.i ] ; 3 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv53.i to i32
  %i.fc = uitofp nneg i32 %i.fb to double
  %i.fd = fmul double %i.dt, %i.fc                ; 2 uses
  %i.fe = fmul double %i.fd, 4.000000e+00
  %i.ff = fsub double 1.000000e+00, %i.fd
  %i.fg = fmul double %i.fe, %i.ff                ; 2 uses
  %i.fh = fmul double %i.fg, %i.fg                ; 12 uses
  %i.fi = mul nsw i64 %indvars.iv53.i, %i.dy      ; 6 uses
  %i.fj = getelementptr [8 x i8], ptr %i.dr, i64 %i.fi ; 2 uses
  br i1 %min.iters.check539, label %scalar.ph538.preheader, label %vector.ph540

vector.ph540:                                     ; preds = %.split.i
  %broadcast.splatinsert542 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat543 = shufflevector <2 x double> %broadcast.splatinsert542, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body546

vector.body546:                                   ; preds = %vector.body546, %vector.ph540
  %index547 = phi i64 [ 0, %vector.ph540 ], [ %index.next550, %vector.body546 ] ; 2 uses
  %vec.ind548 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph540 ], [ %vec.ind.next551, %vector.body546 ] ; 3 uses
  %step.add549 = add <2 x i32> %vec.ind548, splat (i32 2)
  %i.fk = uitofp nneg <2 x i32> %vec.ind548 to <2 x double>
  %i.fl = uitofp nneg <2 x i32> %step.add549 to <2 x double>
  %i.fm = fmul ninf <2 x double> %broadcast.splat545, %i.fk
  %i.fn = fmul ninf <2 x double> %broadcast.splat545, %i.fl
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %broadcast.splat543, <2 x double> splat (double 1.000000e+01))
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %broadcast.splat543, <2 x double> splat (double 1.000000e+01))
  %i.fq = getelementptr [8 x i8], ptr %i.fj, i64 %index547 ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 16
  store <2 x double> %i.fo, ptr %i.fq, align 8, !tbaa !22
  store <2 x double> %i.fp, ptr %i.fr, align 8, !tbaa !22
  %index.next550 = add nuw i64 %index547, 4       ; 2 uses
  %vec.ind.next551 = add <2 x i32> %vec.ind548, splat (i32 4)
  %i.fs = icmp eq i64 %index.next550, %n.vec541
  br i1 %i.fs, label %middle.block552, label %vector.body546, !llvm.loop !36

middle.block552:                                  ; preds = %vector.body546
  br i1 %cmp.n553, label %._crit_edge.i, label %scalar.ph538.preheader

scalar.ph538.preheader:                           ; preds = %.split.i, %middle.block552
  %indvars.iv.i.ph = phi i64 [ 1, %.split.i ], [ %i.ep, %middle.block552 ]
  %i.ft = call double @llvm.fmuladd.f64(double %i.eq, double %i.fh, double 1.000000e+01)
  br label %scalar.ph538

scalar.ph538:                                     ; preds = %scalar.ph538.preheader, %scalar.ph538
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph538 ], [ %indvars.iv.i.ph, %scalar.ph538.preheader ] ; 2 uses
  %i.fu = getelementptr [8 x i8], ptr %i.fj, i64 %indvars.iv.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 -8
  store double %i.ft, ptr %i.fv, align 8, !tbaa !22
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph538, !llvm.loop !37

._crit_edge.i:                                    ; preds = %scalar.ph538, %middle.block552
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.fi ; 2 uses
  br i1 %min.iters.check522, label %scalar.ph521.preheader, label %vector.ph523

vector.ph523:                                     ; preds = %._crit_edge.i
  %broadcast.splatinsert527 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat528 = shufflevector <2 x double> %broadcast.splatinsert527, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body529

vector.body529:                                   ; preds = %vector.body529, %vector.ph523
  %index530 = phi i64 [ 0, %vector.ph523 ], [ %index.next533, %vector.body529 ] ; 2 uses
  %vec.ind531 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph523 ], [ %vec.ind.next534, %vector.body529 ] ; 3 uses
  %step.add532 = add <2 x i32> %vec.ind531, splat (i32 2)
  %i.fw = uitofp nneg <2 x i32> %vec.ind531 to <2 x double>
  %i.fx = uitofp nneg <2 x i32> %step.add532 to <2 x double>
  %i.fy = fmul <2 x double> %broadcast.splat526, %i.fw
  %i.fz = fmul <2 x double> %broadcast.splat526, %i.fx
  %i.ga = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %broadcast.splat528, <2 x double> splat (double 1.000000e+01))
  %i.gb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %broadcast.splat528, <2 x double> splat (double 1.000000e+01))
  %i.gc = getelementptr [8 x i8], ptr %gep.i, i64 %index530 ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 16
  store <2 x double> %i.ga, ptr %i.gc, align 8, !tbaa !22
  store <2 x double> %i.gb, ptr %i.gd, align 8, !tbaa !22
  %index.next533 = add nuw i64 %index530, 4       ; 2 uses
  %vec.ind.next534 = add <2 x i32> %vec.ind531, splat (i32 4)
  %i.ge = icmp eq i64 %index.next533, %n.vec524
  br i1 %i.ge, label %middle.block535, label %vector.body529, !llvm.loop !38

middle.block535:                                  ; preds = %vector.body529
  br i1 %cmp.n536, label %._crit_edge.1.i, label %scalar.ph521.preheader

scalar.ph521.preheader:                           ; preds = %._crit_edge.i, %middle.block535
  %indvars.iv.1.i.ph = phi i64 [ 1, %._crit_edge.i ], [ %i.es, %middle.block535 ]
  br label %scalar.ph521

scalar.ph521:                                     ; preds = %scalar.ph521.preheader, %scalar.ph521
  %indvars.iv.1.i = phi i64 [ %indvars.iv.next.1.i, %scalar.ph521 ], [ %indvars.iv.1.i.ph, %scalar.ph521.preheader ] ; 3 uses
  %i.gf = trunc nuw nsw i64 %indvars.iv.1.i to i32
  %i.gg = uitofp nneg i32 %i.gf to double
  %i.gh = fmul double %i.ed, %i.gg
  %i.gi = call double @llvm.fmuladd.f64(double %i.gh, double %i.fh, double 1.000000e+01)
  %i.gj = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.1.i
  %i.gk = getelementptr i8, ptr %i.gj, i64 -8
  store double %i.gi, ptr %i.gk, align 8, !tbaa !22
  %indvars.iv.next.1.i = add nuw nsw i64 %indvars.iv.1.i, 1 ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %indvars.iv.next.1.i, %wide.trip.count.i
  br i1 %exitcond.1.not.i, label %._crit_edge.1.i, label %scalar.ph521, !llvm.loop !39

._crit_edge.1.i:                                  ; preds = %scalar.ph521, %middle.block535
  %i.gl = getelementptr [8 x i8], ptr %9, i64 %i.fi ; 2 uses
  br i1 %min.iters.check505, label %scalar.ph504.preheader, label %vector.ph506

vector.ph506:                                     ; preds = %._crit_edge.1.i
  %broadcast.splatinsert510 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat511 = shufflevector <2 x double> %broadcast.splatinsert510, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph506
  %index513 = phi i64 [ 0, %vector.ph506 ], [ %index.next516, %vector.body512 ] ; 2 uses
  %vec.ind514 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph506 ], [ %vec.ind.next517, %vector.body512 ] ; 3 uses
  %step.add515 = add <2 x i32> %vec.ind514, splat (i32 2)
  %i.gm = uitofp nneg <2 x i32> %vec.ind514 to <2 x double>
  %i.gn = uitofp nneg <2 x i32> %step.add515 to <2 x double>
  %i.go = fmul <2 x double> %broadcast.splat509, %i.gm
  %i.gp = fmul <2 x double> %broadcast.splat509, %i.gn
  %i.gq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %broadcast.splat511, <2 x double> splat (double 1.000000e+01))
  %i.gr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %broadcast.splat511, <2 x double> splat (double 1.000000e+01))
  %i.gs = getelementptr [8 x i8], ptr %i.gl, i64 %index513 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  store <2 x double> %i.gq, ptr %i.gs, align 8, !tbaa !22
  store <2 x double> %i.gr, ptr %i.gt, align 8, !tbaa !22
  %index.next516 = add nuw i64 %index513, 4       ; 2 uses
  %vec.ind.next517 = add <2 x i32> %vec.ind514, splat (i32 4)
  %i.gu = icmp eq i64 %index.next516, %n.vec507
  br i1 %i.gu, label %middle.block518, label %vector.body512, !llvm.loop !40

middle.block518:                                  ; preds = %vector.body512
  br i1 %cmp.n519, label %._crit_edge.2.i, label %scalar.ph504.preheader

scalar.ph504.preheader:                           ; preds = %._crit_edge.1.i, %middle.block518
  %indvars.iv.2.i.ph = phi i64 [ 1, %._crit_edge.1.i ], [ %i.eu, %middle.block518 ]
  br label %scalar.ph504

scalar.ph504:                                     ; preds = %scalar.ph504.preheader, %scalar.ph504
  %indvars.iv.2.i = phi i64 [ %indvars.iv.next.2.i, %scalar.ph504 ], [ %indvars.iv.2.i.ph, %scalar.ph504.preheader ] ; 3 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv.2.i to i32
  %i.gw = uitofp nneg i32 %i.gv to double
  %i.gx = fmul double %15, %i.gw
  %i.gy = call double @llvm.fmuladd.f64(double %i.gx, double %i.fh, double 1.000000e+01)
  %i.gz = getelementptr [8 x i8], ptr %i.gl, i64 %indvars.iv.2.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 -8
  store double %i.gy, ptr %i.ha, align 8, !tbaa !22
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %exitcond.2.not.i = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.i
  br i1 %exitcond.2.not.i, label %._crit_edge.2.i, label %scalar.ph504, !llvm.loop !41

._crit_edge.2.i:                                  ; preds = %scalar.ph504, %middle.block518
  %i.hb = getelementptr [8 x i8], ptr %10, i64 %i.fi ; 2 uses
  br i1 %min.iters.check488, label %scalar.ph487.preheader, label %vector.ph489

vector.ph489:                                     ; preds = %._crit_edge.2.i
  %broadcast.splatinsert493 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat494 = shufflevector <2 x double> %broadcast.splatinsert493, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body495

vector.body495:                                   ; preds = %vector.body495, %vector.ph489
  %index496 = phi i64 [ 0, %vector.ph489 ], [ %index.next499, %vector.body495 ] ; 2 uses
  %vec.ind497 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph489 ], [ %vec.ind.next500, %vector.body495 ] ; 3 uses
  %step.add498 = add <2 x i32> %vec.ind497, splat (i32 2)
  %i.hc = uitofp nneg <2 x i32> %vec.ind497 to <2 x double>
  %i.hd = uitofp nneg <2 x i32> %step.add498 to <2 x double>
  %i.he = fmul <2 x double> %broadcast.splat492, %i.hc
  %i.hf = fmul <2 x double> %broadcast.splat492, %i.hd
  %i.hg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> %broadcast.splat494, <2 x double> splat (double 1.000000e+01))
  %i.hh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hf, <2 x double> %broadcast.splat494, <2 x double> splat (double 1.000000e+01))
  %i.hi = getelementptr [8 x i8], ptr %i.hb, i64 %index496 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 16
  store <2 x double> %i.hg, ptr %i.hi, align 8, !tbaa !22
  store <2 x double> %i.hh, ptr %i.hj, align 8, !tbaa !22
  %index.next499 = add nuw i64 %index496, 4       ; 2 uses
  %vec.ind.next500 = add <2 x i32> %vec.ind497, splat (i32 4)
  %i.hk = icmp eq i64 %index.next499, %n.vec490
  br i1 %i.hk, label %middle.block501, label %vector.body495, !llvm.loop !42

middle.block501:                                  ; preds = %vector.body495
  br i1 %cmp.n502, label %._crit_edge.3.i, label %scalar.ph487.preheader

scalar.ph487.preheader:                           ; preds = %._crit_edge.2.i, %middle.block501
  %indvars.iv.3.i.ph = phi i64 [ 1, %._crit_edge.2.i ], [ %i.ew, %middle.block501 ]
  br label %scalar.ph487

scalar.ph487:                                     ; preds = %scalar.ph487.preheader, %scalar.ph487
  %indvars.iv.3.i = phi i64 [ %indvars.iv.next.3.i, %scalar.ph487 ], [ %indvars.iv.3.i.ph, %scalar.ph487.preheader ] ; 3 uses
  %i.hl = trunc nuw nsw i64 %indvars.iv.3.i to i32
  %i.hm = uitofp nneg i32 %i.hl to double
  %i.hn = fmul double %17, %i.hm
  %i.ho = call double @llvm.fmuladd.f64(double %i.hn, double %i.fh, double 1.000000e+01)
  %i.hp = getelementptr [8 x i8], ptr %i.hb, i64 %indvars.iv.3.i
  %i.hq = getelementptr i8, ptr %i.hp, i64 -8
  store double %i.ho, ptr %i.hq, align 8, !tbaa !22
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.i
  br i1 %exitcond.3.not.i, label %._crit_edge.3.i, label %scalar.ph487, !llvm.loop !43

._crit_edge.3.i:                                  ; preds = %scalar.ph487, %middle.block501
  %i.hr = getelementptr [8 x i8], ptr %i.eh, i64 %i.fi ; 2 uses
  br i1 %min.iters.check471, label %scalar.ph470.preheader, label %vector.ph472

vector.ph472:                                     ; preds = %._crit_edge.3.i
  %broadcast.splatinsert476 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat477 = shufflevector <2 x double> %broadcast.splatinsert476, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body478

vector.body478:                                   ; preds = %vector.body478, %vector.ph472
  %index479 = phi i64 [ 0, %vector.ph472 ], [ %index.next482, %vector.body478 ] ; 2 uses
  %vec.ind480 = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph472 ], [ %vec.ind.next483, %vector.body478 ] ; 3 uses
  %step.add481 = add <2 x i32> %vec.ind480, splat (i32 2)
  %i.hs = uitofp nneg <2 x i32> %vec.ind480 to <2 x double>
  %i.ht = uitofp nneg <2 x i32> %step.add481 to <2 x double>
  %i.hu = fmul <2 x double> %broadcast.splat475, %i.hs
  %i.hv = fmul <2 x double> %broadcast.splat475, %i.ht
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hu, <2 x double> %broadcast.splat477, <2 x double> splat (double 1.000000e+01))
  %i.hx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %broadcast.splat477, <2 x double> splat (double 1.000000e+01))
  %i.hy = getelementptr [8 x i8], ptr %i.hr, i64 %index479 ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 16
  store <2 x double> %i.hw, ptr %i.hy, align 8, !tbaa !22
  store <2 x double> %i.hx, ptr %i.hz, align 8, !tbaa !22
  %index.next482 = add nuw i64 %index479, 4       ; 2 uses
  %vec.ind.next483 = add <2 x i32> %vec.ind480, splat (i32 4)
  %i.ia = icmp eq i64 %index.next482, %n.vec473
  br i1 %i.ia, label %middle.block484, label %vector.body478, !llvm.loop !44

middle.block484:                                  ; preds = %vector.body478
  br i1 %cmp.n485, label %._crit_edge.4.i, label %scalar.ph470.preheader

scalar.ph470.preheader:                           ; preds = %._crit_edge.3.i, %middle.block484
  %indvars.iv.4.i.ph = phi i64 [ 1, %._crit_edge.3.i ], [ %i.ey, %middle.block484 ]
  br label %scalar.ph470

scalar.ph470:                                     ; preds = %scalar.ph470.preheader, %scalar.ph470
  %indvars.iv.4.i = phi i64 [ %indvars.iv.next.4.i, %scalar.ph470 ], [ %indvars.iv.4.i.ph, %scalar.ph470.preheader ] ; 3 uses
  %i.ib = trunc nuw nsw i64 %indvars.iv.4.i to i32
  %i.ic = uitofp nneg i32 %i.ib to double
  %i.id = fmul double %i.eg, %i.ic
  %i.ie = call double @llvm.fmuladd.f64(double %i.id, double %i.fh, double 1.000000e+01)
  %i.if = getelementptr [8 x i8], ptr %i.hr, i64 %indvars.iv.4.i
  %i.ig = getelementptr i8, ptr %i.if, i64 -8
  store double %i.ie, ptr %i.ig, align 8, !tbaa !22
  %indvars.iv.next.4.i = add nuw nsw i64 %indvars.iv.4.i, 1 ; 2 uses
  %exitcond.4.not.i = icmp eq i64 %indvars.iv.next.4.i, %wide.trip.count.i
  br i1 %exitcond.4.not.i, label %._crit_edge.4.i, label %scalar.ph470, !llvm.loop !45

._crit_edge.4.i:                                  ; preds = %scalar.ph470, %middle.block484
  %i.ih = getelementptr [8 x i8], ptr %i.en, i64 %i.fi ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge.4.i
  %broadcast.splatinsert468 = insertelement <2 x double> poison, double %i.fh, i64 0
  %broadcast.splat469 = shufflevector <2 x double> %broadcast.splatinsert468, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 1, i32 2>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ii = uitofp nneg <2 x i32> %vec.ind to <2 x double>
  %i.ij = uitofp nneg <2 x i32> %step.add to <2 x double>
  %i.ik = fmul <2 x double> %broadcast.splat, %i.ii
  %i.il = fmul <2 x double> %broadcast.splat, %i.ij
  %i.im = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ik, <2 x double> %broadcast.splat469, <2 x double> splat (double 1.000000e+01))
  %i.in = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %broadcast.splat469, <2 x double> splat (double 1.000000e+01))
  %i.io = getelementptr [8 x i8], ptr %i.ih, i64 %index ; 2 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 16
  store <2 x double> %i.im, ptr %i.io, align 8, !tbaa !22
  store <2 x double> %i.in, ptr %i.ip, align 8, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.5.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %._crit_edge.4.i, %middle.block
  %indvars.iv.5.i.ph = phi i64 [ 1, %._crit_edge.4.i ], [ %i.fa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.5.i = phi i64 [ %indvars.iv.next.5.i, %scalar.ph ], [ %indvars.iv.5.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ir = trunc nuw nsw i64 %indvars.iv.5.i to i32
  %i.is = uitofp nneg i32 %i.ir to double
  %i.it = fmul double %i.em, %i.is
  %i.iu = call double @llvm.fmuladd.f64(double %i.it, double %i.fh, double 1.000000e+01)
  %i.iv = getelementptr [8 x i8], ptr %i.ih, i64 %indvars.iv.5.i
  %i.iw = getelementptr i8, ptr %i.iv, i64 -8
  store double %i.iu, ptr %i.iw, align 8, !tbaa !22
  %indvars.iv.next.5.i = add nuw nsw i64 %indvars.iv.5.i, 1 ; 2 uses
  %exitcond.5.not.i = icmp eq i64 %indvars.iv.next.5.i, %wide.trip.count.i
  br i1 %exitcond.5.not.i, label %._crit_edge.5.i, label %scalar.ph, !llvm.loop !47

._crit_edge.5.i:                                  ; preds = %scalar.ph, %middle.block
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond56.not.i = icmp eq i64 %indvars.iv.next54.i, 6
  br i1 %exitcond56.not.i, label %CInit.exit, label %.split.i

CInit.exit:                                       ; preds = %._crit_edge.5.i, %bb.f
  %i.ix = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef nonnull %.str.37..str.38.i) ; 0 uses
  %.str.41.sink.i = select i1 %i.dq, ptr @.str.40, ptr @.str.41
  %i.iy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, ptr noundef nonnull %.str.41.sink.i) ; 0 uses
  %i.iz = and i1 %i.dp, %i.dq                     ; 2 uses
  br i1 %i.iz, label %bb.g, label %bb.r

bb.g:                                             ; preds = %CInit.exit
  %i.ja = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.jb = call ptr @ARKStepCreate(ptr noundef null, ptr noundef nonnull @f, double noundef 0.000000e+00, ptr noundef nonnull %i.ai, ptr noundef %i.ja) #11 ; 12 uses
  store ptr %i.jb, ptr %i.w, align 8, !tbaa !48
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %check_flag.exit88, label %bb.h

check_flag.exit88:                                ; preds = %bb.g
  %i.jd = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.je = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jd, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.3) #12 ; 0 uses
  br label %bb.av

bb.h:                                             ; preds = %bb.g
  store ptr %i.jb, ptr %i.do, align 8, !tbaa !30
  %i.jf = call i32 @ARKodeSetUserData(ptr noundef nonnull %i.jb, ptr noundef %i.an) #11 ; 2 uses
  %i.jg = icmp slt i32 %i.jf, 0
  br i1 %i.jg, label %check_flag.exit90, label %bb.i

check_flag.exit90:                                ; preds = %bb.h
  %i.jh = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ji = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jh, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.4, i32 noundef %i.jf) #12 ; 0 uses
  br label %bb.av

bb.i:                                             ; preds = %bb.h
  %i.jj = call i32 @ARKodeSStolerances(ptr noundef nonnull %i.jb, double noundef 1.000000e-05, double noundef 1.000000e-05) #11 ; 2 uses
  %i.jk = icmp slt i32 %i.jj, 0
  br i1 %i.jk, label %check_flag.exit92, label %bb.j

check_flag.exit92:                                ; preds = %bb.i
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.jm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jl, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.5, i32 noundef %i.jj) #12 ; 0 uses
  br label %bb.av

bb.j:                                             ; preds = %bb.i
  %i.jn = call i32 @ARKodeSetMaxNumSteps(ptr noundef nonnull %i.jb, i64 noundef 1000) #11 ; 2 uses
  %i.jo = icmp slt i32 %i.jn, 0
  br i1 %i.jo, label %check_flag.exit94, label %bb.k

check_flag.exit94:                                ; preds = %bb.j
  %i.jp = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.jq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jp, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.6, i32 noundef %i.jn) #12 ; 0 uses
  br label %bb.av

bb.k:                                             ; preds = %bb.j
  %i.jr = call i32 @ARKodeSetNonlinConvCoef(ptr noundef nonnull %i.jb, double noundef 1.000000e-03) #11 ; 2 uses
  %i.js = icmp slt i32 %i.jr, 0
  br i1 %i.js, label %check_flag.exit96, label %bb.l

check_flag.exit96:                                ; preds = %bb.k
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ju = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jt, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.7, i32 noundef %i.jr) #12 ; 0 uses
  br label %bb.av

bb.l:                                             ; preds = %bb.k
  %i.jv = load ptr, ptr %i.x, align 8, !tbaa !52
  %i.jw = call ptr @SUNLinSol_SPGMR(ptr noundef nonnull %i.ai, i32 noundef 1, i32 noundef 0, ptr noundef %i.jv) #11 ; 4 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %check_flag.exit98, label %bb.m

check_flag.exit98:                                ; preds = %bb.l
  %i.jy = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.jz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jy, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.8) #12 ; 0 uses
  br label %bb.av

bb.m:                                             ; preds = %bb.l
  %i.ka = call i32 @ARKodeSetLinearSolver(ptr noundef nonnull %i.jb, ptr noundef nonnull %i.jw, ptr noundef null) #11 ; 2 uses
  %i.kb = icmp slt i32 %i.ka, 0
  br i1 %i.kb, label %check_flag.exit100, label %bb.n

check_flag.exit100:                               ; preds = %bb.m
  %i.kc = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.kd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kc, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.9, i32 noundef %i.ka) #12 ; 0 uses
  br label %bb.av

bb.n:                                             ; preds = %bb.m
  %i.ke = call i32 @SUNLinSol_SPGMRSetGSType(ptr noundef nonnull %i.jw, i32 noundef 1) #11 ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 0
  br i1 %i.kf, label %check_flag.exit102, label %bb.o

check_flag.exit102:                               ; preds = %bb.n
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.kh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.10, i32 noundef %i.ke) #12 ; 0 uses
  br label %bb.av

end_hunk_0
