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
  %9 = alloca %struct.ZS_RolzDTable2, align 8     ; 16 uses
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
  %.pre = load i32, ptr %9, align 8, !tbaa !90    ; 7 uses
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
  %11 = zext i32 %.pre to i64                     ; 7 uses
  %12 = sub nsw i64 0, %11
  %13 = sub nsw i64 0, %11
  %14 = sub nsw i64 0, %11                        ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph715, %bb.ba
  %.0237712 = phi ptr [ %1, %.lr.ph715 ], [ %i.lr, %bb.ba ] ; 8 uses
  %.0239711 = phi i64 [ 0, %.lr.ph715 ], [ %i.ls, %bb.ba ] ; 6 uses
  %i.di = ptrtoint ptr %.0237712 to i64           ; 2 uses
  %i.dj = sub i64 %i.di, %i.bk
  %i.dk = icmp slt i64 %i.dj, %11
  br i1 %i.dk, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.0239711
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !29 ; 3 uses
  %.sroa.051.0.insert.ext = zext i32 %i.dm to i64 ; 10 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.0239711
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !29 ; 8 uses
  %.sroa.051.4.insert.ext = zext i32 %i.do to i64 ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.0239711
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !29 ; 11 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.0239711
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !19  ; 2 uses
  %i.dt = sub i64 %i.bj, %i.di
  %i.du = icmp ult i64 %i.dt, %.sroa.051.0.insert.ext
  br i1 %i.du, label %ZS_execExperimentalSequence.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.dw = load i64, ptr %i.ct, align 8, !tbaa !89 ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ult i64 %i.dx, %.sroa.051.0.insert.ext
  br i1 %i.dy, label %ZS_execExperimentalSequence.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dz = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.eb = icmp eq ptr %.0237712, %1
  br i1 %i.eb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds i8, ptr %.0237712, i64 -1
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !19
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ee = phi i8 [ %i.ed, %bb.ac ], [ 0, %bb.ab ]
  %.not154.i702.not = icmp eq i32 %i.dm, 0
  br i1 %.not154.i702.not, label %.critedge158.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %bb.ae
  %.0141.i704 = phi i64 [ %i.en, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %.0142.i703 = phi i8 [ %i.ej, %bb.ae ], [ %i.ee, %bb.ad ]
  %i.ef = zext i8 %.0142.i703 to i64
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !35 ; 4 uses
  %.not.i = icmp eq ptr %i.eh, null
  br i1 %.not.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !36
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !19  ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0237712, i64 %.0141.i704
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !19
  %i.el = load ptr, ptr %i.eh, align 8, !tbaa !36
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 1
  store ptr %i.em, ptr %i.eh, align 8, !tbaa !36
  %i.en = add nuw nsw i64 %.0141.i704, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.en, %.sroa.051.0.insert.ext
  br i1 %exitcond.not, label %.critedge158.i, label %.lr.ph, !llvm.loop !49

bb.af:                                            ; preds = %bb.aa
  %i.eo = load ptr, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0237712, ptr align 1 %i.eo, i64 %.sroa.051.0.insert.ext, i1 false)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.sroa.051.0.insert.ext
  store ptr %i.ep, ptr %i.co, align 8, !tbaa !26
  br label %.critedge158.i

.critedge158.i:                                   ; preds = %bb.ae, %bb.ad, %bb.af
  %i.eq = add i64 %i.dw, %.sroa.051.0.insert.ext
  store i64 %i.eq, ptr %i.ct, align 8, !tbaa !89
  %i.er = call i64 @llvm.umin.i64(i64 %11, i64 %.sroa.051.0.insert.ext)
  %i.es = getelementptr inbounds nuw i8, ptr %.0237712, i64 %i.er ; 2 uses
  %i.et = icmp ult i32 %.pre, %i.dm
  br i1 %i.et, label %.lr.ph707, label %._crit_edge

.lr.ph707:                                        ; preds = %.critedge158.i
  %i.eu = load i32, ptr %i.db, align 4, !tbaa !91
  %i.ev = load ptr, ptr %i.dc, align 8, !tbaa !93
  %i.ew = ptrtoint ptr %i.ev to i64
  %.val335 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %.val336 = load ptr, ptr %i.de, align 8, !tbaa !39
  %notmask.i.i = shl nsw i32 -1, %.val335
  %i.ex = xor i32 %notmask.i.i, -1
  br label %bb.ag

._crit_edge:                                      ; preds = %bb.ag, %.critedge158.i
  %.0136.i.lcssa = phi ptr [ %i.es, %.critedge158.i ], [ %i.fr, %bb.ag ] ; 17 uses
  %.0136.i.lcssa902 = ptrtoaddr ptr %.0136.i.lcssa to i64
  switch i8 %i.ds, label %ZS_execExperimentalSequence.exit.thread [
    i8 0, label %bb.ah
    i8 1, label %bb.aj
    i8 2, label %bb.al
    i8 3, label %bb.al
    i8 4, label %ZS_execExperimentalSequence.exit
  ]

bb.ag:                                            ; preds = %.lr.ph707, %bb.ag
  %.0136.i706 = phi ptr [ %i.es, %.lr.ph707 ], [ %i.fr, %bb.ag ] ; 3 uses
  %.0140.i705 = phi i64 [ %11, %.lr.ph707 ], [ %i.fq, %bb.ag ]
  %i.ey = getelementptr inbounds i8, ptr %.0136.i706, i64 %12
  %i.ez = call fastcc i64 @ZL_hashPtr(ptr noundef %i.ey, i32 noundef %i.eu, i32 noundef %.pre)
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = ptrtoint ptr %.0136.i706 to i64
  %i.fc = sub i64 %i.fb, %i.ew
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = shl i32 %i.fa, %.val335
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.val336, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fi = load i16, ptr %i.fh, align 4, !tbaa !42
  %i.fj = zext i16 %i.fi to i32
  %i.fk = add nuw i32 %i.fj, 2147483647
  %i.fl = and i32 %i.fk, %i.ex                    ; 2 uses
  %i.fm = trunc i32 %i.fl to i16
  store i16 %i.fm, ptr %i.fh, align 4, !tbaa !42
  %i.fn = zext nneg i32 %i.fl to i64
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fn ; 2 uses
  store i32 %i.fd, ptr %i.fo, align 4, !tbaa !43
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 6
  store i8 0, ptr %i.fp, align 2, !tbaa !44
  %i.fq = add nuw nsw i64 %.0140.i705, 1          ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.0136.i706, i64 1 ; 2 uses
  %exitcond791.not = icmp eq i64 %i.fq, %.sroa.051.0.insert.ext
  br i1 %exitcond791.not, label %._crit_edge, label %bb.ag, !llvm.loop !50

bb.ah:                                            ; preds = %._crit_edge
  %i.fs = icmp eq i32 %i.do, 0
  %i.ft = ptrtoint ptr %.0136.i.lcssa to i64
  %i.fu = sub i64 %i.ft, %i.bk
  %i.fv = icmp ult i64 %i.fu, %.sroa.051.4.insert.ext
  %or.cond.i = select i1 %i.fs, i1 true, i1 %i.fv
  br i1 %or.cond.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fw = sub nsw i64 0, %.sroa.051.4.insert.ext
  %i.fx = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.fw
  %i.fy = add i32 %i.dq, %i.ab
  %i.fz = load <2 x i32>, ptr %5, align 8
  store i32 %i.do, ptr %5, align 8
  store <2 x i32> %i.fz, ptr %i.df, align 4
  br label %bb.aw

bb.aj:                                            ; preds = %._crit_edge
  %i.ga = load i32, ptr %i.db, align 4, !tbaa !91
  %i.gb = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %13
  %i.gc = call fastcc i64 @ZL_hashPtr(ptr noundef %i.gb, i32 noundef %i.ga, i32 noundef %.pre)
  %i.gd = trunc i64 %i.gc to i32                  ; 2 uses
  %i.ge = call fastcc i64 @ZS_RolzDTable2_get(ptr noundef nonnull %9, i32 noundef %i.gd, i32 noundef %i.do, i32 noundef %i.dq) ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ge to i32
  %i.gf = load i32, ptr %i.dh, align 4, !tbaa !94
  %.not155.i = icmp ugt i32 %i.gf, %.sroa.0.0.extract.trunc.i
  br i1 %.not155.i, label %ZS_execExperimentalSequence.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gg = load ptr, ptr %i.dc, align 8, !tbaa !93 ; 2 uses
  %i.gh = and i64 %i.ge, 4294967295
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gh ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.ge, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32 ; 2 uses
  %i.gj = ptrtoint ptr %.0136.i.lcssa to i64      ; 2 uses
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = load <2 x i32>, ptr %5, align 8
  store i32 %i.gm, ptr %5, align 8
  store <2 x i32> %i.gn, ptr %i.df, align 4
  %i.go = ptrtoint ptr %i.gg to i64
  %i.gp = sub i64 %i.gj, %i.go
  %i.gq = trunc i64 %i.gp to i32
  %.val337 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 2 uses
  %.val338 = load ptr, ptr %i.de, align 8, !tbaa !39
  %notmask.i.i353 = shl nsw i32 -1, %.val337
  %i.gr = xor i32 %notmask.i.i353, -1
  %i.gs = shl i32 %i.gd, %.val337
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val338, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 4 ; 2 uses
  %i.gw = load i16, ptr %i.gv, align 4, !tbaa !42
  %i.gx = zext i16 %i.gw to i32
  %i.gy = add nuw i32 %i.gx, 2147483647
  %i.gz = and i32 %i.gy, %i.gr                    ; 2 uses
  %i.ha = trunc i32 %i.gz to i16
  store i16 %i.ha, ptr %i.gv, align 4, !tbaa !42
  %i.hb = zext nneg i32 %i.gz to i64
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.hb ; 2 uses
  store i32 %i.gq, ptr %i.hc, align 4, !tbaa !43
  %i.hd = call i32 @llvm.umin.i32(i32 %.sroa.5.0.extract.trunc.i, i32 255)
  %i.he = trunc nuw i32 %i.hd to i8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 6
  store i8 %i.he, ptr %i.hf, align 2, !tbaa !44
  br label %bb.aw

bb.al:                                            ; preds = %._crit_edge, %._crit_edge
  %i.hg = and i64 %.sroa.051.4.insert.ext, 3
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4            ; 3 uses
  %i.hj = icmp eq i32 %i.do, 0
  br i1 %i.hj, label %.split.i, label %.split148.i

.split.i:                                         ; preds = %bb.al
  %.sroa.0.0.copyload378 = load i32, ptr %5, align 8 ; 2 uses
  %i.hk = load <2 x i32>, ptr %i.df, align 4      ; 2 uses
  %i.hl = load i32, ptr %i.dg, align 4            ; 2 uses
  %i.hm = icmp eq i32 %i.dq, %i.hl
  %.sroa.19.12.copyload = load i32, ptr %.sroa.19.12..sroa_idx392, align 8 ; 3 uses
  br i1 %i.hm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.split.i
  %.sroa.23.12.copyload = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.an:                                            ; preds = %.split.i
  %i.hn = icmp eq i32 %i.dq, %.sroa.19.12.copyload
  %i.ho = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  %spec.select = select i1 %i.hn, i32 %i.ho, i32 %.sroa.19.12.copyload
  br label %ZS_rep_update.exit

.split148.i:                                      ; preds = %bb.al
  %i.hp = lshr i32 %i.do, 2
  %i.hq = add nsw i32 %i.hp, -4
  %i.hr = add i32 %i.hq, %i.hi                    ; 5 uses
  %i.hs = and i32 %i.do, 3                        ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 3
  %i.hu = and i32 %i.do, 2
  %or.cond.not.i = icmp eq i32 %i.hu, 0
  br i1 %or.cond.not.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.split148.i
  %i.hv = load <2 x i32>, ptr %5, align 8
  br label %bb.ar

bb.ap:                                            ; preds = %.split148.i
  %i.hw = icmp eq i32 %i.hs, 1
  br i1 %i.hw, label %.thread.i, label %bb.aq

.thread.i:                                        ; preds = %bb.ap
  %i.hx = load i32, ptr %.sroa.10.0..sroa_idx386, align 8
  %i.hy = load <2 x i32>, ptr %5, align 8
  %.pre.a = load i32, ptr %i.dg, align 4
  %i.hz = insertelement <2 x i32> %i.hy, i32 %i.hx, i64 1
  br label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %.sroa.0.0.copyload379 = load i32, ptr %5, align 8
  %i.ia = load <2 x i32>, ptr %i.df, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.copyload379, %bb.aq ], [ %i.hr, %bb.ao ] ; 2 uses
  %i.ib = phi <2 x i32> [ %i.ia, %bb.aq ], [ %i.hv, %bb.ao ] ; 2 uses
  %.pre800 = load i32, ptr %i.dg, align 4         ; 2 uses
  br i1 %i.ht, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %.sroa.19.12.copyload393 = load i32, ptr %.sroa.19.12..sroa_idx392, align 8
  %.sroa.23.12.copyload397 = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.at:                                            ; preds = %bb.ar, %.thread.i
  %i.ic = phi i32 [ %.pre.a, %.thread.i ], [ %.pre800, %bb.ar ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.hr, %.thread.i ], [ %.sroa.0.1, %bb.ar ] ; 2 uses
  %i.id = phi <2 x i32> [ %i.hz, %.thread.i ], [ %i.ib, %bb.ar ] ; 2 uses
  %i.ie = icmp eq i32 %i.dq, %i.ic
  %.sroa.19.12.copyload391 = load i32, ptr %.sroa.19.12..sroa_idx392, align 8 ; 3 uses
  br i1 %i.ie, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.sroa.23.12.copyload395 = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  br label %ZS_rep_update.exit

bb.av:                                            ; preds = %bb.at
  %i.if = icmp eq i32 %i.dq, %.sroa.19.12.copyload391
  %i.ig = load i32, ptr %.sroa.23.12..sroa_idx396, align 4
  %spec.select759 = select i1 %i.if, i32 %i.ig, i32 %.sroa.19.12.copyload391
  br label %ZS_rep_update.exit

ZS_rep_update.exit:                               ; preds = %bb.av, %bb.an, %bb.au, %bb.as, %bb.am
  %.sroa.23.0 = phi i32 [ %.sroa.23.12.copyload397, %bb.as ], [ %.sroa.23.12.copyload, %bb.am ], [ %spec.select759, %bb.av ], [ %.sroa.23.12.copyload395, %bb.au ], [ %spec.select, %bb.an ]
  %.sroa.19.0 = phi i32 [ %.sroa.19.12.copyload393, %bb.as ], [ %.sroa.19.12.copyload, %bb.am ], [ %i.ic, %bb.av ], [ %.sroa.19.12.copyload391, %bb.au ], [ %i.hl, %bb.an ]
  %.sroa.12.0 = phi i32 [ %.pre800, %bb.as ], [ %i.dq, %bb.am ], [ %i.dq, %bb.av ], [ %i.dq, %bb.au ], [ %i.dq, %bb.an ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.1, %bb.as ], [ %.sroa.0.0.copyload378, %bb.am ], [ %.sroa.0.2, %bb.av ], [ %.sroa.0.2, %bb.au ], [ %.sroa.0.0.copyload378, %bb.an ]
  %i.ih = phi i32 [ %i.hr, %bb.as ], [ %i.hi, %bb.am ], [ %i.hr, %bb.av ], [ %i.hr, %bb.au ], [ %i.hi, %bb.an ]
  %i.ii = phi <2 x i32> [ %i.ib, %bb.as ], [ %i.hk, %bb.am ], [ %i.id, %bb.av ], [ %i.id, %bb.au ], [ %i.hk, %bb.an ]
  store i32 %.sroa.0.0, ptr %5, align 8
  store <2 x i32> %i.ii, ptr %i.df, align 4
  store i32 %.sroa.12.0, ptr %i.dg, align 4
  store i32 %.sroa.19.0, ptr %.sroa.19.12..sroa_idx392, align 8
  store i32 %.sroa.23.0, ptr %.sroa.23.12..sroa_idx396, align 4
  %i.ij = zext i32 %i.ih to i64
  %i.ik = sub nsw i64 0, %i.ij
  %i.il = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %i.ik
  %i.im = add i32 %i.dq, %i.ae
  br label %bb.aw

bb.aw:                                            ; preds = %ZS_rep_update.exit, %bb.ak, %bb.ai
  %.0139.i = phi ptr [ %i.fx, %bb.ai ], [ %i.gi, %bb.ak ], [ %i.il, %ZS_rep_update.exit ] ; 8 uses
  %.0138.i = phi i32 [ %i.fy, %bb.ai ], [ %.sroa.5.0.extract.trunc.i, %bb.ak ], [ %i.im, %ZS_rep_update.exit ] ; 6 uses
  %.0139.i903 = ptrtoaddr ptr %.0139.i to i64
  %i.in = zext i32 %.0138.i to i64                ; 10 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.in
  %i.ip = icmp ugt ptr %i.io, %i.c
  br i1 %i.ip, label %ZS_execExperimentalSequence.exit.thread, label %.preheader692

.preheader692:                                    ; preds = %bb.aw
  %.not765 = icmp eq i32 %.0138.i, 0
  br i1 %.not765, label %._crit_edge710, label %iter.check

iter.check:                                       ; preds = %.preheader692
  %min.iters.check = icmp ult i32 %.0138.i, 4
  %i.iq = sub i64 %.0139.i903, %.0136.i.lcssa902
  %diff.check = icmp ugt i64 %i.iq, -32
  %or.cond1202 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond1202, label %.lr.ph709.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check904 = icmp ult i32 %.0138.i, 32
  br i1 %min.iters.check904, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ir = and i64 %i.in, 28
  %n.vec = and i64 %i.in, 4294967264              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %index ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 16
  %wide.load = load <16 x i8>, ptr %i.is, align 1, !tbaa !19
  %wide.load905 = load <16 x i8>, ptr %i.it, align 1, !tbaa !19
  %i.iu = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %index ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store <16 x i8> %wide.load, ptr %i.iu, align 1, !tbaa !19
  store <16 x i8> %wide.load905, ptr %i.iv, align 1, !tbaa !19
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.iw = icmp eq i64 %index.next, %n.vec
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !51

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.in
  br i1 %cmp.n, label %._crit_edge710, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ir, 0
  br i1 %min.epilog.iters.check, label %.lr.ph709.preheader, label %vec.epilog.ph, !prof !97

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec906 = and i64 %i.in, 4294967292           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index907 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next909, %vec.epilog.vector.body ] ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %index907
  %wide.load908 = load <4 x i8>, ptr %i.ix, align 1, !tbaa !19
  %i.iy = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %index907
  store <4 x i8> %wide.load908, ptr %i.iy, align 1, !tbaa !19
  %index.next909 = add nuw i64 %index907, 4       ; 2 uses
  %i.iz = icmp eq i64 %index.next909, %n.vec906
  br i1 %i.iz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !52

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n910 = icmp eq i64 %n.vec906, %i.in
  br i1 %cmp.n910, label %._crit_edge710, label %.lr.ph709.preheader

.lr.ph709.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0137.i708.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec906, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.in, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol

.lr.ph709.prol:                                   ; preds = %.lr.ph709.preheader, %.lr.ph709.prol
  %.0137.i708.prol = phi i64 [ %i.jd, %.lr.ph709.prol ], [ %.0137.i708.ph, %.lr.ph709.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph709.prol ], [ 0, %.lr.ph709.preheader ]
  %i.ja = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %.0137.i708.prol
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !19
  %i.jc = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %.0137.i708.prol
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !19
  %i.jd = add nuw nsw i64 %.0137.i708.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph709.prol.loopexit, label %.lr.ph709.prol, !llvm.loop !53

.lr.ph709.prol.loopexit:                          ; preds = %.lr.ph709.prol, %.lr.ph709.preheader
  %.0137.i708.unr = phi i64 [ %.0137.i708.ph, %.lr.ph709.preheader ], [ %i.jd, %.lr.ph709.prol ]
  %i.je = sub nsw i64 %.0137.i708.ph, %i.in
  %i.jf = icmp ugt i64 %i.je, -4
  br i1 %i.jf, label %._crit_edge710, label %.lr.ph709

._crit_edge710:                                   ; preds = %.lr.ph709.prol.loopexit, %.lr.ph709, %middle.block, %vec.epilog.middle.block, %.preheader692
  %.not156.i = icmp eq i8 %i.ds, 1
  br i1 %.not156.i, label %bb.az, label %bb.ax

.lr.ph709:                                        ; preds = %.lr.ph709.prol.loopexit, %.lr.ph709
  %.0137.i708 = phi i64 [ %i.jv, %.lr.ph709 ], [ %.0137.i708.unr, %.lr.ph709.prol.loopexit ] ; 6 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %.0137.i708
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !19
  %i.ji = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %.0137.i708
  store i8 %i.jh, ptr %i.ji, align 1, !tbaa !19
  %i.jj = add nuw nsw i64 %.0137.i708, 1          ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !19
  %i.jm = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.jj
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !19
  %i.jn = add nuw nsw i64 %.0137.i708, 2          ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !19
  %i.jq = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.jn
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !19
  %i.jr = add nuw nsw i64 %.0137.i708, 3          ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.0139.i, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !19
  %i.ju = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 %i.jr
  store i8 %i.jt, ptr %i.ju, align 1, !tbaa !19
  %i.jv = add nuw nsw i64 %.0137.i708, 4          ; 2 uses
  %exitcond792.not.3 = icmp eq i64 %i.jv, %i.in
  br i1 %exitcond792.not.3, label %._crit_edge710, label %.lr.ph709, !llvm.loop !54

bb.ax:                                            ; preds = %._crit_edge710
  %i.jw = ptrtoint ptr %.0136.i.lcssa to i64      ; 2 uses
  %i.jx = sub i64 %i.jw, %i.bk
  %.not157.i = icmp slt i64 %i.jx, %11
  br i1 %.not157.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jy = load i32, ptr %i.db, align 4, !tbaa !91 ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %.0136.i.lcssa, i64 %14
  %i.ka = call fastcc i64 @ZL_hashPtr(ptr noundef %i.jz, i32 noundef %i.jy, i32 noundef %.pre)
  %i.kb = trunc i64 %i.ka to i32
  %i.kc = load ptr, ptr %i.dc, align 8, !tbaa !93
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = sub i64 %i.jw, %i.kd
  %i.kf = trunc i64 %i.ke to i32                  ; 2 uses
  %.val341 = load i32, ptr %i.dd, align 8, !tbaa !38 ; 3 uses
  %.val342 = load ptr, ptr %i.de, align 8, !tbaa !39 ; 2 uses
  %notmask.i.i355 = shl nsw i32 -1, %.val341
  %i.kg = xor i32 %notmask.i.i355, -1             ; 2 uses
  %i.kh = shl i32 %i.kb, %.val341
  %i.ki = zext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.val342, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4 ; 2 uses
  %i.kl = load i16, ptr %i.kk, align 4, !tbaa !42
  %i.km = zext i16 %i.kl to i32
  %i.kn = add nuw i32 %i.km, 2147483647
  %i.ko = and i32 %i.kn, %i.kg                    ; 2 uses
  %i.kp = trunc i32 %i.ko to i16
  store i16 %i.kp, ptr %i.kk, align 4, !tbaa !42
  %i.kq = zext nneg i32 %i.ko to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.kq ; 2 uses
  store i32 %i.kf, ptr %i.kr, align 4, !tbaa !43
  %i.ks = call i32 @llvm.umin.i32(i32 %.0138.i, i32 255)
  %i.kt = trunc nuw i32 %i.ks to i8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 6
  store i8 %i.kt, ptr %i.ku, align 2, !tbaa !44
  %i.kv = getelementptr inbounds nuw i8, ptr %.0136.i.lcssa, i64 1
  %i.kw = getelementptr inbounds i8, ptr %i.kv, i64 %14
  %i.kx = call fastcc i64 @ZL_hashPtr(ptr noundef nonnull %i.kw, i32 noundef %i.jy, i32 noundef %.pre)
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = add i32 %i.kf, 1
  %i.la = add i32 %.0138.i, -1
  %i.lb = shl i32 %i.ky, %.val341
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %.val342, i64 %i.lc ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4 ; 2 uses
  %i.lf = load i16, ptr %i.le, align 4, !tbaa !42
  %i.lg = zext i16 %i.lf to i32
  %i.lh = add nuw i32 %i.lg, 2147483647
  %i.li = and i32 %i.lh, %i.kg                    ; 2 uses
  %i.lj = trunc i32 %i.li to i16
  store i16 %i.lj, ptr %i.le, align 4, !tbaa !42
  %i.lk = zext nneg i32 %i.li to i64
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lk ; 2 uses
  store i32 %i.kz, ptr %i.ll, align 4, !tbaa !43
  %i.lm = call i32 @llvm.umin.i32(i32 %i.la, i32 255)
  %i.ln = trunc nuw i32 %i.lm to i8
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 6
  store i8 %i.ln, ptr %i.lo, align 2, !tbaa !44
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %._crit_edge710
  %i.lp = add nuw nsw i64 %i.in, %.sroa.051.0.insert.ext
  br label %ZS_execExperimentalSequence.exit

ZS_execExperimentalSequence.exit:                 ; preds = %._crit_edge, %bb.az
  %.6.i = phi i64 [ %i.lp, %bb.az ], [ %.sroa.051.0.insert.ext, %._crit_edge ] ; 2 uses
  %i.lq = icmp eq i64 %.6.i, 0
  br i1 %i.lq, label %ZS_execExperimentalSequence.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %ZS_execExperimentalSequence.exit
  %i.lr = getelementptr inbounds nuw i8, ptr %.0237712, i64 %.6.i ; 2 uses
  %i.ls = add nuw nsw i64 %.0239711, 1            ; 2 uses
  %exitcond793.not = icmp eq i64 %i.ls, %i.ca
  br i1 %exitcond793.not, label %.critedge, label %bb.x, !llvm.loop !55

.critedge:                                        ; preds = %bb.x, %bb.ba, %bb.w
  %.0239.lcssa = phi i64 [ 0, %bb.w ], [ %i.ca, %bb.ba ], [ %.0239711, %bb.x ] ; 3 uses
  %.0237.lcssa = phi ptr [ %1, %bb.w ], [ %i.lr, %bb.ba ], [ %.0237712, %bb.x ] ; 6 uses
  %i.lt = icmp eq i32 %.pre, 2
  %i.lu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.lv = load i32, ptr %i.lu, align 4
  %i.lw = icmp eq i32 %i.lv, 12
  %or.cond17 = select i1 %i.lt, i1 %i.lw, i1 false
  %i.lx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ly = load i32, ptr %i.lx, align 8
  %i.lz = icmp eq i32 %i.ly, 4
  %or.cond20 = select i1 %or.cond17, i1 %i.lz, i1 false
  br i1 %or.cond20, label %bb.bb, label %.loopexit676

bb.bb:                                            ; preds = %.critedge
  %i.ma = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.mb = load i8, ptr %i.ma, align 4, !tbaa !46, !range !31, !noundef !32
  %i.mc = trunc nuw i8 %i.mb to i1
  %i.md = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.me = load i32, ptr %i.md, align 8
  %i.mf = icmp eq i32 %i.me, 3
  %or.cond23 = select i1 %i.mc, i1 %i.mf, i1 false
  %i.mg = icmp eq i8 %i.aa, 7
  %or.cond25 = select i1 %or.cond23, i1 %i.mg, i1 false
  %i.mh = icmp eq i8 %i.ad, 3
  %or.cond27 = select i1 %or.cond25, i1 %i.mh, i1 false
  br i1 %or.cond27, label %bb.bc, label %.loopexit676

bb.bc:                                            ; preds = %bb.bb
  %i.mi = load i8, ptr %10, align 8, !tbaa !30, !range !31, !noundef !32
  %i.mj = trunc nuw i8 %i.mi to i1
  %i.mk = icmp samesign ult i64 %.0239.lcssa, %i.ca ; 2 uses
  br i1 %i.mj, label %.preheader675, label %.preheader689

.preheader689:                                    ; preds = %bb.bc
  br i1 %i.mk, label %.lr.ph734, label %.loopexit676

.lr.ph734:                                        ; preds = %.preheader689
  %i.ml = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.5431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %8, i64 28
  %.sroa.19419.12..sroa_idx422 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23424.12..sroa_idx427 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  br label %bb.ck

.preheader675:                                    ; preds = %bb.bc
  br i1 %i.mk, label %.lr.ph753, label %.loopexit676

.lr.ph753:                                        ; preds = %.preheader675
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 4144
  %i.ms = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 5 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %.sroa.5465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.mx = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  %.sroa.19453.12..sroa_idx456 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %.sroa.23458.12..sroa_idx461 = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph753, %bb.cj
  %.2752 = phi ptr [ %.0237.lcssa, %.lr.ph753 ], [ %i.aag, %bb.cj ] ; 7 uses
  %.1240751 = phi i64 [ %.0239.lcssa, %.lr.ph753 ], [ %i.aah, %bb.cj ] ; 5 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %.1240751
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !29 ; 4 uses
  %.sroa.047.0.insert.ext = zext i32 %i.mz to i64 ; 7 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %.1240751
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !29 ; 7 uses
  %.sroa.047.4.insert.ext = zext i32 %i.nb to i64 ; 3 uses
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.1240751
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !29 ; 13 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.1240751
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !19
  %i.ng = ptrtoint ptr %.2752 to i64
  %i.nh = sub i64 %i.bj, %i.ng
  %i.ni = icmp ult i64 %i.nh, %.sroa.047.0.insert.ext
  br i1 %i.ni, label %ZS_execExperimentalSequence.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nj = load i64, ptr %i.cs, align 8, !tbaa !27
  %i.nk = load i64, ptr %i.ct, align 8, !tbaa !89 ; 2 uses
  %i.nl = sub i64 %i.nj, %i.nk
  %i.nm = icmp ult i64 %i.nl, %.sroa.047.0.insert.ext
  br i1 %i.nm, label %ZS_execExperimentalSequence.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not171.i736.not = icmp eq i32 %i.mz, 0
  br i1 %.not171.i736.not, label %.critedge172.i._crit_edge, label %.lr.ph740.preheader

.lr.ph740.preheader:                              ; preds = %bb.bf
  %i.nn = getelementptr inbounds i8, ptr %.2752, i64 -1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !19
  br label %.lr.ph740

.lr.ph743:                                        ; preds = %bb.bg
  %i.np = load ptr, ptr %i.ms, align 8, !tbaa !93
  %i.nq = ptrtoint ptr %i.np to i64               ; 3 uses
  %i.nr = load ptr, ptr %i.mt, align 8, !tbaa !39 ; 3 uses
  %xtraiter1233 = and i64 %.sroa.047.0.insert.ext, 1
  %i.ns = icmp eq i32 %i.mz, 1
  br i1 %i.ns, label %.critedge172.i.epil.preheader, label %.lr.ph743.new

.lr.ph743.new:                                    ; preds = %.lr.ph743
  %unroll_iter1237 = and i64 %.sroa.047.0.insert.ext, 4294967294
  br label %.critedge172.i

.lr.ph740:                                        ; preds = %.lr.ph740.preheader, %bb.bg
  %.0161.i738 = phi i64 [ %i.ob, %bb.bg ], [ 0, %.lr.ph740.preheader ] ; 2 uses
  %.0162.i737 = phi i8 [ %i.nx, %bb.bg ], [ %i.no, %.lr.ph740.preheader ]
  %i.nt = zext i8 %.0162.i737 to i64
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %i.nt
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !35 ; 4 uses
  %.not.i300 = icmp eq ptr %i.nv, null
  br i1 %.not.i300, label %ZS_execExperimentalSequence.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph740
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !36
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !19  ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.2752, i64 %.0161.i738
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !19
  %i.nz = load ptr, ptr %i.nv, align 8, !tbaa !36
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  store ptr %i.oa, ptr %i.nv, align 8, !tbaa !36
  %i.ob = add nuw nsw i64 %.0161.i738, 1          ; 2 uses
  %exitcond796.not = icmp eq i64 %i.ob, %.sroa.047.0.insert.ext
  br i1 %exitcond796.not, label %.lr.ph743, label %.lr.ph740, !llvm.loop !56

.critedge172.i._crit_edge.loopexit.unr-lcssa:     ; preds = %.critedge172.i
  %lcmp.mod1234.not = icmp eq i64 %xtraiter1233, 0
  br i1 %lcmp.mod1234.not, label %.critedge172.i._crit_edge, label %.critedge172.i.epil.preheader

.critedge172.i.epil.preheader:                    ; preds = %.critedge172.i._crit_edge.loopexit.unr-lcssa, %.lr.ph743
  %.0147.i284742.epil.init = phi ptr [ %.2752, %.lr.ph743 ], [ %i.py, %.critedge172.i._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1236 = trunc i32 %i.mz to i1
  call void @llvm.assume(i1 %lcmp.mod1236)
  %i.oc = getelementptr inbounds i8, ptr %.0147.i284742.epil.init, i64 -2
  %.val.i357.epil = load i16, ptr %i.oc, align 1
  %i.od = ptrtoint ptr %.0147.i284742.epil.init to i64
  %i.oe = sub i64 %i.od, %i.nq
  %i.of = trunc i64 %i.oe to i32
  %i.og = mul i16 %.val.i357.epil, -22595
  %i.oh = and i16 %i.og, -16
  %i.oi = zext i16 %i.oh to i64
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.oi ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4 ; 2 uses
  %i.ol = load i16, ptr %i.ok, align 4, !tbaa !42
  %i.om = add i16 %i.ol, 15
  %i.on = and i16 %i.om, 15                       ; 2 uses
  store i16 %i.on, ptr %i.ok, align 4, !tbaa !42
  %i.oo = zext nneg i16 %i.on to i64
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.oo ; 2 uses
  store i32 %i.of, ptr %i.op, align 4, !tbaa !43
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 6
  store i8 0, ptr %i.oq, align 2, !tbaa !44
  %i.or = getelementptr inbounds nuw i8, ptr %.0147.i284742.epil.init, i64 1
  br label %.critedge172.i._crit_edge

.critedge172.i._crit_edge:                        ; preds = %.critedge172.i.epil.preheader, %.critedge172.i._crit_edge.loopexit.unr-lcssa, %bb.bf
  %.0147.i284.lcssa = phi ptr [ %.2752, %bb.bf ], [ %i.py, %.critedge172.i._crit_edge.loopexit.unr-lcssa ], [ %i.or, %.critedge172.i.epil.preheader ] ; 42 uses
  %.0147.i284.lcssa1054 = ptrtoaddr ptr %.0147.i284.lcssa to i64 ; 18 uses
  %i.os = add i64 %i.nk, %.sroa.047.0.insert.ext
  store i64 %i.os, ptr %i.ct, align 8, !tbaa !89
  switch i8 %i.nf, label %bb.br [
    i8 1, label %bb.bh
    i8 0, label %bb.bp
  ]

.critedge172.i:                                   ; preds = %.critedge172.i, %.lr.ph743.new
  %.0147.i284742 = phi ptr [ %.2752, %.lr.ph743.new ], [ %i.py, %.critedge172.i ] ; 5 uses
  %niter1238 = phi i64 [ 0, %.lr.ph743.new ], [ %niter1238.next.1, %.critedge172.i ]
  %i.ot = getelementptr inbounds i8, ptr %.0147.i284742, i64 -2
  %.val.i357 = load i16, ptr %i.ot, align 1
  %i.ou = ptrtoint ptr %.0147.i284742 to i64
  %i.ov = sub i64 %i.ou, %i.nq
  %i.ow = trunc i64 %i.ov to i32
  %i.ox = mul i16 %.val.i357, -22595
  %i.oy = and i16 %i.ox, -16
  %i.oz = zext i16 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.oz ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 4 ; 2 uses
  %i.pc = load i16, ptr %i.pb, align 4, !tbaa !42
  %i.pd = add i16 %i.pc, 15
  %i.pe = and i16 %i.pd, 15                       ; 2 uses
  store i16 %i.pe, ptr %i.pb, align 4, !tbaa !42
  %i.pf = zext nneg i16 %i.pe to i64
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.pf ; 2 uses
  store i32 %i.ow, ptr %i.pg, align 4, !tbaa !43
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 6
  store i8 0, ptr %i.ph, align 2, !tbaa !44
  %i.pi = getelementptr inbounds nuw i8, ptr %.0147.i284742, i64 1
  %i.pj = getelementptr inbounds i8, ptr %.0147.i284742, i64 -1
  %.val.i357.1 = load i16, ptr %i.pj, align 1
  %i.pk = ptrtoint ptr %i.pi to i64
  %i.pl = sub i64 %i.pk, %i.nq
  %i.pm = trunc i64 %i.pl to i32
  %i.pn = mul i16 %.val.i357.1, -22595
  %i.po = and i16 %i.pn, -16
  %i.pp = zext i16 %i.po to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %i.pp ; 2 uses
end_hunk_0
