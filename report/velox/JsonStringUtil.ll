inline.NumInlined: 158
inline.NumDeleted: 41
begin_hunk_0
%"struct.std::array" = type { [128 x i8] }
%"struct.facebook::velox::detail::VeloxCheckFailArgs" = type { ptr, i64, ptr, ptr, ptr, ptr, i8 }
%"class.folly::BasicFixedString" = type { [5 x i8], i64 }
%"class.folly::BasicFixedString.0" = type { [17 x i8], i64 }
%"struct.std::array.4" = type { [6 x %"class.std::basic_string_view"] }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.fmt::v11::detail::format_arg_store" = type { [1 x %"class.fmt::v11::detail::value"] }
%"class.fmt::v11::detail::value" = type { %union.anon.3 }
%union.anon.3 = type { i128 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN8facebook5velox9functions31getInvalidUTF8ReplacementStringEPKcii = comdat any

$_ZN8facebook5velox12error_source16kErrorSourceUserE = comdat any

$_ZN8facebook5velox10error_code16kInvalidArgumentE = comdat any

@_ZN8facebook5velox12_GLOBAL__N_112asciiEscapesE = internal global %"struct.std::array" zeroinitializer, align 1
@_ZN8facebook5velox12_GLOBAL__N_117encodedAsciiSizesE = internal global %"struct.std::array" zeroinitializer, align 1
@_ZZN8facebook5velox21normalizeForJsonParseEPKcmPcE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 347, ptr @.str.2, ptr @.str.3, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str = private unnamed_addr constant [78 x i8] c"/opt-bench/work/velox/velox/velox/functions/prestosql/json/JsonStringUtil.cpp\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"normalizeForJsonParse\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"start + 1 != end\00", align 1
@_ZN8facebook5velox12error_source16kErrorSourceUserE = linkonce_odr constant %"class.folly::BasicFixedString" { [5 x i8] c"USER\00", i64 4 }, comdat, align 8
@_ZN8facebook5velox10error_code16kInvalidArgumentE = linkonce_odr constant %"class.folly::BasicFixedString.0" { [17 x i8] c"INVALID_ARGUMENT\00", i64 16 }, comdat, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Invalid escape sequence at the end of string\00", align 1
@_ZZN8facebook5velox21normalizeForJsonParseEPKcmPcE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 356, ptr @.str.2, ptr @.str.5, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"start + 6 <= end\00", align 1
@_ZZN8facebook5velox26normalizedSizeForJsonParseEPKcmE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 442, ptr @.str.6, ptr @.str.3, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"normalizedSizeForJsonParse\00", align 1
@_ZZN8facebook5velox26normalizedSizeForJsonParseEPKcmE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 450, ptr @.str.6, ptr @.str.5, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@_ZZN8facebook5velox28unescapeSizeForJsonFunctionsEPKcmbE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 514, ptr @.str.7, ptr @.str.3, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"unescapeSizeForJsonFunctions\00", align 1
@_ZZN8facebook5velox28unescapeSizeForJsonFunctionsEPKcmbE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 522, ptr @.str.7, ptr @.str.5, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@_ZZN8facebook5velox28unescapeSizeForJsonFunctionsEPKcmbE18veloxCheckFailArgs_1 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 529, ptr @.str.7, ptr @.str.8, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZN8facebook5velox28unescapeSizeForJsonFunctionsEPKcmbE18veloxCheckFailArgs_2 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 533, ptr @.str.7, ptr @.str.8, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@_ZZN8facebook5velox24unescapeForJsonFunctionsEPKcmPcbE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 613, ptr @.str.9, ptr @.str.3, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"unescapeForJsonFunctions\00", align 1
@_ZZN8facebook5velox24unescapeForJsonFunctionsEPKcmPcbE18veloxCheckFailArgs_0 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 621, ptr @.str.9, ptr @.str.5, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@_ZZN8facebook5velox24unescapeForJsonFunctionsEPKcmPcbE18veloxCheckFailArgs_1 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 628, ptr @.str.9, ptr @.str.8, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@_ZZN8facebook5velox24unescapeForJsonFunctionsEPKcmPcbE18veloxCheckFailArgs_2 = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 632, ptr @.str.9, ptr @.str.8, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@_ZZN8facebook5velox12_GLOBAL__N_110digitToHexEcE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 46, ptr @.str.10, ptr @.str.8, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"digitToHex\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Invalid escape digit: {}\00", align 1
@_ZN8facebook5velox9functionsL28kReplacementCharacterStringsE = internal constant %"struct.std::array.4" { [6 x %"class.std::basic_string_view"] [%"class.std::basic_string_view" { i64 3, ptr @.str.12 }, %"class.std::basic_string_view" { i64 6, ptr @.str.13 }, %"class.std::basic_string_view" { i64 9, ptr @.str.14 }, %"class.std::basic_string_view" { i64 12, ptr @.str.15 }, %"class.std::basic_string_view" { i64 15, ptr @.str.16 }, %"class.std::basic_string_view" { i64 18, ptr @.str.17 }] }, align 8
@.str.12 = private unnamed_addr constant [4 x i8] c"\EF\BF\BD\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"\EF\BF\BD\EF\BF\BD\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"\EF\BF\BD\EF\BF\BD\EF\BF\BD\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\EF\BF\BD\00", align 1
@_ZZN8facebook5velox12_GLOBAL__N_114getEscapedCharESt17basic_string_viewIcSt11char_traitsIcEERmE18veloxCheckFailArgs = internal constant %"struct.facebook::velox::detail::VeloxCheckFailArgs" { ptr @.str, i64 243, ptr @.str.18, ptr @.str.8, ptr @_ZN8facebook5velox12error_source16kErrorSourceUserE, ptr @_ZN8facebook5velox10error_code16kInvalidArgumentE, i8 0 }, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"getEscapedChar\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_JsonStringUtil.cpp, ptr null }]
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8facebook5velox21testingEncodeUtf16HexEDiRPc(i32 noundef zeroext %0, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ugt i32 %0, 65535
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %0, 983040                       ; 2 uses
  %i.c = lshr i32 %i.b, 10
  %i.d = trunc i32 %i.c to i8                     ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.f, ptr %1, align 8, !tbaa !7
  store i8 92, ptr %i.e, align 1, !tbaa !10
  %i.g = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !7
  store i8 117, ptr %i.g, align 1, !tbaa !10
  %i.i = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.j, ptr %1, align 8, !tbaa !7
  store i8 68, ptr %i.i, align 1, !tbaa !10
  %i.k = lshr i32 %i.b, 18
  %i.l = trunc i32 %i.k to i8
  %i.m = and i8 %i.l, 3                           ; 3 uses
  %i.n = icmp samesign ult i8 %i.m, 2
  %i.o = or disjoint i8 %i.m, 56
  %i.p = add nuw nsw i8 %i.m, 63
  %i.q = select i1 %i.n, i8 %i.o, i8 %i.p
  %i.r = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.s, ptr %1, align 8, !tbaa !7
  store i8 %i.q, ptr %i.r, align 1, !tbaa !10
  %i.t = lshr i8 %i.d, 4                          ; 2 uses
  %i.u = icmp ult i8 %i.d, -96
  %i.v = or disjoint i8 %i.t, 48
  %i.w = add nuw nsw i8 %i.t, 55
  %i.x = select i1 %i.u, i8 %i.v, i8 %i.w
  %i.y = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %1, align 8, !tbaa !7
  store i8 %i.x, ptr %i.y, align 1, !tbaa !10
  %i.aa = and i8 %i.d, 15                         ; 3 uses
  %i.ab = icmp samesign ult i8 %i.aa, 10
  %i.ac = or disjoint i8 %i.aa, 48
  %i.ad = add nuw nsw i8 %i.aa, 55
  %i.ae = select i1 %i.ab, i8 %i.ac, i8 %i.ad
  %i.af = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %1, align 8, !tbaa !7
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !10
  %i.ah = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.ai, ptr %1, align 8, !tbaa !7
  store i8 92, ptr %i.ah, align 1, !tbaa !10
  %i.aj = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %1, align 8, !tbaa !7
  store i8 117, ptr %i.aj, align 1, !tbaa !10
  %i.al = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store ptr %i.am, ptr %1, align 8, !tbaa !7
  store i8 68, ptr %i.al, align 1, !tbaa !10
  %i.an = lshr i32 %0, 8
  %i.ao = trunc i32 %i.an to i8
  %i.ap = and i8 %i.ao, 3
  %i.aq = add nuw nsw i8 %i.ap, 67
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

bb.c:                                             ; preds = %bb.a
  %i.ar = trunc nuw i32 %0 to i16
  %i.as = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %1, align 8, !tbaa !7
  store i8 92, ptr %i.as, align 1, !tbaa !10
  %i.au = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %1, align 8, !tbaa !7
  store i8 117, ptr %i.au, align 1, !tbaa !10
  %i.aw = lshr i16 %i.ar, 12
  %i.ax = trunc nuw nsw i16 %i.aw to i8           ; 2 uses
  %i.ay = icmp samesign ult i32 %0, 40960
  %i.az = or disjoint i8 %i.ax, 48
  %i.ba = add nuw nsw i8 %i.ax, 55
  %i.bb = select i1 %i.ay, i8 %i.az, i8 %i.ba
  %i.bc = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %1, align 8, !tbaa !7
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !10
  %i.be = lshr i32 %0, 8
  %i.bf = trunc nuw i32 %i.be to i8
  %i.bg = and i8 %i.bf, 15                        ; 3 uses
  %i.bh = icmp samesign ult i8 %i.bg, 10
  %i.bi = or disjoint i8 %i.bg, 48
  %i.bj = add nuw nsw i8 %i.bg, 55
  %i.bk = select i1 %i.bh, i8 %i.bi, i8 %i.bj
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.b, %bb.c
  %.sink = phi i8 [ %i.aq, %bb.b ], [ %i.bk, %bb.c ]
  %i.bl = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bm, ptr %1, align 8, !tbaa !7
  store i8 %.sink, ptr %i.bl, align 1, !tbaa !10
  %.sink18 = trunc i32 %0 to i8                   ; 3 uses
  %i.bn = lshr i8 %.sink18, 4                     ; 2 uses
  %i.bo = icmp ult i8 %.sink18, -96
  %i.bp = or disjoint i8 %i.bn, 48
  %i.bq = add nuw nsw i8 %i.bn, 55
  %i.br = select i1 %i.bo, i8 %i.bp, i8 %i.bq
  %i.bs = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  store ptr %i.bt, ptr %1, align 8, !tbaa !7
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !10
  %i.bu = and i8 %.sink18, 15                     ; 3 uses
  %i.bv = icmp samesign ult i8 %i.bu, 10
  %i.bw = or disjoint i8 %i.bu, 48
  %i.bx = add nuw nsw i8 %i.bu, 55
  %i.by = select i1 %i.bv, i8 %i.bw, i8 %i.bx
  %i.bz = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %1, align 8, !tbaa !7
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox20normalizeForJsonCastEPKcmPc(ptr noundef %0, i64 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %0, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit
  %i.c = phi ptr [ %i.ej, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %0, %bb.a ] ; 9 uses
  %.060 = phi ptr [ %.1, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %2, %bb.a ] ; 34 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 8 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = and i8 %i.d, -32
  %i.g = icmp eq i8 %i.f, -64
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !10
  %i.k = icmp slt i8 %i.j, -64
  br i1 %i.k, label %bb.s, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = and i8 %i.d, -16
  %i.m = icmp eq i8 %i.l, -32
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.b
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %i.r = icmp slt i8 %i.q, -64
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.n, align 1, !tbaa !10
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.u = and i8 %i.d, -8
  %i.v = icmp eq i8 %i.u, -16
  br i1 %i.v, label %bb.j, label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.b
  br i1 %i.x, label %bb.k, label %bb.y

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = icmp slt i8 %i.z, -64
  br i1 %i.aa, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ad = icmp slt i8 %i.ac, -64
  br i1 %i.ad, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %i.w, align 1, !tbaa !10
  %i.af = icmp slt i8 %i.ae, -64
  br i1 %i.af, label %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit, label %bb.y

bb.n:                                             ; preds = %.lr.ph
  %i.ag = zext nneg i8 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox12_GLOBAL__N_112asciiEscapesE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10  ; 3 uses
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 %i.d, ptr %.060, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit

bb.p:                                             ; preds = %bb.n
  %i.al = icmp sgt i8 %i.ai, 0
  %i.am = getelementptr inbounds nuw i8, ptr %.060, i64 1 ; 2 uses
  store i8 92, ptr %.060, align 1, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %.060, i64 2 ; 2 uses
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 %i.ai, ptr %i.am, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit

bb.r:                                             ; preds = %bb.p
  store i8 117, ptr %i.am, align 1, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %.060, i64 3
  store i8 48, ptr %i.an, align 1, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %.060, i64 4
  store i8 48, ptr %i.ao, align 1, !tbaa !10
  %i.aq = lshr i8 %i.d, 4
  %i.ar = or disjoint i8 %i.aq, 48
  %i.as = getelementptr inbounds nuw i8, ptr %.060, i64 5
  store i8 %i.ar, ptr %i.ap, align 1, !tbaa !10
  %i.at = and i8 %i.d, 15                         ; 3 uses
  %i.au = icmp samesign ult i8 %i.at, 10
  %i.av = or disjoint i8 %i.at, 48
  %i.aw = add nuw nsw i8 %i.at, 55
  %i.ax = select i1 %i.au, i8 %i.av, i8 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.060, i64 6
  store i8 %i.ax, ptr %i.as, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit

_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit: ; preds = %bb.o, %bb.q, %bb.r
  %.3 = phi ptr [ %i.ak, %bb.o ], [ %i.an, %bb.q ], [ %i.ay, %bb.r ]
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !7
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

bb.s:                                             ; preds = %bb.d
  %i.bb = load i16, ptr %i.c, align 1
  store i16 %i.bb, ptr %.060, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %.060, i64 2
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store ptr %i.be, ptr %i.a, align 8, !tbaa !7
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

bb.t:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.060, ptr noundef nonnull align 1 dereferenceable(3) %i.c, i64 3, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.060, i64 3
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 3
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !7
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit: ; preds = %bb.m
  %i.bi = call noundef zeroext i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext true) ; 10 uses
  %i.bj = icmp eq i32 %i.bi, 65533
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.060, i64 6
  store <6 x i8> <i8 92, i8 117, i8 70, i8 70, i8 70, i8 68>, ptr %.060, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

bb.v:                                             ; preds = %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit
  %i.bl = icmp ugt i32 %i.bi, 65535
  br i1 %i.bl, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bm = add i32 %i.bi, 983040                   ; 2 uses
  %i.bn = lshr i32 %i.bm, 10                      ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 92, ptr %.060, align 1, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.060, i64 2
  store i8 117, ptr %i.bo, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.060, i64 3
  store i8 68, ptr %i.bp, align 1, !tbaa !10
  %i.br = lshr i32 %i.bm, 18
  %i.bs = trunc i32 %i.br to i8
  %i.bt = and i8 %i.bs, 3                         ; 3 uses
  %i.bu = icmp samesign ult i8 %i.bt, 2
  %i.bv = or disjoint i8 %i.bt, 56
  %i.bw = add nuw nsw i8 %i.bt, 63
  %i.bx = select i1 %i.bu, i8 %i.bv, i8 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.060, i64 4
  store i8 %i.bx, ptr %i.bq, align 1, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %.060, i64 5
  %i.ca = getelementptr inbounds nuw i8, ptr %.060, i64 6
  %i.cb = getelementptr inbounds nuw i8, ptr %.060, i64 7
  store i8 92, ptr %i.ca, align 1, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %.060, i64 8
  store i8 117, ptr %i.cb, align 1, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %.060, i64 9
  store i8 68, ptr %i.cc, align 1, !tbaa !10
  %i.ce = lshr i32 %i.bi, 8
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = and i8 %i.cf, 3
  %i.ch = add nuw nsw i8 %i.cg, 67
  %i.ci = getelementptr inbounds nuw i8, ptr %.060, i64 10
  store i8 %i.ch, ptr %i.cd, align 1, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %.060, i64 11
  %i.ck = trunc i32 %i.bi to i8
  %i.cl = trunc i32 %i.bn to i8
  %i.cm = insertelement <2 x i8> poison, i8 %i.cl, i64 0
  %i.cn = trunc i32 %i.bi to i8
  %i.co = insertelement <2 x i8> %i.cm, i8 %i.cn, i64 1
  %i.cp = shufflevector <2 x i8> %i.co, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cq = trunc i32 %i.bn to i8
  %i.cr = lshr i8 %i.cq, 4
  %i.cs = lshr i8 %i.ck, 4
  %i.ct = and <4 x i8> %i.cp, <i8 -1, i8 15, i8 -1, i8 15> ; 2 uses
  %i.cu = icmp ult <4 x i8> %i.ct, <i8 -96, i8 10, i8 -96, i8 10>
  %i.cv = insertelement <4 x i8> %i.ct, i8 %i.cr, i64 0
  %i.cw = insertelement <4 x i8> %i.cv, i8 %i.cs, i64 2 ; 2 uses
  %i.cx = or disjoint <4 x i8> %i.cw, splat (i8 48)
  %i.cy = add nuw nsw <4 x i8> %i.cw, splat (i8 55)
  %i.cz = select <4 x i1> %i.cu, <4 x i8> %i.cx, <4 x i8> %i.cy ; 4 uses
  %i.da = extractelement <4 x i8> %i.cz, i64 0
  store i8 %i.da, ptr %i.by, align 1, !tbaa !10
  %i.db = extractelement <4 x i8> %i.cz, i64 1
  store i8 %i.db, ptr %i.bz, align 1, !tbaa !10
  %i.dc = extractelement <4 x i8> %i.cz, i64 2
  store i8 %i.dc, ptr %i.ci, align 1, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %.060, i64 12
  %i.de = extractelement <4 x i8> %i.cz, i64 3
  store i8 %i.de, ptr %i.cj, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

bb.x:                                             ; preds = %bb.v
  %i.df = trunc nuw i32 %i.bi to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %.060, i64 1
  store i8 92, ptr %.060, align 1, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %.060, i64 2
  store i8 117, ptr %i.dg, align 1, !tbaa !10
  %i.di = lshr i16 %i.df, 12
  %i.dj = trunc nuw nsw i16 %i.di to i8
  %i.dk = icmp samesign ult i32 %i.bi, 40960
  %i.dl = lshr i32 %i.bi, 8
  %i.dm = trunc nuw i32 %i.dl to i8
  %i.dn = and i8 %i.dm, 15                        ; 2 uses
  %i.do = icmp samesign ult i8 %i.dn, 10
  %i.dp = trunc i32 %i.bi to i8                   ; 3 uses
  %i.dq = lshr i8 %i.dp, 4
  %i.dr = icmp ult i8 %i.dp, -96
  %i.ds = and i8 %i.dp, 15                        ; 2 uses
  %i.dt = icmp samesign ult i8 %i.ds, 10
  %i.du = getelementptr inbounds nuw i8, ptr %.060, i64 6
  %i.dv = insertelement <4 x i8> poison, i8 %i.dj, i64 0
  %i.dw = insertelement <4 x i8> %i.dv, i8 %i.dn, i64 1
  %i.dx = insertelement <4 x i8> %i.dw, i8 %i.dq, i64 2
  %i.dy = insertelement <4 x i8> %i.dx, i8 %i.ds, i64 3 ; 2 uses
  %i.dz = or disjoint <4 x i8> %i.dy, splat (i8 48)
  %i.ea = add nuw nsw <4 x i8> %i.dy, splat (i8 55)
  %i.eb = insertelement <4 x i1> poison, i1 %i.dk, i64 0
  %i.ec = insertelement <4 x i1> %i.eb, i1 %i.do, i64 1
  %i.ed = insertelement <4 x i1> %i.ec, i1 %i.dr, i64 2
  %i.ee = insertelement <4 x i1> %i.ed, i1 %i.dt, i64 3
  %i.ef = select <4 x i1> %i.ee, <4 x i8> %i.dz, <4 x i8> %i.ea
  store <4 x i8> %i.ef, ptr %i.dh, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !11

bb.y:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %.060, i64 6
  store <6 x i8> <i8 92, i8 117, i8 70, i8 70, i8 70, i8 68>, ptr %.060, align 1, !tbaa !10
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.ei, ptr %i.a, align 8, !tbaa !7
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.x, %bb.w, %bb.u, %bb.y, %bb.t, %bb.s, %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit
  %.1 = phi ptr [ %i.eg, %bb.y ], [ %.3, %_ZN8facebook5velox12_GLOBAL__N_111encodeAsciiEaRPc.exit ], [ %i.bc, %bb.s ], [ %i.bf, %bb.t ], [ %i.bk, %bb.u ], [ %i.dd, %bb.w ], [ %i.du, %bb.x ]
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !7   ; 2 uses
  %i.ek = icmp ult ptr %i.ej, %i.b
  br i1 %i.ek, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef zeroext i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox25normalizedSizeForJsonCastEPKcm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %0, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.q
  %i.c = phi ptr [ %i.au, %bb.q ], [ %0, %bb.a ]  ; 10 uses
  %.022 = phi i64 [ %.1, %bb.q ], [ 0, %bb.a ]    ; 4 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10    ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = and i8 %i.d, -32
  %i.g = icmp eq i8 %i.f, -64
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.i = icmp ult ptr %i.h, %i.b
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i8, ptr %i.h, align 1, !tbaa !10
  %i.k = icmp slt i8 %i.j, -64
  br i1 %i.k, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = and i8 %i.d, -16
  %i.m = icmp eq i8 %i.l, -32
  br i1 %i.m, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.b
  br i1 %i.o, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %i.r = icmp slt i8 %i.q, -64
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.n, align 1, !tbaa !10
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.u = and i8 %i.d, -8
  %i.v = icmp eq i8 %i.u, -16
  br i1 %i.v, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.b
  br i1 %i.x, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = icmp slt i8 %i.z, -64
  br i1 %i.aa, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ad = icmp slt i8 %i.ac, -64
  br i1 %i.ad, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %i.w, align 1, !tbaa !10
  %i.af = icmp slt i8 %i.ae, -64
  br i1 %i.af, label %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.ag = zext nneg i8 %i.d to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox12_GLOBAL__N_117encodedAsciiSizesE, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.aj = sext i8 %i.ai to i64
  %i.ak = add i64 %.022, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.al, ptr %i.a, align 8, !tbaa !7
  br label %bb.q

bb.o:                                             ; preds = %bb.d, %bb.h
  %.0.i.ph = phi i64 [ 3, %bb.h ], [ 2, %bb.d ]   ; 2 uses
  %i.am = add i64 %.0.i.ph, %.022
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.i.ph ; 2 uses
  store ptr %i.an, ptr %i.a, align 8, !tbaa !7
  br label %bb.q

_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit: ; preds = %bb.m
  %i.ao = call noundef zeroext i32 @_ZN5folly15utf8ToCodePointERPKhS1_b(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b, i1 noundef zeroext true)
  %i.ap = icmp ult i32 %i.ao, 65536
  %i.aq = select i1 %i.ap, i64 6, i64 12
  %i.ar = add i64 %i.aq, %.022
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !7
  br label %bb.q

bb.p:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %i.as = add i64 %.022, 6
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  store ptr %i.at, ptr %i.a, align 8, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit, %bb.o, %bb.n
  %i.au = phi ptr [ %i.at, %bb.p ], [ %i.al, %bb.n ], [ %i.an, %bb.o ], [ %.pre, %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit ] ; 2 uses
  %.1 = phi i64 [ %i.as, %bb.p ], [ %i.ak, %bb.n ], [ %i.am, %bb.o ], [ %i.ar, %_ZN8facebook5velox9functions28validateAndGetNextUtf8LengthEPKhS3_.exit ] ; 2 uses
  %i.av = icmp ult ptr %i.au, %i.b
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.q, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox20lessThanForJsonParseERKSt17basic_string_viewIcSt11char_traitsIcEES6_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.f = load i64, ptr %1, align 8, !tbaa !14     ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.e) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i64 0, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i64 0, ptr %i.d, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit, %bb.a
  %i.h = load i64, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.i = icmp uge i64 %i.h, %.sroa.speculated
  %i.j = load i64, ptr %i.d, align 8              ; 5 uses
  %i.k = icmp uge i64 %i.j, %.sroa.speculated
  %.not16 = select i1 %i.i, i1 true, i1 %i.k      ; 2 uses
  br i1 %.not16, label %.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %.val17 = load ptr, ptr %i.g, align 8, !tbaa !18 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val17, i64 %i.h ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10    ; 2 uses
  %.not.i = icmp sgt i8 %i.m, -1
  br i1 %.not.i, label %bb.d, label %bb.f, !prof !19

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !18 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  %.not34.i = icmp sgt i8 %i.p, -1
  br i1 %.not34.i, label %bb.e, label %.thread.i, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.q = call fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_114getEscapedCharESt17basic_string_viewIcSt11char_traitsIcEERm(i64 %.val, ptr nonnull %.val17, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !17
  %.sroa.2.0.copyload.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !7
  %i.r = call fastcc noundef i32 @_ZN8facebook5velox12_GLOBAL__N_114getEscapedCharESt17basic_string_viewIcSt11char_traitsIcEERm(i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.s = sub nsw i32 %i.q, %i.r
  br label %_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit

.thread.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.t = zext nneg i8 %i.m to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.u = getelementptr inbounds nuw i8, ptr %.val17, i64 %.val
  %i.v = call fastcc noundef i32 @_ZL18utf8proc_codepointPKcS0_Ri(ptr noundef nonnull %i.l, ptr noundef %i.u, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  %.pre1.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %.pre1.i, i64 %i.j
  %.pre3.i = load i8, ptr %.phi.trans.insert2.i, align 1, !tbaa !10 ; 2 uses
  %.not36.i = icmp sgt i8 %.pre3.i, -1
  br i1 %.not36.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.03211.i = phi i32 [ %i.t, %.thread.i ], [ %i.v, %bb.f ]
  %i.w = phi ptr [ %i.n, %.thread.i ], [ %.pre1.i, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.j
  %i.y = load i64, ptr %1, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = call fastcc noundef i32 @_ZL18utf8proc_codepointPKcS0_Ri(ptr noundef nonnull %i.x, ptr noundef %i.z, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %.pre4.i = load i32, ptr %i.b, align 4, !tbaa !3
  %i.ab = tail call i32 @llvm.smax.i32(i32 %.pre4.i, i32 1)
  %i.ac = zext nneg i32 %i.ab to i64
  %.pre = load i64, ptr %i.c, align 8, !tbaa !17
  %.pre29 = load i64, ptr %i.d, align 8, !tbaa !17
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ad = zext nneg i8 %.pre3.i to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i64 [ %.pre29, %bb.g ], [ %i.j, %bb.h ]
  %i.af = phi i64 [ %.pre, %bb.g ], [ %i.h, %bb.h ]
  %.03210.i = phi i32 [ %.03211.i, %bb.g ], [ %i.v, %bb.h ]
  %i.ag = phi i64 [ %i.ac, %bb.g ], [ 1, %bb.h ]
  %.0.i = phi i32 [ %i.aa, %bb.g ], [ %i.ad, %bb.h ]
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !3
  %i.ai = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 1)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = add i64 %i.af, %i.aj
  store i64 %i.ak, ptr %i.c, align 8, !tbaa !17
  %i.al = add i64 %i.ae, %i.ag
  store i64 %i.al, ptr %i.d, align 8, !tbaa !17
  %i.am = sub nsw i32 %.03210.i, %.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit

_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit: ; preds = %bb.e, %bb.i
  %.033.i = phi i32 [ %i.s, %bb.e ], [ %i.am, %bb.i ] ; 2 uses
  %.not = icmp eq i32 %.033.i, 0
  br i1 %.not, label %bb.b, label %.split.loop.exit24, !llvm.loop !20

.split.loop.exit24:                               ; preds = %_ZN8facebook5velox12_GLOBAL__N_112compareCharsERKSt17basic_string_viewIcSt11char_traitsIcEES7_RmS8_.exit
  %i.an = icmp slt i32 %.033.i, 0
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %bb.b, %.split.loop.exit24
  %.2 = phi i1 [ %i.an, %.split.loop.exit24 ], [ undef, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ao = icmp ult i64 %i.e, %i.f
  %.3 = select i1 %.not16, i1 %i.ao, i1 %.2
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN8facebook5velox21normalizeForJsonParseEPKcmPc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not117 = icmp eq i64 %1, 0
  br i1 %.not117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.0116 = phi ptr [ %0, %.lr.ph ], [ %.0.be, %.backedge ] ; 19 uses
  %.0103115 = phi ptr [ %2, %.lr.ph ], [ %.0103.be, %.backedge ] ; 41 uses
  %i.d = load i8, ptr %.0116, align 1, !tbaa !10  ; 3 uses
  %i.e = icmp eq i8 %i.d, 92
  br i1 %i.e, label %bb.c, label %bb.x, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0116, i64 1 ; 3 uses
  %.not56 = icmp eq ptr %i.f, %i.b
  br i1 %.not56, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %bb.c
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox21normalizeForJsonParseEPKcmPcE18veloxCheckFailArgs, ptr noundef nonnull @.str.4) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !10
  switch i8 %i.g, label %bb.w [
    i8 47, label %bb.f
    i8 117, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %.0103115, i64 1
  store i8 47, ptr %.0103115, align 1, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %.0116, i64 2
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit, %bb.v, %bb.f, %bb.w, %bb.y, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit
  %.0103.be = phi ptr [ %i.bz, %bb.w ], [ %i.h, %bb.f ], [ %.4, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %i.cc, %bb.y ], [ %i.bw, %bb.v ], [ %i.bu, %.backedge.loopexit ] ; 2 uses
  %.0.be = phi ptr [ %i.ca, %bb.w ], [ %i.i, %bb.f ], [ %i.fq, %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit ], [ %i.cb, %bb.y ], [ %i.k, %bb.v ], [ %i.k, %.backedge.loopexit ] ; 2 uses
  %i.j = icmp ult ptr %.0.be, %i.b
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !22

bb.g:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.0116, i64 6 ; 3 uses
  %.not57 = icmp ugt ptr %i.k, %i.b
  br i1 %.not57, label %bb.h, label %bb.i, !prof !21

bb.h:                                             ; preds = %bb.g
  call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox21normalizeForJsonParseEPKcmPcE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.4) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %.ptr106 = getelementptr inbounds nuw i8, ptr %.0116, i64 2 ; 2 uses
  %i.l = load i8, ptr %.ptr106, align 1, !tbaa !10 ; 5 uses
  %i.m = sext i8 %i.l to i32
  %i.n = add i8 %i.l, -48
  %or.cond.i = icmp ult i8 %i.n, 10
  br i1 %or.cond.i, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = add i8 %i.l, -65
  %or.cond5.i = icmp ult i8 %i.o, 6
  br i1 %or.cond5.i, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = add i8 %i.l, -97
  %or.cond8.i = icmp ult i8 %i.p, 6
  br i1 %or.cond8.i, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit, label %bb.l

bb.l:                                             ; preds = %bb.t, %bb.r, %bb.p, %bb.k
  %.lcssa = phi i8 [ %i.l, %bb.k ], [ %i.x, %bb.p ], [ %i.ad, %bb.r ], [ %i.an, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13, !noalias !23
  %.sroa.03.0.insert.ext.i = zext i8 %.lcssa to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !23
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.11, i64 24, i64 8, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13, !noalias !23
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox12_GLOBAL__N_110digitToHexEcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.11) #14
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.n
  %i.u = load i64, ptr %i.s, align 8, !tbaa !10
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.q

_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit: ; preds = %bb.k, %bb.j, %bb.i
  %.sink = phi i32 [ -55, %bb.j ], [ -48, %bb.i ], [ -87, %bb.k ]
  %i.w = add nsw i32 %.sink, %i.m
  %.08.i.ptr.1 = getelementptr inbounds nuw i8, ptr %.0116, i64 3
  %i.x = load i8, ptr %.08.i.ptr.1, align 1, !tbaa !10 ; 5 uses
  %i.y = sext i8 %i.x to i32
  %i.z = add i8 %i.x, -48
  %or.cond.i.1 = icmp ult i8 %i.z, 10
  br i1 %or.cond.i.1, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1, label %bb.o

bb.o:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit
  %i.aa = add i8 %i.x, -65
  %or.cond5.i.1 = icmp ult i8 %i.aa, 6
  br i1 %or.cond5.i.1, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = add i8 %i.x, -97
  %or.cond8.i.1 = icmp ult i8 %i.ab, 6
  br i1 %or.cond8.i.1, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1, label %bb.l

_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1: ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit, %bb.o, %bb.p
  %.sink129 = phi i32 [ -55, %bb.o ], [ -87, %bb.p ], [ -48, %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit ]
  %i.ac = add nsw i32 %.sink129, %i.y
  %.08.i.ptr.2 = getelementptr inbounds nuw i8, ptr %.0116, i64 4
  %i.ad = load i8, ptr %.08.i.ptr.2, align 1, !tbaa !10 ; 5 uses
  %i.ae = shl nuw nsw i32 %i.w, 8
  %i.af = shl nuw nsw i32 %i.ac, 4
  %i.ag = add nuw nsw i32 %i.ae, %i.af
  %i.ah = sext i8 %i.ad to i32
  %i.ai = add i8 %i.ad, -48
  %or.cond.i.2 = icmp ult i8 %i.ai, 10
  br i1 %or.cond.i.2, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2, label %bb.q

bb.q:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1
  %i.aj = add i8 %i.ad, -65
  %or.cond5.i.2 = icmp ult i8 %i.aj, 6
  br i1 %or.cond5.i.2, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = add i8 %i.ad, -97
  %or.cond8.i.2 = icmp ult i8 %i.ak, 6
  br i1 %or.cond8.i.2, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2, label %bb.l

_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2: ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1, %bb.q, %bb.r
  %.sink130 = phi i32 [ -55, %bb.q ], [ -87, %bb.r ], [ -48, %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.1 ]
  %i.al = add nsw i32 %.sink130, %i.ah
  %i.am = add nuw nsw i32 %i.al, %i.ag
  %.08.i.ptr.3 = getelementptr inbounds nuw i8, ptr %.0116, i64 5
  %i.an = load i8, ptr %.08.i.ptr.3, align 1, !tbaa !10 ; 5 uses
  %i.ao = shl nuw nsw i32 %i.am, 4
  %i.ap = sext i8 %i.an to i32
  %i.aq = add i8 %i.an, -48
  %or.cond.i.3 = icmp ult i8 %i.aq, 10
  br i1 %or.cond.i.3, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3, label %bb.s

bb.s:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2
  %i.ar = add i8 %i.an, -65
  %or.cond5.i.3 = icmp ult i8 %i.ar, 6
  br i1 %or.cond5.i.3, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = add i8 %i.an, -97
  %or.cond8.i.3 = icmp ult i8 %i.as, 6
  br i1 %or.cond8.i.3, label %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3, label %bb.l

_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3: ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2, %bb.s, %bb.t
  %.sink131 = phi i32 [ -55, %bb.s ], [ -87, %bb.t ], [ -48, %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.2 ]
  %i.at = add nsw i32 %.sink131, %i.ap
  %i.au = add nuw nsw i32 %i.at, %i.ao            ; 3 uses
  %i.av = and i32 %i.au, -1024
  switch i32 %i.av, label %bb.u [
    i32 55296, label %.backedge.loopexit
    i32 56320, label %.backedge.loopexit
  ]

bb.u:                                             ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3
  %or.cond.i59 = icmp samesign ult i32 %i.au, 32
  br i1 %or.cond.i59, label %.backedge.loopexit, label %bb.v

.backedge.loopexit:                               ; preds = %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3, %_ZN8facebook5velox12_GLOBAL__N_110digitToHexEc.exit.3, %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %.0103115, i64 1
  store i8 92, ptr %.0103115, align 1, !tbaa !10
  %i.ax = getelementptr inbounds nuw i8, ptr %.0103115, i64 2
  store i8 117, ptr %i.aw, align 1, !tbaa !10
  %i.ay = load i8, ptr %.ptr106, align 1, !tbaa !10
  %i.az = sext i8 %i.ay to i32
  %i.ba = call i32 @toupper(i32 noundef %i.az) #16
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0103115, i64 3
  store i8 %i.bb, ptr %i.ax, align 1, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %.0116, i64 3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10
  %i.bf = sext i8 %i.be to i32
  %i.bg = call i32 @toupper(i32 noundef %i.bf) #16
  %i.bh = trunc i32 %i.bg to i8
  %i.bi = getelementptr inbounds nuw i8, ptr %.0103115, i64 4
  store i8 %i.bh, ptr %i.bc, align 1, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %.0116, i64 4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bl = sext i8 %i.bk to i32
  %i.bm = call i32 @toupper(i32 noundef %i.bl) #16
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = getelementptr inbounds nuw i8, ptr %.0103115, i64 5
  store i8 %i.bn, ptr %i.bi, align 1, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.0116, i64 5
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !10
  %i.br = sext i8 %i.bq to i32
  %i.bs = call i32 @toupper(i32 noundef %i.br) #16
  %i.bt = trunc i32 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.0103115, i64 6
  store i8 %i.bt, ptr %i.bo, align 1, !tbaa !10
  br label %.backedge

bb.v:                                             ; preds = %bb.u
  %i.bv = call fastcc noundef i64 @_ZL20utf8proc_encode_chariPh(i32 noundef %i.au, ptr noundef %.0103115)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0103115, i64 %i.bv
  br label %.backedge

bb.w:                                             ; preds = %bb.e
  %i.bx = getelementptr inbounds nuw i8, ptr %.0103115, i64 1
  store i8 92, ptr %.0103115, align 1, !tbaa !10
  %i.by = load i8, ptr %i.f, align 1, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %.0103115, i64 2
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.0116, i64 2
  br label %.backedge

bb.x:                                             ; preds = %bb.b
  %.not = icmp sgt i8 %i.d, -1
  br i1 %.not, label %bb.y, label %bb.z, !prof !19

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.0116, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.0103115, i64 1
  store i8 %i.d, ptr %.0103115, align 1, !tbaa !10
  br label %.backedge

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cd = ptrtoint ptr %.0116 to i64
  %i.ce = sub i64 %i.c, %i.cd                     ; 2 uses
  %i.cf = call noundef i32 @_ZN8facebook5velox9functions20tryGetUtf8CharLengthEPKclRi(ptr noundef nonnull %.0116, i64 noundef %i.ce, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 2 uses
  switch i32 %i.cf, label %bb.ah [
    i32 2, label %bb.aa
    i32 3, label %bb.ab
    i32 4, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cg = load i16, ptr %.0116, align 1
  store i16 %i.cg, ptr %.0103115, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.0103115, i64 2
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0103115, ptr noundef nonnull align 1 dereferenceable(3) %.0116, i64 3, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.0103115, i64 3
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ac:                                            ; preds = %bb.z
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !3   ; 10 uses
  %i.ck = icmp eq i32 %i.cj, 65533
  br i1 %i.ck, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %.0103115, i64 6
  store <6 x i8> <i8 92, i8 117, i8 70, i8 70, i8 70, i8 68>, ptr %.0103115, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ae:                                            ; preds = %bb.ac
  %i.cm = icmp ugt i32 %i.cj, 65535
  br i1 %i.cm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cn = add i32 %i.cj, 983040                   ; 2 uses
  %i.co = lshr i32 %i.cn, 10                      ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0103115, i64 1
  store i8 92, ptr %.0103115, align 1, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.0103115, i64 2
  store i8 117, ptr %i.cp, align 1, !tbaa !10
  %i.cr = getelementptr inbounds nuw i8, ptr %.0103115, i64 3
  store i8 68, ptr %i.cq, align 1, !tbaa !10
  %i.cs = lshr i32 %i.cn, 18
  %i.ct = trunc i32 %i.cs to i8
  %i.cu = and i8 %i.ct, 3                         ; 3 uses
  %i.cv = icmp samesign ult i8 %i.cu, 2
  %i.cw = or disjoint i8 %i.cu, 56
  %i.cx = add nuw nsw i8 %i.cu, 63
  %i.cy = select i1 %i.cv, i8 %i.cw, i8 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %.0103115, i64 4
  store i8 %i.cy, ptr %i.cr, align 1, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %.0103115, i64 5
  %i.db = getelementptr inbounds nuw i8, ptr %.0103115, i64 6
  %i.dc = getelementptr inbounds nuw i8, ptr %.0103115, i64 7
  store i8 92, ptr %i.db, align 1, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %.0103115, i64 8
  store i8 117, ptr %i.dc, align 1, !tbaa !10
  %i.de = getelementptr inbounds nuw i8, ptr %.0103115, i64 9
  store i8 68, ptr %i.dd, align 1, !tbaa !10
  %i.df = lshr i32 %i.cj, 8
  %i.dg = trunc i32 %i.df to i8
  %i.dh = and i8 %i.dg, 3
  %i.di = add nuw nsw i8 %i.dh, 67
  %i.dj = getelementptr inbounds nuw i8, ptr %.0103115, i64 10
  store i8 %i.di, ptr %i.de, align 1, !tbaa !10
  %i.dk = getelementptr inbounds nuw i8, ptr %.0103115, i64 11
  %i.dl = trunc i32 %i.cj to i8
  %i.dm = trunc i32 %i.co to i8
  %i.dn = insertelement <2 x i8> poison, i8 %i.dm, i64 0
  %i.do = trunc i32 %i.cj to i8
  %i.dp = insertelement <2 x i8> %i.dn, i8 %i.do, i64 1
  %i.dq = shufflevector <2 x i8> %i.dp, <2 x i8> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.dr = trunc i32 %i.co to i8
  %i.ds = lshr i8 %i.dr, 4
  %i.dt = lshr i8 %i.dl, 4
  %i.du = and <4 x i8> %i.dq, <i8 -1, i8 15, i8 -1, i8 15> ; 2 uses
  %i.dv = icmp ult <4 x i8> %i.du, <i8 -96, i8 10, i8 -96, i8 10>
  %i.dw = insertelement <4 x i8> %i.du, i8 %i.ds, i64 0
  %i.dx = insertelement <4 x i8> %i.dw, i8 %i.dt, i64 2 ; 2 uses
  %i.dy = or disjoint <4 x i8> %i.dx, splat (i8 48)
  %i.dz = add nuw nsw <4 x i8> %i.dx, splat (i8 55)
  %i.ea = select <4 x i1> %i.dv, <4 x i8> %i.dy, <4 x i8> %i.dz ; 4 uses
  %i.eb = extractelement <4 x i8> %i.ea, i64 0
  store i8 %i.eb, ptr %i.cz, align 1, !tbaa !10
  %i.ec = extractelement <4 x i8> %i.ea, i64 1
  store i8 %i.ec, ptr %i.da, align 1, !tbaa !10
  %i.ed = extractelement <4 x i8> %i.ea, i64 2
  store i8 %i.ed, ptr %i.dj, align 1, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %.0103115, i64 12
  %i.ef = extractelement <4 x i8> %i.ea, i64 3
  store i8 %i.ef, ptr %i.dk, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ag:                                            ; preds = %bb.ae
  %i.eg = trunc nuw i32 %i.cj to i16
  %i.eh = getelementptr inbounds nuw i8, ptr %.0103115, i64 1
  store i8 92, ptr %.0103115, align 1, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %.0103115, i64 2
  store i8 117, ptr %i.eh, align 1, !tbaa !10
  %i.ej = lshr i16 %i.eg, 12
  %i.ek = trunc nuw nsw i16 %i.ej to i8
  %i.el = icmp samesign ult i32 %i.cj, 40960
  %i.em = lshr i32 %i.cj, 8
  %i.en = trunc nuw i32 %i.em to i8
  %i.eo = and i8 %i.en, 15                        ; 2 uses
  %i.ep = icmp samesign ult i8 %i.eo, 10
  %i.eq = trunc i32 %i.cj to i8                   ; 3 uses
  %i.er = lshr i8 %i.eq, 4
  %i.es = icmp ult i8 %i.eq, -96
  %i.et = and i8 %i.eq, 15                        ; 2 uses
  %i.eu = icmp samesign ult i8 %i.et, 10
  %i.ev = getelementptr inbounds nuw i8, ptr %.0103115, i64 6
  %i.ew = insertelement <4 x i8> poison, i8 %i.ek, i64 0
  %i.ex = insertelement <4 x i8> %i.ew, i8 %i.eo, i64 1
  %i.ey = insertelement <4 x i8> %i.ex, i8 %i.er, i64 2
  %i.ez = insertelement <4 x i8> %i.ey, i8 %i.et, i64 3 ; 2 uses
  %i.fa = or disjoint <4 x i8> %i.ez, splat (i8 48)
  %i.fb = add nuw nsw <4 x i8> %i.ez, splat (i8 55)
  %i.fc = insertelement <4 x i1> poison, i1 %i.el, i64 0
  %i.fd = insertelement <4 x i1> %i.fc, i1 %i.ep, i64 1
  %i.fe = insertelement <4 x i1> %i.fd, i1 %i.es, i64 2
  %i.ff = insertelement <4 x i1> %i.fe, i1 %i.eu, i64 3
  %i.fg = select <4 x i1> %i.ff, <4 x i8> %i.fa, <4 x i8> %i.fb
  store <4 x i8> %i.fg, ptr %i.ei, align 1, !tbaa !10
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit, !llvm.loop !22

bb.ah:                                            ; preds = %bb.z
  %i.fh = sub nsw i32 0, %i.cf                    ; 2 uses
  %i.fi = trunc i64 %i.ce to i32
  %i.fj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN8facebook5velox9functions31getInvalidUTF8ReplacementStringEPKcii(ptr noundef nonnull %.0116, i32 noundef %i.fi, i32 noundef %i.fh) ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !18
  %i.fm = load i64, ptr %i.fj, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0103115, ptr align 1 %i.fl, i64 %i.fm, i1 false)
  %i.fn = load i64, ptr %i.fj, align 8, !tbaa !14
  %i.fo = getelementptr inbounds nuw i8, ptr %.0103115, i64 %i.fn
  %i.fp = sext i32 %i.fh to i64
  br label %_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit

_ZN8facebook5velox12_GLOBAL__N_114encodeUtf16HexEDiRPc.exit: ; preds = %bb.ad, %bb.af, %bb.ag, %bb.ah, %bb.ab, %bb.aa
  %.sink132 = phi i64 [ %i.fp, %bb.ah ], [ 2, %bb.aa ], [ 3, %bb.ab ], [ 4, %bb.ag ], [ 4, %bb.af ], [ 4, %bb.ad ]
  %.4 = phi ptr [ %i.fo, %bb.ah ], [ %i.ch, %bb.aa ], [ %i.ci, %bb.ab ], [ %i.ev, %bb.ag ], [ %i.ee, %bb.af ], [ %i.cl, %bb.ad ]
  %i.fq = getelementptr inbounds i8, ptr %.0116, i64 %.sink132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.backedge

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.0103.lcssa = phi ptr [ %2, %bb.a ], [ %.0103.be, %.backedge ]
  %i.fr = ptrtoint ptr %.0103.lcssa to i64
  %i.fs = ptrtoint ptr %2 to i64
  %i.ft = sub i64 %i.fr, %i.fs
  ret i64 %i.ft
}

; Function Attrs: noreturn
declare void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @toupper(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc noundef range(i64 0, 5) i64 @_ZL20utf8proc_encode_chariPh(i32 noundef %0, ptr noundef writeonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp slt i32 %0, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 128
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw nsw i32 %0 to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !10
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i32 %0, 2048
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = lshr i32 %0, 6
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, -64
  store i8 %i.g, ptr %1, align 1, !tbaa !10
  %i.h = trunc i32 %0 to i8
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !10
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %0, 65536
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = lshr i32 %0, 12
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = or disjoint i8 %i.n, -32
  store i8 %i.o, ptr %1, align 1, !tbaa !10
  %i.p = lshr i32 %0, 6
  %i.q = trunc i32 %i.p to i8
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10
  %i.u = trunc i32 %0 to i8
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !10
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.y = icmp samesign ult i32 %0, 1114112
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = insertelement <4 x i32> poison, i32 %0, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ab = lshr <4 x i32> %i.aa, <i32 18, i32 12, i32 6, i32 0>
  %i.ac = trunc <4 x i32> %i.ab to <4 x i8>
  %i.ad = and <4 x i8> %i.ac, <i8 -1, i8 63, i8 63, i8 63>
  %i.ae = or <4 x i8> %i.ad, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.ae, ptr %1, align 1, !tbaa !10
  br label %bb.j

end_hunk_0
