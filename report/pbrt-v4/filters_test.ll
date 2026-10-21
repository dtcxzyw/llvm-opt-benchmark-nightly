Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/filters_test?download=true
inline.NumInlined: 633
inline.NumDeleted: 262
begin_hunk_0_@_ZN7testing7MessageD2Ev:bb.a

_ZN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.b
  br i1 %i.c, label %bb.c, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.c:                                             ; preds = %.noexc.i
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !31
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 32) #20
  br label %_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #19
  unreachable

_ZN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.a, %.noexc.i, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN26Filter_ZeroPastRadius_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.pbrt::Filter", align 8     ; 4 uses
  %26 = alloca %"class.pbrt::Filter", align 8     ; 4 uses
  %27 = alloca [5 x %"class.pbrt::Vector2"], align 4 ; 6 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %29 = alloca %"class.testing::Message", align 8 ; 8 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca float, align 4                    ; 6 uses
  %32 = alloca %"class.testing::Message", align 8 ; 8 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca float, align 4                    ; 6 uses
  %35 = alloca %"class.testing::Message", align 8 ; 8 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %37 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca float, align 4                    ; 6 uses
  %38 = alloca %"class.testing::Message", align 8 ; 8 uses
  %39 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca float, align 4                    ; 6 uses
  %41 = alloca %"class.testing::Message", align 8 ; 8 uses
  %42 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %43 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca float, align 4                    ; 6 uses
  %44 = alloca %"class.testing::Message", align 8 ; 8 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %i.n = alloca float, align 4                    ; 6 uses
  %47 = alloca %"class.testing::Message", align 8 ; 8 uses
  %48 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.o = alloca i32, align 4                      ; 5 uses
  %i.p = alloca float, align 4                    ; 6 uses
  %50 = alloca %"class.testing::Message", align 8 ; 8 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %52 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %i.r = alloca float, align 4                    ; 6 uses
  %53 = alloca %"class.testing::Message", align 8 ; 8 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %i.t = alloca float, align 4                    ; 6 uses
  %56 = alloca %"class.testing::Message", align 8 ; 8 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %i.v = alloca float, align 4                    ; 6 uses
  %59 = alloca %"class.testing::Message", align 8 ; 8 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.w = alloca i32, align 4                      ; 5 uses
  %i.x = alloca float, align 4                    ; 6 uses
  %62 = alloca %"class.testing::Message", align 8 ; 8 uses
  %63 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #18
  store <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.500000e+00, float 2.500000e-01, float 3.300000e-01, float 5.200000e+00, float 1.000000e-01, float 1.000000e-01>, ptr %27, align 4, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %27, i64 32
  store <2 x float> splat (float 3.000000e+00), ptr %i.y, align 4, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit
  %.046.idx1354 = phi i64 [ 0, %bb.a ], [ %.046.add, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit ] ; 2 uses
  %.046.ptr = getelementptr inbounds nuw i8, ptr %27, i64 %.046.idx1354
  %i.bj = load <2 x float>, ptr %.046.ptr, align 4 ; 11 uses
  %i.bk = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21, !noalias !110 ; 2 uses
  store <2 x float> %i.bj, ptr %i.bk, align 4, !noalias !110
  %i.bl = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #21, !noalias !110 ; 3 uses
  %i.bm = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #18, !noalias !110
  invoke void @_ZN4pbrt14GaussianFilterC2ENS_7Vector2IfEEfN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(200) %i.bl, <2 x float> %i.bj, float noundef 5.000000e-01, ptr %i.bm)
          to label %bb.d unwind label %bb.f, !noalias !110

bb.d:                                             ; preds = %bb.c
  %i.bn = call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #21, !noalias !110 ; 4 uses
  %i.bo = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #18, !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !110
  %64 = shufflevector <2 x float> %i.bj, <2 x float> splat (float f0x3EAAAAAB), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %64, ptr %i.bn, align 8, !noalias !110
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = or i64 %i.bq, 432345564227567616        ; 2 uses
  store i64 %i.br, ptr %26, align 8, !tbaa !34, !noalias !110
  invoke void @_ZN4pbrt13FilterSamplerC1ENS_6FilterEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(176) %i.bp, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %26, ptr %i.bo)
          to label %bb.e unwind label %bb.g, !noalias !110

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !110
  %i.bs = call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #21, !noalias !110 ; 5 uses
  %i.bt = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #18, !noalias !110
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !110
  store <2 x float> %i.bj, ptr %i.bs, align 8, !noalias !110
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float 3.000000e+00, ptr %i.bu, align 8, !tbaa !56, !noalias !110
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bw, 576460752303423488        ; 2 uses
  store i64 %i.bx, ptr %25, align 8, !tbaa !34, !noalias !110
  invoke void @_ZN4pbrt13FilterSamplerC1ENS_6FilterEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(176) %i.bv, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %25, ptr %i.bt)
          to label %"_ZZN26Filter_ZeroPastRadius_Test8TestBodyEvENK3$_0clERKN4pbrt7Vector2IfEE.exit" unwind label %bb.h, !noalias !110

bb.f:                                             ; preds = %bb.c
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 200) #20, !noalias !110
  br label %common.resume

bb.g:                                             ; preds = %bb.d
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 192) #20, !noalias !110
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef 192) #20, !noalias !110
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %bb.g, %bb.h, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit242
  %common.resume.op = phi { ptr, i32 } [ %.pn90.pn.pn.pn, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit242 ], [ %i.by, %bb.f ], [ %i.ca, %bb.h ], [ %i.bz, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZZN26Filter_ZeroPastRadius_Test8TestBodyEvENK3$_0clERKN4pbrt7Vector2IfEE.exit": ; preds = %bb.e
  %i.cb = ptrtoint ptr %i.bl to i64
  %i.cc = or i64 %i.cb, 288230376151711744
  %i.cd = ptrtoint ptr %i.bk to i64
  %i.ce = or i64 %i.cd, 144115188075855872
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !110
  %i.cf = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21, !noalias !110 ; 2 uses
  store <2 x float> %i.bj, ptr %i.cf, align 4, !noalias !110
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = or i64 %i.cg, 720575940379279360
  %i.ci = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21, !noalias !110 ; 8 uses
  store i64 %i.ce, ptr %i.ci, align 8, !tbaa !34, !noalias !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cc, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !34, !noalias !110
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %i.br, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !34, !noalias !110
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %i.bx, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !34, !noalias !110
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store i64 %i.ch, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !34, !noalias !110
  %.sroa.0886.4.vec.extract924 = extractelement <2 x float> %i.bj, i64 1 ; 6 uses
  %.sroa.0886.0.vec.extract = extractelement <2 x float> %i.bj, i64 0 ; 6 uses
  %i.cj = fmul float %.sroa.0886.0.vec.extract, 2.000000e+00 ; 2 uses
  %i.ck = fneg float %.sroa.0886.0.vec.extract    ; 4 uses
  %i.cl = fmul float %.sroa.0886.0.vec.extract, %i.ck ; 4 uses
  %i.cm = fmul float %.sroa.0886.0.vec.extract, -2.000000e+00 ; 2 uses
  %i.cn = fneg float %.sroa.0886.4.vec.extract924 ; 4 uses
  %i.co = fmul float %.sroa.0886.4.vec.extract924, 2.000000e+00 ; 2 uses
  %i.cp = fmul float %.sroa.0886.4.vec.extract924, %i.cn ; 4 uses
  %i.cq = fmul float %.sroa.0886.4.vec.extract924, -2.000000e+00 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 1>
  %i.cs = insertelement <4 x float> %i.cr, float %i.ck, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.cn, i64 2
  %i.cu = fpext <4 x float> %i.ct to <4 x double>
  %i.cv = fadd <4 x double> %i.cu, <double -1.000000e-03, double 1.000000e-03, double -1.000000e-03, double 1.000000e-03>
  %i.cw = fptrunc <4 x double> %i.cv to <4 x float> ; 6 uses
  %i.cx = extractelement <4 x float> %i.cw, i64 3 ; 7 uses
  %i.cy = call float @llvm.fabs.f32(float %i.cx)  ; 8 uses
  %i.cz = fmul float %i.cx, 2.000000e+00          ; 3 uses
  %i.da = fneg float %i.cx
  %i.db = fmul float %i.cx, %i.da                 ; 3 uses
  %i.dc = shufflevector <2 x float> %i.bj, <2 x float> poison, <8 x i32> <i32 poison, i32 1, i32 1, i32 poison, i32 poison, i32 0, i32 0, i32 poison>
  %i.dd = shufflevector <4 x float> %i.cw, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 1, i32 2, i32 poison, i32 poison, i32 3>
  %i.de = shufflevector <8 x float> %i.dd, <8 x float> %i.dc, <8 x i32> <i32 0, i32 9, i32 10, i32 3, i32 4, i32 13, i32 14, i32 7>
  %i.df = fmul <8 x float> %i.de, <float f0x40490FDB, float f0xC0490FDB, float f0x40490FDB, float f0x40490FDB, float f0x40490FDB, float f0xC0490FDB, float f0x40490FDB, float f0x40490FDB> ; 10 uses
  %i.dg = fmul <8 x float> %i.df, %i.df
  %i.dh = fsub <8 x float> splat (float 1.000000e+00), %i.dg
  %i.di = shufflevector <4 x float> %i.cw, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.dj = shufflevector <2 x float> %i.bj, <2 x float> %i.di, <2 x i32> <i32 0, i32 3>
  %i.dk = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dj) ; 5 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 0 ; 8 uses
  %i.dm = extractelement <4 x float> %i.cw, i64 2 ; 6 uses
  %i.dn = fmul float %i.dm, 2.000000e+00          ; 3 uses
  %i.do = fneg float %i.dm
  %i.dp = fmul float %i.dm, %i.do                 ; 3 uses
  %i.dq = extractelement <4 x float> %i.cw, i64 1 ; 7 uses
  %i.dr = call float @llvm.fabs.f32(float %i.dq)  ; 8 uses
  %i.ds = fmul float %i.dq, 2.000000e+00          ; 3 uses
  %i.dt = fneg float %i.dq
  %i.du = fmul float %i.dq, %i.dt                 ; 3 uses
  %i.dv = shufflevector <2 x float> %i.di, <2 x float> %i.bj, <2 x i32> <i32 0, i32 3>
  %i.dw = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dv) ; 5 uses
  %i.dx = extractelement <2 x float> %i.dw, i64 1 ; 8 uses
  %i.dy = fcmp oeq <8 x float> %i.dh, splat (float 1.000000e+00) ; 8 uses
  %i.dz = extractelement <4 x float> %i.cw, i64 0 ; 6 uses
  %i.ea = fmul float %i.dz, 2.000000e+00          ; 3 uses
  %i.eb = fneg float %i.dz
  %i.ec = fmul float %i.dz, %i.eb                 ; 3 uses
  %i.ed = extractelement <2 x float> %i.dw, i64 0 ; 7 uses
  %i.ee = insertelement <2 x float> %i.dw, float %i.dr, i64 0 ; 2 uses
  %i.ef = extractelement <2 x float> %i.dk, i64 1 ; 7 uses
  %i.eg = insertelement <2 x float> %i.dk, float %i.cy, i64 1 ; 2 uses
  %i.eh = extractelement <8 x i1> %i.dy, i64 0    ; 3 uses
  %i.ei = extractelement <8 x i1> %i.dy, i64 1    ; 2 uses
  %i.ej = extractelement <8 x i1> %i.dy, i64 2    ; 2 uses
  %i.ek = extractelement <8 x i1> %i.dy, i64 3    ; 3 uses
  %i.el = extractelement <8 x i1> %i.dy, i64 4    ; 3 uses
  %i.em = extractelement <8 x i1> %i.dy, i64 5    ; 2 uses
  %i.en = extractelement <8 x i1> %i.dy, i64 6    ; 2 uses
  %i.eo = extractelement <8 x i1> %i.dy, i64 7    ; 3 uses
  %i.ep = extractelement <8 x float> %i.df, i64 0 ; 6 uses
  %i.eq = extractelement <8 x float> %i.df, i64 1 ; 4 uses
  %i.er = extractelement <8 x float> %i.df, i64 2 ; 4 uses
  %i.es = extractelement <8 x float> %i.df, i64 3 ; 6 uses
  %i.et = extractelement <8 x float> %i.df, i64 4 ; 6 uses
  %i.eu = extractelement <8 x float> %i.df, i64 5 ; 4 uses
  %i.ev = extractelement <8 x float> %i.df, i64 6 ; 4 uses
  %i.ew = extractelement <8 x float> %i.df, i64 7 ; 6 uses
  br label %bb.i

_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit:     ; preds = %_ZN7testing15AssertionResultD2Ev.exit240
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef 40) #20
  %.046.add = add nuw nsw i64 %.046.idx1354, 8    ; 2 uses
  %.not = icmp eq i64 %.046.add, 40
  br i1 %.not, label %bb.b, label %bb.c

bb.i:                                             ; preds = %"_ZZN26Filter_ZeroPastRadius_Test8TestBodyEvENK3$_0clERKN4pbrt7Vector2IfEE.exit", %_ZN7testing15AssertionResultD2Ev.exit240
  %.sroa.0879.0.idx1353 = phi i64 [ 0, %"_ZZN26Filter_ZeroPastRadius_Test8TestBodyEvENK3$_0clERKN4pbrt7Vector2IfEE.exit" ], [ %.sroa.0879.0.add, %_ZN7testing15AssertionResultD2Ev.exit240 ] ; 2 uses
  %.sroa.0879.0.ptr = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.0879.0.idx1353
  %i.ex = load i64, ptr %.sroa.0879.0.ptr, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.ey = and i64 %i.ex, 144115188075855871
  %i.ez = inttoptr i64 %i.ey to ptr               ; 208 uses
  %i.fa = lshr i64 %i.ex, 57
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  %i.fc = add nsw i32 %i.fb, -1                   ; 12 uses
  switch i32 %i.fc, label %bb.ac [
    i32 0, label %bb.j
    i32 1, label %bb.l
    i32 2, label %bb.q
    i32 3, label %bb.x
  ]

bb.j:                                             ; preds = %bb.i
  %i.fd = load float, ptr %i.ez, align 4, !tbaa !58
  %i.fe = fcmp ult float %i.fd, 0.000000e+00
  br i1 %i.fe, label %_ZNK4pbrt6Filter8EvaluateENS_6Point2IfEE.exit.thread, label %bb.k

_ZNK4pbrt6Filter8EvaluateENS_6Point2IfEE.exit.thread: ; preds = %bb.j
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !11
  br label %bb.ad

bb.k:                                             ; preds = %bb.j
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !59
  %i.fh = fcmp ole float %i.cy, %i.fg
  %i.fi = uitofp i1 %i.fh to float
  br label %_ZNK4pbrt6Filter8EvaluateENS_6Point2IfEE.exit

bb.l:                                             ; preds = %bb.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fk = load float, ptr %i.fj, align 8, !tbaa !61 ; 4 uses
  %i.fl = fmul float %i.fk, f0x40C90FDB
  %i.fm = fmul float %i.fk, %i.fl
  %i.fn = call noundef float @sqrtf(float noundef %i.fm) #18
  %i.fo = fmul float %i.fk, 2.000000e+00
  %i.fp = fmul float %i.fk, %i.fo                 ; 2 uses
  %i.fq = fdiv float -0.000000e+00, %i.fp
  %i.fr = fmul ninf float %i.fq, f0x3FB8AA3B      ; 2 uses
  %i.fs = call noundef float @llvm.floor.f32(float %i.fr) ; 2 uses
  %i.ft = fsub float %i.fr, %i.fs                 ; 3 uses
  %i.fu = fptosi float %i.fs to i32
  %i.fv = call noundef float @llvm.fma.f32(float %i.ft, float f0x3DA00AC9, float f0x3E679A0B)
  %i.fw = call noundef float @llvm.fma.f32(float %i.ft, float %i.fv, float f0x3F321004)
  %i.fx = call noundef float @llvm.fma.f32(float %i.ft, float %i.fw, float 1.000000e+00)
  %i.fy = bitcast float %i.fx to i32              ; 2 uses
  %i.fz = lshr i32 %i.fy, 23
  %i.ga = add i32 %i.fu, -127
  %i.gb = add i32 %i.ga, %i.fz                    ; 3 uses
  %i.gc = icmp slt i32 %i.gb, -126
  br i1 %i.gc, label %_ZN4pbrt8GaussianEfff.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN20Filter_Integral_Test8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25)
          to label %bb.da unwind label %bb.dj

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153
  %i.lf = load ptr, ptr %40, align 8, !tbaa !25
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %39, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef 99, ptr noundef %i.lf)
          to label %bb.db unwind label %bb.dk

bb.db:                                            ; preds = %bb.da
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %bb.dc unwind label %bb.dl

bb.dc:                                            ; preds = %bb.db
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #18
  %i.lg = load ptr, ptr %40, align 8, !tbaa !25   ; 2 uses
  %i.lh = icmp eq ptr %i.lg, %i.go
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.dc
  %i.li = load i64, ptr %i.go, align 8, !tbaa !31
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  %i.lk = load ptr, ptr %38, align 8, !tbaa !28
  %.not.i.i.i161 = icmp eq ptr %i.lk, null
  br i1 %.not.i.i.i161, label %bb.do, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.ll = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i162 unwind label %bb.dg

.noexc.i.i162:                                    ; preds = %bb.dd
  br i1 %i.ll, label %bb.de, label %bb.do

bb.de:                                            ; preds = %.noexc.i.i162
  %i.lm = load ptr, ptr %38, align 8, !tbaa !28   ; 3 uses
  %i.ln = icmp eq ptr %i.lm, null
  br i1 %i.ln, label %bb.do, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !30
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(128) %i.lm) #18, !inline_history !0
  br label %bb.do

bb.dg:                                            ; preds = %bb.dd
  %i.lr = landingpad { ptr, i32 }
          catch ptr null
  %i.ls = extractvalue { ptr, i32 } %i.lr, 0
  call void @__clang_call_terminate(ptr %i.ls) #19
  unreachable

bb.dh:                                            ; preds = %bb.cx
  %i.lt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.di:                                            ; preds = %bb.cy
  %i.lu = landingpad { ptr, i32 }
          cleanup
  br label %.body155

bb.dj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i153
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.dk:                                            ; preds = %bb.da
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dl:                                            ; preds = %bb.db
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %39) #18
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.pn = phi { ptr, i32 } [ %i.lx, %bb.dl ], [ %i.lw, %bb.dk ] ; 2 uses
  %i.ly = load ptr, ptr %40, align 8, !tbaa !25   ; 2 uses
  %i.lz = icmp eq ptr %i.ly, %i.go
  br i1 %i.lz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.dm
  %i.ma = load i64, ptr %i.go, align 8, !tbaa !31
  %i.mb = add i64 %i.ma, 1
  call void @_ZdlPvm(ptr noundef %i.ly, i64 noundef %i.mb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.dj
  %.pn.pn = phi { ptr, i32 } [ %i.lv, %bb.dj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %.pn, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18
  br label %.body155

.body155:                                         ; preds = %bb.di, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i149, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ], [ %i.lu, %bb.di ], [ %i.la, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i149 ]
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #18
  br label %bb.dn

bb.dn:                                            ; preds = %.body155, %bb.dh
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body155 ], [ %i.lt, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #18
  br label %bb.dt

bb.do:                                            ; preds = %bb.df, %bb.de, %.noexc.i.i162, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18
  %.pr199 = load ptr, ptr %i.gl, align 8, !tbaa !20
  %.not.i.i.i167 = icmp eq ptr %.pr199, null
  br i1 %.not.i.i.i167, label %_ZN7testing15AssertionResultD2Ev.exit172, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.mc = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i168 unwind label %bb.ds

.noexc.i.i168:                                    ; preds = %bb.dp
  br i1 %i.mc, label %bb.dq, label %_ZN7testing15AssertionResultD2Ev.exit172

bb.dq:                                            ; preds = %.noexc.i.i168
  %i.md = load ptr, ptr %i.gl, align 8, !tbaa !20 ; 4 uses
  %i.me = icmp eq ptr %i.md, null
  br i1 %i.me, label %_ZN7testing15AssertionResultD2Ev.exit172, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.mf = load ptr, ptr %i.md, align 8, !tbaa !25 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169: ; preds = %bb.dr
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !31
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i170: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i169
  call void @_ZdlPvm(ptr noundef nonnull %i.md, i64 noundef 32) #20
  br label %_ZN7testing15AssertionResultD2Ev.exit172

bb.ds:                                            ; preds = %bb.dp
  %i.mk = landingpad { ptr, i32 }
          catch ptr null
  %i.ml = extractvalue { ptr, i32 } %i.mk, 0
  call void @__clang_call_terminate(ptr %i.ml) #19
  unreachable

_ZN7testing15AssertionResultD2Ev.exit172:         ; preds = %bb.cv, %bb.do, %.noexc.i.i168, %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.0175.0239, i64 8 ; 2 uses
  %.not204 = icmp eq ptr %i.mm, %i.gk
  br i1 %.not204, label %._crit_edge241, label %bb.cr

bb.dt:                                            ; preds = %bb.dn, %bb.cw
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.dn ], [ %i.kq, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18
  %.not.i.i.i173 = icmp eq ptr %i.gi, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit174, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.mn = getelementptr inbounds nuw i8, ptr %33, i64 16
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !69
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = ptrtoint ptr %i.gi to i64
  %i.mr = sub i64 %i.mp, %i.mq
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.mr) #20
  br label %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit174

_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit174:  ; preds = %bb.dt, %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18
  br label %bb.dv

bb.dv:                                            ; preds = %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit174, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit139, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit104, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit69
  %.pn54.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn54.pn.pn.pn.pn, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit69 ], [ %.pn47.pn.pn.pn.pn, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit104 ], [ %.pn40.pn.pn.pn.pn, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit139 ], [ %.pn.pn.pn.pn.pn, %_ZNSt6vectorIN4pbrt6FilterESaIS1_EED2Ev.exit174 ]
  resume { ptr, i32 } %.pn54.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN20Filter_Integral_Test8TestBodyEvENK3$_1clERKN4pbrt7Vector2IfEE"(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.pbrt::Filter", align 8      ; 4 uses
  %3 = alloca %"class.pbrt::Filter", align 8      ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21 ; 2 uses
  %.sroa.04.0.copyload = load <2 x float>, ptr %1, align 4
  store <2 x float> %.sroa.04.0.copyload, ptr %i.a, align 4
  %i.b = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #21 ; 3 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %1, align 4
  %i.c = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #18
  invoke void @_ZN4pbrt14GaussianFilterC2ENS_7Vector2IfEEfN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(200) %i.b, <2 x float> %.sroa.03.0.copyload, float noundef 5.000000e-01, ptr %i.c)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #21 ; 4 uses
  %.sroa.02.0.copyload = load <2 x float>, ptr %1, align 4
  %i.e = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %4 = shufflevector <2 x float> %.sroa.02.0.copyload, <2 x float> splat (float f0x3EAAAAAB), <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %4, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = or i64 %i.g, 432345564227567616          ; 2 uses
  store i64 %i.h, ptr %3, align 8, !tbaa !34
  invoke void @_ZN4pbrt13FilterSamplerC1ENS_6FilterEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %3, ptr %i.e)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.i = call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #21 ; 5 uses
  %.sroa.01.0.copyload = load <2 x float>, ptr %1, align 4
  %i.j = call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x float> %.sroa.01.0.copyload, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store float 3.000000e+00, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = or i64 %i.m, 576460752303423488          ; 2 uses
  store i64 %i.n, ptr %2, align 8, !tbaa !34
  invoke void @_ZN4pbrt13FilterSamplerC1ENS_6FilterEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(176) %i.l, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %2, ptr %i.j)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = or i64 %i.o, 288230376151711744
  %i.q = ptrtoint ptr %i.a to i64
  %i.r = or i64 %i.q, 144115188075855872
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.s = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21 ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %1, align 4
  store <2 x float> %.sroa.0.0.copyload, ptr %i.s, align 4
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = or i64 %i.t, 720575940379279360
  %i.v = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 7 uses
  store ptr %i.v, ptr %0, align 8, !tbaa !124
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !69
  store i64 %i.r, ptr %i.v, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !34
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.h, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 %i.n, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !34
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store i64 %i.u, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !125
  ret void

bb.e:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 200) #20
  br label %.body

bb.f:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 192) #20
  br label %.body

bb.g:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 192) #20
  br label %.body

.body:                                            ; preds = %bb.g, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.z, %bb.e ], [ %i.ab, %bb.g ], [ %i.aa, %bb.f ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL15integrateFilterN4pbrt6FilterE(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(8) %0) unnamed_addr #8 {
bb.a:
  %1 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %2 = alloca %class.anon.18, align 8             ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !34
  %i.b = and i64 %i.a, 144115188075855871
  %i.c = inttoptr i64 %i.b to ptr
  %.sroa.0.0.i.i.i = load <2 x float>, ptr %i.c, align 4 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %.sroa.08.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 0
  %i.d = fmul float %.sroa.08.0.vec.extract, 2.000000e+00
  %i.e = fmul float %i.d, 2.000000e+00
  %.sroa.07.4.vec.extract = extractelement <2 x float> %.sroa.0.0.i.i.i, i64 1
  %i.f = fmul float %.sroa.07.4.vec.extract, %i.e
  %i.g = fmul float %i.as, f0x37800000
  %i.h = fmul float %i.f, %i.g
  ret float %i.h

bb.c:                                             ; preds = %bb.a, %bb.c
  %.038 = phi float [ 0.000000e+00, %bb.a ], [ %i.as, %bb.c ]
  %.sroa.023.037 = phi i32 [ 0, %bb.a ], [ %i.at, %bb.c ] ; 2 uses
  %.sroa.827.036 = phi i64 [ 6364136223846793006, %bb.a ], [ %i.q, %bb.c ] ; 2 uses
  %i.i = insertelement <2 x i32> poison, i32 %.sroa.023.037, i64 0
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.k = and <2 x i32> %i.j, <i32 255, i32 poison>
  %i.l = lshr <2 x i32> %i.j, <i32 255, i32 8>
  %i.m = shufflevector <2 x i32> %i.k, <2 x i32> %i.l, <2 x i32> <i32 0, i32 3>
  %i.n = mul i64 %.sroa.827.036, 6364136223846793005
  %i.o = add i64 %i.n, 1                          ; 2 uses
  %i.p = mul i64 %i.o, 6364136223846793005
  %i.q = add i64 %i.p, 1
  %i.r = load i64, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.s = and i64 %i.r, 144115188075855871
  %i.t = inttoptr i64 %i.s to ptr                 ; 2 uses
  %.sroa.0.0.i.i.i17 = load <2 x float>, ptr %i.t, align 4 ; 2 uses
  %i.u = uitofp nneg <2 x i32> %i.m to <2 x float>
  %i.v = insertelement <2 x i64> poison, i64 %.sroa.827.036, i64 0
  %i.w = insertelement <2 x i64> %i.v, i64 %i.o, i64 1 ; 3 uses
  %i.x = lshr <2 x i64> %i.w, splat (i64 45)
  %i.y = lshr <2 x i64> %i.w, splat (i64 27)
  %i.z = xor <2 x i64> %i.x, %i.y
  %i.aa = trunc <2 x i64> %i.z to <2 x i32>       ; 2 uses
  %i.ab = lshr <2 x i64> %i.w, splat (i64 59)
  %i.ac = trunc nuw nsw <2 x i64> %i.ab to <2 x i32>
  %i.ad = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.aa, <2 x i32> %i.aa, <2 x i32> %i.ac)
  %i.ae = uitofp <2 x i32> %i.ad to <2 x float>
  %i.af = fmul nnan <2 x float> %i.ae, splat (float f0x2F800000) ; 2 uses
  %i.ag = fcmp olt <2 x float> %i.af, splat (float f0x3F7FFFFF)
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> splat (float f0x3F7FFFFF)
  %i.ai = fadd nnan <2 x float> %i.ah, %i.u
  %i.aj = fmul nnan <2 x float> %i.ai, splat (float 3.906250e-03) ; 2 uses
  %i.ak = fsub nnan <2 x float> splat (float 1.000000e+00), %i.aj
  %i.al = fmul <2 x float> %i.aj, %.sroa.0.0.i.i.i17
  %i.am = fmul <2 x float> %i.ak, %.sroa.0.0.i.i.i17
  %i.an = fsub <2 x float> %i.al, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> %i.an, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %1, ptr %2, align 8, !tbaa !126
  %i.ao = lshr i64 %i.r, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -1
  %i.ar = call noundef float @_ZN4pbrt6detail8DispatchIRZNKS_6Filter8EvaluateENS_6Point2IfEEEUlT_E_fNS_9BoxFilterENS_14GaussianFilterENS_14MitchellFilterENS_17LanczosSincFilterENS_14TriangleFilterEEET0_OS5_PKvi(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.t, i32 noundef %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.as = fadd float %.038, %i.ar                 ; 2 uses
  %i.at = add nuw nsw i32 %.sroa.023.037, 1       ; 2 uses
  %.not = icmp eq i32 %i.at, 65536
  br i1 %.not, label %bb.b, label %bb.c
}

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22Sinc_ZeroHandling_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN26Filter_ZeroPastRadius_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20Filter_Integral_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryImplI22Sinc_ZeroHandling_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestFactoryImplI22Sinc_ZeroHandling_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #21 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
end_hunk_1
