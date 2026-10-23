Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/integrators?download=true
inline.NumInlined: 13518
inline.NumDeleted: 3340
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_8SpectrumEJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_:bb.a
  br label %.body30

.body30:                                          ; preds = %.body30.sink.split, %bb.o, %bb.k
  %.pn19 = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.cs, %bb.o ], [ %.pn19.ph, %.body30.sink.split ] ; 2 uses
  %i.cx = load ptr, ptr %7, align 8, !tbaa !48    ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.z
  br i1 %i.cy, label %.body26, label %.body26.sink.split

.body26.sink.split:                               ; preds = %.body30, %bb.h
  %.sink83 = phi ptr [ %i.an, %bb.h ], [ %i.cx, %.body30 ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.am, %bb.h ], [ %.pn19, %.body30 ]
  %i.cz = load i64, ptr %i.z, align 8, !tbaa !47
  %i.da = add i64 %i.cz, 1
  call void @_ZdlPvm(ptr noundef %.sink83, i64 noundef %i.da) #40
  br label %.body26

.body26:                                          ; preds = %.body26.sink.split, %.body30, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %.pn19, %.body30 ], [ %.pn19.pn.ph, %.body26.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %.body

.body:                                            ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, %.body26
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body26 ], [ %i.cr, %bb.n ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5) #39
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %.body ], [ %i.cq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %bb.u

bb.q:                                             ; preds = %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !46
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.invoke, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = load ptr, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.de, ptr %i.a, align 8, !tbaa !507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store ptr @_ZTSN4pbrt8SpectrumE, ptr %i.b, align 8, !tbaa !507
  invoke void @_ZN4pbrt8LogFatalIJPKcRS2_EEEvNS_8LogLevelES2_iS2_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.126, i32 noundef 176, ptr noundef nonnull @.str.182, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #42
          to label %.noexc43 unwind label %bb.s

.noexc43:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.dg = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.t
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !47
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  ret void

bb.u:                                             ; preds = %bb.s, %bb.p
  %.pn24 = phi { ptr, i32 } [ %i.df, %bb.s ], [ %.pn19.pn.pn.pn, %bb.p ]
  %i.dl = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.u
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !47
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  resume { ptr, i32 } %.pn24
}

declare void @_ZNK4pbrt8Spectrum8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN4pbrt10RandomWalkERKNS_10IntegratorERNS_18SampledWavelengthsENS_15RayDifferentialENS_7SamplerENS_6CameraERNS_13ScratchBufferENS_15SampledSpectrumEfiNS_13TransportModeEPNS_6VertexEbENK3$_0clENS_6Point3IfEENS_16MediumPropertiesESA_SA_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, <2 x float> %1, float %2, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %3, <2 x float> %4, <2 x float> %5, <2 x float> %6, <2 x float> %7) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i:
  %i.a = alloca float, align 4                    ; 4 uses
  %8 = alloca %class.anon.419, align 1            ; 3 uses
  %9 = alloca %class.anon.390, align 1            ; 3 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %10 = alloca %"class.pbrt::MediumInteraction", align 8 ; 13 uses
  %.sroa.5168 = alloca [4 x float], align 4       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.e = load <2 x float>, ptr %3, align 8
  %.sroa.0196.0.vec.extract = extractelement <2 x float> %4, i64 0
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !189
  %i.h = load ptr, ptr %0, align 8, !tbaa !3363, !nonnull !137, !align !686
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.i = load i64, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.j = and i64 %i.i, 144115188075855871
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = lshr i64 %i.i, 57
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = add nsw i32 %i.m, -1
  %i.o = call noundef float @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get1DEvEUlT_E_fNS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %i.k, i32 noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %i.p = insertelement <2 x float> %i.e, float %i.g, i64 1
  %i.q = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x float> %i.p, %i.q              ; 3 uses
  %i.s = extractelement <2 x float> %i.r, i64 0   ; 2 uses
  %i.t = fsub float 1.000000e+00, %i.s
  %i.u = extractelement <2 x float> %i.r, i64 1   ; 2 uses
  %i.v = fsub float %i.t, %i.u                    ; 2 uses
  %i.w = fcmp ogt float %i.v, 0.000000e+00
  %.sroa.speculated = select i1 %i.w, float %i.v, float 0.000000e+00 ; 2 uses
  store <2 x float> %i.r, ptr %i.b, align 8, !tbaa !189
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %.sroa.speculated, ptr %i.x, align 8, !tbaa !189
  %i.y = fadd float %i.s, 0.000000e+00
  %i.z = fadd float %i.y, %i.u
  %i.aa = fadd float %i.z, %.sroa.speculated      ; 2 uses
  %i.ab = fmul float %i.o, %i.aa                  ; 5 uses
  %i.ac = fcmp oeq float %i.ab, %i.aa
  br i1 %i.ac, label %bb.a, label %_ZN4pbrt13NextFloatDownEf.exit.i

bb.a:                                             ; preds = %.lr.ph.i
  %or.cond.i.i = fcmp oeq float %i.ab, -inf
  br i1 %or.cond.i.i, label %_ZN4pbrt13NextFloatDownEf.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = fcmp oeq float %i.ab, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.ad, float -0.000000e+00, float %i.ab ; 2 uses
  %i.ae = bitcast float %spec.store.select.i.i to i32
  %i.af = fcmp ogt float %spec.store.select.i.i, 0.000000e+00
  %.0.v.i.i = select i1 %i.af, i32 -1, i32 1
  %.0.i.i = add i32 %.0.v.i.i, %i.ae
  %i.ag = bitcast i32 %.0.i.i to float
  br label %_ZN4pbrt13NextFloatDownEf.exit.i

_ZN4pbrt13NextFloatDownEf.exit.i:                 ; preds = %bb.b, %bb.a, %.lr.ph.i
  %.031.i = phi float [ %i.ab, %.lr.ph.i ], [ %i.ag, %bb.b ], [ -inf, %bb.a ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN4pbrt13NextFloatDownEf.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 3 uses
  %.0.i = phi float [ %i.aj, %bb.c ], [ 0.000000e+00, %_ZN4pbrt13NextFloatDownEf.exit.i ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !189
  %i.aj = fadd float %.0.i, %i.ai                 ; 2 uses
  %i.ak = fcmp ugt float %i.aj, %.031.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ak, label %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit, label %bb.c, !llvm.loop !28

_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit: ; preds = %bb.c
  %i.al = trunc nuw nsw i64 %indvars.iv.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  switch i32 %i.al, label %bb.h [
    i32 0, label %bb.d
    i32 1, label %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread68.i
  ]

bb.d:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !3364, !nonnull !137
  store i8 1, ptr %i.an, align 1, !tbaa !363
  br label %bb.l

_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread68.i: ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !3365, !nonnull !137, !align !637 ; 3 uses
  %i.aq = load <4 x float>, ptr %i.f, align 8, !tbaa !189
  %i.ar = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.as = fmul <4 x float> %i.ar, %i.aq           ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> zeroinitializer
  %i.au = fdiv <4 x float> %i.as, %i.at
  %i.av = load <4 x float>, ptr %i.ap, align 4, !tbaa !189
  %i.aw = fmul <4 x float> %i.au, %i.av
  store <4 x float> %i.aw, ptr %i.ap, align 4, !tbaa !189
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !3366, !nonnull !137, !align !686 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load <2 x float>, ptr %i.az, align 4, !tbaa !189
  %i.bb = fneg <2 x float> %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !295
  %i.be = fneg float %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bg = load float, ptr %i.bf, align 8, !tbaa !283 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !264 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !456 ; 3 uses
  %.sroa.07.4.vec.insert.i.i.i = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.05.4.vec.insert.i.i.i = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %2, i64 0
  %.sroa.0.4.vec.insert.i.i.i = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i.i, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i.i.i, ptr %10, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i.i.i, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i.i.i, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 24
  store float %i.bg, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 28
  store <2 x float> %i.bb, ptr %i.bo, align 4
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 36
  store float %i.be, ptr %.sroa.23.0..sroa_idx.i.i, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bp, i8 0, i64 20, i1 false)
  store i64 0, ptr %i.bq, align 8
  store i64 %i.bi, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %10, i64 80
  store i64 %i.bk, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5168)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !3367, !nonnull !137, !align !637
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !189
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !3368, !nonnull !137, !align !686 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5168, ptr noundef nonnull align 4 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !457
  %foldExtExtBinop = fadd <2 x float> %1, %1
  %i.by = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.bz = fmul float %i.by, 5.000000e-01
  %.0.i.i44.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.sroa.0.sroa.3.0..sroa_idx.i.i48.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %.sroa.0.sroa.3.0.copyload.i.i49.i = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i48.i, align 8
  %.sroa.0.sroa.4.0..sroa_idx.i.i50.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %.sroa.0.sroa.4.0.copyload.i.i51.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i50.i, align 4
  %i.ca = fadd float %.sroa.0.sroa.3.0.copyload.i.i49.i, %.sroa.0.sroa.4.0.copyload.i.i51.i
  %i.cb = fmul float %i.ca, 5.000000e-01
  %i.cc = fsub float %i.bz, %i.cb                 ; 2 uses
  %i.cd = fmul float %i.cc, %i.cc
  %i.ce = insertelement <2 x float> %1, float %2, i64 1 ; 2 uses
  %i.cf = fadd <2 x float> %i.ce, %i.ce
  %i.cg = fmul <2 x float> %i.cf, splat (float 5.000000e-01)
  %i.ch = call <6 x float> @llvm.masked.load.v6f32.p0(ptr nonnull align 8 %.0.i.i44.i, <6 x i1> <i1 true, i1 true, i1 false, i1 false, i1 true, i1 true>, <6 x float> poison) ; 2 uses
  %i.ci = shufflevector <6 x float> %i.ch, <6 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.cj = shufflevector <6 x float> %i.ch, <6 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ck = fadd <2 x float> %i.ci, %i.cj
  %i.cl = fmul <2 x float> %i.ck, splat (float 5.000000e-01)
  %i.cm = fsub <2 x float> %i.cg, %i.cl           ; 2 uses
  %i.cn = fmul <2 x float> %i.cm, %i.cm           ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = fadd float %i.co, %i.cd
  %i.cq = extractelement <2 x float> %i.cn, i64 1
  %i.cr = fadd float %i.cp, %i.cq                 ; 2 uses
  %i.cs = fcmp oeq float %i.cr, 0.000000e+00
  %i.ct = fdiv float 1.000000e+00, %i.cr
  %i.cu = fmul float %i.bv, %i.ct
  %.1.i = select i1 %i.cs, float 0.000000e+00, float %i.cu
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !3369, !nonnull !137, !align !686 ; 17 uses
  store i32 3, ptr %i.cw, align 8
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5168.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.5168, i64 16, i1 false)
  %.sroa.6170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cx = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  store <4 x float> %i.cx, ptr %.sroa.6170.0..sroa_idx, align 8
  %.sroa.11173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  store float %2, ptr %.sroa.11173.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 44
  store float %2, ptr %.sroa.12.0..sroa_idx, align 4
  %.sroa.13174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.13174.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %.sroa.13175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 64
  store <2 x float> zeroinitializer, ptr %.sroa.13175.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 72
  store float 0.000000e+00, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.17.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 20, i1 false)
  %.sroa.17177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  store i64 %i.bi, ptr %.sroa.17177.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  store i64 %i.bk, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.20178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 272
  store i64 0, ptr %.sroa.20178.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 280
  store <8 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %.sroa.21.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 312
  store float 1.000000e+00, ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.30180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 320
  store i8 0, ptr %.sroa.30180.0..sroa_idx, align 8
  %.sroa.31181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 324
  store float %.1.i, ptr %.sroa.31181.0..sroa_idx, align 4
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cw, i64 328
  store float 0.000000e+00, ptr %.sroa.33.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5168)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !3370, !nonnull !137, !align !637 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !49
  %i.db = add nsw i32 %i.da, 1                    ; 2 uses
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !49
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !3371, !nonnull !137, !align !637
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !49
  %.not = icmp slt i32 %i.db, %i.de
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread68.i
  %i.df = load ptr, ptr %i.ax, align 8, !tbaa !3366, !nonnull !137, !align !686 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load <2 x float>, ptr %i.dg, align 4, !tbaa !189
  %i.di = fneg <2 x float> %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !295
  %i.dl = fneg float %i.dk
  %i.dm = load ptr, ptr %0, align 8, !tbaa !3363, !nonnull !137, !align !686
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !53 ; 2 uses
  %i.do = and i64 %i.dn, 144115188075855871
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = lshr i64 %i.dn, 57
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = call <2 x float> @_ZN4pbrt6detail8DispatchIRZNS_7Sampler5Get2DEvEUlT_E_NS_6Point2IfEENS_14PMJ02BNSamplerENS_18IndependentSamplerENS_17StratifiedSamplerENS_13HaltonSamplerENS_18PaddedSobolSamplerENS_12SobolSamplerENS_13ZSobolSamplerENS_10MLTSamplerEJNS_15DebugMLTSamplerEEvEET0_OS3_Pvi(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef %i.dp, i32 noundef %i.ds)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  %i.du = and i64 %i.bk, 144115188075855871
  %i.dv = inttoptr i64 %i.du to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39, !noalias !3372
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !472, !noalias !3372
  %i.dx = call { <2 x float>, float } @_ZN4pbrt22SampleHenyeyGreensteinENS_7Vector3IfEEfNS_6Point2IfEEPf(<2 x float> %i.di, float %i.dl, float noundef %i.dw, <2 x float> %i.dt, ptr noundef nonnull %i.a), !noalias !3372 ; 2 uses
  %.fca.0.extract.i.i.i.i.i = extractvalue { <2 x float>, float } %i.dx, 0 ; 4 uses
  %.fca.1.extract.i.i.i.i.i = extractvalue { <2 x float>, float } %i.dx, 1 ; 4 uses
  %i.dy = load float, ptr %i.a, align 4, !tbaa !189, !noalias !3372 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39, !noalias !3372
  %i.dz = fcmp oeq float %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.g, label %.noexc73

.noexc73:                                         ; preds = %bb.e
  %11 = load ptr, ptr %i.bt, align 8, !tbaa !3367, !nonnull !137, !align !637
  store float %i.dy, ptr %11, align 4, !tbaa !189
  %12 = fdiv float %i.dy, %i.dy
  %13 = load ptr, ptr %i.ao, align 8, !tbaa !3365, !nonnull !137, !align !637 ; 2 uses
  %14 = load <4 x float>, ptr %13, align 4, !tbaa !189
  %15 = insertelement <4 x float> poison, float %12, i64 0
  %16 = shufflevector <4 x float> %15, <4 x float> poison, <4 x i32> zeroinitializer
  %17 = fmul <4 x float> %16, %14
  store <4 x float> %17, ptr %13, align 4, !tbaa !189
  %18 = call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %10, <2 x float> zeroinitializer, float 0.000000e+00, <2 x float> %.fca.0.extract.i.i.i.i.i, float %.fca.1.extract.i.i.i.i.i) ; 2 uses
  %19 = load ptr, ptr %i.bq, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %19, null
  br i1 %.not.i.i, label %bb.f, label %20

20:                                               ; preds = %.noexc73
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i.i.i, i64 0
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i.i.i, i64 1
  %21 = fmul float %.fca.1.extract.i.i.i.i.i, 0.000000e+00 ; 2 uses
  %22 = call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i.i, float 0.000000e+00, float %21)
  %23 = fneg float %21
  %24 = call noundef float @llvm.fma.f32(float %.fca.1.extract.i.i.i.i.i, float 0.000000e+00, float %23)
  %25 = fadd float %22, %24
  %26 = call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i.i, float 0.000000e+00, float %25)
  %27 = fcmp ogt float %26, 0.000000e+00
  %spec.select.idx.i.i = select i1 %27, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %19, i64 %spec.select.idx.i.i
  br label %bb.f

bb.f:                                             ; preds = %.noexc73, %20
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %20 ], [ %i.br, %.noexc73 ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %18, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %18, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8
  %i.ea = load ptr, ptr %i.ax, align 8, !tbaa !3366, !nonnull !137, !align !686 ; 8 uses
  store <2 x float> %.fca.0.extract.i, ptr %i.ea, align 8
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store float %.fca.1.extract.i, ptr %.sroa.5150.0..sroa_idx, align 8
  %.sroa.6151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  store <2 x float> %.fca.0.extract.i.i.i.i.i, ptr %.sroa.6151.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  store float %.fca.1.extract.i.i.i.i.i, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store float %i.bg, ptr %.sroa.8.0..sroa_idx, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  store i64 %storemerge.i.i, ptr %i.eb, align 8, !tbaa !264
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store i8 0, ptr %i.ec, align 8
  %i.ed = getelementptr i8, ptr %i.ea, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.ed, i8 0, i64 48, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !3373, !nonnull !137
  store i8 1, ptr %i.ef, align 1, !tbaa !363
  %i.eg = load ptr, ptr %i.cv, align 8, !tbaa !3369, !nonnull !137, !align !686
  %i.eh = load ptr, ptr %i.bw, align 8, !tbaa !3368, !nonnull !137, !align !686
  %i.ei = call noundef float @_ZNK4pbrt6Vertex14ConvertDensityEfRKS0_(ptr noundef nonnull align 8 dereferenceable(332) %i.eg, float noundef %i.dy, ptr noundef nonnull align 8 dereferenceable(332) %i.eh)
  %i.ej = load ptr, ptr %i.bw, align 8, !tbaa !3368, !nonnull !137, !align !686
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 328
  store float %i.ei, ptr %i.ek, align 8, !tbaa !490
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread68.i, %bb.f
  %.sink = phi i64 [ 8, %_ZNK4pbrt6Vertex15IsInfiniteLightEv.exit.thread68.i ], [ 80, %bb.f ], [ 8, %bb.e ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !369, !nonnull !137
  store i8 1, ptr %i.em, align 1, !tbaa !363
  br label %bb.l

bb.h:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.en = load float, ptr %3, align 8, !tbaa !189
  %i.eo = fsub float %.sroa.0196.0.vec.extract, %i.en
  %i.ep = load float, ptr %i.f, align 8, !tbaa !189
  %i.eq = fsub float %i.eo, %i.ep                 ; 2 uses
  %i.er = fcmp ogt float %i.eq, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.er, float %i.eq, float 0.000000e+00
  %.sroa.0189.0.vec.extract193 = extractelement <2 x float> %6, i64 0
  %i.es = fmul float %.sroa.0189.0.vec.extract193, %.sroa.speculated.i ; 3 uses
  %i.et = fcmp oeq float %i.es, 0.000000e+00
  br i1 %i.et, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !3365, !nonnull !137, !align !637
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  %.pre = load ptr, ptr %i.eu, align 8, !tbaa !3365
  %i.ew = load <4 x float>, ptr %.pre, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.4.vec.extract.i81 = extractelement <2 x float> %4, i64 1
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !189
  %i.fb = fsub float %.sroa.0.4.vec.extract.i81, %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !189
  %i.fe = fsub float %i.fb, %i.fd                 ; 2 uses
  %i.ff = fcmp ogt float %i.fe, 0.000000e+00
  %.sroa.speculated.1.i = select i1 %i.ff, float %i.fe, float 0.000000e+00
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !3365, !nonnull !137, !align !637 ; 2 uses
  %i.fi = load <2 x float>, ptr %i.ex, align 8, !tbaa !189
  %i.fj = fsub <2 x float> %5, %i.fi
  %i.fk = load <2 x float>, ptr %i.ey, align 8, !tbaa !189
  %i.fl = fsub <2 x float> %i.fj, %i.fk           ; 2 uses
  %i.fm = fcmp ogt <2 x float> %i.fl, zeroinitializer
  %i.fn = select <2 x i1> %i.fm, <2 x float> %i.fl, <2 x float> zeroinitializer
  %i.fo = shufflevector <2 x float> %6, <2 x float> %7, <4 x i32> <i32 poison, i32 1, i32 2, i32 3>
  %i.fp = insertelement <4 x float> poison, float %i.es, i64 0
  %i.fq = insertelement <4 x float> %i.fo, float %i.es, i64 0
  %i.fr = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %.sroa.speculated.1.i, i64 1
  %i.fs = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ft = shufflevector <4 x float> %i.fr, <4 x float> %i.fs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fu = fmul <4 x float> %i.fq, %i.ft
  %i.fv = shufflevector <4 x float> %i.fp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fw = fdiv <4 x float> %i.fu, %i.fv
  %i.fx = load <4 x float>, ptr %i.fh, align 4, !tbaa !189
  %i.fy = fmul <4 x float> %i.fx, %i.fw           ; 2 uses
  store <4 x float> %i.fy, ptr %i.fh, align 4, !tbaa !189
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.fz = phi <4 x float> [ %i.fy, %bb.j ], [ %i.ew, %bb.i ]
  %.fr = freeze <4 x float> %i.fz
  %i.ga = fcmp une <4 x float> %.fr, zeroinitializer
  %i.gb = bitcast <4 x i1> %i.ga to i4
  %i.gc = icmp ne i4 %i.gb, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.d
  %.2 = phi i1 [ false, %bb.d ], [ false, %bb.g ], [ %i.gc, %bb.k ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4pbrt4FilmESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !500  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !501    ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !636
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4pbrt4FilmEmS1_ET_S3_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4pbrt4FilmEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !103
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !500
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4pbrt4FilmESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.210) #42
  unreachable

_ZNKSt6vectorIN4pbrt4FilmESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #41 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !103
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt4FilmES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorIN4pbrt4FilmESaIS1_EE12_M_check_lenEmPKc.exit
  %i.x = add i64 %i.d, -8
  %i.y = sub i64 %i.x, %i.e                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check49 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.u, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.c, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.af ; 4 uses
  %next.gep50 = getelementptr i8, ptr %i.c, i64 %i.af ; 4 uses
  %i.ag = getelementptr i8, ptr %next.gep50, i64 32
  %i.ah = getelementptr i8, ptr %next.gep50, i64 64
  %i.ai = getelementptr i8, ptr %next.gep50, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep50, align 8, !tbaa !103
  %wide.load51 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !103
  %wide.load52 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !103
  %wide.load53 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !103
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103
  store <4 x i64> %wide.load51, ptr %i.aj, align 8, !tbaa !103
  store <4 x i64> %wide.load52, ptr %i.ak, align 8, !tbaa !103
  store <4 x i64> %wide.load53, ptr %i.al, align 8, !tbaa !103
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !3374

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4pbrt4FilmES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec55, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.u, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.c, i64 %i.an
end_hunk_0
