Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/escaping?download=true
inline.NumInlined: 426
inline.NumDeleted: 117
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [256 x i8] }
%"class.absl::lts_20250512::base_internal::AtomicHook" = type { %"struct.std::atomic", ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%"struct.std::array.0" = type { [256 x i8] }
%"struct.std::array.1" = type { [256 x i32] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.absl::lts_20250512::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@_ZN4absl12lts_2025051212_GLOBAL__N_19kUnBase64E = internal constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_116kUnWebSafeBase64E = internal constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF?\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@_ZN4absl12lts_2025051216strings_internal12kBase64CharsE = external constant [0 x i8], align 1
@_ZN4absl12lts_2025051216strings_internal19kWebSafeBase64CharsE = external constant [0 x i8], align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_115kHexValueStrictE = internal unnamed_addr constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@.str = private unnamed_addr constant [25 x i8] c"String cannot end with \\\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Value of \\\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c" exceeds 0xff\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"String cannot end with \\x\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"\\x cannot be followed by a non-hex digit\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\\u must be followed by 4 hex digits\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"\\u must be followed by 4 hex digits: \\\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\\U must be followed by 8 hex digits\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c" exceeds Unicode limit (0x10FFFF)\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"\\U must be followed by 8 hex digits: \\\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Unknown escape sequence: \\\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE = external local_unnamed_addr constant [256 x i8], align 16
@.str.17 = private unnamed_addr constant [45 x i8] c"invalid surrogate character (0xD800-DFFF): \\\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Check new_dest_len > cur_dest_len failed: \00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"std::string size overflow\00", align 1
@.str.21 = private unnamed_addr constant [80 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/strings/escaping.cc\00", align 1
@_ZN4absl12lts_2025051216raw_log_internal21internal_log_functionB5cxx11E = external local_unnamed_addr global %"class.absl::lts_20250512::base_internal::AtomicHook", align 8
@_ZN4absl12lts_2025051212_GLOBAL__N_112kCEscapedLenE = internal unnamed_addr constant %"struct.std::array.0" { [256 x i8] c"\04\04\04\04\04\04\04\04\04\02\02\04\04\02\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\01\01\02\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04" }, align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_132kCEscapedLittleEndianUint32ArrayE = internal unnamed_addr constant %"struct.std::array.1" { [256 x i32] [i32 808464476, i32 825241692, i32 842018908, i32 858796124, i32 875573340, i32 892350556, i32 909127772, i32 925904988, i32 808530012, i32 29788, i32 28252, i32 858861660, i32 875638876, i32 29276, i32 909193308, i32 925970524, i32 808595548, i32 825372764, i32 842149980, i32 858927196, i32 875704412, i32 892481628, i32 909258844, i32 926036060, i32 808661084, i32 825438300, i32 842215516, i32 858992732, i32 875769948, i32 892547164, i32 909324380, i32 926101596, i32 32, i32 33, i32 8796, i32 35, i32 36, i32 37, i32 38, i32 10076, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 23644, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 926363996, i32 808464988, i32 825242204, i32 842019420, i32 858796636, i32 875573852, i32 892351068, i32 909128284, i32 925905500, i32 808530524, i32 825307740, i32 842084956, i32 858862172, i32 875639388, i32 892416604, i32 909193820, i32 925971036, i32 808596060, i32 825373276, i32 842150492, i32 858927708, i32 875704924, i32 892482140, i32 909259356, i32 926036572, i32 808661596, i32 825438812, i32 842216028, i32 858993244, i32 875770460, i32 892547676, i32 909324892, i32 926102108, i32 808727132, i32 825504348, i32 842281564, i32 859058780, i32 875835996, i32 892613212, i32 909390428, i32 926167644, i32 808792668, i32 825569884, i32 842347100, i32 859124316, i32 875901532, i32 892678748, i32 909455964, i32 926233180, i32 808858204, i32 825635420, i32 842412636, i32 859189852, i32 875967068, i32 892744284, i32 909521500, i32 926298716, i32 808923740, i32 825700956, i32 842478172, i32 859255388, i32 876032604, i32 892809820, i32 909587036, i32 926364252, i32 808465244, i32 825242460, i32 842019676, i32 858796892, i32 875574108, i32 892351324, i32 909128540, i32 925905756, i32 808530780, i32 825307996, i32 842085212, i32 858862428, i32 875639644, i32 892416860, i32 909194076, i32 925971292, i32 808596316, i32 825373532, i32 842150748, i32 858927964, i32 875705180, i32 892482396, i32 909259612, i32 926036828, i32 808661852, i32 825439068, i32 842216284, i32 858993500, i32 875770716, i32 892547932, i32 909325148, i32 926102364, i32 808727388, i32 825504604, i32 842281820, i32 859059036, i32 875836252, i32 892613468, i32 909390684, i32 926167900, i32 808792924, i32 825570140, i32 842347356, i32 859124572, i32 875901788, i32 892679004, i32 909456220, i32 926233436, i32 808858460, i32 825635676, i32 842412892, i32 859190108, i32 875967324, i32 892744540, i32 909521756, i32 926298972, i32 808923996, i32 825701212, i32 842478428, i32 859255644, i32 876032860, i32 892810076, i32 909587292, i32 926364508] }, align 4
@.str.22 = private unnamed_addr constant [76 x i8] c"Check escaped_len <= std::numeric_limits<size_t>::max() - char_len failed: \00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"escaped_len overflow\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@_ZN4absl12lts_2025051216numbers_internal8kHexCharE = external local_unnamed_addr constant [17 x i8], align 16
@.str.31 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@_ZN4absl12lts_2025051212_GLOBAL__N_116kHexValueLenientE = internal unnamed_addr constant { <{ [103 x i8], [153 x i8] }> } { <{ [103 x i8], [153 x i8] }> <{ [103 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F", [153 x i8] zeroinitializer }> }, align 1
@_ZN4absl12lts_2025051216numbers_internal9kHexTableE = external local_unnamed_addr constant [513 x i8], align 16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_202505129CUnescapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_(i64 %0, ptr %1, ptr noundef nonnull %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.std::allocator", align 1   ; 4 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %0, i8 noundef signext 0)
  %i.f = load ptr, ptr %2, align 8, !tbaa !12
  %i.g = icmp eq ptr %1, %i.f
  %i.h = icmp ne i64 %0, 0
  %or.cond.i = and i1 %i.h, %i.g
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.split.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.0193693.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0193693.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.j, 92
  br i1 %.not.i, label %.critedge.split.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = add nuw i64 %.0193693.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %0
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !20

.critedge.split.i:                                ; preds = %.lr.ph.i, %bb.a
  %.1211.i = phi i64 [ 0, %bb.a ], [ %.0193693.i, %.lr.ph.i ] ; 4 uses
  %.not717.i = icmp ult i64 %.1211.i, %0
  br i1 %.not717.i, label %.lr.ph714.preheader.i, label %._crit_edge.i

.lr.ph714.preheader.i:                            ; preds = %.critedge.split.i
  %i.l = add i64 %0, -1
  br label %.lr.ph714.i

.lr.ph714.i:                                      ; preds = %bb.ef, %.lr.ph714.preheader.i
  %.2195713.i = phi i64 [ %.12.i, %bb.ef ], [ %.1211.i, %.lr.ph714.preheader.i ] ; 23 uses
  %.2212712.i = phi i64 [ %.12222.i, %bb.ef ], [ %.1211.i, %.lr.ph714.preheader.i ] ; 34 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.2195713.i
  %i.n = load i8, ptr %i.m, align 1, !tbaa !13    ; 2 uses
  %.not277.i = icmp eq i8 %i.n, 92
  br i1 %.not277.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph714.i
  %i.o = add i64 %.2212712.i, 1
  %i.p = load ptr, ptr %2, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.2212712.i
  store i8 %i.n, ptr %i.q, align 1, !tbaa !13
  br label %bb.ef

bb.d:                                             ; preds = %.lr.ph714.i
  %i.r = add nuw i64 %.2195713.i, 1               ; 24 uses
  %.not278.i = icmp ult i64 %i.r, %0
  br i1 %.not278.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not308.i = icmp eq ptr %3, null
  br i1 %.not308.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.t, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit

bb.g:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 14 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13    ; 2 uses
  switch i8 %i.w, label %bb.dz [
    i8 97, label %bb.h
    i8 98, label %bb.i
    i8 102, label %bb.j
    i8 110, label %bb.k
    i8 114, label %bb.l
    i8 116, label %bb.m
    i8 118, label %bb.n
    i8 92, label %bb.o
    i8 63, label %bb.p
    i8 39, label %bb.q
    i8 34, label %bb.r
    i8 48, label %bb.s
    i8 49, label %bb.s
    i8 50, label %bb.s
    i8 51, label %bb.s
    i8 52, label %bb.s
    i8 53, label %bb.s
    i8 54, label %bb.s
    i8 55, label %bb.s
    i8 120, label %bb.as
    i8 88, label %bb.as
    i8 117, label %bb.bs
    i8 85, label %bb.cl
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = add i64 %.2212712.i, 1
  %i.y = load ptr, ptr %2, align 8, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.2212712.i
  store i8 7, ptr %i.z, align 1, !tbaa !13
  br label %bb.ef

bb.i:                                             ; preds = %bb.g
  %i.aa = add i64 %.2212712.i, 1
  %i.ab = load ptr, ptr %2, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.2212712.i
  store i8 8, ptr %i.ac, align 1, !tbaa !13
  br label %bb.ef

bb.j:                                             ; preds = %bb.g
  %i.ad = add i64 %.2212712.i, 1
  %i.ae = load ptr, ptr %2, align 8, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.2212712.i
  store i8 12, ptr %i.af, align 1, !tbaa !13
  br label %bb.ef

bb.k:                                             ; preds = %bb.g
  %i.ag = add i64 %.2212712.i, 1
  %i.ah = load ptr, ptr %2, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.2212712.i
  store i8 10, ptr %i.ai, align 1, !tbaa !13
  br label %bb.ef

bb.l:                                             ; preds = %bb.g
  %i.aj = add i64 %.2212712.i, 1
  %i.ak = load ptr, ptr %2, align 8, !tbaa !12
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.2212712.i
  store i8 13, ptr %i.al, align 1, !tbaa !13
  br label %bb.ef

bb.m:                                             ; preds = %bb.g
  %i.am = add i64 %.2212712.i, 1
  %i.an = load ptr, ptr %2, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.2212712.i
  store i8 9, ptr %i.ao, align 1, !tbaa !13
  br label %bb.ef

bb.n:                                             ; preds = %bb.g
  %i.ap = add i64 %.2212712.i, 1
  %i.aq = load ptr, ptr %2, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.2212712.i
  store i8 11, ptr %i.ar, align 1, !tbaa !13
  br label %bb.ef

bb.o:                                             ; preds = %bb.g
  %i.as = add i64 %.2212712.i, 1
  %i.at = load ptr, ptr %2, align 8, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.2212712.i
  store i8 92, ptr %i.au, align 1, !tbaa !13
  br label %bb.ef

bb.p:                                             ; preds = %bb.g
  %i.av = add i64 %.2212712.i, 1
  %i.aw = load ptr, ptr %2, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.2212712.i
  store i8 63, ptr %i.ax, align 1, !tbaa !13
  br label %bb.ef

bb.q:                                             ; preds = %bb.g
  %i.ay = add i64 %.2212712.i, 1
  %i.az = load ptr, ptr %2, align 8, !tbaa !12
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.2212712.i
  store i8 39, ptr %i.ba, align 1, !tbaa !13
  br label %bb.ef

bb.r:                                             ; preds = %bb.g
  %i.bb = add i64 %.2212712.i, 1
  %i.bc = load ptr, ptr %2, align 8, !tbaa !12
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.2212712.i
  store i8 34, ptr %i.bd, align 1, !tbaa !13
  br label %bb.ef

bb.s:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.be = zext nneg i8 %i.w to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 3 uses
  %i.bg = add nuw i64 %.2195713.i, 2              ; 3 uses
  %i.bh = icmp ult i64 %i.bg, %0
  br i1 %i.bh, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13  ; 2 uses
  %i.bk = and i8 %i.bj, -8
  %i.bl = icmp eq i8 %i.bk, 48
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bm = shl nuw nsw i32 %i.bf, 3
  %i.bn = zext nneg i8 %i.bj to i32
  %i.bo = add nsw i32 %i.bn, -48
  %i.bp = or disjoint i32 %i.bo, %i.bm
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0257.i = phi i32 [ %i.bp, %bb.u ], [ %i.bf, %bb.t ], [ %i.bf, %bb.s ] ; 2 uses
  %.3196.i = phi i64 [ %i.bg, %bb.u ], [ %i.r, %bb.t ], [ %i.r, %bb.s ] ; 2 uses
  %i.bq = add nuw i64 %.3196.i, 1                 ; 4 uses
  %i.br = icmp ult i64 %i.bq, %0
  br i1 %i.br, label %bb.w, label %bb.ar

bb.w:                                             ; preds = %bb.v
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %i.bq
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13  ; 2 uses
  %i.bu = and i8 %i.bt, -8
  %i.bv = icmp eq i8 %i.bu, 48
  br i1 %i.bv, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.bw = shl nuw nsw i32 %.0257.i, 3
  %i.bx = zext nneg i8 %i.bt to i32
  %i.by = add nsw i32 %i.bx, -48
  %i.bz = or disjoint i32 %i.by, %i.bw            ; 2 uses
  %i.ca = icmp samesign ult i32 %i.bz, 256
  br i1 %i.ca, label %.thread584.i, label %bb.y

.thread584.i:                                     ; preds = %bb.x
  %i.cb = trunc nuw i32 %i.bz to i8
  %i.cc = add i64 %.2212712.i, 1
  %i.cd = load ptr, ptr %2, align 8, !tbaa !12
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.2212712.i
  store i8 %i.cb, ptr %i.ce, align 1, !tbaa !13
  br label %bb.ef

bb.y:                                             ; preds = %bb.x
  %.not300.i = icmp eq ptr %3, null
  br i1 %.not300.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.cf = sub i64 %i.bq, %.2195713.i
  %i.cg = sub nuw i64 %0, %i.r
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.cf) ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.ch, ptr %6, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 %.sroa.speculated.i.i, ptr %i.e, align 8, !tbaa !17
  %i.ci = icmp ugt i64 %.sroa.speculated.i.i, 15
  br i1 %i.ci, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.z
  %i.cj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc311.i unwind label %bb.ao ; 2 uses

.noexc311.i:                                      ; preds = %.noexc.i.i.i.i
  store ptr %i.cj, ptr %6, align 8, !tbaa !12
  %i.ck = load i64, ptr %i.e, align 8, !tbaa !17
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc311.i, %bb.z
  %i.cl = phi ptr [ %i.cj, %.noexc311.i ], [ %i.ch, %bb.z ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202505129CUnescapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_:bb.a
  store ptr %i.dr, ptr %3, align 8, !tbaa !12
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ds, ptr %i.ei, align 8, !tbaa !15
  %i.ej = load i64, ptr %i.di, align 8, !tbaa !13
  store i64 %i.ej, ptr %i.dw, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.dv, ptr %4, align 8, !tbaa !12
  store i64 %i.eh, ptr %i.di, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.di, ptr %4, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.an, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ai
  %i.ek = phi ptr [ %i.dv, %bb.am ], [ %i.di, %bb.an ], [ %i.dr, %bb.ai ], [ %.pre.i318.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.du, align 8, !tbaa !15
  store i8 0, ptr %i.ek, align 1, !tbaa !13
  %i.el = load ptr, ptr %4, align 8, !tbaa !12    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.di
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.en = load i64, ptr %i.di, align 8, !tbaa !13
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319.i
  %i.ep = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.cs
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.er = load i64, ptr %i.cs, align 8, !tbaa !13
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320.i
  %i.et = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ch
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322.i
  %i.ev = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit

bb.ao:                                            ; preds = %.noexc.i.i.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.i

bb.ap:                                            ; preds = %bb.ac
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i, %bb.af
  %i.ez = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fa = load ptr, ptr %5, align 8, !tbaa !12    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.cs
  br i1 %i.fb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326.i: ; preds = %bb.aq
  %i.fc = load i64, ptr %i.cs, align 8, !tbaa !13
  %i.fd = add i64 %i.fc, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fd) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326.i, %bb.ap
  %.pn301.i = phi { ptr, i32 } [ %i.ey, %bb.ap ], [ %i.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326.i ], [ %i.ez, %bb.aq ] ; 2 uses
  %i.fe = load ptr, ptr %6, align 8, !tbaa !12    ; 2 uses
  %i.ff = icmp eq ptr %i.fe, %i.ch
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i
  %i.fg = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fe, i64 noundef %i.fh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329.i, %bb.ao
  %.pn301.pn.i = phi { ptr, i32 } [ %i.ex, %bb.ao ], [ %.pn301.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329.i ], [ %.pn301.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.eh

bb.ar:                                            ; preds = %bb.w, %bb.v
  %i.fi = trunc nuw nsw i32 %.0257.i to i8
  %i.fj = add i64 %.2212712.i, 1
  %i.fk = load ptr, ptr %2, align 8, !tbaa !12
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %.2212712.i
  store i8 %i.fi, ptr %i.fl, align 1, !tbaa !13
  br label %bb.ef

bb.as:                                            ; preds = %bb.g, %bb.g
  %i.fm = add nuw i64 %.2195713.i, 2              ; 3 uses
  %.not293.i = icmp ult i64 %i.fm, %0
  br i1 %.not293.i, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not299.i = icmp eq ptr %3, null
  br i1 %.not299.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fn = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3) ; 0 uses
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit

bb.av:                                            ; preds = %bb.as
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13  ; 3 uses
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13
  %i.ft = icmp slt i8 %i.fs, 0
  br i1 %i.ft, label %.lr.ph.preheader, label %bb.aw

.lr.ph.preheader:                                 ; preds = %bb.av
  %i.fu = zext i8 %i.fp to i32                    ; 2 uses
  %i.fv = icmp ugt i8 %i.fp, 57
  %i.fw = add nuw nsw i32 %i.fu, 9
  %spec.select.i.i299 = select i1 %i.fv, i32 %i.fw, i32 %i.fu
  %i.fx = and i32 %spec.select.i.i299, 15         ; 2 uses
  %i.fy = add i64 %.2195713.i, 3                  ; 2 uses
  %exitcond764.not.i300 = icmp eq i64 %i.fy, %0
  br i1 %exitcond764.not.i300, label %..critedge9.i_crit_edge, label %.lr.ph706.i.lr.ph, !llvm.loop !25

.lr.ph706.i.lr.ph:                                ; preds = %.lr.ph.preheader
  br label %.lr.ph706.i, !llvm.loop !25

bb.aw:                                            ; preds = %bb.av
  %.not294.i = icmp eq ptr %3, null
  br i1 %.not294.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fz = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4) ; 0 uses
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit

.lr.ph706.i:                                      ; preds = %.lr.ph706.i.lr.ph, %.lr.ph
  %i.ga = phi i64 [ %i.fy, %.lr.ph706.i.lr.ph ], [ %i.gq, %.lr.ph ] ; 3 uses
  %i.gb = phi i32 [ %i.fx, %.lr.ph706.i.lr.ph ], [ %i.gp, %.lr.ph ] ; 2 uses
  %i.gc = phi i32 [ 0, %.lr.ph706.i.lr.ph ], [ %i.gk, %.lr.ph ]
  %i.gd = phi i64 [ %i.fm, %.lr.ph706.i.lr.ph ], [ %i.ga, %.lr.ph ]
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 %i.ga
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !13  ; 3 uses
  %i.gg = zext i8 %i.gf to i64
  %i.gh = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2025051214ascii_internal13kPropertyBitsE, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %i.gj = icmp slt i8 %i.gi, 0
  br i1 %i.gj, label %.lr.ph, label %.critedge9.i, !llvm.loop !25

.lr.ph:                                           ; preds = %.lr.ph706.i
  %i.gk = shl i32 %i.gb, 4                        ; 3 uses
  %i.gl = zext i8 %i.gf to i32                    ; 2 uses
  %i.gm = icmp ugt i8 %i.gf, 57
  %i.gn = add nuw nsw i32 %i.gl, 9
  %spec.select.i.i = select i1 %i.gm, i32 %i.gn, i32 %i.gl
  %i.go = and i32 %spec.select.i.i, 15
  %i.gp = or disjoint i32 %i.go, %i.gk            ; 2 uses
  %i.gq = add i64 %i.ga, 1                        ; 2 uses
  %exitcond764.not.i = icmp eq i64 %i.gq, %0
  br i1 %exitcond764.not.i, label %.lr.ph...critedge9.i_crit_edge_crit_edge, label %.lr.ph706.i, !llvm.loop !25

.lr.ph...critedge9.i_crit_edge_crit_edge:         ; preds = %.lr.ph
  br label %..critedge9.i_crit_edge, !llvm.loop !25

..critedge9.i_crit_edge:                          ; preds = %.lr.ph...critedge9.i_crit_edge_crit_edge, %.lr.ph.preheader
  %.lcssa258 = phi i32 [ %i.gk, %.lr.ph...critedge9.i_crit_edge_crit_edge ], [ 0, %.lr.ph.preheader ]
  %.lcssa = phi i32 [ %i.gp, %.lr.ph...critedge9.i_crit_edge_crit_edge ], [ %i.fx, %.lr.ph.preheader ]
  br label %.critedge9.i, !llvm.loop !25

.critedge9.i:                                     ; preds = %.lr.ph706.i, %..critedge9.i_crit_edge
  %i.gr = phi i32 [ %.lcssa258, %..critedge9.i_crit_edge ], [ %i.gc, %.lr.ph706.i ]
  %i.gs = phi i32 [ %.lcssa, %..critedge9.i_crit_edge ], [ %i.gb, %.lr.ph706.i ]
  %.5198.lcssa.ph.i = phi i64 [ %i.l, %..critedge9.i_crit_edge ], [ %i.gd, %.lr.ph706.i ] ; 2 uses
  %i.gt = icmp ult i32 %i.gr, 256
  br i1 %i.gt, label %bb.br, label %bb.ay

bb.ay:                                            ; preds = %.critedge9.i
  %.not295.i = icmp eq ptr %3, null
  br i1 %.not295.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS4_SaIcEEESA_.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  %i.gu = sub nuw i64 %.5198.lcssa.ph.i, %.2195713.i
  %20 = sub nuw i64 %0, %i.r
  %.sroa.speculated.i332.i = tail call i64 @llvm.umin.i64(i64 %20, i64 %i.gu) ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.gv, ptr %9, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 %.sroa.speculated.i332.i, ptr %i.d, align 8, !tbaa !17
  %i.gw = icmp ugt i64 %.sroa.speculated.i332.i, 15
  br i1 %i.gw, label %.noexc.i.i.i341.i, label %._crit_edge.i.i.i.i340.i

.noexc.i.i.i341.i:                                ; preds = %bb.az
  %i.gx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc343.i unwind label %bb.bo ; 2 uses

.noexc343.i:                                      ; preds = %.noexc.i.i.i341.i
  store ptr %i.gx, ptr %9, align 8, !tbaa !12
  %i.gy = load i64, ptr %i.d, align 8, !tbaa !17
  store i64 %i.gy, ptr %i.gv, align 8, !tbaa !13
  br label %._crit_edge.i.i.i.i340.i

._crit_edge.i.i.i.i340.i:                         ; preds = %.noexc343.i, %bb.az
  %i.gz = phi ptr [ %i.gx, %.noexc343.i ], [ %i.gv, %bb.az ] ; 2 uses
  switch i64 %.sroa.speculated.i332.i, label %bb.bb [
    i64 1, label %bb.ba
    i64 0, label %bb.bc
  ]

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i340.i
  %i.ha = load i8, ptr %i.v, align 1, !tbaa !13
  store i8 %i.ha, ptr %i.gz, align 1, !tbaa !13
  br label %bb.bc

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i340.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gz, ptr nonnull align 1 %i.v, i64 %.sroa.speculated.i332.i, i1 false)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %._crit_edge.i.i.i.i340.i
  %i.hb = load i64, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !15
  %i.hd = load ptr, ptr %9, align 8, !tbaa !12
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hb
  store i8 0, ptr %i.he, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.hf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 10)
          to label %.noexc348.i unwind label %bb.bp ; 6 uses

.noexc348.i:                                      ; preds = %bb.bc
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 7 uses
  store ptr %i.hg, ptr %8, align 8, !tbaa !16, !alias.scope !41
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !12 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 5 uses
  %i.hj = icmp eq ptr %i.hh, %i.hi
  br i1 %i.hj, label %bb.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i

bb.bd:                                            ; preds = %.noexc348.i
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !15 ; 3 uses
  %i.hm = icmp ult i64 %i.hl, 16
  call void @llvm.assume(i1 %i.hm)
  %i.hn = add nuw nsw i64 %i.hl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hg, ptr noundef nonnull align 8 dereferenceable(1) %i.hi, i64 %i.hn, i1 false)
  br label %bb.be

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i: ; preds = %.noexc348.i
  store ptr %i.hh, ptr %8, align 8, !tbaa !12, !alias.scope !41
  %i.ho = load i64, ptr %i.hi, align 8, !tbaa !13
  store i64 %i.ho, ptr %i.hg, align 8, !tbaa !13, !alias.scope !41
  %.phi.trans.insert.i346.i = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %.pre.i347.i = load i64, ptr %.phi.trans.insert.i346.i, align 8, !tbaa !15
  br label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i, %bb.bd
  %i.hp = phi i64 [ %i.hl, %bb.bd ], [ %.pre.i347.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345.i ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 %i.hp, ptr %i.hr, align 8, !tbaa !15, !alias.scope !41
  store ptr %i.hi, ptr %i.hf, align 8, !tbaa !12
  store i64 0, ptr %i.hq, align 8, !tbaa !15
  store i8 0, ptr %i.hi, align 8, !tbaa !13
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !15, !noalias !42
  %i.ht = add i64 %i.hs, -4611686018427387891
  %i.hu = icmp ult i64 %i.ht, 13
  br i1 %i.hu, label %bb.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350.i

bb.bf:                                            ; preds = %bb.be
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #12
          to label %.noexc354.i unwind label %bb.bq

.noexc354.i:                                      ; preds = %bb.bf
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350.i: ; preds = %bb.be
  %i.hv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.2, i64 noundef 13)
          to label %.noexc355.i unwind label %bb.bq ; 6 uses

.noexc355.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350.i
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.hw, ptr %7, align 8, !tbaa !16, !alias.scope !42
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !12 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 5 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %bb.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351.i

bb.bg:                                            ; preds = %.noexc355.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !15 ; 3 uses
  %i.ic = icmp ult i64 %i.ib, 16
  call void @llvm.assume(i1 %i.ic)
  %i.id = add nuw nsw i64 %i.ib, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hw, ptr noundef nonnull align 8 dereferenceable(1) %i.hy, i64 %i.id, i1 false)
  br label %bb.bh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351.i: ; preds = %.noexc355.i
  store ptr %i.hx, ptr %7, align 8, !tbaa !12, !alias.scope !42
  %i.ie = load i64, ptr %i.hy, align 8, !tbaa !13
  store i64 %i.ie, ptr %i.hw, align 8, !tbaa !13, !alias.scope !42
  %.phi.trans.insert.i352.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %.pre.i353.i = load i64, ptr %.phi.trans.insert.i352.i, align 8, !tbaa !15
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351.i, %bb.bg
  %i.if = phi ptr [ %i.hw, %bb.bg ], [ %i.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351.i ] ; 6 uses
  %i.ig = phi i64 [ %i.ib, %bb.bg ], [ %.pre.i353.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351.i ] ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.ig, ptr %i.ii, align 8, !tbaa !15, !alias.scope !42
  store ptr %i.hy, ptr %i.hv, align 8, !tbaa !12
  store i64 0, ptr %i.ih, align 8, !tbaa !15
  store i8 0, ptr %i.hy, align 8, !tbaa !13
  %i.ij = load ptr, ptr %3, align 8, !tbaa !12    ; 6 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.il = icmp eq ptr %i.ij, %i.ik
  %i.im = icmp eq ptr %i.if, %i.hw                ; 2 uses
  br i1 %i.il, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363.i: ; preds = %bb.bh
  br i1 %i.im, label %bb.bi, label %.thread.i364.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357.i: ; preds = %bb.bh
  br i1 %i.im, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358.i

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363.i
  %i.in = icmp ult i64 %i.ig, 16
  call void @llvm.assume(i1 %i.in)
  %.not21.i360.i = icmp eq ptr %7, %3
  br i1 %.not21.i360.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365.i, label %bb.bj, !prof !18

bb.bj:                                            ; preds = %bb.bi
  switch i64 %i.ig, label %bb.bl [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361.i
    i64 1, label %bb.bk
  ]

bb.bk:                                            ; preds = %bb.bj
  %i.io = load i8, ptr %i.if, align 1, !tbaa !13
  store i8 %i.io, ptr %i.ij, align 1, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361.i

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ij, ptr align 1 %i.if, i64 %i.ig, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361.i: ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.ip = load i64, ptr %i.ii, align 8, !tbaa !15 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !15
  %i.ir = load ptr, ptr %3, align 8, !tbaa !12
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.ip
  store i8 0, ptr %i.is, align 1, !tbaa !13
  %.pre.i362.i = load ptr, ptr %7, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365.i

.thread.i364.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363.i
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.if, ptr %3, align 8, !tbaa !12
  store i64 %i.ig, ptr %i.it, align 8, !tbaa !15
  %i.iu = load i64, ptr %i.hw, align 8, !tbaa !13
  store i64 %i.iu, ptr %i.ik, align 8, !tbaa !13
  br label %bb.bn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357.i
  %i.iv = load i64, ptr %i.ik, align 8, !tbaa !13
  store ptr %i.if, ptr %3, align 8, !tbaa !12
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ig, ptr %i.iw, align 8, !tbaa !15
  %i.ix = load i64, ptr %i.hw, align 8, !tbaa !13
  store i64 %i.ix, ptr %i.ik, align 8, !tbaa !13
  %.not.i359.i = icmp eq ptr %i.ij, null
  br i1 %.not.i359.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358.i
  store ptr %i.ij, ptr %7, align 8, !tbaa !12
  store i64 %i.iv, ptr %i.hw, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365.i

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358.i, %.thread.i364.i
  store ptr %i.hw, ptr %7, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365.i: ; preds = %bb.bn, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361.i, %bb.bi
  %i.iy = phi ptr [ %i.ij, %bb.bm ], [ %i.hw, %bb.bn ], [ %i.if, %bb.bi ], [ %.pre.i362.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361.i ]
  store i64 0, ptr %i.ii, align 8, !tbaa !15
  store i8 0, ptr %i.iy, align 1, !tbaa !13
  %i.iz = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.hw
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365.i
  %i.jb = load i64, ptr %i.hw, align 8, !tbaa !13
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366.i
  %i.jd = load ptr, ptr %8, align 8, !tbaa !12    ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.hg
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.i
  %i.jf = load i64, ptr %i.hg, align 8, !tbaa !13
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369.i
  %i.jh = load ptr, ptr %9, align 8, !tbaa !12    ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.gv
  br i1 %i.ji, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371.i
  %i.jj = load i64, ptr %i.gv, align 8, !tbaa !13
  %i.jk = add i64 %i.jj, 1
end_hunk_1
