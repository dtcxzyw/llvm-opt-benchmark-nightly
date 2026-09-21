Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK4pbrt12MeasuredBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.7.0 = phi float [ %i.g, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %.sroa.0119.0 = phi <2 x float> [ %i.f, %bb.c ], [ %3, %bb.b ]
  %.sroa.0126.0 = phi <2 x float> [ %i.d, %bb.c ], [ %1, %bb.b ] ; 3 uses
  %.sroa.8.0 = phi float [ %i.e, %bb.c ], [ %2, %bb.b ] ; 4 uses
  %i.h = fadd float %.sroa.7.0, %.sroa.8.0        ; 3 uses
  %i.i = fadd <2 x float> %.sroa.0119.0, %.sroa.0126.0 ; 3 uses
  %i.j = fmul <2 x float> %i.i, %i.i              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.h, %i.h
  %i.m = fadd float %i.l, %i.k                    ; 2 uses
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0126.0, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0126.0, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.m) ; 2 uses
  %i.o = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x float> %i.i, %i.p              ; 2 uses
  %i.r = fdiv float %i.h, %sqrt.i.i               ; 3 uses
  %i.s = fcmp olt float %.sroa.8.0, -1.000000e+00
  %i.t = fcmp ogt float %.sroa.8.0, 1.000000e+00
  %..i.i.i = select i1 %i.t, float 1.000000e+00, float %.sroa.8.0
  %.0.i.i.i = select i1 %i.s, float -1.000000e+00, float %..i.i.i
  %i.u = tail call noundef float @acosf(float noundef %.0.i.i.i) #31 ; 6 uses
  %i.v = tail call noundef float @atan2f(float noundef %.sroa.03.4.vec.extract.i, float noundef %.sroa.03.0.vec.extract.i) #31 ; 7 uses
  %i.w = fcmp olt float %i.r, -1.000000e+00
  %i.x = fcmp ogt float %i.r, 1.000000e+00
  %..i.i.i89 = select i1 %i.x, float 1.000000e+00, float %i.r
  %.0.i.i.i90 = select i1 %i.w, float -1.000000e+00, float %..i.i.i89
  %i.y = tail call noundef float @acosf(float noundef %.0.i.i.i90) #31
  %i.z = extractelement <2 x float> %i.q, i64 0
  %i.aa = extractelement <2 x float> %i.q, i64 1
  %i.ab = tail call noundef float @atan2f(float noundef %i.aa, float noundef %i.z) #31 ; 2 uses
  %i.ac = fmul float %i.u, f0x3F22F983
  %i.ad = tail call noundef float @sqrtf(float noundef %i.ac) #31
  %i.ae = fmul float %i.y, f0x3F22F983
  %i.af = tail call noundef float @sqrtf(float noundef %i.ae) #31 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !179   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 680
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !148, !range !56, !noundef !57
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = fsub float %i.ab, %i.v
  %i.al = select i1 %i.aj, float %i.ak, float %i.ab
  %i.am = fmul float %i.al, f0x3E22F983
  %i.an = fadd float %i.am, 5.000000e-01          ; 2 uses
  %.sroa.0109.0.vec.insert = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ao = tail call noundef float @llvm.floor.f32(float %i.an)
  %i.ap = fsub float %i.an, %i.ao                 ; 2 uses
  %.sroa.0109.4.vec.insert116 = insertelement <2 x float> %.sroa.0109.0.vec.insert, float %i.ap, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 360
  %i.ar = tail call { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.aq, <2 x float> %.sroa.0109.4.vec.insert116, float noundef %i.v, float noundef %i.u)
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ar, 0 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %0, align 8, !tbaa !179
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load float, ptr %i.as, align 8, !tbaa !20
  %i.aw = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.au, <2 x float> %.fca.0.extract, float noundef %i.v, float noundef %i.u, float noundef %i.av)
  %i.ax = load ptr, ptr %0, align 8, !tbaa !179
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !20
  %i.bb = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.ay, <2 x float> %.fca.0.extract, float noundef %i.v, float noundef %i.u, float noundef %i.ba)
  %i.bc = load ptr, ptr %0, align 8, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load float, ptr %i.be, align 8, !tbaa !20
  %i.bg = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.bd, <2 x float> %.fca.0.extract, float noundef %i.v, float noundef %i.u, float noundef %i.bf)
  %i.bh = load ptr, ptr %0, align 8, !tbaa !179
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !20
  %i.bl = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %i.bi, <2 x float> %.fca.0.extract, float noundef %i.v, float noundef %i.u, float noundef %i.bk)
  %i.bm = fmul float %i.v, f0x3E22F983
  %i.bn = fadd float %i.bm, 5.000000e-01
  %i.bo = load ptr, ptr %0, align 8, !tbaa !179   ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 208 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 224
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !150 ; 2 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bq, align 8 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 528 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 544 ; 2 uses
  %i.bv = load <2 x i32>, ptr %i.bp, align 8, !tbaa !98
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !158 ; 2 uses
  %i.bx = load <2 x float>, ptr %i.bu, align 8, !tbaa !20
  %i.by = insertelement <4 x float> poison, float %i.af, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %i.ap, i64 1
  %i.ca = insertelement <4 x float> %i.bz, float %i.ad, i64 2
  %i.cb = insertelement <4 x float> %i.ca, float %i.bn, i64 3
  %i.cc = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cd = fmul <4 x float> %i.cb, %i.cc           ; 4 uses
  %i.ce = fptosi <4 x float> %i.cd to <4 x i32>
  %i.cf = load <2 x i32>, ptr %i.bt, align 8, !tbaa !98
  %i.cg = load i32, ptr %i.bt, align 8, !tbaa !158 ; 2 uses
  %i.ch = shufflevector <2 x i32> %i.bv, <2 x i32> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ci = add nsw <4 x i32> %i.ch, splat (i32 -2)
  %i.cj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ci, <4 x i32> %i.ce) ; 5 uses
  %i.ck = sitofp <4 x i32> %i.cj to <4 x float>   ; 3 uses
  %foldExtExtBinop151 = fsub <4 x float> %i.cd, %i.ck ; 2 uses
  %i.cl = extractelement <4 x float> %foldExtExtBinop151, i64 1
  %i.cm = fsub float 1.000000e+00, %i.cl
  %i.cn = extractelement <4 x i32> %i.cj, i64 1
  %i.co = mul nsw i32 %i.cn, %i.bw
  %i.cp = extractelement <4 x i32> %i.cj, i64 0
  %i.cq = add nsw i32 %i.co, %i.cp
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cr
  %i.ct = sext i32 %i.bw to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cr
  %foldExtExtBinop153 = fsub <4 x float> %i.cd, %i.ck ; 2 uses
  %i.cw = extractelement <4 x float> %foldExtExtBinop153, i64 3
  %i.cx = fsub float 1.000000e+00, %i.cw
  %i.cy = extractelement <4 x i32> %i.cj, i64 3
  %i.cz = mul nsw i32 %i.cy, %i.cg
  %i.da = extractelement <4 x i32> %i.cj, i64 2
  %i.db = add nsw i32 %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bo, i64 592
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !150 ; 2 uses
  %i.de = zext i32 %i.db to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = sext i32 %i.cg to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.de
  %i.dj = load <2 x float>, ptr %i.cs, align 4, !tbaa !20 ; 2 uses
  %i.dk = load <2 x float>, ptr %i.cv, align 4, !tbaa !20 ; 2 uses
  %i.dl = shufflevector <4 x float> %i.cd, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dm = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.dn = fsub <2 x float> %i.dl, %i.dm           ; 2 uses
  %i.do = fsub <2 x float> splat (float 1.000000e+00), %i.dn
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dq = load <2 x float>, ptr %i.df, align 4, !tbaa !20
  %i.dr = load <2 x float>, ptr %i.di, align 4, !tbaa !20
  %i.ds = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dt = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.du = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.dt, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.dw = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.dx = shufflevector <4 x float> %i.dv, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.dy = fmul <4 x float> %i.ds, %i.dx
  %i.dz = shufflevector <2 x float> %i.dj, <2 x float> %i.dk, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> %i.du, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> %i.dw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ec = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.dp, <4 x float> %i.eb, <4 x float> %i.dy) ; 4 uses
  %foldExtExtBinop155 = fmul <4 x float> %foldExtExtBinop151, %i.ec
  %i.ed = extractelement <4 x float> %foldExtExtBinop155, i64 1
  %i.ee = extractelement <4 x float> %i.ec, i64 0
  %i.ef = tail call noundef float @llvm.fma.f32(float %i.cm, float %i.ee, float %i.ed)
  %foldExtExtBinop157 = fmul <4 x float> %foldExtExtBinop153, %i.ec
  %i.eg = extractelement <4 x float> %foldExtExtBinop157, i64 3
  %i.eh = extractelement <4 x float> %i.ec, i64 2
  %i.ei = tail call noundef float @llvm.fma.f32(float %i.cx, float %i.eh, float %i.eg)
  %.sroa.0.0.copyload.i100 = load <2 x float>, ptr %i.bu, align 8 ; 2 uses
  %shift159 = shufflevector <2 x float> %.sroa.0.0.copyload.i100, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop160 = fmul <2 x float> %.sroa.0.0.copyload.i100, %shift159
  %i.ej = extractelement <2 x float> %foldExtExtBinop160, i64 0
  %i.ek = fmul float %i.ej, %i.ei
  %i.el = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.bl, i64 1 ; 2 uses
  %i.en = fcmp ogt <2 x float> %i.em, zeroinitializer
  %i.eo = select <2 x i1> %i.en, <2 x float> %i.em, <2 x float> zeroinitializer
  %i.ep = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.bb, i64 1 ; 2 uses
  %i.er = fcmp ogt <2 x float> %i.eq, zeroinitializer
  %i.es = select <2 x i1> %i.er, <2 x float> %i.eq, <2 x float> zeroinitializer
  %i.et = fmul float %i.ek, 4.000000e+00
  %shift162 = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop163 = fmul <2 x float> %.sroa.0.0.copyload.i, %shift162
  %i.eu = extractelement <2 x float> %foldExtExtBinop163, i64 0
  %i.ev = fmul float %.sroa.7.0, %i.et
  %i.ew = fmul float %i.eu, %i.ef
  %i.ex = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = fmul <2 x float> %i.es, %i.ey
  %i.fa = fmul <2 x float> %i.eo, %i.ey
  %i.fb = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fd = fdiv <2 x float> %i.ez, %i.fc
  %i.fe = fdiv <2 x float> %i.fa, %i.fc
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.a, %bb.e
  %.sroa.0134.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.fd, %bb.e ], [ zeroinitializer, %bb.d ]
  %.sroa.6.0 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.fe, %bb.e ], [ zeroinitializer, %bb.d ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0134.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %0, <2 x float> %1, float noundef %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load ptr, ptr %i.b, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.f = zext i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -2                     ; 2 uses
  %i.h = icmp ugt i32 %i.d, 2
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !150  ; 2 uses
  br i1 %i.h, label %.lr.ph.i91, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

.lr.ph.i91:                                       ; preds = %bb.a, %.lr.ph.i91
  %.017.i = phi i64 [ %.fr.i, %.lr.ph.i91 ], [ 1, %bb.a ] ; 2 uses
  %.01516.i = phi i64 [ %i.t, %.lr.ph.i91 ], [ %i.g, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.01516.i, 1                    ; 3 uses
  %i.l = add i64 %i.k, %.017.i                    ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !20
  %i.p = fcmp ole float %i.o, %2                  ; 2 uses
  %i.q = add i64 %i.l, 1
  %i.r = select i1 %i.p, i64 %i.q, i64 %.017.i
  %.fr.i = freeze i64 %i.r                        ; 3 uses
  %.neg.i = xor i64 %i.k, -1
  %i.s = add nsw i64 %.01516.i, %.neg.i
  %i.t = select i1 %i.p, i64 %i.s, i64 %i.k       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i91, label %._crit_edge.i, !llvm.loop !552

._crit_edge.i:                                    ; preds = %.lr.ph.i91
  %i.v = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.g)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit: ; preds = %bb.a, %._crit_edge.i
  %i.w = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fsub float %2, %i.z
  %i.ad = fsub float %i.ab, %i.z
  %i.ae = fdiv float %i.ac, %i.ad                 ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  %i.ag = fcmp ogt float %i.ae, 1.000000e+00
  %..i = select i1 %i.ag, float 1.000000e+00, float %i.ae
  %.0.i = select i1 %i.af, float 0.000000e+00, float %..i ; 2 uses
  %i.ah = fsub float 1.000000e+00, %.0.i
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !98
  %i.aj = mul i32 %i.ai, %i.x
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit
  %.sroa.5.0 = phi float [ %.0.i, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 18 uses
  %.sroa.0.0 = phi float [ %i.ah, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 1.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 18 uses
  %.1 = phi i32 [ %i.aj, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98 ; 3 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = zext i32 %i.al to i64
  %i.ao = add nsw i64 %i.an, -2                   ; 2 uses
  %i.ap = icmp ugt i32 %i.al, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !150 ; 2 uses
  br i1 %i.ap, label %.lr.ph.i91.1, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

.lr.ph.i91.1:                                     ; preds = %bb.c, %.lr.ph.i91.1
  %.017.i.1 = phi i64 [ %.fr.i.1, %.lr.ph.i91.1 ], [ 1, %bb.c ] ; 2 uses
  %.01516.i.1 = phi i64 [ %i.bb, %.lr.ph.i91.1 ], [ %i.ao, %bb.c ] ; 2 uses
  %i.as = lshr i64 %.01516.i.1, 1                 ; 3 uses
  %i.at = add i64 %i.as, %.017.i.1                ; 2 uses
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = fcmp ole float %i.aw, %3                ; 2 uses
  %i.ay = add i64 %i.at, 1
  %i.az = select i1 %i.ax, i64 %i.ay, i64 %.017.i.1
  %.fr.i.1 = freeze i64 %i.az                     ; 3 uses
  %.neg.i.1 = xor i64 %i.as, -1
  %i.ba = add nsw i64 %.01516.i.1, %.neg.i.1
  %i.bb = select i1 %i.ax, i64 %i.ba, i64 %i.as   ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i91.1, label %._crit_edge.i.1, !llvm.loop !552

._crit_edge.i.1:                                  ; preds = %.lr.ph.i91.1
  %i.bd = add nsw i64 %.fr.i.1, -1
  %..i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ao)
  %.inv.i.1 = icmp sgt i64 %.fr.i.1, 0
  %spec.select.i.1 = select i1 %.inv.i.1, i64 %..i.i.1, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1: ; preds = %bb.c, %._crit_edge.i.1
  %i.be = phi i64 [ %spec.select.i.1, %._crit_edge.i.1 ], [ 0, %bb.c ] ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.be ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = fsub float %3, %i.bh
  %i.bl = fsub float %i.bj, %i.bh
  %i.bm = fdiv float %i.bk, %i.bl                 ; 3 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %i.bo = fcmp ogt float %i.bm, 1.000000e+00
  %..i.1 = select i1 %i.bo, float 1.000000e+00, float %i.bm
  %.0.i.1 = select i1 %i.bn, float 0.000000e+00, float %..i.1 ; 2 uses
  %i.bp = fsub float 1.000000e+00, %.0.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !98 ; 2 uses
  %i.bs = mul i32 %i.br, %i.bf
  %i.bt = add i32 %i.bs, %.1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.phi.trans.insert164 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre165 = load i32, ptr %.phi.trans.insert164, align 4, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1
  %i.bu = phi i32 [ %.pre165, %bb.d ], [ %i.br, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 2 uses
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.d ], [ %.0.i.1, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 9 uses
  %.sroa.9.0 = phi float [ 1.000000e+00, %bb.d ], [ %i.bp, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 9 uses
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.bt, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bv, align 8, !tbaa !20
  %i.bx = fmul <2 x float> %1, %i.bw              ; 3 uses
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>
  %i.bz = load <2 x i32>, ptr %0, align 8, !tbaa !98 ; 3 uses
  %i.ca = add nsw <2 x i32> %i.bz, splat (i32 -2)
  %i.cb = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.ca, <2 x i32> %i.by) ; 3 uses
  %i.cc = sitofp <2 x i32> %i.cb to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.bx, %i.cc
  %i.cd = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %foldExtExtBinop168.a = fsub <2 x float> %i.bx, %i.cc
  %i.ce = extractelement <2 x float> %foldExtExtBinop168.a, i64 1 ; 7 uses
  %i.cf = extractelement <2 x i32> %i.cb, i64 1   ; 3 uses
  %i.cg = extractelement <2 x i32> %i.bz, i64 0
  %i.ch = mul nsw i32 %i.cf, %i.cg
  %i.ci = extractelement <2 x i32> %i.cb, i64 0
  %i.cj = add nsw i32 %i.ch, %i.ci
  %.sroa.023.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i82 = trunc i64 %.sroa.023.0.copyload to i32 ; 4 uses
  %.sroa.2.0.extract.shift.i83 = lshr i64 %.sroa.023.0.copyload, 32
  %.sroa.2.0.extract.trunc.i84 = trunc nuw i64 %.sroa.2.0.extract.shift.i83 to i32
  %i.ck = mul nsw i32 %.sroa.2.0.extract.trunc.i84, %.sroa.0.0.extract.trunc.i82 ; 3 uses
  %i.cl = mul i32 %i.ck, %.1.1                    ; 2 uses
  %i.cm = add i32 %i.cj, %i.cl                    ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !150 ; 6 uses
  %i.cp = mul i32 %i.ck, %i.bu                    ; 3 uses
  %i.cq = add i32 %i.cm, %i.cp                    ; 2 uses
  %i.cr = load i32, ptr %i.c, align 8, !tbaa !98  ; 2 uses
  %i.cs = mul i32 %i.cr, %i.ck                    ; 6 uses
  %i.ct = add i32 %i.cs, %i.cm
  %i.cu = zext i32 %i.cm to i64                   ; 6 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !20
  %i.cx = zext i32 %i.ct to i64                   ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !20
  %i.da = fmul float %.sroa.5.0, %i.cz
  %i.db = tail call noundef float @llvm.fma.f32(float %i.cw, float %.sroa.0.0, float %i.da)
  %i.dc = add i32 %i.cs, %i.cq
  %i.dd = zext i32 %i.cq to i64                   ; 6 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dd
  %i.df = load float, ptr %i.de, align 4, !tbaa !20
  %i.dg = zext i32 %i.dc to i64                   ; 6 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.dg
  %i.di = load float, ptr %i.dh, align 4, !tbaa !20
  %i.dj = fmul float %.sroa.5.0, %i.di
  %i.dk = tail call noundef float @llvm.fma.f32(float %i.df, float %.sroa.0.0, float %i.dj)
  %i.dl = fmul float %.sroa.12.0, %i.dk
  %i.dm = tail call noundef float @llvm.fma.f32(float %i.db, float %.sroa.9.0, float %i.dl)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 4 ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cu
  %i.dp = load float, ptr %i.do, align 4, !tbaa !20
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.cx
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !20
  %i.ds = fmul float %.sroa.5.0, %i.dr
  %i.dt = tail call noundef float @llvm.fma.f32(float %i.dp, float %.sroa.0.0, float %i.ds)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dd
  %i.dv = load float, ptr %i.du, align 4, !tbaa !20
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dg
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !20
  %i.dy = fmul float %.sroa.5.0, %i.dx
  %i.dz = tail call noundef float @llvm.fma.f32(float %i.dv, float %.sroa.0.0, float %i.dy)
  %i.ea = fmul float %.sroa.12.0, %i.dz
  %i.eb = tail call noundef float @llvm.fma.f32(float %i.dt, float %.sroa.9.0, float %i.ea)
  %sext = shl i64 %.sroa.023.0.copyload, 32
  %i.ec = ashr exact i64 %sext, 32                ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.ec ; 5 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.cu
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !20
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.cx
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !20
  %i.ei = fmul float %.sroa.5.0, %i.eh
  %i.ej = tail call noundef float @llvm.fma.f32(float %i.ef, float %.sroa.0.0, float %i.ei)
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.dd
  %i.el = load float, ptr %i.ek, align 4, !tbaa !20
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.dg
  %i.en = load float, ptr %i.em, align 4, !tbaa !20
  %i.eo = fmul float %.sroa.5.0, %i.en
  %i.ep = tail call noundef float @llvm.fma.f32(float %i.el, float %.sroa.0.0, float %i.eo)
  %i.eq = fmul float %.sroa.12.0, %i.ep
  %i.er = tail call noundef float @llvm.fma.f32(float %i.ej, float %.sroa.9.0, float %i.eq)
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 4 ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.cu
  %i.eu = load float, ptr %i.et, align 4, !tbaa !20
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.cx
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !20
  %i.ex = fmul float %.sroa.5.0, %i.ew
  %i.ey = tail call noundef float @llvm.fma.f32(float %i.eu, float %.sroa.0.0, float %i.ex)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.dd
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !20
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %i.dg
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !20
  %i.fd = fmul float %.sroa.5.0, %i.fc
  %i.fe = tail call noundef float @llvm.fma.f32(float %i.fa, float %.sroa.0.0, float %i.fd)
  %i.ff = fmul float %.sroa.12.0, %i.fe
  %i.fg = tail call noundef float @llvm.fma.f32(float %i.ey, float %.sroa.9.0, float %i.ff)
  %i.fh = fsub float 1.000000e+00, %i.cd
  %i.fi = fsub float 1.000000e+00, %i.ce          ; 4 uses
  %i.fj = fmul float %i.ce, %i.er
  %i.fk = tail call noundef float @llvm.fma.f32(float %i.fi, float %i.dm, float %i.fj) ; 3 uses
  %i.fl = fmul float %i.ce, %i.fg
  %i.fm = tail call noundef float @llvm.fma.f32(float %i.fi, float %i.eb, float %i.fl) ; 2 uses
  %i.fn = fmul float %i.cd, %i.fm
  %i.fo = tail call noundef float @llvm.fma.f32(float %i.fh, float %i.fk, float %i.fn)
  %i.fp = fmul float %i.cd, 5.000000e-01
  %i.fq = fsub float %i.fm, %i.fk
  %i.fr = fmul float %i.fp, %i.fq
  %i.fs = fadd float %i.fk, %i.fr
  %i.ft = fmul float %i.cd, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !150 ; 13 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.cu
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !20
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.cx
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !20
  %i.ga = fmul float %.sroa.5.0, %i.fz
  %i.gb = tail call noundef float @llvm.fma.f32(float %i.fx, float %.sroa.0.0, float %i.ga)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.dd
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !20
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.dg
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !20
  %i.gg = fmul float %.sroa.5.0, %i.gf
  %i.gh = tail call noundef float @llvm.fma.f32(float %i.gd, float %.sroa.0.0, float %i.gg)
  %i.gi = fmul float %.sroa.12.0, %i.gh
  %i.gj = tail call noundef float @llvm.fma.f32(float %i.gb, float %.sroa.9.0, float %i.gi)
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.fv, i64 %i.ec ; 4 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.cu
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !20
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.cx
  %i.go = load float, ptr %i.gn, align 4, !tbaa !20
  %i.gp = fmul float %.sroa.5.0, %i.go
  %i.gq = tail call noundef float @llvm.fma.f32(float %i.gm, float %.sroa.0.0, float %i.gp)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.dd
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !20
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.dg
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !20
  %i.gv = fmul float %.sroa.5.0, %i.gu
  %i.gw = tail call noundef float @llvm.fma.f32(float %i.gs, float %.sroa.0.0, float %i.gv)
  %i.gx = fmul float %.sroa.12.0, %i.gw
  %i.gy = tail call noundef float @llvm.fma.f32(float %i.gq, float %.sroa.9.0, float %i.gx)
  %i.gz = fmul float %i.fi, %i.gj
  %i.ha = fmul float %i.ce, %i.gy
  %i.hb = fadd float %i.gz, %i.ha
  %i.hc = fadd float %i.ft, %i.hb
  %i.hd = mul nsw i32 %i.cf, %.sroa.0.0.extract.trunc.i82
  %i.he = add i32 %i.hd, %i.cl
  %i.hf = add i32 %i.he, -1                       ; 2 uses
  %i.hg = add i32 %i.hf, %.sroa.0.0.extract.trunc.i82 ; 3 uses
  %i.hh = add i32 %i.hg, %i.cp                    ; 2 uses
  %i.hi = add i32 %i.hg, %i.cs
  %i.hj = zext i32 %i.hg to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !20
  %i.hm = zext i32 %i.hi to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.hm
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !20
  %i.hp = fmul float %.sroa.5.0, %i.ho
  %i.hq = tail call noundef float @llvm.fma.f32(float %i.hl, float %.sroa.0.0, float %i.hp)
  %i.hr = add i32 %i.hh, %i.cs
  %i.hs = zext i32 %i.hh to i64
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !20
  %i.hv = zext i32 %i.hr to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.hv
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !20
  %i.hy = fmul float %.sroa.5.0, %i.hx
  %i.hz = tail call noundef float @llvm.fma.f32(float %i.hu, float %.sroa.0.0, float %i.hy)
  %i.ia = fmul float %.sroa.12.0, %i.hz
  %i.ib = tail call noundef float @llvm.fma.f32(float %i.hq, float %.sroa.9.0, float %i.ia) ; 3 uses
  %i.ic = shl nsw i32 %.sroa.0.0.extract.trunc.i82, 1
  %i.id = add i32 %i.hf, %i.ic                    ; 3 uses
  %i.ie = add i32 %i.id, %i.cp                    ; 2 uses
  %i.if = add i32 %i.id, %i.cs
  %i.ig = zext i32 %i.id to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.ig
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !20
  %i.ij = zext i32 %i.if to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.ij
  %i.il = load float, ptr %i.ik, align 4, !tbaa !20
  %i.im = fmul float %.sroa.5.0, %i.il
  %i.in = tail call noundef float @llvm.fma.f32(float %i.ii, float %.sroa.0.0, float %i.im)
  %i.io = add i32 %i.ie, %i.cs
  %i.ip = zext i32 %i.ie to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.ip
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !20
  %i.is = zext i32 %i.io to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !20
  %i.iv = fmul float %.sroa.5.0, %i.iu
  %i.iw = tail call noundef float @llvm.fma.f32(float %i.ir, float %.sroa.0.0, float %i.iv)
  %i.ix = fmul float %.sroa.12.0, %i.iw
  %i.iy = tail call noundef float @llvm.fma.f32(float %i.in, float %.sroa.9.0, float %i.ix) ; 2 uses
  %i.iz = fmul float %i.fi, %i.ib
  %i.ja = fmul float %i.ce, %i.iy
  %i.jb = fadd float %i.iz, %i.ja
  %i.jc = fdiv float %i.hc, %i.jb
  %i.jd = insertelement <2 x float> poison, float %i.jc, i64 0
  %i.je = fmul float %i.ce, 5.000000e-01
  %i.jf = fsub float %i.iy, %i.ib
  %i.jg = fmul float %i.je, %i.jf
  %i.jh = fadd float %i.ib, %i.jg
  %i.ji = fmul float %i.ce, %i.jh
  %i.jj = extractelement <2 x i32> %i.bz, i64 1   ; 3 uses
  %i.jk = mul i32 %i.jj, %.1.1
  %i.jl = add i32 %i.cf, %i.jk                    ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !150 ; 4 uses
  %i.jo = mul i32 %i.bu, %i.jj
  %i.jp = add i32 %i.jo, %i.jl                    ; 2 uses
  %i.jq = mul i32 %i.cr, %i.jj                    ; 2 uses
  %i.jr = add i32 %i.jq, %i.jl
  %i.js = zext i32 %i.jl to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.js
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !20
  %i.jv = zext i32 %i.jr to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jv
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !20
  %i.jy = fmul float %.sroa.5.0, %i.jx
  %i.jz = tail call noundef float @llvm.fma.f32(float %i.ju, float %.sroa.0.0, float %i.jy)
  %i.ka = add i32 %i.jq, %i.jp
  %i.kb = zext i32 %i.jp to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kb
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !20
  %i.ke = zext i32 %i.ka to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.ke
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !20
  %i.kh = fmul float %.sroa.5.0, %i.kg
  %i.ki = tail call noundef float @llvm.fma.f32(float %i.kd, float %.sroa.0.0, float %i.kh)
  %i.kj = fmul float %.sroa.12.0, %i.ki
  %i.kk = tail call noundef float @llvm.fma.f32(float %i.jz, float %.sroa.9.0, float %i.kj)
  %i.kl = fadd float %i.ji, %i.kk
  %.sroa.0105.4.vec.insert = insertelement <2 x float> %i.jd, float %i.kl, i64 1
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.bv, align 8 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop170 = fmul <2 x float> %.sroa.01.0.copyload, %shift
  %i.km = extractelement <2 x float> %foldExtExtBinop170, i64 0
  %i.kn = fmul float %i.fo, %i.km
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %.sroa.0105.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.kn, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(176) %0, <2 x float> %1, float noundef %2, float noundef %3, float noundef %4) local_unnamed_addr #1 comdat align 2 {
_ZN4pstd5arrayIfLi3EEC2ESt16initializer_listIfE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %5 = load ptr, ptr %i.b, align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4pstd5arrayIfLi3EEC2ESt16initializer_listIfE.exit
  %i.f = zext i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -2                     ; 2 uses
  %i.h = icmp ugt i32 %i.d, 2
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !150  ; 2 uses
  br i1 %i.h, label %.lr.ph.i66, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

.lr.ph.i66:                                       ; preds = %bb.a, %.lr.ph.i66
  %.017.i = phi i64 [ %.fr.i, %.lr.ph.i66 ], [ 1, %bb.a ] ; 2 uses
  %.01516.i = phi i64 [ %i.t, %.lr.ph.i66 ], [ %i.g, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.01516.i, 1                    ; 3 uses
  %i.l = add i64 %i.k, %.017.i                    ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !20
  %i.p = fcmp ole float %i.o, %2                  ; 2 uses
  %i.q = add i64 %i.l, 1
  %i.r = select i1 %i.p, i64 %i.q, i64 %.017.i
  %.fr.i = freeze i64 %i.r                        ; 3 uses
  %.neg.i = xor i64 %i.k, -1
  %i.s = add nsw i64 %.01516.i, %.neg.i
  %i.t = select i1 %i.p, i64 %i.s, i64 %i.k       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i66, label %._crit_edge.i, !llvm.loop !553

._crit_edge.i:                                    ; preds = %.lr.ph.i66
  %i.v = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.g)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit: ; preds = %bb.a, %._crit_edge.i
  %i.w = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fsub float %2, %i.z
  %i.ad = fsub float %i.ab, %i.z
  %i.ae = fdiv float %i.ac, %i.ad                 ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  %i.ag = fcmp ogt float %i.ae, 1.000000e+00
  %..i = select i1 %i.ag, float 1.000000e+00, float %i.ae
  %.0.i = select i1 %i.af, float 0.000000e+00, float %..i ; 2 uses
  %i.ah = fsub float 1.000000e+00, %.0.i
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !98
  %i.aj = mul i32 %i.ai, %i.x
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pstd5arrayIfLi3EEC2ESt16initializer_listIfE.exit, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit
  %.sroa.5.0 = phi float [ %.0.i, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi3EEC2ESt16initializer_listIfE.exit ] ; 16 uses
  %.sroa.0.0 = phi float [ %i.ah, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 1.000000e+00, %_ZN4pstd5arrayIfLi3EEC2ESt16initializer_listIfE.exit ] ; 16 uses
  %.1 = phi i32 [ %i.aj, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0, %_ZN4pstd5arrayIfLi3EEC2ESt16initializer_listIfE.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98 ; 3 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = zext i32 %i.al to i64
  %i.ao = add nsw i64 %i.an, -2                   ; 2 uses
  %i.ap = icmp ugt i32 %i.al, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !150 ; 2 uses
  br i1 %i.ap, label %.lr.ph.i66.1, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

.lr.ph.i66.1:                                     ; preds = %bb.c, %.lr.ph.i66.1
  %.017.i.1 = phi i64 [ %.fr.i.1, %.lr.ph.i66.1 ], [ 1, %bb.c ] ; 2 uses
  %.01516.i.1 = phi i64 [ %i.bb, %.lr.ph.i66.1 ], [ %i.ao, %bb.c ] ; 2 uses
  %i.as = lshr i64 %.01516.i.1, 1                 ; 3 uses
  %i.at = add i64 %i.as, %.017.i.1                ; 2 uses
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = fcmp ole float %i.aw, %3                ; 2 uses
  %i.ay = add i64 %i.at, 1
  %i.az = select i1 %i.ax, i64 %i.ay, i64 %.017.i.1
  %.fr.i.1 = freeze i64 %i.az                     ; 3 uses
  %.neg.i.1 = xor i64 %i.as, -1
  %i.ba = add nsw i64 %.01516.i.1, %.neg.i.1
  %i.bb = select i1 %i.ax, i64 %i.ba, i64 %i.as   ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i66.1, label %._crit_edge.i.1, !llvm.loop !553

._crit_edge.i.1:                                  ; preds = %.lr.ph.i66.1
  %i.bd = add nsw i64 %.fr.i.1, -1
  %..i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ao)
  %.inv.i.1 = icmp sgt i64 %.fr.i.1, 0
  %spec.select.i.1 = select i1 %.inv.i.1, i64 %..i.i.1, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1: ; preds = %bb.c, %._crit_edge.i.1
  %i.be = phi i64 [ %spec.select.i.1, %._crit_edge.i.1 ], [ 0, %bb.c ] ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.be ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = fsub float %3, %i.bh
  %i.bl = fsub float %i.bj, %i.bh
  %i.bm = fdiv float %i.bk, %i.bl                 ; 3 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %i.bo = fcmp ogt float %i.bm, 1.000000e+00
  %..i.1 = select i1 %i.bo, float 1.000000e+00, float %i.bm
  %.0.i.1 = select i1 %i.bn, float 0.000000e+00, float %..i.1 ; 2 uses
  %i.bp = fsub float 1.000000e+00, %.0.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !98
  %i.bs = mul i32 %i.br, %i.bf
  %i.bt = add i32 %i.bs, %.1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1
  %.sroa.12.0 = phi float [ %.0.i.1, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ], [ 0.000000e+00, %bb.b ] ; 8 uses
  %.sroa.9.0 = phi float [ %i.bp, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ], [ 1.000000e+00, %bb.b ] ; 8 uses
  %.1.1 = phi i32 [ %i.bt, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ], [ %.1, %bb.b ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !98 ; 3 uses
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = zext i32 %i.bv to i64
  %i.by = add nsw i64 %i.bx, -2                   ; 2 uses
  %i.bz = icmp ugt i32 %i.bv, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !150 ; 2 uses
  br i1 %i.bz, label %.lr.ph.i66.2, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.2

.lr.ph.i66.2:                                     ; preds = %bb.e, %.lr.ph.i66.2
  %.017.i.2 = phi i64 [ %.fr.i.2, %.lr.ph.i66.2 ], [ 1, %bb.e ] ; 2 uses
  %.01516.i.2 = phi i64 [ %i.cl, %.lr.ph.i66.2 ], [ %i.by, %bb.e ] ; 2 uses
  %i.cc = lshr i64 %.01516.i.2, 1                 ; 3 uses
  %i.cd = add i64 %i.cc, %.017.i.2                ; 2 uses
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20
  %i.ch = fcmp ole float %i.cg, %4                ; 2 uses
  %i.ci = add i64 %i.cd, 1
  %i.cj = select i1 %i.ch, i64 %i.ci, i64 %.017.i.2
  %.fr.i.2 = freeze i64 %i.cj                     ; 3 uses
  %.neg.i.2 = xor i64 %i.cc, -1
  %i.ck = add nsw i64 %.01516.i.2, %.neg.i.2
  %i.cl = select i1 %i.ch, i64 %i.ck, i64 %i.cc   ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i66.2, label %._crit_edge.i.2, !llvm.loop !553

._crit_edge.i.2:                                  ; preds = %.lr.ph.i66.2
  %i.cn = add nsw i64 %.fr.i.2, -1
  %..i.i.2 = tail call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.by)
  %.inv.i.2 = icmp sgt i64 %.fr.i.2, 0
  %spec.select.i.2 = select i1 %.inv.i.2, i64 %..i.i.2, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.2

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.2: ; preds = %bb.e, %._crit_edge.i.2
  %i.co = phi i64 [ %spec.select.i.2, %._crit_edge.i.2 ], [ 0, %bb.e ] ; 2 uses
  %i.cp = trunc nuw i64 %i.co to i32
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.co ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !20
  %i.cu = fsub float %4, %i.cr
  %i.cv = fsub float %i.ct, %i.cr
  %i.cw = fdiv float %i.cu, %i.cv                 ; 3 uses
  %i.cx = fcmp olt float %i.cw, 0.000000e+00
  %i.cy = fcmp ogt float %i.cw, 1.000000e+00
  %..i.2 = select i1 %i.cy, float 1.000000e+00, float %i.cw
  %.0.i.2 = select i1 %i.cx, float 0.000000e+00, float %..i.2 ; 2 uses
  %i.cz = fsub float 1.000000e+00, %.0.i.2
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.db = load i32, ptr %i.da, align 4, !tbaa !98 ; 2 uses
  %i.dc = mul i32 %i.db, %i.cp
  %i.dd = add i32 %i.dc, %.1.1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.phi.trans.insert105 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %.pre106 = load i32, ptr %.phi.trans.insert105, align 4, !tbaa !98
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.2
  %i.de = phi i32 [ %.pre106, %bb.f ], [ %i.db, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.2 ]
  %.sroa.19.0 = phi float [ 0.000000e+00, %bb.f ], [ %.0.i.2, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.2 ] ; 4 uses
  %.sroa.16.0 = phi float [ 1.000000e+00, %bb.f ], [ %i.cz, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.2 ] ; 4 uses
  %.1.2 = phi i32 [ %.1.1, %bb.f ], [ %i.dd, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm3EE8EvaluateIJfffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.2 ]
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dg = load <2 x float>, ptr %i.df, align 8, !tbaa !20
  %i.dh = fmul <2 x float> %1, %i.dg              ; 3 uses
  %i.di = fptosi <2 x float> %i.dh to <2 x i32>
  %i.dj = load <2 x i32>, ptr %0, align 8, !tbaa !98
  %i.dk = load i32, ptr %0, align 8, !tbaa !158
  %i.dl = add nsw <2 x i32> %i.dj, splat (i32 -2)
  %i.dm = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.dl, <2 x i32> %i.di) ; 3 uses
  %i.dn = sitofp <2 x i32> %i.dm to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.dh, %i.dn
  %i.do = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop110 = fsub <2 x float> %i.dh, %i.dn
  %i.dp = extractelement <2 x float> %foldExtExtBinop110, i64 1 ; 2 uses
  %i.dq = fsub float 1.000000e+00, %i.do          ; 2 uses
  %i.dr = fsub float 1.000000e+00, %i.dp
  %i.ds = extractelement <2 x i32> %i.dm, i64 1
  %i.dt = mul nsw i32 %i.ds, %i.dk
  %i.du = extractelement <2 x i32> %i.dm, i64 0
  %i.dv = add nsw i32 %i.dt, %i.du
  %.sroa.04.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i61 = trunc i64 %.sroa.04.0.copyload to i32
  %.sroa.2.0.extract.shift.i62 = lshr i64 %.sroa.04.0.copyload, 32
  %.sroa.2.0.extract.trunc.i63 = trunc nuw i64 %.sroa.2.0.extract.shift.i62 to i32
  %i.dw = mul nsw i32 %.sroa.2.0.extract.trunc.i63, %.sroa.0.0.extract.trunc.i61 ; 4 uses
  %i.dx = mul i32 %i.dw, %.1.2
  %i.dy = add i32 %i.dv, %i.dx                    ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !150 ; 10 uses
  %i.eb = mul i32 %i.dw, %i.de
  %i.ec = add i32 %i.dy, %i.eb                    ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !98
  %i.ef = mul i32 %i.ee, %i.dw                    ; 2 uses
  %i.eg = add i32 %i.ef, %i.dy                    ; 2 uses
  %i.eh = load i32, ptr %i.c, align 4, !tbaa !98
  %i.ei = mul i32 %i.eh, %i.dw                    ; 4 uses
  %i.ej = add i32 %i.ei, %i.dy
  %i.ek = zext i32 %i.dy to i64                   ; 4 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !20
  %i.en = zext i32 %i.ej to i64                   ; 4 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !20
  %i.eq = fmul float %.sroa.5.0, %i.ep
  %i.er = tail call noundef float @llvm.fma.f32(float %i.em, float %.sroa.0.0, float %i.eq)
  %i.es = add i32 %i.ei, %i.eg
  %i.et = zext i32 %i.eg to i64                   ; 4 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.et
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !20
  %i.ew = zext i32 %i.es to i64                   ; 4 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !20
  %i.ez = fmul float %.sroa.5.0, %i.ey
  %i.fa = tail call noundef float @llvm.fma.f32(float %i.ev, float %.sroa.0.0, float %i.ez)
  %i.fb = fmul float %.sroa.12.0, %i.fa
  %i.fc = tail call noundef float @llvm.fma.f32(float %i.er, float %.sroa.9.0, float %i.fb)
  %i.fd = add i32 %i.ef, %i.ec                    ; 2 uses
  %i.fe = add i32 %i.ei, %i.ec
  %i.ff = zext i32 %i.ec to i64                   ; 4 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !20
  %i.fi = zext i32 %i.fe to i64                   ; 4 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fi
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !20
  %i.fl = fmul float %.sroa.5.0, %i.fk
  %i.fm = tail call noundef float @llvm.fma.f32(float %i.fh, float %.sroa.0.0, float %i.fl)
  %i.fn = add i32 %i.ei, %i.fd
  %i.fo = zext i32 %i.fd to i64                   ; 4 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fo
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !20
  %i.fr = zext i32 %i.fn to i64                   ; 4 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !20
  %i.fu = fmul float %.sroa.5.0, %i.ft
  %i.fv = tail call noundef float @llvm.fma.f32(float %i.fq, float %.sroa.0.0, float %i.fu)
  %i.fw = fmul float %.sroa.12.0, %i.fv
  %i.fx = tail call noundef float @llvm.fma.f32(float %i.fm, float %.sroa.9.0, float %i.fw)
  %i.fy = fmul float %.sroa.19.0, %i.fx
  %i.fz = tail call noundef float @llvm.fma.f32(float %i.fc, float %.sroa.16.0, float %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 8 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.ek
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !20
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.en
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !20
  %i.gf = fmul float %.sroa.5.0, %i.ge
  %i.gg = tail call noundef float @llvm.fma.f32(float %i.gc, float %.sroa.0.0, float %i.gf)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.et
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !20
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.ew
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !20
  %i.gl = fmul float %.sroa.5.0, %i.gk
  %i.gm = tail call noundef float @llvm.fma.f32(float %i.gi, float %.sroa.0.0, float %i.gl)
  %i.gn = fmul float %.sroa.12.0, %i.gm
  %i.go = tail call noundef float @llvm.fma.f32(float %i.gg, float %.sroa.9.0, float %i.gn)
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.ff
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !20
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fi
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !20
  %i.gt = fmul float %.sroa.5.0, %i.gs
  %i.gu = tail call noundef float @llvm.fma.f32(float %i.gq, float %.sroa.0.0, float %i.gt)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fo
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !20
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.fr
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !20
  %i.gz = fmul float %.sroa.5.0, %i.gy
  %i.ha = tail call noundef float @llvm.fma.f32(float %i.gw, float %.sroa.0.0, float %i.gz)
  %i.hb = fmul float %.sroa.12.0, %i.ha
  %i.hc = tail call noundef float @llvm.fma.f32(float %i.gu, float %.sroa.9.0, float %i.hb)
  %i.hd = fmul float %.sroa.19.0, %i.hc
  %i.he = tail call noundef float @llvm.fma.f32(float %i.go, float %.sroa.16.0, float %i.hd)
  %sext = shl i64 %.sroa.04.0.copyload, 32
  %i.hf = ashr exact i64 %sext, 30
  %i.hg = getelementptr inbounds i8, ptr %i.ea, i64 %i.hf ; 9 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ek
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !20
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.en
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !20
  %i.hl = fmul float %.sroa.5.0, %i.hk
  %i.hm = tail call noundef float @llvm.fma.f32(float %i.hi, float %.sroa.0.0, float %i.hl)
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.et
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !20
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ew
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !20
  %i.hr = fmul float %.sroa.5.0, %i.hq
  %i.hs = tail call noundef float @llvm.fma.f32(float %i.ho, float %.sroa.0.0, float %i.hr)
  %i.ht = fmul float %.sroa.12.0, %i.hs
  %i.hu = tail call noundef float @llvm.fma.f32(float %i.hm, float %.sroa.9.0, float %i.ht)
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.ff
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !20
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.fi
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !20
  %i.hz = fmul float %.sroa.5.0, %i.hy
  %i.ia = tail call noundef float @llvm.fma.f32(float %i.hw, float %.sroa.0.0, float %i.hz)
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.fo
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !20
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %i.fr
  %i.ie = load float, ptr %i.id, align 4, !tbaa !20
  %i.if = fmul float %.sroa.5.0, %i.ie
  %i.ig = tail call noundef float @llvm.fma.f32(float %i.ic, float %.sroa.0.0, float %i.if)
  %i.ih = fmul float %.sroa.12.0, %i.ig
  %i.ii = tail call noundef float @llvm.fma.f32(float %i.ia, float %.sroa.9.0, float %i.ih)
end_hunk_0
begin_hunk_1_@_ZNK4pbrt17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_:_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.me = load float, ptr %i.md, align 4, !tbaa !20
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lw, i64 %i.kg
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !20
  %i.mh = fmul float %.sroa.6.0, %i.mg
  %i.mi = tail call noundef float @llvm.fma.f32(float %i.me, float %.sroa.0.0, float %i.mh)
  %i.mj = fmul float %.sroa.15.0, %i.mi
  %i.mk = tail call noundef float @llvm.fma.f32(float %i.mc, float %.sroa.11.0, float %i.mj)
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.lh, i64 %i.hn ; 5 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.ju
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !20
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.jx
  %i.mp = load float, ptr %i.mo, align 4, !tbaa !20
  %i.mq = fmul float %.sroa.6.0, %i.mp
  %i.mr = tail call noundef float @llvm.fma.f32(float %i.mn, float %.sroa.0.0, float %i.mq)
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.kd
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !20
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.kg
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !20
  %i.mw = fmul float %.sroa.6.0, %i.mv
  %i.mx = tail call noundef float @llvm.fma.f32(float %i.mt, float %.sroa.0.0, float %i.mw)
  %i.my = fmul float %.sroa.15.0, %i.mx
  %i.mz = tail call noundef float @llvm.fma.f32(float %i.mr, float %.sroa.11.0, float %i.my)
  %i.na = getelementptr inbounds nuw i8, ptr %i.ml, i64 4 ; 4 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.ju
  %i.nc = load float, ptr %i.nb, align 4, !tbaa !20
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.jx
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !20
  %i.nf = fmul float %.sroa.6.0, %i.ne
  %i.ng = tail call noundef float @llvm.fma.f32(float %i.nc, float %.sroa.0.0, float %i.nf)
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.kd
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !20
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.kg
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !20
  %i.nl = fmul float %.sroa.6.0, %i.nk
  %i.nm = tail call noundef float @llvm.fma.f32(float %i.ni, float %.sroa.0.0, float %i.nl)
  %i.nn = fmul float %.sroa.15.0, %i.nm
  %i.no = tail call noundef float @llvm.fma.f32(float %i.ng, float %.sroa.11.0, float %i.nn)
  %i.np = fmul float %i.hh, %i.mz
  %i.nq = tail call noundef float @llvm.fma.f32(float %i.hi, float %i.lv, float %i.np) ; 6 uses
  %i.nr = fmul float %i.hh, %i.no
  %i.ns = tail call noundef float @llvm.fma.f32(float %i.hi, float %i.mk, float %i.nr) ; 3 uses
  %i.nt = fsub float %i.nq, %i.ns                 ; 3 uses
  %i.nu = tail call noundef float @llvm.fabs.f32(float %i.nt)
  %i.nv = fadd float %i.nq, %i.ns                 ; 2 uses
  %i.nw = fmul float %i.nv, f0x38D1B717
  %i.nx = fcmp olt float %i.nu, %i.nw
  br i1 %i.nx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE3_EEmmRKT_.exit
  %i.ny = fmul float %i.lf, 2.000000e+00
  br label %bb.l

bb.k:                                             ; preds = %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE6SampleIJffEEENS_8PLSampleENS_6Point2IfEEDpT_EUljE3_EEmmRKT_.exit
  %i.nz = fmul float %i.nq, %i.nq
  %i.oa = fmul float %i.lf, 2.000000e+00
  %i.ob = fmul float %i.oa, %i.nt
  %i.oc = fsub float %i.nz, %i.ob                 ; 2 uses
  %i.od = fcmp ogt float %i.oc, 0.000000e+00
  %.sroa.speculated.i87 = select i1 %i.od, float %i.oc, float 0.000000e+00
  %sqrt.i88 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i87)
  %i.oe = fsub float %i.nq, %sqrt.i88
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.63 = phi float [ %i.nv, %bb.j ], [ %i.nt, %bb.k ]
  %i.of = phi float [ %i.ny, %bb.j ], [ %i.oe, %bb.k ]
  %i.og = fdiv float %i.of, %.63                  ; 3 uses
  %i.oh = insertelement <2 x i32> poison, i32 %i.jq, i64 0
  %i.oi = insertelement <2 x i32> %i.oh, i32 %i.ar, i64 1
  %i.oj = uitofp <2 x i32> %i.oi to <2 x float>
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ol = insertelement <2 x float> poison, float %i.og, i64 0
  %i.om = insertelement <2 x float> %i.ol, float %i.hh, i64 1
  %i.on = fadd <2 x float> %i.om, %i.oj
  %i.oo = load <2 x float>, ptr %i.ok, align 8, !tbaa !20
  %i.op = fmul <2 x float> %i.oo, %i.on
  %i.oq = fsub float 1.000000e+00, %i.og
  %i.or = fmul float %i.nq, %i.oq
  %i.os = fmul float %i.ns, %i.og
  %i.ot = fadd float %i.os, %i.or
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0.copyload = load <2 x float>, ptr %i.ou, align 8 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.01.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %.sroa.01.0.copyload, %shift
  %i.ov = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ow = fmul float %i.ot, %i.ov
  %.fca.0.insert = insertvalue { <2 x float>, float } poison, <2 x float> %i.op, 0
  %.fca.1.insert = insertvalue { <2 x float>, float } %.fca.0.insert, float %i.ow, 1
  ret { <2 x float>, float } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZNK4pbrt12MeasuredBxDF3PDFENS_7Vector3IfEES2_NS_13TransportModeENS_18BxDFReflTransFlagsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = trunc i32 %6 to i1
  %i.a = fmul float %2, %4
  %i.b = fcmp ogt float %i.a, 0.000000e+00
  %or.cond = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp olt float %2, 0.000000e+00
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = fneg <2 x float> %1
  %i.e = fneg float %2
  %i.f = fneg <2 x float> %3
  %i.g = fneg float %4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0106.0 = phi <2 x float> [ %i.f, %bb.c ], [ %3, %bb.b ]
  %.sroa.7.0 = phi float [ %i.g, %bb.c ], [ %4, %bb.b ]
  %.sroa.0113.0 = phi <2 x float> [ %i.d, %bb.c ], [ %1, %bb.b ] ; 4 uses
  %.sroa.10.0 = phi float [ %i.e, %bb.c ], [ %2, %bb.b ] ; 5 uses
  %i.h = fadd <2 x float> %.sroa.0106.0, %.sroa.0113.0 ; 3 uses
  %i.i = fadd float %.sroa.7.0, %.sroa.10.0       ; 3 uses
  %i.j = fmul <2 x float> %i.h, %i.h              ; 2 uses
  %shift = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.j, %shift
  %i.k = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.l = fmul float %i.i, %i.i
  %i.m = fadd float %i.l, %i.k                    ; 2 uses
  %i.n = fcmp oeq float %i.m, 0.000000e+00
  br i1 %i.n, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.0113.0, i64 1
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.0113.0, i64 0
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.m) ; 2 uses
  %i.o = fdiv float %i.i, %sqrt.i.i               ; 4 uses
  %i.p = fcmp olt float %.sroa.10.0, -1.000000e+00
  %i.q = fcmp ogt float %.sroa.10.0, 1.000000e+00
  %..i.i.i = select i1 %i.q, float 1.000000e+00, float %.sroa.10.0
  %.0.i.i.i = select i1 %i.p, float -1.000000e+00, float %..i.i.i
  %i.r = tail call noundef float @acosf(float noundef %.0.i.i.i) #31 ; 2 uses
  %i.s = tail call noundef float @atan2f(float noundef %.sroa.03.4.vec.extract.i, float noundef %.sroa.03.0.vec.extract.i) #31 ; 3 uses
  %i.t = fcmp olt float %i.o, -1.000000e+00
  %i.u = fcmp ogt float %i.o, 1.000000e+00
  %..i.i.i97 = select i1 %i.u, float 1.000000e+00, float %i.o
  %.0.i.i.i98 = select i1 %i.t, float -1.000000e+00, float %..i.i.i97
  %i.v = tail call noundef float @acosf(float noundef %.0.i.i.i98) #31
  %i.w = fmul float %i.v, f0x3F22F983
  %i.x = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = fdiv <2 x float> %i.h, %i.y              ; 5 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1  ; 3 uses
  %i.ac = tail call noundef float @atan2f(float noundef %i.ab, float noundef %i.aa) #31 ; 2 uses
  %i.ad = tail call noundef float @sqrtf(float noundef %i.w) #31 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !179   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 680
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !148, !range !56, !noundef !57
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = fsub float %i.ac, %i.s
  %i.aj = select i1 %i.ah, float %i.ai, float %i.ac
  %i.ak = fmul float %i.aj, f0x3E22F983
  %i.al = fadd float %i.ak, 5.000000e-01          ; 2 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.am = tail call noundef float @llvm.floor.f32(float %i.al)
  %i.an = fsub float %i.al, %i.am
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.an, i64 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 360
  %i.ap = tail call { <2 x float>, float } @_ZNK4pbrt17PiecewiseLinear2DILm2EE6InvertIJffEEENS_8PLSampleENS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.ao, <2 x float> %.sroa.0.4.vec.insert, float noundef %i.s, float noundef %i.r) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.ap, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.ap, 1
  %i.aq = load ptr, ptr %0, align 8, !tbaa !179
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 688
  %i.as = tail call noundef float @_ZNK4pbrt17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %i.ar, <2 x float> %.fca.0.extract, float noundef %i.s, float noundef %i.r)
  %foldExtExtBinop127 = fmul <2 x float> %i.z, %i.z
  %i.at = extractelement <2 x float> %foldExtExtBinop127, i64 0
  %i.au = fmul float %i.ab, %i.ab
  %i.av = fadd float %i.at, %i.au
  %sqrt = tail call float @llvm.sqrt.f32(float %i.av)
  %i.aw = fmul <2 x float> %.sroa.0113.0, %i.z    ; 2 uses
  %shift129 = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop130 = fadd <2 x float> %i.aw, %shift129
  %i.ax = extractelement <2 x float> %foldExtExtBinop130, i64 0
  %i.ay = fmul float %.sroa.10.0, %i.o
  %i.az = fadd float %i.ay, %i.ax
  %i.ba = fmul float %i.az, 4.000000e+00
  %i.bb = fmul float %i.ad, f0x419DE9E7
  %i.bc = fmul float %sqrt, %i.bb                 ; 2 uses
  %i.bd = fcmp olt float %i.bc, f0x358637BD
  %.sroa.speculated = select i1 %i.bd, float f0x358637BD, float %i.bc
  %i.be = fmul float %i.ba, %.sroa.speculated
  %i.bf = fmul float %.fca.1.extract, %i.as
  %i.bg = fdiv float %i.bf, %i.be
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %.1 = phi float [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.a ], [ %i.bg, %bb.e ]
  ret float %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef float @_ZNK4pbrt17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_(ptr noundef nonnull align 8 dereferenceable(168) %0, <2 x float> %1, float noundef %2, float noundef %3) local_unnamed_addr #1 comdat align 2 {
_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %4 = load ptr, ptr %i.b, align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit
  %i.f = zext i32 %i.d to i64
  %i.g = add nsw i64 %i.f, -2                     ; 2 uses
  %i.h = icmp ugt i32 %i.d, 2
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !150  ; 2 uses
  br i1 %i.h, label %.lr.ph.i65, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

.lr.ph.i65:                                       ; preds = %bb.a, %.lr.ph.i65
  %.017.i = phi i64 [ %.fr.i, %.lr.ph.i65 ], [ 1, %bb.a ] ; 2 uses
  %.01516.i = phi i64 [ %i.t, %.lr.ph.i65 ], [ %i.g, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.01516.i, 1                    ; 3 uses
  %i.l = add i64 %i.k, %.017.i                    ; 2 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !20
  %i.p = fcmp ole float %i.o, %2                  ; 2 uses
  %i.q = add i64 %i.l, 1
  %i.r = select i1 %i.p, i64 %i.q, i64 %.017.i
  %.fr.i = freeze i64 %i.r                        ; 3 uses
  %.neg.i = xor i64 %i.k, -1
  %i.s = add nsw i64 %.01516.i, %.neg.i
  %i.t = select i1 %i.p, i64 %i.s, i64 %i.k       ; 2 uses
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i65, label %._crit_edge.i, !llvm.loop !557

._crit_edge.i:                                    ; preds = %.lr.ph.i65
  %i.v = add nsw i64 %.fr.i, -1
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.v, i64 %i.g)
  %.inv.i = icmp sgt i64 %.fr.i, 0
  %spec.select.i = select i1 %.inv.i, i64 %..i.i, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit: ; preds = %bb.a, %._crit_edge.i
  %i.w = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %bb.a ] ; 2 uses
  %i.x = trunc nuw i64 %i.w to i32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.w ; 2 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !20 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fsub float %2, %i.z
  %i.ad = fsub float %i.ab, %i.z
  %i.ae = fdiv float %i.ac, %i.ad                 ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  %i.ag = fcmp ogt float %i.ae, 1.000000e+00
  %..i = select i1 %i.ag, float 1.000000e+00, float %i.ae
  %.0.i = select i1 %i.af, float 0.000000e+00, float %..i ; 2 uses
  %i.ah = fsub float 1.000000e+00, %.0.i
  %i.ai = load i32, ptr %i.c, align 8, !tbaa !98
  %i.aj = mul i32 %i.ai, %i.x
  br label %bb.b

bb.b:                                             ; preds = %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit
  %.sroa.5.0 = phi float [ %.0.i, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 5 uses
  %.sroa.0.0 = phi float [ %i.ah, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 1.000000e+00, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 5 uses
  %.1 = phi i32 [ %i.aj, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit ], [ 0, %_ZN4pstd5arrayIfLi2EEC2ESt16initializer_listIfE.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !98 ; 3 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.an = zext i32 %i.al to i64
  %i.ao = add nsw i64 %i.an, -2                   ; 2 uses
  %i.ap = icmp ugt i32 %i.al, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !150 ; 2 uses
  br i1 %i.ap, label %.lr.ph.i65.1, label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

.lr.ph.i65.1:                                     ; preds = %bb.c, %.lr.ph.i65.1
  %.017.i.1 = phi i64 [ %.fr.i.1, %.lr.ph.i65.1 ], [ 1, %bb.c ] ; 2 uses
  %.01516.i.1 = phi i64 [ %i.bb, %.lr.ph.i65.1 ], [ %i.ao, %bb.c ] ; 2 uses
  %i.as = lshr i64 %.01516.i.1, 1                 ; 3 uses
  %i.at = add i64 %i.as, %.017.i.1                ; 2 uses
  %i.au = and i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = fcmp ole float %i.aw, %3                ; 2 uses
  %i.ay = add i64 %i.at, 1
  %i.az = select i1 %i.ax, i64 %i.ay, i64 %.017.i.1
  %.fr.i.1 = freeze i64 %i.az                     ; 3 uses
  %.neg.i.1 = xor i64 %i.as, -1
  %i.ba = add nsw i64 %.01516.i.1, %.neg.i.1
  %i.bb = select i1 %i.ax, i64 %i.ba, i64 %i.as   ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i65.1, label %._crit_edge.i.1, !llvm.loop !557

._crit_edge.i.1:                                  ; preds = %.lr.ph.i65.1
  %i.bd = add nsw i64 %.fr.i.1, -1
  %..i.i.1 = tail call i64 @llvm.umin.i64(i64 %i.bd, i64 %i.ao)
  %.inv.i.1 = icmp sgt i64 %.fr.i.1, 0
  %spec.select.i.1 = select i1 %.inv.i.1, i64 %..i.i.1, i64 0
  br label %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1

_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1: ; preds = %bb.c, %._crit_edge.i.1
  %i.be = phi i64 [ %spec.select.i.1, %._crit_edge.i.1 ], [ 0, %bb.c ] ; 2 uses
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.be ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !20
  %i.bk = fsub float %3, %i.bh
  %i.bl = fsub float %i.bj, %i.bh
  %i.bm = fdiv float %i.bk, %i.bl                 ; 3 uses
  %i.bn = fcmp olt float %i.bm, 0.000000e+00
  %i.bo = fcmp ogt float %i.bm, 1.000000e+00
  %..i.1 = select i1 %i.bo, float 1.000000e+00, float %i.bm
  %.0.i.1 = select i1 %i.bn, float 0.000000e+00, float %..i.1 ; 2 uses
  %i.bp = fsub float 1.000000e+00, %.0.i.1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !98 ; 2 uses
  %i.bs = mul i32 %i.br, %i.bf
  %i.bt = add i32 %i.bs, %.1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %.phi.trans.insert96 = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.pre97 = load i32, ptr %.phi.trans.insert96, align 4, !tbaa !98
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1
  %i.bu = phi i32 [ %.pre97, %bb.d ], [ %i.br, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ]
  %.sroa.12.0 = phi float [ 0.000000e+00, %bb.d ], [ %.0.i.1, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 4 uses
  %.sroa.9.0 = phi float [ 1.000000e+00, %bb.d ], [ %i.bp, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ] ; 4 uses
  %.1.1 = phi i32 [ %.1, %bb.d ], [ %i.bt, %_ZN4pbrt12FindIntervalIZNKS_17PiecewiseLinear2DILm2EE8EvaluateIJffEEEfNS_6Point2IfEEDpT_EUljE_EEmmRKT_.exit.1 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bw = load <2 x float>, ptr %i.bv, align 8, !tbaa !20
  %i.bx = fmul <2 x float> %1, %i.bw              ; 3 uses
  %i.by = fptosi <2 x float> %i.bx to <2 x i32>
  %i.bz = load <2 x i32>, ptr %0, align 8, !tbaa !98
  %i.ca = load i32, ptr %0, align 8, !tbaa !158
  %i.cb = add nsw <2 x i32> %i.bz, splat (i32 -2)
  %i.cc = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cb, <2 x i32> %i.by) ; 3 uses
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>   ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.bx, %i.cd
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 3 uses
  %foldExtExtBinop100.a = fsub <2 x float> %i.bx, %i.cd
  %i.cf = extractelement <2 x float> %foldExtExtBinop100.a, i64 1 ; 2 uses
  %i.cg = fsub float 1.000000e+00, %i.ce          ; 2 uses
  %i.ch = fsub float 1.000000e+00, %i.cf
  %i.ci = extractelement <2 x i32> %i.cc, i64 1
  %i.cj = mul nsw i32 %i.ci, %i.ca
  %i.ck = extractelement <2 x i32> %i.cc, i64 0
  %i.cl = add nsw i32 %i.cj, %i.ck
  %.sroa.04.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.extract.trunc.i60 = trunc i64 %.sroa.04.0.copyload to i32
  %.sroa.2.0.extract.shift.i61 = lshr i64 %.sroa.04.0.copyload, 32
  %.sroa.2.0.extract.trunc.i62 = trunc nuw i64 %.sroa.2.0.extract.shift.i61 to i32
  %i.cm = mul nsw i32 %.sroa.2.0.extract.trunc.i62, %.sroa.0.0.extract.trunc.i60 ; 3 uses
  %i.cn = mul i32 %i.cm, %.1.1
  %i.co = add i32 %i.cl, %i.cn                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !150 ; 5 uses
  %i.cr = mul i32 %i.cm, %i.bu
  %i.cs = add i32 %i.co, %i.cr                    ; 2 uses
  %i.ct = load i32, ptr %i.c, align 8, !tbaa !98
  %i.cu = mul i32 %i.ct, %i.cm                    ; 2 uses
  %i.cv = add i32 %i.cu, %i.co
  %i.cw = zext i32 %i.co to i64                   ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cw
  %i.cy = zext i32 %i.cv to i64                   ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cy
  %i.da = add i32 %i.cu, %i.cs
  %i.db = zext i32 %i.cs to i64                   ; 3 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.db
  %i.dd = zext i32 %i.da to i64                   ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dd
  %i.df = load <2 x float>, ptr %i.cx, align 4, !tbaa !20
  %i.dg = load <2 x float>, ptr %i.cz, align 4, !tbaa !20
  %i.dh = load <2 x float>, ptr %i.dc, align 4, !tbaa !20
  %i.di = load <2 x float>, ptr %i.de, align 4, !tbaa !20
  %i.dj = insertelement <4 x float> poison, float %.sroa.5.0, i64 0
  %i.dk = shufflevector <4 x float> %i.dj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dl = shufflevector <2 x float> %i.dg, <2 x float> %i.di, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dm = fmul <4 x float> %i.dk, %i.dl
  %i.dn = shufflevector <2 x float> %i.df, <2 x float> %i.dh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.do = insertelement <4 x float> poison, float %.sroa.0.0, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dq = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.dn, <4 x float> %i.dp, <4 x float> %i.dm) ; 4 uses
  %i.dr = extractelement <4 x float> %i.dq, i64 2
  %i.ds = fmul float %.sroa.12.0, %i.dr
  %i.dt = extractelement <4 x float> %i.dq, i64 0
  %i.du = tail call noundef float @llvm.fma.f32(float %i.dt, float %.sroa.9.0, float %i.ds)
  %i.dv = extractelement <4 x float> %i.dq, i64 3
  %i.dw = fmul float %.sroa.12.0, %i.dv
  %i.dx = extractelement <4 x float> %i.dq, i64 1
  %i.dy = tail call noundef float @llvm.fma.f32(float %i.dx, float %.sroa.9.0, float %i.dw)
  %sext = shl i64 %.sroa.04.0.copyload, 32
  %i.dz = ashr exact i64 %sext, 30
  %i.ea = getelementptr inbounds i8, ptr %i.cq, i64 %i.dz ; 5 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.cw
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !20
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.cy
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !20
  %i.ef = fmul float %.sroa.5.0, %i.ee
  %i.eg = tail call noundef float @llvm.fma.f32(float %i.ec, float %.sroa.0.0, float %i.ef)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.db
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !20
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dd
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !20
  %i.el = fmul float %.sroa.5.0, %i.ek
  %i.em = tail call noundef float @llvm.fma.f32(float %i.ei, float %.sroa.0.0, float %i.el)
  %i.en = fmul float %.sroa.12.0, %i.em
  %i.eo = tail call noundef float @llvm.fma.f32(float %i.eg, float %.sroa.9.0, float %i.en)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 4 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.cw
  %i.er = load float, ptr %i.eq, align 4, !tbaa !20
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.cy
  %i.et = load float, ptr %i.es, align 4, !tbaa !20
  %i.eu = fmul float %.sroa.5.0, %i.et
  %i.ev = tail call noundef float @llvm.fma.f32(float %i.er, float %.sroa.0.0, float %i.eu)
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.db
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !20
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.dd
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !20
  %i.fa = fmul float %.sroa.5.0, %i.ez
  %i.fb = tail call noundef float @llvm.fma.f32(float %i.ex, float %.sroa.0.0, float %i.fa)
  %i.fc = fmul float %.sroa.12.0, %i.fb
  %i.fd = tail call noundef float @llvm.fma.f32(float %i.ev, float %.sroa.9.0, float %i.fc)
  %i.fe = fmul float %i.ce, %i.dy
  %i.ff = tail call noundef float @llvm.fma.f32(float %i.cg, float %i.du, float %i.fe)
  %i.fg = fmul float %i.ce, %i.fd
  %i.fh = tail call noundef float @llvm.fma.f32(float %i.cg, float %i.eo, float %i.fg)
  %i.fi = fmul float %i.cf, %i.fh
  %i.fj = tail call noundef float @llvm.fma.f32(float %i.ch, float %i.ff, float %i.fi)
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bv, align 8 ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = fmul <2 x float> %.sroa.0.0.copyload, %shift
  %i.fk = extractelement <2 x float> %foldExtExtBinop102, i64 0
  %i.fl = fmul float %i.fk, %i.fj
  ret float %i.fl
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt12MeasuredBxDF8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !179
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !36, !alias.scope !560
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !39, !alias.scope !560
  store i8 0, ptr %i.b, align 8, !tbaa !21, !alias.scope !560
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_16MeasuredBxDFDataEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(888) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRKNS_16MeasuredBxDFDataEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !40, !alias.scope !560 ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !21, !alias.scope !560
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.d

_ZN4pbrt12StringPrintfIJRKNS_16MeasuredBxDFDataEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_1
