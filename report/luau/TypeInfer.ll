Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13251
inline.NumDeleted: 4924
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau11TypeChecker5addTVEONS_4TypeE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !298
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
  %.sroa.01455 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %.sroa.51456 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %52 = alloca %"class.Luau::Variant", align 8    ; 7 uses
  %53 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %54 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %.sroa.01450 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %.sroa.51451 = alloca %"struct.Luau::Position", align 8 ; 5 uses
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
  %.sroa.01444 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %.sroa.51445 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %67 = alloca %"class.Luau::Variant", align 8    ; 7 uses
  %68 = alloca %"struct.Luau::GenericError", align 8 ; 13 uses
  %69 = alloca %"struct.Luau::Location", align 8  ; 6 uses
  %.sroa.01440 = alloca %"struct.Luau::Position", align 8 ; 5 uses
  %.sroa.5 = alloca %"struct.Luau::Position", align 8 ; 5 uses
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
  br i1 %.not.i.i.i1038, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit", label %.lr.ph.i.i.i1033, !llvm.loop !1649

"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit": ; preds = %bb.ls, %bb.lr
  br i1 %.0.i.i, label %bb.lt, label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread"

bb.lt:                                            ; preds = %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit"
  %i.brn = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bro = load ptr, ptr %i.brn, align 16, !tbaa !510
  br label %bb.lv

bb.lu:                                            ; preds = %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread"
  %i.brp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lz

"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread": ; preds = %.lr.ph.i.i.i1033, %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau4TypeESt6vectorIS5_SaIS5_EEEENS1_IPNS2_21GenericTypeDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_2EbT_SQ_T0_SR_T1_.exit", %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit"
  %i.brq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.brr = invoke noundef ptr @_ZN4Luau11TypeChecker18instantiateTypeFunERKSt10shared_ptrINS_5ScopeEERKNS_7TypeFunERKSt6vectorIPKNS_4TypeESaISC_EERKS9_IPKNS_11TypePackVarESaISJ_EERKNS_8LocationE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(76) %9, ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef nonnull align 4 dereferenceable(16) %i.brq)
          to label %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge" unwind label %bb.lu

"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge": ; preds = %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread"
  %.pre1932 = load ptr, ptr %38, align 8, !tbaa !236
  br label %bb.lv

bb.lv:                                            ; preds = %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge", %bb.lt
  %i.brs = phi ptr [ %i.brb, %bb.lt ], [ %.pre1932, %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge" ] ; 3 uses
  %.0256 = phi ptr [ %i.bro, %bb.lt ], [ %i.brr, %"_ZSt5equalIN9__gnu_cxx17__normal_iteratorIPPKN4Luau11TypePackVarESt6vectorIS5_SaIS5_EEEENS1_IPNS2_25GenericTypePackDefinitionES7_ISB_SaISB_EEEEZNS2_11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS2_5ScopeEERKNS2_7AstTypeEE3$_3EbT_SQ_T0_SR_T1_.exit.thread._crit_edge" ]
  %.not.i.i.i1039 = icmp eq ptr %i.brs, null
  br i1 %.not.i.i.i1039, label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.brt = getelementptr inbounds nuw i8, ptr %38, i64 16
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !237
  %i.brv = ptrtoint ptr %i.bru to i64
  %i.brw = ptrtoint ptr %i.brs to i64
  %i.brx = sub i64 %i.brv, %i.brw
  call void @_ZdlPvm(ptr noundef nonnull %i.brs, i64 noundef %i.brx) #36
  br label %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit: ; preds = %bb.lv, %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #35
  %i.bry = load ptr, ptr %37, align 8, !tbaa !238 ; 3 uses
  %.not.i.i.i1040 = icmp eq ptr %i.bry, null
  br i1 %.not.i.i.i1040, label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit, label %bb.lx

bb.lx:                                            ; preds = %_ZNSt6vectorIPKN4Luau11TypePackVarESaIS3_EED2Ev.exit
  %i.brz = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.bsa = load ptr, ptr %i.brz, align 8, !tbaa !239
  %i.bsb = ptrtoint ptr %i.bsa to i64
  %i.bsc = ptrtoint ptr %i.bry to i64
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

bb.lz:                                            ; preds = %.loopexit1566, %.loopexit.split-lp, %.loopexit1567, %.loopexit.split-lp1568, %.loopexit1604, %.loopexit.split-lp1605, %.loopexit1599.a, %.loopexit1594, %.loopexit.split-lp1595, %.loopexit1589, %.loopexit.split-lp1590, %bb.hf, %_ZN4Luau12GenericErrorD2Ev.exit847, %bb.jn, %bb.jx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005, %bb.lu, %bb.hp
  %.pn539.pn.pn = phi { ptr, i32 } [ %i.arn, %bb.hp ], [ %.pn536.pn, %_ZN4Luau12GenericErrorD2Ev.exit847 ], [ %lpad.loopexit.split-lp1597, %.loopexit.split-lp1595 ], [ %.pn528.pn, %bb.jn ], [ %lpad.loopexit.split-lp1607, %.loopexit.split-lp1605 ], [ %lpad.loopexit.split-lp1570, %.loopexit.split-lp1568 ], [ %i.bdf, %bb.jx ], [ %.pn523.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1005 ], [ %i.brp, %bb.lu ], [ %i.aqh, %bb.hf ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp1592, %.loopexit.split-lp1590 ], [ %lpad.loopexit1591, %.loopexit1589 ], [ %lpad.loopexit1596, %.loopexit1594 ], [ %lpad.loopexit1601, %.loopexit1599.a ], [ %lpad.loopexit1606, %.loopexit1604 ], [ %lpad.loopexit1569, %.loopexit1567 ], [ %lpad.loopexit, %.loopexit1566 ]
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
  %94 = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  %95 = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.bue = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.buf = getelementptr inbounds nuw i8, ptr %61, i64 32 ; 5 uses
  %i.bug = getelementptr inbounds nuw i8, ptr %62, i64 16
  %i.buh = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 7 uses
  %i.bui = getelementptr inbounds nuw i8, ptr %63, i64 8
  %i.buj = getelementptr inbounds nuw i8, ptr %57, i64 136 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %57, i64 104
  %i.bul = getelementptr inbounds nuw i8, ptr %57, i64 120 ; 2 uses
  %i.bum = getelementptr inbounds nuw i8, ptr %57, i64 80 ; 2 uses
  %i.bun = getelementptr inbounds nuw i8, ptr %57, i64 88
  %i.buo = getelementptr inbounds nuw i8, ptr %57, i64 96
  %i.bup = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.buq = getelementptr inbounds nuw i8, ptr %57, i64 24 ; 2 uses
  %i.bur = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 4 uses
  %i.bus = getelementptr inbounds nuw i8, ptr %60, i64 8
  %i.but = getelementptr inbounds nuw i8, ptr %60, i64 16
  %i.buu = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.buv = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 11 uses
  %i.buw = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 4 uses
  %i.bux = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 4 uses
  %i.buy = getelementptr inbounds nuw i8, ptr %55, i64 24 ; 3 uses
  %i.buz = getelementptr inbounds nuw i8, ptr %55, i64 16
  %i.bva = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.bvb = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 11 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 4 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 4 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 3 uses
  %i.bvf = getelementptr inbounds nuw i8, ptr %52, i64 16
  br label %bb.mj

._crit_edge1802:                                  ; preds = %bb.nu, %bb.mi
  %i.bvg = getelementptr inbounds nuw i8, ptr %..i1053, i64 48 ; 2 uses
  %i.bvh = load ptr, ptr %i.bvg, align 8, !tbaa !884 ; 9 uses
  %.not460 = icmp eq ptr %i.bvh, null
  br i1 %.not460, label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit, label %bb.nv

bb.mj:                                            ; preds = %.lr.ph1801, %bb.nu
  %.03471799 = phi ptr [ %i.btz, %.lr.ph1801 ], [ %i.cbt, %bb.nu ] ; 11 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %.03471799, i64 32
  %i.bvj = load i32, ptr %i.bvi, align 8, !tbaa !1654 ; 2 uses
  switch i32 %i.bvj, label %bb.np [
    i32 1, label %.noexc.i1056
    i32 2, label %.noexc.i1079
    i32 3, label %bb.mw
  ]

.noexc.i1056:                                     ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01455)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51456)
  store i64 0, ptr %.sroa.01455, align 8
  store i64 0, ptr %.sroa.51456, align 8
  %96 = getelementptr inbounds nuw i8, ptr %.03471799, i64 36
  %97 = getelementptr inbounds nuw i8, ptr %.03471799, i64 52
  %98 = load i8, ptr %97, align 4, !tbaa !853, !range !38, !noundef !39
  %99 = trunc nuw i8 %98 to i1                    ; 2 uses
  %spec.select.i1054 = select i1 %99, ptr %96, ptr %.sroa.01455
  %.sroa.gep1453 = getelementptr inbounds nuw i8, ptr %.03471799, i64 44
  %spec.select.i1054.sroa.sel = select i1 %99, ptr %.sroa.gep1453, ptr %.sroa.51456
  %.sroa.3.0.i = load i64, ptr %spec.select.i1054.sroa.sel, align 4
  %.sroa.0.0.i = load i64, ptr %spec.select.i1054, align 4
  store i64 %.sroa.0.0.i, ptr %51, align 8
  store i64 %.sroa.3.0.i, ptr %i.bva, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #35
  store ptr %i.bvb, ptr %53, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #35
  store i64 28, ptr %i.q, align 8, !tbaa !656
  %i.bvk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0)
          to label %.noexc1057 unwind label %bb.mn ; 2 uses

.noexc1057:                                       ; preds = %.noexc.i1056
  store ptr %i.bvk, ptr %53, align 8, !tbaa !10
  %i.bvl = load i64, ptr %i.q, align 8, !tbaa !656 ; 3 uses
  store i64 %i.bvl, ptr %i.bvb, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.bvk, ptr noundef nonnull align 1 dereferenceable(28) @.str.149, i64 28, i1 false)
  store i64 %i.bvl, ptr %i.bvc, align 8, !tbaa !69
  %i.bvm = load ptr, ptr %53, align 8, !tbaa !10
  %i.bvn = getelementptr inbounds nuw i8, ptr %i.bvm, i64 %i.bvl
  store i8 0, ptr %i.bvn, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #35
  store i32 18, ptr %52, align 8, !tbaa !251
  store ptr %i.bve, ptr %i.bvd, align 8, !tbaa !230
  %i.bvo = load ptr, ptr %53, align 8, !tbaa !10  ; 2 uses
  %i.bvp = icmp eq ptr %i.bvo, %i.bvb
  br i1 %i.bvp, label %bb.mk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059

bb.mk:                                            ; preds = %.noexc1057
  %i.bvq = load i64, ptr %i.bvc, align 8, !tbaa !69 ; 3 uses
  %i.bvr = icmp ult i64 %i.bvq, 16
  call void @llvm.assume(i1 %i.bvr)
  %i.bvs = add nuw nsw i64 %i.bvq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bve, ptr noundef nonnull align 8 dereferenceable(1) %i.bvb, i64 %i.bvs, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059: ; preds = %.noexc1057
  store ptr %i.bvo, ptr %i.bvd, align 8, !tbaa !10
  %i.bvt = load i64, ptr %i.bvb, align 8, !tbaa !231
  store i64 %i.bvt, ptr %i.bve, align 8, !tbaa !231
  %.pre1893 = load i64, ptr %i.bvc, align 8, !tbaa !69
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061: ; preds = %bb.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059
  %i.bvu = phi i64 [ %i.bvq, %bb.mk ], [ %.pre1893, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1059 ]
  store i64 %i.bvu, ptr %i.bvf, align 8, !tbaa !69
  store ptr %i.bvb, ptr %53, align 8, !tbaa !10
  store i64 0, ptr %i.bvc, align 8, !tbaa !69
  store i8 0, ptr %i.bvb, align 8, !tbaa !231
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %51, ptr noundef nonnull align 8 %52)
          to label %bb.ml unwind label %bb.mo

bb.ml:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061
  %i.bvv = load i32, ptr %52, align 8, !tbaa !251
  %i.bvw = sext i32 %i.bvv to i64
  %i.bvx = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bvw
  %i.bvy = load ptr, ptr %i.bvx, align 8, !tbaa !16
  invoke void %i.bvy(ptr noundef nonnull %i.bvd)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063 unwind label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.bvz = landingpad { ptr, i32 }
          catch ptr null
  %i.bwa = extractvalue { ptr, i32 } %i.bvz, 0
  call void @__clang_call_terminate(ptr %i.bwa) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063: ; preds = %bb.ml
  %i.bwb = load ptr, ptr %53, align 8, !tbaa !10  ; 2 uses
  %i.bwc = icmp eq ptr %i.bwb, %i.bvb
  br i1 %i.bwc, label %_ZN4Luau12GenericErrorD2Ev.exit1066, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063
  %i.bwd = load i64, ptr %i.bvb, align 8, !tbaa !231
  %i.bwe = add i64 %i.bwd, 1
  call void @_ZdlPvm(ptr noundef %i.bwb, i64 noundef %i.bwe) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1066

_ZN4Luau12GenericErrorD2Ev.exit1066:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1063, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1064
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01455)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51456)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  br label %bb.nu

bb.mn:                                            ; preds = %.noexc.i1056
  %i.bwf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1071

bb.mo:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1061
  %i.bwg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bwh = load i32, ptr %52, align 8, !tbaa !251
  %i.bwi = sext i32 %i.bwh to i64
  %i.bwj = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bwi
  %i.bwk = load ptr, ptr %i.bwj, align 8, !tbaa !16
  invoke void %i.bwk(ptr noundef nonnull %i.bvd)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068 unwind label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bwl = landingpad { ptr, i32 }
          catch ptr null
  %i.bwm = extractvalue { ptr, i32 } %i.bwl, 0
  call void @__clang_call_terminate(ptr %i.bwm) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068: ; preds = %bb.mo
  %i.bwn = load ptr, ptr %53, align 8, !tbaa !10  ; 2 uses
  %i.bwo = icmp eq ptr %i.bwn, %i.bvb
  br i1 %i.bwo, label %_ZN4Luau12GenericErrorD2Ev.exit1071, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068
  %i.bwp = load i64, ptr %i.bvb, align 8, !tbaa !231
  %i.bwq = add i64 %i.bwp, 1
  call void @_ZdlPvm(ptr noundef %i.bwn, i64 noundef %i.bwq) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1071

_ZN4Luau12GenericErrorD2Ev.exit1071:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069, %bb.mn
  %.pn481 = phi { ptr, i32 } [ %i.bwf, %bb.mn ], [ %i.bwg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1069 ], [ %i.bwg, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1068 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01455)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51456)
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #35
  br label %bb.ox

.noexc.i1079:                                     ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01450)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51451)
  store i64 0, ptr %.sroa.01450, align 8
  store i64 0, ptr %.sroa.51451, align 8
  %100 = getelementptr inbounds nuw i8, ptr %.03471799, i64 36
  %101 = getelementptr inbounds nuw i8, ptr %.03471799, i64 52
  %102 = load i8, ptr %101, align 4, !tbaa !853, !range !38, !noundef !39
  %103 = trunc nuw i8 %102 to i1                  ; 2 uses
  %spec.select.i1072 = select i1 %103, ptr %100, ptr %.sroa.01450
  %.sroa.gep1448 = getelementptr inbounds nuw i8, ptr %.03471799, i64 44
  %spec.select.i1072.sroa.sel = select i1 %103, ptr %.sroa.gep1448, ptr %.sroa.51451
  %.sroa.3.0.i1074 = load i64, ptr %spec.select.i1072.sroa.sel, align 4
  %.sroa.0.0.i1075 = load i64, ptr %spec.select.i1072, align 4
  store i64 %.sroa.0.0.i1075, ptr %54, align 8
  store i64 %.sroa.3.0.i1074, ptr %i.buu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #35
  store ptr %i.buv, ptr %56, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #35
  store i64 29, ptr %i.p, align 8, !tbaa !656
  %i.bwr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %.noexc1080 unwind label %bb.mt ; 2 uses

.noexc1080:                                       ; preds = %.noexc.i1079
  store ptr %i.bwr, ptr %56, align 8, !tbaa !10
  %i.bws = load i64, ptr %i.p, align 8, !tbaa !656 ; 3 uses
  store i64 %i.bws, ptr %i.buv, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.bwr, ptr noundef nonnull align 1 dereferenceable(29) @.str.150, i64 29, i1 false)
  store i64 %i.bws, ptr %i.buw, align 8, !tbaa !69
  %i.bwt = load ptr, ptr %56, align 8, !tbaa !10
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwt, i64 %i.bws
  store i8 0, ptr %i.bwu, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #35
  store i32 18, ptr %55, align 8, !tbaa !251
  store ptr %i.buy, ptr %i.bux, align 8, !tbaa !230
  %i.bwv = load ptr, ptr %56, align 8, !tbaa !10  ; 2 uses
  %i.bww = icmp eq ptr %i.bwv, %i.buv
  br i1 %i.bww, label %bb.mq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082

bb.mq:                                            ; preds = %.noexc1080
  %i.bwx = load i64, ptr %i.buw, align 8, !tbaa !69 ; 3 uses
  %i.bwy = icmp ult i64 %i.bwx, 16
  call void @llvm.assume(i1 %i.bwy)
  %i.bwz = add nuw nsw i64 %i.bwx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.buy, ptr noundef nonnull align 8 dereferenceable(1) %i.buv, i64 %i.bwz, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082: ; preds = %.noexc1080
  store ptr %i.bwv, ptr %i.bux, align 8, !tbaa !10
  %i.bxa = load i64, ptr %i.buv, align 8, !tbaa !231
  store i64 %i.bxa, ptr %i.buy, align 8, !tbaa !231
  %.pre1892 = load i64, ptr %i.buw, align 8, !tbaa !69
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084: ; preds = %bb.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082
  %i.bxb = phi i64 [ %i.bwx, %bb.mq ], [ %.pre1892, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1082 ]
  store i64 %i.bxb, ptr %i.buz, align 8, !tbaa !69
  store ptr %i.buv, ptr %56, align 8, !tbaa !10
  store i64 0, ptr %i.buw, align 8, !tbaa !69
  store i8 0, ptr %i.buv, align 8, !tbaa !231
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %54, ptr noundef nonnull align 8 %55)
          to label %bb.mr unwind label %bb.mu

bb.mr:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084
  %i.bxc = load i32, ptr %55, align 8, !tbaa !251
  %i.bxd = sext i32 %i.bxc to i64
  %i.bxe = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bxd
  %i.bxf = load ptr, ptr %i.bxe, align 8, !tbaa !16
  invoke void %i.bxf(ptr noundef nonnull %i.bux)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1086 unwind label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.bxg = landingpad { ptr, i32 }
          catch ptr null
  %i.bxh = extractvalue { ptr, i32 } %i.bxg, 0
  call void @__clang_call_terminate(ptr %i.bxh) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1086: ; preds = %bb.mr
  %i.bxi = load ptr, ptr %56, align 8, !tbaa !10  ; 2 uses
  %i.bxj = icmp eq ptr %i.bxi, %i.buv
  br i1 %i.bxj, label %_ZN4Luau12GenericErrorD2Ev.exit1089, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1087

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1087: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1086
  %i.bxk = load i64, ptr %i.buv, align 8, !tbaa !231
  %i.bxl = add i64 %i.bxk, 1
  call void @_ZdlPvm(ptr noundef %i.bxi, i64 noundef %i.bxl) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1089

_ZN4Luau12GenericErrorD2Ev.exit1089:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1086, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1087
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01450)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51451)
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #35
  br label %bb.nu

bb.mt:                                            ; preds = %.noexc.i1079
  %i.bxm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1094

bb.mu:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1084
  %i.bxn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bxo = load i32, ptr %55, align 8, !tbaa !251
  %i.bxp = sext i32 %i.bxo to i64
  %i.bxq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.bxp
  %i.bxr = load ptr, ptr %i.bxq, align 8, !tbaa !16
  invoke void %i.bxr(ptr noundef nonnull %i.bux)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091 unwind label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bxs = landingpad { ptr, i32 }
          catch ptr null
  %i.bxt = extractvalue { ptr, i32 } %i.bxs, 0
  call void @__clang_call_terminate(ptr %i.bxt) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091: ; preds = %bb.mu
  %i.bxu = load ptr, ptr %56, align 8, !tbaa !10  ; 2 uses
  %i.bxv = icmp eq ptr %i.bxu, %i.buv
  br i1 %i.bxv, label %_ZN4Luau12GenericErrorD2Ev.exit1094, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1092

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1092: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091
  %i.bxw = load i64, ptr %i.buv, align 8, !tbaa !231
  %i.bxx = add i64 %i.bxw, 1
  call void @_ZdlPvm(ptr noundef %i.bxu, i64 noundef %i.bxx) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1094

_ZN4Luau12GenericErrorD2Ev.exit1094:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1092, %bb.mt
  %.pn478 = phi { ptr, i32 } [ %i.bxm, %bb.mt ], [ %i.bxn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1092 ], [ %i.bxn, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1091 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01450)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51451)
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #35
  br label %bb.ox

bb.mw:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #35
  %i.bxy = getelementptr inbounds nuw i8, ptr %.03471799, i64 24
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !1656 ; 2 uses
  %i.bya = invoke noundef ptr @_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.bxz)
          to label %.noexc1095 unwind label %bb.nj, !inline_history !644 ; 2 uses

.noexc1095:                                       ; preds = %bb.mw
  %i.byb = load ptr, ptr %i.bud, align 8, !tbaa !298
  %i.byc = getelementptr inbounds nuw i8, ptr %i.byb, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #35
  store ptr %i.bxz, ptr %i.o, align 8, !tbaa !645
  %i.byd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstTypeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.byc, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.mx unwind label %bb.nj, !inline_history !644

bb.mx:                                            ; preds = %.noexc1095
  store ptr %i.bya, ptr %i.byd, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #35
  store ptr %94, ptr %58, align 8, !tbaa !230
  store i64 0, ptr %95, align 8, !tbaa !69
  store i8 0, ptr %94, align 8, !tbaa !231
  store i8 0, ptr %i.bue, align 8, !tbaa !853
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %60, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #35
  store i8 0, ptr %i.buf, align 8, !tbaa !405
  %i.bye = getelementptr inbounds nuw i8, ptr %.03471799, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %62, ptr noundef nonnull align 8 dereferenceable(16) %i.bye, i64 16, i1 false), !tbaa.struct !496
  store i8 1, ptr %i.bug, align 8, !tbaa !853
  invoke void @_ZN4Luau8PropertyC1EPKNS_4TypeEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalINS_8LocationEERKSt6vectorIS9_SaIS9_EERKSC_IS9_ESE_(ptr noundef nonnull align 8 dereferenceable(176) %57, ptr noundef %i.bya, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull byval(%"class.std::optional") align 8 %59, ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull byval(%"class.std::optional") align 8 %62)
          to label %bb.my unwind label %bb.nk

bb.my:                                            ; preds = %bb.mx
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #35
  %i.byf = load ptr, ptr %.03471799, align 8, !tbaa !1657 ; 4 uses
  store ptr %i.buh, ptr %63, align 8, !tbaa !230
  %i.byg = icmp eq ptr %i.byf, null
  br i1 %i.byg, label %bb.mz, label %bb.na

bb.mz:                                            ; preds = %bb.my
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc1100 unwind label %.loopexit.split-lp1612

.noexc1100:                                       ; preds = %bb.mz
  unreachable

bb.na:                                            ; preds = %bb.my
  %i.byh = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.byf) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #35
  store i64 %i.byh, ptr %i.n, align 8, !tbaa !656
  %i.byi = icmp ugt i64 %i.byh, 15
  br i1 %i.byi, label %.noexc.i1099, label %._crit_edge.i.i1098

.noexc.i1099:                                     ; preds = %bb.na
  %i.byj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc1101 unwind label %.loopexit1611 ; 2 uses

.noexc1101:                                       ; preds = %.noexc.i1099
  store ptr %i.byj, ptr %63, align 8, !tbaa !10
  %i.byk = load i64, ptr %i.n, align 8, !tbaa !656
  store i64 %i.byk, ptr %i.buh, align 8, !tbaa !231
  br label %._crit_edge.i.i1098

._crit_edge.i.i1098:                              ; preds = %.noexc1101, %bb.na
  %i.byl = phi ptr [ %i.byj, %.noexc1101 ], [ %i.buh, %bb.na ] ; 2 uses
  switch i64 %i.byh, label %bb.nc [
    i64 1, label %bb.nb
    i64 0, label %bb.nd
  ]

bb.nb:                                            ; preds = %._crit_edge.i.i1098
  %i.bym = load i8, ptr %i.byf, align 1, !tbaa !231
  store i8 %i.bym, ptr %i.byl, align 1, !tbaa !231
  br label %bb.nd

bb.nc:                                            ; preds = %._crit_edge.i.i1098
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.byl, ptr nonnull align 1 %i.byf, i64 %i.byh, i1 false)
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.nb, %._crit_edge.i.i1098
  %i.byn = load i64, ptr %i.n, align 8, !tbaa !656 ; 2 uses
  store i64 %i.byn, ptr %i.bui, align 8, !tbaa !69
  %i.byo = load ptr, ptr %63, align 8, !tbaa !10
  %i.byp = getelementptr inbounds nuw i8, ptr %i.byo, i64 %i.byn
  store i8 0, ptr %i.byp, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #35
  %i.byq = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(32) %63)
          to label %bb.ne unwind label %bb.nl

bb.ne:                                            ; preds = %bb.nd
  %i.byr = call noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSEOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.byq, ptr noundef nonnull align 8 dereferenceable(176) %57) #35 ; 0 uses
  %i.bys = load ptr, ptr %63, align 8, !tbaa !10  ; 2 uses
  %i.byt = icmp eq ptr %i.bys, %i.buh
  br i1 %i.byt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103: ; preds = %bb.ne
  %i.byu = load i64, ptr %i.buh, align 8, !tbaa !231
  %i.byv = add i64 %i.byu, 1
  call void @_ZdlPvm(ptr noundef %i.bys, i64 noundef %i.byv) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105: ; preds = %bb.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1103
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #35
  %i.byw = load i8, ptr %i.buj, align 8, !tbaa !405, !range !38, !noundef !39
  %i.byx = trunc nuw i8 %i.byw to i1
  store i8 0, ptr %i.buj, align 8, !tbaa !405
  br i1 %i.byx, label %bb.nf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.nf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105
  %i.byy = load ptr, ptr %i.buk, align 8, !tbaa !10 ; 2 uses
  %i.byz = icmp eq ptr %i.byy, %i.bul
  br i1 %i.byz, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1118: ; preds = %bb.nf
  %i.bza = load i64, ptr %i.bul, align 8, !tbaa !231
  %i.bzb = add i64 %i.bza, 1
  call void @_ZdlPvm(ptr noundef %i.byy, i64 noundef %i.bzb) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.nf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i1118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1105
  %i.bzc = load ptr, ptr %i.bum, align 8, !tbaa !900 ; 3 uses
  %i.bzd = load ptr, ptr %i.bun, align 8, !tbaa !901 ; 2 uses
  %.not4.i.i.i.i1106 = icmp eq ptr %i.bzc, %i.bzd
  br i1 %.not4.i.i.i.i1106, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113, label %.lr.ph.i.i.i.i1107

.lr.ph.i.i.i.i1107:                               ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109
  %.05.i.i.i.i1108 = phi ptr [ %i.bzj, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109 ], [ %i.bzc, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.bze = load ptr, ptr %.05.i.i.i.i1108, align 8, !tbaa !10 ; 2 uses
  %i.bzf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1108, i64 16 ; 2 uses
  %i.bzg = icmp eq ptr %i.bze, %i.bzf
  br i1 %i.bzg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i1107
  %i.bzh = load i64, ptr %i.bzf, align 8, !tbaa !231
  %i.bzi = add i64 %i.bzh, 1
  call void @_ZdlPvm(ptr noundef %i.bze, i64 noundef %i.bzi) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109: ; preds = %.lr.ph.i.i.i.i1107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.bzj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i1108, i64 32 ; 2 uses
  %.not.i.i.i.i1110 = icmp eq ptr %i.bzj, %i.bzd
  br i1 %.not.i.i.i.i1110, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1111, label %.lr.ph.i.i.i.i1107, !llvm.loop !902

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1111: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i1109
  %.pr.i.i1112 = load ptr, ptr %i.bum, align 8, !tbaa !900
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1111, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.bzk = phi ptr [ %.pr.i.i1112, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i1111 ], [ %i.bzc, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i1114 = icmp eq ptr %i.bzk, null
  br i1 %.not.i.i1.i.i1114, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115, label %bb.ng

bb.ng:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113
  %i.bzl = load ptr, ptr %i.buo, align 8, !tbaa !903
  %i.bzm = ptrtoint ptr %i.bzl to i64
  %i.bzn = ptrtoint ptr %i.bzk to i64
  %i.bzo = sub i64 %i.bzm, %i.bzn
  call void @_ZdlPvm(ptr noundef nonnull %i.bzk, i64 noundef %i.bzo) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115: ; preds = %bb.ng, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i1113
  %i.bzp = load ptr, ptr %i.bup, align 8, !tbaa !10 ; 2 uses
  %i.bzq = icmp eq ptr %i.bzp, %i.buq
  br i1 %i.bzq, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1116

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1116: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115
  %i.bzr = load i64, ptr %i.buq, align 8, !tbaa !231
  %i.bzs = add i64 %i.bzr, 1
  call void @_ZdlPvm(ptr noundef %i.bzp, i64 noundef %i.bzs) #36
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i1115, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1116
  %i.bzt = load i8, ptr %i.buf, align 8, !tbaa !405, !range !38, !noundef !39
  %i.bzu = trunc nuw i8 %i.bzt to i1
  store i8 0, ptr %i.buf, align 8, !tbaa !405
  br i1 %i.bzu, label %bb.nh, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.nh:                                            ; preds = %_ZN4Luau8PropertyD2Ev.exit
  %i.bzv = load ptr, ptr %61, align 8, !tbaa !10  ; 2 uses
  %i.bzw = icmp eq ptr %i.bzv, %i.bur
  br i1 %i.bzw, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.nh
  %i.bzx = load i64, ptr %i.bur, align 8, !tbaa !231
  %i.bzy = add i64 %i.bzx, 1
  call void @_ZdlPvm(ptr noundef %i.bzv, i64 noundef %i.bzy) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.nh, %_ZN4Luau8PropertyD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  %i.bzz = load ptr, ptr %60, align 8, !tbaa !900 ; 3 uses
  %i.caa = load ptr, ptr %i.bus, align 8, !tbaa !901 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bzz, %i.caa
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i1120

.lr.ph.i.i.i1120:                                 ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cag, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bzz, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %i.cab = load ptr, ptr %.05.i.i.i, align 8, !tbaa !10 ; 2 uses
  %i.cac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.cad = icmp eq ptr %i.cab, %i.cac
  br i1 %i.cad, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1121: ; preds = %.lr.ph.i.i.i1120
  %i.cae = load i64, ptr %i.cac, align 8, !tbaa !231
  %i.caf = add i64 %i.cae, 1
  call void @_ZdlPvm(ptr noundef %i.cab, i64 noundef %i.caf) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i1120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1121
  %i.cag = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i1122 = icmp eq ptr %i.cag, %i.caa
  br i1 %.not.i.i.i1122, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i1120, !llvm.loop !902

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %60, align 8, !tbaa !900
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.cah = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bzz, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.cah, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ni

bb.ni:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.cai = load ptr, ptr %i.but, align 8, !tbaa !903
  %i.caj = ptrtoint ptr %i.cai to i64
  %i.cak = ptrtoint ptr %i.cah to i64
  %i.cal = sub i64 %i.caj, %i.cak
  call void @_ZdlPvm(ptr noundef nonnull %i.cah, i64 noundef %i.cal) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ni
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #35
  %i.cam = load ptr, ptr %58, align 8, !tbaa !10  ; 2 uses
  %i.can = icmp eq ptr %i.cam, %94
  br i1 %i.can, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.cao = load i64, ptr %94, align 8, !tbaa !231
  %i.cap = add i64 %i.cao, 1
  call void @_ZdlPvm(ptr noundef %i.cam, i64 noundef %i.cap) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1124
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #35
  br label %bb.nu

bb.nj:                                            ; preds = %.noexc1095, %bb.mw
  %i.caq = landingpad { ptr, i32 }
          cleanup
  br label %bb.no

bb.nk:                                            ; preds = %bb.mx
  %i.car = landingpad { ptr, i32 }
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
  %i.cas = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cat = load ptr, ptr %63, align 8, !tbaa !10  ; 2 uses
  %i.cau = icmp eq ptr %i.cat, %i.buh
  br i1 %i.cau, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127: ; preds = %bb.nl
  %i.cav = load i64, ptr %i.buh, align 8, !tbaa !231
  %i.caw = add i64 %i.cav, 1
  call void @_ZdlPvm(ptr noundef %i.cat, i64 noundef %i.caw) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129: ; preds = %bb.nl, %.loopexit1611, %.loopexit.split-lp1612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127
  %.pn474 = phi { ptr, i32 } [ %i.cas, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1127 ], [ %lpad.loopexit.split-lp1614, %.loopexit.split-lp1612 ], [ %lpad.loopexit1613, %.loopexit1611 ], [ %i.cas, %bb.nl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #35
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %57) #35
  br label %bb.nm

bb.nm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129, %bb.nk
  %.pn474.pn = phi { ptr, i32 } [ %.pn474, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1129 ], [ %i.car, %bb.nk ]
  %i.cax = load i8, ptr %i.buf, align 8, !tbaa !405, !range !38, !noundef !39
  %i.cay = trunc nuw i8 %i.cax to i1
  store i8 0, ptr %i.buf, align 8, !tbaa !405
  br i1 %i.cay, label %bb.nn, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132

bb.nn:                                            ; preds = %bb.nm
  %i.caz = load ptr, ptr %61, align 8, !tbaa !10  ; 2 uses
  %i.cba = icmp eq ptr %i.caz, %i.bur
  br i1 %i.cba, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1130: ; preds = %bb.nn
  %i.cbb = load i64, ptr %i.bur, align 8, !tbaa !231
  %i.cbc = add i64 %i.cbb, 1
  call void @_ZdlPvm(ptr noundef %i.caz, i64 noundef %i.cbc) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132: ; preds = %bb.nn, %bb.nm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1130
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #35
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %60) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #35
  %i.cbd = load ptr, ptr %58, align 8, !tbaa !10  ; 2 uses
  %i.cbe = icmp eq ptr %i.cbd, %94
  br i1 %i.cbe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132
  %i.cbf = load i64, ptr %94, align 8, !tbaa !231
  %i.cbg = add i64 %i.cbf, 1
  call void @_ZdlPvm(ptr noundef %i.cbd, i64 noundef %i.cbg) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit1132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1133
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #35
  br label %bb.no

bb.no:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135, %bb.nj
  %.pn474.pn.pn = phi { ptr, i32 } [ %.pn474.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1135 ], [ %i.caq, %bb.nj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #35
  br label %bb.ox

bb.np:                                            ; preds = %bb.mj
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #35
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %65, i32 noundef %i.bvj) #35
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %64, ptr noundef nonnull @.str.151, ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %bb.nq unwind label %bb.ns

bb.nq:                                            ; preds = %bb.np
  invoke void @_ZN4Luau11TypeChecker3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(32) %64) #38
          to label %bb.nr unwind label %bb.nt

bb.nr:                                            ; preds = %bb.nq
  unreachable

bb.ns:                                            ; preds = %bb.np
  %i.cbh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138

bb.nt:                                            ; preds = %bb.nq
  %i.cbi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cbj = load ptr, ptr %64, align 8, !tbaa !10  ; 2 uses
  %i.cbk = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 2 uses
  %i.cbl = icmp eq ptr %i.cbj, %i.cbk
  br i1 %i.cbl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136: ; preds = %bb.nt
  %i.cbm = load i64, ptr %i.cbk, align 8, !tbaa !231
  %i.cbn = add i64 %i.cbm, 1
  call void @_ZdlPvm(ptr noundef %i.cbj, i64 noundef %i.cbn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138: ; preds = %bb.nt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136, %bb.ns
  %.pn472 = phi { ptr, i32 } [ %i.cbh, %bb.ns ], [ %i.cbi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1136 ], [ %i.cbi, %bb.nt ]
  %i.cbo = load ptr, ptr %65, align 8, !tbaa !10  ; 2 uses
  %i.cbp = getelementptr inbounds nuw i8, ptr %65, i64 16 ; 2 uses
  %i.cbq = icmp eq ptr %i.cbo, %i.cbp
  br i1 %i.cbq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138
  %i.cbr = load i64, ptr %i.cbp, align 8, !tbaa !231
  %i.cbs = add i64 %i.cbr, 1
  call void @_ZdlPvm(ptr noundef %i.cbo, i64 noundef %i.cbs) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1139
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #35
  br label %bb.ox

bb.nu:                                            ; preds = %_ZN4Luau12GenericErrorD2Ev.exit1089, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1126, %_ZN4Luau12GenericErrorD2Ev.exit1066
  %i.cbt = getelementptr inbounds nuw i8, ptr %.03471799, i64 56 ; 2 uses
  %.not459 = icmp eq ptr %i.cbt, %i.buc
  br i1 %.not459, label %._crit_edge1802, label %bb.mj

bb.nv:                                            ; preds = %._crit_edge1802
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.bvh, i64 32
  %i.cbv = load i32, ptr %i.cbu, align 8, !tbaa !1658 ; 2 uses
  switch i32 %i.cbv, label %bb.om [
    i32 1, label %.noexc.i1149
    i32 2, label %.noexc.i1172
    i32 3, label %bb.oi
  ]

.noexc.i1149:                                     ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01444)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.51445)
  store i64 0, ptr %.sroa.01444, align 8
  store i64 0, ptr %.sroa.51445, align 8
  %104 = getelementptr inbounds nuw i8, ptr %i.bvh, i64 36
  %105 = getelementptr inbounds nuw i8, ptr %i.bvh, i64 52
  %106 = load i8, ptr %105, align 4, !tbaa !853, !range !38, !noundef !39
  %107 = trunc nuw i8 %106 to i1                  ; 2 uses
  %spec.select.i1142 = select i1 %107, ptr %104, ptr %.sroa.01444
  %.sroa.gep1442 = getelementptr inbounds nuw i8, ptr %i.bvh, i64 44
  %spec.select.i1142.sroa.sel = select i1 %107, ptr %.sroa.gep1442, ptr %.sroa.51445
  %.sroa.3.0.i1144 = load i64, ptr %spec.select.i1142.sroa.sel, align 4
  %.sroa.0.0.i1145 = load i64, ptr %spec.select.i1142, align 4
  store i64 %.sroa.0.0.i1145, ptr %66, align 8
  %108 = getelementptr inbounds nuw i8, ptr %66, i64 8
  store i64 %.sroa.3.0.i1144, ptr %108, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #35
  %i.cbw = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 11 uses
  store ptr %i.cbw, ptr %68, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #35
  store i64 28, ptr %i.m, align 8, !tbaa !656
  %i.cbx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc1150 unwind label %bb.nz ; 2 uses

.noexc1150:                                       ; preds = %.noexc.i1149
  store ptr %i.cbx, ptr %68, align 8, !tbaa !10
  %i.cby = load i64, ptr %i.m, align 8, !tbaa !656 ; 3 uses
  store i64 %i.cby, ptr %i.cbw, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.cbx, ptr noundef nonnull align 1 dereferenceable(28) @.str.149, i64 28, i1 false)
  %i.cbz = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 4 uses
  store i64 %i.cby, ptr %i.cbz, align 8, !tbaa !69
  %i.cca = load ptr, ptr %68, align 8, !tbaa !10
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cca, i64 %i.cby
  store i8 0, ptr %i.ccb, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #35
  store i32 18, ptr %67, align 8, !tbaa !251
  %i.ccc = getelementptr inbounds nuw i8, ptr %67, i64 8 ; 4 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %67, i64 24 ; 3 uses
  store ptr %i.ccd, ptr %i.ccc, align 8, !tbaa !230
  %i.cce = load ptr, ptr %68, align 8, !tbaa !10  ; 2 uses
  %i.ccf = icmp eq ptr %i.cce, %i.cbw
  br i1 %i.ccf, label %bb.nw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1152

bb.nw:                                            ; preds = %.noexc1150
  %i.ccg = load i64, ptr %i.cbz, align 8, !tbaa !69 ; 3 uses
  %i.cch = icmp ult i64 %i.ccg, 16
  call void @llvm.assume(i1 %i.cch)
  %i.cci = add nuw nsw i64 %i.ccg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ccd, ptr noundef nonnull align 8 dereferenceable(1) %i.cbw, i64 %i.cci, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1152: ; preds = %.noexc1150
  store ptr %i.cce, ptr %i.ccc, align 8, !tbaa !10
  %i.ccj = load i64, ptr %i.cbw, align 8, !tbaa !231
  store i64 %i.ccj, ptr %i.ccd, align 8, !tbaa !231
  %.pre1895 = load i64, ptr %i.cbz, align 8, !tbaa !69
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154: ; preds = %bb.nw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1152
  %i.cck = phi i64 [ %i.ccg, %bb.nw ], [ %.pre1895, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1152 ]
  %i.ccl = getelementptr inbounds nuw i8, ptr %67, i64 16
  store i64 %i.cck, ptr %i.ccl, align 8, !tbaa !69
  store ptr %i.cbw, ptr %68, align 8, !tbaa !10
  store i64 0, ptr %i.cbz, align 8, !tbaa !69
  store i8 0, ptr %i.cbw, align 8, !tbaa !231
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %66, ptr noundef nonnull align 8 %67)
          to label %bb.nx unwind label %bb.oa

bb.nx:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154
  %i.ccm = load i32, ptr %67, align 8, !tbaa !251
  %i.ccn = sext i32 %i.ccm to i64
  %i.cco = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.ccn
  %i.ccp = load ptr, ptr %i.cco, align 8, !tbaa !16
  invoke void %i.ccp(ptr noundef nonnull %i.ccc)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1156 unwind label %bb.ny

bb.ny:                                            ; preds = %bb.nx
  %i.ccq = landingpad { ptr, i32 }
          catch ptr null
  %i.ccr = extractvalue { ptr, i32 } %i.ccq, 0
  call void @__clang_call_terminate(ptr %i.ccr) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1156: ; preds = %bb.nx
  %i.ccs = load ptr, ptr %68, align 8, !tbaa !10  ; 2 uses
  %i.cct = icmp eq ptr %i.ccs, %i.cbw
  br i1 %i.cct, label %_ZN4Luau12GenericErrorD2Ev.exit1159, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1157

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1157: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1156
  %i.ccu = load i64, ptr %i.cbw, align 8, !tbaa !231
  %i.ccv = add i64 %i.ccu, 1
  call void @_ZdlPvm(ptr noundef %i.ccs, i64 noundef %i.ccv) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1159

_ZN4Luau12GenericErrorD2Ev.exit1159:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1157
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01444)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51445)
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #35
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.nz:                                            ; preds = %.noexc.i1149
  %i.ccw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1164

bb.oa:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1154
  %i.ccx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ccy = load i32, ptr %67, align 8, !tbaa !251
  %i.ccz = sext i32 %i.ccy to i64
  %i.cda = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.ccz
  %i.cdb = load ptr, ptr %i.cda, align 8, !tbaa !16
  invoke void %i.cdb(ptr noundef nonnull %i.ccc)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161 unwind label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.cdc = landingpad { ptr, i32 }
          catch ptr null
  %i.cdd = extractvalue { ptr, i32 } %i.cdc, 0
  call void @__clang_call_terminate(ptr %i.cdd) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161: ; preds = %bb.oa
  %i.cde = load ptr, ptr %68, align 8, !tbaa !10  ; 2 uses
  %i.cdf = icmp eq ptr %i.cde, %i.cbw
  br i1 %i.cdf, label %_ZN4Luau12GenericErrorD2Ev.exit1164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1162: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161
  %i.cdg = load i64, ptr %i.cbw, align 8, !tbaa !231
  %i.cdh = add i64 %i.cdg, 1
  call void @_ZdlPvm(ptr noundef %i.cde, i64 noundef %i.cdh) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1164

_ZN4Luau12GenericErrorD2Ev.exit1164:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1162, %bb.nz
  %.pn466 = phi { ptr, i32 } [ %i.ccw, %bb.nz ], [ %i.ccx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1162 ], [ %i.ccx, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1161 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01444)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51445)
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #35
  br label %bb.ox

.noexc.i1172:                                     ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01440)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i64 0, ptr %.sroa.01440, align 8
  store i64 0, ptr %.sroa.5, align 8
  %109 = getelementptr inbounds nuw i8, ptr %i.bvh, i64 36
  %110 = getelementptr inbounds nuw i8, ptr %i.bvh, i64 52
  %111 = load i8, ptr %110, align 4, !tbaa !853, !range !38, !noundef !39
  %112 = trunc nuw i8 %111 to i1                  ; 2 uses
  %spec.select.i1165 = select i1 %112, ptr %109, ptr %.sroa.01440
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bvh, i64 44
  %spec.select.i1165.sroa.sel = select i1 %112, ptr %.sroa.gep, ptr %.sroa.5
  %.sroa.3.0.i1167 = load i64, ptr %spec.select.i1165.sroa.sel, align 4
  %.sroa.0.0.i1168 = load i64, ptr %spec.select.i1165, align 4
  store i64 %.sroa.0.0.i1168, ptr %69, align 8
  %113 = getelementptr inbounds nuw i8, ptr %69, i64 8
  store i64 %.sroa.3.0.i1167, ptr %113, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #35
  %i.cdi = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 11 uses
  store ptr %i.cdi, ptr %71, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #35
  store i64 29, ptr %i.l, align 8, !tbaa !656
  %i.cdj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc1173 unwind label %bb.of ; 2 uses

.noexc1173:                                       ; preds = %.noexc.i1172
  store ptr %i.cdj, ptr %71, align 8, !tbaa !10
  %i.cdk = load i64, ptr %i.l, align 8, !tbaa !656 ; 3 uses
  store i64 %i.cdk, ptr %i.cdi, align 8, !tbaa !231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.cdj, ptr noundef nonnull align 1 dereferenceable(29) @.str.150, i64 29, i1 false)
  %i.cdl = getelementptr inbounds nuw i8, ptr %71, i64 8 ; 4 uses
  store i64 %i.cdk, ptr %i.cdl, align 8, !tbaa !69
  %i.cdm = load ptr, ptr %71, align 8, !tbaa !10
  %i.cdn = getelementptr inbounds nuw i8, ptr %i.cdm, i64 %i.cdk
  store i8 0, ptr %i.cdn, align 1, !tbaa !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #35
  store i32 18, ptr %70, align 8, !tbaa !251
  %i.cdo = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 4 uses
  %i.cdp = getelementptr inbounds nuw i8, ptr %70, i64 24 ; 3 uses
  store ptr %i.cdp, ptr %i.cdo, align 8, !tbaa !230
  %i.cdq = load ptr, ptr %71, align 8, !tbaa !10  ; 2 uses
  %i.cdr = icmp eq ptr %i.cdq, %i.cdi
  br i1 %i.cdr, label %bb.oc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1175

bb.oc:                                            ; preds = %.noexc1173
  %i.cds = load i64, ptr %i.cdl, align 8, !tbaa !69 ; 3 uses
  %i.cdt = icmp ult i64 %i.cds, 16
  call void @llvm.assume(i1 %i.cdt)
  %i.cdu = add nuw nsw i64 %i.cds, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cdp, ptr noundef nonnull align 8 dereferenceable(1) %i.cdi, i64 %i.cdu, i1 false)
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1175: ; preds = %.noexc1173
  store ptr %i.cdq, ptr %i.cdo, align 8, !tbaa !10
  %i.cdv = load i64, ptr %i.cdi, align 8, !tbaa !231
  store i64 %i.cdv, ptr %i.cdp, align 8, !tbaa !231
  %.pre1894 = load i64, ptr %i.cdl, align 8, !tbaa !69
  br label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177: ; preds = %bb.oc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1175
  %i.cdw = phi i64 [ %i.cds, %bb.oc ], [ %.pre1894, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1175 ]
  %i.cdx = getelementptr inbounds nuw i8, ptr %70, i64 16
  store i64 %i.cdw, ptr %i.cdx, align 8, !tbaa !69
  store ptr %i.cdi, ptr %71, align 8, !tbaa !10
  store i64 0, ptr %i.cdl, align 8, !tbaa !69
  store i8 0, ptr %i.cdi, align 8, !tbaa !231
  invoke void @_ZN4Luau11TypeChecker11reportErrorERKNS_8LocationENS_7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 4 dereferenceable(16) %69, ptr noundef nonnull align 8 %70)
          to label %bb.od unwind label %bb.og

bb.od:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177
  %i.cdy = load i32, ptr %70, align 8, !tbaa !251
  %i.cdz = sext i32 %i.cdy to i64
  %i.cea = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.cdz
  %i.ceb = load ptr, ptr %i.cea, align 8, !tbaa !16
  invoke void %i.ceb(ptr noundef nonnull %i.cdo)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1179 unwind label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.cec = landingpad { ptr, i32 }
          catch ptr null
  %i.ced = extractvalue { ptr, i32 } %i.cec, 0
  call void @__clang_call_terminate(ptr %i.ced) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1179: ; preds = %bb.od
  %i.cee = load ptr, ptr %71, align 8, !tbaa !10  ; 2 uses
  %i.cef = icmp eq ptr %i.cee, %i.cdi
  br i1 %i.cef, label %_ZN4Luau12GenericErrorD2Ev.exit1182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1180: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1179
  %i.ceg = load i64, ptr %i.cdi, align 8, !tbaa !231
  %i.ceh = add i64 %i.ceg, 1
  call void @_ZdlPvm(ptr noundef %i.cee, i64 noundef %i.ceh) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1182

_ZN4Luau12GenericErrorD2Ev.exit1182:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1179, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1180
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01440)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.of:                                            ; preds = %.noexc.i1172
  %i.cei = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12GenericErrorD2Ev.exit1187

bb.og:                                            ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1177
  %i.cej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cek = load i32, ptr %70, align 8, !tbaa !251
  %i.cel = sext i32 %i.cek to i64
  %i.cem = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.cel
  %i.cen = load ptr, ptr %i.cem, align 8, !tbaa !16
  invoke void %i.cen(ptr noundef nonnull %i.cdo)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184 unwind label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.ceo = landingpad { ptr, i32 }
          catch ptr null
  %i.cep = extractvalue { ptr, i32 } %i.ceo, 0
  call void @__clang_call_terminate(ptr %i.cep) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184: ; preds = %bb.og
  %i.ceq = load ptr, ptr %71, align 8, !tbaa !10  ; 2 uses
  %i.cer = icmp eq ptr %i.ceq, %i.cdi
  br i1 %i.cer, label %_ZN4Luau12GenericErrorD2Ev.exit1187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1185

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1185: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184
  %i.ces = load i64, ptr %i.cdi, align 8, !tbaa !231
  %i.cet = add i64 %i.ces, 1
  call void @_ZdlPvm(ptr noundef %i.ceq, i64 noundef %i.cet) #36
  br label %_ZN4Luau12GenericErrorD2Ev.exit1187

_ZN4Luau12GenericErrorD2Ev.exit1187:              ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1185, %bb.of
  %.pn463 = phi { ptr, i32 } [ %i.cei, %bb.of ], [ %i.cej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1185 ], [ %i.cej, %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExte1184 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01440)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #35
  br label %bb.ox

bb.oi:                                            ; preds = %bb.nv
  %i.ceu = load ptr, ptr %i.bvh, align 8, !tbaa !885 ; 2 uses
  %i.cev = invoke noundef ptr @_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.ceu)
          to label %.noexc1188 unwind label %bb.ol, !inline_history !644 ; 2 uses

.noexc1188:                                       ; preds = %bb.oi
  %i.cew = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !298
  %i.cey = getelementptr inbounds nuw i8, ptr %i.cex, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #35
  store ptr %i.ceu, ptr %i.k, align 8, !tbaa !645
  %i.cez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstTypeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.cey, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.oj unwind label %bb.ol, !inline_history !644

bb.oj:                                            ; preds = %.noexc1188
  store ptr %i.cev, ptr %i.cez, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #35
  %i.cfa = load ptr, ptr %i.bvg, align 8, !tbaa !884
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cfa, i64 8
  %i.cfc = load ptr, ptr %i.cfb, align 8, !tbaa !888 ; 2 uses
  %i.cfd = invoke noundef ptr @_ZN4Luau11TypeChecker17resolveTypeWorkerERKSt10shared_ptrINS_5ScopeEERKNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(28) %i.cfc)
          to label %.noexc1191 unwind label %bb.ol, !inline_history !644 ; 2 uses

.noexc1191:                                       ; preds = %bb.oj
  %i.cfe = load ptr, ptr %i.cew, align 8, !tbaa !298
  %i.cff = getelementptr inbounds nuw i8, ptr %i.cfe, i64 576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #35
  store ptr %i.cfc, ptr %i.j, align 8, !tbaa !645
  %i.cfg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstTypeEPKNS_4TypeENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.cff, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.ok unwind label %bb.ol, !inline_history !644

bb.ok:                                            ; preds = %.noexc1191
  store ptr %i.cfd, ptr %i.cfg, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  store ptr %i.cev, ptr %50, align 8, !tbaa !206
  %.sroa.61433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 8
  store ptr %i.cfd, ptr %.sroa.61433.0..sroa_idx, align 8, !tbaa !206
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %50, i64 16
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !529
  store i8 1, ptr %i.btx, align 8, !tbaa !720
  br label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.ol:                                            ; preds = %.noexc1191, %bb.oj, %.noexc1188, %bb.oi
  %i.cfh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ox

bb.om:                                            ; preds = %bb.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #35
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, i32 noundef %i.cbv) #35
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull @.str.151, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %bb.on unwind label %bb.op

bb.on:                                            ; preds = %bb.om
  invoke void @_ZN4Luau11TypeChecker3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(32) %72) #38
          to label %bb.oo unwind label %bb.oq

bb.oo:                                            ; preds = %bb.on
  unreachable

bb.op:                                            ; preds = %bb.om
  %i.cfi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196

bb.oq:                                            ; preds = %bb.on
  %i.cfj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cfk = load ptr, ptr %72, align 8, !tbaa !10  ; 2 uses
  %i.cfl = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.cfm = icmp eq ptr %i.cfk, %i.cfl
  br i1 %i.cfm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194: ; preds = %bb.oq
  %i.cfn = load i64, ptr %i.cfl, align 8, !tbaa !231
  %i.cfo = add i64 %i.cfn, 1
  call void @_ZdlPvm(ptr noundef %i.cfk, i64 noundef %i.cfo) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196: ; preds = %bb.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194, %bb.op
  %.pn461 = phi { ptr, i32 } [ %i.cfi, %bb.op ], [ %i.cfj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1194 ], [ %i.cfj, %bb.oq ]
  %i.cfp = load ptr, ptr %73, align 8, !tbaa !10  ; 2 uses
  %i.cfq = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.cfr = icmp eq ptr %i.cfp, %i.cfq
  br i1 %i.cfr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196
  %i.cfs = load i64, ptr %i.cfq, align 8, !tbaa !231
  %i.cft = add i64 %i.cfs, 1
  call void @_ZdlPvm(ptr noundef %i.cfp, i64 noundef %i.cft) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1197
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #35
  br label %bb.ox

_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.ok, %_ZN4Luau12GenericErrorD2Ev.exit1159, %_ZN4Luau12GenericErrorD2Ev.exit1182, %._crit_edge1802
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #35
  %i.cfu = load ptr, ptr %1, align 8, !tbaa !258
  %i.cfv = getelementptr inbounds nuw i8, ptr %i.cfu, i64 120
  %.sroa.082.0.copyload = load i64, ptr %i.cfv, align 8
  invoke void @_ZN4Luau9TableTypeC1ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8PropertyESt4lessIS7_ESaISt4pairIKS7_S8_EEERKSt8optionalINS_12TableIndexerEENS_9TypeLevelENS_10TableStateE(ptr noundef nonnull align 8 dereferenceable(328) %74, ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull align 8 dereferenceable(32) %50, i64 %.sroa.082.0.copyload, i32 noundef 0)
          to label %bb.or unwind label %bb.ou

bb.or:                                            ; preds = %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.cfw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cfx = load ptr, ptr %i.cfw, align 8, !tbaa !298
  %i.cfy = getelementptr inbounds nuw i8, ptr %i.cfx, i64 8
  %i.cfz = getelementptr inbounds nuw i8, ptr %74, i64 232
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cfz, ptr noundef nonnull align 8 dereferenceable(32) %i.cfy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ov

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.or
  %i.cga = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cgb = getelementptr inbounds nuw i8, ptr %74, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cgb, ptr noundef nonnull align 4 dereferenceable(16) %i.cga, i64 16, i1 false), !tbaa.struct !496
  %i.cgc = invoke noundef ptr @_ZN4Luau11TypeChecker7addTypeINS_9TableTypeEEEPKNS_4TypeERKT_(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(328) %74)
          to label %bb.os unwind label %bb.ov

bb.os:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %74) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #35
  %i.cgd = load ptr, ptr %i.btt, align 8, !tbaa !897
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef %i.cgd)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.cge = landingpad { ptr, i32 }
          catch ptr null
  %i.cgf = extractvalue { ptr, i32 } %i.cge, 0
  call void @__clang_call_terminate(ptr %i.cgf) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.os
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #35
  br label %bb.uu

bb.ou:                                            ; preds = %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.cgg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ow

bb.ov:                                            ; preds = %bb.or, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.cgh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %74) #35
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %.pn470 = phi { ptr, i32 } [ %i.cgh, %bb.ov ], [ %i.cgg, %bb.ou ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #35
  br label %bb.ox

bb.ox:                                            ; preds = %_ZN4Luau12GenericErrorD2Ev.exit1164, %_ZN4Luau12GenericErrorD2Ev.exit1187, %bb.ol, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199, %_ZN4Luau12GenericErrorD2Ev.exit1071, %_ZN4Luau12GenericErrorD2Ev.exit1094, %bb.no, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141, %bb.ow
  %.pn481.pn.pn.pn = phi { ptr, i32 } [ %.pn472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141 ], [ %.pn470, %bb.ow ], [ %.pn481, %_ZN4Luau12GenericErrorD2Ev.exit1071 ], [ %.pn478, %_ZN4Luau12GenericErrorD2Ev.exit1094 ], [ %.pn474.pn.pn, %bb.no ], [ %.pn466, %_ZN4Luau12GenericErrorD2Ev.exit1164 ], [ %.pn463, %_ZN4Luau12GenericErrorD2Ev.exit1187 ], [ %i.cfh, %bb.ol ], [ %.pn461, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1199 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #35
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %49) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #35
  br label %_ZNSt6vectorIPKN4Luau4TypeESaIS3_EED2Ev.exit1322

bb.oy:                                            ; preds = %bb.mh
  %i.cgi = load i32, ptr @_ZN4Luau7AstRttiINS_15AstTypeFunctionEE5valueE, align 4, !tbaa !9
  %.not1553 = icmp eq i32 %i.ac, %i.cgi
  br i1 %.not1553, label %bb.oz, label %bb.sj

bb.oz:                                            ; preds = %bb.oy
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #35
  %i.cgj = getelementptr inbounds nuw i8, ptr %2, i64 12
  call void @_ZN4Luau11TypeChecker10childScopeERKSt10shared_ptrINS_5ScopeEERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.133") align 8 %75, ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.cgj)
  %i.cgk = load ptr, ptr %1, align 8, !tbaa !258
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.cgk, i64 120
  %i.cgm = load i32, ptr %i.cgl, align 4, !tbaa !812
  %i.cgn = add nsw i32 %i.cgm, 1
  %.sroa.0.0.insert.ext.i = zext i32 %i.cgn to i64
  %i.cgo = load ptr, ptr %75, align 8, !tbaa !258
  %i.cgp = getelementptr inbounds nuw i8, ptr %i.cgo, i64 120
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.cgp, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #35
  %i.cgq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.cgr = getelementptr inbounds nuw i8, ptr %2, i64 64
  invoke void @_ZN4Luau11TypeChecker18createGenericTypesERKSt10shared_ptrINS_5ScopeEESt8optionalINS_9TypeLevelEERKNS_7AstNodeERKNS_8AstArrayIPNS_14AstGenericTypeEEERKNSC_IPNS_18AstGenericTypePackEEEb(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::GenericTypeDefinitions") align 8 %76, ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %75, i64 undef, i8 0, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.cgq, ptr noundef nonnull align 8 dereferenceable(16) %i.cgr, i1 noundef zeroext false)
          to label %bb.pa unwind label %bb.pw

bb.pa:                                            ; preds = %bb.oz
  %i.cgs = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.cgt = invoke noundef ptr @_ZN4Luau11TypeChecker15resolveTypePackERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypeListE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(24) %i.cgs)
          to label %bb.pb unwind label %bb.px

bb.pb:                                            ; preds = %bb.pa
  %i.cgu = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.cgv = load ptr, ptr %i.cgu, align 8, !tbaa !1659
  %i.cgw = invoke noundef ptr @_ZN4Luau11TypeChecker15resolveTypePackERKSt10shared_ptrINS_5ScopeEERKNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(28) %i.cgv)
          to label %bb.pc unwind label %bb.py

end_hunk_1
