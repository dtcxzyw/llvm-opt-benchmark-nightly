Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/rewrites-arrays-rewrites?download=true
inline.NumInlined: 536
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0

$_ZN4cvc58internal12NodeTemplateILb1EED2Ev = comdat any

$_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev = comdat any

$_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_ = comdat any

$_ZSt16__do_uninit_copyIPKN4cvc58internal12NodeTemplateILb1EEEPS3_ET0_T_S8_S7_ = comdat any

$_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

$_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = comdat any

@.str = private unnamed_addr constant [4 x i8] c"t89\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"i90\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"e91\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"t92\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"i93\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"j94\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"e95\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"t96\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"i97\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"e98\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"f99\00", align 1
@_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden global %"class.cvc5::internal::NodeTemplate" zeroinitializer, comdat, align 8
@_ZGVN4cvc58internal12NodeTemplateILb1EE6s_nullE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE), align 8
@__dso_handle = external hidden global i8
@_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr local_unnamed_addr global ptr null, comdat, align 8
@_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null = linkonce_odr global i64 0, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN4cvc58internal12NodeTemplateILb1EE6s_nullE], section "llvm.metadata"

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4cvc58internal8rewriter27addRewrites_arrays_rewritesEPNS0_11NodeManagerERNS1_9RewriteDbE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(544) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %3 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %4 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %5 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %6 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %7 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %8 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %9 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %10 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %11 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %12 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %13 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %14 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %15 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %16 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %17 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %18 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %19 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %20 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %21 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %22 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %23 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %24 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %25 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %26 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %27 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %28 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %29 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %30 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %31 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %32 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %33 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %34 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %35 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %36 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %37 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %38 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 8 uses
  %39 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 4 uses
  %40 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %41 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %42 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %43 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %44 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %45 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %46 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %47 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %48 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 6 uses
  %49 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 9 uses
  %50 = alloca %"class.cvc5::internal::NodeTemplate.70", align 8 ; 8 uses
  %51 = alloca %"class.cvc5::internal::NodeBuilder", align 8 ; 10 uses
  %52 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %55 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %57 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %58 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %59 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %60 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %61 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %64 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %66 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %67 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %68 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %69 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %70 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %72 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %73 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %75 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %76 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %77 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %78 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %79 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %81 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %82 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %84 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %85 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %87 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %88 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %90 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %91 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %92 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %93 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %94 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %96 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %97 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %99 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %100 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %101 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %102 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %103 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %105 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %106 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %107 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %108 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %109 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %111 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %112 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %113 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %114 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %115 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %117 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %118 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 9 uses
  %119 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %120 = alloca %"class.cvc5::internal::TypeNode", align 8 ; 7 uses
  %121 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %122 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %123 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %124 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %125 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %126 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %127 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %128 = alloca [3 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 15 uses
  %129 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %130 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %131 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %132 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %133 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %134 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %135 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %136 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %137 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %138 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %139 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %140 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %141 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %142 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %143 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %144 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %145 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %146 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %147 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %148 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %149 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %150 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %151 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %152 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %153 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %154 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %155 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %156 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %157 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %158 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %159 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %160 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %161 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %162 = alloca [2 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 11 uses
  %163 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %164 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %165 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %166 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %167 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %168 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %169 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %170 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %171 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %172 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 10 uses
  %173 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %174 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 8 uses
  %175 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %176 = alloca [4 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 18 uses
  %177 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %178 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %179 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %180 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %181 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %182 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %183 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %184 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %185 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %186 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 7 uses
  %187 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 5 uses
  %188 = alloca %"class.std::vector.98", align 8  ; 10 uses
  %189 = alloca [5 x %"class.cvc5::internal::NodeTemplate"], align 8 ; 21 uses
  %190 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %191 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %192 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  %193 = alloca %"class.cvc5::internal::NodeTemplate", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #15
  %i.b = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 6 uses
  store ptr %i.b, ptr %53, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 3, ptr %i.c, align 8, !tbaa !91
  %i.d = getelementptr inbounds nuw i8, ptr %53, i64 19
  store i8 0, ptr %i.d, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %54, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 216)
          to label %bb.b unwind label %bb.yt

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %52, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %bb.c unwind label %bb.yu

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %54, align 8, !tbaa !13    ; 3 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #15
  %i.o = load ptr, ptr %53, align 8, !tbaa !93    ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !92
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #15
  %i.s = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 6 uses
  store ptr %i.s, ptr %56, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.s, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %56, i64 8
  store i64 3, ptr %i.t, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %56, i64 19
  store i8 0, ptr %i.u, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %57, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 14)
          to label %bb.g unwind label %bb.yw

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %55, ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.h unwind label %bb.yx

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %57, align 8, !tbaa !13    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = and i64 %i.w, 1152920405095219200
  %.not.i.i443 = icmp eq i64 %i.x, 1152920405095219200
  br i1 %.not.i.i443, label %_ZN4cvc58internal8TypeNodeD2Ev.exit444, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.y = add i64 %i.w, 1152920405095219200
  %i.z = and i64 %i.y, 1152920405095219200        ; 2 uses
  %i.aa = and i64 %i.w, -1152920405095219201
  %i.ab = or disjoint i64 %i.z, %i.aa
  store i64 %i.ab, ptr %i.v, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %bb.j, label %_ZN4cvc58internal8TypeNodeD2Ev.exit444, !prof !14

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit444 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #16
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit444:           ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #15
  %i.af = load ptr, ptr %56, align 8, !tbaa !93   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i446, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit444
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !92
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i446

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i446: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit444, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i445
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #15
  %i.aj = getelementptr inbounds nuw i8, ptr %59, i64 16 ; 6 uses
  store ptr %i.aj, ptr %59, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aj, ptr noundef nonnull align 1 dereferenceable(3) @.str.2, i64 3, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %59, i64 8
  store i64 3, ptr %i.ak, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %59, i64 19
  store i8 0, ptr %i.al, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #15
  invoke void @_ZN4cvc58internal11NodeManager14mkAbstractTypeENS0_4kind6Kind_tE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::TypeNode") align 8 %60, ptr noundef nonnull align 8 dereferenceable(3592) %0, i32 noundef 14)
          to label %bb.l unwind label %bb.yz

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i446
  invoke void @_ZN4cvc58internal11NodeManager10mkBoundVarERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_8TypeNodeE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %58, ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull align 8 dereferenceable(8) %60)
          to label %bb.m unwind label %bb.za

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %60, align 8, !tbaa !13   ; 3 uses
  %i.an = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ao = and i64 %i.an, 1152920405095219200
  %.not.i.i452 = icmp eq i64 %i.ao, 1152920405095219200
  br i1 %.not.i.i452, label %_ZN4cvc58internal8TypeNodeD2Ev.exit453, label %bb.n, !prof !14

bb.n:                                             ; preds = %bb.m
  %i.ap = add i64 %i.an, 1152920405095219200
  %i.aq = and i64 %i.ap, 1152920405095219200      ; 2 uses
  %i.ar = and i64 %i.an, -1152920405095219201
  %i.as = or disjoint i64 %i.aq, %i.ar
  store i64 %i.as, ptr %i.am, align 8
  %i.at = icmp eq i64 %i.aq, 0
  br i1 %i.at, label %bb.o, label %_ZN4cvc58internal8TypeNodeD2Ev.exit453, !prof !14

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am)
          to label %_ZN4cvc58internal8TypeNodeD2Ev.exit453 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #16
  unreachable

_ZN4cvc58internal8TypeNodeD2Ev.exit453:           ; preds = %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #15
  %i.aw = load ptr, ptr %59, align 8, !tbaa !93   ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.aj
  br i1 %i.ax, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i455, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i454: ; preds = %_ZN4cvc58internal8TypeNodeD2Ev.exit453
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !92
  %i.az = add i64 %i.ay, 1
end_hunk_0
begin_hunk_1_@_ZN4cvc58internal8rewriter27addRewrites_arrays_rewritesEPNS0_11NodeManagerERNS1_9RewriteDbE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %140) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %138) #15
  br label %bb.acw

bb.acw:                                           ; preds = %.loopexit1382, %bb.ack
  %.pn343.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn343.pn.pn.pn.pn.pn, %.loopexit1382 ], [ %i.cyn, %bb.ack ]
  call void @llvm.lifetime.end.p0(ptr nonnull %138) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %136) #15
  br label %bb.acx

bb.acx:                                           ; preds = %bb.acw, %.body724
  %.pn343.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn343.pn.pn.pn.pn.pn.pn, %bb.acw ], [ %.pn341, %.body724 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %135) #15
  br label %.body715

.body715:                                         ; preds = %bb.ach, %.loopexit.split-lp.loopexit.split-lp.i709, %bb.acx
  %.pn343.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn343.pn.pn.pn.pn.pn.pn.pn, %bb.acx ], [ %i.cyk, %bb.ach ], [ %lpad.loopexit.split-lp9.i710, %.loopexit.split-lp.loopexit.split-lp.i709 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %135) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %133) #15
  br label %bb.acy

bb.acy:                                           ; preds = %.body715, %.loopexit1385
  %.pn343.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn343.pn.pn.pn.pn.pn.pn.pn.pn, %.body715 ], [ %.pn339, %.loopexit1385 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %133) #15
  br label %bb.aga

bb.acz:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit785
  %i.cza = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1381

bb.ada:                                           ; preds = %bb.jm
  %i.czb = landingpad { ptr, i32 }
          cleanup
  br label %.body805

.body805:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i797, %bb.ada
  %eh.lpad-body806 = phi { ptr, i32 } [ %i.czb, %bb.ada ], [ %lpad.loopexit.split-lp9.i798, %.loopexit.split-lp.loopexit.split-lp.i797 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %146) #15
  br label %.loopexit1381

.loopexit1381:                                    ; preds = %.body805, %.loopexit.split-lp.loopexit.split-lp.i786, %bb.acz
  %.pn354 = phi { ptr, i32 } [ %eh.lpad-body806, %.body805 ], [ %lpad.loopexit.split-lp9.i787, %.loopexit.split-lp.loopexit.split-lp.i786 ], [ %i.cza, %bb.acz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %146) #15
  br label %bb.adr

bb.adb:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit809
  %i.czc = landingpad { ptr, i32 }
          cleanup
  br label %.body818

bb.adc:                                           ; preds = %bb.ju
  %i.czd = landingpad { ptr, i32 }
          cleanup
  br label %bb.adq

bb.add:                                           ; preds = %bb.jx
  %i.cze = landingpad { ptr, i32 }
          cleanup
  br label %bb.adp

bb.ade:                                           ; preds = %bb.kj, %bb.kg, %bb.kd
  %.0256 = phi ptr [ %i.apk, %bb.kj ], [ %i.aow, %bb.kg ], [ %i.aoi, %bb.kd ]
  %i.czf = landingpad { ptr, i32 }
          cleanup
  br label %bb.adf

bb.adf:                                           ; preds = %bb.ade, %bb.adf
  %i.czg = phi ptr [ %.0256, %bb.ade ], [ %i.czh, %bb.adf ]
  %i.czh = getelementptr inbounds i8, ptr %i.czg, i64 -8 ; 3 uses
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.czh) #15
  %i.czi = icmp eq ptr %i.czh, %151
  br i1 %i.czi, label %.loopexit1378, label %bb.adf

bb.adg:                                           ; preds = %bb.kp
  %i.czj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ado

bb.adh:                                           ; preds = %bb.ks
  %i.czk = landingpad { ptr, i32 }
          cleanup
  br label %bb.adn

bb.adi:                                           ; preds = %bb.kv
  %i.czl = landingpad { ptr, i32 }
          cleanup
  br label %bb.adm

bb.adj:                                           ; preds = %bb.ky
  %i.czm = landingpad { ptr, i32 }
          cleanup
  br label %bb.adl

bb.adk:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit846
  %i.czn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %155) #15
  br label %bb.adl

bb.adl:                                           ; preds = %bb.adk, %bb.adj
  %.pn356 = phi { ptr, i32 } [ %i.czn, %bb.adk ], [ %i.czm, %bb.adj ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %154) #15
  br label %bb.adm

bb.adm:                                           ; preds = %bb.adl, %bb.adi
  %.pn356.pn = phi { ptr, i32 } [ %.pn356, %bb.adl ], [ %i.czl, %bb.adi ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %153) #15
  br label %bb.adn

bb.adn:                                           ; preds = %bb.adm, %bb.adh
  %.pn356.pn.pn = phi { ptr, i32 } [ %.pn356.pn, %bb.adm ], [ %i.czk, %bb.adh ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %152) #15
  br label %bb.ado

bb.ado:                                           ; preds = %bb.adn, %bb.adg
  %.pn356.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn, %bb.adn ], [ %i.czj, %bb.adg ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %150) #15
  br label %.body836

.body836:                                         ; preds = %bb.kl, %bb.kk, %bb.ado
  %.pn356.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn, %bb.ado ], [ %i.aqd, %bb.kk ], [ %i.aqd, %bb.kl ]
  %i.czo = getelementptr inbounds nuw i8, ptr %151, i64 24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.czo) #15
  %i.czp = getelementptr inbounds nuw i8, ptr %151, i64 16
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.czp) #15
  %i.czq = getelementptr inbounds nuw i8, ptr %151, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.czq) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %151) #15
  br label %.loopexit1378

.loopexit1378:                                    ; preds = %bb.adf, %.body836, %.thread1350
  %.pn356.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn.pn, %.body836 ], [ %i.aoh, %.thread1350 ], [ %i.czf, %bb.adf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %151) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %149) #15
  br label %bb.adp

bb.adp:                                           ; preds = %.loopexit1378, %bb.add
  %.pn356.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn.pn.pn, %.loopexit1378 ], [ %i.cze, %bb.add ]
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %148) #15
  br label %bb.adq

bb.adq:                                           ; preds = %bb.adp, %bb.adc
  %.pn356.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn.pn.pn.pn, %bb.adp ], [ %i.czd, %bb.adc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %147) #15
  br label %.body818

.body818:                                         ; preds = %bb.adb, %.loopexit.split-lp.loopexit.split-lp.i810, %bb.adq
  %.pn356.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn.pn.pn.pn.pn, %bb.adq ], [ %i.czc, %bb.adb ], [ %lpad.loopexit.split-lp9.i811, %.loopexit.split-lp.loopexit.split-lp.i810 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %147) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %145) #15
  br label %bb.adr

bb.adr:                                           ; preds = %.body818, %.loopexit1381
  %.pn356.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn356.pn.pn.pn.pn.pn.pn.pn.pn, %.body818 ], [ %.pn354, %.loopexit1381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #15
  br label %bb.aga

bb.ads:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit876
  %i.czr = landingpad { ptr, i32 }
          cleanup
  br label %.preheader1376.preheader

bb.adt:                                           ; preds = %bb.ml
  %i.czs = landingpad { ptr, i32 }
          cleanup
  br label %.body883

.body883:                                         ; preds = %bb.adt, %.loopexit.split-lp.loopexit.split-lp.i886
  %eh.lpad-body895 = phi { ptr, i32 } [ %i.czs, %bb.adt ], [ %lpad.loopexit.split-lp9.i887, %.loopexit.split-lp.loopexit.split-lp.i886 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %157) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #15
  br label %.loopexit1377

.preheader1376.preheader:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i877, %bb.ads
  %.pn367.ph = phi { ptr, i32 } [ %i.czr, %bb.ads ], [ %lpad.loopexit.split-lp9.i878, %.loopexit.split-lp.loopexit.split-lp.i877 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %157) #15
  br label %.loopexit1377

bb.adu:                                           ; preds = %bb.ms
  %i.czt = landingpad { ptr, i32 }
          cleanup
  br label %bb.aei

bb.adv:                                           ; preds = %bb.mv
  %i.czu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aeh

bb.adw:                                           ; preds = %bb.my
  %i.czv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aeg

.loopexit1374.loopexit1392:                       ; preds = %bb.ne
  %i.czw = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1374.sink.split

bb.adx:                                           ; preds = %bb.nk
  %i.czx = landingpad { ptr, i32 }
          cleanup
  br label %bb.aef

bb.ady:                                           ; preds = %bb.nn
  %i.czy = landingpad { ptr, i32 }
          cleanup
  br label %bb.aee

bb.adz:                                           ; preds = %bb.nq
  %i.czz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aed

bb.aea:                                           ; preds = %bb.nt
  %i.daa = landingpad { ptr, i32 }
          cleanup
  br label %bb.aec

bb.aeb:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit922
  %i.dab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %166) #15
  br label %bb.aec

bb.aec:                                           ; preds = %bb.aeb, %bb.aea
  %.pn369 = phi { ptr, i32 } [ %i.dab, %bb.aeb ], [ %i.daa, %bb.aea ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %165) #15
  br label %bb.aed

bb.aed:                                           ; preds = %bb.aec, %bb.adz
  %.pn369.pn = phi { ptr, i32 } [ %.pn369, %bb.aec ], [ %i.czz, %bb.adz ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %164) #15
  br label %bb.aee

bb.aee:                                           ; preds = %bb.aed, %bb.ady
  %.pn369.pn.pn = phi { ptr, i32 } [ %.pn369.pn, %bb.aed ], [ %i.czy, %bb.ady ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %163) #15
  br label %bb.aef

bb.aef:                                           ; preds = %bb.aee, %bb.adx
  %.pn369.pn.pn.pn = phi { ptr, i32 } [ %.pn369.pn.pn, %bb.aee ], [ %i.czx, %bb.adx ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %161) #15
  br label %.body912

.body912:                                         ; preds = %bb.ng, %bb.nf, %bb.aef
  %.pn369.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn369.pn.pn.pn, %bb.aef ], [ %i.bbb, %bb.nf ], [ %i.bbb, %bb.ng ]
  %i.dac = getelementptr inbounds nuw i8, ptr %162, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dac) #15
  br label %.loopexit1374.sink.split

.loopexit1374.sink.split:                         ; preds = %.body912, %.loopexit1374.loopexit1392
  %.pn369.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.czw, %.loopexit1374.loopexit1392 ], [ %.pn369.pn.pn.pn.pn, %.body912 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %162) #15
  br label %.loopexit1374

.loopexit1374:                                    ; preds = %.loopexit1374.sink.split, %.thread1352
  %.pn369.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bah, %.thread1352 ], [ %.pn369.pn.pn.pn.pn.pn.ph, %.loopexit1374.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %162) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %160) #15
  br label %bb.aeg

bb.aeg:                                           ; preds = %.loopexit1374, %bb.adw
  %.pn369.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn369.pn.pn.pn.pn.pn, %.loopexit1374 ], [ %i.czv, %bb.adw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %160) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %159) #15
  br label %bb.aeh

bb.aeh:                                           ; preds = %bb.aeg, %bb.adv
  %.pn369.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn369.pn.pn.pn.pn.pn.pn, %bb.aeg ], [ %i.czu, %bb.adv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %159) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %158) #15
  br label %bb.aei

bb.aei:                                           ; preds = %bb.aeh, %bb.adu
  %.pn369.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn369.pn.pn.pn.pn.pn.pn.pn, %bb.aeh ], [ %i.czt, %bb.adu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %158) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %156) #15
  br label %.loopexit1377

.loopexit1377:                                    ; preds = %.preheader1376.preheader, %.body883, %bb.aei
  %.pn369.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn369.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aei ], [ %.pn367.ph, %.preheader1376.preheader ], [ %eh.lpad-body895, %.body883 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %156) #15
  br label %bb.aga

bb.aej:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit952
  %i.dad = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit1373

bb.aek:                                           ; preds = %bb.pc
  %i.dae = landingpad { ptr, i32 }
          cleanup
  br label %.body970

.body970:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i964, %bb.aek
  %eh.lpad-body971 = phi { ptr, i32 } [ %i.dae, %bb.aek ], [ %lpad.loopexit.split-lp9.i965, %.loopexit.split-lp.loopexit.split-lp.i964 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %168) #15
  br label %.loopexit1373

.loopexit1373:                                    ; preds = %.body970, %.loopexit.split-lp.loopexit.split-lp.i953, %bb.aej
  %.pn380 = phi { ptr, i32 } [ %eh.lpad-body971, %.body970 ], [ %lpad.loopexit.split-lp9.i954, %.loopexit.split-lp.loopexit.split-lp.i953 ], [ %i.dad, %bb.aej ]
  call void @llvm.lifetime.end.p0(ptr nonnull %168) #15
  br label %bb.afd

bb.ael:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit974
  %i.daf = landingpad { ptr, i32 }
          cleanup
  br label %.body981

bb.aem:                                           ; preds = %bb.pk
  %i.dag = landingpad { ptr, i32 }
          cleanup
  br label %bb.afc

bb.aen:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit985
  %i.dah = landingpad { ptr, i32 }
          cleanup
  br label %.body987.thread

bb.aeo:                                           ; preds = %bb.pn
  %i.dai = landingpad { ptr, i32 }
          cleanup
  br label %.body987.thread1676

bb.aep:                                           ; preds = %bb.po
  %i.daj = landingpad { ptr, i32 }
          cleanup
  br label %.body987

bb.aeq:                                           ; preds = %bb.pp
  %i.dak = landingpad { ptr, i32 }
          cleanup
  br label %.body1016

.body1016:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.i1010, %bb.aeq
  %eh.lpad-body1017 = phi { ptr, i32 } [ %i.dak, %bb.aeq ], [ %lpad.loopexit.split-lp9.i1011, %.loopexit.split-lp.loopexit.split-lp.i1010 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %173) #15
  br label %.body987

.body987.thread:                                  ; preds = %bb.pm, %bb.aen
  %.pn382.pn.pn.ph = phi { ptr, i32 } [ %i.bjl, %bb.pm ], [ %i.dah, %bb.aen ]
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #15
  br label %.loopexit1370

.body987.thread1676:                              ; preds = %.loopexit.split-lp.loopexit.split-lp.i990, %bb.aeo
  %.pn382.pn.ph = phi { ptr, i32 } [ %i.dai, %bb.aeo ], [ %lpad.loopexit.split-lp9.i991, %.loopexit.split-lp.loopexit.split-lp.i990 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %172) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #15
  br label %.loopexit1370

.body987:                                         ; preds = %.body1016, %.loopexit.split-lp.loopexit.split-lp.i999, %bb.aep
  %.pn382 = phi { ptr, i32 } [ %eh.lpad-body1017, %.body1016 ], [ %lpad.loopexit.split-lp9.i1000, %.loopexit.split-lp.loopexit.split-lp.i999 ], [ %i.daj, %bb.aep ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %174) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %174) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %173) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %172) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %172) #15
  br label %.loopexit1370

bb.aer:                                           ; preds = %bb.ql, %bb.qi, %bb.qf
  %.0241 = phi ptr [ %i.bna, %bb.ql ], [ %i.bmm, %bb.qi ], [ %i.bly, %bb.qf ]
  %i.dal = landingpad { ptr, i32 }
          cleanup
  br label %bb.aes

bb.aes:                                           ; preds = %bb.aer, %bb.aes
  %i.dam = phi ptr [ %.0241, %bb.aer ], [ %i.dan, %bb.aes ]
  %i.dan = getelementptr inbounds i8, ptr %i.dam, i64 -8 ; 3 uses
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dan) #15
  %i.dao = icmp eq ptr %i.dan, %176
  br i1 %i.dao, label %.loopexit1367, label %bb.aes

bb.aet:                                           ; preds = %bb.qr
  %i.dap = landingpad { ptr, i32 }
          cleanup
  br label %bb.afb

bb.aeu:                                           ; preds = %bb.qu
  %i.daq = landingpad { ptr, i32 }
          cleanup
  br label %bb.afa

bb.aev:                                           ; preds = %bb.qx
  %i.dar = landingpad { ptr, i32 }
          cleanup
  br label %bb.aez

bb.aew:                                           ; preds = %bb.ra
  %i.das = landingpad { ptr, i32 }
          cleanup
  br label %bb.aey

bb.aex:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1046
  %i.dat = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %180) #15
  br label %bb.aey

bb.aey:                                           ; preds = %bb.aex, %bb.aew
  %.pn386 = phi { ptr, i32 } [ %i.dat, %bb.aex ], [ %i.das, %bb.aew ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %179) #15
  br label %bb.aez

bb.aez:                                           ; preds = %bb.aey, %bb.aev
  %.pn386.pn = phi { ptr, i32 } [ %.pn386, %bb.aey ], [ %i.dar, %bb.aev ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %178) #15
  br label %bb.afa

bb.afa:                                           ; preds = %bb.aez, %bb.aeu
  %.pn386.pn.pn = phi { ptr, i32 } [ %.pn386.pn, %bb.aez ], [ %i.daq, %bb.aeu ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %177) #15
  br label %bb.afb

bb.afb:                                           ; preds = %bb.afa, %bb.aet
  %.pn386.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn, %bb.afa ], [ %i.dap, %bb.aet ]
  call void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %175) #15
  br label %.body1036

.body1036:                                        ; preds = %bb.qn, %bb.qm, %bb.afb
  %.pn386.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn, %bb.afb ], [ %i.bnt, %bb.qm ], [ %i.bnt, %bb.qn ]
  %i.dau = getelementptr inbounds nuw i8, ptr %176, i64 24
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dau) #15
  %i.dav = getelementptr inbounds nuw i8, ptr %176, i64 16
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.dav) #15
  %i.daw = getelementptr inbounds nuw i8, ptr %176, i64 8
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.daw) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %176) #15
  br label %.loopexit1367

.loopexit1367:                                    ; preds = %bb.aes, %.body1036, %.thread1359
  %.pn386.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn, %.body1036 ], [ %i.blx, %.thread1359 ], [ %i.dal, %bb.aes ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %171) #15
  br label %.loopexit1370

.loopexit1370:                                    ; preds = %.body987, %.body987.thread, %.body987.thread1676, %.loopexit1367
  %.pn386.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn.pn, %.loopexit1367 ], [ %.pn382.pn.pn.ph, %.body987.thread ], [ %.pn382, %.body987 ], [ %.pn382.pn.ph, %.body987.thread1676 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %171) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %170) #15
  br label %bb.afc

bb.afc:                                           ; preds = %.loopexit1370, %bb.aem
  %.pn386.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn.pn.pn, %.loopexit1370 ], [ %i.dag, %bb.aem ]
  call void @llvm.lifetime.end.p0(ptr nonnull %170) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %169) #15
  br label %.body981

.body981:                                         ; preds = %bb.ael, %.loopexit.split-lp.loopexit.split-lp.i975, %bb.afc
  %.pn386.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn.pn.pn.pn, %bb.afc ], [ %i.daf, %bb.ael ], [ %lpad.loopexit.split-lp9.i976, %.loopexit.split-lp.loopexit.split-lp.i975 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %169) #15
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %167) #15
  br label %bb.afd

bb.afd:                                           ; preds = %.body981, %.loopexit1373
  %.pn386.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn386.pn.pn.pn.pn.pn.pn.pn.pn, %.body981 ], [ %.pn380, %.loopexit1373 ]
end_hunk_1
