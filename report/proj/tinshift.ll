Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/tinshift?download=true
inline.NumInlined: 3866
inline.NumDeleted: 1338
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
@.str.154 = private unnamed_addr constant [17 x i8] c"object separator\00", align 1
@.str.155 = private unnamed_addr constant [26 x i8] c"number overflow parsing '\00", align 1
@.str.156 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c"excessive object size: \00", align 1
@_ZTIN13proj_nlohmann6detail12out_of_rangeE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN13proj_nlohmann6detail12out_of_rangeE, ptr @_ZTIN13proj_nlohmann6detail9exceptionE }, comdat, align 8
@_ZTSN13proj_nlohmann6detail12out_of_rangeE = linkonce_odr hidden constant [39 x i8] c"N13proj_nlohmann6detail12out_of_rangeE\00", comdat, align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.158 = private unnamed_addr constant [49 x i8] c"cannot compare iterators of different containers\00", align 1
@_ZTIN13proj_nlohmann6detail16invalid_iteratorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN13proj_nlohmann6detail16invalid_iteratorE, ptr @_ZTIN13proj_nlohmann6detail9exceptionE }, comdat, align 8
@_ZTSN13proj_nlohmann6detail16invalid_iteratorE = linkonce_odr hidden constant [43 x i8] c"N13proj_nlohmann6detail16invalid_iteratorE\00", comdat, align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"invalid_iterator\00", align 1
@_ZTVN13proj_nlohmann6detail16invalid_iteratorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN13proj_nlohmann6detail16invalid_iteratorE, ptr @_ZN13proj_nlohmann6detail9exceptionD2Ev, ptr @_ZN13proj_nlohmann6detail16invalid_iteratorD0Ev, ptr @_ZNK13proj_nlohmann6detail9exception4whatEv] }, comdat, align 8
@.str.160 = private unnamed_addr constant [17 x i8] c"cannot get value\00", align 1
@.str.161 = private unnamed_addr constant [36 x i8] c"iterator does not fit current value\00", align 1
@.str.162 = private unnamed_addr constant [22 x i8] c"iterator out of range\00", align 1
@.str.163 = private unnamed_addr constant [25 x i8] c"cannot use erase() with \00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.164 = private unnamed_addr constant [23 x i8] c"excessive array size: \00", align 1
@_ZTVN13proj_nlohmann6detail12out_of_rangeE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN13proj_nlohmann6detail12out_of_rangeE, ptr @_ZN13proj_nlohmann6detail9exceptionD2Ev, ptr @_ZN13proj_nlohmann6detail12out_of_rangeD0Ev, ptr @_ZNK13proj_nlohmann6detail9exception4whatEv] }, comdat, align 8
@.str.165 = private unnamed_addr constant [13 x i8] c"out_of_range\00", align 1
@_ZTIN13proj_nlohmann6detail11parse_errorE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN13proj_nlohmann6detail11parse_errorE, ptr @_ZTIN13proj_nlohmann6detail9exceptionE }, comdat, align 8
@_ZTSN13proj_nlohmann6detail11parse_errorE = linkonce_odr hidden constant [38 x i8] c"N13proj_nlohmann6detail11parse_errorE\00", comdat, align 1
@_ZTVN13proj_nlohmann6detail11parse_errorE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN13proj_nlohmann6detail11parse_errorE, ptr @_ZN13proj_nlohmann6detail9exceptionD2Ev, ptr @_ZN13proj_nlohmann6detail11parse_errorD0Ev, ptr @_ZNK13proj_nlohmann6detail9exception4whatEv] }, comdat, align 8
@.str.166 = private unnamed_addr constant [9 x i8] c"<U+%.4X>\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"parse_error\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c" at line \00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c", column \00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"syntax error \00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"while parsing \00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"- \00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"; last read: '\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"unexpected \00", align 1
@.str.178 = private unnamed_addr constant [12 x i8] c"; expected \00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c"<uninitialized>\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"true literal\00", align 1
@.str.181 = private unnamed_addr constant [14 x i8] c"false literal\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"null literal\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"string literal\00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"number literal\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"'['\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"']'\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"':'\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.191 = private unnamed_addr constant [14 x i8] c"<parse error>\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"end of input\00", align 1
@.str.193 = private unnamed_addr constant [23 x i8] c"'[', '{', or a literal\00", align 1
@.str.194 = private unnamed_addr constant [14 x i8] c"unknown token\00", align 1
@.str.195 = private unnamed_addr constant [52 x i8] c"cannot use operator[] with a numeric argument with \00", align 1
@.str.196 = private unnamed_addr constant [29 x i8] c"type must be number, but is \00", align 1
@switch.table._ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE9type_nameEv = private unnamed_addr constant [10 x ptr] [ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.94, ptr @.str.94, ptr @.str.94, ptr @.str.92, ptr @.str.93], align 8
@switch.table._ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE17exception_messageENS0_10lexer_baseISE_E10token_typeERKSA_ = private unnamed_addr constant [17 x ptr] [ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.184, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.194, ptr @.str.192, ptr @.str.193], align 8
@switch.table._ZN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEE17exception_messageENS0_10lexer_baseISE_E10token_typeERKSA_.2 = private unnamed_addr constant [16 x ptr] [ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.184, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193], align 8
@switch.table._ZN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE11start_arrayEm = private unnamed_addr constant [3 x i64] [i64 0, i64 115292150460684697, i64 576460752303423487], align 8

@_ZN8TINShift9EvaluatorC1EOSt10unique_ptrINS_12TINShiftFileESt14default_deleteIS2_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN8TINShift9EvaluatorC2EOSt10unique_ptrINS_12TINShiftFileESt14default_deleteIS2_EE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZNK8TINShift16ParsingException4whatEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8TINShift12TINShiftFile5parseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca double, align 8                   ; 4 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 30 uses
  %3 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 4 uses
  %4 = alloca %"class.std::function", align 8     ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %21 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::allocator", align 1   ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %28 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 11 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %30 = alloca %"class.std::allocator", align 1   ; 5 uses
  %31 = alloca %"class.proj_nlohmann::detail::iter_impl", align 8 ; 10 uses
  %32 = alloca %"class.proj_nlohmann::detail::iter_impl", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::allocator", align 1   ; 5 uses
  %35 = alloca %"struct.TINShift::TINShiftFile::Link", align 8 ; 22 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %42 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 15 uses
  %43 = alloca %"class.proj_nlohmann::detail::iter_impl", align 8 ; 11 uses
  %44 = alloca %"class.proj_nlohmann::detail::iter_impl", align 8 ; 18 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.std::allocator", align 1   ; 5 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %50 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 10 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %52 = alloca %"class.std::allocator", align 1   ; 5 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %55 = alloca %"class.std::allocator", align 1   ; 5 uses
  %56 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %57 = alloca %"class.std::allocator", align 1   ; 5 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %59 = alloca %"class.std::allocator", align 1   ; 5 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.std::allocator", align 1   ; 5 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %63 = alloca %"class.std::allocator", align 1   ; 5 uses
  %64 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %65 = alloca %"class.std::allocator", align 1   ; 5 uses
  %66 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 10 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %68 = alloca %"class.std::allocator", align 1   ; 5 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %71 = alloca %"class.std::allocator", align 1   ; 5 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %73 = alloca %"class.std::allocator", align 1   ; 5 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %75 = alloca %"class.std::allocator", align 1   ; 5 uses
  %76 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 21 uses
  %77 = alloca %"class.proj_nlohmann::detail::iter_impl", align 8 ; 11 uses
  %78 = alloca %"class.proj_nlohmann::detail::iter_impl", align 8 ; 18 uses
  %79 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %80 = alloca %"class.std::allocator", align 1   ; 5 uses
  %81 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %82 = alloca %"class.std::allocator", align 1   ; 5 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %84 = alloca %"class.std::allocator", align 1   ; 5 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %86 = alloca %"class.std::allocator", align 1   ; 5 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %88 = alloca %"class.std::allocator", align 1   ; 5 uses
  %89 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %90 = alloca %"class.std::allocator", align 1   ; 5 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %92 = alloca %"class.std::allocator", align 1   ; 5 uses
  %93 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %94 = alloca %"class.std::allocator", align 1   ; 5 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %96 = alloca %"class.std::allocator", align 1   ; 5 uses
  %97 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 19 uses
  %98 = alloca %"class.proj_nlohmann::detail::iter_impl", align 8 ; 15 uses
  %99 = alloca %"class.proj_nlohmann::detail::iter_impl", align 8 ; 18 uses
  %100 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %101 = alloca %"class.std::allocator", align 1  ; 5 uses
  %102 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %103 = alloca %"class.std::allocator", align 1  ; 5 uses
  %104 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %105 = alloca %"class.std::allocator", align 1  ; 5 uses
  %106 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %107 = alloca %"class.std::allocator", align 1  ; 5 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %109 = alloca %"class.std::allocator", align 1  ; 5 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %111 = alloca %"class.std::allocator", align 1  ; 5 uses
  %112 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %113 = alloca %"class.std::allocator", align 1  ; 5 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %115 = alloca %"class.std::allocator", align 1  ; 5 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #27 ; 36 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.l, i8 0, i64 448, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  store ptr %i.m, ptr %i.k, align 16, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 4 uses
  store i64 0, ptr %i.n, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !14
  store i8 0, ptr %i.p, align 16, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  store ptr %i.r, ptr %i.q, align 16, !tbaa !14
  store i8 0, ptr %i.r, align 16, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  store ptr %i.t, ptr %i.s, align 16, !tbaa !14
  store i8 0, ptr %i.t, align 16, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  store ptr %i.v, ptr %i.u, align 16, !tbaa !14
  store i8 0, ptr %i.v, align 16, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 176 ; 2 uses
  store ptr %i.x, ptr %i.w, align 16, !tbaa !14
  store i8 0, ptr %i.x, align 16, !tbaa !16
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 208 ; 2 uses
  store ptr %i.z, ptr %i.y, align 16, !tbaa !14
  store i8 0, ptr %i.z, align 16, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 248 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !14
  store i8 0, ptr %i.ab, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 280 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 8, !tbaa !14
  store i8 0, ptr %i.ad, align 8, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 296
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 312 ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !14
  store i8 0, ptr %i.af, align 8, !tbaa !16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 344 ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !14
  store i8 0, ptr %i.ah, align 8, !tbaa !16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  store ptr %i.ak, ptr %i.aj, align 16, !tbaa !14
  store i8 0, ptr %i.ak, align 16, !tbaa !16
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 416
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 432 ; 2 uses
  store ptr %i.am, ptr %i.al, align 16, !tbaa !14
  store i8 0, ptr %i.am, align 16, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 449
  store i8 0, ptr %i.an, align 1, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 452
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.ao, i8 0, i64 52, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  store i8 0, ptr %2, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 11 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  invoke void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5parseIRKS8_EESC_OT_St8functionIFbiNS_6detail13parse_event_tERSC_EEbb(ptr dead_on_unwind nonnull writable sret(%"class.proj_nlohmann::basic_json") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 %4, i1 noundef zeroext true, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aq = load i8, ptr %2, align 8, !tbaa !42     ; 2 uses
  %i.ar = load i8, ptr %3, align 8, !tbaa !42
  store i8 %i.ar, ptr %2, align 8, !tbaa !42
  store i8 %i.aq, ptr %3, align 8, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.ap, align 8, !tbaa !16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !16
  store i64 %i.at, ptr %i.ap, align 8, !tbaa !16
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.as, align 8, !tbaa !16
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i8 noundef zeroext %i.aq) #28, !inline_history !43
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %i.av, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  %i.az = load i8, ptr %2, align 8, !tbaa !39
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %bb.s, label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.bb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bc = extractvalue { ptr, i32 } %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !44 ; 2 uses
  %.not.i433 = icmp eq ptr %i.be, null
  br i1 %.not.i433, label %_ZNSt14_Function_baseD2Ev.exit434, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit434 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #29
  unreachable

_ZNSt14_Function_baseD2Ev.exit434:                ; preds = %bb.e, %bb.f
  %i.bi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #28
  %i.bj = icmp eq i32 %i.bc, %i.bi
  br i1 %i.bj, label %bb.h, label %bb.tr

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit434
  %i.bk = extractvalue { ptr, i32 } %i.bb, 0
  %i.bl = call ptr @__cxa_begin_catch(ptr %i.bk) #28 ; 2 uses
  %i.bm = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bl) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bq, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN8TINShift16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bm, ptr nonnull @_ZTIN8TINShift16ParsingExceptionE, ptr nonnull @_ZN8TINShift16ParsingExceptionD2Ev) #30
          to label %bb.tt unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.h
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0234 = phi i1 [ false, %bb.j ], [ true, %bb.i ] ; 2 uses
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bt = load ptr, ptr %5, align 8, !tbaa !8     ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !16
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0234, label %bb.l, label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.0234, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn977 = phi { ptr, i32 } [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.bm) #28
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn976 = phi { ptr, i32 } [ %.pn977, %bb.l ], [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  invoke void @__cxa_end_catch()
          to label %bb.tr unwind label %bb.ts

bb.n:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.by = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437.thread

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN8TINShift16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.by, ptr nonnull @_ZTIN8TINShift16ParsingExceptionE, ptr nonnull @_ZN8TINShift16ParsingExceptionD2Ev) #30
          to label %bb.tt unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437.thread: ; preds = %bb.n
  %i.bz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0232 = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cb = load ptr, ptr %7, align 8, !tbaa !8     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435: ; preds = %bb.q
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.0232, label %bb.r, label %bb.tr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br i1 %.0232, label %bb.r, label %bb.tr

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437
  %.pn312980 = phi { ptr, i32 } [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437.thread ], [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit437 ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i435 ]
  call void @__cxa_free_exception(ptr %i.by) #28
  br label %bb.tr

bb.s:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  invoke fastcc void @_ZN8TINShiftL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.1, i1 noundef zeroext false)
          to label %_ZN8TINShiftL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit unwind label %bb.bm

_ZN8TINShiftL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit: ; preds = %bb.s
  %i.cg = load ptr, ptr %i.k, align 16, !tbaa !8  ; 6 uses
  %i.ch = icmp eq ptr %i.cg, %i.m
  %i.ci = load ptr, ptr %9, align 8, !tbaa !8     ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj                ; 2 uses
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN8TINShiftL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  br i1 %i.ck, label %bb.t, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN8TINShiftL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  br i1 %i.ck, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15 ; 3 uses
  %i.cn = icmp ult i64 %i.cm, 16
  call void @llvm.assume(i1 %i.cn)
  switch i64 %i.cm, label %bb.v [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.co = load i8, ptr %i.ci, align 1, !tbaa !16
  store i8 %i.co, ptr %i.cg, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ci, i64 %i.cm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.cp = load i64, ptr %i.cl, align 8, !tbaa !15 ; 2 uses
  store i64 %i.cp, ptr %i.n, align 8, !tbaa !15
  %i.cq = load ptr, ptr %i.k, align 16, !tbaa !8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !16
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.ci, ptr %i.k, align 16, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ct = load <2 x i64>, ptr %i.cs, align 8, !tbaa !16
  store <2 x i64> %i.ct, ptr %i.n, align 8, !tbaa !16
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cu = load i64, ptr %i.m, align 16, !tbaa !16
  store ptr %i.ci, ptr %i.k, align 16, !tbaa !8
  %i.cv = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cw = load <2 x i64>, ptr %i.cv, align 8, !tbaa !16
  store <2 x i64> %i.cw, ptr %i.n, align 8, !tbaa !16
  %.not.i438 = icmp eq ptr %i.cg, null
  br i1 %.not.i438, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cg, ptr %9, align 8, !tbaa !8
  store i64 %i.cu, ptr %i.cj, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cj, ptr %9, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.w, %bb.x
  %i.cx = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cg, %bb.w ], [ %i.cj, %bb.x ]
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.cy, align 8, !tbaa !15
  store i8 0, ptr %i.cx, align 1, !tbaa !16
  %i.cz = load ptr, ptr %9, align 8, !tbaa !8     ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !16
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i439
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke fastcc void @_ZN8TINShiftL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.2, i1 noundef zeroext false)
          to label %_ZN8TINShiftL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit442 unwind label %bb.bn

_ZN8TINShiftL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit442: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit441
  %i.de = load ptr, ptr %0, align 8, !tbaa !37    ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 5 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !8  ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  %i.dj = load ptr, ptr %10, align 8, !tbaa !8    ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.dl = icmp eq ptr %i.dj, %i.dk                ; 2 uses
  br i1 %i.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i449, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i443

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i449: ; preds = %_ZN8TINShiftL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit442
  br i1 %i.dl, label %bb.y, label %.thread.i450

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i443: ; preds = %_ZN8TINShiftL12getReqStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit442
  br i1 %i.dl, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i444

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i443, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i449
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !15 ; 3 uses
  %i.do = icmp ult i64 %i.dn, 16
  call void @llvm.assume(i1 %i.do)
  %.not21.i446 = icmp eq ptr %10, %i.df
  br i1 %.not21.i446, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit451, label %bb.z, !prof !48

bb.z:                                             ; preds = %bb.y
  switch i64 %i.dn, label %bb.ab [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i447
    i64 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dp = load i8, ptr %i.dj, align 1, !tbaa !16
  store i8 %i.dp, ptr %i.dg, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i447

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.dj, i64 %i.dn, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i447

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i447: ; preds = %bb.ab, %bb.aa, %bb.z
  %i.dq = load i64, ptr %i.dm, align 8, !tbaa !15 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !15
  %i.ds = load ptr, ptr %i.df, align 8, !tbaa !8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dq
  store i8 0, ptr %i.dt, align 1, !tbaa !16
  %.pre.i448 = load ptr, ptr %10, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit451

.thread.i450:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i449
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dw = load <2 x i64>, ptr %i.dv, align 8, !tbaa !16
  store <2 x i64> %i.dw, ptr %i.du, align 8, !tbaa !16
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i444: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i443
  %i.dx = load i64, ptr %i.dh, align 8, !tbaa !16
  store ptr %i.dj, ptr %i.df, align 8, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  %i.ea = load <2 x i64>, ptr %i.dy, align 8, !tbaa !16
  store <2 x i64> %i.ea, ptr %i.dz, align 8, !tbaa !16
  %.not.i445 = icmp eq ptr %i.dg, null
  br i1 %.not.i445, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i444
  store ptr %i.dg, ptr %10, align 8, !tbaa !8
  store i64 %i.dx, ptr %i.dk, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit451

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i444, %.thread.i450
  store ptr %i.dk, ptr %10, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit451

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit451: ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i447, %bb.ac, %bb.ad
  %i.eb = phi ptr [ %.pre.i448, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i447 ], [ %i.dg, %bb.ac ], [ %i.dk, %bb.ad ], [ %i.dj, %bb.y ]
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ec, align 8, !tbaa !15
  store i8 0, ptr %i.eb, align 1, !tbaa !16
  %i.ed = load ptr, ptr %10, align 8, !tbaa !8    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit451
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !16
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit451, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i452
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke fastcc void @_ZN8TINShiftL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.3, i1 noundef zeroext true)
          to label %_ZN8TINShiftL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit unwind label %bb.bo

_ZN8TINShiftL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit454
  %i.ei = load ptr, ptr %0, align 8, !tbaa !37    ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 64 ; 5 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !8  ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 80 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  %i.en = load ptr, ptr %11, align 8, !tbaa !8    ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.ep = icmp eq ptr %i.en, %i.eo                ; 2 uses
  br i1 %i.em, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i461, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i455

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i461: ; preds = %_ZN8TINShiftL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  br i1 %i.ep, label %bb.ae, label %.thread.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i455: ; preds = %_ZN8TINShiftL12getOptStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc.exit
  br i1 %i.ep, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i456

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i455, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i461
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !15 ; 3 uses
  %i.es = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.es)
  %.not21.i458 = icmp eq ptr %11, %i.ej
  br i1 %.not21.i458, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit463, label %bb.af, !prof !48

bb.af:                                            ; preds = %bb.ae
  switch i64 %i.er, label %bb.ah [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i459
    i64 1, label %bb.ag
  ]

bb.ag:                                            ; preds = %bb.af
  %i.et = load i8, ptr %i.en, align 1, !tbaa !16
  store i8 %i.et, ptr %i.ek, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i459

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ek, ptr align 1 %i.en, i64 %i.er, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i459

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i459: ; preds = %bb.ah, %bb.ag, %bb.af
  %i.eu = load i64, ptr %i.eq, align 8, !tbaa !15 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  store i64 %i.eu, ptr %i.ev, align 8, !tbaa !15
  %i.ew = load ptr, ptr %i.ej, align 8, !tbaa !8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eu
  store i8 0, ptr %i.ex, align 1, !tbaa !16
  %.pre.i460 = load ptr, ptr %11, align 8, !tbaa !8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit463

.thread.i462:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i461
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !8
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fa = load <2 x i64>, ptr %i.ez, align 8, !tbaa !16
  store <2 x i64> %i.fa, ptr %i.ey, align 8, !tbaa !16
  br label %bb.aj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i456: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i455
  %i.fb = load i64, ptr %i.el, align 8, !tbaa !16
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.fe = load <2 x i64>, ptr %i.fc, align 8, !tbaa !16
end_hunk_0
