Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_entropy_binding?download=true
inline.NumInlined: 88
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.55 = private unnamed_addr constant [82 x i8] c"Check `ncountSize != ZL_Input_numElts(srcStream)' failed: Corruption detected: %s\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"ncountSize\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"ZL_Input_numElts(srcStream)\00", align 1
@DI_fse_ncount.__zl_static_error_info.58 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.48, i32 143, [4 x i8] zeroinitializer }, align 8
@DI_huffman_v2.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.59, ptr @.str.1, ptr @.str.60, i32 299, [4 x i8] zeroinitializer }, align 8
@.str.59 = private unnamed_addr constant [78 x i8] c"Check `ZL_Input_eltWidth(weightsStream) != 1' failed: Corruption detected: %s\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"DI_huffman_v2\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"ZL_Input_eltWidth(weightsStream)\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@DI_huffman_v2.__zl_static_error_info.63 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.1, ptr @.str.60, i32 305, [4 x i8] zeroinitializer }, align 8
@DI_huffman_v2.__zl_static_error_info.64 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.1, ptr @.str.60, i32 306, [4 x i8] zeroinitializer }, align 8
@DI_huffman_v2.__zl_static_error_info.65 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.1, ptr @.str.60, i32 311, [4 x i8] zeroinitializer }, align 8
@DI_huffman_v2.__zl_static_error_info.66 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.60, i32 323, [4 x i8] zeroinitializer }, align 8
@DI_huffman_v2.__zl_static_error_info.67 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.35, ptr @.str.1, ptr @.str.60, i32 326, [4 x i8] zeroinitializer }, align 8
@DI_huffman_v2.__zl_static_error_info.68 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.69, ptr @.str.1, ptr @.str.60, i32 343, [4 x i8] zeroinitializer }, align 8
@.str.69 = private unnamed_addr constant [81 x i8] c"Check `ZS_HUF_isError(ret)' failed: Corruption detected: HUF decoding failed: %s\00", align 1
@.str.70 = private unnamed_addr constant [20 x i8] c"ZS_HUF_isError(ret)\00", align 1
@.str.71 = private unnamed_addr constant [26 x i8] c"\0A\09HUF decoding failed: %s\00", align 1
@DI_huffman_v2.__zl_static_error_info.72 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.42, ptr @.str.1, ptr @.str.60, i32 344, [4 x i8] zeroinitializer }, align 8
@DI_huffman_v2.__zl_static_error_info.73 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.60, i32 347, [4 x i8] zeroinitializer }, align 8
@DI_huffman_struct_v2.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.59, ptr @.str.1, ptr @.str.74, i32 429, [4 x i8] zeroinitializer }, align 8
@.str.74 = private unnamed_addr constant [21 x i8] c"DI_huffman_struct_v2\00", align 1
@DI_huffman_struct_v2.__zl_static_error_info.75 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.16, ptr @.str.1, ptr @.str.74, i32 435, [4 x i8] zeroinitializer }, align 8
@DI_huffman_struct_v2.__zl_static_error_info.76 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.21, ptr @.str.1, ptr @.str.74, i32 436, [4 x i8] zeroinitializer }, align 8
@DI_huffman_struct_v2.__zl_static_error_info.77 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.31, ptr @.str.1, ptr @.str.74, i32 441, [4 x i8] zeroinitializer }, align 8
@DI_huffman_struct_v2.__zl_static_error_info.78 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.10, ptr @.str.1, ptr @.str.74, i32 450, [4 x i8] zeroinitializer }, align 8
@DI_huffman_struct_v2.__zl_static_error_info.79 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.35, ptr @.str.1, ptr @.str.74, i32 453, [4 x i8] zeroinitializer }, align 8
@DI_huffman_struct_v2.__zl_static_error_info.80 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.74, i32 463, [4 x i8] zeroinitializer }, align 8
@DI_huffman_struct_v2.__zl_static_error_info.81 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.82, ptr @.str.1, ptr @.str.74, i32 464, [4 x i8] zeroinitializer }, align 8
@.str.82 = private unnamed_addr constant [74 x i8] c"Check `ZL_validResult(report) != dstSize' failed: Corruption detected: %s\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"ZL_validResult(report)\00", align 1
@DI_huffman_struct_v2.__zl_static_error_info.84 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.85, ptr @.str.1, ptr @.str.74, i32 465, [4 x i8] zeroinitializer }, align 8
@.str.85 = private unnamed_addr constant [63 x i8] c"Check `ZL_RC_avail(&src) != 0' failed: Corruption detected: %s\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"ZL_RC_avail(&src)\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@DI_huffman_struct_v2.__zl_static_error_info.88 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.74, i32 468, [4 x i8] zeroinitializer }, align 8
@DI_fse_typed.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.89, ptr @.str.1, ptr @.str.90, i32 640, [4 x i8] zeroinitializer }, align 8
@.str.89 = private unnamed_addr constant [123 x i8] c"Check `header.size != 1' failed: Corruption detected: FSE header size should be at most 1, got unexpected header size - %d\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"DI_fse_typed\00", align 1
@.str.91 = private unnamed_addr constant [71 x i8] c"\0A\09FSE header size should be at most 1, got unexpected header size - %d\00", align 1
@DI_fse_typed.__zl_static_error_info.92 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.93, ptr @.str.1, ptr @.str.90, i32 648, [4 x i8] zeroinitializer }, align 8
@.str.93 = private unnamed_addr constant [138 x i8] c"Check `nbStates != 2 && nbStates != 4' failed: Corruption detected: FSE supports only 2 or 4 states, got unexpected number of states - %d\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"nbStates != 2 && nbStates != 4\00", align 1
@.str.95 = private unnamed_addr constant [72 x i8] c"\0A\09FSE supports only 2 or 4 states, got unexpected number of states - %d\00", align 1
@DI_fse_typed.__zl_static_error_info.96 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.90, i32 651, [4 x i8] zeroinitializer }, align 8
@DI_fse_typed.__zl_static_error_info.97 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.98, ptr @.str.1, ptr @.str.90, i32 655, [4 x i8] zeroinitializer }, align 8
@.str.98 = private unnamed_addr constant [79 x i8] c"Check `(const char*)(const void*)out == (const char*)0' failed: Allocation: %s\00", align 1
@.str.99 = private unnamed_addr constant [30 x i8] c"(const char*)(const void*)out\00", align 1
@DI_fse_typed.__zl_static_error_info.100 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.90, i32 664, [4 x i8] zeroinitializer }, align 8
@DI_fse_typed.__zl_static_error_info.101 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.102, ptr @.str.1, ptr @.str.90, i32 665, [4 x i8] zeroinitializer }, align 8
@.str.102 = private unnamed_addr constant [73 x i8] c"Check `dSize != nbElts' failed: Corruption detected: FSE decoding failed\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"dSize\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"nbElts\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"\0A\09FSE decoding failed\00", align 1
@DI_fse_typed.__zl_static_error_info.106 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.90, i32 666, [4 x i8] zeroinitializer }, align 8
@ZL_g_logLevel = external local_unnamed_addr global i32, align 4
@__func__.buildHUFDTable = private unnamed_addr constant [15 x i8] c"buildHUFDTable\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"Invalid nbWeights: %zu\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"Invalid weight > %u\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"Invalid sum: %u is not pow2\00", align 1
@.str.110 = private unnamed_addr constant [29 x i8] c"Table log too large: %u > %u\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"Must have at least 2 non-zero weights\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c"HUF_buildDTable failed: x2=%u: %s\00", align 1
@__func__.buildHUF16DTable = private unnamed_addr constant [17 x i8] c"buildHUF16DTable\00", align 1
@DI_huffman_typed.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 10, [4 x i8] zeroinitializer, ptr @.str.113, ptr @.str.1, ptr @.str.114, i32 543, [4 x i8] zeroinitializer }, align 8
@.str.113 = private unnamed_addr constant [51 x i8] c"Check `header.size < 2' failed: Unknown header: %s\00", align 1
@.str.114 = private unnamed_addr constant [17 x i8] c"DI_huffman_typed\00", align 1
@DI_huffman_typed.__zl_static_error_info.115 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 10, [4 x i8] zeroinitializer, ptr @.str.116, ptr @.str.1, ptr @.str.114, i32 547, [4 x i8] zeroinitializer }, align 8
@.str.116 = private unnamed_addr constant [72 x i8] c"Check `((r)._code != ZL_ErrorCode_no_error)' failed: Unknown header: %s\00", align 1
@.str.117 = private unnamed_addr constant [37 x i8] c"((r)._code != ZL_ErrorCode_no_error)\00", align 1
@DI_huffman_typed.__zl_static_error_info.118 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 10, [4 x i8] zeroinitializer, ptr @.str.119, ptr @.str.1, ptr @.str.114, i32 548, [4 x i8] zeroinitializer }, align 8
@.str.119 = private unnamed_addr constant [49 x i8] c"Check `hdr != hdrEnd' failed: Unknown header: %s\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"hdr\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"hdrEnd\00", align 1
@DI_huffman_typed.__zl_static_error_info.122 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 10, [4 x i8] zeroinitializer, ptr @.str.123, ptr @.str.1, ptr @.str.114, i32 551, [4 x i8] zeroinitializer }, align 8
@.str.123 = private unnamed_addr constant [69 x i8] c"Check `eltWidth == 0' failed: Unknown header: Invalid element width!\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"eltWidth\00", align 1
@.str.125 = private unnamed_addr constant [25 x i8] c"\0A\09Invalid element width!\00", align 1
@DI_huffman_typed.__zl_static_error_info.126 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.114, i32 557, [4 x i8] zeroinitializer }, align 8
@DI_huffman_typed.__zl_static_error_info.127 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.114, i32 564, [4 x i8] zeroinitializer }, align 8
@DI_huffman_typed.__zl_static_error_info.128 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 10, [4 x i8] zeroinitializer, ptr @.str.129, ptr @.str.1, ptr @.str.114, i32 573, [4 x i8] zeroinitializer }, align 8
@.str.129 = private unnamed_addr constant [125 x i8] c"Check `entropyNbElts * entropyEltWidth != dstNbElts * dstEltWidth' failed: Unknown header: Overflow computing element widths\00", align 1
@.str.130 = private unnamed_addr constant [32 x i8] c"entropyNbElts * entropyEltWidth\00", align 1
@.str.131 = private unnamed_addr constant [24 x i8] c"dstNbElts * dstEltWidth\00", align 1
@.str.132 = private unnamed_addr constant [36 x i8] c"\0A\09Overflow computing element widths\00", align 1
@DI_huffman_typed.__zl_static_error_info.133 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.134, ptr @.str.1, ptr @.str.114, i32 580, [4 x i8] zeroinitializer }, align 8
@.str.134 = private unnamed_addr constant [107 x i8] c"Check `dstEltWidth > 2' failed: Corruption detected: eltWidth > 2 is not supported in version 11 or newer.\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"dstEltWidth\00", align 1
@.str.136 = private unnamed_addr constant [56 x i8] c"\0A\09eltWidth > 2 is not supported in version 11 or newer.\00", align 1
@DI_huffman_typed.__zl_static_error_info.137 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.98, ptr @.str.1, ptr @.str.114, i32 586, [4 x i8] zeroinitializer }, align 8
@DI_huffman_typed.__zl_static_error_info.138 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.114, i32 598, [4 x i8] zeroinitializer }, align 8
@DI_huffman_typed.__zl_static_error_info.139 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.140, ptr @.str.1, ptr @.str.114, i32 599, [4 x i8] zeroinitializer }, align 8
@.str.140 = private unnamed_addr constant [84 x i8] c"Check `dSize != entropyNbElts' failed: Corruption detected: Entropy decoding failed\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"entropyNbElts\00", align 1
@.str.142 = private unnamed_addr constant [26 x i8] c"\0A\09Entropy decoding failed\00", align 1
@DI_huffman_typed.__zl_static_error_info.143 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.45, ptr @.str.1, ptr @.str.114, i32 600, [4 x i8] zeroinitializer }, align 8
@ZL_varintDecode.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.144, ptr @.str.145, ptr @.str.146, i32 183, [4 x i8] zeroinitializer }, align 8
@.str.144 = private unnamed_addr constant [35 x i8] c"Unconditional failure: Generic: %s\00", align 1
@.str.145 = private unnamed_addr constant [57 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/shared/varint.h\00", align 1
@.str.146 = private unnamed_addr constant [16 x i8] c"ZL_varintDecode\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@.str.148 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@ZL_varintDecode.__zl_static_error_info.149 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.144, ptr @.str.145, ptr @.str.146, i32 192, [4 x i8] zeroinitializer }, align 8
@DI_entropyDstBound.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.150, ptr @.str.1, ptr @.str.151, i32 484, [4 x i8] zeroinitializer }, align 8
@.str.150 = private unnamed_addr constant [86 x i8] c"Check `ZL_isError(ret)' failed: Generic: corruption: ZS_Entropy_getDecodedSize failed\00", align 1
@.str.151 = private unnamed_addr constant [19 x i8] c"DI_entropyDstBound\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"ZL_isError(ret)\00", align 1
@.str.153 = private unnamed_addr constant [47 x i8] c"\0A\09corruption: ZS_Entropy_getDecodedSize failed\00", align 1
@DI_entropyDecode.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.154, ptr @.str.1, ptr @.str.155, i32 509, [4 x i8] zeroinitializer }, align 8
@.str.154 = private unnamed_addr constant [85 x i8] c"Check `ZL_isError(ret)' failed: Corruption detected: ZS_Entropy_decodeDefault failed\00", align 1
@.str.155 = private unnamed_addr constant [17 x i8] c"DI_entropyDecode\00", align 1
@.str.156 = private unnamed_addr constant [34 x i8] c"\0A\09ZS_Entropy_decodeDefault failed\00", align 1
@DI_entropyDecode.__zl_static_error_info.157 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.158, ptr @.str.1, ptr @.str.155, i32 510, [4 x i8] zeroinitializer }, align 8
@.str.158 = private unnamed_addr constant [82 x i8] c"Check `ZL_RC_avail(&rc) != 0' failed: Corruption detected: Not all input consumed\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"ZL_RC_avail(&rc)\00", align 1
@.str.160 = private unnamed_addr constant [25 x i8] c"\0A\09Not all input consumed\00", align 1

; Function Attrs: nounwind uwtable
define { i32, i64 } @DI_fse_v2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_Decoder_getOperationContext(ptr noundef %0) #9
  store ptr %i.b, ptr %2, align 8, !tbaa !17
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = tail call i64 @ZL_Data_eltWidth(ptr noundef %i.c) #8 ; 2 uses
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_fse_v2.__zl_static_error_info, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 73, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i64 noundef %i.f, i64 noundef 2) #8 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.j = ptrtoint ptr %i.i to i64
  br label %.thread146

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @ZL_Data_rPtr(ptr noundef %i.c) #8 ; 3 uses
  %i.l = tail call i64 @ZL_Data_numElts(ptr noundef %i.c) #8 ; 6 uses
  %i.m = add i64 %i.l, -257
  %or.cond37.i = icmp ult i64 %i.m, -255
  br i1 %or.cond37.i, label %buildFSEDTable.exit.thread130, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.l, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.l, 504                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi175 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi176 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi177 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %wide.load = load <4 x i16>, ptr %i.n, align 2, !tbaa !37 ; 3 uses
  %wide.load178 = load <4 x i16>, ptr %i.o, align 2, !tbaa !37 ; 3 uses
  %i.p = icmp slt <4 x i16> %wide.load, splat (i16 -1)
  %i.q = icmp slt <4 x i16> %wide.load178, splat (i16 -1)
  %i.r = or <4 x i1> %vec.phi176, %i.p            ; 2 uses
  %i.s = or <4 x i1> %vec.phi177, %i.q            ; 2 uses
  %i.t = icmp eq <4 x i16> %wide.load, splat (i16 -1)
  %i.u = icmp eq <4 x i16> %wide.load178, splat (i16 -1)
  %i.v = select <4 x i1> %i.t, <4 x i16> splat (i16 1), <4 x i16> %wide.load
  %i.w = select <4 x i1> %i.u, <4 x i16> splat (i16 1), <4 x i16> %wide.load178
  %i.x = sext <4 x i16> %i.v to <4 x i32>
  %i.y = sext <4 x i16> %i.w to <4 x i32>
  %i.z = add <4 x i32> %vec.phi, %i.x             ; 2 uses
  %i.aa = add <4 x i32> %vec.phi175, %i.y         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aa, %i.z
  %i.ac = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx179 = or <4 x i1> %i.s, %i.r
  %i.ad = bitcast <4 x i1> %bin.rdx179 to i4
  %i.ae = icmp ne i4 %i.ad, 0                     ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader181

.lr.ph.i.preheader181:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.044.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.02943.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ]
  %.03042.i.ph = phi i1 [ false, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block
  %.lcssa174 = phi i1 [ %i.ae, %middle.block ], [ %i.ak, %.lr.ph.i ]
  %.lcssa173 = phi i32 [ %i.ac, %middle.block ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %3 = xor i1 %.lcssa174, true
  %.not.i = icmp ne i32 %.lcssa173, 0
  %or.cond38.i = select i1 %3, i1 %.not.i, i1 false
  %i.af = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %.lcssa173)
  %i.ag = icmp samesign ult i32 %i.af, 2
  %or.cond41.i = select i1 %or.cond38.i, i1 %i.ag, i1 false
  br i1 %or.cond41.i, label %bb.d, label %buildFSEDTable.exit.thread130

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader181, %.lr.ph.i
  %.044.i = phi i64 [ %i.an, %.lr.ph.i ], [ %.044.i.ph, %.lr.ph.i.preheader181 ] ; 2 uses
  %.02943.i = phi i32 [ %i.am, %.lr.ph.i ], [ %.02943.i.ph, %.lr.ph.i.preheader181 ]
  %.03042.i = phi i1 [ %i.ak, %.lr.ph.i ], [ %.03042.i.ph, %.lr.ph.i.preheader181 ]
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.044.i
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !37 ; 3 uses
  %i.aj = icmp slt i16 %i.ai, -1
  %i.ak = or i1 %.03042.i, %i.aj                  ; 2 uses
  %i.al = icmp eq i16 %i.ai, -1
  %narrow.i = select i1 %i.al, i16 1, i16 %i.ai
  %spec.select.i = sext i16 %narrow.i to i32
  %i.am = add i32 %.02943.i, %spec.select.i       ; 2 uses
  %i.an = add nuw nsw i64 %.044.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

bb.d:                                             ; preds = %._crit_edge.i
  %i.ao = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.lcssa173, i1 true) ; 2 uses
  %i.ap = xor i32 %i.ao, 31                       ; 2 uses
  %i.aq = add nsw i32 %i.ao, -27
  %or.cond.i = icmp ult i32 %i.aq, -8
  br i1 %or.cond.i, label %buildFSEDTable.exit.thread130, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = shl nuw nsw i32 4, %i.ap
  %i.as = add nuw nsw i32 %i.ar, 4
  %i.at = zext nneg i32 %i.as to i64
  %i.au = tail call ptr @ZL_Decoder_getScratchSpace(ptr noundef %0, i64 noundef %i.at) #8 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %buildFSEDTable.exit.thread130, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = trunc nuw nsw i64 %i.l to i32
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = tail call i64 @ZS_FSE_buildDTable(ptr noundef nonnull %i.au, ptr noundef nonnull %i.k, i32 noundef %i.ax, i32 noundef %i.ap) #8
  %i.az = tail call i32 @ZS_FSE_isError(i64 noundef %i.ay) #8
  %.not36.i = icmp eq i32 %i.az, 0
  br i1 %.not36.i, label %buildFSEDTable.exit, label %buildFSEDTable.exit.thread130

buildFSEDTable.exit.thread130:                    ; preds = %bb.d, %bb.f, %._crit_edge.i, %bb.c, %bb.e
  %i.ba = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_fse_v2.__zl_static_error_info.9, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 79, i32 noundef 12, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.bb = extractvalue { i32, ptr } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { i32, ptr } %i.ba, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bb, ptr %i.bc, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.bd = ptrtoint ptr %i.bc to i64
  br label %.thread146

buildFSEDTable.exit:                              ; preds = %bb.f
  %i.be = tail call { ptr, i64 } @ZL_Decoder_getCodecHeader(ptr noundef %0) #8 ; 2 uses
  %i.bf = extractvalue { ptr, i64 } %i.be, 0      ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.be, 1      ; 6 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %bb.h, label %bb.g, !prof !20

bb.g:                                             ; preds = %buildFSEDTable.exit
  %i.bi = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_fse_v2.__zl_static_error_info.15, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 85, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i64 noundef %i.bg, i64 noundef 2) #8 ; 2 uses
  %i.bj = extractvalue { i32, ptr } %i.bi, 0      ; 2 uses
  %i.bk = extractvalue { i32, ptr } %i.bi, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bj, ptr %i.bk, ptr noundef nonnull @.str.19) #8
  %i.bl = ptrtoint ptr %i.bk to i64
  br label %.thread146

bb.h:                                             ; preds = %buildFSEDTable.exit
  %i.bm = icmp ult i64 %i.bg, 10
  br i1 %i.bm, label %bb.j, label %bb.i, !prof !20

bb.i:                                             ; preds = %bb.h
  %i.bn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_fse_v2.__zl_static_error_info.20, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 86, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %i.bg, i64 noundef 9) #8 ; 2 uses
  %i.bo = extractvalue { i32, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { i32, ptr } %i.bn, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bo, ptr %i.bp, ptr noundef nonnull @.str.24) #8
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %.thread146

bb.j:                                             ; preds = %bb.h
  %i.br = load i8, ptr %i.bf, align 1, !tbaa !24  ; 2 uses
  %i.bs = zext nneg i8 %i.br to i32
  switch i8 %i.br, label %bb.k [
    i8 4, label %bb.l
    i8 2, label %bb.l
  ], !prof !25

bb.k:                                             ; preds = %bb.j
  %i.bt = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_fse_v2.__zl_static_error_info.25, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 92, i32 noundef 12, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #8 ; 2 uses
  %i.bu = extractvalue { i32, ptr } %i.bt, 0      ; 2 uses
  %i.bv = extractvalue { i32, ptr } %i.bt, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bu, ptr %i.bv, ptr noundef nonnull @.str.29) #8
  %i.bw = ptrtoint ptr %i.bv to i64
  br label %.thread146

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 5 uses
  %i.by = add nsw i64 %i.bg, -2
  %i.bz = add nsw i64 %i.bg, -1                   ; 2 uses
  %xtraiter = and i64 %i.bz, 3                    ; 3 uses
  %i.ca = icmp ult i64 %i.by, 3
  br i1 %i.ca, label %.lr.ph.i117.epil.preheader, label %.new

.new:                                             ; preds = %bb.l
  %unroll_iter = and i64 %i.bz, -4
  br label %.lr.ph.i117

.lr.ph.i117:                                      ; preds = %.lr.ph.i117, %.new
  %.010.i = phi i64 [ 0, %.new ], [ %i.dc, %.lr.ph.i117 ] ; 6 uses
  %.089.i = phi i64 [ 0, %.new ], [ %i.db, %.lr.ph.i117 ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i117 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.010.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !24
  %i.cd = zext i8 %i.cc to i64
  %i.ce = shl i64 %.010.i, 3
  %i.cf = shl i64 %i.cd, %i.ce
  %i.cg = add i64 %i.cf, %.089.i
  %i.ch = or disjoint i64 %.010.i, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !24
  %i.ck = zext i8 %i.cj to i64
  %i.cl = shl i64 %i.ch, 3
  %i.cm = shl i64 %i.ck, %i.cl
  %i.cn = add i64 %i.cm, %i.cg
  %i.co = or disjoint i64 %.010.i, 2              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %i.cr = zext i8 %i.cq to i64
  %i.cs = shl i64 %i.co, 3
  %i.ct = shl i64 %i.cr, %i.cs
  %i.cu = add i64 %i.ct, %i.cn
  %i.cv = or disjoint i64 %.010.i, 3              ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !24
  %i.cy = zext i8 %i.cx to i64
  %i.cz = shl i64 %i.cv, 3
  %i.da = shl i64 %i.cy, %i.cz
  %i.db = add i64 %i.da, %i.cu                    ; 3 uses
  %i.dc = add nuw i64 %.010.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ZL_readLE64_N.exit.unr-lcssa, label %.lr.ph.i117, !llvm.loop !34

ZL_readLE64_N.exit.unr-lcssa:                     ; preds = %.lr.ph.i117
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ZL_readLE64_N.exit, label %.lr.ph.i117.epil.preheader

.lr.ph.i117.epil.preheader:                       ; preds = %ZL_readLE64_N.exit.unr-lcssa, %bb.l
  %.010.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.dc, %ZL_readLE64_N.exit.unr-lcssa ]
  %.089.i.epil.init = phi i64 [ 0, %bb.l ], [ %i.db, %ZL_readLE64_N.exit.unr-lcssa ]
  %lcmp.mod189 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod189)
  br label %.lr.ph.i117.epil

.lr.ph.i117.epil:                                 ; preds = %.lr.ph.i117.epil, %.lr.ph.i117.epil.preheader
  %.010.i.epil = phi i64 [ %i.dj, %.lr.ph.i117.epil ], [ %.010.i.epil.init, %.lr.ph.i117.epil.preheader ] ; 3 uses
  %.089.i.epil = phi i64 [ %i.di, %.lr.ph.i117.epil ], [ %.089.i.epil.init, %.lr.ph.i117.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i117.epil ], [ 0, %.lr.ph.i117.epil.preheader ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.010.i.epil
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !24
  %i.df = zext i8 %i.de to i64
  %i.dg = shl i64 %.010.i.epil, 3
  %i.dh = shl i64 %i.df, %i.dg
  %i.di = add i64 %i.dh, %.089.i.epil             ; 2 uses
  %i.dj = add nuw i64 %.010.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ZL_readLE64_N.exit, label %.lr.ph.i117.epil, !llvm.loop !35

ZL_readLE64_N.exit:                               ; preds = %.lr.ph.i117.epil, %ZL_readLE64_N.exit.unr-lcssa
  %.lcssa = phi i64 [ %i.db, %ZL_readLE64_N.exit.unr-lcssa ], [ %i.di, %.lr.ph.i117.epil ] ; 7 uses
  %i.dk = icmp ugt i64 %.lcssa, 1
  br i1 %i.dk, label %bb.m, label %ZL_readLE64_N.exit.thread, !prof !39

ZL_readLE64_N.exit.thread:                        ; preds = %ZL_readLE64_N.exit
  %i.dl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_fse_v2.__zl_static_error_info.30, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 94, i32 noundef 12, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.6, i64 noundef %.lcssa, i64 noundef 2) #8 ; 2 uses
  %i.dm = extractvalue { i32, ptr } %i.dl, 0      ; 2 uses
  %i.dn = extractvalue { i32, ptr } %i.dl, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dm, ptr %i.dn, ptr noundef nonnull @.str.33) #8
  %i.do = ptrtoint ptr %i.dn to i64
  br label %.thread146

bb.m:                                             ; preds = %ZL_readLE64_N.exit
  %i.dp = tail call ptr @ZL_Decoder_create1OutStream(ptr noundef %0, i64 noundef %.lcssa, i64 noundef 1) #8 ; 3 uses
  %.not112 = icmp eq ptr %i.dp, null
  br i1 %.not112, label %.thread152, label %bb.n, !prof !26

.thread152:                                       ; preds = %bb.m
  %i.dq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DI_fse_v2.__zl_static_error_info.34, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 98, i32 noundef 70, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef null, ptr noundef null) #8 ; 2 uses
  %i.dr = extractvalue { i32, ptr } %i.dq, 0      ; 2 uses
  %i.ds = extractvalue { i32, ptr } %i.dq, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.dr, ptr %i.ds, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  %i.dt = ptrtoint ptr %i.ds to i64
  br label %.thread146

bb.n:                                             ; preds = %bb.m
  %i.du = tail call ptr @ZL_Data_wPtr(ptr noundef nonnull %i.dp) #8
  %i.dv = tail call ptr @ZL_Data_rPtr(ptr noundef %i.e) #8
  %i.dw = tail call i64 @ZL_Data_numElts(ptr noundef %i.e) #8
  %i.dx = tail call i64 @ZS_FSE_decompress_usingDTable(ptr noundef %i.du, i64 noundef %.lcssa, ptr noundef %i.dv, i64 noundef %i.dw, ptr noundef nonnull %i.au, i32 noundef %i.bs) #8 ; 4 uses
end_hunk_0
