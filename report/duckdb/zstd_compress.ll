inline.NumInlined: 798
inline.NumDeleted: 175
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.duckdb_zstd::ZSTD_customMem" = type { ptr, ptr, ptr }
%"struct.duckdb_zstd::ZSTD_compressionParameters" = type { i32, i32, i32, i32, i32, i32, i32 }
%"struct.duckdb_zstd::ZSTD_parameters" = type { %"struct.duckdb_zstd::ZSTD_compressionParameters", %"struct.duckdb_zstd::ZSTD_frameParameters" }
%"struct.duckdb_zstd::ZSTD_frameParameters" = type { i32, i32, i32 }
%"struct.duckdb_zstd::ldmParams_t" = type { i32, i32, i32, i32, i32, i32 }
%"struct.duckdb_zstd::ZSTD_CCtx_params_s" = type { i32, %"struct.duckdb_zstd::ZSTD_compressionParameters", %"struct.duckdb_zstd::ZSTD_frameParameters", i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, %"struct.duckdb_zstd::ldmParams_t", i32, i32, i32, i32, i32, i32, i32, i32, %"struct.duckdb_zstd::ZSTD_customMem", i32, i32, ptr, ptr, i64, i32 }
%"struct.duckdb_zstd::ZSTD_frameProgression" = type { i64, i64, i64, i64, i32, i32 }
%"struct.duckdb_zstd::ZSTD_outBuffer_s" = type { ptr, i64, i64 }
%"struct.duckdb_zstd::ZSTD_inBuffer_s" = type { ptr, i64, i64 }
%"struct.duckdb_zstd::ZSTD_symbolEncodingTypeStats_t" = type { i32, i32, i32, i64, i64, i32 }
%"struct.duckdb_zstd::seqStoreSplits" = type { ptr, i64 }
%"struct.duckdb_zstd::repcodes_s" = type { [3 x i32] }
%"struct.duckdb_zstd::ZSTD_Trace" = type { i32, i32, i32, i32, i64, i64, i64, ptr, ptr, ptr }
%"struct.duckdb_zstd::ZSTD_CCtx_s" = type { i32, i32, i32, %"struct.duckdb_zstd::ZSTD_CCtx_params_s", %"struct.duckdb_zstd::ZSTD_CCtx_params_s", %"struct.duckdb_zstd::ZSTD_CCtx_params_s", i32, i64, %"struct.duckdb_zstd::ZSTD_cwksp", i64, i64, i64, i64, %"struct.duckdb_zstd::XXH64_state_s", %"struct.duckdb_zstd::ZSTD_customMem", ptr, i64, %"struct.duckdb_zstd::SeqCollector", i32, i32, %"struct.duckdb_zstd::seqStore_t", %"struct.duckdb_zstd::ldmState_t", ptr, i64, %"struct.duckdb_zstd::rawSeqStore_t", %"struct.duckdb_zstd::ZSTD_blockState_t", ptr, i32, ptr, i64, i64, i64, i64, ptr, i64, i64, i64, i32, i32, %"struct.duckdb_zstd::ZSTD_inBuffer_s", i64, i64, %"struct.duckdb_zstd::ZSTD_localDict", ptr, %"struct.duckdb_zstd::ZSTD_prefixDict_s", i64, %"struct.duckdb_zstd::ZSTD_blockSplitCtx", ptr, i64 }
%"struct.duckdb_zstd::ZSTD_cwksp" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32 }
%"struct.duckdb_zstd::XXH64_state_s" = type { i64, i64, i64, i64, i64, [4 x i64], i32, [2 x i32] }
%"struct.duckdb_zstd::SeqCollector" = type { i32, ptr, i64, i64 }
%"struct.duckdb_zstd::seqStore_t" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }
%"struct.duckdb_zstd::ldmState_t" = type { %"struct.duckdb_zstd::ZSTD_window_t", ptr, i32, ptr, [64 x i64], [64 x %"struct.duckdb_zstd::ldmMatchCandidate_t"] }
%"struct.duckdb_zstd::ZSTD_window_t" = type { ptr, ptr, ptr, i32, i32, i32 }
%"struct.duckdb_zstd::ldmMatchCandidate_t" = type { ptr, i32, i32, ptr }
%"struct.duckdb_zstd::rawSeqStore_t" = type { ptr, i64, i64, i64, i64 }
%"struct.duckdb_zstd::ZSTD_blockState_t" = type { ptr, ptr, %"struct.duckdb_zstd::ZSTD_matchState_t" }
%"struct.duckdb_zstd::ZSTD_matchState_t" = type { %"struct.duckdb_zstd::ZSTD_window_t", i32, i32, i32, i32, ptr, [8 x i32], i64, i32, ptr, ptr, ptr, i32, i32, %"struct.duckdb_zstd::optState_t", ptr, %"struct.duckdb_zstd::ZSTD_compressionParameters", ptr, i32, i32 }
%"struct.duckdb_zstd::optState_t" = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%"struct.duckdb_zstd::ZSTD_localDict" = type { ptr, ptr, i64, i32, ptr }
%"struct.duckdb_zstd::ZSTD_prefixDict_s" = type { ptr, i64, i32 }
%"struct.duckdb_zstd::ZSTD_blockSplitCtx" = type { %"struct.duckdb_zstd::seqStore_t", %"struct.duckdb_zstd::seqStore_t", %"struct.duckdb_zstd::seqStore_t", %"struct.duckdb_zstd::seqStore_t", %"struct.duckdb_zstd::seqStore_t", [196 x i32], %"struct.duckdb_zstd::ZSTD_entropyCTablesMetadata_t" }
%"struct.duckdb_zstd::ZSTD_entropyCTablesMetadata_t" = type { %"struct.duckdb_zstd::ZSTD_hufCTablesMetadata_t", %"struct.duckdb_zstd::ZSTD_fseCTablesMetadata_t" }
%"struct.duckdb_zstd::ZSTD_hufCTablesMetadata_t" = type { i32, [128 x i8], i64 }
%"struct.duckdb_zstd::ZSTD_fseCTablesMetadata_t" = type { i32, i32, i32, [133 x i8], i64, i64 }
%"struct.duckdb_zstd::ZSTD_sequencePosition" = type { i32, i32, i64 }

@_ZN11duckdb_zstdL16ZSTD_defaultCMemE = internal unnamed_addr constant %"struct.duckdb_zstd::ZSTD_customMem" zeroinitializer, align 8
@_ZN11duckdb_zstdL13repStartValueE = internal unnamed_addr constant [3 x i32] [i32 1, i32 4, i32 8], align 4
@_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE15blockCompressor = internal unnamed_addr constant [4 x [10 x ptr]] [[10 x ptr] [ptr @_ZN11duckdb_zstd23ZSTD_compressBlock_fastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd23ZSTD_compressBlock_fastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd29ZSTD_compressBlock_doubleFastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd25ZSTD_compressBlock_greedyEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd23ZSTD_compressBlock_lazyEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd24ZSTD_compressBlock_lazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd26ZSTD_compressBlock_btlazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd24ZSTD_compressBlock_btoptEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd26ZSTD_compressBlock_btultraEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd27ZSTD_compressBlock_btultra2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm], [10 x ptr] [ptr @_ZN11duckdb_zstd31ZSTD_compressBlock_fast_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd31ZSTD_compressBlock_fast_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd37ZSTD_compressBlock_doubleFast_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd33ZSTD_compressBlock_greedy_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd31ZSTD_compressBlock_lazy_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd32ZSTD_compressBlock_lazy2_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd34ZSTD_compressBlock_btlazy2_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd32ZSTD_compressBlock_btopt_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd34ZSTD_compressBlock_btultra_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd34ZSTD_compressBlock_btultra_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm], [10 x ptr] [ptr @_ZN11duckdb_zstd38ZSTD_compressBlock_fast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd38ZSTD_compressBlock_fast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd44ZSTD_compressBlock_doubleFast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd40ZSTD_compressBlock_greedy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd39ZSTD_compressBlock_lazy2_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd41ZSTD_compressBlock_btlazy2_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd39ZSTD_compressBlock_btopt_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd41ZSTD_compressBlock_btultra_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd41ZSTD_compressBlock_btultra_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm], [10 x ptr] [ptr null, ptr null, ptr null, ptr @_ZN11duckdb_zstd45ZSTD_compressBlock_greedy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd44ZSTD_compressBlock_lazy2_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr null, ptr null, ptr null, ptr null]], align 16
@_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE24rowBasedBlockCompressors = internal unnamed_addr constant [4 x [3 x ptr]] [[3 x ptr] [ptr @_ZN11duckdb_zstd29ZSTD_compressBlock_greedy_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd27ZSTD_compressBlock_lazy_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd28ZSTD_compressBlock_lazy2_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm], [3 x ptr] [ptr @_ZN11duckdb_zstd37ZSTD_compressBlock_greedy_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd35ZSTD_compressBlock_lazy_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd36ZSTD_compressBlock_lazy2_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm], [3 x ptr] [ptr @_ZN11duckdb_zstd44ZSTD_compressBlock_greedy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd43ZSTD_compressBlock_lazy2_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm], [3 x ptr] [ptr @_ZN11duckdb_zstd49ZSTD_compressBlock_greedy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm, ptr @_ZN11duckdb_zstd48ZSTD_compressBlock_lazy2_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm]], align 16
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZZN11duckdb_zstdL11ZSTD_LLcodeEjE7LL_Code = internal unnamed_addr constant [64 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\10\11\11\12\12\13\13\14\14\14\14\15\15\15\15\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@_ZZN11duckdb_zstdL11ZSTD_MLcodeEjE7ML_Code = internal unnamed_addr constant [128 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F  !!\22\22##$$$$%%%%&&&&&&&&''''''''(((((((((((((((())))))))))))))))********************************", align 16
@_ZN11duckdb_zstdL14LL_defaultNormE = internal constant [36 x i16] [i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 3, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@_ZN11duckdb_zstdL14OF_defaultNormE = internal constant [29 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@_ZN11duckdb_zstdL14ML_defaultNormE = internal constant [53 x i16] [i16 1, i16 4, i16 3, i16 2, i16 2, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@_ZN11duckdb_zstdL7LL_bitsE = internal unnamed_addr constant [36 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\06\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@_ZN11duckdb_zstdL7ML_bitsE = internal unnamed_addr constant [53 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\02\02\03\03\04\04\05\07\08\09\0A\0B\0C\0D\0E\0F\10", align 16
@_ZN11duckdb_zstdL21attachDictSizeCutoffsE = internal unnamed_addr constant [10 x i64] [i64 8192, i64 8192, i64 16384, i64 32768, i64 32768, i64 32768, i64 32768, i64 32768, i64 8192, i64 8192], align 16
@_ZN11duckdb_zstdL23ZSTD_defaultCParametersE = internal unnamed_addr constant [4 x [23 x %"struct.duckdb_zstd::ZSTD_compressionParameters"]] [[23 x %"struct.duckdb_zstd::ZSTD_compressionParameters"] [%"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 19, i32 12, i32 13, i32 1, i32 6, i32 1, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 19, i32 13, i32 14, i32 1, i32 7, i32 0, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 20, i32 15, i32 16, i32 1, i32 6, i32 0, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 21, i32 16, i32 17, i32 1, i32 5, i32 0, i32 2 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 21, i32 18, i32 18, i32 1, i32 5, i32 0, i32 2 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 21, i32 18, i32 19, i32 3, i32 5, i32 2, i32 3 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 21, i32 18, i32 19, i32 3, i32 5, i32 4, i32 4 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 21, i32 19, i32 20, i32 4, i32 5, i32 8, i32 4 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 21, i32 19, i32 20, i32 4, i32 5, i32 16, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 22, i32 20, i32 21, i32 4, i32 5, i32 16, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 22, i32 21, i32 22, i32 5, i32 5, i32 16, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 22, i32 21, i32 22, i32 6, i32 5, i32 16, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 22, i32 22, i32 23, i32 6, i32 5, i32 32, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 22, i32 22, i32 22, i32 4, i32 5, i32 32, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 22, i32 22, i32 23, i32 5, i32 5, i32 32, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 22, i32 23, i32 23, i32 6, i32 5, i32 32, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 22, i32 22, i32 22, i32 5, i32 5, i32 48, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 23, i32 23, i32 22, i32 5, i32 4, i32 64, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 23, i32 23, i32 22, i32 6, i32 3, i32 64, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 23, i32 24, i32 22, i32 7, i32 3, i32 256, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 25, i32 25, i32 23, i32 7, i32 3, i32 256, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 26, i32 26, i32 24, i32 7, i32 3, i32 512, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 27, i32 27, i32 25, i32 9, i32 3, i32 999, i32 9 }], [23 x %"struct.duckdb_zstd::ZSTD_compressionParameters"] [%"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 12, i32 13, i32 1, i32 5, i32 1, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 13, i32 14, i32 1, i32 6, i32 0, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 14, i32 14, i32 1, i32 5, i32 0, i32 2 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 16, i32 16, i32 1, i32 4, i32 0, i32 2 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 16, i32 17, i32 3, i32 5, i32 2, i32 3 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 17, i32 18, i32 5, i32 5, i32 2, i32 3 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 3, i32 5, i32 4, i32 4 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 4, i32 4, i32 4, i32 4 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 4, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 5, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 6, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 5, i32 4, i32 12, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 19, i32 19, i32 7, i32 4, i32 12, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 4, i32 4, i32 16, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 4, i32 3, i32 32, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 18, i32 19, i32 6, i32 3, i32 128, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 19, i32 19, i32 6, i32 3, i32 128, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 19, i32 19, i32 8, i32 3, i32 256, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 19, i32 19, i32 6, i32 3, i32 128, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 19, i32 19, i32 8, i32 3, i32 256, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 19, i32 19, i32 10, i32 3, i32 512, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 19, i32 19, i32 12, i32 3, i32 512, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 18, i32 19, i32 19, i32 13, i32 3, i32 999, i32 9 }], [23 x %"struct.duckdb_zstd::ZSTD_compressionParameters"] [%"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 12, i32 12, i32 1, i32 5, i32 1, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 12, i32 13, i32 1, i32 6, i32 0, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 13, i32 15, i32 1, i32 5, i32 0, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 15, i32 16, i32 2, i32 5, i32 0, i32 2 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 17, i32 17, i32 2, i32 4, i32 0, i32 2 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 16, i32 17, i32 3, i32 4, i32 2, i32 3 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 16, i32 17, i32 3, i32 4, i32 4, i32 4 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 16, i32 17, i32 3, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 16, i32 17, i32 4, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 16, i32 17, i32 5, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 16, i32 17, i32 6, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 17, i32 17, i32 5, i32 4, i32 8, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 7, i32 4, i32 12, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 3, i32 4, i32 12, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 4, i32 3, i32 32, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 6, i32 3, i32 256, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 6, i32 3, i32 128, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 8, i32 3, i32 256, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 10, i32 3, i32 512, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 5, i32 3, i32 256, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 7, i32 3, i32 512, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 9, i32 3, i32 512, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 17, i32 18, i32 17, i32 11, i32 3, i32 999, i32 9 }], [23 x %"struct.duckdb_zstd::ZSTD_compressionParameters"] [%"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 12, i32 13, i32 1, i32 5, i32 1, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 14, i32 15, i32 1, i32 5, i32 0, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 14, i32 15, i32 1, i32 4, i32 0, i32 1 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 14, i32 15, i32 2, i32 4, i32 0, i32 2 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 14, i32 14, i32 4, i32 4, i32 2, i32 3 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 14, i32 14, i32 3, i32 4, i32 4, i32 4 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 14, i32 14, i32 4, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 14, i32 14, i32 6, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 14, i32 14, i32 8, i32 4, i32 8, i32 5 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 14, i32 5, i32 4, i32 8, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 14, i32 9, i32 4, i32 8, i32 6 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 14, i32 3, i32 4, i32 12, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 14, i32 4, i32 3, i32 24, i32 7 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 14, i32 5, i32 3, i32 32, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 6, i32 3, i32 64, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 7, i32 3, i32 256, i32 8 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 5, i32 3, i32 48, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 6, i32 3, i32 128, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 7, i32 3, i32 256, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 8, i32 3, i32 256, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 8, i32 3, i32 512, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 9, i32 3, i32 512, i32 9 }, %"struct.duckdb_zstd::ZSTD_compressionParameters" { i32 14, i32 15, i32 15, i32 10, i32 3, i32 999, i32 9 }]], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 1, 0) i64 @_ZN11duckdb_zstd18ZSTD_compressBoundEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, -71777214294589697
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %0, 8
  %i.c = add nuw i64 %i.b, %0
  %i.d = sub nuw nsw i64 131072, %0
  %i.e = lshr i64 %i.d, 11
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809 = icmp ult i64 %0, 129025
  %i.f = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809, i64 %i.e, i64 0
  %i.g = add i64 %i.c, %i.f
  %.fr = freeze i64 %i.g                          ; 2 uses
  %i.h = icmp eq i64 %.fr, 0
  br i1 %i.h, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.i = phi i64 [ -72, %.thread ], [ %.fr, %bb.b ]
  ret i64 %i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() local_unnamed_addr #2 {
_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i:
  %calloc = tail call dereferenceable_or_null(5248) ptr @calloc(i64 1, i64 5248) ; 7 uses
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  %i.a = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.c = icmp ugt i32 %i.a, 6
  br i1 %i.c, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i:       ; preds = %bb.b
  %i.d = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.e = extractvalue { i32, i32, i32 } %i.d, 1   ; 2 uses
  %i.f = and i32 %i.e, 8
  %.not.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i
  %i.g = lshr i32 %i.e, 8
  %i.h = and i32 %i.g, 1
  br label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i: ; preds = %bb.c, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, %bb.b, %bb.a
  %i.i = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !10
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %calloc)
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %calloc, i64 60
  store i32 3, ptr %i.l, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 48
  store i32 1, ptr %i.m, align 8, !tbaa !59
  br label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i
  ret ptr %calloc
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE(ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 2 uses
  %.not = icmp eq ptr %i.a, null                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61
  %.not5 = icmp eq ptr %i.c, null
  %i.d = xor i1 %.not, %.not5
  br i1 %i.d, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.28.0.copyload = load ptr, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !62
  %i.e = tail call noundef ptr %i.a(ptr noundef %.sroa.28.0.copyload, i64 noundef 5248), !inline_history !63
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias dereferenceable_or_null(5248) ptr @malloc(i64 noundef 5248) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.e, %bb.c ], [ %i.f, %bb.d ] ; 9 uses
  %.not6 = icmp eq ptr %.0.i, null
  br i1 %.not6, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %.0.i, i8 0, i64 5248, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.h = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.j = icmp ugt i32 %i.h, 6
  br i1 %i.j, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i:         ; preds = %bb.f
  %i.k = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.l = extractvalue { i32, i32, i32 } %i.k, 1   ; 2 uses
  %i.m = and i32 %i.l, 8
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i
  %i.n = lshr i32 %i.l, 8
  %i.o = and i32 %i.n, 1
  br label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit: ; preds = %bb.e, %bb.f, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i, %bb.g
  %i.p = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i ], [ %i.o, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !10
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %.0.i)
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.r, i8 0, i64 216, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 60
  store i32 3, ptr %i.s, align 4, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  store i32 1, ptr %i.t, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.0.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit ], [ null, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %1, 5248
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not = icmp eq i64 %i.c, 0
  %or.cond = and i1 %i.a, %.not
  br i1 %or.cond, label %bb.b, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5248 ; 6 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -64                        ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %0, i8 0, i64 5248, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %0, ptr %i.j, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !62
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !62
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !62
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  store ptr %i.d, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !62
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %i.i, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !62
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.i, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !62
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %.sroa.1833.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 740
  store i32 0, ptr %.sroa.1833.0..sroa_idx, align 4, !tbaa !3
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 1, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i64 %1, ptr %i.k, align 8, !tbaa !65
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub i64 %i.h, %i.l
  %i.n = icmp ult i64 %i.m, 20184
  br i1 %i.n, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i64 %1, 10880
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !66
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10880 ; 4 uses
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !67
  store ptr %i.p, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !68
  store ptr %i.p, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !69
end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd21ZSTD_estimateCCtxSizeEi:bb.a
  %i.j = icmp slt i32 %.0112, 0                   ; 4 uses
  %spec.select41.i96 = tail call i32 @llvm.umax.i32(i32 %.0112, i32 -131072)
  %i.k = sub nsw i32 0, %spec.select41.i96        ; 4 uses
  %.sroa.4.0.i97 = select i1 %i.j, i32 %i.k, i32 %.sroa.4.0.copyload.i87
  store i32 %spec.store.select42.i.i95, ptr %1, align 8, !tbaa !3, !alias.scope !158
  store i32 %spec.select42.i92, ptr %.sroa.7.0..sroa_idx.i98, align 4, !tbaa !3, !alias.scope !158
  store i32 %spec.store.select41.i.i91, ptr %.sroa.11.0..sroa_idx.i99, align 8, !tbaa !3, !alias.scope !158
  %i.l = load <2 x i32>, ptr %.sroa.0.sroa.6.0..sroa_idx.i82, align 4, !tbaa !3, !noalias !158
  store <2 x i32> %i.l, ptr %.sroa.17.0..sroa_idx.i100, align 4, !tbaa !3, !alias.scope !158
  store i32 %.sroa.4.0.i97, ptr %.sroa.1835.0..sroa_idx.i102, align 4, !tbaa !3, !alias.scope !158
  store i32 %.sroa.5.0.copyload.i89, ptr %.sroa.19.0..sroa_idx.i103, align 8, !tbaa !88, !alias.scope !158
  %i.m = tail call noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %1)
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit73, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit106
  %i.n = tail call noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %1)
  br label %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit73

_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit73: ; preds = %bb.e, %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit106
  %i.o = phi i64 [ %i.n, %bb.e ], [ 0, %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit106 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %brmerge = icmp slt i32 %.0112, 1
  %.mux = select i1 %i.b, i64 3, i64 0
  %narrow.i41 = tail call i32 @llvm.umin.i32(i32 %.0112, i32 22)
  %spec.select.i42 = zext nneg i32 %narrow.i41 to i64
  %.0.i43 = select i1 %brmerge, i64 %.mux, i64 %spec.select.i42 ; 3 uses
  %i.p = getelementptr inbounds nuw [28 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN11duckdb_zstdL23ZSTD_defaultCParametersE, i64 1288), i64 %.0.i43 ; 6 uses
  %.sroa.0.sroa.0.0.copyload.i44 = load i32, ptr %i.p, align 4, !tbaa !3, !noalias !161
  %.sroa.0.sroa.4.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %.sroa.0.sroa.4.0.copyload.i46 = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx.i45, align 4, !tbaa !3, !noalias !161 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.0.sroa.5.0.copyload.i48 = load i32, ptr %.sroa.0.sroa.5.0..sroa_idx.i47, align 4, !tbaa !3, !noalias !161
  %.sroa.0.sroa.6.0..sroa_idx.i49 = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %.sroa.4.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %.sroa.4.0.copyload.i54 = load i32, ptr %.sroa.4.0..sroa_idx.i53, align 4, !tbaa !3, !noalias !161
  %.sroa.5.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.5.0.copyload.i56 = load i32, ptr %.sroa.5.0..sroa_idx.i55, align 4, !tbaa !88, !noalias !161 ; 2 uses
  %spec.store.select40.i.i72 = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.0.0.copyload.i44, i32 17) ; 4 uses
  %i.q = icmp ugt i32 %.sroa.5.0.copyload.i56, 5
  %.neg.i.i.i57 = sext i1 %i.q to i32             ; 2 uses
  %i.r = add i32 %.sroa.0.sroa.4.0.copyload.i46, %.neg.i.i.i57
  %i.s = add nuw nsw i32 %spec.store.select40.i.i72, 1
  %spec.store.select41.i.i58 = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.5.0.copyload.i48, i32 %i.s)
  %i.t = icmp ugt i32 %i.r, %spec.store.select40.i.i72
  %i.u = sub nsw i32 %spec.store.select40.i.i72, %.neg.i.i.i57
  %spec.select42.i59 = select i1 %i.t, i32 %i.u, i32 %.sroa.0.sroa.4.0.copyload.i46
  %spec.store.select42.i.i62 = tail call i32 @llvm.umax.i32(i32 %spec.store.select40.i.i72, i32 10)
  %.sroa.4.0.i64 = select i1 %i.j, i32 %i.k, i32 %.sroa.4.0.copyload.i54
  store i32 %spec.store.select42.i.i62, ptr %1, align 8, !tbaa !3, !alias.scope !161
  store i32 %spec.select42.i59, ptr %.sroa.7.0..sroa_idx.i98, align 4, !tbaa !3, !alias.scope !161
  store i32 %spec.store.select41.i.i58, ptr %.sroa.11.0..sroa_idx.i99, align 8, !tbaa !3, !alias.scope !161
  %i.v = load <2 x i32>, ptr %.sroa.0.sroa.6.0..sroa_idx.i49, align 4, !tbaa !3, !noalias !161
  store <2 x i32> %i.v, ptr %.sroa.17.0..sroa_idx.i100, align 4, !tbaa !3, !alias.scope !161
  store i32 %.sroa.4.0.i64, ptr %.sroa.1835.0..sroa_idx.i102, align 4, !tbaa !3, !alias.scope !161
  store i32 %.sroa.5.0.copyload.i56, ptr %.sroa.19.0..sroa_idx.i103, align 8, !tbaa !88, !alias.scope !161
  %i.w = tail call noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %1)
  %i.x = icmp ugt i64 %i.w, %i.o
  br i1 %i.x, label %bb.f, label %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit40

bb.f:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit73
  %i.y = tail call noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %1)
  br label %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit40

_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit40: ; preds = %bb.f, %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit73
  %i.z = phi i64 [ %i.y, %bb.f ], [ %i.o, %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit73 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  %i.aa = getelementptr inbounds nuw [28 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZN11duckdb_zstdL23ZSTD_defaultCParametersE, i64 644), i64 %.0.i43 ; 6 uses
  %.sroa.0.sroa.0.0.copyload.i15 = load i32, ptr %i.aa, align 4, !tbaa !3, !noalias !164
  %.sroa.0.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %.sroa.0.sroa.4.0.copyload.i17 = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx.i16, align 4, !tbaa !3, !noalias !164 ; 2 uses
  %.sroa.0.sroa.5.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.0.sroa.5.0.copyload.i19 = load i32, ptr %.sroa.0.sroa.5.0..sroa_idx.i18, align 4, !tbaa !3, !noalias !164
  %.sroa.0.sroa.6.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.4.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %.sroa.4.0.copyload.i25 = load i32, ptr %.sroa.4.0..sroa_idx.i24, align 4, !tbaa !3, !noalias !164
  %.sroa.5.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.5.0.copyload.i27 = load i32, ptr %.sroa.5.0..sroa_idx.i26, align 4, !tbaa !88, !noalias !164 ; 2 uses
  %spec.store.select40.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.0.0.copyload.i15, i32 18) ; 4 uses
  %i.ab = icmp ugt i32 %.sroa.5.0.copyload.i27, 5
  %.neg.i.i.i = sext i1 %i.ab to i32              ; 2 uses
  %i.ac = add i32 %.sroa.0.sroa.4.0.copyload.i17, %.neg.i.i.i
  %i.ad = add nuw nsw i32 %spec.store.select40.i.i, 1
  %spec.store.select41.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.5.0.copyload.i19, i32 %i.ad)
  %i.ae = icmp ugt i32 %i.ac, %spec.store.select40.i.i
  %i.af = sub nsw i32 %spec.store.select40.i.i, %.neg.i.i.i
  %spec.select42.i = select i1 %i.ae, i32 %i.af, i32 %.sroa.0.sroa.4.0.copyload.i17
  %spec.store.select42.i.i30 = tail call i32 @llvm.umax.i32(i32 %spec.store.select40.i.i, i32 10)
  %.sroa.4.0.i32 = select i1 %i.j, i32 %i.k, i32 %.sroa.4.0.copyload.i25
  store i32 %spec.store.select42.i.i30, ptr %1, align 8, !tbaa !3, !alias.scope !164
  store i32 %spec.select42.i, ptr %.sroa.7.0..sroa_idx.i98, align 4, !tbaa !3, !alias.scope !164
  store i32 %spec.store.select41.i.i, ptr %.sroa.11.0..sroa_idx.i99, align 8, !tbaa !3, !alias.scope !164
  %i.ag = load <2 x i32>, ptr %.sroa.0.sroa.6.0..sroa_idx.i20, align 4, !tbaa !3, !noalias !164
  store <2 x i32> %i.ag, ptr %.sroa.17.0..sroa_idx.i100, align 4, !tbaa !3, !alias.scope !164
  store i32 %.sroa.4.0.i32, ptr %.sroa.1835.0..sroa_idx.i102, align 4, !tbaa !3, !alias.scope !164
  store i32 %.sroa.5.0.copyload.i27, ptr %.sroa.19.0..sroa_idx.i103, align 8, !tbaa !88, !alias.scope !164
  %i.ah = tail call noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %1)
  %i.ai = icmp ugt i64 %i.ah, %i.z
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit40
  %i.aj = tail call noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit40
  %i.ak = phi i64 [ %i.aj, %bb.g ], [ %i.z, %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit40 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.al = getelementptr inbounds nuw [28 x i8], ptr @_ZN11duckdb_zstdL23ZSTD_defaultCParametersE, i64 %.0.i43 ; 6 uses
  %.sroa.0.sroa.0.0.copyload.i = load i32, ptr %i.al, align 4, !tbaa !3, !noalias !167
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.sroa.0.sroa.4.0.copyload.i = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 4, !tbaa !3, !noalias !167
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.0.sroa.5.0.copyload.i = load i32, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 4, !tbaa !3, !noalias !167 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %i.am = load <2 x i32>, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4, !tbaa !3, !noalias !167
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !3, !noalias !167
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !88, !noalias !167 ; 2 uses
  %i.an = add i32 %.sroa.5.0.copyload.i, -6
  %i.ao = icmp ult i32 %i.an, -3
  br i1 %i.ao, label %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.sroa.6.0.copyload.i = load i32, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4, !tbaa !3, !noalias !167
  %i.ap = tail call i32 @llvm.umax.i32(i32 %.sroa.0.sroa.6.0.copyload.i, i32 4)
  %i.aq = tail call i32 @llvm.umin.i32(i32 %i.ap, i32 6)
  %i.ar = or disjoint i32 %i.aq, 24
  %spec.store.select44.i.i = tail call i32 @llvm.umin.i32(i32 %.sroa.0.sroa.5.0.copyload.i, i32 %i.ar)
  br label %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit

_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit: ; preds = %bb.h, %bb.i
  %.sroa.11.2.i = phi i32 [ %.sroa.0.sroa.5.0.copyload.i, %bb.h ], [ %spec.store.select44.i.i, %bb.i ]
  %spec.store.select42.i.i = tail call i32 @llvm.umax.i32(i32 %.sroa.0.sroa.0.0.copyload.i, i32 10)
  %.sroa.4.0.i = select i1 %i.j, i32 %i.k, i32 %.sroa.4.0.copyload.i
  store i32 %spec.store.select42.i.i, ptr %1, align 8, !tbaa !3, !alias.scope !167
  store i32 %.sroa.0.sroa.4.0.copyload.i, ptr %.sroa.7.0..sroa_idx.i98, align 4, !tbaa !3, !alias.scope !167
  store i32 %.sroa.11.2.i, ptr %.sroa.11.0..sroa_idx.i99, align 8, !tbaa !3, !alias.scope !167
  store <2 x i32> %i.am, ptr %.sroa.17.0..sroa_idx.i100, align 4, !tbaa !3, !alias.scope !167
  store i32 %.sroa.4.0.i, ptr %.sroa.1835.0..sroa_idx.i102, align 4, !tbaa !3, !alias.scope !167
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.19.0..sroa_idx.i103, align 8, !tbaa !88, !alias.scope !167
  %i.as = tail call noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %1)
  %i.at = icmp ugt i64 %i.as, %i.ak
  br i1 %i.at, label %bb.j, label %_ZN11duckdb_zstdL30ZSTD_estimateCCtxSize_internalEi.exit

bb.j:                                             ; preds = %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit
  %i.au = tail call noundef i64 @_ZN11duckdb_zstd34ZSTD_estimateCCtxSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef nonnull byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 %1)
  br label %_ZN11duckdb_zstdL30ZSTD_estimateCCtxSize_internalEi.exit

_ZN11duckdb_zstdL30ZSTD_estimateCCtxSize_internalEi.exit: ; preds = %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit, %bb.j
  %i.av = phi i64 [ %i.au, %bb.j ], [ %i.ak, %_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %spec.select = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %.010111) ; 2 uses
  %i.aw = add i32 %.0112, 1
  %exitcond.not = icmp eq i32 %.0112, %0
  br i1 %exitcond.not, label %bb.k, label %bb.b, !llvm.loop !170

bb.k:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_estimateCCtxSize_internalEi.exit
  ret i64 %spec.select
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd40ZSTD_estimateCStreamSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE(ptr noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i32, ptr %i.a, align 4, !tbaa !131
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN11duckdb_zstd29ZSTD_getCParamsFromCCtxParamsEPKNS_18ZSTD_CCtx_params_sEmmNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 %1, ptr noundef nonnull %0, i64 noundef -1, i64 noundef 0, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load i64, ptr %i.d, align 8, !tbaa !94   ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  %..i = select i1 %i.f, i64 131072, i64 %i.e
  %i.g = load i32, ptr %1, align 4, !tbaa !96
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw i64 1, %i.h                      ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %..i, i64 %i.i) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i32, ptr %i.j, align 4, !tbaa !124
  %i.l = icmp eq i32 %i.k, 0
  %i.m = add i64 %spec.select, %i.i
  %i.n = select i1 %i.l, i64 %i.m, i64 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i32, ptr %i.o, align 8, !tbaa !125
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit, label %bb.c

_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit:      ; preds = %bb.b
  %i.r = lshr i64 %spec.select, 8
  %i.s = add nuw i64 %i.r, %spec.select
  %i.t = sub nuw nsw i64 131072, %spec.select
  %i.u = lshr i64 %i.t, 11
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809 = icmp ult i64 %spec.select, 129025
  %i.v = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809, i64 %i.u, i64 0
  %i.w = add nuw i64 %i.s, %i.v
  %.fr.i = freeze i64 %i.w                        ; 2 uses
  %i.x = icmp eq i64 %.fr.i, 0
  %i.y = add i64 %.fr.i, 1
  %i.z = select i1 %i.x, i64 -71, i64 %i.y
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit
  %i.aa = phi i64 [ %i.z, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit ], [ 0, %bb.b ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !91 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.d, label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = add i32 %i.af, -6
  %i.ah = icmp ult i32 %i.ag, -3
  br i1 %i.ah, label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.ad, align 4, !tbaa !96
  %i.aj = icmp ugt i32 %i.ai, 14
  %spec.select.i = select i1 %i.aj, i32 1, i32 2
  br label %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit

_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.ac, %bb.c ], [ %spec.select.i, %bb.e ], [ 2, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = getelementptr i8, ptr %0, i64 192
  %.val = load ptr, ptr %i.al, align 8, !tbaa !152
  %i.am = icmp ne ptr %.val, null
  %i.an = zext i1 %i.am to i32
  %i.ao = call fastcc noundef i64 @_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim(ptr noundef nonnull %1, ptr noundef nonnull %i.ak, i32 noundef 1, i32 noundef %.0.i, i64 noundef %i.n, i64 noundef %i.aa, i64 noundef -1, i32 noundef %i.an, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit
  %.0 = phi i64 [ %i.ao, %_ZN11duckdb_zstdL30ZSTD_resolveRowMatchFinderModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd37ZSTD_estimateCStreamSize_usingCParamsENS_26ZSTD_compressionParametersE(ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 8 ; 8 uses
  %2 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %2, i8 0, i64 216, i1 false), !alias.scope !172
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 2 uses
  store i32 3, ptr %i.a, align 4, !tbaa !58, !alias.scope !172
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !59, !alias.scope !172
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.c, ptr noundef nonnull align 8 dereferenceable(28) %0, i64 28, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !172 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 6
  %i.h = load i32, ptr %1, align 8, !noalias !172
  %i.i = icmp ugt i32 %i.h, 26
  %or.cond.i = select i1 %i.g, i1 %i.i, i1 false
  br i1 %or.cond.i, label %bb.b, label %.thread.i

.thread.i:                                        ; preds = %bb.a
  store i32 2, ptr %i.d, align 8, !tbaa !93, !alias.scope !172
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 140
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.d, align 8, !tbaa !93, !alias.scope !172
  call void @_ZN11duckdb_zstd25ZSTD_ldm_adjustParametersEPNS_11ldmParams_tEPKNS_26ZSTD_compressionParametersE(ptr noundef nonnull %i.d, ptr noundef nonnull align 8 %1)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 3 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !92, !alias.scope !172 ; 2 uses
  %.not.i1.i = icmp eq i32 %.pre.i, 0
  br i1 %.not.i1.i, label %._crit_edge, label %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !172
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %.thread.i
  %i.k = phi i32 [ %i.f, %.thread.i ], [ %.pre, %._crit_edge ]
  %i.l = phi ptr [ %i.j, %.thread.i ], [ %.phi.trans.insert.i, %._crit_edge ] ; 2 uses
  %i.m = icmp sgt i32 %i.k, 6
  br i1 %i.m, label %bb.d, label %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %1, align 8, !tbaa !96, !noalias !172
  %i.o = icmp ugt i32 %i.n, 16
  %i.p = select i1 %i.o, i32 1, i32 2
  br label %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i

_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.q = phi ptr [ %.phi.trans.insert.i, %bb.b ], [ %i.l, %bb.c ], [ %i.l, %bb.d ]
  %.0.i2.i = phi i32 [ %.pre.i, %bb.b ], [ 2, %bb.c ], [ %i.p, %bb.d ]
  store i32 %.0.i2.i, ptr %i.q, align 4, !tbaa !92, !alias.scope !172
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !91, !alias.scope !172 ; 2 uses
  %.not.i3.i = icmp eq i32 %i.s, 0
  br i1 %.not.i3.i, label %bb.e, label %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit

bb.e:                                             ; preds = %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i
  %i.t = load i32, ptr %i.e, align 8, !tbaa !101, !noalias !172
  %i.u = add i32 %i.t, -6
  %i.v = icmp ult i32 %i.u, -3
  br i1 %i.v, label %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %1, align 8, !tbaa !96, !noalias !172
  %i.x = icmp ugt i32 %i.w, 14
  %spec.select.i.i = select i1 %i.x, i32 1, i32 2
  br label %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit

_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit: ; preds = %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i, %bb.e, %bb.f
  %.0.i4.i = phi i32 [ %i.s, %_ZN11duckdb_zstdL29ZSTD_resolveBlockSplitterModeENS_18ZSTD_paramSwitch_eEPKNS_26ZSTD_compressionParametersE.exit.i ], [ %spec.select.i.i, %bb.f ], [ 2, %bb.e ]
  store i32 %.0.i4.i, ptr %i.r, align 8, !tbaa !91, !alias.scope !172
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !94, !alias.scope !172 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  %..i.i = select i1 %i.aa, i64 131072, i64 %i.z
  store i64 %..i.i, ptr %i.y, align 8, !tbaa !94, !alias.scope !172
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !95, !alias.scope !172 ; 2 uses
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !58, !alias.scope !172
  %.not.i5.i = icmp eq i32 %i.ac, 0
  %i.ae = icmp slt i32 %i.ad, 10
  %..i6.i = select i1 %i.ae, i32 2, i32 1
  %.0.i7.i = select i1 %.not.i5.i, i32 %..i6.i, i32 %i.ac
  store i32 %.0.i7.i, ptr %i.ab, align 8, !tbaa !95, !alias.scope !172
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !101
  %i.ah = add i32 %i.ag, -6
  %i.ai = icmp ult i32 %i.ah, -3
  br i1 %i.ai, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit
  store i32 2, ptr %i.r, align 8, !tbaa !91
  %i.aj = call noundef i64 @_ZN11duckdb_zstd40ZSTD_estimateCStreamSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE(ptr noundef nonnull %2)
  store i32 1, ptr %i.r, align 8, !tbaa !91
  %i.ak = call noundef i64 @_ZN11duckdb_zstd40ZSTD_estimateCStreamSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE(ptr noundef nonnull %2)
  %i.al = call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  br label %bb.i

bb.h:                                             ; preds = %_ZN11duckdb_zstdL30ZSTD_makeCCtxParamsFromCParamsENS_26ZSTD_compressionParametersE.exit
  %i.am = call noundef i64 @_ZN11duckdb_zstd40ZSTD_estimateCStreamSize_usingCCtxParamsEPKNS_18ZSTD_CCtx_params_sE(ptr noundef nonnull %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i64 [ %i.al, %bb.g ], [ %i.am, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTD_estimateCStreamSizeEi(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %1 = alloca %"struct.duckdb_zstd::ZSTD_compressionParameters", align 8 ; 9 uses
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 1)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL33ZSTD_estimateCStreamSize_internalEi.exit
  %.013 = phi i32 [ %i.a, %bb.a ], [ %i.n, %_ZN11duckdb_zstdL33ZSTD_estimateCStreamSize_internalEi.exit ] ; 7 uses
  %.01012 = phi i64 [ 0, %bb.a ], [ %spec.select, %_ZN11duckdb_zstdL33ZSTD_estimateCStreamSize_internalEi.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.b = icmp eq i32 %.013, 0
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp slt i32 %.013, 0
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %narrow.i.i = tail call i32 @llvm.umin.i32(i32 %.013, i32 22)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i.i = phi i64 [ %spec.select.i.i, %bb.d ], [ 3, %bb.b ], [ 0, %bb.c ]
  %i.d = getelementptr inbounds nuw [28 x i8], ptr @_ZN11duckdb_zstdL23ZSTD_defaultCParametersE, i64 %.0.i.i ; 6 uses
  %.sroa.0.sroa.0.0.copyload.i.i = load i32, ptr %i.d, align 4, !tbaa !3, !noalias !175
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.0.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !3, !noalias !175
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 4, !tbaa !3, !noalias !175 ; 2 uses
  %.sroa.0.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %i.e = load <2 x i32>, ptr %.sroa.0.sroa.6.0..sroa_idx.i.i, align 4, !tbaa !3, !noalias !175
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !3, !noalias !175
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstd15ZSTD_seqToCodesEPKNS_10seqStore_tE:bb.a

_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit:            ; preds = %bb.b, %bb.c
  %i.ae = phi i8 [ %i.aa, %bb.b ], [ %i.ad, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !220
  %i.ag = trunc nuw nsw i32 %i.s to i8
  %i.ah = xor i8 %i.ag, 31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !220
  %i.aj = icmp ugt i16 %i.u, 127
  br i1 %i.aj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit
  %i.ak = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 65536) %i.v, i1 true)
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %i.am = sub nuw nsw i8 67, %i.al
  br label %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit

bb.e:                                             ; preds = %_ZN11duckdb_zstdL11ZSTD_LLcodeEj.exit
  %i.an = zext nneg i16 %i.u to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @_ZZN11duckdb_zstdL11ZSTD_MLcodeEjE7ML_Code, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !220
  br label %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit

_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit:            ; preds = %bb.d, %bb.e
  %i.aq = phi i8 [ %i.am, %bb.d ], [ %i.ap, %bb.e ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !221

._crit_edge:                                      ; preds = %_ZN11duckdb_zstdL11ZSTD_MLcodeEj.exit, %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !222 ; 2 uses
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !223
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ax
  store i8 35, ptr %i.ay, align 1, !tbaa !220
  %.pr = load i32, ptr %i.as, align 8, !tbaa !222
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.az = phi i32 [ %.pr, %bb.f ], [ %i.at, %._crit_edge ]
  %i.ba = icmp eq i32 %i.az, 2
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !223
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bd
  store i8 52, ptr %i.be, align 1, !tbaa !220
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @_ZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eE(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -6
  %i.b = icmp ult i32 %i.a, -3
  %i.c = icmp ne i32 %1, 1
  %.not8 = or i1 %i.b, %i.c
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [24 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE24rowBasedBlockCompressors, i64 %i.d
  %i.f = zext nneg i32 %0 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  %i.i = getelementptr inbounds [80 x i8], ptr @_ZZN11duckdb_zstd26ZSTD_selectBlockCompressorENS_13ZSTD_strategyENS_18ZSTD_paramSwitch_eENS_15ZSTD_dictMode_eEE15blockCompressor, i64 %i.d
  %i.j = sext i32 %0 to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.j
  %.0.in = select i1 %.not8, ptr %i.k, ptr %i.h
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !62
  ret ptr %.0
}

declare noundef i64 @_ZN11duckdb_zstd23ZSTD_compressBlock_fastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_doubleFastEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd25ZSTD_compressBlock_greedyEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd23ZSTD_compressBlock_lazyEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd24ZSTD_compressBlock_lazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd26ZSTD_compressBlock_btlazy2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd24ZSTD_compressBlock_btoptEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd26ZSTD_compressBlock_btultraEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd27ZSTD_compressBlock_btultra2EPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd31ZSTD_compressBlock_fast_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd37ZSTD_compressBlock_doubleFast_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd33ZSTD_compressBlock_greedy_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd31ZSTD_compressBlock_lazy_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd32ZSTD_compressBlock_lazy2_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd34ZSTD_compressBlock_btlazy2_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd32ZSTD_compressBlock_btopt_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd34ZSTD_compressBlock_btultra_extDictEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd38ZSTD_compressBlock_fast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd44ZSTD_compressBlock_doubleFast_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd40ZSTD_compressBlock_greedy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd38ZSTD_compressBlock_lazy_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd39ZSTD_compressBlock_lazy2_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd41ZSTD_compressBlock_btlazy2_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd39ZSTD_compressBlock_btopt_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd41ZSTD_compressBlock_btultra_dictMatchStateEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd45ZSTD_compressBlock_greedy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd43ZSTD_compressBlock_lazy_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd44ZSTD_compressBlock_lazy2_dedicatedDictSearchEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd29ZSTD_compressBlock_greedy_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd27ZSTD_compressBlock_lazy_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd28ZSTD_compressBlock_lazy2_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd37ZSTD_compressBlock_greedy_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd35ZSTD_compressBlock_lazy_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd36ZSTD_compressBlock_lazy2_extDict_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd44ZSTD_compressBlock_greedy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd42ZSTD_compressBlock_lazy_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd43ZSTD_compressBlock_lazy2_dictMatchState_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd49ZSTD_compressBlock_greedy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd47ZSTD_compressBlock_lazy_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

declare noundef i64 @_ZN11duckdb_zstd48ZSTD_compressBlock_lazy2_dedicatedDictSearch_rowEPNS_17ZSTD_matchState_tEPNS_10seqStore_tEPjPKvm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN11duckdb_zstd18ZSTD_resetSeqStoreEPNS_10seqStore_tE(ptr noundef captures(none) initializes((8, 16), (24, 32), (72, 76)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !224
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.b, ptr %i.c, align 8, !tbaa !225
  %i.d = load ptr, ptr %0, align 8, !tbaa !210
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !214
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.f, align 8, !tbaa !222
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i64 2, 6166929089745999191) i64 @_ZN11duckdb_zstd18ZSTD_sequenceBoundEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = udiv i64 %0, 3
  %i.b = lshr i64 %0, 10
  %i.c = add nuw nsw i64 %i.b, 2
  %i.d = add nuw nsw i64 %i.c, %i.a
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd22ZSTD_generateSequencesEPNS_11ZSTD_CCtx_sEPNS_13ZSTD_SequenceEmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %"struct.duckdb_zstd::ZSTD_outBuffer_s", align 8 ; 6 uses
  %6 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 6 uses
  %i.a = icmp ugt i64 %4, -71777214294589697
  br i1 %i.a, label %.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %4, 8
  %i.c = add nuw i64 %i.b, %4
  %i.d = sub nuw nsw i64 131072, %4
  %i.e = lshr i64 %i.d, 11
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809 = icmp ult i64 %4, 129025
  %i.f = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809, i64 %i.e, i64 0
  %i.g = add i64 %i.c, %i.f
  %.fr.i = freeze i64 %i.g                        ; 2 uses
  %i.h = icmp eq i64 %.fr.i, 0
  br i1 %i.h, label %.thread.i, label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

.thread.i:                                        ; preds = %bb.b, %bb.a
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit: ; preds = %bb.b, %.thread.i
  %i.i = phi i64 [ -72, %.thread.i ], [ %.fr.i, %bb.b ] ; 2 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #26 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !122
  %i.m = and i64 %i.l, 4294967295
  %.not39 = icmp eq i64 %i.m, 0
  br i1 %.not39, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.o = load i32, ptr %i.n, align 4, !tbaa !131
  %.not41 = icmp eq i32 %i.o, 0
  br i1 %.not41, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %i.j, null
  br i1 %i.p, label %bb.f, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i32 1, ptr %i.q, align 8, !tbaa !3
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 920
  store ptr %1, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !78
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.t, align 8, !tbaa !102
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 0, ptr %i.u, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %i.j, ptr %5, align 8, !tbaa !226
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.i, ptr %i.v, align 8, !tbaa !228
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !229
  store ptr %3, ptr %6, align 8, !tbaa !230
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.x, align 8, !tbaa !231
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !232
  %i.z = load <2 x i32>, ptr %i.r, align 4, !tbaa !137
  store i32 1, ptr %i.r, align 4, !tbaa !233
  store i32 1, ptr %i.s, align 8, !tbaa !234
  %i.aa = call noundef i64 @_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 2) ; 3 uses
  %i.ab = load i64, ptr %i.w, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store <2 x i32> %i.z, ptr %i.r, align 4, !tbaa !137
  %i.ac = icmp ult i64 %i.aa, -119
  %.not20.i = icmp eq i64 %i.aa, 0
  %spec.select.i = select i1 %.not20.i, i64 %i.ab, i64 -70
  %.1.i = select i1 %i.ac, i64 %spec.select.i, i64 %i.aa ; 2 uses
  tail call void @free(ptr noundef nonnull %i.j) #27
  %i.ad = icmp ult i64 %.1.i, -119
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !235
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, %bb.c, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit, %bb.e
  %.5 = phi i64 [ -40, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit ], [ %i.ae, %bb.e ], [ %.1.i, %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit ], [ -40, %bb.c ], [ -64, %bb.d ]
  ret i64 %.5
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd14ZSTD_compress2EPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef initializes((760, 768), (3608, 3612)) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %"struct.duckdb_zstd::ZSTD_outBuffer_s", align 8 ; 6 uses
  %6 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3608
  store i32 0, ptr %i.c, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760
  store i64 0, ptr %i.d, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %1, ptr %5, align 8, !tbaa !226
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.e, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !229
  store ptr %3, ptr %6, align 8, !tbaa !230
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %4, ptr %i.g, align 8, !tbaa !231
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 0, ptr %i.h, align 8, !tbaa !232
  %i.i = load <2 x i32>, ptr %i.a, align 4, !tbaa !137
  store i32 1, ptr %i.a, align 4, !tbaa !233
  store i32 1, ptr %i.b, align 8, !tbaa !234
  %i.j = call noundef i64 @_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 2) ; 3 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !229
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  store <2 x i32> %i.i, ptr %i.a, align 4, !tbaa !137
  %i.l = icmp ult i64 %i.j, -119
  %.not20 = icmp eq i64 %i.j, 0
  %spec.select = select i1 %.not20, i64 %i.k, i64 -70
  %.1 = select i1 %i.l, i64 %spec.select, i64 %i.j
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef i64 @_ZN11duckdb_zstd25ZSTD_mergeBlockDelimitersEPNS_13ZSTD_SequenceEm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #13 {
bb.a:
  %.not23 = icmp eq i64 %1, 0
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = add i64 %1, -1                           ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.b = add i64 %1, -2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.split, %bb.f
  %.022 = phi i64 [ 0, %.lr.ph.split ], [ %.1, %bb.f ] ; 3 uses
  %.01820 = phi i64 [ 0, %.lr.ph.split ], [ %i.p, %bb.f ] ; 3 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.01820 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !236
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !238
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !239
  %i.k = getelementptr i8, ptr %i.c, i64 20       ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !239
  %i.m = add i32 %i.l, %i.j
  store i32 %i.m, ptr %i.k, align 4, !tbaa !239
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.022
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !240
  %i.o = add i64 %.022, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi i64 [ %.022, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.p = add nuw i64 %.01820, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %.01820, %i.b
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.b, !llvm.loop !241

._crit_edge.loopexit.peel.begin:                  ; preds = %bb.f, %.lr.ph
  %i.q = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.f ]   ; 4 uses
  %i.r = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.f ]  ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.r ; 5 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !236
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !238
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.loopexit.peel.begin
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.y, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !240
  %i.z = add i64 %i.q, 1
  br label %._crit_edge

bb.i:                                             ; preds = %bb.g
  %.not.peel = icmp eq i64 %i.r, %i.a
  br i1 %.not.peel, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !239
  %i.ac = getelementptr i8, ptr %i.s, i64 20      ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !239
  %i.ae = add i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !239
  br label %._crit_edge

end_hunk_2
begin_hunk_3_@_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE:bb.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !367  ; 2 uses
  %i.r = add i64 %i.q, %i.o                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.u = load i32, ptr %i.t, align 4, !tbaa !233
  %i.v = icmp eq i32 %i.u, 1
  %i.w = icmp eq i32 %3, 0
  %or.cond = and i1 %i.w, %i.v
  %i.x = icmp ult i64 %i.r, 131072
  %or.cond3 = select i1 %or.cond, i1 %i.x, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.not63 = icmp eq i64 %i.q, 0
  br i1 %.not63, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %2, align 8, !tbaa !230
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !369
  %.not64 = icmp eq ptr %i.y, %i.aa
  br i1 %.not64, label %bb.h, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3624
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !370
  %.not65 = icmp eq i64 %i.g, %i.ac
  br i1 %.not65, label %bb.i, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.i:                                             ; preds = %bb.h, %bb.f
  store i64 %i.i, ptr %i.f, align 8, !tbaa !232
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !371
  store i64 %i.r, ptr %i.p, align 8, !tbaa !367
  %i.ae = load i32, ptr %i.s, align 8, !tbaa !372
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = select i1 %i.af, i64 6, i64 2
  br label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.j:                                             ; preds = %bb.e
  %i.ah = tail call fastcc noundef i64 @_ZN11duckdb_zstdL30ZSTD_CCtx_init_compressStream2EPNS_11ZSTD_CCtx_sENS_17ZSTD_EndDirectiveEm(ptr noundef nonnull %0, i32 noundef %3, i64 noundef %i.r) ; 2 uses
  %i.ai = icmp ult i64 %i.ah, -119
  br i1 %i.ai, label %bb.k, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !366 ; 3 uses
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !371
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !373
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.n, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit

bb.n:                                             ; preds = %bb.m
  %i.aq = load i64, ptr %i.c, align 8, !tbaa !228
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !229
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 3648
  store i64 %i.as, ptr %i.at, align 8, !tbaa !374
  br label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit

_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit: ; preds = %._ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit_crit_edge, %bb.m, %bb.n
  %i.au = phi i32 [ %.pre, %._ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit_crit_edge ], [ %i.ak, %bb.m ], [ %i.ak, %bb.n ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 3 uses
  %i.aw = icmp eq i32 %i.au, 1                    ; 2 uses
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.ay = load ptr, ptr %2, align 8, !tbaa !230
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i, %i.ay
  br i1 %.not.i, label %bb.p, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.p:                                             ; preds = %bb.o
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3632
  %.sroa.43.0.copyload.i = load i64, ptr %.sroa.43.0..sroa_idx.i, align 8, !tbaa !78
  %i.az = load i64, ptr %i.f, align 8, !tbaa !232
  %.not14.i = icmp eq i64 %.sroa.43.0.copyload.i, %i.az
  br i1 %.not14.i, label %bb.q, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.q:                                             ; preds = %bb.p, %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !373
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bd = load i64, ptr %i.c, align 8, !tbaa !228
  %i.be = load i64, ptr %i.a, align 8, !tbaa !229
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 3648
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !374
  %.not15.not.i = icmp eq i64 %i.bh, %i.bf
  br i1 %.not15.not.i, label %bb.s, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bi = load ptr, ptr %2, align 8, !tbaa !230   ; 4 uses
  %.not.i69 = icmp eq ptr %i.bi, null
  br i1 %.not.i69, label %.thread.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = load i64, ptr %i.h, align 8, !tbaa !231
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bj
  %i.bl = load i64, ptr %i.f, align 8, !tbaa !232
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bl
  br label %.thread.i

.thread.i:                                        ; preds = %bb.t, %bb.s
  %i.bn = phi ptr [ %i.bk, %bb.t ], [ null, %bb.s ] ; 7 uses
  %i.bo = phi ptr [ %i.bm, %bb.t ], [ null, %bb.s ] ; 3 uses
  %i.bp = load ptr, ptr %1, align 8, !tbaa !226   ; 4 uses
  %.not259.i = icmp eq ptr %i.bp, null
  br i1 %.not259.i, label %.thread284.i, label %bb.u

bb.u:                                             ; preds = %.thread.i
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !228
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !229
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bt
  br label %.thread284.i

.thread284.i:                                     ; preds = %bb.u, %.thread.i
  %i.bv = phi i64 [ %i.bs, %bb.u ], [ 0, %.thread.i ] ; 4 uses
  %i.bw = phi ptr [ %i.bu, %bb.u ], [ null, %.thread.i ]
  br i1 %i.aw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread284.i
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3640 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !367 ; 2 uses
  %i.bz = load i64, ptr %i.f, align 8, !tbaa !232
  %i.ca = sub i64 %i.bz, %i.by
  store i64 %i.ca, ptr %i.f, align 8, !tbaa !232
  %.not260.i = icmp eq ptr %i.bo, null
  %i.cb = sub i64 0, %i.by
  %i.cc = getelementptr inbounds i8, ptr %i.bo, i64 %i.cb
  %.0210.i = select i1 %.not260.i, ptr null, ptr %i.cc
  store i64 0, ptr %i.bx, align 8, !tbaa !367
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread284.i
  %.1211.i = phi ptr [ %.0210.i, %bb.v ], [ %i.bo, %.thread284.i ]
  %i.cd = icmp eq i32 %3, 2                       ; 3 uses
  %i.ce = ptrtoint ptr %i.bn to i64               ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 3560 ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3640 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3568 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3536 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 3552 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 3576 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 3584
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 3612 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 3544
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3592 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 3600 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 3 uses
  br label %.thread289.i.outer

.thread289.i.outer:                               ; preds = %.thread289.i.outer.backedge, %bb.w
  %.2212315.i.ph = phi ptr [ %.1211.i, %bb.w ], [ %.2212315.i.ph.be, %.thread289.i.outer.backedge ] ; 11 uses
  %.0219314.i.ph = phi ptr [ %i.bw, %bb.w ], [ %.0219314.i.ph.be, %.thread289.i.outer.backedge ] ; 16 uses
  %i.cs = load i32, ptr %i.l, align 8, !tbaa !102
  br label %.thread289.i

.thread289.i:                                     ; preds = %.thread289.i.outer, %.thread289.i
  switch i32 %i.cs, label %.thread289.i [
    i32 0, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread
    i32 1, label %bb.x
    i32 2, label %._crit_edge.i
  ], !llvm.loop !375

._crit_edge.i:                                    ; preds = %.thread289.i
  %.pre316.i = load i64, ptr %i.cp, align 8, !tbaa !376
  %.pre317.i = load i64, ptr %i.cq, align 8, !tbaa !377
  br label %bb.bj

bb.x:                                             ; preds = %.thread289.i
  br i1 %i.cd, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.ct = ptrtoint ptr %.0219314.i.ph to i64
  %i.cu = sub i64 %i.bv, %i.ct                    ; 2 uses
  %i.cv = ptrtoint ptr %.2212315.i.ph to i64
  %i.cw = sub i64 %i.ce, %i.cv                    ; 6 uses
  %i.cx = icmp ugt i64 %i.cw, -71777214294589697
  br i1 %i.cx, label %.thread.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cy = lshr i64 %i.cw, 8
  %i.cz = add nuw i64 %i.cy, %i.cw
  %i.da = sub nuw nsw i64 131072, %i.cw
  %i.db = lshr i64 %i.da, 11
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809 = icmp ult i64 %i.cw, 129025
  %i.dc = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809, i64 %i.db, i64 0
  %i.dd = add i64 %i.cz, %i.dc
  %.fr.i.i = freeze i64 %i.dd                     ; 2 uses
  %i.de = icmp eq i64 %.fr.i.i, 0
  br i1 %i.de, label %.thread.i.i, label %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit.i

.thread.i.i:                                      ; preds = %bb.z, %bb.y
  br label %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit.i

_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit.i:    ; preds = %.thread.i.i, %bb.z
  %i.df = phi i64 [ -72, %.thread.i.i ], [ %.fr.i.i, %bb.z ]
  %.not263.i = icmp ult i64 %i.cu, %i.df
  br i1 %.not263.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit.i
  %i.dg = load i32, ptr %i.ba, align 8, !tbaa !373
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit.i
  %i.di = load i64, ptr %i.cf, align 8, !tbaa !180
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dk = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef nonnull %0, ptr noundef %.0219314.i.ph, i64 noundef %i.cu, ptr noundef %.2212315.i.ph, i64 noundef %i.cw) ; 3 uses
  %i.dl = icmp ult i64 %i.dk, -119
  br i1 %i.dl, label %.thread285.i, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

.thread285.i:                                     ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %.0219314.i.ph, i64 %i.dk
  store i32 1, ptr %i.cn, align 4, !tbaa !378
  store i32 0, ptr %i.l, align 8, !tbaa !102
  store i64 0, ptr %i.cr, align 8, !tbaa !139
  br label %.loopexit.i

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.x
  %i.dn = load i32, ptr %i.av, align 4, !tbaa !366
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dp = load i64, ptr %i.ci, align 8, !tbaa !368
  %i.dq = load i64, ptr %i.cf, align 8, !tbaa !180 ; 3 uses
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = ptrtoint ptr %.2212315.i.ph to i64
  %i.dt = sub i64 %i.ce, %i.ds
  %i.du = tail call i64 @llvm.umin.i64(i64 %i.dr, i64 %i.dt) ; 4 uses
  %.not.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = load ptr, ptr %i.cj, align 8, !tbaa !179
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dw, ptr readonly align 1 %.2212315.i.ph, i64 %i.du, i1 false)
  %.pre.i = load i64, ptr %i.cf, align 8, !tbaa !180
  br label %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit.i

_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit.i: ; preds = %bb.af, %bb.ae
  %i.dx = phi i64 [ %i.dq, %bb.ae ], [ %.pre.i, %bb.af ]
  %i.dy = add i64 %i.dx, %i.du                    ; 3 uses
  store i64 %i.dy, ptr %i.cf, align 8, !tbaa !180
  %.not264.i = icmp eq ptr %.2212315.i.ph, null
  %i.dz = getelementptr inbounds nuw i8, ptr %.2212315.i.ph, i64 %i.du
  %spec.select.i = select i1 %.not264.i, ptr null, ptr %i.dz ; 5 uses
  switch i32 %3, label %bb.am [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
  ]

bb.ag:                                            ; preds = %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit.i
  %i.ea = load i64, ptr %i.ci, align 8, !tbaa !368
  %i.eb = icmp ult i64 %i.dy, %i.ea
  br i1 %i.eb, label %.loopexit.i, label %bb.am

bb.ah:                                            ; preds = %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit.i
  %i.ec = load i64, ptr %i.ck, align 8, !tbaa !181
  %i.ed = icmp eq i64 %i.dy, %i.ec
  br i1 %i.ed, label %.loopexit.i, label %bb.am

bb.ai:                                            ; preds = %bb.ad
  switch i32 %3, label %.thread293.i [
    i32 0, label %bb.aj
    i32 1, label %bb.al
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ee = ptrtoint ptr %.2212315.i.ph to i64
  %i.ef = sub i64 %i.ce, %i.ee                    ; 2 uses
  %i.eg = load i64, ptr %i.cg, align 8, !tbaa !268
  %i.eh = icmp ult i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store i64 %i.ef, ptr %i.ch, align 8, !tbaa !367
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.ai
  %.old.i = icmp eq ptr %.2212315.i.ph, %i.bn
  br i1 %.old.i, label %.loopexit.i, label %.thread293.i

.thread293.i:                                     ; preds = %bb.al, %bb.ai
  %i.ei = ptrtoint ptr %.0219314.i.ph to i64
  %i.ej = sub i64 %i.bv, %i.ei
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj, %bb.ah, %bb.ag, %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit.i
  %.5215.ph.i = phi ptr [ %spec.select.i, %bb.ag ], [ %spec.select.i, %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit.i ], [ %spec.select.i, %bb.ah ], [ %.2212315.i.ph, %bb.aj ] ; 2 uses
  %.pr.i = load i32, ptr %i.av, align 4, !tbaa !366
  %i.ek = icmp eq i32 %.pr.i, 0
  %i.el = ptrtoint ptr %.0219314.i.ph to i64
  %i.em = sub i64 %i.bv, %i.el                    ; 2 uses
  br i1 %i.ek, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.en = load i64, ptr %i.cf, align 8, !tbaa !180
  %i.eo = load i64, ptr %i.ck, align 8, !tbaa !181
  %i.ep = sub i64 %i.en, %i.eo
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am, %.thread293.i
  %i.eq = phi i64 [ %i.ej, %.thread293.i ], [ %i.em, %bb.am ]
  %.5215299.i = phi ptr [ %.2212315.i.ph, %.thread293.i ], [ %.5215.ph.i, %bb.am ] ; 2 uses
  %i.er = ptrtoint ptr %.5215299.i to i64
  %i.es = sub i64 %i.ce, %i.er
  %i.et = load i64, ptr %i.cg, align 8, !tbaa !268
  %..i = tail call i64 @llvm.umin.i64(i64 %i.es, i64 %i.et)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.eu = phi i64 [ %i.em, %bb.an ], [ %i.eq, %bb.ao ] ; 3 uses
  %i.ev = phi i1 [ true, %bb.an ], [ false, %bb.ao ]
  %.5215298.i = phi ptr [ %.5215.ph.i, %bb.an ], [ %.5215299.i, %bb.ao ] ; 6 uses
  %i.ew = phi i64 [ %i.ep, %bb.an ], [ %..i, %bb.ao ] ; 10 uses
  %i.ex = icmp ugt i64 %i.ew, -71777214294589697
  br i1 %i.ex, label %.thread.i280.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ey = lshr i64 %i.ew, 8
  %i.ez = add nuw i64 %i.ey, %i.ew
  %i.fa = sub nuw nsw i64 131072, %i.ew
  %i.fb = lshr i64 %i.fa, 11
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3280 = icmp ult i64 %i.ew, 129025
  %i.fc = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3280, i64 %i.fb, i64 0
  %i.fd = add i64 %i.ez, %i.fc
  %.fr.i279.i = freeze i64 %i.fd                  ; 2 uses
  %i.fe = icmp eq i64 %.fr.i279.i, 0
  br i1 %i.fe, label %.thread.i280.i, label %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit281.i

.thread.i280.i:                                   ; preds = %bb.aq, %bb.ap
  br label %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit281.i

_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit281.i: ; preds = %.thread.i280.i, %bb.aq
  %i.ff = phi i64 [ -72, %.thread.i280.i ], [ %.fr.i279.i, %bb.aq ]
  %.not265.i = icmp ult i64 %i.eu, %i.ff
  br i1 %.not265.i, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit281.i
  %i.fg = load i32, ptr %i.ba, align 8, !tbaa !373
  %i.fh = icmp eq i32 %i.fg, 1
  br i1 %i.fh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fi = load ptr, ptr %i.cl, align 8, !tbaa !379
  %i.fj = load i64, ptr %i.cm, align 8, !tbaa !325
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit281.i
  %.0244.i = phi i64 [ %i.fj, %bb.as ], [ %i.eu, %bb.ar ], [ %i.eu, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit281.i ] ; 4 uses
  %.0242.i = phi ptr [ %i.fi, %bb.as ], [ %.0219314.i.ph, %bb.ar ], [ %.0219314.i.ph, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit281.i ] ; 5 uses
  br i1 %i.ev, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.fk = icmp eq ptr %.5215298.i, %i.bn
  %i.fl = select i1 %i.cd, i1 %i.fk, i1 false     ; 2 uses
  %i.fm = zext i1 %i.fl to i32                    ; 2 uses
  %i.fn = load ptr, ptr %i.cj, align 8, !tbaa !179
  %i.fo = load i64, ptr %i.ck, align 8, !tbaa !181
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo ; 2 uses
  br i1 %i.fl, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fq = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef nonnull %0, ptr noundef %.0242.i, i64 noundef %.0244.i, ptr noundef %i.fp, i64 noundef %i.ew)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.fr = tail call fastcc noundef i64 @_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj(ptr noundef nonnull %0, ptr noundef %.0242.i, i64 noundef %.0244.i, ptr noundef %i.fp, i64 noundef %i.ew, i32 noundef 1, i32 noundef 0)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fs = phi i64 [ %i.fq, %bb.av ], [ %i.fr, %bb.aw ] ; 3 uses
  %i.ft = icmp ult i64 %i.fs, -119
  br i1 %i.ft, label %bb.ay, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.fm, ptr %i.cn, align 4, !tbaa !378
  %i.fu = load i64, ptr %i.cf, align 8, !tbaa !180 ; 2 uses
  %i.fv = load i64, ptr %i.cg, align 8, !tbaa !268 ; 2 uses
  %i.fw = add i64 %i.fv, %i.fu                    ; 2 uses
  store i64 %i.fw, ptr %i.ci, align 8, !tbaa !368
  %i.fx = load i64, ptr %i.co, align 8, !tbaa !324
  %i.fy = icmp ugt i64 %i.fw, %i.fx
  br i1 %i.fy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i64 0, ptr %i.cf, align 8, !tbaa !180
  store i64 %i.fv, ptr %i.ci, align 8, !tbaa !368
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fz = phi i64 [ %i.fu, %bb.ay ], [ 0, %bb.az ]
  store i64 %i.fz, ptr %i.ck, align 8, !tbaa !181
  br label %bb.bg

bb.bb:                                            ; preds = %bb.at
  %i.ga = getelementptr inbounds nuw i8, ptr %.5215298.i, i64 %i.ew ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.bn
  %i.gc = select i1 %i.cd, i1 %i.gb, i1 false     ; 2 uses
  %i.gd = zext i1 %i.gc to i32                    ; 2 uses
  br i1 %i.gc, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ge = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef nonnull %0, ptr noundef %.0242.i, i64 noundef %.0244.i, ptr noundef %.5215298.i, i64 noundef %i.ew)
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.gf = tail call fastcc noundef i64 @_ZN11duckdb_zstdL30ZSTD_compressContinue_internalEPNS_11ZSTD_CCtx_sEPvmPKvmjj(ptr noundef nonnull %0, ptr noundef %.0242.i, i64 noundef %.0244.i, ptr noundef %.5215298.i, i64 noundef %i.ew, i32 noundef 1, i32 noundef 0)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.gg = phi i64 [ %i.ge, %bb.bc ], [ %i.gf, %bb.bd ] ; 3 uses
  %i.gh = icmp ult i64 %i.gg, -119
  br i1 %i.gh, label %bb.bf, label %_ZN11duckdb_zstdL26ZSTD_setBufferExpectationsEPNS_11ZSTD_CCtx_sEPKNS_16ZSTD_outBuffer_sEPKNS_15ZSTD_inBuffer_sE.exit.thread

bb.bf:                                            ; preds = %bb.be
  %.not266.i = icmp eq ptr %.5215298.i, null
  %spec.select275.i = select i1 %.not266.i, ptr null, ptr %i.ga
  store i32 %i.gd, ptr %i.cn, align 4, !tbaa !378
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ba
  %i.gi = phi i32 [ %i.fm, %bb.ba ], [ %i.gd, %bb.bf ]
  %.0243.i = phi i64 [ %i.fs, %bb.ba ], [ %i.gg, %bb.bf ] ; 3 uses
  %.7217.i = phi ptr [ %.5215298.i, %bb.ba ], [ %spec.select275.i, %bb.bf ] ; 3 uses
  %i.gj = icmp eq ptr %.0242.i, %.0219314.i.ph
  br i1 %i.gj, label %bb.bh, label %.critedge.i

bb.bh:                                            ; preds = %bb.bg
  %i.gk = getelementptr inbounds nuw i8, ptr %.0219314.i.ph, i64 %.0243.i ; 2 uses
  %.not269.i = icmp eq i32 %i.gi, 0
  br i1 %.not269.i, label %.thread289.i.outer.backedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.l, align 8, !tbaa !102
  store i64 0, ptr %i.cr, align 8, !tbaa !139
  br label %.loopexit.i

.critedge.i:                                      ; preds = %bb.bg
  store i64 %.0243.i, ptr %i.cp, align 8, !tbaa !376
  store i64 0, ptr %i.cq, align 8, !tbaa !377
  store i32 2, ptr %i.l, align 8, !tbaa !102
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge.i, %._crit_edge.i
  %i.gl = phi i64 [ 0, %.critedge.i ], [ %.pre317.i, %._crit_edge.i ] ; 3 uses
  %i.gm = phi i64 [ %.0243.i, %.critedge.i ], [ %.pre316.i, %._crit_edge.i ]
  %.9.i = phi ptr [ %.7217.i, %.critedge.i ], [ %.2212315.i.ph, %._crit_edge.i ] ; 3 uses
  %i.gn = sub i64 %i.gm, %i.gl                    ; 2 uses
  %i.go = ptrtoint ptr %.0219314.i.ph to i64
  %i.gp = sub i64 %i.bv, %i.go                    ; 2 uses
  %i.gq = tail call i64 @llvm.umin.i64(i64 %i.gp, i64 %i.gn) ; 4 uses
  %.not.i282.i = icmp eq i64 %i.gq, 0
  br i1 %.not.i282.i, label %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit283.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gr = load ptr, ptr %i.cl, align 8, !tbaa !379
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0219314.i.ph, ptr readonly align 1 %i.gs, i64 %i.gq, i1 false)
  %.pre318.i = load i64, ptr %i.cq, align 8, !tbaa !377
  br label %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit283.i

_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit283.i: ; preds = %bb.bk, %bb.bj
  %i.gt = phi i64 [ %i.gl, %bb.bj ], [ %.pre318.i, %bb.bk ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.0219314.i.ph, i64 %i.gq ; 3 uses
  %i.gv = add i64 %i.gt, %i.gq
  store i64 %i.gv, ptr %i.cq, align 8, !tbaa !377
  %.not271.not.i = icmp ugt i64 %i.gn, %i.gp
  br i1 %.not271.not.i, label %.loopexit.i, label %bb.bl

bb.bl:                                            ; preds = %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit283.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i8 0, i64 16, i1 false)
  %i.gw = load i32, ptr %i.cn, align 4, !tbaa !378
  %.not272.i = icmp eq i32 %i.gw, 0
  br i1 %.not272.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.l, align 8, !tbaa !102
  store i64 0, ptr %i.cr, align 8, !tbaa !139
  br label %.loopexit.i

bb.bn:                                            ; preds = %bb.bl
  store i32 1, ptr %i.l, align 8, !tbaa !102
  br label %.thread289.i.outer.backedge

.thread289.i.outer.backedge:                      ; preds = %bb.bn, %bb.bh
  %.2212315.i.ph.be = phi ptr [ %.7217.i, %bb.bh ], [ %.9.i, %bb.bn ]
  %.0219314.i.ph.be = phi ptr [ %i.gk, %bb.bh ], [ %i.gu, %bb.bn ]
  br label %.thread289.i.outer, !llvm.loop !375

.loopexit.i:                                      ; preds = %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit283.i, %bb.al, %bb.ah, %bb.ag, %bb.bm, %bb.bi, %bb.ak, %.thread285.i
  %.5224.ph.i = phi ptr [ %i.gk, %bb.bi ], [ %i.gu, %bb.bm ], [ %i.dm, %.thread285.i ], [ %.0219314.i.ph, %bb.ak ], [ %.0219314.i.ph, %bb.ag ], [ %i.gu, %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit283.i ], [ %.0219314.i.ph, %bb.ah ], [ %.0219314.i.ph, %bb.al ]
  %.10.ph.i = phi ptr [ %.7217.i, %bb.bi ], [ %.9.i, %bb.bm ], [ %i.bn, %.thread285.i ], [ %i.bn, %bb.ak ], [ %spec.select.i, %bb.ag ], [ %.9.i, %_ZN11duckdb_zstdL14ZSTD_limitCopyEPvmPKvm.exit283.i ], [ %spec.select.i, %bb.ah ], [ %i.bn, %bb.al ]
  %i.gx = ptrtoint ptr %.10.ph.i to i64
  %i.gy = ptrtoint ptr %i.bi to i64
  %i.gz = sub i64 %i.gx, %i.gy
  store i64 %i.gz, ptr %i.f, align 8, !tbaa !232
  %i.ha = ptrtoint ptr %.5224.ph.i to i64
  %i.hb = ptrtoint ptr %i.bp to i64
  %i.hc = sub i64 %i.ha, %i.hb
  store i64 %i.hc, ptr %i.a, align 8, !tbaa !229
  %i.hd = load i32, ptr %i.cn, align 4, !tbaa !378
  %.not262.i = icmp eq i32 %i.hd, 0
  %.pre108 = load i32, ptr %i.av, align 4, !tbaa !366 ; 2 uses
  br i1 %.not262.i, label %bb.bo, label %_ZN11duckdb_zstdL27ZSTD_compressStream_genericEPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE.exit.thread77

bb.bo:                                            ; preds = %.loopexit.i
  %i.he = icmp eq i32 %.pre108, 1
  br i1 %i.he, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.hf = load i64, ptr %i.cg, align 8, !tbaa !268
  %i.hg = load i64, ptr %i.ch, align 8, !tbaa !367
  %i.hh = sub i64 %i.hf, %i.hg
  br label %_ZN11duckdb_zstdL27ZSTD_compressStream_genericEPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE.exit

bb.bq:                                            ; preds = %bb.bo
  %i.hi = load i64, ptr %i.ci, align 8, !tbaa !368
  %i.hj = load i64, ptr %i.cf, align 8, !tbaa !180
  %i.hk = sub i64 %i.hi, %i.hj                    ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.br, label %_ZN11duckdb_zstdL27ZSTD_compressStream_genericEPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE.exit

bb.br:                                            ; preds = %bb.bq
  %i.hm = load i64, ptr %i.cg, align 8, !tbaa !268
end_hunk_3
begin_hunk_4_@_ZN11duckdb_zstdL21ZSTD_writeFrameHeaderEPvmPKNS_18ZSTD_CCtx_params_sEmj:bb.a
  %.061 = phi i64 [ -70, %bb.c ], [ %i.bf, %bb.n ], [ %.2, %bb.m ], [ %i.bp, %bb.q ], [ %i.bk, %bb.o ], [ %i.bn, %bb.p ]
  ret i64 %.061
}

declare noundef i32 @_ZN11duckdb_zstd12XXH64_updateEPNS_13XXH64_state_sEPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd12XXH64_digestEPKNS_13XXH64_state_sE(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd16ZSTD_flushStreamEPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sE(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 4 uses
  %3 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !412
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !412
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !366, !noalias !412
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.e = select i1 %i.c, ptr %i.d, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !371
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !412
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !232
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !231
  %i.i = call noundef i64 @_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i64 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd14ZSTD_endStreamEPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sE(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 4 uses
  %3 = alloca %"struct.duckdb_zstd::ZSTD_inBuffer_s", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !415
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i32, ptr %i.a, align 4, !tbaa !366, !noalias !415
  %i.c = icmp eq i32 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3616
  %i.e = select i1 %i.c, ptr %i.d, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !tbaa.struct !371
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !415
  %i.f = call noundef i64 @_ZN11duckdb_zstd20ZSTD_compressStream2EPNS_11ZSTD_CCtx_sEPNS_16ZSTD_outBuffer_sEPNS_15ZSTD_inBuffer_sENS_17ZSTD_EndDirectiveE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 2) ; 4 uses
  %i.g = icmp ult i64 %i.f, -119
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.i = load i32, ptr %i.h, align 4, !tbaa !326
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3612
  %i.l = load i32, ptr %i.k, align 4, !tbaa !378
  %.not17 = icmp eq i32 %i.l, 0                   ; 2 uses
  %i.m = select i1 %.not17, i64 3, i64 0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.o = load i32, ptr %i.n, align 4, !tbaa !270
  %i.p = shl nsw i32 %i.o, 2
  %i.q = sext i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = phi i64 [ %i.q, %bb.d ], [ 0, %bb.c ]
  %i.s = add nuw i64 %i.m, %i.f
  %i.t = add i64 %i.s, %i.r
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e
  %.1 = phi i64 [ %i.f, %bb.a ], [ %i.t, %bb.e ], [ %i.f, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @_ZN11duckdb_zstd18ZSTD_defaultCLevelEv() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd15ZSTD_getCParamsEiym(ptr dead_on_unwind noalias writable writeonly sret(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 4 captures(none) initializes((0, 28)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %spec.store.select = select i1 %i.a, i64 -1, i64 %2
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind noalias writable align 4 %0, i32 noundef %1, i64 noundef %spec.store.select, i64 noundef %3, i32 noundef 3)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite) uwtable
define void @_ZN11duckdb_zstd14ZSTD_getParamsEiym(ptr dead_on_unwind noalias writable writeonly sret(%"struct.duckdb_zstd::ZSTD_parameters") align 4 captures(none) initializes((0, 40)) %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %spec.store.select = select i1 %i.a, i64 -1, i64 %2
  tail call fastcc void @_ZN11duckdb_zstdL24ZSTD_getCParams_internalEiymNS_17ZSTD_cParamMode_eE(ptr dead_on_unwind noalias nonnull writable align 4 %0, i32 noundef %1, i64 noundef %spec.store.select, i64 noundef %3, i32 noundef 3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.b, align 4, !alias.scope !418
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 1, ptr %i.c, align 4, !tbaa !421, !alias.scope !418
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd29ZSTD_registerSequenceProducerEPNS_11ZSTD_CCtx_sEPvPFmS2_PNS_13ZSTD_SequenceEmPKvmS6_mimE(ptr noundef writeonly captures(none) initializes((200, 216)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %2, null
  %spec.select.i = select i1 %.not.i, ptr null, ptr %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %2, ptr %i.a, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %spec.select.i, ptr %i.b, align 8, !tbaa !423
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN11duckdb_zstd40ZSTD_CCtxParams_registerSequenceProducerEPNS_18ZSTD_CCtx_params_sEPvPFmS2_PNS_13ZSTD_SequenceEmPKvmS6_mimE(ptr noundef writeonly captures(none) initializes((184, 200)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %2, null
  %spec.select = select i1 %.not, ptr null, ptr %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %2, ptr %i.a, align 8, !tbaa !152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %spec.select, ptr %i.b, align 8, !tbaa !423
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

declare noundef i64 @_ZN11duckdb_zstd21ZSTD_ldm_getTableSizeENS_11ldmParams_tE(ptr noundef byval(%"struct.duckdb_zstd::ldmParams_t") align 8) local_unnamed_addr #12

declare noundef i64 @_ZN11duckdb_zstd20ZSTD_ldm_getMaxNbSeqENS_11ldmParams_tEm(ptr noundef byval(%"struct.duckdb_zstd::ldmParams_t") align 8, i64 noundef) local_unnamed_addr #12

declare void @_ZN11duckdb_zstd25ZSTD_ldm_adjustParametersEPNS_11ldmParams_tEPKNS_26ZSTD_compressionParametersE(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstdL23ZSTD_resetCCtx_internalEPNS_11ZSTD_CCtx_sEPKNS_18ZSTD_CCtx_params_sEmmNS_22ZSTD_compResetPolicy_eENS_22ZSTD_buffered_policy_eE(ptr noundef initializes((232, 448), (944, 948)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i32 1, ptr %i.b, align 8, !tbaa !273
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.c, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 216, i1 false), !tbaa.struct !133
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 236
  tail call void @_ZN11duckdb_zstd25ZSTD_ldm_adjustParametersEPNS_11ldmParams_tEPKNS_26ZSTD_compressionParametersE(ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !105
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = icmp eq i64 %2, 0
  %. = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %2)
  %spec.select304 = select i1 %i.l, i64 1, i64 %. ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !94
  %.189 = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %spec.select304) ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.p = load i32, ptr %i.o, align 4, !tbaa !109
  %i.q = getelementptr i8, ptr %0, i64 424        ; 3 uses
  %.val196 = load ptr, ptr %i.q, align 8, !tbaa !152
  %i.r = icmp ne ptr %.val196, null
  %i.s = icmp eq i32 %i.p, 3
  %i.t = or i1 %i.s, %i.r
  %i.u = select i1 %i.t, i64 3, i64 4             ; 4 uses
  %i.v = udiv i64 %.189, %i.u                     ; 5 uses
  %i.w = icmp eq i32 %5, 1
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.y = load i32, ptr %i.x, align 8, !tbaa !125
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit, label %bb.e

_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit:      ; preds = %bb.d
  %i.aa = lshr i64 %.189, 8
  %i.ab = add nuw i64 %i.aa, %.189
  %i.ac = sub nuw nsw i64 131072, %.189
  %i.ad = lshr i64 %i.ac, 11
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809 = icmp ult i64 %.189, 129025
  %i.ae = select i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narrow.narr3809, i64 %i.ad, i64 0
  %i.af = add nuw i64 %i.ab, %i.ae
  %.fr.i = freeze i64 %i.af                       ; 2 uses
  %i.ag = icmp eq i64 %.fr.i, 0
  %i.ah = add i64 %.fr.i, 1
  %i.ai = select i1 %i.ag, i64 -71, i64 %i.ah
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit
  %.ph = phi i64 [ 0, %bb.d ], [ %i.ai, %_ZN11duckdb_zstd18ZSTD_compressBoundEm.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !124
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = add i64 %.189, %spec.select304
  %spec.select = select i1 %i.al, i64 %i.am, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %i.an = phi i64 [ %.ph, %bb.e ], [ 0, %bb.c ]   ; 5 uses
  %i.ao = phi i64 [ %spec.select, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.ap = tail call noundef i64 @_ZN11duckdb_zstd20ZSTD_ldm_getMaxNbSeqENS_11ldmParams_tEm(ptr noundef nonnull byval(%"struct.duckdb_zstd::ldmParams_t") align 8 %i.d, i64 noundef %.189) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ar, align 8, !tbaa !207
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !207
  %i.as = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.at = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = icmp ult i64 %i.au, 3741319169
  %i.aw = icmp ult i64 %3, 536870912
  %.not309 = and i1 %i.aw, %i.av
  br i1 %.not309, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !424
  %.not = icmp eq i32 %i.ay, 0
  %i.az = zext i1 %.not to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = phi i32 [ %i.az, %bb.g ], [ 1, %bb.f ]  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !65
  %i.bd = icmp ne i64 %i.bc, 0
  %i.be = zext i1 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !91
  %.val195 = load ptr, ptr %i.q, align 8, !tbaa !152
  %i.bh = icmp ne ptr %.val195, null
  %i.bi = zext i1 %i.bh to i32
  %i.bj = load i64, ptr %i.m, align 8, !tbaa !94
  %i.bk = tail call fastcc noundef i64 @_ZN11duckdb_zstdL46ZSTD_estimateCCtxSize_usingCCtxParams_internalEPKNS_26ZSTD_compressionParametersEPKNS_11ldmParams_tEiNS_18ZSTD_paramSwitch_eEmmmim(ptr noundef nonnull %i.h, ptr noundef nonnull %i.d, i32 noundef %i.be, i32 noundef %i.bg, i64 noundef %i.ao, i64 noundef %i.an, i64 noundef %2, i32 noundef %i.bi, i64 noundef %i.bj) ; 10 uses
  %i.bl = icmp ult i64 %i.bk, -119
  br i1 %i.bl, label %bb.i, label %.thread290

bb.i:                                             ; preds = %bb.h
  %i.bm = load i64, ptr %i.bb, align 8, !tbaa !65
  %.not184 = icmp eq i64 %i.bm, 0                 ; 2 uses
  br i1 %.not184, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 740 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !425
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !425
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.val = load ptr, ptr %i.a, align 8, !tbaa !73  ; 4 uses
  %i.bq = getelementptr i8, ptr %0, i64 688       ; 13 uses
  %.val193 = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.br = ptrtoint ptr %.val193 to i64            ; 2 uses
  %i.bs = ptrtoint ptr %.val to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp ult i64 %i.bt, %i.bk               ; 2 uses
  %i.bv = getelementptr i8, ptr %0, i64 704       ; 28 uses
  %.val.i = load ptr, ptr %i.bv, align 8, !tbaa !68
  %i.bw = getelementptr i8, ptr %0, i64 720       ; 25 uses
  %.val2.i = load ptr, ptr %i.bw, align 8, !tbaa !426
  %i.bx = mul i64 %i.bk, 3
  %i.by = ptrtoint ptr %.val2.i to i64
  %i.bz = ptrtoint ptr %.val.i to i64
  %i.ca = sub i64 %i.by, %i.bz
  %.not3.i = icmp ult i64 %i.ca, %i.bx
  br i1 %.not3.i, label %_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 740
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !425
  %i.cd = icmp sgt i32 %i.cc, 128
  %i.ce = or i1 %i.bu, %i.cd
  br i1 %i.ce, label %bb.m, label %.thread294

_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit: ; preds = %bb.k
  br i1 %i.bu, label %bb.m, label %.thread294

bb.m:                                             ; preds = %bb.l, %_ZN11duckdb_zstdL25ZSTD_cwksp_check_wastefulEPNS_10ZSTD_cwkspEm.exit
  br i1 %.not184, label %bb.n, label %.thread290

bb.n:                                             ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 872
  %.sroa.2275.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.sroa.2275.0.copyload = load ptr, ptr %.sroa.2275.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.sroa.3276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %.sroa.3276.0.copyload = load ptr, ptr %.sroa.3276.0..sroa_idx, align 8, !tbaa !62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not4.i.i = icmp eq ptr %.sroa.2275.0.copyload, null
  br i1 %.not4.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void %.sroa.2275.0.copyload(ptr noundef %.sroa.3276.0.copyload, ptr noundef nonnull %.val), !inline_history !357
  br label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit

bb.q:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %.val) #27
  br label %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit: ; preds = %bb.n, %bb.p, %bb.q
  %.sroa.0280.0.copyload = load ptr, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %.not.i.i199 = icmp eq ptr %.sroa.0280.0.copyload, null
  br i1 %.not.i.i199, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit
  %.sroa.3282.0.copyload = load ptr, ptr %.sroa.3276.0..sroa_idx, align 8, !tbaa !62
  %i.cg = tail call noundef ptr %.sroa.0280.0.copyload(ptr noundef %.sroa.3282.0.copyload, i64 noundef %i.bk), !inline_history !427
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.s:                                             ; preds = %_ZN11duckdb_zstdL15ZSTD_cwksp_freeEPNS_10ZSTD_cwkspENS_14ZSTD_customMemE.exit
  %i.ch = tail call noalias ptr @malloc(i64 noundef %i.bk) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.s, %bb.r
  %.0.i.i = phi ptr [ %i.cg, %bb.r ], [ %i.ch, %bb.s ] ; 10 uses
  %i.ci = icmp eq ptr %.0.i.i, null
  br i1 %i.ci, label %.thread290, label %bb.t

bb.t:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  store ptr %.0.i.i, ptr %i.a, align 8, !tbaa !73
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.bk ; 2 uses
  store ptr %i.cj, ptr %i.bq, align 8, !tbaa !74
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  store ptr %.0.i.i, ptr %i.ck, align 8, !tbaa !67
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  store ptr %.0.i.i, ptr %i.cl, align 8, !tbaa !69
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = and i64 %i.cm, -64
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !428
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i32 0, ptr %i.cq, align 8, !tbaa !355
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 0, ptr %i.cr, align 4, !tbaa !429
  store ptr %.0.i.i, ptr %i.bv, align 8, !tbaa !68
  store ptr %i.co, ptr %i.bw, align 8, !tbaa !426
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 4 uses
  store i8 0, ptr %i.cs, align 8, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 740
  store i32 0, ptr %i.ct, align 4, !tbaa !425
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 5632 ; 4 uses
  %i.cv = icmp samesign ult i64 %i.bk, 5632
  br i1 %i.cv, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread, label %bb.u

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread: ; preds = %bb.t
  store i8 1, ptr %i.cs, align 8, !tbaa !66
  store ptr null, ptr %i.aq, align 8, !tbaa !70
  br label %.thread290

bb.u:                                             ; preds = %bb.t
  store ptr %i.cu, ptr %i.ck, align 8, !tbaa !67
  store ptr %i.cu, ptr %i.bv, align 8, !tbaa !68
  store ptr %i.cu, ptr %i.cl, align 8, !tbaa !69
  store ptr %.0.i.i, ptr %i.aq, align 8, !tbaa !70
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 11264 ; 4 uses
  %i.cx = icmp samesign ult i64 %i.bk, 11264
  br i1 %i.cx, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit203.thread, label %bb.v

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit203.thread: ; preds = %bb.u
  store i8 1, ptr %i.cs, align 8, !tbaa !66
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store ptr null, ptr %i.cy, align 8, !tbaa !71
  br label %.thread290

bb.v:                                             ; preds = %bb.u
  store ptr %i.cw, ptr %i.ck, align 8, !tbaa !67
  store ptr %i.cw, ptr %i.bv, align 8, !tbaa !68
  store ptr %i.cw, ptr %i.cl, align 8, !tbaa !69
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store ptr %i.cu, ptr %i.cz, align 8, !tbaa !71
  %i.da = icmp samesign ult i64 %i.bk, 20184
  br i1 %i.da, label %.thread300, label %.thread294.thread

.thread300:                                       ; preds = %bb.v
  store i8 1, ptr %i.cs, align 8, !tbaa !66
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 3520
end_hunk_4
