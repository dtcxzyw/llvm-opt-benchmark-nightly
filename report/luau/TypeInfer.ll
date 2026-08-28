Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13251
inline.NumDeleted: 4924
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau11TypeChecker5addTVEONS_4TypeE:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !406
  %i.e = load i32, ptr %1, align 8, !tbaa !549    ; 2 uses
  store i32 %i.e, ptr %2, align 8, !tbaa !549
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableMoveE, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void %i.h(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #35, !inline_history !1624
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.m = load i8, ptr %i.l, align 8, !tbaa !1173, !range !38, !noundef !39
  store i8 %i.m, ptr %i.k, align 8, !tbaa !1173
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 4 uses
  store i8 0, ptr %i.q, align 8, !tbaa !405
  %i.r = load i8, ptr %i.p, align 8, !tbaa !405, !range !38, !noundef !39
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.b, label %_ZN4Luau4TypeC2EOS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 3 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !230
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !10   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.y = load i64, ptr %i.x, align 8, !tbaa !69   ; 3 uses
  %i.z = icmp ult i64 %i.y, 16
  call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.u, ptr %i.n, align 8, !tbaa !10
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !231
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !231
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !69
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.c
  %i.ac = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.y, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i64 %i.ac, ptr %i.ae, align 8, !tbaa !69
  store ptr %i.v, ptr %i.o, align 8, !tbaa !10
  store i64 0, ptr %i.ad, align 8, !tbaa !69
  store i8 0, ptr %i.v, align 8, !tbaa !231
  store i8 1, ptr %i.q, align 8, !tbaa !405
  br label %_ZN4Luau4TypeC2EOS0_.exit

_ZN4Luau4TypeC2EOS0_.exit:                        ; preds = %bb.a, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !814
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !814
  %i.ai = invoke noundef ptr @_ZN4Luau9TypeArena7addTypeINS_4TypeEEEPKS2_T_(ptr noundef nonnull align 8 dereferenceable(184) %i.d, ptr noundef nonnull align 8 %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZN4Luau4TypeC2EOS0_.exit
  %i.aj = load i8, ptr %i.q, align 8, !tbaa !405, !range !38, !noundef !39
  %i.ak = trunc nuw i8 %i.aj to i1
  store i8 0, ptr %i.q, align 8, !tbaa !405
  br i1 %i.ak, label %bb.e, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.n, align 8, !tbaa !10  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !231
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.aq = load i32, ptr %2, align 8, !tbaa !549
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_9Unifiable5BoundIPKNS_4TypeEEENS1_5ErrorIS5_EENS_8FreeTypeENS_11GenericTypeENS_13PrimitiveTypeENS_13SingletonTypeENS_11BlockedTypeENS_20PendingExpansionTypeENS_12FunctionTypeENS_9TableTypeENS_13MetatableTypeENS_10ExternTypeENS_7AnyTypeENS_9UnionTypeENS_16IntersectionTypeENS_8LazyTypeENS_11UnknownTypeENS_9NeverTypeENS_12NegationTypeENS_12NoRefineTypeENS_24TypeFunctionInstanceTypeEEE9tableDtorE, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  invoke void %i.at(ptr noundef nonnull %i.i)
          to label %_ZN4Luau4TypeD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #34
  unreachable

_ZN4Luau4TypeD2Ev.exit:                           ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  ret ptr %i.ai

bb.g:                                             ; preds = %_ZN4Luau4TypeC2EOS0_.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau4TypeD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #35
  resume { ptr, i32 } %i.aw
}

declare noundef ptr @_ZN4Luau9TypeArena11addTypePackENS_11TypePackVarE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef align 8) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau11TypeChecker11addTypePackERKSt6vectorIPKNS_4TypeESaIS4_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2040) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau11TypeChecker11addTypePackERKSt6vectorIPKNS_4TypeESaIS4_EESt8optionalIPKNS_11TypePackVarEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr undef, i8 0)
  ret ptr %i.a
}

declare void @_ZN4Luau12FreeTypePackC1ENS_9TypeLevelE(ptr noundef nonnull align 8 dereferenceable(25), i64) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %i.w = alloca i64, align 8                      ; 6 uses
  %i.x = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %i.z = alloca i64, align 8                      ; 6 uses
  %i.aa = alloca i64, align 8                     ; 6 uses
  %9 = alloca %"class.std::optional.620", align 16 ; 61 uses
  %10 = alloca %"class.std::optional.620", align 16 ; 21 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"struct.Luau::TypeError", align 8 ; 13 uses
  %16 = alloca %"class.Luau::Variant", align 8    ; 9 uses
  %17 = alloca %"struct.Luau::GenericError", align 8 ; 12 uses
  %18 = alloca %"struct.Luau::ToStringOptions", align 8 ; 29 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.std::optional.620", align 16 ; 23 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %27 = alloca %"struct.Luau::TypeError", align 8 ; 14 uses
  %28 = alloca %"class.Luau::Variant", align 8    ; 10 uses
  %29 = alloca %"struct.Luau::SwappedGenericTypeParameter", align 8 ; 10 uses
  %30 = alloca %"struct.Luau::TypeError", align 8 ; 14 uses
  %31 = alloca %"class.Luau::Variant", align 8    ; 10 uses
  %32 = alloca %"struct.Luau::UnknownSymbol", align 8 ; 10 uses
  %33 = alloca %"struct.Luau::TypeError", align 8 ; 13 uses
  %34 = alloca %"class.Luau::Variant", align 8    ; 9 uses
  %35 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %36 = alloca %"class.std::vector.85", align 8   ; 22 uses
  %37 = alloca %"class.std::vector.85", align 8   ; 15 uses
  %38 = alloca %"class.std::vector.90", align 8   ; 32 uses
  %39 = alloca %"struct.Luau::TypeError", align 8 ; 13 uses
  %40 = alloca %"class.Luau::Variant", align 8    ; 9 uses
  %41 = alloca %"struct.Luau::GenericError", align 8 ; 12 uses
  %42 = alloca %"struct.Luau::ApplyTypeFunction", align 8 ; 22 uses
  %43 = alloca %"class.Luau::Variant", align 8    ; 5 uses
  %44 = alloca %"class.Luau::Variant", align 8    ; 5 uses
  %45 = alloca %"class.std::initializer_list", align 8 ; 5 uses
  %46 = alloca %"struct.Luau::TypeError", align 8 ; 21 uses
  %47 = alloca %"class.Luau::Variant", align 8    ; 17 uses
  %48 = alloca %"struct.Luau::IncorrectGenericParameterCount", align 8 ; 23 uses
  %49 = alloca %"class.std::map", align 8         ; 12 uses
  %50 = alloca %"class.std::optional.535", align 8 ; 8 uses
  %51 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %.sroa.01455.sroa.0 = alloca i64, align 8       ; 5 uses
  %.sroa.51456.sroa.0 = alloca i64, align 8       ; 5 uses
  %52 = alloca %"class.Luau::Variant", align 8    ; 7 uses
  %53 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %54 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %.sroa.01450.sroa.0 = alloca i64, align 8       ; 5 uses
  %.sroa.51451.sroa.0 = alloca i64, align 8       ; 5 uses
  %55 = alloca %"class.Luau::Variant", align 8    ; 7 uses
  %56 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %57 = alloca %"struct.Luau::Property", align 8  ; 14 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::optional", align 8    ; 2 uses
  %60 = alloca %"class.std::vector.543", align 8  ; 10 uses
  %61 = alloca %"class.std::optional.156", align 8 ; 8 uses
  %62 = alloca %"class.std::optional", align 8    ; 3 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %66 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %.sroa.01444.sroa.0 = alloca i64, align 8       ; 5 uses
  %.sroa.51445.sroa.0 = alloca i64, align 8       ; 5 uses
  %67 = alloca %"class.Luau::Variant", align 8    ; 7 uses
  %68 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %69 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %.sroa.01440.sroa.0 = alloca i64, align 8       ; 5 uses
  %.sroa.5.sroa.0 = alloca i64, align 8           ; 5 uses
  %70 = alloca %"class.Luau::Variant", align 8    ; 7 uses
  %71 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %74 = alloca %"struct.Luau::TableType", align 8 ; 9 uses
  %75 = alloca %"class.std::shared_ptr.133", align 8 ; 11 uses
  %76 = alloca %"struct.Luau::GenericTypeDefinitions", align 8 ; 12 uses
  %77 = alloca %"struct.Luau::FunctionType", align 8 ; 7 uses
  %78 = alloca %"class.std::vector.85", align 8   ; 6 uses
  %79 = alloca %"class.std::vector.90", align 8   ; 6 uses
  %80 = alloca %"class.std::optional.591", align 8 ; 8 uses
  %81 = alloca %"class.std::optional.660", align 8 ; 14 uses
  %82 = alloca %"struct.Luau::FunctionArgument", align 8 ; 14 uses
  %83 = alloca %"class.std::optional.660", align 8 ; 12 uses
  %84 = alloca %"struct.Luau::AstAttr::DeprecatedInfo", align 8 ; 20 uses
  %85 = alloca %"struct.Luau::WithPredicate.472", align 8 ; 7 uses
  %86 = alloca %"struct.Luau::UnionType", align 8 ; 9 uses
  %87 = alloca %"struct.Luau::IntersectionType", align 8 ; 9 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %89 = alloca %"class.std::allocator", align 1   ; 4 uses
  %90 = alloca %"struct.Luau::TypeError", align 8 ; 7 uses
  %91 = alloca %"class.Luau::Variant", align 8    ; 10 uses
  %92 = alloca %"struct.Luau::GenericError", align 8 ; 12 uses
  %93 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !30 ; 11 uses
  %i.ad = load i32, ptr @_ZN4Luau7AstRttiINS_16AstTypeReferenceEE5valueE, align 4, !tbaa !9
  %.not = icmp eq i32 %i.ac, %i.ad
  br i1 %.not, label %bb.b, label %bb.mh

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 10 uses
  store i8 0, ptr %i.ae, align 16, !tbaa !803
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !985, !range !38, !noundef !39
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %bb.ad

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.aj = load ptr, ptr %1, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !31 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  store ptr %i.al, ptr %11, align 8, !tbaa !230
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc unwind label %bb.aa

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.an = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #35
  store i64 %i.an, ptr %i.aa, align 8, !tbaa !656
  %i.ao = icmp ugt i64 %i.an, 15
  br i1 %i.ao, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.ap = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %.noexc551 unwind label %bb.aa ; 2 uses

.noexc551:                                        ; preds = %.noexc.i
  store ptr %i.ap, ptr %11, align 8, !tbaa !10
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !656
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !231
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc551, %bb.e
  %i.ar = phi ptr [ %i.ap, %.noexc551 ], [ %i.al, %bb.e ] ; 2 uses
  switch i64 %i.an, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.as = load i8, ptr %i.ak, align 1, !tbaa !231
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !231
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.ak, i64 %i.an, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.at = load i64, ptr %i.aa, align 8, !tbaa !656 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !69
  %i.av = load ptr, ptr %11, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.at
  store i8 0, ptr %i.aw, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1625 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.az, ptr %12, align 8, !tbaa !230
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc554 unwind label %bb.ab

.noexc554:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bb = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #35
  store i64 %i.bb, ptr %i.z, align 8, !tbaa !656
  %i.bc = icmp ugt i64 %i.bb, 15
  br i1 %i.bc, label %.noexc.i553, label %._crit_edge.i.i552

.noexc.i553:                                      ; preds = %bb.j
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef 0)
          to label %.noexc555 unwind label %bb.ab ; 2 uses

.noexc555:                                        ; preds = %.noexc.i553
  store ptr %i.bd, ptr %12, align 8, !tbaa !10
  %i.be = load i64, ptr %i.z, align 8, !tbaa !656
  store i64 %i.be, ptr %i.az, align 8, !tbaa !231
  br label %._crit_edge.i.i552

._crit_edge.i.i552:                               ; preds = %.noexc555, %bb.j
  %i.bf = phi ptr [ %i.bd, %.noexc555 ], [ %i.az, %bb.j ] ; 2 uses
  switch i64 %i.bb, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i552
  %i.bg = load i8, ptr %i.ay, align 1, !tbaa !231
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !231
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i552
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr nonnull align 1 %i.ay, i64 %i.bb, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i552
  %i.bh = load i64, ptr %i.z, align 8, !tbaa !656 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !69
  %i.bj = load ptr, ptr %12, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #35
  invoke void @_ZNK4Luau5Scope18lookupImportedTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.620") align 8 %10, ptr noundef nonnull align 8 dereferenceable(1040) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.n unwind label %bb.ac

bb.n:                                             ; preds = %bb.m
  %i.bl = load i8, ptr %i.ae, align 16, !tbaa !803, !range !38, !noundef !39
  %i.bm = trunc nuw i8 %i.bl to i1                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 16, !range !38
  %i.bp = trunc nuw i8 %i.bo to i1                ; 2 uses
  %or.cond.i = select i1 %i.bm, i1 %i.bp, i1 false
  br i1 %or.cond.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bq = load ptr, ptr %9, align 16, !tbaa !687  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !688
  %i.bt = load <2 x ptr>, ptr %10, align 16, !tbaa !806
  store <2 x ptr> %i.bt, ptr %9, align 16, !tbaa !806
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bv = load ptr, ptr %i.bu, align 16, !tbaa !688
  store ptr %i.bv, ptr %i.br, align 16, !tbaa !688
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %10, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = ptrtoint ptr %i.bq to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.by) #36
  br label %_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i.i

_ZNSt6vectorIN4Luau21GenericTypeDefinitionESaIS1_EEaSEOS3_.exit.i.i: ; preds = %bb.p, %bb.o
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !689 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !690
  %i.ce = load <2 x ptr>, ptr %i.ca, align 8, !tbaa !809
  store <2 x ptr> %i.ce, ptr %i.bz, align 8, !tbaa !809
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !690
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !690
  %.not.i.i.i.i.i4.i.i = icmp eq ptr %i.cb, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i4.i.i, label %_ZN4Luau7TypeFunaSEOS0_.exit.i, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE:bb.a
  %i.bsd = sub i64 %i.bsb, %i.bsc
  call void @_ZdlPvm(ptr noundef nonnull %i.bry, i64 noundef %i.bsd) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit:     ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, %bb.lx
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  %i.bse = load ptr, ptr %36, align 8, !tbaa !238 ; 3 uses
  %.not.i.i.i1041 = icmp eq ptr %i.bse, null
  br i1 %.not.i.i.i1041, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042, label %bb.ly

bb.ly:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit
  %i.bsf = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !239
  %i.bsh = ptrtoint ptr %i.bsg to i64
  %i.bsi = ptrtoint ptr %i.bse to i64
  %i.bsj = sub i64 %i.bsh, %i.bsi
  call void @_ZdlPvm(ptr noundef nonnull %i.bse, i64 noundef %i.bsj) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, %bb.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  br label %_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit

bb.lz:                                            ; preds = %.loopexit1566, %.loopexit.split-lp, %.loopexit1567, %.loopexit.split-lp1568, %.loopexit1604, %.loopexit.split-lp1605, %.loopexit1599, %.loopexit1594, %.loopexit.split-lp1595, %.loopexit1589, %.loopexit.split-lp1590, %bb.hf, %_ZN4Luau12GenericErrorD2Ev.exit847, %bb.jn, %bb.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, %bb.lu, %bb.hp
  %.pn539.pn.pn = phi { ptr, i32 } [ %i.arn, %bb.hp ], [ %.pn536.pn, %_ZN4Luau12GenericErrorD2Ev.exit847 ], [ %lpad.loopexit.split-lp1597, %.loopexit.split-lp1595 ], [ %.pn528.pn, %bb.jn ], [ %lpad.loopexit.split-lp1607, %.loopexit.split-lp1605 ], [ %lpad.loopexit.split-lp1570, %.loopexit.split-lp1568 ], [ %i.bdf, %bb.jx ], [ %.pn523.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %i.brp, %bb.lu ], [ %i.aqh, %bb.hf ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp1592, %.loopexit.split-lp1590 ], [ %lpad.loopexit1591, %.loopexit1589 ], [ %lpad.loopexit1596, %.loopexit1594 ], [ %lpad.loopexit1601, %.loopexit1599 ], [ %lpad.loopexit1606, %.loopexit1604 ], [ %lpad.loopexit1569, %.loopexit1567 ], [ %lpad.loopexit, %.loopexit1566 ]
  %i.bsk = load ptr, ptr %38, align 8, !tbaa !236 ; 3 uses
  %.not.i.i.i1043 = icmp eq ptr %i.bsk, null
  br i1 %.not.i.i.i1043, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bsl = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.bsm = load ptr, ptr %i.bsl, align 8, !tbaa !237
  %i.bsn = ptrtoint ptr %i.bsm to i64
  %i.bso = ptrtoint ptr %i.bsk to i64
  %i.bsp = sub i64 %i.bsn, %i.bso
  call void @_ZdlPvm(ptr noundef nonnull %i.bsk, i64 noundef %i.bsp) #36
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044: ; preds = %bb.lz, %bb.ma
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #35
  %i.bsq = load ptr, ptr %37, align 8, !tbaa !238 ; 3 uses
  %.not.i.i.i1045 = icmp eq ptr %i.bsq, null
  br i1 %.not.i.i.i1045, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046, label %bb.mb

bb.mb:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044
  %i.bsr = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.bss = load ptr, ptr %i.bsr, align 8, !tbaa !239
  %i.bst = ptrtoint ptr %i.bss to i64
  %i.bsu = ptrtoint ptr %i.bsq to i64
  %i.bsv = sub i64 %i.bst, %i.bsu
  call void @_ZdlPvm(ptr noundef nonnull %i.bsq, i64 noundef %i.bsv) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046: ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit1044, %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  %i.bsw = load ptr, ptr %36, align 8, !tbaa !238 ; 3 uses
  %.not.i.i.i1047 = icmp eq ptr %i.bsw, null
  br i1 %.not.i.i.i1047, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048, label %bb.mc

bb.mc:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046
  %i.bsx = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.bsy = load ptr, ptr %i.bsx, align 8, !tbaa !239
  %i.bsz = ptrtoint ptr %i.bsy to i64
  %i.bta = ptrtoint ptr %i.bsw to i64
  %i.btb = sub i64 %i.bsz, %i.bta
  call void @_ZdlPvm(ptr noundef nonnull %i.bsw, i64 noundef %i.btb) #36
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048

_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048: ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1046, %bb.mc
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  br label %bb.mg

_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit: ; preds = %_ZN4Luau12GenericErrorD2Ev.exit, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042, %bb.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724, %bb.cm, %_ZN4Luau15ToStringOptionsD2Ev.exit
  %.1 = phi ptr [ %i.acb, %bb.ei ], [ %.0256, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1042 ], [ %i.ra, %bb.cm ], [ %i.abf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit724 ], [ %i.ke, %_ZN4Luau15ToStringOptionsD2Ev.exit ], [ %i.iw, %_ZN4Luau12GenericErrorD2Ev.exit ]
  %i.btc = load i8, ptr %i.ae, align 16, !tbaa !803, !range !38, !noundef !39
  %i.btd = trunc nuw i8 %i.btc to i1
  store i8 0, ptr %i.ae, align 16, !tbaa !803
  br i1 %i.btd, label %bb.md, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit1052

bb.md:                                            ; preds = %_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit
  %i.bte = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.btf = load ptr, ptr %i.bte, align 8, !tbaa !689 ; 3 uses
  %.not.i.i.i.i.i.i.i.i1049 = icmp eq ptr %i.btf, null
  br i1 %.not.i.i.i.i.i.i.i.i1049, label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.btg = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bth = load ptr, ptr %i.btg, align 8, !tbaa !690
  %i.bti = ptrtoint ptr %i.bth to i64
  %i.btj = ptrtoint ptr %i.btf to i64
  %i.btk = sub i64 %i.bti, %i.btj
  call void @_ZdlPvm(ptr noundef nonnull %i.btf, i64 noundef %i.btk) #36
  br label %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050

_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050: ; preds = %bb.me, %bb.md
  %i.btl = load ptr, ptr %9, align 16, !tbaa !687 ; 3 uses
  %.not.i.i.i1.i.i.i.i.i1051 = icmp eq ptr %i.btl, null
  br i1 %.not.i.i.i1.i.i.i.i.i1051, label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit1052, label %bb.mf

bb.mf:                                            ; preds = %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050
  %i.btm = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.btn = load ptr, ptr %i.btm, align 16, !tbaa !688
  %i.bto = ptrtoint ptr %i.btn to i64
  %i.btp = ptrtoint ptr %i.btl to i64
  %i.btq = sub i64 %i.bto, %i.btp
  call void @_ZdlPvm(ptr noundef nonnull %i.btl, i64 noundef %i.btq) #36
  br label %_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit1052

_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev.exit1052: ; preds = %_ZN4Luau11TypeChecker17errorRecoveryTypeEPKNS_4TypeE.exit, %_ZNSt6vectorIN4Luau25GenericTypePackDefinitionESaIS1_EED2Ev.exit.i.i.i.i.i1050, %bb.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %bb.uu

bb.mg:                                            ; preds = %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048, %_ZN4Luau12GenericErrorD2Ev.exit791, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626, %bb.bp, %_ZN4Luau12GenericErrorD2Ev.exit591, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565
  %.pn539.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit626 ], [ %.pn509.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit727 ], [ %.pn502.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565 ], [ %.pn500, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit568 ], [ %i.fb, %bb.ai ], [ %.pn497.pn, %_ZN4Luau12GenericErrorD2Ev.exit591 ], [ %.pn491.pn.pn.pn, %bb.bp ], [ %.pn512.pn, %_ZN4Luau12GenericErrorD2Ev.exit791 ], [ %.pn539.pn.pn, %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1048 ]
  call void @_ZNSt14_Optional_baseIN4Luau7TypeFunELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1322

bb.mh:                                            ; preds = %bb.a
  %i.btr = load i32, ptr @_ZN4Luau7AstRttiINS_12AstTypeTableEE5valueE, align 4, !tbaa !9
  %.not1552 = icmp eq i32 %i.ac, %i.btr           ; 2 uses
  %..i1053 = select i1 %.not1552, ptr %2, ptr null
  br i1 %.not1552, label %bb.mi, label %bb.oy

bb.mi:                                            ; preds = %bb.mh
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #35
  %i.bts = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 3 uses
  store i32 0, ptr %i.bts, align 8, !tbaa !992
  %i.btt = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 2 uses
  store ptr null, ptr %i.btt, align 8, !tbaa !897
  %i.btu = getelementptr inbounds nuw i8, ptr %49, i64 24
  store ptr %i.bts, ptr %i.btu, align 8, !tbaa !989
  %i.btv = getelementptr inbounds nuw i8, ptr %49, i64 32
  store ptr %i.bts, ptr %i.btv, align 8, !tbaa !990
  %i.btw = getelementptr inbounds nuw i8, ptr %49, i64 40
  store i64 0, ptr %i.btw, align 8, !tbaa !991
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #35
  %i.btx = getelementptr inbounds nuw i8, ptr %50, i64 24 ; 2 uses
  store i8 0, ptr %i.btx, align 8, !tbaa !720
  %i.bty = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.btz = load ptr, ptr %i.bty, align 8, !tbaa !1650 ; 2 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bub = load i64, ptr %i.bua, align 8, !tbaa !1653 ; 2 uses
  %.idx1822 = mul nuw nsw i64 %i.bub, 56
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btz, i64 %.idx1822
  %.not4591798 = icmp eq i64 %i.bub, 0
  br i1 %.not4591798, label %._crit_edge1802, label %.lr.ph1801

.lr.ph1801:                                       ; preds = %bb.mi
  %i.bud = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bue = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bug = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.buh = getelementptr inbounds nuw i8, ptr %61, i64 32 ; 5 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.buj = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 7 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.bul = getelementptr inbounds nuw i8, ptr %57, i64 136 ; 2 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %57, i64 104
  %i.bun = getelementptr inbounds nuw i8, ptr %57, i64 120 ; 2 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %57, i64 80 ; 2 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %57, i64 88
  %i.buq = getelementptr inbounds nuw i8, ptr %57, i64 96
  %i.bur = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bus = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.but = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 4 uses
  %i.buu = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.buv = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.buw = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.bux = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 11 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 4 uses
  %i.buz = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 4 uses
  %i.bva = getelementptr inbounds nuw i8, ptr %55, i64 24 ; 3 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.bvc = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.bvd = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 11 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 4 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 4 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 3 uses
  %i.bvh = getelementptr inbounds nuw i8, ptr %52, i64 16
  br label %bb.mj

._crit_edge1802:                                  ; preds = %bb.nu, %bb.mi
  %i.bvi = getelementptr inbounds nuw i8, ptr %..i1053, i64 48 ; 2 uses
  %i.bvj = load ptr, ptr %i.bvi, align 8, !tbaa !884 ; 9 uses
  %.not460 = icmp eq ptr %i.bvj, null
  br i1 %.not460, label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.nv

bb.mj:                                            ; preds = %.lr.ph1801, %bb.nu
  %.03471799 = phi ptr [ %i.btz, %.lr.ph1801 ], [ %i.ccd, %bb.nu ] ; 11 uses
  %i.bvk = getelementptr inbounds nuw i8, ptr %.03471799, i64 32
  %i.bvl = load i32, ptr %i.bvk, align 8, !tbaa !1654 ; 2 uses
  switch i32 %i.bvl, label %bb.np [
    i32 1, label %.noexc.i1056
    i32 2, label %.noexc.i1079
    i32 3, label %bb.mw
  ]

.noexc.i1056:                                     ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01455.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51456.sroa.0)
  store i64 0, ptr %.sroa.01455.sroa.0, align 8
  store i64 0, ptr %.sroa.51456.sroa.0, align 8
  %i.bvm = getelementptr inbounds nuw i8, ptr %.03471799, i64 36
  %i.bvn = getelementptr inbounds nuw i8, ptr %.03471799, i64 52
  %i.bvo = load i8, ptr %i.bvn, align 4, !tbaa !853, !range !38, !noundef !39
  %i.bvp = trunc nuw i8 %i.bvo to i1              ; 2 uses
  %spec.select.i1054 = select i1 %i.bvp, ptr %i.bvm, ptr %.sroa.01455.sroa.0
  %.sroa.gep1453 = getelementptr inbounds nuw i8, ptr %.03471799, i64 44
  %spec.select.i1054.sroa.sel = select i1 %i.bvp, ptr %.sroa.gep1453, ptr %.sroa.51456.sroa.0
  %.sroa.3.0.i = load i64, ptr %spec.select.i1054.sroa.sel, align 4
  %.sroa.0.0.i = load i64, ptr %spec.select.i1054, align 4
  store i64 %.sroa.0.0.i, ptr %51, align 8
  store i64 %.sroa.3.0.i, ptr %i.bvc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #35
  store ptr %i.bvd, ptr %53, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #35
  store i64 28, ptr %i.q, align 8, !tbaa !656
  %i.bvq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc1057 unwind label %bb.mn ; 2 uses

.noexc1057:                                       ; preds = %.noexc.i1056
  store ptr %i.bvq, ptr %53, align 8, !tbaa !10
  %i.bvr = load i64, ptr %i.q, align 8, !tbaa !656 ; 3 uses
  store i64 %i.bvr, ptr %i.bvd, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.bvq, ptr noundef nonnull align 1 dereferenceable(28) @.str.149, i64 28, i1 false)
  store i64 %i.bvr, ptr %i.bve, align 8, !tbaa !69
  %i.bvs = load ptr, ptr %53, align 8, !tbaa !10
  %i.bvt = getelementptr inbounds nuw i8, ptr %i.bvs, i64 %i.bvr
  store i8 0, ptr %i.bvt, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #35
  store i32 18, ptr %52, align 8, !tbaa !251
  store ptr %i.bvg, ptr %i.bvf, align 8, !tbaa !230
  %i.bvu = load ptr, ptr %53, align 8, !tbaa !10  ; 2 uses
  %i.bvv = icmp eq ptr %i.bvu, %i.bvd
  br i1 %i.bvv, label %bb.mk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059

bb.mk:                                            ; preds = %.noexc1057
  %i.bvw = load i64, ptr %i.bve, align 8, !tbaa !69 ; 3 uses
  %i.bvx = icmp ult i64 %i.bvw, 16
  call void @llvm.assume(i1 %i.bvx)
  %i.bvy = add nuw nsw i64 %i.bvw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bvg, ptr noundef nonnull align 8 dereferenceable(1) %i.bvd, i64 %i.bvy, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059: ; preds = %.noexc1057
  store ptr %i.bvu, ptr %i.bvf, align 8, !tbaa !10
  %i.bvz = load i64, ptr %i.bvd, align 8, !tbaa !231
  store i64 %i.bvz, ptr %i.bvg, align 8, !tbaa !231
  %.pre1893 = load i64, ptr %i.bve, align 8, !tbaa !69
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061: ; preds = %bb.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059
  %i.bwa = phi i64 [ %i.bvw, %bb.mk ], [ %.pre1893, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059 ]
  store i64 %i.bwa, ptr %i.bvh, align 8, !tbaa !69
  store ptr %i.bvd, ptr %53, align 8, !tbaa !10
  store i64 0, ptr %i.bve, align 8, !tbaa !69
  store i8 0, ptr %i.bvd, align 8, !tbaa !231
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %51, ptr noundef nonnull align 8 %52)
          to label %bb.ml unwind label %bb.mo

bb.ml:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061
  %i.bwb = load i32, ptr %52, align 8, !tbaa !251
  %i.bwc = sext i32 %i.bwb to i64
  %i.bwd = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bwc
  %i.bwe = load ptr, ptr %i.bwd, align 8, !tbaa !16
  invoke void %i.bwe(ptr noundef nonnull %i.bvf)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063 unwind label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bwf = landingpad { ptr, i32 }
          catch ptr null
  %i.bwg = extractvalue { ptr, i32 } %i.bwf, 0
  call void @__clang_call_terminate(ptr %i.bwg) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063: ; preds = %bb.ml
  %i.bwh = load ptr, ptr %53, align 8, !tbaa !10  ; 2 uses
  %i.bwi = icmp eq ptr %i.bwh, %i.bvd
  br i1 %i.bwi, label %_ZN4Luau12GenericErrorD2Ev.exit1066, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063
  %i.bwj = load i64, ptr %i.bvd, align 8, !tbaa !231
  %i.bwk = add i64 %i.bwj, 1
  call void @_ZdlPvm(ptr noundef %i.bwh, i64 noundef %i.bwk) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1066

_ZN4Luau12GenericErrorD2Ev.exit1066:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01455.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51456.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  br label %bb.nu

bb.mn:                                            ; preds = %.noexc.i1056
  %i.bwl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1071

bb.mo:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061
  %i.bwm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bwn = load i32, ptr %52, align 8, !tbaa !251
  %i.bwo = sext i32 %i.bwn to i64
  %i.bwp = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bwo
  %i.bwq = load ptr, ptr %i.bwp, align 8, !tbaa !16
  invoke void %i.bwq(ptr noundef nonnull %i.bvf)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068 unwind label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bwr = landingpad { ptr, i32 }
          catch ptr null
  %i.bws = extractvalue { ptr, i32 } %i.bwr, 0
  call void @__clang_call_terminate(ptr %i.bws) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068: ; preds = %bb.mo
  %i.bwt = load ptr, ptr %53, align 8, !tbaa !10  ; 2 uses
  %i.bwu = icmp eq ptr %i.bwt, %i.bvd
  br i1 %i.bwu, label %_ZN4Luau12GenericErrorD2Ev.exit1071, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068
  %i.bwv = load i64, ptr %i.bvd, align 8, !tbaa !231
  %i.bww = add i64 %i.bwv, 1
  call void @_ZdlPvm(ptr noundef %i.bwt, i64 noundef %i.bww) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1071

_ZN4Luau12GenericErrorD2Ev.exit1071:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069, %bb.mn
  %.pn481 = phi { ptr, i32 } [ %i.bwl, %bb.mn ], [ %i.bwm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069 ], [ %i.bwm, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01455.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51456.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  br label %bb.ox

.noexc.i1079:                                     ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01450.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51451.sroa.0)
  store i64 0, ptr %.sroa.01450.sroa.0, align 8
  store i64 0, ptr %.sroa.51451.sroa.0, align 8
  %i.bwx = getelementptr inbounds nuw i8, ptr %.03471799, i64 36
  %i.bwy = getelementptr inbounds nuw i8, ptr %.03471799, i64 52
  %i.bwz = load i8, ptr %i.bwy, align 4, !tbaa !853, !range !38, !noundef !39
  %i.bxa = trunc nuw i8 %i.bwz to i1              ; 2 uses
  %spec.select.i1072 = select i1 %i.bxa, ptr %i.bwx, ptr %.sroa.01450.sroa.0
  %.sroa.gep1448 = getelementptr inbounds nuw i8, ptr %.03471799, i64 44
  %spec.select.i1072.sroa.sel = select i1 %i.bxa, ptr %.sroa.gep1448, ptr %.sroa.51451.sroa.0
  %.sroa.3.0.i1074 = load i64, ptr %spec.select.i1072.sroa.sel, align 4
  %.sroa.0.0.i1075 = load i64, ptr %spec.select.i1072, align 4
  store i64 %.sroa.0.0.i1075, ptr %54, align 8
  store i64 %.sroa.3.0.i1074, ptr %i.buw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #35
  store ptr %i.bux, ptr %56, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #35
  store i64 29, ptr %i.p, align 8, !tbaa !656
  %i.bxb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc1080 unwind label %bb.mt ; 2 uses

.noexc1080:                                       ; preds = %.noexc.i1079
  store ptr %i.bxb, ptr %56, align 8, !tbaa !10
  %i.bxc = load i64, ptr %i.p, align 8, !tbaa !656 ; 3 uses
  store i64 %i.bxc, ptr %i.bux, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bxb, ptr noundef nonnull align 1 dereferenceable(29) @.str.150, i64 29, i1 false)
  store i64 %i.bxc, ptr %i.buy, align 8, !tbaa !69
  %i.bxd = load ptr, ptr %56, align 8, !tbaa !10
  %i.bxe = getelementptr inbounds nuw i8, ptr %i.bxd, i64 %i.bxc
  store i8 0, ptr %i.bxe, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  store i32 18, ptr %55, align 8, !tbaa !251
  store ptr %i.bva, ptr %i.buz, align 8, !tbaa !230
  %i.bxf = load ptr, ptr %56, align 8, !tbaa !10  ; 2 uses
  %i.bxg = icmp eq ptr %i.bxf, %i.bux
  br i1 %i.bxg, label %bb.mq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082

bb.mq:                                            ; preds = %.noexc1080
  %i.bxh = load i64, ptr %i.buy, align 8, !tbaa !69 ; 3 uses
  %i.bxi = icmp ult i64 %i.bxh, 16
  call void @llvm.assume(i1 %i.bxi)
  %i.bxj = add nuw nsw i64 %i.bxh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bva, ptr noundef nonnull align 8 dereferenceable(1) %i.bux, i64 %i.bxj, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082: ; preds = %.noexc1080
  store ptr %i.bxf, ptr %i.buz, align 8, !tbaa !10
  %i.bxk = load i64, ptr %i.bux, align 8, !tbaa !231
  store i64 %i.bxk, ptr %i.bva, align 8, !tbaa !231
  %.pre1892 = load i64, ptr %i.buy, align 8, !tbaa !69
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084: ; preds = %bb.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082
  %i.bxl = phi i64 [ %i.bxh, %bb.mq ], [ %.pre1892, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082 ]
  store i64 %i.bxl, ptr %i.bvb, align 8, !tbaa !69
  store ptr %i.bux, ptr %56, align 8, !tbaa !10
  store i64 0, ptr %i.buy, align 8, !tbaa !69
  store i8 0, ptr %i.bux, align 8, !tbaa !231
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef nonnull align 8 %55)
          to label %bb.mr unwind label %bb.mu

bb.mr:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084
  %i.bxm = load i32, ptr %55, align 8, !tbaa !251
  %i.bxn = sext i32 %i.bxm to i64
  %i.bxo = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bxn
  %i.bxp = load ptr, ptr %i.bxo, align 8, !tbaa !16
  invoke void %i.bxp(ptr noundef nonnull %i.buz)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1086 unwind label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.bxq = landingpad { ptr, i32 }
          catch ptr null
  %i.bxr = extractvalue { ptr, i32 } %i.bxq, 0
  call void @__clang_call_terminate(ptr %i.bxr) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1086: ; preds = %bb.mr
  %i.bxs = load ptr, ptr %56, align 8, !tbaa !10  ; 2 uses
  %i.bxt = icmp eq ptr %i.bxs, %i.bux
  br i1 %i.bxt, label %_ZN4Luau12GenericErrorD2Ev.exit1089, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1087

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1087: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1086
  %i.bxu = load i64, ptr %i.bux, align 8, !tbaa !231
  %i.bxv = add i64 %i.bxu, 1
  call void @_ZdlPvm(ptr noundef %i.bxs, i64 noundef %i.bxv) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1089

_ZN4Luau12GenericErrorD2Ev.exit1089:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1086, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1087
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01450.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51451.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #35
  br label %bb.nu

bb.mt:                                            ; preds = %.noexc.i1079
  %i.bxw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1094

bb.mu:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084
  %i.bxx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bxy = load i32, ptr %55, align 8, !tbaa !251
  %i.bxz = sext i32 %i.bxy to i64
  %i.bya = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bxz
  %i.byb = load ptr, ptr %i.bya, align 8, !tbaa !16
  invoke void %i.byb(ptr noundef nonnull %i.buz)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091 unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.byc = landingpad { ptr, i32 }
          catch ptr null
  %i.byd = extractvalue { ptr, i32 } %i.byc, 0
  call void @__clang_call_terminate(ptr %i.byd) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091: ; preds = %bb.mu
  %i.bye = load ptr, ptr %56, align 8, !tbaa !10  ; 2 uses
  %i.byf = icmp eq ptr %i.bye, %i.bux
  br i1 %i.byf, label %_ZN4Luau12GenericErrorD2Ev.exit1094, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1092

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1092: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091
  %i.byg = load i64, ptr %i.bux, align 8, !tbaa !231
  %i.byh = add i64 %i.byg, 1
  call void @_ZdlPvm(ptr noundef %i.bye, i64 noundef %i.byh) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1094

_ZN4Luau12GenericErrorD2Ev.exit1094:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1092, %bb.mt
  %.pn478 = phi { ptr, i32 } [ %i.bxw, %bb.mt ], [ %i.bxx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1092 ], [ %i.bxx, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01450.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51451.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #35
  br label %bb.ox

bb.mw:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #35
  %i.byi = getelementptr inbounds nuw i8, ptr %.03471799, i64 24
  %i.byj = load ptr, ptr %i.byi, align 8, !tbaa !1656 ; 2 uses
  %i.byk = invoke noundef ptr @_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.byj)
          to label %.noexc1095 unwind label %bb.nj, !inline_history !644 ; 2 uses

.noexc1095:                                       ; preds = %bb.mw
  %i.byl = load ptr, ptr %i.bud, align 8, !tbaa !298
  %i.bym = getelementptr inbounds nuw i8, ptr %i.byl, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #35
  store ptr %i.byj, ptr %i.o, align 8, !tbaa !645
  %i.byn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstTypeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.bym, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.mx unwind label %bb.nj, !inline_history !644

bb.mx:                                            ; preds = %.noexc1095
  store ptr %i.byk, ptr %i.byn, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #35
  store ptr %i.bue, ptr %58, align 8, !tbaa !230
  store i64 0, ptr %i.buf, align 8, !tbaa !69
  store i8 0, ptr %i.bue, align 8, !tbaa !231
  store i8 0, ptr %i.bug, align 8, !tbaa !853
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #35
  store i8 0, ptr %i.buh, align 8, !tbaa !405
  %i.byo = getelementptr inbounds nuw i8, ptr %.03471799, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %62, ptr noundef nonnull align 8 dereferenceable(16) %i.byo, i64 16, i1 false), !tbaa.struct !496
  store i8 1, ptr %i.bui, align 8, !tbaa !853
  invoke void @_ZN4Luau8PropertyC1EPKNS_4TypeEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalINS_8LocationEERKSt6vectorIS9_SaIS9_EERKSC_IS9_ESE_(ptr noundef nonnull align 8 dereferenceable(176) %57, ptr noundef %i.byk, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull byval(%"class.std::optional") align 8 %59, ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull byval(%"class.std::optional") align 8 %62)
          to label %bb.my unwind label %bb.nk

bb.my:                                            ; preds = %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #35
  %i.byp = load ptr, ptr %.03471799, align 8, !tbaa !1657 ; 4 uses
  store ptr %i.buj, ptr %63, align 8, !tbaa !230
  %i.byq = icmp eq ptr %i.byp, null
  br i1 %i.byq, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc1100 unwind label %.loopexit.split-lp1612

.noexc1100:                                       ; preds = %bb.mz
  unreachable

bb.na:                                            ; preds = %bb.my
  %i.byr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.byp) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #35
  store i64 %i.byr, ptr %i.n, align 8, !tbaa !656
  %i.bys = icmp ugt i64 %i.byr, 15
  br i1 %i.bys, label %.noexc.i1099, label %._crit_edge.i.i1098

.noexc.i1099:                                     ; preds = %bb.na
  %i.byt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc1101 unwind label %.loopexit1611 ; 2 uses

.noexc1101:                                       ; preds = %.noexc.i1099
  store ptr %i.byt, ptr %63, align 8, !tbaa !10
  %i.byu = load i64, ptr %i.n, align 8, !tbaa !656
  store i64 %i.byu, ptr %i.buj, align 8, !tbaa !231
  br label %._crit_edge.i.i1098

._crit_edge.i.i1098:                              ; preds = %.noexc1101, %bb.na
  %i.byv = phi ptr [ %i.byt, %.noexc1101 ], [ %i.buj, %bb.na ] ; 2 uses
  switch i64 %i.byr, label %bb.nc [
    i64 1, label %bb.nb
    i64 0, label %bb.nd
  ]

bb.nb:                                            ; preds = %._crit_edge.i.i1098
  %i.byw = load i8, ptr %i.byp, align 1, !tbaa !231
  store i8 %i.byw, ptr %i.byv, align 1, !tbaa !231
  br label %bb.nd

bb.nc:                                            ; preds = %._crit_edge.i.i1098
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.byv, ptr nonnull align 1 %i.byp, i64 %i.byr, i1 false)
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb, %._crit_edge.i.i1098
  %i.byx = load i64, ptr %i.n, align 8, !tbaa !656 ; 2 uses
  store i64 %i.byx, ptr %i.buk, align 8, !tbaa !69
  %i.byy = load ptr, ptr %63, align 8, !tbaa !10
  %i.byz = getelementptr inbounds nuw i8, ptr %i.byy, i64 %i.byx
  store i8 0, ptr %i.byz, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #35
  %i.bza = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.ne unwind label %bb.nl

bb.ne:                                            ; preds = %bb.nd
  %i.bzb = call noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSEOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.bza, ptr noundef nonnull align 8 dereferenceable(176) %57) #35 ; 0 uses
  %i.bzc = load ptr, ptr %63, align 8, !tbaa !10  ; 2 uses
  %i.bzd = icmp eq ptr %i.bzc, %i.buj
  br i1 %i.bzd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103: ; preds = %bb.ne
  %i.bze = load i64, ptr %i.buj, align 8, !tbaa !231
  %i.bzf = add i64 %i.bze, 1
  call void @_ZdlPvm(ptr noundef %i.bzc, i64 noundef %i.bzf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105: ; preds = %bb.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #35
  %i.bzg = load i8, ptr %i.bul, align 8, !tbaa !405, !range !38, !noundef !39
  %i.bzh = trunc nuw i8 %i.bzg to i1
  store i8 0, ptr %i.bul, align 8, !tbaa !405
  br i1 %i.bzh, label %bb.nf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.nf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105
  %i.bzi = load ptr, ptr %i.bum, align 8, !tbaa !10 ; 2 uses
  %i.bzj = icmp eq ptr %i.bzi, %i.bun
  br i1 %i.bzj, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1118: ; preds = %bb.nf
  %i.bzk = load i64, ptr %i.bun, align 8, !tbaa !231
  %i.bzl = add i64 %i.bzk, 1
  call void @_ZdlPvm(ptr noundef %i.bzi, i64 noundef %i.bzl) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105
  %i.bzm = load ptr, ptr %i.buo, align 8, !tbaa !900 ; 3 uses
  %i.bzn = load ptr, ptr %i.bup, align 8, !tbaa !901 ; 2 uses
  %.not4.i.i.i.i1106 = icmp eq ptr %i.bzm, %i.bzn
  br i1 %.not4.i.i.i.i1106, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113, label %.lr.ph.i.i.i.i1107

.lr.ph.i.i.i.i1107:                               ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109
  %.05.i.i.i.i1108 = phi ptr [ %i.bzt, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109 ], [ %i.bzm, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.bzo = load ptr, ptr %.05.i.i.i.i1108, align 8, !tbaa !10 ; 2 uses
  %i.bzp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1108, i64 16 ; 2 uses
  %i.bzq = icmp eq ptr %i.bzo, %i.bzp
  br i1 %i.bzq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i1107
  %i.bzr = load i64, ptr %i.bzp, align 8, !tbaa !231
  %i.bzs = add i64 %i.bzr, 1
  call void @_ZdlPvm(ptr noundef %i.bzo, i64 noundef %i.bzs) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109: ; preds = %.lr.ph.i.i.i.i1107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.bzt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1108, i64 32 ; 2 uses
  %.not.i.i.i.i1110 = icmp eq ptr %i.bzt, %i.bzn
  br i1 %.not.i.i.i.i1110, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1111, label %.lr.ph.i.i.i.i1107, !llvm.loop !902

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1111: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109
  %.pr.i.i1112 = load ptr, ptr %i.buo, align 8, !tbaa !900
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1111, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bzu = phi ptr [ %.pr.i.i1112, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1111 ], [ %i.bzm, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i1114 = icmp eq ptr %i.bzu, null
  br i1 %.not.i.i1.i.i1114, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115, label %bb.ng

bb.ng:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113
  %i.bzv = load ptr, ptr %i.buq, align 8, !tbaa !903
  %i.bzw = ptrtoint ptr %i.bzv to i64
  %i.bzx = ptrtoint ptr %i.bzu to i64
  %i.bzy = sub i64 %i.bzw, %i.bzx
  call void @_ZdlPvm(ptr noundef nonnull %i.bzu, i64 noundef %i.bzy) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115: ; preds = %bb.ng, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113
  %i.bzz = load ptr, ptr %i.bur, align 8, !tbaa !10 ; 2 uses
  %i.caa = icmp eq ptr %i.bzz, %i.bus
  br i1 %i.caa, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1116: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115
  %i.cab = load i64, ptr %i.bus, align 8, !tbaa !231
  %i.cac = add i64 %i.cab, 1
  call void @_ZdlPvm(ptr noundef %i.bzz, i64 noundef %i.cac) #36
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1116
  %i.cad = load i8, ptr %i.buh, align 8, !tbaa !405, !range !38, !noundef !39
  %i.cae = trunc nuw i8 %i.cad to i1
  store i8 0, ptr %i.buh, align 8, !tbaa !405
  br i1 %i.cae, label %bb.nh, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.nh:                                            ; preds = %_ZN4Luau8PropertyD2Ev.exit
  %i.caf = load ptr, ptr %61, align 8, !tbaa !10  ; 2 uses
  %i.cag = icmp eq ptr %i.caf, %i.but
  br i1 %i.cag, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.nh
  %i.cah = load i64, ptr %i.but, align 8, !tbaa !231
  %i.cai = add i64 %i.cah, 1
  call void @_ZdlPvm(ptr noundef %i.caf, i64 noundef %i.cai) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.nh, %_ZN4Luau8PropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  %i.caj = load ptr, ptr %60, align 8, !tbaa !900 ; 3 uses
  %i.cak = load ptr, ptr %i.buu, align 8, !tbaa !901 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.caj, %i.cak
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1120

.lr.ph.i.i.i1120:                                 ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.caq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.caj, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %i.cal = load ptr, ptr %.05.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.can = icmp eq ptr %i.cal, %i.cam
  br i1 %i.can, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1121: ; preds = %.lr.ph.i.i.i1120
  %i.cao = load i64, ptr %i.cam, align 8, !tbaa !231
  %i.cap = add i64 %i.cao, 1
  call void @_ZdlPvm(ptr noundef %i.cal, i64 noundef %i.cap) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i1120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1121
  %i.caq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1122 = icmp eq ptr %i.caq, %i.cak
  br i1 %.not.i.i.i1122, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i1120, !llvm.loop !902

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %60, align 8, !tbaa !900
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.car = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.caj, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.car, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ni

bb.ni:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cas = load ptr, ptr %i.buv, align 8, !tbaa !903
  %i.cat = ptrtoint ptr %i.cas to i64
  %i.cau = ptrtoint ptr %i.car to i64
  %i.cav = sub i64 %i.cat, %i.cau
  call void @_ZdlPvm(ptr noundef nonnull %i.car, i64 noundef %i.cav) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #35
  %i.caw = load ptr, ptr %58, align 8, !tbaa !10  ; 2 uses
  %i.cax = icmp eq ptr %i.caw, %i.bue
  br i1 %i.cax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.cay = load i64, ptr %i.bue, align 8, !tbaa !231
  %i.caz = add i64 %i.cay, 1
  call void @_ZdlPvm(ptr noundef %i.caw, i64 noundef %i.caz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #35
  br label %bb.nu

bb.nj:                                            ; preds = %.noexc1095, %bb.mw
  %i.cba = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

bb.nk:                                            ; preds = %bb.mx
  %i.cbb = landingpad { ptr, i32 }
          cleanup
  br label %bb.nm

.loopexit1611:                                    ; preds = %.noexc.i1099
  %lpad.loopexit1613 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129

.loopexit.split-lp1612:                           ; preds = %bb.mz
  %lpad.loopexit.split-lp1614 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129

bb.nl:                                            ; preds = %bb.nd
  %i.cbc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cbd = load ptr, ptr %63, align 8, !tbaa !10  ; 2 uses
  %i.cbe = icmp eq ptr %i.cbd, %i.buj
  br i1 %i.cbe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127: ; preds = %bb.nl
  %i.cbf = load i64, ptr %i.buj, align 8, !tbaa !231
  %i.cbg = add i64 %i.cbf, 1
  call void @_ZdlPvm(ptr noundef %i.cbd, i64 noundef %i.cbg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129: ; preds = %bb.nl, %.loopexit1611, %.loopexit.split-lp1612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127
  %.pn474 = phi { ptr, i32 } [ %i.cbc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127 ], [ %lpad.loopexit.split-lp1614, %.loopexit.split-lp1612 ], [ %lpad.loopexit1613, %.loopexit1611 ], [ %i.cbc, %bb.nl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #35
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %57) #35
  br label %bb.nm

bb.nm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129, %bb.nk
  %.pn474.pn = phi { ptr, i32 } [ %.pn474, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129 ], [ %i.cbb, %bb.nk ]
  %i.cbh = load i8, ptr %i.buh, align 8, !tbaa !405, !range !38, !noundef !39
  %i.cbi = trunc nuw i8 %i.cbh to i1
  store i8 0, ptr %i.buh, align 8, !tbaa !405
  br i1 %i.cbi, label %bb.nn, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132

bb.nn:                                            ; preds = %bb.nm
  %i.cbj = load ptr, ptr %61, align 8, !tbaa !10  ; 2 uses
  %i.cbk = icmp eq ptr %i.cbj, %i.but
  br i1 %i.cbk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1130: ; preds = %bb.nn
  %i.cbl = load i64, ptr %i.but, align 8, !tbaa !231
  %i.cbm = add i64 %i.cbl, 1
  call void @_ZdlPvm(ptr noundef %i.cbj, i64 noundef %i.cbm) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132: ; preds = %bb.nn, %bb.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1130
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %60) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #35
  %i.cbn = load ptr, ptr %58, align 8, !tbaa !10  ; 2 uses
  %i.cbo = icmp eq ptr %i.cbn, %i.bue
  br i1 %i.cbo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132
  %i.cbp = load i64, ptr %i.bue, align 8, !tbaa !231
  %i.cbq = add i64 %i.cbp, 1
  call void @_ZdlPvm(ptr noundef %i.cbn, i64 noundef %i.cbq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #35
  br label %bb.no

bb.no:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, %bb.nj
  %.pn474.pn.pn = phi { ptr, i32 } [ %.pn474.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135 ], [ %i.cba, %bb.nj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #35
  br label %bb.ox

bb.np:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #35
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, i32 noundef %i.bvl) #35
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr noundef nonnull @.str.151, ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %bb.nq unwind label %bb.ns

bb.nq:                                            ; preds = %bb.np
  invoke void @_ZN4Luau11TypeChecker3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(32) %64) #38
          to label %bb.nr unwind label %bb.nt

bb.nr:                                            ; preds = %bb.nq
  unreachable

bb.ns:                                            ; preds = %bb.np
  %i.cbr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138

bb.nt:                                            ; preds = %bb.nq
  %i.cbs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cbt = load ptr, ptr %64, align 8, !tbaa !10  ; 2 uses
  %i.cbu = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.cbv = icmp eq ptr %i.cbt, %i.cbu
  br i1 %i.cbv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136: ; preds = %bb.nt
  %i.cbw = load i64, ptr %i.cbu, align 8, !tbaa !231
  %i.cbx = add i64 %i.cbw, 1
  call void @_ZdlPvm(ptr noundef %i.cbt, i64 noundef %i.cbx) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138: ; preds = %bb.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136, %bb.ns
  %.pn472 = phi { ptr, i32 } [ %i.cbr, %bb.ns ], [ %i.cbs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136 ], [ %i.cbs, %bb.nt ]
  %i.cby = load ptr, ptr %65, align 8, !tbaa !10  ; 2 uses
  %i.cbz = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.cca = icmp eq ptr %i.cby, %i.cbz
  br i1 %i.cca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138
  %i.ccb = load i64, ptr %i.cbz, align 8, !tbaa !231
  %i.ccc = add i64 %i.ccb, 1
  call void @_ZdlPvm(ptr noundef %i.cby, i64 noundef %i.ccc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #35
  br label %bb.ox

bb.nu:                                            ; preds = %_ZN4Luau12GenericErrorD2Ev.exit1089, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126, %_ZN4Luau12GenericErrorD2Ev.exit1066
  %i.ccd = getelementptr inbounds nuw i8, ptr %.03471799, i64 56 ; 2 uses
  %.not459 = icmp eq ptr %i.ccd, %i.buc
  br i1 %.not459, label %._crit_edge1802, label %bb.mj

bb.nv:                                            ; preds = %._crit_edge1802
  %i.cce = getelementptr inbounds nuw i8, ptr %i.bvj, i64 32
  %i.ccf = load i32, ptr %i.cce, align 8, !tbaa !1658 ; 2 uses
  switch i32 %i.ccf, label %bb.om [
    i32 1, label %.noexc.i1149
    i32 2, label %.noexc.i1172
    i32 3, label %bb.oi
  ]

.noexc.i1149:                                     ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01444.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51445.sroa.0)
  store i64 0, ptr %.sroa.01444.sroa.0, align 8
  store i64 0, ptr %.sroa.51445.sroa.0, align 8
  %i.ccg = getelementptr inbounds nuw i8, ptr %i.bvj, i64 36
  %i.cch = getelementptr inbounds nuw i8, ptr %i.bvj, i64 52
  %i.cci = load i8, ptr %i.cch, align 4, !tbaa !853, !range !38, !noundef !39
  %i.ccj = trunc nuw i8 %i.cci to i1              ; 2 uses
  %spec.select.i1142 = select i1 %i.ccj, ptr %i.ccg, ptr %.sroa.01444.sroa.0
  %.sroa.gep1442 = getelementptr inbounds nuw i8, ptr %i.bvj, i64 44
  %spec.select.i1142.sroa.sel = select i1 %i.ccj, ptr %.sroa.gep1442, ptr %.sroa.51445.sroa.0
  %.sroa.3.0.i1144 = load i64, ptr %spec.select.i1142.sroa.sel, align 4
  %.sroa.0.0.i1145 = load i64, ptr %spec.select.i1142, align 4
  store i64 %.sroa.0.0.i1145, ptr %66, align 8
  %i.cck = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %.sroa.3.0.i1144, ptr %i.cck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #35
  %i.ccl = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 11 uses
  store ptr %i.ccl, ptr %68, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #35
  store i64 28, ptr %i.m, align 8, !tbaa !656
  %i.ccm = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc1150 unwind label %bb.nz ; 2 uses

.noexc1150:                                       ; preds = %.noexc.i1149
  store ptr %i.ccm, ptr %68, align 8, !tbaa !10
  %i.ccn = load i64, ptr %i.m, align 8, !tbaa !656 ; 3 uses
  store i64 %i.ccn, ptr %i.ccl, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.ccm, ptr noundef nonnull align 1 dereferenceable(28) @.str.149, i64 28, i1 false)
  %i.cco = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 4 uses
  store i64 %i.ccn, ptr %i.cco, align 8, !tbaa !69
  %i.ccp = load ptr, ptr %68, align 8, !tbaa !10
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccp, i64 %i.ccn
  store i8 0, ptr %i.ccq, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #35
  store i32 18, ptr %67, align 8, !tbaa !251
  %i.ccr = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 4 uses
  %i.ccs = getelementptr inbounds nuw i8, ptr %67, i64 24 ; 3 uses
  store ptr %i.ccs, ptr %i.ccr, align 8, !tbaa !230
  %i.cct = load ptr, ptr %68, align 8, !tbaa !10  ; 2 uses
  %i.ccu = icmp eq ptr %i.cct, %i.ccl
  br i1 %i.ccu, label %bb.nw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1152

bb.nw:                                            ; preds = %.noexc1150
  %i.ccv = load i64, ptr %i.cco, align 8, !tbaa !69 ; 3 uses
  %i.ccw = icmp ult i64 %i.ccv, 16
  call void @llvm.assume(i1 %i.ccw)
  %i.ccx = add nuw nsw i64 %i.ccv, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ccs, ptr noundef nonnull align 8 dereferenceable(1) %i.ccl, i64 %i.ccx, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1152: ; preds = %.noexc1150
  store ptr %i.cct, ptr %i.ccr, align 8, !tbaa !10
  %i.ccy = load i64, ptr %i.ccl, align 8, !tbaa !231
  store i64 %i.ccy, ptr %i.ccs, align 8, !tbaa !231
  %.pre1895 = load i64, ptr %i.cco, align 8, !tbaa !69
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154: ; preds = %bb.nw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1152
  %i.ccz = phi i64 [ %i.ccv, %bb.nw ], [ %.pre1895, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1152 ]
  %i.cda = getelementptr inbounds nuw i8, ptr %67, i64 16
  store i64 %i.ccz, ptr %i.cda, align 8, !tbaa !69
  store ptr %i.ccl, ptr %68, align 8, !tbaa !10
  store i64 0, ptr %i.cco, align 8, !tbaa !69
  store i8 0, ptr %i.ccl, align 8, !tbaa !231
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %66, ptr noundef nonnull align 8 %67)
          to label %bb.nx unwind label %bb.oa

bb.nx:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154
  %i.cdb = load i32, ptr %67, align 8, !tbaa !251
  %i.cdc = sext i32 %i.cdb to i64
  %i.cdd = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.cdc
  %i.cde = load ptr, ptr %i.cdd, align 8, !tbaa !16
  invoke void %i.cde(ptr noundef nonnull %i.ccr)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1156 unwind label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.cdf = landingpad { ptr, i32 }
          catch ptr null
  %i.cdg = extractvalue { ptr, i32 } %i.cdf, 0
  call void @__clang_call_terminate(ptr %i.cdg) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1156: ; preds = %bb.nx
  %i.cdh = load ptr, ptr %68, align 8, !tbaa !10  ; 2 uses
  %i.cdi = icmp eq ptr %i.cdh, %i.ccl
  br i1 %i.cdi, label %_ZN4Luau12GenericErrorD2Ev.exit1159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1157: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1156
  %i.cdj = load i64, ptr %i.ccl, align 8, !tbaa !231
  %i.cdk = add i64 %i.cdj, 1
  call void @_ZdlPvm(ptr noundef %i.cdh, i64 noundef %i.cdk) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1159

_ZN4Luau12GenericErrorD2Ev.exit1159:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1157
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01444.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51445.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #35
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.nz:                                            ; preds = %.noexc.i1149
  %i.cdl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1164

bb.oa:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154
  %i.cdm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cdn = load i32, ptr %67, align 8, !tbaa !251
  %i.cdo = sext i32 %i.cdn to i64
  %i.cdp = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.cdo
  %i.cdq = load ptr, ptr %i.cdp, align 8, !tbaa !16
  invoke void %i.cdq(ptr noundef nonnull %i.ccr)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161 unwind label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.cdr = landingpad { ptr, i32 }
          catch ptr null
  %i.cds = extractvalue { ptr, i32 } %i.cdr, 0
  call void @__clang_call_terminate(ptr %i.cds) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161: ; preds = %bb.oa
  %i.cdt = load ptr, ptr %68, align 8, !tbaa !10  ; 2 uses
  %i.cdu = icmp eq ptr %i.cdt, %i.ccl
  br i1 %i.cdu, label %_ZN4Luau12GenericErrorD2Ev.exit1164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1162: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161
  %i.cdv = load i64, ptr %i.ccl, align 8, !tbaa !231
  %i.cdw = add i64 %i.cdv, 1
  call void @_ZdlPvm(ptr noundef %i.cdt, i64 noundef %i.cdw) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1164

_ZN4Luau12GenericErrorD2Ev.exit1164:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1162, %bb.nz
  %.pn466 = phi { ptr, i32 } [ %i.cdl, %bb.nz ], [ %i.cdm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1162 ], [ %i.cdm, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01444.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51445.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #35
  br label %bb.ox

.noexc.i1172:                                     ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01440.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.0)
  store i64 0, ptr %.sroa.01440.sroa.0, align 8
  store i64 0, ptr %.sroa.5.sroa.0, align 8
  %i.cdx = getelementptr inbounds nuw i8, ptr %i.bvj, i64 36
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.bvj, i64 52
  %i.cdz = load i8, ptr %i.cdy, align 4, !tbaa !853, !range !38, !noundef !39
  %i.cea = trunc nuw i8 %i.cdz to i1              ; 2 uses
  %spec.select.i1165 = select i1 %i.cea, ptr %i.cdx, ptr %.sroa.01440.sroa.0
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bvj, i64 44
  %spec.select.i1165.sroa.sel = select i1 %i.cea, ptr %.sroa.gep, ptr %.sroa.5.sroa.0
  %.sroa.3.0.i1167 = load i64, ptr %spec.select.i1165.sroa.sel, align 4
  %.sroa.0.0.i1168 = load i64, ptr %spec.select.i1165, align 4
  store i64 %.sroa.0.0.i1168, ptr %69, align 8
  %i.ceb = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 %.sroa.3.0.i1167, ptr %i.ceb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #35
  %i.cec = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 11 uses
  store ptr %i.cec, ptr %71, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #35
  store i64 29, ptr %i.l, align 8, !tbaa !656
  %i.ced = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc1173 unwind label %bb.of ; 2 uses

.noexc1173:                                       ; preds = %.noexc.i1172
  store ptr %i.ced, ptr %71, align 8, !tbaa !10
  %i.cee = load i64, ptr %i.l, align 8, !tbaa !656 ; 3 uses
  store i64 %i.cee, ptr %i.cec, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.ced, ptr noundef nonnull align 1 dereferenceable(29) @.str.150, i64 29, i1 false)
  %i.cef = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 4 uses
  store i64 %i.cee, ptr %i.cef, align 8, !tbaa !69
  %i.ceg = load ptr, ptr %71, align 8, !tbaa !10
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ceg, i64 %i.cee
  store i8 0, ptr %i.ceh, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #35
  store i32 18, ptr %70, align 8, !tbaa !251
  %i.cei = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 4 uses
  %i.cej = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 3 uses
  store ptr %i.cej, ptr %i.cei, align 8, !tbaa !230
  %i.cek = load ptr, ptr %71, align 8, !tbaa !10  ; 2 uses
  %i.cel = icmp eq ptr %i.cek, %i.cec
  br i1 %i.cel, label %bb.oc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1175

bb.oc:                                            ; preds = %.noexc1173
  %i.cem = load i64, ptr %i.cef, align 8, !tbaa !69 ; 3 uses
  %i.cen = icmp ult i64 %i.cem, 16
  call void @llvm.assume(i1 %i.cen)
  %i.ceo = add nuw nsw i64 %i.cem, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cej, ptr noundef nonnull align 8 dereferenceable(1) %i.cec, i64 %i.ceo, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1175: ; preds = %.noexc1173
  store ptr %i.cek, ptr %i.cei, align 8, !tbaa !10
  %i.cep = load i64, ptr %i.cec, align 8, !tbaa !231
  store i64 %i.cep, ptr %i.cej, align 8, !tbaa !231
  %.pre1894 = load i64, ptr %i.cef, align 8, !tbaa !69
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177: ; preds = %bb.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1175
  %i.ceq = phi i64 [ %i.cem, %bb.oc ], [ %.pre1894, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1175 ]
  %i.cer = getelementptr inbounds nuw i8, ptr %70, i64 16
  store i64 %i.ceq, ptr %i.cer, align 8, !tbaa !69
  store ptr %i.cec, ptr %71, align 8, !tbaa !10
  store i64 0, ptr %i.cef, align 8, !tbaa !69
  store i8 0, ptr %i.cec, align 8, !tbaa !231
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %69, ptr noundef nonnull align 8 %70)
          to label %bb.od unwind label %bb.og

bb.od:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177
  %i.ces = load i32, ptr %70, align 8, !tbaa !251
  %i.cet = sext i32 %i.ces to i64
  %i.ceu = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.cet
  %i.cev = load ptr, ptr %i.ceu, align 8, !tbaa !16
  invoke void %i.cev(ptr noundef nonnull %i.cei)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1179 unwind label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.cew = landingpad { ptr, i32 }
          catch ptr null
  %i.cex = extractvalue { ptr, i32 } %i.cew, 0
  call void @__clang_call_terminate(ptr %i.cex) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1179: ; preds = %bb.od
  %i.cey = load ptr, ptr %71, align 8, !tbaa !10  ; 2 uses
  %i.cez = icmp eq ptr %i.cey, %i.cec
  br i1 %i.cez, label %_ZN4Luau12GenericErrorD2Ev.exit1182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1180: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1179
  %i.cfa = load i64, ptr %i.cec, align 8, !tbaa !231
  %i.cfb = add i64 %i.cfa, 1
  call void @_ZdlPvm(ptr noundef %i.cey, i64 noundef %i.cfb) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1182

_ZN4Luau12GenericErrorD2Ev.exit1182:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1180
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01440.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.of:                                            ; preds = %.noexc.i1172
  %i.cfc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1187

bb.og:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177
  %i.cfd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cfe = load i32, ptr %70, align 8, !tbaa !251
  %i.cff = sext i32 %i.cfe to i64
  %i.cfg = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.cff
  %i.cfh = load ptr, ptr %i.cfg, align 8, !tbaa !16
  invoke void %i.cfh(ptr noundef nonnull %i.cei)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184 unwind label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.cfi = landingpad { ptr, i32 }
          catch ptr null
  %i.cfj = extractvalue { ptr, i32 } %i.cfi, 0
  call void @__clang_call_terminate(ptr %i.cfj) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184: ; preds = %bb.og
  %i.cfk = load ptr, ptr %71, align 8, !tbaa !10  ; 2 uses
  %i.cfl = icmp eq ptr %i.cfk, %i.cec
  br i1 %i.cfl, label %_ZN4Luau12GenericErrorD2Ev.exit1187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1185: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184
  %i.cfm = load i64, ptr %i.cec, align 8, !tbaa !231
  %i.cfn = add i64 %i.cfm, 1
  call void @_ZdlPvm(ptr noundef %i.cfk, i64 noundef %i.cfn) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1187

_ZN4Luau12GenericErrorD2Ev.exit1187:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1185, %bb.of
  %.pn463 = phi { ptr, i32 } [ %i.cfc, %bb.of ], [ %i.cfd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1185 ], [ %i.cfd, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01440.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %bb.ox

bb.oi:                                            ; preds = %bb.nv
  %i.cfo = load ptr, ptr %i.bvj, align 8, !tbaa !885 ; 2 uses
  %i.cfp = invoke noundef ptr @_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.cfo)
          to label %.noexc1188 unwind label %bb.ol, !inline_history !644 ; 2 uses

.noexc1188:                                       ; preds = %bb.oi
  %i.cfq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cfr = load ptr, ptr %i.cfq, align 8, !tbaa !298
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.cfr, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #35
  store ptr %i.cfo, ptr %i.k, align 8, !tbaa !645
  %i.cft = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstTypeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.cfs, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.oj unwind label %bb.ol, !inline_history !644

bb.oj:                                            ; preds = %.noexc1188
  store ptr %i.cfp, ptr %i.cft, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #35
  %i.cfu = load ptr, ptr %i.bvi, align 8, !tbaa !884
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfu, i64 8
  %i.cfw = load ptr, ptr %i.cfv, align 8, !tbaa !888 ; 2 uses
  %i.cfx = invoke noundef ptr @_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.cfw)
          to label %.noexc1191 unwind label %bb.ol, !inline_history !644 ; 2 uses

.noexc1191:                                       ; preds = %bb.oj
  %i.cfy = load ptr, ptr %i.cfq, align 8, !tbaa !298
  %i.cfz = getelementptr inbounds nuw i8, ptr %i.cfy, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #35
  store ptr %i.cfw, ptr %i.j, align 8, !tbaa !645
  %i.cga = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstTypeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.cfz, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.ok unwind label %bb.ol, !inline_history !644

bb.ok:                                            ; preds = %.noexc1191
  store ptr %i.cfx, ptr %i.cga, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  store ptr %i.cfp, ptr %50, align 8, !tbaa !206
  %.sroa.61433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %i.cfx, ptr %.sroa.61433.0..sroa_idx, align 8, !tbaa !206
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !529
  store i8 1, ptr %i.btx, align 8, !tbaa !720
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.ol:                                            ; preds = %.noexc1191, %bb.oj, %.noexc1188, %bb.oi
  %i.cgb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ox

bb.om:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #35
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, i32 noundef %i.ccf) #35
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull @.str.151, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %bb.on unwind label %bb.op

bb.on:                                            ; preds = %bb.om
  invoke void @_ZN4Luau11TypeChecker3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(32) %72) #38
          to label %bb.oo unwind label %bb.oq

bb.oo:                                            ; preds = %bb.on
  unreachable

bb.op:                                            ; preds = %bb.om
  %i.cgc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196

bb.oq:                                            ; preds = %bb.on
  %i.cgd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cge = load ptr, ptr %72, align 8, !tbaa !10  ; 2 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.cgg = icmp eq ptr %i.cge, %i.cgf
  br i1 %i.cgg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194: ; preds = %bb.oq
  %i.cgh = load i64, ptr %i.cgf, align 8, !tbaa !231
  %i.cgi = add i64 %i.cgh, 1
  call void @_ZdlPvm(ptr noundef %i.cge, i64 noundef %i.cgi) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196: ; preds = %bb.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194, %bb.op
  %.pn461 = phi { ptr, i32 } [ %i.cgc, %bb.op ], [ %i.cgd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194 ], [ %i.cgd, %bb.oq ]
  %i.cgj = load ptr, ptr %73, align 8, !tbaa !10  ; 2 uses
  %i.cgk = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.cgl = icmp eq ptr %i.cgj, %i.cgk
  br i1 %i.cgl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196
  %i.cgm = load i64, ptr %i.cgk, align 8, !tbaa !231
  %i.cgn = add i64 %i.cgm, 1
  call void @_ZdlPvm(ptr noundef %i.cgj, i64 noundef %i.cgn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #35
  br label %bb.ox

_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.ok, %_ZN4Luau12GenericErrorD2Ev.exit1159, %_ZN4Luau12GenericErrorD2Ev.exit1182, %._crit_edge1802
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #35
  %i.cgo = load ptr, ptr %1, align 8, !tbaa !258
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgo, i64 120
  %.sroa.082.0.copyload = load i64, ptr %i.cgp, align 8
  invoke void @_ZN4Luau9TableTypeC1ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8PropertyESt4lessIS7_ESaISt4pairIKS7_S8_EEERKSt8optionalINS_12TableIndexerEENS_9TypeLevelENS_10TableStateE(ptr noundef nonnull align 8 dereferenceable(328) %74, ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(32) %50, i64 %.sroa.082.0.copyload, i32 noundef 0)
          to label %bb.or unwind label %bb.ou

bb.or:                                            ; preds = %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.cgq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cgr = load ptr, ptr %i.cgq, align 8, !tbaa !298
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgr, i64 8
  %i.cgt = getelementptr inbounds nuw i8, ptr %74, i64 232
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cgt, ptr noundef nonnull align 8 dereferenceable(32) %i.cgs)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ov

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.or
  %i.cgu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cgv = getelementptr inbounds nuw i8, ptr %74, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cgv, ptr noundef nonnull align 4 dereferenceable(16) %i.cgu, i64 16, i1 false), !tbaa.struct !496
  %i.cgw = invoke noundef ptr @_ZN4Luau11TypeChecker7addTypeINS_9TableTypeEEEPKNS_4TypeERKT_(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(328) %74)
          to label %bb.os unwind label %bb.ov

bb.os:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %74) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #35
  %i.cgx = load ptr, ptr %i.btt, align 8, !tbaa !897
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef %i.cgx)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.cgy = landingpad { ptr, i32 }
          catch ptr null
  %i.cgz = extractvalue { ptr, i32 } %i.cgy, 0
  call void @__clang_call_terminate(ptr %i.cgz) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.os
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #35
  br label %bb.uu

bb.ou:                                            ; preds = %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.cha = landingpad { ptr, i32 }
          cleanup
  br label %bb.ow

bb.ov:                                            ; preds = %bb.or, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.chb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %74) #35
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %.pn470 = phi { ptr, i32 } [ %i.chb, %bb.ov ], [ %i.cha, %bb.ou ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  br label %bb.ox

bb.ox:                                            ; preds = %_ZN4Luau12GenericErrorD2Ev.exit1164, %_ZN4Luau12GenericErrorD2Ev.exit1187, %bb.ol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199, %_ZN4Luau12GenericErrorD2Ev.exit1071, %_ZN4Luau12GenericErrorD2Ev.exit1094, %bb.no, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141, %bb.ow
  %.pn481.pn.pn.pn = phi { ptr, i32 } [ %.pn472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141 ], [ %.pn470, %bb.ow ], [ %.pn481, %_ZN4Luau12GenericErrorD2Ev.exit1071 ], [ %.pn478, %_ZN4Luau12GenericErrorD2Ev.exit1094 ], [ %.pn474.pn.pn, %bb.no ], [ %.pn466, %_ZN4Luau12GenericErrorD2Ev.exit1164 ], [ %.pn463, %_ZN4Luau12GenericErrorD2Ev.exit1187 ], [ %i.cgb, %bb.ol ], [ %.pn461, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #35
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %49) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1322

bb.oy:                                            ; preds = %bb.mh
  %i.chc = load i32, ptr @_ZN4Luau7AstRttiINS_15AstTypeFunctionEE5valueE, align 4, !tbaa !9
  %.not1553 = icmp eq i32 %i.ac, %i.chc
  br i1 %.not1553, label %bb.oz, label %bb.sj

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #35
  %i.chd = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @_ZN4Luau11TypeChecker10childScopeERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.133") align 8 %75, ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.chd)
  %i.che = load ptr, ptr %1, align 8, !tbaa !258
  %i.chf = getelementptr inbounds nuw i8, ptr %i.che, i64 120
  %i.chg = load i32, ptr %i.chf, align 4, !tbaa !812
  %i.chh = add nsw i32 %i.chg, 1
  %.sroa.0.0.insert.ext.i = zext i32 %i.chh to i64
  %i.chi = load ptr, ptr %75, align 8, !tbaa !258
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chi, i64 120
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.chj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #35
  %i.chk = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.chl = getelementptr inbounds nuw i8, ptr %2, i64 64
  invoke void @_ZN4Luau11TypeChecker18createGenericTypesERKSt10shared_ptrINS_5ScopeEESt8optionalINS_9TypeLevelEERKNS_7AstNodeERKNS_8AstArrayIPNS_14AstGenericTypeEEERKNSC_IPNS_18AstGenericTypePackEEEb(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::GenericTypeDefinitions") align 8 %76, ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %75, i64 undef, i8 0, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.chk, ptr noundef nonnull align 8 dereferenceable(16) %i.chl, i1 noundef zeroext false)
          to label %bb.pa unwind label %bb.pw

bb.pa:                                            ; preds = %bb.oz
  %i.chm = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.chn = invoke noundef ptr @_ZN4Luau11TypeChecker15resolveTypePackERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypeListE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(24) %i.chm)
          to label %bb.pb unwind label %bb.px

bb.pb:                                            ; preds = %bb.pa
  %i.cho = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.chp = load ptr, ptr %i.cho, align 8, !tbaa !1659
  %i.chq = invoke noundef ptr @_ZN4Luau11TypeChecker15resolveTypePackERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(28) %i.chp)
          to label %bb.pc unwind label %bb.py

end_hunk_1
