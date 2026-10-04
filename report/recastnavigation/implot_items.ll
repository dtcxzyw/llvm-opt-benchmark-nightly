Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot_items?download=true
inline.NumInlined: 15730
inline.NumDeleted: 1729
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN6ImPlot13RenderHeatmapIaEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fk, ptr %i.fu, align 8, !tbaa !161
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fn, ptr %i.fv, align 8, !tbaa !162
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fp, ptr %i.fw, align 8, !tbaa !163
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 272
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !156
  %i.ga = fpext float %i.fz to double
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 296
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !157
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 280
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 248
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !158
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fe, i64 264
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !159
  %i.gj = load <2 x double>, ptr %i.ge, align 8, !tbaa !63
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gl = load <2 x double>, ptr %i.gb, align 8, !tbaa !63
  store <2 x double> %i.gj, ptr %i.fx, align 8, !tbaa !63
  store <2 x double> %i.gl, ptr %i.gk, align 8, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.ga, ptr %i.gm, align 8, !tbaa !160
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.gd, ptr %i.gn, align 8, !tbaa !161
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.gg, ptr %i.go, align 8, !tbaa !162
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.gi, ptr %i.gp, align 8, !tbaa !163
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gq, align 8, !tbaa !164
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gr, align 4, !tbaa !165
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gs, align 8, !tbaa !2826
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gt, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIaEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.ep, ptr noundef nonnull align 4 dereferenceable(16) %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1275
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dy, ptr %i.gu, align 8, !tbaa !2827
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.gv, align 4, !tbaa !2828
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gw, align 8, !tbaa !1276
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.gx, align 8, !tbaa !1277
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gy, align 8, !tbaa !1278
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ha = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.hb = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.hc = fsub <2 x double> %i.ha, %i.hb
  %i.hd = fdiv <2 x double> %i.hc, %i.dx          ; 2 uses
  store <2 x double> %i.hd, ptr %i.gz, align 8, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.hf = extractelement <2 x double> %i.hb, i64 0
  store double %i.hf, ptr %i.he, align 8, !tbaa !1279
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.du, ptr %i.hg, align 8, !tbaa !1280
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.hh, align 8, !tbaa !1281
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.hj = fmul <2 x double> %i.hd, splat (double 5.000000e-01)
  store <2 x double> %i.hj, ptr %i.hi, align 8, !tbaa !63
  %i.hk = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.hl = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dy, ptr %11, align 8, !tbaa !150
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ho = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !151 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 2448
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !94
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [376 x i8], ptr %i.hr, i64 %i.hu ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 2452
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !95
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [376 x i8], ptr %i.hr, i64 %i.hy ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 272
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !156
  %i.ic = fpext float %i.ib to double
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 296
  %i.if = load double, ptr %i.ie, align 8, !tbaa !157
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 248
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !158
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 264
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !159
  %i.il = load <2 x double>, ptr %i.ig, align 8, !tbaa !63
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.in = load <2 x double>, ptr %i.id, align 8, !tbaa !63
  store <2 x double> %i.il, ptr %i.hn, align 8, !tbaa !63
  store <2 x double> %i.in, ptr %i.im, align 8, !tbaa !63
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.ic, ptr %i.io, align 8, !tbaa !160
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.if, ptr %i.ip, align 8, !tbaa !161
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.ii, ptr %i.iq, align 8, !tbaa !162
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.ik, ptr %i.ir, align 8, !tbaa !163
  %i.is = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 272
  %i.iu = load float, ptr %i.it, align 8, !tbaa !156
  %i.iv = fpext float %i.iu to double
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 296
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !157
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hz, i64 280
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hz, i64 248
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !158
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hz, i64 264
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !159
  %i.je = load <2 x double>, ptr %i.iz, align 8, !tbaa !63
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.jg = load <2 x double>, ptr %i.iw, align 8, !tbaa !63
  store <2 x double> %i.je, ptr %i.is, align 8, !tbaa !63
  store <2 x double> %i.jg, ptr %i.jf, align 8, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.iv, ptr %i.jh, align 8, !tbaa !160
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.iy, ptr %i.ji, align 8, !tbaa !161
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.jb, ptr %i.jj, align 8, !tbaa !162
  %i.jk = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.jd, ptr %i.jk, align 8, !tbaa !163
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.jl, align 8, !tbaa !164
  %i.jm = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jm, align 4, !tbaa !165
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.jn, align 8, !tbaa !2829
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jo, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIaEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hk, ptr noundef nonnull align 4 dereferenceable(16) %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jp = sitofp <2 x i32> %i.dw to <2 x double>
  %i.jq = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.jr = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.js = fsub <2 x double> %i.jq, %i.jr
  %i.jt = fdiv <2 x double> %i.js, %i.jp          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.ju = icmp sgt i32 %2, 0
  br i1 %i.ju, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jv = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jw = fsub double %i.aa, %i.y
  %i.jx = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jy = fsub double %i.ar, %i.ap
  %i.jz = fsub double %i.al, %i.aj
  %i.ka = fsub double %.0107, %.0
  br i1 %i.jv, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.kb = extractelement <2 x double> %i.jt, i64 1 ; 2 uses
  %i.kc = extractelement <2 x double> %i.jt, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.kd = icmp sgt i32 %3, 0
  br i1 %i.kd, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.ke = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.kf = fsub double %i.aa, %i.y
  %i.kg = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.kh = fsub double %i.ar, %i.ap
  %i.ki = fsub double %i.al, %i.aj
  %i.kj = fsub double %.0107, %.0
  br i1 %i.ke, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kk = extractelement <2 x double> %i.jt, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.km, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.kl = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.kl, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.km = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.km, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2820

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.mh, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.kn = load double, ptr %7, align 8, !tbaa !1254
  %i.ko = uitofp nneg i32 %.0110246 to double
  %i.kp = fmul double %i.kk, %i.ko
  %i.kq = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kr) ; 2 uses
  %21 = shufflevector <2 x double> %i.jt, <2 x double> %i.ks, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.ks, double %i.du, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kt = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.ku = fsub double %i.kt, %i.y
  %i.kv = fdiv double %i.ku, %i.kf
  %i.kw = call double @llvm.fmuladd.f64(double %i.kg, double %i.kv, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.kw, %bb.o ], [ %24, %bb.n ]
  %i.kx = fsub double %.0.i128, %i.s
  %i.ky = call double @llvm.fmuladd.f64(double %i.w, double %i.kx, double %i.q)
  %i.kz = fptrunc double %i.ky to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.la = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.lb = fsub double %i.la, %i.ap
  %i.lc = fdiv double %i.lb, %i.kh
  %i.ld = call double @llvm.fmuladd.f64(double %i.ki, double %i.lc, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.ld, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.le = fsub double %.0.i125, %i.aj
  %i.lf = call double @llvm.fmuladd.f64(double %i.an, double %i.le, double %i.ah)
  %i.lg = fptrunc double %i.lf to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.lh = getelementptr inbounds i8, ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !881
  %i.lj = sext i8 %i.li to i32
  %i.lk = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.lj) #16 ; 0 uses
  %i.ll = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.lm = load i8, ptr %i.lh, align 1, !tbaa !881
  %i.ln = sitofp i8 %i.lm to double
  %i.lo = fsub double %i.ln, %.0
  %i.lp = fdiv double %i.lo, %i.kj                ; 3 uses
  %i.lq = fcmp olt double %i.lp, 0.000000e+00
  %i.lr = fcmp ogt double %i.lp, 1.000000e+00
  %i.ls = select i1 %i.lr, double 1.000000e+00, double %i.lp
  %i.lt = select i1 %i.lq, double 0.000000e+00, double %i.ls
  %i.lu = fptrunc double %i.lt to float
  %i.lv = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lu, i32 noundef -1) #16 ; 2 uses
  %i.lw = extractvalue { <2 x float>, <2 x float> } %i.lv, 0 ; 2 uses
  %i.lx = extractvalue { <2 x float>, <2 x float> } %i.lv, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lw, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lw, i64 1
  %i.ly = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lz = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.ly)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.lx, i64 0
  %i.ma = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lz)
  %i.mb = fcmp ogt float %i.ma, 5.000000e-01
  %i.mc = select i1 %i.mb, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.md = fmul <2 x float> %i.ll, splat (float 5.000000e-01)
  %i.me = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.mf = insertelement <2 x float> %i.me, float %i.lg, i64 1
  %i.mg = fsub <2 x float> %i.mf, %i.md
  store <2 x float> %i.mg, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.mc, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.mh = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.mh, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2821

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.mm, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.mi = uitofp nneg i32 %.0109244 to double
  %i.mj = fmul double %i.kb, %i.mi
  %i.mk = call double @llvm.fmuladd.f64(double %i.kb, double 5.000000e-01, double %i.mj)
  %i.ml = call double @llvm.fmuladd.f64(double %., double %i.mk, double %i.du) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.mm = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.mm, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2822

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.of, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mn = load double, ptr %7, align 8, !tbaa !1254
  %i.mo = call double @llvm.fmuladd.f64(double %i.kc, double 5.000000e-01, double %i.mn)
  %i.mp = uitofp nneg i32 %.0108242 to double
  %i.mq = call double @llvm.fmuladd.f64(double %i.mp, double %i.kc, double %i.mo) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mr = call noundef double %i.ac(double noundef %i.mq, ptr noundef %i.ae) #16, !inline_history !22
  %i.ms = fsub double %i.mr, %i.y
  %i.mt = fdiv double %i.ms, %i.jw
  %i.mu = call double @llvm.fmuladd.f64(double %i.jx, double %i.mt, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mu, %bb.r ], [ %i.mq, %bb.q ]
  %i.mv = fsub double %.0.i134, %i.s
  %i.mw = call double @llvm.fmuladd.f64(double %i.w, double %i.mv, double %i.q)
  %i.mx = fptrunc double %i.mw to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.my = call noundef double %i.at(double noundef %i.ml, ptr noundef %i.av) #16, !inline_history !22
  %i.mz = fsub double %i.my, %i.ap
  %i.na = fdiv double %i.mz, %i.jy
  %i.nb = call double @llvm.fmuladd.f64(double %i.jz, double %i.na, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.nb, %bb.s ], [ %i.ml, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.nc = fsub double %.0.i131, %i.aj
  %i.nd = call double @llvm.fmuladd.f64(double %i.an, double %i.nc, double %i.ah)
  %i.ne = fptrunc double %i.nd to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.nf = getelementptr inbounds i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !881
  %i.nh = sext i8 %i.ng to i32
  %i.ni = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.nh) #16 ; 0 uses
  %i.nj = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.nk = load i8, ptr %i.nf, align 1, !tbaa !881
  %i.nl = sitofp i8 %i.nk to double
  %i.nm = fsub double %i.nl, %.0
  %i.nn = fdiv double %i.nm, %i.ka                ; 3 uses
  %i.no = fcmp olt double %i.nn, 0.000000e+00
  %i.np = fcmp ogt double %i.nn, 1.000000e+00
  %i.nq = select i1 %i.np, double 1.000000e+00, double %i.nn
  %i.nr = select i1 %i.no, double 0.000000e+00, double %i.nq
  %i.ns = fptrunc double %i.nr to float
  %i.nt = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.ns, i32 noundef -1) #16 ; 2 uses
  %i.nu = extractvalue { <2 x float>, <2 x float> } %i.nt, 0 ; 2 uses
  %i.nv = extractvalue { <2 x float>, <2 x float> } %i.nt, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nu, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nu, i64 1
  %i.nw = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.nx = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.nw)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nv, i64 0
  %i.ny = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.nx)
  %i.nz = fcmp ogt float %i.ny, 5.000000e-01
  %i.oa = select i1 %i.nz, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.ob = fmul <2 x float> %i.nj, splat (float 5.000000e-01)
  %i.oc = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.od = insertelement <2 x float> %i.oc, float %i.ne, i64 1
  %i.oe = fsub <2 x float> %i.od, %i.ob
  store <2 x float> %i.oe, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.oa, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.of = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.of, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2823

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapIhEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
end_hunk_0
begin_hunk_1_@_ZN6ImPlot13RenderHeatmapIhEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fk, ptr %i.fu, align 8, !tbaa !161
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fn, ptr %i.fv, align 8, !tbaa !162
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fp, ptr %i.fw, align 8, !tbaa !163
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 272
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !156
  %i.ga = fpext float %i.fz to double
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 296
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !157
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 280
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 248
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !158
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fe, i64 264
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !159
  %i.gj = load <2 x double>, ptr %i.ge, align 8, !tbaa !63
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gl = load <2 x double>, ptr %i.gb, align 8, !tbaa !63
  store <2 x double> %i.gj, ptr %i.fx, align 8, !tbaa !63
  store <2 x double> %i.gl, ptr %i.gk, align 8, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.ga, ptr %i.gm, align 8, !tbaa !160
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.gd, ptr %i.gn, align 8, !tbaa !161
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.gg, ptr %i.go, align 8, !tbaa !162
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.gi, ptr %i.gp, align 8, !tbaa !163
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gq, align 8, !tbaa !164
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gr, align 4, !tbaa !165
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gs, align 8, !tbaa !2839
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gt, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIhEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.ep, ptr noundef nonnull align 4 dereferenceable(16) %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1293
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dy, ptr %i.gu, align 8, !tbaa !2840
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.gv, align 4, !tbaa !2841
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gw, align 8, !tbaa !1294
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.gx, align 8, !tbaa !1295
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gy, align 8, !tbaa !1296
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ha = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.hb = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.hc = fsub <2 x double> %i.ha, %i.hb
  %i.hd = fdiv <2 x double> %i.hc, %i.dx          ; 2 uses
  store <2 x double> %i.hd, ptr %i.gz, align 8, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.hf = extractelement <2 x double> %i.hb, i64 0
  store double %i.hf, ptr %i.he, align 8, !tbaa !1297
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.du, ptr %i.hg, align 8, !tbaa !1298
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.hh, align 8, !tbaa !1299
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.hj = fmul <2 x double> %i.hd, splat (double 5.000000e-01)
  store <2 x double> %i.hj, ptr %i.hi, align 8, !tbaa !63
  %i.hk = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.hl = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dy, ptr %11, align 8, !tbaa !150
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ho = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !151 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 2448
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !94
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [376 x i8], ptr %i.hr, i64 %i.hu ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 2452
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !95
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [376 x i8], ptr %i.hr, i64 %i.hy ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 272
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !156
  %i.ic = fpext float %i.ib to double
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 296
  %i.if = load double, ptr %i.ie, align 8, !tbaa !157
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 248
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !158
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 264
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !159
  %i.il = load <2 x double>, ptr %i.ig, align 8, !tbaa !63
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.in = load <2 x double>, ptr %i.id, align 8, !tbaa !63
  store <2 x double> %i.il, ptr %i.hn, align 8, !tbaa !63
  store <2 x double> %i.in, ptr %i.im, align 8, !tbaa !63
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.ic, ptr %i.io, align 8, !tbaa !160
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.if, ptr %i.ip, align 8, !tbaa !161
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.ii, ptr %i.iq, align 8, !tbaa !162
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.ik, ptr %i.ir, align 8, !tbaa !163
  %i.is = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 272
  %i.iu = load float, ptr %i.it, align 8, !tbaa !156
  %i.iv = fpext float %i.iu to double
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 296
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !157
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hz, i64 280
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hz, i64 248
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !158
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hz, i64 264
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !159
  %i.je = load <2 x double>, ptr %i.iz, align 8, !tbaa !63
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.jg = load <2 x double>, ptr %i.iw, align 8, !tbaa !63
  store <2 x double> %i.je, ptr %i.is, align 8, !tbaa !63
  store <2 x double> %i.jg, ptr %i.jf, align 8, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.iv, ptr %i.jh, align 8, !tbaa !160
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.iy, ptr %i.ji, align 8, !tbaa !161
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.jb, ptr %i.jj, align 8, !tbaa !162
  %i.jk = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.jd, ptr %i.jk, align 8, !tbaa !163
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.jl, align 8, !tbaa !164
  %i.jm = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jm, align 4, !tbaa !165
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.jn, align 8, !tbaa !2842
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jo, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIhEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hk, ptr noundef nonnull align 4 dereferenceable(16) %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jp = sitofp <2 x i32> %i.dw to <2 x double>
  %i.jq = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.jr = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.js = fsub <2 x double> %i.jq, %i.jr
  %i.jt = fdiv <2 x double> %i.js, %i.jp          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.ju = icmp sgt i32 %2, 0
  br i1 %i.ju, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jv = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jw = fsub double %i.aa, %i.y
  %i.jx = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jy = fsub double %i.ar, %i.ap
  %i.jz = fsub double %i.al, %i.aj
  %i.ka = fsub double %.0107, %.0
  br i1 %i.jv, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.kb = extractelement <2 x double> %i.jt, i64 1 ; 2 uses
  %i.kc = extractelement <2 x double> %i.jt, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.kd = icmp sgt i32 %3, 0
  br i1 %i.kd, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.ke = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.kf = fsub double %i.aa, %i.y
  %i.kg = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.kh = fsub double %i.ar, %i.ap
  %i.ki = fsub double %i.al, %i.aj
  %i.kj = fsub double %.0107, %.0
  br i1 %i.ke, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kk = extractelement <2 x double> %i.jt, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.km, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.kl = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.kl, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.km = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.km, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2833

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.mh, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.kn = load double, ptr %7, align 8, !tbaa !1254
  %i.ko = uitofp nneg i32 %.0110246 to double
  %i.kp = fmul double %i.kk, %i.ko
  %i.kq = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kr) ; 2 uses
  %21 = shufflevector <2 x double> %i.jt, <2 x double> %i.ks, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.ks, double %i.du, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kt = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.ku = fsub double %i.kt, %i.y
  %i.kv = fdiv double %i.ku, %i.kf
  %i.kw = call double @llvm.fmuladd.f64(double %i.kg, double %i.kv, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.kw, %bb.o ], [ %24, %bb.n ]
  %i.kx = fsub double %.0.i128, %i.s
  %i.ky = call double @llvm.fmuladd.f64(double %i.w, double %i.kx, double %i.q)
  %i.kz = fptrunc double %i.ky to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.la = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.lb = fsub double %i.la, %i.ap
  %i.lc = fdiv double %i.lb, %i.kh
  %i.ld = call double @llvm.fmuladd.f64(double %i.ki, double %i.lc, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.ld, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.le = fsub double %.0.i125, %i.aj
  %i.lf = call double @llvm.fmuladd.f64(double %i.an, double %i.le, double %i.ah)
  %i.lg = fptrunc double %i.lf to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.lh = getelementptr inbounds i8, ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !881
  %i.lj = zext i8 %i.li to i32
  %i.lk = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.lj) #16 ; 0 uses
  %i.ll = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.lm = load i8, ptr %i.lh, align 1, !tbaa !881
  %i.ln = uitofp i8 %i.lm to double
  %i.lo = fsub double %i.ln, %.0
  %i.lp = fdiv double %i.lo, %i.kj                ; 3 uses
  %i.lq = fcmp olt double %i.lp, 0.000000e+00
  %i.lr = fcmp ogt double %i.lp, 1.000000e+00
  %i.ls = select i1 %i.lr, double 1.000000e+00, double %i.lp
  %i.lt = select i1 %i.lq, double 0.000000e+00, double %i.ls
  %i.lu = fptrunc double %i.lt to float
  %i.lv = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lu, i32 noundef -1) #16 ; 2 uses
  %i.lw = extractvalue { <2 x float>, <2 x float> } %i.lv, 0 ; 2 uses
  %i.lx = extractvalue { <2 x float>, <2 x float> } %i.lv, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lw, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lw, i64 1
  %i.ly = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lz = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.ly)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.lx, i64 0
  %i.ma = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lz)
  %i.mb = fcmp ogt float %i.ma, 5.000000e-01
  %i.mc = select i1 %i.mb, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.md = fmul <2 x float> %i.ll, splat (float 5.000000e-01)
  %i.me = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.mf = insertelement <2 x float> %i.me, float %i.lg, i64 1
  %i.mg = fsub <2 x float> %i.mf, %i.md
  store <2 x float> %i.mg, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.mc, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.mh = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.mh, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2834

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.mm, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.mi = uitofp nneg i32 %.0109244 to double
  %i.mj = fmul double %i.kb, %i.mi
  %i.mk = call double @llvm.fmuladd.f64(double %i.kb, double 5.000000e-01, double %i.mj)
  %i.ml = call double @llvm.fmuladd.f64(double %., double %i.mk, double %i.du) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.mm = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.mm, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2835

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.of, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mn = load double, ptr %7, align 8, !tbaa !1254
  %i.mo = call double @llvm.fmuladd.f64(double %i.kc, double 5.000000e-01, double %i.mn)
  %i.mp = uitofp nneg i32 %.0108242 to double
  %i.mq = call double @llvm.fmuladd.f64(double %i.mp, double %i.kc, double %i.mo) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mr = call noundef double %i.ac(double noundef %i.mq, ptr noundef %i.ae) #16, !inline_history !22
  %i.ms = fsub double %i.mr, %i.y
  %i.mt = fdiv double %i.ms, %i.jw
  %i.mu = call double @llvm.fmuladd.f64(double %i.jx, double %i.mt, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mu, %bb.r ], [ %i.mq, %bb.q ]
  %i.mv = fsub double %.0.i134, %i.s
  %i.mw = call double @llvm.fmuladd.f64(double %i.w, double %i.mv, double %i.q)
  %i.mx = fptrunc double %i.mw to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.my = call noundef double %i.at(double noundef %i.ml, ptr noundef %i.av) #16, !inline_history !22
  %i.mz = fsub double %i.my, %i.ap
  %i.na = fdiv double %i.mz, %i.jy
  %i.nb = call double @llvm.fmuladd.f64(double %i.jz, double %i.na, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.nb, %bb.s ], [ %i.ml, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.nc = fsub double %.0.i131, %i.aj
  %i.nd = call double @llvm.fmuladd.f64(double %i.an, double %i.nc, double %i.ah)
  %i.ne = fptrunc double %i.nd to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.nf = getelementptr inbounds i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !881
  %i.nh = zext i8 %i.ng to i32
  %i.ni = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.nh) #16 ; 0 uses
  %i.nj = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.nk = load i8, ptr %i.nf, align 1, !tbaa !881
  %i.nl = uitofp i8 %i.nk to double
  %i.nm = fsub double %i.nl, %.0
  %i.nn = fdiv double %i.nm, %i.ka                ; 3 uses
  %i.no = fcmp olt double %i.nn, 0.000000e+00
  %i.np = fcmp ogt double %i.nn, 1.000000e+00
  %i.nq = select i1 %i.np, double 1.000000e+00, double %i.nn
  %i.nr = select i1 %i.no, double 0.000000e+00, double %i.nq
  %i.ns = fptrunc double %i.nr to float
  %i.nt = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.ns, i32 noundef -1) #16 ; 2 uses
  %i.nu = extractvalue { <2 x float>, <2 x float> } %i.nt, 0 ; 2 uses
  %i.nv = extractvalue { <2 x float>, <2 x float> } %i.nt, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nu, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nu, i64 1
  %i.nw = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.nx = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.nw)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nv, i64 0
  %i.ny = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.nx)
  %i.nz = fcmp ogt float %i.ny, 5.000000e-01
  %i.oa = select i1 %i.nz, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.ob = fmul <2 x float> %i.nj, splat (float 5.000000e-01)
  %i.oc = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.od = insertelement <2 x float> %i.oc, float %i.ne, i64 1
  %i.oe = fsub <2 x float> %i.od, %i.ob
  store <2 x float> %i.oe, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.oa, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.of = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.of, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2836

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapIsEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
end_hunk_1
begin_hunk_2_@_ZN6ImPlot13RenderHeatmapIsEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fk, ptr %i.fu, align 8, !tbaa !161
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fn, ptr %i.fv, align 8, !tbaa !162
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fp, ptr %i.fw, align 8, !tbaa !163
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 272
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !156
  %i.ga = fpext float %i.fz to double
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 296
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !157
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 280
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 248
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !158
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fe, i64 264
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !159
  %i.gj = load <2 x double>, ptr %i.ge, align 8, !tbaa !63
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gl = load <2 x double>, ptr %i.gb, align 8, !tbaa !63
  store <2 x double> %i.gj, ptr %i.fx, align 8, !tbaa !63
  store <2 x double> %i.gl, ptr %i.gk, align 8, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.ga, ptr %i.gm, align 8, !tbaa !160
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.gd, ptr %i.gn, align 8, !tbaa !161
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.gg, ptr %i.go, align 8, !tbaa !162
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.gi, ptr %i.gp, align 8, !tbaa !163
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gq, align 8, !tbaa !164
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gr, align 4, !tbaa !165
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gs, align 8, !tbaa !2852
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gt, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIsEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.ep, ptr noundef nonnull align 4 dereferenceable(16) %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1312
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dy, ptr %i.gu, align 8, !tbaa !2853
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.gv, align 4, !tbaa !2854
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gw, align 8, !tbaa !1313
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.gx, align 8, !tbaa !1314
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gy, align 8, !tbaa !1315
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ha = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.hb = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.hc = fsub <2 x double> %i.ha, %i.hb
  %i.hd = fdiv <2 x double> %i.hc, %i.dx          ; 2 uses
  store <2 x double> %i.hd, ptr %i.gz, align 8, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.hf = extractelement <2 x double> %i.hb, i64 0
  store double %i.hf, ptr %i.he, align 8, !tbaa !1316
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.du, ptr %i.hg, align 8, !tbaa !1317
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.hh, align 8, !tbaa !1318
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.hj = fmul <2 x double> %i.hd, splat (double 5.000000e-01)
  store <2 x double> %i.hj, ptr %i.hi, align 8, !tbaa !63
  %i.hk = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.hl = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dy, ptr %11, align 8, !tbaa !150
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ho = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !151 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 2448
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !94
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [376 x i8], ptr %i.hr, i64 %i.hu ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 2452
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !95
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [376 x i8], ptr %i.hr, i64 %i.hy ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 272
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !156
  %i.ic = fpext float %i.ib to double
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 296
  %i.if = load double, ptr %i.ie, align 8, !tbaa !157
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 248
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !158
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 264
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !159
  %i.il = load <2 x double>, ptr %i.ig, align 8, !tbaa !63
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.in = load <2 x double>, ptr %i.id, align 8, !tbaa !63
  store <2 x double> %i.il, ptr %i.hn, align 8, !tbaa !63
  store <2 x double> %i.in, ptr %i.im, align 8, !tbaa !63
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.ic, ptr %i.io, align 8, !tbaa !160
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.if, ptr %i.ip, align 8, !tbaa !161
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.ii, ptr %i.iq, align 8, !tbaa !162
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.ik, ptr %i.ir, align 8, !tbaa !163
  %i.is = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 272
  %i.iu = load float, ptr %i.it, align 8, !tbaa !156
  %i.iv = fpext float %i.iu to double
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 296
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !157
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hz, i64 280
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hz, i64 248
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !158
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hz, i64 264
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !159
  %i.je = load <2 x double>, ptr %i.iz, align 8, !tbaa !63
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.jg = load <2 x double>, ptr %i.iw, align 8, !tbaa !63
  store <2 x double> %i.je, ptr %i.is, align 8, !tbaa !63
  store <2 x double> %i.jg, ptr %i.jf, align 8, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.iv, ptr %i.jh, align 8, !tbaa !160
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.iy, ptr %i.ji, align 8, !tbaa !161
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.jb, ptr %i.jj, align 8, !tbaa !162
  %i.jk = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.jd, ptr %i.jk, align 8, !tbaa !163
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.jl, align 8, !tbaa !164
  %i.jm = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jm, align 4, !tbaa !165
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.jn, align 8, !tbaa !2855
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jo, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIsEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hk, ptr noundef nonnull align 4 dereferenceable(16) %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jp = sitofp <2 x i32> %i.dw to <2 x double>
  %i.jq = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.jr = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.js = fsub <2 x double> %i.jq, %i.jr
  %i.jt = fdiv <2 x double> %i.js, %i.jp          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.ju = icmp sgt i32 %2, 0
  br i1 %i.ju, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jv = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jw = fsub double %i.aa, %i.y
  %i.jx = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jy = fsub double %i.ar, %i.ap
  %i.jz = fsub double %i.al, %i.aj
  %i.ka = fsub double %.0107, %.0
  br i1 %i.jv, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.kb = extractelement <2 x double> %i.jt, i64 1 ; 2 uses
  %i.kc = extractelement <2 x double> %i.jt, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.kd = icmp sgt i32 %3, 0
  br i1 %i.kd, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.ke = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.kf = fsub double %i.aa, %i.y
  %i.kg = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.kh = fsub double %i.ar, %i.ap
  %i.ki = fsub double %i.al, %i.aj
  %i.kj = fsub double %.0107, %.0
  br i1 %i.ke, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kk = extractelement <2 x double> %i.jt, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.km, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.kl = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.kl, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.km = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.km, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2846

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.mh, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.kn = load double, ptr %7, align 8, !tbaa !1254
  %i.ko = uitofp nneg i32 %.0110246 to double
  %i.kp = fmul double %i.kk, %i.ko
  %i.kq = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kr) ; 2 uses
  %21 = shufflevector <2 x double> %i.jt, <2 x double> %i.ks, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.ks, double %i.du, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kt = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.ku = fsub double %i.kt, %i.y
  %i.kv = fdiv double %i.ku, %i.kf
  %i.kw = call double @llvm.fmuladd.f64(double %i.kg, double %i.kv, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.kw, %bb.o ], [ %24, %bb.n ]
  %i.kx = fsub double %.0.i128, %i.s
  %i.ky = call double @llvm.fmuladd.f64(double %i.w, double %i.kx, double %i.q)
  %i.kz = fptrunc double %i.ky to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.la = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.lb = fsub double %i.la, %i.ap
  %i.lc = fdiv double %i.lb, %i.kh
  %i.ld = call double @llvm.fmuladd.f64(double %i.ki, double %i.lc, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.ld, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.le = fsub double %.0.i125, %i.aj
  %i.lf = call double @llvm.fmuladd.f64(double %i.an, double %i.le, double %i.ah)
  %i.lg = fptrunc double %i.lf to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.lh = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !900
  %i.lj = sext i16 %i.li to i32
  %i.lk = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.lj) #16 ; 0 uses
  %i.ll = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.lm = load i16, ptr %i.lh, align 2, !tbaa !900
  %i.ln = sitofp i16 %i.lm to double
  %i.lo = fsub double %i.ln, %.0
  %i.lp = fdiv double %i.lo, %i.kj                ; 3 uses
  %i.lq = fcmp olt double %i.lp, 0.000000e+00
  %i.lr = fcmp ogt double %i.lp, 1.000000e+00
  %i.ls = select i1 %i.lr, double 1.000000e+00, double %i.lp
  %i.lt = select i1 %i.lq, double 0.000000e+00, double %i.ls
  %i.lu = fptrunc double %i.lt to float
  %i.lv = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lu, i32 noundef -1) #16 ; 2 uses
  %i.lw = extractvalue { <2 x float>, <2 x float> } %i.lv, 0 ; 2 uses
  %i.lx = extractvalue { <2 x float>, <2 x float> } %i.lv, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lw, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lw, i64 1
  %i.ly = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lz = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.ly)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.lx, i64 0
  %i.ma = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lz)
  %i.mb = fcmp ogt float %i.ma, 5.000000e-01
  %i.mc = select i1 %i.mb, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.md = fmul <2 x float> %i.ll, splat (float 5.000000e-01)
  %i.me = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.mf = insertelement <2 x float> %i.me, float %i.lg, i64 1
  %i.mg = fsub <2 x float> %i.mf, %i.md
  store <2 x float> %i.mg, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.mc, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.mh = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.mh, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2847

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.mm, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.mi = uitofp nneg i32 %.0109244 to double
  %i.mj = fmul double %i.kb, %i.mi
  %i.mk = call double @llvm.fmuladd.f64(double %i.kb, double 5.000000e-01, double %i.mj)
  %i.ml = call double @llvm.fmuladd.f64(double %., double %i.mk, double %i.du) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.mm = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.mm, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2848

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.of, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mn = load double, ptr %7, align 8, !tbaa !1254
  %i.mo = call double @llvm.fmuladd.f64(double %i.kc, double 5.000000e-01, double %i.mn)
  %i.mp = uitofp nneg i32 %.0108242 to double
  %i.mq = call double @llvm.fmuladd.f64(double %i.mp, double %i.kc, double %i.mo) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mr = call noundef double %i.ac(double noundef %i.mq, ptr noundef %i.ae) #16, !inline_history !22
  %i.ms = fsub double %i.mr, %i.y
  %i.mt = fdiv double %i.ms, %i.jw
  %i.mu = call double @llvm.fmuladd.f64(double %i.jx, double %i.mt, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mu, %bb.r ], [ %i.mq, %bb.q ]
  %i.mv = fsub double %.0.i134, %i.s
  %i.mw = call double @llvm.fmuladd.f64(double %i.w, double %i.mv, double %i.q)
  %i.mx = fptrunc double %i.mw to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.my = call noundef double %i.at(double noundef %i.ml, ptr noundef %i.av) #16, !inline_history !22
  %i.mz = fsub double %i.my, %i.ap
  %i.na = fdiv double %i.mz, %i.jy
  %i.nb = call double @llvm.fmuladd.f64(double %i.jz, double %i.na, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.nb, %bb.s ], [ %i.ml, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.nc = fsub double %.0.i131, %i.aj
  %i.nd = call double @llvm.fmuladd.f64(double %i.an, double %i.nc, double %i.ah)
  %i.ne = fptrunc double %i.nd to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.nf = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !900
  %i.nh = sext i16 %i.ng to i32
  %i.ni = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.nh) #16 ; 0 uses
  %i.nj = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.nk = load i16, ptr %i.nf, align 2, !tbaa !900
  %i.nl = sitofp i16 %i.nk to double
  %i.nm = fsub double %i.nl, %.0
  %i.nn = fdiv double %i.nm, %i.ka                ; 3 uses
  %i.no = fcmp olt double %i.nn, 0.000000e+00
  %i.np = fcmp ogt double %i.nn, 1.000000e+00
  %i.nq = select i1 %i.np, double 1.000000e+00, double %i.nn
  %i.nr = select i1 %i.no, double 0.000000e+00, double %i.nq
  %i.ns = fptrunc double %i.nr to float
  %i.nt = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.ns, i32 noundef -1) #16 ; 2 uses
  %i.nu = extractvalue { <2 x float>, <2 x float> } %i.nt, 0 ; 2 uses
  %i.nv = extractvalue { <2 x float>, <2 x float> } %i.nt, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nu, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nu, i64 1
  %i.nw = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.nx = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.nw)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nv, i64 0
  %i.ny = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.nx)
  %i.nz = fcmp ogt float %i.ny, 5.000000e-01
  %i.oa = select i1 %i.nz, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.ob = fmul <2 x float> %i.nj, splat (float 5.000000e-01)
  %i.oc = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.od = insertelement <2 x float> %i.oc, float %i.ne, i64 1
  %i.oe = fsub <2 x float> %i.od, %i.ob
  store <2 x float> %i.oe, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.oa, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.of = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.of, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2849

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapItEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
end_hunk_2
begin_hunk_3_@_ZN6ImPlot13RenderHeatmapItEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fk, ptr %i.fu, align 8, !tbaa !161
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fn, ptr %i.fv, align 8, !tbaa !162
  %i.fw = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fp, ptr %i.fw, align 8, !tbaa !163
  %i.fx = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 272
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !156
  %i.ga = fpext float %i.fz to double
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fe, i64 296
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !157
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fe, i64 280
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fe, i64 248
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !158
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fe, i64 264
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !159
  %i.gj = load <2 x double>, ptr %i.ge, align 8, !tbaa !63
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gl = load <2 x double>, ptr %i.gb, align 8, !tbaa !63
  store <2 x double> %i.gj, ptr %i.fx, align 8, !tbaa !63
  store <2 x double> %i.gl, ptr %i.gk, align 8, !tbaa !63
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.ga, ptr %i.gm, align 8, !tbaa !160
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.gd, ptr %i.gn, align 8, !tbaa !161
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.gg, ptr %i.go, align 8, !tbaa !162
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.gi, ptr %i.gp, align 8, !tbaa !163
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gq, align 8, !tbaa !164
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gr, align 4, !tbaa !165
  %i.gs = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gs, align 8, !tbaa !2865
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gt, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajItEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.ep, ptr noundef nonnull align 4 dereferenceable(16) %i.er)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1330
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dy, ptr %i.gu, align 8, !tbaa !2866
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.gv, align 4, !tbaa !2867
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gw, align 8, !tbaa !1331
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.gx, align 8, !tbaa !1332
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gy, align 8, !tbaa !1333
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ha = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.hb = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.hc = fsub <2 x double> %i.ha, %i.hb
  %i.hd = fdiv <2 x double> %i.hc, %i.dx          ; 2 uses
  store <2 x double> %i.hd, ptr %i.gz, align 8, !tbaa !63
  %i.he = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.hf = extractelement <2 x double> %i.hb, i64 0
  store double %i.hf, ptr %i.he, align 8, !tbaa !1334
  %i.hg = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.du, ptr %i.hg, align 8, !tbaa !1335
  %i.hh = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.hh, align 8, !tbaa !1336
  %i.hi = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.hj = fmul <2 x double> %i.hd, splat (double 5.000000e-01)
  store <2 x double> %i.hj, ptr %i.hi, align 8, !tbaa !63
  %i.hk = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.hl = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dy, ptr %11, align 8, !tbaa !150
  %i.hn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ho = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 80
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !151 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 2448
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !94
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [376 x i8], ptr %i.hr, i64 %i.hu ; 6 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 2452
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !95
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [376 x i8], ptr %i.hr, i64 %i.hy ; 6 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 272
  %i.ib = load float, ptr %i.ia, align 8, !tbaa !156
  %i.ic = fpext float %i.ib to double
  %i.id = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hv, i64 296
  %i.if = load double, ptr %i.ie, align 8, !tbaa !157
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 280
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 248
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !158
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hv, i64 264
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !159
  %i.il = load <2 x double>, ptr %i.ig, align 8, !tbaa !63
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.in = load <2 x double>, ptr %i.id, align 8, !tbaa !63
  store <2 x double> %i.il, ptr %i.hn, align 8, !tbaa !63
  store <2 x double> %i.in, ptr %i.im, align 8, !tbaa !63
  %i.io = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.ic, ptr %i.io, align 8, !tbaa !160
  %i.ip = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.if, ptr %i.ip, align 8, !tbaa !161
  %i.iq = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.ii, ptr %i.iq, align 8, !tbaa !162
  %i.ir = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.ik, ptr %i.ir, align 8, !tbaa !163
  %i.is = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.it = getelementptr inbounds nuw i8, ptr %i.hz, i64 272
  %i.iu = load float, ptr %i.it, align 8, !tbaa !156
  %i.iv = fpext float %i.iu to double
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hz, i64 296
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !157
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hz, i64 280
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hz, i64 248
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !158
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hz, i64 264
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !159
  %i.je = load <2 x double>, ptr %i.iz, align 8, !tbaa !63
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.jg = load <2 x double>, ptr %i.iw, align 8, !tbaa !63
  store <2 x double> %i.je, ptr %i.is, align 8, !tbaa !63
  store <2 x double> %i.jg, ptr %i.jf, align 8, !tbaa !63
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.iv, ptr %i.jh, align 8, !tbaa !160
  %i.ji = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.iy, ptr %i.ji, align 8, !tbaa !161
  %i.jj = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.jb, ptr %i.jj, align 8, !tbaa !162
  %i.jk = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.jd, ptr %i.jk, align 8, !tbaa !163
  %i.jl = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.jl, align 8, !tbaa !164
  %i.jm = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jm, align 4, !tbaa !165
  %i.jn = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.jn, align 8, !tbaa !2868
  %i.jo = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jo, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajItEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hk, ptr noundef nonnull align 4 dereferenceable(16) %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jp = sitofp <2 x i32> %i.dw to <2 x double>
  %i.jq = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.jr = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.js = fsub <2 x double> %i.jq, %i.jr
  %i.jt = fdiv <2 x double> %i.js, %i.jp          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.ju = icmp sgt i32 %2, 0
  br i1 %i.ju, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jv = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jw = fsub double %i.aa, %i.y
  %i.jx = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jy = fsub double %i.ar, %i.ap
  %i.jz = fsub double %i.al, %i.aj
  %i.ka = fsub double %.0107, %.0
  br i1 %i.jv, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.kb = extractelement <2 x double> %i.jt, i64 1 ; 2 uses
  %i.kc = extractelement <2 x double> %i.jt, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.kd = icmp sgt i32 %3, 0
  br i1 %i.kd, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.ke = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.kf = fsub double %i.aa, %i.y
  %i.kg = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.kh = fsub double %i.ar, %i.ap
  %i.ki = fsub double %i.al, %i.aj
  %i.kj = fsub double %.0107, %.0
  br i1 %i.ke, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kk = extractelement <2 x double> %i.jt, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.km, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.kl = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.kl, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.km = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.km, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2859

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.mh, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.kn = load double, ptr %7, align 8, !tbaa !1254
  %i.ko = uitofp nneg i32 %.0110246 to double
  %i.kp = fmul double %i.kk, %i.ko
  %i.kq = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kr) ; 2 uses
  %21 = shufflevector <2 x double> %i.jt, <2 x double> %i.ks, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.ks, double %i.du, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kt = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.ku = fsub double %i.kt, %i.y
  %i.kv = fdiv double %i.ku, %i.kf
  %i.kw = call double @llvm.fmuladd.f64(double %i.kg, double %i.kv, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.kw, %bb.o ], [ %24, %bb.n ]
  %i.kx = fsub double %.0.i128, %i.s
  %i.ky = call double @llvm.fmuladd.f64(double %i.w, double %i.kx, double %i.q)
  %i.kz = fptrunc double %i.ky to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.la = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.lb = fsub double %i.la, %i.ap
  %i.lc = fdiv double %i.lb, %i.kh
  %i.ld = call double @llvm.fmuladd.f64(double %i.ki, double %i.lc, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.ld, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.le = fsub double %.0.i125, %i.aj
  %i.lf = call double @llvm.fmuladd.f64(double %i.an, double %i.le, double %i.ah)
  %i.lg = fptrunc double %i.lf to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.lh = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !900
  %i.lj = zext i16 %i.li to i32
  %i.lk = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.lj) #16 ; 0 uses
  %i.ll = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.lm = load i16, ptr %i.lh, align 2, !tbaa !900
  %i.ln = uitofp i16 %i.lm to double
  %i.lo = fsub double %i.ln, %.0
  %i.lp = fdiv double %i.lo, %i.kj                ; 3 uses
  %i.lq = fcmp olt double %i.lp, 0.000000e+00
  %i.lr = fcmp ogt double %i.lp, 1.000000e+00
  %i.ls = select i1 %i.lr, double 1.000000e+00, double %i.lp
  %i.lt = select i1 %i.lq, double 0.000000e+00, double %i.ls
  %i.lu = fptrunc double %i.lt to float
  %i.lv = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lu, i32 noundef -1) #16 ; 2 uses
  %i.lw = extractvalue { <2 x float>, <2 x float> } %i.lv, 0 ; 2 uses
  %i.lx = extractvalue { <2 x float>, <2 x float> } %i.lv, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lw, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lw, i64 1
  %i.ly = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lz = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.ly)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.lx, i64 0
  %i.ma = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lz)
  %i.mb = fcmp ogt float %i.ma, 5.000000e-01
  %i.mc = select i1 %i.mb, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.md = fmul <2 x float> %i.ll, splat (float 5.000000e-01)
  %i.me = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.mf = insertelement <2 x float> %i.me, float %i.lg, i64 1
  %i.mg = fsub <2 x float> %i.mf, %i.md
  store <2 x float> %i.mg, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.mc, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.mh = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.mh, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2860

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.mm, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.mi = uitofp nneg i32 %.0109244 to double
  %i.mj = fmul double %i.kb, %i.mi
  %i.mk = call double @llvm.fmuladd.f64(double %i.kb, double 5.000000e-01, double %i.mj)
  %i.ml = call double @llvm.fmuladd.f64(double %., double %i.mk, double %i.du) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.mm = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.mm, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2861

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.of, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mn = load double, ptr %7, align 8, !tbaa !1254
  %i.mo = call double @llvm.fmuladd.f64(double %i.kc, double 5.000000e-01, double %i.mn)
  %i.mp = uitofp nneg i32 %.0108242 to double
  %i.mq = call double @llvm.fmuladd.f64(double %i.mp, double %i.kc, double %i.mo) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mr = call noundef double %i.ac(double noundef %i.mq, ptr noundef %i.ae) #16, !inline_history !22
  %i.ms = fsub double %i.mr, %i.y
  %i.mt = fdiv double %i.ms, %i.jw
  %i.mu = call double @llvm.fmuladd.f64(double %i.jx, double %i.mt, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mu, %bb.r ], [ %i.mq, %bb.q ]
  %i.mv = fsub double %.0.i134, %i.s
  %i.mw = call double @llvm.fmuladd.f64(double %i.w, double %i.mv, double %i.q)
  %i.mx = fptrunc double %i.mw to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.my = call noundef double %i.at(double noundef %i.ml, ptr noundef %i.av) #16, !inline_history !22
  %i.mz = fsub double %i.my, %i.ap
  %i.na = fdiv double %i.mz, %i.jy
  %i.nb = call double @llvm.fmuladd.f64(double %i.jz, double %i.na, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.nb, %bb.s ], [ %i.ml, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.nc = fsub double %.0.i131, %i.aj
  %i.nd = call double @llvm.fmuladd.f64(double %i.an, double %i.nc, double %i.ah)
  %i.ne = fptrunc double %i.nd to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.nf = getelementptr inbounds [2 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !900
  %i.nh = zext i16 %i.ng to i32
  %i.ni = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.nh) #16 ; 0 uses
  %i.nj = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.nk = load i16, ptr %i.nf, align 2, !tbaa !900
  %i.nl = uitofp i16 %i.nk to double
  %i.nm = fsub double %i.nl, %.0
  %i.nn = fdiv double %i.nm, %i.ka                ; 3 uses
  %i.no = fcmp olt double %i.nn, 0.000000e+00
  %i.np = fcmp ogt double %i.nn, 1.000000e+00
  %i.nq = select i1 %i.np, double 1.000000e+00, double %i.nn
  %i.nr = select i1 %i.no, double 0.000000e+00, double %i.nq
  %i.ns = fptrunc double %i.nr to float
  %i.nt = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.ns, i32 noundef -1) #16 ; 2 uses
  %i.nu = extractvalue { <2 x float>, <2 x float> } %i.nt, 0 ; 2 uses
  %i.nv = extractvalue { <2 x float>, <2 x float> } %i.nt, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nu, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nu, i64 1
  %i.nw = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.nx = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.nw)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nv, i64 0
  %i.ny = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.nx)
  %i.nz = fcmp ogt float %i.ny, 5.000000e-01
  %i.oa = select i1 %i.nz, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.ob = fmul <2 x float> %i.nj, splat (float 5.000000e-01)
  %i.oc = insertelement <2 x float> poison, float %i.mx, i64 0
  %i.od = insertelement <2 x float> %i.oc, float %i.ne, i64 1
  %i.oe = fsub <2 x float> %i.od, %i.ob
  store <2 x float> %i.oe, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.oa, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.of = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.of, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2862

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapIiEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
end_hunk_3
begin_hunk_4_@_ZN6ImPlot13RenderHeatmapIiEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fb, ptr %i.fl, align 8, !tbaa !161
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fe, ptr %i.fm, align 8, !tbaa !162
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fg, ptr %i.fn, align 8, !tbaa !163
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !156
  %i.fr = fpext float %i.fq to double
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ev, i64 296
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !157
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ev, i64 280
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 248
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !158
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ev, i64 264
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !159
  %i.ga = load <2 x double>, ptr %i.fv, align 8, !tbaa !63
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gc = load <2 x double>, ptr %i.fs, align 8, !tbaa !63
  store <2 x double> %i.ga, ptr %i.fo, align 8, !tbaa !63
  store <2 x double> %i.gc, ptr %i.gb, align 8, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.fr, ptr %i.gd, align 8, !tbaa !160
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.fu, ptr %i.ge, align 8, !tbaa !161
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.fx, ptr %i.gf, align 8, !tbaa !162
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.fz, ptr %i.gg, align 8, !tbaa !163
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gh, align 8, !tbaa !164
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gi, align 4, !tbaa !165
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gj, align 8, !tbaa !2877
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gk, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIiEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.eg, ptr noundef nonnull align 4 dereferenceable(16) %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1348
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dp, ptr %i.gl, align 8, !tbaa !2878
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.gm, align 4, !tbaa !2879
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gn, align 8, !tbaa !1349
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.go, align 8, !tbaa !1350
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gp, align 8, !tbaa !1351
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.gr = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.gs = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.gt = fsub <2 x double> %i.gr, %i.gs
  %i.gu = fdiv <2 x double> %i.gt, %i.do          ; 2 uses
  store <2 x double> %i.gu, ptr %i.gq, align 8, !tbaa !63
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.gw = extractelement <2 x double> %i.gs, i64 0
  store double %i.gw, ptr %i.gv, align 8, !tbaa !1352
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.dl, ptr %i.gx, align 8, !tbaa !1353
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.gy, align 8, !tbaa !1354
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ha = fmul <2 x double> %i.gu, splat (double 5.000000e-01)
  store <2 x double> %i.ha, ptr %i.gz, align 8, !tbaa !63
  %i.hb = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.hc = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dp, ptr %11, align 8, !tbaa !150
  %i.he = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hf = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 80
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !151 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 2448
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !94
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [376 x i8], ptr %i.hi, i64 %i.hl ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 2452
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !95
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [376 x i8], ptr %i.hi, i64 %i.hp ; 6 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 272
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !156
  %i.ht = fpext float %i.hs to double
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 296
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !157
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 280
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 248
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !158
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 264
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !159
  %i.ic = load <2 x double>, ptr %i.hx, align 8, !tbaa !63
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ie = load <2 x double>, ptr %i.hu, align 8, !tbaa !63
  store <2 x double> %i.ic, ptr %i.he, align 8, !tbaa !63
  store <2 x double> %i.ie, ptr %i.id, align 8, !tbaa !63
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.ht, ptr %i.if, align 8, !tbaa !160
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.hw, ptr %i.ig, align 8, !tbaa !161
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.hz, ptr %i.ih, align 8, !tbaa !162
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.ib, ptr %i.ii, align 8, !tbaa !163
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hq, i64 272
  %i.il = load float, ptr %i.ik, align 8, !tbaa !156
  %i.im = fpext float %i.il to double
  %i.in = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 296
  %i.ip = load double, ptr %i.io, align 8, !tbaa !157
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 280
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hq, i64 248
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !158
  %i.it = getelementptr inbounds nuw i8, ptr %i.hq, i64 264
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !159
  %i.iv = load <2 x double>, ptr %i.iq, align 8, !tbaa !63
  %i.iw = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.ix = load <2 x double>, ptr %i.in, align 8, !tbaa !63
  store <2 x double> %i.iv, ptr %i.ij, align 8, !tbaa !63
  store <2 x double> %i.ix, ptr %i.iw, align 8, !tbaa !63
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.im, ptr %i.iy, align 8, !tbaa !160
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.ip, ptr %i.iz, align 8, !tbaa !161
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.is, ptr %i.ja, align 8, !tbaa !162
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.iu, ptr %i.jb, align 8, !tbaa !163
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.jc, align 8, !tbaa !164
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jd, align 4, !tbaa !165
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.je, align 8, !tbaa !2880
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jf, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIiEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hb, ptr noundef nonnull align 4 dereferenceable(16) %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jg = sitofp <2 x i32> %i.dn to <2 x double>
  %i.jh = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.ji = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.jj = fsub <2 x double> %i.jh, %i.ji
  %i.jk = fdiv <2 x double> %i.jj, %i.jg          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.jl = icmp sgt i32 %2, 0
  br i1 %i.jl, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jm = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jn = fsub double %i.aa, %i.y
  %i.jo = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jp = fsub double %i.ar, %i.ap
  %i.jq = fsub double %i.al, %i.aj
  %i.jr = fsub double %.0107, %.0
  br i1 %i.jm, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.js = extractelement <2 x double> %i.jk, i64 1 ; 2 uses
  %i.jt = extractelement <2 x double> %i.jk, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.ju = icmp sgt i32 %3, 0
  br i1 %i.ju, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.jv = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.jw = fsub double %i.aa, %i.y
  %i.jx = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.jy = fsub double %i.ar, %i.ap
  %i.jz = fsub double %i.al, %i.aj
  %i.ka = fsub double %.0107, %.0
  br i1 %i.jv, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kb = extractelement <2 x double> %i.jk, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.kd, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.kc = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.kc, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.kd = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.kd, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2871

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.lx, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.ke = load double, ptr %7, align 8, !tbaa !1254
  %i.kf = uitofp nneg i32 %.0110246 to double
  %i.kg = fmul double %i.kb, %i.kf
  %i.kh = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.ki = insertelement <2 x double> %i.kh, double %i.kg, i64 1
  %i.kj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ki) ; 2 uses
  %21 = shufflevector <2 x double> %i.jk, <2 x double> %i.kj, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.kj, double %i.dl, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kk = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.kl = fsub double %i.kk, %i.y
  %i.km = fdiv double %i.kl, %i.jw
  %i.kn = call double @llvm.fmuladd.f64(double %i.jx, double %i.km, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.kn, %bb.o ], [ %24, %bb.n ]
  %i.ko = fsub double %.0.i128, %i.s
  %i.kp = call double @llvm.fmuladd.f64(double %i.w, double %i.ko, double %i.q)
  %i.kq = fptrunc double %i.kp to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.kr = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.ks = fsub double %i.kr, %i.ap
  %i.kt = fdiv double %i.ks, %i.jy
  %i.ku = call double @llvm.fmuladd.f64(double %i.jz, double %i.kt, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.ku, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.kv = fsub double %.0.i125, %i.aj
  %i.kw = call double @llvm.fmuladd.f64(double %i.an, double %i.kv, double %i.ah)
  %i.kx = fptrunc double %i.kw to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ky = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !67
  %i.la = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.kz) #16 ; 0 uses
  %i.lb = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.lc = load i32, ptr %i.ky, align 4, !tbaa !67
  %i.ld = sitofp i32 %i.lc to double
  %i.le = fsub double %i.ld, %.0
  %i.lf = fdiv double %i.le, %i.ka                ; 3 uses
  %i.lg = fcmp olt double %i.lf, 0.000000e+00
  %i.lh = fcmp ogt double %i.lf, 1.000000e+00
  %i.li = select i1 %i.lh, double 1.000000e+00, double %i.lf
  %i.lj = select i1 %i.lg, double 0.000000e+00, double %i.li
  %i.lk = fptrunc double %i.lj to float
  %i.ll = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lk, i32 noundef -1) #16 ; 2 uses
  %i.lm = extractvalue { <2 x float>, <2 x float> } %i.ll, 0 ; 2 uses
  %i.ln = extractvalue { <2 x float>, <2 x float> } %i.ll, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lm, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lm, i64 1
  %i.lo = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lp = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.lo)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.ln, i64 0
  %i.lq = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lp)
  %i.lr = fcmp ogt float %i.lq, 5.000000e-01
  %i.ls = select i1 %i.lr, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.lt = fmul <2 x float> %i.lb, splat (float 5.000000e-01)
  %i.lu = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.lv = insertelement <2 x float> %i.lu, float %i.kx, i64 1
  %i.lw = fsub <2 x float> %i.lv, %i.lt
  store <2 x float> %i.lw, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.ls, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.lx = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.lx, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2872

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.mc, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.ly = uitofp nneg i32 %.0109244 to double
  %i.lz = fmul double %i.js, %i.ly
  %i.ma = call double @llvm.fmuladd.f64(double %i.js, double 5.000000e-01, double %i.lz)
  %i.mb = call double @llvm.fmuladd.f64(double %., double %i.ma, double %i.dl) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.mc = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.mc, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2873

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.nu, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.md = load double, ptr %7, align 8, !tbaa !1254
  %i.me = call double @llvm.fmuladd.f64(double %i.jt, double 5.000000e-01, double %i.md)
  %i.mf = uitofp nneg i32 %.0108242 to double
  %i.mg = call double @llvm.fmuladd.f64(double %i.mf, double %i.jt, double %i.me) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mh = call noundef double %i.ac(double noundef %i.mg, ptr noundef %i.ae) #16, !inline_history !22
  %i.mi = fsub double %i.mh, %i.y
  %i.mj = fdiv double %i.mi, %i.jn
  %i.mk = call double @llvm.fmuladd.f64(double %i.jo, double %i.mj, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mk, %bb.r ], [ %i.mg, %bb.q ]
  %i.ml = fsub double %.0.i134, %i.s
  %i.mm = call double @llvm.fmuladd.f64(double %i.w, double %i.ml, double %i.q)
  %i.mn = fptrunc double %i.mm to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.mo = call noundef double %i.at(double noundef %i.mb, ptr noundef %i.av) #16, !inline_history !22
  %i.mp = fsub double %i.mo, %i.ap
  %i.mq = fdiv double %i.mp, %i.jp
  %i.mr = call double @llvm.fmuladd.f64(double %i.jq, double %i.mq, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.mr, %bb.s ], [ %i.mb, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.ms = fsub double %.0.i131, %i.aj
  %i.mt = call double @llvm.fmuladd.f64(double %i.an, double %i.ms, double %i.ah)
  %i.mu = fptrunc double %i.mt to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.mv = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !67
  %i.mx = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.mw) #16 ; 0 uses
  %i.my = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.mz = load i32, ptr %i.mv, align 4, !tbaa !67
  %i.na = sitofp i32 %i.mz to double
  %i.nb = fsub double %i.na, %.0
  %i.nc = fdiv double %i.nb, %i.jr                ; 3 uses
  %i.nd = fcmp olt double %i.nc, 0.000000e+00
  %i.ne = fcmp ogt double %i.nc, 1.000000e+00
  %i.nf = select i1 %i.ne, double 1.000000e+00, double %i.nc
  %i.ng = select i1 %i.nd, double 0.000000e+00, double %i.nf
  %i.nh = fptrunc double %i.ng to float
  %i.ni = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.nh, i32 noundef -1) #16 ; 2 uses
  %i.nj = extractvalue { <2 x float>, <2 x float> } %i.ni, 0 ; 2 uses
  %i.nk = extractvalue { <2 x float>, <2 x float> } %i.ni, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nj, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nj, i64 1
  %i.nl = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.nm = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.nl)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nk, i64 0
  %i.nn = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.nm)
  %i.no = fcmp ogt float %i.nn, 5.000000e-01
  %i.np = select i1 %i.no, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.nq = fmul <2 x float> %i.my, splat (float 5.000000e-01)
  %i.nr = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.mu, i64 1
  %i.nt = fsub <2 x float> %i.ns, %i.nq
  store <2 x float> %i.nt, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.np, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.nu = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nu, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2874

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapIjEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1457
end_hunk_4
begin_hunk_5_@_ZN6ImPlot13RenderHeatmapIjEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fb, ptr %i.fl, align 8, !tbaa !161
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fe, ptr %i.fm, align 8, !tbaa !162
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fg, ptr %i.fn, align 8, !tbaa !163
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  %i.fq = load float, ptr %i.fp, align 8, !tbaa !156
  %i.fr = fpext float %i.fq to double
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ev, i64 296
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !157
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ev, i64 280
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ev, i64 248
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !158
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ev, i64 264
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !159
  %i.ga = load <2 x double>, ptr %i.fv, align 8, !tbaa !63
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gc = load <2 x double>, ptr %i.fs, align 8, !tbaa !63
  store <2 x double> %i.ga, ptr %i.fo, align 8, !tbaa !63
  store <2 x double> %i.gc, ptr %i.gb, align 8, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.fr, ptr %i.gd, align 8, !tbaa !160
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.fu, ptr %i.ge, align 8, !tbaa !161
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.fx, ptr %i.gf, align 8, !tbaa !162
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.fz, ptr %i.gg, align 8, !tbaa !163
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gh, align 8, !tbaa !164
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gi, align 4, !tbaa !165
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gj, align 8, !tbaa !2889
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gk, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIjEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.eg, ptr noundef nonnull align 4 dereferenceable(16) %i.ei)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1366
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dp, ptr %i.gl, align 8, !tbaa !2890
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.gm, align 4, !tbaa !2891
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gn, align 8, !tbaa !1367
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.go, align 8, !tbaa !1368
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gp, align 8, !tbaa !1369
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.gr = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.gs = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.gt = fsub <2 x double> %i.gr, %i.gs
  %i.gu = fdiv <2 x double> %i.gt, %i.do          ; 2 uses
  store <2 x double> %i.gu, ptr %i.gq, align 8, !tbaa !63
  %i.gv = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.gw = extractelement <2 x double> %i.gs, i64 0
  store double %i.gw, ptr %i.gv, align 8, !tbaa !1370
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.dl, ptr %i.gx, align 8, !tbaa !1371
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.gy, align 8, !tbaa !1372
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.ha = fmul <2 x double> %i.gu, splat (double 5.000000e-01)
  store <2 x double> %i.ha, ptr %i.gz, align 8, !tbaa !63
  %i.hb = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.hc = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dp, ptr %11, align 8, !tbaa !150
  %i.he = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hf = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 80
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !151 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 24 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 2448
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !94
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds [376 x i8], ptr %i.hi, i64 %i.hl ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 2452
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !95
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [376 x i8], ptr %i.hi, i64 %i.hp ; 6 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 272
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !156
  %i.ht = fpext float %i.hs to double
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hm, i64 296
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !157
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hm, i64 280
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hm, i64 248
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !158
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hm, i64 264
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !159
  %i.ic = load <2 x double>, ptr %i.hx, align 8, !tbaa !63
  %i.id = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ie = load <2 x double>, ptr %i.hu, align 8, !tbaa !63
  store <2 x double> %i.ic, ptr %i.he, align 8, !tbaa !63
  store <2 x double> %i.ie, ptr %i.id, align 8, !tbaa !63
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.ht, ptr %i.if, align 8, !tbaa !160
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.hw, ptr %i.ig, align 8, !tbaa !161
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.hz, ptr %i.ih, align 8, !tbaa !162
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.ib, ptr %i.ii, align 8, !tbaa !163
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hq, i64 272
  %i.il = load float, ptr %i.ik, align 8, !tbaa !156
  %i.im = fpext float %i.il to double
  %i.in = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 296
  %i.ip = load double, ptr %i.io, align 8, !tbaa !157
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 280
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hq, i64 248
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !158
  %i.it = getelementptr inbounds nuw i8, ptr %i.hq, i64 264
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !159
  %i.iv = load <2 x double>, ptr %i.iq, align 8, !tbaa !63
  %i.iw = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.ix = load <2 x double>, ptr %i.in, align 8, !tbaa !63
  store <2 x double> %i.iv, ptr %i.ij, align 8, !tbaa !63
  store <2 x double> %i.ix, ptr %i.iw, align 8, !tbaa !63
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.im, ptr %i.iy, align 8, !tbaa !160
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.ip, ptr %i.iz, align 8, !tbaa !161
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.is, ptr %i.ja, align 8, !tbaa !162
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.iu, ptr %i.jb, align 8, !tbaa !163
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.jc, align 8, !tbaa !164
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jd, align 4, !tbaa !165
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.je, align 8, !tbaa !2892
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jf, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIjEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hb, ptr noundef nonnull align 4 dereferenceable(16) %i.hd)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jg = sitofp <2 x i32> %i.dn to <2 x double>
  %i.jh = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.ji = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.jj = fsub <2 x double> %i.jh, %i.ji
  %i.jk = fdiv <2 x double> %i.jj, %i.jg          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.jl = icmp sgt i32 %2, 0
  br i1 %i.jl, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jm = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jn = fsub double %i.aa, %i.y
  %i.jo = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jp = fsub double %i.ar, %i.ap
  %i.jq = fsub double %i.al, %i.aj
  %i.jr = fsub double %.0107, %.0
  br i1 %i.jm, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.js = extractelement <2 x double> %i.jk, i64 1 ; 2 uses
  %i.jt = extractelement <2 x double> %i.jk, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.ju = icmp sgt i32 %3, 0
  br i1 %i.ju, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.jv = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.jw = fsub double %i.aa, %i.y
  %i.jx = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.jy = fsub double %i.ar, %i.ap
  %i.jz = fsub double %i.al, %i.aj
  %i.ka = fsub double %.0107, %.0
  br i1 %i.jv, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kb = extractelement <2 x double> %i.jk, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.kd, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.kc = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.kc, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.kd = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.kd, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2883

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.lx, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.ke = load double, ptr %7, align 8, !tbaa !1254
  %i.kf = uitofp nneg i32 %.0110246 to double
  %i.kg = fmul double %i.kb, %i.kf
  %i.kh = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.ki = insertelement <2 x double> %i.kh, double %i.kg, i64 1
  %i.kj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> splat (double 5.000000e-01), <2 x double> %i.ki) ; 2 uses
  %21 = shufflevector <2 x double> %i.jk, <2 x double> %i.kj, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.kj, double %i.dl, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kk = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.kl = fsub double %i.kk, %i.y
  %i.km = fdiv double %i.kl, %i.jw
  %i.kn = call double @llvm.fmuladd.f64(double %i.jx, double %i.km, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.kn, %bb.o ], [ %24, %bb.n ]
  %i.ko = fsub double %.0.i128, %i.s
  %i.kp = call double @llvm.fmuladd.f64(double %i.w, double %i.ko, double %i.q)
  %i.kq = fptrunc double %i.kp to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.kr = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.ks = fsub double %i.kr, %i.ap
  %i.kt = fdiv double %i.ks, %i.jy
  %i.ku = call double @llvm.fmuladd.f64(double %i.jz, double %i.kt, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.ku, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.kv = fsub double %.0.i125, %i.aj
  %i.kw = call double @llvm.fmuladd.f64(double %i.an, double %i.kv, double %i.ah)
  %i.kx = fptrunc double %i.kw to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.ky = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !67
  %i.la = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.kz) #16 ; 0 uses
  %i.lb = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.lc = load i32, ptr %i.ky, align 4, !tbaa !67
  %i.ld = uitofp i32 %i.lc to double
  %i.le = fsub double %i.ld, %.0
  %i.lf = fdiv double %i.le, %i.ka                ; 3 uses
  %i.lg = fcmp olt double %i.lf, 0.000000e+00
  %i.lh = fcmp ogt double %i.lf, 1.000000e+00
  %i.li = select i1 %i.lh, double 1.000000e+00, double %i.lf
  %i.lj = select i1 %i.lg, double 0.000000e+00, double %i.li
  %i.lk = fptrunc double %i.lj to float
  %i.ll = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lk, i32 noundef -1) #16 ; 2 uses
  %i.lm = extractvalue { <2 x float>, <2 x float> } %i.ll, 0 ; 2 uses
  %i.ln = extractvalue { <2 x float>, <2 x float> } %i.ll, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lm, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lm, i64 1
  %i.lo = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lp = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.lo)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.ln, i64 0
  %i.lq = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lp)
  %i.lr = fcmp ogt float %i.lq, 5.000000e-01
  %i.ls = select i1 %i.lr, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.lt = fmul <2 x float> %i.lb, splat (float 5.000000e-01)
  %i.lu = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.lv = insertelement <2 x float> %i.lu, float %i.kx, i64 1
  %i.lw = fsub <2 x float> %i.lv, %i.lt
  store <2 x float> %i.lw, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.ls, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.lx = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.lx, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2884

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.mc, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.ly = uitofp nneg i32 %.0109244 to double
  %i.lz = fmul double %i.js, %i.ly
  %i.ma = call double @llvm.fmuladd.f64(double %i.js, double 5.000000e-01, double %i.lz)
  %i.mb = call double @llvm.fmuladd.f64(double %., double %i.ma, double %i.dl) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.mc = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.mc, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2885

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.nu, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.md = load double, ptr %7, align 8, !tbaa !1254
  %i.me = call double @llvm.fmuladd.f64(double %i.jt, double 5.000000e-01, double %i.md)
  %i.mf = uitofp nneg i32 %.0108242 to double
  %i.mg = call double @llvm.fmuladd.f64(double %i.mf, double %i.jt, double %i.me) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mh = call noundef double %i.ac(double noundef %i.mg, ptr noundef %i.ae) #16, !inline_history !22
  %i.mi = fsub double %i.mh, %i.y
  %i.mj = fdiv double %i.mi, %i.jn
  %i.mk = call double @llvm.fmuladd.f64(double %i.jo, double %i.mj, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mk, %bb.r ], [ %i.mg, %bb.q ]
  %i.ml = fsub double %.0.i134, %i.s
  %i.mm = call double @llvm.fmuladd.f64(double %i.w, double %i.ml, double %i.q)
  %i.mn = fptrunc double %i.mm to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.mo = call noundef double %i.at(double noundef %i.mb, ptr noundef %i.av) #16, !inline_history !22
  %i.mp = fsub double %i.mo, %i.ap
  %i.mq = fdiv double %i.mp, %i.jp
  %i.mr = call double @llvm.fmuladd.f64(double %i.jq, double %i.mq, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.mr, %bb.s ], [ %i.mb, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.ms = fsub double %.0.i131, %i.aj
  %i.mt = call double @llvm.fmuladd.f64(double %i.an, double %i.ms, double %i.ah)
  %i.mu = fptrunc double %i.mt to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.mv = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !67
  %i.mx = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, i32 noundef %i.mw) #16 ; 0 uses
  %i.my = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.mz = load i32, ptr %i.mv, align 4, !tbaa !67
  %i.na = uitofp i32 %i.mz to double
  %i.nb = fsub double %i.na, %.0
  %i.nc = fdiv double %i.nb, %i.jr                ; 3 uses
  %i.nd = fcmp olt double %i.nc, 0.000000e+00
  %i.ne = fcmp ogt double %i.nc, 1.000000e+00
  %i.nf = select i1 %i.ne, double 1.000000e+00, double %i.nc
  %i.ng = select i1 %i.nd, double 0.000000e+00, double %i.nf
  %i.nh = fptrunc double %i.ng to float
  %i.ni = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.nh, i32 noundef -1) #16 ; 2 uses
  %i.nj = extractvalue { <2 x float>, <2 x float> } %i.ni, 0 ; 2 uses
  %i.nk = extractvalue { <2 x float>, <2 x float> } %i.ni, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nj, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nj, i64 1
  %i.nl = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.nm = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.nl)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nk, i64 0
  %i.nn = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.nm)
  %i.no = fcmp ogt float %i.nn, 5.000000e-01
  %i.np = select i1 %i.no, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.nq = fmul <2 x float> %i.my, splat (float 5.000000e-01)
  %i.nr = insertelement <2 x float> poison, float %i.mn, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.mu, i64 1
  %i.nt = fsub <2 x float> %i.ns, %i.nq
  store <2 x float> %i.nt, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.np, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.nu = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nu, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2886

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapIxEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1457
end_hunk_5
begin_hunk_6_@_ZN6ImPlot13RenderHeatmapIxEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fd, ptr %i.fn, align 8, !tbaa !161
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fg, ptr %i.fo, align 8, !tbaa !162
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fi, ptr %i.fp, align 8, !tbaa !163
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ex, i64 272
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !156
  %i.ft = fpext float %i.fs to double
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ex, i64 296
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !157
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ex, i64 280
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ex, i64 248
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !158
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ex, i64 264
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !159
  %i.gc = load <2 x double>, ptr %i.fx, align 8, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.ge = load <2 x double>, ptr %i.fu, align 8, !tbaa !63
  store <2 x double> %i.gc, ptr %i.fq, align 8, !tbaa !63
  store <2 x double> %i.ge, ptr %i.gd, align 8, !tbaa !63
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.ft, ptr %i.gf, align 8, !tbaa !160
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.fw, ptr %i.gg, align 8, !tbaa !161
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.fz, ptr %i.gh, align 8, !tbaa !162
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.gb, ptr %i.gi, align 8, !tbaa !163
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gj, align 8, !tbaa !164
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gk, align 4, !tbaa !165
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gl, align 8, !tbaa !2900
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gm, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIxEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.ei, ptr noundef nonnull align 4 dereferenceable(16) %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1384
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dr, ptr %i.gn, align 8, !tbaa !2901
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.go, align 4, !tbaa !2902
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gp, align 8, !tbaa !1385
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.gq, align 8, !tbaa !1386
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gr, align 8, !tbaa !1387
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.gt = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.gu = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.gv = fsub <2 x double> %i.gt, %i.gu
  %i.gw = fdiv <2 x double> %i.gv, %i.dq          ; 2 uses
  store <2 x double> %i.gw, ptr %i.gs, align 8, !tbaa !63
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.gy = extractelement <2 x double> %i.gu, i64 0
  store double %i.gy, ptr %i.gx, align 8, !tbaa !1388
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.dn, ptr %i.gz, align 8, !tbaa !1389
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.ha, align 8, !tbaa !1390
  %i.hb = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.hc = fmul <2 x double> %i.gw, splat (double 5.000000e-01)
  store <2 x double> %i.hc, ptr %i.hb, align 8, !tbaa !63
  %i.hd = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.he = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dr, ptr %11, align 8, !tbaa !150
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hh = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !151 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 2448
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !94
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [376 x i8], ptr %i.hk, i64 %i.hn ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 2452
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !95
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [376 x i8], ptr %i.hk, i64 %i.hr ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 272
  %i.hu = load float, ptr %i.ht, align 8, !tbaa !156
  %i.hv = fpext float %i.hu to double
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 296
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !157
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 280
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 248
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !158
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 264
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !159
  %i.ie = load <2 x double>, ptr %i.hz, align 8, !tbaa !63
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ig = load <2 x double>, ptr %i.hw, align 8, !tbaa !63
  store <2 x double> %i.ie, ptr %i.hg, align 8, !tbaa !63
  store <2 x double> %i.ig, ptr %i.if, align 8, !tbaa !63
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.hv, ptr %i.ih, align 8, !tbaa !160
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.hy, ptr %i.ii, align 8, !tbaa !161
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.ib, ptr %i.ij, align 8, !tbaa !162
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.id, ptr %i.ik, align 8, !tbaa !163
  %i.il = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 272
  %i.in = load float, ptr %i.im, align 8, !tbaa !156
  %i.io = fpext float %i.in to double
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hs, i64 296
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !157
  %i.is = getelementptr inbounds nuw i8, ptr %i.hs, i64 280
  %i.it = getelementptr inbounds nuw i8, ptr %i.hs, i64 248
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !158
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hs, i64 264
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !159
  %i.ix = load <2 x double>, ptr %i.is, align 8, !tbaa !63
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.iz = load <2 x double>, ptr %i.ip, align 8, !tbaa !63
  store <2 x double> %i.ix, ptr %i.il, align 8, !tbaa !63
  store <2 x double> %i.iz, ptr %i.iy, align 8, !tbaa !63
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.io, ptr %i.ja, align 8, !tbaa !160
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.ir, ptr %i.jb, align 8, !tbaa !161
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.iu, ptr %i.jc, align 8, !tbaa !162
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.iw, ptr %i.jd, align 8, !tbaa !163
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.je, align 8, !tbaa !164
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jf, align 4, !tbaa !165
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.jg, align 8, !tbaa !2903
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jh, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIxEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hd, ptr noundef nonnull align 4 dereferenceable(16) %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ji = sitofp <2 x i32> %i.dp to <2 x double>
  %i.jj = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.jk = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.jl = fsub <2 x double> %i.jj, %i.jk
  %i.jm = fdiv <2 x double> %i.jl, %i.ji          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.jn = icmp sgt i32 %2, 0
  br i1 %i.jn, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jo = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jp = fsub double %i.aa, %i.y
  %i.jq = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jr = fsub double %i.ar, %i.ap
  %i.js = fsub double %i.al, %i.aj
  %i.jt = fsub double %.0107, %.0
  br i1 %i.jo, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.ju = extractelement <2 x double> %i.jm, i64 1 ; 2 uses
  %i.jv = extractelement <2 x double> %i.jm, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.jw = icmp sgt i32 %3, 0
  br i1 %i.jw, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.jx = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.jy = fsub double %i.aa, %i.y
  %i.jz = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.ka = fsub double %i.ar, %i.ap
  %i.kb = fsub double %i.al, %i.aj
  %i.kc = fsub double %.0107, %.0
  br i1 %i.jx, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kd = extractelement <2 x double> %i.jm, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.kf, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.ke = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.ke, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.kf = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.kf, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2894

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.lz, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.kg = load double, ptr %7, align 8, !tbaa !1254
  %i.kh = uitofp nneg i32 %.0110246 to double
  %i.ki = fmul double %i.kd, %i.kh
  %i.kj = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.kk = insertelement <2 x double> %i.kj, double %i.ki, i64 1
  %i.kl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kk) ; 2 uses
  %21 = shufflevector <2 x double> %i.jm, <2 x double> %i.kl, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.kl, double %i.dn, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.km = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.kn = fsub double %i.km, %i.y
  %i.ko = fdiv double %i.kn, %i.jy
  %i.kp = call double @llvm.fmuladd.f64(double %i.jz, double %i.ko, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.kp, %bb.o ], [ %24, %bb.n ]
  %i.kq = fsub double %.0.i128, %i.s
  %i.kr = call double @llvm.fmuladd.f64(double %i.w, double %i.kq, double %i.q)
  %i.ks = fptrunc double %i.kr to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.kt = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.ku = fsub double %i.kt, %i.ap
  %i.kv = fdiv double %i.ku, %i.ka
  %i.kw = call double @llvm.fmuladd.f64(double %i.kb, double %i.kv, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.kw, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.kx = fsub double %.0.i125, %i.aj
  %i.ky = call double @llvm.fmuladd.f64(double %i.an, double %i.kx, double %i.ah)
  %i.kz = fptrunc double %i.ky to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.la = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !902
  %i.lc = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, i64 noundef %i.lb) #16 ; 0 uses
  %i.ld = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.le = load i64, ptr %i.la, align 8, !tbaa !902
  %i.lf = sitofp i64 %i.le to double
  %i.lg = fsub double %i.lf, %.0
  %i.lh = fdiv double %i.lg, %i.kc                ; 3 uses
  %i.li = fcmp olt double %i.lh, 0.000000e+00
  %i.lj = fcmp ogt double %i.lh, 1.000000e+00
  %i.lk = select i1 %i.lj, double 1.000000e+00, double %i.lh
  %i.ll = select i1 %i.li, double 0.000000e+00, double %i.lk
  %i.lm = fptrunc double %i.ll to float
  %i.ln = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lm, i32 noundef -1) #16 ; 2 uses
  %i.lo = extractvalue { <2 x float>, <2 x float> } %i.ln, 0 ; 2 uses
  %i.lp = extractvalue { <2 x float>, <2 x float> } %i.ln, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lo, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lo, i64 1
  %i.lq = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lr = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.lq)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.lp, i64 0
  %i.ls = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lr)
  %i.lt = fcmp ogt float %i.ls, 5.000000e-01
  %i.lu = select i1 %i.lt, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.lv = fmul <2 x float> %i.ld, splat (float 5.000000e-01)
  %i.lw = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.kz, i64 1
  %i.ly = fsub <2 x float> %i.lx, %i.lv
  store <2 x float> %i.ly, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.lu, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.lz = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.lz, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2895

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.me, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.ma = uitofp nneg i32 %.0109244 to double
  %i.mb = fmul double %i.ju, %i.ma
  %i.mc = call double @llvm.fmuladd.f64(double %i.ju, double 5.000000e-01, double %i.mb)
  %i.md = call double @llvm.fmuladd.f64(double %., double %i.mc, double %i.dn) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.me = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.me, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2896

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.nw, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mf = load double, ptr %7, align 8, !tbaa !1254
  %i.mg = call double @llvm.fmuladd.f64(double %i.jv, double 5.000000e-01, double %i.mf)
  %i.mh = uitofp nneg i32 %.0108242 to double
  %i.mi = call double @llvm.fmuladd.f64(double %i.mh, double %i.jv, double %i.mg) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mj = call noundef double %i.ac(double noundef %i.mi, ptr noundef %i.ae) #16, !inline_history !22
  %i.mk = fsub double %i.mj, %i.y
  %i.ml = fdiv double %i.mk, %i.jp
  %i.mm = call double @llvm.fmuladd.f64(double %i.jq, double %i.ml, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mm, %bb.r ], [ %i.mi, %bb.q ]
  %i.mn = fsub double %.0.i134, %i.s
  %i.mo = call double @llvm.fmuladd.f64(double %i.w, double %i.mn, double %i.q)
  %i.mp = fptrunc double %i.mo to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.mq = call noundef double %i.at(double noundef %i.md, ptr noundef %i.av) #16, !inline_history !22
  %i.mr = fsub double %i.mq, %i.ap
  %i.ms = fdiv double %i.mr, %i.jr
  %i.mt = call double @llvm.fmuladd.f64(double %i.js, double %i.ms, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.mt, %bb.s ], [ %i.md, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.mu = fsub double %.0.i131, %i.aj
  %i.mv = call double @llvm.fmuladd.f64(double %i.an, double %i.mu, double %i.ah)
  %i.mw = fptrunc double %i.mv to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.mx = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !902
  %i.mz = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, i64 noundef %i.my) #16 ; 0 uses
  %i.na = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.nb = load i64, ptr %i.mx, align 8, !tbaa !902
  %i.nc = sitofp i64 %i.nb to double
  %i.nd = fsub double %i.nc, %.0
  %i.ne = fdiv double %i.nd, %i.jt                ; 3 uses
  %i.nf = fcmp olt double %i.ne, 0.000000e+00
  %i.ng = fcmp ogt double %i.ne, 1.000000e+00
  %i.nh = select i1 %i.ng, double 1.000000e+00, double %i.ne
  %i.ni = select i1 %i.nf, double 0.000000e+00, double %i.nh
  %i.nj = fptrunc double %i.ni to float
  %i.nk = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.nj, i32 noundef -1) #16 ; 2 uses
  %i.nl = extractvalue { <2 x float>, <2 x float> } %i.nk, 0 ; 2 uses
  %i.nm = extractvalue { <2 x float>, <2 x float> } %i.nk, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nl, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nl, i64 1
  %i.nn = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.no = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.nn)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nm, i64 0
  %i.np = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.no)
  %i.nq = fcmp ogt float %i.np, 5.000000e-01
  %i.nr = select i1 %i.nq, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.ns = fmul <2 x float> %i.na, splat (float 5.000000e-01)
  %i.nt = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.nu = insertelement <2 x float> %i.nt, float %i.mw, i64 1
  %i.nv = fsub <2 x float> %i.nu, %i.ns
  store <2 x float> %i.nv, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.nr, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.nw = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nw, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2897

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapIyEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1457
end_hunk_6
begin_hunk_7_@_ZN6ImPlot13RenderHeatmapIyEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fd, ptr %i.fn, align 8, !tbaa !161
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fg, ptr %i.fo, align 8, !tbaa !162
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fi, ptr %i.fp, align 8, !tbaa !163
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ex, i64 272
  %i.fs = load float, ptr %i.fr, align 8, !tbaa !156
  %i.ft = fpext float %i.fs to double
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ex, i64 296
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !157
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ex, i64 280
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ex, i64 248
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !158
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ex, i64 264
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !159
  %i.gc = load <2 x double>, ptr %i.fx, align 8, !tbaa !63
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.ge = load <2 x double>, ptr %i.fu, align 8, !tbaa !63
  store <2 x double> %i.gc, ptr %i.fq, align 8, !tbaa !63
  store <2 x double> %i.ge, ptr %i.gd, align 8, !tbaa !63
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.ft, ptr %i.gf, align 8, !tbaa !160
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.fw, ptr %i.gg, align 8, !tbaa !161
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.fz, ptr %i.gh, align 8, !tbaa !162
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.gb, ptr %i.gi, align 8, !tbaa !163
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gj, align 8, !tbaa !164
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gk, align 4, !tbaa !165
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gl, align 8, !tbaa !2911
  %i.gm = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gm, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIyEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.ei, ptr noundef nonnull align 4 dereferenceable(16) %i.ek)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1402
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dr, ptr %i.gn, align 8, !tbaa !2912
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.go, align 4, !tbaa !2913
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gp, align 8, !tbaa !1403
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.gq, align 8, !tbaa !1404
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gr, align 8, !tbaa !1405
  %i.gs = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.gt = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.gu = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.gv = fsub <2 x double> %i.gt, %i.gu
  %i.gw = fdiv <2 x double> %i.gv, %i.dq          ; 2 uses
  store <2 x double> %i.gw, ptr %i.gs, align 8, !tbaa !63
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.gy = extractelement <2 x double> %i.gu, i64 0
  store double %i.gy, ptr %i.gx, align 8, !tbaa !1406
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.dn, ptr %i.gz, align 8, !tbaa !1407
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.ha, align 8, !tbaa !1408
  %i.hb = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.hc = fmul <2 x double> %i.gw, splat (double 5.000000e-01)
  store <2 x double> %i.hc, ptr %i.hb, align 8, !tbaa !63
  %i.hd = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.he = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dr, ptr %11, align 8, !tbaa !150
  %i.hg = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hh = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !151 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 2448
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !94
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [376 x i8], ptr %i.hk, i64 %i.hn ; 6 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hj, i64 2452
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !95
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [376 x i8], ptr %i.hk, i64 %i.hr ; 6 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 272
  %i.hu = load float, ptr %i.ht, align 8, !tbaa !156
  %i.hv = fpext float %i.hu to double
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 296
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !157
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 280
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 248
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !158
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ho, i64 264
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !159
  %i.ie = load <2 x double>, ptr %i.hz, align 8, !tbaa !63
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ig = load <2 x double>, ptr %i.hw, align 8, !tbaa !63
  store <2 x double> %i.ie, ptr %i.hg, align 8, !tbaa !63
  store <2 x double> %i.ig, ptr %i.if, align 8, !tbaa !63
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.hv, ptr %i.ih, align 8, !tbaa !160
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.hy, ptr %i.ii, align 8, !tbaa !161
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.ib, ptr %i.ij, align 8, !tbaa !162
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.id, ptr %i.ik, align 8, !tbaa !163
  %i.il = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.im = getelementptr inbounds nuw i8, ptr %i.hs, i64 272
  %i.in = load float, ptr %i.im, align 8, !tbaa !156
  %i.io = fpext float %i.in to double
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hs, i64 296
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !157
  %i.is = getelementptr inbounds nuw i8, ptr %i.hs, i64 280
  %i.it = getelementptr inbounds nuw i8, ptr %i.hs, i64 248
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !158
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hs, i64 264
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !159
  %i.ix = load <2 x double>, ptr %i.is, align 8, !tbaa !63
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.iz = load <2 x double>, ptr %i.ip, align 8, !tbaa !63
  store <2 x double> %i.ix, ptr %i.il, align 8, !tbaa !63
  store <2 x double> %i.iz, ptr %i.iy, align 8, !tbaa !63
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.io, ptr %i.ja, align 8, !tbaa !160
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.ir, ptr %i.jb, align 8, !tbaa !161
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.iu, ptr %i.jc, align 8, !tbaa !162
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.iw, ptr %i.jd, align 8, !tbaa !163
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.je, align 8, !tbaa !164
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jf, align 4, !tbaa !165
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.jg, align 8, !tbaa !2914
  %i.jh = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jh, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIyEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hd, ptr noundef nonnull align 4 dereferenceable(16) %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ji = sitofp <2 x i32> %i.dp to <2 x double>
  %i.jj = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.jk = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.jl = fsub <2 x double> %i.jj, %i.jk
  %i.jm = fdiv <2 x double> %i.jl, %i.ji          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.jn = icmp sgt i32 %2, 0
  br i1 %i.jn, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jo = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jp = fsub double %i.aa, %i.y
  %i.jq = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jr = fsub double %i.ar, %i.ap
  %i.js = fsub double %i.al, %i.aj
  %i.jt = fsub double %.0107, %.0
  br i1 %i.jo, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.ju = extractelement <2 x double> %i.jm, i64 1 ; 2 uses
  %i.jv = extractelement <2 x double> %i.jm, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.jw = icmp sgt i32 %3, 0
  br i1 %i.jw, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.jx = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.jy = fsub double %i.aa, %i.y
  %i.jz = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.ka = fsub double %i.ar, %i.ap
  %i.kb = fsub double %i.al, %i.aj
  %i.kc = fsub double %.0107, %.0
  br i1 %i.jx, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kd = extractelement <2 x double> %i.jm, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.kf, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.ke = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.ke, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.kf = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.kf, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2905

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.lz, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.kg = load double, ptr %7, align 8, !tbaa !1254
  %i.kh = uitofp nneg i32 %.0110246 to double
  %i.ki = fmul double %i.kd, %i.kh
  %i.kj = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.kk = insertelement <2 x double> %i.kj, double %i.ki, i64 1
  %i.kl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kk) ; 2 uses
  %21 = shufflevector <2 x double> %i.jm, <2 x double> %i.kl, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.kl, double %i.dn, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.km = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.kn = fsub double %i.km, %i.y
  %i.ko = fdiv double %i.kn, %i.jy
  %i.kp = call double @llvm.fmuladd.f64(double %i.jz, double %i.ko, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.kp, %bb.o ], [ %24, %bb.n ]
  %i.kq = fsub double %.0.i128, %i.s
  %i.kr = call double @llvm.fmuladd.f64(double %i.w, double %i.kq, double %i.q)
  %i.ks = fptrunc double %i.kr to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.kt = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.ku = fsub double %i.kt, %i.ap
  %i.kv = fdiv double %i.ku, %i.ka
  %i.kw = call double @llvm.fmuladd.f64(double %i.kb, double %i.kv, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.kw, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.kx = fsub double %.0.i125, %i.aj
  %i.ky = call double @llvm.fmuladd.f64(double %i.an, double %i.kx, double %i.ah)
  %i.kz = fptrunc double %i.ky to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.la = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.lb = load i64, ptr %i.la, align 8, !tbaa !902
  %i.lc = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, i64 noundef %i.lb) #16 ; 0 uses
  %i.ld = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.le = load i64, ptr %i.la, align 8, !tbaa !902
  %i.lf = uitofp i64 %i.le to double
  %i.lg = fsub double %i.lf, %.0
  %i.lh = fdiv double %i.lg, %i.kc                ; 3 uses
  %i.li = fcmp olt double %i.lh, 0.000000e+00
  %i.lj = fcmp ogt double %i.lh, 1.000000e+00
  %i.lk = select i1 %i.lj, double 1.000000e+00, double %i.lh
  %i.ll = select i1 %i.li, double 0.000000e+00, double %i.lk
  %i.lm = fptrunc double %i.ll to float
  %i.ln = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lm, i32 noundef -1) #16 ; 2 uses
  %i.lo = extractvalue { <2 x float>, <2 x float> } %i.ln, 0 ; 2 uses
  %i.lp = extractvalue { <2 x float>, <2 x float> } %i.ln, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lo, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lo, i64 1
  %i.lq = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lr = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.lq)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.lp, i64 0
  %i.ls = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lr)
  %i.lt = fcmp ogt float %i.ls, 5.000000e-01
  %i.lu = select i1 %i.lt, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.lv = fmul <2 x float> %i.ld, splat (float 5.000000e-01)
  %i.lw = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.kz, i64 1
  %i.ly = fsub <2 x float> %i.lx, %i.lv
  store <2 x float> %i.ly, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.lu, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.lz = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.lz, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2906

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.me, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.ma = uitofp nneg i32 %.0109244 to double
  %i.mb = fmul double %i.ju, %i.ma
  %i.mc = call double @llvm.fmuladd.f64(double %i.ju, double 5.000000e-01, double %i.mb)
  %i.md = call double @llvm.fmuladd.f64(double %., double %i.mc, double %i.dn) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.me = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.me, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2907

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.nw, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mf = load double, ptr %7, align 8, !tbaa !1254
  %i.mg = call double @llvm.fmuladd.f64(double %i.jv, double 5.000000e-01, double %i.mf)
  %i.mh = uitofp nneg i32 %.0108242 to double
  %i.mi = call double @llvm.fmuladd.f64(double %i.mh, double %i.jv, double %i.mg) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mj = call noundef double %i.ac(double noundef %i.mi, ptr noundef %i.ae) #16, !inline_history !22
  %i.mk = fsub double %i.mj, %i.y
  %i.ml = fdiv double %i.mk, %i.jp
  %i.mm = call double @llvm.fmuladd.f64(double %i.jq, double %i.ml, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mm, %bb.r ], [ %i.mi, %bb.q ]
  %i.mn = fsub double %.0.i134, %i.s
  %i.mo = call double @llvm.fmuladd.f64(double %i.w, double %i.mn, double %i.q)
  %i.mp = fptrunc double %i.mo to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.mq = call noundef double %i.at(double noundef %i.md, ptr noundef %i.av) #16, !inline_history !22
  %i.mr = fsub double %i.mq, %i.ap
  %i.ms = fdiv double %i.mr, %i.jr
  %i.mt = call double @llvm.fmuladd.f64(double %i.js, double %i.ms, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.mt, %bb.s ], [ %i.md, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.mu = fsub double %.0.i131, %i.aj
  %i.mv = call double @llvm.fmuladd.f64(double %i.an, double %i.mu, double %i.ah)
  %i.mw = fptrunc double %i.mv to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.mx = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !902
  %i.mz = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, i64 noundef %i.my) #16 ; 0 uses
  %i.na = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.nb = load i64, ptr %i.mx, align 8, !tbaa !902
  %i.nc = uitofp i64 %i.nb to double
  %i.nd = fsub double %i.nc, %.0
  %i.ne = fdiv double %i.nd, %i.jt                ; 3 uses
  %i.nf = fcmp olt double %i.ne, 0.000000e+00
  %i.ng = fcmp ogt double %i.ne, 1.000000e+00
  %i.nh = select i1 %i.ng, double 1.000000e+00, double %i.ne
  %i.ni = select i1 %i.nf, double 0.000000e+00, double %i.nh
  %i.nj = fptrunc double %i.ni to float
  %i.nk = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.nj, i32 noundef -1) #16 ; 2 uses
  %i.nl = extractvalue { <2 x float>, <2 x float> } %i.nk, 0 ; 2 uses
  %i.nm = extractvalue { <2 x float>, <2 x float> } %i.nk, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nl, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nl, i64 1
  %i.nn = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.no = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.nn)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nm, i64 0
  %i.np = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.no)
  %i.nq = fcmp ogt float %i.np, 5.000000e-01
  %i.nr = select i1 %i.nq, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.ns = fmul <2 x float> %i.na, splat (float 5.000000e-01)
  %i.nt = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.nu = insertelement <2 x float> %i.nt, float %i.mw, i64 1
  %i.nv = fsub <2 x float> %i.nu, %i.ns
  store <2 x float> %i.nv, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.nr, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.nw = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nw, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2908

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapIfEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
  store i32 -1, ptr %i.ab, align 4, !tbaa !102
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 1457
end_hunk_7
begin_hunk_8_@_ZN6ImPlot13RenderHeatmapIfEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fc, ptr %i.fm, align 8, !tbaa !161
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.ff, ptr %i.fn, align 8, !tbaa !162
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.fh, ptr %i.fo, align 8, !tbaa !163
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ew, i64 272
  %i.fr = load float, ptr %i.fq, align 8, !tbaa !156
  %i.fs = fpext float %i.fr to double
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ew, i64 296
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !157
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ew, i64 280
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ew, i64 248
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !158
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ew, i64 264
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !159
  %i.gb = load <2 x double>, ptr %i.fw, align 8, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gd = load <2 x double>, ptr %i.ft, align 8, !tbaa !63
  store <2 x double> %i.gb, ptr %i.fp, align 8, !tbaa !63
  store <2 x double> %i.gd, ptr %i.gc, align 8, !tbaa !63
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.fs, ptr %i.ge, align 8, !tbaa !160
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.fv, ptr %i.gf, align 8, !tbaa !161
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.fy, ptr %i.gg, align 8, !tbaa !162
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.ga, ptr %i.gh, align 8, !tbaa !163
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gi, align 8, !tbaa !164
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gj, align 4, !tbaa !165
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gk, align 8, !tbaa !2921
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gl, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIfEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.eh, ptr noundef nonnull align 4 dereferenceable(16) %i.ej)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1420
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.dq, ptr %i.gm, align 8, !tbaa !2922
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.gn, align 4, !tbaa !2923
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.go, align 8, !tbaa !1421
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.gp, align 8, !tbaa !1422
  %i.gq = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.gq, align 8, !tbaa !1423
  %i.gr = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.gs = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.gt = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.gu = fsub <2 x double> %i.gs, %i.gt
  %i.gv = fdiv <2 x double> %i.gu, %i.dp          ; 2 uses
  store <2 x double> %i.gv, ptr %i.gr, align 8, !tbaa !63
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.gx = extractelement <2 x double> %i.gt, i64 0
  store double %i.gx, ptr %i.gw, align 8, !tbaa !1424
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.dm, ptr %i.gy, align 8, !tbaa !1425
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.gz, align 8, !tbaa !1426
  %i.ha = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.hb = fmul <2 x double> %i.gv, splat (double 5.000000e-01)
  store <2 x double> %i.hb, ptr %i.ha, align 8, !tbaa !63
  %i.hc = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.hd = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.dq, ptr %11, align 8, !tbaa !150
  %i.hf = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.hg = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 80
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !151 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 24 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 2448
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !94
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [376 x i8], ptr %i.hj, i64 %i.hm ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hi, i64 2452
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !95
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [376 x i8], ptr %i.hj, i64 %i.hq ; 6 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 272
  %i.ht = load float, ptr %i.hs, align 8, !tbaa !156
  %i.hu = fpext float %i.ht to double
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 296
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !157
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 280
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 248
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !158
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 264
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !159
  %i.id = load <2 x double>, ptr %i.hy, align 8, !tbaa !63
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.if = load <2 x double>, ptr %i.hv, align 8, !tbaa !63
  store <2 x double> %i.id, ptr %i.hf, align 8, !tbaa !63
  store <2 x double> %i.if, ptr %i.ie, align 8, !tbaa !63
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.hu, ptr %i.ig, align 8, !tbaa !160
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.hx, ptr %i.ih, align 8, !tbaa !161
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.ia, ptr %i.ii, align 8, !tbaa !162
  %i.ij = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.ic, ptr %i.ij, align 8, !tbaa !163
  %i.ik = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.il = getelementptr inbounds nuw i8, ptr %i.hr, i64 272
  %i.im = load float, ptr %i.il, align 8, !tbaa !156
  %i.in = fpext float %i.im to double
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hr, i64 296
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !157
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hr, i64 280
  %i.is = getelementptr inbounds nuw i8, ptr %i.hr, i64 248
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !158
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hr, i64 264
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !159
  %i.iw = load <2 x double>, ptr %i.ir, align 8, !tbaa !63
  %i.ix = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.iy = load <2 x double>, ptr %i.io, align 8, !tbaa !63
  store <2 x double> %i.iw, ptr %i.ik, align 8, !tbaa !63
  store <2 x double> %i.iy, ptr %i.ix, align 8, !tbaa !63
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.in, ptr %i.iz, align 8, !tbaa !160
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.iq, ptr %i.ja, align 8, !tbaa !161
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.it, ptr %i.jb, align 8, !tbaa !162
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.iv, ptr %i.jc, align 8, !tbaa !163
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.jd, align 8, !tbaa !164
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.je, align 4, !tbaa !165
  %i.jf = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.jf, align 8, !tbaa !2924
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.jg, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIfEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.hc, ptr noundef nonnull align 4 dereferenceable(16) %i.he)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jh = sitofp <2 x i32> %i.do to <2 x double>
  %i.ji = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.jj = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.jk = fsub <2 x double> %i.ji, %i.jj
  %i.jl = fdiv <2 x double> %i.jk, %i.jh          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.m
  %i.jm = icmp sgt i32 %2, 0
  br i1 %i.jm, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jn = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jo = fsub double %i.aa, %i.y
  %i.jp = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jq = fsub double %i.ar, %i.ap
  %i.jr = fsub double %i.al, %i.aj
  %i.js = fsub double %.0107, %.0
  br i1 %i.jn, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.jt = extractelement <2 x double> %i.jl, i64 1 ; 2 uses
  %i.ju = extractelement <2 x double> %i.jl, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.m
  %i.jv = icmp sgt i32 %3, 0
  br i1 %i.jv, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.jw = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.jx = fsub double %i.aa, %i.y
  %i.jy = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.jz = fsub double %i.ar, %i.ap
  %i.ka = fsub double %i.al, %i.aj
  %i.kb = fsub double %.0107, %.0
  br i1 %i.jw, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.kc = extractelement <2 x double> %i.jl, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.ke, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.kd = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.kd, i64 0
  br label %bb.n

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.ke = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.ke, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2915

bb.n:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.lz, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.kf = load double, ptr %7, align 8, !tbaa !1254
  %i.kg = uitofp nneg i32 %.0110246 to double
  %i.kh = fmul double %i.kc, %i.kg
  %i.ki = insertelement <2 x double> poison, double %i.kf, i64 0
  %i.kj = insertelement <2 x double> %i.ki, double %i.kh, i64 1
  %i.kk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kj) ; 2 uses
  %21 = shufflevector <2 x double> %i.jl, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.kk, double %i.dm, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.kl = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.km = fsub double %i.kl, %i.y
  %i.kn = fdiv double %i.km, %i.jx
  %i.ko = call double @llvm.fmuladd.f64(double %i.jy, double %i.kn, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.n, %bb.o
  %.0.i128 = phi double [ %i.ko, %bb.o ], [ %24, %bb.n ]
  %i.kp = fsub double %.0.i128, %i.s
  %i.kq = call double @llvm.fmuladd.f64(double %i.w, double %i.kp, double %i.q)
  %i.kr = fptrunc double %i.kq to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.p

bb.p:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.ks = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.kt = fsub double %i.ks, %i.ap
  %i.ku = fdiv double %i.kt, %i.jz
  %i.kv = call double @llvm.fmuladd.f64(double %i.ka, double %i.ku, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.p
  %.0.i125 = phi double [ %i.kv, %bb.p ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.kw = fsub double %.0.i125, %i.aj
  %i.kx = call double @llvm.fmuladd.f64(double %i.an, double %i.kw, double %i.ah)
  %i.ky = fptrunc double %i.kx to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.kz = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.la = load float, ptr %i.kz, align 4, !tbaa !98
  %i.lb = fpext float %i.la to double
  %i.lc = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, double noundef %i.lb) #16 ; 0 uses
  %i.ld = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.le = load float, ptr %i.kz, align 4, !tbaa !98
  %i.lf = fpext float %i.le to double
  %i.lg = fsub double %i.lf, %.0
  %i.lh = fdiv double %i.lg, %i.kb                ; 3 uses
  %i.li = fcmp olt double %i.lh, 0.000000e+00
  %i.lj = fcmp ogt double %i.lh, 1.000000e+00
  %i.lk = select i1 %i.lj, double 1.000000e+00, double %i.lh
  %i.ll = select i1 %i.li, double 0.000000e+00, double %i.lk
  %i.lm = fptrunc double %i.ll to float
  %i.ln = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.lm, i32 noundef -1) #16 ; 2 uses
  %i.lo = extractvalue { <2 x float>, <2 x float> } %i.ln, 0 ; 2 uses
  %i.lp = extractvalue { <2 x float>, <2 x float> } %i.ln, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lo, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lo, i64 1
  %i.lq = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.lr = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.lq)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.lp, i64 0
  %i.ls = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.lr)
  %i.lt = fcmp ogt float %i.ls, 5.000000e-01
  %i.lu = select i1 %i.lt, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.lv = fmul <2 x float> %i.ld, splat (float 5.000000e-01)
  %i.lw = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.ky, i64 1
  %i.ly = fsub <2 x float> %i.lx, %i.lv
  store <2 x float> %i.ly, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.lu, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.lz = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.lz, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.n, !llvm.loop !2916

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.me, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.ma = uitofp nneg i32 %.0109244 to double
  %i.mb = fmul double %i.jt, %i.ma
  %i.mc = call double @llvm.fmuladd.f64(double %i.jt, double 5.000000e-01, double %i.mb)
  %i.md = call double @llvm.fmuladd.f64(double %., double %i.mc, double %i.dm) ; 2 uses
  br label %bb.q

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.me = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.me, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2917

bb.q:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.nx, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mf = load double, ptr %7, align 8, !tbaa !1254
  %i.mg = call double @llvm.fmuladd.f64(double %i.ju, double 5.000000e-01, double %i.mf)
  %i.mh = uitofp nneg i32 %.0108242 to double
  %i.mi = call double @llvm.fmuladd.f64(double %i.mh, double %i.ju, double %i.mg) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mj = call noundef double %i.ac(double noundef %i.mi, ptr noundef %i.ae) #16, !inline_history !22
  %i.mk = fsub double %i.mj, %i.y
  %i.ml = fdiv double %i.mk, %i.jo
  %i.mm = call double @llvm.fmuladd.f64(double %i.jp, double %i.ml, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.q, %bb.r
  %.0.i134 = phi double [ %i.mm, %bb.r ], [ %i.mi, %bb.q ]
  %i.mn = fsub double %.0.i134, %i.s
  %i.mo = call double @llvm.fmuladd.f64(double %i.w, double %i.mn, double %i.q)
  %i.mp = fptrunc double %i.mo to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.mq = call noundef double %i.at(double noundef %i.md, ptr noundef %i.av) #16, !inline_history !22
  %i.mr = fsub double %i.mq, %i.ap
  %i.ms = fdiv double %i.mr, %i.jq
  %i.mt = call double @llvm.fmuladd.f64(double %i.jr, double %i.ms, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.s
  %.0.i131 = phi double [ %i.mt, %bb.s ], [ %i.md, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.mu = fsub double %.0.i131, %i.aj
  %i.mv = call double @llvm.fmuladd.f64(double %i.an, double %i.mu, double %i.ah)
  %i.mw = fptrunc double %i.mv to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.mx = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.my = load float, ptr %i.mx, align 4, !tbaa !98
  %i.mz = fpext float %i.my to double
  %i.na = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, double noundef %i.mz) #16 ; 0 uses
  %i.nb = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.nc = load float, ptr %i.mx, align 4, !tbaa !98
  %i.nd = fpext float %i.nc to double
  %i.ne = fsub double %i.nd, %.0
  %i.nf = fdiv double %i.ne, %i.js                ; 3 uses
  %i.ng = fcmp olt double %i.nf, 0.000000e+00
  %i.nh = fcmp ogt double %i.nf, 1.000000e+00
  %i.ni = select i1 %i.nh, double 1.000000e+00, double %i.nf
  %i.nj = select i1 %i.ng, double 0.000000e+00, double %i.ni
  %i.nk = fptrunc double %i.nj to float
  %i.nl = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.nk, i32 noundef -1) #16 ; 2 uses
  %i.nm = extractvalue { <2 x float>, <2 x float> } %i.nl, 0 ; 2 uses
  %i.nn = extractvalue { <2 x float>, <2 x float> } %i.nl, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.nm, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.nm, i64 1
  %i.no = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.np = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.no)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nn, i64 0
  %i.nq = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.np)
  %i.nr = fcmp ogt float %i.nq, 5.000000e-01
  %i.ns = select i1 %i.nr, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.nt = fmul <2 x float> %i.nb, splat (float 5.000000e-01)
  %i.nu = insertelement <2 x float> poison, float %i.mp, i64 0
  %i.nv = insertelement <2 x float> %i.nu, float %i.mw, i64 1
  %i.nw = fsub <2 x float> %i.nv, %i.nt
  store <2 x float> %i.nw, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.ns, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.nx = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nx, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.q, !llvm.loop !2918

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.l, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN6ImPlot11PlotHeatmapIdEEvPKcPKT_iiddS2_RK11ImPlotPointS8_i(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef %9) local_unnamed_addr #0 comdat {
bb.a:
  %10 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1256
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1256
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.g

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.p = icmp slt i32 %2, 1
  %i.q = icmp slt i32 %3, 1
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.s, align 4, !tbaa !98
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.t, align 4, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.u, align 4, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.v, align 4, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.w, align 4, !tbaa !98
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 1448
  store float -1.000000e+00, ptr %i.x, align 4, !tbaa !100
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.y, align 4, !tbaa !98
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.z, align 4, !tbaa !98
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 1416
  store float -1.000000e+00, ptr %i.aa, align 4, !tbaa !101
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 1420
end_hunk_8
begin_hunk_9_@_ZN6ImPlot13RenderHeatmapIdEEvR10ImDrawListPKT_iiddPKcRK11ImPlotPointSA_bb:bb.a
  store double %i.fa, ptr %i.fk, align 8, !tbaa !161
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 56
  store ptr %i.fd, ptr %i.fl, align 8, !tbaa !162
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 64
  store ptr %i.ff, ptr %i.fm, align 8, !tbaa !163
  %i.fn = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.fo = getelementptr inbounds nuw i8, ptr %i.eu, i64 272
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !156
  %i.fq = fpext float %i.fp to double
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.eu, i64 296
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !157
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eu, i64 280
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eu, i64 248
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !158
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eu, i64 264
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !159
  %i.fz = load <2 x double>, ptr %i.fu, align 8, !tbaa !63
  %i.ga = getelementptr inbounds nuw i8, ptr %12, i64 88
  %i.gb = load <2 x double>, ptr %i.fr, align 8, !tbaa !63
  store <2 x double> %i.fz, ptr %i.fn, align 8, !tbaa !63
  store <2 x double> %i.gb, ptr %i.ga, align 8, !tbaa !63
  %i.gc = getelementptr inbounds nuw i8, ptr %12, i64 104
  store double %i.fq, ptr %i.gc, align 8, !tbaa !160
  %i.gd = getelementptr inbounds nuw i8, ptr %12, i64 112
  store double %i.ft, ptr %i.gd, align 8, !tbaa !161
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 120
  store ptr %i.fw, ptr %i.ge, align 8, !tbaa !162
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 128
  store ptr %i.fy, ptr %i.gf, align 8, !tbaa !163
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 136
  store i32 6, ptr %i.gg, align 8, !tbaa !164
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 140
  store i32 4, ptr %i.gh, align 4, !tbaa !165
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 144
  store ptr %15, ptr %i.gi, align 8, !tbaa !2931
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 152
  store <2 x float> zeroinitializer, ptr %i.gj, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapColMajIdEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %12, ptr noundef nonnull align 8 dereferenceable(224) %i.ef, ptr noundef nonnull align 4 dereferenceable(16) %i.eh)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %1, ptr %16, align 8, !tbaa !1438
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %i.do, ptr %i.gk, align 8, !tbaa !2932
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %2, ptr %i.gl, align 4, !tbaa !2933
  %i.gm = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i32 %3, ptr %i.gm, align 8, !tbaa !1439
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 24
  store double %.0, ptr %i.gn, align 8, !tbaa !1440
  %i.go = getelementptr inbounds nuw i8, ptr %16, i64 32
  store double %.0107, ptr %i.go, align 8, !tbaa !1441
  %i.gp = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.gq = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.gr = load <2 x double>, ptr %7, align 8, !tbaa !63 ; 2 uses
  %i.gs = fsub <2 x double> %i.gq, %i.gr
  %i.gt = fdiv <2 x double> %i.gs, %i.dn          ; 2 uses
  store <2 x double> %i.gt, ptr %i.gp, align 8, !tbaa !63
  %i.gu = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.gv = extractelement <2 x double> %i.gr, i64 0
  store double %i.gv, ptr %i.gu, align 8, !tbaa !1442
  %i.gw = getelementptr inbounds nuw i8, ptr %16, i64 64
  store double %i.dk, ptr %i.gw, align 8, !tbaa !1443
  %i.gx = getelementptr inbounds nuw i8, ptr %16, i64 72
  store double %., ptr %i.gx, align 8, !tbaa !1444
  %i.gy = getelementptr inbounds nuw i8, ptr %16, i64 80
  %i.gz = fmul <2 x double> %i.gt, splat (double 5.000000e-01)
  store <2 x double> %i.gz, ptr %i.gy, align 8, !tbaa !63
  %i.ha = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  %i.hb = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 2488
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i32 %i.do, ptr %11, align 8, !tbaa !150
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.he = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 80
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !151 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 2448
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !94
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [376 x i8], ptr %i.hh, i64 %i.hk ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 2452
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !95
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds [376 x i8], ptr %i.hh, i64 %i.ho ; 6 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 272
  %i.hr = load float, ptr %i.hq, align 8, !tbaa !156
  %i.hs = fpext float %i.hr to double
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 296
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !157
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hl, i64 280
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hl, i64 248
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !158
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 264
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !159
  %i.ib = load <2 x double>, ptr %i.hw, align 8, !tbaa !63
  %i.ic = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.id = load <2 x double>, ptr %i.ht, align 8, !tbaa !63
  store <2 x double> %i.ib, ptr %i.hd, align 8, !tbaa !63
  store <2 x double> %i.id, ptr %i.ic, align 8, !tbaa !63
  %i.ie = getelementptr inbounds nuw i8, ptr %11, i64 40
  store double %i.hs, ptr %i.ie, align 8, !tbaa !160
  %i.if = getelementptr inbounds nuw i8, ptr %11, i64 48
  store double %i.hv, ptr %i.if, align 8, !tbaa !161
  %i.ig = getelementptr inbounds nuw i8, ptr %11, i64 56
  store ptr %i.hy, ptr %i.ig, align 8, !tbaa !162
  %i.ih = getelementptr inbounds nuw i8, ptr %11, i64 64
  store ptr %i.ia, ptr %i.ih, align 8, !tbaa !163
  %i.ii = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hp, i64 272
  %i.ik = load float, ptr %i.ij, align 8, !tbaa !156
  %i.il = fpext float %i.ik to double
  %i.im = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 296
  %i.io = load double, ptr %i.in, align 8, !tbaa !157
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hp, i64 280
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hp, i64 248
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !158
  %i.is = getelementptr inbounds nuw i8, ptr %i.hp, i64 264
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !159
  %i.iu = load <2 x double>, ptr %i.ip, align 8, !tbaa !63
  %i.iv = getelementptr inbounds nuw i8, ptr %11, i64 88
  %i.iw = load <2 x double>, ptr %i.im, align 8, !tbaa !63
  store <2 x double> %i.iu, ptr %i.ii, align 8, !tbaa !63
  store <2 x double> %i.iw, ptr %i.iv, align 8, !tbaa !63
  %i.ix = getelementptr inbounds nuw i8, ptr %11, i64 104
  store double %i.il, ptr %i.ix, align 8, !tbaa !160
  %i.iy = getelementptr inbounds nuw i8, ptr %11, i64 112
  store double %i.io, ptr %i.iy, align 8, !tbaa !161
  %i.iz = getelementptr inbounds nuw i8, ptr %11, i64 120
  store ptr %i.ir, ptr %i.iz, align 8, !tbaa !162
  %i.ja = getelementptr inbounds nuw i8, ptr %11, i64 128
  store ptr %i.it, ptr %i.ja, align 8, !tbaa !163
  %i.jb = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i32 6, ptr %i.jb, align 8, !tbaa !164
  %i.jc = getelementptr inbounds nuw i8, ptr %11, i64 140
  store i32 4, ptr %i.jc, align 4, !tbaa !165
  %i.jd = getelementptr inbounds nuw i8, ptr %11, i64 144
  store ptr %16, ptr %i.jd, align 8, !tbaa !2934
  %i.je = getelementptr inbounds nuw i8, ptr %11, i64 152
  store <2 x float> zeroinitializer, ptr %i.je, align 8, !tbaa !98
  call void @_ZN6ImPlot18RenderPrimitivesExINS_13RendererRectCINS_19GetterHeatmapRowMajIdEEEEEEvRKT_R10ImDrawListRK6ImRect(ptr noundef nonnull align 8 dereferenceable(160) %11, ptr noundef nonnull align 8 dereferenceable(224) %i.ha, ptr noundef nonnull align 4 dereferenceable(16) %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jf = sitofp <2 x i32> %i.dm to <2 x double>
  %i.jg = load <2 x double>, ptr %8, align 8, !tbaa !63
  %i.jh = load <2 x double>, ptr %7, align 8, !tbaa !63
  %i.ji = fsub <2 x double> %i.jg, %i.jh
  %i.jj = fdiv <2 x double> %i.ji, %i.jf          ; 5 uses
  br i1 %10, label %.preheader237, label %.preheader239

.preheader239:                                    ; preds = %bb.l
  %i.jk = icmp sgt i32 %2, 0
  br i1 %i.jk, label %.preheader238.lr.ph, label %.loopexit

.preheader238.lr.ph:                              ; preds = %.preheader239
  %i.jl = icmp sgt i32 %3, 0
  %.not.i133 = icmp eq ptr %i.ac, null
  %i.jm = fsub double %i.aa, %i.y
  %i.jn = fsub double %i.u, %i.s
  %.not.i130 = icmp eq ptr %i.at, null
  %i.jo = fsub double %i.ar, %i.ap
  %i.jp = fsub double %i.al, %i.aj
  %i.jq = fsub double %.0107, %.0
  br i1 %i.jl, label %.preheader238.preheader, label %.loopexit

.preheader238.preheader:                          ; preds = %.preheader238.lr.ph
  %i.jr = extractelement <2 x double> %i.jj, i64 1 ; 2 uses
  %i.js = extractelement <2 x double> %i.jj, i64 0 ; 2 uses
  br label %.preheader238

.preheader237:                                    ; preds = %bb.l
  %i.jt = icmp sgt i32 %3, 0
  br i1 %i.jt, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader237
  %i.ju = icmp sgt i32 %2, 0
  %.not.i127 = icmp eq ptr %i.ac, null
  %i.jv = fsub double %i.aa, %i.y
  %i.jw = fsub double %i.u, %i.s
  %.not.i124 = icmp eq ptr %i.at, null
  %i.jx = fsub double %i.ar, %i.ap
  %i.jy = fsub double %i.al, %i.aj
  %i.jz = fsub double %.0107, %.0
  br i1 %i.ju, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ka = extractelement <2 x double> %i.jj, i64 1
  %19 = insertelement <2 x double> poison, double %., i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge247
  %.0111250 = phi i32 [ %i.kc, %._crit_edge247 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.0112249 = phi i64 [ %indvars.iv.next256, %._crit_edge247 ], [ 0, %.preheader.preheader ]
  %i.kb = uitofp nneg i32 %.0111250 to double
  %20 = insertelement <2 x double> %19, double %i.kb, i64 0
  br label %bb.m

._crit_edge247:                                   ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %i.kc = add nuw nsw i32 %.0111250, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.kc, %3
  br i1 %exitcond259.not, label %.loopexit, label %.preheader, !llvm.loop !2925

bb.m:                                             ; preds = %.preheader, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126
  %indvars.iv255 = phi i64 [ %.0112249, %.preheader ], [ %indvars.iv.next256, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %.0110246 = phi i32 [ 0, %.preheader ], [ %i.lv, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126 ] ; 2 uses
  %i.kd = load double, ptr %7, align 8, !tbaa !1254
  %i.ke = uitofp nneg i32 %.0110246 to double
  %i.kf = fmul double %i.ka, %i.ke
  %i.kg = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.kh = insertelement <2 x double> %i.kg, double %i.kf, i64 1
  %i.ki = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> splat (double 5.000000e-01), <2 x double> %i.kh) ; 2 uses
  %21 = shufflevector <2 x double> %i.jj, <2 x double> %i.ki, <2 x i32> <i32 0, i32 3>
  %22 = insertelement <2 x double> %i.ki, double %i.dk, i64 1
  %23 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %21, <2 x double> %22) ; 2 uses
  %24 = extractelement <2 x double> %23, i64 0    ; 2 uses
  br i1 %.not.i127, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.kj = call noundef double %i.ac(double noundef %24, ptr noundef %i.ae) #16, !inline_history !22
  %i.kk = fsub double %i.kj, %i.y
  %i.kl = fdiv double %i.kk, %i.jv
  %i.km = call double @llvm.fmuladd.f64(double %i.jw, double %i.kl, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129

_ZNK6ImPlot12Transformer1clIdEEfT_.exit129:       ; preds = %bb.m, %bb.n
  %.0.i128 = phi double [ %i.km, %bb.n ], [ %24, %bb.m ]
  %i.kn = fsub double %.0.i128, %i.s
  %i.ko = call double @llvm.fmuladd.f64(double %i.w, double %i.kn, double %i.q)
  %i.kp = fptrunc double %i.ko to float
  %25 = extractelement <2 x double> %23, i64 1    ; 2 uses
  br i1 %.not.i124, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126, label %bb.o

bb.o:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129
  %i.kq = call noundef double %i.at(double noundef %25, ptr noundef %i.av) #16, !inline_history !22
  %i.kr = fsub double %i.kq, %i.ap
  %i.ks = fdiv double %i.kr, %i.jx
  %i.kt = call double @llvm.fmuladd.f64(double %i.jy, double %i.ks, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit126

_ZNK6ImPlot12Transformer1clIdEEfT_.exit126:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129, %bb.o
  %.0.i125 = phi double [ %i.kt, %bb.o ], [ %25, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit129 ]
  %i.ku = fsub double %.0.i125, %i.aj
  %i.kv = call double @llvm.fmuladd.f64(double %i.an, double %i.ku, double %i.ah)
  %i.kw = fptrunc double %i.kv to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.kx = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv255 ; 2 uses
  %i.ky = load double, ptr %i.kx, align 8, !tbaa !63
  %i.kz = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull %6, double noundef %i.ky) #16 ; 0 uses
  %i.la = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.a, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.lb = load double, ptr %i.kx, align 8, !tbaa !63
  %i.lc = fsub double %i.lb, %.0
  %i.ld = fdiv double %i.lc, %i.jz                ; 3 uses
  %i.le = fcmp olt double %i.ld, 0.000000e+00
  %i.lf = fcmp ogt double %i.ld, 1.000000e+00
  %i.lg = select i1 %i.lf, double 1.000000e+00, double %i.ld
  %i.lh = select i1 %i.le, double 0.000000e+00, double %i.lg
  %i.li = fptrunc double %i.lh to float
  %i.lj = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.li, i32 noundef -1) #16 ; 2 uses
  %i.lk = extractvalue { <2 x float>, <2 x float> } %i.lj, 0 ; 2 uses
  %i.ll = extractvalue { <2 x float>, <2 x float> } %i.lj, 1
  %.sroa.0148.0.vec.extract = extractelement <2 x float> %i.lk, i64 0
  %.sroa.0148.4.vec.extract = extractelement <2 x float> %i.lk, i64 1
  %i.lm = fmul float %.sroa.0148.4.vec.extract, 5.870000e-01
  %i.ln = call float @llvm.fmuladd.f32(float %.sroa.0148.0.vec.extract, float 2.990000e-01, float %i.lm)
  %.sroa.5149.8.vec.extract = extractelement <2 x float> %i.ll, i64 0
  %i.lo = call float @llvm.fmuladd.f32(float %.sroa.5149.8.vec.extract, float 1.140000e-01, float %i.ln)
  %i.lp = fcmp ogt float %i.lo, 5.000000e-01
  %i.lq = select i1 %i.lp, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  %i.lr = fmul <2 x float> %i.la, splat (float 5.000000e-01)
  %i.ls = insertelement <2 x float> poison, float %i.kp, i64 0
  %i.lt = insertelement <2 x float> %i.ls, float %i.kw, i64 1
  %i.lu = fsub <2 x float> %i.lt, %i.lr
  store <2 x float> %i.lu, ptr %17, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef %i.lq, ptr noundef nonnull %i.a, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %indvars.iv.next256 = add nsw i64 %indvars.iv255, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.lv = add nuw nsw i32 %.0110246, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.lv, %2
  br i1 %exitcond258.not, label %._crit_edge247, label %bb.m, !llvm.loop !2926

.preheader238:                                    ; preds = %.preheader238.preheader, %._crit_edge
  %.0109244 = phi i32 [ %i.ma, %._crit_edge ], [ 0, %.preheader238.preheader ] ; 2 uses
  %.2243 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader238.preheader ]
  %i.lw = uitofp nneg i32 %.0109244 to double
  %i.lx = fmul double %i.jr, %i.lw
  %i.ly = call double @llvm.fmuladd.f64(double %i.jr, double 5.000000e-01, double %i.lx)
  %i.lz = call double @llvm.fmuladd.f64(double %., double %i.ly, double %i.dk) ; 2 uses
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %i.ma = add nuw nsw i32 %.0109244, 1            ; 2 uses
  %exitcond254.not = icmp eq i32 %i.ma, %2
  br i1 %exitcond254.not, label %.loopexit, label %.preheader238, !llvm.loop !2927

bb.p:                                             ; preds = %.preheader238, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132
  %indvars.iv = phi i64 [ %.2243, %.preheader238 ], [ %indvars.iv.next, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %.0108242 = phi i32 [ 0, %.preheader238 ], [ %i.nr, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132 ] ; 2 uses
  %i.mb = load double, ptr %7, align 8, !tbaa !1254
  %i.mc = call double @llvm.fmuladd.f64(double %i.js, double 5.000000e-01, double %i.mb)
  %i.md = uitofp nneg i32 %.0108242 to double
  %i.me = call double @llvm.fmuladd.f64(double %i.md, double %i.js, double %i.mc) ; 2 uses
  br i1 %.not.i133, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.mf = call noundef double %i.ac(double noundef %i.me, ptr noundef %i.ae) #16, !inline_history !22
  %i.mg = fsub double %i.mf, %i.y
  %i.mh = fdiv double %i.mg, %i.jm
  %i.mi = call double @llvm.fmuladd.f64(double %i.jn, double %i.mh, double %i.s)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135

_ZNK6ImPlot12Transformer1clIdEEfT_.exit135:       ; preds = %bb.p, %bb.q
  %.0.i134 = phi double [ %i.mi, %bb.q ], [ %i.me, %bb.p ]
  %i.mj = fsub double %.0.i134, %i.s
  %i.mk = call double @llvm.fmuladd.f64(double %i.w, double %i.mj, double %i.q)
  %i.ml = fptrunc double %i.mk to float
  br i1 %.not.i130, label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132, label %bb.r

bb.r:                                             ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135
  %i.mm = call noundef double %i.at(double noundef %i.lz, ptr noundef %i.av) #16, !inline_history !22
  %i.mn = fsub double %i.mm, %i.ap
  %i.mo = fdiv double %i.mn, %i.jo
  %i.mp = call double @llvm.fmuladd.f64(double %i.jp, double %i.mo, double %i.aj)
  br label %_ZNK6ImPlot12Transformer1clIdEEfT_.exit132

_ZNK6ImPlot12Transformer1clIdEEfT_.exit132:       ; preds = %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135, %bb.r
  %.0.i131 = phi double [ %i.mp, %bb.r ], [ %i.lz, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit135 ]
  %i.mq = fsub double %.0.i131, %i.aj
  %i.mr = call double @llvm.fmuladd.f64(double %i.an, double %i.mq, double %i.ah)
  %i.ms = fptrunc double %i.mr to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.mt = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !63
  %i.mv = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull %6, double noundef %i.mu) #16 ; 0 uses
  %i.mw = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %i.b, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16
  %i.mx = load double, ptr %i.mt, align 8, !tbaa !63
  %i.my = fsub double %i.mx, %.0
  %i.mz = fdiv double %i.my, %i.jq                ; 3 uses
  %i.na = fcmp olt double %i.mz, 0.000000e+00
  %i.nb = fcmp ogt double %i.mz, 1.000000e+00
  %i.nc = select i1 %i.nb, double 1.000000e+00, double %i.mz
  %i.nd = select i1 %i.na, double 0.000000e+00, double %i.nc
  %i.ne = fptrunc double %i.nd to float
  %i.nf = call { <2 x float>, <2 x float> } @_ZN6ImPlot14SampleColormapEfi(float noundef %i.ne, i32 noundef -1) #16 ; 2 uses
  %i.ng = extractvalue { <2 x float>, <2 x float> } %i.nf, 0 ; 2 uses
  %i.nh = extractvalue { <2 x float>, <2 x float> } %i.nf, 1
  %.sroa.0142.0.vec.extract = extractelement <2 x float> %i.ng, i64 0
  %.sroa.0142.4.vec.extract = extractelement <2 x float> %i.ng, i64 1
  %i.ni = fmul float %.sroa.0142.4.vec.extract, 5.870000e-01
  %i.nj = call float @llvm.fmuladd.f32(float %.sroa.0142.0.vec.extract, float 2.990000e-01, float %i.ni)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %i.nh, i64 0
  %i.nk = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float 1.140000e-01, float %i.nj)
  %i.nl = fcmp ogt float %i.nk, 5.000000e-01
  %i.nm = select i1 %i.nl, i32 -16777216, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.nn = fmul <2 x float> %i.mw, splat (float 5.000000e-01)
  %i.no = insertelement <2 x float> poison, float %i.ml, i64 0
  %i.np = insertelement <2 x float> %i.no, float %i.ms, i64 1
  %i.nq = fsub <2 x float> %i.np, %i.nn
  store <2 x float> %i.nq, ptr %18, align 8
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %18, i32 noundef %i.nm, ptr noundef nonnull %i.b, ptr noundef null) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.nr = add nuw nsw i32 %.0108242, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.nr, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.p, !llvm.loop !2928

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge247, %.preheader239, %.preheader238.lr.ph, %.preheader237, %.preheader.lr.ph, %bb.k, %_ZNK6ImPlot12Transformer1clIdEEfT_.exit120
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local noundef double @_ZN6ImPlot13PlotHistogramIaEEdPKcPKT_iid11ImPlotRangei(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double %5, double %6, i32 noundef %7) local_unnamed_addr #0 comdat {
bb.a:
  %8 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %9 = alloca %"struct.ImPlot::GetterXY.76", align 8 ; 9 uses
  %10 = alloca %"struct.ImPlot::GetterXY.54", align 8 ; 12 uses
  %11 = alloca %"struct.ImPlot::GetterXY.118", align 8 ; 9 uses
  %i.a = and i32 %7, 2048
  %.not148 = icmp eq i32 %i.a, 0
  %i.b = and i32 %7, 4096
  %.not149 = icmp eq i32 %i.b, 0
  %i.c = and i32 %7, 8192
  %.not = icmp eq i32 %i.c, 0                     ; 5 uses
  %i.d = icmp slt i32 %2, 1
  %i.e = icmp eq i32 %3, 0
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fcmp oeq double %5, 0.000000e+00
  %i.g = fcmp oeq double %6, 0.000000e+00
  %or.cond4 = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %1, align 1, !tbaa !881     ; 7 uses
  %i.i = icmp samesign ugt i32 %2, 1
  br i1 %i.i, label %iter.check, label %_ZL13ImMinMaxArrayIaEvPKT_iPS0_S3_.exit

iter.check:                                       ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 2 uses
  %i.j = add nsw i64 %wide.trip.count.i, -1       ; 5 uses
  %min.iters.check = icmp ult i32 %2, 9
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check213 = icmp ult i32 %2, 33
  br i1 %min.iters.check213, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 24
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  %i.l = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi214 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi215 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi216 = phi <16 x i8> [ %broadcast.splat, %vector.ph ], [ %i.q, %vector.body ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !881 ; 2 uses
  %wide.load217 = load <16 x i8>, ptr %i.o, align 1, !tbaa !881 ; 2 uses
  %i.p = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi215) ; 2 uses
  %i.q = tail call <16 x i8> @llvm.smin.v16i8(<16 x i8> %wide.load217, <16 x i8> %vec.phi216) ; 2 uses
  %i.r = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load, <16 x i8> %vec.phi) ; 2 uses
  %i.s = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %wide.load217, <16 x i8> %vec.phi214) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !2935

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <16 x i8> @llvm.smax.v16i8(<16 x i8> %i.r, <16 x i8> %i.s)
end_hunk_9
