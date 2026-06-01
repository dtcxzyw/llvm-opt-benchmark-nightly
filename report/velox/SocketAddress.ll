inline.NumInlined: 541
inline.NumDeleted: 225
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.folly::InvalidAddressFamilyException" = type { %"class.folly::IPAddressFormatException" }
%"class.folly::IPAddressFormatException" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.7 }
%union.anon.7 = type { ptr }
%"class.folly::IPAddress" = type <{ %"union.folly::IPAddress::IPAddressV46", i16, [2 x i8] }>
%"union.folly::IPAddress::IPAddressV46" = type { %"class.folly::IPAddressV4", [16 x i8] }
%"class.folly::IPAddressV4" = type { %"union.folly::IPAddressV4::AddressStorage" }
%"union.folly::IPAddressV4::AddressStorage" = type { %struct.in_addr }
%struct.in_addr = type { i32 }
%"struct.fmt::v11::detail::format_arg_store.27" = type { [3 x %"class.fmt::v11::detail::value"] }
%"class.fmt::v11::detail::value" = type { %union.anon.16 }
%union.anon.16 = type { i128 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.14 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.14 = type { i64, [8 x i8] }
%"struct.(anonymous namespace)::HostAndPort" = type { ptr, ptr, ptr }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%"struct.fmt::v11::detail::format_arg_store" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.folly::IPAddressV6" = type <{ %"union.folly::IPAddressV6::AddressStorage", i16, [2 x i8] }>
%"union.folly::IPAddressV6::AddressStorage" = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%"class.std::invalid_argument" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.std::pair" = type { %"class.folly::IPAddress", i8, [3 x i8] }
%"class.std::system_error" = type { %"class.std::runtime_error", %"class.std::error_code" }
%"class.std::error_code" = type { i32, ptr }
%"struct.fmt::v11::detail::format_arg_store.29" = type { [1 x %"class.fmt::v11::detail::value"] }

$__clang_call_terminate = comdat any

$_ZNSt18bad_variant_accessD0Ev = comdat any

$_ZNKSt18bad_variant_access4whatEv = comdat any

$_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_29InvalidAddressFamilyExceptionEEEvOT_ = comdat any

$_ZN5folly29InvalidAddressFamilyExceptionC2EOS0_ = comdat any

$_ZN5folly29InvalidAddressFamilyExceptionD0Ev = comdat any

$_ZN5folly29InvalidAddressFamilyExceptionC2Et = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZN5folly6detail16throw_exception_ISt16invalid_argumentJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt16invalid_argumentEEvOT_ = comdat any

$_ZNSt16invalid_argumentC2EOS_ = comdat any

$_ZNSt12system_errorC2EiRKNSt3_V214error_categoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5folly16throwSystemErrorIJRA23_KcEEEvDpOT_ = comdat any

$_ZN5folly24throwSystemErrorExplicitEiPKc = comdat any

$_ZN5folly15throw_exceptionISt12system_errorEEvOT_ = comdat any

$_ZNSt12system_errorC2ERKS_ = comdat any

$_ZNSt12system_errorC2ESt10error_codePKc = comdat any

$_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJtEEEvDpT0_ = comdat any

$_ZTISt18bad_variant_access = comdat any

$_ZTSSt18bad_variant_access = comdat any

$_ZTVSt18bad_variant_access = comdat any

$_ZTIN5folly29InvalidAddressFamilyExceptionE = comdat any

$_ZTSN5folly29InvalidAddressFamilyExceptionE = comdat any

$_ZTIN5folly24IPAddressFormatExceptionE = comdat any

$_ZTSN5folly24IPAddressFormatExceptionE = comdat any

$_ZTVN5folly29InvalidAddressFamilyExceptionE = comdat any

@.str = private unnamed_addr constant [31 x i8] c"std::get: variant is valueless\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt18bad_variant_access = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"empty address\00", align 1
@_ZTIN5folly29InvalidAddressFamilyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly29InvalidAddressFamilyExceptionE, ptr @_ZTIN5folly24IPAddressFormatExceptionE }, comdat, align 8
@_ZTSN5folly29InvalidAddressFamilyExceptionE = linkonce_odr constant [40 x i8] c"N5folly29InvalidAddressFamilyExceptionE\00", comdat, align 1
@_ZTIN5folly24IPAddressFormatExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly24IPAddressFormatExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTSN5folly24IPAddressFormatExceptionE = linkonce_odr constant [35 x i8] c"N5folly24IPAddressFormatExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly29InvalidAddressFamilyExceptionE = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly29InvalidAddressFamilyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly29InvalidAddressFamilyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"not empty\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"expected a host and port string of the form \22<host>:<port>\22\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"AF_INET\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"AF_INET6\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"AF_UNIX\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"AF_UNSPEC\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"socket path too large to fit into sockaddr_un\00", align 1
@.str.10 = private unnamed_addr constant [113 x i8] c"SocketAddress::setFromSockaddr(): the address length must be explicitly specified when setting AF_UNIX addresses\00", align 1
@.str.11 = private unnamed_addr constant [73 x i8] c"SocketAddress::setFromSockaddr() called with unsupported address type {}\00", align 1
@.str.12 = private unnamed_addr constant [77 x i8] c"SocketAddress::setFromSockaddr() called with length too short for a sockaddr\00", align 1
@.str.13 = private unnamed_addr constant [80 x i8] c"SocketAddress::setFromSockaddr() called with length too short for a sockaddr_in\00", align 1
@.str.14 = private unnamed_addr constant [81 x i8] c"SocketAddress::setFromSockaddr() called with length too short for a sockaddr_in6\00", align 1
@.str.15 = private unnamed_addr constant [70 x i8] c"SocketAddress::setFromSockaddr() called with unsupported address type\00", align 1
@.str.16 = private unnamed_addr constant [79 x i8] c"SocketAddress::setFromSockaddr() called with length too long for a sockaddr_un\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Address family \00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c" is not AF_INET or AF_INET6\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"SocketAddress::getActualSize() called with unrecognized address family\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Can't get address str for non ip address\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"SocketAddress::getPort() called on non-IP address\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"SocketAddress::setPort() called on non-IP address\00", align 1
@.str.30 = private unnamed_addr constant [72 x i8] c"convertToIPv4() called on an address that is not an IPv4-mapped address\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"SocketAddress: attempting to get path for a non-Unix address\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"<anonymous unix address>\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"<abstract unix address>\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"<uninitialized address>\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c":%u\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"]:%u\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"<unknown address family %d>\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"SocketAddress: unsupported address family for comparison\00", align 1
@_ZTVSt16invalid_argument = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.39 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"Failed to resolve address for '{}': {} (error={})\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@_ZTISt12system_error = external constant ptr
@.str.42 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVSt12system_error = external unnamed_addr constant { [5 x ptr] }, align 8
@.str.44 = private unnamed_addr constant [23 x i8] c"setFromSocket() failed\00", align 1
@.str.45 = private unnamed_addr constant [65 x i8] c"SocketAddress: attempting to get IP address for a non-IP address\00", align 1
@.str.46 = private unnamed_addr constant [49 x i8] c"getnameinfo() failed in getIpString() error = {}\00", align 1
@.str.48 = private unnamed_addr constant [88 x i8] c"SocketAddress: attempted to set a Unix socket with a length too short for a sockaddr_un\00", align 1
@.str.49 = private unnamed_addr constant [56 x i8] c"SocketAddress: unsupported address family for comparing\00", align 1
@switch.table._ZN5folly13SocketAddress17getFamilyNameFromEPK8sockaddrPKc = private unnamed_addr constant [11 x ptr] [ptr @.str.8, ptr @.str.7, ptr @.str.5, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.6], align 8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly13SocketAddress16isPrivateAddressEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit, label %_ZNK5folly9IPAddress9isPrivateEv.exit

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i16, ptr %i.d, align 4, !tbaa !13
  switch i16 %i.e, label %bb.b [
    i16 2, label %_ZNK5folly9IPAddress4asV4Ev.exit.i.i
    i16 10, label %_ZNK5folly9IPAddress4asV6Ev.exit.i.i
    i16 0, label %_ZNK5folly9IPAddress6asNoneEv.exit.i.i
  ]

_ZNK5folly9IPAddress4asV4Ev.exit.i.i:             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.f = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV49isPrivateEv(ptr noundef nonnull align 4 dereferenceable(22) %0)
  br label %_ZNK5folly9IPAddress9isPrivateEv.exit

_ZNK5folly9IPAddress4asV6Ev.exit.i.i:             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.g = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV69isPrivateEv(ptr noundef nonnull align 4 dereferenceable(22) %0)
  br label %_ZNK5folly9IPAddress9isPrivateEv.exit

bb.b:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  tail call void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.3) #5
  unreachable

_ZNK5folly9IPAddress6asNoneEv.exit.i.i:           ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  tail call void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #5
  unreachable

_ZNK5folly9IPAddress9isPrivateEv.exit:            ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit.i.i, %_ZNK5folly9IPAddress4asV4Ev.exit.i.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.f, %_ZNK5folly9IPAddress4asV4Ev.exit.i.i ], [ %i.g, %_ZNK5folly9IPAddress4asV6Ev.exit.i.i ]
  ret i1 %.0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef zeroext i1 @_ZNK5folly11IPAddressV49isPrivateEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK5folly11IPAddressV69isPrivateEv(ptr noundef nonnull align 4 dereferenceable(18)) local_unnamed_addr #9

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::InvalidAddressFamilyException", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly29InvalidAddressFamilyExceptionE, i64 16), ptr %1, align 8, !tbaa !21
  invoke void @_ZN5folly15throw_exceptionINS_29InvalidAddressFamilyExceptionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #5
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_29InvalidAddressFamilyExceptionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 2 uses
  tail call void @_ZN5folly29InvalidAddressFamilyExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly29InvalidAddressFamilyExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29InvalidAddressFamilyExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #27
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly29InvalidAddressFamilyExceptionE, i64 16), ptr %0, align 8, !tbaa !21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29InvalidAddressFamilyExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly13SocketAddress17isLoopbackAddressEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit, label %_ZNK5folly9IPAddress10isLoopbackEv.exit

_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i16, ptr %i.d, align 4, !tbaa !13
  switch i16 %i.e, label %bb.b [
    i16 2, label %_ZNK5folly9IPAddress4asV4Ev.exit.i.i
    i16 10, label %_ZNK5folly9IPAddress4asV6Ev.exit.i.i
    i16 0, label %_ZNK5folly9IPAddress6asNoneEv.exit.i.i
  ]

_ZNK5folly9IPAddress4asV4Ev.exit.i.i:             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.f = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV410isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(22) %0)
  br label %_ZNK5folly9IPAddress10isLoopbackEv.exit

_ZNK5folly9IPAddress4asV6Ev.exit.i.i:             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  %i.g = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV610isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(22) %0)
  br label %_ZNK5folly9IPAddress10isLoopbackEv.exit

bb.b:                                             ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  tail call void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.3) #5
  unreachable

_ZNK5folly9IPAddress6asNoneEv.exit.i.i:           ; preds = %_ZSt3getIN5folly13SocketAddress6IPAddrEJS2_NS1_16ExternalUnixAddrENS1_9VsockAddrEEERKT_RKSt7variantIJDpT0_EE.exit
  tail call void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.2) #5
  unreachable

_ZNK5folly9IPAddress10isLoopbackEv.exit:          ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit.i.i, %_ZNK5folly9IPAddress4asV4Ev.exit.i.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ %i.f, %_ZNK5folly9IPAddress4asV4Ev.exit.i.i ], [ %i.g, %_ZNK5folly9IPAddress4asV6Ev.exit.i.i ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK5folly11IPAddressV410isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK5folly11IPAddressV610isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(18)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress15setFromHostPortEPKct(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = zext i16 %2 to i32
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 6, ptr noundef nonnull @.str.39, i32 noundef %i.b) #27 ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111HostAndPortC2EPKcb:bb.a
bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str.4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #27
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.b
  store ptr %1, ptr %i.a, align 8, !tbaa !50
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = tail call noalias ptr @strdup(ptr noundef nonnull %1) #27 ; 6 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !52
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = ptrtoint ptr %1 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.k ; 3 uses
  store i8 0, ptr %i.l, align 1, !tbaa !29
  store ptr %i.g, ptr %0, align 8, !tbaa !53
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.a, align 8, !tbaa !50
  %i.n = load i8, ptr %i.g, align 1, !tbaa !29
  %i.o = icmp eq i8 %i.n, 91
  br i1 %i.o, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 -1 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !29
  %i.r = icmp eq i8 %i.q, 93
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.p, align 1, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.s, ptr %0, align 8, !tbaa !53
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.f
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress13setFromIpPortEPKc(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::HostAndPort", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call fastcc void @_ZN12_GLOBAL__N_111HostAndPortC2EPKcb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %1, i1 noundef zeroext true)
  %i.a = load ptr, ptr %2, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = invoke noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nonnull align 8 poison, ptr noundef %i.a, ptr noundef %i.c, i32 noundef 4)
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  invoke void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.f, i32 noundef %i.h)
          to label %_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo.exit unwind label %bb.d

_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo.exit: ; preds = %bb.b
  tail call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load ptr, ptr %i.i, align 8, !tbaa !52
  tail call void @free(ptr noundef %.val7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load ptr, ptr %i.l, align 8, !tbaa !52
  tail call void @free(ptr noundef %.val6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress15setFromHostPortEPKc(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::HostAndPort", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call fastcc void @_ZN12_GLOBAL__N_111HostAndPortC2EPKcb(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %1, i1 noundef zeroext true)
  %i.a = load ptr, ptr %2, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = invoke noundef ptr @_ZN5folly13SocketAddress11getAddrInfoEPKcS2_i(ptr nonnull align 8 poison, ptr noundef %i.a, ptr noundef %i.c, i32 noundef 0)
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27
  invoke void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.f, i32 noundef %i.h)
          to label %_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo.exit unwind label %bb.d

_ZN5folly13SocketAddress15setFromAddrInfoEPK8addrinfo.exit: ; preds = %bb.b
  tail call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val7 = load ptr, ptr %i.i, align 8, !tbaa !52
  tail call void @free(ptr noundef %.val7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @freeaddrinfo(ptr noundef nonnull %i.d) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val6 = load ptr, ptr %i.l, align 8, !tbaa !52
  tail call void @free(ptr noundef %.val6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 65536) i32 @_ZN5folly13SocketAddress11getPortFromEPK8sockaddr(ptr noundef readonly captures(none) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !54
  switch i16 %i.a, label %bb.b [
    i16 2, label %.sink.split
    i16 10, label %.sink.split
  ]

.sink.split:                                      ; preds = %bb.a, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !30
  %rev.i3 = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  %i.d = zext i16 %rev.i3 to i32
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.d, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZN5folly13SocketAddress17getFamilyNameFromEPK8sockaddrPKc(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(ret: address, provenance) %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !54     ; 3 uses
  %2 = icmp ult i16 %i.a, 11
  %switch.shifted = lshr i16 1031, %i.a
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %2, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = zext nneg i16 %i.a to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5folly13SocketAddress17getFamilyNameFromEPK8sockaddrPKc, i64 %3
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %switch.load, %bb.b ], [ %1, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress11setFromPathENS_5RangeIPKcEE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = icmp ugt i64 %i.c, 108
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.9)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #27
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !11
  switch i8 %i.h, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i [
    i8 1, label %._ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit_crit_edge
    i8 -1, label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i
  ], !prof !56

._ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i: ; preds = %bb.e
  store i8 -1, ptr %i.g, align 8, !tbaa !11
  br label %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i

_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i: ; preds = %bb.e, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5folly13SocketAddress6IPAddrENS4_16ExternalUnixAddrENS4_9VsockAddrEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S6_S7_EEEEDcOT0_DpOT1_.exit.i.i.i.i
  %i.i = tail call noalias noundef nonnull dereferenceable(110) ptr @_Znwm(i64 noundef 110) #33 ; 3 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !32
  store i16 1, ptr %i.i, align 2, !tbaa !57
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !59
  store i8 1, ptr %i.g, align 8, !tbaa !11
  br label %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit

_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit: ; preds = %._ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit_crit_edge, %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i
  %i.k = phi ptr [ %.pre, %._ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit_crit_edge ], [ %i.i, %_ZNSt7variantIJN5folly13SocketAddress6IPAddrENS1_16ExternalUnixAddrENS1_9VsockAddrEEE7emplaceILm1EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS2_S3_S4_EE4typeEDpT0_EERSA_E4typeEDpOSB_.exit.i ]
  %i.l = trunc nuw nsw i64 %i.c to i32
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.o, ptr align 1 %1, i64 %i.c, i1 false)
  %.not = icmp eq i64 %i.c, 108
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.c
  store i8 0, ptr %i.r, align 1, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZSt3getIN5folly13SocketAddress16ExternalUnixAddrEJNS1_6IPAddrES2_NS1_9VsockAddrEEERT_RSt7variantIJDpT0_EE.exit
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress18setFromPeerAddressENS_13NetworkSocketE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.sockaddr_storage, align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 128, ptr %i.a, align 4, !tbaa !7
  %i.b = call noundef i32 @_ZN5folly6netops11getpeernameENS_13NetworkSocketEP8sockaddrPj(i32 %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a), !inline_history !60
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5folly13SocketAddress13setFromSocketENS_13NetworkSocketEPFiS1_P8sockaddrPjE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5folly16throwSystemErrorIJRA23_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(23) @.str.44) #30
  unreachable

_ZN5folly13SocketAddress13setFromSocketENS_13NetworkSocketEPFiS1_P8sockaddrPjE.exit: ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  call void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %2, i32 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress13setFromSocketENS_13NetworkSocketEPFiS1_P8sockaddrPjE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %struct.sockaddr_storage, align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 128, ptr %i.a, align 4, !tbaa !7
  %i.b = call noundef i32 %2(i32 %1, ptr noundef nonnull %3, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5folly16throwSystemErrorIJRA23_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(23) @.str.44) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  call void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %3, i32 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

declare noundef i32 @_ZN5folly6netops11getpeernameENS_13NetworkSocketEP8sockaddrPj(i32, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress19setFromLocalAddressENS_13NetworkSocketE(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, i32 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.sockaddr_storage, align 8   ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 128, ptr %i.a, align 4, !tbaa !7
  %i.b = call noundef i32 @_ZN5folly6netops11getsocknameENS_13NetworkSocketEP8sockaddrPj(i32 %1, ptr noundef nonnull %2, ptr noundef nonnull %i.a), !inline_history !60
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5folly13SocketAddress13setFromSocketENS_13NetworkSocketEPFiS1_P8sockaddrPjE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN5folly16throwSystemErrorIJRA23_KcEEEvDpOT_(ptr noundef nonnull align 1 dereferenceable(23) @.str.44) #30
  unreachable

_ZN5folly13SocketAddress13setFromSocketENS_13NetworkSocketEPFiS1_P8sockaddrPjE.exit: ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4, !tbaa !7
  call void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddrj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %2, i32 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret void
}

declare noundef i32 @_ZN5folly6netops11getsocknameENS_13NetworkSocketEP8sockaddrPj(i32, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define void @_ZN5folly13SocketAddress15setFromSockaddrEPK8sockaddr(ptr noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %.sroa.0 = alloca %"class.folly::IPAddress", align 4 ; 4 uses
  %4 = alloca %"class.folly::IPAddress", align 4  ; 5 uses
  %i.a = load i16, ptr %1, align 2, !tbaa !54
  switch i16 %i.a, label %bb.e [
    i16 2, label %bb.j
    i16 10, label %bb.j
    i16 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.10)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #27
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !61
  %i.e = load i16, ptr %1, align 2, !tbaa !30, !noalias !61
  %i.f = zext i16 %i.e to i32
  store i32 %i.f, ptr %2, align 16, !tbaa !29, !noalias !61
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.11, i64 72, i64 2, ptr nonnull %2)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !61
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #30
          to label %bb.n unwind label %bb.h
end_hunk_1
