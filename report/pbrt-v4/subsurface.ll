Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/subsurface?download=true
inline.NumInlined: 1845
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(4) %2) #23, !noalias !424
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !157, !alias.scope !424
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !159, !alias.scope !424
  store i8 0, ptr %i.cr, align 8, !tbaa !91, !alias.scope !424
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !160, !alias.scope !424
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(4) %2) #23 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !159, !alias.scope !424
  %i.cw = add i64 %i.cv, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cw, i64 noundef 1)
          to label %_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit unwind label %bb.t

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #25
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %7, align 8, !tbaa !160, !alias.scope !424 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cr
  br i1 %i.db, label %.body42, label %.body42.sink.split

_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !159 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !159
  %i.df = sub i64 4611686018427387903, %i.de
  %i.dg = icmp ult i64 %i.df, %i.dc
  br i1 %i.dg, label %bb.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44

bb.v:                                             ; preds = %_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #24
          to label %.noexc45 unwind label %bb.w

.noexc45:                                         ; preds = %bb.v
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44: ; preds = %_ZN4pbrt6detail9formatOneIRA4_KcEENSt9enable_ifIXntsr3stdE10is_class_vINSt5decayIT_E4typeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeEPS2_OS7_.exit
  %i.dh = load ptr, ptr %7, align 8, !tbaa !160
  %i.di = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.dh, i64 noundef %i.dc)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47 unwind label %bb.w ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44
  %i.dj = load ptr, ptr %7, align 8, !tbaa !160   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.cr
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !91
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit47, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.x

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i44, %bb.v
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = load ptr, ptr %7, align 8, !tbaa !160   ; 2 uses
  %i.dp = icmp eq ptr %i.do, %i.cr
  br i1 %i.dp, label %.body42, label %.body42.sink.split

.body42.sink.split:                               ; preds = %bb.w, %bb.u
  %.sink89 = phi ptr [ %i.da, %bb.u ], [ %i.do, %bb.w ]
  %.pn.ph = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ]
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !91
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %.sink89, i64 noundef %i.dr) #26
  br label %.body42

.body42:                                          ; preds = %.body42.sink.split, %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.cz, %bb.u ], [ %i.dn, %bb.w ], [ %.pn.ph, %.body42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.z

.invoke:                                          ; preds = %bb.a, %bb.r, %bb.c
  %i.ds = phi i32 [ 257, %bb.c ], [ 266, %bb.r ], [ 229, %bb.a ]
  %i.dt = phi ptr [ @.str.16, %bb.c ], [ @.str.17, %bb.r ], [ @.str.15, %bb.a ]
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %i.ds, ptr noundef nonnull %i.dt) #24
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.x:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !162
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull %0, ptr noundef %i.du)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %bb.x
  %i.dv = load ptr, ptr %3, align 8, !tbaa !160   ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.y
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !91
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.z:                                             ; preds = %.body42, %bb.q, %bb.b
  %.pn24 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn19.pn.pn.pn, %bb.q ], [ %.pn, %.body42 ]
  %i.ea = load ptr, ptr %3, align 8, !tbaa !160   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ec = icmp eq ptr %i.ea, %i.eb
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.z
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !91
  %i.ee = add i64 %i.ed, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ee) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvlEZN4pbrt12ForAllQueuedIZNS1_23WavefrontPathIntegrator16SampleSubsurfaceEiE3$_1NS1_25SubsurfaceScatterWorkItemEEEvPKcPKNS1_9WorkQueueIT0_EEiOT_EUliE_E9_M_invokeERKSt9_Any_dataOl"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %class.anon.106, align 8            ; 7 uses
  %4 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 4 uses
  %5 = alloca %"class.pbrt::LightSampleContext", align 8 ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %6 = alloca %class.anon.86, align 8             ; 5 uses
  %7 = alloca %class.anon.83, align 1             ; 3 uses
  %8 = alloca %"struct.pbrt::BSDFSample", align 16 ; 10 uses
  %9 = alloca %"class.pbrt::TabulatedBSSRDF", align 8 ; 8 uses
  %10 = alloca %"class.pbrt::NormalizedFresnelBxDF", align 4 ; 4 uses
  %11 = alloca %"struct.pbrt::BSSRDFSample", align 8 ; 16 uses
  %12 = alloca %"class.pbrt::SampledWavelengths", align 16 ; 8 uses
  %13 = alloca %"class.pbrt::LightSampleContext", align 8 ; 9 uses
  %14 = alloca %"class.pstd::optional.71", align 8 ; 6 uses
  %15 = alloca %"class.pstd::optional.75", align 16 ; 13 uses
  %16 = alloca %"class.pbrt::Ray", align 8        ; 8 uses
  %17 = alloca %"struct.pbrt::ShadowRayWorkItem", align 8 ; 13 uses
  %18 = alloca %"struct.pbrt::SubsurfaceScatterWorkItem", align 8 ; 26 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !440   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !tbaa !441
  %.val3 = load i64, ptr %1, align 8, !tbaa !81
  %.val2.val = load ptr, ptr %.val2, align 8, !tbaa !78
  %i.d = trunc i64 %.val3 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @_ZNK4pbrt3SOAINS_25SubsurfaceScatterWorkItemEEixEi(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::SubsurfaceScatterWorkItem") align 8 %18, ptr noundef nonnull align 8 dereferenceable(680) %.val2.val, i32 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.e = load ptr, ptr %.val, align 8, !tbaa !75  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 184 ; 2 uses
  %i.g = load float, ptr %i.f, align 8, !tbaa !187
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  br i1 %i.h, label %"_ZSt10__invoke_rIvRZN4pbrt12ForAllQueuedIZNS0_23WavefrontPathIntegrator16SampleSubsurfaceEiE3$_1NS0_25SubsurfaceScatterWorkItemEEEvPKcPKNS0_9WorkQueueIT0_EEiOT_EUliE_JlEENSt9enable_ifIX16is_invocable_r_vISC_S8_DpT1_EESC_E4typeEOS8_DpOSH_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.i = getelementptr inbounds nuw i8, ptr %18, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.j = getelementptr inbounds nuw i8, ptr %18, i64 192 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !141, !noalias !442
  store i32 %i.l, ptr %10, align 4, !tbaa !96, !noalias !442
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 228 ; 5 uses
  %.sroa.027.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.m, align 4, !noalias !442 ; 6 uses
  %.sroa.228.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 236 ; 5 uses
  %.sroa.228.0.copyload.i.i.i.i.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i.i.i, align 4, !noalias !442 ; 10 uses
  %.sroa.01.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 264
  %.sroa.021.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.n, align 8, !noalias !442 ; 3 uses
  %.sroa.222.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 272
  %.sroa.222.0.copyload.i.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i.i, align 8, !noalias !442 ; 4 uses
  %i.o = ptrtoint ptr %10 to i64                  ; 2 uses
  %i.p = or i64 %i.o, 1441151880758558720
  %i.q = fmul <2 x float> %.sroa.021.0.copyload.i.i.i.i.i, %.sroa.021.0.copyload.i.i.i.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.q, %shift
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = fmul float %.sroa.222.0.copyload.i.i.i.i.i, %.sroa.222.0.copyload.i.i.i.i.i
  %i.t = fadd float %i.s, %i.r
  %sqrt.i.i.i.i.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.t)
  %19 = fneg float %.sroa.01.4.vec.extract.i.i.i.i.i.i
  %i.u = shufflevector <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.v = insertelement <2 x float> %i.u, float %.sroa.228.0.copyload.i.i.i.i.i, i64 0 ; 2 uses
  %i.w = fneg <2 x float> %i.v
  %i.x = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.y = insertelement <2 x float> %i.x, float %.sroa.222.0.copyload.i.i.i.i.i, i64 0
  %i.z = insertelement <2 x float> poison, float %sqrt.i.i.i.i.i.i.i.i, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fdiv <2 x float> %i.y, %i.aa            ; 6 uses
  %i.ac = insertelement <2 x float> %i.x, float %.sroa.222.0.copyload.i.i.i.i.i, i64 1
  %i.ad = fdiv <2 x float> %i.ac, %i.aa           ; 5 uses
  %i.ae = shufflevector <2 x float> %i.ab, <2 x float> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.af = fmul <2 x float> %i.v, %i.ad            ; 2 uses
  %i.ag = fneg <2 x float> %i.af
  %i.ah = insertelement <2 x float> %i.u, float %.sroa.228.0.copyload.i.i.i.i.i, i64 1
  %i.ai = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ah, <2 x float> %i.ab, <2 x float> %i.ag)
  %i.aj = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.w, <2 x float> %i.ad, <2 x float> %i.af)
  %i.ak = fadd <2 x float> %i.ai, %i.aj           ; 3 uses
  %i.al = extractelement <2 x float> %i.ab, i64 1 ; 2 uses
  %i.am = fmul float %.sroa.01.4.vec.extract.i.i.i.i.i.i, %i.al ; 2 uses
  %i.an = fneg float %i.am
  %i.ao = extractelement <2 x float> %i.ad, i64 0
  %i.ap = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i.i.i.i, float %i.ao, float %i.an)
  %i.aq = call noundef float @llvm.fma.f32(float %19, float %i.al, float %i.am)
  %i.ar = fadd float %i.ap, %i.aq                 ; 2 uses
  %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i = load float, ptr %i.j, align 8, !noalias !442
  %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 196 ; 3 uses
  %.sroa.0.sroa.2.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !442
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 200 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !442
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 204 ; 2 uses
  %.sroa.0.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !442
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 208 ; 3 uses
  %.sroa.0.sroa.5.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !442
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 212 ; 3 uses
  %.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !442
  %i.as = fadd float %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i, %.sroa.0.sroa.2.0.copyload.i.i.i.i.i.i
  %i.at = fmul float %i.as, 5.000000e-01
  %i.au = fadd float %.sroa.0.sroa.3.0.copyload.i.i.i.i.i.i, %.sroa.0.sroa.4.0.copyload.i.i.i.i.i.i
  %i.av = fmul float %i.au, 5.000000e-01
  %i.aw = fadd float %.sroa.0.sroa.5.0.copyload.i.i.i.i.i.i, %.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i
  %i.ax = fmul float %i.aw, 5.000000e-01
  %.sroa.05.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %9, align 8, !noalias !442 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.26.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !442
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i.i.i.i, i64 0
  %i.ay = fsub float %.sroa.0.0.vec.extract.i.i.i.i.i.i.i, %i.at ; 2 uses
  %.sroa.0.4.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i.i.i.i, i64 1
  %i.az = fsub float %.sroa.0.4.vec.extract.i.i.i.i.i.i.i, %i.av ; 2 uses
  %i.ba = fsub float %.sroa.26.0.copyload.i.i.i.i.i.i, %i.ax ; 2 uses
  %i.bb = fmul float %i.ay, %i.ay
  %i.bc = fmul float %i.az, %i.az
  %i.bd = fadd float %i.bb, %i.bc
  %i.be = fmul float %i.ba, %i.ba
  %i.bf = fadd float %i.be, %i.bd
  %sqrt.i.i.i37.i.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.bf)
  %i.bg = call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF2SrEf(ptr noundef nonnull align 8 dereferenceable(80) %9, float noundef %sqrt.i.i.i37.i.i.i.i.i), !noalias !442 ; 2 uses
  %i.bh = extractvalue { <2 x float>, <2 x float> } %i.bg, 0
  store <2 x float> %i.bh, ptr %11, align 8, !alias.scope !442
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bj = extractvalue { <2 x float>, <2 x float> } %i.bg, 1
  store <2 x float> %i.bj, ptr %i.bi, align 8, !alias.scope !442
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.0.sroa.5.0.copyload.i46.i.i.i.i.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !442
  %.sroa.0.sroa.6.0.copyload.i48.i.i.i.i.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !442
  %i.bl = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !442
  %i.bm = load <4 x float>, ptr %i.j, align 8, !noalias !442
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bo = fadd <2 x float> %i.bl, %i.bn
  %i.bp = fmul <2 x float> %i.bo, splat (float 5.000000e-01)
  %i.bq = fadd float %.sroa.0.sroa.5.0.copyload.i46.i.i.i.i.i, %.sroa.0.sroa.6.0.copyload.i48.i.i.i.i.i
  %i.br = fmul float %i.bq, 5.000000e-01
  %i.bs = getelementptr inbounds nuw i8, ptr %18, i64 216 ; 6 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.bs, align 8, !noalias !442
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 224 ; 6 uses
  %.sroa.24.0.copyload.i.i.i.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 8, !noalias !442
  %i.bt = call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SpENS_6Point3IfEENS_7Normal3IfEE(ptr noundef nonnull align 8 dereferenceable(80) %9, <2 x float> %i.bp, float %i.br, <2 x float> %.sroa.03.0.copyload.i.i.i.i.i, float %.sroa.24.0.copyload.i.i.i.i.i), !noalias !442 ; 2 uses
  %i.bu = extractvalue { <2 x float>, <2 x float> } %i.bt, 0 ; 4 uses
  store <2 x float> %i.bu, ptr %i.bk, align 8, !alias.scope !442
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bw = extractvalue { <2 x float>, <2 x float> } %i.bt, 1 ; 2 uses
  store <2 x float> %i.bw, ptr %i.bv, align 8, !alias.scope !442
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store i64 %i.p, ptr %i.bx, align 8, !tbaa !189, !alias.scope !442
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 40
  store <2 x float> %i.ae, ptr %i.by, align 8, !alias.scope !442
  %.sroa.7.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bz = extractelement <2 x float> %i.ab, i64 0
  store float %i.bz, ptr %.sroa.7.8..sroa_idx.i.i.i.i.i, align 8, !alias.scope !442
  %.sroa.8.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 52
  store <2 x float> %i.ak, ptr %.sroa.8.8..sroa_idx.i.i.i.i.i, align 4, !alias.scope !442
  %.sroa.9.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 60
  store float %i.ar, ptr %.sroa.9.8..sroa_idx.i.i.i.i.i, align 4, !alias.scope !442
  %.sroa.10.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  store <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i.i.i, align 8, !alias.scope !442
  %.sroa.11.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 3 uses
  store float %.sroa.228.0.copyload.i.i.i.i.i, ptr %.sroa.11.8..sroa_idx.i.i.i.i.i, align 8, !alias.scope !442
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  store <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, ptr %i.ca, align 8, !alias.scope !442
  %.sroa.555.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 88
  store float %.sroa.228.0.copyload.i.i.i.i.i, ptr %.sroa.555.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !442
  %i.cb = load <2 x float>, ptr %11, align 8      ; 2 uses
  %i.cc = load <2 x float>, ptr %i.bi, align 8    ; 2 uses
  %i.cd = shufflevector <2 x float> %i.cb, <2 x float> %i.cc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.cd
  %i.ce = fcmp une <4 x float> %.fr, zeroinitializer
  %i.cf = bitcast <4 x i1> %i.ce to i4
  %.not = icmp eq i4 %i.cf, 0
  %i.cg = extractelement <2 x float> %i.bu, i64 0
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ch = shufflevector <2 x float> %i.bu, <2 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr32 = freeze <4 x float> %i.ch               ; 2 uses
  %i.ci = fcmp une <4 x float> %.fr32, zeroinitializer
  %i.cj = bitcast <4 x i1> %i.ci to i4
  %.not33 = icmp eq i4 %i.cj, 0
  br i1 %.not33, label %bb.w, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit.i.i.i.i

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit.i.i.i.i: ; preds = %bb.c
  %i.ck = load float, ptr %i.f, align 8, !tbaa !187
  %i.cl = fmul float %i.cg, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 152
  %.sroa.0.0.copyload4.i.i.i.i.i = load <2 x float>, ptr %i.cm, align 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 160
  %.sroa.8.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !91
  %i.cn = fmul <2 x float> %i.cb, %.sroa.0.0.copyload4.i.i.i.i.i
  %i.co = fmul <2 x float> %i.cc, %.sroa.8.0.copyload.i.i.i.i.i
  %i.cp = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cr = fdiv <2 x float> %i.cn, %i.cq           ; 2 uses
  %i.cs = fdiv <2 x float> %i.co, %i.cq           ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 168
  %i.cu = load <4 x float>, ptr %i.ct, align 8
  %i.cv = fmul <4 x float> %.fr32, %i.cu
  %i.cw = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cx = fdiv <4 x float> %i.cv, %i.cw           ; 7 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.cz = shufflevector <4 x float> %i.cx, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.da = getelementptr inbounds nuw i8, ptr %18, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.da, i64 32, i1 false), !tbaa.struct !190
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.dc = getelementptr inbounds nuw i8, ptr %18, i64 308 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !191
  %i.de = load ptr, ptr %i.db, align 8, !tbaa !443, !noalias !444
  %i.df = sext i32 %i.dd to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [16 x i8], ptr %i.de, i64 %i.df ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dh = load <2 x float>, ptr %i.dg, align 16, !noalias !444
  %.sroa.54.8.vec.extract.i.i.i.i.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !91, !noalias !444
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !445, !noalias !444
  %i.dk = getelementptr inbounds [16 x i8], ptr %i.dj, i64 %i.df ; 2 uses
  %.sroa.0.0.copyload.i7.i.i.i.i.i.i = load <2 x float>, ptr %i.dk, align 16, !noalias !444 ; 2 uses
  %.sroa.01.4.vec.extract.i.i228.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i64 1
  %.sroa.0122.0.copyload.i.i.i.i = load <2 x float>, ptr %i.ca, align 8 ; 7 uses
  %.sroa.04.4.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.0122.0.copyload.i.i.i.i, i64 1 ; 3 uses
  %foldExtExtBinop13 = fmul <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, %.sroa.0122.0.copyload.i.i.i.i
  %i.dl = extractelement <2 x float> %foldExtExtBinop13, i64 0
  %i.dm = fmul float %.sroa.01.4.vec.extract.i.i.i.i.i.i, %.sroa.04.4.vec.extract.i.i.i.i.i.i.i.i
  %i.dn = fadd float %i.dl, %i.dm
  %i.do = fmul float %.sroa.228.0.copyload.i.i.i.i.i, %.sroa.228.0.copyload.i.i.i.i.i
  %i.dp = fadd float %i.do, %i.dn                 ; 2 uses
  %i.dq = fcmp oeq float %i.dp, 0.000000e+00
  br i1 %i.dq, label %_ZNK4pbrt4BSDF8Sample_fINS_21NormalizedFresnelBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit.i.i.i.i
  %.sroa.01.0.vec.extract.i.i227.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.2.0.copyload.i931.i.i650.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i.i.i.i.i, align 8, !tbaa !91, !noalias !444
  %i.dr = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i.i.i.i, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dt = insertelement <2 x float> %i.ab, float %i.ar, i64 1
  %i.du = fmul <2 x float> %i.ds, %i.dt
  %i.dv = shufflevector <2 x float> %i.ak, <2 x float> %i.ab, <2 x i32> <i32 3, i32 1>
  %i.dw = fmul <2 x float> %i.dv, %.sroa.0122.0.copyload.i.i.i.i
  %i.dx = shufflevector <2 x float> %i.ak, <2 x float> %i.ad, <2 x i32> <i32 2, i32 0>
  %i.dy = shufflevector <2 x float> %.sroa.0122.0.copyload.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dz = fmul <2 x float> %i.dx, %i.dy
  %i.ea = fadd <2 x float> %i.dz, %i.dw
  %i.eb = fadd <2 x float> %i.du, %i.ea
  %i.ec = and i64 %i.o, 144115188075855868
  %i.ed = inttoptr i64 %i.ec to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !446
  call void @_ZNK4pbrt21NormalizedFresnelBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::BSDFSample") align 4 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.ed, <2 x float> %i.eb, float %i.dp, float noundef %.sroa.01.0.vec.extract.i.i227.i.i.i.i, <2 x float> %.sroa.2.0.copyload.i931.i.i650.i.i.i.i, i32 noundef 0, i32 noundef 3), !noalias !446
  %i.ee = load <4 x float>, ptr %8, align 16, !noalias !446
  %.fr34 = freeze <4 x float> %i.ee               ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.9.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 16, !noalias !446
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.11.0.copyload.i.i.i.i.i = load float, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !446 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.sroa.14.0.copyload.i.i.i.i.i = load float, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 4, !noalias !446 ; 3 uses
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.15.i.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i, align 16, !noalias !446 ; 2 uses
  %.sroa.15.i.sroa.4.0..sroa.15.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.15.i.sroa.4.0.copyload.i.i.i.i = load float, ptr %.sroa.15.i.sroa.4.0..sroa.15.0..sroa_idx.i.sroa_idx.i.i.i.i, align 4, !noalias !446 ; 2 uses
  %.sroa.15.i.sroa.5.0..sroa.15.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.15.i.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.15.i.sroa.5.0..sroa.15.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !446
end_hunk_0
