Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/convex_manifold?download=true
inline.NumInlined: 430
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@b3CollideCapsules:bb.a
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %.sroa.0351.0.copyload = load <2 x float>, ptr %3, align 4 ; 4 uses
  %.sroa.2352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2352.0.copyload = load float, ptr %.sroa.2352.0..sroa_idx, align 4 ; 4 uses
  %.sroa.0637.0.copyload = load <2 x float>, ptr %4, align 8 ; 2 uses
  %.sroa.4638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4638.0.copyload = load float, ptr %.sroa.4638.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.5639.0.copyload = load <2 x float>, ptr %.sroa.5639.0..sroa_idx, align 4 ; 7 uses
  %.sroa.6640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20
  %.sroa.6640.0.copyload = load <2 x float>, ptr %.sroa.6640.0..sroa_idx, align 4 ; 5 uses
  %.sroa.09.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5639.0.copyload, i64 0 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.0342.0.copyload = load <2 x float>, ptr %i.s, align 4 ; 4 uses
  %.sroa.2343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.2343.0.copyload = load float, ptr %.sroa.2343.0..sroa_idx, align 4 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0351.0.copyload, %.sroa.6640.0.copyload
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = fmul float %.sroa.2352.0.copyload, %.sroa.09.0.vec.extract.i.i
  %i.v = fsub float %i.t, %i.u
  %i.w = shufflevector <2 x float> %.sroa.0351.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.x = insertelement <2 x float> %i.w, float %.sroa.2352.0.copyload, i64 1 ; 2 uses
  %i.y = fmul <2 x float> %i.x, %.sroa.5639.0.copyload
  %i.z = shufflevector <2 x float> %.sroa.5639.0.copyload, <2 x float> %.sroa.6640.0.copyload, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.aa = fmul <2 x float> %.sroa.0351.0.copyload, %i.z
  %i.ab = fsub <2 x float> %i.y, %i.aa            ; 2 uses
  %i.ac = insertelement <2 x float> %i.w, float %.sroa.2352.0.copyload, i64 0
  %i.ad = shufflevector <2 x float> %.sroa.6640.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ae = fmul <2 x float> %i.ac, %i.ad
  %i.af = fmul <2 x float> %i.x, %i.ad
  %i.ag = fadd <2 x float> %i.ae, %i.ab           ; 2 uses
  %i.ah = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ai = insertelement <2 x float> %i.ah, float %i.v, i64 0
  %i.aj = fadd <2 x float> %i.af, %i.ai           ; 2 uses
  %i.ak = fmul <2 x float> %i.z, %i.ag
  %i.al = shufflevector <2 x float> %.sroa.6640.0.copyload, <2 x float> %.sroa.5639.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.am = fmul <2 x float> %i.al, %i.aj
  %i.an = fsub <2 x float> %i.ak, %i.am
  %i.ao = fmul <2 x float> %i.an, splat (float 2.000000e+00)
  %i.ap = fadd <2 x float> %.sroa.0351.0.copyload, %i.ao
  %i.aq = fadd <2 x float> %.sroa.0637.0.copyload, %i.ap ; 3 uses
  %foldExtExtBinop666 = fmul <2 x float> %.sroa.6640.0.copyload, %.sroa.0342.0.copyload
  %i.ar = extractelement <2 x float> %foldExtExtBinop666, i64 0
  %i.as = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2343.0.copyload
  %i.at = fsub float %i.ar, %i.as
  %i.au = shufflevector <2 x float> %.sroa.0342.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = insertelement <2 x float> %i.au, float %.sroa.2343.0.copyload, i64 1 ; 2 uses
  %i.aw = fmul <2 x float> %.sroa.5639.0.copyload, %i.av
  %i.ax = fmul <2 x float> %i.z, %.sroa.0342.0.copyload
  %i.ay = fsub <2 x float> %i.aw, %i.ax           ; 2 uses
  %i.az = insertelement <2 x float> %i.au, float %.sroa.2343.0.copyload, i64 0
  %i.ba = fmul <2 x float> %i.ad, %i.az
  %i.bb = fmul <2 x float> %i.ad, %i.av
  %i.bc = fadd <2 x float> %i.ba, %i.ay           ; 2 uses
  %i.bd = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.be = insertelement <2 x float> %i.bd, float %i.at, i64 0
  %i.bf = fadd <2 x float> %i.bb, %i.be           ; 2 uses
  %i.bg = fmul <2 x float> %i.z, %i.bc
  %i.bh = fmul <2 x float> %i.al, %i.bf
  %i.bi = fsub <2 x float> %i.bg, %i.bh
  %i.bj = fmul <2 x float> %i.bi, splat (float 2.000000e+00)
  %i.bk = fadd <2 x float> %.sroa.0342.0.copyload, %i.bj
  %i.bl = shufflevector <2 x float> %.sroa.5639.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = shufflevector <2 x float> %i.aj, <2 x float> %i.bf, <2 x i32> <i32 0, i32 2>
  %i.bn = fmul <2 x float> %i.bl, %i.bm
  %i.bo = shufflevector <2 x float> %.sroa.5639.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = shufflevector <2 x float> %i.ag, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.bq = fmul <2 x float> %i.bo, %i.bp
  %i.br = fsub <2 x float> %i.bn, %i.bq
  %i.bs = fmul <2 x float> %i.br, splat (float 2.000000e+00)
  %i.bt = insertelement <2 x float> poison, float %.sroa.2352.0.copyload, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %.sroa.2343.0.copyload, i64 1
  %i.bv = fadd <2 x float> %i.bu, %i.bs           ; 2 uses
  %i.bw = extractelement <2 x float> %i.bv, i64 0
  %i.bx = fadd float %.sroa.4638.0.copyload, %i.bw ; 3 uses
  %i.by = fadd <2 x float> %.sroa.0637.0.copyload, %i.bk ; 3 uses
  %i.bz = extractelement <2 x float> %i.bv, i64 1
  %i.ca = fadd float %.sroa.4638.0.copyload, %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.cd = load float, ptr %i.cb, align 4, !tbaa !26
  %i.ce = load float, ptr %i.cc, align 4, !tbaa !26
  %i.cf = fadd float %i.cd, %i.ce                 ; 6 uses
  %i.cg = tail call float @b3GetLengthUnitsPerMeter() #12
  %i.ch = fmul float %i.cg, 5.000000e-03
  %i.ci = fmul float %i.ch, 4.000000e+00
  %i.cj = fadd float %i.cf, %i.ci                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @b3SegmentDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3SegmentDistanceResult) align 4 %5, <2 x float> %.sroa.0360.0.copyload, float %.sroa.7364.0.copyload, <2 x float> %.sroa.0356.0.copyload, float %.sroa.7.0.copyload, <2 x float> %i.aq, float %i.bx, <2 x float> %i.by, float %i.ca) #12
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.sroa.0317.0.copyload = load <2 x float>, ptr %i.ck, align 8
  %.sroa.2318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.sroa.2318.0.copyload = load float, ptr %.sroa.2318.0..sroa_idx, align 8
  %.sroa.0315.0.copyload = load <2 x float>, ptr %5, align 8
  %.sroa.2316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.2316.0.copyload = load float, ptr %.sroa.2316.0..sroa_idx, align 8
  %i.cl = fsub <2 x float> %.sroa.0317.0.copyload, %.sroa.0315.0.copyload ; 3 uses
  %i.cm = fsub float %.sroa.2318.0.copyload, %.sroa.2316.0.copyload ; 3 uses
  %i.cn = fmul <2 x float> %i.cl, %i.cl           ; 2 uses
  %shift = shufflevector <2 x float> %i.cn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop668 = fadd <2 x float> %i.cn, %shift
  %i.co = extractelement <2 x float> %foldExtExtBinop668, i64 0
  %i.cp = fmul float %i.cm, %i.cm
  %i.cq = fadd float %i.cp, %i.co                 ; 4 uses
  %i.cr = call float @b3GetLengthUnitsPerMeter() #12
  %i.cs = fmul float %i.cr, 5.000000e-03
  %i.ct = fmul float %i.cs, f0x3C23D70A           ; 4 uses
  %i.cu = fmul float %i.cj, %i.cj
  %i.cv = fcmp ogt float %i.cq, %i.cu
  %i.cw = fmul float %i.ct, %i.ct
  %i.cx = fcmp olt float %i.cq, %i.cw
  %or.cond = select i1 %i.cv, i1 true, i1 %i.cx
  br i1 %or.cond, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = fsub <2 x float> %.sroa.0356.0.copyload, %.sroa.0360.0.copyload ; 3 uses
  %i.cz = fsub float %.sroa.7.0.copyload, %.sroa.7364.0.copyload ; 3 uses
  %i.da = fmul <2 x float> %i.cy, %i.cy           ; 2 uses
  %shift670 = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop671 = fadd <2 x float> %i.da, %shift670
  %i.db = extractelement <2 x float> %foldExtExtBinop671, i64 0
  %i.dc = fmul float %i.cz, %i.cz
  %i.dd = fadd float %i.dc, %i.db                 ; 2 uses
  %i.de = fcmp ogt float %i.dd, f0x057A0000
  br i1 %i.de, label %bb.j, label %b3GetLengthAndNormalize.exit

bb.j:                                             ; preds = %bb.i
  %i.df = call float @sqrtf(float noundef %i.dd) #12 ; 2 uses
  %i.dg = fdiv float 1.000000e+00, %i.df          ; 2 uses
  %i.dh = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.cy, %i.di
  %i.dk = fmul float %i.cz, %i.dg
  br label %b3GetLengthAndNormalize.exit

b3GetLengthAndNormalize.exit:                     ; preds = %bb.i, %bb.j
  %.0649 = phi float [ %i.df, %bb.j ], [ 0.000000e+00, %bb.i ]
  %.sroa.010.0.i = phi <2 x float> [ %i.dj, %bb.j ], [ zeroinitializer, %bb.i ] ; 7 uses
  %.sroa.5.0.i458 = phi float [ %i.dk, %bb.j ], [ 0.000000e+00, %bb.i ] ; 6 uses
  %i.dl = call float @b3GetLengthUnitsPerMeter() #12
  %i.dm = fmul float %i.dl, 5.000000e-03
  %i.dn = fcmp olt float %.0649, %i.dm
  br i1 %i.dn, label %bb.aj, label %bb.k

bb.k:                                             ; preds = %b3GetLengthAndNormalize.exit
  %i.do = fsub <2 x float> %i.by, %i.aq           ; 3 uses
  %i.dp = fsub float %i.ca, %i.bx                 ; 3 uses
  %i.dq = fmul <2 x float> %i.do, %i.do           ; 2 uses
  %shift673 = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop674 = fadd <2 x float> %i.dq, %shift673
  %i.dr = extractelement <2 x float> %foldExtExtBinop674, i64 0
  %i.ds = fmul float %i.dp, %i.dp
  %i.dt = fadd float %i.ds, %i.dr                 ; 2 uses
  %i.du = fcmp ogt float %i.dt, f0x057A0000
  br i1 %i.du, label %bb.l, label %b3GetLengthAndNormalize.exit477

bb.l:                                             ; preds = %bb.k
  %i.dv = call float @sqrtf(float noundef %i.dt) #12 ; 2 uses
  %i.dw = fdiv float 1.000000e+00, %i.dv          ; 2 uses
  %i.dx = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.do, %i.dy
  %i.ea = fmul float %i.dp, %i.dw
  br label %b3GetLengthAndNormalize.exit477

b3GetLengthAndNormalize.exit477:                  ; preds = %bb.k, %bb.l
  %.0648 = phi float [ %i.dv, %bb.l ], [ 0.000000e+00, %bb.k ]
  %.sroa.010.0.i471 = phi <2 x float> [ %i.dz, %bb.l ], [ zeroinitializer, %bb.k ] ; 3 uses
  %.sroa.5.0.i472 = phi float [ %i.ea, %bb.l ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %i.eb = call float @b3GetLengthUnitsPerMeter() #12
  %i.ec = fmul float %i.eb, 5.000000e-03
  %i.ed = fcmp olt float %.0648, %i.ec
  br i1 %i.ed, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %b3GetLengthAndNormalize.exit477
  %.sroa.0.0.vec.extract.i478 = extractelement <2 x float> %.sroa.010.0.i471, i64 0
  %i.ee = fmul float %.sroa.5.0.i458, %.sroa.0.0.vec.extract.i478
  %.sroa.09.0.vec.extract.i = extractelement <2 x float> %.sroa.010.0.i, i64 0
  %i.ef = fmul float %.sroa.09.0.vec.extract.i, %.sroa.5.0.i472
  %i.eg = fsub float %i.ee, %i.ef                 ; 2 uses
  %i.eh = fmul float %i.eg, %i.eg
  %i.ei = shufflevector <2 x float> %.sroa.010.0.i471, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ej = insertelement <2 x float> %i.ei, float %.sroa.5.0.i472, i64 1
  %i.ek = fmul <2 x float> %.sroa.010.0.i, %i.ej
  %i.el = shufflevector <2 x float> %.sroa.010.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.em = insertelement <2 x float> %i.el, float %.sroa.5.0.i458, i64 1
  %i.en = fmul <2 x float> %i.em, %.sroa.010.0.i471
  %i.eo = fsub <2 x float> %i.ek, %i.en           ; 2 uses
  %i.ep = fmul <2 x float> %i.eo, %i.eo           ; 2 uses
  %i.eq = extractelement <2 x float> %i.ep, i64 1
  %i.er = fadd float %i.eq, %i.eh
  %i.es = extractelement <2 x float> %i.ep, i64 0
  %i.et = fadd float %i.es, %i.er
  %i.eu = fcmp olt float %i.et, f0x3B23D70B
  br i1 %i.eu, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %8 = fneg <2 x float> %.sroa.010.0.i
  store <2 x float> %8, ptr %6, align 16, !tbaa !12
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.0238.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.2239.0.copyload = load float, ptr %.sroa.7364.0..sroa_idx, align 4
  %i.ev = fmul <2 x float> %.sroa.010.0.i, %.sroa.0238.0.copyload ; 2 uses
  %shift676 = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop677 = fadd <2 x float> %i.ev, %shift676
  %i.ew = extractelement <2 x float> %foldExtExtBinop677, i64 0
  %i.ex = fmul float %.sroa.5.0.i458, %.sroa.2239.0.copyload
  %i.ey = fadd float %i.ex, %i.ew
  %i.ez = insertelement <2 x float> poison, float %.sroa.5.0.i458, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %i.ey, i64 1
  %9 = fneg <2 x float> %i.fa
  store <2 x float> %9, ptr %.sroa.4249.0..sroa_idx, align 8, !tbaa !12
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fc = ptrtoint ptr %6 to i64, !nosanitize !9  ; 3 uses
  %i.fd = add i64 %i.fc, 16, !nosanitize !9       ; 2 uses
  %.not406 = icmp eq ptr %6, inttoptr (i64 -16 to ptr)
  br i1 %.not406, label %bb.o, label %bb.p, !prof !32, !nosanitize !9

bb.o:                                             ; preds = %bb.n
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @31, i64 %i.fc, i64 %i.fd) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.p:                                             ; preds = %bb.n
  %.not = icmp eq i64 %i.fd, 0, !nosanitize !9
  store <2 x float> %.sroa.010.0.i, ptr %i.fb, align 16, !tbaa !12
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store float %.sroa.5.0.i458, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !12
  br i1 %.not, label %bb.q, label %bb.r, !prof !32, !nosanitize !9

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @32, i64 %i.fc, i64 0) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.r:                                             ; preds = %bb.p
  %.sroa.2235.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %i.fe = fmul float %.sroa.5.0.i458, %.sroa.2235.0.copyload
  %.sroa.0234.0.copyload = load <2 x float>, ptr %i.m, align 4
  %i.ff = fmul <2 x float> %.sroa.010.0.i, %.sroa.0234.0.copyload ; 2 uses
  %shift679 = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop680 = fadd <2 x float> %i.ff, %shift679
  %i.fg = extractelement <2 x float> %foldExtExtBinop680, i64 0
  %i.fh = fadd float %i.fe, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 28
  store float %i.fh, ptr %i.fi, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store <2 x float> %i.aq, ptr %7, align 16, !tbaa !12
  %.sroa.6355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store float %i.bx, ptr %.sroa.6355.0..sroa_idx, align 8, !tbaa !12
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float 0.000000e+00, ptr %i.fj, align 4, !tbaa !50
  %i.fk = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fl = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  store i32 %i.fl, ptr %i.fk, align 16, !tbaa !24
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %.not407 = icmp ugt ptr %7, inttoptr (i64 -21 to ptr)
  br i1 %.not407, label %bb.s, label %bb.t, !prof !32, !nosanitize !9

bb.s:                                             ; preds = %bb.r
  %i.fn = ptrtoint ptr %7 to i64, !nosanitize !9  ; 2 uses
  %i.fo = add i64 %i.fn, 20, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @34, i64 %i.fn, i64 %i.fo) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.t:                                             ; preds = %bb.r
  store <2 x float> %i.by, ptr %i.fm, align 4, !tbaa !12
  %.sroa.6346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28 ; 3 uses
  store float %i.ca, ptr %.sroa.6346.0..sroa_idx, align 4, !tbaa !12
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float 0.000000e+00, ptr %i.fp, align 16, !tbaa !50
  %i.fq = getelementptr inbounds nuw i8, ptr %7, i64 36 ; 2 uses
  %i.fr = call i32 @b3MakeFeaturePair(i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 1) #12
  store i32 %i.fr, ptr %i.fq, align 4, !tbaa !24
  %i.fs = load <2 x float>, ptr %6, align 16
  %i.ft = load <2 x float>, ptr %.sroa.4249.0..sroa_idx, align 8
  %i.fu = call fastcc i32 @b3ClipSegment(ptr noundef %7, <2 x float> %i.fs, <2 x float> %i.ft)
  %i.fv = icmp eq i32 %i.fu, 2
  br i1 %i.fv, label %bb.u, label %.critedge413

bb.u:                                             ; preds = %bb.t
  %i.fw = load <2 x float>, ptr %i.fb, align 16
  %i.fx = load <2 x float>, ptr %.sroa.8.0..sroa_idx, align 8
  %i.fy = call fastcc i32 @b3ClipSegment(ptr noundef %7, <2 x float> %i.fw, <2 x float> %i.fx)
  %i.fz = icmp eq i32 %i.fy, 2
  br i1 %i.fz, label %bb.v, label %.critedge413

bb.v:                                             ; preds = %bb.u
  %.sroa.0221.0.copyload = load <2 x float>, ptr %7, align 16
  %.sroa.2222.0.copyload = load float, ptr %.sroa.6355.0..sroa_idx, align 8
  %i.ga = call { <2 x float>, float } @b3PointToSegmentDistance(<2 x float> %.sroa.0360.0.copyload, float %.sroa.7364.0.copyload, <2 x float> %.sroa.0356.0.copyload, float %.sroa.7.0.copyload, <2 x float> %.sroa.0221.0.copyload, float %.sroa.2222.0.copyload) #12 ; 2 uses
  %.fca.0.extract217 = extractvalue { <2 x float>, float } %i.ga, 0 ; 2 uses
  %.fca.1.extract218 = extractvalue { <2 x float>, float } %i.ga, 1 ; 2 uses
  %.sroa.0207.0.copyload = load <2 x float>, ptr %i.fm, align 4
  %.sroa.2208.0.copyload = load float, ptr %.sroa.6346.0..sroa_idx, align 4
  %i.gb = call { <2 x float>, float } @b3PointToSegmentDistance(<2 x float> %.sroa.0360.0.copyload, float %.sroa.7364.0.copyload, <2 x float> %.sroa.0356.0.copyload, float %.sroa.7.0.copyload, <2 x float> %.sroa.0207.0.copyload, float %.sroa.2208.0.copyload) #12 ; 2 uses
  %.fca.0.extract203 = extractvalue { <2 x float>, float } %i.gb, 0 ; 2 uses
  %.fca.1.extract204 = extractvalue { <2 x float>, float } %i.gb, 1 ; 2 uses
  %.sroa.0195.0.copyload = load <2 x float>, ptr %7, align 16 ; 2 uses
  %.sroa.2196.0.copyload = load float, ptr %.sroa.6355.0..sroa_idx, align 8 ; 2 uses
  %i.gc = fsub <2 x float> %.sroa.0195.0.copyload, %.fca.0.extract217 ; 3 uses
  %i.gd = fmul <2 x float> %i.gc, %i.gc           ; 2 uses
  %shift682 = shufflevector <2 x float> %i.gd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop683 = fadd <2 x float> %i.gd, %shift682
  %i.ge = extractelement <2 x float> %foldExtExtBinop683, i64 0
  %i.gf = fsub float %.sroa.2196.0.copyload, %.fca.1.extract218 ; 3 uses
  %i.gg = fmul float %i.gf, %i.gf
  %i.gh = fadd float %i.gg, %i.ge
  %i.gi = call float @sqrtf(float noundef %i.gh) #12 ; 4 uses
  %.sroa.0187.0.copyload = load <2 x float>, ptr %i.fm, align 4 ; 2 uses
  %.sroa.2188.0.copyload = load float, ptr %.sroa.6346.0..sroa_idx, align 4 ; 2 uses
  %i.gj = fsub <2 x float> %.sroa.0187.0.copyload, %.fca.0.extract203 ; 3 uses
  %i.gk = fsub float %.sroa.2188.0.copyload, %.fca.1.extract204 ; 3 uses
  %i.gl = fmul <2 x float> %i.gj, %i.gj           ; 2 uses
  %shift685 = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop686 = fadd <2 x float> %i.gl, %shift685
  %i.gm = extractelement <2 x float> %foldExtExtBinop686, i64 0
  %i.gn = fmul float %i.gk, %i.gk
  %i.go = fadd float %i.gn, %i.gm
  %i.gp = call float @sqrtf(float noundef %i.go) #12 ; 4 uses
  %i.gq = fcmp ugt float %i.gi, %i.cf
  %i.gr = fcmp ugt float %i.gp, %i.cf
  %or.cond409 = select i1 %i.gq, i1 true, i1 %i.gr
  br i1 %or.cond409, label %.critedge413, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gs = fcmp olt float %i.gi, %i.ct
  %i.gt = fcmp olt float %i.gp, %i.ct
  %or.cond410 = select i1 %i.gs, i1 true, i1 %i.gt
  br i1 %or.cond410, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gp, i64 1
  %i.gw = fdiv <2 x float> splat (float 1.000000e+00), %i.gv ; 3 uses
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.gc, %i.gx           ; 2 uses
  %i.gz = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ha = fmul <2 x float> %i.gj, %i.gz           ; 2 uses
  %i.hb = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.hc = insertelement <2 x float> %i.hb, float %i.gk, i64 1
  %i.hd = fmul <2 x float> %i.hc, %i.gw           ; 3 uses
  %i.he = fadd <2 x float> %i.gy, %i.ha           ; 3 uses
  %i.hf = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hd) ; 3 uses
  %i.hg = fmul <2 x float> %i.he, %i.he           ; 2 uses
  %shift688 = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop689 = fadd <2 x float> %i.hg, %shift688
  %i.hh = extractelement <2 x float> %foldExtExtBinop689, i64 0
  %i.hi = fmul float %i.hf, %i.hf
  %i.hj = fadd float %i.hi, %i.hh                 ; 2 uses
  %i.hk = fcmp ogt float %i.hj, f0x057A0000
  br i1 %i.hk, label %bb.y, label %b3Normalize.exit

bb.y:                                             ; preds = %bb.x
  %i.hl = call float @sqrtf(float noundef %i.hj) #12
  %i.hm = fdiv float 1.000000e+00, %i.hl          ; 2 uses
  %i.hn = insertelement <2 x float> poison, float %i.hm, i64 0
  %i.ho = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hp = fmul <2 x float> %i.he, %i.ho
  %i.hq = fmul float %i.hf, %i.hm
  br label %b3Normalize.exit

b3Normalize.exit:                                 ; preds = %bb.x, %bb.y
  %.sroa.07.0.i = phi <2 x float> [ %i.hp, %bb.y ], [ zeroinitializer, %bb.x ] ; 2 uses
  %.sroa.5.0.i = phi float [ %i.hq, %bb.y ], [ 0.000000e+00, %bb.x ] ; 2 uses
  %i.hr = load float, ptr %i.cb, align 4, !tbaa !26 ; 3 uses
  %i.hs = load float, ptr %i.cc, align 4, !tbaa !26 ; 2 uses
  %i.ht = fmul float %.sroa.5.0.i, %i.hs          ; 2 uses
  %i.hu = extractelement <2 x float> %i.hd, i64 1
  %i.hv = fmul float %i.hu, %i.hr
  %i.hw = fadd float %.sroa.2188.0.copyload, %i.hv
  %i.hx = fadd float %.fca.1.extract204, %i.hw
  %i.hy = fsub float %i.hx, %i.ht
  %i.hz = insertelement <2 x float> poison, float %i.hs, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ib = fmul <2 x float> %.sroa.07.0.i, %i.ia   ; 2 uses
  %i.ic = insertelement <2 x float> poison, float %i.hr, i64 0
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ie = fmul <2 x float> %i.ha, %i.id
  %i.if = fadd <2 x float> %.sroa.0187.0.copyload, %i.ie
  %i.ig = fadd <2 x float> %.fca.0.extract203, %i.if
  %i.ih = fsub <2 x float> %i.ig, %i.ib
  %i.ii = fmul <2 x float> %i.ih, splat (float 5.000000e-01)
  %i.ij = fmul float %i.hy, 5.000000e-01
  store <2 x float> %.sroa.07.0.i, ptr %0, align 8, !tbaa !12
  %.sroa.6149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i, ptr %.sroa.6149.0..sroa_idx, align 8, !tbaa !12
  store i32 2, ptr %i.f, align 8, !tbaa !19
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !20 ; 6 uses
  %i.im = icmp ne ptr %i.il, null, !nosanitize !9
  %i.in = ptrtoint ptr %i.il to i64, !nosanitize !9 ; 2 uses
  %i.io = and i64 %i.in, 3, !nosanitize !9
  %i.ip = icmp eq i64 %i.io, 0, !nosanitize !9
  %i.iq = and i1 %i.im, %i.ip, !nosanitize !9
  br i1 %i.iq, label %bb.aa, label %bb.z, !prof !10, !nosanitize !9

bb.z:                                             ; preds = %b3Normalize.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @35, i64 %i.in) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.aa:                                            ; preds = %b3Normalize.exit
  %i.ir = fmul <2 x float> %i.gy, %i.id
  %i.is = fadd <2 x float> %.sroa.0195.0.copyload, %i.ir
  %i.it = fadd <2 x float> %.fca.0.extract217, %i.is
  %i.iu = fsub <2 x float> %i.it, %i.ib
  %i.iv = fmul <2 x float> %i.iu, splat (float 5.000000e-01)
  %i.iw = extractelement <2 x float> %i.hd, i64 0
  %i.ix = fmul float %i.iw, %i.hr
  %i.iy = fadd float %.sroa.2196.0.copyload, %i.ix
  %i.iz = fadd float %.fca.1.extract218, %i.iy
  %i.ja = fsub float %i.iz, %i.ht
  %i.jb = fmul float %i.ja, 5.000000e-01
  store <2 x float> %i.iv, ptr %i.il, align 4, !tbaa !12
end_hunk_0
begin_hunk_1_@b3CollideCapsules:bb.a
  store float %i.jd, ptr %i.jc, align 4, !tbaa !23
  %i.je = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.jf = load i32, ptr %i.fk, align 16, !tbaa !24
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !24
  %i.jg = load ptr, ptr %i.ik, align 8, !tbaa !20 ; 7 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 24 ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64, !nosanitize !9 ; 2 uses
  %i.jj = add i64 %i.ji, 24, !nosanitize !9       ; 2 uses
  %i.jk = icmp ne ptr %i.jg, null, !nosanitize !9
  %i.jl = icmp ne i64 %i.jj, 0
  %i.jm = and i1 %i.jk, %i.jl
  %i.jn = icmp ult ptr %i.jg, inttoptr (i64 -24 to ptr)
  %i.jo = and i1 %i.jn, %i.jm, !nosanitize !9
  br i1 %i.jo, label %bb.ac, label %bb.ab, !prof !10, !nosanitize !9

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @36, i64 %i.ji, i64 %i.jj) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ac:                                            ; preds = %bb.aa
  %i.jp = ptrtoint ptr %i.jh to i64, !nosanitize !9 ; 2 uses
  %i.jq = and i64 %i.jp, 3, !nosanitize !9
  %i.jr = icmp eq i64 %i.jq, 0, !nosanitize !9
  br i1 %i.jr, label %bb.ae, label %bb.ad, !prof !10, !nosanitize !9

bb.ad:                                            ; preds = %bb.ac
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @37, i64 %i.jp) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ae:                                            ; preds = %bb.ac
  store <2 x float> %i.ii, ptr %i.jh, align 4, !tbaa !12
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jg, i64 32
  store float %i.ij, ptr %.sroa.488.0..sroa_idx, align 4, !tbaa !12
  %i.js = getelementptr inbounds nuw i8, ptr %i.jg, i64 36
  %i.jt = fsub float %i.gp, %i.cf
  store float %i.jt, ptr %i.js, align 4, !tbaa !23
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.jv = load i32, ptr %i.fq, align 4, !tbaa !24
  store i32 %i.jv, ptr %i.ju, align 4, !tbaa !24
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.aj

.critedge413:                                     ; preds = %bb.v, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.af

bb.af:                                            ; preds = %.critedge413, %bb.m
  %i.jw = fcmp ogt float %i.cq, f0x057A0000
  br i1 %i.jw, label %bb.ag, label %b3GetLengthAndNormalize.exit604

bb.ag:                                            ; preds = %bb.af
  %i.jx = call float @sqrtf(float noundef %i.cq) #12 ; 2 uses
  %i.jy = fdiv float 1.000000e+00, %i.jx          ; 2 uses
  %i.jz = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x float> %i.cl, %i.ka
  %i.kc = fmul float %i.cm, %i.jy
  br label %b3GetLengthAndNormalize.exit604

b3GetLengthAndNormalize.exit604:                  ; preds = %bb.af, %bb.ag
  %.0 = phi float [ %i.jx, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %.sroa.010.0.i598 = phi <2 x float> [ %i.kb, %bb.ag ], [ zeroinitializer, %bb.af ] ; 3 uses
  %.sroa.5.0.i599 = phi float [ %i.kc, %bb.ag ], [ 0.000000e+00, %bb.af ] ; 3 uses
  %i.kd = load float, ptr %i.cb, align 4, !tbaa !26 ; 2 uses
  %.sroa.028.0.copyload = load <2 x float>, ptr %5, align 8
  %.sroa.229.0.copyload = load float, ptr %.sroa.2316.0..sroa_idx, align 8
  %.sroa.018.0.copyload = load <2 x float>, ptr %i.ck, align 8
  %.sroa.219.0.copyload = load float, ptr %.sroa.2318.0..sroa_idx, align 8
  %i.ke = load float, ptr %i.cc, align 4, !tbaa !26 ; 2 uses
  store <2 x float> %.sroa.010.0.i598, ptr %0, align 8, !tbaa !12
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.5.0.i599, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !12
  store i32 1, ptr %i.f, align 8, !tbaa !19
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !20 ; 6 uses
  %i.kh = icmp ne ptr %i.kg, null, !nosanitize !9
  %i.ki = ptrtoint ptr %i.kg to i64, !nosanitize !9 ; 2 uses
  %i.kj = and i64 %i.ki, 3, !nosanitize !9
  %i.kk = icmp eq i64 %i.kj, 0, !nosanitize !9
  %i.kl = and i1 %i.kh, %i.kk, !nosanitize !9
  br i1 %i.kl, label %bb.ai, label %bb.ah, !prof !10, !nosanitize !9

bb.ah:                                            ; preds = %b3GetLengthAndNormalize.exit604
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @38, i64 %i.ki) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ai:                                            ; preds = %b3GetLengthAndNormalize.exit604
  %i.km = fmul float %.sroa.5.0.i599, %i.kd
  %i.kn = fadd float %i.km, %.sroa.229.0.copyload
  %i.ko = fadd float %i.kn, %.sroa.219.0.copyload
  %i.kp = fmul float %.sroa.5.0.i599, %i.ke
  %i.kq = fsub float %i.ko, %i.kp
  %i.kr = fmul float %i.kq, 5.000000e-01
  %i.ks = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x float> %.sroa.010.0.i598, %i.kt
  %i.kv = fadd <2 x float> %i.ku, %.sroa.028.0.copyload
  %i.kw = fadd <2 x float> %i.kv, %.sroa.018.0.copyload
  %i.kx = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = fmul <2 x float> %.sroa.010.0.i598, %i.ky
  %i.la = fsub <2 x float> %i.kw, %i.kz
  %i.lb = fmul <2 x float> %i.la, splat (float 5.000000e-01)
  store <2 x float> %i.lb, ptr %i.kg, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store float %i.kr, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kg, i64 12
  %i.ld = fsub float %.0, %i.cf
  store float %i.ld, ptr %i.lc, align 4, !tbaa !23
  %i.le = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store i32 0, ptr %i.le, align 4, !tbaa !24
  br label %bb.aj

bb.aj:                                            ; preds = %b3GetLengthAndNormalize.exit, %bb.ai, %.critedge, %b3GetLengthAndNormalize.exit477, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.ak

bb.ak:                                            ; preds = %bb.c, %bb.aj
  ret void
}

declare void @b3SegmentDistance(ptr dead_on_unwind writable sret(%struct.b3SegmentDistanceResult) align 4, <2 x float>, float, <2 x float>, float, <2 x float>, float, <2 x float>, float) local_unnamed_addr #5

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_out_of_bounds_abort(ptr, i64) local_unnamed_addr #2

declare i32 @b3MakeFeaturePair(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @b3ClipSegment(ptr noundef nonnull %0, <2 x float> %1, <2 x float> %2) unnamed_addr #0 !func_sanitize !86 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !9   ; 10 uses
  %i.b = and i64 %i.a, 3, !nosanitize !9
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !9
  br i1 %i.c, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @207, i64 %i.a) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %.sroa.083.0.copyload = load <2 x float>, ptr %0, align 4, !tbaa !12 ; 2 uses
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.686.0.copyload = load float, ptr %.sroa.686.0..sroa_idx, align 4, !tbaa !12 ; 2 uses
  %.sroa.892.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.892.0.copyload = load i32, ptr %.sroa.892.0..sroa_idx, align 4, !tbaa !24
  %.not = icmp ugt ptr %0, inttoptr (i64 -21 to ptr)
  br i1 %.not, label %bb.d, label %bb.e, !prof !32, !nosanitize !9

bb.d:                                             ; preds = %bb.c
  %i.d = add i64 %i.a, 20, !nosanitize !9
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @208, i64 %i.a, i64 %i.d) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.e, align 4, !tbaa !12 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !12 ; 3 uses
  %.sroa.880.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.sroa.880.0.copyload = load i32, ptr %.sroa.880.0..sroa_idx, align 4, !tbaa !24 ; 2 uses
  %.sroa.1.8.vec.extract.i = extractelement <2 x float> %2, i64 0
  %i.g = fmul <2 x float> %1, %.sroa.083.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.g, %shift
  %i.h = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.i = fmul float %.sroa.1.8.vec.extract.i, %.sroa.686.0.copyload
  %i.j = fadd float %i.i, %i.h
  %.sroa.1.12.vec.extract.i = extractelement <2 x float> %2, i64 1 ; 2 uses
  %i.k = fsub float %i.j, %.sroa.1.12.vec.extract.i ; 5 uses
  %i.l = fmul <2 x float> %1, %.sroa.0.0.copyload ; 2 uses
  %shift100 = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop101 = fadd <2 x float> %i.l, %shift100
  %i.m = extractelement <2 x float> %i.f, i64 0
  %foldExtExtBinop103 = fmul <2 x float> %2, %i.f
  %foldExtExtBinop105 = fadd <2 x float> %foldExtExtBinop103, %foldExtExtBinop101
  %i.n = extractelement <2 x float> %foldExtExtBinop105, i64 0
  %i.o = fsub float %i.n, %.sroa.1.12.vec.extract.i ; 3 uses
  %i.p = fcmp ole float %i.k, 0.000000e+00        ; 4 uses
  %spec.select = zext i1 %i.p to i32
  %i.q = fcmp ugt float %i.o, 0.000000e+00
  br i1 %i.q, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = select i1 %i.p, i64 20, i64 0
  %i.s = add i64 %i.r, %i.a, !nosanitize !9       ; 2 uses
  %.not54 = icmp ult i64 %i.s, %i.a, !nosanitize !9
  br i1 %.not54, label %bb.g, label %bb.h, !prof !32, !nosanitize !9

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @209, i64 %i.a, i64 %i.s) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %bb.f
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.t ; 3 uses
  %i.v = select i1 %i.p, i32 2, i32 1
  store <2 x float> %.sroa.0.0.copyload, ptr %i.u, align 4, !tbaa !12
  %.sroa.6.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store <2 x float> %i.f, ptr %.sroa.6.0..sroa_idx76, align 4, !tbaa !12
  %.sroa.880.0..sroa_idx81 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %.sroa.880.0.copyload, ptr %.sroa.880.0..sroa_idx81, align 4, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.1 = phi i32 [ %i.v, %bb.h ], [ %spec.select, %bb.e ] ; 3 uses
  %i.w = fmul float %i.k, %i.o
  %i.x = fcmp olt float %i.w, 0.000000e+00
  br i1 %i.x, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %.1 to i64                 ; 2 uses
  %i.z = mul nuw nsw i64 %i.y, 20
  %i.aa = add i64 %i.z, %i.a, !nosanitize !9      ; 2 uses
  %.not55 = icmp ult i64 %i.aa, %i.a, !nosanitize !9
  br i1 %.not55, label %bb.k, label %bb.l, !prof !32, !nosanitize !9

bb.k:                                             ; preds = %bb.j
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @210, i64 %i.a, i64 %i.aa) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.l:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw [20 x i8], ptr %0, i64 %i.y ; 3 uses
  %i.ac = fsub float %i.k, %i.o
  %i.ad = fdiv float %i.k, %i.ac                  ; 3 uses
  %i.ae = fsub float 1.000000e+00, %i.ad          ; 2 uses
  %i.af = fmul float %.sroa.686.0.copyload, %i.ae
  %i.ag = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %.sroa.0.0.copyload, %i.ah
  %i.aj = fmul float %i.m, %i.ad
  %i.ak = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer
  %i.am = fmul <2 x float> %.sroa.083.0.copyload, %i.al
  %i.an = fadd <2 x float> %i.ai, %i.am
  %i.ao = fadd float %i.aj, %i.af
  store <2 x float> %i.an, ptr %i.ab, align 4, !tbaa !12
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store float %i.ao, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aq = fcmp ogt float %i.k, 0.000000e+00
  %storemerge = select i1 %i.aq, i32 %.sroa.892.0.copyload, i32 %.sroa.880.0.copyload
  store i32 %storemerge, ptr %i.ap, align 4, !tbaa !24
  %i.ar = add nuw nsw i32 %.1, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.2 = phi i32 [ %i.ar, %bb.l ], [ %.1, %bb.i ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define void @b3CollideHullAndCapsule(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %4, ptr noundef %5) local_unnamed_addr #0 !func_sanitize !91 {
bb.a:
  %6 = alloca [2 x %struct.b3ClipVertex], align 16 ; 15 uses
  %7 = alloca [2 x %struct.b3Vec3], align 16      ; 8 uses
  %8 = alloca %struct.b3DistanceInput, align 8    ; 11 uses
  %9 = alloca %struct.b3DistanceOutput, align 8   ; 10 uses
  %10 = alloca [2 x %struct.b3ClipVertex], align 16 ; 15 uses
  %11 = alloca %struct.b3SeparatingAxis, align 8  ; 9 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !9
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !9   ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @39, i64 %i.b) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  store i32 0, ptr %i.f, align 8, !tbaa !19
  %i.g = icmp slt i32 %1, 2
  br i1 %i.g, label %bb.dc, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.h = icmp ne ptr %2, null, !nosanitize !9
  %i.i = ptrtoint ptr %2 to i64, !nosanitize !9   ; 16 uses
  %i.j = and i64 %i.i, 7, !nosanitize !9
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !9
  %i.l = and i1 %i.h, %i.k, !nosanitize !9
  br i1 %i.l, label %bb.f, label %bb.e, !prof !10, !nosanitize !9

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @203, i64 %i.i) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 108 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31   ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %b3GetHullPoints.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = sext i32 %i.n to i64                     ; 2 uses
  %i.q = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 %i.p), !nosanitize !9 ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1, !nosanitize !9
  br i1 %i.r, label %bb.h, label %bb.i, !prof !32, !nosanitize !9

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_add_overflow_abort(ptr nonnull @205, i64 %i.i, i64 %i.p) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %bb.g
  %i.s = extractvalue { i64, i1 } %i.q, 0, !nosanitize !9
  %i.t = inttoptr i64 %i.s to ptr
  br label %b3GetHullPoints.exit

b3GetHullPoints.exit:                             ; preds = %bb.f, %bb.i
  %.0.i = phi ptr [ %i.t, %bb.i ], [ null, %bb.f ]
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  store ptr %.0.i, ptr %8, align 8, !tbaa !35
  %.sroa.2313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.v, ptr %.sroa.2313.0..sroa_idx, align 8, !tbaa !36
  %.sroa.3314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float 0.000000e+00, ptr %.sroa.3314.0..sroa_idx, align 4, !tbaa !12
  %i.w = icmp ne ptr %3, null, !nosanitize !9
  %i.x = ptrtoint ptr %3 to i64, !nosanitize !9   ; 2 uses
  %i.y = and i64 %i.x, 3, !nosanitize !9
  %i.z = icmp eq i64 %i.y, 0, !nosanitize !9
  %i.aa = and i1 %i.w, %i.z, !nosanitize !9
  br i1 %i.aa, label %bb.k, label %bb.j, !prof !10, !nosanitize !9

bb.j:                                             ; preds = %b3GetHullPoints.exit
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @40, i64 %i.x) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.k:                                             ; preds = %b3GetHullPoints.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %3, ptr %i.ab, align 8, !tbaa !35
  %.sroa.2310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 2, ptr %.sroa.2310.0..sroa_idx, align 8, !tbaa !36
  %.sroa.3311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 28
  store float 0.000000e+00, ptr %.sroa.3311.0..sroa_idx, align 4, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 28, i1 false), !tbaa.struct !37
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i8 0, ptr %i.ad, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @b3ShapeDistance(ptr dead_on_unwind nonnull writable sret(%struct.b3DistanceOutput) align 4 %9, ptr noundef nonnull %8, ptr noundef %5, ptr noundef null, i32 noundef 0) #12
  %i.ae = call float @b3GetLengthUnitsPerMeter() #12
  %i.af = fmul float %i.ae, 5.000000e-03
  %i.ag = fmul float %i.af, 4.000000e+00          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !45 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 11 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !26
  %i.al = fadd float %i.ag, %i.ak
  %i.am = fcmp ogt float %i.ai, %i.al
  br i1 %i.am, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.an = icmp ne ptr %5, null, !nosanitize !9
  %i.ao = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.ap = and i64 %i.ao, 3, !nosanitize !9
  %i.aq = icmp eq i64 %i.ap, 0, !nosanitize !9
  %i.ar = and i1 %i.an, %i.aq, !nosanitize !9
  br i1 %i.ar, label %bb.n, label %bb.m, !prof !10, !nosanitize !9

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @41, i64 %i.ao) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.n:                                             ; preds = %bb.l
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %bb.db

bb.o:                                             ; preds = %bb.k
  %i.as = fcmp ogt float %i.ai, f0x37480000
  br i1 %i.as, label %bb.p, label %bb.al

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.au = load i32, ptr %i.at, align 4, !tbaa !46 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %b3GetHullPlanes.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = sext i32 %i.au to i64                   ; 2 uses
  %i.ax = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.i, i64 %i.aw), !nosanitize !9 ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1, !nosanitize !9
  br i1 %i.ay, label %bb.r, label %bb.s, !prof !32, !nosanitize !9

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @206, i64 %i.i, i64 %i.aw) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.s:                                             ; preds = %bb.q
  %i.az = extractvalue { i64, i1 } %i.ax, 0, !nosanitize !9
  %i.ba = inttoptr i64 %i.az to ptr
  br label %b3GetHullPlanes.exit

b3GetHullPlanes.exit:                             ; preds = %bb.p, %bb.s
  %.0.i186 = phi ptr [ %i.ba, %bb.s ], [ null, %bb.p ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %9, i64 24
  %.sroa.097.0.copyload = load <2 x float>, ptr %i.bb, align 8, !tbaa !12 ; 4 uses
end_hunk_1
begin_hunk_2_@b3BuildFaceAContact:bb.a
bb.dt:                                            ; preds = %bb.ds
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @325, i64 %i.vs, i64 %i.vt) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.du:                                            ; preds = %bb.ds
  %i.vz = ptrtoint ptr %i.vr to i64, !nosanitize !9 ; 2 uses
  %i.wa = and i64 %i.vz, 3, !nosanitize !9
  %i.wb = icmp eq i64 %i.wa, 0, !nosanitize !9
  br i1 %i.wb, label %.lr.ph548.i, label %bb.dv, !prof !10, !nosanitize !9

bb.dv:                                            ; preds = %bb.du
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @326, i64 %i.vz) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph548.i:                                      ; preds = %bb.du
  %.sroa.6105.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vq, i64 56
  %.sroa.6105.0.copyload.i = load float, ptr %.sroa.6105.0..sroa_idx.i, align 4, !tbaa !12 ; 3 uses
  %i.wc = fcmp olt float %.1314.i, 0.000000e+00
  %i.wd = select i1 %i.wc, float -1.000000e+00, float 1.000000e+00 ; 2 uses
  %.sroa.0102.0.copyload.i = load <2 x float>, ptr %i.vr, align 4, !tbaa !12 ; 3 uses
  %i.we = fsub <2 x float> %.sroa.0102.0.copyload.i, %.sroa.0150.0.copyload.i ; 3 uses
  %i.wf = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wg = fsub float %.sroa.6105.0.copyload.i, %.sroa.6153.0.copyload.i
  %i.wh = fsub <2 x float> %.sroa.0193.0.copyload.i, %.sroa.0102.0.copyload.i ; 3 uses
  %i.wi = shufflevector <2 x float> %i.wh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wj = fsub float %.sroa.8.0.copyload.i, %.sroa.6105.0.copyload.i
  %smax617.i = call i32 @llvm.smax.i32(i32 %i.vl, i32 1)
  %wide.trip.count618.i = zext nneg i32 %smax617.i to i64
  %i.wk = insertelement <2 x float> poison, float %i.wd, i64 0
  %i.wl = shufflevector <2 x float> %i.wk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wm = insertelement <2 x float> poison, float %.sroa.10.0.copyload.i, i64 0
  %i.wn = shufflevector <2 x float> %i.wm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wo = insertelement <2 x float> poison, float %i.wg, i64 0
  %i.wp = insertelement <2 x float> poison, float %i.ts, i64 0
  %i.wq = insertelement <2 x float> poison, float %i.wj, i64 1
  br label %bb.dw

._crit_edge549.i:                                 ; preds = %bb.dy
  %.not345.i = icmp eq i32 %.8.i, -1
  br i1 %.not345.i, label %b3ReduceManifoldPoints.exit, label %bb.dz

bb.dw:                                            ; preds = %bb.dy, %.lr.ph548.i
  %indvars.iv614.i = phi i64 [ 0, %.lr.ph548.i ], [ %indvars.iv.next615.i, %bb.dy ] ; 4 uses
  %.7546.i = phi i32 [ -1, %.lr.ph548.i ], [ %.8.i, %bb.dy ]
  %.7309545.i = phi float [ %i.od, %.lr.ph548.i ], [ %.8310.i, %bb.dy ] ; 2 uses
  %i.wr = mul nuw nsw i64 %indvars.iv614.i, 24
  %i.ws = add i64 %i.wr, %i.kt, !nosanitize !9    ; 2 uses
  %.not458.i = icmp ult i64 %i.ws, %i.kt, !nosanitize !9
  br i1 %.not458.i, label %bb.dx, label %bb.dy, !prof !32, !nosanitize !9

bb.dx:                                            ; preds = %bb.dw
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @327, i64 %i.kt, i64 %i.ws) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.dy:                                            ; preds = %bb.dw
  %i.wt = getelementptr inbounds nuw [24 x i8], ptr %7, i64 %indvars.iv614.i ; 2 uses
  %.sroa.093.0.copyload.i = load <2 x float>, ptr %i.wt, align 8, !tbaa !12 ; 3 uses
  %.sroa.6.0..sroa_idx.i168 = getelementptr inbounds nuw i8, ptr %i.wt, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i168, align 8, !tbaa !12 ; 3 uses
  %i.wu = fsub float %.sroa.6.0.copyload.i, %.sroa.8.0.copyload.i
  %i.wv = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0193.0.copyload.i ; 3 uses
  %i.ww = fmul <2 x float> %i.tr, %i.wv           ; 2 uses
  %shift138 = shufflevector <2 x float> %i.ww, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop139 = fsub <2 x float> %i.ww, %shift138
  %i.wx = extractelement <2 x float> %foldExtExtBinop139, i64 0
  %i.wy = insertelement <2 x float> %i.wp, float %i.wu, i64 1 ; 2 uses
  %i.wz = shufflevector <2 x float> %i.wv, <2 x float> %i.tq, <2 x i32> <i32 1, i32 2>
  %i.xa = fmul <2 x float> %i.wy, %i.wz
  %i.xb = shufflevector <2 x float> %i.wv, <2 x float> %i.tq, <2 x i32> <i32 3, i32 0>
  %i.xc = shufflevector <2 x float> %i.wy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xd = fmul <2 x float> %i.xb, %i.xc
  %i.xe = fsub <2 x float> %i.xa, %i.xd
  %i.xf = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.xe ; 2 uses
  %shift141 = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop142 = fadd <2 x float> %i.xf, %shift141
  %i.xg = extractelement <2 x float> %foldExtExtBinop142, i64 0
  %i.xh = fmul float %.sroa.10.0.copyload.i, %i.wx
  %i.xi = fadd float %i.xh, %i.xg
  %i.xj = fmul float %i.wd, %i.xi                 ; 2 uses
  %i.xk = fsub float %.sroa.6.0.copyload.i, %.sroa.6153.0.copyload.i
  %i.xl = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0150.0.copyload.i ; 3 uses
  %i.xm = fmul <2 x float> %i.wf, %i.xl           ; 2 uses
  %i.xn = fsub float %.sroa.6.0.copyload.i, %.sroa.6105.0.copyload.i
  %i.xo = fsub <2 x float> %.sroa.093.0.copyload.i, %.sroa.0102.0.copyload.i ; 3 uses
  %i.xp = fmul <2 x float> %i.wi, %i.xo           ; 2 uses
  %i.xq = insertelement <2 x float> %i.wo, float %i.xn, i64 1 ; 2 uses
  %i.xr = shufflevector <2 x float> %i.xl, <2 x float> %i.wh, <2 x i32> <i32 0, i32 3>
  %i.xs = fmul <2 x float> %i.xq, %i.xr
  %i.xt = shufflevector <2 x float> %i.xl, <2 x float> %i.wh, <2 x i32> <i32 1, i32 2>
  %i.xu = fmul <2 x float> %i.xq, %i.xt
  %i.xv = shufflevector <2 x float> %i.we, <2 x float> %i.xo, <2 x i32> <i32 0, i32 3>
  %i.xw = insertelement <2 x float> %i.wq, float %i.xk, i64 0 ; 2 uses
  %i.xx = fmul <2 x float> %i.xv, %i.xw
  %i.xy = fsub <2 x float> %i.xx, %i.xs
  %i.xz = shufflevector <2 x float> %i.we, <2 x float> %i.xo, <2 x i32> <i32 1, i32 2>
  %i.ya = fmul <2 x float> %i.xz, %i.xw
  %i.yb = fsub <2 x float> %i.xu, %i.ya
  %i.yc = shufflevector <2 x float> %i.xm, <2 x float> %i.xp, <2 x i32> <i32 0, i32 2>
  %i.yd = shufflevector <2 x float> %i.xm, <2 x float> %i.xp, <2 x i32> <i32 1, i32 3>
  %i.ye = fsub <2 x float> %i.yc, %i.yd
  %i.yf = fmul <2 x float> %i.oe, %i.xy
  %i.yg = fmul <2 x float> %.sroa.0244.0.copyload.i, %i.yb
  %i.yh = fadd <2 x float> %i.yf, %i.yg
  %i.yi = fmul <2 x float> %i.wn, %i.ye
  %i.yj = fadd <2 x float> %i.yi, %i.yh
  %i.yk = fmul <2 x float> %i.wl, %i.yj           ; 2 uses
  %i.yl = extractelement <2 x float> %i.yk, i64 0 ; 2 uses
  %i.ym = extractelement <2 x float> %i.yk, i64 1 ; 2 uses
  %i.yn = fcmp ogt float %i.yl, %i.ym
  %i.yo = select i1 %i.yn, float %i.yl, float %i.ym ; 2 uses
  %i.yp = fcmp ogt float %i.xj, %i.yo
  %i.yq = select i1 %i.yp, float %i.xj, float %i.yo ; 2 uses
  %i.yr = fmul float %i.yq, f0x3F733333
  %i.ys = fcmp ogt float %i.yr, %.7309545.i       ; 2 uses
  %.8310.i = select i1 %i.ys, float %i.yq, float %.7309545.i
  %i.yt = trunc nuw nsw i64 %indvars.iv614.i to i32
  %.8.i = select i1 %i.ys, i32 %i.yt, i32 %.7546.i ; 4 uses
  %indvars.iv.next615.i = add nuw nsw i64 %indvars.iv614.i, 1 ; 2 uses
  %exitcond619.not.i = icmp eq i64 %indvars.iv.next615.i, %wide.trip.count618.i
  br i1 %exitcond619.not.i, label %._crit_edge549.i, label %bb.dw, !llvm.loop !143

bb.dz:                                            ; preds = %._crit_edge549.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.vq, i64 72
  %.not38 = icmp ugt ptr %i.vq, inttoptr (i64 -73 to ptr)
  br i1 %.not38, label %bb.ea, label %bb.eb, !prof !32, !nosanitize !9

bb.ea:                                            ; preds = %bb.dz
  %i.yv = add i64 %i.vs, 72, !nosanitize !9
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @328, i64 %i.vs, i64 %i.yv) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.eb:                                            ; preds = %bb.dz
  %i.yw = sext i32 %.8.i to i64                   ; 2 uses
  %i.yx = mul nsw i64 %i.yw, 24
  %i.yy = add i64 %i.yx, %i.kt, !nosanitize !9    ; 3 uses
  %i.yz = icmp ne i64 %i.yy, 0, !nosanitize !9
  %i.za = icmp uge i64 %i.yy, %i.kt, !nosanitize !9
  %i.zb = icmp slt i32 %.8.i, 0
  %i.zc = xor i1 %i.zb, %i.za
  %i.zd = and i1 %i.yz, %i.zc, !nosanitize !9
  br i1 %i.zd, label %bb.ed, label %bb.ec, !prof !10, !nosanitize !9

bb.ec:                                            ; preds = %bb.eb
  call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @329, i64 %i.kt, i64 %i.yy) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ed:                                            ; preds = %bb.eb
  %i.ze = getelementptr inbounds [24 x i8], ptr %7, i64 %i.yw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.yu, ptr noundef nonnull align 8 dereferenceable(24) %i.ze, i64 24, i1 false), !tbaa.struct !78
  %i.zf = load i32, ptr %i.qp, align 8, !tbaa !19 ; 2 uses
  %i.zg = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.zf, i32 1), !nosanitize !9 ; 2 uses
  %i.zh = extractvalue { i32, i1 } %i.zg, 1, !nosanitize !9
  br i1 %i.zh, label %bb.ee, label %bb.ef, !prof !32, !nosanitize !9

bb.ee:                                            ; preds = %bb.ed
  %i.zi = zext nneg i32 %i.zf to i64, !nosanitize !9
  call void @__ubsan_handle_add_overflow_abort(ptr nonnull @330, i64 %i.zi, i64 1) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.ef:                                            ; preds = %bb.ed
  %i.zj = extractvalue { i32, i1 } %i.zg, 0, !nosanitize !9
  store i32 %i.zj, ptr %i.qp, align 8, !tbaa !19
  br label %b3ReduceManifoldPoints.exit

b3ReduceManifoldPoints.exit:                      ; preds = %._crit_edge553.i, %bb.co, %._crit_edge532.i, %._crit_edge541.i, %._crit_edge549.i, %bb.ef
  %i.zk = ptrtoint ptr %4 to i64, !nosanitize !9  ; 2 uses
  %i.zl = and i64 %i.zk, 3, !nosanitize !9
  %i.zm = icmp eq i64 %i.zl, 0, !nosanitize !9
  br i1 %i.zm, label %bb.eh, label %bb.eg, !prof !10, !nosanitize !9

bb.eg:                                            ; preds = %b3ReduceManifoldPoints.exit
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @299, i64 %i.zk) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.eh:                                            ; preds = %b3ReduceManifoldPoints.exit
  store float %i.lu, ptr %4, align 4, !tbaa !76
  %i.zn = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i8 2, ptr %i.zn, align 4, !tbaa !74
  %i.zo = getelementptr inbounds nuw i8, ptr %4, i64 5
  %i.zp = trunc i32 %.16.val to i8
  store i8 %i.zp, ptr %i.zo, align 1, !tbaa !75
  %i.zq = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.zr = trunc i32 %.20.val to i8
  store i8 %i.zr, ptr %i.zq, align 2, !tbaa !77
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.ej

bb.ej:                                            ; preds = %bb.bg, %bb.ei
  %.3 = phi i1 [ %i.kx, %bb.ei ], [ false, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i1 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildFaceBContact(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr noundef nonnull %5) unnamed_addr #0 !func_sanitize !79 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.0101.0.copyload = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4102.0.copyload = load float, ptr %.sroa.4102.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.5103.0.copyload = load <2 x float>, ptr %.sroa.5103.0..sroa_idx, align 4 ; 11 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 10 uses
  %.sroa.2.8.vec.extract65.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 0 ; 3 uses
  %.sroa.09.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.5103.0.copyload, i64 0 ; 3 uses
  %i.a = fmul float %.sroa.4102.0.copyload, %.sroa.09.0.vec.extract.i.i.i
  %foldExtExtBinop = fmul <2 x float> %.sroa.0101.0.copyload, %.sroa.6.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.c = fsub float %i.a, %i.b
  %i.d = shufflevector <2 x float> %.sroa.5103.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.e = fmul <2 x float> %.sroa.0101.0.copyload, %i.d
  %i.f = shufflevector <2 x float> %.sroa.0101.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.g = insertelement <2 x float> %i.f, float %.sroa.4102.0.copyload, i64 1 ; 2 uses
  %i.h = fmul <2 x float> %i.g, %.sroa.5103.0.copyload
  %i.i = fsub <2 x float> %i.e, %i.h              ; 2 uses
  %i.j = insertelement <2 x float> %i.f, float %.sroa.4102.0.copyload, i64 0
  %i.k = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.l = fmul <2 x float> %i.j, %i.k
  %i.m = fmul <2 x float> %i.g, %i.k
  %i.n = fadd <2 x float> %i.i, %i.l              ; 2 uses
  %i.o = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.p = insertelement <2 x float> %i.o, float %i.c, i64 0
  %i.q = fadd <2 x float> %i.m, %i.p              ; 2 uses
  %i.r = fmul <2 x float> %i.d, %i.n
  %i.s = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.5103.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.t = fmul <2 x float> %i.s, %i.q
  %i.u = fsub <2 x float> %i.r, %i.t
  %foldExtExtBinop8 = fmul <2 x float> %.sroa.5103.0.copyload, %i.q
  %foldExtExtBinop10 = fmul <2 x float> %.sroa.5103.0.copyload, %i.n
  %shift = shufflevector <2 x float> %foldExtExtBinop10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop12 = fsub <2 x float> %foldExtExtBinop8, %shift
  %i.v = extractelement <2 x float> %foldExtExtBinop12, i64 0
  %i.w = fmul <2 x float> %i.u, splat (float 2.000000e+00)
  %i.x = fsub <2 x float> %i.w, %.sroa.0101.0.copyload
  %i.y = fmul float %i.v, 2.000000e+00
  %i.z = fsub float %i.y, %.sroa.4102.0.copyload
  store <2 x float> %i.x, ptr %6, align 8, !tbaa !12, !alias.scope !146
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.z, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !146
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ab = fneg float %.sroa.2.8.vec.extract65.i.i
  %i.ac = fneg <2 x float> %.sroa.5103.0.copyload
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> %.sroa.6.0.copyload, float %i.ab, i64 0
  store <2 x float> %i.ac, ptr %i.aa, align 4, !tbaa !12, !alias.scope !146
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !12, !alias.scope !146
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !59 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !58 ; 2 uses
  %i.ah = tail call fastcc zeroext i1 @b3BuildFaceAContact(ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6, i32 %i.ae, i32 %i.ag, ptr noundef %5) ; 2 uses
  br i1 %i.ah, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.aj = and i64 %i.ai, 3, !nosanitize !9
  %i.ak = icmp eq i64 %i.aj, 0, !nosanitize !9
  br i1 %i.ak, label %bb.d, label %bb.c, !prof !10, !nosanitize !9

bb.c:                                             ; preds = %bb.b
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @331, i64 %i.ai) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.d:                                             ; preds = %bb.b
  store i32 0, ptr %5, align 4
  %.sroa_idx95 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %.sroa_idx95, align 4
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %.sroa.2.12.vec.extract.i.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 1 ; 3 uses
  %.sroa.09.4.vec.extract13.i.i.i = extractelement <2 x float> %.sroa.5103.0.copyload, i64 1 ; 3 uses
  %i.al = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %i.am = fmul float %.sroa.09.4.vec.extract13.i.i.i, %.sroa.2.8.vec.extract65.i.i ; 2 uses
  %i.an = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %foldExtExtBinop14 = fmul <2 x float> %.sroa.5103.0.copyload, %.sroa.6.0.copyload
  %i.ao = extractelement <2 x float> %foldExtExtBinop14, i64 0 ; 2 uses
  %i.ap = fmul float %.sroa.09.0.vec.extract.i.i.i, %.sroa.09.4.vec.extract13.i.i.i ; 2 uses
  %foldExtExtBinop16 = fmul <2 x float> %.sroa.6.0.copyload, %.sroa.6.0.copyload
  %i.aq = fmul <2 x float> %.sroa.5103.0.copyload, %.sroa.5103.0.copyload ; 2 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.as = fmul float %.sroa.2.8.vec.extract65.i.i, %.sroa.2.12.vec.extract.i.i ; 2 uses
  %i.at = fsub float %i.ao, %i.al
  %i.au = fmul float %i.at, 2.000000e+00          ; 2 uses
  %i.av = fadd float %i.am, %i.an
  %i.aw = fmul float %i.av, 2.000000e+00          ; 2 uses
  %i.ax = shufflevector <2 x float> %foldExtExtBinop16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fadd <2 x float> %i.ar, %i.ax
  %i.az = fmul <2 x float> %i.ay, splat (float 2.000000e+00)
  %i.ba = fadd float %i.ap, %i.as
  %i.bb = fsub float %i.ap, %i.as
  %i.bc = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.ba, i64 1
  %i.be = fmul <2 x float> %i.bd, splat (float 2.000000e+00) ; 2 uses
  %i.bf = fsub <2 x float> splat (float 1.000000e+00), %i.az ; 2 uses
  %i.bg = fadd float %i.ao, %i.al
  %i.bh = fsub float %i.am, %i.an
  %i.bi = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 1
  %i.bk = fmul <2 x float> %i.bj, splat (float 2.000000e+00) ; 2 uses
  %foldExtExtBinop19 = fadd <2 x float> %i.aq, %i.ar
  %i.bl = extractelement <2 x float> %foldExtExtBinop19, i64 0
  %i.bm = fmul float %i.bl, 2.000000e+00
  %i.bn = fsub float 1.000000e+00, %i.bm          ; 2 uses
  %i.bo = ptrtoint ptr %0 to i64, !nosanitize !9  ; 2 uses
  %i.bp = and i64 %i.bo, 7, !nosanitize !9
  %i.bq = icmp eq i64 %i.bp, 0, !nosanitize !9
  br i1 %i.bq, label %.lr.ph, label %bb.f, !prof !10, !nosanitize !9

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @332, i64 %i.bo) #11, !nosanitize !9
  unreachable, !nosanitize !9

.lr.ph:                                           ; preds = %bb.e
  %.sroa.030.0.copyload = load <2 x float>, ptr %0, align 8 ; 4 uses
  %.sroa.231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.231.0.copyload = load float, ptr %.sroa.231.0..sroa_idx, align 8 ; 2 uses
  %i.br = shufflevector <2 x float> %.sroa.030.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i64 = extractelement <2 x float> %.sroa.030.0.copyload, i64 0
  %i.bs = fmul float %i.au, %.sroa.0.0.vec.extract.i64
  %i.bt = extractelement <2 x float> %.sroa.030.0.copyload, i64 1
  %i.bu = fmul float %i.aw, %i.bt
  %i.bv = fadd float %i.bs, %i.bu
  %i.bw = fmul float %i.bn, %.sroa.231.0.copyload
  %i.bx = fadd float %i.bw, %i.bv
  %i.by = fmul <2 x float> %i.be, %i.br
  %i.bz = fmul <2 x float> %i.bf, %.sroa.030.0.copyload
  %i.ca = fadd <2 x float> %i.by, %i.bz
  %i.cb = insertelement <2 x float> poison, float %.sroa.231.0.copyload, i64 0
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x float> %i.bk, %i.cc
  %i.ce = fadd <2 x float> %i.cd, %i.ca
  %i.cf = fneg <2 x float> %i.ce
  %i.cg = fneg float %i.bx
  store <2 x float> %i.cf, ptr %0, align 8, !tbaa !12
  store float %i.cg, ptr %.sroa.231.0..sroa_idx, align 8, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i32, ptr %i.ch, align 8, !tbaa !19
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph6, label %.split.us

.lr.ph6:                                          ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv5 = phi i64 [ %indvars.iv.next, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 3 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !20 ; 3 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv5 ; 5 uses
  %i.cn = mul nuw nsw i64 %indvars.iv5, 24
  %i.co = ptrtoint ptr %i.cl to i64, !nosanitize !9 ; 3 uses
  %i.cp = add i64 %i.cn, %i.co, !nosanitize !9    ; 3 uses
  %i.cq = icmp ne ptr %i.cl, null, !nosanitize !9 ; 2 uses
  %i.cr = icmp eq i64 %i.cp, 0
  %i.cs = xor i1 %i.cq, %i.cr
  %i.ct = icmp uge i64 %i.cp, %i.co, !nosanitize !9
  %i.cu = and i1 %i.ct, %i.cs, !nosanitize !9
  br i1 %i.cu, label %bb.g, label %.split124.us, !prof !10, !nosanitize !9

bb.g:                                             ; preds = %.lr.ph6
  %i.cv = ptrtoint ptr %i.cm to i64, !nosanitize !9 ; 2 uses
  %i.cw = and i64 %i.cv, 3, !nosanitize !9
  %i.cx = icmp eq i64 %i.cw, 0, !nosanitize !9
  %i.cy = and i1 %i.cq, %i.cx
  br i1 %i.cy, label %.lr.ph.split.us, label %.split127.us, !prof !10, !nosanitize !9

.lr.ph.split.us:                                  ; preds = %bb.g
  %.sroa.010.0.copyload.us = load <2 x float>, ptr %i.cm, align 4 ; 4 uses
  %.sroa.211.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %.sroa.211.0.copyload.us = load float, ptr %.sroa.211.0..sroa_idx.us, align 4 ; 2 uses
  %i.cz = shufflevector <2 x float> %.sroa.010.0.copyload.us, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i76.us = extractelement <2 x float> %.sroa.010.0.copyload.us, i64 0
  %i.da = fmul float %i.au, %.sroa.0.0.vec.extract.i76.us
  %i.db = extractelement <2 x float> %.sroa.010.0.copyload.us, i64 1
  %i.dc = fmul float %i.aw, %i.db
  %i.dd = fadd float %i.da, %i.dc
  %i.de = fmul float %i.bn, %.sroa.211.0.copyload.us
  %i.df = fadd float %i.de, %i.dd
  %i.dg = fmul <2 x float> %i.be, %i.cz
  %i.dh = fmul <2 x float> %i.bf, %.sroa.010.0.copyload.us
  %i.di = fadd <2 x float> %i.dg, %i.dh
  %i.dj = insertelement <2 x float> poison, float %.sroa.211.0.copyload.us, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %i.bk, %i.dk
  %i.dm = fadd <2 x float> %i.dl, %i.di
  %i.dn = fadd <2 x float> %.sroa.0101.0.copyload, %i.dm
  %i.do = fadd float %.sroa.4102.0.copyload, %i.df
  store <2 x float> %i.dn, ptr %i.cm, align 4, !tbaa !12
  store float %i.do, ptr %.sroa.211.0..sroa_idx.us, align 4, !tbaa !12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4
  %i.dr = tail call i32 @b3FlipPair(i32 %i.dq) #12
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv5, 1 ; 2 uses
  %i.ds = load i32, ptr %i.ch, align 8, !tbaa !19
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next, %i.dt
  br i1 %i.du, label %.lr.ph6, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph
  %i.dv = ptrtoint ptr %5 to i64, !nosanitize !9  ; 2 uses
  %i.dw = and i64 %i.dv, 3, !nosanitize !9
  %i.dx = icmp eq i64 %i.dw, 0, !nosanitize !9
  br i1 %i.dx, label %bb.i, label %bb.h, !prof !10, !nosanitize !9

.split124.us:                                     ; preds = %.lr.ph6
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @333, i64 %i.co, i64 %i.cp) #11, !nosanitize !9
  unreachable, !nosanitize !9

.split127.us:                                     ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @334, i64 %i.cv) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.h:                                             ; preds = %.split.us
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @335, i64 %i.dv) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.i:                                             ; preds = %.split.us
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 3, ptr %i.dy, align 4, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %5, i64 5
  %i.ea = trunc i32 %i.ag to i8
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !75
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ec = trunc i32 %i.ae to i8
  store i8 %i.ec, ptr %i.eb, align 2, !tbaa !77
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  ret i1 %i.ah
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @b3BuildEdgeContact(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %3, ptr nofree noundef readonly byval(%struct.b3SeparatingAxis) align 8 captures(none) %4, ptr noundef nonnull %5) unnamed_addr #0 !func_sanitize !147 {
bb.a:
  %6 = alloca %struct.b3SegmentDistanceResult, align 8 ; 9 uses
  %i.a = icmp ne ptr %1, null, !nosanitize !9
  %i.b = ptrtoint ptr %1 to i64, !nosanitize !9   ; 6 uses
  %i.c = and i64 %i.b, 7, !nosanitize !9
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !9
  %i.e = and i1 %i.a, %i.d, !nosanitize !9
  br i1 %i.e, label %bb.c, label %bb.b, !prof !10, !nosanitize !9

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @279, i64 %i.b) #11, !nosanitize !9
  unreachable, !nosanitize !9

bb.c:                                             ; preds = %bb.a
end_hunk_2
