Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/subsurface?download=true
inline.NumInlined: 1845
inline.NumDeleted: 691
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN4pbrt6detail21stringPrintfRecursiveIRA4_KcJEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_:bb.a
  %i.ch = icmp eq ptr %i.cg, %i.j
  br i1 %i.ch, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %.body26, %bb.h
  %.sink86 = phi ptr [ %i.x, %bb.h ], [ %i.cg, %.body26 ]
  %.pn19.pn.ph = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ]
  %i.ci = load i64, ptr %i.j, align 8, !tbaa !92
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %.sink86, i64 noundef %i.cj) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %.body26, %bb.h
  %.pn19.pn = phi { ptr, i32 } [ %i.w, %bb.h ], [ %.pn19, %.body26 ], [ %.pn19.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn19.pn.pn = phi { ptr, i32 } [ %.pn19.pn, %.body ], [ %i.ca, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn19.pn.pn.pn = phi { ptr, i32 } [ %.pn19.pn.pn, %bb.p ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.z

bb.r:                                             ; preds = %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !159
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %.invoke, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.cn = load ptr, ptr %3, align 8, !tbaa !160   ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.co = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(4) %2) #23, !noalias !425
  %i.cp = add nsw i32 %i.co, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.cr, ptr %7, align 8, !tbaa !157, !alias.scope !425
  %i.cs = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !159, !alias.scope !425
  store i8 0, ptr %i.cr, align 8, !tbaa !92, !alias.scope !425
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.cq, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41 unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i41: ; preds = %bb.s
  %i.ct = load ptr, ptr %7, align 8, !tbaa !160, !alias.scope !425
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ct, i64 noundef %i.cq, ptr noundef %i.cn, ptr noundef nonnull align 1 dereferenceable(4) %2) #23 ; 0 uses
  %i.cv = load i64, ptr %i.cs, align 8, !tbaa !159, !alias.scope !425
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
  %i.da = load ptr, ptr %7, align 8, !tbaa !160, !alias.scope !425 ; 2 uses
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
  %i.dl = load i64, ptr %i.cr, align 8, !tbaa !92
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
  %i.dq = load i64, ptr %i.cr, align 8, !tbaa !92
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
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !92
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
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !92
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
  %18 = alloca %"struct.pbrt::SubsurfaceScatterWorkItem", align 8 ; 27 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !441   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.c, align 8, !tbaa !442
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
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.l = load i32, ptr %i.k, align 4, !tbaa !141, !noalias !443
  store i32 %i.l, ptr %10, align 4, !tbaa !96, !noalias !443
  %i.m = getelementptr inbounds nuw i8, ptr %18, i64 228 ; 5 uses
  %.sroa.027.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.m, align 4, !noalias !443 ; 6 uses
  %.sroa.228.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 236 ; 5 uses
  %.sroa.228.0.copyload.i.i.i.i.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i.i.i, align 4, !noalias !443 ; 10 uses
  %.sroa.01.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, i64 0
  %.sroa.01.4.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, i64 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 264
  %.sroa.021.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.n, align 8, !noalias !443 ; 3 uses
  %.sroa.222.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 272
  %.sroa.222.0.copyload.i.i.i.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i.i.i.i, align 8, !noalias !443 ; 4 uses
  %i.o = ptrtoint ptr %10 to i64                  ; 2 uses
  %i.p = or i64 %i.o, 1441151880758558720
  %i.q = fmul <2 x float> %.sroa.021.0.copyload.i.i.i.i.i, %.sroa.021.0.copyload.i.i.i.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.q, %shift
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = fmul float %.sroa.222.0.copyload.i.i.i.i.i, %.sroa.222.0.copyload.i.i.i.i.i
  %i.t = fadd float %i.s, %i.r
  %sqrt.i.i.i.i.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.t)
  %i.u = fneg float %.sroa.01.4.vec.extract.i.i.i.i.i.i
  %i.v = shufflevector <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.w = insertelement <2 x float> %i.v, float %.sroa.228.0.copyload.i.i.i.i.i, i64 0 ; 2 uses
  %i.x = fneg <2 x float> %i.w
  %i.y = shufflevector <2 x float> %.sroa.021.0.copyload.i.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.z = insertelement <2 x float> %i.y, float %.sroa.222.0.copyload.i.i.i.i.i, i64 0
  %i.aa = insertelement <2 x float> poison, float %sqrt.i.i.i.i.i.i.i.i, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fdiv <2 x float> %i.z, %i.ab            ; 6 uses
  %i.ad = insertelement <2 x float> %i.y, float %.sroa.222.0.copyload.i.i.i.i.i, i64 1
  %i.ae = fdiv <2 x float> %i.ad, %i.ab           ; 5 uses
  %i.af = shufflevector <2 x float> %i.ac, <2 x float> %i.ae, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x float> %i.w, %i.ae            ; 2 uses
  %i.ah = fneg <2 x float> %i.ag
  %i.ai = insertelement <2 x float> %i.v, float %.sroa.228.0.copyload.i.i.i.i.i, i64 1
  %i.aj = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ai, <2 x float> %i.ac, <2 x float> %i.ah)
  %i.ak = call <2 x float> @llvm.fma.v2f32(<2 x float> %i.x, <2 x float> %i.ae, <2 x float> %i.ag)
  %i.al = fadd <2 x float> %i.aj, %i.ak           ; 3 uses
  %i.am = extractelement <2 x float> %i.ac, i64 1 ; 2 uses
  %i.an = fmul float %.sroa.01.4.vec.extract.i.i.i.i.i.i, %i.am ; 2 uses
  %i.ao = fneg float %i.an
  %i.ap = extractelement <2 x float> %i.ae, i64 0
  %i.aq = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i.i.i.i, float %i.ap, float %i.ao)
  %i.ar = call noundef float @llvm.fma.f32(float %i.u, float %i.am, float %i.an)
  %i.as = fadd float %i.aq, %i.ar                 ; 2 uses
  %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i = load float, ptr %i.j, align 8, !noalias !443
  %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 196 ; 3 uses
  %.sroa.0.sroa.2.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !443
  %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 200 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !443
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 204 ; 2 uses
  %.sroa.0.sroa.4.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !443
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 208 ; 3 uses
  %.sroa.0.sroa.5.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !443
  %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 212 ; 3 uses
  %.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !443
  %i.at = fadd float %.sroa.0.sroa.0.0.copyload.i.i.i.i.i.i, %.sroa.0.sroa.2.0.copyload.i.i.i.i.i.i
  %i.au = fmul float %i.at, 5.000000e-01
  %i.av = fadd float %.sroa.0.sroa.3.0.copyload.i.i.i.i.i.i, %.sroa.0.sroa.4.0.copyload.i.i.i.i.i.i
  %i.aw = fmul float %i.av, 5.000000e-01
  %i.ax = fadd float %.sroa.0.sroa.5.0.copyload.i.i.i.i.i.i, %.sroa.0.sroa.6.0.copyload.i.i.i.i.i.i
  %i.ay = fmul float %i.ax, 5.000000e-01
  %.sroa.05.0.copyload.i.i.i.i.i.i = load <2 x float>, ptr %9, align 8, !noalias !443 ; 2 uses
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.26.0.copyload.i.i.i.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !443
  %.sroa.0.0.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i.i.i.i, i64 0
  %i.az = fsub float %.sroa.0.0.vec.extract.i.i.i.i.i.i.i, %i.au ; 2 uses
  %.sroa.0.4.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i.i.i.i, i64 1
  %i.ba = fsub float %.sroa.0.4.vec.extract.i.i.i.i.i.i.i, %i.aw ; 2 uses
  %i.bb = fsub float %.sroa.26.0.copyload.i.i.i.i.i.i, %i.ay ; 2 uses
  %i.bc = fmul float %i.az, %i.az
  %i.bd = fmul float %i.ba, %i.ba
  %i.be = fadd float %i.bc, %i.bd
  %i.bf = fmul float %i.bb, %i.bb
  %i.bg = fadd float %i.bf, %i.be
  %sqrt.i.i.i37.i.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.bg)
  %i.bh = call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF2SrEf(ptr noundef nonnull align 8 dereferenceable(80) %9, float noundef %sqrt.i.i.i37.i.i.i.i.i), !noalias !443 ; 2 uses
  %i.bi = extractvalue { <2 x float>, <2 x float> } %i.bh, 0
  store <2 x float> %i.bi, ptr %11, align 8, !alias.scope !443
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bk = extractvalue { <2 x float>, <2 x float> } %i.bh, 1
  store <2 x float> %i.bk, ptr %i.bj, align 8, !alias.scope !443
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.sroa.0.sroa.5.0.copyload.i46.i.i.i.i.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !443
  %.sroa.0.sroa.6.0.copyload.i48.i.i.i.i.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !443
  %i.bm = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !noalias !443
  %i.bn = load <4 x float>, ptr %i.j, align 8, !noalias !443
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.bp = fadd <2 x float> %i.bm, %i.bo
  %i.bq = fmul <2 x float> %i.bp, splat (float 5.000000e-01)
  %i.br = fadd float %.sroa.0.sroa.5.0.copyload.i46.i.i.i.i.i, %.sroa.0.sroa.6.0.copyload.i48.i.i.i.i.i
  %i.bs = fmul float %i.br, 5.000000e-01
  %i.bt = getelementptr inbounds nuw i8, ptr %18, i64 216 ; 6 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.bt, align 8, !noalias !443
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 224 ; 6 uses
  %.sroa.24.0.copyload.i.i.i.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 8, !noalias !443
  %i.bu = call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SpENS_6Point3IfEENS_7Normal3IfEE(ptr noundef nonnull align 8 dereferenceable(80) %9, <2 x float> %i.bq, float %i.bs, <2 x float> %.sroa.03.0.copyload.i.i.i.i.i, float %.sroa.24.0.copyload.i.i.i.i.i), !noalias !443 ; 2 uses
  %i.bv = extractvalue { <2 x float>, <2 x float> } %i.bu, 0 ; 4 uses
  store <2 x float> %i.bv, ptr %i.bl, align 8, !alias.scope !443
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bx = extractvalue { <2 x float>, <2 x float> } %i.bu, 1 ; 2 uses
  store <2 x float> %i.bx, ptr %i.bw, align 8, !alias.scope !443
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store i64 %i.p, ptr %i.by, align 8, !tbaa !189, !alias.scope !443
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 40
  store <2 x float> %i.af, ptr %i.bz, align 8, !alias.scope !443
  %.sroa.7.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ca = extractelement <2 x float> %i.ac, i64 0
  store float %i.ca, ptr %.sroa.7.8..sroa_idx.i.i.i.i.i, align 8, !alias.scope !443
  %.sroa.8.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 52
  store <2 x float> %i.al, ptr %.sroa.8.8..sroa_idx.i.i.i.i.i, align 4, !alias.scope !443
  %.sroa.9.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 60
  store float %i.as, ptr %.sroa.9.8..sroa_idx.i.i.i.i.i, align 4, !alias.scope !443
  %.sroa.10.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 3 uses
  store <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, ptr %.sroa.10.8..sroa_idx.i.i.i.i.i, align 8, !alias.scope !443
  %.sroa.11.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 3 uses
  store float %.sroa.228.0.copyload.i.i.i.i.i, ptr %.sroa.11.8..sroa_idx.i.i.i.i.i, align 8, !alias.scope !443
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  store <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, ptr %i.cb, align 8, !alias.scope !443
  %.sroa.555.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 88
  store float %.sroa.228.0.copyload.i.i.i.i.i, ptr %.sroa.555.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !443
  %i.cc = load <2 x float>, ptr %11, align 8      ; 2 uses
  %i.cd = load <2 x float>, ptr %i.bj, align 8    ; 2 uses
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x float> %i.ce
  %i.cf = fcmp une <4 x float> %.fr, zeroinitializer
  %i.cg = bitcast <4 x i1> %i.cf to i4
  %.not = icmp eq i4 %i.cg, 0
  %i.ch = extractelement <2 x float> %i.bv, i64 0
  br i1 %.not, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ci = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr32 = freeze <4 x float> %i.ci               ; 2 uses
  %i.cj = fcmp une <4 x float> %.fr32, zeroinitializer
  %i.ck = bitcast <4 x i1> %i.cj to i4
  %.not33 = icmp eq i4 %i.ck, 0
  br i1 %.not33, label %bb.w, label %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit.i.i.i.i

_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit.i.i.i.i: ; preds = %bb.c
  %i.cl = load float, ptr %i.f, align 8, !tbaa !187
  %i.cm = fmul float %i.ch, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 152
  %.sroa.0.0.copyload4.i.i.i.i.i = load <2 x float>, ptr %i.cn, align 8
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 160
  %.sroa.8.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !92
  %i.co = fmul <2 x float> %i.cc, %.sroa.0.0.copyload4.i.i.i.i.i
  %i.cp = fmul <2 x float> %i.cd, %.sroa.8.0.copyload.i.i.i.i.i
  %i.cq = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = fdiv <2 x float> %i.co, %i.cr           ; 2 uses
  %i.ct = fdiv <2 x float> %i.cp, %i.cr           ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 168
  %.sroa.0.0.copyload4.i199.i.i.i.i = load <2 x float>, ptr %19, align 8
  %.sroa.8.0..sroa_idx.i200.i.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 176
  %.sroa.8.0.copyload.i201.i.i.i.i = load <2 x float>, ptr %.sroa.8.0..sroa_idx.i200.i.i.i.i, align 8, !tbaa !92
  %20 = shufflevector <2 x float> %.sroa.0.0.copyload4.i199.i.i.i.i, <2 x float> %.sroa.8.0.copyload.i201.i.i.i.i, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = fmul <4 x float> %.fr32, %20
  %i.cv = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cw = fdiv <4 x float> %i.cu, %i.cv           ; 7 uses
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.cy = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.cz = getelementptr inbounds nuw i8, ptr %18, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cz, i64 32, i1 false), !tbaa.struct !190
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.db = getelementptr inbounds nuw i8, ptr %18, i64 308 ; 3 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !191
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !444, !noalias !445
  %i.de = sext i32 %i.dc to i64                   ; 2 uses
  %i.df = getelementptr inbounds [16 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dg = load <2 x float>, ptr %i.df, align 16, !noalias !445
  %.sroa.54.8.vec.extract.i.i.i.i.i.i = load float, ptr %.sroa.2.0..0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !92, !noalias !445
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !446, !noalias !445
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.di, i64 %i.de ; 2 uses
  %.sroa.0.0.copyload.i7.i.i.i.i.i.i = load <2 x float>, ptr %i.dj, align 16, !noalias !445 ; 2 uses
  %.sroa.01.4.vec.extract.i.i228.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i64 1
  %.sroa.0122.0.copyload.i.i.i.i = load <2 x float>, ptr %i.cb, align 8 ; 7 uses
  %.sroa.04.4.vec.extract.i.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.0122.0.copyload.i.i.i.i, i64 1 ; 3 uses
  %foldExtExtBinop13 = fmul <2 x float> %.sroa.027.0.copyload.i.i.i.i.i, %.sroa.0122.0.copyload.i.i.i.i
  %i.dk = extractelement <2 x float> %foldExtExtBinop13, i64 0
  %i.dl = fmul float %.sroa.01.4.vec.extract.i.i.i.i.i.i, %.sroa.04.4.vec.extract.i.i.i.i.i.i.i.i
  %i.dm = fadd float %i.dk, %i.dl
  %i.dn = fmul float %.sroa.228.0.copyload.i.i.i.i.i, %.sroa.228.0.copyload.i.i.i.i.i
  %i.do = fadd float %i.dn, %i.dm                 ; 2 uses
  %i.dp = fcmp oeq float %i.do, 0.000000e+00
  br i1 %i.dp, label %_ZNK4pbrt4BSDF8Sample_fINS_21NormalizedFresnelBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK4pbrt3SOAINS_10RaySamplesEE16GetSetIndirectorcvS1_Ev.exit.i.i.i.i
  %.sroa.01.0.vec.extract.i.i227.i.i.i.i = extractelement <2 x float> %.sroa.0.0.copyload.i7.i.i.i.i.i.i, i64 0
  %.sroa.2.0..0..sroa_idx.i8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.2.0.copyload.i931.i.i650.i.i.i.i = load <2 x float>, ptr %.sroa.2.0..0..sroa_idx.i8.i.i.i.i.i.i, align 8, !tbaa !92, !noalias !445
  %i.dq = insertelement <2 x float> poison, float %.sroa.228.0.copyload.i.i.i.i.i, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x float> %i.ac, float %i.as, i64 1
  %i.dt = fmul <2 x float> %i.dr, %i.ds
  %i.du = shufflevector <2 x float> %i.al, <2 x float> %i.ac, <2 x i32> <i32 3, i32 1>
  %i.dv = fmul <2 x float> %i.du, %.sroa.0122.0.copyload.i.i.i.i
  %i.dw = shufflevector <2 x float> %i.al, <2 x float> %i.ae, <2 x i32> <i32 2, i32 0>
  %i.dx = shufflevector <2 x float> %.sroa.0122.0.copyload.i.i.i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dy = fmul <2 x float> %i.dw, %i.dx
  %i.dz = fadd <2 x float> %i.dy, %i.dv
  %i.ea = fadd <2 x float> %i.dt, %i.dz
  %i.eb = and i64 %i.o, 144115188075855868
  %i.ec = inttoptr i64 %i.eb to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !447
  call void @_ZNK4pbrt21NormalizedFresnelBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::BSDFSample") align 4 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.ec, <2 x float> %i.ea, float %i.do, float noundef %.sroa.01.0.vec.extract.i.i227.i.i.i.i, <2 x float> %.sroa.2.0.copyload.i931.i.i650.i.i.i.i, i32 noundef 0, i32 noundef 3), !noalias !447
  %i.ed = load <4 x float>, ptr %8, align 16, !noalias !447
  %.fr34 = freeze <4 x float> %i.ed               ; 2 uses
  %.sroa.9.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.9.0.copyload.i.i.i.i.i = load <2 x float>, ptr %.sroa.9.0..sroa_idx.i.i.i.i.i, align 16, !noalias !447
  %.sroa.11.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.11.0.copyload.i.i.i.i.i = load float, ptr %.sroa.11.0..sroa_idx.i.i.i.i.i, align 8, !noalias !447 ; 2 uses
  %.sroa.14.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.sroa.14.0.copyload.i.i.i.i.i = load float, ptr %.sroa.14.0..sroa_idx.i.i.i.i.i, align 4, !noalias !447 ; 3 uses
  %.sroa.15.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.15.i.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.15.0..sroa_idx.i.i.i.i.i, align 16, !noalias !447 ; 2 uses
  %.sroa.15.i.sroa.4.0..sroa.15.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 36
  %.sroa.15.i.sroa.4.0.copyload.i.i.i.i = load float, ptr %.sroa.15.i.sroa.4.0..sroa.15.0..sroa_idx.i.sroa_idx.i.i.i.i, align 4, !noalias !447 ; 2 uses
  %.sroa.15.i.sroa.5.0..sroa.15.0..sroa_idx.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  %.sroa.15.i.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.15.i.sroa.5.0..sroa.15.0..sroa_idx.i.sroa_idx.i.i.i.i, align 8, !noalias !447
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !447
  %i.ee = fcmp une <4 x float> %.fr34, zeroinitializer
  %i.ef = bitcast <4 x i1> %i.ee to i4
  %i.eg = icmp eq i4 %i.ef, 0
  %i.eh = fcmp oeq float %.sroa.14.0.copyload.i.i.i.i.i, 0.000000e+00
  %or.cond.i231.i.i.i.i = select i1 %i.eg, i1 true, i1 %i.eh
  %i.ei = fcmp oeq float %.sroa.11.0.copyload.i.i.i.i.i, 0.000000e+00
  %or.cond65.i.i.i.i.i = select i1 %or.cond.i231.i.i.i.i, i1 true, i1 %i.ei
  br i1 %or.cond65.i.i.i.i.i, label %_ZNK4pbrt4BSDF8Sample_fINS_21NormalizedFresnelBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ej = call { <2 x float>, float } @_ZNK4pbrt4BSDF13LocalToRenderENS_7Vector3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %i.by, <2 x float> %.sroa.9.0.copyload.i.i.i.i.i, float %.sroa.11.0.copyload.i.i.i.i.i), !noalias !447 ; 2 uses
  %.fca.1.extract.i.i.i.i.i = extractvalue { <2 x float>, float } %i.ej, 1 ; 7 uses
  %.fca.0.extract.i.i.i.i.i = extractvalue { <2 x float>, float } %i.ej, 0 ; 4 uses
  %.sroa.0100.0.copyload.i.i.i.i = load <2 x float>, ptr %i.m, align 4 ; 2 uses
  %.sroa.2101.0.copyload.i.i.i.i = load float, ptr %.sroa.228.0..sroa_idx.i.i.i.i.i, align 4 ; 2 uses
  %.sroa.01.0.vec.extract.i.i247.i.i.i.i = extractelement <2 x float> %.sroa.0100.0.copyload.i.i.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i.i.i, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i248.i.i.i.i = extractelement <2 x float> %.sroa.0100.0.copyload.i.i.i.i, i64 1
  %.sroa.04.4.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.fca.0.extract.i.i.i.i.i, i64 1 ; 4 uses
  %i.ek = fmul float %.fca.1.extract.i.i.i.i.i, %.sroa.2101.0.copyload.i.i.i.i ; 2 uses
  %i.el = call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i248.i.i.i.i, float %.sroa.04.4.vec.extract.i.i.i.i.i.i, float %i.ek)
  %i.em = fneg float %i.ek
  %i.en = call noundef float @llvm.fma.f32(float %.sroa.2101.0.copyload.i.i.i.i, float %.fca.1.extract.i.i.i.i.i, float %i.em)
  %i.eo = fadd float %i.el, %i.en
  %i.ep = call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i247.i.i.i.i, float %.sroa.04.0.vec.extract.i.i.i.i.i.i, float %i.eo)
  %i.eq = call noundef float @llvm.fabs.f32(float %i.ep)
  %i.er = shufflevector <2 x float> %i.cs, <2 x float> %i.ct, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.es = fmul <4 x float> %i.er, %.fr34
  %i.et = insertelement <4 x float> poison, float %i.eq, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = fmul <4 x float> %i.es, %i.eu
  %i.ew = insertelement <4 x float> poison, float %.sroa.14.0.copyload.i.i.i.i.i, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = fdiv <4 x float> %i.ev, %i.ex           ; 6 uses
  %i.ez = trunc nuw i8 %.sroa.15.i.sroa.5.0.copyload.i.i.i.i to i1
  br i1 %i.ez, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit276.i.i.i.i, label %bb.g

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit276.i.i.i.i: ; preds = %bb.e
  %.sroa.05.0.copyload.i.i.i279.i.i.i.i = load <2 x float>, ptr %.sroa.10.8..sroa_idx.i.i.i.i.i, align 8 ; 3 uses
  %.sroa.26.0.copyload.i.i.i281.i.i.i.i = load float, ptr %.sroa.11.8..sroa_idx.i.i.i.i.i, align 8 ; 2 uses
  %foldExtExtBinop15 = fmul <2 x float> %.sroa.0122.0.copyload.i.i.i.i, %.sroa.05.0.copyload.i.i.i279.i.i.i.i
  %i.fa = extractelement <2 x float> %foldExtExtBinop15, i64 0
  %.sroa.01.4.vec.extract.i37.i.i.i283.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i279.i.i.i.i, i64 1 ; 2 uses
  %i.fb = fmul float %.sroa.04.4.vec.extract.i.i.i.i.i.i.i.i, %.sroa.01.4.vec.extract.i37.i.i.i283.i.i.i.i
  %i.fc = fadd float %i.fa, %i.fb
  %i.fd = fmul float %.sroa.228.0.copyload.i.i.i.i.i, %.sroa.26.0.copyload.i.i.i281.i.i.i.i
  %i.fe = fadd float %i.fd, %i.fc                 ; 2 uses
  %i.ff = fcmp oeq float %i.fe, 0.000000e+00
  br i1 %i.ff, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit276.i.i.i.i
  %i.fg = fmul float %.fca.1.extract.i.i.i.i.i, %.sroa.26.0.copyload.i.i.i281.i.i.i.i
  %foldExtExtBinop17 = fmul <2 x float> %.fca.0.extract.i.i.i.i.i, %.sroa.05.0.copyload.i.i.i279.i.i.i.i
  %i.fh = extractelement <2 x float> %foldExtExtBinop17, i64 0
  %i.fi = fmul float %.sroa.04.4.vec.extract.i.i.i.i.i.i, %.sroa.01.4.vec.extract.i37.i.i.i283.i.i.i.i
  %i.fj = fadd float %i.fh, %i.fi
  %i.fk = fadd float %i.fg, %i.fj                 ; 2 uses
  %i.fl = fmul float %i.fe, %i.fk
  %i.fm = fcmp ogt float %i.fl, 0.000000e+00
  %i.fn = call float @llvm.fabs.f32(float %i.fk)
  %i.fo = fmul float %i.fn, f0x3EA2F983
  %.0.i.i.i.i.i.i = select i1 %i.fm, float %i.fo, float 0.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit276.i.i.i.i, %bb.e
  %.0.i.sink669.i.i.i.i = phi float [ 0.000000e+00, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit276.i.i.i.i ], [ %.0.i.i.i.i.i.i, %bb.f ], [ %.sroa.14.0.copyload.i.i.i.i.i, %bb.e ]
  %i.fp = insertelement <2 x float> poison, float %.0.i.sink669.i.i.i.i, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fr = fdiv <2 x float> %i.cx, %i.fq
  %i.fs = fdiv <2 x float> %i.cy, %i.fq
  %i.ft = getelementptr inbounds nuw i8, ptr %18, i64 304
  %i.fu = load float, ptr %i.ft, align 8, !tbaa !192 ; 2 uses
  %i.fv = and i32 %.sroa.15.i.sroa.0.0.copyload.i.i.i.i, 2
  %.not.i.i.i.i = icmp eq i32 %i.fv, 0
  %i.fw = fmul float %.sroa.15.i.sroa.4.0.copyload.i.i.i.i, %.sroa.15.i.sroa.4.0.copyload.i.i.i.i
  %i.fx = fmul float %i.fw, %i.fu
  %.0163.i.i.i.i = select i1 %.not.i.i.i.i, float %i.fu, float %i.fx ; 5 uses
  %i.fy = extractelement <4 x float> %i.ey, i64 0
  %i.fz = fmul float %i.fy, %.0163.i.i.i.i
  %i.ga = extractelement <4 x float> %i.ey, i64 1
  %i.gb = fmul float %i.ga, %.0163.i.i.i.i
  %i.gc = extractelement <4 x float> %i.ey, i64 2
  %i.gd = fmul float %i.gc, %.0163.i.i.i.i
  %i.ge = extractelement <4 x float> %i.ey, i64 3
  %i.gf = fmul float %i.ge, %.0163.i.i.i.i
  %shift19 = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop20 = fadd <4 x float> %i.cw, %shift19
  %shift22 = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop23 = fadd <4 x float> %foldExtExtBinop20, %shift22
  %shift25 = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop26 = fadd <4 x float> %shift25, %foldExtExtBinop23
  %i.gg = extractelement <4 x float> %foldExtExtBinop26, i64 0
  %i.gh = fmul float %i.gg, 2.500000e-01          ; 4 uses
  %i.gi = fdiv float %i.fz, %i.gh                 ; 2 uses
  %i.gj = fdiv float %i.gb, %i.gh                 ; 2 uses
  %i.gk = fdiv float %i.gd, %i.gh                 ; 2 uses
  %i.gl = fdiv float %i.gf, %i.gh                 ; 2 uses
  %i.gm = fcmp olt float %i.gi, %i.gj
  %.sroa.speculated.i.i.i.i.i = select i1 %i.gm, float %i.gj, float %i.gi ; 2 uses
  %i.gn = fcmp olt float %.sroa.speculated.i.i.i.i.i, %i.gk
  %.sroa.speculated.1.i.i.i.i.i = select i1 %i.gn, float %i.gk, float %.sroa.speculated.i.i.i.i.i ; 2 uses
  %i.go = fcmp olt float %.sroa.speculated.1.i.i.i.i.i, %i.gl
  %.sroa.speculated.2.i.i.i.i.i = select i1 %i.go, float %i.gl, float %.sroa.speculated.1.i.i.i.i.i ; 2 uses
  %i.gp = fcmp olt float %.sroa.speculated.2.i.i.i.i.i, 1.000000e+00
  %i.gq = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = icmp sgt i32 %i.gr, 1
  %or.cond.i.i.i = select i1 %i.gp, i1 %i.gs, i1 false
  br i1 %or.cond.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.gt = fsub float 1.000000e+00, %.sroa.speculated.2.i.i.i.i.i ; 2 uses
  %i.gu = fcmp ogt float %i.gt, 0.000000e+00
  %.sroa.speculated.i.i.i.i = select i1 %i.gu, float %i.gt, float 0.000000e+00 ; 2 uses
  %i.gv = fcmp olt float %.sroa.01.4.vec.extract.i.i228.i.i.i.i, %.sroa.speculated.i.i.i.i
  br i1 %i.gv, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gw = fsub float 1.000000e+00, %.sroa.speculated.i.i.i.i
  %i.gx = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = fdiv <4 x float> %i.ey, %i.gy
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0510.0.i.i.i.i = phi <4 x float> [ %i.ey, %bb.g ], [ %i.gz, %bb.i ], [ zeroinitializer, %bb.h ]
  %.sroa.0510.0.i.i.i.i.fr = freeze <4 x float> %.sroa.0510.0.i.i.i.i ; 3 uses
  %i.ha = fcmp une <4 x float> %.sroa.0510.0.i.i.i.i.fr, zeroinitializer
  %i.hb = bitcast <4 x i1> %i.ha to i4
  %.not35 = icmp eq i4 %i.hb, 0
  br i1 %.not35, label %_ZNK4pbrt4BSDF8Sample_fINS_21NormalizedFresnelBxDFEEEN4pstd8optionalINS_10BSDFSampleEEENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE.exit.thread.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.077.0.copyload.i.i.i.i = load <2 x float>, ptr %i.bt, align 8
end_hunk_0
begin_hunk_1_@_ZN4pbrt9WorkQueueINS_17ShadowRayWorkItemEE4PushES1_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !494
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.f
  store float %i.ar, ptr %i.au, align 4, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !90
  %i.ba = getelementptr inbounds [16 x i8], ptr %i.az, i64 %i.f ; 2 uses
  %i.bb = load <4 x float>, ptr %i.av, align 4
  %.sroa.03.4.vec.insert.i.i = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bc = load <4 x float>, ptr %i.aw, align 4
  %.sroa.35.12.vec.insert.i.i = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %.sroa.03.4.vec.insert.i.i, ptr %i.ba, align 16
  %.sroa.2.0..0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store <2 x float> %.sroa.35.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i.i.i, align 8, !tbaa !92
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !91
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.be, i64 %i.f ; 2 uses
  %i.bg = load <4 x float>, ptr %i.ax, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %i.bg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.bf, align 16
  %.sroa.2.0..0..sroa_idx.i28.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.2.0..0..sroa_idx.i28.i.i, align 8, !tbaa !92
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !93
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.bj, i64 %i.f ; 2 uses
  %i.bl = load <4 x float>, ptr %i.bh, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i12.i = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i13.i = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i12.i, ptr %i.bk, align 16
  %.sroa.2.0..0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i13.i, ptr %.sroa.2.0..0..sroa_idx.i.i14.i, align 8, !tbaa !92
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !93
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.bo, i64 %i.f ; 2 uses
  %i.bq = load <4 x float>, ptr %i.bm, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i17.i = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i18.i = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i17.i, ptr %i.bp, align 16
  %.sroa.2.0..0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.2.0..0..sroa_idx.i.i19.i, align 8, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !93
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.f ; 2 uses
  %i.bv = load <4 x float>, ptr %i.br, align 4    ; 2 uses
  %.sroa.0.4.vec.insert.i22.i = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i23.i = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i22.i, ptr %i.bu, align 16
  %.sroa.2.0..0..sroa_idx.i.i24.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23.i, ptr %.sroa.2.0..0..sroa_idx.i.i24.i, align 8, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !218
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !495
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.f
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !105
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SpENS_6Point3IfEENS_7Normal3IfEE(ptr noundef nonnull align 8 dereferenceable(80) %0, <2 x float> %1, float %2, <2 x float> %3, float %4) local_unnamed_addr #9 comdat align 2 {
_ZN4pbrt6Tuple3INS_7Normal3EfEixEi.exit.2:
  %.sroa.033.0.copyload = load <2 x float>, ptr %0, align 8 ; 2 uses
  %.sroa.234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.234.0.copyload = load float, ptr %.sroa.234.0..sroa_idx, align 8
  %foldExtExtBinop = fsub <2 x float> %1, %.sroa.033.0.copyload ; 2 uses
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop121 = fsub <2 x float> %1, %.sroa.033.0.copyload
  %i.b = extractelement <2 x float> %foldExtExtBinop121, i64 1 ; 3 uses
  %i.c = fsub float %2, %.sroa.234.0.copyload     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.025.0.copyload = load <2 x float>, ptr %i.d, align 8 ; 5 uses
  %.sroa.226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.226.0.copyload = load float, ptr %.sroa.226.0..sroa_idx, align 8 ; 5 uses
  %.sroa.01.0.vec.extract.i.i = extractelement <2 x float> %.sroa.025.0.copyload, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i = extractelement <2 x float> %.sroa.025.0.copyload, i64 1 ; 7 uses
  %i.e = tail call noundef float @llvm.copysign.f32(float 1.000000e+00, float %.sroa.226.0.copyload) ; 5 uses
  %i.f = fadd float %.sroa.226.0.copyload, %i.e
  %i.g = fdiv float -1.000000e+00, %i.f           ; 3 uses
  %i.h = fmul float %.sroa.01.0.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.i = fmul float %i.h, %i.g                    ; 3 uses
  %foldExtExtBinop123 = fmul <2 x float> %.sroa.025.0.copyload, %.sroa.025.0.copyload
  %i.j = extractelement <2 x float> %foldExtExtBinop123, i64 0
  %i.k = fmul float %i.e, %i.j
  %i.l = fmul float %i.k, %i.g
  %i.m = fadd float %i.l, 1.000000e+00            ; 2 uses
  %i.n = fmul float %i.e, %i.i                    ; 2 uses
  %i.o = fneg float %i.e
  %i.p = fmul float %.sroa.01.0.vec.extract.i.i, %i.o ; 3 uses
  %i.q = fmul float %.sroa.01.4.vec.extract.i.i, %.sroa.01.4.vec.extract.i.i
  %i.r = fmul float %i.q, %i.g
  %i.s = fadd float %i.e, %i.r                    ; 2 uses
  %i.t = fmul float %i.a, %i.m
  %i.u = fmul float %i.b, %i.n
  %i.v = fadd float %i.t, %i.u
  %i.w = fmul float %i.c, %i.p
  %i.x = fadd float %i.w, %i.v                    ; 2 uses
  %i.y = fmul float %i.a, %i.i
  %i.z = fmul float %i.b, %i.s
  %i.aa = fadd float %i.y, %i.z
  %i.ab = fmul float %i.c, %.sroa.01.4.vec.extract.i.i
  %i.ac = fsub float %i.aa, %i.ab                 ; 2 uses
  %foldExtExtBinop125 = fmul <2 x float> %foldExtExtBinop, %.sroa.025.0.copyload
  %i.ad = extractelement <2 x float> %foldExtExtBinop125, i64 0
  %i.ae = fmul float %i.b, %.sroa.01.4.vec.extract.i.i
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = fmul float %i.c, %.sroa.226.0.copyload
  %i.ah = fadd float %i.ag, %i.af                 ; 2 uses
  %i.ai = fmul float %i.ac, %i.ac                 ; 2 uses
  %i.aj = fmul float %i.ah, %i.ah                 ; 2 uses
  %i.ak = fadd float %i.aj, %i.ai
  %sqrt115 = tail call float @llvm.sqrt.f32(float %i.ak)
  %i.al = fmul float %i.x, %i.x                   ; 2 uses
  %i.am = fadd float %i.al, %i.ai
  %sqrt = tail call float @llvm.sqrt.f32(float %i.am)
  %i.an = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt115) ; 2 uses
  %i.ao = fadd float %i.aj, %i.al
  %sqrt114 = tail call float @llvm.sqrt.f32(float %i.ao)
  %i.ap = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt114) ; 2 uses
  %i.aq = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF6PDF_SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %sqrt) ; 2 uses
  %i.ar = extractvalue { <2 x float>, <2 x float> } %i.aq, 1
  %i.as = extractvalue { <2 x float>, <2 x float> } %i.aq, 0
  %i.at = extractvalue { <2 x float>, <2 x float> } %i.an, 1
  %.sroa.04.0.vec.extract.i.i51 = extractelement <2 x float> %3, i64 0 ; 3 uses
  %i.au = fmul float %4, %i.p                     ; 2 uses
  %i.av = fneg float %i.au
  %.sroa.04.4.vec.extract.i.i53 = extractelement <2 x float> %3, i64 1 ; 3 uses
  %i.aw = extractvalue { <2 x float>, <2 x float> } %i.ap, 1
  %i.ax = fneg float %.sroa.01.4.vec.extract.i.i  ; 2 uses
  %i.ay = fmul float %4, %i.ax                    ; 2 uses
  %i.az = fneg float %i.ay
  %i.ba = extractvalue { <2 x float>, <2 x float> } %i.an, 0
  %i.bb = extractvalue { <2 x float>, <2 x float> } %i.ap, 0
  %i.bc = fmul float %4, %.sroa.226.0.copyload    ; 2 uses
  %i.bd = fneg float %i.bc
  %i.be = tail call noundef float @llvm.fma.f32(float %4, float %i.p, float %i.av)
  %i.bf = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %i.n, float %i.au)
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %i.m, float %i.bg)
  %i.bi = tail call noundef float @llvm.fabs.f32(float %i.bh)
  %i.bj = tail call noundef float @llvm.fma.f32(float %4, float %i.ax, float %i.az)
  %i.bk = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %i.s, float %i.ay)
  %i.bl = fadd float %i.bj, %i.bk
  %i.bm = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %i.i, float %i.bl)
  %i.bn = tail call noundef float @llvm.fabs.f32(float %i.bm)
  %i.bo = shufflevector <2 x float> %i.ba, <2 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bp = insertelement <4 x float> poison, float %i.bi, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = fmul <4 x float> %i.bo, %i.bq
  %i.bs = fmul <4 x float> %i.br, splat (float 2.500000e-01)
  %i.bt = fadd <4 x float> %i.bs, zeroinitializer
  %i.bu = shufflevector <2 x float> %i.bb, <2 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul <4 x float> %i.bu, %i.bw
  %i.by = fmul <4 x float> %i.bx, splat (float 2.500000e-01)
  %i.bz = fadd <4 x float> %i.bt, %i.by
  %i.ca = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i.i53, float %.sroa.01.4.vec.extract.i.i, float %i.bc)
  %i.cb = tail call noundef float @llvm.fma.f32(float %4, float %.sroa.226.0.copyload, float %i.bd)
  %i.cc = fadd float %i.ca, %i.cb
  %i.cd = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i.i51, float %.sroa.01.0.vec.extract.i.i, float %i.cc)
  %i.ce = tail call noundef float @llvm.fabs.f32(float %i.cd)
  %i.cf = shufflevector <2 x float> %i.as, <2 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cg = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ci = fmul <4 x float> %i.cf, %i.ch
  %i.cj = fmul <4 x float> %i.ci, splat (float 5.000000e-01)
  %i.ck = fadd <4 x float> %i.bz, %i.cj           ; 2 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.cl, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.cm, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt15TabulatedBSSRDF2SrEf(ptr noundef nonnull align 8 dereferenceable(80) %0, float noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::SampledSpectrum", align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %bb.c

bb.b:                                             ; preds = %bb.r
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.e, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !92
  %3 = shufflevector <2 x float> %.sroa.0.0.copyload, <2 x float> %.sroa.2.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.k = fmul <4 x float> %3, %3
  %i.l = load <4 x float>, ptr %2, align 16, !tbaa !96
  %i.m = fmul <4 x float> %i.k, %i.l              ; 2 uses
  %i.n = fcmp ogt <4 x float> %i.m, zeroinitializer
  %i.o = select <4 x i1> %i.n, <4 x float> %i.m, <4 x float> zeroinitializer ; 2 uses
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.q = shufflevector <4 x float> %i.o, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.p, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i

bb.c:                                             ; preds = %bb.a, %bb.r
  %indvars.iv61 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next62, %bb.r ] ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv61
  %i.s = load float, ptr %i.r, align 4, !tbaa !96
  %i.t = fmul float %1, %i.s                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !142  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !130
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !131
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv61
  %i.aa = load float, ptr %i.z, align 4, !tbaa !96
  %i.ab = call noundef zeroext i1 @_ZN4pbrt17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS1_IfEE(ptr %i.w, i64 %i.y, float noundef %i.aa, ptr noundef nonnull %i.a, ptr nonnull %i.c, i64 4)
  br i1 %i.ab, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !142 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !130
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !131
  %i.ah = call noundef zeroext i1 @_ZN4pbrt17CatmullRomWeightsEN4pstd4spanIKfEEfPiNS1_IfEE(ptr %i.ae, i64 %i.ag, float noundef %i.t, ptr noundef nonnull %i.b, ptr nonnull %i.d, i64 4)
  br i1 %i.ah, label %.preheader36, label %bb.r

.preheader36:                                     ; preds = %bb.d
  %i.ai = load i32, ptr %i.a, align 4
  %i.aj = load i32, ptr %i.b, align 4             ; 5 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = load float, ptr %i.d, align 16
  %i.am = load float, ptr %i.h, align 4           ; 2 uses
  %i.an = load float, ptr %i.i, align 8           ; 2 uses
  %i.ao = load float, ptr %i.j, align 4           ; 2 uses
  %i.ap = icmp sgt i32 %i.aj, -1
  %i.aq = add nsw i64 %i.ak, 1                    ; 2 uses
  %i.ar = icmp sgt i32 %i.aj, -2
  %i.as = add nsw i64 %i.ak, 2                    ; 2 uses
  %i.at = icmp sgt i32 %i.aj, -3
  %i.au = add nsw i64 %i.ak, 3                    ; 2 uses
  %i.av = icmp sgt i32 %i.aj, -4
  br label %.preheader

.preheader:                                       ; preds = %.preheader36, %.split46.us
  %indvars.iv = phi i64 [ 0, %.preheader36 ], [ %indvars.iv.next, %.split46.us ] ; 3 uses
  %.02653 = phi float [ 0.000000e+00, %.preheader36 ], [ %.us-phi, %.split46.us ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !96 ; 7 uses
  %i.ay = trunc i64 %indvars.iv to i32
  %i.az = add i32 %i.ai, %i.ay
  %.fr56 = freeze i32 %i.az                       ; 2 uses
  %i.ba = icmp sgt i32 %.fr56, -1
  %i.bb = zext nneg i32 %.fr56 to i64             ; 8 uses
  %i.bc = fmul float %i.ax, %i.al                 ; 2 uses
  %i.bd = fcmp une float %i.bc, 0.000000e+00      ; 2 uses
  br i1 %i.ba, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %i.be = fmul float %i.ax, %i.am
  %i.bf = fcmp une float %i.be, 0.000000e+00
  %or.cond = select i1 %i.bd, i1 true, i1 %i.bf
  %i.bg = fmul float %i.ax, %i.an
  %i.bh = fcmp une float %i.bg, 0.000000e+00
  %or.cond80 = select i1 %or.cond, i1 true, i1 %i.bh
  %i.bi = fmul float %i.ax, %i.ao
  %i.bj = fcmp une float %i.bi, 0.000000e+00
  %or.cond82 = select i1 %or.cond80, i1 true, i1 %i.bj
  br i1 %or.cond82, label %.split.us, label %.split46.us

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.bd, label %bb.e, label %.preheader.split.us.1

bb.e:                                             ; preds = %.preheader.split.us.preheader
  %i.bk = load ptr, ptr %i.f, align 8, !tbaa !142 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !131
  %i.bn = icmp ugt i64 %i.bm, %i.bb
  br i1 %i.bn, label %bb.f, label %.split.us

bb.f:                                             ; preds = %bb.e
  br i1 %i.ap, label %bb.g, label %.split44.us

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !131 ; 2 uses
  %i.bq = icmp ugt i64 %i.bp, %i.ak
  br i1 %i.bq, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us, label %.split44.us

_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us:   ; preds = %bb.g
  %i.br = mul i64 %i.bp, %i.bb
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !130
  %i.bu = getelementptr [4 x i8], ptr %i.bt, i64 %i.br
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %i.ak
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !96
  %i.bx = fmul float %i.bc, %i.bw
  %i.by = fadd float %.02653, %i.bx
  br label %.preheader.split.us.1

.preheader.split.us.1:                            ; preds = %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us, %.preheader.split.us.preheader
  %.2.us = phi float [ %i.by, %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us ], [ %.02653, %.preheader.split.us.preheader ] ; 2 uses
  %i.bz = fmul float %i.ax, %i.am                 ; 2 uses
  %i.ca = fcmp une float %i.bz, 0.000000e+00
  br i1 %i.ca, label %bb.h, label %.preheader.split.us.2

bb.h:                                             ; preds = %.preheader.split.us.1
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !142 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !131
  %i.ce = icmp ugt i64 %i.cd, %i.bb
  br i1 %i.ce, label %bb.i, label %.split.us

bb.i:                                             ; preds = %bb.h
  br i1 %i.ar, label %bb.j, label %.split44.us

bb.j:                                             ; preds = %bb.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 56
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !131 ; 2 uses
  %i.ch = icmp ugt i64 %i.cg, %i.aq
  br i1 %i.ch, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1, label %.split44.us

_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1: ; preds = %bb.j
  %i.ci = mul i64 %i.cg, %i.bb
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !130
  %i.cl = getelementptr [4 x i8], ptr %i.ck, i64 %i.ci
  %i.cm = getelementptr [4 x i8], ptr %i.cl, i64 %i.aq
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !96
  %i.co = fmul float %i.bz, %i.cn
  %i.cp = fadd float %.2.us, %i.co
  br label %.preheader.split.us.2

.preheader.split.us.2:                            ; preds = %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1, %.preheader.split.us.1
  %.2.us.1 = phi float [ %i.cp, %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.1 ], [ %.2.us, %.preheader.split.us.1 ] ; 2 uses
  %i.cq = fmul float %i.ax, %i.an                 ; 2 uses
  %i.cr = fcmp une float %i.cq, 0.000000e+00
  br i1 %i.cr, label %bb.k, label %.preheader.split.us.3

bb.k:                                             ; preds = %.preheader.split.us.2
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !142 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !131
  %i.cv = icmp ugt i64 %i.cu, %i.bb
  br i1 %i.cv, label %bb.l, label %.split.us

bb.l:                                             ; preds = %bb.k
  br i1 %i.at, label %bb.m, label %.split44.us

bb.m:                                             ; preds = %bb.l
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !131 ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, %i.as
  br i1 %i.cy, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.2, label %.split44.us

_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.2: ; preds = %bb.m
  %i.cz = mul i64 %i.cx, %i.bb
  %i.da = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !130
  %i.dc = getelementptr [4 x i8], ptr %i.db, i64 %i.cz
  %i.dd = getelementptr [4 x i8], ptr %i.dc, i64 %i.as
  %i.de = load float, ptr %i.dd, align 4, !tbaa !96
  %i.df = fmul float %i.cq, %i.de
  %i.dg = fadd float %.2.us.1, %i.df
  br label %.preheader.split.us.3

.preheader.split.us.3:                            ; preds = %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.2, %.preheader.split.us.2
  %.2.us.2 = phi float [ %i.dg, %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.2 ], [ %.2.us.1, %.preheader.split.us.2 ] ; 2 uses
  %i.dh = fmul float %i.ax, %i.ao                 ; 2 uses
  %i.di = fcmp une float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.n, label %.split46.us

bb.n:                                             ; preds = %.preheader.split.us.3
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !142 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !131
  %i.dm = icmp ugt i64 %i.dl, %i.bb
  br i1 %i.dm, label %bb.o, label %.split.us

bb.o:                                             ; preds = %bb.n
  br i1 %i.av, label %bb.p, label %.split44.us

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !131 ; 2 uses
  %i.dp = icmp ugt i64 %i.do, %i.au
  br i1 %i.dp, label %_ZNK4pbrt11BSSRDFTable11EvalProfileEii.exit.us.3, label %.split44.us
end_hunk_1
