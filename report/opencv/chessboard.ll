Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZNK2cv7details10Chessboard5Board4drawERKNS_11_InputArrayERKNS_12_OutputArrayES5_:bb.a
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.cr = mul i32 %.0105329, 100
  %i.cs = add i32 %i.cr, 100
  %i.ct = load <2 x double>, ptr %i.ay, align 8
  %i.cu = load double, ptr %i.az, align 8, !tbaa !65, !noalias !409 ; 2 uses
  %i.cv = load double, ptr %i.ba, align 8, !tbaa !65, !noalias !409 ; 2 uses
  %i.cw = load <4 x double>, ptr %16, align 8, !tbaa !65, !noalias !409 ; 5 uses
  %i.cx = load double, ptr %i.av, align 8, !tbaa !65, !noalias !409
  %i.cy = load <2 x double>, ptr %i.au, align 8
  %i.cz = extractelement <4 x double> %i.cw, i64 0
  %i.da = load <2 x double>, ptr %i.aw, align 8, !tbaa !65, !noalias !409 ; 2 uses
  %i.db = load <2 x double>, ptr %i.ax, align 8
  %i.dc = shufflevector <4 x double> %i.cw, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.dd = shufflevector <2 x double> %i.da, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.de = shufflevector <4 x double> %i.cw, <4 x double> %i.dd, <2 x i32> <i32 1, i32 4>
  %i.df = shufflevector <4 x double> %i.cw, <4 x double> %i.dd, <2 x i32> <i32 2, i32 5>
  %i.dg = sitofp i32 %i.cs to double
  %i.dh = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dj = fadd <2 x double> %i.di, <double -4.000000e+01, double -0.000000e+00> ; 2 uses
  %i.dk = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dj, <2 x double> zeroinitializer) ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.bq, <2 x double> %i.dl)
  %i.dp = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fadd <2 x double> %i.dq, %i.do          ; 2 uses
  %i.ds = extractelement <2 x double> %i.dl, i64 1
  %i.dt = call double @llvm.fmuladd.f64(double %i.cu, double %i.bm, double %i.ds)
  %i.du = fadd double %i.cv, %i.dt
  %i.dv = extractelement <2 x double> %i.dj, i64 0 ; 2 uses
  %i.dw = call double @llvm.fmuladd.f64(double %i.cz, double %i.dv, double 0.000000e+00)
  %i.dx = call double @llvm.fmuladd.f64(double %i.cx, double %i.dv, double 0.000000e+00)
  %i.dy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.di, <2 x double> zeroinitializer) ; 3 uses
  %i.dz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ea = shufflevector <2 x double> %i.dy, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.eb = insertelement <2 x double> %i.ea, double %i.dw, i64 0
  %i.ec = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> %i.bq, <2 x double> %i.eb)
  %i.ed = shufflevector <4 x double> %i.cw, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.ee = fadd <2 x double> %i.ed, %i.ec
  %i.ef = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eg = insertelement <2 x double> %i.dy, double %i.dx, i64 0
  %i.eh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.bq, <2 x double> %i.eg)
  %i.ei = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fadd <2 x double> %i.ei, %i.eh
  %i.ek = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.de, <2 x double> %i.bp, <2 x double> %i.dy)
  %i.el = fadd <2 x double> %i.df, %i.ek
  %i.em = insertelement <2 x double> poison, double %i.du, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = fdiv <2 x double> %i.el, %i.en
  %i.ep = fptrunc <2 x double> %i.eo to <2 x float> ; 3 uses
  %i.eq = fdiv <2 x double> %i.ee, %i.dr
  %i.er = fptrunc <2 x double> %i.eq to <2 x float>
  %i.es = fdiv <2 x double> %i.ej, %i.dr
  %i.et = fptrunc <2 x double> %i.es to <2 x float>
  %i.eu = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fsub <2 x float> %i.er, %i.eu           ; 3 uses
  %i.ew = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fsub <2 x float> %i.et, %i.ew           ; 3 uses
  %i.ey = fpext <2 x float> %i.ev to <2 x double> ; 2 uses
  %i.ez = fpext <2 x float> %i.ex to <2 x double> ; 2 uses
  %i.fa = fmul <2 x double> %i.ez, %i.ez
  %i.fb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ey, <2 x double> %i.fa)
  %i.fc = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.fb)
  %i.fd = fptrunc <2 x double> %i.fc to <2 x float> ; 3 uses
  %shift = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ex, %shift
  %i.fe = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ff = extractelement <2 x float> %i.ev, i64 0
  %i.fg = extractelement <2 x float> %i.ev, i64 1
  %i.fh = call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.fg, float %i.fe)
  %i.fi = extractelement <2 x float> %i.fd, i64 0
  %i.fj = fdiv float %i.fh, %i.fi
  %i.fk = extractelement <2 x float> %i.fd, i64 1
  %i.fl = fdiv float %i.fj, %i.fk
  %i.fm = call noundef float @acosf(float noundef %i.fl) #33, !noalias !408 ; 2 uses
  store <2 x float> %i.ep, ptr %26, align 16, !tbaa !40, !alias.scope !408
  store <2 x float> %i.fd, ptr %.8..8..8..sroa_idx429, align 8, !tbaa !40, !alias.scope !408
  store float %i.fm, ptr %.16..16..16..sroa_idx, align 16, !tbaa !153, !alias.scope !408
  %i.fn = fneg float %i.fm                        ; 2 uses
  %i.fo = call noundef float @cosf(float noundef %i.fn) #33, !noalias !408
  store float %i.fo, ptr %.20..20..20..sroa_idx, align 4, !tbaa !154, !alias.scope !408
  %i.fp = call noundef float @sinf(float noundef %i.fn) #33, !noalias !408
  store float %i.fp, ptr %.24..24..24..sroa_idx, align 8, !tbaa !155, !alias.scope !408
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33, !noalias !408
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #33
  store i64 0, ptr %i.bc, align 8
  store i32 50397184, ptr %28, align 8, !tbaa !62
  store ptr %19, ptr %i.bb, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  store <2 x double> splat (double 2.000000e+02), ptr %29, align 16, !tbaa !65, !alias.scope !410
  store <2 x double> splat (double 2.000000e+02), ptr %i.bd, align 16, !tbaa !65, !alias.scope !410
  %.0..0..0. = load <4 x float>, ptr %26, align 16
  %i.fq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %.0..0..0.)
  %.4..4..4. = load <4 x float>, ptr %.4..4..4..sroa_idx, align 4
  %i.fr = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %.4..4..4.)
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.fr to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.fq to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %.8..8..8. = load <4 x float>, ptr %.8..8..8..sroa_idx, align 8
  %i.fs = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %.8..8..8.)
  %.12..12..12. = load <4 x float>, ptr %.12..12..12..sroa_idx, align 4 ; 2 uses
  %i.ft = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %.12..12..12.)
  %.sroa.2.0.insert.ext.i4.i = zext i32 %i.ft to i64
  %.sroa.2.0.insert.shift.i5.i = shl nuw i64 %.sroa.2.0.insert.ext.i4.i, 32
  %.sroa.0.0.insert.ext.i6.i = zext i32 %i.fs to i64
  %.sroa.0.0.insert.insert.i7.i = or disjoint i64 %.sroa.2.0.insert.shift.i5.i, %.sroa.0.0.insert.ext.i6.i
  %i.fu = extractelement <4 x float> %.12..12..12., i64 1
  %i.fv = fpext float %i.fu to double
  %i.fw = fdiv double %i.fv, f0xC00921FB54442D18
  %i.fx = call double @llvm.fmuladd.f64(double %i.fw, double 1.800000e+02, double 3.600000e+02)
  invoke void @_ZN2cv7ellipseERKNS_17_InputOutputArrayENS_6Point_IiEENS_5Size_IiEEdddRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %28, i64 %.sroa.0.0.insert.insert.i.i, i64 %.sroa.0.0.insert.insert.i7.i, double noundef %i.fx, double noundef 0.000000e+00, double noundef 3.600000e+02, ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef 1, i32 noundef 8, i32 noundef 0)
          to label %_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE.exit unwind label %bb.an

_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE.exit: ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br label %bb.as

bb.ak:                                            ; preds = %bb.ae
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.al:                                            ; preds = %bb.ah
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.am:                                            ; preds = %bb.ai
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %27) #33
  br label %bb.ao

bb.an:                                            ; preds = %bb.aj
  %i.gb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #33
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.pn149.pn = phi { ptr, i32 } [ %i.gb, %bb.an ], [ %i.ga, %bb.am ], [ %i.fz, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  br label %.body

bb.ap:                                            ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #33
  store i64 0, ptr %i.bf, align 8
  store i32 50397184, ptr %30, align 8, !tbaa !62
  store ptr %19, ptr %i.be, align 8, !tbaa !63
  %i.gc = load float, ptr %.sroa.0305.1327, align 4, !tbaa !164
  %i.gd = insertelement <4 x float> poison, float %i.gc, i64 0
  %i.ge = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gd)
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0305.1327, i64 4
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !165
  %i.gh = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.gi = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.gh)
  %.sroa.2.0.insert.ext.i = zext i32 %i.gi to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ge to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #33
  %i.gj = mul nsw i32 %.1100331, 20
  %i.gk = sitofp i32 %i.gj to double              ; 3 uses
  store double %i.gk, ptr %31, align 8, !tbaa !65
  store double %i.gk, ptr %i.bg, align 8, !tbaa !65
  store double %i.gk, ptr %i.bh, align 8, !tbaa !65
  store double 2.550000e+02, ptr %i.bi, align 8, !tbaa !65
  invoke void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %30, i64 %.sroa.0.0.insert.insert.i, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(32) %31, i32 noundef -1, i32 noundef 8, i32 noundef 0)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  %i.gl = add nsw i32 %.1100331, 1
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #33
  br label %.body

bb.as:                                            ; preds = %_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE.exit, %bb.aq
  %.2101 = phi i32 [ %i.gl, %bb.aq ], [ %.1100331, %_ZNK2cv7details7Ellipse4drawERKNS_17_InputOutputArrayERKNS_7Scalar_IdEE.exit ] ; 2 uses
  %i.gn = add nuw nsw i32 %.0105329, 1            ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.0305.1327, i64 8 ; 2 uses
  %exitcond.not = icmp eq i32 %i.gn, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %bb.ae, !llvm.loop !387

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge338
  %.0104339 = phi i32 [ %i.gp, %._crit_edge338 ], [ 0, %.preheader.preheader ] ; 14 uses
  %46 = add nuw i32 %.0104339, 1                  ; 2 uses
  %.not.i = icmp eq i32 %.0104339, 0              ; 3 uses
  %i.gp = add nuw nsw i32 %.0104339, 1            ; 2 uses
  %xtraiter = and i32 %.0104339, 3                ; 3 uses
  %i.gq = icmp samesign ult i32 %.0104339, 4
  %unroll_iter = and i32 %.0104339, 2147483644
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod393 = icmp ne i32 %xtraiter, 0
  %xtraiter401 = and i32 %.0104339, 3             ; 3 uses
  %i.gr = icmp samesign ult i32 %.0104339, 4
  %unroll_iter406 = and i32 %.0104339, 2147483644
  %lcmp.mod403.not = icmp eq i32 %xtraiter401, 0
  %lcmp.mod405 = icmp ne i32 %xtraiter401, 0
  %xtraiter415 = and i32 %46, 3                   ; 3 uses
  %i.gs = icmp samesign ult i32 %.0104339, 3
  %unroll_iter420 = and i32 %46, -4
  %lcmp.mod417.not = icmp eq i32 %xtraiter415, 0
  %lcmp.mod419 = icmp ne i32 %xtraiter415, 0
  br label %bb.at

._crit_edge340.split:                             ; preds = %._crit_edge338, %bb.ac, %.preheader.lr.ph, %.preheader315
  %i.gt = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !73
  %i.gv = getelementptr inbounds nuw i8, ptr %19, i64 12
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !74
  %i.gx = load i32, ptr %19, align 8, !tbaa !67
  %i.gy = and i32 %i.gx, 4095
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.gu, i32 noundef %i.gw, i32 noundef %i.gy, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.dj unwind label %bb.dp

._crit_edge338:                                   ; preds = %bb.di
  %exitcond343.not = icmp eq i32 %.0104339, %i.cl
  br i1 %exitcond343.not, label %._crit_edge340.split, label %.preheader, !llvm.loop !388

bb.at:                                            ; preds = %.preheader, %bb.di
  %.0103336 = phi i32 [ 0, %.preheader ], [ %i.ql, %bb.di ] ; 15 uses
  %i.gz = load i32, ptr %i.aq, align 8, !tbaa !223
  %.not = icmp slt i32 %.0104339, %i.gz
  br i1 %.not, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ha = load i32, ptr %i.ao, align 4, !tbaa !222
  %.not309 = icmp slt i32 %.0103336, %i.ha
  br i1 %.not309, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.49, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc166 unwind label %bb.bi

.noexc166:                                        ; preds = %bb.av
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZNK2cv7details10Chessboard5Board7getCellEii, ptr noundef nonnull @.str.1, i32 noundef 2283) #32
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %.noexc166
  unreachable

bb.ax:                                            ; preds = %.noexc166
  %i.hb = landingpad { ptr, i32 }
          cleanup
  %i.hc = load ptr, ptr %14, align 8, !tbaa !71   ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ax
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !72
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  br label %.body

bb.ay:                                            ; preds = %bb.au
  %i.hh = load ptr, ptr %i.bs, align 8, !tbaa !212 ; 3 uses
  br i1 %.not.i, label %.preheader.i, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.preheader

_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.preheader: ; preds = %bb.ay
  br i1 %i.gq, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil.preheader, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i
  br i1 %lcmp.mod.not, label %.preheader.i, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil.preheader

_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil.preheader: ; preds = %.preheader.i.loopexit.unr-lcssa, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.preheader
  %.sroa.928.038.i.epil.init = phi ptr [ %i.hh, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.preheader ], [ %spec.select34.i.3, %.preheader.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod393)
  br label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil

_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil.preheader
  %.sroa.928.038.i.epil = phi ptr [ %spec.select34.i.epil, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil ], [ %.sroa.928.038.i.epil.init, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil ], [ 0, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil.preheader ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.928.038.i.epil, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.epil = icmp eq ptr %i.hj, null
  %spec.select34.i.epil = select i1 %.not.i.i.epil, ptr %.sroa.928.038.i.epil, ptr %i.hj ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil, !llvm.loop !389

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil, %bb.ay
  %.sroa.928.0.lcssa.i = phi ptr [ %i.hh, %bb.ay ], [ %spec.select34.i.3, %.preheader.i.loopexit.unr-lcssa ], [ %spec.select34.i.epil, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.epil ] ; 3 uses
  %.not310 = icmp eq i32 %.0103336, 0             ; 2 uses
  br i1 %.not310, label %_ZNK2cv7details10Chessboard5Board7getCellEii.exit, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader: ; preds = %.preheader.i
  %xtraiter394 = and i32 %.0103336, 3             ; 3 uses
  %i.hk = icmp samesign ult i32 %.0103336, 4
  br i1 %i.hk, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil.preheader, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader.new

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader.new: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader
  %unroll_iter399 = and i32 %.0103336, 2147483644
  br label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i

_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.preheader, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i
  %.sroa.928.038.i = phi ptr [ %spec.select34.i.3, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i ], [ %i.hh, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.preheader ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i ], [ 0, %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i.preheader ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.928.038.i, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !176 ; 2 uses
  %.not.i.i = icmp eq ptr %i.hm, null
  %spec.select34.i = select i1 %.not.i.i, ptr %.sroa.928.038.i, ptr %i.hm ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %spec.select34.i, i64 56
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.1 = icmp eq ptr %i.ho, null
  %spec.select34.i.1 = select i1 %.not.i.i.1, ptr %spec.select34.i, ptr %i.ho ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %spec.select34.i.1, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.2 = icmp eq ptr %i.hq, null
  %spec.select34.i.2 = select i1 %.not.i.i.2, ptr %spec.select34.i.1, ptr %i.hq ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %spec.select34.i.2, i64 56
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.3 = icmp eq ptr %i.hs, null
  %spec.select34.i.3 = select i1 %.not.i.i.3, ptr %spec.select34.i.2, ptr %i.hs ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %_ZN2cv7details10Chessboard5Board9PointIter6bottomEb.exit.i, !llvm.loop !11

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader.new
  %.sroa.928.142.i = phi ptr [ %.sroa.928.0.lcssa.i, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader.new ], [ %spec.select36.i.3, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i ] ; 2 uses
  %niter400 = phi i32 [ 0, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader.new ], [ %niter400.next.3, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.928.142.i, i64 48
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !177 ; 2 uses
  %.not.i22.i = icmp eq ptr %i.hu, null
  %spec.select36.i = select i1 %.not.i22.i, ptr %.sroa.928.142.i, ptr %i.hu ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %spec.select36.i, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !177 ; 2 uses
  %.not.i22.i.1 = icmp eq ptr %i.hw, null
  %spec.select36.i.1 = select i1 %.not.i22.i.1, ptr %spec.select36.i, ptr %i.hw ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %spec.select36.i.1, i64 48
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !177 ; 2 uses
  %.not.i22.i.2 = icmp eq ptr %i.hy, null
  %spec.select36.i.2 = select i1 %.not.i22.i.2, ptr %spec.select36.i.1, ptr %i.hy ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %spec.select36.i.2, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !177 ; 2 uses
  %.not.i22.i.3 = icmp eq ptr %i.ia, null
  %spec.select36.i.3 = select i1 %.not.i22.i.3, ptr %spec.select36.i.2, ptr %i.ia ; 3 uses
  %niter400.next.3 = add i32 %niter400, 4         ; 2 uses
  %niter400.ncmp.3 = icmp eq i32 %niter400.next.3, %unroll_iter399
  br i1 %niter400.ncmp.3, label %_ZNK2cv7details10Chessboard5Board7getCellEii.exit.loopexit.unr-lcssa, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i, !llvm.loop !12

_ZNK2cv7details10Chessboard5Board7getCellEii.exit.loopexit.unr-lcssa: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i
  %lcmp.mod396.not = icmp eq i32 %xtraiter394, 0
  br i1 %lcmp.mod396.not, label %_ZNK2cv7details10Chessboard5Board7getCellEii.exit, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil.preheader

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil.preheader: ; preds = %_ZNK2cv7details10Chessboard5Board7getCellEii.exit.loopexit.unr-lcssa, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader
  %.sroa.928.142.i.epil.init = phi ptr [ %.sroa.928.0.lcssa.i, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.preheader ], [ %spec.select36.i.3, %_ZNK2cv7details10Chessboard5Board7getCellEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod398 = icmp ne i32 %xtraiter394, 0
  call void @llvm.assume(i1 %lcmp.mod398)
  br label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil

_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil: ; preds = %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil.preheader
  %.sroa.928.142.i.epil = phi ptr [ %spec.select36.i.epil, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil ], [ %.sroa.928.142.i.epil.init, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil.preheader ] ; 2 uses
  %epil.iter395 = phi i32 [ %epil.iter395.next, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil ], [ 0, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil.preheader ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.928.142.i.epil, i64 48
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !177 ; 2 uses
  %.not.i22.i.epil = icmp eq ptr %i.ic, null
  %spec.select36.i.epil = select i1 %.not.i22.i.epil, ptr %.sroa.928.142.i.epil, ptr %i.ic ; 2 uses
  %epil.iter395.next = add i32 %epil.iter395, 1   ; 2 uses
  %epil.iter395.cmp.not = icmp eq i32 %epil.iter395.next, %xtraiter394
  br i1 %epil.iter395.cmp.not, label %_ZNK2cv7details10Chessboard5Board7getCellEii.exit, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil, !llvm.loop !390

_ZNK2cv7details10Chessboard5Board7getCellEii.exit: ; preds = %_ZNK2cv7details10Chessboard5Board7getCellEii.exit.loopexit.unr-lcssa, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil, %.preheader.i
  %.sroa.928.1.lcssa.i = phi ptr [ %.sroa.928.0.lcssa.i, %.preheader.i ], [ %spec.select36.i.3, %_ZNK2cv7details10Chessboard5Board7getCellEii.exit.loopexit.unr-lcssa ], [ %spec.select36.i.epil, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit.i.epil ] ; 6 uses
  %i.id = load ptr, ptr %.sroa.928.1.lcssa.i, align 8, !tbaa !163 ; 2 uses
  %i.ie = load float, ptr %i.id, align 4, !tbaa !164 ; 2 uses
  %i.if = fcmp uno float %i.ie, 0.000000e+00
  br i1 %i.if, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread.i, label %bb.az

bb.az:                                            ; preds = %_ZNK2cv7details10Chessboard5Board7getCellEii.exit
  %i.ig = getelementptr i8, ptr %i.id, i64 4
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !165 ; 2 uses
  %i.ii = fcmp uno float %i.ih, 0.000000e+00
  br i1 %i.ii, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.928.1.lcssa.i, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !166 ; 2 uses
  %i.il = load float, ptr %i.ik, align 4, !tbaa !164 ; 2 uses
  %i.im = fcmp uno float %i.il, 0.000000e+00
  br i1 %i.im, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.in = getelementptr i8, ptr %i.ik, i64 4
  %i.io = load float, ptr %i.in, align 4, !tbaa !165 ; 2 uses
  %i.ip = fcmp uno float %i.io, 0.000000e+00
  br i1 %i.ip, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.928.1.lcssa.i, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !167 ; 2 uses
  %i.is = load float, ptr %i.ir, align 4, !tbaa !164 ; 2 uses
  %i.it = fcmp uno float %i.is, 0.000000e+00
  br i1 %i.it, label %_ZNK2cv7details10Chessboard5Board4Cell5emptyEv.exit.thread.i, label %bb.bd
end_hunk_0
