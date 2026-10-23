Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/escaping?download=true
inline.NumInlined: 483
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::array" = type { [256 x i8] }
%"class.absl::lts_20260526::base_internal::AtomicHook" = type { %"struct.std::atomic", ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { ptr }
%"struct.std::array.4" = type { [256 x i8] }
%"struct.std::array.6" = type { [256 x i32] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.anon.8 = type { ptr, i64, %"struct.std::array", ptr }
%"class.absl::lts_20260526::AlphaNum" = type { %"class.std::basic_string_view", [32 x i8] }
%"class.std::basic_string_view" = type { i64, ptr }

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

@_ZN4absl12lts_2026052612_GLOBAL__N_19kUnBase64E = internal constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@_ZN4absl12lts_2026052612_GLOBAL__N_116kUnWebSafeBase64E = internal constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF?\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@_ZN4absl12lts_2026052612_GLOBAL__N_112kBase64CharsE = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@_ZN4absl12lts_2026052612_GLOBAL__N_119kWebSafeBase64CharsE = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_\00", align 16
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
@_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE = external local_unnamed_addr constant [256 x i8], align 16
@.str.17 = private unnamed_addr constant [45 x i8] c"invalid surrogate character (0xD800-DFFF): \\\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Check append_buf_len > cur_dest_len failed: \00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"std::string size overflow\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"third_party/abseil-cpp/absl/strings/escaping.cc\00", align 1
@_ZN4absl12lts_2026052616raw_log_internal21internal_log_functionB5cxx11E = external local_unnamed_addr global %"class.absl::lts_20260526::base_internal::AtomicHook", align 8
@_ZN4absl12lts_2026052612_GLOBAL__N_112kCEscapedLenE = internal unnamed_addr constant %"struct.std::array.4" { [256 x i8] c"\04\04\04\04\04\04\04\04\04\02\02\04\04\02\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\01\01\02\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04" }, align 1
@.str.21 = private unnamed_addr constant [76 x i8] c"Check escaped_len <= std::numeric_limits<size_t>::max() - char_len failed: \00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"escaped_len overflow\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"absl::strings_internal::StringAppendAndOverwrite\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"absl::StringResizeAndOverwrite\00", align 1
@_ZN4absl12lts_2026052612_GLOBAL__N_132kCEscapedLittleEndianUint32ArrayE = internal unnamed_addr constant %"struct.std::array.6" { [256 x i32] [i32 808464476, i32 825241692, i32 842018908, i32 858796124, i32 875573340, i32 892350556, i32 909127772, i32 925904988, i32 808530012, i32 29788, i32 28252, i32 858861660, i32 875638876, i32 29276, i32 909193308, i32 925970524, i32 808595548, i32 825372764, i32 842149980, i32 858927196, i32 875704412, i32 892481628, i32 909258844, i32 926036060, i32 808661084, i32 825438300, i32 842215516, i32 858992732, i32 875769948, i32 892547164, i32 909324380, i32 926101596, i32 32, i32 33, i32 8796, i32 35, i32 36, i32 37, i32 38, i32 10076, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 23644, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 926363996, i32 808464988, i32 825242204, i32 842019420, i32 858796636, i32 875573852, i32 892351068, i32 909128284, i32 925905500, i32 808530524, i32 825307740, i32 842084956, i32 858862172, i32 875639388, i32 892416604, i32 909193820, i32 925971036, i32 808596060, i32 825373276, i32 842150492, i32 858927708, i32 875704924, i32 892482140, i32 909259356, i32 926036572, i32 808661596, i32 825438812, i32 842216028, i32 858993244, i32 875770460, i32 892547676, i32 909324892, i32 926102108, i32 808727132, i32 825504348, i32 842281564, i32 859058780, i32 875835996, i32 892613212, i32 909390428, i32 926167644, i32 808792668, i32 825569884, i32 842347100, i32 859124316, i32 875901532, i32 892678748, i32 909455964, i32 926233180, i32 808858204, i32 825635420, i32 842412636, i32 859189852, i32 875967068, i32 892744284, i32 909521500, i32 926298716, i32 808923740, i32 825700956, i32 842478172, i32 859255388, i32 876032604, i32 892809820, i32 909587036, i32 926364252, i32 808465244, i32 825242460, i32 842019676, i32 858796892, i32 875574108, i32 892351324, i32 909128540, i32 925905756, i32 808530780, i32 825307996, i32 842085212, i32 858862428, i32 875639644, i32 892416860, i32 909194076, i32 925971292, i32 808596316, i32 825373532, i32 842150748, i32 858927964, i32 875705180, i32 892482396, i32 909259612, i32 926036828, i32 808661852, i32 825439068, i32 842216284, i32 858993500, i32 875770716, i32 892547932, i32 909325148, i32 926102364, i32 808727388, i32 825504604, i32 842281820, i32 859059036, i32 875836252, i32 892613468, i32 909390684, i32 926167900, i32 808792924, i32 825570140, i32 842347356, i32 859124572, i32 875901788, i32 892679004, i32 909456220, i32 926233436, i32 808858460, i32 825635676, i32 842412892, i32 859190108, i32 875967324, i32 892744540, i32 909521756, i32 926298972, i32 808923996, i32 825701212, i32 842478428, i32 859255644, i32 876032860, i32 892810076, i32 909587292, i32 926364508] }, align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@_ZN4absl12lts_2026052616numbers_internal8kHexCharE = external local_unnamed_addr constant [17 x i8], align 16
@.str.32 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"Logic problem? szsrc = %zu\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@_ZN4absl12lts_2026052612_GLOBAL__N_115kHexValueStrictE = internal unnamed_addr constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@_ZN4absl12lts_2026052612_GLOBAL__N_116kHexValueLenientE = internal unnamed_addr constant { <{ [103 x i8], [153 x i8] }> } { <{ [103 x i8], [153 x i8] }> <{ [103 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F", [153 x i8] zeroinitializer }> }, align 1
@_ZN4absl12lts_2026052616numbers_internal9kHexTableE = external local_unnamed_addr constant [513 x i8], align 16

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605269CUnescapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_(i64 %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !14
  %.not = icmp ult i64 %i.d, %0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !tbaa !15
  %i.e = load ptr, ptr %2, align 8, !tbaa !16
  %i.f = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPcPmPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr %1, ptr noundef %i.e, ptr noundef %i.b, ptr noundef %3)
  %i.g = load i64, ptr %i.b, align 8, !tbaa !15   ; 4 uses
  %i.h = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.i = icmp ugt i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.34, i64 noundef %i.g, i64 noundef %i.h) #12
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit: ; preds = %bb.b
  store i64 %i.g, ptr %i.c, align 8, !tbaa !14
  %i.j = load ptr, ptr %2, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 0, ptr %i.k, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %0, 4611686018427387903
  br i1 %i.l, label %bb.e, label %bb.f, !prof !18

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl12lts_2026052619ThrowStdLengthErrorEPKc(ptr noundef nonnull @.str.24) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %0, i8 noundef signext 0)
  %i.m = load ptr, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !tbaa !15
  %i.n = call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPcPmPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr %1, ptr noundef %i.m, ptr noundef %i.a, ptr noundef %3)
  %i.o = load i64, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.p = load i64, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.g, label %"_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_9CUnescapeESt17basic_string_viewIcS5_EPS7_SA_E3$_0EEvRT_NSC_9size_typeET0_.exit"

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.34, i64 noundef %i.o, i64 noundef %i.p) #12
  unreachable

"_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_9CUnescapeESt17basic_string_viewIcS5_EPS7_SA_E3$_0EEvRT_NSC_9size_typeET0_.exit": ; preds = %bb.f
  %i.r = load ptr, ptr %2, align 8, !tbaa !16
  store i64 %i.o, ptr %i.c, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o
  store i8 0, ptr %i.s, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_9CUnescapeESt17basic_string_viewIcS5_EPS7_SA_E3$_0EEvRT_NSC_9size_typeET0_.exit", %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  %.0.in = phi i1 [ %i.n, %"_ZN4absl12lts_2026052624StringResizeAndOverwriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEZNS0_9CUnescapeESt17basic_string_viewIcS5_EPS7_SA_E3$_0EEvRT_NSC_9size_typeET0_.exit" ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit ]
  ret i1 %.0.in
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPcPmPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.f = icmp eq ptr %1, %2
  %i.g = icmp ne i64 %0, 0
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0192709 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.0192709
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17
  %.not = icmp eq i8 %i.i, 92
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.0192709, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

.critedge:                                        ; preds = %.lr.ph, %bb.a
  %.1210 = phi i64 [ 0, %bb.a ], [ %.0192709, %.lr.ph ] ; 4 uses
  %.not728 = icmp ult i64 %.1210, %0
  br i1 %.not728, label %.lr.ph725, label %._crit_edge

.lr.ph725:                                        ; preds = %.critedge, %bb.ef
  %.2194724 = phi i64 [ %.13, %bb.ef ], [ %.1210, %.critedge ] ; 23 uses
  %.2211723 = phi i64 [ %.12221, %bb.ef ], [ %.1210, %.critedge ] ; 34 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.2194724
  %i.l = load i8, ptr %i.k, align 1, !tbaa !17    ; 2 uses
  %.not277 = icmp eq i8 %i.l, 92
  br i1 %.not277, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph725
  %i.m = add i64 %.2211723, 1
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 %i.l, ptr %i.n, align 1, !tbaa !17
  br label %bb.ef

bb.d:                                             ; preds = %.lr.ph725
  %i.o = add nuw i64 %.2194724, 1                 ; 25 uses
  %.not278 = icmp ult i64 %i.o, %0
  br i1 %.not278, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not308 = icmp eq ptr %4, null
  br i1 %.not308, label %.thread580, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.q, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  br label %.thread580

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 14 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !17    ; 2 uses
  switch i8 %i.t, label %bb.dz [
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
  %i.u = add i64 %.2211723, 1
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 7, ptr %i.v, align 1, !tbaa !17
  br label %bb.ef

bb.i:                                             ; preds = %bb.g
  %i.w = add i64 %.2211723, 1
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 8, ptr %i.x, align 1, !tbaa !17
  br label %bb.ef

bb.j:                                             ; preds = %bb.g
  %i.y = add i64 %.2211723, 1
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 12, ptr %i.z, align 1, !tbaa !17
  br label %bb.ef

bb.k:                                             ; preds = %bb.g
  %i.aa = add i64 %.2211723, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 10, ptr %i.ab, align 1, !tbaa !17
  br label %bb.ef

bb.l:                                             ; preds = %bb.g
  %i.ac = add i64 %.2211723, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 13, ptr %i.ad, align 1, !tbaa !17
  br label %bb.ef

bb.m:                                             ; preds = %bb.g
  %i.ae = add i64 %.2211723, 1
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 9, ptr %i.af, align 1, !tbaa !17
  br label %bb.ef

bb.n:                                             ; preds = %bb.g
  %i.ag = add i64 %.2211723, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 11, ptr %i.ah, align 1, !tbaa !17
  br label %bb.ef

bb.o:                                             ; preds = %bb.g
  %i.ai = add i64 %.2211723, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 92, ptr %i.aj, align 1, !tbaa !17
  br label %bb.ef

bb.p:                                             ; preds = %bb.g
  %i.ak = add i64 %.2211723, 1
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 63, ptr %i.al, align 1, !tbaa !17
  br label %bb.ef

bb.q:                                             ; preds = %bb.g
  %i.am = add i64 %.2211723, 1
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 39, ptr %i.an, align 1, !tbaa !17
  br label %bb.ef

bb.r:                                             ; preds = %bb.g
  %i.ao = add i64 %.2211723, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 34, ptr %i.ap, align 1, !tbaa !17
  br label %bb.ef

bb.s:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.aq = zext nneg i8 %i.t to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 3 uses
  %i.as = add nuw i64 %.2194724, 2                ; 3 uses
  %i.at = icmp ult i64 %i.as, %0
  br i1 %i.at, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17  ; 2 uses
  %i.aw = and i8 %i.av, -8
  %i.ax = icmp eq i8 %i.aw, 48
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = shl nuw nsw i32 %i.ar, 3
  %i.az = zext nneg i8 %i.av to i32
  %i.ba = add nsw i32 %i.az, -48
  %i.bb = or disjoint i32 %i.ba, %i.ay
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0256 = phi i32 [ %i.bb, %bb.u ], [ %i.ar, %bb.t ], [ %i.ar, %bb.s ] ; 2 uses
  %.3195 = phi i64 [ %i.as, %bb.u ], [ %i.o, %bb.t ], [ %i.o, %bb.s ] ; 2 uses
  %i.bc = add nuw i64 %.3195, 1                   ; 4 uses
  %i.bd = icmp ult i64 %i.bc, %0
  br i1 %i.bd, label %bb.w, label %bb.ar

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17  ; 2 uses
  %i.bg = and i8 %i.bf, -8
  %i.bh = icmp eq i8 %i.bg, 48
  br i1 %i.bh, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.bi = shl nuw nsw i32 %.0256, 3
  %i.bj = zext nneg i8 %i.bf to i32
  %i.bk = add nsw i32 %i.bj, -48
  %i.bl = or disjoint i32 %i.bk, %i.bi            ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bl, 256
  br i1 %i.bm, label %.thread583, label %bb.y

.thread583:                                       ; preds = %bb.x
  %i.bn = trunc nuw i32 %i.bl to i8
  %i.bo = add i64 %.2211723, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !17
  br label %bb.ef

bb.y:                                             ; preds = %bb.x
  %.not300 = icmp eq ptr %4, null
  br i1 %.not300, label %.thread580, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bq = sub i64 %i.bc, %.2194724
  %i.br = sub nuw i64 %0, %i.o
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bq) ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.bs, ptr %7, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i64 %.sroa.speculated.i, ptr %i.e, align 8, !tbaa !15
  %i.bt = icmp ugt i64 %.sroa.speculated.i, 15
  br i1 %i.bt, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.z
  %i.bu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc311 unwind label %bb.ao ; 2 uses

.noexc311:                                        ; preds = %.noexc.i.i.i
  store ptr %i.bu, ptr %7, align 8, !tbaa !16
  %i.bv = load i64, ptr %i.e, align 8, !tbaa !15
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc311, %bb.z
  %i.bw = phi ptr [ %i.bu, %.noexc311 ], [ %i.bs, %bb.z ] ; 2 uses
  switch i64 %.sroa.speculated.i, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i
  %i.bx = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !17
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052612_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPcPmPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.ae
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i64 noundef 13)
          to label %.noexc317 unwind label %bb.aq ; 6 uses

.noexc317:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store ptr %i.ct, ptr %5, align 8, !tbaa !20, !alias.scope !42
  %i.cu = load ptr, ptr %i.cs, align 8, !tbaa !16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 5 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %bb.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

bb.ag:                                            ; preds = %.noexc317
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !14 ; 3 uses
  %i.cz = icmp ult i64 %i.cy, 16
  call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.cv, i64 %i.da, i1 false)
  br label %bb.ah

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %.noexc317
  store ptr %i.cu, ptr %5, align 8, !tbaa !16, !alias.scope !42
  %i.db = load i64, ptr %i.cv, align 8, !tbaa !17
  store i64 %i.db, ptr %i.ct, align 8, !tbaa !17, !alias.scope !42
  %.phi.trans.insert.i314 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %.pre.i315 = load i64, ptr %.phi.trans.insert.i314, align 8, !tbaa !14
  br label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313, %bb.ag
  %i.dc = phi ptr [ %i.ct, %bb.ag ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ] ; 6 uses
  %i.dd = phi i64 [ %i.cy, %bb.ag ], [ %.pre.i315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313 ] ; 6 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i64 %i.dd, ptr %i.df, align 8, !tbaa !14, !alias.scope !42
  store ptr %i.cv, ptr %i.cs, align 8, !tbaa !16
  store i64 0, ptr %i.de, align 8, !tbaa !14
  store i8 0, ptr %i.cv, align 8, !tbaa !17
  %i.dg = load ptr, ptr %4, align 8, !tbaa !16    ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  %i.dj = icmp eq ptr %i.dc, %i.ct                ; 2 uses
  br i1 %i.di, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ah
  br i1 %i.dj, label %bb.ai, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ah
  br i1 %i.dj, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dk = icmp ult i64 %i.dd, 16
  call void @llvm.assume(i1 %i.dk)
  %.not21.i = icmp eq ptr %5, %4
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.aj, !prof !18

bb.aj:                                            ; preds = %bb.ai
  switch i64 %i.dd, label %bb.al [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.dl = load i8, ptr %i.dc, align 1, !tbaa !17
  store i8 %i.dl, ptr %i.dg, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.dc, i64 %i.dd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dm = load i64, ptr %i.df, align 8, !tbaa !14 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !14
  %i.do = load ptr, ptr %4, align 8, !tbaa !16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1, !tbaa !17
  %.pre.i318 = load ptr, ptr %5, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.dc, ptr %4, align 8, !tbaa !16
  store i64 %i.dd, ptr %i.dq, align 8, !tbaa !14
  %i.dr = load i64, ptr %i.ct, align 8, !tbaa !17
  store i64 %i.dr, ptr %i.dh, align 8, !tbaa !17
  br label %bb.an

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ds = load i64, ptr %i.dh, align 8, !tbaa !17
  store ptr %i.dc, ptr %4, align 8, !tbaa !16
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dd, ptr %i.dt, align 8, !tbaa !14
  %i.du = load i64, ptr %i.ct, align 8, !tbaa !17
  store i64 %i.du, ptr %i.dh, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dg, ptr %5, align 8, !tbaa !16
  store i64 %i.ds, ptr %i.ct, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ct, ptr %5, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.am, %bb.an
  %i.dv = phi ptr [ %i.dg, %bb.am ], [ %i.ct, %bb.an ], [ %i.dc, %bb.ai ], [ %.pre.i318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.df, align 8, !tbaa !14
  store i8 0, ptr %i.dv, align 1, !tbaa !17
  %i.dw = load ptr, ptr %5, align 8, !tbaa !16    ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.ct
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dy = load i64, ptr %i.ct, align 8, !tbaa !17
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.dz) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319
  %i.ea = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cd
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ec = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i320
  %i.ee = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.bs
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322
  %i.eg = load i64, ptr %i.bs, align 8, !tbaa !17
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit322, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.thread580

bb.ao:                                            ; preds = %.noexc.i.i.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

bb.ap:                                            ; preds = %bb.ac
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.af
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %6, align 8, !tbaa !16    ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cd
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %bb.aq
  %i.en = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.eo) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326, %bb.ap
  %.pn301 = phi { ptr, i32 } [ %i.ej, %bb.ap ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326 ], [ %i.ek, %bb.aq ] ; 2 uses
  %i.ep = load ptr, ptr %7, align 8, !tbaa !16    ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %i.bs
  br i1 %i.eq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.er = load i64, ptr %i.bs, align 8, !tbaa !17
  %i.es = add i64 %i.er, 1
  call void @_ZdlPvm(ptr noundef %i.ep, i64 noundef %i.es) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329, %bb.ao
  %.pn301.pn = phi { ptr, i32 } [ %i.ei, %bb.ao ], [ %.pn301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329 ], [ %.pn301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.eg

bb.ar:                                            ; preds = %bb.w, %bb.v
  %i.et = trunc nuw nsw i32 %.0256 to i8
  %i.eu = add i64 %.2211723, 1
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 %i.et, ptr %i.ev, align 1, !tbaa !17
  br label %bb.ef

bb.as:                                            ; preds = %bb.g, %bb.g
  %i.ew = add nuw i64 %.2194724, 2                ; 3 uses
  %.not293 = icmp ult i64 %i.ew, %0
  br i1 %.not293, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not299 = icmp eq ptr %4, null
  br i1 %.not299, label %.thread580, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ex = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.3) ; 0 uses
  br label %.thread580

bb.av:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %i.ew
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !17
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !17
  %i.fd = icmp slt i8 %i.fc, 0
  br i1 %i.fd, label %.preheader.preheader.a, label %bb.aw

.preheader.preheader.a:                           ; preds = %bb.av
  %umax = tail call i64 @llvm.umax.i64(i64 %0, i64 %i.ew)
  %21 = add i64 %umax, -1                         ; 2 uses
  %i.fe = add nuw i64 %.2194724, 2                ; 2 uses
  %22 = icmp ult i64 %i.fe, %0
  br i1 %22, label %.lr.ph43, label %.preheader._crit_edge

bb.aw:                                            ; preds = %bb.av
  %.not294 = icmp eq ptr %4, null
  br i1 %.not294, label %.thread580, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ff = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.4) ; 0 uses
  br label %.thread580

.preheader:                                       ; preds = %bb.ay
  %i.fg = icmp ugt i8 %i.fp, 57
  %i.fh = zext i8 %i.fp to i32                    ; 2 uses
  %i.fi = add nuw nsw i32 %i.fh, 9
  %spec.select.i = select i1 %i.fg, i32 %i.fi, i32 %i.fh
  %i.fj = and i32 %spec.select.i, 15
  %i.fk = shl nuw nsw i32 %.023341, 4
  %i.fl = or disjoint i32 %i.fj, %i.fk            ; 2 uses
  %i.fm = add nuw i64 %i.fn, 1                    ; 2 uses
  %23 = icmp ult i64 %i.fm, %0
  br i1 %23, label %.lr.ph43, label %.preheader._crit_edge.loopexit, !llvm.loop !27

.lr.ph43:                                         ; preds = %.preheader.preheader.a, %.preheader
  %i.fn = phi i64 [ %i.fm, %.preheader ], [ %i.fe, %.preheader.preheader.a ] ; 3 uses
  %.519742 = phi i64 [ %i.fn, %.preheader ], [ %i.o, %.preheader.preheader.a ] ; 2 uses
  %.023341 = phi i32 [ %i.fl, %.preheader ], [ 0, %.preheader.preheader.a ] ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !17  ; 3 uses
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !17
  %i.ft = icmp slt i8 %i.fs, 0
  br i1 %i.ft, label %bb.ay, label %.preheader._crit_edge.loopexit

bb.ay:                                            ; preds = %.lr.ph43
  %i.fu = icmp ugt i32 %.023341, 15
  br i1 %i.fu, label %bb.az, label %.preheader, !llvm.loop !27

bb.az:                                            ; preds = %bb.ay
  %.not295 = icmp eq ptr %4, null
  br i1 %.not295, label %.thread580, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %reass.sub729 = sub i64 %.519742, %.2194724
  %i.fv = add i64 %reass.sub729, 1
  %i.fw = sub nuw i64 %0, %i.o
  %.sroa.speculated.i332 = tail call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.fv) ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  store ptr %i.fx, ptr %10, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i64 %.sroa.speculated.i332, ptr %i.d, align 8, !tbaa !15
  %i.fy = icmp ugt i64 %.sroa.speculated.i332, 15
  br i1 %i.fy, label %.noexc.i.i.i341, label %._crit_edge.i.i.i.i340

.noexc.i.i.i341:                                  ; preds = %bb.ba
  %i.fz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc343 unwind label %bb.bp ; 2 uses

.noexc343:                                        ; preds = %.noexc.i.i.i341
  store ptr %i.fz, ptr %10, align 8, !tbaa !16
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !15
  store i64 %i.ga, ptr %i.fx, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i340

._crit_edge.i.i.i.i340:                           ; preds = %.noexc343, %bb.ba
  %i.gb = phi ptr [ %i.fz, %.noexc343 ], [ %i.fx, %bb.ba ] ; 2 uses
  switch i64 %.sroa.speculated.i332, label %bb.bc [
    i64 1, label %bb.bb
    i64 0, label %bb.bd
  ]

bb.bb:                                            ; preds = %._crit_edge.i.i.i.i340
  %i.gc = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.gc, ptr %i.gb, align 1, !tbaa !17
  br label %bb.bd

bb.bc:                                            ; preds = %._crit_edge.i.i.i.i340
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gb, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i332, i1 false)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %._crit_edge.i.i.i.i340
  %i.gd = load i64, ptr %i.d, align 8, !tbaa !15  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !14
  %i.gf = load ptr, ptr %10, align 8, !tbaa !16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.gd
  store i8 0, ptr %i.gg, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  %i.gh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 10)
          to label %.noexc348 unwind label %bb.bq ; 6 uses

.noexc348:                                        ; preds = %bb.bd
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.gi, ptr %9, align 8, !tbaa !20, !alias.scope !43
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 5 uses
  %i.gl = icmp eq ptr %i.gj, %i.gk
  br i1 %i.gl, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345

bb.be:                                            ; preds = %.noexc348
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !14 ; 3 uses
  %i.go = icmp ult i64 %i.gn, 16
  call void @llvm.assume(i1 %i.go)
  %i.gp = add nuw nsw i64 %i.gn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gi, ptr noundef nonnull align 8 dereferenceable(1) %i.gk, i64 %i.gp, i1 false)
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345: ; preds = %.noexc348
  store ptr %i.gj, ptr %9, align 8, !tbaa !16, !alias.scope !43
  %i.gq = load i64, ptr %i.gk, align 8, !tbaa !17
  store i64 %i.gq, ptr %i.gi, align 8, !tbaa !17, !alias.scope !43
  %.phi.trans.insert.i346 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.pre.i347 = load i64, ptr %.phi.trans.insert.i346, align 8, !tbaa !14
  br label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345, %bb.be
  %i.gr = phi i64 [ %i.gn, %bb.be ], [ %.pre.i347, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i345 ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.gr, ptr %i.gt, align 8, !tbaa !14, !alias.scope !43
  store ptr %i.gk, ptr %i.gh, align 8, !tbaa !16
  store i64 0, ptr %i.gs, align 8, !tbaa !14
  store i8 0, ptr %i.gk, align 8, !tbaa !17
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !14, !noalias !44
  %i.gv = add i64 %i.gu, -4611686018427387891
  %i.gw = icmp ult i64 %i.gv, 13
  br i1 %i.gw, label %bb.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #12
          to label %.noexc354 unwind label %bb.br

.noexc354:                                        ; preds = %bb.bg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350: ; preds = %bb.bf
  %i.gx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.2, i64 noundef 13)
          to label %.noexc355 unwind label %bb.br ; 6 uses

.noexc355:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350
  %i.gy = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store ptr %i.gy, ptr %8, align 8, !tbaa !20, !alias.scope !44
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !16 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 16 ; 5 uses
  %i.hb = icmp eq ptr %i.gz, %i.ha
  br i1 %i.hb, label %bb.bh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351

bb.bh:                                            ; preds = %.noexc355
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !14 ; 3 uses
  %i.he = icmp ult i64 %i.hd, 16
  call void @llvm.assume(i1 %i.he)
  %i.hf = add nuw nsw i64 %i.hd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gy, ptr noundef nonnull align 8 dereferenceable(1) %i.ha, i64 %i.hf, i1 false)
  br label %bb.bi

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351: ; preds = %.noexc355
  store ptr %i.gz, ptr %8, align 8, !tbaa !16, !alias.scope !44
  %i.hg = load i64, ptr %i.ha, align 8, !tbaa !17
  store i64 %i.hg, ptr %i.gy, align 8, !tbaa !17, !alias.scope !44
  %.phi.trans.insert.i352 = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %.pre.i353 = load i64, ptr %.phi.trans.insert.i352, align 8, !tbaa !14
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351, %bb.bh
  %i.hh = phi ptr [ %i.gy, %bb.bh ], [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351 ] ; 6 uses
  %i.hi = phi i64 [ %i.hd, %bb.bh ], [ %.pre.i353, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i351 ] ; 6 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 %i.hi, ptr %i.hk, align 8, !tbaa !14, !alias.scope !44
  store ptr %i.ha, ptr %i.gx, align 8, !tbaa !16
  store i64 0, ptr %i.hj, align 8, !tbaa !14
  store i8 0, ptr %i.ha, align 8, !tbaa !17
  %i.hl = load ptr, ptr %4, align 8, !tbaa !16    ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  %i.ho = icmp eq ptr %i.hh, %i.gy                ; 2 uses
  br i1 %i.hn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363: ; preds = %bb.bi
  br i1 %i.ho, label %bb.bj, label %.thread.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357: ; preds = %bb.bi
  br i1 %i.ho, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358

bb.bj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363
  %i.hp = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hp)
  %.not21.i360 = icmp eq ptr %8, %4
  br i1 %.not21.i360, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365, label %bb.bk, !prof !18

bb.bk:                                            ; preds = %bb.bj
  switch i64 %i.hi, label %bb.bm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361
    i64 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.hq = load i8, ptr %i.hh, align 1, !tbaa !17
  store i8 %i.hq, ptr %i.hl, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hl, ptr align 1 %i.hh, i64 %i.hi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.hr = load i64, ptr %i.hk, align 8, !tbaa !14 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.hr, ptr %i.hs, align 8, !tbaa !14
  %i.ht = load ptr, ptr %4, align 8, !tbaa !16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hr
  store i8 0, ptr %i.hu, align 1, !tbaa !17
  %.pre.i362 = load ptr, ptr %8, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365

.thread.i364:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i363
  %i.hv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.hh, ptr %4, align 8, !tbaa !16
  store i64 %i.hi, ptr %i.hv, align 8, !tbaa !14
  %i.hw = load i64, ptr %i.gy, align 8, !tbaa !17
  store i64 %i.hw, ptr %i.hm, align 8, !tbaa !17
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i357
  %i.hx = load i64, ptr %i.hm, align 8, !tbaa !17
  store ptr %i.hh, ptr %4, align 8, !tbaa !16
  %i.hy = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.hi, ptr %i.hy, align 8, !tbaa !14
  %i.hz = load i64, ptr %i.gy, align 8, !tbaa !17
  store i64 %i.hz, ptr %i.hm, align 8, !tbaa !17
  %.not.i359 = icmp eq ptr %i.hl, null
  br i1 %.not.i359, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358
  store ptr %i.hl, ptr %8, align 8, !tbaa !16
  store i64 %i.hx, ptr %i.gy, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i358, %.thread.i364
  store ptr %i.gy, ptr %8, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365: ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361, %bb.bn, %bb.bo
  %i.ia = phi ptr [ %i.hl, %bb.bn ], [ %i.gy, %bb.bo ], [ %i.hh, %bb.bj ], [ %.pre.i362, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i361 ]
  store i64 0, ptr %i.hk, align 8, !tbaa !14
  store i8 0, ptr %i.ia, align 1, !tbaa !17
  %i.ib = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.gy
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365
  %i.id = load i64, ptr %i.gy, align 8, !tbaa !17
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366
  %i.if = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.gi
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368
  %i.ih = load i64, ptr %i.gi, align 8, !tbaa !17
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i369
  %i.ij = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.fx
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371
  %i.il = load i64, ptr %i.fx, align 8, !tbaa !17
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit374: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i372
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %.thread580

bb.bp:                                            ; preds = %.noexc.i.i.i341
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

bb.bq:                                            ; preds = %bb.bd
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i350, %bb.bg
  %i.ip = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.iq = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.gi
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375: ; preds = %bb.br
  %i.is = load i64, ptr %i.gi, align 8, !tbaa !17
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375, %bb.bq
  %.pn296 = phi { ptr, i32 } [ %i.io, %bb.bq ], [ %i.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i375 ], [ %i.ip, %bb.br ] ; 2 uses
  %i.iu = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.fx
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377
  %i.iw = load i64, ptr %i.fx, align 8, !tbaa !17
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378, %bb.bp
  %.pn296.pn = phi { ptr, i32 } [ %i.in, %bb.bp ], [ %.pn296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i378 ], [ %.pn296, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit377 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br label %bb.eg

.preheader._crit_edge.loopexit:                   ; preds = %.preheader, %.lr.ph43
  %.0233.lcssa.ph = phi i32 [ %.023341, %.lr.ph43 ], [ %i.fl, %.preheader ]
  %.5197.lcssa.ph = phi i64 [ %.519742, %.lr.ph43 ], [ %21, %.preheader ]
  %i.iy = trunc nuw i32 %.0233.lcssa.ph to i8
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader._crit_edge.loopexit, %.preheader.preheader.a
  %.0233.lcssa = phi i8 [ 0, %.preheader.preheader.a ], [ %i.iy, %.preheader._crit_edge.loopexit ]
  %.5197.lcssa = phi i64 [ %21, %.preheader.preheader.a ], [ %.5197.lcssa.ph, %.preheader._crit_edge.loopexit ]
  %i.iz = add i64 %.2211723, 1
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 %.2211723
  store i8 %.0233.lcssa, ptr %i.ja, align 1, !tbaa !17
  br label %bb.ef

bb.bs:                                            ; preds = %bb.g
  %i.jb = add i64 %.2194724, 5                    ; 3 uses
  %.not288 = icmp ult i64 %i.jb, %0
  br i1 %.not288, label %.preheader614.preheader, label %bb.bt

.preheader614.preheader:                          ; preds = %bb.bs
  %i.jc = add i64 %.2194724, 2                    ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !17  ; 3 uses
  %i.jf = zext i8 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !17
  %i.ji = icmp slt i8 %i.jh, 0
  br i1 %i.ji, label %.preheader614.1, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  %.not292 = icmp eq ptr %4, null
  br i1 %.not292, label %.thread580, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.jj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !14
  %i.jl = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef %i.jk, ptr noundef nonnull @.str.5, i64 noundef 35) ; 0 uses
  br label %.thread580

.preheader614.1:                                  ; preds = %.preheader614.preheader
  %i.jm = add i64 %.2194724, 3                    ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %1, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !17  ; 3 uses
  %i.jp = zext i8 %i.jo to i64
  %i.jq = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.jp
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !17
  %i.js = icmp slt i8 %i.jr, 0
  br i1 %i.js, label %.preheader614.2, label %bb.bv

.preheader614.2:                                  ; preds = %.preheader614.1
  %i.jt = add i64 %.2194724, 4                    ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 %i.jt
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !17  ; 3 uses
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.jw
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !17
  %i.jz = icmp slt i8 %i.jy, 0
  br i1 %i.jz, label %.preheader614.3, label %bb.bv

.preheader614.3:                                  ; preds = %.preheader614.2
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 %i.jb
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !17  ; 3 uses
  %i.kc = zext i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052614ascii_internal13kPropertyBitsE, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !17
  %i.kf = icmp slt i8 %i.ke, 0
  br i1 %i.kf, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit421, label %bb.bv

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit421: ; preds = %.preheader614.3
  %i.kg = icmp ugt i8 %i.jv, 57
  %i.kh = zext i8 %i.jv to i32
  %i.ki = icmp ugt i8 %i.jo, 57
  %i.kj = zext i8 %i.jo to i32                    ; 2 uses
  %i.kk = add nuw nsw i32 %i.kj, 9
  %spec.select.i381.1 = select i1 %i.ki, i32 %i.kk, i32 %i.kj
  %i.kl = and i32 %spec.select.i381.1, 15
  %i.km = icmp ugt i8 %i.je, 57
  %i.kn = zext i8 %i.je to i32
  %i.ko = shl nuw nsw i32 %i.kn, 4                ; 2 uses
  %i.kp = add nuw nsw i32 %i.ko, 144
  %i.kq = select i1 %i.km, i32 %i.kp, i32 %i.ko
  %i.kr = and i32 %i.kq, 240
  %i.ks = or disjoint i32 %i.kl, %i.kr
  %i.kt = shl nuw nsw i32 %i.ks, 8
  %i.ku = shl nuw nsw i32 %i.kh, 4                ; 2 uses
  %i.kv = add nuw nsw i32 %i.ku, 144
  %i.kw = select i1 %i.kg, i32 %i.kv, i32 %i.ku
  %i.kx = and i32 %i.kw, 240
  %i.ky = or disjoint i32 %i.kt, %i.kx
  %i.kz = zext i8 %i.kb to i32                    ; 2 uses
  %i.la = icmp ugt i8 %i.kb, 57
  %i.lb = add nuw nsw i32 %i.kz, 9
  %spec.select.i381.3 = select i1 %i.la, i32 %i.lb, i32 %i.kz
  %i.lc = and i32 %spec.select.i381.3, 15
  %i.ld = or disjoint i32 %i.lc, %i.ky            ; 2 uses
  %i.le = sub nuw i64 %0, %i.o
  %.sroa.speculated.i418 = tail call i64 @llvm.umin.i64(i64 %i.le, i64 5)
  %i.lf = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052612_GLOBAL__N_111IsSurrogateEDiSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE(i32 noundef zeroext %i.ld, i64 %.sroa.speculated.i418, ptr nonnull %i.s, ptr noundef %4)
  br i1 %i.lf, label %.thread580, label %bb.ck

bb.bv:                                            ; preds = %.preheader614.3, %.preheader614.2, %.preheader614.1, %.preheader614.preheader
  %.7199719.lcssa = phi i64 [ %i.o, %.preheader614.preheader ], [ %i.jc, %.preheader614.1 ], [ %i.jm, %.preheader614.2 ], [ %i.jt, %.preheader614.3 ]
  %.not289 = icmp eq ptr %4, null
  br i1 %.not289, label %.thread580, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.lg = sub i64 %.7199719.lcssa, %.2194724
  %i.lh = sub nuw i64 %0, %i.o
  %.sroa.speculated.i382 = tail call i64 @llvm.umin.i64(i64 %i.lh, i64 %i.lg) ; 4 uses
  %i.li = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.li, ptr %12, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 %.sroa.speculated.i382, ptr %i.c, align 8, !tbaa !15
  %i.lj = icmp ugt i64 %.sroa.speculated.i382, 15
  br i1 %i.lj, label %.noexc.i.i.i391, label %._crit_edge.i.i.i.i390

.noexc.i.i.i391:                                  ; preds = %bb.bw
  %i.lk = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc393 unwind label %bb.ci ; 2 uses

.noexc393:                                        ; preds = %.noexc.i.i.i391
  store ptr %i.lk, ptr %12, align 8, !tbaa !16
  %i.ll = load i64, ptr %i.c, align 8, !tbaa !15
  store i64 %i.ll, ptr %i.li, align 8, !tbaa !17
  br label %._crit_edge.i.i.i.i390

._crit_edge.i.i.i.i390:                           ; preds = %.noexc393, %bb.bw
  %i.lm = phi ptr [ %i.lk, %.noexc393 ], [ %i.li, %bb.bw ] ; 2 uses
  switch i64 %.sroa.speculated.i382, label %bb.by [
    i64 1, label %bb.bx
    i64 0, label %bb.bz
  ]

bb.bx:                                            ; preds = %._crit_edge.i.i.i.i390
  %i.ln = load i8, ptr %i.s, align 1, !tbaa !17
  store i8 %i.ln, ptr %i.lm, align 1, !tbaa !17
  br label %bb.bz

bb.by:                                            ; preds = %._crit_edge.i.i.i.i390
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lm, ptr nonnull align 1 %i.s, i64 %.sroa.speculated.i382, i1 false)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %._crit_edge.i.i.i.i390
  %i.lo = load i64, ptr %i.c, align 8, !tbaa !15  ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.lo, ptr %i.lp, align 8, !tbaa !14
  %i.lq = load ptr, ptr %12, align 8, !tbaa !16
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.lo
  store i8 0, ptr %i.lr, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.ls = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 38)
          to label %.noexc398 unwind label %bb.cj ; 6 uses

.noexc398:                                        ; preds = %bb.bz
  %i.lt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 12 uses
  store ptr %i.lt, ptr %11, align 8, !tbaa !20, !alias.scope !45
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !16 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 16 ; 5 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

bb.ca:                                            ; preds = %.noexc398
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !14 ; 3 uses
  %i.lz = icmp ult i64 %i.ly, 16
  call void @llvm.assume(i1 %i.lz)
  %i.ma = add nuw nsw i64 %i.ly, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lt, ptr noundef nonnull align 8 dereferenceable(1) %i.lv, i64 %i.ma, i1 false)
  br label %bb.cb

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %.noexc398
  store ptr %i.lu, ptr %11, align 8, !tbaa !16, !alias.scope !45
  %i.mb = load i64, ptr %i.lv, align 8, !tbaa !17
  store i64 %i.mb, ptr %i.lt, align 8, !tbaa !17, !alias.scope !45
  %.phi.trans.insert.i396 = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %.pre.i397 = load i64, ptr %.phi.trans.insert.i396, align 8, !tbaa !14
  br label %bb.cb

bb.cb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395, %bb.ca
  %i.mc = phi ptr [ %i.lt, %bb.ca ], [ %i.lu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ] ; 6 uses
  %i.md = phi i64 [ %i.ly, %bb.ca ], [ %.pre.i397, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395 ] ; 6 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i64 %i.md, ptr %i.mf, align 8, !tbaa !14, !alias.scope !45
  store ptr %i.lv, ptr %i.ls, align 8, !tbaa !16
  store i64 0, ptr %i.me, align 8, !tbaa !14
  store i8 0, ptr %i.lv, align 8, !tbaa !17
  %i.mg = load ptr, ptr %4, align 8, !tbaa !16    ; 6 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  %i.mj = icmp eq ptr %i.mc, %i.lt                ; 2 uses
  br i1 %i.mi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i406, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i400

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i406: ; preds = %bb.cb
  br i1 %i.mj, label %bb.cc, label %.thread.i407

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i400: ; preds = %bb.cb
  br i1 %i.mj, label %bb.cc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i401

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i406
  %i.mk = icmp ult i64 %i.md, 16
  call void @llvm.assume(i1 %i.mk)
  %.not21.i403 = icmp eq ptr %11, %4
  br i1 %.not21.i403, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit408, label %bb.cd, !prof !18

bb.cd:                                            ; preds = %bb.cc
  switch i64 %i.md, label %bb.cf [
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052612_GLOBAL__N_111IsSurrogateEDiSt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS4_SaIcEEE:bb.a
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.t = load i64, ptr %i.d, align 8, !tbaa !17
  store ptr %i.f, ptr %3, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load <2 x i64>, ptr %i.u, align 8, !tbaa !17
  store <2 x i64> %i.w, ptr %i.v, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.c, ptr %4, align 8, !tbaa !16
  store i64 %i.t, ptr %i.g, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.g, ptr %4, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.x = phi ptr [ %i.c, %bb.g ], [ %i.g, %bb.h ], [ %i.f, %bb.c ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !14
  store i8 0, ptr %i.x, align 1, !tbaa !17
  %i.z = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !17
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret i1 %or.cond
}

declare noundef i64 @_ZN4absl12lts_2026052616strings_internal14EncodeUTF8CharEPcDi(ptr noundef, i32 noundef zeroext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, i64 noundef 1, i8 noundef signext %2) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !20
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14   ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8, !tbaa !16
  %i.l = load i64, ptr %i.f, align 8, !tbaa !17
  store i64 %i.l, ptr %i.d, align 8, !tbaa !17
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8, !tbaa !14
  store ptr %i.f, ptr %i.c, align 8, !tbaa !16
  store i64 0, ptr %i.n, align 8, !tbaa !14
  store i8 0, ptr %i.f, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !20
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.d, ptr %i.a, align 8, !tbaa !15
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  %i.g = load i64, ptr %i.a, align 8, !tbaa !15
  store i64 %i.g, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.i, ptr %i.h, align 1, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !14
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN4absl12lts_202605266StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: noreturn
declare void @_ZN4absl12lts_2026052619ThrowStdLengthErrorEPKc(ptr noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZN4absl12lts_2026052616strings_internal33CalculateBase64EscapedLenInternalEmb(i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0, !12, i64 8, !5, i64 16}
!14 = !{!13, !12, i64 8}
!15 = !{!12, !12, i64 0}
!16 = !{!13, !10, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!11, !10, i64 0}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !19}
!23 = distinct !{!23, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!24 = distinct !{!24, !23, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!25 = distinct !{!25, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!26 = distinct !{!26, !25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!27 = distinct !{!27, !19}
!28 = distinct !{!28, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!29 = distinct !{!29, !28, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!30 = distinct !{!30, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!31 = distinct !{!31, !30, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!32 = distinct !{!32, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!33 = distinct !{!33, !32, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!34 = distinct !{!34, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!35 = distinct !{!35, !34, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!36 = distinct !{!36, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!37 = distinct !{!37, !36, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!38 = distinct !{!38, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!39 = distinct !{!39, !38, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!40 = distinct !{!40, !19}
!41 = !{!24}
!42 = !{!26}
!43 = !{!29}
!44 = !{!31}
!45 = !{!33}
!46 = !{!35}
!47 = !{!37}
!48 = !{!39}
!49 = distinct !{!49, !21}
!50 = distinct !{!50, !19}
!51 = distinct !{null}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !21}
!54 = !{!6, !6, i64 0}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = !{!"bool", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = distinct !{!66, !21}
!67 = distinct !{!67, !19}
!68 = !{!10, !10, i64 0}
end_hunk_2
