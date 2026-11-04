Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_pq_encoding?download=true
inline.NumInlined: 546
inline.NumDeleted: 313
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.testing::AssertionResult" = type { i8, %"class.std::unique_ptr.14" }
%"class.std::unique_ptr.14" = type { %"struct.std::__uniq_ptr_data.15" }
%"struct.std::__uniq_ptr_data.15" = type { %"class.std::__uniq_ptr_impl.16" }
%"class.std::__uniq_ptr_impl.16" = type { %"class.std::tuple.17" }
%"class.std::tuple.17" = type { %"struct.std::_Tuple_impl.18" }
%"struct.std::_Tuple_impl.18" = type { %"struct.std::_Head_base.21" }
%"struct.std::_Head_base.21" = type { ptr }
%"class.testing::Message" = type { %"class.std::unique_ptr.22" }
%"class.std::unique_ptr.22" = type { %"struct.std::__uniq_ptr_data.23" }
%"struct.std::__uniq_ptr_data.23" = type { %"class.std::__uniq_ptr_impl.24" }
%"class.std::__uniq_ptr_impl.24" = type { %"class.std::tuple.25" }
%"class.std::tuple.25" = type { %"struct.std::_Tuple_impl.26" }
%"struct.std::_Tuple_impl.26" = type { %"struct.std::_Head_base.29" }
%"struct.std::_Head_base.29" = type { ptr }
%"class.testing::internal::AssertHelper" = type { ptr }
%"struct.faiss::IndexPQFastScan" = type { %"struct.faiss::IndexFastScan", %"struct.faiss::ProductQuantizer" }
%"struct.faiss::IndexFastScan" = type { %"struct.faiss::Index.base", i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, %"struct.faiss::AlignedTable", ptr }
%"struct.faiss::Index.base" = type <{ ptr, i32, [4 x i8], i64, i8, i8, [2 x i8], i32, float }>
%"struct.faiss::AlignedTable" = type { %"struct.faiss::AlignedTableTightAlloc", i64 }
%"struct.faiss::AlignedTableTightAlloc" = type { ptr, i64 }
%"struct.faiss::ProductQuantizer" = type { %"struct.faiss::Quantizer", i64, i64, i64, i64, i8, i32, %"struct.faiss::ClusteringParameters", ptr, %"class.std::vector.39", %"class.std::vector.39", %"class.std::vector.39", %"class.std::vector.39" }
%"struct.faiss::Quantizer" = type { ptr, i64, i64 }
%"struct.faiss::ClusteringParameters" = type { i32, i32, i8, i8, i8, i8, i8, i32, i32, i32, i64, i8, i8, i8, i16, double }
%"class.std::vector.39" = type { %"struct.std::_Vector_base.40" }
%"struct.std::_Vector_base.40" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl" = type { %"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" }
%"struct.std::_Vector_base<float, std::allocator<float>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.testing::internal::GTestLog" = type { i32 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZN28PQEncoderGeneric_encode_TestD0Ev = comdat any

$_ZN7testing4Test5SetupEv = comdat any

$_ZN22PQEncoder8_encode_TestD0Ev = comdat any

$_ZN23PQEncoder16_encode_TestD0Ev = comdat any

$_ZN34PQFastScan_set_packed_element_TestD0Ev = comdat any

$_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestE10CreateTestEv = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_ = comdat any

$_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestE10CreateTestEv = comdat any

$_ZN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestE10CreateTestEv = comdat any

$_ZN7testing8internal15TestFactoryBaseD2Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestE10CreateTestEv = comdat any

$_ZN7testing13PrintToStringIhEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_ = comdat any

$_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_ = comdat any

$_ZTVN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryBaseE = comdat any

$_ZTSN7testing8internal15TestFactoryBaseE = comdat any

$_ZTVN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE = comdat any

$_ZTVN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE = comdat any

$_ZTVN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE = comdat any

@_ZTV28PQEncoderGeneric_encode_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI28PQEncoderGeneric_encode_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN28PQEncoderGeneric_encode_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN28PQEncoderGeneric_encode_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI28PQEncoderGeneric_encode_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS28PQEncoderGeneric_encode_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS28PQEncoderGeneric_encode_Test = dso_local constant [31 x i8] c"28PQEncoderGeneric_encode_Test\00", align 1
@_ZTIN7testing4TestE = external constant ptr
@_ZTV22PQEncoder8_encode_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI22PQEncoder8_encode_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN22PQEncoder8_encode_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN22PQEncoder8_encode_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI22PQEncoder8_encode_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22PQEncoder8_encode_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS22PQEncoder8_encode_Test = dso_local constant [25 x i8] c"22PQEncoder8_encode_Test\00", align 1
@_ZTV23PQEncoder16_encode_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI23PQEncoder16_encode_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN23PQEncoder16_encode_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN23PQEncoder16_encode_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI23PQEncoder16_encode_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS23PQEncoder16_encode_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS23PQEncoder16_encode_Test = dso_local constant [26 x i8] c"23PQEncoder16_encode_Test\00", align 1
@_ZTV34PQFastScan_set_packed_element_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI34PQFastScan_set_packed_element_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN34PQFastScan_set_packed_element_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN34PQFastScan_set_packed_element_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI34PQFastScan_set_packed_element_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS34PQFastScan_set_packed_element_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTS34PQFastScan_set_packed_element_Test = dso_local constant [37 x i8] c"34PQFastScan_set_packed_element_Test\00", align 1
@_ZN28PQEncoderGeneric_encode_Test10test_info_E = dso_local global ptr null, align 8
@.str = private unnamed_addr constant [17 x i8] c"PQEncoderGeneric\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/faiss/faiss/tests/test_pq_encoding.cpp\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"/opt-bench/work/faiss/faiss/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.7 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.9 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE = linkonce_odr dso_local constant [69 x i8] c"N7testing8internal15TestFactoryImplI28PQEncoderGeneric_encode_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"nbits = \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"values[i] & mask\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN22PQEncoder8_encode_Test10test_info_E = dso_local global ptr null, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"PQEncoder8\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE = linkonce_odr dso_local constant [63 x i8] c"N7testing8internal15TestFactoryImplI22PQEncoder8_encode_TestEE\00", comdat, align 1
@_ZN23PQEncoder16_encode_Test10test_info_E = dso_local global ptr null, align 8
@.str.21 = private unnamed_addr constant [12 x i8] c"PQEncoder16\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE = linkonce_odr dso_local constant [64 x i8] c"N7testing8internal15TestFactoryImplI23PQEncoder16_encode_TestEE\00", comdat, align 1
@_ZN34PQFastScan_set_packed_element_Test10test_info_E = dso_local global ptr null, align 8
@.str.23 = private unnamed_addr constant [11 x i8] c"PQFastScan\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"set_packed_element\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE = linkonce_odr dso_local constant [75 x i8] c"N7testing8internal15TestFactoryImplI34PQFastScan_set_packed_element_TestEE\00", comdat, align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"newcode\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"(oldcode + 3) % 16\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"oldcode\00", align 1
@_ZTVN5faiss15IndexPQFastScanE = external constant { [37 x ptr] }, align 8
@_ZTVN5faiss16ProductQuantizerE = external constant { [7 x ptr] }, align 8
@_ZTVN5faiss13IndexFastScanE = external constant { [37 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_pq_encoding.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN28PQEncoderGeneric_encode_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN28PQEncoderGeneric_encode_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(776) ptr @_Znwm(i64 noundef 776) #19, !noalias !67 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.c, i8 0, i64 776, i1 false), !tbaa !13, !noalias !67
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]  ; 2 uses
  %i.d = tail call i32 @rand() #17, !noalias !67
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.07.i
  store i64 %i.e, ptr %i.f, align 8, !tbaa !13, !noalias !67
  %i.g = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, 97
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_113random_vectorEm.exit.preheader, label %bb.b, !llvm.loop !0

_ZN12_GLOBAL__N_113random_vectorEm.exit.preheader: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %bb.c

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 776) #18
  ret void

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113random_vectorEm.exit.preheader, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit
  %indvars.iv112 = phi i64 [ 1, %_ZN12_GLOBAL__N_113random_vectorEm.exit.preheader ], [ %indvars.iv.next113, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 4 uses
  %indvars.iv = phi i32 [ -7, %_ZN12_GLOBAL__N_113random_vectorEm.exit.preheader ], [ %indvars.iv.next, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ] ; 3 uses
  %indvars115 = trunc i64 %indvars.iv112 to i32   ; 4 uses
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.10, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %indvars115)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74   ; 6 uses
  %.not.i.i.i43 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i43, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt16__throw_bad_castv() #20
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc44:                                         ; preds = %bb.e
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.t = load i8, ptr %i.s, align 8, !tbaa !80
  %.not.i1.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 67
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.r)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc45:                                         ; preds = %bb.g
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef signext i8 %i.y(ptr noundef nonnull align 8 dereferenceable(570) %i.r, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !58

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc45, %bb.f
  %.0.i.i.i = phi i8 [ %i.v, %bb.f ], [ %i.z, %.noexc45 ]
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef signext %.0.i.i.i)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc47:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc47
  %notmask = shl nsw i64 -1, %indvars.iv112
  %i.ac = xor i64 %notmask, -1                    ; 3 uses
  %i.ad = invoke noalias noundef nonnull dereferenceable(291) ptr @_Znam(i64 noundef 291) #19
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.preheader:                                       ; preds = %_ZNSolsEPFRSoS_E.exit
  %.neg10.i = add nsw i32 %indvars115, -8
  %i.ae = trunc i64 %indvars.iv112 to i8          ; 2 uses
  br label %bb.j

bb.h:                                             ; preds = %_ZN5faiss16PQEncoderGeneric6encodeEm.exit
  %.not.i = icmp eq i8 %.sroa.859.1, 0
  br i1 %.not.i, label %_ZN5faiss16PQEncoderGenericD2Ev.exit.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 %.sroa.19.1, ptr %.sroa.056.3, align 1, !tbaa !27
  br label %_ZN5faiss16PQEncoderGenericD2Ev.exit.preheader

_ZN5faiss16PQEncoderGenericD2Ev.exit.preheader:   ; preds = %bb.h, %bb.i
  br label %_ZN5faiss16PQEncoderGenericD2Ev.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %bb.g, %.noexc45, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc47, %_ZNSolsEPFRSoS_E.exit, %bb.e
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit42

bb.j:                                             ; preds = %.preheader, %_ZN5faiss16PQEncoderGeneric6encodeEm.exit
  %.sroa.053.0.idx90 = phi i64 [ 0, %.preheader ], [ %.sroa.053.0.add, %_ZN5faiss16PQEncoderGeneric6encodeEm.exit ] ; 2 uses
  %.sroa.056.089 = phi ptr [ %i.ad, %.preheader ], [ %.sroa.056.3, %_ZN5faiss16PQEncoderGeneric6encodeEm.exit ] ; 3 uses
  %.sroa.859.088 = phi i8 [ 0, %.preheader ], [ %.sroa.859.1, %_ZN5faiss16PQEncoderGeneric6encodeEm.exit ] ; 3 uses
  %.sroa.19.087 = phi i8 [ 0, %.preheader ], [ %.sroa.19.1, %_ZN5faiss16PQEncoderGeneric6encodeEm.exit ]
  %.sroa.053.0.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.053.0.idx90
  %i.af = load i64, ptr %.sroa.053.0.ptr, align 8, !tbaa !13
  %i.ag = and i64 %i.af, %i.ac                    ; 2 uses
  %i.ah = zext nneg i8 %.sroa.859.088 to i64
  %i.ai = shl i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i8
  %i.ak = or i8 %.sroa.19.087, %i.aj              ; 2 uses
  %i.al = zext i8 %.sroa.859.088 to i32           ; 4 uses
  %i.am = add nuw nsw i32 %indvars115, %i.al      ; 2 uses
  %i.an = icmp samesign ugt i32 %i.am, 7
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = sub nsw i32 8, %i.al
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = lshr i64 %i.ag, %i.ap                   ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.056.089, i64 1 ; 3 uses
  store i8 %i.ak, ptr %.sroa.056.089, align 1, !tbaa !27
  %i.as = add nsw i32 %.neg10.i, %i.al
  %i.at = icmp sgt i32 %i.as, 7
  br i1 %i.at, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.k
  %i.au = add i32 %indvars.iv, %i.al
  %i.av = lshr i32 %i.au, 3                       ; 3 uses
  %i.aw = add nsw i32 %i.av, -1
  %xtraiter = and i32 %i.av, 7                    ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 7
  br i1 %i.ax, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.av, 536870904
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.056.2.epil.init = phi ptr [ %i.ar, %.lr.ph.i.preheader ], [ %i.ca, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0711.i.epil.init = phi i64 [ %i.aq, %.lr.ph.i.preheader ], [ 0, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.056.2.epil = phi ptr [ %i.az, %.lr.ph.i.epil ], [ %.sroa.056.2.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.0711.i.epil = phi i64 [ %i.ba, %.lr.ph.i.epil ], [ %.0711.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ay = trunc i64 %.0711.i.epil to i8
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.056.2.epil, i64 1 ; 2 uses
  store i8 %i.ay, ptr %.sroa.056.2.epil, align 1, !tbaa !27
  %i.ba = lshr i64 %.0711.i.epil, 8               ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !59

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.k
  %.sroa.056.1 = phi ptr [ %i.ar, %bb.k ], [ %i.ca, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.az, %.lr.ph.i.epil ]
  %.07.lcssa.i = phi i64 [ %i.aq, %bb.k ], [ 0, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph.i.epil ]
  %i.bb = add i8 %.sroa.859.088, %i.ae
  %i.bc = and i8 %i.bb, 7
  %i.bd = trunc i64 %.07.lcssa.i to i8
  br label %_ZN5faiss16PQEncoderGeneric6encodeEm.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.056.2 = phi ptr [ %i.ar, %.lr.ph.i.preheader.new ], [ %i.ca, %.lr.ph.i ] ; 9 uses
  %.0711.i = phi i64 [ %i.aq, %.lr.ph.i.preheader.new ], [ 0, %.lr.ph.i ] ; 8 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  %i.be = trunc i64 %.0711.i to i8
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.056.2, i64 1
  store i8 %i.be, ptr %.sroa.056.2, align 1, !tbaa !27
  %i.bg = lshr i64 %.0711.i, 8
  %i.bh = trunc i64 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.056.2, i64 2
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !27
  %i.bj = lshr i64 %.0711.i, 16
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.056.2, i64 3
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !27
  %i.bm = lshr i64 %.0711.i, 24
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.056.2, i64 4
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !27
  %i.bp = lshr i64 %.0711.i, 32
  %i.bq = trunc i64 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.056.2, i64 5
end_hunk_0
begin_hunk_1_@_ZN28PQEncoderGeneric_encode_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #18
  br label %.noexc32

bb.t:                                             ; preds = %.noexc49
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.u:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ez = load ptr, ptr %2, align 8, !tbaa !31, !noalias !82 ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.h
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.u
  %i.fb = load i64, ptr %i.h, align 8, !tbaa !27, !noalias !82
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.t
  %.pn.i = phi { ptr, i32 } [ %i.ex, %bb.t ], [ %i.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.ey, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17, !noalias !82
  %i.fd = load ptr, ptr %1, align 8, !tbaa !31, !noalias !82 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.i
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.ff = load i64, ptr %i.i, align 8, !tbaa !27, !noalias !82
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !82
  br label %.body

.noexc32:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17, !noalias !82
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc32, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.fh = load i8, ptr %3, align 8, !tbaa !40, !range !41, !noundef !42
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.af, label %bb.w

bb.v:                                             ; preds = %bb.r, %bb.q
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.fj, %bb.v ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit40

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.fk = load ptr, ptr %i.j, align 8, !tbaa !43  ; 2 uses
  %.not.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.y, %bb.x
  %i.fm = phi ptr [ %i.fl, %bb.y ], [ @.str.17, %bb.x ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 65, ptr noundef %i.fm)
          to label %bb.z unwind label %bb.ac

bb.z:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.fn = load ptr, ptr %4, align 8, !tbaa !45    ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.aa
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(128) %i.fn) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.aa, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.af

bb.ab:                                            ; preds = %bb.w
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit36

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.z
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ft, %bb.ad ], [ %i.fs, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.fu = load ptr, ptr %4, align 8, !tbaa !45    ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.ae
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8
  call void %i.fx(ptr noundef nonnull align 8 dereferenceable(128) %i.fu) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35, %bb.ae, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %i.fr, %bb.ab ], [ %.pn, %bb.ae ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #17
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit40

bb.af:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.fy = load ptr, ptr %i.j, align 8, !tbaa !43  ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !31 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !27
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fy, i64 noundef 32) #18
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.af, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next110, 97
  br i1 %exitcond111.not, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit, label %_ZN5faiss16PQEncoderGenericD2Ev.exit, !llvm.loop !66

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit40: ; preds = %_ZN7testing7MessageD2Ev.exit36, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit36 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit42

_ZNSt6vectorImSaImEED2Ev.exit42:                  ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit40
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit40 ], [ %lpad.loopexit.split-lp154, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 776) #18
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing4Test5SetupEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22PQEncoder8_encode_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22PQEncoder8_encode_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(800) ptr @_Znwm(i64 noundef 800) #19, !noalias !86 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %i.c, i8 0, i64 800, i1 false), !tbaa !13, !noalias !86
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]  ; 2 uses
  %i.d = tail call i32 @rand() #17, !noalias !86
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.07.i
  store i64 %i.e, ptr %i.f, align 8, !tbaa !13, !noalias !86
  %i.g = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, 100
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_113random_vectorEm.exit, label %bb.b, !llvm.loop !0

_ZN12_GLOBAL__N_113random_vectorEm.exit:          ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull dereferenceable(100) ptr @_Znam(i64 noundef 100) #19
          to label %.preheader41 unwind label %bb.c ; 4 uses

.preheader:                                       ; preds = %.preheader41
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113random_vectorEm.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit26

.preheader41:                                     ; preds = %_ZN12_GLOBAL__N_113random_vectorEm.exit, %.preheader41
  %.sroa.028.0.idx43 = phi i64 [ %.sroa.028.0.add.4, %.preheader41 ], [ 0, %_ZN12_GLOBAL__N_113random_vectorEm.exit ] ; 6 uses
  %.sroa.031.042 = phi ptr [ %i.ac, %.preheader41 ], [ %i.h, %_ZN12_GLOBAL__N_113random_vectorEm.exit ] ; 6 uses
  %.sroa.028.0.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %i.k = load i64, ptr %.sroa.028.0.ptr, align 8, !tbaa !13
  %i.l = trunc i64 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 1
  store i8 %i.l, ptr %.sroa.031.042, align 1, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %.sroa.028.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.o = load i64, ptr %.sroa.028.0.ptr.1, align 8, !tbaa !13
  %i.p = trunc i64 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 2
  store i8 %i.p, ptr %i.m, align 1, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %.sroa.028.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.s = load i64, ptr %.sroa.028.0.ptr.2, align 8, !tbaa !13
  %i.t = trunc i64 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 3
  store i8 %i.t, ptr %i.q, align 1, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %.sroa.028.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.w = load i64, ptr %.sroa.028.0.ptr.3, align 8, !tbaa !13
  %i.x = trunc i64 %i.w to i8
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 4
  store i8 %i.x, ptr %i.u, align 1, !tbaa !27
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %.sroa.028.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.aa = load i64, ptr %.sroa.028.0.ptr.4, align 8, !tbaa !13
  %i.ab = trunc i64 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 5
  store i8 %i.ab, ptr %i.y, align 1, !tbaa !27
  %.sroa.028.0.add.4 = add nuw nsw i64 %.sroa.028.0.idx43, 40 ; 2 uses
  %i.ad = icmp eq i64 %.sroa.028.0.add.4, 800
  br i1 %i.ad, label %.preheader, label %.preheader41

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.h) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 800) #18
  ret void

bb.d:                                             ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %.sroa.0.044 = phi ptr [ %i.h, %.preheader ], [ %i.ae, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 1
  %i.af = load i8, ptr %.sroa.0.044, align 1, !tbaa !27
  %i.ag = zext i8 %i.af to i64                    ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = and i64 %i.ai, 255                      ; 2 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !13
  %i.ak = icmp eq i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.al = load i8, ptr %1, align 8, !tbaa !40, !range !41, !noundef !42
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.q, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

bb.h:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.aq = phi ptr [ %i.ap, %bb.j ], [ @.str.17, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 84, ptr noundef %i.aq)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ar = load ptr, ptr %2, align 8, !tbaa !45    ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i17, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.ar) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit20

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %i.aw, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ay = load ptr, ptr %2, align 8, !tbaa !45    ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i18, label %_ZN7testing7MessageD2Ev.exit20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19: ; preds = %bb.p
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(128) %i.ay) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit20

_ZN7testing7MessageD2Ev.exit20:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #17
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !43  ; 4 uses
  %.not.i.i21 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i21, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !27
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 32) #18
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d, !llvm.loop !85

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24: ; preds = %_ZN7testing7MessageD2Ev.exit20, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit20 ], [ %i.an, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZdaPv(ptr noundef nonnull %i.h) #18
  br label %_ZNSt6vectorImSaImEED2Ev.exit26

_ZNSt6vectorImSaImEED2Ev.exit26:                  ; preds = %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24 ], [ %i.j, %bb.c ]
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 800) #18
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23PQEncoder16_encode_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #17
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23PQEncoder16_encode_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(800) ptr @_Znwm(i64 noundef 800) #19, !noalias !90 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(800) %i.c, i8 0, i64 800, i1 false), !tbaa !13, !noalias !90
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.07.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.b ]  ; 2 uses
  %i.d = tail call i32 @rand() #17, !noalias !90
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.07.i
  store i64 %i.e, ptr %i.f, align 8, !tbaa !13, !noalias !90
  %i.g = add nuw nsw i64 %.07.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.g, 100
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_113random_vectorEm.exit, label %bb.b, !llvm.loop !0

_ZN12_GLOBAL__N_113random_vectorEm.exit:          ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znam(i64 noundef 200) #19
          to label %.preheader41 unwind label %bb.c ; 4 uses

.preheader:                                       ; preds = %.preheader41
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZN12_GLOBAL__N_113random_vectorEm.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit26

.preheader41:                                     ; preds = %_ZN12_GLOBAL__N_113random_vectorEm.exit, %.preheader41
  %.sroa.028.0.idx43 = phi i64 [ %.sroa.028.0.add.4, %.preheader41 ], [ 0, %_ZN12_GLOBAL__N_113random_vectorEm.exit ] ; 6 uses
  %.sroa.031.042 = phi ptr [ %i.ac, %.preheader41 ], [ %i.h, %_ZN12_GLOBAL__N_113random_vectorEm.exit ] ; 6 uses
  %.sroa.028.0.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %i.k = load i64, ptr %.sroa.028.0.ptr, align 8, !tbaa !13
  %i.l = trunc i64 %i.k to i16
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 2
  store i16 %i.l, ptr %.sroa.031.042, align 2, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %.sroa.028.0.ptr.1 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.o = load i64, ptr %.sroa.028.0.ptr.1, align 8, !tbaa !13
  %i.p = trunc i64 %i.o to i16
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 4
  store i16 %i.p, ptr %i.m, align 2, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %.sroa.028.0.ptr.2 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.s = load i64, ptr %.sroa.028.0.ptr.2, align 8, !tbaa !13
  %i.t = trunc i64 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 6
  store i16 %i.t, ptr %i.q, align 2, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %.sroa.028.0.ptr.3 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.w = load i64, ptr %.sroa.028.0.ptr.3, align 8, !tbaa !13
  %i.x = trunc i64 %i.w to i16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 8
  store i16 %i.x, ptr %i.u, align 2, !tbaa !92
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.028.0.idx43
  %.sroa.028.0.ptr.4 = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.aa = load i64, ptr %.sroa.028.0.ptr.4, align 8, !tbaa !13
  %i.ab = trunc i64 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.042, i64 10
  store i16 %i.ab, ptr %i.y, align 2, !tbaa !92
  %.sroa.028.0.add.4 = add nuw nsw i64 %.sroa.028.0.idx43, 40 ; 2 uses
  %i.ad = icmp eq i64 %.sroa.028.0.add.4, 800
  br i1 %i.ad, label %.preheader, label %.preheader41

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.h) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 800) #18
  ret void

bb.d:                                             ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  %.sroa.0.044 = phi ptr [ %i.h, %.preheader ], [ %i.ae, %_ZN7testing15AssertionResultD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.044, i64 2
  %i.af = load i16, ptr %.sroa.0.044, align 2, !tbaa !92
  %i.ag = zext i16 %i.af to i64                   ; 2 uses
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = and i64 %i.ai, 65535                    ; 2 uses
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !13
  %i.ak = icmp eq i64 %i.aj, %i.ag
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.al = load i8, ptr %1, align 8, !tbaa !40, !range !41, !noundef !42
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.q, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

bb.h:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !43  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !31
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.aq = phi ptr [ %i.ap, %bb.j ], [ @.str.17, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 102, ptr noundef %i.aq)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ar = load ptr, ptr %2, align 8, !tbaa !45    ; 3 uses
  %.not.i.i17 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i17, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(128) %i.ar) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit20

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #17
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ax, %bb.o ], [ %i.aw, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ay = load ptr, ptr %2, align 8, !tbaa !45    ; 3 uses
  %.not.i.i18 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i18, label %_ZN7testing7MessageD2Ev.exit20, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19: ; preds = %bb.p
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(128) %i.ay) #17, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit20

_ZN7testing7MessageD2Ev.exit20:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #17
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit24

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !43  ; 4 uses
  %.not.i.i21 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i21, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !31 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !27
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 32) #18
end_hunk_1
