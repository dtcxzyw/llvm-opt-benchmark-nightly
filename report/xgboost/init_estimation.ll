Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/init_estimation?download=true
inline.NumInlined: 490
inline.NumDeleted: 283
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"struct.dmlc::LogMessageFatal::Entry" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.xgboost::HostDeviceVector" = type { ptr }
%"class.xgboost::linalg::Tensor.17" = type <{ %"class.xgboost::HostDeviceVector.18", [2 x i64], i8, [7 x i8] }>
%"class.xgboost::HostDeviceVector.18" = type { ptr }
%"class.xgboost::Json" = type { %"class.xgboost::IntrusivePtr" }
%"class.xgboost::IntrusivePtr" = type { ptr }
%"class.xgboost::JsonObject" = type { %"class.xgboost::Value", %"class.std::map" }
%"class.xgboost::Value" = type { ptr, %"class.xgboost::IntrusivePtrCell", i64 }
%"class.xgboost::IntrusivePtrCell" = type { %"struct.std::atomic" }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i32 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, xgboost::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, xgboost::Json>>, std::less<void>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, xgboost::Json>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, xgboost::Json>>, std::less<void>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::unique_ptr.27" = type { %"struct.std::__uniq_ptr_data.28" }
%"struct.std::__uniq_ptr_data.28" = type { %"class.std::__uniq_ptr_impl.29" }
%"class.std::__uniq_ptr_impl.29" = type { %"class.std::tuple.30" }
%"class.std::tuple.30" = type { %"struct.std::_Tuple_impl.31" }
%"struct.std::_Tuple_impl.31" = type { %"struct.std::_Head_base.34" }
%"struct.std::_Head_base.34" = type { ptr }
%"class.dmlc::LogMessageFatal" = type { i8 }
%"struct.dmlc::Error" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.36 }
%union.anon.36 = type { ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%"class.dmlc::DateLogger" = type { [9 x i8] }
%"class.xgboost::JsonString" = type { %"class.xgboost::Value", %"class.std::__cxx11::basic_string" }

$_ZN7xgboost3obj15CheckInitInputsERKNS_8MetaInfoE = comdat any

$_ZN7xgboost10JsonObjectD2Ev = comdat any

$_ZN4dmlc15LogMessageFatalD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev = comdat any

$_ZN7xgboost3obj12FitInterceptD0Ev = comdat any

$_ZNK7xgboost11ObjFunction19DefaultMetricConfigEv = comdat any

$_ZNK7xgboost11ObjFunction13PredTransformEPNS_16HostDeviceVectorIfEE = comdat any

$_ZN7xgboost11ObjFunction13EvalTransformEPNS_16HostDeviceVectorIfEE = comdat any

$_ZNK7xgboost11ObjFunction12ProbToMarginEPNS_6linalg6TensorIfLi1EEE = comdat any

$_ZNK7xgboost11ObjFunction7TargetsERKNS_8MetaInfoE = comdat any

$_ZN7xgboost12ConfigurableD2Ev = comdat any

$_ZN7xgboost3obj19FitInterceptGlmLikeD0Ev = comdat any

$_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZN4dmlc15LogMessageFatal8GetEntryEv = comdat any

$_ZN4dmlc15LogMessageFatal5Entry4InitEPKci = comdat any

$_ZN4dmlc15LogMessageFatal5Entry11ThreadLocalEv = comdat any

$_ZN4dmlc15LogMessageFatal5EntryD2Ev = comdat any

$_ZN4dmlc10StackTraceB5cxx11Emm = comdat any

$_ZN4dmlc15LogMessageFatal5Entry8FinalizeEv = comdat any

$_ZN4dmlc8DemangleB5cxx11EPKc = comdat any

$_ZN4dmlc5ErrorD0Ev = comdat any

$_ZN7xgboost4CastIKNS_10JsonStringENS_5ValueEEEPT_PT0_ = comdat any

$_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_ = comdat any

$_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = comdat any

$_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = comdat any

$_ZTIN4dmlc5ErrorE = comdat any

$_ZTSN4dmlc5ErrorE = comdat any

$_ZTVN4dmlc5ErrorE = comdat any

@.str.1 = private unnamed_addr constant [65 x i8] c"/opt-bench/work/xgboost/xgboost/src/objective/init_estimation.cc\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Check failed: \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"base_score->Size() >= 1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN7xgboost3obj12FitInterceptE = local_unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN7xgboost3obj12FitInterceptE, ptr @_ZN7xgboost12ConfigurableD2Ev, ptr @_ZN7xgboost3obj12FitInterceptD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK7xgboost11ObjFunction19DefaultMetricConfigEv, ptr @_ZNK7xgboost11ObjFunction13PredTransformEPNS_16HostDeviceVectorIfEE, ptr @_ZN7xgboost11ObjFunction13EvalTransformEPNS_16HostDeviceVectorIfEE, ptr @_ZNK7xgboost11ObjFunction12ProbToMarginEPNS_6linalg6TensorIfLi1EEE, ptr @_ZNK7xgboost3obj12FitIntercept14InitEstimationERKNS_8MetaInfoEPNS_6linalg6TensorIfLi1EEE, ptr @__cxa_pure_virtual, ptr @_ZNK7xgboost11ObjFunction7TargetsERKNS_8MetaInfoE] }, align 8
@_ZTIN7xgboost3obj12FitInterceptE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7xgboost3obj12FitInterceptE, ptr @_ZTIN7xgboost11ObjFunctionE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7xgboost3obj12FitInterceptE = constant [29 x i8] c"N7xgboost3obj12FitInterceptE\00", align 1
@_ZTIN7xgboost11ObjFunctionE = external constant ptr
@_ZTVN7xgboost3obj19FitInterceptGlmLikeE = local_unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN7xgboost3obj19FitInterceptGlmLikeE, ptr @_ZN7xgboost12ConfigurableD2Ev, ptr @_ZN7xgboost3obj19FitInterceptGlmLikeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK7xgboost11ObjFunction19DefaultMetricConfigEv, ptr @_ZNK7xgboost11ObjFunction13PredTransformEPNS_16HostDeviceVectorIfEE, ptr @_ZN7xgboost11ObjFunction13EvalTransformEPNS_16HostDeviceVectorIfEE, ptr @_ZNK7xgboost11ObjFunction12ProbToMarginEPNS_6linalg6TensorIfLi1EEE, ptr @_ZNK7xgboost3obj19FitInterceptGlmLike14InitEstimationERKNS_8MetaInfoEPNS_6linalg6TensorIfLi1EEE, ptr @__cxa_pure_virtual, ptr @_ZNK7xgboost11ObjFunction7TargetsERKNS_8MetaInfoE] }, align 8
@_ZTIN7xgboost3obj19FitInterceptGlmLikeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7xgboost3obj19FitInterceptGlmLikeE, ptr @_ZTIN7xgboost3obj12FitInterceptE }, align 8
@_ZTSN7xgboost3obj19FitInterceptGlmLikeE = constant [36 x i8] c"N7xgboost3obj19FitInterceptGlmLikeE\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"/opt-bench/work/xgboost/xgboost/src/objective/init_estimation.h\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"info.labels.Shape(0) == info.num_row_\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Invalid shape of labels.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"info.weights_.Size() == info.num_row_\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"Number of weights should be equal to number of data points.\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" vs. \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c") \00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.14 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@_ZTVN7xgboost10JsonObjectE = external constant { [9 x ptr] }, align 8
@_ZZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = linkonce_odr thread_local global %"struct.dmlc::LogMessageFatal::Entry" zeroinitializer, comdat, align 8
@_ZGVZN4dmlc15LogMessageFatal5Entry11ThreadLocalEvE6result = linkonce_odr thread_local local_unnamed_addr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTIN4dmlc5ErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4dmlc5ErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN4dmlc5ErrorE = linkonce_odr constant [14 x i8] c"N4dmlc5ErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.21 = private unnamed_addr constant [14 x i8] c"Stack trace:\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"  [bt] (\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"_Z\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" +\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"basic_string::basic_string\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"DMLC_LOG_STACK_TRACE_DEPTH\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@_ZTVN4dmlc5ErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4dmlc5ErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN4dmlc5ErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTVN7xgboost8JsonNullE = external constant { [9 x ptr] }, align 8
@.str.29 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/xgboost/xgboost/include/xgboost/objective.h\00", align 1
@.str.30 = private unnamed_addr constant [63 x i8] c"multioutput is not supported by the current objective function\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTIN7xgboost5ValueE = external constant ptr
@_ZTIN7xgboost10JsonStringE = external constant ptr
@.str.32 = private unnamed_addr constant [55 x i8] c"/opt-bench/work/xgboost/xgboost/include/xgboost/json.h\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Invalid cast, from \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@_ZTVN7xgboost10JsonStringE = external constant { [9 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define void @_ZNK7xgboost3obj12FitIntercept14InitEstimationERKNS_8MetaInfoEPNS_6linalg6TensorIfLi1EEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.xgboost::HostDeviceVector", align 8 ; 7 uses
  %4 = alloca %"class.xgboost::linalg::Tensor.17", align 8 ; 14 uses
  %5 = alloca %"class.xgboost::Json", align 8     ; 9 uses
  %6 = alloca %"class.xgboost::JsonObject", align 8 ; 15 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i16 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = and i16 %i.d, 255
  %i.f = icmp eq i16 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7xgboost3obj15CheckInitInputsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(25) %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 8
  call void @_ZN7xgboost16HostDeviceVectorIfEC1EmfNS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.h, float noundef 0.000000e+00, i32 %.sroa.0.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.0.0.copyload.i29 = load i32, ptr %i.m, align 8 ; 2 uses
  invoke void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEEC1EmS3_NS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(25) %4, i64 noundef 0, <2 x float> zeroinitializer, i32 -65536)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.p, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %i.q = load i64, ptr %i.o, align 8, !tbaa !16
  %i.r = load i64, ptr %.ptr.i, align 8, !tbaa !16
  %i.s = mul i64 %i.r, %i.q
  %i.t = and i32 %.sroa.0.0.copyload.i29, 65535
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.noexc
  invoke void @_ZNK7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE9SetDeviceENS_9DeviceOrdE(ptr noundef nonnull align 8 dereferenceable(25) %4, i32 %.sroa.0.0.copyload.i29)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.f, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.sink.split

bb.f:                                             ; preds = %bb.d, %.noexc
  invoke void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(25) %4, i64 noundef %i.s)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = invoke noundef ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEE13DevicePointerEv(ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %bb.i unwind label %bb.e       ; 0 uses

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 3, ptr %i.y, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %6, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i32 0, ptr %i.z, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !52
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %i.z, ptr %i.ac, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.ad, align 8, !tbaa !54
  %i.ae = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26
          to label %bb.j unwind label %bb.v       ; 3 uses

bb.j:                                             ; preds = %bb.i
  call void @_ZN7xgboost10JsonObjectC1EOS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %6) #15
  store ptr %i.ae, ptr %5, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = atomicrmw add ptr %i.af, i32 1 monotonic, align 4 ; 0 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %6, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !28
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef %i.ai)
          to label %_ZN7xgboost10JsonObjectD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  call void @__clang_call_terminate(ptr %i.ak) #27
  unreachable

_ZN7xgboost10JsonObjectD2Ev.exit:                 ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.al = load ptr, ptr %0, align 8, !tbaa !9
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  invoke void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %_ZN7xgboost10JsonObjectD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ao, ptr %7, align 8, !tbaa !34
  store i32 1701667182, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.ap, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.aq, align 4, !tbaa !37
  %i.ar = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef nonnull align 8 dereferenceable(8) ptr %i.au(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.x, !inline_history !48

_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.l
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.ax = invoke noundef ptr @_ZN7xgboost4CastIKNS_10JsonStringENS_5ValueEEEPT_PT0_(ptr noundef nonnull %i.aw)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.ba = invoke noundef ptr @_ZN7xgboost11ObjFunction6CreateERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKNS_7ContextE(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef %i.az)
          to label %bb.n unwind label %bb.x       ; 8 uses

bb.n:                                             ; preds = %bb.m
  %i.bb = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ao
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.bd = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  invoke void %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.o unwind label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit39

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(248) %1, i32 noundef 0, ptr noundef nonnull %4)
          to label %bb.p unwind label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit39

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %0, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef i32 %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(248) %1)
          to label %bb.q unwind label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit39

bb.q:                                             ; preds = %bb.p
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !14
  invoke void @_ZN7xgboost4tree8FitStumpEPKNS_7ContextERKNS_6linalg6TensorINS_6detail20GradientPairInternalIfEELi2EEEjPNS5_IfLi1EEE(ptr noundef %i.bp, ptr noundef nonnull align 8 dereferenceable(25) %4, i32 noundef %i.bo, ptr noundef %2)
          to label %bb.r unwind label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit39

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %0, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %2)
          to label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit39

_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.r
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #15, !inline_history !49
  %i.bw = load ptr, ptr %5, align 8, !tbaa !31    ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %_ZN7xgboost4JsonD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = atomicrmw add ptr %i.bx, i32 -1 release, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.t, label %_ZN7xgboost4JsonD2Ev.exit

bb.t:                                             ; preds = %bb.s
  fence acquire
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(24) %i.bw) #15, !inline_history !50
  br label %_ZN7xgboost4JsonD2Ev.exit

_ZN7xgboost4JsonD2Ev.exit:                        ; preds = %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret void

bb.u:                                             ; preds = %bb.c
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.v:                                             ; preds = %bb.i
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %_ZN7xgboost4JsonD2Ev.exit41

bb.w:                                             ; preds = %_ZN7xgboost10JsonObjectD2Ev.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %_ZNK7xgboost4JsonixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.l, %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  %i.ch = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.ao
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.x
  %i.cj = load i64, ptr %i.ao, align 8, !tbaa !37
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.ck) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.y

_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit39: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.o, %bb.r, %bb.q, %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %i.ba, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #15, !inline_history !49
  br label %bb.y

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit39, %bb.w
  %.pn23.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %i.cl, %_ZNSt10unique_ptrIN7xgboost11ObjFunctionESt14default_deleteIS1_EED2Ev.exit39 ], [ %i.cg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ] ; 3 uses
  %i.cp = load ptr, ptr %5, align 8, !tbaa !31    ; 4 uses
  %.not.i.i.i40 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i40, label %_ZN7xgboost4JsonD2Ev.exit41, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = atomicrmw add ptr %i.cq, i32 -1 release, align 4
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %bb.aa, label %_ZN7xgboost4JsonD2Ev.exit41

bb.aa:                                            ; preds = %bb.z
  fence acquire
  %i.ct = load ptr, ptr %i.cp, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(24) %i.cp) #15, !inline_history !50
  br label %_ZN7xgboost4JsonD2Ev.exit41

_ZN7xgboost4JsonD2Ev.exit41:                      ; preds = %bb.aa, %bb.z, %bb.y, %bb.v
  %.pn23.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.v ], [ %.pn23.pn.pn, %bb.y ], [ %.pn23.pn.pn, %bb.z ], [ %.pn23.pn.pn, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZN7xgboost4JsonD2Ev.exit41, %bb.e
  %.pn23.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %i.v, %bb.e ], [ %.pn23.pn.pn.pn, %_ZN7xgboost4JsonD2Ev.exit41 ]
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIfEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %4) #15
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.u
  %.pn23.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.u ], [ %.pn23.pn.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @_ZN7xgboost16HostDeviceVectorIfED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %.pn23.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7xgboost3obj15CheckInitInputsERKNS_8MetaInfoE(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.27", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %3 = alloca %"class.std::unique_ptr.27", align 8 ; 8 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !16
  %i.e = load i64, ptr %0, align 8, !tbaa !16, !noalias !59
  %i.f = icmp eq i64 %i.d, %i.e
  br i1 %i.f, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit13.thread, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit13

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit13.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit13: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.27") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr = load ptr, ptr %1, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.g = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.g, ptr noundef nonnull @.str.5, i32 noundef 22)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
  %i.h = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.2, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull @.str.6, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.k = load ptr, ptr %1, align 8, !tbaa !40     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.d ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull @.str.7, i64 noundef 24)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %i.s, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  br label %bb.p

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %.pr44 = load ptr, ptr %1, align 8, !tbaa !40   ; 4 uses
  %.not.i = icmp eq ptr %.pr44, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %.pr44, align 8, !tbaa !38 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pr44, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.g
  %i.w = load i64, ptr %i.u, align 8, !tbaa !37
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr44, i64 noundef 32) #28
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit13, %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit13.thread, %bb.f, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.z = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.o, label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.ab = call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y) ; 2 uses
  store i64 %i.ab, ptr %i.b, align 8, !tbaa !16
  %i.ac = load i64, ptr %0, align 8, !tbaa !16, !noalias !60
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit43

_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.h
  call void @_ZN4dmlc14LogCheckFormatImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.27") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %.pr46 = load ptr, ptr %3, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.not51 = icmp eq ptr %.pr46, null
  br i1 %.not51, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit43, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQImmEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ae = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %.noexc24 unwind label %bb.j

.noexc24:                                         ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ae, ptr noundef nonnull @.str.5, i32 noundef 24)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit26 unwind label %bb.j

_ZN4dmlc15LogMessageFatalC2EPKci.exit26:          ; preds = %.noexc24
  %i.af = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit28 unwind label %bb.k ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit28: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit26
  %i.ag = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.2, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit28
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull @.str.8, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
  %i.ai = load ptr, ptr %3, align 8, !tbaa !40    ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !36
  %i.am = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34 unwind label %bb.k ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.4, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34
  %i.ao = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull @.str.9, i64 noundef 59)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38 unwind label %bb.k ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %.noexc24, %bb.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit34, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit28, %_ZN4dmlc15LogMessageFatalC2EPKci.exit26
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.l unwind label %bb.q
end_hunk_0
