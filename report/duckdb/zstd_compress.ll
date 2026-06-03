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
  %i.d = icmp ult i64 %0, 131072
  %i.e = sub nuw nsw i64 131072, %0
  %i.f = lshr i64 %i.e, 11
  %i.g = select i1 %i.d, i64 %i.f, i64 0
  %i.h = add i64 %i.c, %i.g
  %.fr = freeze i64 %i.h                          ; 2 uses
  %i.i = icmp eq i64 %.fr, 0
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.j = phi i64 [ -72, %.thread ], [ %.fr, %bb.b ]
  ret i64 %i.j
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd15ZSTD_createCCtxEv() local_unnamed_addr #2 {
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
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.d, %bb.e ], [ %i.p, %bb.f ] ; 4 uses
  %.0.i24 = phi ptr [ null, %bb.e ], [ %i.d, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3200
  store ptr %.0.i24, ptr %i.r, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 5632 ; 5 uses
  %i.t = icmp ugt ptr %i.s, %i.f
  br i1 %i.t, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41: ; preds = %bb.g
  store i8 1, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !66
  br label %bb.h

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread: ; preds = %bb.g
  store ptr %i.s, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !67
  store ptr %i.s, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !68
  store ptr %i.s, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !69
  br label %bb.h

end_hunk_0
begin_hunk_1_@_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm:bb.a
  %i.ae = lshr i32 %i.ad, 8
  %i.af = and i32 %i.ae, 1
  br label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit:             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31, %bb.k, %bb.l
  %.sroa.3.8.insert.insert.i = phi i32 [ %i.af, %bb.l ], [ 0, %bb.k ], [ 0, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit31 ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.3.8.insert.insert.i, ptr %i.ag, align 8, !tbaa !10
  br label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit.thread: ; preds = %bb.b, %bb.c, %bb.a, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %bb.c ], [ %0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef range(i64 -64, 1) i64 @_ZN11duckdb_zstd13ZSTD_freeCCtxEPNS_11ZSTD_CCtx_sE(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.c = load i64, ptr %i.b, align 8, !tbaa !65
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %.not.i = icmp ugt ptr %i.e, %0
  br i1 %.not.i, label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = icmp uge ptr %0, %i.g
  br label %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit

_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit: ; preds = %bb.c, %bb.d
  %.not9 = phi i1 [ true, %bb.c ], [ %i.h, %bb.d ]
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %0)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !62 ; 2 uses
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %.sroa.34.0.copyload.i = load ptr, ptr %.sroa.34.0..sroa_idx.i, align 8, !tbaa !62
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !73   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit
  %.not4.i.i.i = icmp eq ptr %.sroa.2.0.copyload.i, null
  br i1 %.not4.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %.sroa.2.0.copyload.i(ptr noundef %.sroa.34.0.copyload.i, ptr noundef nonnull %i.i), !inline_history !75
  br label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.i) #27
  br label %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit

_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit: ; preds = %_ZN11duckdb_zstdL22ZSTD_cwksp_owns_bufferEPKNS_10ZSTD_cwkspEPKv.exit, %bb.f, %bb.g
  br i1 %.not9, label %bb.h, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.h:                                             ; preds = %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !62 ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.1.0.copyload, null
  br i1 %.not4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.34.0..sroa_idx.i, align 8, !tbaa !62
  tail call void %.sroa.1.0.copyload(ptr noundef %.sroa.2.0.copyload, ptr noundef nonnull %0), !inline_history !76
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %0) #27
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit: ; preds = %bb.j, %bb.i, %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit, %bb.b, %bb.a
  %.0 = phi i64 [ -64, %bb.b ], [ 0, %bb.a ], [ 0, %_ZN11duckdb_zstdL20ZSTD_freeCCtxContentEPNS_11ZSTD_CCtx_sE.exit ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE(ptr noundef readonly captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.d = icmp eq ptr %i.c, %0
  %i.e = select i1 %i.d, i64 0, i64 5248
  %i.f = getelementptr i8, ptr %0, i64 688
  %.val7 = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.g = ptrtoint ptr %.val7 to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %.sroa.0.0.copyload = load ptr, ptr %i.i, align 8, !tbaa !62
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %.sroa.28.0.copyload = load i64, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !78
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %.sroa.39.0.copyload = load ptr, ptr %.sroa.39.0..sroa_idx, align 8, !tbaa !79 ; 4 uses
  %i.j = icmp eq ptr %.sroa.39.0.copyload, null
  br i1 %i.j, label %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = icmp eq ptr %i.l, %.sroa.39.0.copyload
  %i.n = select i1 %i.m, i64 0, i64 6080
  %i.o = getelementptr i8, ptr %.sroa.39.0.copyload, i64 40
  %.val5.i.i = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.p = ptrtoint ptr %.val5.i.i to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.n
  br label %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit

_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ]
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  %i.t = select i1 %.not.i, i64 0, i64 %.sroa.28.0.copyload
  %i.u = sub i64 %i.g, %i.h
  %i.v = add i64 %i.u, %i.e
  %i.w = add i64 %i.v, %i.t
  %i.x = add i64 %i.w, %.0.i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit
  %.0 = phi i64 [ %i.x, %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd19ZSTD_sizeof_CStreamEPKNS_11ZSTD_CCtx_sE(ptr noundef readonly captures(address) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !77   ; 2 uses
  %i.d = icmp eq ptr %i.c, %0
  %i.e = select i1 %i.d, i64 0, i64 5248
  %i.f = getelementptr i8, ptr %0, i64 688
  %.val7.i = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.g = ptrtoint ptr %.val7.i to i64
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3656
  %.sroa.0.0.copyload.i = load ptr, ptr %i.i, align 8, !tbaa !62
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %.sroa.28.0.copyload.i = load i64, ptr %.sroa.28.0..sroa_idx.i, align 8, !tbaa !78
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %.sroa.39.0.copyload.i = load ptr, ptr %.sroa.39.0..sroa_idx.i, align 8, !tbaa !79 ; 4 uses
  %i.j = icmp eq ptr %.sroa.39.0.copyload.i, null
  br i1 %i.j, label %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.39.0.copyload.i, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = icmp eq ptr %i.l, %.sroa.39.0.copyload.i
  %i.n = select i1 %i.m, i64 0, i64 6080
  %i.o = getelementptr i8, ptr %.sroa.39.0.copyload.i, i64 40
  %.val5.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !74
  %i.p = ptrtoint ptr %.val5.i.i.i to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = add i64 %i.r, %i.n
  br label %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit.i

_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.s, %bb.c ], [ 0, %bb.b ]
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  %i.t = select i1 %.not.i.i, i64 0, i64 %.sroa.28.0.copyload.i
  %i.u = sub i64 %i.g, %i.h
  %i.v = add i64 %i.u, %i.e
  %i.w = add i64 %i.v, %i.t
  %i.x = add i64 %i.w, %.0.i.i.i
  br label %_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE.exit

_ZN11duckdb_zstd16ZSTD_sizeof_CCtxEPKNS_11ZSTD_CCtx_sE.exit: ; preds = %bb.a, %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit.i
  %.0.i = phi i64 [ %i.x, %_ZN11duckdb_zstdL21ZSTD_sizeof_localDictENS_14ZSTD_localDictE.exit.i ], [ 0, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN11duckdb_zstd16ZSTD_getSeqStoreEPKNS_11ZSTD_CCtx_sE(ptr noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @_ZN11duckdb_zstd21ZSTD_createCCtxParamsEv() local_unnamed_addr #6 {
_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i:
  %i.a = tail call noalias dereferenceable_or_null(216) ptr @calloc(i64 noundef 1, i64 noundef 216) #28 ; 4 uses
  %.not7.i = icmp eq ptr %i.a, null
  br i1 %.not7.i, label %_ZN11duckdb_zstdL30ZSTD_createCCtxParams_advancedENS_14ZSTD_customMemE.exit, label %_ZN11duckdb_zstd20ZSTD_CCtxParams_initEPNS_18ZSTD_CCtx_params_sEi.exit.i

_ZN11duckdb_zstd20ZSTD_CCtxParams_initEPNS_18ZSTD_CCtx_params_sEi.exit.i: ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i32 3, ptr %i.b, align 4, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 1, ptr %i.c, align 8, !tbaa !59
  br label %_ZN11duckdb_zstdL30ZSTD_createCCtxParams_advancedENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL30ZSTD_createCCtxParams_advancedENS_14ZSTD_customMemE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTD_customCallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstd20ZSTD_CCtxParams_initEPNS_18ZSTD_CCtx_params_sEi.exit.i
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd19ZSTD_freeCCtxParamsEPNS_18ZSTD_CCtx_params_sE(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.1.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.sroa.1.0.copyload = load ptr, ptr %.sroa.1.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.not4.i = icmp eq ptr %.sroa.1.0.copyload, null
  br i1 %.not4.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !62
  tail call void %.sroa.1.0.copyload(ptr noundef %.sroa.2.0.copyload, ptr noundef nonnull %0), !inline_history !76
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %0) #27
  br label %_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit

_ZN11duckdb_zstdL15ZSTD_customFreeEPvNS_14ZSTD_customMemE.exit: ; preds = %bb.d, %bb.c, %bb.a
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef range(i64 -1, 1) i64 @_ZN11duckdb_zstd21ZSTD_CCtxParams_resetEPNS_18ZSTD_CCtx_params_sE(ptr noundef writeonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZN11duckdb_zstd20ZSTD_CCtxParams_initEPNS_18ZSTD_CCtx_params_sEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 3, ptr %i.a, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !59
  br label %_ZN11duckdb_zstd20ZSTD_CCtxParams_initEPNS_18ZSTD_CCtx_params_sEi.exit

_ZN11duckdb_zstd20ZSTD_CCtxParams_initEPNS_18ZSTD_CCtx_params_sEi.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define noundef range(i64 -1, 1) i64 @_ZN11duckdb_zstd20ZSTD_CCtxParams_initEPNS_18ZSTD_CCtx_params_sEi(ptr noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %1, ptr %i.a, align 4, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.b, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef range(i64 -42, 1) i64 @_ZN11duckdb_zstd29ZSTD_CCtxParams_init_advancedEPNS_18ZSTD_CCtx_params_sENS_15ZSTD_parametersE(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_parameters") align 8 captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !88 ; 3 uses
  %i.a = load <4 x i32>, ptr %1, align 8, !tbaa !3
  %.sroa.0.0.copyload = load i32, ptr %1, align 8, !tbaa !3 ; 3 uses
  %.fr18 = freeze <4 x i32> %i.a
  %i.b = add <4 x i32> %.fr18, <i32 -32, i32 -31, i32 -31, i32 -31>
  %i.c = icmp ult <4 x i32> %i.b, <i32 -22, i32 -25, i32 -25, i32 -30>
  %i.d = bitcast <4 x i1> %i.c to i4
  %.not19 = icmp eq i4 %i.d, 0
  br i1 %.not19, label %bb.c, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.c:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !3
  %i.e = add i32 %.sroa.5.0.copyload, -3
  %narrow.i29.i = icmp ult i32 %i.e, 5
  %narrow.i35.i = icmp ult i32 %.sroa.6.0.copyload, 131073
  %or.cond.i.not17 = select i1 %narrow.i29.i, i1 %narrow.i35.i, i1 false
  %i.f = add i32 %.sroa.7.0.copyload, -1
  %narrow.i41.i = icmp ult i32 %i.f, 9
  %or.cond16 = select i1 %or.cond.i.not17, i1 %narrow.i41.i, i1 false
  br i1 %or.cond16, label %bb.d, label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, i8 0, i64 216, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !89
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.h, i64 12, i1 false), !tbaa.struct !90
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.k = add nsw i32 %.sroa.7.0.copyload, -6
  %i.l = icmp ult i32 %i.k, -3
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 2, ptr %i.j, align 8, !tbaa !91
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.n = icmp samesign ugt i32 %.sroa.7.0.copyload, 6
  br i1 %i.n, label %bb.g, label %.thread12

.thread12:                                        ; preds = %bb.e
  store i32 2, ptr %i.m, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit

bb.f:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i32 %.sroa.0.0.copyload, 14
  %spec.select.i.i = select i1 %i.o, i32 1, i32 2
  store i32 %spec.select.i.i, ptr %i.j, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 2, ptr %i.p, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp samesign ugt i32 %.sroa.0.0.copyload, 16
  %i.r = select i1 %i.q, i32 1, i32 2
  store i32 %i.r, ptr %i.m, align 4, !tbaa !92
  %i.s = icmp samesign ugt i32 %.sroa.0.0.copyload, 26
  %i.t = select i1 %i.s, i32 1, i32 2
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit

_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit: ; preds = %bb.f, %.thread12, %bb.g
  %.0.i25.i = phi i32 [ %i.t, %bb.g ], [ 2, %bb.f ], [ 2, %.thread12 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.0.i25.i, ptr %i.u, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 131072, ptr %i.v, align 8, !tbaa !94
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 2, ptr %i.w, align 8, !tbaa !95
  br label %_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread

_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE.exit.thread: ; preds = %bb.c, %bb.b, %bb.a, %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit
  %.1 = phi i64 [ 0, %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit ], [ -42, %bb.c ], [ -1, %bb.a ], [ -42, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i64 -42, 1) i64 @_ZN11duckdb_zstd17ZSTD_checkCParamsENS_26ZSTD_compressionParametersE(ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_compressionParameters") align 8 captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !96
  %i.b = add i32 %i.a, -32
  %narrow.i = icmp ult i32 %i.b, -22
  br i1 %narrow.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = add i32 %i.d, -31
  %narrow.i11 = icmp ult i32 %i.e, -25
  br i1 %narrow.i11, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98
  %i.h = add i32 %i.g, -31
  %narrow.i17 = icmp ult i32 %i.h, -25
  br i1 %narrow.i17, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !99
  %i.k = add i32 %i.j, -31
  %narrow.i23 = icmp ult i32 %i.k, -30
  br i1 %narrow.i23, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !100
  %i.n = add i32 %i.m, -8
  %narrow.i29 = icmp ult i32 %i.n, -5
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
end_hunk_1
begin_hunk_2_@_ZN11duckdb_zstdL38ZSTD_compressBegin_usingCDict_internalEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy:bb.a

.sink.split:                                      ; preds = %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit, %.split25
  %.sink = phi i64 [ %4, %.split25 ], [ -1, %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit ]
  %i.am = call fastcc noundef i64 @_ZN11duckdb_zstdL27ZSTD_compressBegin_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %5, i64 noundef %.sink, i32 noundef 0)
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i64 [ -32, %bb.a ], [ %i.am, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN11duckdb_zstdL38ZSTD_compressBegin_usingCDict_internalEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8, !tbaa !3 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !88 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !291 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %2, i8 0, i64 216, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.0.0.copyload, ptr %i.c, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7.0..sroa_idx33.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx, i64 20, i1 false)
  %.sroa.734.0..sroa_idx35.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sroa.5.0.copyload, ptr %.sroa.734.0..sroa_idx35.i, align 4, !tbaa !88
  %.sroa.12.28..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %.sroa.12.28..sroa_idx.i, align 8, !tbaa !3
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %.pre.i, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.f = add i32 %.sroa.5.0.copyload, -6
  %i.g = icmp ult i32 %i.f, -3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 2 uses
  %i.i = icmp sgt i32 %.sroa.5.0.copyload, 6
  br i1 %i.i, label %bb.e, label %.thread42.i

.thread42.i:                                      ; preds = %bb.c
  store i32 2, ptr %i.h, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %.sroa.0.0.copyload, 14
  %spec.select.i.i.i = select i1 %i.j, i32 1, i32 2
  store i32 %spec.select.i.i.i, ptr %i.e, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 2, ptr %i.k, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %.sroa.0.0.copyload, 16
  %i.m = select i1 %i.l, i32 1, i32 2
  store i32 %i.m, ptr %i.h, align 4, !tbaa !92
  %i.n = icmp ugt i32 %.sroa.0.0.copyload, 26
  %i.o = select i1 %i.n, i32 1, i32 2
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i

_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i: ; preds = %bb.e, %bb.d, %.thread42.i
  %.0.i25.i.i = phi i32 [ %i.o, %bb.e ], [ 2, %bb.d ], [ 2, %.thread42.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 %.0.i25.i.i, ptr %i.p, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 131072, ptr %i.q, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.s = icmp slt i32 %.pre.i, 10
  %..i27.i.i = select i1 %i.s, i32 2, i32 1
  store i32 %..i27.i.i, ptr %i.r, align 8, !tbaa !95
  %i.t = call fastcc noundef i64 @_ZN11duckdb_zstdL27ZSTD_compressBegin_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef -1, i32 noundef 0)
  br label %_ZN11duckdb_zstdL38ZSTD_compressBegin_usingCDict_internalEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy.exit

_ZN11duckdb_zstdL38ZSTD_compressBegin_usingCDict_internalEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy.exit: ; preds = %bb.a, %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i
  %.0.i = phi i64 [ -32, %bb.a ], [ %i.t, %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i64 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -119, 1) i64 @_ZN11duckdb_zstd29ZSTD_compressBegin_usingCDictEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %"struct.duckdb_zstd::ZSTD_CCtx_params_s", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.0.0.copyload.i = load i32, ptr %i.b, align 8, !tbaa !3 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 364
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !88 ; 3 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 6068
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !291 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %2, i8 0, i64 216, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sroa.0.0.copyload.i, ptr %i.c, align 4, !tbaa !3
  %.sroa.7.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.7.0..sroa_idx33.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i, i64 20, i1 false)
  %.sroa.734.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.734.0..sroa_idx35.i.i, align 4, !tbaa !88
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %.pre.i.i, ptr %i.d, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.f = add i32 %.sroa.5.0.copyload.i, -6
  %i.g = icmp ult i32 %i.f, -3
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 2, ptr %i.e, align 8, !tbaa !91
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 140 ; 2 uses
  %i.i = icmp sgt i32 %.sroa.5.0.copyload.i, 6
  br i1 %i.i, label %bb.e, label %.thread42.i.i

.thread42.i.i:                                    ; preds = %bb.c
  store i32 2, ptr %i.h, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i32 %.sroa.0.0.copyload.i, 14
  %spec.select.i.i.i.i = select i1 %i.j, i32 1, i32 2
  store i32 %spec.select.i.i.i.i, ptr %i.e, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 2, ptr %i.k, align 4, !tbaa !92
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = icmp ugt i32 %.sroa.0.0.copyload.i, 16
  %i.m = select i1 %i.l, i32 1, i32 2
  store i32 %i.m, ptr %i.h, align 4, !tbaa !92
  %i.n = icmp ugt i32 %.sroa.0.0.copyload.i, 26
  %i.o = select i1 %i.n, i32 1, i32 2
  br label %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i.i

_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i.i: ; preds = %bb.e, %bb.d, %.thread42.i.i
  %.0.i25.i.i.i = phi i32 [ %i.o, %bb.e ], [ 2, %bb.d ], [ 2, %.thread42.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  store i32 %.0.i25.i.i.i, ptr %i.p, align 8, !tbaa !93
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 200
  store i64 131072, ptr %i.q, align 8, !tbaa !94
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.s = icmp slt i32 %.pre.i.i, 10
  %..i27.i.i.i = select i1 %i.s, i32 2, i32 1
  store i32 %..i27.i.i.i, ptr %i.r, align 8, !tbaa !95
  %i.t = call fastcc noundef i64 @_ZN11duckdb_zstdL27ZSTD_compressBegin_internalEPNS_11ZSTD_CCtx_sEPKvmNS_22ZSTD_dictContentType_eENS_26ZSTD_dictTableLoadMethod_eEPKNS_12ZSTD_CDict_sEPKNS_18ZSTD_CCtx_params_sEmNS_22ZSTD_buffered_policy_eE(ptr noundef %0, ptr noundef null, i64 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef -1, i32 noundef 0)
  br label %_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit

_ZN11duckdb_zstd40ZSTD_compressBegin_usingCDict_deprecatedEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sE.exit: ; preds = %bb.a, %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i.i
  %.0.i.i = phi i64 [ -32, %bb.a ], [ %i.t, %_ZN11duckdb_zstdL29ZSTD_CCtxParams_init_internalEPNS_18ZSTD_CCtx_params_sEPKNS_15ZSTD_parametersEi.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd33ZSTD_compress_usingCDict_advancedEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_frameParameters") align 8 captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %6, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !3
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38ZSTD_compressBegin_usingCDict_internalEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy(ptr noundef %0, ptr noundef %5, i64 %.sroa.0.0.copyload, i32 %.sroa.2.0.copyload, i64 noundef %4) ; 2 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit

_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN11duckdb_zstd24ZSTD_compress_usingCDictEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sE(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN11duckdb_zstdL38ZSTD_compressBegin_usingCDict_internalEPNS_11ZSTD_CCtx_sEPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersEy(ptr noundef %0, ptr noundef %5, i64 1, i32 0, i64 noundef %4) ; 2 uses
  %i.b = icmp ult i64 %i.a, -119
  br i1 %i.b, label %bb.b, label %_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZN11duckdb_zstd23ZSTD_compressEnd_publicEPNS_11ZSTD_CCtx_sEPvmPKvm(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit

_ZN11duckdb_zstdL33ZSTD_compress_usingCDict_internalEPNS_11ZSTD_CCtx_sEPvmPKvmPKNS_12ZSTD_CDict_sENS_20ZSTD_frameParametersE.exit: ; preds = %bb.a, %bb.b
  %.1.i = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  ret i64 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd18ZSTD_createCStreamEv() local_unnamed_addr #2 {
_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i:
  %calloc = tail call dereferenceable_or_null(5248) ptr @calloc(i64 1, i64 5248) ; 7 uses
  %.not6.i.i = icmp eq ptr %calloc, null
  br i1 %.not6.i.i, label %_ZN11duckdb_zstd27ZSTD_createCStream_advancedENS_14ZSTD_customMemE.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i
  %i.a = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.c = icmp ugt i32 %i.a, 6
  br i1 %i.c, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i:     ; preds = %bb.b
  %i.d = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.e = extractvalue { i32, i32, i32 } %i.d, 1   ; 2 uses
  %i.f = and i32 %i.e, 8
  %.not.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i
  %i.g = lshr i32 %i.e, 8
  %i.h = and i32 %i.g, 1
  br label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i

_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i: ; preds = %bb.c, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i, %bb.b, %bb.a
  %i.i = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i.i ], [ %i.h, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !10
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %calloc)
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.k, i8 0, i64 216, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %calloc, i64 60
  store i32 3, ptr %i.l, align 4, !tbaa !58
  %i.m = getelementptr inbounds nuw i8, ptr %calloc, i64 48
  store i32 1, ptr %i.m, align 8, !tbaa !59
  br label %_ZN11duckdb_zstd27ZSTD_createCStream_advancedENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstd27ZSTD_createCStream_advancedENS_14ZSTD_customMemE.exit: ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i.i
  ret ptr %calloc
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd27ZSTD_createCStream_advancedENS_14ZSTD_customMemE(ptr noundef readonly byval(%"struct.duckdb_zstd::ZSTD_customMem") align 8 captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %.sroa.06.0.copyload = load ptr, ptr %0, align 8, !tbaa !62 ; 3 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !62 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.0.copyload, null ; 2 uses
  %.not5.i = icmp eq ptr %.sroa.2.0.copyload, null
  %i.a = xor i1 %.not.i, %.not5.i
  br i1 %i.a, label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noundef ptr %.sroa.06.0.copyload(ptr noundef %.sroa.3.0.copyload, i64 noundef 5248), !inline_history !361
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(5248) ptr @malloc(i64 noundef 5248) #26
  br label %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 11 uses
  %.not6.i = icmp eq ptr %.0.i.i, null
  br i1 %.not6.i, label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %.0.i.i, i8 0, i64 5248, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 872
  store ptr %.sroa.06.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 880
  store ptr %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 888
  store ptr %.sroa.3.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %i.e = tail call i32 asm "cpuid", "={ax},{ax},~{ebx},~{ecx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 0) #25, !srcloc !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call { i32, i32, i32 } asm "cpuid", "={ax},={cx},={dx},{ax},~{ebx},~{dirflag},~{fpsr},~{flags}"(i32 1) #25, !srcloc !8 ; 0 uses
  %i.g = icmp ugt i32 %i.e, 6
  br i1 %i.g, label %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i:       ; preds = %bb.f
  %i.h = tail call { i32, i32, i32 } asm "cpuid", "={ax},={bx},={cx},{ax},{cx},~{edx},~{dirflag},~{fpsr},~{flags}"(i32 7, i32 0) #25, !srcloc !9
  %i.i = extractvalue { i32, i32, i32 } %i.h, 1   ; 2 uses
  %i.j = and i32 %i.i, 8
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i
  %i.k = lshr i32 %i.i, 8
  %i.l = and i32 %i.k, 1
  br label %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i

_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i: ; preds = %bb.g, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i, %bb.f, %bb.e
  %i.m = phi i32 [ 0, %_ZN11duckdb_zstdL10ZSTD_cpuidEv.exit.i.i.i ], [ %i.l, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  store i32 %i.m, ptr %i.n, align 8, !tbaa !10
  tail call fastcc void @_ZN11duckdb_zstdL18ZSTD_clearAllDictsEPNS_11ZSTD_CCtx_sE(ptr noundef nonnull %.0.i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.o, i8 0, i64 216, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 60
  store i32 3, ptr %i.p, align 4, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  store i32 1, ptr %i.q, align 8, !tbaa !59
  br label %_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit

_ZN11duckdb_zstd24ZSTD_createCCtx_advancedENS_14ZSTD_customMemE.exit: ; preds = %bb.a, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i
  %.1.i = phi ptr [ null, %bb.a ], [ %.0.i.i, %_ZN11duckdb_zstdL13ZSTD_initCCtxEPNS_11ZSTD_CCtx_sENS_14ZSTD_customMemE.exit.i ], [ null, %_ZN11duckdb_zstdL17ZSTD_customMallocEmNS_14ZSTD_customMemE.exit.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nounwind memory(argmem: write) uwtable
define noundef ptr @_ZN11duckdb_zstd22ZSTD_initStaticCStreamEPvm(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ugt i64 %1, 5248
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %.not.i = icmp eq i64 %i.c, 0
  %or.cond.i = and i1 %i.a, %.not.i
  br i1 %or.cond.i, label %bb.b, label %_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5248 ; 6 uses
  %i.e = icmp eq ptr %0, null
  br i1 %i.e, label %_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = and i64 %i.g, -64                        ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(5248) %0, i8 0, i64 5248, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 680
  store ptr %0, ptr %i.j, align 8, !tbaa !62
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 4 uses
  store ptr %i.d, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 4 uses
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  store ptr %i.d, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 720
  store ptr %i.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 728
  store ptr %i.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !62
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 748
  store i32 1, ptr %.sroa.21.0..sroa_idx.i, align 4, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 904
  store i64 %1, ptr %i.k, align 8, !tbaa !65
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub i64 %i.h, %i.l
  %i.n = icmp ult i64 %i.m, 20184
  br i1 %i.n, label %_ZN11duckdb_zstd19ZSTD_initStaticCCtxEPvm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp samesign ult i64 %1, 10880
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !66
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 10880 ; 4 uses
  store ptr %i.p, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !67
  store ptr %i.p, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !68
  store ptr %i.p, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !69
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = phi ptr [ %i.d, %bb.e ], [ %i.p, %bb.f ] ; 4 uses
  %.0.i24.i = phi ptr [ null, %bb.e ], [ %i.d, %bb.f ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3200
  store ptr %.0.i24.i, ptr %i.r, align 8, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 5632 ; 5 uses
  %i.t = icmp ugt ptr %i.s, %i.f
  br i1 %i.t, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i, label %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i: ; preds = %bb.g
  store i8 1, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !66
  br label %bb.h

_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i: ; preds = %bb.g
  store ptr %i.s, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !67
  store ptr %i.s, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !68
  store ptr %i.s, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !69
  br label %bb.h

bb.h:                                             ; preds = %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread.i, %_ZN11duckdb_zstdL25ZSTD_cwksp_reserve_objectEPNS_10ZSTD_cwkspEm.exit28.thread41.i
end_hunk_2
