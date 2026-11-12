Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/lights?download=true
inline.NumInlined: 8460
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 107
begin_hunk_0_@_ZN4pbrt8LogFatalIJRA21_KcS3_S3_RiS3_S4_EEEvNS_8LogLevelEPS1_iS6_DpOT_:bb.a
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #36
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcS3_S3_RiS3_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA21_KcS3_S3_RiS3_S4_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !29    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16GoniometricLight8SampleLiENS_18LightSampleContextENS_6Point2IfEENS_18SampledWavelengthsEb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.47") align 8 captures(none) initializes((0, 92), (96, 113)) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, ptr nofree noundef readonly byval(%"class.pbrt::LightSampleContext") align 8 captures(none) %2, <2 x float> %3, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8 %4, i1 noundef zeroext %5) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load float, ptr %i.b, align 4, !tbaa !77
  %i.d = fmul float %i.c, 0.000000e+00
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load <2 x float>, ptr %i.e, align 8, !tbaa !77
  %i.g = fmul <2 x float> %i.f, zeroinitializer   ; 2 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = fadd float %i.d, %i.h
  %i.j = extractelement <2 x float> %i.g, i64 1
  %i.k = fadd float %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load float, ptr %i.l, align 8, !tbaa !77
  %i.n = fadd float %i.m, %i.k                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.p = load float, ptr %i.o, align 4, !tbaa !77
  %i.q = fmul float %i.p, 0.000000e+00
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load <2 x float>, ptr %i.r, align 8, !tbaa !77
  %i.t = fmul <2 x float> %i.s, zeroinitializer   ; 2 uses
  %i.u = extractelement <2 x float> %i.t, i64 0
  %i.v = fadd float %i.q, %i.u
  %i.w = extractelement <2 x float> %i.t, i64 1
  %i.x = fadd float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load float, ptr %i.y, align 8, !tbaa !77
  %i.aa = fadd float %i.z, %i.x                   ; 3 uses
  %i.ab = fcmp oeq float %i.aa, 1.000000e+00      ; 2 uses
  %i.ac = fdiv float %i.n, %i.aa
  %.sink.i = select i1 %i.ab, float %i.n, float %i.ac ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0.copyload.i = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.sroa.4.0.copyload.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4
  %i.ad = fadd float %.sroa.0.sroa.3.0.copyload.i, %.sroa.0.sroa.4.0.copyload.i
  %i.ae = fmul float %i.ad, 5.000000e-01
  %i.af = fsub float %.sink.i, %i.ae              ; 3 uses
  %i.ag = fmul float %i.af, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aj = tail call <12 x float> @llvm.masked.load.v12f32.p0(ptr nonnull align 4 %i.a, <12 x i1> <i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false, i1 false, i1 true, i1 true, i1 true, i1 true>, <12 x float> poison), !tbaa !77 ; 4 uses
  %i.ak = shufflevector <12 x float> %i.aj, <12 x float> poison, <2 x i32> <i32 0, i32 8>
  %i.al = fmul <2 x float> %i.ak, zeroinitializer
  %i.am = shufflevector <12 x float> %i.aj, <12 x float> poison, <2 x i32> <i32 1, i32 9>
  %i.an = fmul <2 x float> %i.am, zeroinitializer
  %i.ao = fadd <2 x float> %i.al, %i.an
  %i.ap = shufflevector <12 x float> %i.aj, <12 x float> poison, <2 x i32> <i32 2, i32 10>
  %i.aq = fmul <2 x float> %i.ap, zeroinitializer
  %i.ar = fadd <2 x float> %i.ao, %i.aq
  %i.as = shufflevector <12 x float> %i.aj, <12 x float> poison, <2 x i32> <i32 3, i32 11>
  %i.at = fadd <2 x float> %i.as, %i.ar           ; 2 uses
  %i.au = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x float> %i.at, %i.av
  %i.ax = insertelement <2 x i1> poison, i1 %i.ab, i64 0
  %i.ay = shufflevector <2 x i1> %i.ax, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.az = select <2 x i1> %i.ay, <2 x float> %i.at, <2 x float> %i.aw ; 3 uses
  %i.ba = load <6 x float>, ptr %2, align 8       ; 2 uses
  %i.bb = shufflevector <6 x float> %i.ba, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.bc = shufflevector <6 x float> %i.ba, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.bd = fadd <2 x float> %i.bb, %i.bc
  %i.be = fmul <2 x float> %i.bd, splat (float 5.000000e-01)
  %i.bf = fsub <2 x float> %i.az, %i.be           ; 3 uses
  %i.bg = fmul <2 x float> %i.bf, %i.bf           ; 2 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0
  %i.bi = fadd float %i.bh, %i.ag
  %i.bj = extractelement <2 x float> %i.bg, i64 1
  %i.bk = fadd float %i.bi, %i.bj                 ; 2 uses
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bk) ; 2 uses
  %i.bl = fdiv float %i.af, %sqrt.i.i             ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.bf, %i.bn           ; 5 uses
  %.sroa.0.4.vec.insert.i.i65 = insertelement <2 x float> %i.bo, float %i.bl, i64 1
  %i.bp = fneg float %i.bl                        ; 2 uses
  %i.bq = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.ah, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !77 ; 3 uses
  %i.br = load <2 x float>, ptr %i.ai, align 8, !tbaa !77
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.bt = shufflevector <5 x float> %i.bq, <5 x float> %i.bs, <2 x i32> <i32 1, i32 5>
  %i.bu = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bt, %i.bv
  %i.bx = shufflevector <5 x float> %i.bq, <5 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.by = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bz = fmul <2 x float> %i.bx, %i.by
  %i.ca = fsub <2 x float> %i.bw, %i.bz
  %i.cb = shufflevector <5 x float> %i.bq, <5 x float> %i.bs, <2 x i32> <i32 2, i32 6>
  %i.cc = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = fmul <2 x float> %i.cb, %i.cc
  %i.ce = fsub <2 x float> %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !77
  %i.cj = fmul float %i.ci, %i.bp
  %i.ck = extractelement <2 x float> %i.bo, i64 0
  %i.cl = fmul float %i.ck, %i.cg
  %i.cm = fsub float %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.co = load float, ptr %i.cn, align 4, !tbaa !77
  %i.cp = extractelement <2 x float> %i.bo, i64 1 ; 2 uses
  %i.cq = fmul float %i.cp, %i.co
  %i.cr = fsub float %i.cm, %i.cq
  %i.cs = tail call <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float> %i.ce, float %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cu = load <1 x float>, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !202
  %i.cx = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.cw, ptr noundef nonnull align 4 dereferenceable(32) %4) ; 2 uses
  %i.cy = extractvalue { <2 x float>, <2 x float> } %i.cx, 0
  %i.cz = extractvalue { <2 x float>, <2 x float> } %i.cx, 1
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 172
  %i.dc = load <2 x i32>, ptr %i.db, align 4, !tbaa !78
  %i.dd = sitofp <2 x i32> %i.dc to <2 x float>
  %i.de = fmul <2 x float> %i.cs, %i.dd
  %i.df = fptosi <2 x float> %i.de to <2 x i32>
  %.sroa.0.0.insert.insert.i.i = bitcast <2 x i32> %i.df to i64
  %i.dg = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.da, i64 %.sroa.0.0.insert.insert.i.i, i32 noundef 0, i64 4294967297)
  %i.dh = shufflevector <1 x float> %i.cu, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.di = fmul <2 x float> %i.dh, %i.cy
  %i.dj = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dl = fmul <2 x float> %i.dk, %i.di
  %i.dm = insertelement <2 x float> poison, float %i.bk, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = fdiv <2 x float> %i.dl, %i.dn
  %i.dp = fmul <2 x float> %i.dh, %i.cz
  %i.dq = fmul <2 x float> %i.dk, %i.dp
  %i.dr = fdiv <2 x float> %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.07.4.vec.insert.i.i = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x float> poison, float %.sink.i, i64 0
  %.sroa.05.4.vec.insert.i.i = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.0.4.vec.insert.i.i100 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.11.32..sroa_idx, i8 0, i64 36, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.du, align 8, !tbaa !177
  store <2 x float> %i.do, ptr %0, align 8
  %.sroa.0102.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.dr, ptr %.sroa.0102.sroa.4.0..sroa_idx, align 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i65, ptr %.sroa.4103.0..sroa_idx, align 8
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.cp, ptr %.sroa.5104.0..sroa_idx, align 8
  %.sroa.6105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %.sroa.6105.0..sroa_idx, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.07.4.vec.insert.i.i, ptr %i.dv, align 8
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.sroa.05.4.vec.insert.i.i, ptr %.sroa.9.32..sroa_idx, align 8
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i100, ptr %.sroa.10.32..sroa_idx, align 8
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.ds, ptr %.sroa.13.32..sroa_idx, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %i.dw, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZNK4pbrt16GoniometricLight6PDF_LiENS_18LightSampleContextENS_7Vector3IfEEb(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readnone byval(%"class.pbrt::LightSampleContext") align 8 captures(none) %1, <2 x float> %2, float %3, i1 noundef zeroext %4) local_unnamed_addr #17 align 2 {
bb.a:
  ret float 0.000000e+00
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt16GoniometricLight3PhiENS_18SampledWavelengthsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef byval(%"class.pbrt::SampledWavelengths") align 8 %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 3 uses
  %.sroa.0.0.copyload.i90 = load i64, ptr %i.c, align 4 ; 3 uses
  %.sroa.37.0.extract.shift91 = lshr i64 %.sroa.0.0.copyload.i90, 32
  %.sroa.37.0.extract.trunc92 = trunc nuw i64 %.sroa.37.0.extract.shift91 to i32
  %i.d = icmp sgt i32 %.sroa.37.0.extract.trunc92, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge95

.preheader.lr.ph:                                 ; preds = %bb.a
  %2 = trunc i64 %.sroa.0.0.copyload.i90 to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i101 = phi i64 [ %.sroa.0.0.copyload.i90, %.preheader.lr.ph ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 4 uses
  %3 = phi i32 [ %2, %.preheader.lr.ph ], [ %.pre-phi, %._crit_edge ]
  %.094 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.01493 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ag, %._crit_edge ] ; 4 uses
  %.sroa.02.0.extract.trunc86 = trunc i64 %.sroa.0.0.copyload.i101 to i32 ; 2 uses
  %i.j = icmp sgt i32 %.sroa.02.0.extract.trunc86, 0
  br i1 %i.j, label %.preheader.preheader.i, label %._crit_edge

._crit_edge95:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load <1 x float>, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202
  %i.o = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 4 dereferenceable(32) %1) ; 2 uses
  %i.p = extractvalue { <2 x float>, <2 x float> } %i.o, 0
  %i.q = extractvalue { <2 x float>, <2 x float> } %i.o, 1
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.c, align 4 ; 2 uses
  %.sroa.01.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i43 to i32
  %.sroa.3.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i43, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.r = mul nsw i32 %.sroa.3.0.extract.trunc, %.sroa.01.0.extract.trunc
  %i.s = sitofp i32 %i.r to float
  %i.t = shufflevector <1 x float> %i.l, <1 x float> poison, <4 x i32> zeroinitializer
  %i.u = shufflevector <2 x float> %i.p, <2 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.v = fmul <4 x float> %i.t, %i.u
  %i.w = fmul <4 x float> %i.v, splat (float 4.000000e+00)
  %i.x = fmul <4 x float> %i.w, splat (float f0x40490FDB)
  %i.y = insertelement <4 x float> poison, float %.0.lcssa, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aa = fmul <4 x float> %i.z, %i.x
  %i.ab = insertelement <4 x float> poison, float %i.s, i64 0
  %i.ac = shufflevector <4 x float> %i.ab, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ad = fdiv <4 x float> %i.aa, %i.ac           ; 2 uses
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.af = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i49 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ae, 0
  %.fca.1.insert.i50 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i49, <2 x float> %i.af, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i50

._crit_edge.loopexit:                             ; preds = %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  %.pre = trunc i64 %.sroa.0.0.copyload.i104 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre-phi = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %.sroa.02.0.extract.trunc86, %.preheader ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i104, %._crit_edge.loopexit ], [ %.sroa.0.0.copyload.i101, %.preheader ] ; 2 uses
  %.1.lcssa = phi float [ %i.ck, %._crit_edge.loopexit ], [ %.094, %.preheader ] ; 2 uses
  %i.ag = add nuw nsw i32 %.01493, 1              ; 2 uses
  %.sroa.37.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.37.0.extract.trunc = trunc nuw i64 %.sroa.37.0.extract.shift to i32
  %i.ah = icmp slt i32 %i.ag, %.sroa.37.0.extract.trunc
  br i1 %i.ah, label %.preheader, label %._crit_edge95, !llvm.loop !517

.preheader.preheader.i:                           ; preds = %.preheader, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit
  %.sroa.0.0.copyload.i103 = phi i64 [ %.sroa.0.0.copyload.i104, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ %.sroa.0.0.copyload.i101, %.preheader ] ; 2 uses
  %.sroa.0.0.copyload.i5199 = phi i64 [ %.sroa.0.0.copyload.i51, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ %.sroa.0.0.copyload.i101, %.preheader ] ; 3 uses
  %i.ai = phi i32 [ %.sroa.02.0.extract.trunc, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ %3, %.preheader ] ; 3 uses
  %.188 = phi float [ %i.ck, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ %.094, %.preheader ]
  %.01587 = phi i32 [ %i.cl, %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit ], [ 0, %.preheader ] ; 4 uses
  %.sroa.9.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i5199, 32
  %.sroa.9.0.extract.trunc.i = trunc nuw i64 %.sroa.9.0.extract.shift.i to i32 ; 2 uses
  %i.aj = icmp slt i32 %.01493, %.sroa.9.0.extract.trunc.i
  %i.ak = add nsw i32 %.sroa.9.0.extract.trunc.i, -1
  %..i.1.i = call i32 @llvm.smin.i32(i32 %.01493, i32 %i.ak)
  %.sroa.14.2 = select i1 %i.aj, i32 %.01493, i32 %..i.1.i ; 3 uses
  %i.al = load i32, ptr %i.b, align 8, !tbaa !188
  switch i32 %i.al, label %bb.j [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %.preheader.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %i.am = load i64, ptr %i.e, align 8, !tbaa !173
  %i.an = trunc i64 %i.am to i32
  %i.ao = mul nsw i32 %i.ai, %.sroa.14.2
  %i.ap = add nsw i32 %i.ao, %.01587
  %i.aq = mul nsw i32 %i.ap, %i.an
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !118
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ar  ; 3 uses
  %i.au = load i64, ptr %i.h, align 8, !tbaa !115 ; 2 uses
  %i.av = and i64 %i.au, 144115188075855871
  %i.aw = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.ax = lshr i64 %i.au, 57
  %i.ay = trunc nuw nsw i64 %i.ax to i32
  switch i32 %i.ay, label %bb.d [
    i32 1, label %.lr.ph.i.i.i.i.i.i
    i32 2, label %bb.c
  ]

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b
  %i.az = load i8, ptr %i.at, align 1, !tbaa !28
  %i.ba = uitofp i8 %i.az to float
  %i.bb = fdiv float %i.ba, 2.550000e+02
  store float %i.bb, ptr %i.a, align 4, !tbaa !77
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.c:                                             ; preds = %bb.b
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.aw, ptr %i.at, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.aw, ptr %i.at, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.bc = load float, ptr %i.a, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.sroa.0.0.copyload.i51.pre = load i64, ptr %i.c, align 4 ; 2 uses
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.e:                                             ; preds = %.preheader.preheader.i
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !173
  %i.be = trunc i64 %i.bd to i32
  %i.bf = mul nsw i32 %i.ai, %.sroa.14.2
  %i.bg = add nsw i32 %i.bf, %.01587
  %i.bh = mul nsw i32 %i.bg, %i.be
  %i.bi = sext i32 %i.bh to i64
  %i.bj = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.bk = getelementptr [2 x i8], ptr %i.bj, i64 %i.bi
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !191 ; 2 uses
  %i.bm = zext i16 %i.bl to i32
  %i.bn = shl nuw nsw i32 %i.bm, 13               ; 4 uses
  %i.bo = and i32 %i.bn, 260046848                ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 260046848
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = or i32 %i.bn, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.br = and i32 %i.bn, 268427264
  %i.bs = add nuw nsw i32 %i.br, 939524096
  %i.bt = icmp eq i32 %i.bo, 0
  br i1 %i.bt, label %bb.h, label %_ZNK4pbrt4HalfcvfEv.exit.i

bb.h:                                             ; preds = %bb.g
  %i.bu = or i32 %i.bn, 947912704
  %i.bv = bitcast i32 %i.bu to float
  %i.bw = fadd float %i.bv, f0xB8800000
  %i.bx = bitcast float %i.bw to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit.i

_ZNK4pbrt4HalfcvfEv.exit.i:                       ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i32 [ %i.bq, %bb.f ], [ %i.bx, %bb.h ], [ %i.bs, %bb.g ]
  %.signext.i.i = sext i16 %i.bl to i32
  %i.by = and i32 %.signext.i.i, -2147483648
  %i.bz = or i32 %.sroa.0.0.i.i, %i.by
  %i.ca = bitcast i32 %i.bz to float
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.i:                                             ; preds = %.preheader.preheader.i
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !173
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = mul nsw i32 %i.ai, %.sroa.14.2
  %i.ce = add nsw i32 %i.cd, %.01587
  %i.cf = mul nsw i32 %i.ce, %i.cc
  %i.cg = sext i32 %i.cf to i64
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !71
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %i.cg
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !77
  br label %_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit

bb.j:                                             ; preds = %.preheader.preheader.i
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.131, i32 noundef 273, ptr noundef nonnull @.str.132) #36
  unreachable

_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE.exit: ; preds = %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i, %_ZNK4pbrt4HalfcvfEv.exit.i, %bb.i
  %.sroa.0.0.copyload.i104 = phi i64 [ %.sroa.0.0.copyload.i51.pre, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %.sroa.0.0.copyload.i103, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %.sroa.0.0.copyload.i103, %bb.i ] ; 3 uses
  %.sroa.0.0.copyload.i51 = phi i64 [ %.sroa.0.0.copyload.i51.pre, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %.sroa.0.0.copyload.i5199, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %.sroa.0.0.copyload.i5199, %bb.i ] ; 2 uses
  %.0.i = phi float [ %i.bc, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit.i ], [ %i.ca, %_ZNK4pbrt4HalfcvfEv.exit.i ], [ %i.cj, %bb.i ]
  %i.ck = fadd float %.188, %.0.i                 ; 2 uses
  %i.cl = add nuw nsw i32 %.01587, 1              ; 2 uses
  %.sroa.02.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i51 to i32 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %.sroa.02.0.extract.trunc
  br i1 %i.cm, label %.preheader.preheader.i, label %._crit_edge.loopexit, !llvm.loop !518
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16GoniometricLight6BoundsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional.21") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 172 ; 2 uses
  %.sroa.0.0.copyload.i76 = load i64, ptr %i.c, align 4 ; 4 uses
  %.sroa.322.0.extract.shift77 = lshr i64 %.sroa.0.0.copyload.i76, 32
  %.sroa.322.0.extract.trunc78 = trunc nuw i64 %.sroa.322.0.extract.shift77 to i32 ; 2 uses
  %i.d = icmp sgt i32 %.sroa.322.0.extract.trunc78, 0
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge81

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.e = trunc i64 %.sroa.0.0.copyload.i76 to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 232
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i90 = phi i64 [ %.sroa.0.0.copyload.i76, %.preheader.lr.ph ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 4 uses
  %i.k = phi i32 [ %i.e, %.preheader.lr.ph ], [ %.pre-phi, %._crit_edge ]
  %.080 = phi float [ 0.000000e+00, %.preheader.lr.ph ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.02979 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.dk, %._crit_edge ] ; 4 uses
  %.sroa.017.0.extract.trunc72 = trunc i64 %.sroa.0.0.copyload.i90 to i32 ; 2 uses
  %i.l = icmp sgt i32 %.sroa.017.0.extract.trunc72, 0
  br i1 %i.l, label %.preheader.preheader.i, label %._crit_edge

._crit_edge81:                                    ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %.1.lcssa, %._crit_edge ]
  %.sroa.0.0.copyload.i.lcssa = phi i64 [ %.sroa.0.0.copyload.i76, %bb.a ], [ %.sroa.0.0.copyload.i, %._crit_edge ]
  %.sroa.322.0.extract.trunc.lcssa = phi i32 [ %.sroa.322.0.extract.trunc78, %bb.a ], [ %.sroa.322.0.extract.trunc, %._crit_edge ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.n = load float, ptr %i.m, align 8, !tbaa !203
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !202  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !71   ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.t = load i64, ptr %i.s, align 8, !tbaa !72   ; 2 uses
  %.idx.i = shl i64 %i.t, 2                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i
  %or.cond.i.i.i = icmp ult i64 %i.t, 2
  br i1 %or.cond.i.i.i, label %_ZNK4pbrt22DenselySampledSpectrum8MaxValueEv.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge81
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %.pre.i.i.i = load float, ptr %i.r, align 4, !tbaa !77 ; 2 uses
  %i.w = add i64 %.idx.i, -8                      ; 2 uses
  %i.x = lshr exact i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1
  %xtraiter = and i64 %i.y, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i, %.lr.ph.i.i.i.prol
  %i.z = phi float [ %i.ae, %.lr.ph.i.i.i.prol ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.aa = phi ptr [ %i.ad, %.lr.ph.i.i.i.prol ], [ %i.v, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i.prol = phi ptr [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %i.r, %.lr.ph.preheader.i.i.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.preheader.i.i.i ]
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !77 ; 2 uses
  %i.ac = fcmp olt float %i.z, %i.ab              ; 2 uses
  %spec.select.i.i.i.prol = select i1 %i.ac, ptr %i.aa, ptr %.018.i.i.i.prol ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ae = select i1 %i.ac, float %i.ab, float %i.z ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !519

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.preheader.i.i.i
  %spec.select.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.unr = phi float [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ], [ %i.ae, %.lr.ph.i.i.i.prol ]
  %.unr106 = phi ptr [ %i.v, %.lr.ph.preheader.i.i.i ], [ %i.ad, %.lr.ph.i.i.i.prol ]
  %.018.i.i.i.unr = phi ptr [ %i.r, %.lr.ph.preheader.i.i.i ], [ %spec.select.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.af = icmp ult i64 %i.w, 28
  br i1 %i.af, label %_ZNK4pbrt22DenselySampledSpectrum8MaxValueEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.ag = phi float [ %i.bn, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.ah = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.unr106, %.lr.ph.i.i.i.prol.loopexit ] ; 10 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i.7, %.lr.ph.i.i.i ], [ %.018.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !77 ; 2 uses
  %i.aj = fcmp olt float %i.ag, %i.ai             ; 2 uses
  %spec.select.i.i.i = select i1 %i.aj, ptr %i.ah, ptr %.018.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.al = select i1 %i.aj, float %i.ai, float %i.ag ; 2 uses
  %i.am = load float, ptr %i.ak, align 4, !tbaa !77 ; 2 uses
  %i.an = fcmp olt float %i.al, %i.am             ; 2 uses
  %spec.select.i.i.i.1 = select i1 %i.an, ptr %i.ak, ptr %spec.select.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ap = select i1 %i.an, float %i.am, float %i.al ; 2 uses
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !77 ; 2 uses
  %i.ar = fcmp olt float %i.ap, %i.aq             ; 2 uses
  %spec.select.i.i.i.2 = select i1 %i.ar, ptr %i.ao, ptr %spec.select.i.i.i.1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 2 uses
  %i.at = select i1 %i.ar, float %i.aq, float %i.ap ; 2 uses
  %i.au = load float, ptr %i.as, align 4, !tbaa !77 ; 2 uses
  %i.av = fcmp olt float %i.at, %i.au             ; 2 uses
  %spec.select.i.i.i.3 = select i1 %i.av, ptr %i.as, ptr %spec.select.i.i.i.2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ax = select i1 %i.av, float %i.au, float %i.at ; 2 uses
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !77 ; 2 uses
  %i.az = fcmp olt float %i.ax, %i.ay             ; 2 uses
  %spec.select.i.i.i.4 = select i1 %i.az, ptr %i.aw, ptr %spec.select.i.i.i.3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 20 ; 2 uses
  %i.bb = select i1 %i.az, float %i.ay, float %i.ax ; 2 uses
  %i.bc = load float, ptr %i.ba, align 4, !tbaa !77 ; 2 uses
  %i.bd = fcmp olt float %i.bb, %i.bc             ; 2 uses
  %spec.select.i.i.i.5 = select i1 %i.bd, ptr %i.ba, ptr %spec.select.i.i.i.4
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.bf = select i1 %i.bd, float %i.bc, float %i.bb ; 2 uses
  %i.bg = load float, ptr %i.be, align 4, !tbaa !77 ; 2 uses
  %i.bh = fcmp olt float %i.bf, %i.bg             ; 2 uses
  %spec.select.i.i.i.6 = select i1 %i.bh, ptr %i.be, ptr %spec.select.i.i.i.5
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 28 ; 2 uses
  %i.bj = select i1 %i.bh, float %i.bg, float %i.bf ; 2 uses
  %i.bk = load float, ptr %i.bi, align 4, !tbaa !77 ; 2 uses
  %i.bl = fcmp olt float %i.bj, %i.bk             ; 2 uses
  %spec.select.i.i.i.7 = select i1 %i.bl, ptr %i.bi, ptr %spec.select.i.i.i.6 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.bm, %i.u
  %i.bn = select i1 %i.bl, float %i.bk, float %i.bj
  br i1 %.not.i.i.i.7, label %_ZNK4pbrt22DenselySampledSpectrum8MaxValueEv.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNK4pbrt22DenselySampledSpectrum8MaxValueEv.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %._crit_edge81
  %.011.i.i.i = phi ptr [ %i.r, %._crit_edge81 ], [ %spec.select.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %spec.select.i.i.i.7, %.lr.ph.i.i.i ]
  %i.bo = load float, ptr %.011.i.i.i, align 4, !tbaa !77
  %i.bp = fmul float %i.n, %i.bo
  %i.bq = fmul float %i.bp, 4.000000e+00
  %i.br = fmul float %i.bq, f0x40490FDB
  %i.bs = fmul float %.0.lcssa, %i.br
  %.sroa.016.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i.lcssa to i32
  %i.bt = mul nsw i32 %.sroa.322.0.extract.trunc.lcssa, %.sroa.016.0.extract.trunc
  %i.bu = sitofp i32 %i.bt to float
  %i.bv = fdiv float %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bz = load float, ptr %i.by, align 8, !tbaa !77
  %i.ca = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.bx, <5 x i1> <i1 true, i1 true, i1 true, i1 false, i1 true>, <5 x float> poison), !tbaa !77
  %i.cb = shufflevector <5 x float> %i.ca, <5 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cc = fmul <4 x float> %i.cb, zeroinitializer ; 4 uses
  %shift = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.cc, %shift
  %shift101 = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop102 = fadd <4 x float> %foldExtExtBinop, %shift101
  %i.cd = extractelement <4 x float> %foldExtExtBinop102, i64 0
  %i.ce = fadd float %i.bz, %i.cd                 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cg = load <2 x float>, ptr %i.cf, align 8, !tbaa !77
  %i.ch = fmul <2 x float> %i.cg, zeroinitializer ; 2 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  %i.cj = extractelement <4 x float> %i.cc, i64 3
  %i.ck = fadd float %i.cj, %i.ci
  %i.cl = extractelement <2 x float> %i.ch, i64 1
  %i.cm = fadd float %i.ck, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.co = load float, ptr %i.cn, align 8, !tbaa !77
  %i.cp = fadd float %i.co, %i.cm                 ; 3 uses
  %i.cq = fcmp oeq float %i.cp, 1.000000e+00      ; 2 uses
  %i.cr = fdiv float %i.ce, %i.cp
  %i.cs = load <8 x float>, ptr %i.bw, align 4, !tbaa !77 ; 4 uses
  %i.ct = shufflevector <8 x float> %i.cs, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cu = fmul <2 x float> %i.ct, zeroinitializer
  %i.cv = shufflevector <8 x float> %i.cs, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.cw = fmul <2 x float> %i.cv, zeroinitializer
  %i.cx = fadd <2 x float> %i.cu, %i.cw
  %i.cy = shufflevector <8 x float> %i.cs, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.cz = fmul <2 x float> %i.cy, zeroinitializer
  %i.da = fadd <2 x float> %i.cx, %i.cz
  %i.db = shufflevector <8 x float> %i.cs, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.dc = fadd <2 x float> %i.db, %i.da           ; 2 uses
  %i.dd = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fdiv <2 x float> %i.dc, %i.de
  %i.dg = insertelement <2 x i1> poison, i1 %i.cq, i64 0
  %i.dh = shufflevector <2 x i1> %i.dg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.di = select <2 x i1> %i.dh, <2 x float> %i.dc, <2 x float> %i.df ; 2 uses
  %.sroa.495.0.i = select i1 %i.cq, float %i.ce, float %i.cr ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i8 1, ptr %i.dj, align 4, !tbaa !98
  store <2 x float> %i.di, ptr %0, align 4
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.495.0.i, ptr %.sroa.440.0..sroa_idx, align 4
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %i.di, ptr %.sroa.541.0..sroa_idx, align 4
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.495.0.i, ptr %.sroa.642.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bv, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> zeroinitializer, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store <2 x float> <float 1.000000e+00, float -1.000000e+00>, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float f0xB33BBD2E, ptr %.sroa.11.0..sroa_idx, align 4
end_hunk_0
begin_hunk_1_@_ZNK4pbrt16GoniometricLight6PDF_LeERKNS_3RayEPfS4_:bb.a
  %i.bs = getelementptr inbounds nuw [80 x i8], ptr %i.ay, i64 %i.br
  %i.bt = shl i64 %spec.select11.i.i, 32
  %i.bu = ashr exact i64 %i.bt, 32
  %i.bv = select i1 %i.bf, i64 0, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !77
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.cb = load float, ptr %i.ca, align 8, !tbaa !140
  %i.cc = fdiv float %i.bz, %i.cb
  %i.cd = fdiv float %i.cc, f0x41490FDB
  store float %i.cd, ptr %3, align 4, !tbaa !77
  ret void
}

declare <2 x float> @_ZN4pbrt23EqualAreaSphereToSquareENS_7Vector3IfEE(<2 x float>, float) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt16GoniometricLight8ToStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(448) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !24, !alias.scope !531
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !27, !alias.scope !531
  store i8 0, ptr %i.c, align 8, !tbaa !28, !alias.scope !531
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_9LightTypeEJRKNS_15MediumInterfaceERKNS_9TransformEEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(128) %i.b)
          to label %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !29, !alias.scope !531 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !28, !alias.scope !531
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4 ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit:  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !24, !alias.scope !532
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !27, !alias.scope !532
  store i8 0, ptr %i.l, align 8, !tbaa !28, !alias.scope !532
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKPKNS_22DenselySampledSpectrumERKfEEEvPS7_PKcOT_DpOT0_(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.49, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %0, align 8, !tbaa !29, !alias.scope !532 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.l
  br i1 %i.p, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.q = load i64, ptr %i.l, align 8, !tbaa !28, !alias.scope !532
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #35
  br label %.body

_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit: ; preds = %_ZNK4pbrt9LightBase12BaseToStringB5cxx11Ev.exit
  %i.s = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.c
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit
  %i.u = load i64, ptr %i.c, align 8, !tbaa !28
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4pbrt12StringPrintfIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKPKNS_22DenselySampledSpectrumERKfEEES6_PKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.w = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.c
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %.body
  %i.y = load i64, ptr %i.c, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.z) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt16GoniometricLight6CreateERKNS_9TransformENS_6MediumERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 4 dereferenceable(128) %0, ptr nofree noundef align 8 dead_on_return dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef %3, ptr noundef %4, ptr %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"class.pstd::optional.56", align 4 ; 5 uses
  %7 = alloca %"class.pbrt::SquareMatrix.10", align 4 ; 9 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.pstd::pmr::polymorphic_allocator", align 8 ; 3 uses
  %9 = alloca %"class.pbrt::Spectrum", align 8    ; 6 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %i.c = alloca float, align 4                    ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.pbrt::Image", align 8      ; 24 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"struct.pbrt::ImageAndMetadata", align 8 ; 19 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %21 = alloca %"class.pbrt::Point2.31", align 8  ; 4 uses
  %22 = alloca %"class.pbrt::Point2.31", align 8  ; 4 uses
  %23 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 10 uses
  %24 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %25 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 10 uses
  %26 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %27 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %28 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 12 uses
  %29 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %30 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 10 uses
  %31 = alloca %"class.pbrt::Spectrum", align 8   ; 2 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.pbrt::Transform", align 4  ; 7 uses
  %34 = alloca %"class.pbrt::Transform", align 4  ; 5 uses
  store ptr %5, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.d, ptr %10, align 8, !tbaa !24
  store i8 73, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.f, align 1, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = or i64 %i.h, 288230376151711744
  store i64 %i.i, ptr %11, align 8, !tbaa !67
  invoke void @_ZNK4pbrt19ParameterDictionary14GetOneSpectrumERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8SpectrumENS_12SpectrumTypeEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Spectrum") align 8 %9, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11, i32 noundef 0, ptr %5)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.j = load ptr, ptr %10, align 8, !tbaa !29    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.l = load i64, ptr %i.d, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #37
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.n, ptr %12, align 8, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.n, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, i64 5, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 5, ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 21
  store i8 0, ptr %i.p, align 1, !tbaa !28
  %i.q = invoke noundef float @_ZNK4pbrt19ParameterDictionary11GetOneFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %12, float noundef 1.000000e+00)
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load ptr, ptr %12, align 8, !tbaa !29    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.n
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !28
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  store float %i.q, ptr %i.c, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #37
  store i32 0, ptr %13, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 5 uses
  store i32 0, ptr %i.v, align 4, !tbaa !161
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.w, align 8, !tbaa !162
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.y = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #37
  %i.z = ptrtoint ptr %i.y to i64
  store i64 %i.z, ptr %i.x, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  %i.ac = ptrtoint ptr %5 to i64                  ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 2 uses
  store i64 %i.ac, ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store ptr %i.ai, ptr %16, align 8, !tbaa !24
  store i64 7308604897068083558, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 8, ptr %i.aj, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i8 0, ptr %i.ak, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #37
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  store ptr %i.al, ptr %17, align 8, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !27
  store i8 0, ptr %i.al, align 8, !tbaa !28
  invoke void @_ZNK4pbrt19ParameterDictionary12GetOneStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(108) %2, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  invoke void @_ZN4pbrt15ResolveFilenameENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nofree noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157: ; preds = %bb.d
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !28
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i157
  %i.as = load ptr, ptr %17, align 8, !tbaa !29   ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.al
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159
  %i.au = load i64, ptr %i.al, align 8, !tbaa !28
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit159, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.aw = load ptr, ptr %16, align 8, !tbaa !29   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ai
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162
  %i.ay = load i64, ptr %i.ai, align 8, !tbaa !28
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit162, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !27 ; 5 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  invoke void @_ZN4pbrt7WarningEPKNS_7FileLocEPKc(ptr noundef %4, ptr noundef nonnull @.str.50)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %10, align 8, !tbaa !29   ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.d
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166: ; preds = %bb.f
  %i.bg = load i64, ptr %i.d, align 8, !tbaa !28
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit168: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  br label %bb.cb

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load ptr, ptr %12, align 8, !tbaa !29   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.n
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169: ; preds = %bb.g
  %i.bl = load i64, ptr %i.n, align 8, !tbaa !28
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit171: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #37
  br label %bb.ca

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

bb.i:                                             ; preds = %bb.c
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %15, align 8, !tbaa !29   ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172: ; preds = %bb.i
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !28
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172, %bb.h
  %.pn108 = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172 ], [ %i.bo, %bb.i ]
  %i.bu = load ptr, ptr %17, align 8, !tbaa !29   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.al
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
  %i.bw = load i64, ptr %i.al, align 8, !tbaa !28
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #37
  %i.by = load ptr, ptr %16, align 8, !tbaa !29   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.ai
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %i.ca = load i64, ptr %i.ai, align 8, !tbaa !28
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit165
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #37
  %i.cc = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 8 uses
  store ptr %i.cc, ptr %19, align 8, !tbaa !24
  %i.cd = load ptr, ptr %14, align 8, !tbaa !29   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 %i.bb, ptr %i.b, align 8, !tbaa !30
  %i.ce = icmp ugt i64 %i.bb, 15
  br i1 %i.ce, label %.noexc.i182, label %._crit_edge.i.i181

.noexc.i182:                                      ; preds = %bb.j
  %i.cf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %._crit_edge.i.i181.thread unwind label %bb.p ; 2 uses

._crit_edge.i.i181.thread:                        ; preds = %.noexc.i182
  store ptr %i.cf, ptr %19, align 8, !tbaa !29
  %i.cg = load i64, ptr %i.b, align 8, !tbaa !30
  store i64 %i.cg, ptr %i.cc, align 8, !tbaa !28
  br label %bb.l

._crit_edge.i.i181:                               ; preds = %bb.j
  %cond = icmp eq i64 %i.bb, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i181
  %i.ch = load i8, ptr %i.cd, align 1, !tbaa !28
  store i8 %i.ch, ptr %i.cc, align 8, !tbaa !28
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i181.thread, %._crit_edge.i.i181
  %i.ci = phi ptr [ %i.cf, %._crit_edge.i.i181.thread ], [ %i.cc, %._crit_edge.i.i181 ]
end_hunk_1
begin_hunk_2_@_ZN4pbrt16GoniometricLight6CreateERKNS_9TransformENS_6MediumERKNS_19ParameterDictionaryEPKNS_13RGBColorSpaceEPKNS_7FileLocEN4pstd3pmr21polymorphic_allocatorISt4byteEE:._crit_edge.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %bb.y
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !28
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  %i.dv = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !29 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %i.dy = icmp eq ptr %i.dw, %i.dx
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.dz = load i64, ptr %i.dx, align 8, !tbaa !28
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.1
  %i.eb = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.1
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !28
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205.2
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  %i.eg = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr %i.eg, ptr %26, align 8, !tbaa !24
  store i8 89, ptr %i.eg, align 8, !tbaa !28
  %i.eh = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 1, ptr %i.eh, align 8, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %26, i64 17
  store i8 0, ptr %i.ei, align 1, !tbaa !28
  invoke void @_ZNK4pbrt5Image14GetChannelDescEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelDesc") align 8 %25, ptr noundef nonnull align 8 dereferenceable(152) %18, ptr nonnull %26, i64 1)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.2
  %i.ej = load ptr, ptr %26, align 8, !tbaa !29   ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %i.ek
  br i1 %i.el, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212: ; preds = %bb.z
  %i.em = load i64, ptr %i.ek, align 8, !tbaa !28
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.en) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  %i.eo = getelementptr inbounds nuw i8, ptr %23, i64 40 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !145
  %.not = icmp eq i64 %i.ep, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %25, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !145
  %.not324 = icmp eq i64 %i.er, 0                 ; 2 uses
  br i1 %.not, label %bb.au, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  br i1 %.not324, label %._crit_edge.i.i225, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4pbrt9ErrorExitIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpOT_(ptr noundef nonnull @.str.53, ptr noundef nonnull align 8 dereferenceable(32) %14) #36
          to label %bb.ac unwind label %bb.aq

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %._crit_edge.i.i193
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = getelementptr inbounds nuw i8, ptr %24, i64 64
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !29 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215: ; preds = %bb.ad
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !28
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215
  %i.ez = getelementptr inbounds nuw i8, ptr %24, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !29 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %24, i64 48 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217
  %i.fd = load i64, ptr %i.fb, align 8, !tbaa !28
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215.1
  %i.ff = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.1
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !28
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit217.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i215.2
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  br label %bb.bg

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207.2
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %26, align 8, !tbaa !29   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %bb.ae
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !28
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  br label %bb.bf

._crit_edge.i.i225:                               ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37
  %i.fq = load i32, ptr %18, align 8, !tbaa !188
  %.sroa.0.0.copyload.i224 = load i64, ptr %i.db, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37
  %i.fr = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  store ptr %i.fr, ptr %28, align 8, !tbaa !24
  store i8 89, ptr %i.fr, align 8, !tbaa !28
  %i.fs = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 1, ptr %i.fs, align 8, !tbaa !27
  %i.ft = getelementptr inbounds nuw i8, ptr %28, i64 17
  store i8 0, ptr %i.ft, align 1, !tbaa !28
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  %i.fu = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !115, !noalias !541
  store i64 %i.fv, ptr %29, align 8, !tbaa !115, !alias.scope !541
  invoke void @_ZN4pbrt5ImageC1ENS_11PixelFormatENS_6Point2IiEEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS_13ColorEncodingENS4_3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(152) %27, i32 noundef %i.fq, i64 %.sroa.0.0.copyload.i224, ptr nonnull %28, i64 1, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %29, i64 %i.ac)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %13, ptr noundef nonnull align 8 dereferenceable(152) %27, i64 12, i1 false)
  %i.fw = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.fx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.fw)
          to label %.noexc229 unwind label %bb.ah ; 0 uses

.noexc229:                                        ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.fz = getelementptr inbounds nuw i8, ptr %27, i64 48
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !115
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !115
  %i.gb = getelementptr inbounds nuw i8, ptr %27, i64 56
  %i.gc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.gb)
          to label %.noexc230 unwind label %bb.ah ; 0 uses

.noexc230:                                        ; preds = %.noexc229
  %i.gd = getelementptr inbounds nuw i8, ptr %27, i64 88
  %i.ge = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEEaSEOS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.gd)
          to label %.noexc231 unwind label %bb.ah ; 0 uses

.noexc231:                                        ; preds = %.noexc230
  %i.gf = getelementptr inbounds nuw i8, ptr %27, i64 120
  %i.gg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.gf)
          to label %_ZN4pbrt5ImageaSEOS0_.exit unwind label %bb.ah ; 0 uses

_ZN4pbrt5ImageaSEOS0_.exit:                       ; preds = %.noexc231
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %27) #37
  %i.gh = load ptr, ptr %28, align 8, !tbaa !29   ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit
  %i.gk = load i64, ptr %i.gi, align 8, !tbaa !28
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gl) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %_ZN4pbrt5ImageaSEOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  %.sroa.0.0.copyload.i236341 = load i64, ptr %i.v, align 4 ; 2 uses
  %.sroa.329.0.extract.shift342 = lshr i64 %.sroa.0.0.copyload.i236341, 32
  %.sroa.329.0.extract.trunc343 = trunc nuw i64 %.sroa.329.0.extract.shift342 to i32
  %i.gm = icmp sgt i32 %.sroa.329.0.extract.trunc343, 0
  br i1 %i.gm, label %.preheader328.lr.ph, label %.loopexit329

.preheader328.lr.ph:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  %i.gn = getelementptr inbounds nuw i8, ptr %30, i64 40 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.gq = getelementptr inbounds nuw i8, ptr %30, i64 32
  br label %.preheader328

.preheader328:                                    ; preds = %.preheader328.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i236370 = phi i64 [ %.sroa.0.0.copyload.i236341, %.preheader328.lr.ph ], [ %.sroa.0.0.copyload.i236, %._crit_edge ] ; 2 uses
  %indvars.iv365 = phi i64 [ 0, %.preheader328.lr.ph ], [ %indvars.iv.next366, %._crit_edge ] ; 2 uses
  %.sroa.022.0.extract.trunc339 = trunc i64 %.sroa.0.0.copyload.i236370 to i32
  %i.gr = icmp sgt i32 %.sroa.022.0.extract.trunc339, 0
  br i1 %i.gr, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader328
  %.sroa.2282.0.insert.shift = shl nuw nsw i64 %indvars.iv365, 32
  br label %bb.aj

bb.ag:                                            ; preds = %._crit_edge.i.i225
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ah:                                            ; preds = %.noexc231, %.noexc230, %.noexc229, %bb.af
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt5ImageD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %27) #37
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.pn119 = phi { ptr, i32 } [ %i.gt, %bb.ah ], [ %i.gs, %bb.ag ]
  %i.gu = load ptr, ptr %28, align 8, !tbaa !29   ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.gw = icmp eq ptr %i.gu, %i.gv
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.ai
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !28
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef %i.gy) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit239: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  br label %bb.be

._crit_edge:                                      ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, %.preheader328
  %.sroa.0.0.copyload.i236 = phi i64 [ %.sroa.0.0.copyload.i236370, %.preheader328 ], [ %.sroa.0.0.copyload.i240, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %i.gz = ashr i64 %.sroa.0.0.copyload.i236, 32
  %i.ha = icmp slt i64 %indvars.iv.next366, %i.gz
  br i1 %i.ha, label %.preheader328, label %.loopexit329, !llvm.loop !535

bb.aj:                                            ; preds = %.lr.ph, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  %.sroa.0281.0.insert.insert = or disjoint i64 %.sroa.2282.0.insert.shift, %indvars.iv ; 2 uses
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %30, ptr noundef nonnull align 8 dereferenceable(152) %18, i64 %.sroa.0281.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %23, i64 4294967297)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.hb = load i64, ptr %i.gn, align 8, !tbaa !205 ; 5 uses
  %.not.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i, label %.loopexit327, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak
  %i.hc = load ptr, ptr %i.go, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hc, null
  %i.hd = select i1 %.not.i.i.i, ptr %i.gp, ptr %i.hc ; 9 uses
  %xtraiter = and i64 %i.hb, 7                    ; 3 uses
  %i.he = icmp ult i64 %i.hb, 8
  br i1 %i.he, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.hb, -8
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.al ] ; 9 uses
  %.057.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.ij, %bb.al ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.al ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !77
  %i.hh = fadd float %.057.i, %i.hg
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !77
  %i.hl = fadd float %i.hh, %i.hk
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !77
  %i.hp = fadd float %i.hl, %i.ho
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !77
  %i.ht = fadd float %i.hp, %i.hs
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !77
  %i.hx = fadd float %i.ht, %i.hw
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 20
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !77
  %i.ib = fadd float %i.hx, %i.ia
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load float, ptr %i.id, align 4, !tbaa !77
  %i.if = fadd float %i.ib, %i.ie
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 28
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !77
  %i.ij = fadd float %i.if, %i.ii                 ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit327.loopexit.unr-lcssa, label %bb.al, !llvm.loop !6

.loopexit327.loopexit.unr-lcssa:                  ; preds = %bb.al
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit327, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit327.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.loopexit327.loopexit.unr-lcssa ]
  %.057.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.ij, %.loopexit327.loopexit.unr-lcssa ]
  %lcmp.mod446 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod446)
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.am ] ; 2 uses
  %.057.i.epil = phi float [ %.057.i.epil.init, %.epil.preheader ], [ %i.im, %bb.am ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.am ]
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %indvars.iv.i.epil
  %i.il = load float, ptr %i.ik, align 4, !tbaa !77
  %i.im = fadd float %.057.i.epil, %i.il          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit327, label %bb.am, !llvm.loop !536

.loopexit327:                                     ; preds = %.loopexit327.loopexit.unr-lcssa, %bb.am, %bb.ak
  %.05.lcssa.i = phi float [ 0.000000e+00, %bb.ak ], [ %i.ij, %.loopexit327.loopexit.unr-lcssa ], [ %i.im, %bb.am ]
  %i.in = uitofp nneg i64 %i.hb to float
  %i.io = fdiv float %.05.lcssa.i, %i.in
  invoke void @_ZN4pbrt5Image10SetChannelENS_6Point2IiEEif(ptr noundef nonnull align 8 dereferenceable(152) %13, i64 %.sroa.0281.0.insert.insert, i32 noundef 0, float noundef %i.io)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %.loopexit327
  store i64 0, ptr %i.gn, align 8, !tbaa !205
  %i.ip = load ptr, ptr %i.go, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.iq = load i64, ptr %i.gq, align 8, !tbaa !207
  %i.ir = shl i64 %i.iq, 2
  %i.is = load ptr, ptr %30, align 8, !tbaa !81   ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !42
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  invoke void %i.iv(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull %i.ip, i64 noundef %i.ir, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.ap, !inline_history !1

bb.ap:                                            ; preds = %bb.ao
  %i.iw = landingpad { ptr, i32 }
          catch ptr null
  %i.ix = extractvalue { ptr, i32 } %i.iw, 0
  call void @__clang_call_terminate(ptr %i.ix) #39
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.sroa.0.0.copyload.i240 = load i64, ptr %i.v, align 4 ; 2 uses
  %i.iy = shl i64 %.sroa.0.0.copyload.i240, 32
  %i.iz = ashr exact i64 %i.iy, 32
  %i.ja = icmp slt i64 %indvars.iv.next, %i.iz
  br i1 %i.ja, label %bb.aj, label %._crit_edge, !llvm.loop !537

bb.aq:                                            ; preds = %bb.ab, %bb.av, %bb.aw
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.ar:                                            ; preds = %bb.aj
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %.loopexit327
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %30) #37
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn122 = phi { ptr, i32 } [ %i.jd, %bb.as ], [ %i.jc, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #37
  br label %bb.be

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit214
  br i1 %.not324, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.je = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZN4pbrt5ImageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %13, ptr noundef nonnull align 8 dereferenceable(152) %18)
          to label %.loopexit329 unwind label %bb.aq ; 0 uses

bb.aw:                                            ; preds = %bb.au
end_hunk_2
