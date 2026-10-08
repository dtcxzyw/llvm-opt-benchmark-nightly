Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IPAddressV6?download=true
inline.NumInlined: 1256
inline.NumDeleted: 592
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0

$_ZN3fmt2v96detail20write_escaped_stringIcNS0_8appenderEEET0_S4_NS0_17basic_string_viewIT_EE = comdat any

$_ZN3fmt2v96detail16write_escaped_cpINS0_8appenderEcEET_S4_RKNS1_18find_escape_resultIT0_EE = comdat any

$_ZN3fmt2v96detail15write_codepointILm2EcNS0_8appenderEEET1_S4_cj = comdat any

$_ZN3fmt2v96detail15write_codepointILm4EcNS0_8appenderEEET1_S4_cj = comdat any

$_ZN3fmt2v96detail15write_codepointILm8EcNS0_8appenderEEET1_S4_cj = comdat any

$_ZN5folly24IPAddressFormatExceptionCI2St13runtime_errorEPKc = comdat any

$_ZNK5folly9IPAddress6toJsonB5cxx11Ev = comdat any

$_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_29InvalidAddressFamilyExceptionEEEvOT_ = comdat any

$_ZN5folly29InvalidAddressFamilyExceptionC2EOS0_ = comdat any

$_ZN5folly29InvalidAddressFamilyExceptionD0Ev = comdat any

$_ZN5folly6detail5Bytes5toHexB5cxx11EPKhm = comdat any

$_ZN5folly6detail22fastIpv6ToBufferUnsafeERK8in6_addrPc = comdat any

$_ZN5folly4joinIA2_cSt5arrayIcLm32EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_ = comdat any

$_ZN5folly6detail18internalJoinAppendIcPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvT_T0_SB_RT1_ = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2EEEE4callIJNS_5RangeIPKcEEcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_ = comdat any

$_ZN5folly6detail5Bytes19longestCommonPrefixILm16EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_h = comdat any

$_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E = comdat any

$_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = comdat any

$_ZTIN5folly24IPAddressFormatExceptionE = comdat any

$_ZTSN5folly24IPAddressFormatExceptionE = comdat any

$_ZTVN5folly24IPAddressFormatExceptionE = comdat any

$_ZTIN5folly17BadExpectedAccessIvEE = comdat any

$_ZTSN5folly17BadExpectedAccessIvEE = comdat any

$_ZTVN5folly17BadExpectedAccessIvEE = comdat any

$_ZTIN5folly29InvalidAddressFamilyExceptionE = comdat any

$_ZTSN5folly29InvalidAddressFamilyExceptionE = comdat any

$_ZTVN5folly29InvalidAddressFamilyExceptionE = comdat any

$_ZZN5folly6detail5Bytes19longestCommonPrefixILm16EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_hE6kMasks = comdat any

@_ZN5folly11IPAddressV613PREFIX_TEREDOE = local_unnamed_addr constant i32 536936448, align 4
@_ZN5folly11IPAddressV611PREFIX_6TO4E = local_unnamed_addr constant i32 8194, align 4
@.str = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolIZNS0_23usingJEMallocOrTCMallocEvE11InitializerE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingJEMallocInitializerEE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE5flag_E = linkonce_odr local_unnamed_addr global { i8 } zeroinitializer, comdat, align 1
@_ZZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = linkonce_odr local_unnamed_addr global i8 0, comdat, align 1
@_ZGVZN5folly6detail14FastStaticBoolINS0_24UsingTCMallocInitializerEE7getSlowEvE2rv = linkonce_odr global i64 0, comdat, align 8
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTISt9exception = external constant ptr
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Invalid IPv6 address '\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@_ZTIN5folly24IPAddressFormatExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly24IPAddressFormatExceptionE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly24IPAddressFormatExceptionE = linkonce_odr constant [35 x i8] c"N5folly24IPAddressFormatExceptionE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly24IPAddressFormatExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly24IPAddressFormatExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly24IPAddressFormatExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTIN5folly17BadExpectedAccessIvEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly17BadExpectedAccessIvEE, ptr @_ZTISt9exception }, comdat, align 8
@_ZTSN5folly17BadExpectedAccessIvEE = linkonce_odr constant [31 x i8] c"N5folly17BadExpectedAccessIvEE\00", comdat, align 1
@_ZTVN5folly17BadExpectedAccessIvEE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly17BadExpectedAccessIvEE, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN5folly17BadExpectedAccessIvED0Ev, ptr @_ZNK5folly17BadExpectedAccessIvE4whatEv] }, comdat, align 8
@.str.8 = private unnamed_addr constant [20 x i8] c"bad expected access\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"Invalid IPv6 binary data: length must be 16 bytes, got \00", align 1
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 8
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.18", align 2
@.str.14 = private unnamed_addr constant [52 x i8] c"Invalid input. Should end with 'ip6.arpa'. Got '{}'\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Invalid input. Got '{}'\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"invalid type specifier\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"invalid fill character '{'\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"format specifier requires numeric argument\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.28 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"missing precision specifier\00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"precision not allowed for this argument type\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"negative width\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"width is not integer\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"negative precision\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"precision is not integer\00", align 1
@__const._ZN3fmt2v96detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt2v96detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt2v96detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt2v96detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.37 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"addr is not v4-to-v6-mapped\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Invalid IP '{}': not a 6to4 address\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"{{family:'AF_INET6', addr:'{}', hash:{}}}\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"Address '{}' is not a V6 address\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"{family:'AF_UNSPEC', addr:'', hash:0}\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"not empty\00", align 1
@_ZTIN5folly29InvalidAddressFamilyExceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly29InvalidAddressFamilyExceptionE, ptr @_ZTIN5folly24IPAddressFormatExceptionE }, comdat, align 8
@_ZTSN5folly29InvalidAddressFamilyExceptionE = linkonce_odr constant [40 x i8] c"N5folly29InvalidAddressFamilyExceptionE\00", comdat, align 1
@_ZTVN5folly29InvalidAddressFamilyExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly29InvalidAddressFamilyExceptionE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly29InvalidAddressFamilyExceptionD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast = internal global %"class.folly::IPAddressV6" zeroinitializer, align 4
@_ZGVZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast = internal global i64 0, align 8
@.str.46 = private unnamed_addr constant [8 x i8] c"ff02::1\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"numBits({}) > bitCount({})\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"Invalid address with hex '{}' with error {}\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"{}.ip6.arpa\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"Byte index must be <= {} for addresses of type: {}\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@.str.60 = private unnamed_addr constant [29 x i8] c"IPv6 addresses are 128 bits.\00", align 1
@_ZZN5folly6detail5Bytes19longestCommonPrefixILm16EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_hE6kMasks = linkonce_odr local_unnamed_addr constant %"struct.std::array.66" { [8 x i8] c"\80\C0\E0\F0\F8\FC\FE\FF" }, comdat, align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"Invalid mask length: {}. Mask length must be <= {}\00", align 1
@switch.table._ZN3fmt2v96detail23parse_presentation_typeIcEENS0_17presentation_typeET_ = private unnamed_addr constant [58 x i8] c"\12\00\08\06\00\00\0A\0C\0E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\07\05\0F\01\09\0B\0D\00\00\00\00\00\00\00\02\11\00\00\10\00\00\00\00\03", align 1

@_ZN5folly11IPAddressV6C1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly11IPAddressV6C2Ev
@_ZN5folly11IPAddressV6C1ENS_5RangeIPKcEE = unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5folly11IPAddressV6C2ENS_5RangeIPKcEE
@_ZN5folly11IPAddressV6C1ERK8in6_addr = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly11IPAddressV6C2ERK8in6_addr
@_ZN5folly11IPAddressV6C1ERK12sockaddr_in6 = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly11IPAddressV6C2ERK12sockaddr_in6
@_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5folly11IPAddressV6C2ERKSt5arrayIhLm16EE
@_ZN5folly11IPAddressV6C1ENS0_12LinkLocalTagENS_10MacAddressE = unnamed_addr alias void (ptr, i32, i64), ptr @_ZN5folly11IPAddressV6C2ENS0_12LinkLocalTagENS_10MacAddressE
@_ZN5folly11IPAddressV614AddressStorageC1ENS_10MacAddressE = unnamed_addr alias void (ptr, i64), ptr @_ZN5folly11IPAddressV614AddressStorageC2ENS_10MacAddressE

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN5folly10hash_valueERKNS_11IPAddressV6E(ptr noundef nonnull align 4 dereferenceable(18) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5folly11IPAddressV64hashEv(ptr noundef nonnull align 4 dereferenceable(18) %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5folly11IPAddressV64hashEv(ptr noundef nonnull align 4 dereferenceable(18) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.folly::IPAddress", align 4  ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load <8 x i8>, ptr %0, align 4
  %.fr = freeze <8 x i8> %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 4
  %.not.8.i = icmp eq i8 %i.e, 0
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.f = icmp eq i64 %.fr.scalar, 0
  %op.rdx = select i1 %i.f, i1 %.not.8.i, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.h = load i8, ptr %i.g, align 1
  %.not.9.i = icmp eq i8 %i.h, 0
  %or.cond = select i1 %op.rdx, i1 %.not.9.i, i1 false
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.j = load i8, ptr %i.i, align 2
  %i.k = icmp eq i8 %i.j, -1
  %or.cond8 = select i1 %or.cond, i1 %i.k, i1 false
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, -1
  %or.cond11 = select i1 %or.cond8, i1 %i.n, i1 false
  br i1 %or.cond11, label %bb.b, label %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZN5folly9IPAddressC1ERKNS_11IPAddressV6E(ptr noundef nonnull align 4 dereferenceable(22) %1, ptr noundef nonnull align 4 dereferenceable(18) %0) #33
  %i.o = call i32 @_ZN5folly9IPAddress10createIPv4ERKS0_(ptr noundef nonnull align 4 dereferenceable(22) %1) ; 4 uses
  %.sroa.4.0.extract.trunc.a = zext i32 %i.o to i64
  %.sroa.5.0.extract.shift.a = lshr i32 %i.o, 8
  %.sroa.5.0.extract.trunc.a = zext nneg i32 %.sroa.5.0.extract.shift.a to i64
  %.sroa.6.0.extract.shift = lshr i32 %i.o, 16
  %.sroa.6.0.extract.trunc = zext nneg i32 %.sroa.6.0.extract.shift to i64
  %sext = shl i64 %.sroa.4.0.extract.trunc.a, 56
  %i.p = ashr exact i64 %sext, 56
  %i.q = xor i64 %i.p, 84696351
  %i.r = mul nsw i64 %i.q, 16777619
  %sext2 = shl i64 %.sroa.5.0.extract.trunc.a, 56
  %i.s = ashr exact i64 %sext2, 56
  %i.t = xor i64 %i.r, %i.s
  %i.u = mul i64 %i.t, 16777619
  %sext3 = shl i64 %.sroa.6.0.extract.trunc, 56
  %i.v = ashr exact i64 %sext3, 56
  %i.w = xor i64 %i.u, %i.v
  %2 = ashr i32 %i.o, 24
  %3 = trunc i64 %i.w to i32
  %.tr = mul i32 %3, 16777619
  %4 = xor i32 %2, %.tr
  %5 = xor i32 %4, 2
  %6 = zext i32 %5 to i64
  %i.x = mul i64 %6, -7070675565921424023         ; 2 uses
  %i.y = lshr i64 %i.x, 47
  %i.z = xor i64 %i.x, %i.y
  %i.aa = xor i64 %i.z, 2
  %i.ab = mul i64 %i.aa, -7070675565921424023     ; 2 uses
  %i.ac = lshr i64 %i.ab, 47
  %i.ad = xor i64 %i.ac, %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.c

_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 0, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 0, ptr %i.b, align 8, !tbaa !21
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef nonnull %0, i64 noundef 16, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !21  ; 2 uses
  %i.af = load i64, ptr %i.b, align 8, !tbaa !21
  %i.ag = xor i64 %i.af, %i.ae
  %i.ah = mul i64 %i.ag, -7070675565921424023     ; 2 uses
  %i.ai = lshr i64 %i.ah, 47
  %i.aj = xor i64 %i.ae, %i.ai
  %i.ak = xor i64 %i.aj, %i.ah
  %i.al = mul i64 %i.ak, -7070675565921424023     ; 2 uses
  %i.am = lshr i64 %i.al, 47
  %i.an = xor i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, -7070675565921424023
  %i.ap = xor i64 %i.ao, 10
  %i.aq = mul i64 %i.ap, -7070675565921424023     ; 2 uses
  %i.ar = lshr i64 %i.aq, 47
  %i.as = xor i64 %i.aq, %i.ar
  %i.at = xor i64 %i.as, 10
  %i.au = mul i64 %i.at, -7070675565921424023     ; 2 uses
  %i.av = lshr i64 %i.au, 47
  %i.aw = xor i64 %i.av, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.c

bb.c:                                             ; preds = %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread, %bb.b
  %.0.in = phi i64 [ %i.ad, %bb.b ], [ %i.aw, %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread ]
  %.0 = mul i64 %.0.in, -7070675565921424023
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN5follylsERSoRKNS_11IPAddressV6E(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(18) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @_ZNK5folly11IPAddressV63strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(18) %1)
  %i.a = load ptr, ptr %2, align 8, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !27
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.a, i64 noundef %i.c)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.b ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.h = load i64, ptr %i.f, align 8, !tbaa !28
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret ptr %0

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.n = load i64, ptr %i.l, align 8, !tbaa !28
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV63strB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(18) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.fmt::v9::format_arg_store.57", align 16 ; 5 uses
  %i.a = alloca [63 x i8], align 16               ; 9 uses
  %3 = alloca %struct.in6_addr, align 16          ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = load <2 x i64>, ptr %1, align 4
  store <2 x i64> %i.b, ptr %3, align 16
  %i.c = call ptr @inet_ntop(i32 noundef 10, ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef 46) #33
  %.not = icmp eq ptr %i.c, null
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  invoke void @_ZN5folly6detail5Bytes5toHexB5cxx11EPKhm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull %1, i64 noundef 16)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.e = tail call ptr @__errno_location() #35
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  invoke void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %i.f)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33, !noalias !145
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.g = load ptr, ptr %5, align 8, !tbaa !26, !noalias !146
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !27, !noalias !146
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = load ptr, ptr %6, align 8, !tbaa !26, !noalias !146
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27, !noalias !146
  %i.n = ptrtoint ptr %i.k to i64
  %.sroa.04.sroa.4.0.insert.ext.i = zext i64 %i.i to i128
  %.sroa.04.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.04.sroa.4.0.insert.ext.i, 64
  %.sroa.04.sroa.0.0.insert.ext.i = zext i64 %i.j to i128
  %.sroa.04.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.04.sroa.4.0.insert.shift.i, %.sroa.04.sroa.0.0.insert.ext.i
  store i128 %.sroa.04.sroa.0.0.insert.insert.i, ptr %2, align 16, !tbaa !28, !alias.scope !146
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.4.0.insert.ext.i = zext i64 %i.m to i128
  %.sroa.0.sroa.4.0.insert.shift.i = shl nuw i128 %.sroa.0.sroa.4.0.insert.ext.i, 64
  %.sroa.0.sroa.0.0.insert.ext.i = zext i64 %i.n to i128
  %.sroa.0.sroa.0.0.insert.insert.i = or disjoint i128 %.sroa.0.sroa.4.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  store i128 %.sroa.0.sroa.0.0.insert.insert.i, ptr %i.o, align 16, !tbaa !28, !alias.scope !146
  invoke void @_ZN3fmt2v97vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.51, i64 43, i64 221, ptr nonnull %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33, !noalias !145
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.d, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.t unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37.thread: ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ true, %bb.d ]  ; 2 uses
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.v = load i64, ptr %i.t, align 8, !tbaa !28
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.g ] ; 4 uses
  %.1 = phi i1 [ true, %bb.f ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.g ] ; 2 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !26     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !28
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
end_hunk_0
