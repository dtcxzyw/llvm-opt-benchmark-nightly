Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/rewrites-builtin-rewrites?download=true
inline.NumInlined: 568
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
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
%"class.std::vector.98" = type { %"struct.std::_Vector_base.99" }
%"struct.std::_Vector_base.99" = type { %"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl" }
%"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl" = type { %"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<cvc5::internal::NodeTemplate<true>, std::allocator<cvc5::internal::NodeTemplate<true>>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4cvc58internal8TypeNodeD2Ev = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EED2Ev = comdat any

$_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_ = comdat any

$_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_ = comdat any

$_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

$_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

@_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden global %"class.cvc5::internal::NodeTemplate" zeroinitializer, comdat, align 8
@_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE), align 8
@__dso_handle = external hidden global i8
@_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr local_unnamed_addr global ptr null, comdat, align 8
@_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr global i64 0, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal8rewriter28addRewrites_builtin_rewritesEPNS0_11NodeManagerERNS1_9RewriteDbE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(544) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %8 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %11 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %13 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %15 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %16 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %17 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %19 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %20 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %21 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %23 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %25 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %27 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %29 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %31 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %32 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %33 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %34 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %35 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %36 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %37 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %38 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %39 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %40 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %41 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %42 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %45 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %47 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %51 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %53 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %54 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %56 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %57 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %59 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %60 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %62 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %63 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %65 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %66 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %68 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %69 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %71 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %72 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %74 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %75 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %77 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %78 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %80 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %81 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %83 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %84 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %86 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %87 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %88 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %89 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %90 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %92 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %93 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %94 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %95 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %96 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %98 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %99 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %101 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %102 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %104 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %105 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %107 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %108 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %109 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %110 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %111 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %113 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %114 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %115 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %116 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %117 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 15 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %118 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %119 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %120 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %121 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %122 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %123 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 11 uses
  %124 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %125 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %126 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %127 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %128 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %129 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %130 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %131 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %132 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %133 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %134 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 11 uses
  %135 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %136 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %137 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %138 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %139 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %140 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %141 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %142 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %143 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %144 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %145 = alloca [3 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 15 uses
  %146 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %147 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %148 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %149 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %150 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %151 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %152 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %153 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %154 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %155 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 11 uses
  %156 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %157 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %158 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %159 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %160 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %161 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %162 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %163 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %164 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %165 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %166 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %167 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %168 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %169 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %170 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %171 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %172 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %173 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %174 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %175 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %176 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %177 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %178 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %179 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %180 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %181 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %182 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %183 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %184 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %185 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %186 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %187 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %188 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %189 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %190 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %191 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %192 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %193 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %194 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %195 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %196 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %197 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %198 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %199 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %200 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %201 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %202 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %203 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %204 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %205 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #15
  %i.c = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  store ptr %i.c, ptr %43, align 8, !tbaa !85
  store i32 892351096, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %43, i64 8
  store i64 4, ptr %i.d, align 8, !tbaa !87
  %i.e = getelementptr inbounds nuw i8, ptr %43, i64 20
  store i8 0, ptr %i.e, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %44, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 14)
          to label %bb.b unwind label %bb.ads

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %42, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.c unwind label %bb.adt

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %44, align 8, !tbaa !13    ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = and i64 %i.g, 1152920405095219200
  %.not.i.i = icmp eq i64 %i.h, 1152920405095219200
  br i1 %.not.i.i, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.i = add i64 %i.g, 1152920405095219200
  %i.j = and i64 %i.i, 1152920405095219200        ; 2 uses
  %i.k = and i64 %i.g, -1152920405095219201
  %i.l = or disjoint i64 %i.j, %i.k
  store i64 %i.l, ptr %i.f, align 8
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %bb.e, label %_ZN4cvc58internal8TypeNodeD2Ev.exit, !prof !14

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #16
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit:              ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #15
  %i.p = load ptr, ptr %43, align 8, !tbaa !89    ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.c
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.r = load i64, ptr %i.c, align 8, !tbaa !88
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #15
  %i.t = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  store ptr %i.t, ptr %46, align 8, !tbaa !85
  store i32 909128313, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i64 4, ptr %i.u, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %46, i64 20
  store i8 0, ptr %i.v, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %47, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 14)
          to label %bb.g unwind label %bb.adv

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %45, ptr noundef nonnull align 8 dereferenceable(32) %46, ptr noundef nonnull align 8 dereferenceable(8) %47)
          to label %bb.h unwind label %bb.adw

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %47, align 8, !tbaa !13    ; 3 uses
  %i.x = load i64, ptr %i.w, align 8              ; 3 uses
  %i.y = and i64 %i.x, 1152920405095219200
  %.not.i.i493 = icmp eq i64 %i.y, 1152920405095219200
  br i1 %.not.i.i493, label %_ZN4cvc58internal8TypeNodeD2Ev.exit494, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.z = add i64 %i.x, 1152920405095219200
  %i.aa = and i64 %i.z, 1152920405095219200       ; 2 uses
  %i.ab = and i64 %i.x, -1152920405095219201
  %i.ac = or disjoint i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.w, align 8
  %i.ad = icmp eq i64 %i.aa, 0
  br i1 %i.ad, label %bb.j, label %_ZN4cvc58internal8TypeNodeD2Ev.exit494, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit494 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #16
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit494:           ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #15
  %i.ag = load ptr, ptr %46, align 8, !tbaa !89   ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.t
  br i1 %i.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i496, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit494
  %i.ai = load i64, ptr %i.t, align 8, !tbaa !88
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i496: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit494, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i495
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #15
  %i.ak = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  store ptr %i.ak, ptr %49, align 8, !tbaa !85
  store i32 925905528, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 4, ptr %i.al, align 8, !tbaa !87
  %i.am = getelementptr inbounds nuw i8, ptr %49, i64 20
  store i8 0, ptr %i.am, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %50, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 14)
          to label %bb.l unwind label %bb.ady

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i496
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %48, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(8) %50)
          to label %bb.m unwind label %bb.adz

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %50, align 8, !tbaa !13   ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = and i64 %i.ao, 1152920405095219200
  %.not.i.i502 = icmp eq i64 %i.ap, 1152920405095219200
  br i1 %.not.i.i502, label %_ZN4cvc58internal8TypeNodeD2Ev.exit503, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.aq = add i64 %i.ao, 1152920405095219200
  %i.ar = and i64 %i.aq, 1152920405095219200      ; 2 uses
  %i.as = and i64 %i.ao, -1152920405095219201
  %i.at = or disjoint i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.an, align 8
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %bb.o, label %_ZN4cvc58internal8TypeNodeD2Ev.exit503, !prof !14

bb.o:                                             ; preds = %bb.n
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal8rewriter28addRewrites_builtin_rewritesEPNS0_11NodeManagerERNS1_9RewriteDbE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %97) #15
  br label %bb.amp

bb.afx:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i649
  %i.dpp = landingpad { ptr, i32 }
          cleanup
  br label %bb.afz

bb.afy:                                           ; preds = %bb.cs
  %i.dpq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %101) #15
  br label %bb.afz

bb.afz:                                           ; preds = %bb.afy, %bb.afx
  %.pn342 = phi { ptr, i32 } [ %i.dpq, %bb.afy ], [ %i.dpp, %bb.afx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #15
  %i.dpr = load ptr, ptr %100, align 8, !tbaa !89 ; 2 uses
  %i.dps = icmp eq ptr %i.dpr, %i.ln
  br i1 %i.dps, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1441

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1441: ; preds = %bb.afz
  %i.dpt = load i64, ptr %i.ln, align 8, !tbaa !88
  %i.dpu = add i64 %i.dpt, 1
  call void @_ZdlPvm(ptr noundef %i.dpr, i64 noundef %i.dpu) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1443: ; preds = %bb.afz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1441
  call void @llvm.lifetime.end.p0(ptr nonnull %100) #15
  br label %bb.amo

bb.aga:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i658
  %i.dpv = landingpad { ptr, i32 }
          cleanup
  br label %bb.agc

bb.agb:                                           ; preds = %bb.cx
  %i.dpw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #15
  br label %bb.agc

bb.agc:                                           ; preds = %bb.agb, %bb.aga
  %.pn345 = phi { ptr, i32 } [ %i.dpw, %bb.agb ], [ %i.dpv, %bb.aga ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #15
  %i.dpx = load ptr, ptr %103, align 8, !tbaa !89 ; 2 uses
  %i.dpy = icmp eq ptr %i.dpx, %i.me
  br i1 %i.dpy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1444

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1444: ; preds = %bb.agc
  %i.dpz = load i64, ptr %i.me, align 8, !tbaa !88
  %i.dqa = add i64 %i.dpz, 1
  call void @_ZdlPvm(ptr noundef %i.dpx, i64 noundef %i.dqa) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1446

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1446: ; preds = %bb.agc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1444
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #15
  br label %bb.amn

bb.agd:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i667
  %i.dqb = landingpad { ptr, i32 }
          cleanup
  br label %bb.agf

bb.age:                                           ; preds = %bb.dc
  %i.dqc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %107) #15
  br label %bb.agf

bb.agf:                                           ; preds = %bb.age, %bb.agd
  %.pn348 = phi { ptr, i32 } [ %i.dqc, %bb.age ], [ %i.dqb, %bb.agd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #15
  %i.dqd = load ptr, ptr %106, align 8, !tbaa !89 ; 2 uses
  %i.dqe = icmp eq ptr %i.dqd, %i.mv
  br i1 %i.dqe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1447

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1447: ; preds = %bb.agf
  %i.dqf = load i64, ptr %i.mv, align 8, !tbaa !88
  %i.dqg = add i64 %i.dqf, 1
  call void @_ZdlPvm(ptr noundef %i.dqd, i64 noundef %i.dqg) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1449

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1449: ; preds = %bb.agf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1447
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #15
  br label %bb.amm

bb.agg:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i676
  %i.dqh = landingpad { ptr, i32 }
          cleanup
  br label %bb.agi

bb.agh:                                           ; preds = %bb.dh
  %i.dqi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %110) #15
  br label %bb.agi

bb.agi:                                           ; preds = %bb.agh, %bb.agg
  %.pn351 = phi { ptr, i32 } [ %i.dqi, %bb.agh ], [ %i.dqh, %bb.agg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #15
  %i.dqj = load ptr, ptr %109, align 8, !tbaa !89 ; 2 uses
  %i.dqk = icmp eq ptr %i.dqj, %i.nm
  br i1 %i.dqk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1450: ; preds = %bb.agi
  %i.dql = load i64, ptr %i.nm, align 8, !tbaa !88
  %i.dqm = add i64 %i.dql, 1
  call void @_ZdlPvm(ptr noundef %i.dqj, i64 noundef %i.dqm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1452: ; preds = %bb.agi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1450
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #15
  br label %bb.aml

bb.agj:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i685
  %i.dqn = landingpad { ptr, i32 }
          cleanup
  br label %bb.agl

bb.agk:                                           ; preds = %bb.dm
  %i.dqo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %113) #15
  br label %bb.agl

bb.agl:                                           ; preds = %bb.agk, %bb.agj
  %.pn354 = phi { ptr, i32 } [ %i.dqo, %bb.agk ], [ %i.dqn, %bb.agj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #15
  %i.dqp = load ptr, ptr %112, align 8, !tbaa !89 ; 2 uses
  %i.dqq = icmp eq ptr %i.dqp, %i.od
  br i1 %i.dqq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1453: ; preds = %bb.agl
  %i.dqr = load i64, ptr %i.od, align 8, !tbaa !88
  %i.dqs = add i64 %i.dqr, 1
  call void @_ZdlPvm(ptr noundef %i.dqp, i64 noundef %i.dqs) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1455

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1455: ; preds = %bb.agl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1453
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #15
  br label %bb.amk

bb.agm:                                           ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i694
  %i.dqt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ago

bb.agn:                                           ; preds = %bb.dr
  %i.dqu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal8TypeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %116) #15
  br label %bb.ago

bb.ago:                                           ; preds = %bb.agn, %bb.agm
  %.pn357 = phi { ptr, i32 } [ %i.dqu, %bb.agn ], [ %i.dqt, %bb.agm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #15
  %i.dqv = load ptr, ptr %115, align 8, !tbaa !89 ; 2 uses
  %i.dqw = icmp eq ptr %i.dqv, %i.ou
  br i1 %i.dqw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1456

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1456: ; preds = %bb.ago
  %i.dqx = load i64, ptr %i.ou, align 8, !tbaa !88
  %i.dqy = add i64 %i.dqx, 1
  call void @_ZdlPvm(ptr noundef %i.dqv, i64 noundef %i.dqy) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1458

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1458: ; preds = %bb.ago, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1456
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #15
  br label %bb.amj

bb.agp:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit704
  %i.dqz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ami

bb.agq:                                           ; preds = %bb.dw
  %i.dra = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.agr:                                           ; preds = %bb.ea
  %i.drb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahf

bb.ags:                                           ; preds = %bb.ed
  %i.drc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahe

bb.agt:                                           ; preds = %bb.eg
  %i.drd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahd

.loopexit1537.loopexit1546:                       ; preds = %bb.em
  %i.dre = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1537.sink.split

bb.agu:                                           ; preds = %bb.es
  %i.drf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahc

bb.agv:                                           ; preds = %bb.ev
  %i.drg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahb

bb.agw:                                           ; preds = %bb.ey
  %i.drh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aha

bb.agx:                                           ; preds = %bb.fb
  %i.dri = landingpad { ptr, i32 }
          cleanup
  br label %bb.agz

bb.agy:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit724
  %i.drj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %127) #15
  br label %bb.agz

bb.agz:                                           ; preds = %bb.agy, %bb.agx
  %.pn360 = phi { ptr, i32 } [ %i.drj, %bb.agy ], [ %i.dri, %bb.agx ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %126) #15
  br label %bb.aha

bb.aha:                                           ; preds = %bb.agz, %bb.agw
  %.pn360.pn = phi { ptr, i32 } [ %.pn360, %bb.agz ], [ %i.drh, %bb.agw ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %125) #15
  br label %bb.ahb

bb.ahb:                                           ; preds = %bb.aha, %bb.agv
  %.pn360.pn.pn = phi { ptr, i32 } [ %.pn360.pn, %bb.aha ], [ %i.drg, %bb.agv ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %124) #15
  br label %bb.ahc

bb.ahc:                                           ; preds = %bb.ahb, %bb.agu
  %.pn360.pn.pn.pn = phi { ptr, i32 } [ %.pn360.pn.pn, %bb.ahb ], [ %i.drf, %bb.agu ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %122) #15
  br label %.body715

.body715:                                         ; preds = %bb.eo, %bb.en, %bb.ahc
  %.pn360.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn360.pn.pn.pn, %bb.ahc ], [ %i.sn, %bb.en ], [ %i.sn, %bb.eo ]
  %i.drk = getelementptr inbounds nuw i8, ptr %123, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.drk) #15
  br label %.loopexit1537.sink.split

.loopexit1537.sink.split:                         ; preds = %.body715, %.loopexit1537.loopexit1546
  %.pn360.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dre, %.loopexit1537.loopexit1546 ], [ %.pn360.pn.pn.pn.pn, %.body715 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %123) #15
  br label %.loopexit1537

.loopexit1537:                                    ; preds = %.loopexit1537.sink.split, %.thread
  %.pn360.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.rt, %.thread ], [ %.pn360.pn.pn.pn.pn.pn.ph, %.loopexit1537.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %121) #15
  br label %bb.ahd

bb.ahd:                                           ; preds = %.loopexit1537, %bb.agt
  %.pn360.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn360.pn.pn.pn.pn.pn, %.loopexit1537 ], [ %i.drd, %bb.agt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %120) #15
  br label %bb.ahe

bb.ahe:                                           ; preds = %bb.ahd, %bb.ags
  %.pn360.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn360.pn.pn.pn.pn.pn.pn, %bb.ahd ], [ %i.drc, %bb.ags ]
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %119) #15
  br label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe, %bb.agr
  %.pn360.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn360.pn.pn.pn.pn.pn.pn.pn, %bb.ahe ], [ %i.drb, %bb.agr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %118) #15
  br label %.body

.body:                                            ; preds = %bb.agq, %.loopexit.split-lp.loopexit.split-lp.i, %bb.ahf
  %.pn360.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn360.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ahf ], [ %i.dra, %bb.agq ], [ %lpad.loopexit.split-lp9.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #15
  br label %bb.amh

bb.ahg:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit742
  %i.drl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahi

bb.ahh:                                           ; preds = %bb.gk
  %i.drm = landingpad { ptr, i32 }
          cleanup
  br label %.body751

.body751:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i743, %bb.ahh
  %eh.lpad-body752 = phi { ptr, i32 } [ %i.drm, %bb.ahh ], [ %lpad.loopexit.split-lp9.i744, %.loopexit.split-lp.loopexit.split-lp.i743 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %129) #15
  br label %bb.ahi

bb.ahi:                                           ; preds = %bb.ahg, %.body751
  %.pn371 = phi { ptr, i32 } [ %eh.lpad-body752, %.body751 ], [ %i.drl, %bb.ahg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #15
  br label %bb.ahy

bb.ahj:                                           ; preds = %bb.gr
  %i.drn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahx

bb.ahk:                                           ; preds = %bb.gu
  %i.dro = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahw

bb.ahl:                                           ; preds = %bb.gx
  %i.drp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahv

.loopexit1535.loopexit1545:                       ; preds = %bb.hd
  %i.drq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1535.sink.split

bb.ahm:                                           ; preds = %bb.hj
  %i.drr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahu

bb.ahn:                                           ; preds = %bb.hm
  %i.drs = landingpad { ptr, i32 }
          cleanup
  br label %bb.aht

bb.aho:                                           ; preds = %bb.hp
  %i.drt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahs

bb.ahp:                                           ; preds = %bb.hs
  %i.dru = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahr

bb.ahq:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit779
  %i.drv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %138) #15
  br label %bb.ahr

bb.ahr:                                           ; preds = %bb.ahq, %bb.ahp
  %.pn373 = phi { ptr, i32 } [ %i.drv, %bb.ahq ], [ %i.dru, %bb.ahp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %137) #15
  br label %bb.ahs

bb.ahs:                                           ; preds = %bb.ahr, %bb.aho
  %.pn373.pn = phi { ptr, i32 } [ %.pn373, %bb.ahr ], [ %i.drt, %bb.aho ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %136) #15
  br label %bb.aht

bb.aht:                                           ; preds = %bb.ahs, %bb.ahn
  %.pn373.pn.pn = phi { ptr, i32 } [ %.pn373.pn, %bb.ahs ], [ %i.drs, %bb.ahn ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %135) #15
  br label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht, %bb.ahm
  %.pn373.pn.pn.pn = phi { ptr, i32 } [ %.pn373.pn.pn, %bb.aht ], [ %i.drr, %bb.ahm ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %133) #15
  br label %.body769

.body769:                                         ; preds = %bb.hf, %bb.he, %bb.ahu
  %.pn373.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn373.pn.pn.pn, %bb.ahu ], [ %i.acq, %bb.he ], [ %i.acq, %bb.hf ]
  %i.drw = getelementptr inbounds nuw i8, ptr %134, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.drw) #15
  br label %.loopexit1535.sink.split

.loopexit1535.sink.split:                         ; preds = %.body769, %.loopexit1535.loopexit1545
  %.pn373.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.drq, %.loopexit1535.loopexit1545 ], [ %.pn373.pn.pn.pn.pn, %.body769 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %134) #15
  br label %.loopexit1535

.loopexit1535:                                    ; preds = %.loopexit1535.sink.split, %.thread1498
  %.pn373.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.abw, %.thread1498 ], [ %.pn373.pn.pn.pn.pn.pn.ph, %.loopexit1535.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %134) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %132) #15
  br label %bb.ahv

bb.ahv:                                           ; preds = %.loopexit1535, %bb.ahl
  %.pn373.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn373.pn.pn.pn.pn.pn, %.loopexit1535 ], [ %i.drp, %bb.ahl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %131) #15
  br label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv, %bb.ahk
  %.pn373.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn373.pn.pn.pn.pn.pn.pn, %bb.ahv ], [ %i.dro, %bb.ahk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %131) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %130) #15
  br label %bb.ahx

bb.ahx:                                           ; preds = %bb.ahw, %bb.ahj
  %.pn373.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn373.pn.pn.pn.pn.pn.pn.pn, %bb.ahw ], [ %i.drn, %bb.ahj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %128) #15
  br label %bb.ahy

bb.ahy:                                           ; preds = %bb.ahx, %bb.ahi
  %.pn373.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn373.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ahx ], [ %.pn371, %bb.ahi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %128) #15
  br label %bb.amh

bb.ahz:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit809
  %i.drx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aib

bb.aia:                                           ; preds = %bb.jd
  %i.dry = landingpad { ptr, i32 }
          cleanup
  br label %.body821

.body821:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i813, %bb.aia
  %eh.lpad-body822 = phi { ptr, i32 } [ %i.dry, %bb.aia ], [ %lpad.loopexit.split-lp9.i814, %.loopexit.split-lp.loopexit.split-lp.i813 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %140) #15
  br label %bb.aib

bb.aib:                                           ; preds = %.body821, %bb.jc, %bb.ahz
  %.pn384 = phi { ptr, i32 } [ %eh.lpad-body822, %.body821 ], [ %i.drx, %bb.ahz ], [ %i.ajl, %bb.jc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #15
  br label %bb.ais

bb.aic:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit825
  %i.drz = landingpad { ptr, i32 }
          cleanup
  br label %.body834

bb.aid:                                           ; preds = %bb.jl
  %i.dsa = landingpad { ptr, i32 }
          cleanup
  br label %bb.air

bb.aie:                                           ; preds = %bb.jo
  %i.dsb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aiq

bb.aif:                                           ; preds = %bb.jx, %bb.ju
  %.0280 = phi ptr [ %i.amo, %bb.jx ], [ %i.ama, %bb.ju ]
  %i.dsc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aig

bb.aig:                                           ; preds = %bb.aif, %bb.aig
  %i.dsd = phi ptr [ %.0280, %bb.aif ], [ %i.dse, %bb.aig ]
  %i.dse = getelementptr inbounds i8, ptr %i.dsd, i64 -8 ; 3 uses
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dse) #15
  %i.dsf = icmp eq ptr %i.dse, %145
  br i1 %i.dsf, label %.loopexit1533, label %bb.aig

bb.aih:                                           ; preds = %bb.kd
  %i.dsg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aip

bb.aii:                                           ; preds = %bb.kg
  %i.dsh = landingpad { ptr, i32 }
          cleanup
  br label %bb.aio

bb.aij:                                           ; preds = %bb.kj
  %i.dsi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ain

bb.aik:                                           ; preds = %bb.km
  %i.dsj = landingpad { ptr, i32 }
          cleanup
  br label %bb.aim

bb.ail:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit860
  %i.dsk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %149) #15
  br label %bb.aim

bb.aim:                                           ; preds = %bb.ail, %bb.aik
  %.pn386 = phi { ptr, i32 } [ %i.dsk, %bb.ail ], [ %i.dsj, %bb.aik ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %148) #15
  br label %bb.ain

bb.ain:                                           ; preds = %bb.aim, %bb.aij
  %.pn386.pn = phi { ptr, i32 } [ %.pn386, %bb.aim ], [ %i.dsi, %bb.aij ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %147) #15
  br label %bb.aio

bb.aio:                                           ; preds = %bb.ain, %bb.aii
  %.pn386.pn.pn = phi { ptr, i32 } [ %.pn386.pn, %bb.ain ], [ %i.dsh, %bb.aii ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %146) #15
  br label %bb.aip

bb.aip:                                           ; preds = %bb.aio, %bb.aih
  %.pn386.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn, %bb.aio ], [ %i.dsg, %bb.aih ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %144) #15
  br label %.body850

.body850:                                         ; preds = %bb.jz, %bb.jy, %bb.aip
  %.pn386.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn, %bb.aip ], [ %i.anh, %bb.jy ], [ %i.anh, %bb.jz ]
  %i.dsl = getelementptr inbounds nuw i8, ptr %145, i64 16
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dsl) #15
  %i.dsm = getelementptr inbounds nuw i8, ptr %145, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dsm) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %145) #15
  br label %.loopexit1533

.loopexit1533:                                    ; preds = %bb.aig, %.body850, %.thread1500
  %.pn386.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn, %.body850 ], [ %i.alz, %.thread1500 ], [ %i.dsc, %bb.aig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %143) #15
  br label %bb.aiq

bb.aiq:                                           ; preds = %.loopexit1533, %bb.aie
  %.pn386.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn.pn, %.loopexit1533 ], [ %i.dsb, %bb.aie ]
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %142) #15
  br label %bb.air

bb.air:                                           ; preds = %bb.aiq, %bb.aid
  %.pn386.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn.pn.pn, %bb.aiq ], [ %i.dsa, %bb.aid ]
  call void @llvm.lifetime.end.p0(ptr nonnull %142) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %141) #15
  br label %.body834

.body834:                                         ; preds = %bb.aic, %.loopexit.split-lp.loopexit.split-lp.i826, %bb.air
  %.pn386.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn.pn.pn.pn, %bb.air ], [ %i.drz, %bb.aic ], [ %lpad.loopexit.split-lp9.i827, %.loopexit.split-lp.loopexit.split-lp.i826 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %141) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %139) #15
  br label %bb.ais

bb.ais:                                           ; preds = %.body834, %bb.aib
  %.pn386.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn.pn.pn.pn.pn, %.body834 ], [ %.pn384, %bb.aib ]
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #15
  br label %bb.amh

bb.ait:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit890
  %i.dsn = landingpad { ptr, i32 }
          cleanup
  br label %.body899

bb.aiu:                                           ; preds = %bb.ma
  %i.dso = landingpad { ptr, i32 }
          cleanup
  br label %bb.aji

bb.aiv:                                           ; preds = %bb.md
  %i.dsp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajh

bb.aiw:                                           ; preds = %bb.mg
  %i.dsq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajg

.loopexit1531.loopexit1543:                       ; preds = %bb.mm
  %i.dsr = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1531.sink.split

bb.aix:                                           ; preds = %bb.ms
  %i.dss = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajf

bb.aiy:                                           ; preds = %bb.mv
  %i.dst = landingpad { ptr, i32 }
          cleanup
  br label %bb.aje

bb.aiz:                                           ; preds = %bb.my
  %i.dsu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajd

bb.aja:                                           ; preds = %bb.nb
  %i.dsv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajc

bb.ajb:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit925
  %i.dsw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %159) #15
  br label %bb.ajc

bb.ajc:                                           ; preds = %bb.ajb, %bb.aja
  %.pn397 = phi { ptr, i32 } [ %i.dsw, %bb.ajb ], [ %i.dsv, %bb.aja ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %158) #15
  br label %bb.ajd

bb.ajd:                                           ; preds = %bb.ajc, %bb.aiz
  %.pn397.pn = phi { ptr, i32 } [ %.pn397, %bb.ajc ], [ %i.dsu, %bb.aiz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %157) #15
  br label %bb.aje

bb.aje:                                           ; preds = %bb.ajd, %bb.aiy
  %.pn397.pn.pn = phi { ptr, i32 } [ %.pn397.pn, %bb.ajd ], [ %i.dst, %bb.aiy ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %156) #15
  br label %bb.ajf

bb.ajf:                                           ; preds = %bb.aje, %bb.aix
  %.pn397.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn, %bb.aje ], [ %i.dss, %bb.aix ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %154) #15
  br label %.body915

.body915:                                         ; preds = %bb.mo, %bb.mn, %bb.ajf
  %.pn397.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn, %bb.ajf ], [ %i.axk, %bb.mn ], [ %i.axk, %bb.mo ]
  %i.dsx = getelementptr inbounds nuw i8, ptr %155, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dsx) #15
  br label %.loopexit1531.sink.split

.loopexit1531.sink.split:                         ; preds = %.body915, %.loopexit1531.loopexit1543
  %.pn397.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.dsr, %.loopexit1531.loopexit1543 ], [ %.pn397.pn.pn.pn.pn, %.body915 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %155) #15
  br label %.loopexit1531

.loopexit1531:                                    ; preds = %.loopexit1531.sink.split, %.thread1502
  %.pn397.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.awq, %.thread1502 ], [ %.pn397.pn.pn.pn.pn.pn.ph, %.loopexit1531.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %155) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %153) #15
  br label %bb.ajg

bb.ajg:                                           ; preds = %.loopexit1531, %bb.aiw
  %.pn397.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn, %.loopexit1531 ], [ %i.dsq, %bb.aiw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %153) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %152) #15
  br label %bb.ajh

bb.ajh:                                           ; preds = %bb.ajg, %bb.aiv
  %.pn397.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn, %bb.ajg ], [ %i.dsp, %bb.aiv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %152) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %151) #15
  br label %bb.aji

bb.aji:                                           ; preds = %bb.ajh, %bb.aiu
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn, %bb.ajh ], [ %i.dso, %bb.aiu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %150) #15
  br label %.body899

.body899:                                         ; preds = %bb.ait, %.loopexit.split-lp.loopexit.split-lp.i891, %bb.aji
  %.pn397.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn397.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aji ], [ %i.dsn, %bb.ait ], [ %lpad.loopexit.split-lp9.i892, %.loopexit.split-lp.loopexit.split-lp.i891 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %150) #15
  br label %bb.amh

bb.ajj:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit955
  %i.dsy = landingpad { ptr, i32 }
          cleanup
  br label %.preheader1529.preheader

bb.ajk:                                           ; preds = %bb.ok
  %i.dsz = landingpad { ptr, i32 }
          cleanup
  br label %.body964

.body964:                                         ; preds = %bb.ajk, %.loopexit.split-lp.loopexit.split-lp.i967
  %eh.lpad-body976 = phi { ptr, i32 } [ %i.dsz, %bb.ajk ], [ %lpad.loopexit.split-lp9.i968, %.loopexit.split-lp.loopexit.split-lp.i967 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %161) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #15
  br label %.loopexit1530

.preheader1529.preheader:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i956, %bb.ajj
  %.pn408.ph = phi { ptr, i32 } [ %i.dsy, %bb.ajj ], [ %lpad.loopexit.split-lp9.i957, %.loopexit.split-lp.loopexit.split-lp.i956 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %161) #15
  br label %.loopexit1530

bb.ajl:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit979
  %i.dta = landingpad { ptr, i32 }
          cleanup
  br label %.body988

bb.ajm:                                           ; preds = %bb.os
  %i.dtb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aka

bb.ajn:                                           ; preds = %bb.ov
  %i.dtc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajz

bb.ajo:                                           ; preds = %bb.ph, %bb.pe, %bb.pb
  %.0283 = phi ptr [ %i.bhx, %bb.ph ], [ %i.bhj, %bb.pe ], [ %i.bgv, %bb.pb ]
  %i.dtd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajp

bb.ajp:                                           ; preds = %bb.ajo, %bb.ajp
  %i.dte = phi ptr [ %.0283, %bb.ajo ], [ %i.dtf, %bb.ajp ]
  %i.dtf = getelementptr inbounds i8, ptr %i.dte, i64 -8 ; 3 uses
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dtf) #15
  %i.dtg = icmp eq ptr %i.dtf, %166
  br i1 %i.dtg, label %.loopexit1527, label %bb.ajp

bb.ajq:                                           ; preds = %bb.pn
  %i.dth = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajy

bb.ajr:                                           ; preds = %bb.pq
  %i.dti = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajx

bb.ajs:                                           ; preds = %bb.pt
  %i.dtj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajw

bb.ajt:                                           ; preds = %bb.pw
  %i.dtk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ajv

bb.aju:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1016
  %i.dtl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %170) #15
  br label %bb.ajv

bb.ajv:                                           ; preds = %bb.aju, %bb.ajt
  %.pn410 = phi { ptr, i32 } [ %i.dtl, %bb.aju ], [ %i.dtk, %bb.ajt ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %169) #15
  br label %bb.ajw

bb.ajw:                                           ; preds = %bb.ajv, %bb.ajs
  %.pn410.pn = phi { ptr, i32 } [ %.pn410, %bb.ajv ], [ %i.dtj, %bb.ajs ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %168) #15
  br label %bb.ajx

bb.ajx:                                           ; preds = %bb.ajw, %bb.ajr
  %.pn410.pn.pn = phi { ptr, i32 } [ %.pn410.pn, %bb.ajw ], [ %i.dti, %bb.ajr ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %167) #15
  br label %bb.ajy

bb.ajy:                                           ; preds = %bb.ajx, %bb.ajq
  %.pn410.pn.pn.pn = phi { ptr, i32 } [ %.pn410.pn.pn, %bb.ajx ], [ %i.dth, %bb.ajq ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %165) #15
  br label %.body1006

.body1006:                                        ; preds = %bb.pj, %bb.pi, %bb.ajy
  %.pn410.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn410.pn.pn.pn, %bb.ajy ], [ %i.biq, %bb.pi ], [ %i.biq, %bb.pj ]
  %i.dtm = getelementptr inbounds nuw i8, ptr %166, i64 24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dtm) #15
  %i.dtn = getelementptr inbounds nuw i8, ptr %166, i64 16
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dtn) #15
  %i.dto = getelementptr inbounds nuw i8, ptr %166, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dto) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %166) #15
  br label %.loopexit1527

.loopexit1527:                                    ; preds = %bb.ajp, %.body1006, %.thread1504
  %.pn410.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn410.pn.pn.pn.pn, %.body1006 ], [ %i.bgu, %.thread1504 ], [ %i.dtd, %bb.ajp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %166) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %164) #15
  br label %bb.ajz

bb.ajz:                                           ; preds = %.loopexit1527, %bb.ajn
  %.pn410.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn410.pn.pn.pn.pn.pn, %.loopexit1527 ], [ %i.dtc, %bb.ajn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %163) #15
  br label %bb.aka

bb.aka:                                           ; preds = %bb.ajz, %bb.ajm
  %.pn410.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn410.pn.pn.pn.pn.pn.pn, %bb.ajz ], [ %i.dtb, %bb.ajm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %163) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %162) #15
  br label %.body988

.body988:                                         ; preds = %bb.ajl, %.loopexit.split-lp.loopexit.split-lp.i980, %bb.aka
  %.pn410.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn410.pn.pn.pn.pn.pn.pn.pn, %bb.aka ], [ %i.dta, %bb.ajl ], [ %lpad.loopexit.split-lp9.i981, %.loopexit.split-lp.loopexit.split-lp.i980 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %160) #15
  br label %.loopexit1530

.loopexit1530:                                    ; preds = %.preheader1529.preheader, %.body964, %.body988
  %.pn410.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn410.pn.pn.pn.pn.pn.pn.pn.pn, %.body988 ], [ %.pn408.ph, %.preheader1529.preheader ], [ %eh.lpad-body976, %.body964 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #15
  br label %bb.amh

bb.akb:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1046
  %i.dtp = landingpad { ptr, i32 }
          cleanup
  br label %.preheader1525.preheader

bb.akc:                                           ; preds = %bb.rj
  %i.dtq = landingpad { ptr, i32 }
          cleanup
  br label %.body1055

.body1055:                                        ; preds = %bb.akc, %.loopexit.split-lp.loopexit.split-lp.i1058
  %eh.lpad-body1067 = phi { ptr, i32 } [ %i.dtq, %bb.akc ], [ %lpad.loopexit.split-lp9.i1059, %.loopexit.split-lp.loopexit.split-lp.i1058 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %172) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #15
  br label %.loopexit1526

.preheader1525.preheader:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i1047, %bb.akb
  %.pn421.ph = phi { ptr, i32 } [ %i.dtp, %bb.akb ], [ %lpad.loopexit.split-lp9.i1048, %.loopexit.split-lp.loopexit.split-lp.i1047 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #15
  br label %.loopexit1526

bb.akd:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1070
  %i.dtr = landingpad { ptr, i32 }
          cleanup
  br label %.body1079

bb.ake:                                           ; preds = %bb.rr
  %i.dts = landingpad { ptr, i32 }
          cleanup
  br label %bb.aks

bb.akf:                                           ; preds = %bb.ru
  %i.dtt = landingpad { ptr, i32 }
          cleanup
  br label %bb.akr

bb.akg:                                           ; preds = %bb.sg, %bb.sd, %bb.sa
  %.0277 = phi ptr [ %i.btx, %bb.sg ], [ %i.btj, %bb.sd ], [ %i.bsv, %bb.sa ]
end_hunk_1
