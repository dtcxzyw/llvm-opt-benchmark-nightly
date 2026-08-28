Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_yee?download=true
inline.NumInlined: 303
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo11compare_YeeERKNS0_8ImageBufES4_RNS1_14CompareResultsEffNS0_3ROIEi:bb.a
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(160) %21, i32 noundef 1)
          to label %bb.z unwind label %bb.az

bb.z:                                             ; preds = %bb.y
  %i.cr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo5pasteERNS0_8ImageBufEiiiiRKS2_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %29, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i32 noundef %6)
          to label %bb.aa unwind label %bb.ba     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i32 -2147483648, ptr %12, align 8
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2252.0..sroa_idx, i8 0, i64 28, i1 false)
  store i32 %6, ptr %10, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i16 0, ptr %i.cs, align 4, !tbaa !29
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 6
  store i16 1, ptr %i.ct, align 2, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1024, ptr %i.cu, align 8, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr null, ptr %i.cv, align 8, !tbaa !32
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 0, ptr %i.cw, align 8, !tbaa !33
  %i.cx = ptrtoint ptr %29 to i64                 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.da = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.da, align 8
  store i64 %i.cx, ptr %11, align 8, !tbaa !34
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_113AdobeRGBToXYZERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.cz, align 8, !tbaa !36
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_113AdobeRGBToXYZERNS1_8ImageBufES2_iE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.cy, align 8, !tbaa !39
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %10, ptr noundef nonnull %11)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !39 ; 2 uses
  %.not.i.i187 = icmp eq ptr %i.db, null
  br i1 %.not.i.i187, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %bb.ah unwind label %bb.ad     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #16
  unreachable

bb.ae:                                            ; preds = %bb.aa
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dg = load ptr, ptr %i.cy, align 8, !tbaa !39 ; 2 uses
  %.not.i3.i185 = icmp eq ptr %i.dg, null
  br i1 %.not.i3.i185, label %.body188, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 3)
          to label %.body188 unwind label %bb.ag  ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #16
  unreachable

bb.ah:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.ai unwind label %bb.bb

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 1, ptr %i.c, align 4, !tbaa !3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  %i.dk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo8channelsERNS0_8ImageBufERKS2_iNS0_4spanIKiLm18446744073709551615EEENS6_IKfLm18446744073709551615EEENS6_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm18446744073709551615EEEbi(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %29, i32 noundef 1, ptr nonnull %i.c, i64 1, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.12") align 8 %31, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.13") align 8 %32, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.aj unwind label %bb.bc     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  store i32 2, ptr %33, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr %30, ptr %i.dl, align 8, !tbaa !45
  %i.dm = getelementptr inbounds nuw i8, ptr %33, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i8 0, i64 16, i1 false)
  store i32 1, ptr %34, align 8, !tbaa !40
  %i.dn = getelementptr inbounds nuw i8, ptr %34, i64 8
  store ptr null, ptr %i.dn, align 8, !tbaa !45
  %i.do = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr %i.a, ptr %i.do, align 8, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %34, i64 24
  store i64 1, ptr %i.dp, align 8, !tbaa !47
  store i32 -2147483648, ptr %35, align 8, !tbaa !9, !alias.scope !51
  %i.dq = getelementptr inbounds nuw i8, ptr %35, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.dq, i8 0, i64 28, i1 false), !alias.scope !51
  %i.dr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo3mulERNS0_8ImageBufENS0_14Image_or_ConstES4_NS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::Image_or_Const") align 8 %33, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::Image_or_Const") align 8 %34, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %35, i32 noundef %6)
          to label %bb.ak unwind label %bb.bd     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i32 -2147483648, ptr %9, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.2.0..sroa_idx, i8 0, i64 28, i1 false)
  store i32 %6, ptr %7, align 8, !tbaa !21
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i16 0, ptr %i.ds, align 4, !tbaa !29
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 6
  store i16 1, ptr %i.dt, align 2, !tbaa !30
  %i.du = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1024, ptr %i.du, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.dv, align 8, !tbaa !32
  %i.dw = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 0, ptr %i.dw, align 8, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.dz, align 8
  store i64 %i.cx, ptr %8, align 8, !tbaa !34
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_18XYZToLABERNS1_8ImageBufES2_iE3$_0E9_M_invokeERKSt9_Any_dataOS2_", ptr %i.dy, align 8, !tbaa !36
  store ptr @"_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_12_GLOBAL__N_18XYZToLABERNS1_8ImageBufES2_iE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.dx, align 8, !tbaa !39
  invoke void @_ZN11OpenImageIO4v3_112ImageBufAlgo14parallel_imageENS0_3ROIENS0_6paroptESt8functionIFvS2_EE(ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %9, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::paropt") align 8 %7, ptr noundef nonnull %8)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ea = load ptr, ptr %i.dx, align 8, !tbaa !39 ; 2 uses
  %.not.i.i193 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i193, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eb = invoke noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %bb.ar unwind label %bb.an     ; 0 uses

bb.an:                                            ; preds = %bb.am
  %i.ec = landingpad { ptr, i32 }
          catch ptr null
  %i.ed = extractvalue { ptr, i32 } %i.ec, 0
  call void @__clang_call_terminate(ptr %i.ed) #16
  unreachable

bb.ao:                                            ; preds = %bb.ak
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load ptr, ptr %i.dx, align 8, !tbaa !39 ; 2 uses
  %.not.i3.i191 = icmp eq ptr %i.ef, null
  br i1 %.not.i3.i191, label %.body194, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eg = invoke noundef zeroext i1 %i.ef(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %.body194 unwind label %bb.aq  ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.eh = landingpad { ptr, i32 }
          catch ptr null
  %i.ei = extractvalue { ptr, i32 } %i.eh, 0
  call void @__clang_call_terminate(ptr %i.ei) #16
  unreachable

bb.ar:                                            ; preds = %bb.am, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  invoke fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramidC2ERNS0_8ImageBufE(ptr noundef nonnull align 8 dereferenceable(128) %36, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %bb.as unwind label %bb.be

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #15
  invoke fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramidC2ERNS0_8ImageBufE(ptr noundef nonnull align 8 dereferenceable(128) %37, ptr noundef nonnull align 8 dereferenceable(16) %30)
          to label %bb.at unwind label %bb.bf

bb.at:                                            ; preds = %bb.as
  %i.ej = fpext float %4 to double
  %i.ek = fmul double %i.ej, 5.000000e-01
  %i.el = fmul double %i.ek, f0x400921FB54442D18
  %i.em = fdiv double %i.el, 1.800000e+02
  %i.en = call double @llvm.tan.f64(double %i.em)
  %i.eo = fmul double %i.en, 2.000000e+00
  %i.ep = fmul double %i.eo, 1.800000e+02
  %i.eq = fdiv double %i.ep, f0x400921FB54442D18  ; 9 uses
  %i.er = fptrunc double %i.eq to float
  %i.es = load i32, ptr %i.ax, align 4, !tbaa !16
  %i.et = sub i32 %i.es, %i.ag                    ; 3 uses
  %i.eu = sitofp i32 %i.et to float
  %i.ev = fdiv float %i.eu, %i.er
  %i.ew = fcmp ult double %i.eq, f0x3FEFFFFFF0000000
  %i.ex = fcmp ult double %i.eq, f0x3FFFFFFFF0000000
  %or.cond = or i1 %i.ew, %i.ex
  br i1 %or.cond, label %._crit_edge, label %.lr.ph.1

._crit_edge:                                      ; preds = %.lr.ph.6, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %bb.at
  %.0140.lcssa = phi i64 [ 0, %bb.at ], [ %spec.select, %.lr.ph.6 ], [ 1, %.lr.ph.1 ], [ 2, %.lr.ph.2 ], [ 3, %.lr.ph.3 ], [ 4, %.lr.ph.4 ], [ 5, %.lr.ph.5 ] ; 2 uses
  %i.ey = fmul float %i.ev, 5.000000e-01          ; 5 uses
  %i.ez = fmul float %i.ey, 5.000000e-01          ; 5 uses
  %i.fa = fmul float %i.ez, 5.000000e-01          ; 4 uses
  %i.fb = fmul float %i.fa, 5.000000e-01          ; 4 uses
  %i.fc = fmul float %i.fb, 5.000000e-01          ; 4 uses
  %i.fd = fmul float %i.fc, 5.000000e-01          ; 3 uses
  %i.fe = insertelement <2 x float> poison, float %i.ey, i64 0
  %i.ff = insertelement <2 x float> %i.fe, float %i.ez, i64 1 ; 3 uses
  %i.fg = fmul <2 x float> %i.ff, splat (float f0x43DBB17B)
  %i.fh = fmul <2 x float> %i.ff, splat (float f0xBEAA6E0C)
  %i.fi = call <2 x float> @llvm.exp.v2f32(<2 x float> %i.fh)
  %i.fj = fmul <2 x float> %i.fg, %i.fi
  %i.fk = fmul <2 x float> %i.ff, splat (float f0x3EAA6E0C)
  %i.fl = call <2 x float> @llvm.exp.v2f32(<2 x float> %i.fk)
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> splat (float 6.000000e-02), <2 x float> splat (float 1.000000e+00))
  %i.fn = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fm)
  %i.fo = fmul <2 x float> %i.fj, %i.fn
  %i.fp = fdiv <2 x float> splat (float f0x440349D5), %i.fo ; 2 uses
  %i.fq = insertelement <4 x float> poison, float %i.fa, i64 0
  %i.fr = insertelement <4 x float> %i.fq, float %i.fb, i64 1
  %i.fs = insertelement <4 x float> %i.fr, float %i.fc, i64 2
  %i.ft = insertelement <4 x float> %i.fs, float %i.fd, i64 3 ; 4 uses
  %i.fu = fmul <4 x float> %i.ft, splat (float f0x43DBB17B)
  %i.fv = fmul <4 x float> %i.ft, splat (float f0xBEAA6E0C)
  %i.fw = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fv)
  %i.fx = fmul <4 x float> %i.fu, %i.fw
  %i.fy = fmul <4 x float> %i.ft, splat (float f0x3EAA6E0C)
  %i.fz = call <4 x float> @llvm.exp.v4f32(<4 x float> %i.fy)
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fz, <4 x float> splat (float 6.000000e-02), <4 x float> splat (float 1.000000e+00))
  %i.gb = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ga)
  %i.gc = fmul <4 x float> %i.fx, %i.gb
  %i.gd = fdiv <4 x float> splat (float f0x440349D5), %i.gc
  %i.ge = icmp sgt i32 %i.aw, 0
  br i1 %i.ge, label %.preheader282.lr.ph, label %._crit_edge301.split

bb.au:                                            ; preds = %bb.f
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.av:                                            ; preds = %bb.g
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %bb.o
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ax:                                            ; preds = %bb.p
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.body183

bb.ay:                                            ; preds = %bb.q
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body183

bb.az:                                            ; preds = %bb.y
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ba:                                            ; preds = %bb.z
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body188

bb.bb:                                            ; preds = %bb.ah
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bc:                                            ; preds = %bb.ai
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %.body194

bb.bd:                                            ; preds = %bb.aj
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %.body194

bb.be:                                            ; preds = %bb.ar
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.bf:                                            ; preds = %bb.as
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.lr.ph.1:                                         ; preds = %bb.at
  %i.gr = fcmp ult double %i.eq, f0x400FFFFFF0000000
  br i1 %i.gr, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.gs = fcmp ult double %i.eq, f0x401FFFFFF0000000
  br i1 %i.gs, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.gt = fcmp ult double %i.eq, f0x402FFFFFF0000000
  br i1 %i.gt, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.gu = fcmp ult double %i.eq, f0x403FFFFFF0000000
  br i1 %i.gu, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.gv = fcmp ult double %i.eq, f0x404FFFFFF0000000
  br i1 %i.gv, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.gw = fcmp ult double %i.eq, f0x405FFFFFF0000000
  %spec.select = select i1 %i.gw, i64 6, i64 7
  br label %._crit_edge

.preheader282.lr.ph:                              ; preds = %._crit_edge
  %i.gx = icmp sgt i32 %i.et, 0
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %36, i64 %.0140.lcssa
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %37, i64 %.0140.lcssa
  br i1 %i.gx, label %.preheader282.preheader, label %._crit_edge301.split

.preheader282.preheader:                          ; preds = %.preheader282.lr.ph
  %i.ha = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.hb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hc = extractelement <2 x float> %i.fp, i64 0
  %i.hd = extractelement <2 x float> %i.fp, i64 1
  br label %.preheader282

.preheader282:                                    ; preds = %.preheader282.preheader, %._crit_edge299
  %.0136300 = phi i32 [ %i.jc, %._crit_edge299 ], [ 0, %.preheader282.preheader ] ; 16 uses
  br label %bb.bj

._crit_edge301.split:                             ; preds = %._crit_edge299, %.preheader282.lr.ph, %._crit_edge
  %i.he = load i64, ptr %i.at, align 8, !tbaa !54
  %i.hf = getelementptr inbounds nuw i8, ptr %37, i64 112
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hf) #15
  %i.hg = getelementptr inbounds nuw i8, ptr %37, i64 96
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hg) #15
  %i.hh = getelementptr inbounds nuw i8, ptr %37, i64 80
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hh) #15
  %i.hi = getelementptr inbounds nuw i8, ptr %37, i64 64
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hi) #15
  %i.hj = getelementptr inbounds nuw i8, ptr %37, i64 48
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hj) #15
  %i.hk = getelementptr inbounds nuw i8, ptr %37, i64 32
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hk) #15
  %i.hl = getelementptr inbounds nuw i8, ptr %37, i64 16
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hl) #15
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(128) %37) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #15
  %i.hm = getelementptr inbounds nuw i8, ptr %36, i64 112
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hm) #15
  %i.hn = getelementptr inbounds nuw i8, ptr %36, i64 96
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hn) #15
  %i.ho = getelementptr inbounds nuw i8, ptr %36, i64 80
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ho) #15
  %i.hp = getelementptr inbounds nuw i8, ptr %36, i64 64
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hp) #15
  %i.hq = getelementptr inbounds nuw i8, ptr %36, i64 48
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hq) #15
  %i.hr = getelementptr inbounds nuw i8, ptr %36, i64 32
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hr) #15
  %i.hs = getelementptr inbounds nuw i8, ptr %36, i64 16
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.hs) #15
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(128) %36) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #15
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %29) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #15
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.ht = getelementptr inbounds nuw i8, ptr %21, i64 136 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !57 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %21, i64 144
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !60 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.hu, %i.hw
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge301.split, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hx, %.lr.ph.i.i.i.i ], [ %i.hu, %._crit_edge301.split ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #15
  %i.hx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hx, %i.hw
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ht, align 8, !tbaa !57
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %._crit_edge301.split
  %i.hy = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.hu, %._crit_edge301.split ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hy, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %21, i64 152
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !63
  %i.ib = ptrtoint ptr %i.ia to i64
  %i.ic = ptrtoint ptr %i.hy to i64
  %i.id = sub i64 %i.ib, %i.ic
  call void @_ZdlPvm(ptr noundef nonnull %i.hy, i64 noundef %i.id) #17
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.bg, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %21, i64 96 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !64 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %21, i64 104
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.if, %i.ih
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.in, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.if, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.ii = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !68 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !72
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.in, %i.ih
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !73

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.ie, align 8, !tbaa !64
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.io = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.if, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.io, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %21, i64 112
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !74
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.io to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.it) #17
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.bh, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %21, i64 72
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !75 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.iw = getelementptr inbounds nuw i8, ptr %21, i64 88
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !78
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #17
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.bi
  %i.jb = trunc i64 %i.he to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  ret i32 %i.jb

._crit_edge299:                                   ; preds = %bb.ch
  %i.jc = add nuw nsw i32 %.0136300, 1            ; 2 uses
  %exitcond315.not = icmp eq i32 %i.jc, %i.aw
  br i1 %exitcond315.not, label %._crit_edge301.split, label %.preheader282, !llvm.loop !79

bb.bj:                                            ; preds = %.preheader282, %bb.ch
  %.0135297 = phi i32 [ 0, %.preheader282 ], [ %i.qh, %bb.ch ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  br label %bb.bl

bb.bk:                                            ; preds = %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit203
  %i.jd = fpext float %i.ke to double
  %i.je = fcmp olt double %i.jd, 1.000000e-05
  %.1134 = select i1 %i.je, float f0x3727C5AC, float %i.ke ; 3 uses
  %i.jf = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10getchannelEiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, i32 noundef %.0135297, i32 noundef %.0136300, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit unwind label %bb.bq

bb.bl:                                            ; preds = %bb.bj, %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit203
  %indvars.iv = phi i64 [ 0, %bb.bj ], [ %indvars.iv.next, %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit203 ] ; 5 uses
  %.0133292 = phi float [ 0.000000e+00, %bb.bj ], [ %i.ke, %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit203 ]
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %36, i64 %indvars.iv
  %i.jh = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10getchannelEiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i32 noundef %.0135297, i32 noundef %.0136300, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit197.a unwind label %bb.bm

_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit197.a: ; preds = %bb.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %36, i64 %indvars.iv.next
  %i.jj = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10getchannelEiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, i32 noundef %.0135297, i32 noundef %.0136300, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit198.a unwind label %bb.bm

_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit198.a: ; preds = %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit197.a
  %i.jk = fsub float %i.jh, %i.jj
  %i.jl = call float @llvm.fabs.f32(float %i.jk)  ; 2 uses
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %37, i64 %indvars.iv
  %i.jn = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10getchannelEiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.jm, i32 noundef %.0135297, i32 noundef %.0136300, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit199.a unwind label %bb.bn

_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit199.a: ; preds = %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit198.a
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %37, i64 %indvars.iv.next
  %i.jp = invoke noundef float @_ZNK11OpenImageIO4v3_18ImageBuf10getchannelEiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.jo, i32 noundef %.0135297, i32 noundef %.0136300, i32 noundef 0, i32 noundef 0, i32 noundef 1)
          to label %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit200 unwind label %bb.bn

_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit200: ; preds = %_ZNK11OpenImageIO4v3_112_GLOBAL__N_115GaussianPyramid5valueEiii.exit199.a
  %i.jq = fsub float %i.jn, %i.jp
  %i.jr = call float @llvm.fabs.f32(float %i.jq)  ; 2 uses
  %i.js = fcmp olt float %i.jl, %i.jr
  %.sroa.speculated245 = select i1 %i.js, float %i.jr, float %i.jl
  %i.jt = add nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.ju = getelementptr inbounds nuw [16 x i8], ptr %36, i64 %i.jt
end_hunk_0
