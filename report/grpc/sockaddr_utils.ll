Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/sockaddr_utils?download=true
inline.NumInlined: 413
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
%union.anon.4 = type { i64, [8 x i8] }
%"class.absl::lts_20250512::str_format_internal::FormatArgImpl" = type { %"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data", ptr }
%"union.absl::lts_20250512::str_format_internal::FormatArgImpl::Data" = type { ptr }
%struct.grpc_resolved_address = type { [128 x i8], i32 }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }
%"class.absl::lts_20250512::StatusOr.5" = type { %"class.absl::lts_20250512::internal_statusor::StatusOrData.6" }
%"class.absl::lts_20250512::internal_statusor::StatusOrData.6" = type { %union.anon.7, %union.anon.8 }
%union.anon.7 = type { %"class.absl::lts_20250512::Status" }
%union.anon.8 = type { %"class.grpc_core::URI" }
%"class.grpc_core::URI" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::map", %"class.std::vector", %"class.std::__cxx11::basic_string" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::basic_string_view<char>, std::pair<const std::basic_string_view<char>, std::basic_string_view<char>>, std::_Select1st<std::pair<const std::basic_string_view<char>, std::basic_string_view<char>>>, std::less<std::basic_string_view<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::basic_string_view<char>, std::pair<const std::basic_string_view<char>, std::basic_string_view<char>>, std::_Select1st<std::pair<const std::basic_string_view<char>, std::basic_string_view<char>>>, std::less<std::basic_string_view<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<grpc_core::URI::QueryParam, std::allocator<grpc_core::URI::QueryParam>>::_Vector_impl" }
%"struct.std::_Vector_base<grpc_core::URI::QueryParam, std::allocator<grpc_core::URI::QueryParam>>::_Vector_impl" = type { %"struct.std::_Vector_base<grpc_core::URI::QueryParam, std::allocator<grpc_core::URI::QueryParam>>::_Vector_impl_data" }
%"struct.std::_Vector_base<grpc_core::URI::QueryParam, std::allocator<grpc_core::URI::QueryParam>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4absl12lts_202505126StatusD2Ev = comdat any

$_ZNSt6vectorIN9grpc_core3URI10QueryParamESaIS2_EED2Ev = comdat any

$_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core3URIEED2Ev = comdat any

$_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN9grpc_core3URID2Ev = comdat any

$_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_S3_ESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E = comdat any

@.str = private unnamed_addr constant [71 x i8] c"/opt-bench/work/grpc/grpc/src/core/lib/address_utils/sockaddr_utils.cc\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"resolved_addr != resolved_addr4_out\00", align 1
@_ZL15kV4MappedPrefix = internal constant [12 x i8] c"\00\00\00\00\00\00\00\00\00\00\FF\FF", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"resolved_addr != resolved_addr6_out\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"port >= 0\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"port < 65536\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"empty UDS abstract path\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"UDS path is not null-terminated\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%s%%%u\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Unknown sockaddr family: \00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Empty address\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Unknown address type\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"vsock\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Unknown socket family \00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c" in grpc_sockaddr_get_port\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c" in grpc_sockaddr_set_port\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"unknown socket family\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"Socket family is not AF_UNIX: \00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"unix-abstract\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Socket family is not AF_VSOCK: \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"vsock:\00", align 1
@switch.table._Z28grpc_sockaddr_get_uri_schemePK21grpc_resolved_address = private unnamed_addr constant [40 x ptr] [ptr @.str.12, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.13], align 8

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %.critedge, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 112, ptr noundef nonnull @.str.1) #19
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !9
  %i.c = icmp eq i16 %i.b, 10
  br i1 %i.c, label %bb.d, label %.critedge30

bb.d:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 1
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = zext i32 %i.g to i64
  %i.i = xor i64 %i.h, 4294901760
  %i.j = or i64 %i.e, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %.not28 = icmp eq i32 %i.l, 0
  br i1 %.not28, label %bb.e, label %.critedge30

bb.e:                                             ; preds = %bb.d
  %.not27 = icmp eq ptr %1, null
  br i1 %.not27, label %.critedge30, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %1, i8 0, i64 132, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4
  store i32 %i.o, ptr %i.m, align 4
  store i16 2, ptr %1, align 4, !tbaa !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.q, ptr %i.r, align 2, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 16, ptr %i.s, align 4, !tbaa !19
  br label %.critedge30

.critedge30:                                      ; preds = %.critedge, %bb.d, %bb.f, %bb.e
  %.1 = phi i32 [ 1, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ], [ 0, %.critedge ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_Z25grpc_sockaddr_to_v4mappedPK21grpc_resolved_addressPS_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.b, label %.critedge, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.2) #19
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.b = load i16, ptr %0, align 2, !tbaa !9
  %i.c = icmp eq i16 %i.b, 2
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(132) %1, i8 0, i64 132, i1 false)
  store i16 10, ptr %1, align 4, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 1 dereferenceable(12) @_ZL15kV4MappedPrefix, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4
  store i32 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i16 %i.i, ptr %i.j, align 2, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i32 28, ptr %i.k, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %.critedge ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_Z25grpc_sockaddr_is_wildcardPK21grpc_resolved_addressPi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
.critedge.i:
  %.sroa.2 = alloca i16, align 2                  ; 4 uses
  %.sroa.4 = alloca i32, align 4                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.a = load i16, ptr %0, align 2, !tbaa !9
  %.not.sroa.gep33 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.sroa.gep37 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not.sroa.gep41 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  switch i16 %i.a, label %.loopexit [
    i16 10, label %bb.a
    i16 2, label %bb.b
  ]

bb.a:                                             ; preds = %.critedge.i
  %i.b = load i64, ptr %.not.sroa.gep37, align 1
  %i.c = getelementptr i8, ptr %.not.sroa.gep37, i64 8
  %i.d = load i32, ptr %i.c, align 1
  %i.e = zext i32 %i.d to i64
  %i.f = xor i64 %i.e, 4294901760
  %i.g = or i64 %i.b, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %.not28.i = icmp eq i32 %i.i, 0
  br i1 %.not28.i, label %_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit.thread, label %.preheader

_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit.thread: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = load i32, ptr %i.j, align 4
  store i32 %i.k, ptr %.sroa.4, align 4
  %i.l = load i16, ptr %.not.sroa.gep41, align 2, !tbaa !15
  store i16 %i.l, ptr %.sroa.2, align 2, !tbaa !18
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.m = load i8, ptr %.not.sroa.gep37, align 2, !tbaa !22
  %.not19 = icmp eq i8 %i.m, 0
  br i1 %.not19, label %bb.c, label %.loopexit

bb.b:                                             ; preds = %.critedge.i, %_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit.thread
  %.not.sroa.phi3951 = phi ptr [ %.sroa.2, %_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit.thread ], [ %.not.sroa.gep41, %.critedge.i ]
  %.not.sroa.phi50 = phi ptr [ %.sroa.4, %_Z25grpc_sockaddr_is_v4mappedPK21grpc_resolved_addressPS_.exit.thread ], [ %.not.sroa.gep33, %.critedge.i ]
  %i.n = load i32, ptr %.not.sroa.phi50, align 4, !tbaa !23
  %.not20 = icmp eq i32 %i.n, 0
  br i1 %.not20, label %.loopexit.sink.split, label %.loopexit

bb.c:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22
  %.not19.1 = icmp eq i8 %i.p, 0
  br i1 %.not19.1, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.r = load i8, ptr %i.q, align 2, !tbaa !22
  %.not19.2 = icmp eq i8 %i.r, 0
  br i1 %.not19.2, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22
  %.not19.3 = icmp eq i8 %i.t, 0
  br i1 %.not19.3, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.v = load i8, ptr %i.u, align 2, !tbaa !22
  %.not19.4 = icmp eq i8 %i.v, 0
  br i1 %.not19.4, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.x = load i8, ptr %i.w, align 1, !tbaa !22
  %.not19.5 = icmp eq i8 %i.x, 0
  br i1 %.not19.5, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.z = load i8, ptr %i.y, align 2, !tbaa !22
  %.not19.6 = icmp eq i8 %i.z, 0
  br i1 %.not19.6, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !22
  %.not19.7 = icmp eq i8 %i.ab, 0
  br i1 %.not19.7, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !22
  %.not19.8 = icmp eq i8 %i.ad, 0
  br i1 %.not19.8, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22
  %.not19.9 = icmp eq i8 %i.af, 0
  br i1 %.not19.9, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !22
  %.not19.10 = icmp eq i8 %i.ah, 0
  br i1 %.not19.10, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !22
  %.not19.11 = icmp eq i8 %i.aj, 0
  br i1 %.not19.11, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !22
  %.not19.12 = icmp eq i8 %i.al, 0
  br i1 %.not19.12, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.an = load i8, ptr %i.am, align 1, !tbaa !22
  %.not19.13 = icmp eq i8 %i.an, 0
  br i1 %.not19.13, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !22
  %.not19.14 = icmp eq i8 %i.ap, 0
  br i1 %.not19.14, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !22
  %.not19.15 = icmp eq i8 %i.ar, 0
  br i1 %.not19.15, label %.loopexit.sink.split, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.q, %bb.b
  %.sink.in = phi ptr [ %.not.sroa.phi3951, %bb.b ], [ %.not.sroa.gep41, %bb.q ]
  %.sink = load i16, ptr %.sink.in, align 2, !tbaa !24
  %i.as = tail call noundef zeroext i16 @_Z10grpc_ntohst(i16 noundef zeroext %.sink)
  %i.at = zext i16 %i.as to i32
  store i32 %i.at, ptr %1, align 4, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %.critedge.i, %.preheader, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.b
  %.2 = phi i32 [ 0, %.critedge.i ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.preheader ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 1, %.loopexit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret i32 %.2
}

declare noundef zeroext i16 @_Z10grpc_ntohst(i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_Z28grpc_sockaddr_make_wildcardsiP21grpc_resolved_addressS0_(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z28grpc_sockaddr_make_wildcard4iP21grpc_resolved_address(i32 noundef %0, ptr noundef %1)
  tail call void @_Z28grpc_sockaddr_make_wildcard6iP21grpc_resolved_address(i32 noundef %0, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z28grpc_sockaddr_make_wildcard4iP21grpc_resolved_address(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.b, label %.critedge, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @.str.3) #19
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #20
  unreachable

.critedge:                                        ; preds = %bb.a
  %i.c = icmp samesign ugt i32 %0, 65535
  br i1 %i.c, label %bb.d, label %.critedge23, !prof !8

bb.d:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 206, ptr noundef nonnull @.str.4) #19
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24 unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit24: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
end_hunk_0
