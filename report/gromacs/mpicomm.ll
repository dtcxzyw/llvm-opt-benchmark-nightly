Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/mpicomm?download=true
inline.NumInlined: 442
inline.NumDeleted: 261
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::InvalidInputError" = type { %"class.gmx::UserInputError" }
%"class.gmx::UserInputError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr.5" = type { %"struct.std::__uniq_ptr_data.6" }
%"struct.std::__uniq_ptr_data.6" = type { %"class.std::__uniq_ptr_impl.7" }
%"class.std::__uniq_ptr_impl.7" = type { %"class.std::tuple.8" }
%"class.std::tuple.8" = type { %"struct.std::_Tuple_impl.9" }
%"struct.std::_Tuple_impl.9" = type { %"struct.std::_Head_base.12" }
%"struct.std::_Head_base.12" = type { ptr }
%"struct.std::type_index" = type { ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.std::vector.23" = type { %"struct.std::_Vector_base.24" }
%"struct.std::_Vector_base.24" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::basic_string_view" = type { i64, ptr }

$_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2EPKc = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNK3gmx7MpiComm18sumReduceTemplatedIiEEvmPT_ = comdat any

$_ZNK3gmx7MpiComm18sumReduceTemplatedIfEEvmPT_ = comdat any

$_ZNK3gmx7MpiComm18sumReduceTemplatedIdEEvmPT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7reserveEm = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKSt17basic_string_viewIcS3_EEEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJPcEEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJPcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@.str = private unnamed_addr constant [67 x i8] c"MpiComm(MPI_Comm) can not be called with MPI_COMM_NULL as argument\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx7MpiCommC2EP10tmpi_comm_ = private unnamed_addr constant [32 x i8] c"gmx::MpiComm::MpiComm(MPI_Comm)\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/utility/mpicomm.cpp\00", align 1
@_ZTIN3gmx17InvalidInputErrorE = external constant ptr
@.str.2 = private unnamed_addr constant [43 x i8] c"Expect a communicator with at least 1 rank\00", align 1
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx17InvalidInputErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@TMPI_INT = external local_unnamed_addr constant ptr, align 8
@TMPI_FLOAT = external local_unnamed_addr constant ptr, align 8
@TMPI_DOUBLE = external local_unnamed_addr constant ptr, align 8
@.str.4 = private unnamed_addr constant [62 x i8] c"Only rank withs rank 0 in commIntra should have commInter set\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx7MpiComm19HierarchicalReducerC2EP10tmpi_comm_S3_i = private unnamed_addr constant [86 x i8] c"gmx::MpiComm::HierarchicalReducer::HierarchicalReducer(MPI_Comm, MPI_Comm, const int)\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"numRanks does not match the size of commInter\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"GMX_NO_NODECOMM\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Using two-step summing over %d groups of on average %.1f ranks\00", align 1
@TMPI_CHAR = external local_unnamed_addr constant ptr, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c"size_ > 1\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"I'm alone but not the main rank\00", align 1
@"__PRETTY_FUNCTION__._ZZNK3gmx7MpiComm14collectStringsB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEENK3$_0clEv" = private unnamed_addr constant [88 x i8] c"auto gmx::MpiComm::collectStrings(const std::string_view)::(lambda)::operator()() const\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"stringLengths[0] == myStringLength\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Error in MPI_Gather\00", align 1

@_ZN3gmx7MpiCommC1EP10tmpi_comm_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx7MpiCommC2EP10tmpi_comm_
@_ZN3gmx7MpiCommC1ENS0_10SingleRankE = unnamed_addr alias void (ptr), ptr @_ZN3gmx7MpiCommC2ENS0_10SingleRankE
@_ZN3gmx7MpiCommC1ERKS0_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx7MpiCommC2ERKS0_
@_ZN3gmx7MpiCommD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx7MpiCommD2Ev
@_ZN3gmx7MpiComm19HierarchicalReducerC1EP10tmpi_comm_S3_i = unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN3gmx7MpiComm19HierarchicalReducerC2EP10tmpi_comm_S3_i
@_ZN3gmx7MpiComm19HierarchicalReducerC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN3gmx7MpiComm19HierarchicalReducerC2ERKS1_
@_ZN3gmx7MpiComm19HierarchicalReducerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx7MpiComm19HierarchicalReducerD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx7MpiCommC2EP10tmpi_comm_(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %3 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %4 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %5 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %6 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %7 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  store ptr %1, ptr %0, align 8, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 1, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !23
  %i.d = invoke noundef zeroext i1 @_Z19gmx_mpi_initializedv()
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %10

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 24) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.f unwind label %.thread34

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %2, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx7MpiCommC2EP10tmpi_comm_, ptr %i.g, align 8, !tbaa !27
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.1, ptr %.sroa.428.0..sroa_idx, align 8, !tbaa !27
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 105, ptr %.sroa.529.0..sroa_idx, align 8, !tbaa !28
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.f, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr %i.f, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #22
          to label %bb.t unwind label %bb.i

bb.h:                                             ; preds = %8, %bb.k, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.thread:                                          ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.thread34:                                        ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #21
  br label %bb.j

bb.i:                                             ; preds = %bb.f, %bb.g
  %.08 = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.08, label %bb.r, label %bb.s

bb.j:                                             ; preds = %.thread, %.thread34
  %.pn22.pn33 = phi { ptr, i32 } [ %i.j, %.thread34 ], [ %i.i, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.r

bb.k:                                             ; preds = %bb.c
  %i.l = invoke noundef i32 @_Z14tMPI_Comm_sizeP10tmpi_comm_Pi(ptr noundef nonnull %1, ptr noundef nonnull %i.a)
          to label %bb.l unwind label %bb.h       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.m = load i32, ptr %i.a, align 8, !tbaa !21
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.m, label %8

bb.m:                                             ; preds = %bb.l
  %i.o = tail call ptr @__cxa_allocate_exception(i64 24) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull @.str.2)
          to label %bb.n unwind label %.thread37

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(56) %6)
          to label %bb.o unwind label %.thread41

bb.o:                                             ; preds = %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %5, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %7, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx7MpiCommC2EP10tmpi_comm_, ptr %i.p, align 8, !tbaa !27
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !27
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 112, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !28
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.o, ptr noundef nonnull align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr %i.o, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #22
          to label %bb.t unwind label %bb.q

.thread37:                                        ; preds = %bb.m
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split46

.thread41:                                        ; preds = %bb.n
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #21
  br label %.sink.split46

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0 = phi i1 [ false, %bb.p ], [ true, %bb.o ]
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #21
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.0, label %bb.r, label %bb.s

.sink.split46:                                    ; preds = %.thread37, %.thread41
  %.pn.pn40.ph = phi { ptr, i32 } [ %i.r, %.thread41 ], [ %i.q, %.thread37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.r

8:                                                ; preds = %bb.l
  %9 = invoke noundef i32 @_Z14tMPI_Comm_rankP10tmpi_comm_Pi(ptr noundef nonnull %1, ptr noundef nonnull %i.b)
          to label %10 unwind label %bb.h         ; 0 uses

10:                                               ; preds = %8, %bb.b
  ret void

bb.r:                                             ; preds = %bb.q, %.sink.split46, %bb.i, %bb.j
  %.sink = phi ptr [ %i.f, %bb.i ], [ %i.f, %bb.j ], [ %i.o, %.sink.split46 ], [ %i.o, %bb.q ]
  %.pn22.pn.pn.ph = phi { ptr, i32 } [ %i.k, %bb.i ], [ %.pn22.pn33, %bb.j ], [ %.pn.pn40.ph, %.sink.split46 ], [ %i.s, %bb.q ]
  call void @__cxa_free_exception(ptr %.sink) #21
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.i, %bb.h
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.s, %bb.q ], [ %i.k, %bb.i ], [ %i.h, %bb.h ], [ %.pn22.pn.pn.ph, %bb.r ]
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !29   ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx7MpiComm19HierarchicalReducerEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx7MpiComm19HierarchicalReducerEEclEPS2_.exit.i: ; preds = %bb.s
  call void @_ZN3gmx7MpiComm19HierarchicalReducerD1Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.t) #21
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 24) #23
  br label %_ZNSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx7MpiComm19HierarchicalReducerESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.s, %_ZNKSt14default_deleteIN3gmx7MpiComm19HierarchicalReducerEEclEPS2_.exit.i
  resume { ptr, i32 } %.pn22.pn.pn

bb.t:                                             ; preds = %bb.p, %bb.g
  unreachable
}

declare noundef zeroext i1 @_Z19gmx_mpi_initializedv() local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InvalidInputError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.5", align 8 ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !55
  store ptr %i.a, ptr %3, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !60
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.d = load ptr, ptr %3, align 8, !tbaa !57     ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #21, !inline_history !54
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.i = load ptr, ptr %3, align 8, !tbaa !57     ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #21, !inline_history !54
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !61
  store ptr null, ptr %i.o, align 8, !tbaa !32
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !61
  store ptr null, ptr %i.n, align 8, !tbaa !64
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %0, align 8, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !34
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !36
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !38
  %i.g = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.g, ptr %i.b, align 8, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !39
  store i8 %i.i, ptr %i.h, align 1, !tbaa !39
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !40
  %i.l = load ptr, ptr %0, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !68
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !65
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !65
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !69

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #21
  ret void
}
end_hunk_0
