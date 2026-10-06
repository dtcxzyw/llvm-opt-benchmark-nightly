Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_common_ivf_empty_index?download=true
inline.NumInlined: 806
inline.NumDeleted: 500
begin_hunk_0
%"class.testing::internal::GTestLog" = type { i32 }
%"struct.faiss::SearchParametersIVF" = type { %"struct.faiss::SearchParameters", i64, i64, i64, i8, i64, ptr, ptr }
%"struct.faiss::SearchParameters" = type { ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"struct.testing::internal::CodeLocation" = type <{ %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZN37COMMON_test_common_trained_index_TestD0Ev = comdat any

$_ZN7testing4Test5SetupEv = comdat any

$__clang_call_terminate = comdat any

$_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci = comdat any

$_ZN7testing8internal15TestFactoryBaseD2Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestED0Ev = comdat any

$_ZN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestE10CreateTestEv = comdat any

$_ZNSt6vectorIlSaIlEEaSERKS1_ = comdat any

$_ZN5faiss16SearchParametersD2Ev = comdat any

$_ZN7testing15AssertionResultD2Ev = comdat any

$_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZSt16__do_uninit_copyIPKN5faiss18ArrayInvertedListsEPS1_ET0_T_S6_S5_ = comdat any

$_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EEC2ERKS4_ = comdat any

$_ZNSt6vectorIN5faiss16MaybeOwnedVectorIlEESaIS2_EEC2ERKS4_ = comdat any

$_ZNSt6vectorIN5faiss16MaybeOwnedVectorIhEESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIhEEEvT_S4_ = comdat any

$_ZN5faiss16MaybeOwnedVectorIhEC2ERKS1_ = comdat any

$_ZNSt6vectorIhSaIhEEaSERKS1_ = comdat any

$_ZNSt12__shared_ptrIN5faiss21MaybeOwnedVectorOwnerELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZSt8_DestroyIPN5faiss16MaybeOwnedVectorIlEEEvT_S4_ = comdat any

$_ZN5faiss16MaybeOwnedVectorIlEC2ERKS1_ = comdat any

$_ZN24DispatchingInvertedListsD0Ev = comdat any

$_ZNK24DispatchingInvertedLists9list_sizeEm = comdat any

$_ZNK24DispatchingInvertedLists9get_codesEm = comdat any

$_ZNK24DispatchingInvertedLists7get_idsEm = comdat any

$_ZNK24DispatchingInvertedLists12get_iteratorEmPv = comdat any

$_ZN5faiss14FaissExceptionD2Ev = comdat any

$_ZN5faiss19SearchParametersIVFD0Ev = comdat any

$_ZN7testing8internal18CmpHelperEQFailureISt6vectorIlSaIlEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_ = comdat any

$_ZN7testing13PrintToStringISt6vectorIlSaIlEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_ = comdat any

$_ZN7testing8internal16ContainerPrinter10PrintValueISt6vectorIlSaIlEEvEEvRKT_PSo = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZTVN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE = comdat any

$_ZTSN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE = comdat any

$_ZTIN7testing8internal15TestFactoryBaseE = comdat any

$_ZTSN7testing8internal15TestFactoryBaseE = comdat any

$_ZTV24DispatchingInvertedLists = comdat any

$_ZTI24DispatchingInvertedLists = comdat any

$_ZTS24DispatchingInvertedLists = comdat any

$_ZTVN5faiss19SearchParametersIVFE = comdat any

$_ZTIN5faiss19SearchParametersIVFE = comdat any

$_ZTSN5faiss19SearchParametersIVFE = comdat any

$_ZTIN5faiss16SearchParametersE = comdat any

$_ZTSN5faiss16SearchParametersE = comdat any

@_ZTV37COMMON_test_common_trained_index_Test = dso_local constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI37COMMON_test_common_trained_index_Test, ptr @_ZN7testing4TestD2Ev, ptr @_ZN37COMMON_test_common_trained_index_TestD0Ev, ptr @_ZN7testing4Test5SetUpEv, ptr @_ZN7testing4Test8TearDownEv, ptr @_ZN37COMMON_test_common_trained_index_Test8TestBodyEv, ptr @_ZN7testing4Test5SetupEv] }, align 8
@_ZTI37COMMON_test_common_trained_index_Test = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS37COMMON_test_common_trained_index_Test, ptr @_ZTIN7testing4TestE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS37COMMON_test_common_trained_index_Test = dso_local constant [40 x i8] c"37COMMON_test_common_trained_index_Test\00", align 1
@_ZTIN7testing4TestE = external constant ptr
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZN37COMMON_test_common_trained_index_Test10test_info_E = dso_local global ptr null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"COMMON\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"test_common_trained_index\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"/opt-bench/work/faiss/faiss/tests/test_common_ivf_empty_index.cpp\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.6 = private unnamed_addr constant [106 x i8] c"/opt-bench/work/faiss/faiss/build/_deps/googletest-src/googletest/include/gtest/internal/gtest-internal.h\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Condition !test_case_fp || !test_suite_fp failed. \00", align 1
@.str.8 = private unnamed_addr constant [107 x i8] c"Test can not provide both SetUpTestSuite and SetUpTestCase, please make sure there is only one present at \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str.10 = private unnamed_addr constant [112 x i8] c"Test can not provide both TearDownTestSuite and TearDownTestCase, please make sure there is only one present at\00", align 1
@_ZTVN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE, ptr @_ZN7testing8internal15TestFactoryBaseD2Ev, ptr @_ZN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestED0Ev, ptr @_ZN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestE10CreateTestEv] }, comdat, align 8
@_ZTIN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE, ptr @_ZTIN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTSN7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE = linkonce_odr dso_local constant [78 x i8] c"N7testing8internal15TestFactoryImplI37COMMON_test_common_trained_index_TestEE\00", comdat, align 1
@_ZTIN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN7testing8internal15TestFactoryBaseE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN7testing8internal15TestFactoryBaseE = linkonce_odr dso_local constant [37 x i8] c"N7testing8internal15TestFactoryBaseE\00", comdat, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"IVF32,PQ8np\00", align 1
@_ZTIN5faiss5IndexE = external constant ptr
@_ZTIN5faiss8IndexIVFE = external constant ptr
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.12 = private unnamed_addr constant [9 x i8] c"ref_I[i]\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"new_I[i]\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN5faiss18ArrayInvertedListsE = external constant { [20 x ptr] }, align 8
@_ZTVN5faiss13InvertedListsE = external constant { [20 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTV24DispatchingInvertedLists = linkonce_odr dso_local constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI24DispatchingInvertedLists, ptr @_ZN5faiss13InvertedListsD2Ev, ptr @_ZN24DispatchingInvertedListsD0Ev, ptr @_ZNK24DispatchingInvertedLists9list_sizeEm, ptr @_ZNK24DispatchingInvertedLists9get_codesEm, ptr @_ZNK24DispatchingInvertedLists7get_idsEm, ptr @_ZNK5faiss13InvertedLists13release_codesEmPKh, ptr @_ZNK5faiss13InvertedLists11release_idsEmPKl, ptr @_ZNK5faiss13InvertedLists13get_single_idEmm, ptr @_ZNK5faiss13InvertedLists15get_single_codeEmm, ptr @_ZNK5faiss13InvertedLists14prefetch_listsEPKli, ptr @_ZNK5faiss13InvertedLists8is_emptyEmPv, ptr @_ZNK24DispatchingInvertedLists12get_iteratorEmPv, ptr @_ZN5faiss13InvertedLists9add_entryEmlPKhPv, ptr @_ZN5faiss21ReadOnlyInvertedLists11add_entriesEmmPKlPKh, ptr @_ZN5faiss13InvertedLists12update_entryEmmlPKh, ptr @_ZN5faiss21ReadOnlyInvertedLists14update_entriesEmmmPKlPKh, ptr @_ZN5faiss21ReadOnlyInvertedLists6resizeEmm, ptr @_ZN5faiss13InvertedLists5resetEv] }, comdat, align 8
@_ZTI24DispatchingInvertedLists = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24DispatchingInvertedLists, ptr @_ZTIN5faiss21ReadOnlyInvertedListsE }, comdat, align 8
@_ZTS24DispatchingInvertedLists = linkonce_odr dso_local constant [27 x i8] c"24DispatchingInvertedLists\00", comdat, align 1
@_ZTIN5faiss21ReadOnlyInvertedListsE = external constant ptr
@.str.15 = private unnamed_addr constant [23 x i8] c"use iterator interface\00", align 1
@__PRETTY_FUNCTION__._ZNK24DispatchingInvertedLists9list_sizeEm = private unnamed_addr constant [65 x i8] c"virtual size_t DispatchingInvertedLists::list_size(size_t) const\00", align 1
@_ZTIN5faiss14FaissExceptionE = external constant ptr
@_ZTVN5faiss14FaissExceptionE = external constant { [5 x ptr] }, align 8
@__PRETTY_FUNCTION__._ZNK24DispatchingInvertedLists9get_codesEm = private unnamed_addr constant [73 x i8] c"virtual const uint8_t *DispatchingInvertedLists::get_codes(size_t) const\00", align 1
@__PRETTY_FUNCTION__._ZNK24DispatchingInvertedLists7get_idsEm = private unnamed_addr constant [69 x i8] c"virtual const idx_t *DispatchingInvertedLists::get_ids(size_t) const\00", align 1
@_ZTVN5faiss19SearchParametersIVFE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5faiss19SearchParametersIVFE, ptr @_ZN5faiss16SearchParametersD2Ev, ptr @_ZN5faiss19SearchParametersIVFD0Ev] }, comdat, align 8
@_ZTIN5faiss19SearchParametersIVFE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5faiss19SearchParametersIVFE, ptr @_ZTIN5faiss16SearchParametersE }, comdat, align 8
@_ZTSN5faiss19SearchParametersIVFE = linkonce_odr dso_local constant [30 x i8] c"N5faiss19SearchParametersIVFE\00", comdat, align 1
@_ZTIN5faiss16SearchParametersE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5faiss16SearchParametersE }, comdat, align 8
@_ZTSN5faiss16SearchParametersE = linkonce_odr dso_local constant [27 x i8] c"N5faiss16SearchParametersE\00", comdat, align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.16 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_test_common_ivf_empty_index.cpp, ptr null }]

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37COMMON_test_common_trained_index_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

declare void @_ZN7testing4Test5SetUpEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @_ZN7testing4Test8TearDownEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN37COMMON_test_common_trained_index_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %1 = alloca %"class.std::unique_ptr.6", align 8 ; 16 uses
  %2 = alloca %"class.std::vector.24", align 8    ; 8 uses
  %3 = alloca %"class.std::vector.14", align 8    ; 10 uses
  %4 = alloca %"class.std::vector.37", align 8    ; 15 uses
  %5 = alloca %struct.DispatchingInvertedLists, align 8 ; 9 uses
  %6 = alloca %"class.std::vector.24", align 8    ; 13 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i32 3, ptr %i.a, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i32 10, ptr %i.b, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store i32 4, ptr %i.c, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  %i.d = tail call noundef ptr @_ZN5faiss13index_factoryEiPKcNS_10MetricTypeEb(i32 noundef 64, ptr noundef nonnull @.str.11, i32 noundef 1, i1 noundef zeroext true) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__dynamic_cast(ptr nonnull %i.d, ptr nonnull @_ZTIN5faiss5IndexE, ptr nonnull @_ZTIN5faiss8IndexIVFE, i64 0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  store ptr %i.g, ptr %1, align 8, !tbaa !18
  %i.h = invoke noalias noundef nonnull dereferenceable(128000) ptr @_Znwm(i64 noundef 128000) #26
          to label %.noexc unwind label %bb.h     ; 6 uses

.noexc:                                           ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128000) %i.h, i8 0, i64 128000, i1 false)
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef 500, i64 noundef 64, ptr noundef nonnull %i.h, i64 noundef 123)
          to label %_Z18get_random_vectorsmi.exit unwind label %bb.d, !noalias !115

bb.d:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 128000) #25, !noalias !115
  br label %.body

_Z18get_random_vectorsmi.exit:                    ; preds = %.noexc
  %i.j = load ptr, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(273) %i.j, i64 noundef 500, ptr noundef nonnull %i.h)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_Z18get_random_vectorsmi.exit
  %i.n = load ptr, ptr %1, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store i64 4, ptr %i.o, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.p = load i32, ptr %i.a, align 4, !tbaa !15   ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc71 unwind label %bb.j

.noexc71:                                         ; preds = %bb.f
  unreachable

_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.e
  %.not.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge.thread

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.s = mul nuw nsw i64 %i.q, 24                 ; 3 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #26
          to label %bb.g unwind label %bb.j       ; 8 uses

bb.g:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.t, ptr %2, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.t, i64 %i.s ; 4 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !15
  %i.v = icmp sgt i32 %.pre, 0
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.u, ptr %i.x, align 8, !tbaa !34
  store ptr %scevgep.i.i.i.i.i, ptr %i.w, align 8, !tbaa !35
  br i1 %i.v, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.k

._crit_edge.thread:                               ; preds = %bb.g, %.thread
  %.ph = phi ptr [ null, %.thread ], [ %scevgep.i.i.i.i.i, %bb.g ]
  %.ph389 = phi ptr [ null, %.thread ], [ %i.u, %bb.g ]
  %.pr.i161388.ph = phi ptr [ null, %.thread ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %._crit_edge278

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %i.aa = icmp sgt i32 %i.cv, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %i.aa, label %.lr.ph277, label %._crit_edge278

.lr.ph277:                                        ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.ag

bb.h:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_Z18get_random_vectorsmi.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit169

bb.j:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.k:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !18
  %i.ah = invoke noundef ptr @_ZN5faiss11clone_indexEPKNS_5IndexE(ptr noundef %i.ag)
          to label %bb.l unwind label %bb.z       ; 9 uses

bb.l:                                             ; preds = %bb.k
  %i.ai = invoke noalias noundef nonnull dereferenceable(51200) ptr @_Znwm(i64 noundef 51200) #26
          to label %.noexc74 unwind label %bb.aa  ; 6 uses

.noexc74:                                         ; preds = %bb.l
  %i.aj = add nuw nsw i64 %indvars.iv, 1234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(51200) %i.ai, i8 0, i64 51200, i1 false)
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef 200, i64 noundef 64, ptr noundef nonnull %i.ai, i64 noundef %i.aj)
          to label %_Z18get_random_vectorsmi.exit77 unwind label %bb.m, !noalias !116

bb.m:                                             ; preds = %.noexc74
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 51200) #25, !noalias !116
  br label %.body75

_Z18get_random_vectorsmi.exit77:                  ; preds = %.noexc74
  %i.al = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 3 uses
  %i.an = add nuw nsw i64 %indvars.iv, 12345
  %i.ao = shl nsw i64 %i.am, 6                    ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, 2305843009213693951
  br i1 %i.ap, label %.noexc.i, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_Z18get_random_vectorsmi.exit77
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc79 unwind label %.loopexit.split-lp

.noexc79:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_Z18get_random_vectorsmi.exit77
  %.not.i.i.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i, label %.noexc8.i

.noexc8.i:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.aq = shl nuw nsw i64 %i.am, 8                ; 2 uses
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26
          to label %.noexc80 unwind label %.loopexit206 ; 4 uses

.noexc80:                                         ; preds = %.noexc8.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ao
  store float 0.000000e+00, ptr %i.ar, align 4, !tbaa !37, !noalias !117
  %i.at = getelementptr i8, ptr %i.ar, i64 4
  %.idx.i.i.i.i.i.i.i.i = add nsw i64 %i.aq, -4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.at, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !37, !noalias !117
  %i.au = ptrtoint ptr %i.as to i64
  br label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc80
  %.sroa.0183.0 = phi ptr [ %i.ar, %.noexc80 ], [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 11 uses
  %.sroa.9187.0 = phi i64 [ %i.au, %.noexc80 ], [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 3 uses
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef %i.am, i64 noundef 64, ptr noundef %.sroa.0183.0, i64 noundef %i.an)
          to label %_Z18get_random_vectorsmi.exit83 unwind label %bb.n, !noalias !117

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not.i.i.i.i78, label %_ZNSt6vectorIfSaIfEED2Ev.exit104, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = ptrtoint ptr %.sroa.0183.0 to i64
  %i.ax = sub i64 %.sroa.9187.0, %i.aw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0, i64 noundef %i.ax) #25, !noalias !117
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit104

_Z18get_random_vectorsmi.exit83:                  ; preds = %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i.i
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZN37COMMON_test_common_trained_index_Test8TestBodyEv:bb.a
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit98

.loopexit.split-lp213:                            ; preds = %bb.s
  %lpad.loopexit.split-lp215 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit98

bb.ac:                                            ; preds = %bb.u, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dc = load ptr, ptr %3, align 8, !tbaa !40    ; 3 uses
  %.not.i.i.i97 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIlSaIlEED2Ev.exit98, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = ptrtoint ptr %i.dc to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dg) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit98

_ZNSt6vectorIlSaIlEED2Ev.exit98:                  ; preds = %.loopexit212, %.loopexit.split-lp213, %bb.ad, %bb.ac
  %.pn60 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %i.db, %bb.ac ], [ %lpad.loopexit214, %.loopexit212 ], [ %lpad.loopexit.split-lp215, %.loopexit.split-lp213 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  %.not.i.i.i99 = icmp eq ptr %.sroa.0179.0, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorIfSaIfEED2Ev.exit100, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit98
  %i.dh = ptrtoint ptr %.sroa.10.0 to i64
  %i.di = ptrtoint ptr %.sroa.0179.0 to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0179.0, i64 noundef %i.dj) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit100

_ZNSt6vectorIfSaIfEED2Ev.exit100:                 ; preds = %.loopexit207, %.loopexit.split-lp208, %_ZNSt6vectorIlSaIlEED2Ev.exit98, %bb.ae, %bb.ab
  %.pn60.pn.pn = phi { ptr, i32 } [ %i.da, %bb.ab ], [ %.pn60, %bb.ae ], [ %.pn60, %_ZNSt6vectorIlSaIlEED2Ev.exit98 ], [ %lpad.loopexit209, %.loopexit207 ], [ %lpad.loopexit.split-lp210, %.loopexit.split-lp208 ] ; 2 uses
  %.not.i.i.i101 = icmp eq ptr %.sroa.0183.0, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIfSaIfEED2Ev.exit104, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit100
  %i.dk = ptrtoint ptr %.sroa.0183.0 to i64
  %i.dl = sub i64 %.sroa.9187.0, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0, i64 noundef %i.dl) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit104

_ZNSt6vectorIfSaIfEED2Ev.exit104:                 ; preds = %.loopexit206, %.loopexit.split-lp, %bb.af, %_ZNSt6vectorIfSaIfEED2Ev.exit100, %bb.o, %bb.n
  %.pn60.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.n ], [ %.pn60.pn.pn, %bb.af ], [ %i.av, %bb.o ], [ %.pn60.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit100 ], [ %lpad.loopexit, %.loopexit206 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 51200) #25
  br label %.body75

.body75:                                          ; preds = %bb.aa, %bb.m, %_ZNSt6vectorIfSaIfEED2Ev.exit104
  %.pn60.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn60.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit104 ], [ %i.cz, %bb.aa ], [ %i.ak, %bb.m ] ; 2 uses
  %.not.i105 = icmp eq ptr %i.ah, null
  br i1 %.not.i105, label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit107, label %_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i106

_ZNKSt14default_deleteIN5faiss5IndexEEclEPS1_.exit.i106: ; preds = %.body75
  %i.dm = load ptr, ptr %i.ah, align 8, !tbaa !20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(36) %i.ah) #14, !inline_history !102
  br label %_ZNSt10unique_ptrIN5faiss5IndexESt14default_deleteIS1_EED2Ev.exit107

._crit_edge278:                                   ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit122, %._crit_edge.thread, %._crit_edge
  %.pr.i161388391 = phi ptr [ %.pr.i161388.ph, %._crit_edge.thread ], [ %i.t, %._crit_edge ], [ %i.t, %_ZNSt6vectorIfSaIfEED2Ev.exit122 ] ; 6 uses
  %i.dp = phi ptr [ %.ph389, %._crit_edge.thread ], [ %i.u, %._crit_edge ], [ %i.u, %_ZNSt6vectorIfSaIfEED2Ev.exit122 ]
  %i.dq = phi ptr [ %.ph, %._crit_edge.thread ], [ %scevgep.i.i.i.i.i, %._crit_edge ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit122 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.dr = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !118
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 168
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !132
  invoke void @_ZN5faiss13InvertedListsC2Emm(ptr noundef nonnull align 8 dereferenceable(25) %5, i64 noundef %i.dt, i64 noundef %i.dv)
          to label %bb.ap unwind label %bb.at

bb.ag:                                            ; preds = %.lr.ph277, %_ZNSt6vectorIfSaIfEED2Ev.exit122
  %indvars.iv342 = phi i64 [ 0, %.lr.ph277 ], [ %indvars.iv.next343, %_ZNSt6vectorIfSaIfEED2Ev.exit122 ] ; 2 uses
  %i.dw = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 56 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 168 ; 2 uses
  %i.dz = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 3 uses
  %i.ea = load ptr, ptr %i.ac, align 8, !tbaa !51
  %.not.i109 = icmp eq ptr %i.dz, %i.ea
  br i1 %.not.i109, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eb = load i64, ptr %i.dx, align 8, !tbaa !42
  %i.ec = load i64, ptr %i.dy, align 8, !tbaa !42
  invoke void @_ZN5faiss18ArrayInvertedListsC1Emm(ptr noundef nonnull align 8 dereferenceable(80) %i.dz, i64 noundef %i.eb, i64 noundef %i.ec)
          to label %.noexc110 unwind label %bb.am

.noexc110:                                        ; preds = %bb.ah
  %i.ed = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 80 ; 2 uses
  store ptr %i.ee, ptr %i.ab, align 8, !tbaa !50
  br label %_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit

bb.ai:                                            ; preds = %bb.ag
  invoke void @_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE17_M_realloc_insertIJRmS5_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.dy)
          to label %._ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit_crit_edge unwind label %bb.am

._ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit_crit_edge: ; preds = %bb.ai
  %.pre348 = load ptr, ptr %i.ab, align 8, !tbaa !133
  br label %_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit

_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit: ; preds = %._ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit_crit_edge, %.noexc110
  %i.ef = phi ptr [ %.pre348, %._ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit_crit_edge ], [ %i.ee, %.noexc110 ]
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -80
  %i.eh = load ptr, ptr %1, align 8, !tbaa !18
  invoke void @_ZN5faiss8IndexIVF16replace_invlistsEPNS_13InvertedListsEb(ptr noundef nonnull align 8 dereferenceable(273) %i.eh, ptr noundef nonnull %i.eg, i1 noundef zeroext false)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit
  %i.ei = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 112
  %i.el = load ptr, ptr %i.ek, align 8
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(273) %i.ei)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.em = invoke noalias noundef nonnull dereferenceable(51200) ptr @_Znwm(i64 noundef 51200) #26
          to label %.noexc117 unwind label %bb.ao ; 6 uses

.noexc117:                                        ; preds = %bb.ak
  %i.en = add nuw nsw i64 %indvars.iv342, 1234
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(51200) %i.em, i8 0, i64 51200, i1 false)
  invoke void @_ZN5faiss19rand_smooth_vectorsEmmPfl(i64 noundef 200, i64 noundef 64, ptr noundef nonnull %i.em, i64 noundef %i.en)
          to label %_Z18get_random_vectorsmi.exit120 unwind label %bb.al, !noalias !134

bb.al:                                            ; preds = %.noexc117
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 51200) #25, !noalias !134
  br label %.body118

_Z18get_random_vectorsmi.exit120:                 ; preds = %.noexc117
  %i.ep = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(273) %i.ep, i64 noundef 200, ptr noundef nonnull %i.em)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit122 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit124

_ZNSt6vectorIfSaIfEED2Ev.exit122:                 ; preds = %_Z18get_random_vectorsmi.exit120
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 51200) #25
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %i.et = load i32, ptr %i.a, align 4, !tbaa !15
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next343, %i.eu
  br i1 %i.ev, label %bb.ag, label %._crit_edge278, !llvm.loop !106

bb.am:                                            ; preds = %bb.ai, %bb.ah
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body118

bb.an:                                            ; preds = %bb.aj, %_ZNSt6vectorIN5faiss18ArrayInvertedListsESaIS1_EE12emplace_backIJRmS5_EEERS1_DpOT_.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %.body118

bb.ao:                                            ; preds = %bb.ak
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.body118

_ZNSt6vectorIfSaIfEED2Ev.exit124:                 ; preds = %_Z18get_random_vectorsmi.exit120
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 51200) #25
  br label %.body118

bb.ap:                                            ; preds = %._crit_edge278
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV24DispatchingInvertedLists, i64 16), ptr %5, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 1, ptr %i.fa, align 8, !tbaa !136
  %i.fb = load ptr, ptr %1, align 8, !tbaa !18
  invoke void @_ZN5faiss8IndexIVF16replace_invlistsEPNS_13InvertedListsEb(ptr noundef nonnull align 8 dereferenceable(273) %i.fb, ptr noundef nonnull %5, i1 noundef zeroext false)
          to label %bb.aq unwind label %bb.au

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.fc = load i32, ptr %i.a, align 4, !tbaa !15  ; 3 uses
  %i.fd = sext i32 %i.fc to i64                   ; 2 uses
  %i.fe = icmp slt i32 %i.fc, 0
  br i1 %i.fe, label %bb.ar, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i125

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
          to label %.noexc132 unwind label %bb.av

.noexc132:                                        ; preds = %bb.ar
  unreachable

_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i125: ; preds = %bb.aq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %.not.i.i.i.i126 = icmp eq i32 %i.fc, 0
  br i1 %.not.i.i.i.i126, label %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131, label %.lr.ph.preheader.i.i.i.i.i127

_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131: ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i125
  store i64 0, ptr %6, align 8
  br label %bb.as

.lr.ph.preheader.i.i.i.i.i127:                    ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i125
  %i.ff = mul nuw nsw i64 %i.fd, 24               ; 3 uses
  %i.fg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ff) #26
          to label %.noexc133 unwind label %bb.av ; 4 uses

.noexc133:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i127
  store ptr %i.fg, ptr %6, align 8, !tbaa !33
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %i.fd
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fg, i8 0, i64 %i.ff, i1 false)
  %scevgep.i.i.i.i.i128 = getelementptr i8, ptr %i.fg, i64 %i.ff
  br label %bb.as

bb.as:                                            ; preds = %.noexc133, %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131
  %.sink.i129 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131 ], [ %i.fh, %.noexc133 ]
  %.0.lcssa.i.i.i.i.i130 = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EEC2EmRKS3_.exit.thread.i131 ], [ %scevgep.i.i.i.i.i128, %.noexc133 ]
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr %.sink.i129, ptr %i.fj, align 8, !tbaa !34
  store ptr %.0.lcssa.i.i.i.i.i130, ptr %i.fi, align 8, !tbaa !35
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN37COMMON_test_common_trained_index_Test8TestBodyEv.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %1, ptr nonnull %4, ptr nonnull %6)
  %i.fk = load i32, ptr %i.a, align 4, !tbaa !15
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph281, label %.loopexit

.lr.ph281:                                        ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.aw

bb.at:                                            ; preds = %._crit_edge278
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.au:                                            ; preds = %bb.ap
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.av:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i127, %bb.ar
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.aw:                                            ; preds = %.lr.ph281, %bb.bk
  %indvars.iv345 = phi i64 [ 0, %.lr.ph281 ], [ %indvars.iv.next346, %bb.bk ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %.pr.i161388391, i64 %indvars.iv345 ; 3 uses
  %i.fr = load ptr, ptr %6, align 8, !tbaa !33
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %indvars.iv345 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !43, !noalias !137 ; 2 uses
  %i.fv = load ptr, ptr %i.fq, align 8, !tbaa !40, !noalias !137 ; 3 uses
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !43, !noalias !137
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !40, !noalias !137 ; 2 uses
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp eq i64 %i.fy, %i.ge
  br i1 %i.gf, label %bb.ax, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i

bb.ax:                                            ; preds = %bb.aw
  %.not.not.i.i.i.i.i.i.i = icmp eq ptr %i.fu, %i.fv
  br i1 %.not.not.i.i.i.i.i.i.i, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i:    ; preds = %bb.ax
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.fv, ptr %i.gb, i64 %i.fy), !noalias !137
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, label %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %bb.ax
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.ay

_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.i.i, %bb.aw
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt6vectorIlSaIlEES4_EENS_15AssertionResultEPKcS7_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit unwind label %bb.ay

_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit: ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i
  %i.gg = load i8, ptr %7, align 8, !tbaa !145, !range !53, !noundef !54
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %.critedge, label %bb.az

bb.ay:                                            ; preds = %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread6.i.i, %_ZSteqIlSaIlEEbRKSt6vectorIT_T0_ES6_.exit.thread.i.i
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.az:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.gj = load ptr, ptr %i.fm, align 8, !tbaa !55 ; 2 uses
  %.not.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !59
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.bb, %bb.ba
  %i.gl = phi ptr [ %i.gk, %bb.bb ], [ @.str.20, %bb.ba ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 147, ptr noundef %i.gl)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.gm = load ptr, ptr %8, align 8, !tbaa !147   ; 3 uses
  %.not.i.i137 = icmp eq ptr %i.gm, null
  br i1 %.not.i.i137, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.bd
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !20
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8
  call void %i.gp(ptr noundef nonnull align 8 dereferenceable(128) %i.gm) #14, !inline_history !111
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.bd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.gq = load ptr, ptr %i.fm, align 8, !tbaa !55 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.gq, null
  br i1 %.not.i.i138, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !59 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gr, %i.gs
  br i1 %i.gt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.be
  %i.gu = load i64, ptr %i.gs, align 8, !tbaa !60
  %i.gv = add i64 %i.gu, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gv) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef 32) #25
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %.loopexit

bb.bf:                                            ; preds = %bb.az
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit141

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bc
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #14
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.gy, %bb.bh ], [ %i.gx, %bb.bg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.gz = load ptr, ptr %8, align 8, !tbaa !147   ; 3 uses
  %.not.i.i139 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i139, label %_ZN7testing7MessageD2Ev.exit141, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.bi
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !20
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(128) %i.gz) #14, !inline_history !111
  br label %_ZN7testing7MessageD2Ev.exit141

_ZN7testing7MessageD2Ev.exit141:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %bb.bi, %bb.bf
  %.pn.pn = phi { ptr, i32 } [ %i.gw, %bb.bf ], [ %.pn, %bb.bi ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #14
  br label %bb.bl

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareISt6vectorIlSaIlEES5_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit
  %i.hd = load ptr, ptr %i.fm, align 8, !tbaa !55 ; 4 uses
  %.not.i.i142 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i142, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.critedge
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !59 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 16 ; 2 uses
  %i.hg = icmp eq ptr %i.he, %i.hf
  br i1 %i.hg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143: ; preds = %bb.bj
  %i.hh = load i64, ptr %i.hf, align 8, !tbaa !60
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hi) #25
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i143
  call void @_ZdlPvm(ptr noundef nonnull %i.hd, i64 noundef 32) #25
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
end_hunk_1
