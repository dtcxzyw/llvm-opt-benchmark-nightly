inline.NumInlined: 364
inline.NumDeleted: 88
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rb_data_type_struct = type { ptr, %struct.anon, ptr, ptr, i64 }
%struct.anon = type { ptr, ptr, ptr, ptr, [1 x ptr] }
%struct.configure_state_data = type { ptr, i64 }
%struct.FBufferStruct = type { i32, i64, i64, i64, ptr, i64 }
%struct.generate_json_data = type { ptr, i64, ptr, i64, ptr, i64 }
%struct.JSON_Generator_StateStruct = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8, i8, i8, i8, i8 }
%struct.hash_foreach_arg = type { i64, ptr, i32, i8, i8 }
%struct._search_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"json/common\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"JSON\00", align 1
@mJSON = internal unnamed_addr global i64 0, align 8
@cFragment = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"Fragment\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Ext\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Generator\00", align 1
@eGeneratorError = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"JSON::GeneratorError\00", align 1
@eNestingError = internal global i64 0, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"JSON::NestingError\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@cState = internal unnamed_addr global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"from_state\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"_configure\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"indent=\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"space=\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"space_before\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"space_before=\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"object_nl\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"object_nl=\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"array_nl\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"array_nl=\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"as_json\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"as_json=\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"max_nesting\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"max_nesting=\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"script_safe\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"script_safe?\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"script_safe=\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"escape_slash\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"escape_slash?\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"escape_slash=\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"strict?\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"strict=\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"check_circular?\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"allow_nan?\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"allow_nan=\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"ascii_only?\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"ascii_only=\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"depth=\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"buffer_initial_length\00", align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"buffer_initial_length=\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"generate\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"allow_duplicate_key?\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"GeneratorMethods\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Object\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"to_json\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"Array\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"Float\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"TrueClass\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"FalseClass\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"NilClass\00", align 1
@Encoding_UTF_8 = internal global i64 0, align 8
@.str.57 = private unnamed_addr constant [9 x i8] c"Encoding\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"UTF_8\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@i_to_s = internal unnamed_addr global i64 0, align 8
@i_to_json = internal unnamed_addr global i64 0, align 8
@.str.60 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@i_new = internal unnamed_addr global i64 0, align 8
@.str.61 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@i_encode = internal unnamed_addr global i64 0, align 8
@sym_indent = internal unnamed_addr global i64 0, align 8
@sym_space = internal unnamed_addr global i64 0, align 8
@sym_space_before = internal unnamed_addr global i64 0, align 8
@sym_object_nl = internal unnamed_addr global i64 0, align 8
@sym_array_nl = internal unnamed_addr global i64 0, align 8
@sym_max_nesting = internal unnamed_addr global i64 0, align 8
@.str.62 = private unnamed_addr constant [10 x i8] c"allow_nan\00", align 1
@sym_allow_nan = internal unnamed_addr global i64 0, align 8
@.str.63 = private unnamed_addr constant [11 x i8] c"ascii_only\00", align 1
@sym_ascii_only = internal unnamed_addr global i64 0, align 8
@sym_depth = internal unnamed_addr global i64 0, align 8
@sym_buffer_initial_length = internal unnamed_addr global i64 0, align 8
@sym_script_safe = internal unnamed_addr global i64 0, align 8
@sym_escape_slash = internal unnamed_addr global i64 0, align 8
@sym_strict = internal unnamed_addr global i64 0, align 8
@sym_as_json = internal unnamed_addr global i64 0, align 8
@.str.64 = private unnamed_addr constant [20 x i8] c"allow_duplicate_key\00", align 1
@sym_allow_duplicate_key = internal unnamed_addr global i64 0, align 8
@usascii_encindex = internal unnamed_addr global i32 0, align 4
@utf8_encindex = internal unnamed_addr global i32 0, align 4
@binary_encindex = internal unnamed_addr global i32 0, align 4
@.str.65 = private unnamed_addr constant [25 x i8] c"json/ext/generator/state\00", align 1
@search_escape_basic_impl = internal unnamed_addr global ptr null, align 8
@JSON_Generator_State_type = internal constant %struct.rb_data_type_struct { ptr @.str.66, %struct.anon { ptr @State_mark, ptr @State_free, ptr @State_memsize, ptr @State_compact, [1 x ptr] zeroinitializer }, ptr null, ptr null, i64 289 }, align 8
@.str.66 = private unnamed_addr constant [21 x i8] c"JSON/Generator/State\00", align 1
@rb_cHash = external local_unnamed_addr global i64, align 8
@.str.67 = private unnamed_addr constant [116 x i8] c"The json gem extension was loaded with the stdlib ruby code. You should upgrade rubygems with `gem update --system`\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"Proc\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"to_proc\00", align 1
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str.71 = private unnamed_addr constant [24 x i8] c"unallocated JSON::State\00", align 1
@.str.72 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rb_cArray = external local_unnamed_addr global i64, align 8
@rb_cString = external local_unnamed_addr global i64, align 8
@.str.73 = private unnamed_addr constant [43 x i8] c"source sequence is illegal/malformed utf-8\00", align 1
@rb_cFloat = external local_unnamed_addr global i64, align 8
@.str.74 = private unnamed_addr constant [25 x i8] c"%li\0B not allowed in JSON\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.78 = private unnamed_addr constant [201 x i8] c"0_1_2_3_4_5_6_7_8_9_101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 1
@.str.79 = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 1
@.str.80 = private unnamed_addr constant [87 x i8] c"nesting of %ld is too deep. Did you try to serialize objects with circular references?\00", align 1
@powers_ten = internal unnamed_addr constant [87 x { i64, i32, [4 x i8] }] [{ i64, i32, [4 x i8] } { i64 -391859759250406776, i32 -1220, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4994806998408183946, i32 -1193, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8424269937281487754, i32 -1166, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3512093806901185046, i32 -1140, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7319562523736982739, i32 -1113, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1865951482774665761, i32 -1087, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6093090917745768758, i32 -1060, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -38366372719436721, i32 -1034, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4731433901725329908, i32 -1007, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8228041688891786180, i32 -980, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3219690930897053053, i32 -954, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7101705404292871755, i32 -927, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1541319077368263733, i32 -901, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5851220927660403859, i32 -874, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -9062348037703676329, i32 -847, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4462904269766699465, i32 -821, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8027971522334779313, i32 -794, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -2921563150702462265, i32 -768, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6879582898840692748, i32 -741, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1210330751515841307, i32 -715, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5604615407819967858, i32 -688, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8878612607581929669, i32 -661, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4189117143640191558, i32 -635, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7823984217374209642, i32 -608, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -2617598379430861436, i32 -582, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6653111496142234890, i32 -555, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -872862063775190746, i32 -529, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5353181642124984136, i32 -502, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8691279853972075893, i32 -475, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3909969587797413805, i32 -449, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7616003081050118571, i32 -422, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -2307682335666372931, i32 -396, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6422206049907525489, i32 -369, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -528786136287117932, i32 -343, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5096825099203863601, i32 -316, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8500279345513818773, i32 -289, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3625356651333078602, i32 -263, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7403949918844649556, i32 -236, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1991698500497491194, i32 -210, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6186779746782440749, i32 -183, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -177973607073265138, i32 -157, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4835449396872013077, i32 -130, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8305539271883716404, i32 -103, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3335171328526686932, i32 -77, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7187745005283311616, i32 -50, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1669528073709551616, i32 -24, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5946744073709551616, i32 3, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -9133518327554766460, i32 30, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4568956265895094861, i32 56, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8106986416796705680, i32 83, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3039304518611664792, i32 109, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6967307053960650171, i32 136, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1341049929119499481, i32 162, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5702008784649933400, i32 189, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8951176327949752869, i32 216, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4297245513042813542, i32 242, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7904546130479028392, i32 269, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -2737644984756826646, i32 295, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6742553186979055798, i32 322, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1006140569036166267, i32 348, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5452481866653427593, i32 375, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8765264286586255934, i32 402, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4020214983419339459, i32 428, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7698142301602209613, i32 455, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -2430079312244744221, i32 481, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6513398903789220827, i32 508, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -664674077828931748, i32 534, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5198069505264599346, i32 561, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8575712306248138270, i32 588, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3737760522056206171, i32 614, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7487697328667536417, i32 641, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -2116491865831296966, i32 667, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6279758049420528746, i32 694, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -316522074587315140, i32 720, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4938676049251384304, i32 747, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8382449121214030822, i32 774, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3449775934753242068, i32 800, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7273132090830278359, i32 827, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1796764746270372707, i32 853, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -6041542782089432023, i32 880, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -9204148869281624187, i32 907, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -4674203974643163859, i32 933, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -8185402070463610993, i32 960, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -3156152948152813503, i32 986, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -7054365918152680535, i32 1013, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -1470777745987373095, i32 1039, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 -5798663540173640085, i32 1066, [4 x i8] zeroinitializer }], align 16
@tens = internal unnamed_addr constant [20 x i64] [i64 -8446744073709551616, i64 1000000000000000000, i64 100000000000000000, i64 10000000000000000, i64 1000000000000000, i64 100000000000000, i64 10000000000000, i64 1000000000000, i64 100000000000, i64 10000000000, i64 1000000000, i64 100000000, i64 10000000, i64 1000000, i64 100000, i64 10000, i64 1000, i64 100, i64 10, i64 1], align 16
@.str.83 = private unnamed_addr constant [39 x i8] c"%li\0B not allowed as object key in JSON\00", align 1
@json_inspect_hash_with_mixed_keys.rbimpl_id = internal unnamed_addr global i64 0, align 8
@.str.84 = private unnamed_addr constant [19 x i8] c"on_mixed_keys_hash\00", align 1
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.85 = private unnamed_addr constant [46 x i8] c"can't convert %li\0B to %s (%li\0B#%s gives %li\0B)\00", align 1
@script_safe_escape_table = internal constant [256 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\0B\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\09\09", align 16
@ascii_only_escape_table = internal constant [256 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\09\09", align 16
@.str.95 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"\\u2029\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"\\u2028\00", align 1
@raise_generator_error_str.rbimpl_id = internal global i64 0, align 8
@.str.99 = private unnamed_addr constant [16 x i8] c"@invalid_object\00", align 1
@.str.100 = private unnamed_addr constant [92 x i8] c"JSON.generate: UTF-8 string passed as BINARY, this will raise an encoding error in json 3.0\00", align 1
@encode_json_string_rescue.rbimpl_id = internal global i64 0, align 8
@.str.101 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@__cpu_model = external dso_local local_unnamed_addr global { i32, i32, i32, [1 x i32] }
@escape_table_basic = internal unnamed_addr constant <{ [93 x i8], [163 x i8] }> <{ [93 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09", [163 x i8] zeroinitializer }>, align 16
@switch.table.json_object_i = private unnamed_addr constant [37 x i32] [i32 19, i32 poison, i32 poison, i32 poison, i32 17, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 18, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 22], align 4

; Function Attrs: nounwind uwtable
define void @Init_generator() local_unnamed_addr #0 {
bb.a:
  tail call void @rb_ext_ractor_safe(i1 noundef zeroext true) #24
  %i.a = tail call i64 @rb_require(ptr noundef nonnull @.str) #24 ; 0 uses
  %i.b = tail call i64 @rb_define_module(ptr noundef nonnull @.str.1) #24
  store i64 %i.b, ptr @mJSON, align 8, !tbaa !10
  tail call void @rb_global_variable(ptr noundef nonnull @cFragment) #24
  %i.c = load i64, ptr @mJSON, align 8, !tbaa !10
  %i.d = tail call i64 @rb_intern(ptr noundef nonnull @.str.2) #24
  %i.e = tail call i64 @rb_const_get(i64 noundef %i.c, i64 noundef %i.d) #24
  store i64 %i.e, ptr @cFragment, align 8, !tbaa !10
  %i.f = load i64, ptr @mJSON, align 8, !tbaa !10
  %i.g = tail call i64 @rb_define_module_under(i64 noundef %i.f, ptr noundef nonnull @.str.3) #24
  %i.h = tail call i64 @rb_define_module_under(i64 noundef %i.g, ptr noundef nonnull @.str.4) #24 ; 2 uses
  tail call void @rb_global_variable(ptr noundef nonnull @eGeneratorError) #24
  %i.i = tail call i64 @rb_path2class(ptr noundef nonnull @.str.5) #24
  store i64 %i.i, ptr @eGeneratorError, align 8, !tbaa !10
  tail call void @rb_global_variable(ptr noundef nonnull @eNestingError) #24
  %i.j = tail call i64 @rb_path2class(ptr noundef nonnull @.str.6) #24
  store i64 %i.j, ptr @eNestingError, align 8, !tbaa !10
  %i.k = load i64, ptr @rb_cObject, align 8, !tbaa !10
  %i.l = tail call i64 @rb_define_class_under(i64 noundef %i.h, ptr noundef nonnull @.str.7, i64 noundef %i.k) #24 ; 2 uses
  store i64 %i.l, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_alloc_func(i64 noundef %i.l, ptr noundef nonnull @cState_s_allocate) #24
  %i.m = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.m, ptr noundef nonnull @.str.8, ptr noundef nonnull @cState_from_state_s, i32 noundef 1) #24
  %i.n = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.9, ptr noundef nonnull @cState_initialize, i32 noundef -1) #24
  %i.o = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.o, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.9) #24
  %i.p = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.p, ptr noundef nonnull @.str.10, ptr noundef nonnull @cState_configure, i32 noundef 1) #24
  %i.q = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.q, ptr noundef nonnull @.str.11, ptr noundef nonnull @cState_init_copy, i32 noundef 1) #24
  %i.r = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.r, ptr noundef nonnull @.str.12, ptr noundef nonnull @cState_indent, i32 noundef 0) #24
  %i.s = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.s, ptr noundef nonnull @.str.13, ptr noundef nonnull @cState_indent_set, i32 noundef 1) #24
  %i.t = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.t, ptr noundef nonnull @.str.14, ptr noundef nonnull @cState_space, i32 noundef 0) #24
  %i.u = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.u, ptr noundef nonnull @.str.15, ptr noundef nonnull @cState_space_set, i32 noundef 1) #24
  %i.v = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.v, ptr noundef nonnull @.str.16, ptr noundef nonnull @cState_space_before, i32 noundef 0) #24
  %i.w = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.w, ptr noundef nonnull @.str.17, ptr noundef nonnull @cState_space_before_set, i32 noundef 1) #24
  %i.x = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.x, ptr noundef nonnull @.str.18, ptr noundef nonnull @cState_object_nl, i32 noundef 0) #24
  %i.y = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.y, ptr noundef nonnull @.str.19, ptr noundef nonnull @cState_object_nl_set, i32 noundef 1) #24
  %i.z = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.z, ptr noundef nonnull @.str.20, ptr noundef nonnull @cState_array_nl, i32 noundef 0) #24
  %i.aa = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.aa, ptr noundef nonnull @.str.21, ptr noundef nonnull @cState_array_nl_set, i32 noundef 1) #24
  %i.ab = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ab, ptr noundef nonnull @.str.22, ptr noundef nonnull @cState_as_json, i32 noundef 0) #24
  %i.ac = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ac, ptr noundef nonnull @.str.23, ptr noundef nonnull @cState_as_json_set, i32 noundef 1) #24
  %i.ad = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ad, ptr noundef nonnull @.str.24, ptr noundef nonnull @cState_max_nesting, i32 noundef 0) #24
  %i.ae = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ae, ptr noundef nonnull @.str.25, ptr noundef nonnull @cState_max_nesting_set, i32 noundef 1) #24
  %i.af = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.af, ptr noundef nonnull @.str.26, ptr noundef nonnull @cState_script_safe, i32 noundef 0) #24
  %i.ag = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ag, ptr noundef nonnull @.str.27, ptr noundef nonnull @cState_script_safe, i32 noundef 0) #24
  %i.ah = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ah, ptr noundef nonnull @.str.28, ptr noundef nonnull @cState_script_safe_set, i32 noundef 1) #24
  %i.ai = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.ai, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.26) #24
  %i.aj = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.aj, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27) #24
  %i.ak = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_alias(i64 noundef %i.ak, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28) #24
  %i.al = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.al, ptr noundef nonnull @.str.32, ptr noundef nonnull @cState_strict, i32 noundef 0) #24
  %i.am = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.am, ptr noundef nonnull @.str.33, ptr noundef nonnull @cState_strict, i32 noundef 0) #24
  %i.an = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.an, ptr noundef nonnull @.str.34, ptr noundef nonnull @cState_strict_set, i32 noundef 1) #24
  %i.ao = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ao, ptr noundef nonnull @.str.35, ptr noundef nonnull @cState_check_circular_p, i32 noundef 0) #24
  %i.ap = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ap, ptr noundef nonnull @.str.36, ptr noundef nonnull @cState_allow_nan_p, i32 noundef 0) #24
  %i.aq = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.aq, ptr noundef nonnull @.str.37, ptr noundef nonnull @cState_allow_nan_set, i32 noundef 1) #24
  %i.ar = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ar, ptr noundef nonnull @.str.38, ptr noundef nonnull @cState_ascii_only_p, i32 noundef 0) #24
  %i.as = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.as, ptr noundef nonnull @.str.39, ptr noundef nonnull @cState_ascii_only_set, i32 noundef 1) #24
  %i.at = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.at, ptr noundef nonnull @.str.40, ptr noundef nonnull @cState_depth, i32 noundef 0) #24
  %i.au = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.au, ptr noundef nonnull @.str.41, ptr noundef nonnull @cState_depth_set, i32 noundef 1) #24
  %i.av = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.av, ptr noundef nonnull @.str.42, ptr noundef nonnull @cState_buffer_initial_length, i32 noundef 0) #24
  %i.aw = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.aw, ptr noundef nonnull @.str.43, ptr noundef nonnull @cState_buffer_initial_length_set, i32 noundef 1) #24
  %i.ax = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_method(i64 noundef %i.ax, ptr noundef nonnull @.str.44, ptr noundef nonnull @cState_generate, i32 noundef -1) #24
  %i.ay = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_private_method(i64 noundef %i.ay, ptr noundef nonnull @.str.45, ptr noundef nonnull @cState_allow_duplicate_key_p, i32 noundef 0) #24
  %i.az = load i64, ptr @cState, align 8, !tbaa !10
  tail call void @rb_define_singleton_method(i64 noundef %i.az, ptr noundef nonnull @.str.44, ptr noundef nonnull @cState_m_generate, i32 noundef 3) #24
  %i.ba = tail call i64 @rb_define_module_under(i64 noundef %i.h, ptr noundef nonnull @.str.46) #24 ; 9 uses
  %i.bb = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.47) #24
  tail call void @rb_define_method(i64 noundef %i.bb, ptr noundef nonnull @.str.48, ptr noundef nonnull @mObject_to_json, i32 noundef -1) #24
  %i.bc = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.49) #24
  tail call void @rb_define_method(i64 noundef %i.bc, ptr noundef nonnull @.str.48, ptr noundef nonnull @mHash_to_json, i32 noundef -1) #24
  %i.bd = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.50) #24
  tail call void @rb_define_method(i64 noundef %i.bd, ptr noundef nonnull @.str.48, ptr noundef nonnull @mArray_to_json, i32 noundef -1) #24
  %i.be = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.51) #24
  tail call void @rb_define_method(i64 noundef %i.be, ptr noundef nonnull @.str.48, ptr noundef nonnull @mInteger_to_json, i32 noundef -1) #24
  %i.bf = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.52) #24
  tail call void @rb_define_method(i64 noundef %i.bf, ptr noundef nonnull @.str.48, ptr noundef nonnull @mFloat_to_json, i32 noundef -1) #24
  %i.bg = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.53) #24
  tail call void @rb_define_method(i64 noundef %i.bg, ptr noundef nonnull @.str.48, ptr noundef nonnull @mString_to_json, i32 noundef -1) #24
  %i.bh = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.54) #24
  tail call void @rb_define_method(i64 noundef %i.bh, ptr noundef nonnull @.str.48, ptr noundef nonnull @mTrueClass_to_json, i32 noundef -1) #24
  %i.bi = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.55) #24
  tail call void @rb_define_method(i64 noundef %i.bi, ptr noundef nonnull @.str.48, ptr noundef nonnull @mFalseClass_to_json, i32 noundef -1) #24
  %i.bj = tail call i64 @rb_define_module_under(i64 noundef %i.ba, ptr noundef nonnull @.str.56) #24
  tail call void @rb_define_method(i64 noundef %i.bj, ptr noundef nonnull @.str.48, ptr noundef nonnull @mNilClass_to_json, i32 noundef -1) #24
  tail call void @rb_global_variable(ptr noundef nonnull @Encoding_UTF_8) #24
  %i.bk = tail call i64 @rb_path2class(ptr noundef nonnull @.str.57) #24
  %i.bl = tail call i64 @rb_intern(ptr noundef nonnull @.str.58) #24
  %i.bm = tail call i64 @rb_const_get(i64 noundef %i.bk, i64 noundef %i.bl) #24
  store i64 %i.bm, ptr @Encoding_UTF_8, align 8, !tbaa !10
  %i.bn = tail call i64 @rb_intern(ptr noundef nonnull @.str.59) #24
  store i64 %i.bn, ptr @i_to_s, align 8, !tbaa !10
  %i.bo = tail call i64 @rb_intern(ptr noundef nonnull @.str.48) #24
  store i64 %i.bo, ptr @i_to_json, align 8, !tbaa !10
  %i.bp = tail call i64 @rb_intern(ptr noundef nonnull @.str.60) #24
  store i64 %i.bp, ptr @i_new, align 8, !tbaa !10
  %i.bq = tail call i64 @rb_intern(ptr noundef nonnull @.str.61) #24
  store i64 %i.bq, ptr @i_encode, align 8, !tbaa !10
  %i.br = tail call i64 @rb_intern(ptr noundef nonnull @.str.12) #24
  %i.bs = tail call i64 @rb_id2sym(i64 noundef %i.br) #24
  store i64 %i.bs, ptr @sym_indent, align 8, !tbaa !10
  %i.bt = tail call i64 @rb_intern(ptr noundef nonnull @.str.14) #24
  %i.bu = tail call i64 @rb_id2sym(i64 noundef %i.bt) #24
  store i64 %i.bu, ptr @sym_space, align 8, !tbaa !10
  %i.bv = tail call i64 @rb_intern(ptr noundef nonnull @.str.16) #24
  %i.bw = tail call i64 @rb_id2sym(i64 noundef %i.bv) #24
  store i64 %i.bw, ptr @sym_space_before, align 8, !tbaa !10
  %i.bx = tail call i64 @rb_intern(ptr noundef nonnull @.str.18) #24
  %i.by = tail call i64 @rb_id2sym(i64 noundef %i.bx) #24
  store i64 %i.by, ptr @sym_object_nl, align 8, !tbaa !10
  %i.bz = tail call i64 @rb_intern(ptr noundef nonnull @.str.20) #24
  %i.ca = tail call i64 @rb_id2sym(i64 noundef %i.bz) #24
  store i64 %i.ca, ptr @sym_array_nl, align 8, !tbaa !10
  %i.cb = tail call i64 @rb_intern(ptr noundef nonnull @.str.24) #24
  %i.cc = tail call i64 @rb_id2sym(i64 noundef %i.cb) #24
  store i64 %i.cc, ptr @sym_max_nesting, align 8, !tbaa !10
  %i.cd = tail call i64 @rb_intern(ptr noundef nonnull @.str.62) #24
  %i.ce = tail call i64 @rb_id2sym(i64 noundef %i.cd) #24
  store i64 %i.ce, ptr @sym_allow_nan, align 8, !tbaa !10
  %i.cf = tail call i64 @rb_intern(ptr noundef nonnull @.str.63) #24
  %i.cg = tail call i64 @rb_id2sym(i64 noundef %i.cf) #24
  store i64 %i.cg, ptr @sym_ascii_only, align 8, !tbaa !10
  %i.ch = tail call i64 @rb_intern(ptr noundef nonnull @.str.40) #24
  %i.ci = tail call i64 @rb_id2sym(i64 noundef %i.ch) #24
  store i64 %i.ci, ptr @sym_depth, align 8, !tbaa !10
  %i.cj = tail call i64 @rb_intern(ptr noundef nonnull @.str.42) #24
  %i.ck = tail call i64 @rb_id2sym(i64 noundef %i.cj) #24
  store i64 %i.ck, ptr @sym_buffer_initial_length, align 8, !tbaa !10
  %i.cl = tail call i64 @rb_intern(ptr noundef nonnull @.str.26) #24
  %i.cm = tail call i64 @rb_id2sym(i64 noundef %i.cl) #24
  store i64 %i.cm, ptr @sym_script_safe, align 8, !tbaa !10
  %i.cn = tail call i64 @rb_intern(ptr noundef nonnull @.str.29) #24
  %i.co = tail call i64 @rb_id2sym(i64 noundef %i.cn) #24
  store i64 %i.co, ptr @sym_escape_slash, align 8, !tbaa !10
  %i.cp = tail call i64 @rb_intern(ptr noundef nonnull @.str.32) #24
  %i.cq = tail call i64 @rb_id2sym(i64 noundef %i.cp) #24
  store i64 %i.cq, ptr @sym_strict, align 8, !tbaa !10
  %i.cr = tail call i64 @rb_intern(ptr noundef nonnull @.str.22) #24
  %i.cs = tail call i64 @rb_id2sym(i64 noundef %i.cr) #24
  store i64 %i.cs, ptr @sym_as_json, align 8, !tbaa !10
  %i.ct = tail call i64 @rb_intern(ptr noundef nonnull @.str.64) #24
  %i.cu = tail call i64 @rb_id2sym(i64 noundef %i.ct) #24
  store i64 %i.cu, ptr @sym_allow_duplicate_key, align 8, !tbaa !10
  %i.cv = tail call i32 @rb_usascii_encindex() #25
  store i32 %i.cv, ptr @usascii_encindex, align 4, !tbaa !6
  %i.cw = tail call i32 @rb_utf8_encindex() #25
  store i32 %i.cw, ptr @utf8_encindex, align 4, !tbaa !6
  %i.cx = tail call i32 @rb_ascii8bit_encindex() #25
  store i32 %i.cx, ptr @binary_encindex, align 4, !tbaa !6
  %i.cy = tail call i64 @rb_require(ptr noundef nonnull @.str.65) #24 ; 0 uses
  %i.cz = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.da = and i32 %i.cz, 16
  %cond.not = icmp eq i32 %i.da, 0
  %search_escape_basic_sse2.search_escape_basic = select i1 %cond.not, ptr @search_escape_basic, ptr @search_escape_basic_sse2
  store ptr %search_escape_basic_sse2.search_escape_basic, ptr @search_escape_basic_impl, align 8, !tbaa !12
  ret void
}

declare void @rb_ext_ractor_safe(i1 noundef zeroext) local_unnamed_addr #1

end_hunk_0
begin_hunk_1_@fbuffer_do_inc_capa:bb.a

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.o = phi ptr [ %i.i, %._crit_edge ], [ %i.l, %bb.g ] ; 2 uses
  %i.p = phi i64 [ %.pre, %._crit_edge ], [ %i.m, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !81
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ %i.p, %bb.h ], [ %i.v, %bb.i ]  ; 6 uses
  %i.t = sub i64 %.0, %i.s
  %i.u = icmp ugt i64 %1, %i.t
  %i.v = shl i64 %.0, 1
  br i1 %i.u, label %bb.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = icmp ugt i64 %.0, %i.p
  br i1 %i.w, label %bb.k, label %fbuffer_realloc.exit

bb.k:                                             ; preds = %bb.j
  %i.x = load i32, ptr %0, align 8, !tbaa !57
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.z = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.0, i64 noundef 1) #31 ; 2 uses
  store ptr %i.z, ptr %i.h, align 8, !tbaa !58
  store i32 0, ptr %0, align 8, !tbaa !57
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !81  ; 2 uses
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.o, i64 %i.aa, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

bb.n:                                             ; preds = %bb.k
  %i.ab = tail call nonnull ptr @ruby_xrealloc2(ptr noundef nonnull %i.o, i64 noundef %.0, i64 noundef 1) #32
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !58
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.n, %bb.m, %bb.l
  store i64 %.0, ptr %i.q, align 8, !tbaa !59
  br label %fbuffer_realloc.exit

fbuffer_realloc.exit:                             ; preds = %ruby_nonempty_memcpy.exit.i, %bb.j, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_realloc(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !57
  %i.e = icmp eq i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %1, i64 noundef 1) #31 ; 2 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !58
  store i32 0, ptr %0, align 8, !tbaa !57
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr readonly align 1 %i.g, i64 %i.j, i1 false)
  br label %ruby_nonempty_memcpy.exit

bb.e:                                             ; preds = %bb.b
  %i.k = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %i.g, i64 noundef %1, i64 noundef 1) #32
  store ptr %i.k, ptr %i.f, align 8, !tbaa !58
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.d, %bb.c, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %ruby_nonempty_memcpy.exit, %bb.a
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @rb_float_value(i64 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 5 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %fbuffer_append.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !81   ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.c, label %fbuffer_append_reserved.exit.i, !prof !71

bb.c:                                             ; preds = %bb.b
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %0, i64 noundef %i.f)
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !81
  br label %fbuffer_append_reserved.exit.i

fbuffer_append_reserved.exit.i:                   ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ %i.j, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr readonly align 1 %i.b, i64 %i.f, i1 false)
  %i.q = load i64, ptr %i.i, align 8, !tbaa !81
  %i.r = add i64 %i.q, %i.f
  store i64 %i.r, ptr %i.i, align 8, !tbaa !81
  br label %fbuffer_append.exit

fbuffer_append.exit:                              ; preds = %bb.a, %fbuffer_append_reserved.exit.i
  ret void
}

declare ptr @rb_string_value_ptr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @generate_json_string(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @ensure_valid_encoding(ptr noundef %1, i64 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  tail call fastcc void @raw_generate_json_string(ptr noundef %0, ptr noundef %1, i64 noundef %i.a)
  ret void
}

declare i64 @rb_sym2str(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @json_object_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 5 uses
  %i.b = inttoptr i64 %2 to ptr                   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94   ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %0 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !23
  %i.p = trunc i64 %i.o to i32
  %i.q = and i32 %i.p, 31
  br label %rb_type.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp ult i64 %0, 37
  %switch.shifted = lshr i64 68720525329, %0
  %switch.lobit = trunc i64 %switch.shifted to i1
  %or.cond102 = select i1 %i.r, i1 %switch.lobit, i1 false
  br i1 %or.cond102, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = trunc i64 %0 to i1
  br i1 %i.s, label %rb_type.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i64 %0, 254
  %i.u = icmp eq i64 %i.t, 12
  %spec.select.i = select i1 %i.u, i32 20, i32 4
  br label %rb_type.exit

switch.lookup:                                    ; preds = %bb.c
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.json_object_i, i64 %0
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %rb_type.exit

rb_type.exit:                                     ; preds = %switch.lookup, %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.q, %bb.b ], [ %spec.select.i, %bb.e ], [ 21, %bb.d ], [ %switch.load, %switch.lookup ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.w = load i8, ptr %i.v, align 4, !tbaa !96, !range !48, !noundef !49
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rb_type.exit
  store i8 0, ptr %i.v, align 4, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %.0.i, ptr %i.y, align 8, !tbaa !95
  br label %bb.i

bb.g:                                             ; preds = %rb_type.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !81 ; 2 uses
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %fbuffer_append_char.exit, !prof !71

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.e, i64 noundef 1)
  %.pre.i = load i64, ptr %i.ab, align 8, !tbaa !81
  br label %fbuffer_append_char.exit

fbuffer_append_char.exit:                         ; preds = %bb.g, %bb.h
  %i.ae = phi i64 [ %i.ac, %bb.g ], [ %.pre.i, %bb.h ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 44, ptr %i.ah, align 1, !tbaa !79
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !81
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !81
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.i

bb.i:                                             ; preds = %fbuffer_append_char.exit, %bb.f
  %i.ak = phi ptr [ %.pre, %fbuffer_append_char.exit ], [ %i.g, %bb.f ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !44 ; 2 uses
  %.not61 = icmp eq i64 %i.am, 0
  br i1 %.not61, label %bb.k, label %bb.j, !prof !27

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @fbuffer_append_str(ptr noundef %i.e, i64 noundef %i.am)
  %.pre91 = load ptr, ptr %i.f, align 8, !tbaa !64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.an = phi ptr [ %.pre91, %bb.j ], [ %i.ak, %bb.i ]
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39 ; 2 uses
  %.not62 = icmp eq i64 %i.ao, 0
  br i1 %.not62, label %.peel.begin, label %bb.l, !prof !27

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @fbuffer_append_str_repeat(ptr noundef %i.e, i64 noundef %i.ao, i64 noundef %i.i)
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.l, %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  switch i32 %.0.i, label %bb.m [
    i32 5, label %.loopexit
    i32 20, label %.loopexit88
  ]

bb.m:                                             ; preds = %.peel.begin
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !64  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !50, !range !48, !noundef !49
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  br i1 %i.at, label %bb.n, label %.loopexit89

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  %i.aw = and i64 %i.av, -5
  %.not72.peel = icmp eq i64 %i.aw, 0
  br i1 %.not72.peel, label %.loopexit90, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %0, ptr %i.a, align 16, !tbaa !10
  store i64 20, ptr %i.ap, align 8, !tbaa !10
  %i.ax = call i64 @rb_proc_call_with_block(i64 noundef %i.av, i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef 4) #24 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = and i64 %i.ax, 7
  %i.ba = icmp ne i64 %i.az, 0
  %i.bb = or i1 %i.ay, %i.ba
  br i1 %i.bb, label %bb.p, label %rb_type.exit69.peel

bb.p:                                             ; preds = %bb.o
  switch i64 %i.ax, label %bb.q [
    i64 0, label %rb_type.exit69.peel.thread
    i64 4, label %rb_type.exit69.peel.thread
    i64 20, label %rb_type.exit69.peel.thread
    i64 36, label %rb_type.exit69.peel.thread
  ]

bb.q:                                             ; preds = %bb.p
  %i.bc = and i64 %i.ax, 255
  %or.cond = icmp eq i64 %i.bc, 12
  br i1 %or.cond, label %.loopexit88, label %rb_type.exit69.peel.thread

rb_type.exit69.peel:                              ; preds = %bb.o
  %i.bd = inttoptr i64 %i.ax to ptr
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i32 %i.bf, 31
  switch i32 %i.bg, label %rb_type.exit69.peel.thread [
    i32 5, label %.loopexit
    i32 20, label %.loopexit88
  ]

.loopexit:                                        ; preds = %rb_type.exit69.peel, %.peel.begin
  %.058.lcssa = phi i64 [ %0, %.peel.begin ], [ %i.ax, %rb_type.exit69.peel ] ; 3 uses
  %.0.lcssa = phi i1 [ false, %.peel.begin ], [ true, %rb_type.exit69.peel ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !95
  %.not64 = icmp eq i32 %i.bi, 5
  br i1 %.not64, label %bb.s, label %bb.r, !prof !27

bb.r:                                             ; preds = %.loopexit
  call fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef nonnull %i.b)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %i.bj = inttoptr i64 %.058.lcssa to ptr
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !86
  %i.bm = load i64, ptr @rb_cString, align 8, !tbaa !10
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.w, label %bb.t, !prof !27

bb.t:                                             ; preds = %bb.s
  %i.bo = call fastcc i64 @convert_string_subclass(i64 noundef %.058.lcssa)
  br label %bb.w

.loopexit88:                                      ; preds = %bb.q, %rb_type.exit69.peel, %.peel.begin
  %.058.lcssa84 = phi i64 [ %0, %.peel.begin ], [ %i.ax, %rb_type.exit69.peel ], [ %i.ax, %bb.q ]
  %.0.lcssa80 = phi i1 [ false, %.peel.begin ], [ true, %rb_type.exit69.peel ], [ true, %bb.q ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !95
  %.not63 = icmp eq i32 %i.bq, 20
  br i1 %.not63, label %bb.v, label %bb.u, !prof !27

bb.u:                                             ; preds = %.loopexit88
  call fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.loopexit88
  %i.br = call i64 @rb_sym2str(i64 noundef %.058.lcssa84) #24
  br label %bb.w

rb_type.exit69.peel.thread:                       ; preds = %bb.p, %bb.p, %bb.p, %bb.q, %bb.p, %rb_type.exit69.peel
  %i.bs = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !50, !range !48, !noundef !49
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %.loopexit90, label %.loopexit89

.loopexit90:                                      ; preds = %rb_type.exit69.peel.thread, %bb.n
  %.058.lcssa86 = phi i64 [ %0, %bb.n ], [ %i.ax, %rb_type.exit69.peel.thread ] ; 2 uses
  %i.bw = call fastcc i64 @rb_class_of(i64 noundef %.058.lcssa86) #30
  call void (i64, ptr, ...) @raise_generator_error(i64 noundef %.058.lcssa86, ptr noundef nonnull @.str.83, i64 noundef %i.bw) #29
  unreachable

.loopexit89:                                      ; preds = %rb_type.exit69.peel.thread, %bb.m
  %.058.lcssa85 = phi i64 [ %0, %bb.m ], [ %i.ax, %rb_type.exit69.peel.thread ]
  %i.bx = call i64 @rb_convert_type(i64 noundef %.058.lcssa85, i32 noundef 5, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.59) #24
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.t, %.loopexit89, %bb.v
  %.083 = phi i1 [ %i.at, %.loopexit89 ], [ %.0.lcssa80, %bb.v ], [ %.0.lcssa, %bb.t ], [ %.0.lcssa, %bb.s ]
  %.056 = phi i64 [ %i.bx, %.loopexit89 ], [ %i.br, %bb.v ], [ %i.bo, %bb.t ], [ %.058.lcssa, %bb.s ]
  %i.by = call fastcc i64 @ensure_valid_encoding(ptr noundef nonnull %i.d, i64 noundef %.056, i1 noundef zeroext %.083, i1 noundef zeroext true) ; 3 uses
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !86
  %i.cc = load i64, ptr @rb_cString, align 8, !tbaa !10
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br i1 %i.cd, label %bb.x, label %bb.y, !prof !27

bb.x:                                             ; preds = %bb.w
  call fastcc void @raw_generate_json_string(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.by)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @generate_json(ptr noundef %i.e, ptr noundef nonnull %i.d, i64 noundef %i.by)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !43
  %.not65 = icmp eq i64 %i.cf, 0
  br i1 %.not65, label %bb.ab, label %bb.aa, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !43
  call fastcc void @fbuffer_append_str(ptr noundef %i.e, i64 noundef %i.ci)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !59
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !81 ; 2 uses
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.ac, label %fbuffer_append_char.exit71, !prof !71

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @fbuffer_do_inc_capa(ptr noundef nonnull %i.e, i64 noundef 1)
  %.pre.i70 = load i64, ptr %i.cl, align 8, !tbaa !81
  br label %fbuffer_append_char.exit71

fbuffer_append_char.exit71:                       ; preds = %bb.ab, %bb.ac
  %i.co = phi i64 [ %i.cm, %bb.ab ], [ %.pre.i70, %bb.ac ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !58
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.co
  store i8 58, ptr %i.cr, align 1, !tbaa !79
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !81
  %i.ct = add i64 %i.cs, 1
  store i64 %i.ct, ptr %i.cl, align 8, !tbaa !81
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !42
  %.not66 = icmp eq i64 %i.cv, 0
  br i1 %.not66, label %bb.ae, label %bb.ad, !prof !27

bb.ad:                                            ; preds = %fbuffer_append_char.exit71
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !42
  call fastcc void @fbuffer_append_str(ptr noundef nonnull %i.e, i64 noundef %i.cy)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %fbuffer_append_char.exit71
  call void @generate_json(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i64 noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str_repeat(ptr nofree noundef captures(none) %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.a) #24 ; 3 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !10
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40   ; 8 uses
  %i.g = mul i64 %i.f, %2                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81
  %i.l = sub i64 %i.i, %i.k
  %i.m = icmp ugt i64 %i.g, %i.l
  br i1 %i.m, label %bb.b, label %fbuffer_inc_capa.exit, !prof !71

bb.b:                                             ; preds = %bb.a
end_hunk_1
