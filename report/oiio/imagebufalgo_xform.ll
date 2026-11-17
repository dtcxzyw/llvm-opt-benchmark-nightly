Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_xform?download=true
inline.NumInlined: 5677
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 74
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi:bb.a
  %i.m = fadd float %sin.i.i, %i.l
  %i.n = insertelement <4 x float> poison, float %i.e, i64 0
  %i.o = insertelement <4 x float> %i.n, float %cos.i.i, i64 2
  %i.p = insertelement <4 x float> %i.o, float %sin.i.i, i64 3
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.r = insertelement <4 x float> poison, float %i.f, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.g, i64 1
  %i.t = insertelement <4 x float> %i.s, float %i.i, i64 2
  %i.u = insertelement <4 x float> %i.t, float %cos.i.i, i64 3
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.q, <4 x float> zeroinitializer, <4 x float> %i.u) ; 4 uses
  %i.w = insertelement <2 x float> poison, float %i.h, i64 0
  %i.x = insertelement <2 x float> %i.w, float %3, i64 1
  %i.y = fadd <2 x float> %i.x, <float 0.000000e+00, float -0.000000e+00>
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aa = shufflevector <4 x float> %i.v, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.ab = fadd <4 x float> %i.aa, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ac = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.i, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %cos.i.i, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %4, i64 3
  %i.af = fmul <4 x float> %i.ab, %i.ae
  %i.ag = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %cos.i.i, i64 0
  %i.ah = insertelement <4 x float> %i.ag, float %sin.i.i, i64 1
  %i.ai = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.ah, <4 x float> %i.af) ; 3 uses
  %i.aj = fmul float %4, 0.000000e+00             ; 2 uses
  %i.ak = fadd float %3, %i.aj
  %i.al = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.am = insertelement <4 x float> %i.al, float %3, i64 2
  %i.an = insertelement <4 x float> %i.am, float %i.ak, i64 3
  %i.ao = fadd <4 x float> %i.an, <float 1.000000e+00, float 1.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.ap = insertelement <4 x float> %i.ai, float %i.aj, i64 2
  %i.aq = shufflevector <4 x float> %i.ao, <4 x float> %i.v, <4 x i32> <i32 poison, i32 poison, i32 3, i32 6>
  %i.ar = insertelement <4 x float> poison, float %i.k, i64 0
  %i.as = shufflevector <4 x float> %i.ar, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.at = shufflevector <4 x float> %i.as, <4 x float> %i.aq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = fadd <4 x float> %i.at, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.av = extractelement <4 x float> %i.au, i64 0
  %i.aw = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.ax = insertelement <2 x float> %i.aw, float %i.m, i64 0
  %i.ay = fadd <2 x float> %i.ax, zeroinitializer ; 2 uses
  %i.az = fmul <2 x float> %i.ay, <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ba = shufflevector <4 x float> %i.au, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.bb = insertelement <2 x float> %i.ba, float 0.000000e+00, i64 0 ; 2 uses
  %i.bc = fmul <2 x float> %i.bb, %i.az           ; 2 uses
  %i.bd = fadd <2 x float> %i.bb, %i.az
  %i.be = shufflevector <2 x float> %i.bc, <2 x float> %i.bd, <2 x i32> <i32 0, i32 3>
  %i.bf = extractelement <2 x float> %i.bc, i64 0
  %i.bg = fadd float %i.av, %i.bf
  %i.bh = insertelement <4 x float> %i.ap, float %i.bg, i64 3
  %i.bi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> zeroinitializer, <4 x float> %i.bh) ; 5 uses
  %i.bj = shufflevector <4 x float> %i.ai, <4 x float> %i.bi, <4 x i32> <i32 3, i32 6, i32 poison, i32 3>
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> %i.au, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.bl = fadd <4 x float> %i.bk, <float 0.000000e+00, float 1.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bm = shufflevector <2 x float> %i.ay, <2 x float> %i.be, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.au, <4 x float> zeroinitializer, <4 x float> %i.bm) ; 2 uses
  %i.bo = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.bn, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bl, <4 x float> zeroinitializer, <4 x float> %i.bp) ; 3 uses
  %i.br = extractelement <4 x float> %i.bi, i64 0
  %i.bs = shufflevector <4 x float> %i.bi, <4 x float> %i.bq, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.bt, ptr %14, align 16, !tbaa !299
  %i.bu = extractelement <4 x float> %i.bq, i64 3
  store float %i.bu, ptr %i.c, align 16, !tbaa !299
  %i.bv = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bw = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bx = shufflevector <2 x float> %i.bv, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.by = shufflevector <2 x float> %i.bw, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.bz = fadd <4 x float> %i.bx, %i.by
  %i.ca = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fmul <2 x float> %i.ca, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 1
  %i.cd = fadd float %i.br, %i.cc
  %i.ce = shufflevector <4 x float> %i.bi, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> zeroinitializer, <2 x float> %i.cb)
  %i.cg = shufflevector <4 x float> %i.bl, <4 x float> %i.ao, <4 x i32> <i32 1, i32 7, i32 0, i32 1>
  %i.ch = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float %i.cd, i64 1
  %i.cj = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> %i.cj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.cg, <4 x float> %i.ck)
  store <4 x float> %i.cl, ptr %i.d, align 4, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  store ptr @.str.6, ptr %16, align 8, !tbaa !272
  %i.cm = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.cm, align 8, !tbaa !273
  %i.cn = load ptr, ptr %5, align 8, !tbaa !272
  store ptr %i.cn, ptr %17, align 8, !tbaa !272
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !273
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !273
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %15, ptr noundef nonnull dead_on_return %16, ptr noundef nonnull dead_on_return %17) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store float %6, ptr %i.b, align 4, !tbaa !299
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  store ptr @.str.10, ptr %13, align 8, !tbaa !272
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 11, ptr %i.cr, align 8, !tbaa !273
  %i.cs = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.cv = getelementptr inbounds nuw i8, ptr %15, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store ptr null, ptr %i.cv, align 8, !tbaa !332
  %i.cw = getelementptr inbounds nuw i8, ptr %15, i64 48
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.cw, align 8, !tbaa !260
  %i.cx = getelementptr inbounds nuw i8, ptr %15, i64 52
  store i32 0, ptr %i.cx, align 4, !tbaa !333
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.cy, i8 0, i64 7, i1 false)
  store ptr %i.b, ptr %12, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 4, ptr %i.cz, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.cv, ptr %i.cs, i64 267, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %12, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.da = zext i1 %7 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.da, ptr %i.a, align 4, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr @.str.12, ptr %11, align 8, !tbaa !272
  %i.db = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 13, ptr %i.db, align 8, !tbaa !273
  %i.dc = invoke noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %11)
          to label %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  %i.de = extractvalue { ptr, i32 } %i.dd, 0
  call void @__clang_call_terminate(ptr %i.de) #36
  unreachable

_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit: ; preds = %bb.c
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 80 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr null, ptr %i.df, align 8, !tbaa !332
  %i.dg = getelementptr inbounds nuw i8, ptr %15, i64 88
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %i.dg, align 8, !tbaa !260
  %i.dh = getelementptr inbounds nuw i8, ptr %15, i64 92
  store i32 0, ptr %i.dh, align 4, !tbaa !333
  %i.di = getelementptr inbounds nuw i8, ptr %15, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.di, i8 0, i64 7, i1 false)
  store ptr %i.a, ptr %10, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 4, ptr %i.dj, align 8
  call void @_ZN11OpenImageIO4v3_110ParamValue12init_noclearENS0_7ustringENS0_8TypeDescEiNS1_6InterpENS0_4spanIKSt4byteLm18446744073709551615EEENS1_4CopyENS1_11FromUstringE(ptr noundef nonnull align 8 dereferenceable(39) %i.df, ptr %i.dc, i64 263, i32 noundef 1, i32 noundef 0, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.134") align 8 %10, i8 1, i8 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dk = getelementptr inbounds nuw i8, ptr %15, i64 120
  store ptr @.str.14, ptr %18, align 8, !tbaa !272
  %i.dl = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 4, ptr %i.dl, align 8, !tbaa !273
  store ptr @.str.28, ptr %19, align 8, !tbaa !272
  %i.dm = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 5, ptr %i.dm, align 8, !tbaa !273
  call void @_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(39) %i.dk, ptr noundef nonnull dead_on_return %18, ptr noundef nonnull dead_on_return %19) #33
  %i.dn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEENS0_14ParamValueSpanENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %14, ptr nonnull %15, i64 4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.do = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.do) #33
  %i.dp = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.dp) #33
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.dq) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  ret i1 %i.dn

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_110ParamValueC2ENS0_17basic_string_viewIcSt11char_traitsIcEEEi.exit
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = getelementptr inbounds nuw i8, ptr %15, i64 120
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.ds) #33
  %i.dt = getelementptr inbounds nuw i8, ptr %15, i64 80
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.dt) #33
  %i.du = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %i.du) #33
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  resume { ptr, i32 } %i.dr
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fPNS0_8Filter2DEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %5, i32 noundef %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !guid !685 {
bb.a:
  %7 = alloca %"class.Imath_3_1::Matrix33", align 4 ; 8 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %8, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load i32, ptr %8, align 4, !tbaa !297
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !347
  %i.d = add nsw i32 %i.c, %i.a
  %i.e = sitofp i32 %i.d to float
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !348
  %i.j = add nsw i32 %i.i, %i.g
  %i.k = sitofp i32 %i.j to float
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 32
  %sincos.i.i.i = call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %sin.i.i.i = extractvalue { float, float } %sincos.i.i.i, 0 ; 5 uses
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1 ; 6 uses
  %i.n = fneg float %sin.i.i.i                    ; 2 uses
  %i.o = fmul float %sin.i.i.i, 0.000000e+00
  %i.p = fsub float %cos.i.i.i, %i.o
  %i.q = fmul float %cos.i.i.i, 0.000000e+00
  %11 = fadd float %sin.i.i.i, %i.q
  %i.r = fadd float %11, 0.000000e+00             ; 2 uses
  %i.s = fmul nnan float %i.k, 5.000000e-01       ; 3 uses
  %i.t = fneg float %i.s                          ; 2 uses
  %i.u = call float @llvm.copysign.f32(float 0.000000e+00, float %i.t) ; 2 uses
  %i.v = insertelement <4 x float> poison, float %i.t, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.u, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.n, i64 2
  %i.y = insertelement <4 x float> %i.x, float %cos.i.i.i, i64 3
  %i.z = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %cos.i.i.i, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %sin.i.i.i, i64 1
  %12 = call float @llvm.copysign.f32(float 0.000000e+00, float %i.s) ; 2 uses
  %13 = fmul float %i.r, 0.000000e+00             ; 2 uses
  %i.ab = fmul nnan float %i.e, 5.000000e-01      ; 5 uses
  %i.ac = fneg float %i.ab
  %i.ad = fsub float %i.u, %i.ab
  %i.ae = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.af = insertelement <2 x float> %i.ae, float %i.ab, i64 1
  %i.ag = fadd <2 x float> %i.af, <float 0.000000e+00, float -0.000000e+00>
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ai = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.aj = insertelement <4 x float> %i.ai, float %cos.i.i.i, i64 2
  %i.ak = insertelement <4 x float> %i.aj, float %sin.i.i.i, i64 3
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.am = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.al, <4 x float> zeroinitializer, <4 x float> %i.y) ; 4 uses
  %14 = extractelement <4 x float> %i.am, i64 0
  %15 = fadd float %14, 0.000000e+00              ; 2 uses
  %i.an = extractelement <4 x float> %i.am, i64 1
  %i.ao = fadd float %i.an, 1.000000e+00
  %16 = extractelement <4 x float> %i.am, i64 3
  %i.ap = fmul float %15, %i.n
  %i.aq = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %cos.i.i.i, i64 0
  %i.ar = insertelement <2 x float> poison, float %15, i64 0
  %i.as = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.au = fmul <4 x float> %i.aq, %i.at
  %i.av = shufflevector <4 x float> %i.as, <4 x float> %i.au, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.aw = insertelement <4 x float> %i.av, float %i.s, i64 3
  %i.ax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ah, <4 x float> %i.aa, <4 x float> %i.aw) ; 3 uses
  %17 = extractelement <4 x float> %i.ax, i64 2
  %i.ay = fadd float %i.ao, %17                   ; 2 uses
  %18 = fadd float %i.ab, %12
  %i.az = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %18, i64 1
  %19 = insertelement <4 x float> %i.ba, float %i.p, i64 2
  %20 = fadd <4 x float> %19, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison> ; 4 uses
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %22 = extractelement <4 x float> %20, i64 2
  %23 = fadd float %22, %13
  %24 = insertelement <4 x float> poison, float %12, i64 0
  %25 = insertelement <4 x float> %24, float %23, i64 1
  %26 = insertelement <4 x float> %25, float %i.r, i64 2
  %27 = insertelement <4 x float> %26, float %13, i64 3
  %28 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %21, <4 x float> zeroinitializer, <4 x float> %27) ; 4 uses
  %29 = extractelement <4 x float> %28, i64 0
  %30 = fadd float %29, 1.000000e+00
  %31 = fadd float %16, 0.000000e+00              ; 2 uses
  %32 = fmul float %31, 0.000000e+00              ; 2 uses
  %33 = shufflevector <4 x float> %i.ax, <4 x float> %i.am, <4 x i32> <i32 3, i32 poison, i32 6, i32 6>
  %34 = shufflevector <4 x float> %33, <4 x float> %20, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %35 = fadd <4 x float> %34, <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.bb = extractelement <4 x float> %35, i64 2
  %i.bc = fadd float %i.bb, %32
  %36 = shufflevector <4 x float> %28, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %37 = insertelement <4 x float> %36, float %i.bc, i64 1
  %38 = insertelement <4 x float> %37, float %31, i64 2
  %39 = insertelement <4 x float> %38, float %32, i64 3
  %i.bd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> zeroinitializer, <4 x float> %39) ; 3 uses
  %40 = extractelement <4 x float> %i.bd, i64 2
  %41 = extractelement <4 x float> %35, i64 0
  %i.be = extractelement <4 x float> %28, i64 1
  store float %i.be, ptr %7, align 4, !tbaa !299
  %42 = extractelement <4 x float> %i.bd, i64 0
  store float %42, ptr %9, align 4, !tbaa !299
  %43 = call float @llvm.fmuladd.f32(float %41, float 0.000000e+00, float %40)
  %44 = shufflevector <4 x float> %28, <4 x float> %i.bd, <4 x i32> <i32 3, i32 5, i32 poison, i32 7>
  %45 = insertelement <4 x float> %44, float %43, i64 2 ; 2 uses
  %46 = fadd <4 x float> %45, <float 0.000000e+00, float poison, float poison, float 0.000000e+00>
  %47 = shufflevector <4 x float> %46, <4 x float> %45, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x float> %47, ptr %10, align 4, !tbaa !299
  %48 = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %49 = fadd <2 x float> %48, zeroinitializer     ; 3 uses
  %i.bf = fmul <2 x float> %49, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bg = extractelement <2 x float> %i.bf, i64 1
  %50 = extractelement <2 x float> %49, i64 0
  %51 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> %51)
  %52 = insertelement <2 x float> poison, float %i.ay, i64 0
  %53 = shufflevector <2 x float> %52, <2 x float> poison, <2 x i32> zeroinitializer
  %54 = shufflevector <4 x float> %35, <4 x float> %20, <2 x i32> <i32 0, i32 5>
  %55 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %53, <2 x float> %54, <2 x float> %i.bh)
  %56 = call float @llvm.fmuladd.f32(float %50, float 0.000000e+00, float %i.bg)
  %57 = call float @llvm.fmuladd.f32(float %i.ay, float %30, float %56)
  %58 = shufflevector <2 x float> %55, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %58, ptr %i.l, align 4, !tbaa !299
  store float %57, ptr %i.m, align 4, !tbaa !299
  %i.bi = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %7, ptr noundef %3, i1 noundef zeroext %4, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5, i32 noundef %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret i1 %i.bi
}

declare void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, ptr nofree noundef readonly captures(none) dead_on_return %3, float noundef %4, i1 noundef zeroext %5, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %6, i32 noundef %7) local_unnamed_addr #1 !guid !686 {
bb.a:
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 4 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @_ZNK11OpenImageIO4v3_18ImageBuf8roi_fullEv(ptr dead_on_unwind nonnull writable sret(%"struct.OpenImageIO::v3_1::ROI") align 4 %8, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.a = load <4 x i32>, ptr %8, align 16, !tbaa !48 ; 2 uses
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <2 x i32> <i32 1, i32 3>
  %i.c = shufflevector <4 x i32> %i.a, <4 x i32> poison, <2 x i32> <i32 0, i32 2>
  %i.d = add nsw <2 x i32> %i.b, %i.c
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = fmul nnan <2 x float> %i.e, splat (float 5.000000e-01) ; 2 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !272
  store ptr %i.g, ptr %9, align 8, !tbaa !272
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !273
  store i64 %i.j, ptr %i.h, align 8, !tbaa !273
  %i.k = extractelement <2 x float> %i.f, i64 0
  %i.l = extractelement <2 x float> %i.f, i64 1
  %i.m = call noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %i.k, float noundef %i.l, ptr noundef nonnull dead_on_return %9, float noundef %4, i1 noundef zeroext %5, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %6, i32 noundef %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERKNS0_8ImageBufEfffPNS0_8Filter2DEbNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %7, i32 noundef %8) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !guid !687 {
bb.a:
  %9 = alloca %"class.Imath_3_1::Matrix33", align 16 ; 6 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.c = fneg float %3
  %i.d = fneg float %4
  %i.e = fmul float %4, -0.000000e+00             ; 2 uses
  %i.f = fsub float %i.e, %3
  %sincos.i.i.i = tail call { float, float } @llvm.sincos.f32(float %2) ; 2 uses
  %sin.i.i.i = extractvalue { float, float } %sincos.i.i.i, 0 ; 5 uses
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1 ; 6 uses
  %i.g = fneg float %sin.i.i.i                    ; 2 uses
  %i.h = fmul float %sin.i.i.i, 0.000000e+00
  %i.i = fsub float %cos.i.i.i, %i.h
  %i.j = fmul float %cos.i.i.i, 0.000000e+00
  %i.k = fadd float %sin.i.i.i, %i.j
  %i.l = insertelement <4 x float> poison, float %i.c, i64 0
  %i.m = insertelement <4 x float> %i.l, float %cos.i.i.i, i64 2
  %i.n = insertelement <4 x float> %i.m, float %sin.i.i.i, i64 3
  %i.o = shufflevector <4 x float> %i.n, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.p = insertelement <4 x float> poison, float %i.d, i64 0
  %i.q = insertelement <4 x float> %i.p, float %i.e, i64 1
  %i.r = insertelement <4 x float> %i.q, float %i.g, i64 2
  %i.s = insertelement <4 x float> %i.r, float %cos.i.i.i, i64 3
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> zeroinitializer, <4 x float> %i.s) ; 4 uses
  %i.u = insertelement <2 x float> poison, float %i.f, i64 0
  %i.v = insertelement <2 x float> %i.u, float %3, i64 1
  %i.w = fadd <2 x float> %i.v, <float 0.000000e+00, float -0.000000e+00>
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.y = shufflevector <4 x float> %i.t, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 7>
  %i.z = fadd <4 x float> %i.y, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.aa = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.g, i64 0
  %i.ab = insertelement <4 x float> %i.aa, float %cos.i.i.i, i64 1
  %i.ac = insertelement <4 x float> %i.ab, float %4, i64 3
  %i.ad = fmul <4 x float> %i.z, %i.ac
  %i.ae = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %cos.i.i.i, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %sin.i.i.i, i64 1
  %i.ag = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.x, <4 x float> %i.af, <4 x float> %i.ad) ; 3 uses
  %i.ah = fmul float %4, 0.000000e+00             ; 2 uses
  %i.ai = fadd float %3, %i.ah
  %i.aj = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float %3, i64 2
  %i.al = insertelement <4 x float> %i.ak, float %i.ai, i64 3
  %i.am = fadd <4 x float> %i.al, <float 1.000000e+00, float 1.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.an = insertelement <4 x float> %i.ag, float %i.ah, i64 2
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.t, <4 x i32> <i32 poison, i32 poison, i32 3, i32 6>
  %i.ap = insertelement <4 x float> poison, float %i.i, i64 0
  %i.aq = shufflevector <4 x float> %i.ap, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> %i.ao, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.as = fadd <4 x float> %i.ar, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 4 uses
  %i.at = extractelement <4 x float> %i.as, i64 0
  %i.au = shufflevector <4 x float> %i.t, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.av = insertelement <2 x float> %i.au, float %i.k, i64 0
  %i.aw = fadd <2 x float> %i.av, zeroinitializer ; 2 uses
  %i.ax = fmul <2 x float> %i.aw, <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %i.ay = shufflevector <4 x float> %i.as, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.az = insertelement <2 x float> %i.ay, float 0.000000e+00, i64 0 ; 2 uses
  %i.ba = fmul <2 x float> %i.az, %i.ax           ; 2 uses
  %i.bb = fadd <2 x float> %i.az, %i.ax
  %i.bc = shufflevector <2 x float> %i.ba, <2 x float> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.bd = extractelement <2 x float> %i.ba, i64 0
  %i.be = fadd float %i.at, %i.bd
  %i.bf = insertelement <4 x float> %i.an, float %i.be, i64 3
  %i.bg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.am, <4 x float> zeroinitializer, <4 x float> %i.bf) ; 5 uses
  %i.bh = shufflevector <4 x float> %i.ag, <4 x float> %i.bg, <4 x i32> <i32 3, i32 6, i32 poison, i32 3>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 7, i32 3>
  %i.bj = fadd <4 x float> %i.bi, <float 0.000000e+00, float 1.000000e+00, float -0.000000e+00, float 0.000000e+00> ; 2 uses
  %i.bk = shufflevector <2 x float> %i.aw, <2 x float> %i.bc, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.bl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> zeroinitializer, <4 x float> %i.bk) ; 2 uses
  %i.bm = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.bm, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bj, <4 x float> zeroinitializer, <4 x float> %i.bn) ; 3 uses
  %i.bp = extractelement <4 x float> %i.bg, i64 0
  %i.bq = shufflevector <4 x float> %i.bg, <4 x float> %i.bo, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x float> %i.br, ptr %9, align 16, !tbaa !299
  %i.bs = extractelement <4 x float> %i.bo, i64 3
  store float %i.bs, ptr %i.a, align 16, !tbaa !299
  %i.bt = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bu = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> <float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.bx = fadd <4 x float> %i.bv, %i.bw
  %i.by = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = fmul <2 x float> %i.by, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 1
  %i.cb = fadd float %i.bp, %i.ca
  %i.cc = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> zeroinitializer, <2 x float> %i.bz)
  %i.ce = shufflevector <4 x float> %i.bj, <4 x float> %i.am, <4 x i32> <i32 1, i32 7, i32 0, i32 1>
  %i.cf = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float %i.cb, i64 1
  %i.ch = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.cg, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.ce, <4 x float> %i.ci)
  store <4 x float> %i.cj, ptr %i.b, align 4, !tbaa !299
  %i.ck = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4warpERNS0_8ImageBufERKS2_NS0_11MatrixParamIfLi3EEEPKNS0_8Filter2DEbNS2_8WrapModeENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %9, ptr noundef %5, i1 noundef zeroext %6, i32 noundef 1, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %8)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br i1 %i.ck, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cl = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.cl, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %bb.c
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.cm

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERKNS0_8ImageBufEfffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, ptr nofree noundef readonly captures(none) dead_on_return %5, float noundef %6, i1 noundef zeroext %7, ptr nofree noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 !guid !688 {
bb.a:
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %5, align 8, !tbaa !272
  store ptr %i.a, ptr %10, align 8, !tbaa !272
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !273
  store i64 %i.d, ptr %i.b, align 8, !tbaa !273
  %i.e = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo6rotateERNS0_8ImageBufERKS2_fffNS0_17basic_string_viewIcSt11char_traitsIcEEEfbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef %2, float noundef %3, float noundef %4, ptr noundef nonnull dead_on_return %10, float noundef %6, i1 noundef zeroext %7, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA29_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(29) @.str.32)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #33
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfhhEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !298
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfhhEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 !guid !1784 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !552
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %.val, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !584
  store ptr %i.a, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !253 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !1790 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1792, !nonnull !280, !align !459
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1793, !nonnull !280, !align !459
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1792, !nonnull !280, !align !459
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.k = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %i.l = sitofp <2 x i32> %i.k to <2 x float>
  %i.m = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.n = fdiv <2 x float> %i.l, %i.m
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1792, !nonnull !280, !align !459
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1792, !nonnull !280, !align !459
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !1792, !nonnull !280, !align !459
  %i.u = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !1794, !nonnull !280, !align !459
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !281
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !299
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fdiv <2 x float> %i.z, %i.n
  %i.ab = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !300 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !398 ; 2 uses
  %i.ah = sub nsw i32 %i.ae, %i.ag                ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.al = phi ptr [ %i.ak, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1792, !nonnull !280, !align !459
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1795, !nonnull !280, !align !459
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1793, !nonnull !280, !align !459
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = sitofp <2 x i32> %i.ac to <2 x float>   ; 2 uses
  %i.bd = sext i32 %i.ah to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ac
  %i.cc = load i8, ptr %i.aq, align 8, !tbaa !390, !range !279, !noundef !280
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ce = load i32, ptr %i.ar, align 4, !tbaa !391
  %i.cf = load i32, ptr %i.as, align 4, !tbaa !393
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !392
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !566
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !394
  %i.cl = load i32, ptr %i.aw, align 8, !tbaa !395
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.ad, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !1796, !nonnull !280, !align !454
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !554 ; 2 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !260
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !1797, !nonnull !280, !align !454
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cp, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !260
  %i.cy = load ptr, ptr %i.ba, align 8, !tbaa !1798, !nonnull !280
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !308, !range !279, !noundef !280
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !1799, !nonnull !280
  %i.db = load i8, ptr %i.da, align 1, !tbaa !308, !range !279, !noundef !280
  %i.dc = insertelement <2 x i8> poison, i8 %i.cs, i64 0
  %i.dd = insertelement <2 x i8> %i.dc, i8 %i.cx, i64 1
  %i.de = uitofp <2 x i8> %i.dd to <2 x float>
  %i.df = fmul nnan <2 x float> %i.de, splat (float f0x3B808081) ; 2 uses
  %i.dg = trunc nuw i8 %i.cz to i1
  %i.dh = insertelement <2 x i1> poison, i1 %i.dg, i64 0
  %i.di = trunc nuw i8 %i.db to i1
  %i.dj = insertelement <2 x i1> %i.dh, i1 %i.di, i64 1
  %i.dk = fsub nnan ninf <2 x float> splat (float 1.000000e+00), %i.df
  %i.dl = select <2 x i1> %i.dj, <2 x float> %i.dk, <2 x float> %i.df
  %i.dm = fmul nnan <2 x float> %i.dl, %i.m       ; 3 uses
  %i.dn = fsub <2 x float> %i.dm, %i.bc           ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = call float @llvm.floor.f32(float %i.do)
  %i.dq = fptosi float %i.dp to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dq)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.q)
  %i.dr = extractelement <2 x float> %i.dn, i64 1
  %i.ds = call float @llvm.floor.f32(float %i.dr)
  %i.dt = fptosi float %i.ds to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.dt)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.u)
  %i.du = fadd <2 x float> %i.dm, %i.bc           ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = call float @llvm.ceil.f32(float %i.dv)
  %i.dx = fptosi float %i.dw to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dx)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.q)
  %i.dy = extractelement <2 x float> %i.du, i64 1
  %i.dz = call float @llvm.ceil.f32(float %i.dy)
  %i.ea = fptosi float %i.dz to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ea)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.u)
  %i.eb = add nsw i32 %.1.i88, 1
  %i.ec = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.eb, i32 noundef %.1.i85, i32 noundef %i.ec, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.c
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.al, i8 0, i64 %i.be, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.fc, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ef = load i8, ptr %i.bf, align 8, !tbaa !390, !range !279, !noundef !280
  %i.eg = icmp eq i8 %i.ef, 0
  %.pre = load i32, ptr %i.bg, align 4, !tbaa !391 ; 2 uses
  br i1 %i.eg, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre168 = load i32, ptr %i.bi, align 8, !tbaa !392
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.eh = load i32, ptr %i.bh, align 4, !tbaa !393
  %i.ei = icmp eq i32 %.pre, %i.eh
  %.pre169 = load i32, ptr %i.bi, align 8, !tbaa !392 ; 3 uses
  %i.ej = load i32, ptr %i.bj, align 4
  %i.ek = icmp eq i32 %.pre169, %i.ej
  %or.cond = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.el = load i32, ptr %i.bk, align 4, !tbaa !394
  %i.em = load i32, ptr %i.bl, align 8, !tbaa !395
  %i.en = icmp eq i32 %i.el, %i.em
  br i1 %i.en, label %bb.v, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.eo = phi i32 [ %.pre168, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre169, %bb.i ], [ %.pre169, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !1794, !nonnull !280, !align !459
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !281 ; 2 uses
  %i.er = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.es = insertelement <2 x i32> %i.er, i32 %i.eo, i64 1
  %i.et = sitofp <2 x i32> %i.es to <2 x float>
  %i.eu = fsub <2 x float> %i.et, %i.dm
  %i.ev = fadd <2 x float> %i.eu, splat (float 5.000000e-01) ; 2 uses
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !259
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = extractelement <2 x float> %i.ev, i64 0
  %i.fa = extractelement <2 x float> %i.ev, i64 1
  %i.fb = invoke noundef float %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, float noundef %i.ez, float noundef %i.fa)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.fc = fadd float %.062, %i.fb
  %i.fd = load i32, ptr %i.af, align 8, !tbaa !398 ; 3 uses
  %i.fe = load i32, ptr %i.ad, align 4, !tbaa !300 ; 2 uses
  %i.ff = icmp slt i32 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.fg = load ptr, ptr %i.bm, align 8, !tbaa !554 ; 2 uses
  %i.fh = sext i32 %i.fd to i64                   ; 3 uses
  %i.fi = sub i32 %i.fe, %i.fd                    ; 2 uses
  %wide.trip.count = zext i32 %i.fi to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.fj = add nsw i64 %n.vec, %i.fh
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fg, i64 %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !260
  %wide.load188 = load <4 x i8>, ptr %i.fk, align 1, !tbaa !260
  %i.fl = uitofp <4 x i8> %wide.load to <4 x float>
  %i.fm = uitofp <4 x i8> %wide.load188 to <4 x float>
  %i.fn = fmul nnan <4 x float> %i.fl, splat (float f0x3B808081)
  %i.fo = fmul nnan <4 x float> %i.fm, splat (float f0x3B808081)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load189 = load <4 x float>, ptr %i.fp, align 16, !tbaa !299
  %wide.load190 = load <4 x float>, ptr %i.fq, align 16, !tbaa !299
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %broadcast.splat, <4 x float> %wide.load189)
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %broadcast.splat, <4 x float> %wide.load190)
  store <4 x float> %i.fr, ptr %i.fp, align 16, !tbaa !299
  store <4 x float> %i.fs, ptr %i.fq, align 16, !tbaa !299
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !1785

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv153.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.fh, %.lr.ph ], [ %i.fj, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.fu = load i32, ptr %i.bg, align 4, !tbaa !391
  %i.fv = add nsw i32 %i.fu, 1                    ; 7 uses
  store i32 %i.fv, ptr %i.bg, align 4, !tbaa !391
  %i.fw = load i32, ptr %i.bn, align 8, !tbaa !557
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fy = load i8, ptr %i.bp, align 1, !tbaa !558, !range !279, !noundef !280
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bi, align 8, !tbaa !392
  %.pre170 = load i32, ptr %i.bk, align 4, !tbaa !394
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ga = load i8, ptr %i.bq, align 1, !tbaa !559, !range !279, !noundef !280
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.gc = load i64, ptr %i.bs, align 8, !tbaa !560
  %i.gd = load ptr, ptr %i.bm, align 8, !tbaa !554
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.gc
  store ptr %i.ge, ptr %i.bm, align 8, !tbaa !554
  %i.gf = load i32, ptr %i.bt, align 8, !tbaa !561
  %.not.i.i = icmp slt i32 %i.fv, %i.gf
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !303

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.l
  %i.gg = load i8, ptr %i.br, align 2, !tbaa !562, !range !279, !noundef !280
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = load i64, ptr %i.bs, align 8, !tbaa !560
  %i.gj = load ptr, ptr %i.bm, align 8, !tbaa !554
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gi
  store ptr %i.gk, ptr %i.bm, align 8, !tbaa !554
  %i.gl = load i32, ptr %i.bt, align 8, !tbaa !561
  %i.gm = icmp slt i32 %i.fv, %i.gl               ; 3 uses
  %i.gn = load i32, ptr %i.bu, align 4
  %i.go = icmp sge i32 %i.fv, %i.gn
  %not..i.i = xor i1 %i.gm, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.go, !prof !563
  %i.gp = load ptr, ptr %i.bv, align 8
  %i.gq = icmp eq ptr %i.gp, null
  %i.gr = select i1 %or.cond.i.i, i1 true, i1 %i.gq, !prof !563
  br i1 %i.gr, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !261

bb.q:                                             ; preds = %bb.p
  %i.gs = load ptr, ptr %2, align 8, !tbaa !396
  %i.gt = load i32, ptr %i.bi, align 8, !tbaa !392
  %i.gu = load i32, ptr %i.bk, align 4, !tbaa !394
  %i.gv = load i32, ptr %i.ca, align 8, !tbaa !564
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IhhhEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !298
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IhhhEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 !guid !1801 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !552
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %.val, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !584
  store ptr %i.a, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !253 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IhhhEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !1807 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.104", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.116", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1809, !nonnull !280, !align !459
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1810, !nonnull !280, !align !459
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1809, !nonnull !280, !align !459
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.k = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %i.l = sitofp <2 x i32> %i.k to <2 x float>
  %i.m = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.n = fdiv <2 x float> %i.l, %i.m
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1809, !nonnull !280, !align !459
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1809, !nonnull !280, !align !459
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !1809, !nonnull !280, !align !459
  %i.u = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !1811, !nonnull !280, !align !459
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !281
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !299
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fdiv <2 x float> %i.z, %i.n
  %i.ab = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !300 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !398 ; 2 uses
  %i.ah = sub nsw i32 %i.ae, %i.ag                ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.al = phi ptr [ %i.ak, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1809, !nonnull !280, !align !459
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1812, !nonnull !280, !align !459
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1810, !nonnull !280, !align !459
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = sitofp <2 x i32> %i.ac to <2 x float>   ; 2 uses
  %i.bd = sext i32 %i.ah to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ac
  %i.cc = load i8, ptr %i.aq, align 8, !tbaa !390, !range !279, !noundef !280
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ce = load i32, ptr %i.ar, align 4, !tbaa !391
  %i.cf = load i32, ptr %i.as, align 4, !tbaa !393
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !392
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !566
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !394
  %i.cl = load i32, ptr %i.aw, align 8, !tbaa !395
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.ad, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIhfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !1813, !nonnull !280, !align !454
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !554 ; 2 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !260
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !1814, !nonnull !280, !align !454
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cp, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !260
  %i.cy = load ptr, ptr %i.ba, align 8, !tbaa !1815, !nonnull !280
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !308, !range !279, !noundef !280
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !1816, !nonnull !280
  %i.db = load i8, ptr %i.da, align 1, !tbaa !308, !range !279, !noundef !280
  %i.dc = insertelement <2 x i8> poison, i8 %i.cs, i64 0
  %i.dd = insertelement <2 x i8> %i.dc, i8 %i.cx, i64 1
  %i.de = uitofp <2 x i8> %i.dd to <2 x float>
  %i.df = fmul nnan <2 x float> %i.de, splat (float f0x3B808081) ; 2 uses
  %i.dg = trunc nuw i8 %i.cz to i1
  %i.dh = insertelement <2 x i1> poison, i1 %i.dg, i64 0
  %i.di = trunc nuw i8 %i.db to i1
  %i.dj = insertelement <2 x i1> %i.dh, i1 %i.di, i64 1
  %i.dk = fsub nnan ninf <2 x float> splat (float 1.000000e+00), %i.df
  %i.dl = select <2 x i1> %i.dj, <2 x float> %i.dk, <2 x float> %i.df
  %i.dm = fmul nnan <2 x float> %i.dl, %i.m       ; 3 uses
  %i.dn = fsub <2 x float> %i.dm, %i.bc           ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = call float @llvm.floor.f32(float %i.do)
  %i.dq = fptosi float %i.dp to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dq)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.q)
  %i.dr = extractelement <2 x float> %i.dn, i64 1
  %i.ds = call float @llvm.floor.f32(float %i.dr)
  %i.dt = fptosi float %i.ds to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.dt)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.u)
  %i.du = fadd <2 x float> %i.dm, %i.bc           ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = call float @llvm.ceil.f32(float %i.dv)
  %i.dx = fptosi float %i.dw to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dx)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.q)
  %i.dy = extractelement <2 x float> %i.du, i64 1
  %i.dz = call float @llvm.ceil.f32(float %i.dy)
  %i.ea = fptosi float %i.dz to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ea)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.u)
  %i.eb = add nsw i32 %.1.i88, 1
  %i.ec = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.eb, i32 noundef %.1.i85, i32 noundef %i.ec, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.c
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.al, i8 0, i64 %i.be, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.fc, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ef = load i8, ptr %i.bf, align 8, !tbaa !390, !range !279, !noundef !280
  %i.eg = icmp eq i8 %i.ef, 0
  %.pre = load i32, ptr %i.bg, align 4, !tbaa !391 ; 2 uses
  br i1 %i.eg, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre168 = load i32, ptr %i.bi, align 8, !tbaa !392
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.eh = load i32, ptr %i.bh, align 4, !tbaa !393
  %i.ei = icmp eq i32 %.pre, %i.eh
  %.pre169 = load i32, ptr %i.bi, align 8, !tbaa !392 ; 3 uses
  %i.ej = load i32, ptr %i.bj, align 4
  %i.ek = icmp eq i32 %.pre169, %i.ej
  %or.cond = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.el = load i32, ptr %i.bk, align 4, !tbaa !394
  %i.em = load i32, ptr %i.bl, align 8, !tbaa !395
  %i.en = icmp eq i32 %i.el, %i.em
  br i1 %i.en, label %bb.v, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.eo = phi i32 [ %.pre168, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre169, %bb.i ], [ %.pre169, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !1811, !nonnull !280, !align !459
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !281 ; 2 uses
  %i.er = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.es = insertelement <2 x i32> %i.er, i32 %i.eo, i64 1
  %i.et = sitofp <2 x i32> %i.es to <2 x float>
  %i.eu = fsub <2 x float> %i.et, %i.dm
  %i.ev = fadd <2 x float> %i.eu, splat (float 5.000000e-01) ; 2 uses
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !259
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = extractelement <2 x float> %i.ev, i64 0
  %i.fa = extractelement <2 x float> %i.ev, i64 1
  %i.fb = invoke noundef float %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, float noundef %i.ez, float noundef %i.fa)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.fc = fadd float %.062, %i.fb
  %i.fd = load i32, ptr %i.af, align 8, !tbaa !398 ; 3 uses
  %i.fe = load i32, ptr %i.ad, align 4, !tbaa !300 ; 2 uses
  %i.ff = icmp slt i32 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.fg = load ptr, ptr %i.bm, align 8, !tbaa !554 ; 2 uses
  %i.fh = sext i32 %i.fd to i64                   ; 3 uses
  %i.fi = sub i32 %i.fe, %i.fd                    ; 2 uses
  %wide.trip.count = zext i32 %i.fi to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.fj = add nsw i64 %n.vec, %i.fh
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.fg, i64 %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load = load <4 x i8>, ptr %gep, align 1, !tbaa !260
  %wide.load188 = load <4 x i8>, ptr %i.fk, align 1, !tbaa !260
  %i.fl = uitofp <4 x i8> %wide.load to <4 x float>
  %i.fm = uitofp <4 x i8> %wide.load188 to <4 x float>
  %i.fn = fmul nnan <4 x float> %i.fl, splat (float f0x3B808081)
  %i.fo = fmul nnan <4 x float> %i.fm, splat (float f0x3B808081)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load189 = load <4 x float>, ptr %i.fp, align 16, !tbaa !299
  %wide.load190 = load <4 x float>, ptr %i.fq, align 16, !tbaa !299
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %broadcast.splat, <4 x float> %wide.load189)
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %broadcast.splat, <4 x float> %wide.load190)
  store <4 x float> %i.fr, ptr %i.fp, align 16, !tbaa !299
  store <4 x float> %i.fs, ptr %i.fq, align 16, !tbaa !299
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !1802

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv153.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.fh, %.lr.ph ], [ %i.fj, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.fu = load i32, ptr %i.bg, align 4, !tbaa !391
  %i.fv = add nsw i32 %i.fu, 1                    ; 7 uses
  store i32 %i.fv, ptr %i.bg, align 4, !tbaa !391
  %i.fw = load i32, ptr %i.bn, align 8, !tbaa !557
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fy = load i8, ptr %i.bp, align 1, !tbaa !558, !range !279, !noundef !280
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bi, align 8, !tbaa !392
  %.pre170 = load i32, ptr %i.bk, align 4, !tbaa !394
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ga = load i8, ptr %i.bq, align 1, !tbaa !559, !range !279, !noundef !280
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.gc = load i64, ptr %i.bs, align 8, !tbaa !560
  %i.gd = load ptr, ptr %i.bm, align 8, !tbaa !554
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.gc
  store ptr %i.ge, ptr %i.bm, align 8, !tbaa !554
  %i.gf = load i32, ptr %i.bt, align 8, !tbaa !561
  %.not.i.i = icmp slt i32 %i.fv, %i.gf
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !303

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.l
  %i.gg = load i8, ptr %i.br, align 2, !tbaa !562, !range !279, !noundef !280
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = load i64, ptr %i.bs, align 8, !tbaa !560
  %i.gj = load ptr, ptr %i.bm, align 8, !tbaa !554
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gi
  store ptr %i.gk, ptr %i.bm, align 8, !tbaa !554
  %i.gl = load i32, ptr %i.bt, align 8, !tbaa !561
  %i.gm = icmp slt i32 %i.fv, %i.gl               ; 3 uses
  %i.gn = load i32, ptr %i.bu, align 4
  %i.go = icmp sge i32 %i.fv, %i.gn
  %not..i.i = xor i1 %i.gm, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.go, !prof !563
  %i.gp = load ptr, ptr %i.bv, align 8
  %i.gq = icmp eq ptr %i.gp, null
  %i.gr = select i1 %or.cond.i.i, i1 true, i1 %i.gq, !prof !563
  br i1 %i.gr, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !261

bb.q:                                             ; preds = %bb.p
  %i.gs = load ptr, ptr %2, align 8, !tbaa !396
  %i.gt = load i32, ptr %i.bi, align 8, !tbaa !392
  %i.gu = load i32, ptr %i.bk, align 4, !tbaa !394
  %i.gv = load i32, ptr %i.ca, align 8, !tbaa !564
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfttEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !298
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_IfttEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 !guid !1852 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !552
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %.val, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !584
  store ptr %i.a, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !253 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_IfttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !1858 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1860, !nonnull !280, !align !459
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1861, !nonnull !280, !align !459
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1860, !nonnull !280, !align !459
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.k = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %i.l = sitofp <2 x i32> %i.k to <2 x float>
  %i.m = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.n = fdiv <2 x float> %i.l, %i.m
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1860, !nonnull !280, !align !459
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1860, !nonnull !280, !align !459
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !1860, !nonnull !280, !align !459
  %i.u = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !1862, !nonnull !280, !align !459
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !281
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !299
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fdiv <2 x float> %i.z, %i.n
  %i.ab = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !300 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !398 ; 2 uses
  %i.ah = sub nsw i32 %i.ae, %i.ag                ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.al = phi ptr [ %i.ak, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1860, !nonnull !280, !align !459
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1863, !nonnull !280, !align !459
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1861, !nonnull !280, !align !459
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = sitofp <2 x i32> %i.ac to <2 x float>   ; 2 uses
  %i.bd = sext i32 %i.ah to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ac
  %i.cc = load i8, ptr %i.aq, align 8, !tbaa !390, !range !279, !noundef !280
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ce = load i32, ptr %i.ar, align 4, !tbaa !391
  %i.cf = load i32, ptr %i.as, align 4, !tbaa !393
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !392
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !566
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !394
  %i.cl = load i32, ptr %i.aw, align 8, !tbaa !395
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.ad, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorIffEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !1864, !nonnull !280, !align !454
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !554 ; 2 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !570
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !1865, !nonnull !280, !align !454
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !570
  %i.cy = load ptr, ptr %i.ba, align 8, !tbaa !1866, !nonnull !280
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !308, !range !279, !noundef !280
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !1867, !nonnull !280
  %i.db = load i8, ptr %i.da, align 1, !tbaa !308, !range !279, !noundef !280
  %i.dc = insertelement <2 x i16> poison, i16 %i.cs, i64 0
  %i.dd = insertelement <2 x i16> %i.dc, i16 %i.cx, i64 1
  %i.de = uitofp <2 x i16> %i.dd to <2 x float>
  %i.df = fmul nnan <2 x float> %i.de, splat (float f0x37800080) ; 2 uses
  %i.dg = trunc nuw i8 %i.cz to i1
  %i.dh = insertelement <2 x i1> poison, i1 %i.dg, i64 0
  %i.di = trunc nuw i8 %i.db to i1
  %i.dj = insertelement <2 x i1> %i.dh, i1 %i.di, i64 1
  %i.dk = fsub nnan ninf <2 x float> splat (float 1.000000e+00), %i.df
  %i.dl = select <2 x i1> %i.dj, <2 x float> %i.dk, <2 x float> %i.df
  %i.dm = fmul nnan <2 x float> %i.dl, %i.m       ; 3 uses
  %i.dn = fsub <2 x float> %i.dm, %i.bc           ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = call float @llvm.floor.f32(float %i.do)
  %i.dq = fptosi float %i.dp to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dq)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.q)
  %i.dr = extractelement <2 x float> %i.dn, i64 1
  %i.ds = call float @llvm.floor.f32(float %i.dr)
  %i.dt = fptosi float %i.ds to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.dt)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.u)
  %i.du = fadd <2 x float> %i.dm, %i.bc           ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = call float @llvm.ceil.f32(float %i.dv)
  %i.dx = fptosi float %i.dw to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dx)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.q)
  %i.dy = extractelement <2 x float> %i.du, i64 1
  %i.dz = call float @llvm.ceil.f32(float %i.dy)
  %i.ea = fptosi float %i.dz to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ea)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.u)
  %i.eb = add nsw i32 %.1.i88, 1
  %i.ec = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.eb, i32 noundef %.1.i85, i32 noundef %i.ec, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.c
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.al, i8 0, i64 %i.be, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.fc, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ef = load i8, ptr %i.bf, align 8, !tbaa !390, !range !279, !noundef !280
  %i.eg = icmp eq i8 %i.ef, 0
  %.pre = load i32, ptr %i.bg, align 4, !tbaa !391 ; 2 uses
  br i1 %i.eg, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre168 = load i32, ptr %i.bi, align 8, !tbaa !392
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.eh = load i32, ptr %i.bh, align 4, !tbaa !393
  %i.ei = icmp eq i32 %.pre, %i.eh
  %.pre169 = load i32, ptr %i.bi, align 8, !tbaa !392 ; 3 uses
  %i.ej = load i32, ptr %i.bj, align 4
  %i.ek = icmp eq i32 %.pre169, %i.ej
  %or.cond = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.el = load i32, ptr %i.bk, align 4, !tbaa !394
  %i.em = load i32, ptr %i.bl, align 8, !tbaa !395
  %i.en = icmp eq i32 %i.el, %i.em
  br i1 %i.en, label %bb.v, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.eo = phi i32 [ %.pre168, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre169, %bb.i ], [ %.pre169, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !1862, !nonnull !280, !align !459
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !281 ; 2 uses
  %i.er = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.es = insertelement <2 x i32> %i.er, i32 %i.eo, i64 1
  %i.et = sitofp <2 x i32> %i.es to <2 x float>
  %i.eu = fsub <2 x float> %i.et, %i.dm
  %i.ev = fadd <2 x float> %i.eu, splat (float 5.000000e-01) ; 2 uses
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !259
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = extractelement <2 x float> %i.ev, i64 0
  %i.fa = extractelement <2 x float> %i.ev, i64 1
  %i.fb = invoke noundef float %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, float noundef %i.ez, float noundef %i.fa)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.fc = fadd float %.062, %i.fb
  %i.fd = load i32, ptr %i.af, align 8, !tbaa !398 ; 3 uses
  %i.fe = load i32, ptr %i.ad, align 4, !tbaa !300 ; 2 uses
  %i.ff = icmp slt i32 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.fg = load ptr, ptr %i.bm, align 8, !tbaa !554 ; 2 uses
  %i.fh = sext i32 %i.fd to i64                   ; 3 uses
  %i.fi = sub i32 %i.fe, %i.fd                    ; 2 uses
  %wide.trip.count = zext i32 %i.fi to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.fj = add nsw i64 %n.vec, %i.fh
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.fg, i64 %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load = load <4 x i16>, ptr %gep, align 2, !tbaa !570
  %wide.load188 = load <4 x i16>, ptr %i.fk, align 2, !tbaa !570
  %i.fl = uitofp <4 x i16> %wide.load to <4 x float>
  %i.fm = uitofp <4 x i16> %wide.load188 to <4 x float>
  %i.fn = fmul nnan <4 x float> %i.fl, splat (float f0x37800080)
  %i.fo = fmul nnan <4 x float> %i.fm, splat (float f0x37800080)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load189 = load <4 x float>, ptr %i.fp, align 16, !tbaa !299
  %wide.load190 = load <4 x float>, ptr %i.fq, align 16, !tbaa !299
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %broadcast.splat, <4 x float> %wide.load189)
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %broadcast.splat, <4 x float> %wide.load190)
  store <4 x float> %i.fr, ptr %i.fp, align 16, !tbaa !299
  store <4 x float> %i.fs, ptr %i.fq, align 16, !tbaa !299
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !1853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv153.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.fh, %.lr.ph ], [ %i.fj, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.fu = load i32, ptr %i.bg, align 4, !tbaa !391
  %i.fv = add nsw i32 %i.fu, 1                    ; 7 uses
  store i32 %i.fv, ptr %i.bg, align 4, !tbaa !391
  %i.fw = load i32, ptr %i.bn, align 8, !tbaa !557
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fy = load i8, ptr %i.bp, align 1, !tbaa !558, !range !279, !noundef !280
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bi, align 8, !tbaa !392
  %.pre170 = load i32, ptr %i.bk, align 4, !tbaa !394
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ga = load i8, ptr %i.bq, align 1, !tbaa !559, !range !279, !noundef !280
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.gc = load i64, ptr %i.bs, align 8, !tbaa !560
  %i.gd = load ptr, ptr %i.bm, align 8, !tbaa !554
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.gc
  store ptr %i.ge, ptr %i.bm, align 8, !tbaa !554
  %i.gf = load i32, ptr %i.bt, align 8, !tbaa !561
  %.not.i.i = icmp slt i32 %i.fv, %i.gf
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !303

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.l
  %i.gg = load i8, ptr %i.br, align 2, !tbaa !562, !range !279, !noundef !280
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = load i64, ptr %i.bs, align 8, !tbaa !560
  %i.gj = load ptr, ptr %i.bm, align 8, !tbaa !554
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gi
  store ptr %i.gk, ptr %i.bm, align 8, !tbaa !554
  %i.gl = load i32, ptr %i.bt, align 8, !tbaa !561
  %i.gm = icmp slt i32 %i.fv, %i.gl               ; 3 uses
  %i.gn = load i32, ptr %i.bu, align 4
  %i.go = icmp sge i32 %i.fv, %i.gn
  %not..i.i = xor i1 %i.gm, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.go, !prof !563
  %i.gp = load ptr, ptr %i.bv, align 8
  %i.gq = icmp eq ptr %i.gp, null
  %i.gr = select i1 %or.cond.i.i, i1 true, i1 %i.gq, !prof !563
  br i1 %i.gr, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !261

bb.q:                                             ; preds = %bb.p
  %i.gs = load ptr, ptr %2, align 8, !tbaa !396
  %i.gt = load i32, ptr %i.bi, align 8, !tbaa !392
  %i.gu = load i32, ptr %i.bk, align 4, !tbaa !394
  %i.gv = load i32, ptr %i.ca, align 8, !tbaa !564
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_ItttEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !298
  tail call fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr noundef nonnull readonly align 8 dereferenceable(64) %.val, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8st_warp_ItttEEbRNS1_8ImageBufERKS5_S8_iibbPKNS1_8Filter2DES2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #1 align 2 !guid !1869 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiEUlS9_E_, ptr %0, align 8, !tbaa !552
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %.val, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.val6, i64 64, i1 false), !tbaa.struct !584
  store ptr %i.a, ptr %0, align 8, !tbaa !253
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !253 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 64) #37
  br label %_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS2_8ImageBufERKS4_S7_iibbPKNS2_8Filter2DENS2_3ROIEiEUlSB_E_E10_M_managerERSt9_Any_dataRKSE_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN11OpenImageIO4v3_1L8st_warp_ItttEEbRNS0_8ImageBufERKS2_S5_iibbPKNS0_8Filter2DENS0_3ROIEiENKUlS9_E_clES9_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !1875 {
bb.a:
  %2 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 33 uses
  %3 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.112", align 8 ; 17 uses
  %4 = alloca %"class.OpenImageIO::v3_1::ImageBuf::Iterator.128", align 8 ; 14 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1877, !nonnull !280, !align !459
  %i.b = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1878, !nonnull !280, !align !459
  %i.e = tail call noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.h = load ptr, ptr %0, align 8, !tbaa !1877, !nonnull !280, !align !459
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load <2 x i32>, ptr %i.f, align 4, !tbaa !48
  %i.k = load <2 x i32>, ptr %i.g, align 4, !tbaa !48
  %i.l = sitofp <2 x i32> %i.k to <2 x float>
  %i.m = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.n = fdiv <2 x float> %i.l, %i.m
  %i.o = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6xbeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !1877, !nonnull !280, !align !459
  %i.q = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4xendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !1877, !nonnull !280, !align !459
  %i.s = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf6ybeginEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !1877, !nonnull !280, !align !459
  %i.u = tail call noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf4yendEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) ; 2 uses
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !1879, !nonnull !280, !align !459
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !281
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load <2 x float>, ptr %i.x, align 8, !tbaa !299
  %i.z = fmul <2 x float> %i.y, splat (float 5.000000e-01)
  %i.aa = fdiv <2 x float> %i.z, %i.n
  %i.ab = tail call <2 x float> @llvm.ceil.v2f32(<2 x float> %i.aa)
  %i.ac = fptosi <2 x float> %i.ab to <2 x i32>
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !300 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !398 ; 2 uses
  %i.ah = sub nsw i32 %i.ae, %i.ag                ; 2 uses
  %.not = icmp eq i32 %i.ae, %i.ag
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = sext i32 %i.ah to i64
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.al = phi ptr [ %i.ak, %bb.b ], [ null, %bb.a ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.am = load ptr, ptr %0, align 8, !tbaa !1877, !nonnull !280, !align !459
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_NS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i32 noundef 0, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1880, !nonnull !280, !align !459
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext false)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit unwind label %bb.f

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !1878, !nonnull !280, !align !459
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseC2ERKS1_RKNS0_3ROIENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(32) %1, i32 noundef 0, i1 noundef zeroext true)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader unwind label %bb.g

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 60
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 68
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = sitofp <2 x i32> %i.ac to <2 x float>   ; 2 uses
  %i.bd = sext i32 %i.ah to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 7 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 92 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  br label %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit.preheader, %bb.ac
  %i.cc = load i8, ptr %i.aq, align 8, !tbaa !390, !range !279, !noundef !280
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.d, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ce = load i32, ptr %i.ar, align 4, !tbaa !391
  %i.cf = load i32, ptr %i.as, align 4, !tbaa !393
  %i.cg = icmp eq i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.e, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ch = load i32, ptr %i.at, align 8, !tbaa !392
  %i.ci = load i32, ptr %i.au, align 4, !tbaa !566
  %i.cj = icmp eq i32 %i.ch, %i.ci
  br i1 %i.cj, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit: ; preds = %bb.e
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !394
  %i.cl = load i32, ptr %i.aw, align 8, !tbaa !395
  %i.cm = icmp eq i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.ad, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8IteratorItfEC2ERS1_RKNS0_3ROIENS1_8WrapModeE.exit, %bb.d, %bb.e, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !1881, !nonnull !280, !align !454
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !48
  %i.cp = load ptr, ptr %i.ay, align 8, !tbaa !554 ; 2 uses
  %i.cq = sext i32 %i.co to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !570
  %i.ct = load ptr, ptr %i.az, align 8, !tbaa !1882, !nonnull !280, !align !454
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !570
  %i.cy = load ptr, ptr %i.ba, align 8, !tbaa !1883, !nonnull !280
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !308, !range !279, !noundef !280
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !1884, !nonnull !280
  %i.db = load i8, ptr %i.da, align 1, !tbaa !308, !range !279, !noundef !280
  %i.dc = insertelement <2 x i16> poison, i16 %i.cs, i64 0
  %i.dd = insertelement <2 x i16> %i.dc, i16 %i.cx, i64 1
  %i.de = uitofp <2 x i16> %i.dd to <2 x float>
  %i.df = fmul nnan <2 x float> %i.de, splat (float f0x37800080) ; 2 uses
  %i.dg = trunc nuw i8 %i.cz to i1
  %i.dh = insertelement <2 x i1> poison, i1 %i.dg, i64 0
  %i.di = trunc nuw i8 %i.db to i1
  %i.dj = insertelement <2 x i1> %i.dh, i1 %i.di, i64 1
  %i.dk = fsub nnan ninf <2 x float> splat (float 1.000000e+00), %i.df
  %i.dl = select <2 x i1> %i.dj, <2 x float> %i.dk, <2 x float> %i.df
  %i.dm = fmul nnan <2 x float> %i.dl, %i.m       ; 3 uses
  %i.dn = fsub <2 x float> %i.dm, %i.bc           ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = call float @llvm.floor.f32(float %i.do)
  %i.dq = fptosi float %i.dp to i32
  %spec.select.i90 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dq)
  %.1.i91 = call i32 @llvm.smin.i32(i32 %spec.select.i90, i32 %i.q)
  %i.dr = extractelement <2 x float> %i.dn, i64 1
  %i.ds = call float @llvm.floor.f32(float %i.dr)
  %i.dt = fptosi float %i.ds to i32
  %spec.select.i84 = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.dt)
  %.1.i85 = call i32 @llvm.smin.i32(i32 %spec.select.i84, i32 %i.u)
  %i.du = fadd <2 x float> %i.dm, %i.bc           ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  %i.dw = call float @llvm.ceil.f32(float %i.dv)
  %i.dx = fptosi float %i.dw to i32
  %spec.select.i87 = call i32 @llvm.smax.i32(i32 %i.o, i32 %i.dx)
  %.1.i88 = call i32 @llvm.smin.i32(i32 %spec.select.i87, i32 %i.q)
  %i.dy = extractelement <2 x float> %i.du, i64 1
  %i.dz = call float @llvm.ceil.f32(float %i.dy)
  %i.ea = fptosi float %i.dz to i32
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.ea)
  %.1.i = call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.u)
  %i.eb = add nsw i32 %.1.i88, 1
  %i.ec = add nsw i32 %.1.i, 1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7rerangeEiiiiiiNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %.1.i91, i32 noundef %i.eb, i32 noundef %.1.i85, i32 noundef %i.ec, i32 noundef 0, i32 noundef 1, i32 noundef 0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.c
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit111

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_RKNS0_3ROIENS1_8WrapModeE.exit
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit109

bb.h:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit.thread
  call void @llvm.memset.p0.i64(ptr align 16 %i.al, i8 0, i64 %i.be, i1 false)
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, %bb.h
  %.062 = phi float [ 0.000000e+00, %bb.h ], [ %i.fc, %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge ] ; 3 uses
  %i.ef = load i8, ptr %i.bf, align 8, !tbaa !390, !range !279, !noundef !280
  %i.eg = icmp eq i8 %i.ef, 0
  %.pre = load i32, ptr %i.bg, align 4, !tbaa !391 ; 2 uses
  br i1 %i.eg, label %bb.i, label %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge

._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %.pre168 = load i32, ptr %i.bi, align 8, !tbaa !392
  br label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit
  %i.eh = load i32, ptr %i.bh, align 4, !tbaa !393
  %i.ei = icmp eq i32 %.pre, %i.eh
  %.pre169 = load i32, ptr %i.bi, align 8, !tbaa !392 ; 3 uses
  %i.ej = load i32, ptr %i.bj, align 4
  %i.ek = icmp eq i32 %.pre169, %i.ej
  %or.cond = select i1 %i.ei, i1 %i.ek, i1 false
  br i1 %or.cond, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92: ; preds = %bb.i
  %i.el = load i32, ptr %i.bk, align 4, !tbaa !394
  %i.em = load i32, ptr %i.bl, align 8, !tbaa !395
  %i.en = icmp eq i32 %i.el, %i.em
  br i1 %i.en, label %bb.v, label %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread

_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread: ; preds = %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge, %bb.i, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92
  %i.eo = phi i32 [ %.pre168, %._ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread_crit_edge ], [ %.pre169, %bb.i ], [ %.pre169, %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92 ]
  %i.ep = load ptr, ptr %i.i, align 8, !tbaa !1879, !nonnull !280, !align !459
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !281 ; 2 uses
  %i.er = insertelement <2 x i32> poison, i32 %.pre, i64 0
  %i.es = insertelement <2 x i32> %i.er, i32 %i.eo, i64 1
  %i.et = sitofp <2 x i32> %i.es to <2 x float>
  %i.eu = fsub <2 x float> %i.et, %i.dm
  %i.ev = fadd <2 x float> %i.eu, splat (float 5.000000e-01) ; 2 uses
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !259
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = extractelement <2 x float> %i.ev, i64 0
  %i.fa = extractelement <2 x float> %i.ev, i64 1
  %i.fb = invoke noundef float %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.eq, float noundef %i.ez, float noundef %i.fa)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.j:                                             ; preds = %_ZNK11OpenImageIO4v3_18ImageBuf12IteratorBase4doneEv.exit92.thread
  %i.fc = fadd float %.062, %i.fb
  %i.fd = load i32, ptr %i.af, align 8, !tbaa !398 ; 3 uses
  %i.fe = load i32, ptr %i.ad, align 4, !tbaa !300 ; 2 uses
  %i.ff = icmp slt i32 %i.fd, %i.fe
  br i1 %i.ff, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j
  %i.fg = load ptr, ptr %i.bm, align 8, !tbaa !554 ; 2 uses
  %i.fh = sext i32 %i.fd to i64                   ; 3 uses
  %i.fi = sub i32 %i.fe, %i.fd                    ; 2 uses
  %wide.trip.count = zext i32 %i.fi to i64        ; 3 uses
  %min.iters.check = icmp ult i32 %i.fi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 4 uses
  %i.fj = add nsw i64 %n.vec, %i.fh
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.fg, i64 %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load = load <4 x i16>, ptr %gep, align 2, !tbaa !570
  %wide.load188 = load <4 x i16>, ptr %i.fk, align 2, !tbaa !570
  %i.fl = uitofp <4 x i16> %wide.load to <4 x float>
  %i.fm = uitofp <4 x i16> %wide.load188 to <4 x float>
  %i.fn = fmul nnan <4 x float> %i.fl, splat (float f0x37800080)
  %i.fo = fmul nnan <4 x float> %i.fm, splat (float f0x37800080)
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %wide.load189 = load <4 x float>, ptr %i.fp, align 16, !tbaa !299
  %wide.load190 = load <4 x float>, ptr %i.fq, align 16, !tbaa !299
  %i.fr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %broadcast.splat, <4 x float> %wide.load189)
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fo, <4 x float> %broadcast.splat, <4 x float> %wide.load190)
  store <4 x float> %i.fr, ptr %i.fp, align 16, !tbaa !299
  store <4 x float> %i.fs, ptr %i.fq, align 16, !tbaa !299
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !1870

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv153.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.fh, %.lr.ph ], [ %i.fj, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.j
  %i.fu = load i32, ptr %i.bg, align 4, !tbaa !391
  %i.fv = add nsw i32 %i.fu, 1                    ; 7 uses
  store i32 %i.fv, ptr %i.bg, align 4, !tbaa !391
  %i.fw = load i32, ptr %i.bn, align 8, !tbaa !557
  %i.fx = icmp slt i32 %i.fv, %i.fw
  br i1 %i.fx, label %bb.k, label %bb.r

bb.k:                                             ; preds = %._crit_edge
  %i.fy = load i8, ptr %i.bp, align 1, !tbaa !558, !range !279, !noundef !280
  %i.fz = trunc nuw i8 %i.fy to i1
  br i1 %i.fz, label %bb.l, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.k
  %.pre.i = load i32, ptr %i.bi, align 8, !tbaa !392
  %.pre170 = load i32, ptr %i.bk, align 4, !tbaa !394
  br label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.ga = load i8, ptr %i.bq, align 1, !tbaa !559, !range !279, !noundef !280
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.gc = load i64, ptr %i.bs, align 8, !tbaa !560
  %i.gd = load ptr, ptr %i.bm, align 8, !tbaa !554
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.gc
  store ptr %i.ge, ptr %i.bm, align 8, !tbaa !554
  %i.gf = load i32, ptr %i.bt, align 8, !tbaa !561
  %.not.i.i = icmp slt i32 %i.fv, %i.gf
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.n, !prof !303

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %2)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.l
  %i.gg = load i8, ptr %i.br, align 2, !tbaa !562, !range !279, !noundef !280
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gi = load i64, ptr %i.bs, align 8, !tbaa !560
  %i.gj = load ptr, ptr %i.bm, align 8, !tbaa !554
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gi
  store ptr %i.gk, ptr %i.bm, align 8, !tbaa !554
  %i.gl = load i32, ptr %i.bt, align 8, !tbaa !561
  %i.gm = icmp slt i32 %i.fv, %i.gl               ; 3 uses
  %i.gn = load i32, ptr %i.bu, align 4
  %i.go = icmp sge i32 %i.fv, %i.gn
  %not..i.i = xor i1 %i.gm, true
  %or.cond.i.i = select i1 %not..i.i, i1 true, i1 %i.go, !prof !563
  %i.gp = load ptr, ptr %i.bv, align 8
  %i.gq = icmp eq ptr %i.gp, null
  %i.gr = select i1 %or.cond.i.i, i1 true, i1 %i.gq, !prof !563
  br i1 %i.gr, label %bb.q, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv.exit.backedge, !prof !261

bb.q:                                             ; preds = %bb.p
  %i.gs = load ptr, ptr %2, align 8, !tbaa !396
  %i.gt = load i32, ptr %i.bi, align 8, !tbaa !392
  %i.gu = load i32, ptr %i.bk, align 4, !tbaa !394
  %i.gv = load i32, ptr %i.ca, align 8, !tbaa !564
end_hunk_4
