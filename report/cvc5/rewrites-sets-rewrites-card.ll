Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/rewrites-sets-rewrites-card?download=true
inline.NumInlined: 331
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cvc5::internal::NodeTemplate" = type { ptr }
%"class.cvc5::internal::NodeTemplate.70" = type { ptr }
%"class.cvc5::internal::NodeBuilder" = type <{ %"class.cvc5::internal::expr::NodeValue", [10 x ptr], ptr, ptr, i32, [4 x i8] }>
%"class.cvc5::internal::expr::NodeValue" = type { i64, i64, ptr, [0 x ptr] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.cvc5::internal::TypeNode" = type { ptr }
%"class.cvc5::internal::Rational" = type { %class.__gmp_expr }
%class.__gmp_expr = type { [1 x %struct.__mpq_struct] }
%struct.__mpq_struct = type { %struct.__mpz_struct, %struct.__mpz_struct }
%struct.__mpz_struct = type { i32, i32, ptr }
%"class.std::vector.98" = type { %"struct.std::_Vector_base.99" }
%"struct.std::_Vector_base.99" = type { %"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl" }
%"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.__gmp_expr.135 = type { [1 x %struct.__mpz_struct] }

$_ZN4cvc58internal8TypeNodeD2Ev = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EED2Ev = comdat any

$_ZN4cvc58internal8RationalC2Ei = comdat any

$_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_ = comdat any

$_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_ = comdat any

$_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

$_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

@.str = private unnamed_addr constant [6 x i8] c"x1479\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"s1480\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"t1481\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"s1482\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"t1483\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"x1484\00", align 1
@_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden global %"class.cvc5::internal::NodeTemplate" zeroinitializer, comdat, align 8
@_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE), align 8
@__dso_handle = external hidden global i8
@_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr local_unnamed_addr global ptr null, comdat, align 8
@_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr global i64 0, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal8rewriter30addRewrites_sets_rewrites_cardEPNS0_11NodeManagerERNS1_9RewriteDbE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(544) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %4 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %6 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %8 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %11 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %12 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %13 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %15 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %16 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %18 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %19 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %21 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %23 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %24 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %25 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %27 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %29 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %30 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %31 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %32 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %33 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %34 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %35 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %36 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %37 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %38 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %39 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %40 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %41 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %42 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %45 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %51 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %54 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %57 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %60 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %61 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %62 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %63 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %64 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %65 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %66 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %67 = alloca %"class.std::vector.98", align 8   ; 10 uses
  %68 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %69 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %70 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %71 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %72 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %73 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %74 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %75 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %76 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %77 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %78 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %79 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %80 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %81 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %82 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %83 = alloca %"class.std::vector.98", align 8   ; 10 uses
  %84 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %85 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %86 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %87 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %88 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %89 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %90 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %91 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %92 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %93 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %94 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %95 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %96 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %97 = alloca %"class.std::vector.98", align 8   ; 10 uses
  %98 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 12 uses
  %99 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %100 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %101 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %102 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %103 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %104 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %105 = alloca %"class.cvc5::internal::Rational", align 8 ; 7 uses
  %106 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %107 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %108 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %109 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %110 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %111 = alloca [1 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 8 uses
  %112 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %113 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %114 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %115 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  %i.b = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  store ptr %i.b, ptr %43, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.b, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 5, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %43, i64 21
  store i8 0, ptr %i.d, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %44, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 14)
          to label %bb.b unwind label %bb.nj

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %42, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.c unwind label %bb.nk

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %44, align 8, !tbaa !13    ; 3 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.g, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.f, 1152920405095219200
  %i.i = and i64 %i.h, 1152920405095219200        ; 2 uses
  %i.j = and i64 %i.f, -1152920405095219201
  %i.k = or disjoint i64 %i.i, %i.j
  store i64 %i.k, ptr %i.e, align 8
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %bb.e, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #16
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  %i.o = load ptr, ptr %43, align 8, !tbaa !81    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !80
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  %i.s = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  store ptr %i.s, ptr %46, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.s, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 5, ptr %i.t, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %46, i64 21
  store i8 0, ptr %i.u, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %47, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 255)
          to label %bb.g unwind label %bb.nm

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.h unwind label %bb.nn

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %47, align 8, !tbaa !13    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i232 = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i232, label %_ZN4cvc58internal8TypeNodeD2Ev.exit233, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.j, label %_ZN4cvc58internal8TypeNodeD2Ev.exit233, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit233 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #16
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit233:           ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  %i.af = load ptr, ptr %46, align 8, !tbaa !81   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit233
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !80
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i235: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit233, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  store ptr %i.aj, ptr %49, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.aj, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 5, ptr %i.ak, align 8, !tbaa !79
  %i.al = getelementptr inbounds nuw i8, ptr %49, i64 21
  store i8 0, ptr %i.al, align 1, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %50, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 255)
          to label %bb.l unwind label %bb.np

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i235
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %48, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.m unwind label %bb.nq

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %50, align 8, !tbaa !13   ; 3 uses
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = and i64 %i.an, 1152920405095219200
  %.not.i.i241 = icmp eq i64 %i.ao, 1152920405095219200
  br i1 %.not.i.i241, label %_ZN4cvc58internal8TypeNodeD2Ev.exit242, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.ap = add i64 %i.an, 1152920405095219200
  %i.aq = and i64 %i.ap, 1152920405095219200      ; 2 uses
  %i.ar = and i64 %i.an, -1152920405095219201
  %i.as = or disjoint i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.am, align 8
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %bb.o, label %_ZN4cvc58internal8TypeNodeD2Ev.exit242, !prof !14

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit242 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #16
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit242:           ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #15
  %i.aw = load ptr, ptr %49, align 8, !tbaa !81   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.aj
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit242
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !80
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i244: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit242, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i243
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #15
  %i.ba = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 6 uses
  store ptr %i.ba, ptr %52, align 8, !tbaa !77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.ba, ptr noundef nonnull align 1 dereferenceable(5) @.str.3, i64 5, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 5, ptr %i.bb, align 8, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %52, i64 21
  store i8 0, ptr %i.bc, align 1, !tbaa !80
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal8rewriter30addRewrites_sets_rewrites_cardEPNS0_11NodeManagerERNS1_9RewriteDbE:bb.a
  %.pn155 = phi { ptr, i32 } [ %i.axv, %bb.oe ], [ %i.axw, %bb.of ]
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #15
  br label %bb.ov

bb.oh:                                            ; preds = %bb.au
  %i.axz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ou

bb.oi:                                            ; preds = %bb.ax
  %i.aya = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.oj:                                            ; preds = %bb.ba
  %i.ayb = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit703

bb.ok:                                            ; preds = %bb.bg
  %i.ayc = landingpad { ptr, i32 }
          cleanup
  br label %bb.os

bb.ol:                                            ; preds = %bb.bj
  %i.ayd = landingpad { ptr, i32 }
          cleanup
  br label %bb.or

bb.om:                                            ; preds = %bb.bm
  %i.aye = landingpad { ptr, i32 }
          cleanup
  br label %bb.oq

bb.on:                                            ; preds = %bb.bp
  %i.ayf = landingpad { ptr, i32 }
          cleanup
  br label %bb.op

bb.oo:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit292
  %i.ayg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %72) #15
  br label %bb.op

bb.op:                                            ; preds = %bb.oo, %bb.on
  %.pn157 = phi { ptr, i32 } [ %i.ayg, %bb.oo ], [ %i.ayf, %bb.on ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %71) #15
  br label %bb.oq

bb.oq:                                            ; preds = %bb.op, %bb.om
  %.pn157.pn = phi { ptr, i32 } [ %.pn157, %bb.op ], [ %i.aye, %bb.om ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #15
  br label %bb.or

bb.or:                                            ; preds = %bb.oq, %bb.ol
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %bb.oq ], [ %i.ayd, %bb.ol ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #15
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.ok
  %.pn157.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn, %bb.or ], [ %i.ayc, %bb.ok ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %67) #15
  br label %.body283

.body283:                                         ; preds = %bb.bc, %bb.bb, %bb.os
  %.pn157.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn, %bb.os ], [ %i.fn, %bb.bb ], [ %i.fn, %bb.bc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #15
  br label %.loopexit703

.loopexit703:                                     ; preds = %.body283, %bb.oj
  %.pn157.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ayb, %bb.oj ], [ %.pn157.pn.pn.pn.pn, %.body283 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %66) #15
  br label %bb.ot

bb.ot:                                            ; preds = %.loopexit703, %bb.oi
  %.pn157.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn.pn, %.loopexit703 ], [ %i.aya, %bb.oi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #15
  br label %bb.ou

bb.ou:                                            ; preds = %bb.ot, %bb.oh
  %.pn157.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn.pn.pn, %bb.ot ], [ %i.axz, %bb.oh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %63) #15
  br label %bb.ov

bb.ov:                                            ; preds = %bb.ou, %_ZN4cvc58internal8RationalD2Ev.exit628
  %.pn157.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn.pn.pn.pn, %bb.ou ], [ %.pn155, %_ZN4cvc58internal8RationalD2Ev.exit628 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %61) #15
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %.body
  %.pn157.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn157.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ov ], [ %.pn153, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #15
  br label %bb.rh

bb.ox:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit311
  %i.ayh = landingpad { ptr, i32 }
          cleanup
  br label %.body314

bb.oy:                                            ; preds = %bb.cw
  %i.ayi = landingpad { ptr, i32 }
          cleanup
  br label %.body317

.body317:                                         ; preds = %bb.cy, %bb.oy
  %eh.lpad-body318 = phi { ptr, i32 } [ %i.ayi, %bb.oy ], [ %i.mf, %bb.cy ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %74) #15
  br label %.body314

.body314:                                         ; preds = %bb.ox, %.loopexit.split-lp.loopexit.split-lp.i, %.body317
  %.pn168 = phi { ptr, i32 } [ %eh.lpad-body318, %.body317 ], [ %i.ayh, %bb.ox ], [ %lpad.loopexit.split-lp9.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #15
  br label %bb.ps

bb.oz:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit321
  %i.ayj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.pa:                                            ; preds = %bb.df
  %i.ayk = landingpad { ptr, i32 }
          cleanup
  br label %.body323

bb.pb:                                            ; preds = %bb.di
  %i.ayl = landingpad { ptr, i32 }
          cleanup
  br label %.body336

bb.pc:                                            ; preds = %bb.dj
  %i.aym = landingpad { ptr, i32 }
          cleanup
  br label %.body345

bb.pd:                                            ; preds = %bb.dk
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  br label %.body349

bb.pe:                                            ; preds = %bb.dn
  %i.ayo = landingpad { ptr, i32 }
          cleanup
  br label %.body358

.body358:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i352, %bb.pe
  %eh.lpad-body359 = phi { ptr, i32 } [ %i.ayo, %bb.pe ], [ %lpad.loopexit.split-lp9.i353, %.loopexit.split-lp.loopexit.split-lp.i352 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %79) #15
  br label %.body349

.body349:                                         ; preds = %bb.pd, %bb.dm, %.body358
  %.pn170 = phi { ptr, i32 } [ %eh.lpad-body359, %.body358 ], [ %i.nr, %bb.dm ], [ %i.ayn, %bb.pd ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %80) #15
  br label %.body345

.body345:                                         ; preds = %bb.pc, %.loopexit.split-lp.loopexit.split-lp.i339, %.body349
  %.pn170.pn = phi { ptr, i32 } [ %.pn170, %.body349 ], [ %lpad.loopexit.split-lp9.i340, %.loopexit.split-lp.loopexit.split-lp.i339 ], [ %i.aym, %bb.pc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %76) #15
  br label %.body336

.body336:                                         ; preds = %bb.pb, %.loopexit.split-lp.loopexit.split-lp.i330, %.body345
  %.pn170.pn.pn = phi { ptr, i32 } [ %.pn170.pn, %.body345 ], [ %lpad.loopexit.split-lp9.i331, %.loopexit.split-lp.loopexit.split-lp.i330 ], [ %i.ayl, %bb.pb ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %78) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %77) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #15
  br label %.loopexit702

.body323:                                         ; preds = %bb.dh, %bb.pa
  %.pn170.pn.pn.pn = phi { ptr, i32 } [ %i.na, %bb.dh ], [ %i.ayk, %bb.pa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %77) #15
  br label %.thread

.thread:                                          ; preds = %bb.oz, %bb.de, %.body323
  %.pn170.pn.pn.pn.pn671.ph = phi { ptr, i32 } [ %.pn170.pn.pn.pn, %.body323 ], [ %i.mu, %bb.de ], [ %i.ayj, %bb.oz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #15
  br label %.loopexit702

bb.pf:                                            ; preds = %bb.eg
  %i.ayp = landingpad { ptr, i32 }
          cleanup
  br label %bb.pr

bb.pg:                                            ; preds = %bb.ej
  %i.ayq = landingpad { ptr, i32 }
          cleanup
  br label %bb.pq

.loopexit699.loopexit705:                         ; preds = %bb.ep
  %i.ayr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %84) #15
  br label %.loopexit699

bb.ph:                                            ; preds = %bb.ev
  %i.ays = landingpad { ptr, i32 }
          cleanup
  br label %bb.pp

bb.pi:                                            ; preds = %bb.ey
  %i.ayt = landingpad { ptr, i32 }
          cleanup
  br label %bb.po

bb.pj:                                            ; preds = %bb.fb
  %i.ayu = landingpad { ptr, i32 }
          cleanup
  br label %bb.pn

bb.pk:                                            ; preds = %bb.fe
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  br label %bb.pm

bb.pl:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit392
  %i.ayw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %88) #15
  br label %bb.pm

bb.pm:                                            ; preds = %bb.pl, %bb.pk
  %.pn176 = phi { ptr, i32 } [ %i.ayw, %bb.pl ], [ %i.ayv, %bb.pk ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %87) #15
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pj
  %.pn176.pn = phi { ptr, i32 } [ %.pn176, %bb.pm ], [ %i.ayu, %bb.pj ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %86) #15
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.pi
  %.pn176.pn.pn = phi { ptr, i32 } [ %.pn176.pn, %bb.pn ], [ %i.ayt, %bb.pi ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %85) #15
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.ph
  %.pn176.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn, %bb.po ], [ %i.ays, %bb.ph ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %83) #15
  br label %.body382

.body382:                                         ; preds = %bb.er, %bb.eq, %bb.pp
  %.pn176.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn.pn, %bb.pp ], [ %i.sc, %bb.eq ], [ %i.sc, %bb.er ]
  %i.ayx = getelementptr inbounds nuw i8, ptr %84, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ayx) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %84) #15
  br label %.loopexit699

.loopexit699:                                     ; preds = %.loopexit699.loopexit705, %.body382, %.thread682
  %.pn176.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn.pn.pn, %.body382 ], [ %i.ri, %.thread682 ], [ %i.ayr, %.loopexit699.loopexit705 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %82) #15
  br label %bb.pq

bb.pq:                                            ; preds = %.loopexit699, %bb.pg
  %.pn176.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn.pn.pn.pn, %.loopexit699 ], [ %i.ayq, %bb.pg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %82) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %81) #15
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.pf
  %.pn176.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn.pn.pn.pn.pn, %bb.pq ], [ %i.ayp, %bb.pf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %75) #15
  br label %.loopexit702

.loopexit702:                                     ; preds = %.body336, %.thread, %bb.pr
  %.pn176.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn.pn.pn.pn.pn.pn, %bb.pr ], [ %.pn170.pn.pn.pn.pn671.ph, %.thread ], [ %.pn170.pn.pn, %.body336 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %73) #15
  br label %bb.ps

bb.ps:                                            ; preds = %.loopexit702, %.body314
  %.pn176.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn176.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit702 ], [ %.pn168, %.body314 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #15
  br label %bb.rh

bb.pt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit422
  %i.ayy = landingpad { ptr, i32 }
          cleanup
  br label %.body429

bb.pu:                                            ; preds = %bb.gn
  %i.ayz = landingpad { ptr, i32 }
          cleanup
  br label %.body433

.body433:                                         ; preds = %bb.gp, %bb.pu
  %eh.lpad-body434 = phi { ptr, i32 } [ %i.ayz, %bb.pu ], [ %i.zd, %bb.gp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %90) #15
  br label %.body429

.body429:                                         ; preds = %bb.pt, %.loopexit.split-lp.loopexit.split-lp.i423, %.body433
  %.pn187 = phi { ptr, i32 } [ %eh.lpad-body434, %.body433 ], [ %i.ayy, %bb.pt ], [ %lpad.loopexit.split-lp9.i424, %.loopexit.split-lp.loopexit.split-lp.i423 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #15
  br label %bb.qm

bb.pv:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit437
  %i.aza = landingpad { ptr, i32 }
          cleanup
  br label %.body439.thread

bb.pw:                                            ; preds = %bb.gw
  %i.azb = landingpad { ptr, i32 }
          cleanup
  br label %.body448.thread

bb.px:                                            ; preds = %bb.gx
  %i.azc = landingpad { ptr, i32 }
          cleanup
  br label %.body448

bb.py:                                            ; preds = %bb.ha
  %i.azd = landingpad { ptr, i32 }
          cleanup
  br label %.body461

.body461:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i455, %bb.py
  %eh.lpad-body462 = phi { ptr, i32 } [ %i.azd, %bb.py ], [ %lpad.loopexit.split-lp9.i456, %.loopexit.split-lp.loopexit.split-lp.i455 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %93) #15
  br label %.body448

.body448.thread:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i442, %bb.pw
  %.pn189.pn.ph = phi { ptr, i32 } [ %i.azb, %bb.pw ], [ %lpad.loopexit.split-lp9.i443, %.loopexit.split-lp.loopexit.split-lp.i442 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %92) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #15
  br label %.loopexit698

.body448:                                         ; preds = %.body461, %bb.gz, %bb.px
  %.pn189 = phi { ptr, i32 } [ %eh.lpad-body462, %.body461 ], [ %i.aae, %bb.gz ], [ %i.azc, %bb.px ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %94) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %92) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #15
  br label %.loopexit698

.body439.thread:                                  ; preds = %bb.gv, %bb.pv
  %.pn189.pn.pn.ph = phi { ptr, i32 } [ %i.zs, %bb.gv ], [ %i.aza, %bb.pv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #15
  br label %.loopexit698

bb.pz:                                            ; preds = %bb.hn
  %i.aze = landingpad { ptr, i32 }
          cleanup
  br label %bb.ql

bb.qa:                                            ; preds = %bb.hq
  %i.azf = landingpad { ptr, i32 }
          cleanup
  br label %bb.qk

.loopexit695.loopexit704:                         ; preds = %bb.hw
  %i.azg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %98) #15
  br label %.loopexit695

bb.qb:                                            ; preds = %bb.ic
  %i.azh = landingpad { ptr, i32 }
          cleanup
  br label %bb.qj

bb.qc:                                            ; preds = %bb.if
  %i.azi = landingpad { ptr, i32 }
          cleanup
  br label %bb.qi

bb.qd:                                            ; preds = %bb.ii
  %i.azj = landingpad { ptr, i32 }
          cleanup
  br label %bb.qh

bb.qe:                                            ; preds = %bb.il
  %i.azk = landingpad { ptr, i32 }
          cleanup
  br label %bb.qg

bb.qf:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit491
  %i.azl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %102) #15
  br label %bb.qg

bb.qg:                                            ; preds = %bb.qf, %bb.qe
  %.pn193 = phi { ptr, i32 } [ %i.azl, %bb.qf ], [ %i.azk, %bb.qe ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %101) #15
  br label %bb.qh

bb.qh:                                            ; preds = %bb.qg, %bb.qd
  %.pn193.pn = phi { ptr, i32 } [ %.pn193, %bb.qg ], [ %i.azj, %bb.qd ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %100) #15
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qh, %bb.qc
  %.pn193.pn.pn = phi { ptr, i32 } [ %.pn193.pn, %bb.qh ], [ %i.azi, %bb.qc ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %99) #15
  br label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qb
  %.pn193.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn, %bb.qi ], [ %i.azh, %bb.qb ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %97) #15
  br label %.body481

.body481:                                         ; preds = %bb.hy, %bb.hx, %bb.qj
  %.pn193.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn, %bb.qj ], [ %i.adv, %bb.hx ], [ %i.adv, %bb.hy ]
  %i.azm = getelementptr inbounds nuw i8, ptr %98, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.azm) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %98) #15
  br label %.loopexit695

.loopexit695:                                     ; preds = %.loopexit695.loopexit704, %.body481, %.thread689
  %.pn193.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn.pn, %.body481 ], [ %i.adb, %.thread689 ], [ %i.azg, %.loopexit695.loopexit704 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %96) #15
  br label %bb.qk

bb.qk:                                            ; preds = %.loopexit695, %bb.qa
  %.pn193.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn.pn.pn, %.loopexit695 ], [ %i.azf, %bb.qa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %95) #15
  br label %bb.ql

bb.ql:                                            ; preds = %bb.qk, %bb.pz
  %.pn193.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn.pn.pn.pn, %bb.qk ], [ %i.aze, %bb.pz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %91) #15
  br label %.loopexit698

.loopexit698:                                     ; preds = %.body448, %.body439.thread, %.body448.thread, %bb.ql
  %.pn193.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn.pn.pn.pn.pn, %bb.ql ], [ %.pn189.pn.pn.ph, %.body439.thread ], [ %.pn189, %.body448 ], [ %.pn189.pn.ph, %.body448.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %89) #15
  br label %bb.qm

bb.qm:                                            ; preds = %.loopexit698, %.body429
  %.pn193.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit698 ], [ %.pn187, %.body429 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #15
  br label %bb.rh

bb.qn:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit521
  %i.azn = landingpad { ptr, i32 }
          cleanup
  br label %.body523

bb.qo:                                            ; preds = %bb.jw
  %i.azo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4cvc58internal8RationalD2Ev.exit629

bb.qp:                                            ; preds = %bb.jx
  %i.azp = landingpad { ptr, i32 }
          cleanup
  invoke void @__gmpq_clear(ptr noundef nonnull align 8 dereferenceable(32) %105)
          to label %_ZN4cvc58internal8RationalD2Ev.exit629 unwind label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.azq = landingpad { ptr, i32 }
          catch ptr null
  %i.azr = extractvalue { ptr, i32 } %i.azq, 0
  call void @__clang_call_terminate(ptr %i.azr) #16
  unreachable

_ZN4cvc58internal8RationalD2Ev.exit629:           ; preds = %bb.qp, %bb.qo
  %.pn204 = phi { ptr, i32 } [ %i.azo, %bb.qo ], [ %i.azp, %bb.qp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #15
  br label %bb.rg

bb.qr:                                            ; preds = %_ZN4cvc58internal8RationalD2Ev.exit526
  %i.azs = landingpad { ptr, i32 }
          cleanup
  br label %.body528

bb.qs:                                            ; preds = %bb.kc
  %i.azt = landingpad { ptr, i32 }
          cleanup
  br label %.body532

bb.qt:                                            ; preds = %bb.kf
  %i.azu = landingpad { ptr, i32 }
          cleanup
  br label %.body541

.body541:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i535, %bb.qt
  %eh.lpad-body542 = phi { ptr, i32 } [ %i.azu, %bb.qt ], [ %lpad.loopexit.split-lp9.i536, %.loopexit.split-lp.loopexit.split-lp.i535 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %107) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #15
  br label %.loopexit694

.body532:                                         ; preds = %bb.qs, %bb.ke
  %.pn206 = phi { ptr, i32 } [ %i.alc, %bb.ke ], [ %i.azt, %bb.qs ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #15
  br label %.loopexit694

.body528:                                         ; preds = %bb.qr, %bb.kb
  %.pn206.pn = phi { ptr, i32 } [ %i.akx, %bb.kb ], [ %i.azs, %bb.qr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #15
  br label %.loopexit694

bb.qu:                                            ; preds = %bb.kp
  %i.azv = landingpad { ptr, i32 }
          cleanup
  br label %bb.rf

bb.qv:                                            ; preds = %bb.ks
  %i.azw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.qw:                                            ; preds = %bb.ky
  %i.azx = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

bb.qx:                                            ; preds = %bb.lb
  %i.azy = landingpad { ptr, i32 }
          cleanup
  br label %bb.rd

bb.qy:                                            ; preds = %bb.le
  %i.azz = landingpad { ptr, i32 }
          cleanup
  br label %bb.rc

bb.qz:                                            ; preds = %bb.lh
  %i.baa = landingpad { ptr, i32 }
          cleanup
  br label %bb.rb

bb.ra:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit565
  %i.bab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %115) #15
  br label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  %.pn209 = phi { ptr, i32 } [ %i.bab, %bb.ra ], [ %i.baa, %bb.qz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %114) #15
  br label %bb.rc

bb.rc:                                            ; preds = %bb.rb, %bb.qy
  %.pn209.pn = phi { ptr, i32 } [ %.pn209, %bb.rb ], [ %i.azz, %bb.qy ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %113) #15
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %bb.qx
  %.pn209.pn.pn = phi { ptr, i32 } [ %.pn209.pn, %bb.rc ], [ %i.azy, %bb.qx ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %112) #15
  br label %bb.re

bb.re:                                            ; preds = %bb.rd, %bb.qw
  %.pn209.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn, %bb.rd ], [ %i.azx, %bb.qw ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %110) #15
  br label %.body555

.body555:                                         ; preds = %bb.ku, %bb.kt, %bb.re
  %.pn209.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn, %bb.re ], [ %i.ang, %bb.kt ], [ %i.ang, %bb.ku ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %111) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.body555, %bb.qv
  %.pn209.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.azw, %bb.qv ], [ %.pn209.pn.pn.pn.pn, %.body555 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %109) #15
  br label %bb.rf

bb.rf:                                            ; preds = %.loopexit, %bb.qu
  %.pn209.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn.pn.pn, %.loopexit ], [ %i.azv, %bb.qu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %106) #15
  br label %.loopexit694

.loopexit694:                                     ; preds = %.body541, %.body528, %.body532, %bb.rf
  %.pn209.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn.pn.pn.pn, %bb.rf ], [ %eh.lpad-body542, %.body541 ], [ %.pn206, %.body532 ], [ %.pn206.pn, %.body528 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #15
  br label %bb.rg

bb.rg:                                            ; preds = %.loopexit694, %_ZN4cvc58internal8RationalD2Ev.exit629
  %.pn209.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn.pn.pn.pn.pn, %.loopexit694 ], [ %.pn204, %_ZN4cvc58internal8RationalD2Ev.exit629 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %103) #15
  br label %.body523

.body523:                                         ; preds = %bb.qn, %bb.jv, %bb.rg
  %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rg ], [ %i.azn, %bb.qn ], [ %i.akq, %bb.jv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #15
  br label %bb.rh

bb.rh:                                            ; preds = %.body523, %bb.qm, %bb.ps, %bb.ow
  %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body523 ], [ %.pn193.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.qm ], [ %.pn176.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ps ], [ %.pn157.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ow ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #15
  br label %bb.ri

bb.ri:                                            ; preds = %bb.rh, %bb.ob
  %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rh ], [ %i.axs, %bb.ob ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %57) #15
  br label %bb.rj

bb.rj:                                            ; preds = %bb.ri, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627
  %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ri ], [ %.pn150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit627 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %54) #15
  br label %bb.rk

bb.rk:                                            ; preds = %bb.rj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624
  %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn209.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.rj ], [ %.pn147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624 ]
end_hunk_1
