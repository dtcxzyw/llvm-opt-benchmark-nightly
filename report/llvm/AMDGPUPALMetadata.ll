Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AMDGPUPALMetadata?download=true
inline.NumInlined: 937
inline.NumDeleted: 486
loop-unroll.NumUnrolled: 1
begin_hunk_0
%"struct.llvm::SmallVectorStorage.235" = type { [16 x i8] }
%"class.llvm::raw_svector_ostream" = type { %"class.llvm::raw_pwrite_stream", ptr }
%"class.llvm::raw_pwrite_stream" = type { %"class.llvm::raw_ostream" }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"struct.std::pair" = type { %"class.llvm::msgpack::DocNode", %"class.llvm::msgpack::DocNode" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::DenseMap.95" = type { ptr, ptr, i32, i32 }

$_ZN4llvm7msgpack8Document10getMapNodeEv = comdat any

$_ZN4llvm7msgpack8Document9addStringENS_9StringRefE = comdat any

$_ZN4llvm12function_refIFiPNS_7msgpack7DocNodeES2_S2_EE11callback_fnIZNS1_8Document12readFromBlobENS_9StringRefEbS5_Ed_UlS3_S2_S2_E_EEilS3_S2_S2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6MCExprENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6MCExprENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6MCExprENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6MCExprENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6MCExprENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E16shrink_and_clearEv = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str = private unnamed_addr constant [28 x i8] c"amdgpu.pal.metadata.msgpack\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"amdgpu.pal.metadata\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c".entry_point_symbol\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"_main\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c".entry_point\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c".vgpr_count\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c".agpr_count\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c".sgpr_count\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c".scratch_memory_size\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c".stack_frame_size_in_bytes\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c".backend_stack_size\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c".lds_size\00", align 1
@_ZN4llvm6AMDGPU5PALMDL18AssemblerDirectiveE = internal constant [25 x i8] c".amd_amdgpu_pal_metadata\00", align 16
@.str.13 = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c",0x\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@_ZN4llvm6AMDGPU5PALMDL23AssemblerDirectiveBeginE = internal constant [21 x i8] c".amdgpu_pal_metadata\00", align 16
@_ZN4llvm6AMDGPU5PALMDL21AssemblerDirectiveEndE = internal constant [25 x i8] c".end_amdgpu_pal_metadata\00", align 16
@.str.16 = private unnamed_addr constant [41 x i8] c"Unrecognized PAL metadata register key '\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"amdpal.pipelines\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c".registers\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c".shader_functions\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c".compute_registers\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c".graphics_registers\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c".hardware_stages\00", align 1
@_ZN4llvm6AMDGPU7ElfNoteL10NoteNameV2E = internal constant [4 x i8] c"AMD\00", align 1
@_ZN4llvm6AMDGPU7ElfNoteL10NoteNameV3E = internal constant [7 x i8] c"AMDGPU\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"amdpal.version\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4llvm19raw_svector_ostreamE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.26 = private unnamed_addr constant [4 x i8] c".ps\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c".vs\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c".gs\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c".es\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c".hs\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c".ls\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c".cs\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@_ZZL15getRegisterNamejE12RegInfoTable = internal constant { [351 x %"class.llvm::EnumString"], [8141 x i8] } { [351 x %"class.llvm::EnumString"] [%"class.llvm::EnumString" { [1 x i16] [i16 2106], [1 x i8] c"\17", i16 11338 }, %"class.llvm::EnumString" { [1 x i16] [i16 2123], [1 x i8] c"\17", i16 11339 }, %"class.llvm::EnumString" { [1 x i16] [i16 2140], [1 x i8] c"\17", i16 11594 }, %"class.llvm::EnumString" { [1 x i16] [i16 2157], [1 x i8] c"\17", i16 11595 }, %"class.llvm::EnumString" { [1 x i16] [i16 2174], [1 x i8] c"\17", i16 11530 }, %"class.llvm::EnumString" { [1 x i16] [i16 2191], [1 x i8] c"\17", i16 11531 }, %"class.llvm::EnumString" { [1 x i16] [i16 2208], [1 x i8] c"\17", i16 11466 }, %"class.llvm::EnumString" { [1 x i16] [i16 2225], [1 x i8] c"\17", i16 11467 }, %"class.llvm::EnumString" { [1 x i16] [i16 2242], [1 x i8] c"\17", i16 11402 }, %"class.llvm::EnumString" { [1 x i16] [i16 2259], [1 x i8] c"\17", i16 11403 }, %"class.llvm::EnumString" { [1 x i16] [i16 2276], [1 x i8] c"\1A", i16 11776 }, %"class.llvm::EnumString" { [1 x i16] [i16 2296], [1 x i8] c"\11", i16 11794 }, %"class.llvm::EnumString" { [1 x i16] [i16 2307], [1 x i8] c"\11", i16 11795 }, %"class.llvm::EnumString" { [1 x i16] [i16 2318], [1 x i8] c"\17", i16 11274 }, %"class.llvm::EnumString" { [1 x i16] [i16 2335], [1 x i8] c"\17", i16 11275 }, %"class.llvm::EnumString" { [1 x i16] [i16 2352], [1 x i8] c"\10", i16 -24141 }, %"class.llvm::EnumString" { [1 x i16] [i16 2362], [1 x i8] c"\11", i16 -24140 }, %"class.llvm::EnumString" { [1 x i16] [i16 2373], [1 x i8] c"\11", i16 -24138 }, %"class.llvm::EnumString" { [1 x i16] [i16 2384], [1 x i8] c"\14", i16 -23851 }, %"class.llvm::EnumString" { [1 x i16] [i16 2398], [1 x i8] c"\17", i16 11271 }, %"class.llvm::EnumString" { [1 x i16] [i16 2415], [1 x i8] c"\17", i16 11334 }, %"class.llvm::EnumString" { [1 x i16] [i16 2432], [1 x i8] c"\17", i16 11399 }, %"class.llvm::EnumString" { [1 x i16] [i16 2449], [1 x i8] c"\17", i16 11463 }, %"class.llvm::EnumString" { [1 x i16] [i16 2466], [1 x i8] c"\17", i16 11527 }, %"class.llvm::EnumString" { [1 x i16] [i16 2483], [1 x i8] c"\17", i16 11591 }, %"class.llvm::EnumString" { [1 x i16] [i16 2500], [1 x i8] c"\15", i16 -24125 }, %"class.llvm::EnumString" { [1 x i16] [i16 2515], [1 x i8] c"\11", i16 -24143 }, %"class.llvm::EnumString" { [1 x i16] [i16 2526], [1 x i8] c"\11", i16 -24057 }, %"class.llvm::EnumString" { [1 x i16] [i16 2537], [1 x i8] c"\0F", i16 -24060 }, %"class.llvm::EnumString" { [1 x i16] [i16 2546], [1 x i8] c"\0E", i16 -24058 }, %"class.llvm::EnumString" { [1 x i16] [i16 2554], [1 x i8] c"\0E", i16 -23815 }, %"class.llvm::EnumString" { [1 x i16] [i16 2562], [1 x i8] c"\11", i16 -23917 }, %"class.llvm::EnumString" { [1 x i16] [i16 2573], [1 x i8] c"\12", i16 -23903 }, %"class.llvm::EnumString" { [1 x i16] [i16 2585], [1 x i8] c"\17", i16 11393 }, %"class.llvm::EnumString" { [1 x i16] [i16 2602], [1 x i8] c"\14", i16 11800 }, %"class.llvm::EnumString" { [1 x i16] [i16 2616], [1 x i8] c"\14", i16 -24139 }, %"class.llvm::EnumString" { [1 x i16] [i16 2630], [1 x i8] c"\10", i16 -24134 }, %"class.llvm::EnumString" { [1 x i16] [i16 2640], [1 x i8] c"\13", i16 -24124 }, %"class.llvm::EnumString" { [1 x i16] [i16 2653], [1 x i8] c"\15", i16 -24123 }, %"class.llvm::EnumString" { [1 x i16] [i16 2668], [1 x i8] c"\11", i16 -24061 }, %"class.llvm::EnumString" { [1 x i16] [i16 2679], [1 x i8] c"\0E", i16 -24433 }, %"class.llvm::EnumString" { [1 x i16] [i16 2687], [1 x i8] c"\13", i16 -24175 }, %"class.llvm::EnumString" { [1 x i16] [i16 2700], [1 x i8] c"\13", i16 -24174 }, %"class.llvm::EnumString" { [1 x i16] [i16 2713], [1 x i8] c"\13", i16 -24173 }, %"class.llvm::EnumString" { [1 x i16] [i16 2726], [1 x i8] c"\13", i16 -24172 }, %"class.llvm::EnumString" { [1 x i16] [i16 2739], [1 x i8] c"\13", i16 -24171 }, %"class.llvm::EnumString" { [1 x i16] [i16 2752], [1 x i8] c"\13", i16 -24170 }, %"class.llvm::EnumString" { [1 x i16] [i16 2765], [1 x i8] c"\13", i16 -24169 }, %"class.llvm::EnumString" { [1 x i16] [i16 2778], [1 x i8] c"\13", i16 -24168 }, %"class.llvm::EnumString" { [1 x i16] [i16 2791], [1 x i8] c"\13", i16 -24167 }, %"class.llvm::EnumString" { [1 x i16] [i16 2804], [1 x i8] c"\13", i16 -24166 }, %"class.llvm::EnumString" { [1 x i16] [i16 2817], [1 x i8] c"\14", i16 -24165 }, %"class.llvm::EnumString" { [1 x i16] [i16 2831], [1 x i8] c"\14", i16 -24164 }, %"class.llvm::EnumString" { [1 x i16] [i16 2845], [1 x i8] c"\14", i16 -24163 }, %"class.llvm::EnumString" { [1 x i16] [i16 2859], [1 x i8] c"\14", i16 -24162 }, %"class.llvm::EnumString" { [1 x i16] [i16 2873], [1 x i8] c"\14", i16 -24161 }, %"class.llvm::EnumString" { [1 x i16] [i16 2887], [1 x i8] c"\14", i16 -24160 }, %"class.llvm::EnumString" { [1 x i16] [i16 2901], [1 x i8] c"\14", i16 -24159 }, %"class.llvm::EnumString" { [1 x i16] [i16 2915], [1 x i8] c"\14", i16 -24158 }, %"class.llvm::EnumString" { [1 x i16] [i16 2929], [1 x i8] c"\14", i16 -24157 }, %"class.llvm::EnumString" { [1 x i16] [i16 2943], [1 x i8] c"\14", i16 -24156 }, %"class.llvm::EnumString" { [1 x i16] [i16 2957], [1 x i8] c"\14", i16 -24155 }, %"class.llvm::EnumString" { [1 x i16] [i16 2971], [1 x i8] c"\14", i16 -24154 }, %"class.llvm::EnumString" { [1 x i16] [i16 2985], [1 x i8] c"\14", i16 -24153 }, %"class.llvm::EnumString" { [1 x i16] [i16 2999], [1 x i8] c"\14", i16 -24152 }, %"class.llvm::EnumString" { [1 x i16] [i16 3013], [1 x i8] c"\14", i16 -24151 }, %"class.llvm::EnumString" { [1 x i16] [i16 3027], [1 x i8] c"\14", i16 -24150 }, %"class.llvm::EnumString" { [1 x i16] [i16 3041], [1 x i8] c"\14", i16 -24149 }, %"class.llvm::EnumString" { [1 x i16] [i16 3055], [1 x i8] c"\14", i16 -24148 }, %"class.llvm::EnumString" { [1 x i16] [i16 3069], [1 x i8] c"\14", i16 -24147 }, %"class.llvm::EnumString" { [1 x i16] [i16 3083], [1 x i8] c"\14", i16 -24146 }, %"class.llvm::EnumString" { [1 x i16] [i16 3097], [1 x i8] c"\14", i16 -24145 }, %"class.llvm::EnumString" { [1 x i16] [i16 3111], [1 x i8] c"\14", i16 -24144 }, %"class.llvm::EnumString" { [1 x i16] [i16 3125], [1 x i8] c"\13", i16 -23858 }, %"class.llvm::EnumString" { [1 x i16] [i16 3138], [1 x i8] c"\16", i16 -23893 }, %"class.llvm::EnumString" { [1 x i16] [i16 3154], [1 x i8] c"\0B", i16 -23920 }, %"class.llvm::EnumString" { [1 x i16] [i16 3159], [1 x i8] c"\12", i16 -23919 }, %"class.llvm::EnumString" { [1 x i16] [i16 3171], [1 x i8] c"\14", i16 -23849 }, %"class.llvm::EnumString" { [1 x i16] [i16 3185], [1 x i8] c"\16", i16 -23848 }, %"class.llvm::EnumString" { [1 x i16] [i16 3201], [1 x i8] c"\16", i16 -23847 }, %"class.llvm::EnumString" { [1 x i16] [i16 3217], [1 x i8] c"\16", i16 -23846 }, %"class.llvm::EnumString" { [1 x i16] [i16 3233], [1 x i8] c"\16", i16 -23912 }, %"class.llvm::EnumString" { [1 x i16] [i16 3249], [1 x i8] c"\16", i16 -23911 }, %"class.llvm::EnumString" { [1 x i16] [i16 3265], [1 x i8] c"\16", i16 -23910 }, %"class.llvm::EnumString" { [1 x i16] [i16 3281], [1 x i8] c"\13", i16 -23836 }, %"class.llvm::EnumString" { [1 x i16] [i16 3294], [1 x i8] c"\0D", i16 -23913 }, %"class.llvm::EnumString" { [1 x i16] [i16 3301], [1 x i8] c"\14", i16 -23909 }, %"class.llvm::EnumString" { [1 x i16] [i16 3315], [1 x i8] c"\16", i16 -23892 }, %"class.llvm::EnumString" { [1 x i16] [i16 3331], [1 x i8] c"\0D", i16 -23891 }, %"class.llvm::EnumString" { [1 x i16] [i16 3338], [1 x i8] c"\0E", i16 -24136 }, %"class.llvm::EnumString" { [1 x i16] [i16 3346], [1 x i8] c"\19", i16 11340 }, %"class.llvm::EnumString" { [1 x i16] [i16 3365], [1 x i8] c"\19", i16 11341 }, %"class.llvm::EnumString" { [1 x i16] [i16 3384], [1 x i8] c"\19", i16 11342 }, %"class.llvm::EnumString" { [1 x i16] [i16 3403], [1 x i8] c"\19", i16 11343 }, %"class.llvm::EnumString" { [1 x i16] [i16 3422], [1 x i8] c"\19", i16 11344 }, %"class.llvm::EnumString" { [1 x i16] [i16 3441], [1 x i8] c"\19", i16 11345 }, %"class.llvm::EnumString" { [1 x i16] [i16 3460], [1 x i8] c"\19", i16 11346 }, %"class.llvm::EnumString" { [1 x i16] [i16 3479], [1 x i8] c"\19", i16 11347 }, %"class.llvm::EnumString" { [1 x i16] [i16 3498], [1 x i8] c"\19", i16 11348 }, %"class.llvm::EnumString" { [1 x i16] [i16 3517], [1 x i8] c"\19", i16 11349 }, %"class.llvm::EnumString" { [1 x i16] [i16 3536], [1 x i8] c"\1A", i16 11350 }, %"class.llvm::EnumString" { [1 x i16] [i16 3556], [1 x i8] c"\1A", i16 11351 }, %"class.llvm::EnumString" { [1 x i16] [i16 3576], [1 x i8] c"\1A", i16 11352 }, %"class.llvm::EnumString" { [1 x i16] [i16 3596], [1 x i8] c"\1A", i16 11353 }, %"class.llvm::EnumString" { [1 x i16] [i16 3616], [1 x i8] c"\1A", i16 11354 }, %"class.llvm::EnumString" { [1 x i16] [i16 3636], [1 x i8] c"\1A", i16 11355 }, %"class.llvm::EnumString" { [1 x i16] [i16 3656], [1 x i8] c"\1A", i16 11356 }, %"class.llvm::EnumString" { [1 x i16] [i16 3676], [1 x i8] c"\1A", i16 11357 }, %"class.llvm::EnumString" { [1 x i16] [i16 3696], [1 x i8] c"\1A", i16 11358 }, %"class.llvm::EnumString" { [1 x i16] [i16 3716], [1 x i8] c"\1A", i16 11359 }, %"class.llvm::EnumString" { [1 x i16] [i16 3736], [1 x i8] c"\1A", i16 11360 }, %"class.llvm::EnumString" { [1 x i16] [i16 3756], [1 x i8] c"\1A", i16 11361 }, %"class.llvm::EnumString" { [1 x i16] [i16 3776], [1 x i8] c"\1A", i16 11362 }, %"class.llvm::EnumString" { [1 x i16] [i16 3796], [1 x i8] c"\1A", i16 11363 }, %"class.llvm::EnumString" { [1 x i16] [i16 3816], [1 x i8] c"\1A", i16 11364 }, %"class.llvm::EnumString" { [1 x i16] [i16 3836], [1 x i8] c"\1A", i16 11365 }, %"class.llvm::EnumString" { [1 x i16] [i16 3856], [1 x i8] c"\1A", i16 11366 }, %"class.llvm::EnumString" { [1 x i16] [i16 3876], [1 x i8] c"\1A", i16 11367 }, %"class.llvm::EnumString" { [1 x i16] [i16 3896], [1 x i8] c"\1A", i16 11368 }, %"class.llvm::EnumString" { [1 x i16] [i16 3916], [1 x i8] c"\1A", i16 11369 }, %"class.llvm::EnumString" { [1 x i16] [i16 3936], [1 x i8] c"\1A", i16 11370 }, %"class.llvm::EnumString" { [1 x i16] [i16 3956], [1 x i8] c"\1A", i16 11371 }, %"class.llvm::EnumString" { [1 x i16] [i16 3976], [1 x i8] c"\19", i16 11404 }, %"class.llvm::EnumString" { [1 x i16] [i16 3995], [1 x i8] c"\19", i16 11405 }, %"class.llvm::EnumString" { [1 x i16] [i16 4014], [1 x i8] c"\19", i16 11406 }, %"class.llvm::EnumString" { [1 x i16] [i16 4033], [1 x i8] c"\19", i16 11407 }, %"class.llvm::EnumString" { [1 x i16] [i16 4052], [1 x i8] c"\19", i16 11408 }, %"class.llvm::EnumString" { [1 x i16] [i16 4071], [1 x i8] c"\19", i16 11409 }, %"class.llvm::EnumString" { [1 x i16] [i16 4090], [1 x i8] c"\19", i16 11410 }, %"class.llvm::EnumString" { [1 x i16] [i16 4109], [1 x i8] c"\19", i16 11411 }, %"class.llvm::EnumString" { [1 x i16] [i16 4128], [1 x i8] c"\19", i16 11412 }, %"class.llvm::EnumString" { [1 x i16] [i16 4147], [1 x i8] c"\19", i16 11413 }, %"class.llvm::EnumString" { [1 x i16] [i16 4166], [1 x i8] c"\1A", i16 11414 }, %"class.llvm::EnumString" { [1 x i16] [i16 4186], [1 x i8] c"\1A", i16 11415 }, %"class.llvm::EnumString" { [1 x i16] [i16 4206], [1 x i8] c"\1A", i16 11416 }, %"class.llvm::EnumString" { [1 x i16] [i16 4226], [1 x i8] c"\1A", i16 11417 }, %"class.llvm::EnumString" { [1 x i16] [i16 4246], [1 x i8] c"\1A", i16 11418 }, %"class.llvm::EnumString" { [1 x i16] [i16 4266], [1 x i8] c"\1A", i16 11419 }, %"class.llvm::EnumString" { [1 x i16] [i16 4286], [1 x i8] c"\1A", i16 11420 }, %"class.llvm::EnumString" { [1 x i16] [i16 4306], [1 x i8] c"\1A", i16 11421 }, %"class.llvm::EnumString" { [1 x i16] [i16 4326], [1 x i8] c"\1A", i16 11422 }, %"class.llvm::EnumString" { [1 x i16] [i16 4346], [1 x i8] c"\1A", i16 11423 }, %"class.llvm::EnumString" { [1 x i16] [i16 4366], [1 x i8] c"\1A", i16 11424 }, %"class.llvm::EnumString" { [1 x i16] [i16 4386], [1 x i8] c"\1A", i16 11425 }, %"class.llvm::EnumString" { [1 x i16] [i16 4406], [1 x i8] c"\1A", i16 11426 }, %"class.llvm::EnumString" { [1 x i16] [i16 4426], [1 x i8] c"\1A", i16 11427 }, %"class.llvm::EnumString" { [1 x i16] [i16 4446], [1 x i8] c"\1A", i16 11428 }, %"class.llvm::EnumString" { [1 x i16] [i16 4466], [1 x i8] c"\1A", i16 11429 }, %"class.llvm::EnumString" { [1 x i16] [i16 4486], [1 x i8] c"\1A", i16 11430 }, %"class.llvm::EnumString" { [1 x i16] [i16 4506], [1 x i8] c"\1A", i16 11431 }, %"class.llvm::EnumString" { [1 x i16] [i16 4526], [1 x i8] c"\1A", i16 11432 }, %"class.llvm::EnumString" { [1 x i16] [i16 4546], [1 x i8] c"\1A", i16 11433 }, %"class.llvm::EnumString" { [1 x i16] [i16 4566], [1 x i8] c"\1A", i16 11434 }, %"class.llvm::EnumString" { [1 x i16] [i16 4586], [1 x i8] c"\1A", i16 11435 }, %"class.llvm::EnumString" { [1 x i16] [i16 4606], [1 x i8] c"\19", i16 11468 }, %"class.llvm::EnumString" { [1 x i16] [i16 4625], [1 x i8] c"\19", i16 11469 }, %"class.llvm::EnumString" { [1 x i16] [i16 4644], [1 x i8] c"\19", i16 11470 }, %"class.llvm::EnumString" { [1 x i16] [i16 4663], [1 x i8] c"\19", i16 11471 }, %"class.llvm::EnumString" { [1 x i16] [i16 4682], [1 x i8] c"\19", i16 11472 }, %"class.llvm::EnumString" { [1 x i16] [i16 4701], [1 x i8] c"\19", i16 11473 }, %"class.llvm::EnumString" { [1 x i16] [i16 4720], [1 x i8] c"\19", i16 11474 }, %"class.llvm::EnumString" { [1 x i16] [i16 4739], [1 x i8] c"\19", i16 11475 }, %"class.llvm::EnumString" { [1 x i16] [i16 4758], [1 x i8] c"\19", i16 11476 }, %"class.llvm::EnumString" { [1 x i16] [i16 4777], [1 x i8] c"\19", i16 11477 }, %"class.llvm::EnumString" { [1 x i16] [i16 4796], [1 x i8] c"\1A", i16 11478 }, %"class.llvm::EnumString" { [1 x i16] [i16 4816], [1 x i8] c"\1A", i16 11479 }, %"class.llvm::EnumString" { [1 x i16] [i16 4836], [1 x i8] c"\1A", i16 11480 }, %"class.llvm::EnumString" { [1 x i16] [i16 4856], [1 x i8] c"\1A", i16 11481 }, %"class.llvm::EnumString" { [1 x i16] [i16 4876], [1 x i8] c"\1A", i16 11482 }, %"class.llvm::EnumString" { [1 x i16] [i16 4896], [1 x i8] c"\1A", i16 11483 }, %"class.llvm::EnumString" { [1 x i16] [i16 4916], [1 x i8] c"\1A", i16 11484 }, %"class.llvm::EnumString" { [1 x i16] [i16 4936], [1 x i8] c"\1A", i16 11485 }, %"class.llvm::EnumString" { [1 x i16] [i16 4956], [1 x i8] c"\1A", i16 11486 }, %"class.llvm::EnumString" { [1 x i16] [i16 4976], [1 x i8] c"\1A", i16 11487 }, %"class.llvm::EnumString" { [1 x i16] [i16 4996], [1 x i8] c"\1A", i16 11488 }, %"class.llvm::EnumString" { [1 x i16] [i16 5016], [1 x i8] c"\1A", i16 11489 }, %"class.llvm::EnumString" { [1 x i16] [i16 5036], [1 x i8] c"\1A", i16 11490 }, %"class.llvm::EnumString" { [1 x i16] [i16 5056], [1 x i8] c"\1A", i16 11491 }, %"class.llvm::EnumString" { [1 x i16] [i16 5076], [1 x i8] c"\1A", i16 11492 }, %"class.llvm::EnumString" { [1 x i16] [i16 5096], [1 x i8] c"\1A", i16 11493 }, %"class.llvm::EnumString" { [1 x i16] [i16 5116], [1 x i8] c"\1A", i16 11494 }, %"class.llvm::EnumString" { [1 x i16] [i16 5136], [1 x i8] c"\1A", i16 11495 }, %"class.llvm::EnumString" { [1 x i16] [i16 5156], [1 x i8] c"\1A", i16 11496 }, %"class.llvm::EnumString" { [1 x i16] [i16 5176], [1 x i8] c"\1A", i16 11497 }, %"class.llvm::EnumString" { [1 x i16] [i16 5196], [1 x i8] c"\1A", i16 11498 }, %"class.llvm::EnumString" { [1 x i16] [i16 5216], [1 x i8] c"\1A", i16 11499 }, %"class.llvm::EnumString" { [1 x i16] [i16 5236], [1 x i8] c"\19", i16 11276 }, %"class.llvm::EnumString" { [1 x i16] [i16 5255], [1 x i8] c"\19", i16 11277 }, %"class.llvm::EnumString" { [1 x i16] [i16 5274], [1 x i8] c"\19", i16 11278 }, %"class.llvm::EnumString" { [1 x i16] [i16 5293], [1 x i8] c"\19", i16 11279 }, %"class.llvm::EnumString" { [1 x i16] [i16 5312], [1 x i8] c"\19", i16 11280 }, %"class.llvm::EnumString" { [1 x i16] [i16 5331], [1 x i8] c"\19", i16 11281 }, %"class.llvm::EnumString" { [1 x i16] [i16 5350], [1 x i8] c"\19", i16 11282 }, %"class.llvm::EnumString" { [1 x i16] [i16 5369], [1 x i8] c"\19", i16 11283 }, %"class.llvm::EnumString" { [1 x i16] [i16 5388], [1 x i8] c"\19", i16 11284 }, %"class.llvm::EnumString" { [1 x i16] [i16 5407], [1 x i8] c"\19", i16 11285 }, %"class.llvm::EnumString" { [1 x i16] [i16 5426], [1 x i8] c"\1A", i16 11286 }, %"class.llvm::EnumString" { [1 x i16] [i16 5446], [1 x i8] c"\1A", i16 11287 }, %"class.llvm::EnumString" { [1 x i16] [i16 5466], [1 x i8] c"\1A", i16 11288 }, %"class.llvm::EnumString" { [1 x i16] [i16 5486], [1 x i8] c"\1A", i16 11289 }, %"class.llvm::EnumString" { [1 x i16] [i16 5506], [1 x i8] c"\1A", i16 11290 }, %"class.llvm::EnumString" { [1 x i16] [i16 5526], [1 x i8] c"\1A", i16 11291 }, %"class.llvm::EnumString" { [1 x i16] [i16 5546], [1 x i8] c"\1A", i16 11292 }, %"class.llvm::EnumString" { [1 x i16] [i16 5566], [1 x i8] c"\1A", i16 11293 }, %"class.llvm::EnumString" { [1 x i16] [i16 5586], [1 x i8] c"\1A", i16 11294 }, %"class.llvm::EnumString" { [1 x i16] [i16 5606], [1 x i8] c"\1A", i16 11295 }, %"class.llvm::EnumString" { [1 x i16] [i16 5626], [1 x i8] c"\1A", i16 11296 }, %"class.llvm::EnumString" { [1 x i16] [i16 5646], [1 x i8] c"\1A", i16 11297 }, %"class.llvm::EnumString" { [1 x i16] [i16 5666], [1 x i8] c"\1A", i16 11298 }, %"class.llvm::EnumString" { [1 x i16] [i16 5686], [1 x i8] c"\1A", i16 11299 }, %"class.llvm::EnumString" { [1 x i16] [i16 5706], [1 x i8] c"\1A", i16 11300 }, %"class.llvm::EnumString" { [1 x i16] [i16 5726], [1 x i8] c"\1A", i16 11301 }, %"class.llvm::EnumString" { [1 x i16] [i16 5746], [1 x i8] c"\1A", i16 11302 }, %"class.llvm::EnumString" { [1 x i16] [i16 5766], [1 x i8] c"\1A", i16 11303 }, %"class.llvm::EnumString" { [1 x i16] [i16 5786], [1 x i8] c"\1A", i16 11304 }, %"class.llvm::EnumString" { [1 x i16] [i16 5806], [1 x i8] c"\1A", i16 11305 }, %"class.llvm::EnumString" { [1 x i16] [i16 5826], [1 x i8] c"\1A", i16 11306 }, %"class.llvm::EnumString" { [1 x i16] [i16 5846], [1 x i8] c"\1A", i16 11307 }, %"class.llvm::EnumString" { [1 x i16] [i16 5866], [1 x i8] c"\13", i16 11840 }, %"class.llvm::EnumString" { [1 x i16] [i16 5879], [1 x i8] c"\13", i16 11841 }, %"class.llvm::EnumString" { [1 x i16] [i16 5892], [1 x i8] c"\13", i16 11842 }, %"class.llvm::EnumString" { [1 x i16] [i16 5905], [1 x i8] c"\13", i16 11843 }, %"class.llvm::EnumString" { [1 x i16] [i16 5918], [1 x i8] c"\13", i16 11844 }, %"class.llvm::EnumString" { [1 x i16] [i16 5931], [1 x i8] c"\13", i16 11845 }, %"class.llvm::EnumString" { [1 x i16] [i16 5944], [1 x i8] c"\13", i16 11846 }, %"class.llvm::EnumString" { [1 x i16] [i16 5957], [1 x i8] c"\13", i16 11847 }, %"class.llvm::EnumString" { [1 x i16] [i16 5970], [1 x i8] c"\13", i16 11848 }, %"class.llvm::EnumString" { [1 x i16] [i16 5983], [1 x i8] c"\13", i16 11849 }, %"class.llvm::EnumString" { [1 x i16] [i16 5996], [1 x i8] c"\14", i16 11850 }, %"class.llvm::EnumString" { [1 x i16] [i16 6010], [1 x i8] c"\14", i16 11851 }, %"class.llvm::EnumString" { [1 x i16] [i16 6024], [1 x i8] c"\14", i16 11852 }, %"class.llvm::EnumString" { [1 x i16] [i16 6038], [1 x i8] c"\14", i16 11853 }, %"class.llvm::EnumString" { [1 x i16] [i16 6052], [1 x i8] c"\14", i16 11854 }, %"class.llvm::EnumString" { [1 x i16] [i16 6066], [1 x i8] c"\14", i16 11855 }, %"class.llvm::EnumString" { [1 x i16] [i16 6080], [1 x i8] c"\14", i16 11856 }, %"class.llvm::EnumString" { [1 x i16] [i16 6094], [1 x i8] c"\14", i16 11857 }, %"class.llvm::EnumString" { [1 x i16] [i16 6108], [1 x i8] c"\14", i16 11858 }, %"class.llvm::EnumString" { [1 x i16] [i16 6122], [1 x i8] c"\14", i16 11859 }, %"class.llvm::EnumString" { [1 x i16] [i16 6136], [1 x i8] c"\14", i16 11860 }, %"class.llvm::EnumString" { [1 x i16] [i16 6150], [1 x i8] c"\14", i16 11861 }, %"class.llvm::EnumString" { [1 x i16] [i16 6164], [1 x i8] c"\14", i16 11862 }, %"class.llvm::EnumString" { [1 x i16] [i16 6178], [1 x i8] c"\14", i16 11863 }, %"class.llvm::EnumString" { [1 x i16] [i16 6192], [1 x i8] c"\14", i16 11864 }, %"class.llvm::EnumString" { [1 x i16] [i16 6206], [1 x i8] c"\14", i16 11865 }, %"class.llvm::EnumString" { [1 x i16] [i16 6220], [1 x i8] c"\14", i16 11866 }, %"class.llvm::EnumString" { [1 x i16] [i16 6234], [1 x i8] c"\14", i16 11867 }, %"class.llvm::EnumString" { [1 x i16] [i16 6248], [1 x i8] c"\14", i16 11868 }, %"class.llvm::EnumString" { [1 x i16] [i16 6262], [1 x i8] c"\14", i16 11869 }, %"class.llvm::EnumString" { [1 x i16] [i16 6276], [1 x i8] c"\14", i16 11870 }, %"class.llvm::EnumString" { [1 x i16] [i16 6290], [1 x i8] c"\14", i16 11871 }, %"class.llvm::EnumString" { [1 x i16] [i16 6304], [1 x i8] c"\14", i16 11783 }, %"class.llvm::EnumString" { [1 x i16] [i16 6318], [1 x i8] c"\14", i16 11784 }, %"class.llvm::EnumString" { [1 x i16] [i16 6332], [1 x i8] c"\14", i16 11785 }, %"class.llvm::EnumString" { [1 x i16] [i16 6346], [1 x i8] c"\0C", i16 -23845 }, %"class.llvm::EnumString" { [1 x i16] [i16 6352], [1 x i8] c"\10", i16 -23850 }, %"class.llvm::EnumString" { [1 x i16] [i16 6362], [1 x i8] c"\16", i16 -23929 }, %"class.llvm::EnumString" { [1 x i16] [i16 6378], [1 x i8] c"\16", i16 -23930 }, %"class.llvm::EnumString" { [1 x i16] [i16 6394], [1 x i8] c"\0F", i16 -23816 }, %"class.llvm::EnumString" { [1 x i16] [i16 6403], [1 x i8] c"\14", i16 -23792 }, %"class.llvm::EnumString" { [1 x i16] [i16 6417], [1 x i8] c"%", i16 -23789 }, %"class.llvm::EnumString" { [1 x i16] [i16 6448], [1 x i8] c"\19", i16 11532 }, %"class.llvm::EnumString" { [1 x i16] [i16 6467], [1 x i8] c"\19", i16 11533 }, %"class.llvm::EnumString" { [1 x i16] [i16 6486], [1 x i8] c"\19", i16 11534 }, %"class.llvm::EnumString" { [1 x i16] [i16 6505], [1 x i8] c"\19", i16 11535 }, %"class.llvm::EnumString" { [1 x i16] [i16 6524], [1 x i8] c"\19", i16 11536 }, %"class.llvm::EnumString" { [1 x i16] [i16 6543], [1 x i8] c"\19", i16 11537 }, %"class.llvm::EnumString" { [1 x i16] [i16 6562], [1 x i8] c"\19", i16 11538 }, %"class.llvm::EnumString" { [1 x i16] [i16 6581], [1 x i8] c"\19", i16 11539 }, %"class.llvm::EnumString" { [1 x i16] [i16 6600], [1 x i8] c"\19", i16 11540 }, %"class.llvm::EnumString" { [1 x i16] [i16 6619], [1 x i8] c"\19", i16 11541 }, %"class.llvm::EnumString" { [1 x i16] [i16 6638], [1 x i8] c"\1A", i16 11542 }, %"class.llvm::EnumString" { [1 x i16] [i16 6658], [1 x i8] c"\1A", i16 11543 }, %"class.llvm::EnumString" { [1 x i16] [i16 6678], [1 x i8] c"\1A", i16 11544 }, %"class.llvm::EnumString" { [1 x i16] [i16 6698], [1 x i8] c"\1A", i16 11545 }, %"class.llvm::EnumString" { [1 x i16] [i16 6718], [1 x i8] c"\1A", i16 11546 }, %"class.llvm::EnumString" { [1 x i16] [i16 6738], [1 x i8] c"\1A", i16 11547 }, %"class.llvm::EnumString" { [1 x i16] [i16 6758], [1 x i8] c"\1A", i16 11548 }, %"class.llvm::EnumString" { [1 x i16] [i16 6778], [1 x i8] c"\1A", i16 11549 }, %"class.llvm::EnumString" { [1 x i16] [i16 6798], [1 x i8] c"\1A", i16 11550 }, %"class.llvm::EnumString" { [1 x i16] [i16 6818], [1 x i8] c"\1A", i16 11551 }, %"class.llvm::EnumString" { [1 x i16] [i16 6838], [1 x i8] c"\1A", i16 11552 }, %"class.llvm::EnumString" { [1 x i16] [i16 6858], [1 x i8] c"\1A", i16 11553 }, %"class.llvm::EnumString" { [1 x i16] [i16 6878], [1 x i8] c"\1A", i16 11554 }, %"class.llvm::EnumString" { [1 x i16] [i16 6898], [1 x i8] c"\1A", i16 11555 }, %"class.llvm::EnumString" { [1 x i16] [i16 6918], [1 x i8] c"\1A", i16 11556 }, %"class.llvm::EnumString" { [1 x i16] [i16 6938], [1 x i8] c"\1A", i16 11557 }, %"class.llvm::EnumString" { [1 x i16] [i16 6958], [1 x i8] c"\1A", i16 11558 }, %"class.llvm::EnumString" { [1 x i16] [i16 6978], [1 x i8] c"\1A", i16 11559 }, %"class.llvm::EnumString" { [1 x i16] [i16 6998], [1 x i8] c"\1A", i16 11560 }, %"class.llvm::EnumString" { [1 x i16] [i16 7018], [1 x i8] c"\1A", i16 11561 }, %"class.llvm::EnumString" { [1 x i16] [i16 7038], [1 x i8] c"\1A", i16 11562 }, %"class.llvm::EnumString" { [1 x i16] [i16 7058], [1 x i8] c"\1A", i16 11563 }, %"class.llvm::EnumString" { [1 x i16] [i16 7078], [1 x i8] c"\19", i16 11596 }, %"class.llvm::EnumString" { [1 x i16] [i16 7097], [1 x i8] c"\19", i16 11597 }, %"class.llvm::EnumString" { [1 x i16] [i16 7116], [1 x i8] c"\19", i16 11598 }, %"class.llvm::EnumString" { [1 x i16] [i16 7135], [1 x i8] c"\19", i16 11599 }, %"class.llvm::EnumString" { [1 x i16] [i16 7154], [1 x i8] c"\19", i16 11600 }, %"class.llvm::EnumString" { [1 x i16] [i16 7173], [1 x i8] c"\19", i16 11601 }, %"class.llvm::EnumString" { [1 x i16] [i16 7192], [1 x i8] c"\19", i16 11602 }, %"class.llvm::EnumString" { [1 x i16] [i16 7211], [1 x i8] c"\19", i16 11603 }, %"class.llvm::EnumString" { [1 x i16] [i16 7230], [1 x i8] c"\19", i16 11604 }, %"class.llvm::EnumString" { [1 x i16] [i16 7249], [1 x i8] c"\19", i16 11605 }, %"class.llvm::EnumString" { [1 x i16] [i16 7268], [1 x i8] c"\1A", i16 11606 }, %"class.llvm::EnumString" { [1 x i16] [i16 7288], [1 x i8] c"\1A", i16 11607 }, %"class.llvm::EnumString" { [1 x i16] [i16 7308], [1 x i8] c"\1A", i16 11608 }, %"class.llvm::EnumString" { [1 x i16] [i16 7328], [1 x i8] c"\1A", i16 11609 }, %"class.llvm::EnumString" { [1 x i16] [i16 7348], [1 x i8] c"\1A", i16 11610 }, %"class.llvm::EnumString" { [1 x i16] [i16 7368], [1 x i8] c"\1A", i16 11611 }, %"class.llvm::EnumString" { [1 x i16] [i16 7388], [1 x i8] c"\12", i16 -23894 }, %"class.llvm::EnumString" { [1 x i16] [i16 7400], [1 x i8] c"\1D", i16 -23899 }, %"class.llvm::EnumString" { [1 x i16] [i16 7423], [1 x i8] c"\19", i16 -23834 }, %"class.llvm::EnumString" { [1 x i16] [i16 7442], [1 x i8] c"\12", i16 -23835 }, %"class.llvm::EnumString" { [1 x i16] [i16 7454], [1 x i8] c"\18", i16 -23883 }, %"class.llvm::EnumString" { [1 x i16] [i16 7472], [1 x i8] c"\18", i16 -23879 }, %"class.llvm::EnumString" { [1 x i16] [i16 7490], [1 x i8] c"\18", i16 -23875 }, %"class.llvm::EnumString" { [1 x i16] [i16 7508], [1 x i8] c"\18", i16 -23871 }, %"class.llvm::EnumString" { [1 x i16] [i16 7526], [1 x i8] c"\1B", i16 -23786 }, %"class.llvm::EnumString" { [1 x i16] [i16 7547], [1 x i8] c"\11", i16 11816 }, %"class.llvm::EnumString" { [1 x i16] [i16 7558], [1 x i8] c"\15", i16 11818 }, %"class.llvm::EnumString" { [1 x i16] [i16 7573], [1 x i8] c"\14", i16 11812 }, %"class.llvm::EnumString" { [1 x i16] [i16 7587], [1 x i8] c"\14", i16 11813 }, %"class.llvm::EnumString" { [1 x i16] [i16 7601], [1 x i8] c"\14", i16 11814 }, %"class.llvm::EnumString" { [1 x i16] [i16 7615], [1 x i8] c"\14", i16 11815 }, %"class.llvm::EnumString" { [1 x i16] [i16 7629], [1 x i8] c"\1A", i16 -24065 }, %"class.llvm::EnumString" { [1 x i16] [i16 7649], [1 x i8] c"\12", i16 -23853 }, %"class.llvm::EnumString" { [1 x i16] [i16 7661], [1 x i8] c"\0E", i16 -15777 }, %"class.llvm::EnumString" { [1 x i16] [i16 7669], [1 x i8] c"\0F", i16 -15774 }, %"class.llvm::EnumString" { [1 x i16] [i16 7678], [1 x i8] c"\18", i16 -15784 }, %"class.llvm::EnumString" { [1 x i16] [i16 7696], [1 x i8] c"\0E", i16 -24048 }, %"class.llvm::EnumString" { [1 x i16] [i16 7704], [1 x i8] c"\15", i16 -24126 }, %"class.llvm::EnumString" { [1 x i16] [i16 7719], [1 x i8] c"\18", i16 11392 }, %"class.llvm::EnumString" { [1 x i16] [i16 7737], [1 x i8] c"\18", i16 11520 }, %"class.llvm::EnumString" { [1 x i16] [i16 7755], [1 x i8] c"\18", i16 11270 }, %"class.llvm::EnumString" { [1 x i16] [i16 7773], [1 x i8] c"\18", i16 11333 }, %"class.llvm::EnumString" { [1 x i16] [i16 7791], [1 x i8] c"\14", i16 11400 }, %"class.llvm::EnumString" { [1 x i16] [i16 7805], [1 x i8] c"\1C", i16 11442 }, %"class.llvm::EnumString" { [1 x i16] [i16 7827], [1 x i8] c"\1C", i16 11443 }, %"class.llvm::EnumString" { [1 x i16] [i16 7849], [1 x i8] c"\1C", i16 11444 }, %"class.llvm::EnumString" { [1 x i16] [i16 7871], [1 x i8] c"\1C", i16 11445 }, %"class.llvm::EnumString" { [1 x i16] [i16 7893], [1 x i8] c"\1C", i16 11570 }, %"class.llvm::EnumString" { [1 x i16] [i16 7915], [1 x i8] c"\1C", i16 11571 }, %"class.llvm::EnumString" { [1 x i16] [i16 7937], [1 x i8] c"\1C", i16 11572 }, %"class.llvm::EnumString" { [1 x i16] [i16 7959], [1 x i8] c"\1C", i16 11573 }, %"class.llvm::EnumString" { [1 x i16] [i16 7981], [1 x i8] c"\1A", i16 11314 }, %"class.llvm::EnumString" { [1 x i16] [i16 8001], [1 x i8] c"\1A", i16 11315 }, %"class.llvm::EnumString" { [1 x i16] [i16 8021], [1 x i8] c"\1A", i16 11316 }, %"class.llvm::EnumString" { [1 x i16] [i16 8041], [1 x i8] c"\1A", i16 11317 }, %"class.llvm::EnumString" { [1 x i16] [i16 8061], [1 x i8] c"\1A", i16 11378 }, %"class.llvm::EnumString" { [1 x i16] [i16 8081], [1 x i8] c"\1A", i16 11379 }, %"class.llvm::EnumString" { [1 x i16] [i16 8101], [1 x i8] c"\1A", i16 11380 }, %"class.llvm::EnumString" { [1 x i16] [i16 8121], [1 x i8] c"\1A", i16 11381 }], [8141 x i8] c"SPI_SHADER_PGM_RSRC1_VSSPI_SHADER_PGM_RSRC2_VSSPI_SHADER_PGM_RSRC1_LSSPI_SHADER_PGM_RSRC2_LSSPI_SHADER_PGM_RSRC1_HSSPI_SHADER_PGM_RSRC2_HSSPI_SHADER_PGM_RSRC1_ESSPI_SHADER_PGM_RSRC2_ESSPI_SHADER_PGM_RSRC1_GSSPI_SHADER_PGM_RSRC2_GSCOMPUTE_DISPATCH_INITIATORCOMPUTE_PGM_RSRC1COMPUTE_PGM_RSRC2SPI_SHADER_PGM_RSRC1_PSSPI_SHADER_PGM_RSRC2_PSSPI_PS_INPUT_ENASPI_PS_INPUT_ADDRSPI_PS_IN_CONTROLVGT_SHADER_STAGES_ENSPI_SHADER_PGM_RSRC3_PSSPI_SHADER_PGM_RSRC3_VSSPI_SHADER_PGM_RSRC3_GSSPI_SHADER_PGM_RSRC3_ESSPI_SHADER_PGM_RSRC3_HSSPI_SHADER_PGM_RSRC3_LSSPI_SHADER_POS_FORMATSPI_VS_OUT_CONFIGPA_CL_VS_OUT_CNTLPA_CL_CLIP_CNTLPA_CL_VTE_CNTLPA_SU_VTX_CNTLPA_SC_MODE_CNTL_1VGT_PRIMITIVEID_ENSPI_SHADER_PGM_RSRC4_GSCOMPUTE_TMPRING_SIZESPI_INTERP_CONTROL_0SPI_TMPRING_SIZESPI_SHADER_Z_FORMATSPI_SHADER_COL_FORMATDB_SHADER_CONTROLCB_SHADER_MASKSPI_PS_INPUT_CNTL_0SPI_PS_INPUT_CNTL_1SPI_PS_INPUT_CNTL_2SPI_PS_INPUT_CNTL_3SPI_PS_INPUT_CNTL_4SPI_PS_INPUT_CNTL_5SPI_PS_INPUT_CNTL_6SPI_PS_INPUT_CNTL_7SPI_PS_INPUT_CNTL_8SPI_PS_INPUT_CNTL_9SPI_PS_INPUT_CNTL_10SPI_PS_INPUT_CNTL_11SPI_PS_INPUT_CNTL_12SPI_PS_INPUT_CNTL_13SPI_PS_INPUT_CNTL_14SPI_PS_INPUT_CNTL_15SPI_PS_INPUT_CNTL_16SPI_PS_INPUT_CNTL_17SPI_PS_INPUT_CNTL_18SPI_PS_INPUT_CNTL_19SPI_PS_INPUT_CNTL_20SPI_PS_INPUT_CNTL_21SPI_PS_INPUT_CNTL_22SPI_PS_INPUT_CNTL_23SPI_PS_INPUT_CNTL_24SPI_PS_INPUT_CNTL_25SPI_PS_INPUT_CNTL_26SPI_PS_INPUT_CNTL_27SPI_PS_INPUT_CNTL_28SPI_PS_INPUT_CNTL_29SPI_PS_INPUT_CNTL_30SPI_PS_INPUT_CNTL_31VGT_GS_MAX_VERT_OUTVGT_ESGS_RING_ITEMSIZEVGT_GS_MODEVGT_GS_ONCHIP_CNTLVGT_GS_VERT_ITEMSIZEVGT_GS_VERT_ITEMSIZE_1VGT_GS_VERT_ITEMSIZE_2VGT_GS_VERT_ITEMSIZE_3VGT_GSVS_RING_OFFSET_1VGT_GSVS_RING_OFFSET_2VGT_GSVS_RING_OFFSET_3VGT_GS_INSTANCE_CNTVGT_GS_PER_VSVGT_GS_OUT_PRIM_TYPEVGT_GSVS_RING_ITEMSIZEVGT_REUSE_OFFSPI_BARYC_CNTLSPI_SHADER_USER_DATA_VS_0SPI_SHADER_USER_DATA_VS_1SPI_SHADER_USER_DATA_VS_2SPI_SHADER_USER_DATA_VS_3SPI_SHADER_USER_DATA_VS_4SPI_SHADER_USER_DATA_VS_5SPI_SHADER_USER_DATA_VS_6SPI_SHADER_USER_DATA_VS_7SPI_SHADER_USER_DATA_VS_8SPI_SHADER_USER_DATA_VS_9SPI_SHADER_USER_DATA_VS_10SPI_SHADER_USER_DATA_VS_11SPI_SHADER_USER_DATA_VS_12SPI_SHADER_USER_DATA_VS_13SPI_SHADER_USER_DATA_VS_14SPI_SHADER_USER_DATA_VS_15SPI_SHADER_USER_DATA_VS_16SPI_SHADER_USER_DATA_VS_17SPI_SHADER_USER_DATA_VS_18SPI_SHADER_USER_DATA_VS_19SPI_SHADER_USER_DATA_VS_20SPI_SHADER_USER_DATA_VS_21SPI_SHADER_USER_DATA_VS_22SPI_SHADER_USER_DATA_VS_23SPI_SHADER_USER_DATA_VS_24SPI_SHADER_USER_DATA_VS_25SPI_SHADER_USER_DATA_VS_26SPI_SHADER_USER_DATA_VS_27SPI_SHADER_USER_DATA_VS_28SPI_SHADER_USER_DATA_VS_29SPI_SHADER_USER_DATA_VS_30SPI_SHADER_USER_DATA_VS_31SPI_SHADER_USER_DATA_GS_0SPI_SHADER_USER_DATA_GS_1SPI_SHADER_USER_DATA_GS_2SPI_SHADER_USER_DATA_GS_3SPI_SHADER_USER_DATA_GS_4SPI_SHADER_USER_DATA_GS_5SPI_SHADER_USER_DATA_GS_6SPI_SHADER_USER_DATA_GS_7SPI_SHADER_USER_DATA_GS_8SPI_SHADER_USER_DATA_GS_9SPI_SHADER_USER_DATA_GS_10SPI_SHADER_USER_DATA_GS_11SPI_SHADER_USER_DATA_GS_12SPI_SHADER_USER_DATA_GS_13SPI_SHADER_USER_DATA_GS_14SPI_SHADER_USER_DATA_GS_15SPI_SHADER_USER_DATA_GS_16SPI_SHADER_USER_DATA_GS_17SPI_SHADER_USER_DATA_GS_18SPI_SHADER_USER_DATA_GS_19SPI_SHADER_USER_DATA_GS_20SPI_SHADER_USER_DATA_GS_21SPI_SHADER_USER_DATA_GS_22SPI_SHADER_USER_DATA_GS_23SPI_SHADER_USER_DATA_GS_24SPI_SHADER_USER_DATA_GS_25SPI_SHADER_USER_DATA_GS_26SPI_SHADER_USER_DATA_GS_27SPI_SHADER_USER_DATA_GS_28SPI_SHADER_USER_DATA_GS_29SPI_SHADER_USER_DATA_GS_30SPI_SHADER_USER_DATA_GS_31SPI_SHADER_USER_DATA_ES_0SPI_SHADER_USER_DATA_ES_1SPI_SHADER_USER_DATA_ES_2SPI_SHADER_USER_DATA_ES_3SPI_SHADER_USER_DATA_ES_4SPI_SHADER_USER_DATA_ES_5SPI_SHADER_USER_DATA_ES_6SPI_SHADER_USER_DATA_ES_7SPI_SHADER_USER_DATA_ES_8SPI_SHADER_USER_DATA_ES_9SPI_SHADER_USER_DATA_ES_10SPI_SHADER_USER_DATA_ES_11SPI_SHADER_USER_DATA_ES_12SPI_SHADER_USER_DATA_ES_13SPI_SHADER_USER_DATA_ES_14SPI_SHADER_USER_DATA_ES_15SPI_SHADER_USER_DATA_ES_16SPI_SHADER_USER_DATA_ES_17SPI_SHADER_USER_DATA_ES_18SPI_SHADER_USER_DATA_ES_19SPI_SHADER_USER_DATA_ES_20SPI_SHADER_USER_DATA_ES_21SPI_SHADER_USER_DATA_ES_22SPI_SHADER_USER_DATA_ES_23SPI_SHADER_USER_DATA_ES_24SPI_SHADER_USER_DATA_ES_25SPI_SHADER_USER_DATA_ES_26SPI_SHADER_USER_DATA_ES_27SPI_SHADER_USER_DATA_ES_28SPI_SHADER_USER_DATA_ES_29SPI_SHADER_USER_DATA_ES_30SPI_SHADER_USER_DATA_ES_31SPI_SHADER_USER_DATA_PS_0SPI_SHADER_USER_DATA_PS_1SPI_SHADER_USER_DATA_PS_2SPI_SHADER_USER_DATA_PS_3SPI_SHADER_USER_DATA_PS_4SPI_SHADER_USER_DATA_PS_5SPI_SHADER_USER_DATA_PS_6SPI_SHADER_USER_DATA_PS_7SPI_SHADER_USER_DATA_PS_8SPI_SHADER_USER_DATA_PS_9SPI_SHADER_USER_DATA_PS_10SPI_SHADER_USER_DATA_PS_11SPI_SHADER_USER_DATA_PS_12SPI_SHADER_USER_DATA_PS_13SPI_SHADER_USER_DATA_PS_14SPI_SHADER_USER_DATA_PS_15SPI_SHADER_USER_DATA_PS_16SPI_SHADER_USER_DATA_PS_17SPI_SHADER_USER_DATA_PS_18SPI_SHADER_USER_DATA_PS_19SPI_SHADER_USER_DATA_PS_20SPI_SHADER_USER_DATA_PS_21SPI_SHADER_USER_DATA_PS_22SPI_SHADER_USER_DATA_PS_23SPI_SHADER_USER_DATA_PS_24SPI_SHADER_USER_DATA_PS_25SPI_SHADER_USER_DATA_PS_26SPI_SHADER_USER_DATA_PS_27SPI_SHADER_USER_DATA_PS_28SPI_SHADER_USER_DATA_PS_29SPI_SHADER_USER_DATA_PS_30SPI_SHADER_USER_DATA_PS_31COMPUTE_USER_DATA_0COMPUTE_USER_DATA_1COMPUTE_USER_DATA_2COMPUTE_USER_DATA_3COMPUTE_USER_DATA_4COMPUTE_USER_DATA_5COMPUTE_USER_DATA_6COMPUTE_USER_DATA_7COMPUTE_USER_DATA_8COMPUTE_USER_DATA_9COMPUTE_USER_DATA_10COMPUTE_USER_DATA_11COMPUTE_USER_DATA_12COMPUTE_USER_DATA_13COMPUTE_USER_DATA_14COMPUTE_USER_DATA_15COMPUTE_USER_DATA_16COMPUTE_USER_DATA_17COMPUTE_USER_DATA_18COMPUTE_USER_DATA_19COMPUTE_USER_DATA_20COMPUTE_USER_DATA_21COMPUTE_USER_DATA_22COMPUTE_USER_DATA_23COMPUTE_USER_DATA_24COMPUTE_USER_DATA_25COMPUTE_USER_DATA_26COMPUTE_USER_DATA_27COMPUTE_USER_DATA_28COMPUTE_USER_DATA_29COMPUTE_USER_DATA_30COMPUTE_USER_DATA_31COMPUTE_NUM_THREAD_XCOMPUTE_NUM_THREAD_YCOMPUTE_NUM_THREAD_ZVGT_TF_PARAMVGT_LS_HS_CONFIGVGT_HOS_MIN_TESS_LEVELVGT_HOS_MAX_TESS_LEVELPA_SC_AA_CONFIGPA_SC_SHADER_CONTROLPA_SC_CONSERVATIVE_RASTERIZATION_CNTLSPI_SHADER_USER_DATA_HS_0SPI_SHADER_USER_DATA_HS_1SPI_SHADER_USER_DATA_HS_2SPI_SHADER_USER_DATA_HS_3SPI_SHADER_USER_DATA_HS_4SPI_SHADER_USER_DATA_HS_5SPI_SHADER_USER_DATA_HS_6SPI_SHADER_USER_DATA_HS_7SPI_SHADER_USER_DATA_HS_8SPI_SHADER_USER_DATA_HS_9SPI_SHADER_USER_DATA_HS_10SPI_SHADER_USER_DATA_HS_11SPI_SHADER_USER_DATA_HS_12SPI_SHADER_USER_DATA_HS_13SPI_SHADER_USER_DATA_HS_14SPI_SHADER_USER_DATA_HS_15SPI_SHADER_USER_DATA_HS_16SPI_SHADER_USER_DATA_HS_17SPI_SHADER_USER_DATA_HS_18SPI_SHADER_USER_DATA_HS_19SPI_SHADER_USER_DATA_HS_20SPI_SHADER_USER_DATA_HS_21SPI_SHADER_USER_DATA_HS_22SPI_SHADER_USER_DATA_HS_23SPI_SHADER_USER_DATA_HS_24SPI_SHADER_USER_DATA_HS_25SPI_SHADER_USER_DATA_HS_26SPI_SHADER_USER_DATA_HS_27SPI_SHADER_USER_DATA_HS_28SPI_SHADER_USER_DATA_HS_29SPI_SHADER_USER_DATA_HS_30SPI_SHADER_USER_DATA_HS_31SPI_SHADER_USER_DATA_LS_0SPI_SHADER_USER_DATA_LS_1SPI_SHADER_USER_DATA_LS_2SPI_SHADER_USER_DATA_LS_3SPI_SHADER_USER_DATA_LS_4SPI_SHADER_USER_DATA_LS_5SPI_SHADER_USER_DATA_LS_6SPI_SHADER_USER_DATA_LS_7SPI_SHADER_USER_DATA_LS_8SPI_SHADER_USER_DATA_LS_9SPI_SHADER_USER_DATA_LS_10SPI_SHADER_USER_DATA_LS_11SPI_SHADER_USER_DATA_LS_12SPI_SHADER_USER_DATA_LS_13SPI_SHADER_USER_DATA_LS_14SPI_SHADER_USER_DATA_LS_15IA_MULTI_VGT_PARAMVGT_GS_MAX_PRIMS_PER_SUBGROUPVGT_STRMOUT_BUFFER_CONFIGVGT_STRMOUT_CONFIGVGT_STRMOUT_VTX_STRIDE_0VGT_STRMOUT_VTX_STRIDE_1VGT_STRMOUT_VTX_STRIDE_2VGT_STRMOUT_VTX_STRIDE_3VGT_VERTEX_REUSE_BLOCK_CNTLCOMPUTE_PGM_RSRC3COMPUTE_SHADER_CHKSUMCOMPUTE_USER_ACCUM_0COMPUTE_USER_ACCUM_1COMPUTE_USER_ACCUM_2COMPUTE_USER_ACCUM_3GE_MAX_OUTPUT_PER_SUBGROUPGE_NGG_SUBGRP_CNTLGE_STEREO_CNTLGE_USER_VGPR_ENIA_MULTI_VGT_PARAM_PIPEDPA_STEREO_CNTLSPI_SHADER_IDX_FORMATSPI_SHADER_PGM_CHKSUM_GSSPI_SHADER_PGM_CHKSUM_HSSPI_SHADER_PGM_CHKSUM_PSSPI_SHADER_PGM_CHKSUM_VSSPI_SHADER_PGM_LO_GSSPI_SHADER_USER_ACCUM_ESGS_0SPI_SHADER_USER_ACCUM_ESGS_1SPI_SHADER_USER_ACCUM_ESGS_2SPI_SHADER_USER_ACCUM_ESGS_3SPI_SHADER_USER_ACCUM_LSHS_0SPI_SHADER_USER_ACCUM_LSHS_1SPI_SHADER_USER_ACCUM_LSHS_2SPI_SHADER_USER_ACCUM_LSHS_3SPI_SHADER_USER_ACCUM_PS_0SPI_SHADER_USER_ACCUM_PS_1SPI_SHADER_USER_ACCUM_PS_2SPI_SHADER_USER_ACCUM_PS_3SPI_SHADER_USER_ACCUM_VS_0SPI_SHADER_USER_ACCUM_VS_1SPI_SHADER_USER_ACCUM_VS_2SPI_SHADER_USER_ACCUM_VS_3" }, align 2
@.str.385 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@switch.table._ZN4llvm17AMDGPUPALMetadata8setRsrc1EjPKNS_6MCExprERNS_9MCContextE = private unnamed_addr constant [10 x i16] [i16 11338, i16 11402, i16 11274, i16 11794, i16 11794, i16 11794, i16 11530, i16 11794, i16 11594, i16 11466], align 8
@switch.table._ZN4llvm17AMDGPUPALMetadata8setRsrc2EjPKNS_6MCExprERNS_9MCContextE = private unnamed_addr constant [10 x i16] [i16 11339, i16 11403, i16 11275, i16 11795, i16 11795, i16 11795, i16 11531, i16 11795, i16 11595, i16 11467], align 8
@switch.table._ZN4llvm17AMDGPUPALMetadata10getHwStageEj = private unnamed_addr constant [10 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.26, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.30, ptr @.str.32, ptr @.str.31, ptr @.str.29], align 8
@switch.table._ZN4llvm17AMDGPUPALMetadata15setNumUsedVgprsEjPKNS_6MCExprERNS_9MCContextE = private unnamed_addr constant [10 x i32] [i32 268435493, i32 268435492, i32 268435494, i32 268435495, i32 268435495, i32 268435495, i32 268435490, i32 268435495, i32 268435489, i32 268435491], align 8
@switch.table._ZN4llvm17AMDGPUPALMetadata15setNumUsedSgprsEjPKNS_6MCExprERNS_9MCContextE = private unnamed_addr constant [10 x i32] [i32 268435500, i32 268435499, i32 268435501, i32 268435502, i32 268435502, i32 268435502, i32 268435497, i32 268435502, i32 268435496, i32 268435498], align 8
@switch.table._ZN4llvm17AMDGPUPALMetadata14setScratchSizeEjPKNS_6MCExprERNS_9MCContextE = private unnamed_addr constant [10 x i32] [i32 268435528, i32 268435527, i32 268435529, i32 268435530, i32 268435530, i32 268435530, i32 268435525, i32 268435530, i32 268435524, i32 268435526], align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUPALMetadata10readFromIRERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(545) initializes((0, 4)) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::msgpack::MapDocNode", align 8 ; 4 uses
  %3 = alloca %"class.llvm::msgpack::DocNode", align 8 ; 5 uses
  %4 = alloca %class.anon, align 1                ; 3 uses
  %i.a = tail call noundef ptr @_ZNK4llvm6Module16getNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr nonnull @.str, i64 27) #18 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK4llvm11NamedMDNode14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #18
  %.not34 = icmp eq i32 %i.b, 0
  br i1 %.not34, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 32, ptr %0, align 8, !tbaa !44
  %i.c = tail call noundef ptr @_ZNK4llvm11NamedMDNode10getOperandEj(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef 0) #18 ; 4 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !105
  %.not69 = icmp eq i8 %i.d, 5
  br i1 %.not69, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 3 uses
  %i.g = and i64 %i.f, 2
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit, label %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread

_ZNK4llvm6MDNode14getNumOperandsEv.exit:          ; preds = %bb.d
  %i.h = and i64 %i.f, 960
  %.not40 = icmp eq i64 %i.h, 0
  br i1 %.not40, label %.loopexit, label %bb.e

_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread:   ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %i.c, i64 -24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !107
  %.not4065 = icmp eq i32 %i.j, 0
  br i1 %.not4065, label %.loopexit, label %.thread

.thread:                                          ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

bb.e:                                             ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit
  %i.m = lshr i64 %i.f, 2
  %i.n = and i64 %i.m, 15
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.o
  br label %_ZNK4llvm6MDNode10getOperandEj.exit

_ZNK4llvm6MDNode10getOperandEj.exit:              ; preds = %.thread, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.p, %bb.e ], [ %i.l, %.thread ]
  %i.q = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !111 ; 2 uses
  %i.r = load i8, ptr %i.q, align 4, !tbaa !105
  %.not71 = icmp eq i8 %i.r, 0
  br i1 %.not71, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit
  %i.s = tail call { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #18 ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.w = ptrtoint ptr %4 to i64
  %i.x = call noundef zeroext i1 @_ZN4llvm7msgpack8Document12readFromBlobENS_9StringRefEbNS_12function_refIFiPNS0_7DocNodeES4_S4_EEE(ptr noundef nonnull align 8 dereferenceable(273) %i.v, ptr %i.t, i64 %i.u, i1 noundef zeroext false, ptr nonnull @_ZN4llvm12function_refIFiPNS_7msgpack7DocNodeES2_S2_EE11callback_fnIZNS1_8Document12readFromBlobENS_9StringRefEbS5_Ed_UlS3_S2_S2_E_EEilS3_S2_S2_, i64 %i.w) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit

bb.g:                                             ; preds = %bb.b, %bb.a
  store i32 12, ptr %0, align 8, !tbaa !44
  %i.y = tail call noundef ptr @_ZNK4llvm6Module16getNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288) %1, ptr nonnull @.str.1, i64 19) #18 ; 3 uses
  %.not35 = icmp eq ptr %i.y, null
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noundef i32 @_ZNK4llvm11NamedMDNode14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(64) %i.y) #18
  %.not36 = icmp eq i32 %i.z, 0
  br i1 %.not36, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 32, ptr %0, align 8, !tbaa !44
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.aa = tail call noundef ptr @_ZNK4llvm11NamedMDNode10getOperandEj(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i32 noundef 0) #18 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !105
  %.not73 = icmp eq i8 %i.ab, 5
  br i1 %.not73, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = and i64 %i.ad, 2
  %.not.i.i44 = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i44, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = trunc i64 %i.ad to i32
  %i.ag = lshr i32 %i.af, 6
  %i.ah = and i32 %i.ag, 15
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit46

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds i8, ptr %i.aa, i64 -24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !107
  br label %_ZNK4llvm6MDNode14getNumOperandsEv.exit46

_ZNK4llvm6MDNode14getNumOperandsEv.exit46:        ; preds = %bb.l, %bb.m
  %.0.i.i45 = phi i32 [ %i.aj, %bb.m ], [ %i.ah, %bb.l ]
  %i.ak = and i32 %.0.i.i45, -2                   ; 2 uses
  %.not3874 = icmp eq i32 %i.ak, 0
  br i1 %.not3874, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm6MDNode14getNumOperandsEv.exit46
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 -32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = zext i32 %i.ak to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57.thread ] ; 3 uses
  %i.ap = load i64, ptr %i.ac, align 8            ; 3 uses
  %i.aq = and i64 %i.ap, 2
  %.not.i.i47 = icmp eq i64 %i.aq, 0              ; 2 uses
  br i1 %.not.i.i47, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !108
  br label %_ZNK4llvm6MDNode10getOperandEj.exit49

bb.p:                                             ; preds = %bb.n
  %i.as = lshr i64 %i.ap, 2
  %i.at = and i64 %i.as, 15
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.au
  br label %_ZNK4llvm6MDNode10getOperandEj.exit49

_ZNK4llvm6MDNode10getOperandEj.exit49:            ; preds = %bb.o, %bb.p
  %.sroa.0.0.i.i48 = phi ptr [ %i.av, %bb.p ], [ %i.ar, %bb.o ]
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i48, i64 %indvars.iv
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !111 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 4, !tbaa !105
  %.not.i = icmp eq i8 %i.ay, 1
  br i1 %.not.i, label %bb.q, label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit

bb.q:                                             ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit49
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !117 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !121
  %i.bc = icmp eq i8 %i.bb, 5
  %spec.select.i.i.i50 = select i1 %i.bc, ptr %i.ba, ptr null
  br label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit

_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit49, %bb.q
  %spec.select.i = phi ptr [ %spec.select.i.i.i50, %bb.q ], [ null, %_ZNK4llvm6MDNode10getOperandEj.exit49 ] ; 3 uses
  br i1 %.not.i.i47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit
  %i.bd = load ptr, ptr %i.al, align 8, !tbaa !108
  br label %_ZNK4llvm6MDNode10getOperandEj.exit53

bb.s:                                             ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit
  %i.be = lshr i64 %i.ap, 2
  %i.bf = and i64 %i.be, 15
  %i.bg = sub nsw i64 0, %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.bg
  br label %_ZNK4llvm6MDNode10getOperandEj.exit53

_ZNK4llvm6MDNode10getOperandEj.exit53:            ; preds = %bb.r, %bb.s
  %.sroa.0.0.i.i52 = phi ptr [ %i.bh, %bb.s ], [ %i.bd, %bb.r ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i52, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !111 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !105
  %.not.i54 = icmp eq i8 %i.bl, 1
  br i1 %.not.i54, label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57, label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57.thread

_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit53
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 136
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !117 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !121
  %i.bp = icmp eq i8 %i.bo, 5
  %i.bq = icmp ne ptr %spec.select.i, null
  %or.cond = and i1 %i.bq, %i.bp
  br i1 %or.cond, label %bb.t, label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57.thread

bb.t:                                             ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 24 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !123
  %i.bu = icmp ult i32 %i.bt, 65
  %i.bv = load ptr, ptr %i.br, align 8
  %spec.select.i.i58 = select i1 %i.bu, ptr %i.br, ptr %i.bv
  %.0.i.i59 = load i64, ptr %spec.select.i.i58, align 8, !tbaa !46 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !123
  %i.bz = icmp ult i32 %i.by, 65
  %i.ca = load ptr, ptr %i.bw, align 8
  %spec.select.i.i60 = select i1 %i.bz, ptr %i.bw, ptr %i.ca
  %.0.i.i61 = load i64, ptr %spec.select.i.i60, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.cb = load i32, ptr %0, align 8, !tbaa !44
  %i.cc = icmp eq i32 %i.cb, 12
  %i.cd = and i64 %.0.i.i59, 4026531840
  %i.ce = icmp eq i64 %i.cd, 0
  %or.cond.not.i = or i1 %i.ce, %i.cc
  br i1 %or.cond.not.i, label %bb.u, label %_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.cf = load ptr, ptr %i.am, align 8, !tbaa !47, !noalias !124 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i

_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i:     ; preds = %bb.u
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !51, !noalias !124 ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 10
  br i1 %i.ci, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i, label %bb.v

_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i: ; preds = %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i, %bb.u
  %i.cj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm17AMDGPUPALMetadata12refRegistersEv(ptr noundef nonnull align 8 dereferenceable(545) %0), !noalias !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false), !tbaa.struct !53, !noalias !124
  %.pre.i.i = load ptr, ptr %i.am, align 8, !tbaa !47, !noalias !124
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre2.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !51, !noalias !124
  br label %bb.v

bb.v:                                             ; preds = %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i
  %i.ck = phi i8 [ %.pre2.i.i, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i ], [ %i.ch, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i ]
  %.not.i1.i.i = icmp eq i8 %i.ck, 8
  br i1 %.not.i1.i.i, label %_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN4llvm7msgpack7DocNode12convertToMapEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #18, !noalias !124
  br label %_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit.i

_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit.i: ; preds = %bb.w, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  store ptr %i.an, ptr %3, align 8, !tbaa !47, !alias.scope !125
  %i.cl = and i64 %.0.i.i59, 4294967295
  store i64 %i.cl, ptr %i.ao, align 8, !tbaa !46, !alias.scope !125
  %i.cm = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7msgpack10MapDocNodeixENS0_7DocNodeE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull byval(%"class.llvm::msgpack::DocNode") align 8 %3) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !47 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !51
  %i.cq = icmp eq i8 %i.cp, 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = select i1 %i.cq, i64 %i.cs, i64 0
  %.0.i = or i64 %i.ct, %.0.i.i61
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !54
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 112
  %i.cw = and i64 %.0.i, 4294967295
  store ptr %i.cv, ptr %i.cm, align 8, !tbaa !52
  store i64 %i.cw, ptr %i.cr, align 8
  br label %_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj.exit

_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj.exit: ; preds = %bb.t, %_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57.thread

_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57.thread: ; preds = %_ZNK4llvm6MDNode10getOperandEj.exit53, %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57, %_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %.not38 = icmp eq i64 %indvars.iv.next, %5
  br i1 %.not38, label %.loopexit, label %bb.n, !llvm.loop !103

.loopexit:                                        ; preds = %_ZN4llvm7mdconst11dyn_extractINS_11ConstantIntERKNS_9MDOperandEEENSt9enable_ifIXsr6detail14IsValidPointerIT_T0_EE5valueEPS7_E4typeEOS8_.exit57.thread, %_ZNK4llvm6MDNode14getNumOperandsEv.exit46, %_ZNK4llvm6MDNode14getNumOperandsEv.exit.thread, %bb.j, %bb.c, %_ZNK4llvm6MDNode14getNumOperandsEv.exit, %bb.f, %_ZNK4llvm6MDNode10getOperandEj.exit, %bb.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZNK4llvm6Module16getNamedMetadataENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZNK4llvm11NamedMDNode14getNumOperandsEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef ptr @_ZNK4llvm11NamedMDNode10getOperandEj(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17AMDGPUPALMetadata18setFromMsgPackBlobENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(545) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.anon, align 1                ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.b = ptrtoint ptr %3 to i64
  %i.c = call noundef zeroext i1 @_ZN4llvm7msgpack8Document12readFromBlobENS_9StringRefEbNS_12function_refIFiPNS0_7DocNodeES4_S4_EEE(ptr noundef nonnull align 8 dereferenceable(273) %i.a, ptr %1, i64 %2, i1 noundef zeroext false, ptr nonnull @_ZN4llvm12function_refIFiPNS_7msgpack7DocNodeES2_S2_EE11callback_fnIZNS1_8Document12readFromBlobENS_9StringRefEbS5_Ed_UlS3_S2_S2_E_EEilS3_S2_S2_, i64 %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i1 %i.c
}

declare { ptr, i64 } @_ZNK4llvm8MDString9getStringEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj(ptr noundef nonnull align 8 dereferenceable(545) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::msgpack::MapDocNode", align 8 ; 4 uses
  %4 = alloca %"class.llvm::msgpack::DocNode", align 8 ; 3 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !44
  %i.b = icmp eq i32 %i.a, 12
  %i.c = icmp ult i32 %1, 268435456
  %or.cond.not = or i1 %i.c, %i.b
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !130 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i

_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i:       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !51, !noalias !130 ; 2 uses
  %i.h = icmp eq i8 %i.g, 10
  br i1 %i.h, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i, label %bb.c

_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i: ; preds = %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i, %bb.b
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm17AMDGPUPALMetadata12refRegistersEv(ptr noundef nonnull align 8 dereferenceable(545) %0), !noalias !130
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !53, !noalias !130
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !47, !noalias !130
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 8
  %.pre2.i = load i8, ptr %.phi.trans.insert.i, align 8, !tbaa !51, !noalias !130
  br label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i
  %i.j = phi i8 [ %.pre2.i, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i ], [ %i.g, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i ]
  %.not.i1.i = icmp eq i8 %i.j, 8
  br i1 %.not.i1.i, label %_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvm7msgpack7DocNode12convertToMapEv(ptr noundef nonnull align 8 dereferenceable(24) %i.d) #18, !noalias !130
  br label %_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit

_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %4, align 8, !tbaa !47, !alias.scope !131
  %i.l = zext i32 %1 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !46, !alias.scope !131
  %i.n = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7msgpack10MapDocNodeixENS0_7DocNodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%"class.llvm::msgpack::DocNode") align 8 %4) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !51
  %i.r = icmp eq i8 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = trunc i64 %i.t to i32
  %i.v = select i1 %i.r, i32 %i.u, i32 0
  %.0 = or i32 %i.v, %2
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !54
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  %i.y = zext i32 %.0 to i64
  store ptr %i.x, ptr %i.n, align 8, !tbaa !52
  store i64 %i.y, ptr %i.s, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17AMDGPUPALMetadata11setFromBlobEjNS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(545) initializes((0, 4)) %0, i32 noundef %1, ptr %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.anon, align 1                ; 3 uses
  store i32 %1, ptr %0, align 8, !tbaa !44
  %i.a = icmp eq i32 %1, 12
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN4llvm17AMDGPUPALMetadata17setFromLegacyBlobENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(545) %0, ptr %2, i64 %3) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.d = ptrtoint ptr %4 to i64
  %i.e = call noundef zeroext i1 @_ZN4llvm7msgpack8Document12readFromBlobENS_9StringRefEbNS_12function_refIFiPNS0_7DocNodeES4_S4_EEE(ptr noundef nonnull align 8 dereferenceable(273) %i.c, ptr %2, i64 %3, i1 noundef zeroext false, ptr nonnull @_ZN4llvm12function_refIFiPNS_7msgpack7DocNodeES2_S2_EE11callback_fnIZNS1_8Document12readFromBlobENS_9StringRefEbS5_Ed_UlS3_S2_S2_E_EEilS3_S2_S2_, i64 %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm17AMDGPUPALMetadata17setFromLegacyBlobENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(545) %0, ptr nofree readonly captures(none) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::msgpack::MapDocNode", align 8 ; 4 uses
  %4 = alloca %"class.llvm::msgpack::DocNode", align 8 ; 5 uses
  %i.a = lshr i64 %2, 3                           ; 2 uses
  %.not6 = icmp eq i64 %i.a, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj.exit, %bb.a
  ret i1 true

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj.exit
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.ai, %_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj.exit ] ; 2 uses
  %i.e = shl i32 %.07, 1                          ; 2 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !56   ; 2 uses
  %i.i = or disjoint i32 %i.e, 1
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.m = load i32, ptr %0, align 8, !tbaa !44
  %i.n = icmp eq i32 %i.m, 12
  %i.o = icmp ult i32 %i.h, 268435456
  %or.cond.not.i = or i1 %i.o, %i.n
  br i1 %or.cond.not.i, label %bb.c, label %_ZN4llvm17AMDGPUPALMetadata11setRegisterEjj.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !47, !noalias !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i

_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i:     ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !51, !noalias !137 ; 2 uses
  %i.s = icmp eq i8 %i.r, 10
  br i1 %i.s, label %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i, label %bb.d

_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i: ; preds = %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i, %bb.c
  %i.t = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm17AMDGPUPALMetadata12refRegistersEv(ptr noundef nonnull align 8 dereferenceable(545) %0), !noalias !137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !tbaa.struct !53, !noalias !137
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !47, !noalias !137
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
  %.pre2.i.i = load i8, ptr %.phi.trans.insert.i.i, align 8, !tbaa !51, !noalias !137
  br label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i
  %i.u = phi i8 [ %.pre2.i.i, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.thread.i.i ], [ %i.r, %_ZNK4llvm7msgpack7DocNode7isEmptyEv.exit.i.i ]
  %.not.i1.i.i = icmp eq i8 %i.u, 8
  br i1 %.not.i1.i.i, label %_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4llvm7msgpack7DocNode12convertToMapEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #18, !noalias !137
  br label %_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit.i

_ZN4llvm17AMDGPUPALMetadata12getRegistersEv.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store ptr %i.c, ptr %4, align 8, !tbaa !47, !alias.scope !138
  %i.v = zext i32 %i.h to i64
  store i64 %i.v, ptr %i.d, align 8, !tbaa !46, !alias.scope !138
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm7msgpack10MapDocNodeixENS0_7DocNodeE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull byval(%"class.llvm::msgpack::DocNode") align 8 %4) #18 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
end_hunk_0
