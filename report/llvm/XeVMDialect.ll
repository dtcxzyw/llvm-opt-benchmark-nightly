Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XeVMDialect?download=true
inline.NumInlined: 24008
inline.NumDeleted: 8378
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 17
begin_hunk_0

$_ZN4mlir4xevm21TruncfSrcElemTypeAttr4nameE = comdat any

$_ZN4mlir4xevm21TruncfDstElemTypeAttr4nameE = comdat any

$_ZN4mlir4xevm19ExtfSrcElemTypeAttr4nameE = comdat any

$_ZN4mlir4xevm19ExtfDstElemTypeAttr4nameE = comdat any

$_ZN4mlir4xevm14XeVMTargetAttr4nameE = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_3gpu19TargetAttrInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_3gpu19TargetAttrInterfaceEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir11SideEffects6Effect3getINS_13MemoryEffects4ReadEEEPT_vE8instance = comdat any

$_ZGVZN4mlir11SideEffects6Effect3getINS_13MemoryEffects4ReadEEEPT_vE8instance = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_13MemoryEffects4ReadEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_13MemoryEffects4ReadEvE13resolveTypeIDEvE2id = comdat any

$_ZZN4mlir11SideEffects6Effect3getINS_13MemoryEffects5WriteEEEPT_vE8instance = comdat any

$_ZGVZN4mlir11SideEffects6Effect3getINS_13MemoryEffects5WriteEEEPT_vE8instance = comdat any

$_ZZN4mlir6detail14TypeIDResolverINS_13MemoryEffects5WriteEvE13resolveTypeIDEvE2id = comdat any

$_ZGVZN4mlir6detail14TypeIDResolverINS_13MemoryEffects5WriteEvE13resolveTypeIDEvE2id = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm11XeVMDialectEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZTVN4mlir4xevm11XeVMDialectE = unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr null, ptr @_ZN4mlir4xevm11XeVMDialectD1Ev, ptr @_ZN4mlir4xevm11XeVMDialectD0Ev, ptr @_ZNK4mlir7Dialect27getCanonicalizationPatternsERNS_17RewritePatternSetE, ptr @_ZN4mlir7Dialect19materializeConstantERNS_9OpBuilderENS_9AttributeENS_4TypeENS_8LocationE, ptr @_ZNK4mlir4xevm11XeVMDialect14parseAttributeERNS_16DialectAsmParserENS_4TypeE, ptr @_ZNK4mlir4xevm11XeVMDialect14printAttributeENS_9AttributeERNS_17DialectAsmPrinterE, ptr @_ZNK4mlir7Dialect9parseTypeERNS_16DialectAsmParserE, ptr @_ZNK4mlir7Dialect9printTypeENS_4TypeERNS_17DialectAsmPrinterE, ptr @_ZNK4mlir7Dialect21getParseOperationHookEN4llvm9StringRefE, ptr @_ZNK4mlir7Dialect19getOperationPrinterEPNS_9OperationE, ptr @_ZN4mlir7Dialect24verifyRegionArgAttributeEPNS_9OperationEjjNS_14NamedAttributeE, ptr @_ZN4mlir7Dialect27verifyRegionResultAttributeEPNS_9OperationEjjNS_14NamedAttributeE, ptr @_ZN4mlir7Dialect24verifyOperationAttributeEPNS_9OperationENS_14NamedAttributeE, ptr @_ZN4mlir7Dialect27getRegisteredInterfaceForOpENS_6TypeIDENS_13OperationNameE] }, align 8
@.str = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"bf16\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"f16\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"s8\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"u8\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"s4\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"u4\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"tf32\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"f32\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"s32\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"e2m1\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"bf8\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"f8\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Use_Default\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"L1uc_L2uc_L3uc\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"L1uc_L2uc_L3c\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"L1uc_L2c_L3uc\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"L1uc_L2c_L3c\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"L1c_L2uc_L3uc\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"L1c_L2uc_L3c\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"L1c_L2c_L3uc\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"L1c_L2c_L3c\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"L1s_L2uc_L3uc\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"L1s_L2uc_L3c\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"L1s_L2c_L3uc\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"L1s_L2c_L3c\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"ir\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"lane\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"subgroup\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"workgroup\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"cluster\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"L1uc_L2uc_L3wb\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"L1uc_L2wb_L3uc\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"L1uc_L2wb_L3wb\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"L1wt_L2uc_L3uc\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"L1wt_L2uc_L3wb\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"L1wt_L2wb_L3uc\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"L1wt_L2wb_L3wb\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"L1s_L2uc_L3wb\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"L1s_L2wb_L3uc\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"L1s_L2wb_L3wb\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"L1wb_L2uc_L3uc\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"L1wb_L2wb_L3uc\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"L1wb_L2uc_L3wb\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"expecting result element type to be int of float\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"expecting result element type to be 32 bits\00", align 1
@.str.53 = private unnamed_addr constant [85 x i8] c"tile_width when pack_register is true should be equal to subgroup size (16 elements)\00", align 1
@.str.54 = private unnamed_addr constant [58 x i8] c"tile_width for 8 bit elements should be equal to 16 or 32\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"tile_width for 16 bit elements should be equal to 16\00", align 1
@.str.56 = private unnamed_addr constant [53 x i8] c"tile_width for 32 bit elements should be equal to 16\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c"tile_width for 32 bit elements should be equal to 8 or 16\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"type of C operand must match result type\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"both src and dst should be vector types or both should be scalar types\00", align 1
@.str.60 = private unnamed_addr constant [62 x i8] c"dst element bitwidth should be less than src element bitwidth\00", align 1
@.str.61 = private unnamed_addr constant [65 x i8] c"dst element bitwidth should be greater than src element bitwidth\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"The optimization level must be a number between 0 and 3.\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"The target triple cannot be empty.\00", align 1
@.str.64 = private unnamed_addr constant [33 x i8] c"The target chip cannot be empty.\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"File paths in linkFiles cannot be empty.\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"File '\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"' does not exist.\00", align 1
@.str.68 = private unnamed_addr constant [61 x i8] c"'xevm.blockload2d' op requires attribute 'elem_size_in_bits'\00", align 1
@.str.69 = private unnamed_addr constant [57 x i8] c"'xevm.blockload2d' op requires attribute 'pack_register'\00", align 1
@.str.70 = private unnamed_addr constant [55 x i8] c"'xevm.blockload2d' op requires attribute 'tile_height'\00", align 1
@.str.71 = private unnamed_addr constant [54 x i8] c"'xevm.blockload2d' op requires attribute 'tile_width'\00", align 1
@.str.72 = private unnamed_addr constant [53 x i8] c"'xevm.blockload2d' op requires attribute 'transpose'\00", align 1
@.str.73 = private unnamed_addr constant [52 x i8] c"'xevm.blockload2d' op requires attribute 'v_blocks'\00", align 1
@.str.74 = private unnamed_addr constant [116 x i8] c"'xevm.blockload2d' op attribute 'elem_size_in_bits' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.75 = private unnamed_addr constant [109 x i8] c"'xevm.blockload2d' op attribute 'tile_width' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.76 = private unnamed_addr constant [110 x i8] c"'xevm.blockload2d' op attribute 'tile_height' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.77 = private unnamed_addr constant [107 x i8] c"'xevm.blockload2d' op attribute 'v_blocks' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.78 = private unnamed_addr constant [107 x i8] c"'xevm.blockload2d' op attribute 'transpose' failed to satisfy constraint: 1-bit signless integer attribute\00", align 1
@.str.79 = private unnamed_addr constant [111 x i8] c"'xevm.blockload2d' op attribute 'pack_register' failed to satisfy constraint: 1-bit signless integer attribute\00", align 1
@.str.81 = private unnamed_addr constant [42 x i8] c"expected DictionaryAttr to set properties\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"cache_control\00", align 1
@.str.83 = private unnamed_addr constant [59 x i8] c"Invalid attribute `cache_control` in property conversion: \00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"elem_size_in_bits\00", align 1
@.str.85 = private unnamed_addr constant [63 x i8] c"Invalid attribute `elem_size_in_bits` in property conversion: \00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"pack_register\00", align 1
@.str.87 = private unnamed_addr constant [59 x i8] c"Invalid attribute `pack_register` in property conversion: \00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"tile_height\00", align 1
@.str.89 = private unnamed_addr constant [57 x i8] c"Invalid attribute `tile_height` in property conversion: \00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"tile_width\00", align 1
@.str.91 = private unnamed_addr constant [56 x i8] c"Invalid attribute `tile_width` in property conversion: \00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"transpose\00", align 1
@.str.93 = private unnamed_addr constant [55 x i8] c"Invalid attribute `transpose` in property conversion: \00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"v_blocks\00", align 1
@.str.95 = private unnamed_addr constant [54 x i8] c"Invalid attribute `v_blocks` in property conversion: \00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"Property conversion failed.\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"requires attribute 'elem_size_in_bits'\00", align 1
@.str.98 = private unnamed_addr constant [35 x i8] c"requires attribute 'pack_register'\00", align 1
@.str.99 = private unnamed_addr constant [33 x i8] c"requires attribute 'tile_height'\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"requires attribute 'tile_width'\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"requires attribute 'transpose'\00", align 1
@.str.102 = private unnamed_addr constant [30 x i8] c"requires attribute 'v_blocks'\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.105 = private unnamed_addr constant [78 x i8] c"expected key entry for elem_size_in_bits in DictionaryAttr to set Properties.\00", align 1
@.str.106 = private unnamed_addr constant [71 x i8] c"expected key entry for tile_width in DictionaryAttr to set Properties.\00", align 1
@.str.107 = private unnamed_addr constant [72 x i8] c"expected key entry for tile_height in DictionaryAttr to set Properties.\00", align 1
@.str.108 = private unnamed_addr constant [69 x i8] c"expected key entry for v_blocks in DictionaryAttr to set Properties.\00", align 1
@.str.109 = private unnamed_addr constant [70 x i8] c"expected key entry for transpose in DictionaryAttr to set Properties.\00", align 1
@.str.110 = private unnamed_addr constant [74 x i8] c"expected key entry for pack_register in DictionaryAttr to set Properties.\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"unknown key '\00", align 1
@.str.113 = private unnamed_addr constant [37 x i8] c"' when parsing properties dictionary\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm13BlockLoad2dOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail31BlockLoad2dOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm11BlockLoadOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail29BlockLoadOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.117 = private unnamed_addr constant [65 x i8] c"'xevm.blockprefetch2d' op requires attribute 'elem_size_in_bits'\00", align 1
@.str.118 = private unnamed_addr constant [59 x i8] c"'xevm.blockprefetch2d' op requires attribute 'tile_height'\00", align 1
@.str.119 = private unnamed_addr constant [58 x i8] c"'xevm.blockprefetch2d' op requires attribute 'tile_width'\00", align 1
@.str.120 = private unnamed_addr constant [56 x i8] c"'xevm.blockprefetch2d' op requires attribute 'v_blocks'\00", align 1
@.str.121 = private unnamed_addr constant [120 x i8] c"'xevm.blockprefetch2d' op attribute 'elem_size_in_bits' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.122 = private unnamed_addr constant [113 x i8] c"'xevm.blockprefetch2d' op attribute 'tile_width' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.123 = private unnamed_addr constant [114 x i8] c"'xevm.blockprefetch2d' op attribute 'tile_height' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.124 = private unnamed_addr constant [111 x i8] c"'xevm.blockprefetch2d' op attribute 'v_blocks' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm17BlockPrefetch2dOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail35BlockPrefetch2dOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.128 = private unnamed_addr constant [62 x i8] c"'xevm.blockstore2d' op requires attribute 'elem_size_in_bits'\00", align 1
@.str.129 = private unnamed_addr constant [56 x i8] c"'xevm.blockstore2d' op requires attribute 'tile_height'\00", align 1
@.str.130 = private unnamed_addr constant [55 x i8] c"'xevm.blockstore2d' op requires attribute 'tile_width'\00", align 1
@.str.131 = private unnamed_addr constant [117 x i8] c"'xevm.blockstore2d' op attribute 'elem_size_in_bits' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.132 = private unnamed_addr constant [110 x i8] c"'xevm.blockstore2d' op attribute 'tile_width' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.133 = private unnamed_addr constant [111 x i8] c"'xevm.blockstore2d' op attribute 'tile_height' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm14BlockStore2dOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail32BlockStore2dOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm12BlockStoreOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail30BlockStoreOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.136 = private unnamed_addr constant [46 x i8] c"'xevm.extf' op requires attribute 'dst_etype'\00", align 1
@.str.137 = private unnamed_addr constant [46 x i8] c"'xevm.extf' op requires attribute 'src_etype'\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"dst_etype\00", align 1
@.str.141 = private unnamed_addr constant [55 x i8] c"Invalid attribute `dst_etype` in property conversion: \00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"src_etype\00", align 1
@.str.143 = private unnamed_addr constant [55 x i8] c"Invalid attribute `src_etype` in property conversion: \00", align 1
@.str.144 = private unnamed_addr constant [31 x i8] c"requires attribute 'dst_etype'\00", align 1
@.str.145 = private unnamed_addr constant [31 x i8] c"requires attribute 'src_etype'\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6ExtfOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail24ExtfOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.150 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.151 = private unnamed_addr constant [51 x i8] c"Invalid attribute `range` in property conversion: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm10GridDimXOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail28GridDimXOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm10GridDimYOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail28GridDimYOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm10GridDimZOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail28GridDimZOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm8LaneIdOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail26LaneIdOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.155 = private unnamed_addr constant [44 x i8] c"'xevm.mma_mx' op requires attribute 'shape'\00", align 1
@.str.156 = private unnamed_addr constant [44 x i8] c"'xevm.mma_mx' op requires attribute 'types'\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"shape\00", align 1
@.str.160 = private unnamed_addr constant [51 x i8] c"Invalid attribute `shape` in property conversion: \00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"types\00", align 1
@.str.162 = private unnamed_addr constant [51 x i8] c"Invalid attribute `types` in property conversion: \00", align 1
@.str.163 = private unnamed_addr constant [27 x i8] c"requires attribute 'shape'\00", align 1
@.str.164 = private unnamed_addr constant [27 x i8] c"requires attribute 'types'\00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c"operand group starting at #\00", align 1
@.str.166 = private unnamed_addr constant [37 x i8] c" requires 0 or 1 element, but found \00", align 1
@.str.167 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm7MMAMxOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail25MMAMxOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.168 = private unnamed_addr constant [41 x i8] c"'xevm.mma' op requires attribute 'shape'\00", align 1
@.str.169 = private unnamed_addr constant [41 x i8] c"'xevm.mma' op requires attribute 'types'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm5MMAOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail23MMAOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.172 = private unnamed_addr constant [46 x i8] c"'xevm.memfence' op requires attribute 'scope'\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"addrspace\00", align 1
@.str.176 = private unnamed_addr constant [55 x i8] c"Invalid attribute `addrspace` in property conversion: \00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.178 = private unnamed_addr constant [51 x i8] c"Invalid attribute `scope` in property conversion: \00", align 1
@.str.179 = private unnamed_addr constant [27 x i8] c"requires attribute 'scope'\00", align 1
@.str.180 = private unnamed_addr constant [66 x i8] c"expected key entry for scope in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm10MemfenceOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail28MemfenceOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm10PrefetchOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail28PrefetchOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm12SubgroupIdOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail30SubgroupIdOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm14SubgroupSizeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail32SubgroupSizeOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.185 = private unnamed_addr constant [48 x i8] c"'xevm.truncf' op requires attribute 'dst_etype'\00", align 1
@.str.186 = private unnamed_addr constant [48 x i8] c"'xevm.truncf' op requires attribute 'src_etype'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm8TruncfOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail26TruncfOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm15WorkgroupDimXOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail33WorkgroupDimXOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm15WorkgroupDimYOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail33WorkgroupDimYOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm15WorkgroupDimZOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail33WorkgroupDimZOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm14WorkgroupIdXOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail32WorkgroupIdXOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm14WorkgroupIdYOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail32WorkgroupIdYOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm14WorkgroupIdZOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail32WorkgroupIdZOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm13WorkitemIdXOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail31WorkitemIdXOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm13WorkitemIdYOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail31WorkitemIdYOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm13WorkitemIdZOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4xevm6detail31WorkitemIdZOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.198 = private unnamed_addr constant [110 x i8] c"failed to parse XeVM_LoadCacheControlAttr parameter 'value' which is to be a `::mlir::xevm::LoadCacheControl`\00", align 1
@.str.199 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.200 = private unnamed_addr constant [2 x i8] c">\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm20LoadCacheControlAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.201 = private unnamed_addr constant [112 x i8] c"failed to parse XeVM_StoreCacheControlAttr parameter 'value' which is to be a `::mlir::xevm::StoreCacheControl`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm21StoreCacheControlAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.202 = private unnamed_addr constant [94 x i8] c"failed to parse XeVM_MemScopeAttr parameter 'value' which is to be a `::mlir::xevm::MemScope`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm12MemScopeAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.203 = private unnamed_addr constant [94 x i8] c"failed to parse XeVM_AddrSpaceAttr parameter 'value' which is to be a `mlir::xevm::AddrSpace`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm13AddrSpaceAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.204 = private unnamed_addr constant [36 x i8] c"expected a parameter name in struct\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"m = \00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"n = \00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"k = \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm12MMAShapeAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.209 = private unnamed_addr constant [39 x i8] c"struct is missing required parameter: \00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.211 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"d = \00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"a = \00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"b = \00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"c = \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm12MMATypesAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.217 = private unnamed_addr constant [105 x i8] c"failed to parse XeVM_TruncfSrcElemTypeAttr parameter 'etype' which is to be a `xevm::TruncfSrcElemTypes`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm21TruncfSrcElemTypeAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.218 = private unnamed_addr constant [105 x i8] c"failed to parse XeVM_TruncfDstElemTypeAttr parameter 'etype' which is to be a `xevm::TruncfDstElemTypes`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm21TruncfDstElemTypeAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.219 = private unnamed_addr constant [101 x i8] c"failed to parse XeVM_ExtfSrcElemTypeAttr parameter 'etype' which is to be a `xevm::ExtfSrcElemTypes`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm19ExtfSrcElemTypeAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.220 = private unnamed_addr constant [101 x i8] c"failed to parse XeVM_ExtfDstElemTypeAttr parameter 'etype' which is to be a `xevm::ExtfDstElemTypes`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm19ExtfDstElemTypeAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.221 = private unnamed_addr constant [24 x i8] c"spirv64-unknown-unknown\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"bmg\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"O = \00", align 1
@.str.224 = private unnamed_addr constant [10 x i8] c"triple = \00", align 1
@.str.225 = private unnamed_addr constant [8 x i8] c"chip = \00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"flags = \00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"linkFiles = \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4xevm14XeVMTargetAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.228 = private unnamed_addr constant [20 x i8] c"unknown attribute `\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"` in dialect `\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"xevm\00", align 1
@.str.232 = private unnamed_addr constant [49 x i8] c"expecting result element type to be int or float\00", align 1
@.str.233 = private unnamed_addr constant [16 x i8] c"result size of \00", align 1
@.str.234 = private unnamed_addr constant [43 x i8] c" bits does not match the expected size of \00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c" bits\00", align 1
@.str.236 = private unnamed_addr constant [51 x i8] c"transpose and pack_register are mutually exclusive\00", align 1
@.str.237 = private unnamed_addr constant [45 x i8] c"expecting tile_height to be between 1 and 32\00", align 1
@.str.238 = private unnamed_addr constant [44 x i8] c"expecting tile_width to be between 4 and 64\00", align 1
@.str.239 = private unnamed_addr constant [36 x i8] c"expecting v_blocks to be 1, 2, or 4\00", align 1
@.str.240 = private unnamed_addr constant [76 x i8] c"tile_width * v_blocks should be less than or equal to 64 for 8 bit elements\00", align 1
@.str.241 = private unnamed_addr constant [44 x i8] c"expecting tile_width to be between 2 and 32\00", align 1
@.str.242 = private unnamed_addr constant [77 x i8] c"tile_width * v_blocks should be less than or equal to 32 for 16 bit elements\00", align 1
@.str.243 = private unnamed_addr constant [44 x i8] c"expecting tile_width to be between 1 and 16\00", align 1
@.str.244 = private unnamed_addr constant [32 x i8] c"expecting v_blocks to be 1 or 2\00", align 1
@.str.245 = private unnamed_addr constant [77 x i8] c"tile_width * v_blocks should be less than or equal to 16 for 32 bit elements\00", align 1
@.str.246 = private unnamed_addr constant [43 x i8] c"expecting tile_width to be between 1 and 8\00", align 1
@.str.247 = private unnamed_addr constant [27 x i8] c"expecting v_blocks to be 1\00", align 1
@.str.248 = private unnamed_addr constant [51 x i8] c"expecting elem_size_in_bits to be 8, 16, 32, or 64\00", align 1
@.str.249 = private unnamed_addr constant [50 x i8] c"expecting tile_height to be 8 for 64 bit elements\00", align 1
@.str.250 = private unnamed_addr constant [38 x i8] c"expecting tile_width to be 1, 2, or 4\00", align 1
@.str.251 = private unnamed_addr constant [55 x i8] c"transpose is only supported for 32 and 64 bit elements\00", align 1
@.str.252 = private unnamed_addr constant [45 x i8] c"expecting tile_height to be between 4 and 32\00", align 1
@.str.253 = private unnamed_addr constant [44 x i8] c"expecting tile_width to be between 4 and 16\00", align 1
@.str.254 = private unnamed_addr constant [45 x i8] c"expecting tile_height to be between 2 and 32\00", align 1
@.str.255 = private unnamed_addr constant [44 x i8] c"expecting tile_width to be between 2 and 16\00", align 1
@.str.256 = private unnamed_addr constant [58 x i8] c"pack_register is only supported for 8 and 16 bit elements\00", align 1
@.str.257 = private unnamed_addr constant [44 x i8] c"expecting tile_height to be between 1 and 8\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10StringAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.258 = private unnamed_addr constant [12 x i8] c"attribute '\00", align 1
@.str.259 = private unnamed_addr constant [79 x i8] c"' failed to satisfy constraint: Describe the cache settings for load operators\00", align 1
@.str.260 = private unnamed_addr constant [66 x i8] c"' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.261 = private unnamed_addr constant [65 x i8] c"' failed to satisfy constraint: 1-bit signless integer attribute\00", align 1
@.str.262 = private unnamed_addr constant [17 x i8] c"xevm.blockload2d\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.263 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.264 = private unnamed_addr constant [37 x i8] c" must be LLVM pointer type, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM15LLVMPointerTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.265 = private unnamed_addr constant [43 x i8] c" must be 32-bit signless integer, but got \00", align 1
@.str.266 = private unnamed_addr constant [172 x i8] c" must be fixed-length vector of 8-bit integer or 16-bit integer or 32-bit integer or 32-bit float or tf32 type or 16-bit float or bfloat16 type values of ranks 1, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_13FloatTF32TypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_12BFloat16TypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.267 = private unnamed_addr constant [67 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]\00", align 1
@.str.271 = private unnamed_addr constant [15 x i8] c"xevm.blockload\00", align 1
@.str.272 = private unnamed_addr constant [271 x i8] c" must be 8-bit signless integer or 16-bit signless integer or 32-bit signless integer or 64-bit signless integer or fixed-length vector of 8-bit signless integer or 16-bit signless integer or 32-bit signless integer or 64-bit signless integer values of ranks 1, but got \00", align 1
@.str.273 = private unnamed_addr constant [21 x i8] c"xevm.blockprefetch2d\00", align 1
@.str.274 = private unnamed_addr constant [80 x i8] c"' failed to satisfy constraint: Describe the cache settings for store operators\00", align 1
@.str.275 = private unnamed_addr constant [18 x i8] c"xevm.blockstore2d\00", align 1
@.str.276 = private unnamed_addr constant [16 x i8] c"xevm.blockstore\00", align 1
@.str.277 = private unnamed_addr constant [33 x i8] c"' failed to satisfy constraint: \00", align 1
@.str.278 = private unnamed_addr constant [10 x i8] c"xevm.extf\00", align 1
@.str.279 = private unnamed_addr constant [161 x i8] c" must be fixed-length vector of 8-bit signless integer or 4-bit signless integer values of ranks 1 or 8-bit signless integer or 4-bit signless integer, but got \00", align 1
@.str.280 = private unnamed_addr constant [123 x i8] c" must be fixed-length vector of 16-bit float or bfloat16 type values of ranks 1 or 16-bit float or bfloat16 type, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4LLVM17ConstantRangeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.281 = private unnamed_addr constant [95 x i8] c"' failed to satisfy constraint: A range of two integers, corresponding to LLVM's ConstantRange\00", align 1
@.str.282 = private unnamed_addr constant [19 x i8] c"xevm.group_count.x\00", align 1
@.str.283 = private unnamed_addr constant [70 x i8] c" must be 32-bit signless integer or 64-bit signless integer, but got \00", align 1
@.str.284 = private unnamed_addr constant [19 x i8] c"xevm.group_count.y\00", align 1
@.str.285 = private unnamed_addr constant [19 x i8] c"xevm.group_count.z\00", align 1
@.str.286 = private unnamed_addr constant [13 x i8] c"xevm.lane_id\00", align 1
@.str.287 = private unnamed_addr constant [12 x i8] c"xevm.mma_mx\00", align 1
@.str.288 = private unnamed_addr constant [109 x i8] c" must be fixed-length vector of 8-bit signless integer values of ranks 1 or 8-bit signless integer, but got \00", align 1
@.str.289 = private unnamed_addr constant [9 x i8] c"xevm.mma\00", align 1
@.str.290 = private unnamed_addr constant [56 x i8] c"' failed to satisfy constraint: Describe address spaces\00", align 1
@.str.291 = private unnamed_addr constant [55 x i8] c"' failed to satisfy constraint: Describe memory scopes\00", align 1
@.str.292 = private unnamed_addr constant [14 x i8] c"xevm.memfence\00", align 1
@.str.293 = private unnamed_addr constant [14 x i8] c"xevm.prefetch\00", align 1
@.str.294 = private unnamed_addr constant [86 x i8] c" must be LLVM pointer in address space 1 or LLVM pointer in address space 4, but got \00", align 1
@.str.295 = private unnamed_addr constant [17 x i8] c"xevm.subgroup_id\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"xevm.subgroup_size\00", align 1
@.str.297 = private unnamed_addr constant [12 x i8] c"xevm.truncf\00", align 1
@.str.298 = private unnamed_addr constant [18 x i8] c"xevm.local_size.x\00", align 1
@.str.299 = private unnamed_addr constant [18 x i8] c"xevm.local_size.y\00", align 1
@.str.300 = private unnamed_addr constant [18 x i8] c"xevm.local_size.z\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"xevm.group_id.x\00", align 1
@.str.302 = private unnamed_addr constant [16 x i8] c"xevm.group_id.y\00", align 1
@.str.303 = private unnamed_addr constant [16 x i8] c"xevm.group_id.z\00", align 1
@.str.304 = private unnamed_addr constant [16 x i8] c"xevm.local_id.x\00", align 1
@.str.305 = private unnamed_addr constant [16 x i8] c"xevm.local_id.y\00", align 1
@.str.306 = private unnamed_addr constant [16 x i8] c"xevm.local_id.z\00", align 1
@.str.307 = private unnamed_addr constant [10 x i8] c"expected \00", align 1
@.str.308 = private unnamed_addr constant [31 x i8] c"::mlir::xevm::LoadCacheControl\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c" to be one of: \00", align 1
@.str.310 = private unnamed_addr constant [33 x i8] c"expected valid keyword or string\00", align 1
@.str.311 = private unnamed_addr constant [32 x i8] c"::mlir::xevm::StoreCacheControl\00", align 1
@.str.312 = private unnamed_addr constant [23 x i8] c"::mlir::xevm::MemScope\00", align 1
@.str.313 = private unnamed_addr constant [22 x i8] c"mlir::xevm::AddrSpace\00", align 1
@.str.314 = private unnamed_addr constant [23 x i8] c"expected valid keyword\00", align 1
@.str.316 = private unnamed_addr constant [71 x i8] c"failed to parse XeVM_MMAShapeAttr parameter 'm' which is to be a `int`\00", align 1
@.str.318 = private unnamed_addr constant [71 x i8] c"failed to parse XeVM_MMAShapeAttr parameter 'n' which is to be a `int`\00", align 1
@.str.320 = private unnamed_addr constant [71 x i8] c"failed to parse XeVM_MMAShapeAttr parameter 'k' which is to be a `int`\00", align 1
@.str.321 = private unnamed_addr constant [45 x i8] c"duplicate or unknown struct parameter name: \00", align 1
@.str.322 = private unnamed_addr constant [23 x i8] c"expected integer value\00", align 1
@.str.323 = private unnamed_addr constant [24 x i8] c"integer value too large\00", align 1
@.str.324 = private unnamed_addr constant [82 x i8] c"failed to parse XeVM_MMATypesAttr parameter 'd' which is to be a `xevm::ElemType`\00", align 1
@.str.325 = private unnamed_addr constant [82 x i8] c"failed to parse XeVM_MMATypesAttr parameter 'a' which is to be a `xevm::ElemType`\00", align 1
@.str.326 = private unnamed_addr constant [82 x i8] c"failed to parse XeVM_MMATypesAttr parameter 'b' which is to be a `xevm::ElemType`\00", align 1
@.str.328 = private unnamed_addr constant [82 x i8] c"failed to parse XeVM_MMATypesAttr parameter 'c' which is to be a `xevm::ElemType`\00", align 1
@.str.329 = private unnamed_addr constant [39 x i8] c"expected keyword for XeVM element type\00", align 1
@.str.330 = private unnamed_addr constant [104 x i8] c"expected one of [bf16, f16, s8, u8, s4, u4, tf32, f32, s32, e2m1, bf8, f8] for XeVM element type, got: \00", align 1
@.str.332 = private unnamed_addr constant [69 x i8] c"failed to parse XeVM_TargetAttr parameter 'O' which is to be a `int`\00", align 1
@.str.334 = private unnamed_addr constant [88 x i8] c"failed to parse XeVM_TargetAttr parameter 'triple' which is to be a `::llvm::StringRef`\00", align 1
@.str.336 = private unnamed_addr constant [86 x i8] c"failed to parse XeVM_TargetAttr parameter 'chip' which is to be a `::llvm::StringRef`\00", align 1
@.str.338 = private unnamed_addr constant [92 x i8] c"failed to parse XeVM_TargetAttr parameter 'flags' which is to be a `::mlir::DictionaryAttr`\00", align 1
@.str.340 = private unnamed_addr constant [91 x i8] c"failed to parse XeVM_TargetAttr parameter 'linkFiles' which is to be a `::mlir::ArrayAttr`\00", align 1
@.str.341 = private unnamed_addr constant [16 x i8] c"expected string\00", align 1
@.str.342 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@.str.344 = private unnamed_addr constant [36 x i8] c"invalid kind of attribute specified\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.347 = private unnamed_addr constant [19 x i8] c"load_cache_control\00", align 1
@.str.348 = private unnamed_addr constant [20 x i8] c"store_cache_control\00", align 1
@.str.349 = private unnamed_addr constant [10 x i8] c"mem_scope\00", align 1
@.str.350 = private unnamed_addr constant [11 x i8] c"addr_space\00", align 1
end_hunk_0
begin_hunk_1_@_ZN4mlir4xevm8LaneIdOp5printERNS_12OpAsmPrinterE:bb.a
  %i.bx = call noundef i64 %i.bw(ptr noundef nonnull align 8 dereferenceable(48) %i.bh) #26, !inline_history !21
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !216
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !274
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = add i64 %i.bx, %i.ca
  %i.cd = sub i64 %i.cc, %i.cb
  %.not.i = icmp eq i64 %i.bt, %i.cd
  br i1 %.not.i, label %bb.j, label %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_4LLVM17ConstantRangeAttrETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !110
  %i.ce = load ptr, ptr %1, align 8, !tbaa !53
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i) #26, !inline_history !22
  br label %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_4LLVM17ConstantRangeAttrETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit

_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_4LLVM17ConstantRangeAttrETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit13, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.pre = load ptr, ptr %0, align 8, !tbaa !108
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit: ; preds = %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_4LLVM17ConstantRangeAttrETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit, %bb.a
  %i.ch = phi ptr [ %.pre, %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_4LLVM17ConstantRangeAttrETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ci, ptr %4, align 8, !tbaa !102
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %i.ck, align 4, !tbaa !100
  store ptr @.str.150, ptr %i.ci, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 5, ptr %.sroa.3.0..sroa_idx.i, align 8
  store i32 1, ptr %i.cj, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.cl = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ch) #26
  store ptr %i.cl, ptr %2, align 8
  %i.cm = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.cn = extractvalue { ptr, i64 } %i.cm, 0
  %i.co = extractvalue { ptr, i64 } %i.cm, 1
  %i.cp = load ptr, ptr %4, align 8, !tbaa !102
  %i.cq = load i32, ptr %i.cj, align 8, !tbaa !99
  %i.cr = zext i32 %i.cq to i64
  %i.cs = load ptr, ptr %1, align 8, !tbaa !53
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 200
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.cn, i64 %i.co, ptr %i.cp, i64 %i.cr) #26
  %i.cv = load ptr, ptr %1, align 8, !tbaa !53
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef nonnull align 8 dereferenceable(48) ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !216 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !217
  %.not.i.i17 = icmp ult ptr %i.da, %i.dc
  br i1 %.not.i.i17, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.dd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cy, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit18

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 1
  store ptr %i.de, ptr %i.cz, align 8, !tbaa !216
  store i8 32, ptr %i.da, align 1, !tbaa !80
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit18

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit18: ; preds = %bb.k, %bb.l
  %i.df = load ptr, ptr %1, align 8, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef nonnull align 8 dereferenceable(48) ptr %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !12 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !217
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !216 ; 2 uses
  %i.dn = icmp eq ptr %i.dk, %i.dm
  br i1 %i.dn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit18
  %i.do = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull @.str.115, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.n:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit18
  store i8 58, ptr %i.dm, align 1
  %i.dp = load ptr, ptr %i.dl, align 8, !tbaa !216
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.dq, ptr %i.dl, align 8, !tbaa !216
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.m, %bb.n
  %i.dr = load ptr, ptr %1, align 8, !tbaa !53
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = call noundef nonnull align 8 dereferenceable(48) ptr %i.dt(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !8 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !216 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !217
  %.not.i.i20 = icmp ult ptr %i.dw, %i.dy
  br i1 %.not.i.i20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.dz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.du, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

bb.p:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !216
  store i8 32, ptr %i.dw, align 1, !tbaa !80
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21: ; preds = %bb.o, %bb.p
  %i.eb = load ptr, ptr %0, align 8, !tbaa !108
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -16
  %i.ed = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, i64 noundef 0) #26
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ee, align 8
  %i.ef = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = load ptr, ptr %1, align 8, !tbaa !53
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.eg) #26
  %i.ek = load ptr, ptr %4, align 8, !tbaa !102   ; 2 uses
  %i.el = icmp eq ptr %i.ek, %i.ci
  br i1 %i.el, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21
  call void @free(ptr noundef %i.ek) #26
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit21, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4xevm6detail25MMAMxOpGenericAdaptorBaseC2ENS0_7MMAMxOpE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = load i32, ptr %i.g, align 4              ; 3 uses
  %i.n = and i32 %i.m, 8388607                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.n to i64
  %i.q = lshr i32 %i.m, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r
  %i.t = lshr i32 %i.m, 21
  %i.u = and i32 %i.t, 2040
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !153
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir4xevm6detail25MMAMxOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi17, zeroinitializer
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !854

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.015.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -4
  %i.f = add i32 %2, -5
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = icmp eq i32 %1, 4
  %5 = select i1 %4, i32 %i.e, i32 1
  %i.i = zext i32 %5 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %7, %.lr.ph ], [ %.015.ph.a, %.lr.ph.preheader19 ] ; 2 uses
  %6 = icmp eq i32 %.01114, 4
  %i.k = zext i1 %6 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %7 = add nuw i32 %.01114, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %7, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !855
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir4xevm6detail25MMAMxOpGenericAdaptorBase8getShapeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !110
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir4xevm6detail25MMAMxOpGenericAdaptorBase8getTypesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !110
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4xevm14MMAMxOpAdaptorC2ENS0_7MMAMxOpE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !131
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #26
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = load i32, ptr %i.a, align 4              ; 3 uses
  %i.v = and i32 %i.u, 8388607                    ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4mlir4xevm21MMAMxOpGenericAdaptorINS_10ValueRangeEEC2INS0_7MMAMxOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = lshr i32 %i.u, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.y, 1
  %i.z = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.z
  %i.ab = lshr i32 %i.u, 21
  %i.ac = and i32 %i.ab, 2040
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !153
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ah
  br label %_ZN4mlir4xevm21MMAMxOpGenericAdaptorINS_10ValueRangeEEC2INS0_7MMAMxOpEvEES2_T_.exit

_ZN4mlir4xevm21MMAMxOpGenericAdaptorINS_10ValueRangeEEC2INS0_7MMAMxOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.i, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4xevm14MMAMxOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !84
  store ptr @.str.155, ptr %3, align 8, !tbaa !80
  store i8 3, ptr %i.d, align 8, !tbaa !83
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  %i.g = load ptr, ptr %2, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !103, !range !104, !noundef !105
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !103
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.p, align 1, !tbaa !84
  store ptr @.str.156, ptr %5, align 8, !tbaa !80
  store i8 3, ptr %i.o, align 8, !tbaa !83
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #26
  %i.q = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #26
  %i.r = load ptr, ptr %4, align 8, !tbaa !92
  %.not.i6 = icmp eq ptr %i.r, null
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !103, !range !104, !noundef !105
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.s, align 8, !tbaa !103
  br i1 %i.u, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.v) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

_ZN4mlir18InFlightDiagnosticD2Ev.exit7:           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.k

bb.k:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit7, %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.05.1 = phi i8 [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.q, %_ZN4mlir18InFlightDiagnosticD2Ev.exit7 ], [ 1, %bb.f ]
  ret i8 %.sroa.05.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir4xevm7MMAMxOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi16, zeroinitializer
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi16, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !856

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.014.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !158

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !131
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -4
  %i.m = add i32 %i.k, -5
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = icmp eq i32 %1, 4
  %4 = select i1 %3, i32 %i.l, i32 1
  %i.p = zext i32 %4 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %6, %.lr.ph ], [ %.014.ph.a, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 4
  %i.r = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %6 = add nuw i32 %.01013, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %6, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !857
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4xevm7MMAMxOp11getCMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !108    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir4xevm7MMAMxOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !158

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !131
  %i.g = add i32 %i.f, -4
  br label %_ZN4mlir4xevm7MMAMxOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir4xevm7MMAMxOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -4, %._crit_edge.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 4, i32 noundef %i.h, ptr null, i64 0) #26
  ret void
}

declare void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, i32 noundef, ptr, i64) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4xevm7MMAMxOp21setPropertiesFromAttrERNS0_6detail25MMAMxOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::DictionaryAttr", align 8 ; 5 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %9, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #26, !inline_history !3
  %i.e = load ptr, ptr %10, align 8, !tbaa !92
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 3, ptr %8, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.81, ptr %i.g, align 8, !tbaa !96
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !99
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !99
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.pr = load ptr, ptr %10, align 8, !tbaa !92
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !103, !range !104, !noundef !105
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !103
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr nonnull @.str.159, i64 5) #26 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i12, @_ZN4mlir6detail14TypeIDResolverINS_4xevm12MMAShapeAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, i64 noundef %3) #26, !inline_history !3
  %i.z = load ptr, ptr %11, align 8, !tbaa !92
  %.not.i.i14 = icmp eq ptr %i.z, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 3, ptr %7, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.160, ptr %i.ab, align 8, !tbaa !96
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 50, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !99 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !100
  %.not.i.i.i.i.i16 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i16, label %bb.n, label %bb.m, !prof !101

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !99
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !99
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.pr49 = load ptr, ptr %11, align 8, !tbaa !92
  %.not.i.i17 = icmp eq ptr %.pr49, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %i.u) #26
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !99 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !100
  %.not.i.i.i.i.i18 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i18, label %bb.q, label %bb.p, !prof !101

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !99
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !99
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pr51 = load ptr, ptr %11, align 8, !tbaa !92
  %.not.i19 = icmp eq ptr %.pr51, null
  br i1 %.not.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #26
end_hunk_1
begin_hunk_2_@_ZN4mlir4xevm7MMAMxOp20verifyInvariantsImplEv:bb.a
  store i8 0, ptr %i.ac, align 8, !tbaa !103
  br i1 %i.ae, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit61

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.af) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit61

_ZN4mlir18InFlightDiagnosticD2Ev.exit61:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.thread203

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.c, ptr %2, align 8, !tbaa !282
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_XeVMOps8N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull readonly %i.k, ptr nonnull @.str.159, i64 5, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_XeVMOps8PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %.thread203

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.aj, ptr %1, align 8, !tbaa !284
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_XeVMOps9N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull readonly %i.w, ptr nonnull @.str.161, i64 5, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_XeVMOps9PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj.exit, label %.thread203

_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj.exit:     ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.an = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !115
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ar, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.an, ptr %i.at, ptr nonnull @.str.103, i64 7, i32 noundef 0)
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.lr.ph.i.i, label %.thread195

.lr.ph.i.i:                                       ; preds = %_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %.sroa.0.0.copyload.i.i.i76 = load ptr, ptr %i.az, align 8, !tbaa !115
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i76, i64 8
  %.0.copyload.i.i.i.i.i77 = load i64, ptr %i.ba, align 8
  %i.bb = and i64 %.0.copyload.i.i.i.i.i77, -8
  %i.bc = inttoptr i64 %i.bb to ptr
  store i32 2, ptr %i.a, align 4, !tbaa !119
  %i.bd = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.aw, ptr %i.bc, ptr nonnull @.str.103, i64 7, i32 noundef 1)
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %._crit_edge.a, label %.thread195

._crit_edge.a:                                    ; preds = %.lr.ph.i.i
  %i.bf = call { ptr, i64 } @_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2) ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1      ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bf, 0
  %.not206216.a = icmp eq i64 %i.bg, 0
  br i1 %.not206216.a, label %._crit_edge220.a, label %.lr.ph219.a

bb.m:                                             ; preds = %.lr.ph219.a
  %i.bi = add nuw nsw i64 %.sroa.4142.0217, 1     ; 2 uses
  %.not206.a = icmp eq i64 %i.bi, %i.bg
  br i1 %.not206.a, label %._crit_edge220.a, label %.lr.ph219.a

.lr.ph219.a:                                      ; preds = %._crit_edge.a, %bb.m
  %i.bj = phi i32 [ %i.bq, %bb.m ], [ 2, %._crit_edge.a ] ; 2 uses
  %.sroa.4142.0217 = phi i64 [ %i.bi, %bb.m ], [ 0, %._crit_edge.a ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %.sroa.4142.0217
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.0.0.copyload.i.i.i82 = load ptr, ptr %i.bl, align 8, !tbaa !115
  %i.bm = load ptr, ptr %0, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i82, i64 8
  %.0.copyload.i.i.i.i.i83 = load i64, ptr %i.bn, align 8
  %i.bo = and i64 %.0.copyload.i.i.i.i.i83, -8
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = add i32 %i.bj, 1                        ; 3 uses
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !119
  %i.br = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps8PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bm, ptr %i.bp, ptr nonnull @.str.103, i64 7, i32 noundef %i.bj)
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.m, label %.thread195

._crit_edge220.a:                                 ; preds = %bb.m, %._crit_edge.a
  %i.bt = phi i32 [ 2, %._crit_edge.a ], [ %i.bq, %bb.m ] ; 2 uses
  %i.bu = call { ptr, i64 } @_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 3) ; 2 uses
  %i.bv = extractvalue { ptr, i64 } %i.bu, 1      ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bu, 0
  %.not207221.a = icmp eq i64 %i.bv, 0
  br i1 %.not207221.a, label %._crit_edge225.a, label %.lr.ph224

bb.n:                                             ; preds = %.lr.ph224
  %i.bx = add nuw nsw i64 %.sroa.4130.0222, 1     ; 2 uses
  %.not207 = icmp eq i64 %i.bx, %i.bv
  br i1 %.not207, label %._crit_edge225.a, label %.lr.ph224

.lr.ph224:                                        ; preds = %._crit_edge220.a, %bb.n
  %i.by = phi i32 [ %i.cf, %bb.n ], [ %i.bt, %._crit_edge220.a ] ; 2 uses
  %.sroa.4130.0222 = phi i64 [ %i.bx, %bb.n ], [ 0, %._crit_edge220.a ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %.sroa.4130.0222
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.sroa.0.0.copyload.i.i.i88 = load ptr, ptr %i.ca, align 8, !tbaa !115
  %i.cb = load ptr, ptr %0, align 8, !tbaa !108
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i88, i64 8
  %.0.copyload.i.i.i.i.i89 = load i64, ptr %i.cc, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i89, -8
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = add i32 %i.by, 1                        ; 3 uses
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !119
  %i.cg = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps8PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.cb, ptr %i.ce, ptr nonnull @.str.103, i64 7, i32 noundef %i.by)
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.n, label %.thread195

._crit_edge225.a:                                 ; preds = %bb.n, %._crit_edge220.a
  %i.ci = phi i32 [ %i.bt, %._crit_edge220.a ], [ %i.cf, %bb.n ]
  %i.cj = call { ptr, i64 } @_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 4) ; 2 uses
  %i.ck = extractvalue { ptr, i64 } %i.cj, 1      ; 3 uses
  %i.cl = icmp ugt i64 %i.ck, 1
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge225.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.cm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.cn, align 1, !tbaa !84
  store ptr @.str.165, ptr %8, align 8, !tbaa !80
  store i8 3, ptr %i.cm, align 8, !tbaa !83
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #26
  %i.co = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.cp = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.co, ptr noundef nonnull align 1 dereferenceable(37) @.str.166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.ck, ptr %i.b, align 8, !tbaa !97
  %i.cq = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.cp, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.cr = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.cq) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread195

bb.p:                                             ; preds = %._crit_edge225.a
  %.not208226 = icmp eq i64 %i.ck, 0
  br i1 %.not208226, label %._crit_edge230, label %.lr.ph229.preheader

.lr.ph229.preheader:                              ; preds = %bb.p
  %i.cs = extractvalue { ptr, i64 } %i.cj, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %.sroa.0.0.copyload.i.i.i94 = load ptr, ptr %i.ct, align 8, !tbaa !115
  %i.cu = load ptr, ptr %0, align 8, !tbaa !108
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i94, i64 8
  %.0.copyload.i.i.i.i.i95 = load i64, ptr %i.cv, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i95, -8
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.cu, ptr %i.cx, ptr nonnull @.str.103, i64 7, i32 noundef %i.ci)
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %._crit_edge230, label %bb.q

.thread195:                                       ; preds = %.lr.ph219.a, %.lr.ph224, %_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj.exit, %.lr.ph.i.i, %bb.o
  %.sroa.056.19.ph = phi i8 [ %i.cr, %bb.o ], [ 0, %_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj.exit ], [ 0, %.lr.ph224 ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph219.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread203

bb.q:                                             ; preds = %.lr.ph229.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread203

._crit_edge230:                                   ; preds = %.lr.ph229.preheader, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.da = load ptr, ptr %0, align 8, !tbaa !108
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -16
  %i.dc = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.db, i64 noundef 0) #26
  %i.dd = load ptr, ptr %0, align 8, !tbaa !108
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.0.copyload.i.i.i.i.i102 = load i64, ptr %i.de, align 8
  %i.df = and i64 %.0.copyload.i.i.i.i.i102, -8
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.dd, ptr %i.dg, ptr nonnull @.str.104, i64 6, i32 noundef 0)
  br label %.thread203

.thread203:                                       ; preds = %._crit_edge230, %_ZN4mlir18InFlightDiagnosticD2Ev.exit61, %bb.k, %bb.l, %.thread195, %bb.q, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.056.24 = phi i8 [ %i.o, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.aa, %_ZN4mlir18InFlightDiagnosticD2Ev.exit61 ], [ 0, %bb.q ], [ 0, %bb.k ], [ %.sroa.056.19.ph, %.thread195 ], [ 0, %bb.l ], [ %i.dh, %._crit_edge230 ]
  ret i8 %.sroa.056.24
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4mlir4xevm7MMAMxOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi27 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi27, zeroinitializer
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi27, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !858

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.014.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.d, %middle.block ]
  %.014.i.ph.a = phi i32 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation13operand_beginEv.exit, label %bb.b, !prof !158

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.014.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ]
  %.01013.i = phi i32 [ %4, %.lr.ph.i ], [ %.014.i.ph.a, %.lr.ph.i.preheader ] ; 2 uses
  %3 = icmp eq i32 %.01013.i, 4
  %i.i = zext i1 %3 to i32
  %spec.select.i = add nuw nsw i32 %.014.i, %i.i  ; 2 uses
  %4 = add nuw i32 %.01013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %4, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !859

bb.b:                                             ; preds = %._crit_edge.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113
  br label %_ZN4mlir9Operation13operand_beginEv.exit

_ZN4mlir9Operation13operand_beginEv.exit:         ; preds = %._crit_edge.i, %bb.b
  %i.n = phi i32 [ %i.k, %bb.b ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %bb.b ], [ null, %._crit_edge.i ]
  %5 = add i32 %i.n, -5
  %6 = mul nsw i32 %5, %.0.lcssa.i
  %i.o = add i32 %6, %1                           ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %7 = icmp eq i32 %1, 4
  %i.q = add i32 %i.n, -4
  %8 = select i1 %7, i32 %i.q, i32 1
  %i.r = add i32 %i.o, %8
  %.sroa.0.0.insert.ext.i = zext i32 %i.r to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i, i64 %i.p
  %i.t = sub nsw i64 %.sroa.0.0.insert.ext.i, %i.p
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.s, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.t, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps8PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %10 = alloca %"class.mlir::VectorType", align 8 ; 6 uses
  %11 = alloca %"class.mlir::Type", align 8       ; 4 uses
  %12 = alloca %"class.mlir::ShapedType", align 8 ; 8 uses
  %13 = alloca %"class.mlir::VectorType", align 8 ; 7 uses
  %14 = alloca %"class.mlir::VectorType", align 8 ; 7 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  store ptr %1, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !118
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE
  %spec.select.i.i.i.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i.i.i.i, ptr %10, align 8
  %i.d = icmp eq ptr %spec.select.i.i.i.i.i, null
  br i1 %i.d, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread, label %bb.b

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  br label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.e = call { ptr, i64 } @_ZNK4mlir10VectorType15getScalableDimsEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 0        ; 4 uses
  %i.g = extractvalue { ptr, i64 } %i.e, 1        ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ashr i64 %i.g, 2                         ; 2 uses
  %i.k = icmp sgt i64 %i.j, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  %i.l = and i64 %i.g, -4
  %scevgep.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.f, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i.i
  %.047.i.i.i.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.u, %bb.g ] ; 2 uses
  %.02946.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.t, %bb.g ] ; 9 uses
  %i.m = load i8, ptr %.02946.i.i.i.i.i.i.i.i, align 1, !tbaa !189, !range !104, !noundef !105
  %.not.i.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !189, !range !104, !noundef !105
  %.not4.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not4.i.i.i.i, label %bb.e, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit48

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !189, !range !104, !noundef !105
  %.not5.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not5.i.i.i.i, label %bb.f, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit46

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !189, !range !104, !noundef !105
  %.not6.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not6.i.i.i.i, label %bb.g, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 4
  %i.u = add nsw i64 %.047.i.i.i.i.i.i.i.i, -1
  %i.v = icmp sgt i64 %.047.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.c, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !6

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.g, %bb.b
  %.029.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %scevgep.i.i.i.i.i.i.i.i, %bb.g ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i.i.i to i64
  %i.w = sub i64 %i.i, %.pre-phi.i.i.i.i.i.i.i.i
  switch i64 %i.w, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread18 [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.x = load i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, align 1, !tbaa !189, !range !104, !noundef !105
  %.not7.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not7.i.i.i.i, label %bb.i, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i.i.i.i.i

._crit_edge._crit_edge.i.i.i.i.i.i.i.i:           ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %bb.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.z = load i8, ptr %.1.i.i.i.i.i.i.i.i, align 1, !tbaa !189, !range !104, !noundef !105
  %.not8.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not8.i.i.i.i, label %bb.j, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i.i.i.i.i:         ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i.i
  %.2.i.i.i.i.i.i.i.i = phi ptr [ %i.aa, %bb.j ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ab = load i8, ptr %.2.i.i.i.i.i.i.i.i, align 1, !tbaa !189, !range !104, !noundef !105
  %.not9.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not9.i.i.i.i, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread18, label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread18: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  br label %bb.k

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 3
  br label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit46: ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 2
  br label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit48: ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit

_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit: ; preds = %bb.c, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit46, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit48, %bb.h, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i
  %.028.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i.i.i.i ], [ %.029.lcssa.i.i.i.i.i.i.i.i, %bb.h ], [ %.2.i.i.i.i.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i.i.i.i.i ], [ %i.ae, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit48 ], [ %i.ad, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit46 ], [ %i.ac, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i.i.i.i.i, %bb.c ]
  %.not.i.i.i = icmp eq ptr %.028.i.i.i.i.i.i.i.i, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  br i1 %.not.i.i.i, label %bb.k, label %bb.s

bb.k:                                             ; preds = %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit, %_ZN4llvm3isaIJN4mlir15FixedVectorTypeEENS1_4TypeEEEbRKT0_.exit.thread18
  %i.af = load ptr, ptr %1, align 8, !tbaa !118   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !73

bb.l:                                             ; preds = %bb.k
  %i.aj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.267, i64 49), i64 16) #26
  store ptr %i.ak, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #26
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !74 ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !102 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !99 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ap = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ap ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !74
  %i.ar = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.at = xor i64 %i.ap, -1
  %i.au = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.at
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ar, ptr %i.as, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ar, i64 %i.au, i64 %i.ap ; 2 uses
  %i.av = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.ao, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.al, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.aw
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN4mlir4xevm7MMAMxOp5printERNS_12OpAsmPrinterE:bb.a
  %.sroa.3.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 5, ptr %.sroa.3.0..sroa_idx.i100, align 8
  store i32 2, ptr %i.nm, align 8, !tbaa !99
  %i.np = load ptr, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.nq = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.np) #26
  store ptr %i.nq, ptr %4, align 8
  %i.nr = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.ns = extractvalue { ptr, i64 } %i.nr, 0
  %i.nt = extractvalue { ptr, i64 } %i.nr, 1
  %i.nu = load ptr, ptr %7, align 8, !tbaa !102
  %i.nv = load i32, ptr %i.nm, align 8, !tbaa !99
  %i.nw = zext i32 %i.nv to i64
  %i.nx = load ptr, ptr %1, align 8, !tbaa !53
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 200
  %i.nz = load ptr, ptr %i.ny, align 8
  call void %i.nz(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.ns, i64 %i.nt, ptr %i.nu, i64 %i.nw) #26
  %i.oa = load ptr, ptr %1, align 8, !tbaa !53
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = call noundef nonnull align 8 dereferenceable(48) ptr %i.oc(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !8 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 32 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !216 ; 3 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !217
  %.not.i.i102 = icmp ult ptr %i.of, %i.oh
  br i1 %.not.i.i102, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.oi = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.od, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit103

bb.ba:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backES1_.exit
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 1
  store ptr %i.oj, ptr %i.oe, align 8, !tbaa !216
  store i8 32, ptr %i.of, align 1, !tbaa !80
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit103

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit103: ; preds = %bb.az, %bb.ba
  %i.ok = load ptr, ptr %1, align 8, !tbaa !53
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  %i.om = load ptr, ptr %i.ol, align 8
  %i.on = call noundef nonnull align 8 dereferenceable(48) ptr %i.om(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !12 ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 24
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !217
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 32 ; 3 uses
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !216 ; 2 uses
  %i.os = icmp eq ptr %i.op, %i.or
  br i1 %i.os, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit103
  %i.ot = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.on, ptr noundef nonnull @.str.115, i64 noundef 1) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit105

bb.bc:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit103
  store i8 58, ptr %i.or, align 1
  %i.ou = load ptr, ptr %i.oq, align 8, !tbaa !216
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  store ptr %i.ov, ptr %i.oq, align 8, !tbaa !216
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit105

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit105: ; preds = %bb.bb, %bb.bc
  %i.ow = load ptr, ptr %1, align 8, !tbaa !53
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %i.oy = load ptr, ptr %i.ox, align 8
  %i.oz = call noundef nonnull align 8 dereferenceable(48) ptr %i.oy(ptr noundef nonnull align 8 dereferenceable(16) %1) #26, !inline_history !8 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 32 ; 2 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !216 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 24
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !217
  %.not.i.i106 = icmp ult ptr %i.pb, %i.pd
  br i1 %.not.i.i106, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit105
  %i.pe = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.oz, i8 noundef zeroext 32) #26 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit107

bb.be:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit105
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pb, i64 1
  store ptr %i.pf, ptr %i.pa, align 8, !tbaa !216
  store i8 32, ptr %i.pb, align 1, !tbaa !80
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit107

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit107: ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.pg = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !888
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 44
  %i.pi = load i32, ptr %i.ph, align 4, !noalias !888
  %i.pj = and i32 %i.pi, 8388608
  %.not.i.i.i108 = icmp eq i32 %i.pj, 0
  br i1 %.not.i.i.i108, label %_ZN4mlir9Operation15getOperandTypesEv.exit, label %bb.bf, !prof !158

bb.bf:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit107
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pg, i64 72
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !113, !noalias !888
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pg, i64 68
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !131, !noalias !888
  %i.po = zext i32 %i.pn to i64
  br label %_ZN4mlir9Operation15getOperandTypesEv.exit

_ZN4mlir9Operation15getOperandTypesEv.exit:       ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit107, %bb.bf
  %.sroa.0.0.i.i.i = phi ptr [ %i.pl, %bb.bf ], [ null, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit107 ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.po, %bb.bf ], [ 0, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit107 ]
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !888
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.i.i.i, ptr %i.pp, align 8, !noalias !888
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !888
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.pq = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !889
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 36
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !224, !noalias !889 ; 2 uses
  %i.pt = icmp eq i32 %i.ps, 0
  %i.pu = getelementptr inbounds i8, ptr %i.pq, i64 -16
  %i.pv = zext i32 %i.ps to i64
  %.sroa.0.0.i.i = select i1 %i.pt, ptr null, ptr %i.pu
  store ptr %.sroa.0.0.i.i, ptr %2, align 8, !noalias !889
  %i.pw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.pv, ptr %i.pw, align 8, !noalias !889
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange.441") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !889
  call void @_ZN4mlir10AsmPrinter19printFunctionalTypeINS_14ValueTypeRangeINS_12OperandRangeEEENS2_INS_11ResultRangeEEEEEvOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.px = load ptr, ptr %7, align 8, !tbaa !102   ; 2 uses
  %i.py = icmp eq ptr %i.px, %i.nl
  br i1 %i.py, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit
  call void @free(ptr noundef %i.px) #26
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4xevm6detail23MMAOpGenericAdaptorBaseC2ENS0_5MMAOpE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !136
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !138
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = load i32, ptr %i.g, align 4              ; 3 uses
  %i.n = and i32 %i.m, 8388607                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.n to i64
  %i.q = lshr i32 %i.m, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r
  %i.t = lshr i32 %i.m, 21
  %i.u = and i32 %i.t, 2040
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !153
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir4xevm6detail23MMAOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi17, splat (i32 2)
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !890

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.015.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -2
  %i.f = add i32 %2, -3
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = icmp eq i32 %1, 2
  %5 = select i1 %4, i32 %i.e, i32 1
  %i.i = zext i32 %5 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %7, %.lr.ph ], [ %.015.ph.a, %.lr.ph.preheader19 ] ; 2 uses
  %6 = icmp eq i32 %.01114, 2
  %i.k = zext i1 %6 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %7 = add nuw i32 %.01114, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %7, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !891
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir4xevm6detail23MMAOpGenericAdaptorBase8getShapeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !110
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir4xevm6detail23MMAOpGenericAdaptorBase8getTypesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !110
  ret ptr %.sroa.0.0.copyload.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4xevm12MMAOpAdaptorC2ENS0_5MMAOpE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !158

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !113
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !131
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #26
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !136
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !138
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = load i32, ptr %i.a, align 4              ; 3 uses
  %i.v = and i32 %i.u, 8388607                    ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4mlir4xevm19MMAOpGenericAdaptorINS_10ValueRangeEEC2INS0_5MMAOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = lshr i32 %i.u, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.y, 1
  %i.z = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.z
  %i.ab = lshr i32 %i.u, 21
  %i.ac = and i32 %i.ab, 2040
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !153
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ah
  br label %_ZN4mlir4xevm19MMAOpGenericAdaptorINS_10ValueRangeEEC2INS0_5MMAOpEvEES2_T_.exit

_ZN4mlir4xevm19MMAOpGenericAdaptorINS_10ValueRangeEEC2INS0_5MMAOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.i, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4xevm12MMAOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !84
  store ptr @.str.168, ptr %3, align 8, !tbaa !80
  store i8 3, ptr %i.d, align 8, !tbaa !83
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #26
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  %i.g = load ptr, ptr %2, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !103, !range !104, !noundef !105
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !103
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.p, align 1, !tbaa !84
  store ptr @.str.169, ptr %5, align 8, !tbaa !80
  store i8 3, ptr %i.o, align 8, !tbaa !83
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #26
  %i.q = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #26
  %i.r = load ptr, ptr %4, align 8, !tbaa !92
  %.not.i6 = icmp eq ptr %i.r, null
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !103, !range !104, !noundef !105
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.s, align 8, !tbaa !103
  br i1 %i.u, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.v) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

_ZN4mlir18InFlightDiagnosticD2Ev.exit7:           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.k

bb.k:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit7, %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.05.1 = phi i8 [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.q, %_ZN4mlir18InFlightDiagnosticD2Ev.exit7 ], [ 1, %bb.f ]
  ret i8 %.sroa.05.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir4xevm5MMAOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi16, splat (i32 2)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi16, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !892

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.014.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !108    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !158

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !131
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -2
  %i.m = add i32 %i.k, -3
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = icmp eq i32 %1, 2
  %4 = select i1 %3, i32 %i.l, i32 1
  %i.p = zext i32 %4 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %6, %.lr.ph ], [ %.014.ph.a, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 2
  %i.r = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %6 = add nuw i32 %.01013, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %6, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !893
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4xevm5MMAOp11getCMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !108    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir4xevm5MMAOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !158

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !131
  %i.g = add i32 %i.f, -2
  br label %_ZN4mlir4xevm5MMAOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir4xevm5MMAOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -2, %._crit_edge.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %i.h, ptr null, i64 0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4xevm5MMAOp21setPropertiesFromAttrERNS0_6detail23MMAOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::DictionaryAttr", align 8 ; 5 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.a = load ptr, ptr %1, align 8, !tbaa !77
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !74
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %9, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #26, !inline_history !3
  %i.e = load ptr, ptr %10, align 8, !tbaa !92
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store i32 3, ptr %8, align 8, !tbaa !95
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.81, ptr %i.g, align 8, !tbaa !96
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !99   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !100
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !101

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !102
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !99
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !99
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %.pr = load ptr, ptr %10, align 8, !tbaa !92
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !103, !range !104, !noundef !105
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !103
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr nonnull @.str.159, i64 5) #26 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %i.w, align 8, !tbaa !74
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i12, @_ZN4mlir6detail14TypeIDResolverINS_4xevm12MMAShapeAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, i64 noundef %3) #26, !inline_history !3
  %i.z = load ptr, ptr %11, align 8, !tbaa !92
  %.not.i.i14 = icmp eq ptr %i.z, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 3, ptr %7, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.160, ptr %i.ab, align 8, !tbaa !96
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 50, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !99 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !100
  %.not.i.i.i.i.i16 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i16, label %bb.n, label %bb.m, !prof !101

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !99
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !99
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %.pr49 = load ptr, ptr %11, align 8, !tbaa !92
  %.not.i.i17 = icmp eq ptr %.pr49, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %i.u) #26
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !99 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !100
  %.not.i.i.i.i.i18 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i18, label %bb.q, label %bb.p, !prof !101

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !102
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !99
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !99
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pr51 = load ptr, ptr %11, align 8, !tbaa !92
  %.not.i19 = icmp eq ptr %.pr51, null
  br i1 %.not.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #26
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

end_hunk_3
begin_hunk_4_@_ZN4mlir4xevm5MMAOp20verifyInvariantsImplEv:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !84
  store ptr @.str.163, ptr %4, align 8, !tbaa !80
  store i8 3, ptr %i.m, align 8, !tbaa !83
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %4) #26
  %i.o = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #26
  %i.p = load ptr, ptr %3, align 8, !tbaa !92
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %3) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !103, !range !104, !noundef !105
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !103
  br i1 %i.s, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %.thread143

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = icmp eq i64 %i.v, 0
  br i1 %i.x, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !84
  store ptr @.str.164, ptr %6, align 8, !tbaa !80
  store i8 3, ptr %i.y, align 8, !tbaa !83
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %6) #26
  %i.aa = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  %i.ab = load ptr, ptr %5, align 8, !tbaa !92
  %.not.i44 = icmp eq ptr %i.ab, null
  br i1 %.not.i44, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !103, !range !104, !noundef !105
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.ac, align 8, !tbaa !103
  br i1 %i.ae, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit45

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.af) #26
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit45

_ZN4mlir18InFlightDiagnosticD2Ev.exit45:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.thread143

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.c, ptr %2, align 8, !tbaa !282
  %i.ag = ptrtoint ptr %2 to i64
  %i.ah = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_XeVMOps8N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull readonly %i.k, ptr nonnull @.str.159, i64 5, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_XeVMOps8PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.l, label %.thread143

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %0, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.aj, ptr %1, align 8, !tbaa !284
  %i.ak = ptrtoint ptr %1 to i64
  %i.al = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_XeVMOps9N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull readonly %i.w, ptr nonnull @.str.161, i64 5, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_XeVMOps9PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %_ZN4mlir4xevm5MMAOp14getODSOperandsEj.exit, label %.thread143

_ZN4mlir4xevm5MMAOp14getODSOperandsEj.exit:       ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.an = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !115
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ar, align 8
  %i.as = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.an, ptr %i.at, ptr nonnull @.str.103, i64 7, i32 noundef 0)
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %.lr.ph.i.i, label %.thread135

.lr.ph.i.i:                                       ; preds = %_ZN4mlir4xevm5MMAOp14getODSOperandsEj.exit
  %i.aw = load ptr, ptr %0, align 8, !tbaa !108   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !113
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %.sroa.0.0.copyload.i.i.i60 = load ptr, ptr %i.az, align 8, !tbaa !115
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i60, i64 8
  %.0.copyload.i.i.i.i.i61 = load i64, ptr %i.ba, align 8
  %i.bb = and i64 %.0.copyload.i.i.i.i.i61, -8
  %i.bc = inttoptr i64 %i.bb to ptr
  store i32 2, ptr %i.a, align 4, !tbaa !119
  %i.bd = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef nonnull %i.aw, ptr %i.bc, ptr nonnull @.str.103, i64 7, i32 noundef 1)
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %._crit_edge.a, label %.thread135

._crit_edge.a:                                    ; preds = %.lr.ph.i.i
  %i.bf = call { ptr, i64 } @_ZN4mlir4xevm5MMAOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2) ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 1      ; 3 uses
  %i.bh = icmp ugt i64 %i.bg, 1
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bj, align 1, !tbaa !84
  store ptr @.str.165, ptr %8, align 8, !tbaa !80
  store i8 3, ptr %i.bi, align 8, !tbaa !83
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %8) #26
  %i.bk = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRjEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.bl = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA37_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bk, ptr noundef nonnull align 1 dereferenceable(37) @.str.166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.bg, ptr %i.b, align 8, !tbaa !97
  %i.bm = call noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsImEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bl, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.bn = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %i.bm) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @_ZN4mlir18InFlightDiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.thread135

bb.n:                                             ; preds = %._crit_edge.a
  %.not146152 = icmp eq i64 %i.bg, 0
  br i1 %.not146152, label %._crit_edge156, label %.lr.ph155.preheader

.lr.ph155.preheader:                              ; preds = %bb.n
  %i.bo = extractvalue { ptr, i64 } %i.bf, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %.sroa.0.0.copyload.i.i.i66 = load ptr, ptr %i.bp, align 8, !tbaa !115
  %i.bq = load ptr, ptr %0, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i66, i64 8
  %.0.copyload.i.i.i.i.i67 = load i64, ptr %i.br, align 8
  %i.bs = and i64 %.0.copyload.i.i.i.i.i67, -8
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bq, ptr %i.bt, ptr nonnull @.str.103, i64 7, i32 noundef 2)
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %._crit_edge156, label %bb.o

.thread135:                                       ; preds = %_ZN4mlir4xevm5MMAOp14getODSOperandsEj.exit, %.lr.ph.i.i, %bb.m
  %.sroa.040.11.ph = phi i8 [ %i.bn, %bb.m ], [ 0, %.lr.ph.i.i ], [ 0, %_ZN4mlir4xevm5MMAOp14getODSOperandsEj.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread143

bb.o:                                             ; preds = %.lr.ph155.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread143

._crit_edge156:                                   ; preds = %.lr.ph155.preheader, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bw = load ptr, ptr %0, align 8, !tbaa !108
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16
  %i.by = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 noundef 0) #26
  %i.bz = load ptr, ptr %0, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.0.copyload.i.i.i.i.i74 = load i64, ptr %i.ca, align 8
  %i.cb = and i64 %.0.copyload.i.i.i.i.i74, -8
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_XeVMOps3PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bz, ptr %i.cc, ptr nonnull @.str.104, i64 6, i32 noundef 0)
  br label %.thread143

.thread143:                                       ; preds = %._crit_edge156, %_ZN4mlir18InFlightDiagnosticD2Ev.exit45, %bb.k, %bb.l, %.thread135, %bb.o, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.040.16 = phi i8 [ %i.o, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.aa, %_ZN4mlir18InFlightDiagnosticD2Ev.exit45 ], [ 0, %bb.o ], [ 0, %bb.k ], [ %.sroa.040.11.ph, %.thread135 ], [ 0, %bb.l ], [ %i.cd, %._crit_edge156 ]
  ret i8 %.sroa.040.16
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZN4mlir4xevm5MMAOp14getODSOperandsEj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq i32 %1, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi27 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi27, splat (i32 2)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi27, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !894

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.014.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.d, %middle.block ]
  %.014.i.ph.a = phi i32 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select.i, %.lr.ph.i ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation13operand_beginEv.exit, label %bb.b, !prof !158

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.014.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ]
  %.01013.i = phi i32 [ %4, %.lr.ph.i ], [ %.014.i.ph.a, %.lr.ph.i.preheader ] ; 2 uses
  %3 = icmp eq i32 %.01013.i, 2
  %i.i = zext i1 %3 to i32
  %spec.select.i = add nuw nsw i32 %.014.i, %i.i  ; 2 uses
  %4 = add nuw i32 %.01013.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %4, %1
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !895

bb.b:                                             ; preds = %._crit_edge.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113
  br label %_ZN4mlir9Operation13operand_beginEv.exit

_ZN4mlir9Operation13operand_beginEv.exit:         ; preds = %._crit_edge.i, %bb.b
  %i.n = phi i32 [ %i.k, %bb.b ], [ 0, %._crit_edge.i ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %bb.b ], [ null, %._crit_edge.i ]
  %5 = add i32 %i.n, -3
  %6 = mul nsw i32 %5, %.0.lcssa.i
  %i.o = add i32 %6, %1                           ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %7 = icmp eq i32 %1, 2
  %i.q = add i32 %i.n, -2
  %8 = select i1 %7, i32 %i.q, i32 1
  %i.r = add i32 %i.o, %8
  %.sroa.0.0.insert.ext.i = zext i32 %i.r to i64
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i, i64 %i.p
  %i.t = sub nsw i64 %.sroa.0.0.insert.ext.i, %i.p
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.s, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %i.t, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4xevm5MMAOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = tail call i8 @_ZN4mlir4xevm5MMAOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !108    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !131
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %_ZN4mlir4xevm5MMAOp6verifyEv.exit.thread, label %_ZN4mlir4xevm5MMAOp4getCEv.exit.i

_ZN4mlir4xevm5MMAOp4getCEv.exit.i:                ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !115 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %.not.i, label %_ZN4mlir4xevm5MMAOp6verifyEv.exit.thread, label %_ZN4mlir4xevm5MMAOp4getCEv.exit7.i

_ZN4mlir4xevm5MMAOp4getCEv.exit7.i:               ; preds = %_ZN4mlir4xevm5MMAOp4getCEv.exit.i
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i.i8.i = load i64, ptr %i.k, align 8
  %i.l = xor i64 %.0.copyload.i.i.i.i.i.i8.i, %.0.copyload.i.i.i.i.i.i.i
  %.not13.i = icmp ult i64 %i.l, 8
  br i1 %.not13.i, label %_ZN4mlir4xevm5MMAOp6verifyEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir4xevm5MMAOp4getCEv.exit7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !84
  store ptr @.str.58, ptr %2, align 8, !tbaa !80
  store i8 3, ptr %i.m, align 8, !tbaa !83
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %2) #26
  %i.o = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #26
  %i.p = load ptr, ptr %1, align 8, !tbaa !92
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %1) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !103, !range !104, !noundef !105
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !103
  br i1 %i.s, label %bb.f, label %_ZN4mlir4xevm5MMAOp6verifyEv.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #26
  br label %_ZN4mlir4xevm5MMAOp6verifyEv.exit

_ZN4mlir4xevm5MMAOp6verifyEv.exit:                ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.u = trunc nuw i8 %i.o to i1
  br i1 %i.u, label %_ZN4mlir4xevm5MMAOp6verifyEv.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir4xevm5MMAOp6verifyEv.exit, %bb.a
  br label %_ZN4mlir4xevm5MMAOp6verifyEv.exit.thread

_ZN4mlir4xevm5MMAOp6verifyEv.exit.thread:         ; preds = %bb.b, %_ZN4mlir4xevm5MMAOp4getCEv.exit7.i, %_ZN4mlir4xevm5MMAOp4getCEv.exit.i, %_ZN4mlir4xevm5MMAOp6verifyEv.exit, %bb.g
  %.sroa.02.0 = phi i8 [ 0, %bb.g ], [ 1, %_ZN4mlir4xevm5MMAOp6verifyEv.exit ], [ 1, %_ZN4mlir4xevm5MMAOp4getCEv.exit.i ], [ 1, %_ZN4mlir4xevm5MMAOp4getCEv.exit7.i ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4xevm5MMAOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 4 uses
  %4 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %5 = alloca %"class.llvm::ArrayRef.467", align 8 ; 5 uses
  %6 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 5 uses
  %7 = alloca %"class.llvm::ArrayRef.467", align 8 ; 5 uses
  %8 = alloca %"class.llvm::SmallVector.419", align 8 ; 9 uses
  %9 = alloca %"class.mlir::xevm::MMAShapeAttr", align 8 ; 6 uses
  %10 = alloca %"class.mlir::xevm::MMATypesAttr", align 8 ; 6 uses
  %11 = alloca %"class.llvm::ArrayRef.398", align 8 ; 6 uses
  %12 = alloca %"struct.mlir::OpAsmParser::UnresolvedOperand", align 8 ; 6 uses
  %13 = alloca %"class.llvm::SMLoc", align 8      ; 5 uses
  %14 = alloca %class.anon.575, align 8           ; 6 uses
  %15 = alloca %"class.mlir::FunctionType", align 8 ; 6 uses
  %16 = alloca %"class.llvm::detail::concat_range.576", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %4, ptr %5, align 8, !tbaa !267
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.a, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %6, ptr %7, align 8, !tbaa !267
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !268
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 4, ptr %i.e, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr null, ptr %9, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr null, ptr %10, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %0, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = call ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0) #26 ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 736
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i8 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i1 noundef zeroext true) #26
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call i8 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %0, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %0) #26 ; 0 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !53
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 736
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call i8 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %6, i1 noundef zeroext true) #26
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.ab

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %0, align 8, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call i8 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %0, align 8, !tbaa !53
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = call ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %0) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %12, i8 0, i64 24, i1 false)
  %i.al = load ptr, ptr %0, align 8, !tbaa !53
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 744
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call i16 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %12, i1 noundef zeroext true) #26 ; 2 uses
  %i.ap = and i16 %i.ao, 256
  %.not = icmp eq i16 %i.ap, 0
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = trunc i16 %i.ao to i1
  br i1 %i.aq, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ab

bb.g:                                             ; preds = %bb.f
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir11OpAsmParser17UnresolvedOperandELb1EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(28) %12)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.ar = load ptr, ptr %0, align 8, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call i8 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
end_hunk_4
