Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decode_experimental_dec?download=true
inline.NumInlined: 142
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ZS_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.ZS_rep = type { [3 x i32], [3 x i32] }
%struct.ZL_ErrorContext = type { ptr, %struct.ZL_GraphContext }
%struct.ZL_GraphContext = type { %struct.ZL_NodeID, %struct.ZL_GraphID, i32, ptr }
%struct.ZL_NodeID = type { i32 }
%struct.ZL_GraphID = type { i32 }
%struct.ZL_ReadCursor = type { ptr, ptr }
%struct.ZS_window = type { ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.ZS_RolzDTable2 = type { i32, i32, i32, i32, i32, i8, ptr }
%struct.ZS_Lits = type { i8, ptr, ptr, i64, i64, i64, [256 x ptr], [256 x ptr], [256 x ptr] }
%struct.ZS_Entropy_DecodeParameters = type { i32, ptr, i8 }
%struct.ZL_ContextClustering = type { [256 x i8], i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"experimental\00", align 1
@ZS_experimentalDecoder = local_unnamed_addr constant %struct.ZS_decoder { ptr @.str, ptr @ZS_decoderCtx_create, ptr @ZS_decoderCtx_release, ptr @ZS_decoderCtx_reset, ptr @ZS_experimentalDecoder_decompress }, align 8
@ZS_experimentalDecoder_decompress.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 588, [4 x i8] zeroinitializer }, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"Check `ZL_RC_avail(&in) < 15' failed: Corruption detected: %s\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"/opt-bench/work/openzl/openzl/src/openzl/codecs/rolz/decode_experimental_dec.c\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ZS_experimentalDecoder_decompress\00", align 1
@.str.4 = private unnamed_addr constant [87 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned long) %llu\0A\09rhs = (unsigned long) %llu\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"ZL_RC_avail(&in)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A\09%s\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZS_experimentalDecoder_decompress.__zl_static_error_info.10 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 613, [4 x i8] zeroinitializer }, align 8
@.str.11 = private unnamed_addr constant [96 x i8] c"Unconditional failure: Input does not respect conditions for this node: Invalid contextDepth %u\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Unconditional failure: Invalid contextDepth %u\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@ZS_experimentalDecoder_decompress.__zl_static_error_info.14 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 619, [4 x i8] zeroinitializer }, align 8
@.str.15 = private unnamed_addr constant [119 x i8] c"Check `rolzContextLog == 0' failed: Input does not respect conditions for this node: contextLog must be greater than 0\00", align 1
@.str.16 = private unnamed_addr constant [81 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (unsigned int) %u\0A\09rhs = (unsigned int) %u\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"rolzContextLog\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"\0A\09contextLog must be greater than 0\00", align 1
@ZS_experimentalDecoder_decompress.__zl_static_error_info.21 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 621, [4 x i8] zeroinitializer }, align 8
@.str.22 = private unnamed_addr constant [111 x i8] c"Check `rolzRowLog == 0' failed: Input does not respect conditions for this node: rowLog must be greater than 0\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"rolzRowLog\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"\0A\09rowLog must be greater than 0\00", align 1
@ZS_experimentalDecoder_decompress.__zl_static_error_info.25 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 55, [4 x i8] zeroinitializer, ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 626, [4 x i8] zeroinitializer }, align 8
@.str.26 = private unnamed_addr constant [134 x i8] c"Check `rolzContextLog + rolzRowLog > 27' failed: Input does not respect conditions for this node: contextLog + rowLog exceeds maximum\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"rolzContextLog + rolzRowLog\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"27\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"\0A\09contextLog + rowLog exceeds maximum\00", align 1
@ZS_experimentalDecoder_decompress.__zl_static_error_info.31 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 627, [4 x i8] zeroinitializer }, align 8
@.str.32 = private unnamed_addr constant [70 x i8] c"Check `numSequences >= (1 << 30)' failed: Generic: too many sequences\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"numSequences\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"(1 << 30)\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"\0A\09too many sequences\00", align 1
@ZS_experimentalDecoder_decompress.__zl_static_error_info.37 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.38, ptr @.str.2, ptr @.str.3, i32 628, [4 x i8] zeroinitializer }, align 8
@.str.38 = private unnamed_addr constant [68 x i8] c"Check `numLiterals >= (1 << 30)' failed: Generic: too many literals\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"numLiterals\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"\0A\09too many literals\00", align 1
@__const.ZS_experimentalDecoder_decompress.reps = private unnamed_addr constant %struct.ZS_rep { [3 x i32] [i32 1, i32 4, i32 8], [3 x i32] [i32 1, i32 4, i32 8] }, align 4
@ZS_experimentalDecoder_decompress.__zl_static_error_info.41 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 633, [4 x i8] zeroinitializer }, align 8
@.str.42 = private unnamed_addr constant [82 x i8] c"Check `ZS_window_init(&window, (uint32_t)(oend - ostart), 8)' failed: Generic: %s\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"Check `%s' failed\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"ZS_window_init(&window, (uint32_t)(oend - ostart), 8)\00", align 1
@ZS_experimentalDecoder_decompress.__zl_static_error_info.45 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.46, ptr @.str.2, ptr @.str.3, i32 642, [4 x i8] zeroinitializer }, align 8
@.str.46 = private unnamed_addr constant [153 x i8] c"Check `ZL_isError(ZS_RolzDTable2_init( &rolz, rolzContextDepth, rolzContextLog, rolzRowLog, rolzMinLength, rolzPredictMatchLength))' failed: Generic: %s\00", align 1
@.str.47 = private unnamed_addr constant [125 x i8] c"ZL_isError(ZS_RolzDTable2_init( &rolz, rolzContextDepth, rolzContextLog, rolzRowLog, rolzMinLength, rolzPredictMatchLength))\00", align 1
@ZS_experimentalDecoder_decompress.__zl_static_error_info.48 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.49, ptr @.str.2, ptr @.str.3, i32 790, [4 x i8] zeroinitializer }, align 8
@.str.49 = private unnamed_addr constant [35 x i8] c"Unconditional failure: Generic: %s\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"Unconditional failure: %s\00", align 1
@decodeLiterals.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.51, ptr @.str.2, ptr @.str.52, i32 57, [4 x i8] zeroinitializer }, align 8
@.str.51 = private unnamed_addr constant [63 x i8] c"Check `ZL_RC_avail(src) < 1' failed: Source size too small: %s\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"decodeLiterals\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"ZL_RC_avail(src)\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@decodeLiterals.__zl_static_error_info.55 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.56, ptr @.str.2, ptr @.str.52, i32 66, [4 x i8] zeroinitializer }, align 8
@.str.56 = private unnamed_addr constant [21 x i8] c"Forwarding error: %s\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@decodeLiterals.__zl_static_error_info.58 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.59, ptr @.str.2, ptr @.str.52, i32 73, [4 x i8] zeroinitializer }, align 8
@.str.59 = private unnamed_addr constant [63 x i8] c"Check `ZL_RC_avail(src) < 4' failed: Source size too small: %s\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@decodeLiterals.__zl_static_error_info.61 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.62, ptr @.str.2, ptr @.str.52, i32 75, [4 x i8] zeroinitializer }, align 8
@.str.62 = private unnamed_addr constant [76 x i8] c"Check `numLits > (size_t)(litEnd - litPtr)' failed: Corruption detected: %s\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"numLits\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"(size_t)(litEnd - litPtr)\00", align 1
@decodeLiterals.__zl_static_error_info.65 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.56, ptr @.str.2, ptr @.str.52, i32 78, [4 x i8] zeroinitializer }, align 8
@decodeLiterals.__zl_static_error_info.66 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.67, ptr @.str.2, ptr @.str.52, i32 92, [4 x i8] zeroinitializer }, align 8
@.str.67 = private unnamed_addr constant [89 x i8] c"Check `(uint32_t)(litPtr - lits->lits) != lits->numLits' failed: Corruption detected: %s\00", align 1
@.str.68 = private unnamed_addr constant [32 x i8] c"(uint32_t)(litPtr - lits->lits)\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.70 = private unnamed_addr constant [14 x i8] c"lits->numLits\00", align 1
@__const.decodeCodes.params = private unnamed_addr constant { i32, [4 x i8], ptr, i8, [7 x i8] } { i32 -1, [4 x i8] zeroinitializer, ptr null, i8 0, [7 x i8] zeroinitializer }, align 8
@decodeCodes.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.56, ptr @.str.2, ptr @.str.71, i32 115, [4 x i8] zeroinitializer }, align 8
@.str.71 = private unnamed_addr constant [12 x i8] c"decodeCodes\00", align 1
@decodeMatchTypes.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.56, ptr @.str.2, ptr @.str.72, i32 123, [4 x i8] zeroinitializer }, align 8
@.str.72 = private unnamed_addr constant [17 x i8] c"decodeMatchTypes\00", align 1
@decodeMatchTypes.__zl_static_error_info.73 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.74, ptr @.str.2, ptr @.str.72, i32 125, [4 x i8] zeroinitializer }, align 8
@.str.74 = private unnamed_addr constant [71 x i8] c"Check `codes[c] >= 4' failed: Corruption detected: Invalid match type!\00", align 1
@.str.75 = private unnamed_addr constant [63 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (int) %d\0A\09rhs = (int) %d\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"codes[c]\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"\0A\09Invalid match type!\00", align 1
@decodeSeq.__zl_static_error_info = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.78, ptr @.str.2, ptr @.str.79, i32 159, [4 x i8] zeroinitializer }, align 8
@.str.78 = private unnamed_addr constant [92 x i8] c"Check `ZL_RC_avail(src) < 4 + 4 * (1 ? (0 ? 12 : 6) : 4)' failed: Source size too small: %s\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"decodeSeq\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"4 + 4 * (1 ? (0 ? 12 : 6) : 4)\00", align 1
@decodeSeq.__zl_static_error_info.81 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.82, ptr @.str.2, ptr @.str.79, i32 165, [4 x i8] zeroinitializer }, align 8
@.str.82 = private unnamed_addr constant [66 x i8] c"Check `totals[m - 1] > totals[m]' failed: Corruption detected: %s\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"totals[m - 1]\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"totals[m]\00", align 1
@decodeSeq.__zl_static_error_info.85 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.86, ptr @.str.2, ptr @.str.79, i32 167, [4 x i8] zeroinitializer }, align 8
@.str.86 = private unnamed_addr constant [79 x i8] c"Check `totals[(1 ? (0 ? 12 : 6) : 4) - 1] != numSequences' failed: Generic: %s\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"totals[(1 ? (0 ? 12 : 6) : 4) - 1]\00", align 1
@decodeSeq.__zl_static_error_info.88 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 3, [4 x i8] zeroinitializer, ptr @.str.89, ptr @.str.2, ptr @.str.79, i32 169, [4 x i8] zeroinitializer }, align 8
@.str.89 = private unnamed_addr constant [69 x i8] c"Check `ZL_RC_avail(src) < bitSize' failed: Source size too small: %s\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"bitSize\00", align 1
@decodeSeq.__zl_static_error_info.91 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.92, ptr @.str.2, ptr @.str.79, i32 175, [4 x i8] zeroinitializer }, align 8
@.str.92 = private unnamed_addr constant [122 x i8] c"Check `ERR_isError(BIT_initDStream(&dstream, ZL_RC_ptr(src), bitSize))' failed: Corruption detected: bitstream is corrupt\00", align 1
@.str.93 = private unnamed_addr constant [64 x i8] c"ERR_isError(BIT_initDStream(&dstream, ZL_RC_ptr(src), bitSize))\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"\0A\09bitstream is corrupt\00", align 1
@decodeSeq.__zl_static_error_info.95 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 70, [4 x i8] zeroinitializer, ptr @.str.96, ptr @.str.2, ptr @.str.79, i32 179, [4 x i8] zeroinitializer }, align 8
@.str.96 = private unnamed_addr constant [81 x i8] c"Check `(const char*)(const void*)codes == (const char*)0' failed: Allocation: %s\00", align 1
@.str.97 = private unnamed_addr constant [71 x i8] c"Check `%s %s %s' failed where:\0A\09lhs = (pointer) %p\0A\09rhs = (pointer) %p\00", align 1
@.str.98 = private unnamed_addr constant [32 x i8] c"(const char*)(const void*)codes\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"(const char*)0\00", align 1
@decodeSeq.__zl_static_error_info.100 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.101, ptr @.str.2, ptr @.str.79, i32 202, [4 x i8] zeroinitializer }, align 8
@.str.101 = private unnamed_addr constant [59 x i8] c"Unconditional failure: Corruption detected: Invalid state!\00", align 1
@.str.102 = private unnamed_addr constant [38 x i8] c"Unconditional failure: Invalid state!\00", align 1
@decodeSeq.__zl_static_error_info.103 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 12, [4 x i8] zeroinitializer, ptr @.str.104, ptr @.str.2, ptr @.str.79, i32 207, [4 x i8] zeroinitializer }, align 8
@.str.104 = private unnamed_addr constant [58 x i8] c"Unconditional failure: Corruption detected: Invalid code!\00", align 1
@.str.105 = private unnamed_addr constant [37 x i8] c"Unconditional failure: Invalid code!\00", align 1
@base = internal unnamed_addr constant [59 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 64, i32 128, i32 256, i32 512, i32 1024, i32 2048, i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 2097152, i32 4194304, i32 8388608, i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648], align 16
@bits = internal unnamed_addr constant [59 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 16
@decodeSeq.__zl_static_error_info.106 = internal constant { i32, [4 x i8], ptr, ptr, ptr, i32, [4 x i8] } { i32 1, [4 x i8] zeroinitializer, ptr @.str.86, ptr @.str.2, ptr @.str.79, i32 213, [4 x i8] zeroinitializer }, align 8
@ZS_markov_nextState.kNextState = internal unnamed_addr constant [6 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 5], [4 x i32] [i32 0, i32 1, i32 3, i32 5], [4 x i32] [i32 0, i32 1, i32 4, i32 5], [4 x i32] [i32 0, i32 1, i32 4, i32 5], [4 x i32] [i32 0, i32 1, i32 4, i32 5], [4 x i32] [i32 0, i32 1, i32 2, i32 5]], align 16
@ZS_overlapCopy8.dec32table = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 2, i32 1, i32 4, i32 4, i32 4, i32 4], align 16
@ZS_overlapCopy8.dec64table = internal unnamed_addr constant [8 x i32] [i32 8, i32 8, i32 8, i32 7, i32 8, i32 9, i32 10, i32 11], align 16

; Function Attrs: nounwind uwtable
define internal ptr @ZS_decoderCtx_create() #0 {
bb.a:
  %i.a = tail call ptr @ZL_malloc(i64 noundef 4) #11
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal void @ZS_decoderCtx_release(ptr noundef %0) #0 {
bb.a:
  tail call void @ZL_free(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @ZS_decoderCtx_reset(ptr nofree readnone captures(none) %0) #1 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define internal { i32, i64 } @ZS_experimentalDecoder_decompress(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.ZS_rep, align 8             ; 46 uses
  %6 = alloca %struct.ZL_ErrorContext, align 8    ; 14 uses
  %7 = alloca %struct.ZL_ReadCursor, align 8      ; 9 uses
  %8 = alloca %struct.ZS_window, align 8          ; 10 uses
  %9 = alloca %struct.ZS_RolzDTable2, align 8     ; 17 uses
  %10 = alloca %struct.ZS_Lits, align 8           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #12
  store ptr %i.b, ptr %6, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.d, ptr %i.e, align 8
  %i.f = icmp ugt i64 %4, 14
  br i1 %i.f, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.g = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 588, i32 noundef 12, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i64 noundef %4, i64 noundef 15) #11 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.g, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.h, ptr %i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.ec

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.l = load i8, ptr %3, align 1, !tbaa !19      ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.o = load i8, ptr %i.k, align 1, !tbaa !19    ; 2 uses
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.r = load i8, ptr %i.n, align 1, !tbaa !19    ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load i8, ptr %i.q, align 1, !tbaa !19
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.x = load i8, ptr %i.t, align 1, !tbaa !19
  %i.y = icmp ne i8 %i.x, 0
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !19   ; 2 uses
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.ad = load i8, ptr %i.z, align 1, !tbaa !19   ; 2 uses
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 11
  %.val.i = load i32, ptr %i.ac, align 1          ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 15
  store ptr %i.ag, ptr %7, align 8, !tbaa !21
  %.val.i352 = load i32, ptr %i.af, align 1       ; 4 uses
  switch i8 %i.l, label %bb.d [
    i8 2, label %bb.e
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.e
    i8 7, label %bb.e
    i8 8, label %bb.e
    i8 12, label %bb.e
    i8 16, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.ah = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.10, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 613, i32 noundef 55, ptr noundef nonnull @.str.12, i32 noundef %i.m) #11 ; 2 uses
  %i.ai = extractvalue { i32, ptr } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { i32, ptr } %i.ah, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ai, ptr %i.aj, ptr noundef nonnull @.str.13) #11
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %bb.ec

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %.thread629, label %bb.f, !prof !22

.thread629:                                       ; preds = %bb.e
  %i.al = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.14, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 619, i32 noundef 55, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.am = extractvalue { i32, ptr } %i.al, 0      ; 2 uses
  %i.an = extractvalue { i32, ptr } %i.al, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.am, ptr %i.an, ptr noundef nonnull @.str.20) #11
  %i.ao = ptrtoint ptr %i.an to i64
  br label %bb.ec

bb.f:                                             ; preds = %bb.e
  %.not269 = icmp eq i8 %i.r, 0
  br i1 %.not269, label %.thread632, label %bb.g, !prof !22

.thread632:                                       ; preds = %bb.f
  %i.ap = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.21, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 621, i32 noundef 55, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.aq = extractvalue { i32, ptr } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { i32, ptr } %i.ap, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aq, ptr %i.ar, ptr noundef nonnull @.str.24) #11
  %i.as = ptrtoint ptr %i.ar to i64
  br label %bb.ec

bb.g:                                             ; preds = %bb.f
  %i.at = add nuw nsw i32 %i.s, %i.p              ; 2 uses
  %i.au = icmp samesign ult i32 %i.at, 28
  br i1 %i.au, label %bb.i, label %bb.h, !prof !18

bb.h:                                             ; preds = %bb.g
  %i.av = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.25, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 626, i32 noundef 55, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef %i.at, i32 noundef 27) #11 ; 2 uses
  %i.aw = extractvalue { i32, ptr } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { i32, ptr } %i.av, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.aw, ptr %i.ax, ptr noundef nonnull @.str.30) #11
  %i.ay = ptrtoint ptr %i.ax to i64
  br label %bb.ec

bb.i:                                             ; preds = %bb.g
  %i.az = icmp ult i32 %.val.i352, 1073741824
  br i1 %i.az, label %bb.k, label %bb.j, !prof !18

bb.j:                                             ; preds = %bb.i
  %i.ba = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.31, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 627, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %.val.i352, i32 noundef 1073741824) #11 ; 2 uses
  %i.bb = extractvalue { i32, ptr } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { i32, ptr } %i.ba, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bb, ptr %i.bc, ptr noundef nonnull @.str.36) #11
  %i.bd = ptrtoint ptr %i.bc to i64
  br label %bb.ec

bb.k:                                             ; preds = %bb.i
  %i.be = icmp ult i32 %.val.i, 1073741824
  br i1 %i.be, label %bb.m, label %bb.l, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.bf = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.37, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 628, i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %.val.i, i32 noundef 1073741824) #11 ; 2 uses
  %i.bg = extractvalue { i32, ptr } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { i32, ptr } %i.bf, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bg, ptr %i.bh, ptr noundef nonnull @.str.40) #11
  %i.bi = ptrtoint ptr %i.bh to i64
  br label %bb.ec

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 4 dereferenceable(24) @__const.ZS_experimentalDecoder_decompress.reps, i64 24, i1 false)
  %i.bj = ptrtoint ptr %i.c to i64                ; 4 uses
  %i.bk = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.bl = trunc i64 %2 to i32
  %i.bm = call i32 @ZS_window_init(ptr noundef nonnull %8, i32 noundef %i.bl, i32 noundef 8) #11
  %.not270 = icmp eq i32 %i.bm, 0
  br i1 %.not270, label %bb.o, label %bb.n, !prof !18

bb.n:                                             ; preds = %bb.m
  %i.bn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.41, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 633, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44) #11 ; 2 uses
  %i.bo = extractvalue { i32, ptr } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { i32, ptr } %i.bn, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bo, ptr %i.bp, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  %i.bq = ptrtoint ptr %i.bp to i64
  br label %bb.eb

bb.o:                                             ; preds = %bb.m
  %i.br = call { i32, i64 } @ZS_RolzDTable2_init(ptr noundef nonnull %9, i32 noundef %i.m, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.v, i1 noundef zeroext %i.y) #11
  %i.bs = extractvalue { i32, i64 } %i.br, 0
  %.not657 = icmp eq i32 %i.bs, 0
  br i1 %.not657, label %bb.q, label %bb.p, !prof !18

bb.p:                                             ; preds = %bb.o
  %i.bt = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZS_experimentalDecoder_decompress.__zl_static_error_info.45, ptr noundef nonnull %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 642, i32 noundef 1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.47) #11 ; 2 uses
  %i.bu = extractvalue { i32, ptr } %i.bt, 0      ; 2 uses
  %i.bv = extractvalue { i32, ptr } %i.bt, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.bu, ptr %i.bv, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #11
  %i.bw = ptrtoint ptr %i.bv to i64
  br label %bb.eb

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.bx = add nuw nsw i32 %.val.i, 32
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = call ptr @ZL_malloc(i64 noundef %i.by) #11 ; 5 uses
  %i.ca = zext nneg i32 %.val.i352 to i64         ; 11 uses
  %i.cb = call ptr @ZL_malloc(i64 noundef %i.ca) #11 ; 38 uses
  %i.cc = shl nuw nsw i64 %i.ca, 2                ; 3 uses
  %i.cd = call ptr @ZL_malloc(i64 noundef %i.cc) #11 ; 35 uses
  %i.ce = call ptr @ZL_malloc(i64 noundef %i.cc) #11 ; 35 uses
  %i.cf = call ptr @ZL_malloc(i64 noundef %i.cc) #11 ; 35 uses
  %i.cg = insertelement <4 x ptr> poison, ptr %i.bz, i64 0
  %i.ch = insertelement <4 x ptr> %i.cg, ptr %i.cb, i64 1
  %i.ci = insertelement <4 x ptr> %i.ch, ptr %i.cd, i64 2
  %i.cj = insertelement <4 x ptr> %i.ci, ptr %i.ce, i64 3
  %.fr = freeze <4 x ptr> %i.cj
  %i.ck = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.cl = icmp eq ptr %i.cf, null
  %i.cm = bitcast <4 x i1> %i.ck to i4
  %i.cn = icmp ne i4 %i.cm, 0
  %op.rdx = select i1 %i.cn, i1 true, i1 %i.cl
  br i1 %op.rdx, label %ZS_execExperimentalSequence.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 11 uses
  store ptr %i.bz, ptr %i.co, align 8, !tbaa !26
  %i.cp = zext nneg i32 %.val.i to i64            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !88
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 5 uses
  store i64 %i.cp, ptr %i.cs, align 8, !tbaa !27
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 8 uses
  store i64 0, ptr %i.ct, align 8, !tbaa !89
  %i.cu = call fastcc i32 @decodeLiterals(ptr noundef %10, ptr noundef %7)
  %.not658 = icmp eq i32 %i.cu, 0
  br i1 %.not658, label %bb.s, label %ZS_execExperimentalSequence.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cv = call fastcc i32 @decodeMatchTypes(ptr noundef %i.cb, i64 noundef %i.ca, ptr noundef %7)
  %.not659 = icmp eq i32 %i.cv, 0
  br i1 %.not659, label %bb.t, label %ZS_execExperimentalSequence.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.cw = call fastcc i32 @decodeSeq(ptr noundef nonnull %i.cd, i64 noundef range(i64 0, 4294967296) %i.ca, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull %7)
  %.not660 = icmp eq i32 %i.cw, 0
  br i1 %.not660, label %bb.u, label %ZS_execExperimentalSequence.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cx = call fastcc i32 @decodeSeq(ptr noundef nonnull %i.ce, i64 noundef range(i64 0, 4294967296) %i.ca, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull %7)
  %.not661 = icmp eq i32 %i.cx, 0
  br i1 %.not661, label %bb.v, label %ZS_execExperimentalSequence.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.cy = call fastcc i32 @decodeSeq(ptr noundef nonnull %i.cf, i64 noundef range(i64 0, 4294967296) %i.ca, ptr noundef nonnull readonly %i.cb, ptr noundef nonnull %7)
  %.not662 = icmp eq i32 %i.cy, 0
  br i1 %.not662, label %bb.w, label %ZS_execExperimentalSequence.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cz = call i32 @ZS_window_update(ptr noundef nonnull %8, ptr noundef %1, i64 noundef %2) #11 ; 0 uses
  %.not764 = icmp eq i32 %.val.i352, 0
  br i1 %.not764, label %.critedge, label %.lr.ph715

.lr.ph715:                                        ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 4144
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %.sroa.10.0..sroa_idx386 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.19.12..sroa_idx392 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23.12..sroa_idx396 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 28
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph715, %bb.ba
  %.0237712 = phi ptr [ %1, %.lr.ph715 ], [ %i.lv, %bb.ba ] ; 8 uses
  %.0239711 = phi i64 [ 0, %.lr.ph715 ], [ %i.lw, %bb.ba ] ; 6 uses
  %i.di = ptrtoint ptr %.0237712 to i64           ; 2 uses
  %i.dj = sub i64 %i.di, %i.bk
  %i.dk = load i32, ptr %9, align 8, !tbaa !90    ; 6 uses
  %i.dl = zext i32 %i.dk to i64                   ; 7 uses
  %i.dm = icmp slt i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.0239711
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !29 ; 3 uses
  %.sroa.051.0.insert.ext = zext i32 %i.do to i64 ; 10 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0239711
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !29 ; 8 uses
  %.sroa.051.4.insert.ext = zext i32 %i.dq to i64 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.0239711
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !29 ; 11 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0239711
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !19  ; 2 uses
  %i.dv = sub i64 %i.bj, %i.di
  %i.dw = icmp ult i64 %i.dv, %.sroa.051.0.insert.ext
  br i1 %i.dw, label %ZS_execExperimentalSequence.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.dy = load i64, ptr %i.ct, align 8, !tbaa !89 ; 2 uses
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = icmp ult i64 %i.dz, %.sroa.051.0.insert.ext
  br i1 %i.ea, label %ZS_execExperimentalSequence.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eb = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.ed = icmp eq ptr %.0237712, %1
  br i1 %i.ed, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds i8, ptr %.0237712, i64 -1
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.eg = phi i8 [ %i.ef, %bb.ac ], [ 0, %bb.ab ]
  %.not154.i702.not = icmp eq i32 %i.do, 0
  br i1 %.not154.i702.not, label %.critedge158.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.0141.i704 = phi i64 [ %i.ep, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %.0142.i703 = phi i8 [ %i.el, %bb.ae ], [ %i.eg, %bb.ad ]
  %i.eh = zext i8 %.0142.i703 to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !35 ; 4 uses
  %.not.i = icmp eq ptr %i.ej, null
  br i1 %.not.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !19  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0237712, i64 %.0141.i704
  store i8 %i.el, ptr %i.em, align 1, !tbaa !19
  %i.en = load ptr, ptr %i.ej, align 8, !tbaa !36
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store ptr %i.eo, ptr %i.ej, align 8, !tbaa !36
  %i.ep = add nuw nsw i64 %.0141.i704, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ep, %.sroa.051.0.insert.ext
  br i1 %exitcond.not, label %.critedge158.i, label %.lr.ph, !llvm.loop !49

bb.af:                                            ; preds = %bb.aa
  %i.eq = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0237712, ptr align 1 %i.eq, i64 %.sroa.051.0.insert.ext, i1 false)
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.sroa.051.0.insert.ext
  store ptr %i.er, ptr %i.co, align 8, !tbaa !26
  br label %.critedge158.i

.critedge158.i:                                   ; preds = %bb.ae, %bb.ad, %bb.af
  %i.es = add i64 %i.dy, %.sroa.051.0.insert.ext
  store i64 %i.es, ptr %i.ct, align 8, !tbaa !89
  %i.et = call i64 @llvm.umin.i64(i64 %i.dl, i64 %.sroa.051.0.insert.ext)
  %i.eu = getelementptr inbounds nuw i8, ptr %.0237712, i64 %i.et ; 2 uses
  %i.ev = icmp ult i32 %i.dk, %i.do
  br i1 %i.ev, label %.lr.ph707, label %._crit_edge

.lr.ph707:                                        ; preds = %.critedge158.i
  %i.ew = load i32, ptr %i.db, align 4, !tbaa !91
  %i.ex = sub nsw i64 0, %i.dl
  %i.ey = load ptr, ptr %i.dc, align 8, !tbaa !93
  %i.ez = ptrtoint ptr %i.ey to i64
  %.val335 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %.val336 = load ptr, ptr %i.de, align 8, !tbaa !39
  %notmask.i.i = shl nsw i32 -1, %.val335
  %i.fa = xor i32 %notmask.i.i, -1
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %.critedge158.i
  %.0136.i.lcssa = phi ptr [ %i.eu, %.critedge158.i ], [ %i.fu, %bb.ag ] ; 17 uses
  %.0136.i.lcssa902 = ptrtoaddr ptr %.0136.i.lcssa to i64
  switch i8 %i.du, label %ZS_execExperimentalSequence.exit.thread [
    i8 0, label %bb.ah
    i8 1, label %bb.aj
    i8 2, label %bb.al
    i8 3, label %bb.al
    i8 4, label %ZS_execExperimentalSequence.exit
  ]

bb.ag:                                            ; preds = %.lr.ph707, %bb.ag
  %.0136.i706 = phi ptr [ %i.eu, %.lr.ph707 ], [ %i.fu, %bb.ag ] ; 3 uses
  %.0140.i705 = phi i64 [ %i.dl, %.lr.ph707 ], [ %i.ft, %bb.ag ]
  %i.fb = getelementptr inbounds i8, ptr %.0136.i706, i64 %i.ex
  %i.fc = call fastcc i64 @ZL_hashPtr(ptr noundef %i.fb, i32 noundef %i.ew, i32 noundef %i.dk)
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = ptrtoint ptr %.0136.i706 to i64
  %i.ff = sub i64 %i.fe, %i.ez
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = shl i32 %i.fd, %.val335
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.val336, i64 %i.fi ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 4, !tbaa !42
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add nuw i32 %i.fm, 2147483647
  %i.fo = and i32 %i.fn, %i.fa                    ; 2 uses
  %i.fp = trunc i32 %i.fo to i16
  store i16 %i.fp, ptr %i.fk, align 4, !tbaa !42
  %i.fq = zext nneg i32 %i.fo to i64
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %i.fq ; 2 uses
  store i32 %i.fg, ptr %i.fr, align 4, !tbaa !43
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 6
  store i8 0, ptr %i.fs, align 2, !tbaa !44
  %i.ft = add nuw nsw i64 %.0140.i705, 1          ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0136.i706, i64 1 ; 2 uses
  %exitcond791.not = icmp eq i64 %i.ft, %.sroa.051.0.insert.ext
  br i1 %exitcond791.not, label %._crit_edge, label %bb.ag, !llvm.loop !50

bb.ah:                                            ; preds = %._crit_edge
  %i.fv = icmp eq i32 %i.dq, 0
  %i.fw = ptrtoint ptr %.0136.i.lcssa to i64
  %i.fx = sub i64 %i.fw, %i.bk
  %i.fy = icmp ult i64 %i.fx, %.sroa.051.4.insert.ext
  %or.cond.i = select i1 %i.fv, i1 true, i1 %i.fy
  br i1 %or.cond.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = sub nsw i64 0, %.sroa.051.4.insert.ext
  %i.ga = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.fz
  %i.gb = add i32 %i.ds, %i.ab
  %i.gc = load <2 x i32>, ptr %5, align 8
  store i32 %i.dq, ptr %5, align 8
  store <2 x i32> %i.gc, ptr %i.df, align 4
  br label %bb.aw

bb.aj:                                            ; preds = %._crit_edge
  %i.gd = load i32, ptr %i.db, align 4, !tbaa !91
  %i.ge = sub nsw i64 0, %i.dl
  %i.gf = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.ge
  %i.gg = call fastcc i64 @ZL_hashPtr(ptr noundef %i.gf, i32 noundef %i.gd, i32 noundef %i.dk)
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = call fastcc i64 @ZS_RolzDTable2_get(ptr noundef nonnull %9, i32 noundef %i.gh, i32 noundef %i.dq, i32 noundef %i.ds) ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.gi to i32
  %i.gj = load i32, ptr %i.dh, align 4, !tbaa !94
  %.not155.i = icmp ugt i32 %i.gj, %.sroa.0.0.extract.trunc.i
  br i1 %.not155.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gk = load ptr, ptr %i.dc, align 8, !tbaa !93 ; 2 uses
  %i.gl = and i64 %i.gi, 4294967295
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gl ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.gi, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32 ; 2 uses
  %i.gn = ptrtoint ptr %.0136.i.lcssa to i64      ; 2 uses
  %i.go = ptrtoint ptr %i.gm to i64
  %i.gp = sub i64 %i.gn, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = load <2 x i32>, ptr %5, align 8
  store i32 %i.gq, ptr %5, align 8
  store <2 x i32> %i.gr, ptr %i.df, align 4
  %i.gs = ptrtoint ptr %i.gk to i64
  %i.gt = sub i64 %i.gn, %i.gs
  %i.gu = trunc i64 %i.gt to i32
  %.val337 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %.val338 = load ptr, ptr %i.de, align 8, !tbaa !39
  %notmask.i.i353 = shl nsw i32 -1, %.val337
  %i.gv = xor i32 %notmask.i.i353, -1
  %i.gw = shl i32 %i.gh, %.val337
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.val338, i64 %i.gx ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !42
  %i.hb = zext i16 %i.ha to i32
  %i.hc = add nuw i32 %i.hb, 2147483647
  %i.hd = and i32 %i.hc, %i.gv                    ; 2 uses
  %i.he = trunc i32 %i.hd to i16
  store i16 %i.he, ptr %i.gz, align 4, !tbaa !42
  %i.hf = zext nneg i32 %i.hd to i64
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.hf ; 2 uses
  store i32 %i.gu, ptr %i.hg, align 4, !tbaa !43
  %i.hh = call i32 @llvm.umin.i32(i32 %.sroa.5.0.extract.trunc.i, i32 255)
  %i.hi = trunc nuw i32 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 6
  store i8 %i.hi, ptr %i.hj, align 2, !tbaa !44
  br label %bb.aw

bb.al:                                            ; preds = %._crit_edge, %._crit_edge
  %i.hk = and i64 %.sroa.051.4.insert.ext, 3
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4            ; 3 uses
  %i.hn = icmp eq i32 %i.dq, 0
  br i1 %i.hn, label %.split.i, label %.split148.i

.split.i:                                         ; preds = %bb.al
  %.sroa.0.0.copyload378 = load i32, ptr %5, align 8 ; 2 uses
  %i.ho = load <2 x i32>, ptr %i.df, align 4      ; 2 uses
  %i.hp = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.hq = icmp eq i32 %i.ds, %i.hp
  %.sroa.19.12.copyload = load i32, ptr %.sroa.19.12..sroa_idx392, align 8 ; 3 uses
  br i1 %i.hq, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.split.i
  %.sroa.23.12.copyload = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.an:                                            ; preds = %.split.i
  %i.hr = icmp eq i32 %i.ds, %.sroa.19.12.copyload
  %i.hs = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  %spec.select = select i1 %i.hr, i32 %i.hs, i32 %.sroa.19.12.copyload
  br label %ZS_rep_update.exit

.split148.i:                                      ; preds = %bb.al
  %i.ht = lshr i32 %i.dq, 2
  %i.hu = add nsw i32 %i.ht, -4
  %i.hv = add i32 %i.hu, %i.hm                    ; 5 uses
  %i.hw = and i32 %i.dq, 3                        ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 3
  %i.hy = and i32 %i.dq, 2
  %or.cond.not.i = icmp eq i32 %i.hy, 0
  br i1 %or.cond.not.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.split148.i
  %i.hz = load <2 x i32>, ptr %5, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %.split148.i
  %i.ia = icmp eq i32 %i.hw, 1
  br i1 %i.ia, label %.thread.i, label %bb.aq

.thread.i:                                        ; preds = %bb.ap
  %i.ib = load i32, ptr %.sroa.10.0..sroa_idx386, align 8
  %11 = load <2 x i32>, ptr %5, align 8
  %.pre = load i32, ptr %i.dg, align 4
  %i.ic = insertelement <2 x i32> %11, i32 %i.ib, i64 1
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0.0.copyload379 = load i32, ptr %5, align 8
  %i.id = load <2 x i32>, ptr %i.df, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload379, %bb.aq ], [ %i.hv, %bb.ao ] ; 2 uses
  %i.ie = phi <2 x i32> [ %i.id, %bb.aq ], [ %i.hz, %bb.ao ] ; 2 uses
  %.pre800 = load i32, ptr %i.dg, align 4         ; 2 uses
  br i1 %i.hx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.sroa.19.12.copyload393 = load i32, ptr %.sroa.19.12..sroa_idx392, align 8
  %.sroa.23.12.copyload397 = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.at:                                            ; preds = %bb.ar, %.thread.i
  %i.if = phi i32 [ %.pre, %.thread.i ], [ %.pre800, %bb.ar ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.hv, %.thread.i ], [ %.sroa.0.1, %bb.ar ] ; 2 uses
  %i.ig = phi <2 x i32> [ %i.ic, %.thread.i ], [ %i.ie, %bb.ar ] ; 2 uses
  %i.ih = icmp eq i32 %i.ds, %i.if
  %.sroa.19.12.copyload391 = load i32, ptr %.sroa.19.12..sroa_idx392, align 8 ; 3 uses
  br i1 %i.ih, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.sroa.23.12.copyload395 = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.av:                                            ; preds = %bb.at
  %i.ii = icmp eq i32 %i.ds, %.sroa.19.12.copyload391
  %i.ij = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  %spec.select759 = select i1 %i.ii, i32 %i.ij, i32 %.sroa.19.12.copyload391
  br label %ZS_rep_update.exit

ZS_rep_update.exit:                               ; preds = %bb.av, %bb.an, %bb.au, %bb.as, %bb.am
  %.sroa.23.0 = phi i32 [ %.sroa.23.12.copyload397, %bb.as ], [ %.sroa.23.12.copyload, %bb.am ], [ %spec.select759, %bb.av ], [ %.sroa.23.12.copyload395, %bb.au ], [ %spec.select, %bb.an ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.12.copyload393, %bb.as ], [ %.sroa.19.12.copyload, %bb.am ], [ %i.if, %bb.av ], [ %.sroa.19.12.copyload391, %bb.au ], [ %i.hp, %bb.an ]
  %.sroa.12.0 = phi i32 [ %.pre800, %bb.as ], [ %i.ds, %bb.am ], [ %i.ds, %bb.av ], [ %i.ds, %bb.au ], [ %i.ds, %bb.an ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.1, %bb.as ], [ %.sroa.0.0.copyload378, %bb.am ], [ %.sroa.0.2, %bb.av ], [ %.sroa.0.2, %bb.au ], [ %.sroa.0.0.copyload378, %bb.an ]
  %i.ik = phi i32 [ %i.hv, %bb.as ], [ %i.hm, %bb.am ], [ %i.hv, %bb.av ], [ %i.hv, %bb.au ], [ %i.hm, %bb.an ]
  %i.il = phi <2 x i32> [ %i.ie, %bb.as ], [ %i.ho, %bb.am ], [ %i.ig, %bb.av ], [ %i.ig, %bb.au ], [ %i.ho, %bb.an ]
  store i32 %.sroa.0.0, ptr %5, align 8
  store <2 x i32> %i.il, ptr %i.df, align 4
  store i32 %.sroa.12.0, ptr %i.dg, align 4
  store i32 %.sroa.19.0, ptr %.sroa.19.12..sroa_idx392, align 8
  store i32 %.sroa.23.0, ptr %.sroa.23.12..sroa_idx396, align 4
  %i.im = zext i32 %i.ik to i64
  %i.in = sub nsw i64 0, %i.im
  %i.io = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.in
  %i.ip = add i32 %i.ds, %i.ae
  br label %bb.aw

bb.aw:                                            ; preds = %ZS_rep_update.exit, %bb.ak, %bb.ai
  %.0139.i = phi ptr [ %i.ga, %bb.ai ], [ %i.gm, %bb.ak ], [ %i.io, %ZS_rep_update.exit ] ; 8 uses
  %.0138.i = phi i32 [ %i.gb, %bb.ai ], [ %.sroa.5.0.extract.trunc.i, %bb.ak ], [ %i.ip, %ZS_rep_update.exit ] ; 6 uses
  %.0139.i903 = ptrtoaddr ptr %.0139.i to i64
  %i.iq = zext i32 %.0138.i to i64                ; 10 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.iq
  %i.is = icmp ugt ptr %i.ir, %i.c
  br i1 %i.is, label %ZS_execExperimentalSequence.exit.thread, label %.preheader692

.preheader692:                                    ; preds = %bb.aw
  %.not765 = icmp eq i32 %.0138.i, 0
  br i1 %.not765, label %._crit_edge710, label %iter.check

iter.check:                                       ; preds = %.preheader692
  %min.iters.check = icmp ult i32 %.0138.i, 4
  %i.it = sub i64 %.0139.i903, %.0136.i.lcssa902
  %diff.check = icmp ugt i64 %i.it, -32
  %or.cond1202 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1202, label %.lr.ph709.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check904 = icmp ult i32 %.0138.i, 32
  br i1 %min.iters.check904, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.iu = and i64 %i.iq, 28
  %n.vec = and i64 %i.iq, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %index ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %wide.load = load <16 x i8>, ptr %i.iv, align 1, !tbaa !19
  %wide.load905 = load <16 x i8>, ptr %i.iw, align 1, !tbaa !19
  %i.ix = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %index ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store <16 x i8> %wide.load, ptr %i.ix, align 1, !tbaa !19
  store <16 x i8> %wide.load905, ptr %i.iy, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iz = icmp eq i64 %index.next, %n.vec
  br i1 %i.iz, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.iq
  br i1 %cmp.n, label %._crit_edge710, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.iu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph709.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec906 = and i64 %i.iq, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index907 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next909, %vec.epilog.vector.body ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %index907
  %wide.load908 = load <4 x i8>, ptr %i.ja, align 1, !tbaa !19
  %i.jb = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %index907
  store <4 x i8> %wide.load908, ptr %i.jb, align 1, !tbaa !19
  %index.next909 = add nuw i64 %index907, 4       ; 2 uses
  %i.jc = icmp eq i64 %index.next909, %n.vec906
  br i1 %i.jc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n910 = icmp eq i64 %n.vec906, %i.iq
  br i1 %cmp.n910, label %._crit_edge710, label %.lr.ph709.preheader

.lr.ph709.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0137.i708.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec906, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.iq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol

.lr.ph709.prol:                                   ; preds = %.lr.ph709.preheader, %.lr.ph709.prol
  %.0137.i708.prol = phi i64 [ %i.jg, %.lr.ph709.prol ], [ %.0137.i708.ph, %.lr.ph709.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph709.prol ], [ 0, %.lr.ph709.preheader ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %.0137.i708.prol
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !19
  %i.jf = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %.0137.i708.prol
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !19
  %i.jg = add nuw nsw i64 %.0137.i708.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol, !llvm.loop !53

.lr.ph709.prol.loopexit:                          ; preds = %.lr.ph709.prol, %.lr.ph709.preheader
  %.0137.i708.unr = phi i64 [ %.0137.i708.ph, %.lr.ph709.preheader ], [ %i.jg, %.lr.ph709.prol ]
  %i.jh = sub nsw i64 %.0137.i708.ph, %i.iq
  %i.ji = icmp ugt i64 %i.jh, -4
  br i1 %i.ji, label %._crit_edge710, label %.lr.ph709

._crit_edge710:                                   ; preds = %.lr.ph709.prol.loopexit, %.lr.ph709, %middle.block, %vec.epilog.middle.block, %.preheader692
  %.not156.i = icmp eq i8 %i.du, 1
  br i1 %.not156.i, label %bb.az, label %bb.ax

.lr.ph709:                                        ; preds = %.lr.ph709.prol.loopexit, %.lr.ph709
  %.0137.i708 = phi i64 [ %i.jy, %.lr.ph709 ], [ %.0137.i708.unr, %.lr.ph709.prol.loopexit ] ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %.0137.i708
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !19
  %i.jl = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %.0137.i708
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !19
  %i.jm = add nuw nsw i64 %.0137.i708, 1          ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !19
  %i.jp = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.jm
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !19
  %i.jq = add nuw nsw i64 %.0137.i708, 2          ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !19
  %i.jt = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.jq
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !19
  %i.ju = add nuw nsw i64 %.0137.i708, 3          ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !19
  %i.jx = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.ju
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !19
  %i.jy = add nuw nsw i64 %.0137.i708, 4          ; 2 uses
  %exitcond792.not.3 = icmp eq i64 %i.jy, %i.iq
  br i1 %exitcond792.not.3, label %._crit_edge710, label %.lr.ph709, !llvm.loop !54

bb.ax:                                            ; preds = %._crit_edge710
  %i.jz = ptrtoint ptr %.0136.i.lcssa to i64      ; 2 uses
  %i.ka = sub i64 %i.jz, %i.bk
  %.not157.i = icmp slt i64 %i.ka, %i.dl
  br i1 %.not157.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kb = load i32, ptr %i.db, align 4, !tbaa !91 ; 2 uses
  %i.kc = sub nsw i64 0, %i.dl                    ; 2 uses
  %i.kd = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.kc
  %i.ke = call fastcc i64 @ZL_hashPtr(ptr noundef %i.kd, i32 noundef %i.kb, i32 noundef %i.dk)
  %i.kf = trunc i64 %i.ke to i32
  %i.kg = load ptr, ptr %i.dc, align 8, !tbaa !93
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = sub i64 %i.jz, %i.kh
  %i.kj = trunc i64 %i.ki to i32                  ; 2 uses
  %.val341 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 3 uses
  %.val342 = load ptr, ptr %i.de, align 8, !tbaa !39 ; 2 uses
  %notmask.i.i355 = shl nsw i32 -1, %.val341
  %i.kk = xor i32 %notmask.i.i355, -1             ; 2 uses
  %i.kl = shl i32 %i.kf, %.val341
  %i.km = zext i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %.val342, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4 ; 2 uses
  %i.kp = load i16, ptr %i.ko, align 4, !tbaa !42
  %i.kq = zext i16 %i.kp to i32
  %i.kr = add nuw i32 %i.kq, 2147483647
  %i.ks = and i32 %i.kr, %i.kk                    ; 2 uses
  %i.kt = trunc i32 %i.ks to i16
  store i16 %i.kt, ptr %i.ko, align 4, !tbaa !42
  %i.ku = zext nneg i32 %i.ks to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ku ; 2 uses
  store i32 %i.kj, ptr %i.kv, align 4, !tbaa !43
  %i.kw = call i32 @llvm.umin.i32(i32 %.0138.i, i32 255)
  %i.kx = trunc nuw i32 %i.kw to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 6
  store i8 %i.kx, ptr %i.ky, align 2, !tbaa !44
  %i.kz = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 1
  %i.la = getelementptr inbounds i8, ptr %i.kz, i64 %i.kc
  %i.lb = call fastcc i64 @ZL_hashPtr(ptr noundef nonnull %i.la, i32 noundef %i.kb, i32 noundef %i.dk)
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = add i32 %i.kj, 1
  %i.le = add i32 %.0138.i, -1
  %i.lf = shl i32 %i.lc, %.val341
  %i.lg = zext i32 %i.lf to i64
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %.val342, i64 %i.lg ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 2 uses
  %i.lj = load i16, ptr %i.li, align 4, !tbaa !42
  %i.lk = zext i16 %i.lj to i32
  %i.ll = add nuw i32 %i.lk, 2147483647
  %i.lm = and i32 %i.ll, %i.kk                    ; 2 uses
  %i.ln = trunc i32 %i.lm to i16
  store i16 %i.ln, ptr %i.li, align 4, !tbaa !42
  %i.lo = zext nneg i32 %i.lm to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.lo ; 2 uses
  store i32 %i.ld, ptr %i.lp, align 4, !tbaa !43
  %i.lq = call i32 @llvm.umin.i32(i32 %i.le, i32 255)
  %i.lr = trunc nuw i32 %i.lq to i8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 6
  store i8 %i.lr, ptr %i.ls, align 2, !tbaa !44
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge710
  %i.lt = add nuw nsw i64 %i.iq, %.sroa.051.0.insert.ext
  br label %ZS_execExperimentalSequence.exit

ZS_execExperimentalSequence.exit:                 ; preds = %._crit_edge, %bb.az
  %.6.i = phi i64 [ %i.lt, %bb.az ], [ %.sroa.051.0.insert.ext, %._crit_edge ] ; 2 uses
  %i.lu = icmp eq i64 %.6.i, 0
  br i1 %i.lu, label %ZS_execExperimentalSequence.exit.thread, label %bb.ba
end_hunk_0
begin_hunk_1_@ZS_experimentalDecoder_decompress:bb.a
  %i.na = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.5465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.nc = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  %.sroa.19453.12..sroa_idx456 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23458.12..sroa_idx461 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph753, %bb.cj
  %.2752 = phi ptr [ %.0237.lcssa, %.lr.ph753 ], [ %i.aak, %bb.cj ] ; 7 uses
  %.1240751 = phi i64 [ %.0239.lcssa, %.lr.ph753 ], [ %i.aal, %bb.cj ] ; 5 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.1240751
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !29 ; 4 uses
  %.sroa.047.0.insert.ext = zext i32 %i.ne to i64 ; 7 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.1240751
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !29 ; 7 uses
  %.sroa.047.4.insert.ext = zext i32 %i.ng to i64 ; 3 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.1240751
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !29 ; 13 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.1240751
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !19
  %i.nl = ptrtoint ptr %.2752 to i64
  %i.nm = sub i64 %i.bj, %i.nl
  %i.nn = icmp ult i64 %i.nm, %.sroa.047.0.insert.ext
  br i1 %i.nn, label %ZS_execExperimentalSequence.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.no = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.np = load i64, ptr %i.ct, align 8, !tbaa !89 ; 2 uses
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = icmp ult i64 %i.nq, %.sroa.047.0.insert.ext
  br i1 %i.nr, label %ZS_execExperimentalSequence.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not171.i736.not = icmp eq i32 %i.ne, 0
  br i1 %.not171.i736.not, label %.critedge172.i._crit_edge, label %.lr.ph740.preheader

.lr.ph740.preheader:                              ; preds = %bb.bf
  %i.ns = getelementptr inbounds i8, ptr %.2752, i64 -1
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !19
  br label %.lr.ph740

.lr.ph743:                                        ; preds = %bb.bg
  %i.nu = load ptr, ptr %i.mx, align 8, !tbaa !93
  %i.nv = ptrtoint ptr %i.nu to i64               ; 3 uses
  %i.nw = load ptr, ptr %i.my, align 8, !tbaa !39 ; 3 uses
  %xtraiter1233 = and i64 %.sroa.047.0.insert.ext, 1
  %i.nx = icmp eq i32 %i.ne, 1
  br i1 %i.nx, label %.critedge172.i.epil.preheader, label %.lr.ph743.new

.lr.ph743.new:                                    ; preds = %.lr.ph743
  %unroll_iter1237 = and i64 %.sroa.047.0.insert.ext, 4294967294
  br label %.critedge172.i

.lr.ph740:                                        ; preds = %.lr.ph740.preheader, %bb.bg
  %.0161.i738 = phi i64 [ %i.og, %bb.bg ], [ 0, %.lr.ph740.preheader ] ; 2 uses
  %.0162.i737 = phi i8 [ %i.oc, %bb.bg ], [ %i.nt, %.lr.ph740.preheader ]
  %i.ny = zext i8 %.0162.i737 to i64
  %i.nz = getelementptr inbounds nuw [8 x i8], ptr %i.mw, i64 %i.ny
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !35 ; 4 uses
  %.not.i300 = icmp eq ptr %i.oa, null
  br i1 %.not.i300, label %ZS_execExperimentalSequence.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph740
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !36
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !19  ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.2752, i64 %.0161.i738
  store i8 %i.oc, ptr %i.od, align 1, !tbaa !19
  %i.oe = load ptr, ptr %i.oa, align 8, !tbaa !36
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 1
  store ptr %i.of, ptr %i.oa, align 8, !tbaa !36
  %i.og = add nuw nsw i64 %.0161.i738, 1          ; 2 uses
  %exitcond796.not = icmp eq i64 %i.og, %.sroa.047.0.insert.ext
  br i1 %exitcond796.not, label %.lr.ph743, label %.lr.ph740, !llvm.loop !56

.critedge172.i._crit_edge.loopexit.unr-lcssa:     ; preds = %.critedge172.i
  %lcmp.mod1234.not = icmp eq i64 %xtraiter1233, 0
  br i1 %lcmp.mod1234.not, label %.critedge172.i._crit_edge, label %.critedge172.i.epil.preheader

.critedge172.i.epil.preheader:                    ; preds = %.critedge172.i._crit_edge.loopexit.unr-lcssa, %.lr.ph743
  %.0147.i284742.epil.init = phi ptr [ %.2752, %.lr.ph743 ], [ %i.qd, %.critedge172.i._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1236 = trunc i32 %i.ne to i1
  call void @llvm.assume(i1 %lcmp.mod1236)
  %i.oh = getelementptr inbounds i8, ptr %.0147.i284742.epil.init, i64 -2
  %.val.i357.epil = load i16, ptr %i.oh, align 1
  %i.oi = ptrtoint ptr %.0147.i284742.epil.init to i64
  %i.oj = sub i64 %i.oi, %i.nv
  %i.ok = trunc i64 %i.oj to i32
  %i.ol = mul i16 %.val.i357.epil, -22595
  %i.om = and i16 %i.ol, -16
  %i.on = zext i16 %i.om to i64
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.on ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 4 ; 2 uses
  %i.oq = load i16, ptr %i.op, align 4, !tbaa !42
  %i.or = add i16 %i.oq, 15
  %i.os = and i16 %i.or, 15                       ; 2 uses
  store i16 %i.os, ptr %i.op, align 4, !tbaa !42
  %i.ot = zext nneg i16 %i.os to i64
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.ot ; 2 uses
  store i32 %i.ok, ptr %i.ou, align 4, !tbaa !43
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 6
  store i8 0, ptr %i.ov, align 2, !tbaa !44
  %i.ow = getelementptr inbounds nuw i8, ptr %.0147.i284742.epil.init, i64 1
  br label %.critedge172.i._crit_edge

.critedge172.i._crit_edge:                        ; preds = %.critedge172.i.epil.preheader, %.critedge172.i._crit_edge.loopexit.unr-lcssa, %bb.bf
  %.0147.i284.lcssa = phi ptr [ %.2752, %bb.bf ], [ %i.qd, %.critedge172.i._crit_edge.loopexit.unr-lcssa ], [ %i.ow, %.critedge172.i.epil.preheader ] ; 42 uses
  %.0147.i284.lcssa1054 = ptrtoaddr ptr %.0147.i284.lcssa to i64 ; 18 uses
  %i.ox = add i64 %i.np, %.sroa.047.0.insert.ext
  store i64 %i.ox, ptr %i.ct, align 8, !tbaa !89
  switch i8 %i.nk, label %bb.br [
    i8 1, label %bb.bh
    i8 0, label %bb.bp
  ]

.critedge172.i:                                   ; preds = %.critedge172.i, %.lr.ph743.new
  %.0147.i284742 = phi ptr [ %.2752, %.lr.ph743.new ], [ %i.qd, %.critedge172.i ] ; 5 uses
  %niter1238 = phi i64 [ 0, %.lr.ph743.new ], [ %niter1238.next.1, %.critedge172.i ]
  %i.oy = getelementptr inbounds i8, ptr %.0147.i284742, i64 -2
  %.val.i357 = load i16, ptr %i.oy, align 1
  %i.oz = ptrtoint ptr %.0147.i284742 to i64
  %i.pa = sub i64 %i.oz, %i.nv
  %i.pb = trunc i64 %i.pa to i32
  %i.pc = mul i16 %.val.i357, -22595
  %i.pd = and i16 %i.pc, -16
  %i.pe = zext i16 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.pe ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 4 ; 2 uses
  %i.ph = load i16, ptr %i.pg, align 4, !tbaa !42
  %i.pi = add i16 %i.ph, 15
  %i.pj = and i16 %i.pi, 15                       ; 2 uses
  store i16 %i.pj, ptr %i.pg, align 4, !tbaa !42
  %i.pk = zext nneg i16 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pk ; 2 uses
  store i32 %i.pb, ptr %i.pl, align 4, !tbaa !43
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 6
  store i8 0, ptr %i.pm, align 2, !tbaa !44
  %i.pn = getelementptr inbounds nuw i8, ptr %.0147.i284742, i64 1
  %i.po = getelementptr inbounds i8, ptr %.0147.i284742, i64 -1
  %.val.i357.1 = load i16, ptr %i.po, align 1
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.pp, %i.nv
  %i.pr = trunc i64 %i.pq to i32
  %i.ps = mul i16 %.val.i357.1, -22595
  %i.pt = and i16 %i.ps, -16
  %i.pu = zext i16 %i.pt to i64
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.nw, i64 %i.pu ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 4 ; 2 uses
  %i.px = load i16, ptr %i.pw, align 4, !tbaa !42
  %i.py = add i16 %i.px, 15
  %i.pz = and i16 %i.py, 15                       ; 2 uses
  store i16 %i.pz, ptr %i.pw, align 4, !tbaa !42
  %i.qa = zext nneg i16 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.qa ; 2 uses
  store i32 %i.pr, ptr %i.qb, align 4, !tbaa !43
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 6
  store i8 0, ptr %i.qc, align 2, !tbaa !44
  %i.qd = getelementptr inbounds nuw i8, ptr %.0147.i284742, i64 2 ; 3 uses
  %niter1238.next.1 = add i64 %niter1238, 2       ; 2 uses
  %niter1238.ncmp.1 = icmp eq i64 %niter1238.next.1, %unroll_iter1237
  br i1 %niter1238.ncmp.1, label %.critedge172.i._crit_edge.loopexit.unr-lcssa, label %.critedge172.i, !llvm.loop !57

bb.bh:                                            ; preds = %.critedge172.i._crit_edge
  %i.qe = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 -2
  %.val.i359 = load i16, ptr %i.qe, align 1
  %i.qf = load ptr, ptr %i.my, align 8, !tbaa !39
  %i.qg = mul i16 %.val.i359, -22595
  %i.qh = and i16 %i.qg, -16
  %i.qi = zext i16 %i.qh to i64
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %i.qi ; 3 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 4 ; 3 uses
  %i.ql = load i16, ptr %i.qk, align 4, !tbaa !42
  %i.qm = zext i16 %i.ql to i32
  %i.qn = add i32 %i.ng, %i.qm
  %i.qo = and i32 %i.qn, 15
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.qp ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !43 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 6
  %i.qt = load i8, ptr %i.qs, align 2, !tbaa !44
  %i.qu = zext i8 %i.qt to i32                    ; 2 uses
  %i.qv = add i32 %i.ni, 3                        ; 2 uses
  %.not.not.i309 = icmp ugt i32 %i.qv, %i.qu
  %.not.i310 = icmp eq i32 %i.ni, 0
  %i.qw = add i32 %i.ni, 2
  %spec.select.i311 = select i1 %.not.i310, i32 %i.qu, i32 %i.qw
  %.0.i312 = select i1 %.not.not.i309, i32 %i.qv, i32 %spec.select.i311 ; 5 uses
  %.sroa.2.0.insert.ext.i = zext i32 %.0.i312 to i64 ; 12 uses
  %.sroa.0.0.insert.ext.i = zext i32 %i.qr to i64
  %i.qx = load ptr, ptr %i.mx, align 8, !tbaa !93 ; 2 uses
  %i.qy = getelementptr i8, ptr %i.qx, i64 %.sroa.0.0.insert.ext.i ; 15 uses
  %i.qz = load i32, ptr %i.nb, align 4, !tbaa !94
  %i.ra = icmp ugt i32 %i.qz, %i.qr
  br i1 %i.ra, label %ZS_execExperimentalSequence.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.rb = ptrtoint ptr %.0147.i284.lcssa to i64   ; 2 uses
  %i.rc = ptrtoint ptr %i.qy to i64
  %i.rd = sub i64 %i.rb, %i.rc                    ; 6 uses
  %i.re = trunc i64 %i.rd to i32
  %i.rf = load <2 x i32>, ptr %5, align 8
  store i32 %i.re, ptr %5, align 8
  store <2 x i32> %i.rf, ptr %i.mz, align 4
  %i.rg = ptrtoint ptr %i.qx to i64
  %i.rh = sub i64 %i.rb, %i.rg
  %i.ri = trunc i64 %i.rh to i32
  %i.rj = load i16, ptr %i.qk, align 4, !tbaa !42
  %i.rk = add i16 %i.rj, 15
  %i.rl = and i16 %i.rk, 15                       ; 2 uses
  store i16 %i.rl, ptr %i.qk, align 4, !tbaa !42
  %i.rm = zext nneg i16 %i.rl to i64
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.qj, i64 %i.rm ; 2 uses
  store i32 %i.ri, ptr %i.rn, align 4, !tbaa !43
  %i.ro = call i32 @llvm.umin.i32(i32 %.0.i312, i32 255)
  %i.rp = trunc nuw i32 %i.ro to i8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 6
  store i8 %i.rp, ptr %i.rq, align 2, !tbaa !44
  %i.rr = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 %.sroa.2.0.insert.ext.i ; 5 uses
  %i.rs = icmp ugt ptr %i.rr, %i.nc
  br i1 %i.rs, label %bb.bj, label %bb.bk, !prof !22

bb.bj:                                            ; preds = %bb.bi
  %i.rt = icmp ugt ptr %i.rr, %i.c
  br i1 %i.rt, label %ZS_execExperimentalSequence.exit.thread, label %.preheader669

.preheader669:                                    ; preds = %bb.bj
  %.not770 = icmp eq i32 %.0.i312, 0
  br i1 %.not770, label %ZS_execExperimentalSequence2.exit302, label %iter.check1159

iter.check1159:                                   ; preds = %.preheader669
  %i.ru = add i64 %.0147.i284.lcssa1054, %.sroa.2.0.insert.ext.i
  %i.rv = add i64 %.0147.i284.lcssa1054, 1
  %umax1140 = call i64 @llvm.umax.i64(i64 %i.ru, i64 %i.rv)
  %i.rw = sub i64 %umax1140, %.0147.i284.lcssa1054 ; 7 uses
  %min.iters.check1142 = icmp ult i64 %i.rw, 8
  %i.rx = add i64 %i.rd, -1
  %diff.check1139 = icmp ult i64 %i.rx, 31
  %or.cond1203 = select i1 %min.iters.check1142, i1 true, i1 %diff.check1139
  br i1 %or.cond1203, label %.lr.ph747.preheader, label %vector.main.loop.iter.check1143

vector.main.loop.iter.check1143:                  ; preds = %iter.check1159
  %min.iters.check1144 = icmp ult i64 %i.rw, 32
  br i1 %min.iters.check1144, label %vec.epilog.ph1163, label %vector.ph1145

vector.ph1145:                                    ; preds = %vector.main.loop.iter.check1143
  %i.ry = and i64 %i.rw, 24
  %n.vec1146 = and i64 %i.rw, -32                 ; 5 uses
  %i.rz = getelementptr i8, ptr %i.qy, i64 %n.vec1146
  %i.sa = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1146
  br label %vector.body1147

vector.body1147:                                  ; preds = %vector.ph1145, %vector.body1147
  %index1148 = phi i64 [ 0, %vector.ph1145 ], [ %index.next1153, %vector.body1147 ] ; 3 uses
  %next.gep1149 = getelementptr i8, ptr %i.qy, i64 %index1148 ; 2 uses
  %next.gep1150 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1148 ; 2 uses
  %i.sb = getelementptr i8, ptr %next.gep1149, i64 16
  %wide.load1151 = load <16 x i8>, ptr %next.gep1149, align 1, !tbaa !19
  %wide.load1152 = load <16 x i8>, ptr %i.sb, align 1, !tbaa !19
  %i.sc = getelementptr i8, ptr %next.gep1150, i64 16
  store <16 x i8> %wide.load1151, ptr %next.gep1150, align 1, !tbaa !19
  store <16 x i8> %wide.load1152, ptr %i.sc, align 1, !tbaa !19
  %index.next1153 = add nuw i64 %index1148, 32    ; 2 uses
  %i.sd = icmp eq i64 %index.next1153, %n.vec1146
  br i1 %i.sd, label %middle.block1154, label %vector.body1147, !llvm.loop !58

middle.block1154:                                 ; preds = %vector.body1147
  %cmp.n1155 = icmp eq i64 %i.rw, %n.vec1146
  br i1 %cmp.n1155, label %ZS_execExperimentalSequence2.exit302, label %vec.epilog.iter.check1161

vec.epilog.iter.check1161:                        ; preds = %middle.block1154
  %min.epilog.iters.check1162 = icmp eq i64 %i.ry, 0
  br i1 %min.epilog.iters.check1162, label %.lr.ph747.preheader, label %vec.epilog.ph1163, !prof !98

vec.epilog.ph1163:                                ; preds = %vector.main.loop.iter.check1143, %vec.epilog.iter.check1161
  %vec.epilog.resume.val1156 = phi i64 [ %n.vec1146, %vec.epilog.iter.check1161 ], [ 0, %vector.main.loop.iter.check1143 ]
  %n.vec1164 = and i64 %i.rw, -8                  ; 4 uses
  %i.se = getelementptr i8, ptr %i.qy, i64 %n.vec1164
  %i.sf = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1164
  br label %vec.epilog.vector.body1165

vec.epilog.vector.body1165:                       ; preds = %vec.epilog.vector.body1165, %vec.epilog.ph1163
  %index1166 = phi i64 [ %vec.epilog.resume.val1156, %vec.epilog.ph1163 ], [ %index.next1170, %vec.epilog.vector.body1165 ] ; 3 uses
  %next.gep1167 = getelementptr i8, ptr %i.qy, i64 %index1166
  %next.gep1168 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1166
  %wide.load1169 = load <8 x i8>, ptr %next.gep1167, align 1, !tbaa !19
  store <8 x i8> %wide.load1169, ptr %next.gep1168, align 1, !tbaa !19
  %index.next1170 = add nuw i64 %index1166, 8     ; 2 uses
  %i.sg = icmp eq i64 %index.next1170, %n.vec1164
  br i1 %i.sg, label %vec.epilog.middle.block1171, label %vec.epilog.vector.body1165, !llvm.loop !59

vec.epilog.middle.block1171:                      ; preds = %vec.epilog.vector.body1165
  %cmp.n1172 = icmp eq i64 %i.rw, %n.vec1164
  br i1 %cmp.n1172, label %ZS_execExperimentalSequence2.exit302, label %.lr.ph747.preheader

.lr.ph747.preheader:                              ; preds = %iter.check1159, %vec.epilog.iter.check1161, %vec.epilog.middle.block1171
  %.0150.i297746.ph = phi ptr [ %i.qy, %iter.check1159 ], [ %i.rz, %vec.epilog.iter.check1161 ], [ %i.se, %vec.epilog.middle.block1171 ]
  %.0151.i296745.ph = phi ptr [ %.0147.i284.lcssa, %iter.check1159 ], [ %i.sa, %vec.epilog.iter.check1161 ], [ %i.sf, %vec.epilog.middle.block1171 ]
  br label %.lr.ph747

.lr.ph747:                                        ; preds = %.lr.ph747.preheader, %.lr.ph747
  %.0150.i297746 = phi ptr [ %i.sh, %.lr.ph747 ], [ %.0150.i297746.ph, %.lr.ph747.preheader ] ; 2 uses
  %.0151.i296745 = phi ptr [ %i.sj, %.lr.ph747 ], [ %.0151.i296745.ph, %.lr.ph747.preheader ] ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0150.i297746, i64 1
  %i.si = load i8, ptr %.0150.i297746, align 1, !tbaa !19
  %i.sj = getelementptr inbounds nuw i8, ptr %.0151.i296745, i64 1 ; 2 uses
  store i8 %i.si, ptr %.0151.i296745, align 1, !tbaa !19
  %i.sk = icmp ult ptr %i.sj, %i.rr
  br i1 %i.sk, label %.lr.ph747, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !60

bb.bk:                                            ; preds = %bb.bi
  %i.sl = icmp slt i64 %i.rd, 16
  br i1 %i.sl, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.sm = icmp ult i64 %i.rd, 8
  br i1 %i.sm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.rd
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !29
  %i.sp = load i8, ptr %i.qy, align 1, !tbaa !19
  store i8 %i.sp, ptr %.0147.i284.lcssa, align 1, !tbaa !19
  %i.sq = getelementptr inbounds nuw i8, ptr %i.qy, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !19
  %i.ss = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 1
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !19
  %i.st = getelementptr inbounds nuw i8, ptr %i.qy, i64 2
  %i.su = load i8, ptr %i.st, align 1, !tbaa !19
  %i.sv = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 2
  store i8 %i.su, ptr %i.sv, align 1, !tbaa !19
  %i.sw = getelementptr inbounds nuw i8, ptr %i.qy, i64 3
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !19
  %i.sy = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 3
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !19
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.rd
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !29
  %i.tb = sext i32 %i.ta to i64
  %i.tc = getelementptr inbounds i8, ptr %i.qy, i64 %i.tb ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 4
  %.val343 = load i32, ptr %i.tc, align 1
  store i32 %.val343, ptr %i.td, align 1
  %i.te = sext i32 %i.so to i64
  %i.tf = sub nsw i64 0, %i.te
  %i.tg = getelementptr inbounds i8, ptr %i.tc, i64 %i.tf
  br label %ZS_overlapCopy8.exit333

bb.bn:                                            ; preds = %bb.bl
  %.val347 = load i64, ptr %i.qy, align 1
  store i64 %.val347, ptr %.0147.i284.lcssa, align 1
  br label %ZS_overlapCopy8.exit333

ZS_overlapCopy8.exit333:                          ; preds = %bb.bm, %bb.bn
  %.2622 = phi ptr [ %i.tg, %bb.bm ], [ %i.qy, %bb.bn ] ; 7 uses
  %.not12.i = icmp ugt i32 %.0.i312, 8
  br i1 %.not12.i, label %.preheader670.preheader, label %ZS_execExperimentalSequence2.exit302

.preheader670.preheader:                          ; preds = %ZS_overlapCopy8.exit333
  %i.th = getelementptr i8, ptr %.0147.i284.lcssa, i64 8 ; 6 uses
  %i.ti = add i64 %.0147.i284.lcssa1054, %.sroa.2.0.insert.ext.i
  %i.tj = add i64 %.0147.i284.lcssa1054, 24
  %i.tk = call i64 @llvm.umax.i64(i64 %i.ti, i64 %i.tj)
  %i.tl = add i64 %i.tk, -9
  %i.tm = sub i64 %i.tl, %.0147.i284.lcssa1054    ; 2 uses
  %i.tn = lshr i64 %i.tm, 4
  %i.to = add nuw nsw i64 %i.tn, 1                ; 2 uses
  %min.iters.check1186 = icmp ult i64 %i.tm, 112
  br i1 %min.iters.check1186, label %.preheader670.preheader1210, label %vector.memcheck1175

vector.memcheck1175:                              ; preds = %.preheader670.preheader
  %scevgep1176 = getelementptr i8, ptr %.0147.i284.lcssa, i64 24
  %i.tp = add i64 %.0147.i284.lcssa1054, %.sroa.2.0.insert.ext.i
  %i.tq = add i64 %.0147.i284.lcssa1054, 24
  %umax1177 = call i64 @llvm.umax.i64(i64 %i.tp, i64 %i.tq)
  %i.tr = add i64 %umax1177, -9
  %i.ts = sub i64 %i.tr, %.0147.i284.lcssa1054
  %i.tt = and i64 %i.ts, -16                      ; 2 uses
  %scevgep1178 = getelementptr i8, ptr %scevgep1176, i64 %i.tt
  %scevgep1179 = getelementptr i8, ptr %.2622, i64 8
  %scevgep1180 = getelementptr i8, ptr %.2622, i64 24
  %scevgep1181 = getelementptr i8, ptr %scevgep1180, i64 %i.tt
  %bound01182 = icmp ult ptr %i.th, %scevgep1181
  %bound11183 = icmp ult ptr %scevgep1179, %scevgep1178
  %found.conflict1184 = and i1 %bound01182, %bound11183
  br i1 %found.conflict1184, label %.preheader670.preheader1210, label %vector.ph1187

vector.ph1187:                                    ; preds = %vector.memcheck1175
  %n.vec1188 = and i64 %i.to, 2305843009213693950 ; 3 uses
  %i.tu = shl i64 %n.vec1188, 4                   ; 2 uses
  %i.tv = getelementptr i8, ptr %i.th, i64 %i.tu
  %i.tw = getelementptr i8, ptr %.2622, i64 %i.tu
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1197, %vector.body1189 ] ; 2 uses
  %i.tx = shl i64 %index1190, 4                   ; 3 uses
  %i.ty = or disjoint i64 %i.tx, 16               ; 2 uses
  %next.gep1191 = getelementptr i8, ptr %i.th, i64 %i.tx
  %next.gep1192 = getelementptr i8, ptr %i.th, i64 %i.ty
  %next.gep1193 = getelementptr i8, ptr %.2622, i64 %i.tx
  %next.gep1194 = getelementptr i8, ptr %.2622, i64 %i.ty
  %i.tz = getelementptr inbounds nuw i8, ptr %next.gep1193, i64 8
  %i.ua = getelementptr inbounds nuw i8, ptr %next.gep1194, i64 8
  %wide.load1195 = load <2 x i64>, ptr %i.tz, align 1, !alias.scope !99
  %wide.load1196 = load <2 x i64>, ptr %i.ua, align 1, !alias.scope !99
  store <2 x i64> %wide.load1195, ptr %next.gep1191, align 1, !alias.scope !100, !noalias !99
  store <2 x i64> %wide.load1196, ptr %next.gep1192, align 1, !alias.scope !100, !noalias !99
  %index.next1197 = add nuw i64 %index1190, 2     ; 2 uses
  %i.ub = icmp eq i64 %index.next1197, %n.vec1188
  br i1 %i.ub, label %middle.block1198, label %vector.body1189, !llvm.loop !64

middle.block1198:                                 ; preds = %vector.body1189
  %cmp.n1199 = icmp eq i64 %i.to, %n.vec1188
  br i1 %cmp.n1199, label %ZS_execExperimentalSequence2.exit302, label %.preheader670.preheader1210

.preheader670.preheader1210:                      ; preds = %vector.memcheck1175, %.preheader670.preheader, %middle.block1198
  %.1624.ph = phi ptr [ %i.th, %vector.memcheck1175 ], [ %i.th, %.preheader670.preheader ], [ %i.tv, %middle.block1198 ]
  %.2622.pn.ph = phi ptr [ %.2622, %vector.memcheck1175 ], [ %.2622, %.preheader670.preheader ], [ %i.tw, %middle.block1198 ]
  br label %.preheader670

.preheader670:                                    ; preds = %.preheader670.preheader1210, %.preheader670
  %.1624 = phi ptr [ %i.ug, %.preheader670 ], [ %.1624.ph, %.preheader670.preheader1210 ] ; 3 uses
  %.2622.pn = phi ptr [ %i.ue, %.preheader670 ], [ %.2622.pn.ph, %.preheader670.preheader1210 ] ; 2 uses
  %.1621 = getelementptr inbounds nuw i8, ptr %.2622.pn, i64 8
  %i.uc = load i64, ptr %.1621, align 1
  store i64 %i.uc, ptr %.1624, align 1
  %i.ud = getelementptr inbounds nuw i8, ptr %.1624, i64 8
  %i.ue = getelementptr inbounds nuw i8, ptr %.2622.pn, i64 16 ; 2 uses
  %i.uf = load i64, ptr %i.ue, align 1
  store i64 %i.uf, ptr %i.ud, align 1
  %i.ug = getelementptr inbounds nuw i8, ptr %.1624, i64 16 ; 2 uses
  %i.uh = icmp ult ptr %i.ug, %i.rr
  br i1 %i.uh, label %.preheader670, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !65

bb.bo:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i284.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %i.qy, i64 16, i1 false)
  %.not.i314 = icmp ugt i32 %.0.i312, 16
  br i1 %.not.i314, label %.preheader672.preheader, label %ZS_execExperimentalSequence2.exit302

.preheader672.preheader:                          ; preds = %bb.bo
  %i.ui = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 16
  br label %.preheader672

.preheader672:                                    ; preds = %.preheader672.preheader, %.preheader672
  %.0623 = phi ptr [ %i.ul, %.preheader672 ], [ %i.ui, %.preheader672.preheader ] ; 3 uses
  %.pn664 = phi ptr [ %i.uk, %.preheader672 ], [ %i.qy, %.preheader672.preheader ] ; 2 uses
  %.0620 = getelementptr inbounds nuw i8, ptr %.pn664, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0623, ptr noundef nonnull align 1 dereferenceable(16) %.0620, i64 16, i1 false)
  %i.uj = getelementptr inbounds nuw i8, ptr %.0623, i64 16
  %i.uk = getelementptr inbounds nuw i8, ptr %.pn664, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.uj, ptr noundef nonnull align 1 dereferenceable(16) %i.uk, i64 16, i1 false)
  %i.ul = getelementptr inbounds nuw i8, ptr %.0623, i64 32 ; 2 uses
  %i.um = icmp ult ptr %i.ul, %i.rr
  br i1 %i.um, label %.preheader672, label %ZS_execExperimentalSequence2.exit302, !llvm.loop !66

bb.bp:                                            ; preds = %.critedge172.i._crit_edge
  %i.un = ptrtoint ptr %.0147.i284.lcssa to i64
  %i.uo = sub i64 %i.un, %i.bk
  %i.up = icmp ult i64 %i.uo, %.sroa.047.4.insert.ext
  br i1 %i.up, label %ZS_execExperimentalSequence.exit.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.uq = add i32 %i.ni, 7
  %i.ur = load <2 x i32>, ptr %5, align 8
  store i32 %i.ng, ptr %5, align 8
  store <2 x i32> %i.ur, ptr %i.mz, align 4
  br label %bb.cc

bb.br:                                            ; preds = %.critedge172.i._crit_edge
  %i.us = and i64 %.sroa.047.4.insert.ext, 3
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.us
  %i.uu = load i32, ptr %i.ut, align 4            ; 3 uses
  %i.uv = icmp eq i32 %i.ng, 0
  br i1 %i.uv, label %.split.i299, label %.split165.i298

.split.i299:                                      ; preds = %bb.br
  %.sroa.0437.0.copyload438 = load i32, ptr %5, align 8 ; 2 uses
  %i.uw = load <2 x i32>, ptr %i.mz, align 4      ; 2 uses
  %i.ux = load i32, ptr %i.na, align 4            ; 2 uses
  %i.uy = icmp eq i32 %i.ni, %i.ux
  %.sroa.19453.12.copyload = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8 ; 3 uses
  br i1 %i.uy, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.split.i299
  %.sroa.23458.12.copyload = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.bt:                                            ; preds = %.split.i299
  %i.uz = icmp eq i32 %i.ni, %.sroa.19453.12.copyload
  %i.va = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  %spec.select760 = select i1 %i.uz, i32 %i.va, i32 %.sroa.19453.12.copyload
  br label %ZS_rep_update.exit361

.split165.i298:                                   ; preds = %bb.br
  %i.vb = lshr i32 %i.ng, 2
  %i.vc = add nsw i32 %i.vb, -4
  %i.vd = add i32 %i.vc, %i.uu                    ; 5 uses
  %i.ve = and i32 %i.ng, 3                        ; 2 uses
  %i.vf = icmp eq i32 %i.ve, 3
  %i.vg = and i32 %i.ng, 2
  %or.cond.not.i362 = icmp eq i32 %i.vg, 0
  br i1 %or.cond.not.i362, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.split165.i298
  %i.vh = load <2 x i32>, ptr %5, align 8
  br label %bb.bx

bb.bv:                                            ; preds = %.split165.i298
  %i.vi = icmp eq i32 %i.ve, 1
  br i1 %i.vi, label %.thread.i363, label %bb.bw

.thread.i363:                                     ; preds = %bb.bv
  %i.vj = load i32, ptr %.sroa.5465.0..sroa_idx, align 8
  %12 = load <2 x i32>, ptr %5, align 8
  %.pre802 = load i32, ptr %i.na, align 4
  %i.vk = insertelement <2 x i32> %12, i32 %i.vj, i64 1
  br label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %.sroa.0437.0.copyload439 = load i32, ptr %5, align 8
  %i.vl = load <2 x i32>, ptr %i.mz, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %.sroa.0437.1 = phi i32 [ %.sroa.0437.0.copyload439, %bb.bw ], [ %i.vd, %bb.bu ] ; 2 uses
  %i.vm = phi <2 x i32> [ %i.vl, %bb.bw ], [ %i.vh, %bb.bu ] ; 2 uses
  %.pre803 = load i32, ptr %i.na, align 4         ; 2 uses
  br i1 %i.vf, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %.sroa.19453.12.copyload457 = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8
  %.sroa.23458.12.copyload462 = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.bz:                                            ; preds = %bb.bx, %.thread.i363
  %i.vn = phi i32 [ %.pre802, %.thread.i363 ], [ %.pre803, %bb.bx ] ; 2 uses
  %.sroa.0437.2 = phi i32 [ %i.vd, %.thread.i363 ], [ %.sroa.0437.1, %bb.bx ] ; 2 uses
  %i.vo = phi <2 x i32> [ %i.vk, %.thread.i363 ], [ %i.vm, %bb.bx ] ; 2 uses
  %i.vp = icmp eq i32 %i.ni, %i.vn
  %.sroa.19453.12.copyload455 = load i32, ptr %.sroa.19453.12..sroa_idx456, align 8 ; 3 uses
  br i1 %i.vp, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %.sroa.23458.12.copyload460 = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  br label %ZS_rep_update.exit361

bb.cb:                                            ; preds = %bb.bz
  %i.vq = icmp eq i32 %i.ni, %.sroa.19453.12.copyload455
  %i.vr = load i32, ptr %.sroa.23458.12..sroa_idx461, align 4
  %spec.select761 = select i1 %i.vq, i32 %i.vr, i32 %.sroa.19453.12.copyload455
  br label %ZS_rep_update.exit361

ZS_rep_update.exit361:                            ; preds = %bb.cb, %bb.bt, %bb.ca, %bb.by, %bb.bs
  %.sroa.12450.0 = phi i32 [ %.pre803, %bb.by ], [ %i.ni, %bb.bs ], [ %i.ni, %bb.cb ], [ %i.ni, %bb.ca ], [ %i.ni, %bb.bt ]
  %.sroa.0437.0 = phi i32 [ %.sroa.0437.1, %bb.by ], [ %.sroa.0437.0.copyload438, %bb.bs ], [ %.sroa.0437.2, %bb.cb ], [ %.sroa.0437.2, %bb.ca ], [ %.sroa.0437.0.copyload438, %bb.bt ]
  %.sroa.19453.0 = phi i32 [ %.sroa.19453.12.copyload457, %bb.by ], [ %.sroa.19453.12.copyload, %bb.bs ], [ %i.vn, %bb.cb ], [ %.sroa.19453.12.copyload455, %bb.ca ], [ %i.ux, %bb.bt ]
  %.sroa.23458.0 = phi i32 [ %.sroa.23458.12.copyload462, %bb.by ], [ %.sroa.23458.12.copyload, %bb.bs ], [ %spec.select761, %bb.cb ], [ %.sroa.23458.12.copyload460, %bb.ca ], [ %spec.select760, %bb.bt ]
  %i.vs = phi i32 [ %i.vd, %bb.by ], [ %i.uu, %bb.bs ], [ %i.vd, %bb.cb ], [ %i.vd, %bb.ca ], [ %i.uu, %bb.bt ]
  %i.vt = phi <2 x i32> [ %i.vm, %bb.by ], [ %i.uw, %bb.bs ], [ %i.vo, %bb.cb ], [ %i.vo, %bb.ca ], [ %i.uw, %bb.bt ]
  store i32 %.sroa.0437.0, ptr %5, align 8
  store <2 x i32> %i.vt, ptr %i.mz, align 4
  store i32 %.sroa.12450.0, ptr %i.na, align 4
  store i32 %.sroa.19453.0, ptr %.sroa.19453.12..sroa_idx456, align 8
  store i32 %.sroa.23458.0, ptr %.sroa.23458.12..sroa_idx461, align 4
  %i.vu = zext i32 %i.vs to i64
  %i.vv = add i32 %i.ni, 3
  br label %bb.cc

bb.cc:                                            ; preds = %ZS_rep_update.exit361, %bb.bq
  %.sroa.2.0.extract.shift.pn.i285 = phi i64 [ %.sroa.047.4.insert.ext, %bb.bq ], [ %i.vu, %ZS_rep_update.exit361 ] ; 6 uses
  %.0152.i286 = phi i32 [ %i.uq, %bb.bq ], [ %i.vv, %ZS_rep_update.exit361 ] ; 6 uses
  %.pn.i287 = sub nsw i64 0, %.sroa.2.0.extract.shift.pn.i285
  %.0154.i288 = getelementptr inbounds i8, ptr %.0147.i284.lcssa, i64 %.pn.i287 ; 15 uses
  %i.vw = zext i32 %.0152.i286 to i64             ; 5 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 %i.vw ; 5 uses
  %i.vy = icmp ugt ptr %i.vx, %i.nc
  br i1 %i.vy, label %bb.cd, label %bb.ce, !prof !22

bb.cd:                                            ; preds = %bb.cc
  %i.vz = icmp ugt ptr %i.vx, %i.c
  br i1 %i.vz, label %ZS_execExperimentalSequence.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.cd
  %.not771 = icmp eq i32 %.0152.i286, 0
  br i1 %.not771, label %ZS_wildcopy.exit318, label %iter.check1074

iter.check1074:                                   ; preds = %.preheader
  %i.wa = add nuw i64 %.0147.i284.lcssa1054, %i.vw
  %i.wb = add i64 %.0147.i284.lcssa1054, 1
  %umax1055 = call i64 @llvm.umax.i64(i64 %i.wa, i64 %i.wb)
  %i.wc = sub i64 %umax1055, %.0147.i284.lcssa1054 ; 7 uses
  %min.iters.check1057 = icmp ult i64 %i.wc, 8
  %i.wd = add nsw i64 %.sroa.2.0.extract.shift.pn.i285, -1
  %diff.check1053 = icmp ult i64 %i.wd, 31
  %or.cond1204 = select i1 %min.iters.check1057, i1 true, i1 %diff.check1053
  br i1 %or.cond1204, label %.lr.ph750.preheader, label %vector.main.loop.iter.check1058

vector.main.loop.iter.check1058:                  ; preds = %iter.check1074
  %min.iters.check1059 = icmp ult i64 %i.wc, 32
  br i1 %min.iters.check1059, label %vec.epilog.ph1078, label %vector.ph1060

vector.ph1060:                                    ; preds = %vector.main.loop.iter.check1058
  %i.we = and i64 %i.wc, 24
  %n.vec1061 = and i64 %i.wc, -32                 ; 5 uses
  %i.wf = getelementptr i8, ptr %.0154.i288, i64 %n.vec1061
  %i.wg = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1061
  br label %vector.body1062

vector.body1062:                                  ; preds = %vector.ph1060, %vector.body1062
  %index1063 = phi i64 [ 0, %vector.ph1060 ], [ %index.next1068, %vector.body1062 ] ; 3 uses
  %next.gep1064 = getelementptr i8, ptr %.0154.i288, i64 %index1063 ; 2 uses
  %next.gep1065 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1063 ; 2 uses
  %i.wh = getelementptr i8, ptr %next.gep1064, i64 16
  %wide.load1066 = load <16 x i8>, ptr %next.gep1064, align 1, !tbaa !19
  %wide.load1067 = load <16 x i8>, ptr %i.wh, align 1, !tbaa !19
  %i.wi = getelementptr i8, ptr %next.gep1065, i64 16
  store <16 x i8> %wide.load1066, ptr %next.gep1065, align 1, !tbaa !19
  store <16 x i8> %wide.load1067, ptr %i.wi, align 1, !tbaa !19
  %index.next1068 = add nuw i64 %index1063, 32    ; 2 uses
  %i.wj = icmp eq i64 %index.next1068, %n.vec1061
  br i1 %i.wj, label %middle.block1069, label %vector.body1062, !llvm.loop !67

middle.block1069:                                 ; preds = %vector.body1062
  %cmp.n1070 = icmp eq i64 %i.wc, %n.vec1061
  br i1 %cmp.n1070, label %ZS_wildcopy.exit318, label %vec.epilog.iter.check1076

vec.epilog.iter.check1076:                        ; preds = %middle.block1069
  %min.epilog.iters.check1077 = icmp eq i64 %i.we, 0
  br i1 %min.epilog.iters.check1077, label %.lr.ph750.preheader, label %vec.epilog.ph1078, !prof !98

vec.epilog.ph1078:                                ; preds = %vector.main.loop.iter.check1058, %vec.epilog.iter.check1076
  %vec.epilog.resume.val1071 = phi i64 [ %n.vec1061, %vec.epilog.iter.check1076 ], [ 0, %vector.main.loop.iter.check1058 ]
  %n.vec1079 = and i64 %i.wc, -8                  ; 4 uses
  %i.wk = getelementptr i8, ptr %.0154.i288, i64 %n.vec1079
  %i.wl = getelementptr i8, ptr %.0147.i284.lcssa, i64 %n.vec1079
  br label %vec.epilog.vector.body1080

vec.epilog.vector.body1080:                       ; preds = %vec.epilog.vector.body1080, %vec.epilog.ph1078
  %index1081 = phi i64 [ %vec.epilog.resume.val1071, %vec.epilog.ph1078 ], [ %index.next1085, %vec.epilog.vector.body1080 ] ; 3 uses
  %next.gep1082 = getelementptr i8, ptr %.0154.i288, i64 %index1081
  %next.gep1083 = getelementptr i8, ptr %.0147.i284.lcssa, i64 %index1081
  %wide.load1084 = load <8 x i8>, ptr %next.gep1082, align 1, !tbaa !19
  store <8 x i8> %wide.load1084, ptr %next.gep1083, align 1, !tbaa !19
  %index.next1085 = add nuw i64 %index1081, 8     ; 2 uses
  %i.wm = icmp eq i64 %index.next1085, %n.vec1079
  br i1 %i.wm, label %vec.epilog.middle.block1086, label %vec.epilog.vector.body1080, !llvm.loop !68

vec.epilog.middle.block1086:                      ; preds = %vec.epilog.vector.body1080
  %cmp.n1087 = icmp eq i64 %i.wc, %n.vec1079
  br i1 %cmp.n1087, label %ZS_wildcopy.exit318, label %.lr.ph750.preheader

.lr.ph750.preheader:                              ; preds = %iter.check1074, %vec.epilog.iter.check1076, %vec.epilog.middle.block1086
  %.0148.i292749.ph = phi ptr [ %.0154.i288, %iter.check1074 ], [ %i.wf, %vec.epilog.iter.check1076 ], [ %i.wk, %vec.epilog.middle.block1086 ]
  %.0149.i291748.ph = phi ptr [ %.0147.i284.lcssa, %iter.check1074 ], [ %i.wg, %vec.epilog.iter.check1076 ], [ %i.wl, %vec.epilog.middle.block1086 ]
  br label %.lr.ph750

.lr.ph750:                                        ; preds = %.lr.ph750.preheader, %.lr.ph750
  %.0148.i292749 = phi ptr [ %i.wn, %.lr.ph750 ], [ %.0148.i292749.ph, %.lr.ph750.preheader ] ; 2 uses
  %.0149.i291748 = phi ptr [ %i.wp, %.lr.ph750 ], [ %.0149.i291748.ph, %.lr.ph750.preheader ] ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.0148.i292749, i64 1
  %i.wo = load i8, ptr %.0148.i292749, align 1, !tbaa !19
  %i.wp = getelementptr inbounds nuw i8, ptr %.0149.i291748, i64 1 ; 2 uses
  store i8 %i.wo, ptr %.0149.i291748, align 1, !tbaa !19
  %i.wq = icmp ult ptr %i.wp, %i.vx
  br i1 %i.wq, label %.lr.ph750, label %ZS_wildcopy.exit318, !llvm.loop !69

bb.ce:                                            ; preds = %bb.cc
  %i.wr = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i285, 16
  br i1 %i.wr, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.ws = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i285, 8
  br i1 %i.ws, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %.sroa.2.0.extract.shift.pn.i285
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !29
  %i.wv = load i8, ptr %.0154.i288, align 1, !tbaa !19
  store i8 %i.wv, ptr %.0147.i284.lcssa, align 1, !tbaa !19
  %i.ww = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 1
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !19
  %i.wy = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 1
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !19
  %i.wz = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 2
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !19
  %i.xb = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 2
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !19
  %i.xc = getelementptr inbounds nuw i8, ptr %.0154.i288, i64 3
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !19
  %i.xe = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 3
  store i8 %i.xd, ptr %i.xe, align 1, !tbaa !19
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %.sroa.2.0.extract.shift.pn.i285
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !29
  %i.xh = sext i32 %i.xg to i64
  %i.xi = getelementptr inbounds i8, ptr %.0154.i288, i64 %i.xh ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %.0147.i284.lcssa, i64 4
  %.val344 = load i32, ptr %i.xi, align 1
  store i32 %.val344, ptr %i.xj, align 1
  %i.xk = sext i32 %i.wu to i64
  %i.xl = sub nsw i64 0, %i.xk
  %i.xm = getelementptr inbounds i8, ptr %i.xi, i64 %i.xl
  br label %ZS_overlapCopy8.exit332

bb.ch:                                            ; preds = %bb.cf
  %.val348 = load i64, ptr %.0154.i288, align 1
  store i64 %.val348, ptr %.0147.i284.lcssa, align 1
  br label %ZS_overlapCopy8.exit332

ZS_overlapCopy8.exit332:                          ; preds = %bb.cg, %bb.ch
  %.2617 = phi ptr [ %i.xm, %bb.cg ], [ %.0154.i288, %bb.ch ] ; 8 uses
  %.not12.i317 = icmp ugt i32 %.0152.i286, 8
  br i1 %.not12.i317, label %.preheader665.preheader, label %ZS_wildcopy.exit318

.preheader665.preheader:                          ; preds = %ZS_overlapCopy8.exit332
  %i.xn = getelementptr i8, ptr %.0147.i284.lcssa, i64 8 ; 8 uses
  %i.xo = add nuw i64 %.0147.i284.lcssa1054, %i.vw
  %i.xp = add i64 %.0147.i284.lcssa1054, 24
  %i.xq = call i64 @llvm.umax.i64(i64 %i.xo, i64 %i.xp)
  %i.xr = add i64 %i.xq, -9
  %i.xs = sub i64 %i.xr, %.0147.i284.lcssa1054    ; 2 uses
  %i.xt = lshr i64 %i.xs, 4
  %i.xu = add nuw nsw i64 %i.xt, 1                ; 2 uses
  %min.iters.check1122 = icmp ult i64 %i.xs, 368
  br i1 %min.iters.check1122, label %.preheader665.preheader1207, label %vector.memcheck1090

vector.memcheck1090:                              ; preds = %.preheader665.preheader
  %scevgep1091 = getelementptr i8, ptr %.0147.i284.lcssa, i64 16
  %i.xv = add nuw i64 %.0147.i284.lcssa1054, %i.vw
  %i.xw = add i64 %.0147.i284.lcssa1054, 24
  %umax1092 = call i64 @llvm.umax.i64(i64 %i.xv, i64 %i.xw)
  %i.xx = add i64 %umax1092, -9
  %i.xy = sub i64 %i.xx, %.0147.i284.lcssa1054
  %i.xz = and i64 %i.xy, -16                      ; 4 uses
  %scevgep1093 = getelementptr i8, ptr %scevgep1091, i64 %i.xz ; 3 uses
  %scevgep1094 = getelementptr i8, ptr %.0147.i284.lcssa, i64 16 ; 3 uses
  %scevgep1095 = getelementptr i8, ptr %.0147.i284.lcssa, i64 24
  %scevgep1096 = getelementptr i8, ptr %scevgep1095, i64 %i.xz ; 3 uses
  %scevgep1097 = getelementptr i8, ptr %.2617, i64 8 ; 2 uses
  %scevgep1098 = getelementptr i8, ptr %.2617, i64 16 ; 3 uses
  %scevgep1099 = getelementptr i8, ptr %scevgep1098, i64 %i.xz ; 2 uses
  %scevgep1100 = getelementptr i8, ptr %.2617, i64 24
  %scevgep1101 = getelementptr i8, ptr %scevgep1100, i64 %i.xz ; 2 uses
  %bound01102 = icmp ult ptr %i.xn, %scevgep1096
  %bound11103 = icmp ult ptr %scevgep1094, %scevgep1093
  %found.conflict1104 = and i1 %bound01102, %bound11103
  %bound01105 = icmp ult ptr %i.xn, %scevgep1099
  %bound11106 = icmp ult ptr %scevgep1097, %scevgep1093
  %found.conflict1107 = and i1 %bound01105, %bound11106
  %conflict.rdx1108 = or i1 %found.conflict1104, %found.conflict1107
  %bound01109 = icmp ult ptr %i.xn, %scevgep1101
  %bound11110 = icmp ult ptr %scevgep1098, %scevgep1093
  %found.conflict1111 = and i1 %bound01109, %bound11110
  %conflict.rdx1112 = or i1 %conflict.rdx1108, %found.conflict1111
  %bound01113 = icmp ult ptr %scevgep1094, %scevgep1099
  %bound11114 = icmp ult ptr %scevgep1097, %scevgep1096
  %found.conflict1115 = and i1 %bound01113, %bound11114
  %conflict.rdx1116 = or i1 %conflict.rdx1112, %found.conflict1115
  %bound01117 = icmp ult ptr %scevgep1094, %scevgep1101
  %bound11118 = icmp ult ptr %scevgep1098, %scevgep1096
  %found.conflict1119 = and i1 %bound01117, %bound11118
  %conflict.rdx1120 = or i1 %conflict.rdx1116, %found.conflict1119
  br i1 %conflict.rdx1120, label %.preheader665.preheader1207, label %vector.ph1123

end_hunk_1
begin_hunk_2_@ZS_experimentalDecoder_decompress:bb.a
  %i.aas = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.2241732
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !19
  %i.aau = ptrtoint ptr %.4733 to i64
  %i.aav = sub i64 %i.bj, %i.aau
  %i.aaw = icmp ult i64 %i.aav, %.sroa.043.0.insert.ext
  br i1 %i.aaw, label %ZS_execExperimentalSequence.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.aax = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.aay = load i64, ptr %i.ct, align 8, !tbaa !89 ; 2 uses
  %i.aaz = sub i64 %i.aax, %i.aay
  %i.aba = icmp ult i64 %i.aaz, %.sroa.043.0.insert.ext
  br i1 %i.aba, label %ZS_execExperimentalSequence.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.abb = getelementptr inbounds nuw i8, ptr %.4733, i64 %.sroa.043.0.insert.ext ; 2 uses
  %i.abc = icmp ugt ptr %i.abb, %i.mq
  %.pre801 = load ptr, ptr %i.co, align 8, !tbaa !26 ; 4 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %.pre801, i64 %.sroa.043.0.insert.ext
  %i.abe = load ptr, ptr %i.cr, align 8
  %i.abf = getelementptr inbounds i8, ptr %i.abe, i64 -32
  %i.abg = icmp ugt ptr %i.abd, %i.abf
  %or.cond879 = select i1 %i.abc, i1 true, i1 %i.abg, !prof !101
  br i1 %or.cond879, label %.critedge174.i, label %bb.cn, !prof !101

.critedge174.i:                                   ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.4733, ptr align 1 %.pre801, i64 %.sroa.043.0.insert.ext, i1 false)
  br label %ZS_wildcopy.exit330

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.4733, ptr noundef nonnull align 1 dereferenceable(16) %.pre801, i64 16, i1 false)
  %.not.i328 = icmp ugt i32 %i.aan, 16
  br i1 %.not.i328, label %.preheader688.preheader, label %ZS_wildcopy.exit330

.preheader688.preheader:                          ; preds = %bb.cn
  %i.abh = getelementptr inbounds nuw i8, ptr %.4733, i64 16
  br label %.preheader688

.preheader688:                                    ; preds = %.preheader688.preheader, %.preheader688
  %.0604 = phi ptr [ %i.abk, %.preheader688 ], [ %i.abh, %.preheader688.preheader ] ; 3 uses
  %.pn = phi ptr [ %i.abj, %.preheader688 ], [ %.pre801, %.preheader688.preheader ] ; 2 uses
  %.0603 = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0604, ptr noundef nonnull align 1 dereferenceable(16) %.0603, i64 16, i1 false)
  %i.abi = getelementptr inbounds nuw i8, ptr %.0604, i64 16
  %i.abj = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.abi, ptr noundef nonnull align 1 dereferenceable(16) %i.abj, i64 16, i1 false)
  %i.abk = getelementptr inbounds nuw i8, ptr %.0604, i64 32 ; 2 uses
  %i.abl = icmp ult ptr %i.abk, %i.abb
  br i1 %i.abl, label %.preheader688, label %ZS_wildcopy.exit330.thread, !llvm.loop !66

ZS_wildcopy.exit330.thread:                       ; preds = %.preheader688
  %i.abm = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 %.sroa.043.0.insert.ext
  store ptr %i.abn, ptr %i.co, align 8, !tbaa !26
  br label %.lr.ph723

ZS_wildcopy.exit330:                              ; preds = %bb.cn, %.critedge174.i
  %i.abo = load ptr, ptr %i.co, align 8, !tbaa !26
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 %.sroa.043.0.insert.ext
  store ptr %i.abp, ptr %i.co, align 8, !tbaa !26
  %.not766 = icmp eq i32 %i.aan, 0
  br i1 %.not766, label %._crit_edge724, label %.lr.ph723

.lr.ph723:                                        ; preds = %ZS_wildcopy.exit330.thread, %ZS_wildcopy.exit330
  %i.abq = load ptr, ptr %i.mr, align 8, !tbaa !93
  %i.abr = ptrtoint ptr %i.abq to i64             ; 3 uses
  %i.abs = load ptr, ptr %i.ms, align 8, !tbaa !39 ; 3 uses
  %xtraiter1229 = and i64 %.sroa.043.0.insert.ext, 1
  %i.abt = icmp eq i32 %i.aan, 1
  br i1 %i.abt, label %.epil.preheader, label %.lr.ph723.new

.lr.ph723.new:                                    ; preds = %.lr.ph723
  %unroll_iter = and i64 %.sroa.043.0.insert.ext, 4294967294
  br label %bb.co

._crit_edge724.loopexit.unr-lcssa:                ; preds = %bb.co
  %lcmp.mod1230.not = icmp eq i64 %xtraiter1229, 0
  br i1 %lcmp.mod1230.not, label %._crit_edge724, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge724.loopexit.unr-lcssa, %.lr.ph723
  %.0147.i722.epil.init = phi ptr [ %.4733, %.lr.ph723 ], [ %i.adq, %._crit_edge724.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1232 = trunc i32 %i.aan to i1
  call void @llvm.assume(i1 %lcmp.mod1232)
  %i.abu = getelementptr inbounds i8, ptr %.0147.i722.epil.init, i64 -2
  %.val.i367.epil = load i16, ptr %i.abu, align 1
  %i.abv = ptrtoint ptr %.0147.i722.epil.init to i64
  %i.abw = sub i64 %i.abv, %i.abr
  %i.abx = trunc i64 %i.abw to i32
  %i.aby = mul i16 %.val.i367.epil, -22595
  %i.abz = and i16 %i.aby, -16
  %i.aca = zext i16 %i.abz to i64
  %i.acb = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.aca ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 4 ; 2 uses
  %i.acd = load i16, ptr %i.acc, align 4, !tbaa !42
  %i.ace = add i16 %i.acd, 15
  %i.acf = and i16 %i.ace, 15                     ; 2 uses
  store i16 %i.acf, ptr %i.acc, align 4, !tbaa !42
  %i.acg = zext nneg i16 %i.acf to i64
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.acb, i64 %i.acg ; 2 uses
  store i32 %i.abx, ptr %i.ach, align 4, !tbaa !43
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 6
  store i8 0, ptr %i.aci, align 2, !tbaa !44
  %i.acj = getelementptr inbounds nuw i8, ptr %.0147.i722.epil.init, i64 1
  br label %._crit_edge724

._crit_edge724:                                   ; preds = %.epil.preheader, %._crit_edge724.loopexit.unr-lcssa, %ZS_wildcopy.exit330
  %.0147.i.lcssa = phi ptr [ %.4733, %ZS_wildcopy.exit330 ], [ %i.adq, %._crit_edge724.loopexit.unr-lcssa ], [ %i.acj, %.epil.preheader ] ; 42 uses
  %.0147.i.lcssa913 = ptrtoaddr ptr %.0147.i.lcssa to i64 ; 18 uses
  %i.ack = add i64 %i.aay, %.sroa.043.0.insert.ext
  store i64 %i.ack, ptr %i.ct, align 8, !tbaa !89
  switch i8 %i.aat, label %bb.cz [
    i8 1, label %bb.cp
    i8 0, label %bb.cx
  ]

bb.co:                                            ; preds = %bb.co, %.lr.ph723.new
  %.0147.i722 = phi ptr [ %.4733, %.lr.ph723.new ], [ %i.adq, %bb.co ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph723.new ], [ %niter.next.1, %bb.co ]
  %i.acl = getelementptr inbounds i8, ptr %.0147.i722, i64 -2
  %.val.i367 = load i16, ptr %i.acl, align 1
  %i.acm = ptrtoint ptr %.0147.i722 to i64
  %i.acn = sub i64 %i.acm, %i.abr
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = mul i16 %.val.i367, -22595
  %i.acq = and i16 %i.acp, -16
  %i.acr = zext i16 %i.acq to i64
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.acr ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 4 ; 2 uses
  %i.acu = load i16, ptr %i.act, align 4, !tbaa !42
  %i.acv = add i16 %i.acu, 15
  %i.acw = and i16 %i.acv, 15                     ; 2 uses
  store i16 %i.acw, ptr %i.act, align 4, !tbaa !42
  %i.acx = zext nneg i16 %i.acw to i64
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acs, i64 %i.acx ; 2 uses
  store i32 %i.aco, ptr %i.acy, align 4, !tbaa !43
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 6
  store i8 0, ptr %i.acz, align 2, !tbaa !44
  %i.ada = getelementptr inbounds nuw i8, ptr %.0147.i722, i64 1
  %i.adb = getelementptr inbounds i8, ptr %.0147.i722, i64 -1
  %.val.i367.1 = load i16, ptr %i.adb, align 1
  %i.adc = ptrtoint ptr %i.ada to i64
  %i.add = sub i64 %i.adc, %i.abr
  %i.ade = trunc i64 %i.add to i32
  %i.adf = mul i16 %.val.i367.1, -22595
  %i.adg = and i16 %i.adf, -16
  %i.adh = zext i16 %i.adg to i64
  %i.adi = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.adh ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 4 ; 2 uses
  %i.adk = load i16, ptr %i.adj, align 4, !tbaa !42
  %i.adl = add i16 %i.adk, 15
  %i.adm = and i16 %i.adl, 15                     ; 2 uses
  store i16 %i.adm, ptr %i.adj, align 4, !tbaa !42
  %i.adn = zext nneg i16 %i.adm to i64
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.adn ; 2 uses
  store i32 %i.ade, ptr %i.ado, align 4, !tbaa !43
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 6
  store i8 0, ptr %i.adp, align 2, !tbaa !44
  %i.adq = getelementptr inbounds nuw i8, ptr %.0147.i722, i64 2 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge724.loopexit.unr-lcssa, label %bb.co, !llvm.loop !57

bb.cp:                                            ; preds = %._crit_edge724
  %i.adr = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 -2
  %.val.i369 = load i16, ptr %i.adr, align 1
  %i.ads = load ptr, ptr %i.ms, align 8, !tbaa !39
  %i.adt = mul i16 %.val.i369, -22595
  %i.adu = and i16 %i.adt, -16
  %i.adv = zext i16 %i.adu to i64
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %i.ads, i64 %i.adv ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 4 ; 3 uses
  %i.ady = load i16, ptr %i.adx, align 4, !tbaa !42
  %i.adz = zext i16 %i.ady to i32
  %i.aea = add i32 %i.aap, %i.adz
  %i.aeb = and i32 %i.aea, 15
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.aec ; 2 uses
  %i.aee = load i32, ptr %i.aed, align 4, !tbaa !43 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 6
  %i.aeg = load i8, ptr %i.aef, align 2, !tbaa !44
  %i.aeh = zext i8 %i.aeg to i32                  ; 2 uses
  %i.aei = add i32 %i.aar, 3                      ; 2 uses
  %.not.not.i = icmp ugt i32 %i.aei, %i.aeh
  %.not.i307 = icmp eq i32 %i.aar, 0
  %i.aej = add i32 %i.aar, 2
  %spec.select.i308 = select i1 %.not.i307, i32 %i.aeh, i32 %i.aej
  %.0.i = select i1 %.not.not.i, i32 %i.aei, i32 %spec.select.i308 ; 5 uses
  %.sroa.2.0.insert.ext.i303 = zext i32 %.0.i to i64 ; 12 uses
  %.sroa.0.0.insert.ext.i305 = zext i32 %i.aee to i64
  %i.aek = load ptr, ptr %i.mr, align 8, !tbaa !93 ; 2 uses
  %i.ael = getelementptr i8, ptr %i.aek, i64 %.sroa.0.0.insert.ext.i305 ; 15 uses
  %i.aem = load i32, ptr %i.mv, align 4, !tbaa !94
  %i.aen = icmp ugt i32 %i.aem, %i.aee
  br i1 %i.aen, label %ZS_execExperimentalSequence.exit.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.aeo = ptrtoint ptr %.0147.i.lcssa to i64     ; 2 uses
  %i.aep = ptrtoint ptr %i.ael to i64
  %i.aeq = sub i64 %i.aeo, %i.aep                 ; 6 uses
  %i.aer = trunc i64 %i.aeq to i32
  %i.aes = load <2 x i32>, ptr %5, align 8
  store i32 %i.aer, ptr %5, align 8
  store <2 x i32> %i.aes, ptr %i.mt, align 4
  %i.aet = ptrtoint ptr %i.aek to i64
  %i.aeu = sub i64 %i.aeo, %i.aet
  %i.aev = trunc i64 %i.aeu to i32
  %i.aew = load i16, ptr %i.adx, align 4, !tbaa !42
  %i.aex = add i16 %i.aew, 15
  %i.aey = and i16 %i.aex, 15                     ; 2 uses
  store i16 %i.aey, ptr %i.adx, align 4, !tbaa !42
  %i.aez = zext nneg i16 %i.aey to i64
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.adw, i64 %i.aez ; 2 uses
  store i32 %i.aev, ptr %i.afa, align 4, !tbaa !43
  %i.afb = call i32 @llvm.umin.i32(i32 %.0.i, i32 255)
  %i.afc = trunc nuw i32 %i.afb to i8
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afa, i64 6
  store i8 %i.afc, ptr %i.afd, align 2, !tbaa !44
  %i.afe = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 %.sroa.2.0.insert.ext.i303 ; 5 uses
  %i.aff = icmp ugt ptr %i.afe, %i.mq
  br i1 %i.aff, label %bb.cr, label %bb.cs, !prof !22

bb.cr:                                            ; preds = %bb.cq
  %i.afg = icmp ugt ptr %i.afe, %i.c
  br i1 %i.afg, label %ZS_execExperimentalSequence.exit.thread, label %.preheader683

.preheader683:                                    ; preds = %bb.cr
  %.not767 = icmp eq i32 %.0.i, 0
  br i1 %.not767, label %ZS_execExperimentalSequence2.exit, label %iter.check1009

iter.check1009:                                   ; preds = %.preheader683
  %i.afh = add i64 %.0147.i.lcssa913, %.sroa.2.0.insert.ext.i303
  %i.afi = add i64 %.0147.i.lcssa913, 1
  %umax990 = call i64 @llvm.umax.i64(i64 %i.afh, i64 %i.afi)
  %i.afj = sub i64 %umax990, %.0147.i.lcssa913    ; 7 uses
  %min.iters.check992 = icmp ult i64 %i.afj, 8
  %i.afk = add i64 %i.aeq, -1
  %diff.check989 = icmp ult i64 %i.afk, 31
  %or.cond1205 = select i1 %min.iters.check992, i1 true, i1 %diff.check989
  br i1 %or.cond1205, label %.lr.ph728.preheader, label %vector.main.loop.iter.check993

vector.main.loop.iter.check993:                   ; preds = %iter.check1009
  %min.iters.check994 = icmp ult i64 %i.afj, 32
  br i1 %min.iters.check994, label %vec.epilog.ph1013, label %vector.ph995

vector.ph995:                                     ; preds = %vector.main.loop.iter.check993
  %i.afl = and i64 %i.afj, 24
  %n.vec996 = and i64 %i.afj, -32                 ; 5 uses
  %i.afm = getelementptr i8, ptr %i.ael, i64 %n.vec996
  %i.afn = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec996
  br label %vector.body997

vector.body997:                                   ; preds = %vector.ph995, %vector.body997
  %index998 = phi i64 [ 0, %vector.ph995 ], [ %index.next1003, %vector.body997 ] ; 3 uses
  %next.gep999 = getelementptr i8, ptr %i.ael, i64 %index998 ; 2 uses
  %next.gep1000 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index998 ; 2 uses
  %i.afo = getelementptr i8, ptr %next.gep999, i64 16
  %wide.load1001 = load <16 x i8>, ptr %next.gep999, align 1, !tbaa !19
  %wide.load1002 = load <16 x i8>, ptr %i.afo, align 1, !tbaa !19
  %i.afp = getelementptr i8, ptr %next.gep1000, i64 16
  store <16 x i8> %wide.load1001, ptr %next.gep1000, align 1, !tbaa !19
  store <16 x i8> %wide.load1002, ptr %i.afp, align 1, !tbaa !19
  %index.next1003 = add nuw i64 %index998, 32     ; 2 uses
  %i.afq = icmp eq i64 %index.next1003, %n.vec996
  br i1 %i.afq, label %middle.block1004, label %vector.body997, !llvm.loop !73

middle.block1004:                                 ; preds = %vector.body997
  %cmp.n1005 = icmp eq i64 %i.afj, %n.vec996
  br i1 %cmp.n1005, label %ZS_execExperimentalSequence2.exit, label %vec.epilog.iter.check1011

vec.epilog.iter.check1011:                        ; preds = %middle.block1004
  %min.epilog.iters.check1012 = icmp eq i64 %i.afl, 0
  br i1 %min.epilog.iters.check1012, label %.lr.ph728.preheader, label %vec.epilog.ph1013, !prof !98

vec.epilog.ph1013:                                ; preds = %vector.main.loop.iter.check993, %vec.epilog.iter.check1011
  %vec.epilog.resume.val1006 = phi i64 [ %n.vec996, %vec.epilog.iter.check1011 ], [ 0, %vector.main.loop.iter.check993 ]
  %n.vec1014 = and i64 %i.afj, -8                 ; 4 uses
  %i.afr = getelementptr i8, ptr %i.ael, i64 %n.vec1014
  %i.afs = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec1014
  br label %vec.epilog.vector.body1015

vec.epilog.vector.body1015:                       ; preds = %vec.epilog.vector.body1015, %vec.epilog.ph1013
  %index1016 = phi i64 [ %vec.epilog.resume.val1006, %vec.epilog.ph1013 ], [ %index.next1020, %vec.epilog.vector.body1015 ] ; 3 uses
  %next.gep1017 = getelementptr i8, ptr %i.ael, i64 %index1016
  %next.gep1018 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index1016
  %wide.load1019 = load <8 x i8>, ptr %next.gep1017, align 1, !tbaa !19
  store <8 x i8> %wide.load1019, ptr %next.gep1018, align 1, !tbaa !19
  %index.next1020 = add nuw i64 %index1016, 8     ; 2 uses
  %i.aft = icmp eq i64 %index.next1020, %n.vec1014
  br i1 %i.aft, label %vec.epilog.middle.block1021, label %vec.epilog.vector.body1015, !llvm.loop !74

vec.epilog.middle.block1021:                      ; preds = %vec.epilog.vector.body1015
  %cmp.n1022 = icmp eq i64 %i.afj, %n.vec1014
  br i1 %cmp.n1022, label %ZS_execExperimentalSequence2.exit, label %.lr.ph728.preheader

.lr.ph728.preheader:                              ; preds = %iter.check1009, %vec.epilog.iter.check1011, %vec.epilog.middle.block1021
  %.0150.i727.ph = phi ptr [ %i.ael, %iter.check1009 ], [ %i.afm, %vec.epilog.iter.check1011 ], [ %i.afr, %vec.epilog.middle.block1021 ]
  %.0151.i726.ph = phi ptr [ %.0147.i.lcssa, %iter.check1009 ], [ %i.afn, %vec.epilog.iter.check1011 ], [ %i.afs, %vec.epilog.middle.block1021 ]
  br label %.lr.ph728

.lr.ph728:                                        ; preds = %.lr.ph728.preheader, %.lr.ph728
  %.0150.i727 = phi ptr [ %i.afu, %.lr.ph728 ], [ %.0150.i727.ph, %.lr.ph728.preheader ] ; 2 uses
  %.0151.i726 = phi ptr [ %i.afw, %.lr.ph728 ], [ %.0151.i726.ph, %.lr.ph728.preheader ] ; 2 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %.0150.i727, i64 1
  %i.afv = load i8, ptr %.0150.i727, align 1, !tbaa !19
  %i.afw = getelementptr inbounds nuw i8, ptr %.0151.i726, i64 1 ; 2 uses
  store i8 %i.afv, ptr %.0151.i726, align 1, !tbaa !19
  %i.afx = icmp ult ptr %i.afw, %i.afe
  br i1 %i.afx, label %.lr.ph728, label %ZS_execExperimentalSequence2.exit, !llvm.loop !75

bb.cs:                                            ; preds = %bb.cq
  %i.afy = icmp slt i64 %i.aeq, 16
  br i1 %i.afy, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.afz = icmp ult i64 %i.aeq, 8
  br i1 %i.afz, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %i.aeq
  %i.agb = load i32, ptr %i.aga, align 4, !tbaa !29
  %i.agc = load i8, ptr %i.ael, align 1, !tbaa !19
  store i8 %i.agc, ptr %.0147.i.lcssa, align 1, !tbaa !19
  %i.agd = getelementptr inbounds nuw i8, ptr %i.ael, i64 1
  %i.age = load i8, ptr %i.agd, align 1, !tbaa !19
  %i.agf = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 1
  store i8 %i.age, ptr %i.agf, align 1, !tbaa !19
  %i.agg = getelementptr inbounds nuw i8, ptr %i.ael, i64 2
  %i.agh = load i8, ptr %i.agg, align 1, !tbaa !19
  %i.agi = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 2
  store i8 %i.agh, ptr %i.agi, align 1, !tbaa !19
  %i.agj = getelementptr inbounds nuw i8, ptr %i.ael, i64 3
  %i.agk = load i8, ptr %i.agj, align 1, !tbaa !19
  %i.agl = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 3
  store i8 %i.agk, ptr %i.agl, align 1, !tbaa !19
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %i.aeq
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !29
  %i.ago = sext i32 %i.agn to i64
  %i.agp = getelementptr inbounds i8, ptr %i.ael, i64 %i.ago ; 2 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 4
  %.val345 = load i32, ptr %i.agp, align 1
  store i32 %.val345, ptr %i.agq, align 1
  %i.agr = sext i32 %i.agb to i64
  %i.ags = sub nsw i64 0, %i.agr
  %i.agt = getelementptr inbounds i8, ptr %i.agp, i64 %i.ags
  br label %ZS_overlapCopy8.exit331

bb.cv:                                            ; preds = %bb.ct
  %.val349 = load i64, ptr %i.ael, align 1
  store i64 %.val349, ptr %.0147.i.lcssa, align 1
  br label %ZS_overlapCopy8.exit331

ZS_overlapCopy8.exit331:                          ; preds = %bb.cu, %bb.cv
  %.2612 = phi ptr [ %i.agt, %bb.cu ], [ %i.ael, %bb.cv ] ; 7 uses
  %.not12.i321 = icmp ugt i32 %.0.i, 8
  br i1 %.not12.i321, label %.preheader684.preheader, label %ZS_execExperimentalSequence2.exit

.preheader684.preheader:                          ; preds = %ZS_overlapCopy8.exit331
  %i.agu = getelementptr i8, ptr %.0147.i.lcssa, i64 8 ; 6 uses
  %i.agv = add i64 %.0147.i.lcssa913, %.sroa.2.0.insert.ext.i303
  %i.agw = add i64 %.0147.i.lcssa913, 24
  %i.agx = call i64 @llvm.umax.i64(i64 %i.agv, i64 %i.agw)
  %i.agy = add i64 %i.agx, -9
  %i.agz = sub i64 %i.agy, %.0147.i.lcssa913      ; 2 uses
  %i.aha = lshr i64 %i.agz, 4
  %i.ahb = add nuw nsw i64 %i.aha, 1              ; 2 uses
  %min.iters.check1036 = icmp ult i64 %i.agz, 112
  br i1 %min.iters.check1036, label %.preheader684.preheader1219, label %vector.memcheck1025

vector.memcheck1025:                              ; preds = %.preheader684.preheader
  %scevgep1026 = getelementptr i8, ptr %.0147.i.lcssa, i64 24
  %i.ahc = add i64 %.0147.i.lcssa913, %.sroa.2.0.insert.ext.i303
  %i.ahd = add i64 %.0147.i.lcssa913, 24
  %umax1027 = call i64 @llvm.umax.i64(i64 %i.ahc, i64 %i.ahd)
  %i.ahe = add i64 %umax1027, -9
  %i.ahf = sub i64 %i.ahe, %.0147.i.lcssa913
  %i.ahg = and i64 %i.ahf, -16                    ; 2 uses
  %scevgep1028 = getelementptr i8, ptr %scevgep1026, i64 %i.ahg
  %scevgep1029 = getelementptr i8, ptr %.2612, i64 8
  %scevgep1030 = getelementptr i8, ptr %.2612, i64 24
  %scevgep1031 = getelementptr i8, ptr %scevgep1030, i64 %i.ahg
  %bound01032 = icmp ult ptr %i.agu, %scevgep1031
  %bound11033 = icmp ult ptr %scevgep1029, %scevgep1028
  %found.conflict1034 = and i1 %bound01032, %bound11033
  br i1 %found.conflict1034, label %.preheader684.preheader1219, label %vector.ph1037

vector.ph1037:                                    ; preds = %vector.memcheck1025
  %n.vec1038 = and i64 %i.ahb, 2305843009213693950 ; 3 uses
  %i.ahh = shl i64 %n.vec1038, 4                  ; 2 uses
  %i.ahi = getelementptr i8, ptr %i.agu, i64 %i.ahh
  %i.ahj = getelementptr i8, ptr %.2612, i64 %i.ahh
  br label %vector.body1039

vector.body1039:                                  ; preds = %vector.body1039, %vector.ph1037
  %index1040 = phi i64 [ 0, %vector.ph1037 ], [ %index.next1047, %vector.body1039 ] ; 2 uses
  %i.ahk = shl i64 %index1040, 4                  ; 3 uses
  %i.ahl = or disjoint i64 %i.ahk, 16             ; 2 uses
  %next.gep1041 = getelementptr i8, ptr %i.agu, i64 %i.ahk
  %next.gep1042 = getelementptr i8, ptr %i.agu, i64 %i.ahl
  %next.gep1043 = getelementptr i8, ptr %.2612, i64 %i.ahk
  %next.gep1044 = getelementptr i8, ptr %.2612, i64 %i.ahl
  %i.ahm = getelementptr inbounds nuw i8, ptr %next.gep1043, i64 8
  %i.ahn = getelementptr inbounds nuw i8, ptr %next.gep1044, i64 8
  %wide.load1045 = load <2 x i64>, ptr %i.ahm, align 1, !alias.scope !102
  %wide.load1046 = load <2 x i64>, ptr %i.ahn, align 1, !alias.scope !102
  store <2 x i64> %wide.load1045, ptr %next.gep1041, align 1, !alias.scope !103, !noalias !102
  store <2 x i64> %wide.load1046, ptr %next.gep1042, align 1, !alias.scope !103, !noalias !102
  %index.next1047 = add nuw i64 %index1040, 2     ; 2 uses
  %i.aho = icmp eq i64 %index.next1047, %n.vec1038
  br i1 %i.aho, label %middle.block1048, label %vector.body1039, !llvm.loop !79

middle.block1048:                                 ; preds = %vector.body1039
  %cmp.n1049 = icmp eq i64 %i.ahb, %n.vec1038
  br i1 %cmp.n1049, label %ZS_execExperimentalSequence2.exit, label %.preheader684.preheader1219

.preheader684.preheader1219:                      ; preds = %vector.memcheck1025, %.preheader684.preheader, %middle.block1048
  %.1614.ph = phi ptr [ %i.agu, %vector.memcheck1025 ], [ %i.agu, %.preheader684.preheader ], [ %i.ahi, %middle.block1048 ]
  %.2612.pn.ph = phi ptr [ %.2612, %vector.memcheck1025 ], [ %.2612, %.preheader684.preheader ], [ %i.ahj, %middle.block1048 ]
  br label %.preheader684

.preheader684:                                    ; preds = %.preheader684.preheader1219, %.preheader684
  %.1614 = phi ptr [ %i.aht, %.preheader684 ], [ %.1614.ph, %.preheader684.preheader1219 ] ; 3 uses
  %.2612.pn = phi ptr [ %i.ahr, %.preheader684 ], [ %.2612.pn.ph, %.preheader684.preheader1219 ] ; 2 uses
  %.1611 = getelementptr inbounds nuw i8, ptr %.2612.pn, i64 8
  %i.ahp = load i64, ptr %.1611, align 1
  store i64 %i.ahp, ptr %.1614, align 1
  %i.ahq = getelementptr inbounds nuw i8, ptr %.1614, i64 8
  %i.ahr = getelementptr inbounds nuw i8, ptr %.2612.pn, i64 16 ; 2 uses
  %i.ahs = load i64, ptr %i.ahr, align 1
  store i64 %i.ahs, ptr %i.ahq, align 1
  %i.aht = getelementptr inbounds nuw i8, ptr %.1614, i64 16 ; 2 uses
  %i.ahu = icmp ult ptr %i.aht, %i.afe
  br i1 %i.ahu, label %.preheader684, label %ZS_execExperimentalSequence2.exit, !llvm.loop !80

bb.cw:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0147.i.lcssa, ptr noundef nonnull align 1 dereferenceable(16) %i.ael, i64 16, i1 false)
  %.not.i320 = icmp ugt i32 %.0.i, 16
  br i1 %.not.i320, label %.preheader686.preheader, label %ZS_execExperimentalSequence2.exit

.preheader686.preheader:                          ; preds = %bb.cw
  %i.ahv = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 16
  br label %.preheader686

.preheader686:                                    ; preds = %.preheader686.preheader, %.preheader686
  %.0613 = phi ptr [ %i.ahy, %.preheader686 ], [ %i.ahv, %.preheader686.preheader ] ; 3 uses
  %.pn663 = phi ptr [ %i.ahx, %.preheader686 ], [ %i.ael, %.preheader686.preheader ] ; 2 uses
  %.0610 = getelementptr inbounds nuw i8, ptr %.pn663, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.0613, ptr noundef nonnull align 1 dereferenceable(16) %.0610, i64 16, i1 false)
  %i.ahw = getelementptr inbounds nuw i8, ptr %.0613, i64 16
  %i.ahx = getelementptr inbounds nuw i8, ptr %.pn663, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ahw, ptr noundef nonnull align 1 dereferenceable(16) %i.ahx, i64 16, i1 false)
  %i.ahy = getelementptr inbounds nuw i8, ptr %.0613, i64 32 ; 2 uses
  %i.ahz = icmp ult ptr %i.ahy, %i.afe
  br i1 %i.ahz, label %.preheader686, label %ZS_execExperimentalSequence2.exit, !llvm.loop !66

bb.cx:                                            ; preds = %._crit_edge724
  %i.aia = ptrtoint ptr %.0147.i.lcssa to i64
  %i.aib = sub i64 %i.aia, %i.bk
  %i.aic = icmp ult i64 %i.aib, %.sroa.043.4.insert.ext
  br i1 %i.aic, label %ZS_execExperimentalSequence.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.aid = add i32 %i.aar, 7
  %i.aie = load <2 x i32>, ptr %5, align 8
  store i32 %i.aap, ptr %5, align 8
  store <2 x i32> %i.aie, ptr %i.mt, align 4
  br label %bb.dk

bb.cz:                                            ; preds = %._crit_edge724
  %i.aif = and i64 %.sroa.043.4.insert.ext, 3
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.aif
  %i.aih = load i32, ptr %i.aig, align 4          ; 3 uses
  %i.aii = icmp eq i32 %i.aap, 0
  br i1 %i.aii, label %.split.i281, label %.split165.i

.split.i281:                                      ; preds = %bb.cz
  %.sroa.0403.0.copyload404 = load i32, ptr %5, align 8 ; 2 uses
  %i.aij = load <2 x i32>, ptr %i.mt, align 4     ; 2 uses
  %i.aik = load i32, ptr %i.mu, align 4           ; 2 uses
  %i.ail = icmp eq i32 %i.aar, %i.aik
  %.sroa.19419.12.copyload = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8 ; 3 uses
  br i1 %i.ail, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.split.i281
  %.sroa.23424.12.copyload = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.db:                                            ; preds = %.split.i281
  %i.aim = icmp eq i32 %i.aar, %.sroa.19419.12.copyload
  %i.ain = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  %spec.select762 = select i1 %i.aim, i32 %i.ain, i32 %.sroa.19419.12.copyload
  br label %ZS_rep_update.exit371

.split165.i:                                      ; preds = %bb.cz
  %i.aio = lshr i32 %i.aap, 2
  %i.aip = add nsw i32 %i.aio, -4
  %i.aiq = add i32 %i.aip, %i.aih                 ; 5 uses
  %i.air = and i32 %i.aap, 3                      ; 2 uses
  %i.ais = icmp eq i32 %i.air, 3
  %i.ait = and i32 %i.aap, 2
  %or.cond.not.i372 = icmp eq i32 %i.ait, 0
  br i1 %or.cond.not.i372, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.split165.i
  %i.aiu = load <2 x i32>, ptr %5, align 8
  br label %bb.df

bb.dd:                                            ; preds = %.split165.i
  %i.aiv = icmp eq i32 %i.air, 1
  br i1 %i.aiv, label %.thread.i373, label %bb.de

.thread.i373:                                     ; preds = %bb.dd
  %i.aiw = load i32, ptr %.sroa.5431.0..sroa_idx, align 8
  %13 = load <2 x i32>, ptr %5, align 8
  %i.aix = insertelement <2 x i32> %13, i32 %i.aiw, i64 1
  br label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %.sroa.0403.0.copyload405 = load i32, ptr %5, align 8
  %i.aiy = load <2 x i32>, ptr %i.mt, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dc
  %.sroa.0403.1 = phi i32 [ %.sroa.0403.0.copyload405, %bb.de ], [ %i.aiq, %bb.dc ] ; 2 uses
  %i.aiz = phi <2 x i32> [ %i.aiy, %bb.de ], [ %i.aiu, %bb.dc ] ; 2 uses
  br i1 %i.ais, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %.sroa.12416.12.copyload418 = load i32, ptr %i.mu, align 4
  %.sroa.19419.12.copyload423 = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8
  %.sroa.23424.12.copyload428 = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.dh:                                            ; preds = %bb.df, %.thread.i373
  %.sroa.0403.2 = phi i32 [ %i.aiq, %.thread.i373 ], [ %.sroa.0403.1, %bb.df ] ; 2 uses
  %i.aja = phi <2 x i32> [ %i.aix, %.thread.i373 ], [ %i.aiz, %bb.df ] ; 2 uses
  %i.ajb = load i32, ptr %i.mu, align 4           ; 2 uses
  %i.ajc = icmp eq i32 %i.aar, %i.ajb
  %.sroa.19419.12.copyload421 = load i32, ptr %.sroa.19419.12..sroa_idx422, align 8 ; 3 uses
  br i1 %i.ajc, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %.sroa.23424.12.copyload426 = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  br label %ZS_rep_update.exit371

bb.dj:                                            ; preds = %bb.dh
  %i.ajd = icmp eq i32 %i.aar, %.sroa.19419.12.copyload421
  %i.aje = load i32, ptr %.sroa.23424.12..sroa_idx427, align 4
  %spec.select763 = select i1 %i.ajd, i32 %i.aje, i32 %.sroa.19419.12.copyload421
  br label %ZS_rep_update.exit371

ZS_rep_update.exit371:                            ; preds = %bb.dj, %bb.db, %bb.di, %bb.dg, %bb.da
  %.sroa.23424.0 = phi i32 [ %.sroa.23424.12.copyload428, %bb.dg ], [ %.sroa.23424.12.copyload, %bb.da ], [ %spec.select763, %bb.dj ], [ %.sroa.23424.12.copyload426, %bb.di ], [ %spec.select762, %bb.db ]
  %.sroa.19419.0 = phi i32 [ %.sroa.19419.12.copyload423, %bb.dg ], [ %.sroa.19419.12.copyload, %bb.da ], [ %i.ajb, %bb.dj ], [ %.sroa.19419.12.copyload421, %bb.di ], [ %i.aik, %bb.db ]
  %.sroa.12416.0 = phi i32 [ %.sroa.12416.12.copyload418, %bb.dg ], [ %i.aar, %bb.da ], [ %i.aar, %bb.dj ], [ %i.aar, %bb.di ], [ %i.aar, %bb.db ]
  %.sroa.0403.0 = phi i32 [ %.sroa.0403.1, %bb.dg ], [ %.sroa.0403.0.copyload404, %bb.da ], [ %.sroa.0403.2, %bb.dj ], [ %.sroa.0403.2, %bb.di ], [ %.sroa.0403.0.copyload404, %bb.db ]
  %i.ajf = phi i32 [ %i.aiq, %bb.dg ], [ %i.aih, %bb.da ], [ %i.aiq, %bb.dj ], [ %i.aiq, %bb.di ], [ %i.aih, %bb.db ]
  %i.ajg = phi <2 x i32> [ %i.aiz, %bb.dg ], [ %i.aij, %bb.da ], [ %i.aja, %bb.dj ], [ %i.aja, %bb.di ], [ %i.aij, %bb.db ]
  store i32 %.sroa.0403.0, ptr %5, align 8
  store <2 x i32> %i.ajg, ptr %i.mt, align 4
  store i32 %.sroa.12416.0, ptr %i.mu, align 4
  store i32 %.sroa.19419.0, ptr %.sroa.19419.12..sroa_idx422, align 8
  store i32 %.sroa.23424.0, ptr %.sroa.23424.12..sroa_idx427, align 4
  %i.ajh = zext i32 %i.ajf to i64
  %i.aji = add i32 %i.aar, 3
  br label %bb.dk

bb.dk:                                            ; preds = %ZS_rep_update.exit371, %bb.cy
  %.sroa.2.0.extract.shift.pn.i = phi i64 [ %.sroa.043.4.insert.ext, %bb.cy ], [ %i.ajh, %ZS_rep_update.exit371 ] ; 6 uses
  %.0152.i = phi i32 [ %i.aid, %bb.cy ], [ %i.aji, %ZS_rep_update.exit371 ] ; 6 uses
  %.pn.i = sub nsw i64 0, %.sroa.2.0.extract.shift.pn.i
  %.0154.i = getelementptr inbounds i8, ptr %.0147.i.lcssa, i64 %.pn.i ; 15 uses
  %i.ajj = zext i32 %.0152.i to i64               ; 5 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 %i.ajj ; 5 uses
  %i.ajl = icmp ugt ptr %i.ajk, %i.mq
  br i1 %i.ajl, label %bb.dl, label %bb.dm, !prof !22

bb.dl:                                            ; preds = %bb.dk
  %i.ajm = icmp ugt ptr %i.ajk, %i.c
  br i1 %i.ajm, label %ZS_execExperimentalSequence.exit.thread, label %.preheader678

.preheader678:                                    ; preds = %bb.dl
  %.not768 = icmp eq i32 %.0152.i, 0
  br i1 %.not768, label %ZS_wildcopy.exit326, label %iter.check930

iter.check930:                                    ; preds = %.preheader678
  %i.ajn = add nuw i64 %.0147.i.lcssa913, %i.ajj
  %i.ajo = add i64 %.0147.i.lcssa913, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ajn, i64 %i.ajo)
  %i.ajp = sub i64 %umax, %.0147.i.lcssa913       ; 7 uses
  %min.iters.check914 = icmp ult i64 %i.ajp, 8
  %i.ajq = add nsw i64 %.sroa.2.0.extract.shift.pn.i, -1
  %diff.check912 = icmp ult i64 %i.ajq, 31
  %or.cond1206 = select i1 %min.iters.check914, i1 true, i1 %diff.check912
  br i1 %or.cond1206, label %.lr.ph731.preheader, label %vector.main.loop.iter.check915

vector.main.loop.iter.check915:                   ; preds = %iter.check930
  %min.iters.check916 = icmp ult i64 %i.ajp, 32
  br i1 %min.iters.check916, label %vec.epilog.ph934, label %vector.ph917

vector.ph917:                                     ; preds = %vector.main.loop.iter.check915
  %i.ajr = and i64 %i.ajp, 24
  %n.vec918 = and i64 %i.ajp, -32                 ; 5 uses
  %i.ajs = getelementptr i8, ptr %.0154.i, i64 %n.vec918
  %i.ajt = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec918
  br label %vector.body919

vector.body919:                                   ; preds = %vector.ph917, %vector.body919
  %index920 = phi i64 [ 0, %vector.ph917 ], [ %index.next924, %vector.body919 ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0154.i, i64 %index920 ; 2 uses
  %next.gep921 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index920 ; 2 uses
  %i.aju = getelementptr i8, ptr %next.gep, i64 16
  %wide.load922 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !19
  %wide.load923 = load <16 x i8>, ptr %i.aju, align 1, !tbaa !19
  %i.ajv = getelementptr i8, ptr %next.gep921, i64 16
  store <16 x i8> %wide.load922, ptr %next.gep921, align 1, !tbaa !19
  store <16 x i8> %wide.load923, ptr %i.ajv, align 1, !tbaa !19
  %index.next924 = add nuw i64 %index920, 32      ; 2 uses
  %i.ajw = icmp eq i64 %index.next924, %n.vec918
  br i1 %i.ajw, label %middle.block925, label %vector.body919, !llvm.loop !81

middle.block925:                                  ; preds = %vector.body919
  %cmp.n926 = icmp eq i64 %i.ajp, %n.vec918
  br i1 %cmp.n926, label %ZS_wildcopy.exit326, label %vec.epilog.iter.check932

vec.epilog.iter.check932:                         ; preds = %middle.block925
  %min.epilog.iters.check933 = icmp eq i64 %i.ajr, 0
  br i1 %min.epilog.iters.check933, label %.lr.ph731.preheader, label %vec.epilog.ph934, !prof !98

vec.epilog.ph934:                                 ; preds = %vector.main.loop.iter.check915, %vec.epilog.iter.check932
  %vec.epilog.resume.val927 = phi i64 [ %n.vec918, %vec.epilog.iter.check932 ], [ 0, %vector.main.loop.iter.check915 ]
  %n.vec935 = and i64 %i.ajp, -8                  ; 4 uses
  %i.ajx = getelementptr i8, ptr %.0154.i, i64 %n.vec935
  %i.ajy = getelementptr i8, ptr %.0147.i.lcssa, i64 %n.vec935
  br label %vec.epilog.vector.body936

vec.epilog.vector.body936:                        ; preds = %vec.epilog.vector.body936, %vec.epilog.ph934
  %index937 = phi i64 [ %vec.epilog.resume.val927, %vec.epilog.ph934 ], [ %index.next941, %vec.epilog.vector.body936 ] ; 3 uses
  %next.gep938 = getelementptr i8, ptr %.0154.i, i64 %index937
  %next.gep939 = getelementptr i8, ptr %.0147.i.lcssa, i64 %index937
  %wide.load940 = load <8 x i8>, ptr %next.gep938, align 1, !tbaa !19
  store <8 x i8> %wide.load940, ptr %next.gep939, align 1, !tbaa !19
  %index.next941 = add nuw i64 %index937, 8       ; 2 uses
  %i.ajz = icmp eq i64 %index.next941, %n.vec935
  br i1 %i.ajz, label %vec.epilog.middle.block942, label %vec.epilog.vector.body936, !llvm.loop !82

vec.epilog.middle.block942:                       ; preds = %vec.epilog.vector.body936
  %cmp.n943 = icmp eq i64 %i.ajp, %n.vec935
  br i1 %cmp.n943, label %ZS_wildcopy.exit326, label %.lr.ph731.preheader

.lr.ph731.preheader:                              ; preds = %iter.check930, %vec.epilog.iter.check932, %vec.epilog.middle.block942
  %.0148.i730.ph = phi ptr [ %.0154.i, %iter.check930 ], [ %i.ajs, %vec.epilog.iter.check932 ], [ %i.ajx, %vec.epilog.middle.block942 ]
  %.0149.i729.ph = phi ptr [ %.0147.i.lcssa, %iter.check930 ], [ %i.ajt, %vec.epilog.iter.check932 ], [ %i.ajy, %vec.epilog.middle.block942 ]
  br label %.lr.ph731

.lr.ph731:                                        ; preds = %.lr.ph731.preheader, %.lr.ph731
  %.0148.i730 = phi ptr [ %i.aka, %.lr.ph731 ], [ %.0148.i730.ph, %.lr.ph731.preheader ] ; 2 uses
  %.0149.i729 = phi ptr [ %i.akc, %.lr.ph731 ], [ %.0149.i729.ph, %.lr.ph731.preheader ] ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %.0148.i730, i64 1
  %i.akb = load i8, ptr %.0148.i730, align 1, !tbaa !19
  %i.akc = getelementptr inbounds nuw i8, ptr %.0149.i729, i64 1 ; 2 uses
  store i8 %i.akb, ptr %.0149.i729, align 1, !tbaa !19
  %i.akd = icmp ult ptr %i.akc, %i.ajk
  br i1 %i.akd, label %.lr.ph731, label %ZS_wildcopy.exit326, !llvm.loop !83

bb.dm:                                            ; preds = %bb.dk
  %i.ake = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i, 16
  br i1 %i.ake, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.akf = icmp samesign ult i64 %.sroa.2.0.extract.shift.pn.i, 8
  br i1 %i.akf, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec64table, i64 %.sroa.2.0.extract.shift.pn.i
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !29
  %i.aki = load i8, ptr %.0154.i, align 1, !tbaa !19
  store i8 %i.aki, ptr %.0147.i.lcssa, align 1, !tbaa !19
  %i.akj = getelementptr inbounds nuw i8, ptr %.0154.i, i64 1
  %i.akk = load i8, ptr %i.akj, align 1, !tbaa !19
  %i.akl = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 1
  store i8 %i.akk, ptr %i.akl, align 1, !tbaa !19
  %i.akm = getelementptr inbounds nuw i8, ptr %.0154.i, i64 2
  %i.akn = load i8, ptr %i.akm, align 1, !tbaa !19
  %i.ako = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 2
  store i8 %i.akn, ptr %i.ako, align 1, !tbaa !19
  %i.akp = getelementptr inbounds nuw i8, ptr %.0154.i, i64 3
  %i.akq = load i8, ptr %i.akp, align 1, !tbaa !19
  %i.akr = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 3
  store i8 %i.akq, ptr %i.akr, align 1, !tbaa !19
  %i.aks = getelementptr inbounds nuw [4 x i8], ptr @ZS_overlapCopy8.dec32table, i64 %.sroa.2.0.extract.shift.pn.i
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !29
  %i.aku = sext i32 %i.akt to i64
  %i.akv = getelementptr inbounds i8, ptr %.0154.i, i64 %i.aku ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.0147.i.lcssa, i64 4
  %.val346 = load i32, ptr %i.akv, align 1
  store i32 %.val346, ptr %i.akw, align 1
  %i.akx = sext i32 %i.akh to i64
  %i.aky = sub nsw i64 0, %i.akx
  %i.akz = getelementptr inbounds i8, ptr %i.akv, i64 %i.aky
  br label %ZS_overlapCopy8.exit

bb.dp:                                            ; preds = %bb.dn
  %.val350 = load i64, ptr %.0154.i, align 1
  store i64 %.val350, ptr %.0147.i.lcssa, align 1
  br label %ZS_overlapCopy8.exit

ZS_overlapCopy8.exit:                             ; preds = %bb.do, %bb.dp
  %.2607 = phi ptr [ %i.akz, %bb.do ], [ %.0154.i, %bb.dp ] ; 8 uses
  %.not12.i325 = icmp ugt i32 %.0152.i, 8
  br i1 %.not12.i325, label %.preheader679.preheader, label %ZS_wildcopy.exit326

.preheader679.preheader:                          ; preds = %ZS_overlapCopy8.exit
  %i.ala = getelementptr i8, ptr %.0147.i.lcssa, i64 8 ; 8 uses
  %i.alb = add nuw i64 %.0147.i.lcssa913, %i.ajj
  %i.alc = add i64 %.0147.i.lcssa913, 24
  %i.ald = call i64 @llvm.umax.i64(i64 %i.alb, i64 %i.alc)
  %i.ale = add i64 %i.ald, -9
  %i.alf = sub i64 %i.ale, %.0147.i.lcssa913      ; 2 uses
  %i.alg = lshr i64 %i.alf, 4
  %i.alh = add nuw nsw i64 %i.alg, 1              ; 2 uses
  %min.iters.check972 = icmp ult i64 %i.alf, 368
  br i1 %min.iters.check972, label %.preheader679.preheader1216, label %vector.memcheck946

vector.memcheck946:                               ; preds = %.preheader679.preheader
  %scevgep = getelementptr i8, ptr %.0147.i.lcssa, i64 16
  %i.ali = add nuw i64 %.0147.i.lcssa913, %i.ajj
  %i.alj = add i64 %.0147.i.lcssa913, 24
  %umax947 = call i64 @llvm.umax.i64(i64 %i.ali, i64 %i.alj)
  %i.alk = add i64 %umax947, -9
  %i.all = sub i64 %i.alk, %.0147.i.lcssa913
  %i.alm = and i64 %i.all, -16                    ; 4 uses
  %scevgep948 = getelementptr i8, ptr %scevgep, i64 %i.alm ; 3 uses
  %scevgep949 = getelementptr i8, ptr %.0147.i.lcssa, i64 16 ; 3 uses
  %scevgep950 = getelementptr i8, ptr %.0147.i.lcssa, i64 24
  %scevgep951 = getelementptr i8, ptr %scevgep950, i64 %i.alm ; 3 uses
  %scevgep952 = getelementptr i8, ptr %.2607, i64 8 ; 2 uses
  %scevgep953 = getelementptr i8, ptr %.2607, i64 16 ; 3 uses
  %scevgep954 = getelementptr i8, ptr %scevgep953, i64 %i.alm ; 2 uses
  %scevgep955 = getelementptr i8, ptr %.2607, i64 24
  %scevgep956 = getelementptr i8, ptr %scevgep955, i64 %i.alm ; 2 uses
  %bound0 = icmp ult ptr %i.ala, %scevgep951
  %bound1 = icmp ult ptr %scevgep949, %scevgep948
  %found.conflict = and i1 %bound0, %bound1
  %bound0957 = icmp ult ptr %i.ala, %scevgep954
  %bound1958 = icmp ult ptr %scevgep952, %scevgep948
  %found.conflict959 = and i1 %bound0957, %bound1958
  %conflict.rdx = or i1 %found.conflict, %found.conflict959
  %bound0960 = icmp ult ptr %i.ala, %scevgep956
  %bound1961 = icmp ult ptr %scevgep953, %scevgep948
  %found.conflict962 = and i1 %bound0960, %bound1961
  %conflict.rdx963 = or i1 %conflict.rdx, %found.conflict962
  %bound0964 = icmp ult ptr %scevgep949, %scevgep954
  %bound1965 = icmp ult ptr %scevgep952, %scevgep951
  %found.conflict966 = and i1 %bound0964, %bound1965
  %conflict.rdx967 = or i1 %conflict.rdx963, %found.conflict966
  %bound0968 = icmp ult ptr %scevgep949, %scevgep956
  %bound1969 = icmp ult ptr %scevgep953, %scevgep951
  %found.conflict970 = and i1 %bound0968, %bound1969
  %conflict.rdx971 = or i1 %conflict.rdx967, %found.conflict970
  br i1 %conflict.rdx971, label %.preheader679.preheader1216, label %vector.ph973

end_hunk_2
