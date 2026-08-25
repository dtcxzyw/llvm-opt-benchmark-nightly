Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ReadMemoryRequestHandler?download=true
inline.NumInlined: 652
inline.NumDeleted: 435
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::Expected" = type <{ %union.anon, i8, [7 x i8] }>
%union.anon = type { %"struct.lldb_dap::protocol::ReadMemoryResponseBody" }
%"struct.lldb_dap::protocol::ReadMemoryResponseBody" = type { i64, i64, %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::byte, std::allocator<std::byte>>::_Vector_impl" }
%"struct.std::_Vector_base<std::byte, std::allocator<std::byte>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::byte, std::allocator<std::byte>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::byte, std::allocator<std::byte>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.lldb::SBError" = type { %"class.std::unique_ptr.117" }
%"class.std::unique_ptr.117" = type { %"struct.std::__uniq_ptr_data.118" }
%"struct.std::__uniq_ptr_data.118" = type { %"class.std::__uniq_ptr_impl.119" }
%"class.std::__uniq_ptr_impl.119" = type { %"class.std::tuple.120" }
%"class.std::tuple.120" = type { %"struct.std::_Tuple_impl.121" }
%"struct.std::_Tuple_impl.121" = type { %"struct.std::_Head_base.124" }
%"struct.std::_Head_base.124" = type { ptr }
%"class.lldb::SBProcess" = type { %"class.std::weak_ptr" }
%"class.std::weak_ptr" = type { %"class.std::__weak_ptr" }
%"class.std::__weak_ptr" = type { ptr, %"class.std::__weak_count" }
%"class.std::__weak_count" = type { ptr }
%"class.llvm::json::Value" = type { i16, [6 x i8], %"struct.llvm::AlignedCharArrayUnion" }
%"struct.llvm::AlignedCharArrayUnion" = type { [32 x i8] }
%"struct.lldb_dap::protocol::Response" = type { i64, %"class.lldb_dap::protocol::String", i8, [7 x i8], %"class.std::optional.145", %"class.std::optional.159", i64 }
%"class.lldb_dap::protocol::String" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.16 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.16 = type { i64, [8 x i8] }
%"class.std::optional.145" = type { %"struct.std::_Optional_base.146" }
%"struct.std::_Optional_base.146" = type { %"struct.std::_Optional_payload.148" }
%"struct.std::_Optional_payload.148" = type { %"struct.std::_Optional_payload.base.156", [7 x i8] }
%"struct.std::_Optional_payload.base.156" = type { %"struct.std::_Optional_payload_base.base.155" }
%"struct.std::_Optional_payload_base.base.155" = type { %"union.std::_Optional_payload_base<std::variant<lldb_dap::protocol::ResponseMessage, lldb_dap::protocol::String>>::_Storage", i8 }
%"union.std::_Optional_payload_base<std::variant<lldb_dap::protocol::ResponseMessage, lldb_dap::protocol::String>>::_Storage" = type { %"class.std::variant" }
%"class.std::variant" = type { %"struct.std::__detail::__variant::_Variant_base.base", [7 x i8] }
%"struct.std::__detail::__variant::_Variant_base.base" = type { %"struct.std::__detail::__variant::_Move_assign_base.base" }
%"struct.std::__detail::__variant::_Move_assign_base.base" = type { %"struct.std::__detail::__variant::_Copy_assign_base.base" }
%"struct.std::__detail::__variant::_Copy_assign_base.base" = type { %"struct.std::__detail::__variant::_Move_ctor_base.base" }
%"struct.std::__detail::__variant::_Move_ctor_base.base" = type { %"struct.std::__detail::__variant::_Copy_ctor_base.base" }
%"struct.std::__detail::__variant::_Copy_ctor_base.base" = type { %"struct.std::__detail::__variant::_Variant_storage.base" }
%"struct.std::__detail::__variant::_Variant_storage.base" = type <{ %"union.std::__detail::__variant::_Variadic_union", i8 }>
%"union.std::__detail::__variant::_Variadic_union" = type { %"struct.std::__detail::__variant::_Uninitialized", [28 x i8] }
%"struct.std::__detail::__variant::_Uninitialized" = type { i32 }
%"class.std::optional.159" = type { %"struct.std::_Optional_base.160" }
%"struct.std::_Optional_base.160" = type { %"struct.std::_Optional_payload.162" }
%"struct.std::_Optional_payload.162" = type { %"struct.std::_Optional_payload.base.166", [7 x i8] }
%"struct.std::_Optional_payload.base.166" = type { %"struct.std::_Optional_payload_base.base.165" }
%"struct.std::_Optional_payload_base.base.165" = type <{ %"union.std::_Optional_payload_base<llvm::json::Value>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::json::Value>::_Storage" = type { %"class.llvm::json::Value" }
%"class.llvm::Expected.169" = type <{ %union.anon.170, i8, [7 x i8] }>
%union.anon.170 = type { %"struct.lldb_dap::protocol::ReadMemoryArguments" }
%"struct.lldb_dap::protocol::ReadMemoryArguments" = type { i64, i64, i64 }
%"class.llvm::Error" = type { ptr }
%"class.llvm::SmallDenseSet" = type { %"class.llvm::detail::DenseSetImpl.125" }
%"class.llvm::detail::DenseSetImpl.125" = type { %"class.llvm::SmallDenseMap.126" }
%"class.llvm::SmallDenseMap.126" = type { i32, %union.anon.128 }
%union.anon.128 = type { %"struct.llvm::SmallDenseMap<lldb_dap::protocol::AdapterFeature, llvm::detail::DenseSetEmpty, 1, llvm::DenseMapInfo<lldb_dap::protocol::AdapterFeature>, llvm::detail::DenseSetPair<lldb_dap::protocol::AdapterFeature>>::LargeRep" }
%"struct.llvm::SmallDenseMap<lldb_dap::protocol::AdapterFeature, llvm::detail::DenseSetEmpty, 1, llvm::DenseMapInfo<lldb_dap::protocol::AdapterFeature>, llvm::detail::DenseSetPair<lldb_dap::protocol::AdapterFeature>>::LargeRep" = type { ptr, ptr, i32 }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.172", %"struct.std::array" }
%"class.llvm::formatv_object_base.base" = type <{ %"class.llvm::StringRef", %"class.llvm::ArrayRef", i8 }>
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.std::tuple.172" = type { %"struct.std::_Tuple_impl.173" }
%"struct.std::_Tuple_impl.173" = type { %"struct.std::_Head_base.174" }
%"struct.std::_Head_base.174" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::support::detail::FormatFunctor" = type { ptr }
%"struct.std::array" = type { [1 x %"class.llvm::function_ref"] }
%"class.llvm::function_ref" = type { ptr, i64 }
%"class.llvm::json::Path::Root" = type { %"class.llvm::StringRef", %"class.llvm::StringLiteral", %"class.std::vector.175" }
%"class.llvm::StringLiteral" = type { %"class.llvm::StringRef" }
%"class.std::vector.175" = type { %"struct.std::_Vector_base.176" }
%"struct.std::_Vector_base.176" = type { %"struct.std::_Vector_base<llvm::json::Path::Segment, std::allocator<llvm::json::Path::Segment>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::json::Path::Segment, std::allocator<llvm::json::Path::Segment>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::json::Path::Segment, std::allocator<llvm::json::Path::Segment>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::json::Path::Segment, std::allocator<llvm::json::Path::Segment>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::json::Path" = type { ptr, %"class.llvm::json::Path::Segment" }
%"class.llvm::json::Path::Segment" = type <{ i64, i32, [4 x i8] }>
%"class.std::unique_ptr.180" = type { %"struct.std::__uniq_ptr_data.181" }
%"struct.std::__uniq_ptr_data.181" = type { %"class.std::__uniq_ptr_impl.182" }
%"class.std::__uniq_ptr_impl.182" = type { %"class.std::tuple.183" }
%"class.std::tuple.183" = type { %"struct.std::_Tuple_impl.184" }
%"struct.std::_Tuple_impl.184" = type { %"struct.std::_Head_base.187" }
%"struct.std::_Head_base.187" = type { ptr }
%"class.std::optional.189" = type { %"struct.std::_Optional_base.190" }
%"struct.std::_Optional_base.190" = type { %"struct.std::_Optional_payload.192" }
%"struct.std::_Optional_payload.192" = type { %"struct.std::_Optional_payload.base.196", [7 x i8] }
%"struct.std::_Optional_payload.base.196" = type { %"struct.std::_Optional_payload_base.base.195" }
%"struct.std::_Optional_payload_base.base.195" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }

$_ZN8lldb_dap18BaseRequestHandlerD2Ev = comdat any

$_ZN8lldb_dap24ReadMemoryRequestHandlerD0Ev = comdat any

$_ZNK8lldb_dap14RequestHandlerINS_8protocol19ReadMemoryArgumentsEN4llvm8ExpectedINS1_22ReadMemoryResponseBodyEEEEclERKNS1_7RequestE = comdat any

$_ZNK8lldb_dap24ReadMemoryRequestHandler20GetSupportedFeaturesEv = comdat any

$_ZNK8lldb_dap14RequestHandlerINS_8protocol19ReadMemoryArgumentsEN4llvm8ExpectedINS1_22ReadMemoryResponseBodyEEEE7PostRunEv = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN8lldb_dap8protocol14AdapterFeatureENS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN8lldb_dap8protocol14AdapterFeatureENS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN8lldb_dap8protocol14AdapterFeatureENS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIN8lldb_dap8protocol14AdapterFeatureENS_6detail13DenseSetEmptyELj1ENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E8moveFromERSB_ = comdat any

$_ZN8lldb_dap9parseArgsINS_8protocol19ReadMemoryArgumentsEEEN4llvm8ExpectedIT_EERKNS1_7RequestE = comdat any

$_ZSt11make_uniqueIN8lldb_dap8DAPErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKN8lldb_dap8protocol6StringEEEEEvlS2_S3_ = comdat any

$_ZSt11make_uniqueIN8lldb_dap8DAPErrorEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN8lldb_dap24ReadMemoryRequestHandlerE = unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr null, ptr @_ZN8lldb_dap18BaseRequestHandlerD2Ev, ptr @_ZN8lldb_dap24ReadMemoryRequestHandlerD0Ev, ptr @_ZNK8lldb_dap14RequestHandlerINS_8protocol19ReadMemoryArgumentsEN4llvm8ExpectedINS1_22ReadMemoryResponseBodyEEEEclERKNS1_7RequestE, ptr @_ZNK8lldb_dap24ReadMemoryRequestHandler20GetSupportedFeaturesEv, ptr @_ZNK8lldb_dap24ReadMemoryRequestHandler3RunERKNS_8protocol19ReadMemoryArgumentsE, ptr @_ZNK8lldb_dap14RequestHandlerINS_8protocol19ReadMemoryArgumentsEN4llvm8ExpectedINS1_22ReadMemoryResponseBodyEEEE7PostRunEv] }, align 8
@_ZTVN8lldb_dap15NotStoppedErrorE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"arguments required for command '{0}' but none received\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid arguments for request '\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"': \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK8lldb_dap24ReadMemoryRequestHandler3RunERKNS_8protocol19ReadMemoryArgumentsE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.lldb::SBError", align 8     ; 6 uses
  %4 = alloca %"class.lldb::SBProcess", align 8   ; 5 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12, !nonnull !16, !align !17
  %i.f = tail call noundef zeroext i1 @_ZN8lldb_dap3DAP19ProcessIsNotStoppedEv(ptr noundef nonnull align 8 dereferenceable(2640) %i.e) #14
  br i1 %i.f, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15, !noalias !18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN8lldb_dap15NotStoppedErrorE, i64 16), ptr %i.g, align 8, !tbaa !23, !noalias !18
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8
  %i.j = or i8 %i.i, 1
  store i8 %i.j, ptr %i.h, align 8
  store ptr %i.g, ptr %0, align 8, !tbaa !25, !alias.scope !27
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = add i64 %i.c, %i.a                       ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %.sroa.speculated42 = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1) ; 16 uses
  %i.n = icmp slt i64 %.sroa.speculated42, 0
  br i1 %i.n, label %bb.c, label %_ZNKSt6vectorISt4byteSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorISt4byteSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.b
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated42) #15 ; 8 uses
  store i8 0, ptr %i.o, align 1, !tbaa !31
  %i.p = add nsw i64 %.sroa.speculated42, -1      ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_ZNSt6vectorISt4byteSaIS0_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorISt4byteSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.p, i1 false)
  br label %_ZNSt6vectorISt4byteSaIS0_EE6resizeEm.exit

_ZNSt6vectorISt4byteSaIS0_EE6resizeEm.exit:       ; preds = %bb.d, %_ZNKSt6vectorISt4byteSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZN4lldb7SBErrorC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !12, !nonnull !16, !align !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 616
  call void @_ZN4lldb8SBTarget10GetProcessEv(ptr dead_on_unwind nonnull writable sret(%"class.lldb::SBProcess") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %i.t) #14
  %i.u = call noundef i64 @_ZN4lldb9SBProcess10ReadMemoryEmPvmRNS_7SBErrorE(ptr noundef nonnull align 8 dereferenceable(16) %4, i64 noundef %i.k, ptr noundef nonnull %i.o, i64 noundef %.sroa.speculated42, ptr noundef nonnull align 8 dereferenceable(8) %3) #14 ; 3 uses
  call void @_ZN4lldb9SBProcessD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.v = call noundef zeroext i1 @_ZNK4lldb7SBError4FailEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %i.w = icmp ult i64 %i.u, %.sroa.speculated42
  %or.cond = and i1 %i.w, %i.v
  %i.x = sub nuw nsw i64 %.sroa.speculated42, %i.u
  %.sroa.5.0 = select i1 %or.cond, i64 %i.x, i64 0
  %i.y = load i64, ptr %i.l, align 8, !tbaa !30
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.u) ; 5 uses
  %i.z = icmp ugt i64 %.sroa.speculated, %.sroa.speculated42
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZNSt6vectorISt4byteSaIS0_EE6resizeEm.exit
  %i.aa = sub nuw i64 %.sroa.speculated, %.sroa.speculated42 ; 3 uses
  %i.ab = xor i64 %.sroa.speculated42, 9223372036854775807
  %i.ac = icmp ult i64 %i.ab, %i.aa
  br i1 %i.ac, label %bb.f, label %_ZNKSt6vectorISt4byteSaIS0_EE12_M_check_lenEmPKc.exit.i.i19

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorISt4byteSaIS0_EE12_M_check_lenEmPKc.exit.i.i19: ; preds = %bb.e
  %.sroa.speculated.i.i.i20 = call i64 @llvm.umax.i64(i64 %.sroa.speculated42, i64 %i.aa)
  %i.ad = add nuw i64 %.sroa.speculated.i.i.i20, %.sroa.speculated42
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ad, i64 9223372036854775807) ; 2 uses
  %i.af = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #15 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.speculated42 ; 2 uses
  store i8 0, ptr %i.ag, align 1, !tbaa !31
  %i.ah = add nsw i64 %i.aa, -1                   ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZSt27__uninitialized_default_n_aIPSt4bytemS0_ET_S2_T0_RSaIT1_E.exit26.i.i21, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorISt4byteSaIS0_EE12_M_check_lenEmPKc.exit.i.i19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aj, i8 0, i64 %i.ah, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPSt4bytemS0_ET_S2_T0_RSaIT1_E.exit26.i.i21

_ZSt27__uninitialized_default_n_aIPSt4bytemS0_ET_S2_T0_RSaIT1_E.exit26.i.i21: ; preds = %_ZNKSt6vectorISt4byteSaIS0_EE12_M_check_lenEmPKc.exit.i.i19, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.af, ptr noundef nonnull align 1 dereferenceable(1) %i.o, i64 %.sroa.speculated42, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %.sroa.speculated42) #17
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.speculated
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  br label %_ZN8lldb_dap8protocol22ReadMemoryResponseBodyD2Ev.exit

bb.h:                                             ; preds = %_ZNSt6vectorISt4byteSaIS0_EE6resizeEm.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.speculated42 ; 2 uses
  %i.an = icmp samesign ult i64 %.sroa.speculated, %.sroa.speculated42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.speculated
  %spec.select = select i1 %i.an, ptr %i.ao, ptr %i.am
  br label %_ZN8lldb_dap8protocol22ReadMemoryResponseBodyD2Ev.exit

_ZN8lldb_dap8protocol22ReadMemoryResponseBodyD2Ev.exit: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPSt4bytemS0_ET_S2_T0_RSaIT1_E.exit26.i.i21
  %.sroa.7.1 = phi ptr [ %i.o, %bb.h ], [ %i.af, %_ZSt27__uninitialized_default_n_aIPSt4bytemS0_ET_S2_T0_RSaIT1_E.exit26.i.i21 ]
  %.sroa.16.1 = phi ptr [ %spec.select, %bb.h ], [ %i.ak, %_ZSt27__uninitialized_default_n_aIPSt4bytemS0_ET_S2_T0_RSaIT1_E.exit26.i.i21 ]
  %.sroa.26.1 = phi ptr [ %i.am, %bb.h ], [ %i.al, %_ZSt27__uninitialized_default_n_aIPSt4bytemS0_ET_S2_T0_RSaIT1_E.exit26.i.i21 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 8
  %i.ar = and i8 %i.aq, -2
  store i8 %i.ar, ptr %i.ap, align 8
  store i64 %i.k, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.1, ptr %i.as, align 8, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.16.1, ptr %i.at, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.26.1, ptr %i.au, align 8, !tbaa !35
  call void @_ZN4lldb7SBErrorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.i

bb.i:                                             ; preds = %_ZN8lldb_dap8protocol22ReadMemoryResponseBodyD2Ev.exit, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef zeroext i1 @_ZN8lldb_dap3DAP19ProcessIsNotStoppedEv(ptr noundef nonnull align 8 dereferenceable(2640)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN4lldb7SBErrorC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN4lldb8SBTarget10GetProcessEv(ptr dead_on_unwind writable sret(%"class.lldb::SBProcess") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare noundef i64 @_ZN4lldb9SBProcess10ReadMemoryEmPvmRNS_7SBErrorE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4lldb9SBProcessD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK4lldb7SBError4FailEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN4lldb7SBErrorD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8lldb_dap18BaseRequestHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8lldb_dap24ReadMemoryRequestHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8lldb_dap14RequestHandlerINS_8protocol19ReadMemoryArgumentsEN4llvm8ExpectedINS1_22ReadMemoryResponseBodyEEEEclERKNS1_7RequestE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::json::Value", align 8 ; 5 uses
  %3 = alloca %"struct.lldb_dap::protocol::Response", align 8 ; 17 uses
  %4 = alloca %"class.llvm::Expected.169", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Expected", align 8    ; 10 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %8 = alloca %"class.std::optional.159", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.c, align 8, !tbaa !39
  store i8 0, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  store i8 0, ptr %i.e, align 8, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 3 uses
  store i8 0, ptr %i.f, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i64 -1, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58
  store i64 %i.i, ptr %3, align 8, !tbaa !60
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN8lldb_dap9parseArgsINS_8protocol19ReadMemoryArgumentsEEEN4llvm8ExpectedIT_EERKNS1_7RequestE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.169") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !noalias !61
  %i.l = trunc i8 %i.k to i1
  br i1 %i.l, label %_ZN4llvm8ExpectedIN8lldb_dap8protocol19ReadMemoryArgumentsEE9takeErrorEv.exit, label %_ZN4llvm5ErrorD2Ev.exit5

_ZN4llvm8ExpectedIN8lldb_dap8protocol19ReadMemoryArgumentsEE9takeErrorEv.exit: ; preds = %bb.a
  %i.m = load i64, ptr %4, align 8, !tbaa !25, !noalias !61 ; 2 uses
  store ptr null, ptr %4, align 8, !tbaa !25, !noalias !61
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit5, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm8ExpectedIN8lldb_dap8protocol19ReadMemoryArgumentsEE9takeErrorEv.exit
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %5, align 8, !tbaa !64
  call void @_ZNK8lldb_dap18BaseRequestHandler9SendErrorEN4llvm5ErrorERNS_8protocol8ResponseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(152) %3) #14
  %i.o = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN4llvm5ErrorD2Ev.exit4, label %_ZN4llvm5ErrorD2Ev.exit4.sink.split

_ZN4llvm5ErrorD2Ev.exit5:                         ; preds = %bb.a, %_ZN4llvm8ExpectedIN8lldb_dap8protocol19ReadMemoryArgumentsEE9takeErrorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.q = load ptr, ptr %0, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !noalias !66
  %i.v = trunc i8 %i.u to i1
  br i1 %i.v, label %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit, label %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit.thread

_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit5
  %i.w = load i64, ptr %6, align 8, !tbaa !25, !noalias !66 ; 2 uses
  store ptr null, ptr %6, align 8, !tbaa !25, !noalias !66
  %.not23 = icmp eq i64 %i.w, 0
  br i1 %.not23, label %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %7, align 8, !tbaa !64
  call void @_ZNK8lldb_dap18BaseRequestHandler9SendErrorEN4llvm5ErrorERNS_8protocol8ResponseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(152) %3) #14
  %i.y = load ptr, ptr %7, align 8, !tbaa !64     ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZN4llvm5ErrorD2Ev.exit9, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #14, !inline_history !69
  br label %_ZN4llvm5ErrorD2Ev.exit9

_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit.thread: ; preds = %_ZN4llvm5ErrorD2Ev.exit5, %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN8lldb_dap8protocol6toJSONERKNS0_22ReadMemoryResponseBodyE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::json::Value") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  call void @_ZN4llvm4json5Value8moveFromEOKS1_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 3 uses
  store i8 1, ptr %i.ad, align 8, !tbaa !56
  call void @_ZNK8lldb_dap18BaseRequestHandler11SendSuccessERNS_8protocol8ResponseESt8optionalIN4llvm4json5ValueEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(152) %3, ptr nofree noundef nonnull align 8 dereferenceable(48) %8) #14
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !56, !range !70, !noundef !16
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !56
  br i1 %i.af, label %bb.e, label %_ZN4llvm5ErrorD2Ev.exit9

bb.e:                                             ; preds = %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit.thread
  call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(48) %8) #14
  br label %_ZN4llvm5ErrorD2Ev.exit9

_ZN4llvm5ErrorD2Ev.exit9:                         ; preds = %bb.c, %bb.d, %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEE9takeErrorEv.exit.thread, %bb.e
  %i.ag = load i8, ptr %i.t, align 8
  %i.ah = trunc i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit9
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #17
  br label %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEED2Ev.exit

bb.h:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit9
  %i.ap = load ptr, ptr %6, align 8, !tbaa !25    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.h
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #14, !inline_history !71
  br label %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEED2Ev.exit

_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEED2Ev.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %_ZN4llvm5ErrorD2Ev.exit4.sink.split

_ZN4llvm5ErrorD2Ev.exit4.sink.split:              ; preds = %bb.b, %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEED2Ev.exit
  %.sink38 = phi ptr [ %0, %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEED2Ev.exit ], [ %i.o, %bb.b ] ; 2 uses
  %.sink37 = phi i64 [ 40, %_ZN4llvm8ExpectedIN8lldb_dap8protocol22ReadMemoryResponseBodyEED2Ev.exit ], [ 8, %bb.b ]
  %i.at = load ptr, ptr %.sink38, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sink37
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %.sink38) #14
  br label %_ZN4llvm5ErrorD2Ev.exit4
end_hunk_0
