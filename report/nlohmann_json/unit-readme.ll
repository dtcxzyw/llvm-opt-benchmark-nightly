Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-readme?download=true
inline.NumInlined: 7698
inline.NumDeleted: 2869
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 111
begin_hunk_0
@.str.195 = private unnamed_addr constant [4 x i8] c"{?}\00", align 1
@.str.197 = private unnamed_addr constant [29 x i8] c"type must be number, but is \00", align 1
@.str.198 = private unnamed_addr constant [30 x i8] c"type must be boolean, but is \00", align 1
@.str.200 = private unnamed_addr constant [29 x i8] c"unresolved reference token '\00", align 1
@.str.201 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.202 = private unnamed_addr constant [14 x i8] c"array index '\00", align 1
@.str.203 = private unnamed_addr constant [26 x i8] c"' must not begin with '0'\00", align 1
@.str.204 = private unnamed_addr constant [18 x i8] c"' is not a number\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c" exceeds size_type\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c" at byte \00", align 1
@.str.207 = private unnamed_addr constant [54 x i8] c"JSON pointer must be empty or begin with '/' - was: '\00", align 1
@.str.208 = private unnamed_addr constant [54 x i8] c"escape character '~' must be followed with '0' or '1'\00", align 1
@.str.209 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.210 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.216 = private unnamed_addr constant [22 x i8] c"basic_string::replace\00", align 1
@.str.217 = private unnamed_addr constant [39 x i8] c"JSON patch must be an array of objects\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.222 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.226 = private unnamed_addr constant [15 x i8] c"unsuccessful: \00", align 1
@.str.227 = private unnamed_addr constant [18 x i8] c"operation value '\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"' is invalid\00", align 1
@.str.229 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.230 = private unnamed_addr constant [12 x i8] c"operation '\00", align 1
@.str.231 = private unnamed_addr constant [20 x i8] c" must have member '\00", align 1
@.str.232 = private unnamed_addr constant [27 x i8] c" must have string member '\00", align 1
@.str.233 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.234 = private unnamed_addr constant [27 x i8] c"JSON pointer has no parent\00", align 1
@.str.235 = private unnamed_addr constant [26 x i8] c"cannot use insert() with \00", align 1
@.str.236 = private unnamed_addr constant [41 x i8] c"cannot use offsets with object iterators\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"key '\00", align 1
@.str.238 = private unnamed_addr constant [12 x i8] c"' not found\00", align 1
@.str.239 = private unnamed_addr constant [18 x i8] c"array index '-' (\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c") is out of range\00", align 1
@.str.241 = private unnamed_addr constant [3 x i8] c"/-\00", align 1
@.str.243 = private unnamed_addr constant [21 x i8] c"iterators do not fit\00", align 1
@.str.244 = private unnamed_addr constant [45 x i8] c"passed iterators may not belong to container\00", align 1
@.str.245 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.246 = private unnamed_addr constant [42 x i8] c"cannot use key() for non-object iterators\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_unit_readme.cpp, ptr null }]
@switch.table._ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv = private unnamed_addr constant [10 x ptr] [ptr @.str.58, ptr @.str.15, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.64, ptr @.str.64, ptr @.str.64, ptr @.str.62, ptr @.str.63], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISF_E10token_typeERKSB_ = private unnamed_addr constant [17 x ptr] [ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.149, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.159, ptr @.str.157, ptr @.str.158], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISF_E10token_typeERKSB_.2 = private unnamed_addr constant [16 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.149, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11start_arrayEm = private unnamed_addr constant [3 x i64] [i64 0, i64 115292150460684697, i64 576460752303423487], align 8

declare noundef i32 @_ZN7doctest6detail12setTestSuiteERKNS0_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN7doctest6detail9TestSuitemlEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef i32 @_ZN7doctest6detail7regTestERKNS0_8TestCaseE(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define internal void @_ZL19DOCTEST_ANON_FUNC_2v() #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::function", align 8     ; 10 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::function", align 8     ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, bool>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, bool>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 7 uses
  %4 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, int>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, int>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 6 uses
  %5 = alloca %"struct.std::__detail::_Node_const_iterator", align 8 ; 4 uses
  %6 = alloca %"struct.std::__detail::_Node_const_iterator", align 8 ; 4 uses
  %7 = alloca %"struct.std::_Rb_tree_const_iterator.393", align 8 ; 4 uses
  %8 = alloca %"struct.std::_Rb_tree_const_iterator.393", align 8 ; 4 uses
  %9 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 7 uses
  %10 = alloca %"struct.std::__detail::_Node_const_iterator", align 8 ; 4 uses
  %11 = alloca %"struct.std::__detail::_Node_const_iterator", align 8 ; 4 uses
  %12 = alloca %"struct.std::_Rb_tree_const_iterator.393", align 8 ; 4 uses
  %13 = alloca %"struct.std::_Rb_tree_const_iterator.393", align 8 ; 4 uses
  %14 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>, std::_Identity<std::__cxx11::basic_string<char>>, std::less<std::__cxx11::basic_string<char>>>::_Alloc_node", align 8 ; 8 uses
  %15 = alloca %"struct.std::_Deque_iterator.354", align 16 ; 5 uses
  %16 = alloca %"struct.std::_Deque_iterator.354", align 16 ; 5 uses
  %17 = alloca %"class.std::allocator.137", align 1 ; 4 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %18 = alloca %"class.std::function", align 8    ; 10 uses
  %19 = alloca %"class.std::function", align 8    ; 10 uses
  %20 = alloca %"class.std::function", align 8    ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %22 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 14 uses
  %23 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %24 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %25 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 7 uses
  %26 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %27 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %28 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %29 = alloca [3 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 22 uses
  %30 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 5 uses
  %31 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %32 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 18 uses
  %33 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %34 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %35 = alloca [7 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 42 uses
  %36 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 18 uses
  %37 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %38 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %39 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 16 uses
  %40 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %41 = alloca [1 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 10 uses
  %42 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 18 uses
  %43 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %44 = alloca [3 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 22 uses
  %45 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %46 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 18 uses
  %47 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 18 uses
  %48 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %49 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %50 = alloca [1 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 9 uses
  %51 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %52 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 5 uses
  %53 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %54 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %55 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %56 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 5 uses
  %57 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %58 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %59 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %60 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 5 uses
  %61 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %62 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 13 uses
  %63 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %64 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 18 uses
  %65 = alloca [2 x %"class.nlohmann::json_abi_v3_12_0::detail::json_ref"], align 8 ; 17 uses
  %66 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %67 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 5 uses
  %68 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %69 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %70 = alloca %"struct.doctest::detail::Expression_lhs.1", align 8 ; 6 uses
  %71 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %72 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %73 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 5 uses
  %74 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %75 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %76 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 5 uses
  %77 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %78 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  %79 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 7 uses
  %80 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 7 uses
  %81 = alloca %"class.std::function", align 8    ; 8 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %84 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 27 uses
  %85 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  %86 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %87 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %i.i = alloca i8, align 1                       ; 5 uses
  %88 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 7 uses
  %89 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %90 = alloca %"struct.doctest::detail::Expression_lhs.2", align 8 ; 6 uses
  %91 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.j = alloca i8, align 1                       ; 5 uses
  %92 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %93 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 8 uses
  %94 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 11 uses
  %95 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 18 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %97 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %i.k = alloca i8, align 1                       ; 5 uses
  %98 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %99 = alloca %"struct.doctest::detail::Expression_lhs.2", align 8 ; 6 uses
  %100 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %101 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %102 = alloca %"struct.doctest::detail::Expression_lhs.1", align 8 ; 6 uses
  %103 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.m = alloca i32, align 4                      ; 5 uses
  %104 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %105 = alloca %"struct.doctest::detail::Expression_lhs", align 8 ; 5 uses
  %106 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %107 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %108 = alloca %"struct.doctest::detail::Expression_lhs.4", align 8 ; 5 uses
  %109 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.n = alloca i8, align 1                       ; 5 uses
  %110 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 21 uses
  %111 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %112 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %113 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %114 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %115 = alloca %"struct.doctest::detail::Expression_lhs.5", align 8 ; 19 uses
  %116 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 7 uses
  %117 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %118 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 16 uses
  %119 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 8 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %121 = alloca %"class.nlohmann::json_abi_v3_12_0::detail::iter_impl", align 8 ; 12 uses
  %122 = alloca %"class.std::vector", align 8     ; 9 uses
  %123 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %124 = alloca %"class.std::deque", align 8      ; 16 uses
  %125 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %126 = alloca %"class.std::__cxx11::list", align 8 ; 22 uses
  %127 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %128 = alloca %"class.std::forward_list", align 8 ; 7 uses
  %129 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %130 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %131 = alloca %"class.std::set", align 8        ; 17 uses
  %132 = alloca [5 x %"class.std::__cxx11::basic_string"], align 8 ; 44 uses
  %133 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %134 = alloca %"class.std::unordered_set", align 8 ; 10 uses
  %135 = alloca [5 x %"class.std::__cxx11::basic_string"], align 8 ; 45 uses
  %136 = alloca %"struct.std::hash", align 1      ; 4 uses
  %137 = alloca %"struct.std::equal_to", align 1  ; 4 uses
  %138 = alloca %"class.std::allocator.33", align 1 ; 4 uses
  %139 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %140 = alloca %"class.std::multiset", align 8   ; 16 uses
  %141 = alloca [4 x %"class.std::__cxx11::basic_string"], align 8 ; 36 uses
  %142 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %143 = alloca %"class.std::unordered_multiset", align 8 ; 10 uses
  %144 = alloca [4 x %"class.std::__cxx11::basic_string"], align 8 ; 37 uses
  %145 = alloca %"struct.std::hash", align 1      ; 4 uses
  %146 = alloca %"struct.std::equal_to", align 1  ; 4 uses
  %147 = alloca %"class.std::allocator.33", align 1 ; 4 uses
  %148 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %149 = alloca %"class.std::map", align 8        ; 15 uses
  %150 = alloca [3 x %"struct.std::pair"], align 8 ; 31 uses
  %151 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %152 = alloca %"class.std::unordered_map", align 8 ; 10 uses
  %153 = alloca [3 x %"struct.std::pair.76"], align 8 ; 6 uses
  %154 = alloca %"struct.std::hash.60", align 1   ; 4 uses
  %155 = alloca %"struct.std::equal_to.63", align 1 ; 4 uses
  %156 = alloca %"class.std::allocator.79", align 1 ; 4 uses
  %157 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %158 = alloca %"class.std::multimap", align 8   ; 16 uses
  %159 = alloca [4 x %"struct.std::pair.87"], align 8 ; 40 uses
  %160 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 9 uses
  %161 = alloca %"class.std::unordered_multimap", align 8 ; 10 uses
  %162 = alloca [4 x %"struct.std::pair.87"], align 8 ; 41 uses
  %163 = alloca %"struct.std::hash", align 1      ; 4 uses
  %164 = alloca %"struct.std::equal_to", align 1  ; 4 uses
  %165 = alloca %"class.std::allocator.90", align 1 ; 4 uses
  %166 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %167 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %168 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 11 uses
  %169 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %170 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  %i.o = alloca i8, align 1                       ; 5 uses
  %171 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %172 = alloca %"struct.doctest::detail::Expression_lhs.2", align 8 ; 6 uses
  %173 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.p = alloca i8, align 1                       ; 5 uses
  %174 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  %i.q = alloca double, align 8                   ; 5 uses
  %175 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %176 = alloca %"struct.doctest::detail::Expression_lhs.106", align 8 ; 6 uses
  %177 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.r = alloca i32, align 4                      ; 5 uses
  %178 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.s = alloca i8, align 1                       ; 5 uses
  %179 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %180 = alloca %"struct.doctest::detail::Expression_lhs.2", align 8 ; 6 uses
  %181 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.t = alloca i8, align 1                       ; 5 uses
  %i.u = alloca i32, align 4                      ; 5 uses
  %182 = alloca %"struct.doctest::detail::Result", align 8 ; 7 uses
  %183 = alloca %"struct.doctest::detail::Expression_lhs.108", align 8 ; 6 uses
  %184 = alloca %"struct.doctest::detail::ExpressionDecomposer", align 4 ; 5 uses
  %i.v = alloca i32, align 4                      ; 5 uses
  %185 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  %186 = alloca %"class.nlohmann::json_abi_v3_12_0::json_pointer", align 8 ; 9 uses
  %187 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 8 uses
  %188 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 10 uses
  %189 = alloca %"class.nlohmann::json_abi_v3_12_0::basic_json", align 8 ; 6 uses
  %190 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.w = load ptr, ptr @_ZSt4cout, align 8, !tbaa !32
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 232
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !393
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %21)
  %i.ac = load ptr, ptr @_ZSt4cout, align 8, !tbaa !32
  %i.ad = getelementptr i8, ptr %i.ac, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.ah = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.af, ptr noundef nonnull %i.ag)
          to label %bb.b unwind label %bb.fw      ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store i8 0, ptr %22, align 8, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 4 uses
  store i64 0, ptr %23, align 8
  store i8 7, ptr %23, align 8, !tbaa !55
  store double 3.141000e+00, ptr %i.aj, align 8, !tbaa !53
  %i.ak = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.4)
          to label %bb.c unwind label %bb.fx      ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !56  ; 2 uses
  %i.am = load i8, ptr %23, align 8, !tbaa !56
  store i8 %i.am, ptr %i.ak, align 8, !tbaa !56
  store i8 %i.al, ptr %23, align 8, !tbaa !56
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !53
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !53
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.aj, align 8, !tbaa !53
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i8 noundef zeroext %i.al)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit unwind label %bb.d, !inline_history !57

bb.d:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #29, !inline_history !57
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit: ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  store i64 0, ptr %24, align 8
  store i8 4, ptr %24, align 8, !tbaa !55
  store i64 1, ptr %i.ar, align 8, !tbaa !53
  %i.as = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.5)
          to label %bb.e unwind label %bb.fy      ; 3 uses

bb.e:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit
  %i.at = load i8, ptr %i.as, align 8, !tbaa !56  ; 2 uses
  %i.au = load i8, ptr %24, align 8, !tbaa !56
  store i8 %i.au, ptr %i.as, align 8, !tbaa !56
  store i8 %i.at, ptr %24, align 8, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i736 = load ptr, ptr %i.av, align 8, !tbaa !53
  %i.aw = load i64, ptr %i.ar, align 8, !tbaa !53
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !53
  store ptr %.sroa.0.0.copyload.i.i736, ptr %i.ar, align 8, !tbaa !53
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i8 noundef zeroext %i.at)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit737 unwind label %bb.f, !inline_history !57

bb.f:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #29, !inline_history !57
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit737: ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  invoke void @_ZN8nlohmann16json_abi_v3_12_06detail20external_constructorILNS1_7value_tE3EE9constructINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES8_IhSaIhEEvEEA6_cTnNSt9enable_ifIXntsr3std7is_sameIT0_NT_8string_tEEE5valueEiE4typeELi0EEEvRSM_RKSL_(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull align 1 dereferenceable(6) @.str.6)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRA6_KcA6_cTnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit737
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4dataD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %25) #28
  br label %.body

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRA6_KcA6_cTnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit737
  %i.ba = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.7)
          to label %bb.h unwind label %bb.fz      ; 3 uses

bb.h:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEC2IRA6_KcA6_cTnNSt9enable_ifIXaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail18is_compatible_typeISD_SK_EE5valueEiE4typeELi0EEEOT_.exit
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !56  ; 2 uses
  %i.bc = load i8, ptr %25, align 8, !tbaa !56
  store i8 %i.bc, ptr %i.ba, align 8, !tbaa !56
  store i8 %i.bb, ptr %25, align 8, !tbaa !56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i738 = load ptr, ptr %i.bd, align 8, !tbaa !53
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !53
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !53
  store ptr %.sroa.0.0.copyload.i.i738, ptr %i.be, align 8, !tbaa !53
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i8 noundef zeroext %i.bb)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit739 unwind label %bb.i, !inline_history !57

bb.i:                                             ; preds = %bb.h
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #29, !inline_history !57
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit739: ; preds = %bb.h
  store i8 0, ptr %26, align 8, !tbaa !52
  %i.bi = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 4 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !53
  %i.bj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.8)
          to label %bb.j unwind label %bb.ga      ; 3 uses

bb.j:                                             ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit739
end_hunk_0
begin_hunk_1_@_ZL19DOCTEST_ANON_FUNC_2v:bb.a
  %.sroa.0.0.insert.insert.i926 = or disjoint i64 %.sroa.22.0.insert.shift.i924, %.sroa.0.0.insert.ext.i925
  store i64 %.sroa.0.0.insert.insert.i926, ptr %105, align 8
  invoke void @_ZN7doctest6detail14Expression_lhsIbEcvNS0_6ResultEEv(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %104, ptr noundef nonnull align 4 dereferenceable(8) %105)
          to label %bb.kz unwind label %bb.mo

bb.kz:                                            ; preds = %bb.ky
  %i.aeh = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 266, ptr noundef nonnull @.str.2, i32 noundef 162, ptr noundef nonnull @.str.31, ptr noundef nonnull align 8 dereferenceable(32) %104)
          to label %bb.la unwind label %bb.mp     ; 0 uses

bb.la:                                            ; preds = %bb.kz
  %i.aei = getelementptr inbounds nuw i8, ptr %104, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aei) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %106) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %107) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %108) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #28
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %109, i32 noundef 10)
          to label %bb.lb unwind label %bb.mr

bb.lb:                                            ; preds = %bb.la
  %i.aej = load i8, ptr %84, align 8, !tbaa !55
  %i.aek = load i32, ptr %109, align 4, !tbaa !395
  %.sroa.22.0.insert.ext.i927 = zext i32 %i.aek to i64
  %.sroa.22.0.insert.shift.i928 = shl nuw i64 %.sroa.22.0.insert.ext.i927, 32
  %.sroa.0.0.insert.ext.i929 = zext i8 %i.aej to i64
  %.sroa.0.0.insert.insert.i930 = or disjoint i64 %.sroa.22.0.insert.shift.i928, %.sroa.0.0.insert.ext.i929
  store i64 %.sroa.0.0.insert.insert.i930, ptr %108, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  store i8 2, ptr %i.n, align 1, !tbaa !56
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_06detail7value_tEEeqIS5_EEDTcmcvveqclL_ZNS0_7declvalIS5_EEOT_vEEclsr7doctest6detailE7declvalIS9_EEtlNS0_6ResultEEESA_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %107, ptr noundef nonnull align 4 dereferenceable(8) %108, ptr noundef nonnull align 1 dereferenceable(1) %i.n)
          to label %bb.lc unwind label %bb.ms

bb.lc:                                            ; preds = %bb.lb
  %i.ael = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 163, ptr noundef nonnull @.str.32, ptr noundef nonnull align 8 dereferenceable(32) %107)
          to label %bb.ld unwind label %bb.mt     ; 0 uses

bb.ld:                                            ; preds = %bb.lc
  %i.aem = getelementptr inbounds nuw i8, ptr %107, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.aem) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #28
  call void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE5clearEv(ptr noundef nonnull align 8 dereferenceable(16) %84) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #28
  store i8 0, ptr %110, align 8, !tbaa !52
  %i.aen = getelementptr inbounds nuw i8, ptr %110, i64 8 ; 10 uses
  store ptr null, ptr %i.aen, align 8, !tbaa !53
  %i.aeo = getelementptr inbounds nuw i8, ptr %111, i64 8 ; 4 uses
  store i64 0, ptr %111, align 8
  store i8 5, ptr %111, align 8, !tbaa !55
  store i64 23, ptr %i.aeo, align 8, !tbaa !53
  %i.aep = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %110, ptr noundef nonnull @.str.26)
          to label %bb.le unwind label %bb.mw     ; 3 uses

bb.le:                                            ; preds = %bb.ld
  %i.aeq = load i8, ptr %i.aep, align 8, !tbaa !56 ; 2 uses
  %i.aer = load i8, ptr %111, align 8, !tbaa !56
  store i8 %i.aer, ptr %i.aep, align 8, !tbaa !56
  store i8 %i.aeq, ptr %111, align 8, !tbaa !56
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aep, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i931 = load ptr, ptr %i.aes, align 8, !tbaa !53
  %i.aet = load i64, ptr %i.aeo, align 8, !tbaa !53
  store i64 %i.aet, ptr %i.aes, align 8, !tbaa !53
  store ptr %.sroa.0.0.copyload.i.i931, ptr %i.aeo, align 8, !tbaa !53
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aeo, i8 noundef zeroext %i.aeq)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit932 unwind label %bb.lf, !inline_history !57

bb.lf:                                            ; preds = %bb.le
  %i.aeu = landingpad { ptr, i32 }
          catch ptr null
  %i.aev = extractvalue { ptr, i32 } %i.aeu, 0
  call void @__clang_call_terminate(ptr %i.aev) #29, !inline_history !57
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit932: ; preds = %bb.le
  %i.aew = getelementptr inbounds nuw i8, ptr %112, i64 8 ; 4 uses
  store i64 0, ptr %112, align 8
  store i8 4, ptr %112, align 8, !tbaa !55
  store i64 0, ptr %i.aew, align 8, !tbaa !53
  %i.aex = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %110, ptr noundef nonnull @.str.33)
          to label %bb.lg unwind label %bb.mx     ; 3 uses

bb.lg:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit932
  %i.aey = load i8, ptr %i.aex, align 8, !tbaa !56 ; 2 uses
  %i.aez = load i8, ptr %112, align 8, !tbaa !56
  store i8 %i.aez, ptr %i.aex, align 8, !tbaa !56
  store i8 %i.aey, ptr %112, align 8, !tbaa !56
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aex, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i934 = load ptr, ptr %i.afa, align 8, !tbaa !53
  %i.afb = load i64, ptr %i.aew, align 8, !tbaa !53
  store i64 %i.afb, ptr %i.afa, align 8, !tbaa !53
  store ptr %.sroa.0.0.copyload.i.i934, ptr %i.aew, align 8, !tbaa !53
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.aew, i8 noundef zeroext %i.aey)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit935 unwind label %bb.lh, !inline_history !57

bb.lh:                                            ; preds = %bb.lg
  %i.afc = landingpad { ptr, i32 }
          catch ptr null
  %i.afd = extractvalue { ptr, i32 } %i.afc, 0
  call void @__clang_call_terminate(ptr %i.afd) #29, !inline_history !57
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit935: ; preds = %bb.lg
  %i.afe = getelementptr inbounds nuw i8, ptr %113, i64 8 ; 4 uses
  store i64 0, ptr %113, align 8
  store i8 7, ptr %113, align 8, !tbaa !55
  store double 3.141000e+00, ptr %i.afe, align 8, !tbaa !53
  %i.aff = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvEixIKcEERSD_PT_(ptr noundef nonnull align 8 dereferenceable(16) %110, ptr noundef nonnull @.str.34)
          to label %bb.li unwind label %bb.my     ; 3 uses

bb.li:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit935
  %i.afg = load i8, ptr %i.aff, align 8, !tbaa !56 ; 2 uses
  %i.afh = load i8, ptr %113, align 8, !tbaa !56
  store i8 %i.afh, ptr %i.aff, align 8, !tbaa !56
  store i8 %i.afg, ptr %113, align 8, !tbaa !56
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aff, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i936 = load ptr, ptr %i.afi, align 8, !tbaa !53
  %i.afj = load i64, ptr %i.afe, align 8, !tbaa !53
  store i64 %i.afj, ptr %i.afi, align 8, !tbaa !53
  store ptr %.sroa.0.0.copyload.i.i936, ptr %i.afe, align 8, !tbaa !53
  invoke void @_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE10json_value7destroyENS0_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.afe, i8 noundef zeroext %i.afg)
          to label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit937 unwind label %bb.lj, !inline_history !57

bb.lj:                                            ; preds = %bb.li
  %i.afk = landingpad { ptr, i32 }
          catch ptr null
  %i.afl = extractvalue { ptr, i32 } %i.afk, 0
  call void @__clang_call_terminate(ptr %i.afl) #29, !inline_history !57
  unreachable

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit937: ; preds = %bb.li
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #28
  invoke void @_ZN7doctest6detail20ExpressionDecomposerC1ENS_10assertType4EnumE(ptr noundef nonnull align 4 dereferenceable(4) %116, i32 noundef 10)
          to label %._crit_edge.i.i unwind label %bb.mz

._crit_edge.i.i:                                  ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvED2Ev.exit937
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #28
  %i.afm = getelementptr inbounds nuw i8, ptr %117, i64 16 ; 6 uses
  store ptr %i.afm, ptr %117, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.afm, ptr noundef nonnull align 1 dereferenceable(3) @.str.26, i64 3, i1 false)
  %i.afn = getelementptr inbounds nuw i8, ptr %117, i64 8
  store i64 3, ptr %i.afn, align 8, !tbaa !77
  %i.afo = getelementptr inbounds nuw i8, ptr %117, i64 19
  store i8 0, ptr %i.afo, align 1, !tbaa !53
  %i.afp = load i8, ptr %110, align 8, !tbaa !55, !noalias !407 ; 2 uses
  switch i8 %i.afp, label %bb.lm [
    i8 1, label %bb.lk
    i8 2, label %.thread1597
  ]

.thread1597:                                      ; preds = %._crit_edge.i.i
  %i.afq = load ptr, ptr %i.aen, align 8, !tbaa !53, !noalias !407 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !96, !noalias !407
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.aft = load i32, ptr %116, align 4, !tbaa !395, !noalias !408
  store ptr %110, ptr %115, align 8, !tbaa !96
  %.sroa.51490.0..sroa_idx1601 = getelementptr inbounds nuw i8, ptr %115, i64 8
  store ptr null, ptr %.sroa.51490.0..sroa_idx1601, align 8, !tbaa !95
  %.sroa.71491.0..sroa_idx1602 = getelementptr inbounds nuw i8, ptr %115, i64 16
  store ptr %i.afs, ptr %.sroa.71491.0..sroa_idx1602, align 8, !tbaa !96
  %.sroa.8.0..sroa_idx1603 = getelementptr inbounds nuw i8, ptr %115, i64 24
  store i64 -9223372036854775808, ptr %.sroa.8.0..sroa_idx1603, align 8, !tbaa !102
  %i.afu = getelementptr inbounds nuw i8, ptr %115, i64 32
  store i32 %i.aft, ptr %i.afu, align 8, !tbaa !104, !alias.scope !408
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #28
  store ptr %110, ptr %118, align 8, !tbaa !92, !alias.scope !409
  %i.afv = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.afw = getelementptr inbounds nuw i8, ptr %118, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.afv, i8 0, i64 16, i1 false), !alias.scope !409
  store i64 -9223372036854775808, ptr %i.afw, align 8, !tbaa !93, !alias.scope !409
  br label %bb.lo

bb.lk:                                            ; preds = %._crit_edge.i.i
  %i.afx = load ptr, ptr %i.aen, align 8, !tbaa !53, !noalias !407 ; 3 uses
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afx, i64 8 ; 5 uses
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afx, i64 16
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !105, !noalias !410 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.aga, null
  br i1 %.not10.i.i.i.i, label %.thread1590, label %.lr.ph.i.i.i.i

.thread1590:                                      ; preds = %bb.lk
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.agb = load i32, ptr %116, align 4, !tbaa !395, !noalias !411
  store ptr %110, ptr %115, align 8, !tbaa !96
  %.sroa.51490.0..sroa_idx1594 = getelementptr inbounds nuw i8, ptr %115, i64 8
  store ptr %i.afy, ptr %.sroa.51490.0..sroa_idx1594, align 8, !tbaa !95
  %.sroa.71491.0..sroa_idx1595 = getelementptr inbounds nuw i8, ptr %115, i64 16
  store ptr null, ptr %.sroa.71491.0..sroa_idx1595, align 8, !tbaa !96
  %.sroa.8.0..sroa_idx1596 = getelementptr inbounds nuw i8, ptr %115, i64 24
  store i64 -9223372036854775808, ptr %.sroa.8.0..sroa_idx1596, align 8, !tbaa !102
  %i.agc = getelementptr inbounds nuw i8, ptr %115, i64 32
  store i32 %i.agb, ptr %i.agc, align 8, !tbaa !104, !alias.scope !411
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #28
  store ptr %110, ptr %118, align 8, !tbaa !92, !alias.scope !412
  %i.agd = getelementptr inbounds nuw i8, ptr %118, i64 8 ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %118, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agd, i8 0, i64 16, i1 false), !alias.scope !412
  store i64 -9223372036854775808, ptr %i.age, align 8, !tbaa !93, !alias.scope !412
  br label %bb.ln

.lr.ph.i.i.i.i:                                   ; preds = %bb.lk, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.aga, %bb.lk ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ], [ %i.afy, %bb.lk ]
  %i.agf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.agg = load i64, ptr %i.agf, align 8, !tbaa !77, !noalias !410 ; 3 uses
  %i.agh = icmp eq i64 %i.agg, 0
  br i1 %i.agh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.agg, i64 3)
  %i.agi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !76, !noalias !410
  %i.agk = call i32 @memcmp(ptr noundef %i.agj, ptr noundef nonnull %i.afm, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #28, !noalias !410 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.agk, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.agl = add i64 %i.agg, -3
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.agl, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.agk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.agm = icmp slt i32 %.0.i.i.i.i.i.i.i, 0      ; 2 uses
  %.19.i.i.i.i = select i1 %i.agm, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.agm, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !95, !noalias !410 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.agn = icmp eq ptr %.19.i.i.i.i, %i.afy
  br i1 %i.agn, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ago = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !77, !noalias !410 ; 3 uses
  %i.agq = icmp eq i64 %i.agp, 0
  br i1 %i.agq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.ll
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.agp, i64 3)
  %i.agr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !76, !noalias !410
  %i.agt = call i32 @memcmp(ptr noundef nonnull %i.afm, ptr noundef %i.ags, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #28, !noalias !410 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.agt, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.ll
  %i.agu = sub i64 3, %i.agp
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.agu, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.agt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.agv = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %i.agv, ptr %i.afy, ptr %.19.i.i.i.i
  br label %bb.lm

bb.lm:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %._crit_edge.i.i
  %.sroa.8.0 = phi i64 [ -9223372036854775808, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ 1, %._crit_edge.i.i ], [ -9223372036854775808, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %.sroa.51490.0 = phi ptr [ %i.afy, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i ], [ null, %._crit_edge.i.i ], [ %spec.select.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.agw = load i32, ptr %116, align 4, !tbaa !395, !noalias !413
  store ptr %110, ptr %115, align 8, !tbaa !96
  %.sroa.51490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %115, i64 8
  store ptr %.sroa.51490.0, ptr %.sroa.51490.0..sroa_idx, align 8, !tbaa !95
  %.sroa.71491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %115, i64 16
  store ptr null, ptr %.sroa.71491.0..sroa_idx, align 8, !tbaa !96
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %115, i64 24
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !102
  %i.agx = getelementptr inbounds nuw i8, ptr %115, i64 32
  store i32 %i.agw, ptr %i.agx, align 8, !tbaa !104, !alias.scope !413
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  store ptr %110, ptr %118, align 8, !tbaa !92, !alias.scope !414
  %i.agy = getelementptr inbounds nuw i8, ptr %118, i64 8 ; 2 uses
  %i.agz = getelementptr inbounds nuw i8, ptr %118, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false), !alias.scope !414
  store i64 -9223372036854775808, ptr %i.agz, align 8, !tbaa !93, !alias.scope !414
  switch i8 %i.afp, label %bb.lp [
    i8 1, label %._crit_edge1685
    i8 2, label %._crit_edge
  ]

._crit_edge1685:                                  ; preds = %bb.lm
  %.pre1686 = load ptr, ptr %i.aen, align 8, !tbaa !53, !noalias !414
  br label %bb.ln

._crit_edge:                                      ; preds = %bb.lm
  %.pre1684 = load ptr, ptr %i.aen, align 8, !tbaa !53, !noalias !414
  br label %bb.lo

bb.ln:                                            ; preds = %._crit_edge1685, %.thread1590
  %i.aha = phi ptr [ %i.afx, %.thread1590 ], [ %.pre1686, %._crit_edge1685 ]
  %i.ahb = phi ptr [ %i.agd, %.thread1590 ], [ %i.agy, %._crit_edge1685 ]
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.aha, i64 8
  store ptr %i.ahc, ptr %i.ahb, align 8, !tbaa !95, !alias.scope !414
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit939

bb.lo:                                            ; preds = %._crit_edge, %.thread1597
  %i.ahd = phi ptr [ %.pre1684, %._crit_edge ], [ %i.afq, %.thread1597 ]
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahd, i64 8
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !96, !noalias !414
  %i.ahg = getelementptr inbounds nuw i8, ptr %118, i64 16
  store ptr %i.ahf, ptr %i.ahg, align 8, !tbaa !96, !alias.scope !414
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit939

bb.lp:                                            ; preds = %bb.lm
  store i64 1, ptr %i.agz, align 8, !tbaa !93, !alias.scope !414
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit939

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit939: ; preds = %bb.ln, %bb.lo, %bb.lp
  invoke void @_ZN7doctest6detail14Expression_lhsIN8nlohmann16json_abi_v3_12_06detail9iter_implINS3_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS3_14adl_serializerES8_IhSaIhEEvEEEEEneISJ_EEDTcmcvvneclL_ZNS0_7declvalISJ_EEOT_vEEclsr7doctest6detailE7declvalISN_EEtlNS0_6ResultEEESO_(ptr dead_on_unwind nonnull writable sret(%"struct.doctest::detail::Result") align 8 %114, ptr noundef nonnull align 8 dereferenceable(36) %115, ptr noundef nonnull align 8 dereferenceable(32) %118)
          to label %bb.lq unwind label %bb.na

bb.lq:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit939
  %i.ahh = invoke noundef zeroext i1 @_ZN7doctest6detail13decomp_assertENS_10assertType4EnumEPKciS4_RKNS0_6ResultE(i32 noundef 10, ptr noundef nonnull @.str.2, i32 noundef 173, ptr noundef nonnull @.str.35, ptr noundef nonnull align 8 dereferenceable(32) %114)
          to label %bb.lr unwind label %bb.nb     ; 0 uses

bb.lr:                                            ; preds = %bb.lq
  %i.ahi = getelementptr inbounds nuw i8, ptr %114, i64 8
  call void @_ZN7doctest6StringD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ahi) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #28
  %i.ahj = load ptr, ptr %117, align 8, !tbaa !76 ; 2 uses
  %i.ahk = icmp eq ptr %i.ahj, %i.afm
  br i1 %i.ahk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i940

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i940: ; preds = %bb.lr
  call void @_ZdlPv(ptr noundef %i.ahj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942: ; preds = %bb.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i940
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #28
  %i.ahl = getelementptr inbounds nuw i8, ptr %120, i64 16 ; 6 uses
  store ptr %i.ahl, ptr %120, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ahl, ptr noundef nonnull align 1 dereferenceable(3) @.str.26, i64 3, i1 false)
  %i.ahm = getelementptr inbounds nuw i8, ptr %120, i64 8
  store i64 3, ptr %i.ahm, align 8, !tbaa !77
  %i.ahn = getelementptr inbounds nuw i8, ptr %120, i64 19
  store i8 0, ptr %i.ahn, align 1, !tbaa !53
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  store ptr %110, ptr %119, align 8, !tbaa !92, !alias.scope !417
  %i.aho = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %119, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aho, i8 0, i64 16, i1 false), !alias.scope !417
  store i64 -9223372036854775808, ptr %i.ahp, align 8, !tbaa !93, !alias.scope !417
  %i.ahq = load i8, ptr %110, align 8, !tbaa !55, !noalias !417 ; 2 uses
  switch i8 %i.ahq, label %bb.ls [
    i8 1, label %bb.lt
    i8 2, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978.thread
  ]

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942
  %i.ahr = load ptr, ptr %i.aen, align 8, !tbaa !53, !noalias !417 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !96, !noalias !417
  %i.ahu = getelementptr inbounds nuw i8, ptr %119, i64 16
  store ptr %i.aht, ptr %i.ahu, align 8, !tbaa !96, !alias.scope !417
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #28
  store ptr %110, ptr %121, align 8, !tbaa !92, !alias.scope !418
  %i.ahv = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.ahw = getelementptr inbounds nuw i8, ptr %121, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ahv, i8 0, i64 16, i1 false), !alias.scope !418
  store i64 -9223372036854775808, ptr %i.ahw, align 8, !tbaa !93, !alias.scope !418
  br label %bb.lw

bb.ls:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942
  store i64 1, ptr %i.ahp, align 8, !tbaa !93, !alias.scope !417
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978

bb.lt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit942
  %i.ahx = load ptr, ptr %i.aen, align 8, !tbaa !53, !noalias !417 ; 2 uses
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 8 ; 5 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahx, i64 16
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !105, !noalias !415 ; 2 uses
  %.not10.i.i.i.i947 = icmp eq ptr %i.aia, null
  br i1 %.not10.i.i.i.i947, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.i968, label %.lr.ph.i.i.i.i948

.lr.ph.i.i.i.i948:                                ; preds = %bb.lt, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i954
  %.012.i.i.i.i949 = phi ptr [ %.1.i.i.i.i959, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i954 ], [ %i.aia, %bb.lt ] ; 4 uses
  %.0811.i.i.i.i950 = phi ptr [ %.19.i.i.i.i956, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i954 ], [ %i.ahy, %bb.lt ]
  %i.aib = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i949, i64 40
  %i.aic = load i64, ptr %i.aib, align 8, !tbaa !77, !noalias !415 ; 3 uses
  %i.aid = icmp eq i64 %i.aic, 0
  br i1 %i.aid, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i974, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i952

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i952: ; preds = %.lr.ph.i.i.i.i948
  %.sroa.speculated.i.i.i.i.i.i.i951 = call i64 @llvm.umin.i64(i64 %i.aic, i64 3)
  %i.aie = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i949, i64 32
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !76, !noalias !415
  %i.aig = call i32 @memcmp(ptr noundef %i.aif, ptr noundef nonnull %i.ahl, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i951) #28, !noalias !415 ; 2 uses
  %.not.i.i.i.i.i.i.i953 = icmp eq i32 %i.aig, 0
  br i1 %.not.i.i.i.i.i.i.i953, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i974, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i954

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i974: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i952, %.lr.ph.i.i.i.i948
  %i.aih = add i64 %i.aic, -3
  %spec.select7.i.i.i.i.i.i.i.i975 = call i64 @llvm.smax.i64(i64 %i.aih, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i976 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i975, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i977 = trunc nsw i64 %.08.i.i.i.i.i.i.i.i976 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i954

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i954: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i974, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i952
  %.0.i.i.i.i.i.i.i955 = phi i32 [ %i.aig, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i952 ], [ %.0.i6.i.i.i.i.i.i.i977, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i974 ]
  %i.aii = icmp slt i32 %.0.i.i.i.i.i.i.i955, 0   ; 2 uses
  %.19.i.i.i.i956 = select i1 %i.aii, ptr %.0811.i.i.i.i950, ptr %.012.i.i.i.i949 ; 5 uses
  %.1.in.v.i.i.i.i957 = select i1 %i.aii, i64 24, i64 16
  %.1.in.i.i.i.i958 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i949, i64 %.1.in.v.i.i.i.i957
  %.1.i.i.i.i959 = load ptr, ptr %.1.in.i.i.i.i958, align 8, !tbaa !95, !noalias !415 ; 2 uses
  %.not.i.i.i.i960 = icmp eq ptr %.1.i.i.i.i959, null
  br i1 %.not.i.i.i.i960, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i961, label %.lr.ph.i.i.i.i948, !llvm.loop !0

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i961: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i954
  %i.aij = icmp eq ptr %.19.i.i.i.i956, %i.ahy
  br i1 %i.aij, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.i968, label %bb.lu

bb.lu:                                            ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i961
  %i.aik = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i956, i64 40
  %i.ail = load i64, ptr %i.aik, align 8, !tbaa !77, !noalias !415 ; 3 uses
  %i.aim = icmp eq i64 %i.ail, 0
  br i1 %i.aim, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i970, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i963

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i963: ; preds = %bb.lu
  %.sroa.speculated.i.i.i.i.i.i962 = call i64 @llvm.umin.i64(i64 %i.ail, i64 3)
  %i.ain = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i956, i64 32
  %i.aio = load ptr, ptr %i.ain, align 8, !tbaa !76, !noalias !415
  %i.aip = call i32 @memcmp(ptr noundef nonnull %i.ahl, ptr noundef %i.aio, i64 noundef %.sroa.speculated.i.i.i.i.i.i962) #28, !noalias !415 ; 2 uses
  %.not.i.i.i.i.i.i964 = icmp eq i32 %i.aip, 0
  br i1 %.not.i.i.i.i.i.i964, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i970, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i965

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i970: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i963, %bb.lu
  %i.aiq = sub i64 3, %i.ail
  %spec.select7.i.i.i.i.i.i.i971 = call i64 @llvm.smax.i64(i64 %i.aiq, i64 -2147483648)
  %.08.i.i.i.i.i.i.i972 = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i971, i64 2147483647)
  %.0.i6.i.i.i.i.i.i973 = trunc nsw i64 %.08.i.i.i.i.i.i.i972 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i965

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i965: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i970, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i963
  %.0.i.i.i.i.i.i966 = phi i32 [ %i.aip, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i963 ], [ %.0.i6.i.i.i.i.i.i973, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i970 ]
  %i.air = icmp slt i32 %.0.i.i.i.i.i.i966, 0
  %spec.select.i.i.i967 = select i1 %i.air, ptr %i.ahy, ptr %.19.i.i.i.i956
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.i968

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.i968: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i965, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i961, %bb.lt
  %.sroa.0.0.i.i.i969 = phi ptr [ %i.ahy, %bb.lt ], [ %i.ahy, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorS5_blmdSaNS9_14adl_serializerESC_IhSaIhEEvEEESt10_Select1stISH_ESt4lessIS5_ESaISH_EE14_M_lower_boundEPSt13_Rb_tree_nodeISH_EPSt18_Rb_tree_node_baseRS7_.exit.i.i.i961 ], [ %spec.select.i.i.i967, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i965 ]
  store ptr %.sroa.0.0.i.i.i969, ptr %i.aho, align 8, !tbaa !95, !alias.scope !415
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8nlohmann16json_abi_v3_12_010basic_jsonIS_St6vectorS5_blmdSaNS7_14adl_serializerES9_IhSaIhEEvEESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.i968, %bb.ls
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  store ptr %110, ptr %121, align 8, !tbaa !92, !alias.scope !419
  %i.ais = getelementptr inbounds nuw i8, ptr %121, i64 8 ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %121, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ais, i8 0, i64 16, i1 false), !alias.scope !419
  store i64 -9223372036854775808, ptr %i.ait, align 8, !tbaa !93, !alias.scope !419
  switch i8 %i.ahq, label %bb.lx [
    i8 1, label %bb.lv
    i8 2, label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978._crit_edge
  ]

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978._crit_edge: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978
  %.pre1687 = load ptr, ptr %i.aen, align 8, !tbaa !53, !noalias !419
  br label %bb.lw

bb.lv:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978
  %i.aiu = load ptr, ptr %i.aen, align 8, !tbaa !53, !noalias !419
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aiu, i64 8
  store ptr %i.aiv, ptr %i.ais, align 8, !tbaa !95, !alias.scope !419
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit979

bb.lw:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978._crit_edge, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978.thread
  %i.aiw = phi ptr [ %.pre1687, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978._crit_edge ], [ %i.ahr, %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978.thread ]
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 8
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !96, !noalias !419
  %i.aiz = getelementptr inbounds nuw i8, ptr %121, i64 16
  store ptr %i.aiy, ptr %i.aiz, align 8, !tbaa !96, !alias.scope !419
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit979

bb.lx:                                            ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE4findERKS9_.exit978
  store i64 1, ptr %i.ait, align 8, !tbaa !93, !alias.scope !419
  br label %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit979

_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit979: ; preds = %bb.lv, %bb.lw, %bb.lx
  %i.aja = invoke noundef zeroext i1 @_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEeqISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_(ptr noundef nonnull align 8 dereferenceable(32) %119, ptr noundef nonnull align 8 dereferenceable(32) %121)
          to label %_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEneISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_.exit981 unwind label %bb.ne ; 0 uses

_ZNK8nlohmann16json_abi_v3_12_06detail9iter_implINS0_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES5_IhSaIhEEvEEEneISG_TnNSt9enable_ifIXoosr3std7is_sameIT_SG_EE5valuesr3std7is_sameISJ_NS2_IKSF_EEEE5valueEDnE4typeELDn0EEEbRKSJ_.exit981: ; preds = %_ZN8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEvE3endEv.exit979
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #28
  %i.ajb = load ptr, ptr %120, align 8, !tbaa !76 ; 2 uses
end_hunk_1
