Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/escaping?download=true
inline.NumInlined: 444
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN4absl16strings_internal20Base64EscapeInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhmPT_bPKc = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_ = comdat any

@_ZN4absl12_GLOBAL__N_19kUnBase64E = internal constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@_ZN4absl12_GLOBAL__N_116kUnWebSafeBase64E = internal constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF?\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
@_ZN4absl16strings_internal12kBase64CharsE = external constant [0 x i8], align 1
@_ZN4absl16strings_internal19kWebSafeBase64CharsE = external constant [0 x i8], align 1
@_ZN4absl12_GLOBAL__N_115kHexValueStrictE = internal unnamed_addr constant %"struct.std::array" { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 1
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
@.str.11 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZN4absl14ascii_internal13kPropertyBitsE = external local_unnamed_addr constant [256 x i8], align 16
@.str.20 = private unnamed_addr constant [62 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/escaping.cc\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"invalid surrogate character (0xD800-DFFF): \\\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"basic_string::_M_replace_aux\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"basic_string::erase\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"Check new_dest_len > cur_dest_len failed: \00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"std::string size overflow\00", align 1
@_ZN4absl16raw_log_internal21internal_log_functionB5cxx11E = external local_unnamed_addr global %"class.absl::base_internal::AtomicHook", align 8
@.str.26 = private unnamed_addr constant [36 x i8] c"false && \22ABSL_UNREACHABLE reached\22\00", align 1
@__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_124CEscapeAndAppendInternalESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEE = private unnamed_addr constant [102 x i8] c"void absl::(anonymous namespace)::CEscapeAndAppendInternal(absl::string_view, std::string * _Nonnull)\00", align 1
@_ZN4absl12_GLOBAL__N_112kCEscapedLenE = internal unnamed_addr constant %"struct.std::array.0" { [256 x i8] c"\04\04\04\04\04\04\04\04\04\02\02\04\04\02\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\01\01\02\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04" }, align 1
@_ZN4absl12_GLOBAL__N_132kCEscapedLittleEndianUint32ArrayE = internal unnamed_addr constant %"struct.std::array.1" { [256 x i32] [i32 808464476, i32 825241692, i32 842018908, i32 858796124, i32 875573340, i32 892350556, i32 909127772, i32 925904988, i32 808530012, i32 29788, i32 28252, i32 858861660, i32 875638876, i32 29276, i32 909193308, i32 925970524, i32 808595548, i32 825372764, i32 842149980, i32 858927196, i32 875704412, i32 892481628, i32 909258844, i32 926036060, i32 808661084, i32 825438300, i32 842215516, i32 858992732, i32 875769948, i32 892547164, i32 909324380, i32 926101596, i32 32, i32 33, i32 8796, i32 35, i32 36, i32 37, i32 38, i32 10076, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79, i32 80, i32 81, i32 82, i32 83, i32 84, i32 85, i32 86, i32 87, i32 88, i32 89, i32 90, i32 91, i32 23644, i32 93, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108, i32 109, i32 110, i32 111, i32 112, i32 113, i32 114, i32 115, i32 116, i32 117, i32 118, i32 119, i32 120, i32 121, i32 122, i32 123, i32 124, i32 125, i32 126, i32 926363996, i32 808464988, i32 825242204, i32 842019420, i32 858796636, i32 875573852, i32 892351068, i32 909128284, i32 925905500, i32 808530524, i32 825307740, i32 842084956, i32 858862172, i32 875639388, i32 892416604, i32 909193820, i32 925971036, i32 808596060, i32 825373276, i32 842150492, i32 858927708, i32 875704924, i32 892482140, i32 909259356, i32 926036572, i32 808661596, i32 825438812, i32 842216028, i32 858993244, i32 875770460, i32 892547676, i32 909324892, i32 926102108, i32 808727132, i32 825504348, i32 842281564, i32 859058780, i32 875835996, i32 892613212, i32 909390428, i32 926167644, i32 808792668, i32 825569884, i32 842347100, i32 859124316, i32 875901532, i32 892678748, i32 909455964, i32 926233180, i32 808858204, i32 825635420, i32 842412636, i32 859189852, i32 875967068, i32 892744284, i32 909521500, i32 926298716, i32 808923740, i32 825700956, i32 842478172, i32 859255388, i32 876032604, i32 892809820, i32 909587036, i32 926364252, i32 808465244, i32 825242460, i32 842019676, i32 858796892, i32 875574108, i32 892351324, i32 909128540, i32 925905756, i32 808530780, i32 825307996, i32 842085212, i32 858862428, i32 875639644, i32 892416860, i32 909194076, i32 925971292, i32 808596316, i32 825373532, i32 842150748, i32 858927964, i32 875705180, i32 892482396, i32 909259612, i32 926036828, i32 808661852, i32 825439068, i32 842216284, i32 858993500, i32 875770716, i32 892547932, i32 909325148, i32 926102364, i32 808727388, i32 825504604, i32 842281820, i32 859059036, i32 875836252, i32 892613468, i32 909390684, i32 926167900, i32 808792924, i32 825570140, i32 842347356, i32 859124572, i32 875901788, i32 892679004, i32 909456220, i32 926233436, i32 808858460, i32 825635676, i32 842412892, i32 859190108, i32 875967324, i32 892744540, i32 909521756, i32 926298972, i32 808923996, i32 825701212, i32 842478428, i32 859255644, i32 876032860, i32 892810076, i32 909587292, i32 926364508] }, align 4
@.str.27 = private unnamed_addr constant [76 x i8] c"Check escaped_len <= std::numeric_limits<size_t>::max() - char_len failed: \00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"escaped_len overflow\00", align 1
@__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_114CEscapedLengthESt17basic_string_viewIcSt11char_traitsIcEE = private unnamed_addr constant [70 x i8] c"size_t absl::(anonymous namespace)::CEscapedLength(absl::string_view)\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"\\x\00", align 1
@_ZN4absl16numbers_internal8kHexCharE = external local_unnamed_addr constant [17 x i8], align 16
@.str.36 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"len <= dest_len\00", align 1
@__PRETTY_FUNCTION__._ZN4absl12_GLOBAL__N_122Base64UnescapeInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbPKcmPT_RKSt5arrayIaLm256EE = private unnamed_addr constant [181 x i8] c"bool absl::(anonymous namespace)::Base64UnescapeInternal(const char * _Nullable, size_t, String * _Nonnull, const std::array<signed char, 256> &) [String = std::basic_string<char>]\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"calc_escaped_size == escaped_len\00", align 1
@.str.40 = private unnamed_addr constant [70 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/escaping.h\00", align 1
@__PRETTY_FUNCTION__._ZN4absl16strings_internal20Base64EscapeInternalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPKhmPT_bPKc = private unnamed_addr constant [146 x i8] c"void absl::strings_internal::Base64EscapeInternal(const unsigned char *, size_t, String *, bool, const char *) [String = std::basic_string<char>]\00", align 1
@_ZN4absl12_GLOBAL__N_116kHexValueLenientE = internal unnamed_addr constant { <{ [103 x i8], [153 x i8] }> } { <{ [103 x i8], [153 x i8] }> <{ [103 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0B\0C\0D\0E\0F", [153 x i8] zeroinitializer }> }, align 1
@_ZN4absl16numbers_internal9kHexTableE = external local_unnamed_addr constant [513 x i8], align 16

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4absl9CUnescapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS2_SaIcEEES8_(i64 %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 7 uses
  %i.c = icmp ult i64 %i.b, %0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %0, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #14
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.h, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %0, %i.l
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i.i.i.i.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i.i.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i.i.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i
  store i8 0, ptr %i.n, align 1
  br label %.sink.split.i.i.i.i.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i.i.i.i.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %0, %i.b
  br i1 %i.o, label %.sink.split.i.i.i.i.i, label %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.g, %bb.f, %bb.e
  store i64 %0, ptr %i.a, align 8
  %i.p = load ptr, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %0
  store i8 0, ptr %i.q, align 1
  br label %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i

_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i: ; preds = %.sink.split.i.i.i.i.i, %bb.g
  %i.r = load ptr, ptr %2, align 8
  %i.s = icmp eq ptr %1, %i.r
  %i.t = icmp ne i64 %0, 0
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.split.i

.lr.ph.i:                                         ; preds = %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i, %bb.h
  %.0191619.i = phi i64 [ %i.w, %bb.h ], [ 0, %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.0191619.i
  %i.v = load i8, ptr %i.u, align 1
  %.not.i = icmp eq i8 %i.v, 92
  br i1 %.not.i, label %.critedge.split.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.w = add nuw i64 %.0191619.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.w, %0
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !8

.critedge.split.i:                                ; preds = %.lr.ph.i, %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i
  %.1209.i = phi i64 [ 0, %_ZN4absl16strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i ], [ %.0191619.i, %.lr.ph.i ] ; 4 uses
  %.not643.i = icmp ult i64 %.1209.i, %0
  br i1 %.not643.i, label %.lr.ph640.preheader.i, label %._crit_edge.i

.lr.ph640.preheader.i:                            ; preds = %.critedge.split.i
  %i.x = add i64 %0, -1
  br label %.lr.ph640.i

.lr.ph640.i:                                      ; preds = %bb.ee, %.lr.ph640.preheader.i
  %.2193639.i = phi i64 [ %.12.i, %bb.ee ], [ %.1209.i, %.lr.ph640.preheader.i ] ; 23 uses
  %.2210638.i = phi i64 [ %.12220.i, %bb.ee ], [ %.1209.i, %.lr.ph640.preheader.i ] ; 34 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %.2193639.i
  %i.z = load i8, ptr %i.y, align 1               ; 2 uses
  %.not253.i = icmp eq i8 %i.z, 92
  br i1 %.not253.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph640.i
  %i.aa = add i64 %.2210638.i, 1
  %i.ab = load ptr, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.2210638.i
  store i8 %i.z, ptr %i.ac, align 1
  br label %bb.ee

bb.j:                                             ; preds = %.lr.ph640.i
  %i.ad = add nuw i64 %.2193639.i, 1              ; 24 uses
  %.not254.i = icmp ult i64 %i.ad, %0
  br i1 %.not254.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not268.i = icmp eq ptr %3, null
  br i1 %.not268.i, label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.af, ptr noundef nonnull @.str, i64 noundef 24) ; 0 uses
  br label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit

bb.m:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad ; 14 uses
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  switch i8 %i.ai, label %bb.ec [
    i8 97, label %bb.n
    i8 98, label %bb.o
    i8 102, label %bb.p
    i8 110, label %bb.q
    i8 114, label %bb.r
    i8 116, label %bb.s
    i8 118, label %bb.t
    i8 92, label %bb.u
    i8 63, label %bb.v
    i8 39, label %bb.w
    i8 34, label %bb.x
    i8 48, label %bb.y
    i8 49, label %bb.y
    i8 50, label %bb.y
    i8 51, label %bb.y
    i8 52, label %bb.y
    i8 53, label %bb.y
    i8 54, label %bb.y
    i8 55, label %bb.y
    i8 120, label %bb.ay
    i8 88, label %bb.ay
    i8 117, label %bb.by
    i8 85, label %bb.cr
  ]

bb.n:                                             ; preds = %bb.m
  %i.aj = add i64 %.2210638.i, 1
  %i.ak = load ptr, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.2210638.i
  store i8 7, ptr %i.al, align 1
  br label %bb.ee

bb.o:                                             ; preds = %bb.m
  %i.am = add i64 %.2210638.i, 1
  %i.an = load ptr, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %.2210638.i
  store i8 8, ptr %i.ao, align 1
  br label %bb.ee

bb.p:                                             ; preds = %bb.m
  %i.ap = add i64 %.2210638.i, 1
  %i.aq = load ptr, ptr %2, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.2210638.i
  store i8 12, ptr %i.ar, align 1
  br label %bb.ee

bb.q:                                             ; preds = %bb.m
  %i.as = add i64 %.2210638.i, 1
  %i.at = load ptr, ptr %2, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %.2210638.i
  store i8 10, ptr %i.au, align 1
  br label %bb.ee

bb.r:                                             ; preds = %bb.m
  %i.av = add i64 %.2210638.i, 1
  %i.aw = load ptr, ptr %2, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.2210638.i
  store i8 13, ptr %i.ax, align 1
  br label %bb.ee

bb.s:                                             ; preds = %bb.m
  %i.ay = add i64 %.2210638.i, 1
  %i.az = load ptr, ptr %2, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.2210638.i
  store i8 9, ptr %i.ba, align 1
  br label %bb.ee

bb.t:                                             ; preds = %bb.m
  %i.bb = add i64 %.2210638.i, 1
  %i.bc = load ptr, ptr %2, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.2210638.i
  store i8 11, ptr %i.bd, align 1
  br label %bb.ee

bb.u:                                             ; preds = %bb.m
  %i.be = add i64 %.2210638.i, 1
  %i.bf = load ptr, ptr %2, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.2210638.i
  store i8 92, ptr %i.bg, align 1
  br label %bb.ee

bb.v:                                             ; preds = %bb.m
  %i.bh = add i64 %.2210638.i, 1
  %i.bi = load ptr, ptr %2, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.2210638.i
  store i8 63, ptr %i.bj, align 1
  br label %bb.ee

bb.w:                                             ; preds = %bb.m
  %i.bk = add i64 %.2210638.i, 1
  %i.bl = load ptr, ptr %2, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.2210638.i
  store i8 39, ptr %i.bm, align 1
  br label %bb.ee

bb.x:                                             ; preds = %bb.m
  %i.bn = add i64 %.2210638.i, 1
  %i.bo = load ptr, ptr %2, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.2210638.i
  store i8 34, ptr %i.bp, align 1
  br label %bb.ee

bb.y:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.bq = zext nneg i8 %i.ai to i32
  %i.br = add nsw i32 %i.bq, -48                  ; 3 uses
  %i.bs = add nuw i64 %.2193639.i, 2              ; 3 uses
  %i.bt = icmp ult i64 %i.bs, %0
  br i1 %i.bt, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1             ; 2 uses
  %i.bw = and i8 %i.bv, -8
  %i.bx = icmp eq i8 %i.bw, 48
  br i1 %i.bx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.by = shl nuw nsw i32 %i.br, 3
  %i.bz = zext nneg i8 %i.bv to i32
  %i.ca = add nsw i32 %i.bz, -48
  %i.cb = or disjoint i32 %i.ca, %i.by
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.0233.i = phi i32 [ %i.cb, %bb.aa ], [ %i.br, %bb.z ], [ %i.br, %bb.y ] ; 2 uses
  %.3194.i = phi i64 [ %i.bs, %bb.aa ], [ %i.ad, %bb.z ], [ %i.ad, %bb.y ] ; 2 uses
  %i.cc = add nuw i64 %.3194.i, 1                 ; 4 uses
  %i.cd = icmp ult i64 %i.cc, %0
  br i1 %i.cd, label %bb.ac, label %bb.ax

bb.ac:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc
  %i.cf = load i8, ptr %i.ce, align 1             ; 2 uses
  %i.cg = and i8 %i.cf, -8
  %i.ch = icmp eq i8 %i.cg, 48
  br i1 %i.ch, label %bb.ad, label %bb.ax

bb.ad:                                            ; preds = %bb.ac
  %i.ci = shl nuw nsw i32 %.0233.i, 3
  %i.cj = zext nneg i8 %i.cf to i32
  %i.ck = add nsw i32 %i.cj, -48
  %i.cl = or disjoint i32 %i.ck, %i.ci            ; 2 uses
  %i.cm = icmp samesign ult i32 %i.cl, 256
  br i1 %i.cm, label %.thread510.i, label %bb.ae

.thread510.i:                                     ; preds = %bb.ad
  %i.cn = trunc nuw i32 %i.cl to i8
  %i.co = add i64 %.2210638.i, 1
  %i.cp = load ptr, ptr %2, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.2210638.i
  store i8 %i.cn, ptr %i.cq, align 1
  br label %bb.ee

bb.ae:                                            ; preds = %bb.ad
  %.not266.i = icmp eq ptr %3, null
  br i1 %.not266.i, label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.cr = sub i64 %i.cc, %.2193639.i
  %i.cs = sub nuw i64 %0, %i.ad
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.cr) ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.ct, ptr %6, align 8
  %i.cu = icmp ugt i64 %.sroa.speculated.i.i, 15
  br i1 %i.cu, label %bb.ag, label %._crit_edge.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.cv = icmp slt i64 %.sroa.speculated.i.i, 0
  br i1 %i.cv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #14
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.cw = add nuw i64 %.sroa.speculated.i.i, 1    ; 2 uses
  %i.cx = icmp slt i64 %i.cw, 0
  br i1 %i.cx, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !6

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
begin_hunk_1_@_ZN4absl9CUnescapeESt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS2_SaIcEEES8_:bb.a

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ep = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ep)
  %.not21.i.i = icmp eq ptr %4, %3
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.as, !prof !6

bb.as:                                            ; preds = %bb.ar
  switch i64 %i.ej, label %bb.au [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.at
  ]

bb.at:                                            ; preds = %bb.as
  %i.eq = load i8, ptr %i.ei, align 1
  store i8 %i.eq, ptr %i.el, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.ei, i64 %i.ej, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.au, %bb.at, %bb.as
  %i.er = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.er, ptr %i.es, align 8
  %i.et = load ptr, ptr %3, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.er
  store i8 0, ptr %i.eu, align 1
  %.pre.i273.i = load ptr, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ei, ptr %3, align 8
  store i64 %i.ej, ptr %i.ev, align 8
  %i.ew = load i64, ptr %i.eb, align 8
  store i64 %i.ew, ptr %i.em, align 8
  br label %bb.aw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ex = load i64, ptr %i.em, align 8
  store ptr %i.ei, ptr %3, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ej, ptr %i.ey, align 8
  %i.ez = load i64, ptr %i.eb, align 8
  store i64 %i.ez, ptr %i.em, align 8
  %.not.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.el, ptr %4, align 8
  store i64 %i.ex, ptr %i.eb, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.aw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.eb, ptr %4, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.aw, %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.ar
  %i.fa = phi ptr [ %i.el, %bb.av ], [ %i.eb, %bb.aw ], [ %i.ei, %bb.ar ], [ %.pre.i273.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.ek, align 8
  store i8 0, ptr %i.fa, align 1
  %i.fb = load ptr, ptr %4, align 8               ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.eb
  br i1 %i.fc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.fd = load i64, ptr %i.eb, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.fe) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i274.i
  %i.ff = load ptr, ptr %5, align 8               ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.de
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fh = load i64, ptr %i.de, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275.i
  %i.fj = load ptr, ptr %6, align 8               ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.ct
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i
  %i.fl = load i64, ptr %i.ct, align 8
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit

bb.ax:                                            ; preds = %bb.ac, %bb.ab
  %i.fn = trunc nuw nsw i32 %.0233.i to i8
  %i.fo = add i64 %.2210638.i, 1
  %i.fp = load ptr, ptr %2, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.2210638.i
  store i8 %i.fn, ptr %i.fq, align 1
  br label %bb.ee

bb.ay:                                            ; preds = %bb.m, %bb.m
  %i.fr = add nuw i64 %.2193639.i, 2              ; 3 uses
  %.not262.i = icmp ult i64 %i.fr, %0
  br i1 %.not262.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not265.i = icmp eq ptr %3, null
  br i1 %.not265.i, label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fs = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3) ; 0 uses
  br label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit

bb.bb:                                            ; preds = %bb.ay
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 %i.fr
  %i.fu = load i8, ptr %i.ft, align 1             ; 3 uses
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZN4absl14ascii_internal13kPropertyBitsE, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = icmp slt i8 %i.fx, 0
  br i1 %i.fy, label %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i.preheader, label %bb.bc

_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i.preheader: ; preds = %bb.bb
  %i.fz = zext i8 %i.fu to i32                    ; 2 uses
  %i.ga = icmp ugt i8 %i.fu, 57
  %i.gb = add nuw nsw i32 %i.fz, 9
  %spec.select.i.i298 = select i1 %i.ga, i32 %i.gb, i32 %i.fz
  %i.gc = and i32 %spec.select.i.i298, 15         ; 2 uses
  %i.gd = add i64 %.2193639.i, 3                  ; 2 uses
  %exitcond690.not.i299 = icmp eq i64 %i.gd, %0
  br i1 %exitcond690.not.i299, label %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge, label %.lr.ph632.i.lr.ph, !llvm.loop !13

.lr.ph632.i.lr.ph:                                ; preds = %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i.preheader
  br label %.lr.ph632.i, !llvm.loop !13

bb.bc:                                            ; preds = %bb.bb
  %.not263.i = icmp eq ptr %3, null
  br i1 %.not263.i, label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ge = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4) ; 0 uses
  br label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit

.lr.ph632.i:                                      ; preds = %.lr.ph632.i.lr.ph, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i
  %i.gf = phi i64 [ %i.gd, %.lr.ph632.i.lr.ph ], [ %i.gv, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i ] ; 3 uses
  %i.gg = phi i32 [ %i.gc, %.lr.ph632.i.lr.ph ], [ %i.gu, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i ] ; 2 uses
  %i.gh = phi i32 [ 0, %.lr.ph632.i.lr.ph ], [ %i.gp, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i ]
  %i.gi = phi i64 [ %i.fr, %.lr.ph632.i.lr.ph ], [ %i.gf, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 %i.gf
  %i.gk = load i8, ptr %i.gj, align 1             ; 3 uses
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr @_ZN4absl14ascii_internal13kPropertyBitsE, i64 %i.gl
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = icmp slt i8 %i.gn, 0
  br i1 %i.go, label %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i, label %.critedge9.i, !llvm.loop !13

_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i: ; preds = %.lr.ph632.i
  %i.gp = shl i32 %i.gg, 4                        ; 3 uses
  %i.gq = zext i8 %i.gk to i32                    ; 2 uses
  %i.gr = icmp ugt i8 %i.gk, 57
  %i.gs = add nuw nsw i32 %i.gq, 9
  %spec.select.i.i = select i1 %i.gr, i32 %i.gs, i32 %i.gq
  %i.gt = and i32 %spec.select.i.i, 15
  %i.gu = or disjoint i32 %i.gt, %i.gp            ; 2 uses
  %i.gv = add i64 %i.gf, 1                        ; 2 uses
  %exitcond690.not.i = icmp eq i64 %i.gv, %0
  br i1 %exitcond690.not.i, label %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i._ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge_crit_edge, label %.lr.ph632.i, !llvm.loop !13

_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i._ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge_crit_edge: ; preds = %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i
  br label %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge, !llvm.loop !13

_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge: ; preds = %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i._ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge_crit_edge, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i.preheader
  %.lcssa257 = phi i32 [ %i.gp, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i._ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge_crit_edge ], [ 0, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i.preheader ]
  %.lcssa = phi i32 [ %i.gu, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i._ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge_crit_edge ], [ %i.gc, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i.preheader ]
  br label %.critedge9.i, !llvm.loop !13

.critedge9.i:                                     ; preds = %.lr.ph632.i, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge
  %i.gw = phi i32 [ %.lcssa257, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge ], [ %i.gh, %.lr.ph632.i ]
  %i.gx = phi i32 [ %.lcssa, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge ], [ %i.gg, %.lr.ph632.i ]
  %.5196.lcssa.ph.i = phi i64 [ %i.x, %_ZN4absl12_GLOBAL__N_116hex_digit_to_intEc.exit.i..critedge9.i_crit_edge ], [ %i.gi, %.lr.ph632.i ] ; 2 uses
  %i.gy = icmp ult i32 %i.gw, 256
  br i1 %i.gy, label %bb.bx, label %bb.be

bb.be:                                            ; preds = %.critedge9.i
  %.not264.i = icmp eq ptr %3, null
  br i1 %.not264.i, label %_ZN4absl12_GLOBAL__N_117CUnescapeInternalESt17basic_string_viewIcSt11char_traitsIcEEbPNSt7__cxx1112basic_stringIcS3_SaIcEEES9_.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.gz = sub nuw i64 %.5196.lcssa.ph.i, %.2193639.i
  %20 = sub nuw i64 %0, %i.ad
  %.sroa.speculated.i281.i = tail call i64 @llvm.umin.i64(i64 %20, i64 %i.gz) ; 8 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store ptr %i.ha, ptr %9, align 8
  %i.hb = icmp ugt i64 %.sroa.speculated.i281.i, 15
  br i1 %i.hb, label %bb.bg, label %._crit_edge.i.i.i.i289.i

bb.bg:                                            ; preds = %bb.bf
  %i.hc = icmp slt i64 %.sroa.speculated.i281.i, 0
  br i1 %i.hc, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #14
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.hd = add nuw i64 %.sroa.speculated.i281.i, 1 ; 2 uses
  %i.he = icmp slt i64 %i.hd, 0
  br i1 %i.he, label %bb.bj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i290.i, !prof !6

bb.bj:                                            ; preds = %bb.bi
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i290.i: ; preds = %bb.bi
  %i.hf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #16 ; 2 uses
  store ptr %i.hf, ptr %9, align 8
  store i64 %.sroa.speculated.i281.i, ptr %i.ha, align 8
  br label %._crit_edge.i.i.i.i289.i

._crit_edge.i.i.i.i289.i:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i290.i, %bb.bf
  %i.hg = phi ptr [ %i.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i290.i ], [ %i.ha, %bb.bf ] ; 3 uses
  switch i64 %.sroa.speculated.i281.i, label %bb.bl [
    i64 1, label %bb.bk
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit291.i
  ]

bb.bk:                                            ; preds = %._crit_edge.i.i.i.i289.i
  %i.hh = load i8, ptr %i.ah, align 1
  store i8 %i.hh, ptr %i.hg, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit291.i

bb.bl:                                            ; preds = %._crit_edge.i.i.i.i289.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr nonnull align 1 %i.ah, i64 %.sroa.speculated.i281.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit291.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit291.i: ; preds = %bb.bl, %bb.bk, %._crit_edge.i.i.i.i289.i
  %i.hi = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %.sroa.speculated.i281.i, ptr %i.hi, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.sroa.speculated.i281.i
  store i8 0, ptr %i.hj, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.hk = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.1, i64 noundef 10), !noalias !29 ; 6 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  store ptr %i.hl, ptr %8, align 8, !alias.scope !29
  %i.hm = load ptr, ptr %i.hk, align 8            ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 5 uses
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %bb.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292.i

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit291.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hq = load i64, ptr %i.hp, align 8            ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 16
  call void @llvm.assume(i1 %i.hr)
  %i.hs = add nuw nsw i64 %i.hq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hl, ptr noundef nonnull align 8 dereferenceable(1) %i.hn, i64 %i.hs, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit295.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit291.i
  store ptr %i.hm, ptr %8, align 8, !alias.scope !29
  %i.ht = load i64, ptr %i.hn, align 8
  store i64 %i.ht, ptr %i.hl, align 8, !alias.scope !29
  %.phi.trans.insert.i293.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.pre.i294.i = load i64, ptr %.phi.trans.insert.i293.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit295.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit295.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292.i, %bb.bm
  %i.hu = phi i64 [ %i.hq, %bb.bm ], [ %.pre.i294.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292.i ]
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 %i.hu, ptr %i.hw, align 8, !alias.scope !29
  store ptr %i.hn, ptr %i.hk, align 8
  store i64 0, ptr %i.hv, align 8
  store i8 0, ptr %i.hn, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.hx = load i64, ptr %i.hw, align 8, !noalias !30 ; 5 uses
  %i.hy = icmp sgt i64 %i.hx, 9223372036854775794
  br i1 %i.hy, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i296.i

bb.bn:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit295.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #14, !noalias !30
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i296.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit295.i
  %i.hz = add nsw i64 %i.hx, 13                   ; 3 uses
  %i.ia = load ptr, ptr %8, align 8, !noalias !30 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.hl
  br i1 %i.ib, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i305.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i297.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i305.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i296.i
  %i.ic = icmp ult i64 %i.hx, 16
  call void @llvm.assume(i1 %i.ic)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i298.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i297.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i296.i
  %i.id = load i64, ptr %i.hl, align 8, !noalias !30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i298.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i298.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i297.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i305.i
  %i.ie = phi i64 [ %i.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i297.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i305.i ]
  %.not.i.i.i299.i = icmp ugt i64 %i.hz, %i.ie
  br i1 %.not.i.i.i299.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i298.i
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.if, ptr noundef nonnull align 1 dereferenceable(13) @.str.2, i64 13, i1 false), !noalias !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i302.i

bb.bp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i298.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.hx, i64 noundef 0, ptr noundef nonnull @.str.2, i64 noundef 13), !noalias !30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i302.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i302.i: ; preds = %bb.bp, %bb.bo
  store i64 %i.hz, ptr %i.hw, align 8, !noalias !30
  %i.ig = load ptr, ptr %8, align 8, !noalias !30
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.hz
  store i8 0, ptr %i.ih, align 1, !noalias !30
  %i.ii = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 12 uses
  store ptr %i.ii, ptr %7, align 8, !alias.scope !30
  %i.ij = load ptr, ptr %8, align 8, !noalias !30 ; 3 uses
  %i.ik = icmp eq ptr %i.ij, %i.hl
  br i1 %i.ik, label %bb.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i302.i
  %i.il = load i64, ptr %i.hw, align 8, !noalias !30 ; 3 uses
  %i.im = icmp ult i64 %i.il, 16
  call void @llvm.assume(i1 %i.im)
  %i.in = add nuw nsw i64 %i.il, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ii, ptr noundef nonnull align 8 dereferenceable(1) %i.hl, i64 %i.in, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit306.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i302.i
  store ptr %i.ij, ptr %7, align 8, !alias.scope !30
  %i.io = load i64, ptr %i.hl, align 8, !noalias !30
  store i64 %i.io, ptr %i.ii, align 8, !alias.scope !30
  %.pre.i304.i = load i64, ptr %i.hw, align 8, !noalias !30
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit306.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit306.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i, %bb.bq
  %i.ip = phi ptr [ %i.ii, %bb.bq ], [ %i.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i ] ; 6 uses
  %i.iq = phi i64 [ %i.il, %bb.bq ], [ %.pre.i304.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303.i ] ; 6 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.iq, ptr %i.ir, align 8, !alias.scope !30
  store ptr %i.hl, ptr %8, align 8, !noalias !30
  store i64 0, ptr %i.hw, align 8, !noalias !30
  store i8 0, ptr %i.hl, align 8, !noalias !30
  %i.is = load ptr, ptr %3, align 8               ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.iu = icmp eq ptr %i.is, %i.it
  %i.iv = icmp eq ptr %i.ip, %i.ii                ; 2 uses
  br i1 %i.iu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i313.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i307.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i313.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit306.i
  br i1 %i.iv, label %bb.br, label %.thread.i314.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i307.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit306.i
  br i1 %i.iv, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i308.i

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i307.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i313.i
  %i.iw = icmp ult i64 %i.iq, 16
  call void @llvm.assume(i1 %i.iw)
  %.not21.i310.i = icmp eq ptr %7, %3
  br i1 %.not21.i310.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit315.i, label %bb.bs, !prof !6

bb.bs:                                            ; preds = %bb.br
  switch i64 %i.iq, label %bb.bu [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i311.i
    i64 1, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.ix = load i8, ptr %i.ip, align 1
  store i8 %i.ix, ptr %i.is, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i311.i

bb.bu:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.is, ptr align 1 %i.ip, i64 %i.iq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i311.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i311.i: ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.iy = load i64, ptr %i.ir, align 8            ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.iy, ptr %i.iz, align 8
  %i.ja = load ptr, ptr %3, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iy
  store i8 0, ptr %i.jb, align 1
  %.pre.i312.i = load ptr, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit315.i

.thread.i314.i:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i313.i
  %i.jc = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ip, ptr %3, align 8
  store i64 %i.iq, ptr %i.jc, align 8
  %i.jd = load i64, ptr %i.ii, align 8
  store i64 %i.jd, ptr %i.it, align 8
  br label %bb.bw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i308.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i307.i
  %i.je = load i64, ptr %i.it, align 8
  store ptr %i.ip, ptr %3, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.iq, ptr %i.jf, align 8
  %i.jg = load i64, ptr %i.ii, align 8
  store i64 %i.jg, ptr %i.it, align 8
  %.not.i309.i = icmp eq ptr %i.is, null
  br i1 %.not.i309.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i308.i
  store ptr %i.is, ptr %7, align 8
  store i64 %i.je, ptr %i.ii, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit315.i

bb.bw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i308.i, %.thread.i314.i
  store ptr %i.ii, ptr %7, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit315.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit315.i: ; preds = %bb.bw, %bb.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i311.i, %bb.br
  %i.jh = phi ptr [ %i.is, %bb.bv ], [ %i.ii, %bb.bw ], [ %i.ip, %bb.br ], [ %.pre.i312.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i311.i ]
  store i64 0, ptr %i.ir, align 8
  store i8 0, ptr %i.jh, align 1
  %i.ji = load ptr, ptr %7, align 8               ; 2 uses
  %i.jj = icmp eq ptr %i.ji, %i.ii
  br i1 %i.jj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit315.i
  %i.jk = load i64, ptr %i.ii, align 8
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.ji, i64 noundef %i.jl) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit315.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316.i
  %i.jm = load ptr, ptr %8, align 8               ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.hl
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318.i
  %i.jo = load i64, ptr %i.hl, align 8
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #17
end_hunk_1
