Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/XCOFFDumper?download=true
inline.NumInlined: 1677
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0

$_ZN4llvm15SmallVectorImplISt8functionIFbNS_6object9SymbolRefES3_EEEaSERKS6_ = comdat any

$_ZN4llvm13ScopedPrinter11printNumberIjEEvNS_9StringRefES2_T_ = comdat any

$_ZN4llvm13ScopedPrinter11printNumberINS_7support6detail31packed_endian_specific_integralIiLNS_10endiannessE0ELm1ELm1EEEEEvNS_9StringRefES7_T_ = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN12_GLOBAL__N_111XCOFFDumperE = internal unnamed_addr constant { [67 x ptr] } { [67 x ptr] [ptr null, ptr null, ptr @_ZN4llvm9ObjDumperD2Ev, ptr @_ZN12_GLOBAL__N_111XCOFFDumperD0Ev, ptr @_ZN4llvm9ObjDumper14canDumpContentEv, ptr @_ZN4llvm9ObjDumper16printFileSummaryENS_9StringRefERNS_6object10ObjectFileENS_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKNS2_7ArchiveE, ptr @_ZN12_GLOBAL__N_111XCOFFDumper16printFileHeadersEv, ptr @_ZN12_GLOBAL__N_111XCOFFDumper19printSectionHeadersEv, ptr @_ZN12_GLOBAL__N_111XCOFFDumper16printRelocationsEv, ptr @_ZN4llvm9ObjDumper12printSymbolsEbbb, ptr @_ZN4llvm9ObjDumper12printSymbolsEbbbSt8optionalINS_16SymbolComparatorEE, ptr @_ZN4llvm9ObjDumper19printProgramHeadersEbNS_2cl13boolOrDefaultE, ptr @_ZN12_GLOBAL__N_111XCOFFDumper15printUnwindInfoEv, ptr @_ZNK4llvm9ObjDumper17canCompareSymbolsEv, ptr @_ZNK4llvm9ObjDumper20compareSymbolsByNameENS_6object9SymbolRefES2_, ptr @_ZNK4llvm9ObjDumper20compareSymbolsByTypeENS_6object9SymbolRefES2_, ptr @_ZN4llvm9ObjDumper18printDependentLibsEv, ptr @_ZN4llvm9ObjDumper23printDynamicRelocationsEv, ptr @_ZN4llvm9ObjDumper17printDynamicTableEv, ptr @_ZN12_GLOBAL__N_111XCOFFDumper20printNeededLibrariesEv, ptr @_ZN4llvm9ObjDumper17printSectionAsHexENS_9StringRefE, ptr @_ZN4llvm9ObjDumper14printHashTableEv, ptr @_ZN4llvm9ObjDumper17printGnuHashTableEv, ptr @_ZN4llvm9ObjDumper16printHashSymbolsEv, ptr @_ZN4llvm9ObjDumper13printLoadNameEv, ptr @_ZN4llvm9ObjDumper16printVersionInfoEv, ptr @_ZN4llvm9ObjDumper18printGroupSectionsEv, ptr @_ZN4llvm9ObjDumper19printHashHistogramsEv, ptr @_ZN4llvm9ObjDumper14printCGProfileEv, ptr @_ZN4llvm9ObjDumper18printCallGraphInfoEv, ptr @_ZN4llvm9ObjDumper15printBBAddrMapsEb, ptr @_ZN4llvm9ObjDumper12printAddrsigEv, ptr @_ZN4llvm9ObjDumper10printNotesEv, ptr @_ZN4llvm9ObjDumper21printELFLinkerOptionsEv, ptr @_ZN4llvm9ObjDumper15printStackSizesEv, ptr @_ZN4llvm9ObjDumper19printSectionDetailsEv, ptr @_ZN4llvm9ObjDumper21printArchSpecificInfoEv, ptr @_ZN4llvm9ObjDumper11printMemtagEv, ptr @_ZN4llvm9ObjDumper21printSectionsAsSFrameENS_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN4llvm9ObjDumper16printCOFFImportsEv, ptr @_ZN4llvm9ObjDumper16printCOFFExportsEv, ptr @_ZN4llvm9ObjDumper19printCOFFDirectivesEv, ptr @_ZN4llvm9ObjDumper18printCOFFBaseRelocEv, ptr @_ZN4llvm9ObjDumper20printCOFFPseudoRelocEv, ptr @_ZN4llvm9ObjDumper23printCOFFDebugDirectoryEv, ptr @_ZN4llvm9ObjDumper21printCOFFTLSDirectoryEv, ptr @_ZN4llvm9ObjDumper18printCOFFResourcesEv, ptr @_ZN4llvm9ObjDumper19printCOFFLoadConfigEv, ptr @_ZN4llvm9ObjDumper22printCodeViewDebugInfoEv, ptr @_ZN4llvm9ObjDumper18mergeCodeViewTypesERNS_8codeview23MergingTypeTableBuilderES3_RNS1_22GlobalTypeTableBuilderES5_b, ptr @_ZN12_GLOBAL__N_111XCOFFDumper16printStringTableEv, ptr @_ZN12_GLOBAL__N_111XCOFFDumper20printAuxiliaryHeaderEv, ptr @_ZN12_GLOBAL__N_111XCOFFDumper21printExceptionSectionEv, ptr @_ZN12_GLOBAL__N_111XCOFFDumper18printLoaderSectionEbbb, ptr @_ZN4llvm9ObjDumper20printMachODataInCodeEv, ptr @_ZN4llvm9ObjDumper20printMachOVersionMinEv, ptr @_ZN4llvm9ObjDumper18printMachODysymtabEv, ptr @_ZN4llvm9ObjDumper17printMachOSegmentEv, ptr @_ZN4llvm9ObjDumper25printMachOIndirectSymbolsEv, ptr @_ZN4llvm9ObjDumper23printMachOLinkerOptionsEv, ptr @_ZNK12_GLOBAL__N_111XCOFFDumper13printStackMapEv, ptr @_ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb, ptr @_ZN4llvm9ObjDumper12printSymbolsESt8optionalINS_16SymbolComparatorEE, ptr @_ZN12_GLOBAL__N_111XCOFFDumper19printDynamicSymbolsEv, ptr @_ZN4llvm9ObjDumper19printDynamicSymbolsESt8optionalINS_16SymbolComparatorEE, ptr @_ZN4llvm9ObjDumper19printProgramHeadersEv, ptr @_ZN4llvm9ObjDumper19printSectionMappingEv] }, align 8
@.str = private unnamed_addr constant [11 x i8] c"FileHeader\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Magic\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"NumberOfSections\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%F %T\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"TimeStamp\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Timestamp\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Reserved Value\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"SymbolTableOffset\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"SymbolTableEntries\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"OptionalHeaderSize\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Flags\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Sections\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Section\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Index\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"DWARFSubType\00", align 1
@_ZN4opts18SectionRelocationsE = external local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"Dumping section relocations is unimplemented\00", align 1
@_ZN4opts14SectionSymbolsE = external local_unnamed_addr global i8, align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Dumping symbols is unimplemented\00", align 1
@_ZN4opts11SectionDataE = external local_unnamed_addr global i8, align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"Dumping section data is unimplemented\00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"An 64-bit XCOFF object file may not contain an overflow section header.\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"NumberOfRelocations\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"NumberOfLineNumbers\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"RawDataOffset\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"RelocationPointer\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"LineNumberPointer\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"IndexOfSectionOverflowed\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"PhysicalAddress\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"VirtualAddress\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZL21SectionTypeFlagsNames = internal constant { [13 x %"class.llvm::EnumString"], [126 x i8] } { [13 x %"class.llvm::EnumString"] [%"class.llvm::EnumString" { [1 x i16] [i16 104], [1 x i8] c"\08", i32 8 }, %"class.llvm::EnumString" { [1 x i16] [i16 104], [1 x i8] c"\0A", i32 16 }, %"class.llvm::EnumString" { [1 x i16] [i16 106], [1 x i8] c"\09", i32 32 }, %"class.llvm::EnumString" { [1 x i16] [i16 107], [1 x i8] c"\09", i32 64 }, %"class.llvm::EnumString" { [1 x i16] [i16 108], [1 x i8] c"\08", i32 128 }, %"class.llvm::EnumString" { [1 x i16] [i16 108], [1 x i8] c"\0B", i32 256 }, %"class.llvm::EnumString" { [1 x i16] [i16 111], [1 x i8] c"\09", i32 512 }, %"class.llvm::EnumString" { [1 x i16] [i16 112], [1 x i8] c"\0A", i32 1024 }, %"class.llvm::EnumString" { [1 x i16] [i16 114], [1 x i8] c"\09", i32 2048 }, %"class.llvm::EnumString" { [1 x i16] [i16 115], [1 x i8] c"\0B", i32 4096 }, %"class.llvm::EnumString" { [1 x i16] [i16 118], [1 x i8] c"\0A", i32 8192 }, %"class.llvm::EnumString" { [1 x i16] [i16 120], [1 x i8] c"\0B", i32 16384 }, %"class.llvm::EnumString" { [1 x i16] [i16 123], [1 x i8] c"\0B", i32 32768 }], [126 x i8] c"STYP_PADSTYP_DWARFSTYP_TEXTSTYP_DATASTYP_BSSSTYP_EXCEPTSTYP_INFOSTYP_TDATASTYP_TBSSSTYP_LOADERSTYP_DEBUGSTYP_TYPCHKSTYP_OVRFLO" }, align 4
@_ZL29DWARFSectionSubtypeFlagsNames = internal constant { [11 x %"class.llvm::EnumString.25"], [157 x i8] } { [11 x %"class.llvm::EnumString.25"] [%"class.llvm::EnumString.25" { [1 x i16] [i16 88], [1 x i8] c"\0E", i32 65536 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 94], [1 x i8] c"\0E", i32 131072 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 100], [1 x i8] c"\0F", i32 196608 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 107], [1 x i8] c"\0F", i32 262144 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 114], [1 x i8] c"\0F", i32 327680 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 121], [1 x i8] c"\0F", i32 393216 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 128], [1 x i8] c"\0D", i32 458752 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 133], [1 x i8] c"\0F", i32 524288 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 140], [1 x i8] c"\0D", i32 589824 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 145], [1 x i8] c"\0F", i32 655360 }, %"class.llvm::EnumString.25" { [1 x i16] [i16 152], [1 x i8] c"\0D", i32 720896 }], [157 x i8] c"SSUBTYP_DWINFOSSUBTYP_DWLINESSUBTYP_DWPBNMSSSUBTYP_DWPBTYPSSUBTYP_DWARNGESSUBTYP_DWABREVSSUBTYP_DWSTRSSUBTYP_DWRNGESSSUBTYP_DWLOCSSUBTYP_DWFRAMESSUBTYP_DWMAC" }, align 4
@.str.35 = private unnamed_addr constant [12 x i8] c"Relocations\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Section (index: \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@_ZN4opts12ExpandRelocsE = external local_unnamed_addr global i8, align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"Relocation\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"Virtual Address\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Symbol\00", align 1
@_ZN4opts8DemangleE = external local_unnamed_addr global i8, align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"IsSigned\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"FixupBitValue\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@_ZL23RelocationTypeNameclass = internal constant %"struct.llvm::EnumStringsStorage.56" { [23 x %"class.llvm::EnumString.57"] [%"class.llvm::EnumString.57" { [1 x i16] [i16 92], [1 x i8] c"\05", i8 0 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 93], [1 x i8] c"\04", i8 12 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 93], [1 x i8] c"\05", i8 13 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 94], [1 x i8] c"\05", i8 1 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 95], [1 x i8] c"\05", i8 2 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 96], [1 x i8] c"\05", i8 3 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 97], [1 x i8] c"\05", i8 18 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 98], [1 x i8] c"\06", i8 19 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 100], [1 x i8] c"\04", i8 5 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 100], [1 x i8] c"\05", i8 6 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 101], [1 x i8] c"\05", i8 15 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 102], [1 x i8] c"\04", i8 8 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 102], [1 x i8] c"\04", i8 10 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 102], [1 x i8] c"\05", i8 24 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 103], [1 x i8] c"\05", i8 26 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 104], [1 x i8] c"\05", i8 32 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 105], [1 x i8] c"\08", i8 33 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 109], [1 x i8] c"\08", i8 34 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 113], [1 x i8] c"\08", i8 35 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 117], [1 x i8] c"\06", i8 36 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 119], [1 x i8] c"\07", i8 37 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 122], [1 x i8] c"\06", i8 48 }, %"class.llvm::EnumString.57" { [1 x i16] [i16 124], [1 x i8] c"\06", i8 49 }], [126 x i8] c"R_POSR_RLR_RLAR_NEGR_RELR_TOCR_TRLR_TRLAR_GLR_TCLR_REFR_BAR_BRR_RBAR_RBRR_TLSR_TLS_IER_TLS_LDR_TLS_LER_TLSMR_TLSMLR_TOCUR_TOCL" }, align 2
@.str.48 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8
@.str.51 = private unnamed_addr constant [16 x i8] c"NeededLibraries\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"BASE\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c" MEMBER\0A\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"StringTable\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"AuxiliaryHeader\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"Version\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"Reserved for debugger\00", align 1
@.str.59 = private unnamed_addr constant [28 x i8] c".text section start address\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c".data section start address\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"TOC anchor address\00", align 1
@.str.62 = private unnamed_addr constant [29 x i8] c"Section number of entryPoint\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"Section number of .text\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"Section number of .data\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"Section number of TOC\00", align 1
@.str.66 = private unnamed_addr constant [30 x i8] c"Section number of loader data\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"Section number of .bss\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"Maxium alignment of .text\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"Maxium alignment of .data\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"Module type\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"CPU type of objects\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"(Reserved)\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"Text page size\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"Data page size\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"Stack page size\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"Flag\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"Alignment of thread-local storage\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"Size of .text section\00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"Size of .data section\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"Size of .bss section\00", align 1
@.str.81 = private unnamed_addr constant [20 x i8] c"Entry point address\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"Maximum stack size\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"Maximum data size\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"Section number for .tdata\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"Section number for .tbss\00", align 1
@.str.86 = private unnamed_addr constant [30 x i8] c"Additional flags 64-bit XCOFF\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"only partial field for \00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c" at offset (\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"Raw data\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"Extra raw data\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"Exception section\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"Trap Instr Addr\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"LangID\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"Reason\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"Loader Section\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"Loader Section Header\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"OffsetToSymbolTable\00", align 1
@.str.99 = private unnamed_addr constant [26 x i8] c"OffsetToRelocationEntries\00", align 1
@.str.100 = private unnamed_addr constant [22 x i8] c"NumberOfSymbolEntries\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"NumberOfRelocationEntries\00", align 1
@.str.102 = private unnamed_addr constant [32 x i8] c"LengthOfImportFileIDStringTable\00", align 1
@.str.103 = private unnamed_addr constant [22 x i8] c"NumberOfImportFileIDs\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"OffsetToImportFileIDs\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"LengthOfStringTable\00", align 1
@.str.106 = private unnamed_addr constant [20 x i8] c"OffsetToStringTable\00", align 1
@.str.107 = private unnamed_addr constant [23 x i8] c"Loader Section Symbols\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"SectionNum\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"SymbolType\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"StorageClass\00", align 1
@_ZL15SymStorageClass = internal constant %"struct.llvm::EnumStringsStorage.93" { [50 x %"class.llvm::EnumString.94"] [%"class.llvm::EnumString.94" { [1 x i16] [i16 200], [1 x i8] c"\06", i8 0 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 202], [1 x i8] c"\06", i8 1 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 204], [1 x i8] c"\05", i8 2 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 205], [1 x i8] c"\06", i8 3 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 207], [1 x i8] c"\05", i8 4 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 208], [1 x i8] c"\08", i8 5 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 212], [1 x i8] c"\07", i8 6 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 215], [1 x i8] c"\08", i8 7 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 219], [1 x i8] c"\05", i8 8 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 220], [1 x i8] c"\05", i8 9 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 221], [1 x i8] c"\08", i8 10 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 225], [1 x i8] c"\05", i8 11 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 226], [1 x i8] c"\07", i8 12 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 229], [1 x i8] c"\07", i8 13 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 232], [1 x i8] c"\09", i8 14 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 237], [1 x i8] c"\07", i8 15 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 240], [1 x i8] c"\05", i8 16 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 241], [1 x i8] c"\09", i8 17 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 246], [1 x i8] c"\07", i8 18 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 249], [1 x i8] c"\07", i8 100 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 252], [1 x i8] c"\05", i8 101 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 253], [1 x i8] c"\05", i8 102 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 254], [1 x i8] c"\06", i8 103 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 256], [1 x i8] c"\06", i8 104 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 258], [1 x i8] c"\07", i8 105 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 261], [1 x i8] c"\08", i8 106 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 265], [1 x i8] c"\08", i8 107 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 269], [1 x i8] c"\07", i8 108 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 272], [1 x i8] c"\07", i8 109 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 275], [1 x i8] c"\06", i8 110 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 277], [1 x i8] c"\09", i8 111 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 282], [1 x i8] c"\07", i8 112 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 285], [1 x i8] c"\06", i8 -128 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 287], [1 x i8] c"\06", i8 -127 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 289], [1 x i8] c"\06", i8 -126 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 291], [1 x i8] c"\06", i8 -125 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 293], [1 x i8] c"\07", i8 -124 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 296], [1 x i8] c"\07", i8 -123 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 299], [1 x i8] c"\07", i8 -122 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 302], [1 x i8] c"\07", i8 -121 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 305], [1 x i8] c"\07", i8 -120 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 308], [1 x i8] c"\07", i8 -119 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 311], [1 x i8] c"\06", i8 -116 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 313], [1 x i8] c"\07", i8 -115 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 316], [1 x i8] c"\05", i8 -114 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 317], [1 x i8] c"\07", i8 -113 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 320], [1 x i8] c"\07", i8 -112 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 323], [1 x i8] c"\06", i8 -111 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 325], [1 x i8] c"\07", i8 -110 }, %"class.llvm::EnumString.94" { [1 x i16] [i16 328], [1 x i8] c"\06", i8 -1 }], [330 x i8] c"C_NULLC_AUTOC_EXTC_STATC_REGC_EXTDEFC_LABELC_ULABELC_MOSC_ARGC_STRTAGC_MOUC_UNTAGC_TPDEFC_USTATICC_ENTAGC_MOEC_REGPARMC_FIELDC_BLOCKC_FCNC_EOSC_FILEC_LINEC_ALIASC_HIDDENC_HIDEXTC_BINCLC_EINCLC_INFOC_WEAKEXTC_DWARFC_GSYMC_LSYMC_PSYMC_RSYMC_RPSYMC_STSYMC_TCSYMC_BCOMMC_ECOMLC_ECOMMC_DECLC_ENTRYC_FUNC_BSTATC_ESTATC_GTLSC_STTLSC_EFCN" }, align 2
@.str.111 = private unnamed_addr constant [13 x i8] c"ImportFileID\00", align 1
@.str.112 = private unnamed_addr constant [19 x i8] c"ParameterTypeCheck\00", align 1
@.str.113 = private unnamed_addr constant [27 x i8] c"Loader Section Relocations\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"Vaddr\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"SecNum\00", align 1
@.str.116 = private unnamed_addr constant [20 x i8] c"SymbolName (Index) \00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"Unkown Symbol Name\00", align 1
@.str.118 = private unnamed_addr constant [6 x i8] c".tbss\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c".tdata\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c".data\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"SectionNumber\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.126 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"Symbols\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"Source Language ID\00", align 1
@_ZL16CFileLangIdClass = internal constant %"struct.llvm::EnumStringsStorage.108" { [3 x %"class.llvm::EnumString.109"] [%"class.llvm::EnumString.109" { [1 x i16] [i16 12], [1 x i8] c"\04", i8 0 }, %"class.llvm::EnumString.109" { [1 x i16] [i16 12], [1 x i8] c"\0A", i8 1 }, %"class.llvm::EnumString.109" { [1 x i16] [i16 18], [1 x i8] c"\0C", i8 9 }], [26 x i8] c"TB_CTB_FortranTB_CPLUSPLUS" }, align 2
@.str.129 = private unnamed_addr constant [15 x i8] c"CPU Version ID\00", align 1
@_ZL15CFileCpuIdClass = internal constant %"struct.llvm::EnumStringsStorage.112" { [21 x %"class.llvm::EnumString.113"] [%"class.llvm::EnumString.113" { [1 x i16] [i16 84], [1 x i8] c"\0C", i8 0 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 92], [1 x i8] c"\08", i8 1 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 96], [1 x i8] c"\0A", i8 2 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 102], [1 x i8] c"\08", i8 3 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 106], [1 x i8] c"\08", i8 4 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 110], [1 x i8] c"\08", i8 5 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 114], [1 x i8] c"\08", i8 6 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 118], [1 x i8] c"\08", i8 7 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 122], [1 x i8] c"\08", i8 8 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 126], [1 x i8] c"\08", i8 16 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 130], [1 x i8] c"\08", i8 17 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 134], [1 x i8] c"\08", i8 19 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 138], [1 x i8] c"\09", i8 18 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 143], [1 x i8] c"\09", i8 20 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 148], [1 x i8] c"\0A", i8 22 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 154], [1 x i8] c"\0A", i8 23 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 160], [1 x i8] c"\09", i8 24 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 165], [1 x i8] c"\09", i8 25 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 170], [1 x i8] c"\09", i8 26 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 175], [1 x i8] c"\0A", i8 27 }, %"class.llvm::EnumString.113" { [1 x i16] [i16 181], [1 x i8] c"\09", i8 -32 }], [186 x i8] c"TCPU_INVALIDTCPU_PPCTCPU_PPC64TCPU_COMTCPU_PWRTCPU_ANYTCPU_601TCPU_603TCPU_604TCPU_620TCPU_A35TCPU_970TCPU_PWR5TCPU_PWR6TCPU_PWR5XTCPU_PWR6ETCPU_PWR7TCPU_PWR8TCPU_PWR9TCPU_PWR10TCPU_PWRX" }, align 2
@.str.130 = private unnamed_addr constant [19 x i8] c"NumberOfAuxEntries\00", align 1
@.str.131 = private unnamed_addr constant [27 x i8] c"Value (RelocatableAddress)\00", align 1
@.str.132 = private unnamed_addr constant [25 x i8] c"Value (SymbolTableIndex)\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"Value (OffsetInDWARF)\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"Value (OffsetInCSect)\00", align 1
@.str.135 = private unnamed_addr constant [21 x i8] c"Value (OffsetInFile)\00", align 1
@.str.136 = private unnamed_addr constant [31 x i8] c"Value (OffsetInCommentSection)\00", align 1
@.str.137 = private unnamed_addr constant [30 x i8] c"Value (OffsetRelToStackFrame)\00", align 1
@.str.138 = private unnamed_addr constant [23 x i8] c"Value (RegisterNumber)\00", align 1
@.str.139 = private unnamed_addr constant [26 x i8] c"Value (OffsetInCommBlock)\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.141 = private unnamed_addr constant [39 x i8] c"!Unexpected raw auxiliary entry data:\0A\00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"File Auxiliary Entry\00", align 1
@_ZL14FileStringType = internal constant %"struct.llvm::EnumStringsStorage.132" { [4 x %"class.llvm::EnumString.133"] [%"class.llvm::EnumString.133" { [1 x i16] [i16 16], [1 x i8] c"\06", i8 0 }, %"class.llvm::EnumString.133" { [1 x i16] [i16 18], [1 x i8] c"\06", i8 1 }, %"class.llvm::EnumString.133" { [1 x i16] [i16 20], [1 x i8] c"\06", i8 2 }, %"class.llvm::EnumString.133" { [1 x i16] [i16 22], [1 x i8] c"\06", i8 -128 }], [24 x i8] c"XFT_FNXFT_CTXFT_CVXFT_CD" }, align 2
@.str.143 = private unnamed_addr constant [15 x i8] c"Auxiliary Type\00", align 1
@_ZL10SymAuxType = internal constant { [6 x %"class.llvm::EnumString.137"], [49 x i8] } { [6 x %"class.llvm::EnumString.137"] [%"class.llvm::EnumString.137" { [1 x i16] [i16 24], [1 x i8] c"\0A", i8 -1 }, %"class.llvm::EnumString.137" { [1 x i16] [i16 30], [1 x i8] c"\07", i8 -2 }, %"class.llvm::EnumString.137" { [1 x i16] [i16 33], [1 x i8] c"\07", i8 -3 }, %"class.llvm::EnumString.137" { [1 x i16] [i16 36], [1 x i8] c"\08", i8 -4 }, %"class.llvm::EnumString.137" { [1 x i16] [i16 40], [1 x i8] c"\09", i8 -5 }, %"class.llvm::EnumString.137" { [1 x i16] [i16 45], [1 x i8] c"\08", i8 -6 }], [49 x i8] c"AUX_EXCEPTAUX_FCNAUX_SYMAUX_FILEAUX_CSECTAUX_SECT" }, align 2
@.str.145 = private unnamed_addr constant [25 x i8] c"Function Auxiliary Entry\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"SizeOfFunction\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"PointerToLineNum\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"SymbolIndexOfNextBeyond\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"Exception Auxiliary Entry\00", align 1
@.str.150 = private unnamed_addr constant [23 x i8] c"OffsetToExceptionTable\00", align 1
@.str.151 = private unnamed_addr constant [22 x i8] c"CSECT Auxiliary Entry\00", align 1
@.str.152 = private unnamed_addr constant [27 x i8] c"ContainingCsectSymbolIndex\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"SectionLen\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c"ParameterHashIndex\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"TypeChkSectNum\00", align 1
@.str.156 = private unnamed_addr constant [20 x i8] c"SymbolAlignmentLog2\00", align 1
@_ZL20CsectSymbolTypeClass = internal constant %"struct.llvm::EnumStringsStorage.141" { [4 x %"class.llvm::EnumString.142"] [%"class.llvm::EnumString.142" { [1 x i16] [i16 16], [1 x i8] c"\06", i8 0 }, %"class.llvm::EnumString.142" { [1 x i16] [i16 18], [1 x i8] c"\06", i8 1 }, %"class.llvm::EnumString.142" { [1 x i16] [i16 20], [1 x i8] c"\06", i8 2 }, %"class.llvm::EnumString.142" { [1 x i16] [i16 22], [1 x i8] c"\06", i8 3 }], [24 x i8] c"XTY_ERXTY_SDXTY_LDXTY_CM" }, align 2
@.str.157 = private unnamed_addr constant [20 x i8] c"StorageMappingClass\00", align 1
@.str.158 = private unnamed_addr constant [14 x i8] c"StabInfoIndex\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"StabSectNum\00", align 1
@_ZL24CsectStorageMappingClass = internal constant { [21 x %"class.llvm::EnumString.146"], [133 x i8] } { [21 x %"class.llvm::EnumString.146"] [%"class.llvm::EnumString.146" { [1 x i16] [i16 84], [1 x i8] c"\06", i8 0 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 86], [1 x i8] c"\06", i8 1 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 88], [1 x i8] c"\06", i8 2 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 90], [1 x i8] c"\06", i8 6 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 92], [1 x i8] c"\06", i8 7 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 94], [1 x i8] c"\06", i8 8 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 96], [1 x i8] c"\08", i8 17 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 100], [1 x i8] c"\0A", i8 18 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 106], [1 x i8] c"\06", i8 12 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 108], [1 x i8] c"\06", i8 13 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 110], [1 x i8] c"\06", i8 5 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 112], [1 x i8] c"\07", i8 15 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 115], [1 x i8] c"\06", i8 3 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 117], [1 x i8] c"\06", i8 16 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 119], [1 x i8] c"\06", i8 10 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 121], [1 x i8] c"\06", i8 4 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 123], [1 x i8] c"\06", i8 9 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 125], [1 x i8] c"\06", i8 11 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 127], [1 x i8] c"\06", i8 20 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 129], [1 x i8] c"\06", i8 21 }, %"class.llvm::EnumString.146" { [1 x i16] [i16 131], [1 x i8] c"\06", i8 22 }], [133 x i8] c"XMC_PRXMC_ROXMC_DBXMC_GLXMC_XOXMC_SVXMC_SV64XMC_SV3264XMC_TIXMC_TBXMC_RWXMC_TC0XMC_TCXMC_TDXMC_DSXMC_UAXMC_BSXMC_UCXMC_TLXMC_ULXMC_TE" }, align 2
@.str.161 = private unnamed_addr constant [5 x i8] c"the \00", align 1
@.str.162 = private unnamed_addr constant [18 x i8] c" symbol at index \00", align 1
@.str.163 = private unnamed_addr constant [45 x i8] c" should not have more than 1 auxiliary entry\00", align 1
@.str.164 = private unnamed_addr constant [30 x i8] c"Sect Auxiliary Entry For Stat\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"SectionLength\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"NumberOfRelocEnt\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"NumberOfLineNum\00", align 1
@.str.168 = private unnamed_addr constant [31 x i8] c"Sect Auxiliary Entry For DWARF\00", align 1
@.str.169 = private unnamed_addr constant [23 x i8] c"LengthOfSectionPortion\00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"NumberOfRelocEntries\00", align 1
@.str.171 = private unnamed_addr constant [22 x i8] c"Block Auxiliary Entry\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"LineNumber\00", align 1
@.str.173 = private unnamed_addr constant [26 x i8] c"LineNumber (High 2 Bytes)\00", align 1
@.str.174 = private unnamed_addr constant [25 x i8] c"LineNumber (Low 2 Bytes)\00", align 1
@switch.table._ZN12_GLOBAL__N_111XCOFFDumper19printSectionHeadersEv.32 = private unnamed_addr constant [11 x ptr] [ptr @_ZL29DWARFSectionSubtypeFlagsNames, ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 32), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 40), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 56), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZL29DWARFSectionSubtypeFlagsNames, i64 80)], align 8
@switch.table._ZN12_GLOBAL__N_111XCOFFDumper18printLoaderSectionEbbb.35 = private unnamed_addr constant [5 x ptr] [ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122], align 8
@switch.table._ZN12_GLOBAL__N_111XCOFFDumper18printLoaderSectionEbbb.36 = private unnamed_addr constant [50 x ptr] [ptr @_ZL23RelocationTypeNameclass, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 20), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 32), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 36), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 44), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 48), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 8), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 40), ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 28), ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 52), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 56), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 60), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 68), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 76), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 80), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 84), ptr getelementptr inbounds nuw (i8, ptr @_ZL23RelocationTypeNameclass, i64 88)], align 8
@switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb = private unnamed_addr constant [60 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 80), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @_ZL15CFileCpuIdClass, ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 20), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 28), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 32), ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 36), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 40), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 44), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 52), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 56), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 60), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 68), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZL15CFileCpuIdClass, i64 76)], align 8
@switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.40 = private unnamed_addr constant [4 x ptr] [ptr @_ZL20CsectSymbolTypeClass, ptr getelementptr inbounds nuw (i8, ptr @_ZL20CsectSymbolTypeClass, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZL20CsectSymbolTypeClass, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL20CsectSymbolTypeClass, i64 12)], align 8
@switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.41 = private unnamed_addr constant [23 x ptr] [ptr @_ZL24CsectStorageMappingClass, ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 4), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 48), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 60), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 40), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 20), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 56), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 68), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 32), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 36), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 44), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 52), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 28), ptr poison, ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 72), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 76), ptr getelementptr inbounds nuw (i8, ptr @_ZL24CsectStorageMappingClass, i64 80)], align 8
@switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.42 = private unnamed_addr constant [6 x ptr] [ptr getelementptr inbounds nuw (i8, ptr @_ZL10SymAuxType, i64 20), ptr getelementptr inbounds nuw (i8, ptr @_ZL10SymAuxType, i64 16), ptr getelementptr inbounds nuw (i8, ptr @_ZL10SymAuxType, i64 12), ptr getelementptr inbounds nuw (i8, ptr @_ZL10SymAuxType, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZL10SymAuxType, i64 4), ptr @_ZL10SymAuxType], align 8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm17createXCOFFDumperERKNS_6object15XCOFFObjectFileERNS_13ScopedPrinterE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(44) %2) local_unnamed_addr #0 {
_ZNSt10unique_ptrIN12_GLOBAL__N_111XCOFFDumperESt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #15, !noalias !106 ; 4 uses
  %i.b = tail call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #16, !noalias !106 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  tail call void @_ZN4llvm9ObjDumperC2ERNS_13ScopedPrinterENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(44) %2, ptr %i.c, i64 %i.d) #16, !noalias !106
  store ptr getelementptr inbounds nuw inrange(-16, 520) (i8, ptr @_ZTVN12_GLOBAL__N_111XCOFFDumperE, i64 16), ptr %i.a, align 8, !tbaa !15, !noalias !106
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %i.e, align 8, !tbaa !107, !noalias !106
  store ptr %i.a, ptr %0, align 8, !tbaa !110
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN4llvm9ObjDumperC2ERNS_13ScopedPrinterENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(44), ptr, i64) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm9ObjDumperD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111XCOFFDumperD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN4llvm9ObjDumperD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9ObjDumper14canDumpContentEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZN4llvm9ObjDumper16printFileSummaryENS_9StringRefERNS_6object10ObjectFileENS_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPKNS2_7ArchiveE(ptr noundef nonnull align 8 dereferenceable(72), ptr, i64, ptr noundef nonnull align 8 dereferenceable(48), ptr, i64, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111XCOFFDumper16printFileHeadersEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [80 x i8], align 16               ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(44) %i.d, ptr nonnull @.str, i64 10) #16, !inline_history !0
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 9 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.k = tail call noundef zeroext i16 @_ZNK4llvm6object15XCOFFObjectFile8getMagicEv(ptr noundef nonnull align 8 dereferenceable(96) %i.j) #16
  %i.l = zext i16 %i.k to i64
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(44) %i.h, ptr nonnull @.str.1, i64 5, i64 %i.l) #16, !inline_history !111
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.r = tail call noundef zeroext i16 @_ZNK4llvm6object15XCOFFObjectFile19getNumberOfSectionsEv(ptr noundef nonnull align 8 dereferenceable(96) %i.q) #16
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(44) %i.p, ptr nonnull @.str.2, i64 16, i16 noundef zeroext %i.r) #16
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.w = tail call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile12getTimeStampEv(ptr noundef nonnull align 8 dereferenceable(96) %i.v) #16 ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.y = zext nneg i32 %i.w to i64                ; 3 uses
  store i64 %i.y, ptr %i.a, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.b, i8 0, i64 80, i1 false)
  %i.z = call ptr @gmtime(ptr noundef nonnull %i.a) #16
  %i.aa = call i64 @strftime(ptr noundef nonnull %i.b, i64 noundef 80, ptr noundef nonnull @.str.3, ptr noundef %i.z) #16
  %.not = icmp eq i64 %i.aa, 0
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #16
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 344
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(44) %i.ab, ptr nonnull @.str.4, i64 9, ptr nonnull %i.b, i64 %i.ac, i64 %i.y) #16, !inline_history !112
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 336
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(44) %i.ab, ptr nonnull @.str.5, i64 9, i64 %i.y) #16, !inline_history !113
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.ak = icmp eq i32 %i.w, 0                     ; 2 uses
  %i.al = select i1 %i.ak, ptr @.str.6, ptr @.str.7
  %i.am = select i1 %i.ak, i64 4, i64 14
  %i.an = zext i32 %i.w to i64
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 344
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(44) %i.aj, ptr nonnull @.str.4, i64 9, ptr nonnull %i.al, i64 %i.am, i64 %i.an) #16, !inline_history !112
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 64
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(96) %i.ar) #16
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.ax = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = call noundef i64 @_ZNK4llvm6object15XCOFFObjectFile22getSymbolTableOffset64Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.ax) #16
  %i.az = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 336
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(44) %i.aw, ptr nonnull @.str.8, i64 17, i64 %i.ay) #16, !inline_history !114
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.bd = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.be = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile31getNumberOfSymbolTableEntries64Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.bd) #16
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(44) %i.bc, ptr nonnull @.str.9, i64 18, i32 noundef %i.be) #16
  br label %_ZN4llvm9DictScopeD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.bi = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile22getSymbolTableOffset32Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.ax) #16
  %i.bj = zext i32 %i.bi to i64
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 336
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(44) %i.aw, ptr nonnull @.str.8, i64 17, i64 %i.bj) #16, !inline_history !115
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.bo = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile34getRawNumberOfSymbolTableEntries32Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.bn) #16 ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  %i.bq = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(44) %i.bq, ptr nonnull @.str.9, i64 18, i32 noundef %i.bo) #16
  br label %_ZN4llvm9DictScopeD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bu = zext i32 %i.bo to i64
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 344
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(44) %i.bq, ptr nonnull @.str.9, i64 18, ptr nonnull @.str.7, i64 14, i64 %i.bu) #16, !inline_history !112
  br label %_ZN4llvm9DictScopeD2Ev.exit

_ZN4llvm9DictScopeD2Ev.exit:                      ; preds = %bb.j, %bb.k, %bb.h
  %i.by = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.bz = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.ca = call noundef zeroext i16 @_ZNK4llvm6object15XCOFFObjectFile21getOptionalHeaderSizeEv(ptr noundef nonnull align 8 dereferenceable(96) %i.bz) #16
  %i.cb = zext i16 %i.ca to i64
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 336
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(44) %i.by, ptr nonnull @.str.10, i64 18, i64 %i.cb) #16, !inline_history !111
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.cg = load ptr, ptr %i.i, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.ch = call noundef zeroext i16 @_ZNK4llvm6object15XCOFFObjectFile8getFlagsEv(ptr noundef nonnull align 8 dereferenceable(96) %i.cg) #16
  %i.ci = zext i16 %i.ch to i64
  %i.cj = load ptr, ptr %i.cf, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 336
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(44) %i.cf, ptr nonnull @.str.11, i64 5, i64 %i.ci) #16, !inline_history !111
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 256
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(44) %i.d) #16, !inline_history !1
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN4llvm9ObjDumper18printMachODysymtabEv:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper17printMachOSegmentEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper25printMachOIndirectSymbolsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper23printMachOLinkerOptionsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZNK12_GLOBAL__N_111XCOFFDumper13printStackMapEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::FormattedBytes", align 8 ; 11 uses
  %3 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %4 = alloca %"class.llvm::Expected.51", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %7 = alloca %"class.llvm::object::XCOFFSymbolRef", align 8 ; 18 uses
  %8 = alloca %"class.llvm::Expected.51", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %10 = alloca %"class.llvm::Expected.51", align 8 ; 8 uses
  %11 = alloca %class.anon.114, align 8           ; 9 uses
  %12 = alloca %"class.llvm::Expected.115", align 8 ; 9 uses
  %13 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %14 = alloca %"class.llvm::iterator_range", align 8 ; 6 uses
  %15 = alloca %"class.llvm::object::xcoff_symbol_iterator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 64 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(44) %i.b, ptr nonnull @.str.127, i64 7) #16, !inline_history !3
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 33 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  call void @_ZNK4llvm6object15XCOFFObjectFile7symbolsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %14, ptr noundef nonnull align 8 dereferenceable(96) %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  %.sroa.0.0.copyload.i = load i64, ptr %14, align 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %15, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr %.sroa.2.0.copyload.i, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 16
  %.sroa.0.0.copyload.i4 = load i64, ptr %i.i, align 8 ; 2 uses
  %.not.i.i.i.i.not22 = icmp eq i64 %.sroa.0.0.copyload.i, %.sroa.0.0.copyload.i4
  br i1 %.not.i.i.i.i.not22, label %_ZN4llvm9ListScopeD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.24.0..sroa_idx.i97.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.24.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 42
  br label %bb.b

_ZN4llvm9ListScopeD2Ev.exit:                      ; preds = %_ZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefE.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.y = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 280
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(44) %i.b) #16, !inline_history !5
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefE.exit
  %lhsv.i.i.i.i23 = phi i64 [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %lhsv.i.i.i.i, %_ZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.ac = call { i64, ptr } @_ZNK4llvm6object15XCOFFObjectFile11toSymbolRefENS0_11DataRefImplE(ptr noundef nonnull align 8 dereferenceable(96) %i.ab, i64 %lhsv.i.i.i.i23) #16 ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0      ; 2 uses
  store i64 %i.ad, ptr %7, align 8
  %i.ae = extractvalue { i64, ptr } %i.ac, 1      ; 3 uses
  store ptr %i.ae, ptr %i.j, align 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(96) %i.ae) #16, !inline_history !450 ; 0 uses
  %.pn.i.i = inttoptr i64 %i.ad to ptr
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 17
  %i.aj = load i8, ptr %.in.i.i, align 1, !tbaa !40 ; 4 uses
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 248
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(44) %i.ak, ptr nonnull @.str.42, i64 6) #16, !inline_history !451
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.ap = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ao) #16 ; 2 uses
  call void @_ZNK4llvm6object14XCOFFSymbolRef7getNameEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.51") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.aq = load i8, ptr %i.k, align 8
  %i.ar = trunc i8 %i.aq to i1
  br i1 %i.ar, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %bb.b
  %i.as = extractvalue { ptr, i64 } %i.ap, 1
  %i.at = extractvalue { ptr, i64 } %i.ap, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.au = load i64, ptr %8, align 8, !tbaa !47, !noalias !531
  %i.av = inttoptr i64 %i.au to ptr
  store ptr null, ptr %8, align 8, !tbaa !47, !noalias !531
  store ptr %i.av, ptr %6, align 8, !tbaa !44, !alias.scope !531
  call void @_ZN4llvm11reportErrorENS_5ErrorENS_9StringRefE(ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr %i.at, i64 %i.as) #18
  unreachable

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i:     ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load ptr, ptr %8, align 8, !tbaa !59 ; 2 uses
  %.sroa.24.0.copyload.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !tbaa !33 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.aw = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %.sroa.0.0.copyload.i.i88.i = load i64, ptr %7, align 8, !tbaa !40
  %i.ax = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.aw, i64 noundef %.sroa.0.0.copyload.i.i88.i) #16 ; 2 uses
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !534 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(96) %i.ay) #16, !inline_history !454 ; 0 uses
  %.sroa.0.0.copyload.i.i89.i = load i64, ptr %7, align 8, !tbaa !40
  %.pn.i90.i = inttoptr i64 %.sroa.0.0.copyload.i.i89.i to ptr
  %.in.i91.i = getelementptr inbounds nuw i8, ptr %.pn.i90.i, i64 16
  %i.bd = load i8, ptr %.in.i91.i, align 1, !tbaa !535 ; 7 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(44) %i.be, ptr nonnull @.str.14, i64 5, i32 noundef %i.ax) #16, !inline_history !455
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.bj = load i8, ptr @_ZN4opts8DemangleE, align 1, !tbaa !35, !range !36, !noundef !28
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 232
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(44) %i.bi, ptr nonnull @.str.22, i64 4, ptr %.sroa.03.0.copyload.i.i, i64 %.sroa.24.0.copyload.i.i) #16, !inline_history !455
  br label %.critedge.i

bb.d:                                             ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @_ZN4llvm8demangleB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 %.sroa.24.0.copyload.i.i, ptr %.sroa.03.0.copyload.i.i) #16
  %i.bo = load ptr, ptr %9, align 8, !tbaa !62
  %i.bp = load i64, ptr %i.l, align 8, !tbaa !63
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 232
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(44) %i.bi, ptr nonnull @.str.22, i64 4, ptr %i.bo, i64 %i.bp) #16, !inline_history !455
  %i.bt = load ptr, ptr %9, align 8, !tbaa !62    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.m
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.bv = load i64, ptr %i.m, align 8, !tbaa !40
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.c
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  switch i8 %i.bd, label %bb.e [
    i8 2, label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i
    i8 111, label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i
    i8 107, label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i
    i8 3, label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i
    i8 101, label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i
    i8 100, label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i
    i8 103, label %16
    i8 -113, label %16
    i8 112, label %17
    i8 -114, label %18
    i8 -123, label %18
    i8 108, label %19
    i8 109, label %19
    i8 110, label %20
    i8 -127, label %21
    i8 -126, label %21
    i8 -124, label %22
    i8 -125, label %22
    i8 -120, label %23
  ]

16:                                               ; preds = %.critedge.i, %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

17:                                               ; preds = %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

18:                                               ; preds = %.critedge.i, %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

19:                                               ; preds = %.critedge.i, %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

20:                                               ; preds = %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

21:                                               ; preds = %.critedge.i, %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

22:                                               ; preds = %.critedge.i, %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

23:                                               ; preds = %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

bb.e:                                             ; preds = %.critedge.i
  br label %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i

_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i: ; preds = %bb.e, %23, %22, %21, %20, %19, %18, %17, %16, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i, %.critedge.i
  %.sroa.11.0.i.i = phi i64 [ 5, %bb.e ], [ 25, %23 ], [ 24, %16 ], [ 21, %17 ], [ 21, %18 ], [ 20, %19 ], [ 30, %20 ], [ 29, %21 ], [ 22, %22 ], [ 26, %.critedge.i ], [ 26, %.critedge.i ], [ 26, %.critedge.i ], [ 26, %.critedge.i ], [ 26, %.critedge.i ], [ 26, %.critedge.i ]
  %.sroa.0.0.i.i = phi ptr [ @.str.140, %bb.e ], [ @.str.139, %23 ], [ @.str.132, %16 ], [ @.str.133, %17 ], [ @.str.134, %18 ], [ @.str.135, %19 ], [ @.str.136, %20 ], [ @.str.137, %21 ], [ @.str.138, %22 ], [ @.str.131, %.critedge.i ], [ @.str.131, %.critedge.i ], [ @.str.131, %.critedge.i ], [ @.str.131, %.critedge.i ], [ @.str.131, %.critedge.i ], [ @.str.131, %.critedge.i ]
  %i.by = load ptr, ptr %i.j, align 8, !tbaa !534 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !15
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(96) %i.by) #16, !inline_history !456
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %7, align 8, !tbaa !40
  %i.cd = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i to ptr ; 2 uses
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cd, align 1
  %i.ce = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i)
  br label %_ZNK4llvm6object14XCOFFSymbolRef8getValueEv.exit.i

bb.g:                                             ; preds = %_ZL18GetSymbolValueNameN4llvm5XCOFF12StorageClassE.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %.0.copyload.i.i.i.i2.i.i = load i32, ptr %i.cf, align 1
  %i.cg = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i2.i.i)
  %i.ch = zext i32 %i.cg to i64
  br label %_ZNK4llvm6object14XCOFFSymbolRef8getValueEv.exit.i

_ZNK4llvm6object14XCOFFSymbolRef8getValueEv.exit.i: ; preds = %bb.g, %bb.f
  %i.ci = phi i64 [ %i.ce, %bb.f ], [ %i.ch, %bb.g ]
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 336
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(44) %i.bx, ptr nonnull %.sroa.0.0.i.i, i64 %.sroa.11.0.i.i, i64 %i.ci) #16, !inline_history !457
  %i.cm = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.cn = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.cm) #16 ; 2 uses
  %i.co = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %.sroa.036.0.copyload.i = load i64, ptr %7, align 8
  %.sroa.237.0.copyload.i = load ptr, ptr %i.j, align 8
  call void @_ZNK4llvm6object15XCOFFObjectFile20getSymbolSectionNameENS0_14XCOFFSymbolRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.51") align 8 %10, ptr noundef nonnull align 8 dereferenceable(96) %i.co, i64 %.sroa.036.0.copyload.i, ptr %.sroa.237.0.copyload.i) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.cp = load i8, ptr %i.n, align 8
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i101.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit105.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i101.i: ; preds = %_ZNK4llvm6object14XCOFFSymbolRef8getValueEv.exit.i
  %i.cr = extractvalue { ptr, i64 } %i.cn, 1
  %i.cs = extractvalue { ptr, i64 } %i.cn, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.ct = load i64, ptr %10, align 8, !tbaa !47, !noalias !536
  %i.cu = inttoptr i64 %i.ct to ptr
  store ptr null, ptr %10, align 8, !tbaa !47, !noalias !536
  store ptr %i.cu, ptr %5, align 8, !tbaa !44, !alias.scope !536
  call void @_ZN4llvm11reportErrorENS_5ErrorENS_9StringRefE(ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr %i.cs, i64 %i.cr) #18
  unreachable

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit105.i:  ; preds = %_ZNK4llvm6object14XCOFFSymbolRef8getValueEv.exit.i
  %.sroa.03.0.copyload.i96.i = load ptr, ptr %10, align 8, !tbaa !59
  %.sroa.24.0.copyload.i98.i = load i64, ptr %.sroa.24.0..sroa_idx.i97.i, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 232
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(44) %i.cv, ptr nonnull @.str.13, i64 7, ptr %.sroa.03.0.copyload.i96.i, i64 %.sroa.24.0.copyload.i98.i) #16, !inline_history !455
  %i.cz = icmp eq i8 %i.bd, 103
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 6 uses
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !534 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !15
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(96) %i.db) #16, !inline_history !455 ; 0 uses
  %.sroa.0.0.copyload.i.i108.i = load i64, ptr %7, align 8, !tbaa !40
  %.pn.i109.i = inttoptr i64 %.sroa.0.0.copyload.i.i108.i to ptr
  %.in.i110.i = getelementptr inbounds nuw i8, ptr %.pn.i109.i, i64 14 ; 2 uses
  br i1 %i.cz, label %.lr.ph.i.i.i, label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit105.i
  %i.dg = load i8, ptr %.in.i110.i, align 1, !tbaa !40 ; 3 uses
  switch i8 %i.dg, label %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i [
    i8 0, label %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i
    i8 1, label %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i
    i8 9, label %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split84.i
  ]

_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i: ; preds = %.lr.ph.i.i.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split84.i: ; preds = %.lr.ph.i.i.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split84.i, %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i, %.lr.ph.i.i.i
  %.01219.i.i.ptr.lcssa.i = phi ptr [ @_ZL16CFileLangIdClass, %.lr.ph.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL16CFileLangIdClass, i64 4), %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL16CFileLangIdClass, i64 8), %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split84.i ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.01219.i.i.ptr.lcssa.i, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !40  ; 2 uses
  %i.dj = icmp eq i8 %i.di, 0
  br i1 %i.dj, label %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i
  %i.dk = zext i8 %i.di to i64
  %i.dl = load i16, ptr %.01219.i.i.ptr.lcssa.i, align 2, !tbaa !46
  %i.dm = zext i16 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %.01219.i.i.ptr.lcssa.i, i64 %i.dm
  %i.do = zext nneg i8 %i.dg to i64
  %i.dp = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 344
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(44) %i.da, ptr nonnull @.str.128, i64 18, ptr nonnull %i.dn, i64 %i.dk, i64 %i.do) #16, !inline_history !460
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF11CFileLangIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i

_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i, %.lr.ph.i.i.i
  %i.ds = zext i8 %i.dg to i64
  %i.dt = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 336
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(44) %i.da, ptr nonnull @.str.128, i64 18, i64 %i.ds) #16, !inline_history !461
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF11CFileLangIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i

_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF11CFileLangIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF11CFileLangIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i, %bb.h
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.dx = load ptr, ptr %i.j, align 8, !tbaa !534 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = call noundef zeroext i1 %i.ea(ptr noundef nonnull align 8 dereferenceable(96) %i.dx) #16, !inline_history !462 ; 0 uses
  %.sroa.0.0.copyload.i.i113.i = load i64, ptr %7, align 8, !tbaa !40
  %.pn.i114.i = inttoptr i64 %.sroa.0.0.copyload.i.i113.i to ptr
  %.in.i115.i = getelementptr inbounds nuw i8, ptr %.pn.i114.i, i64 15
  %i.ec = load i8, ptr %.in.i115.i, align 1, !tbaa !40 ; 3 uses
  %switch.tableidx.a = add i8 %i.ec, 32           ; 3 uses
  %i.ed = icmp ult i8 %switch.tableidx.a, 60
  br i1 %i.ed, label %switch.hole_check, label %_ZNK4llvm11EnumStringsINS_5XCOFF10CFileCpuIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i

switch.hole_check:                                ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF11CFileLangIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  %switch.maskindex = zext nneg i8 %switch.tableidx.a to i64
  %switch.shifted = lshr i64 1143635025103683585, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZNK4llvm11EnumStringsINS_5XCOFF10CFileCpuIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.ee = zext nneg i8 %switch.tableidx.a to i64
  %switch.gep.a = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb, i64 %i.ee
  %switch.load.a = load ptr, ptr %switch.gep.a, align 8 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %switch.load.a, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !40  ; 2 uses
  %i.eh = icmp eq i8 %i.eg, 0
  br i1 %i.eh, label %_ZNK4llvm11EnumStringsINS_5XCOFF10CFileCpuIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i, label %bb.i

bb.i:                                             ; preds = %switch.lookup
  %i.ei = zext i8 %i.eg to i64
  %i.ej = load i16, ptr %switch.load.a, align 2, !tbaa !46
  %i.ek = zext i16 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %switch.load.a, i64 %i.ek
  %i.em = zext i8 %i.ec to i64
  %i.en = load ptr, ptr %i.dw, align 8, !tbaa !15
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 344
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(44) %i.dw, ptr nonnull @.str.129, i64 14, ptr nonnull %i.el, i64 %i.ei, i64 %i.em) #16, !inline_history !463
  br label %.critedge.i.i128.21.thread.i

_ZNK4llvm11EnumStringsINS_5XCOFF10CFileCpuIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i: ; preds = %switch.hole_check, %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF11CFileLangIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i, %switch.lookup
  %i.eq = zext i8 %i.ec to i64
  %i.er = load ptr, ptr %i.dw, align 8, !tbaa !15
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 336
  %i.et = load ptr, ptr %i.es, align 8
  call void %i.et(ptr noundef nonnull align 8 dereferenceable(44) %i.dw, ptr nonnull @.str.129, i64 14, i64 %i.eq) #16, !inline_history !464
  br label %.critedge.i.i128.21.thread.i

.critedge.i.i128.21.thread.i:                     ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF10CFileCpuIdELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i, %bb.i
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i: ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit105.i
  %.0.copyload.i.i.i.i.i = load i16, ptr %.in.i110.i, align 1
  %i.ev = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i.i)
  %i.ew = zext i16 %i.ev to i64
  %i.ex = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 336
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(44) %i.da, ptr nonnull @.str.16, i64 4, i64 %i.ew) #16, !inline_history !465
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 50 uses
  switch i8 %i.bd, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i [
    i8 0, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i
    i8 1, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i
    i8 2, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split104.i
    i8 3, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split105.i
    i8 4, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split106.i
    i8 5, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split107.i
    i8 6, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split108.i
    i8 7, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split109.i
    i8 8, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split110.i
    i8 9, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split111.i
    i8 10, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split112.i
    i8 11, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split113.i
    i8 12, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split114.i
    i8 13, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split115.i
    i8 14, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split116.i
    i8 15, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split117.i
    i8 16, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split118.i
    i8 17, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split119.i
    i8 18, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split120.i
    i8 100, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split121.i
    i8 101, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split122.i
    i8 102, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split123.i
    i8 104, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split124.i
    i8 105, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split125.i
    i8 106, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split126.i
    i8 107, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split127.i
    i8 108, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split128.i
    i8 109, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split129.i
    i8 110, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split130.i
    i8 111, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split131.i
    i8 112, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split132.i
    i8 -128, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split133.i
    i8 -127, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split134.i
    i8 -126, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split135.i
    i8 -125, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split136.i
    i8 -124, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split137.i
    i8 -123, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split138.i
    i8 -122, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split139.i
    i8 -121, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split140.i
    i8 -120, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split141.i
    i8 -119, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split142.i
    i8 -116, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split143.i
    i8 -115, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split144.i
    i8 -114, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split145.i
    i8 -113, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split146.i
    i8 -112, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split147.i
    i8 -111, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split148.i
    i8 -110, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split149.i
    i8 -1, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split150.i
  ]

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split104.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split105.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split106.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split107.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split108.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split109.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split110.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split111.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split112.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split113.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split114.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split115.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split116.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split117.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split118.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split119.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split120.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split121.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split122.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split123.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split124.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split125.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split126.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split127.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split128.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split129.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split130.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split131.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split132.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split133.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split134.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split135.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split136.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split137.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split138.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split139.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb:bb.a
_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split148.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split149.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split150.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split150.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split149.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split148.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split147.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split146.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split145.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split144.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split143.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split142.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split141.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split140.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split139.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split138.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split137.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split136.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split135.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split134.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split133.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split132.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split131.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split130.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split129.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split128.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split127.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split126.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split125.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split124.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split123.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split122.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split121.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split120.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split119.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split118.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split117.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split116.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split115.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split114.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split113.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split112.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split111.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split110.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split109.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split108.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split107.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split106.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split105.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split104.i, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i, %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i, %.critedge.i.i128.21.thread.i
  %i.fb = phi ptr [ %i.fa, %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split149.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split104.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split105.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split106.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split107.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split108.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split109.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split110.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split111.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split112.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split113.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split114.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split115.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split116.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split117.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split118.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split119.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split120.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split121.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split122.i ], [ %i.eu, %.critedge.i.i128.21.thread.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split123.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split124.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split125.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split126.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split127.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split128.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split129.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split130.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split131.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split132.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split133.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split134.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split135.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split136.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split137.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split138.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split139.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split140.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split141.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split142.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split143.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split144.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split145.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split146.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split147.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split148.i ], [ %i.fa, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split150.i ] ; 3 uses
  %.01219.i.i126.ptr.lcssa.i = phi ptr [ @_ZL15SymStorageClass, %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 192), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split149.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 4), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 8), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split104.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 12), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split105.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 16), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split106.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 20), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split107.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 24), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split108.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 28), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split109.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 32), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split110.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 36), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split111.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 40), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split112.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 44), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split113.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 48), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split114.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 52), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split115.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 56), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split116.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 60), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split117.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 64), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split118.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 68), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split119.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 72), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split120.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 76), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split121.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 80), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split122.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 88), %.critedge.i.i128.21.thread.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 84), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split123.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 92), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split124.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 96), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split125.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 100), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split126.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 104), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split127.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 108), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split128.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 112), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split129.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 116), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split130.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 120), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split131.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 124), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split132.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 128), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split133.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 132), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split134.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 136), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split135.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 140), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split136.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 144), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split137.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 148), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split138.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 152), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split139.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 156), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split140.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 160), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split141.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 164), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split142.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 168), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split143.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 172), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split144.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 176), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split145.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 180), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split146.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 184), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split147.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 188), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split148.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL15SymStorageClass, i64 196), %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split150.i ] ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.01219.i.i126.ptr.lcssa.i, i64 2
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !40  ; 2 uses
  %i.fe = icmp eq i8 %i.fd, 0
  br i1 %i.fe, label %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i
  %i.ff = zext i8 %i.fd to i64
  %i.fg = load i16, ptr %.01219.i.i126.ptr.lcssa.i, align 2, !tbaa !46
  %i.fh = zext i16 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %.01219.i.i126.ptr.lcssa.i, i64 %i.fh
  %i.fj = zext i8 %i.bd to i64
  %i.fk = load ptr, ptr %i.fb, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 344
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(44) %i.fb, ptr nonnull @.str.110, i64 12, ptr nonnull %i.fi, i64 %i.ff, i64 %i.fj) #16, !inline_history !466
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF12StorageClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i

_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i, %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  %i.fn = phi ptr [ %i.fb, %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i ], [ %i.fa, %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10CFileCpuIdELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i ] ; 2 uses
  %i.fo = zext i8 %i.bd to i64
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !15
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 336
  %i.fr = load ptr, ptr %i.fq, align 8
  call void %i.fr(ptr noundef nonnull align 8 dereferenceable(44) %i.fn, ptr nonnull @.str.110, i64 12, i64 %i.fo) #16, !inline_history !467
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF12StorageClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i

_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF12StorageClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF12StorageClassELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i, %bb.j
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !15
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(44) %i.fs, ptr nonnull @.str.130, i64 18, i8 noundef zeroext %i.aj) #16, !inline_history !455
  %i.fw = zext i8 %i.aj to i32                    ; 3 uses
  %i.fx = icmp eq i8 %i.aj, 0
  br i1 %i.fx, label %_ZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF12StorageClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store i8 %i.aj, ptr %11, align 8, !tbaa !81
  store ptr %0, ptr %i.o, align 8, !tbaa !82
  store i8 %i.bd, ptr %i.p, align 8, !tbaa !83
  store i32 %i.ax, ptr %i.q, align 4, !tbaa !84
  switch i8 %i.bd, label %.preheader.i [
    i8 103, label %.preheader28.i
    i8 2, label %.preheader
    i8 111, label %.preheader
    i8 107, label %.preheader
    i8 3, label %bb.ak
    i8 112, label %bb.al
    i8 100, label %bb.aq
    i8 101, label %bb.aq
  ]

.preheader:                                       ; preds = %bb.k, %bb.k, %bb.k
  br label %bb.r

.preheader28.i:                                   ; preds = %bb.k, %bb.q
  %.07034.i = phi i32 [ %i.jb, %bb.q ], [ 1, %bb.k ] ; 3 uses
  %.sroa.0.0.copyload.i.i131.i = load i64, ptr %7, align 8, !tbaa !40
  %i.fy = call noundef i64 @_ZN4llvm6object15XCOFFObjectFile29getAdvancedSymbolEntryAddressEmj(i64 noundef %.sroa.0.0.copyload.i.i131.i, i32 noundef %.07034.i) #16 ; 5 uses
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !15
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call noundef zeroext i1 %i.gc(ptr noundef nonnull align 8 dereferenceable(96) %i.fz) #16, !inline_history !455
  br i1 %i.gd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.preheader28.i
  %i.ge = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.gf = call noundef ptr @_ZNK4llvm6object15XCOFFObjectFile16getSymbolAuxTypeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.ge, i64 noundef %i.fy) #16
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !538
  %.not76.i = icmp eq i8 %i.gg, -4
  br i1 %.not76.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29
  call fastcc void @_ZL24printUnexpectedRawAuxEntRN4llvm13ScopedPrinterEm(ptr noundef nonnull align 8 dereferenceable(44) %i.gh, i64 noundef %i.fy)
  br label %bb.q

bb.n:                                             ; preds = %bb.l, %.preheader28.i
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.gi = inttoptr i64 %i.fy to ptr               ; 3 uses
  call void @_ZNK4llvm6object15XCOFFObjectFile23checkSymbolEntryPointerEm(ptr noundef nonnull align 8 dereferenceable(96) %.val.i, i64 noundef %i.fy) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.gj = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.gk = call { ptr, i64 } @_ZNK4llvm6object6Binary11getFileNameEv(ptr noundef nonnull align 8 dereferenceable(48) %i.gj) #16 ; 2 uses
  %i.gl = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  call void @_ZNK4llvm6object15XCOFFObjectFile12getCFileNameEPKNS0_15XCOFFFileAuxEntE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.51") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %i.gl, ptr noundef %i.gi) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.gm = load i8, ptr %i.s, align 8
  %i.gn = trunc i8 %i.gm to i1
  br i1 %i.gn, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, label %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.n
  %i.go = extractvalue { ptr, i64 } %i.gk, 1
  %i.gp = extractvalue { ptr, i64 } %i.gk, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.gq = load i64, ptr %4, align 8, !tbaa !47, !noalias !539
  %i.gr = inttoptr i64 %i.gq to ptr
  store ptr null, ptr %4, align 8, !tbaa !47, !noalias !539
  store ptr %i.gr, ptr %3, align 8, !tbaa !44, !alias.scope !539
  call void @_ZN4llvm11reportErrorENS_5ErrorENS_9StringRefE(ptr nofree noundef nonnull align 8 dereferenceable(8) %3, ptr %i.gp, i64 %i.go) #18
  unreachable

_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i.i:   ; preds = %bb.n
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %4, align 8, !tbaa !59
  %.sroa.24.0.copyload.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !15
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 248
  %i.gv = load ptr, ptr %i.gu, align 8
  call void %i.gv(ptr noundef nonnull align 8 dereferenceable(44) %i.gs, ptr nonnull @.str.142, i64 20) #16, !inline_history !470
  %i.gw = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.gx = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.gy = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.gx, i64 noundef %i.fy) #16
  %i.gz = load ptr, ptr %i.gw, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 64
  %i.hb = load ptr, ptr %i.ha, align 8
  call void %i.hb(ptr noundef nonnull align 8 dereferenceable(44) %i.gw, ptr nonnull @.str.14, i64 5, i32 noundef %i.gy) #16, !inline_history !471
  %i.hc = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !15
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 232
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(44) %i.hc, ptr nonnull @.str.22, i64 4, ptr %.sroa.03.0.copyload.i.i.i, i64 %.sroa.24.0.copyload.i.i.i) #16, !inline_history !471
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gi, i64 14
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !542 ; 3 uses
  switch i8 %i.hi, label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i [
    i8 0, label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i.i
    i8 1, label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i.i
    i8 2, label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split33.i.i
    i8 -128, label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split34.i.i
  ]

_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i.i: ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split33.i.i: ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split34.i.i: ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i.i
  br label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split34.i.i, %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split33.i.i, %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i.i, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i.i
  %.01219.i.i.ptr.lcssa.i.i = phi ptr [ @_ZL14FileStringType, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14FileStringType, i64 8), %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split33.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14FileStringType, i64 4), %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZL14FileStringType, i64 12), %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.fold.split34.i.i ] ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.01219.i.i.ptr.lcssa.i.i, i64 2
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !40  ; 2 uses
  %i.hl = icmp eq i8 %i.hk, 0
  br i1 %i.hl, label %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i.i
  %i.hm = zext i8 %i.hk to i64
  %i.hn = load i16, ptr %.01219.i.i.ptr.lcssa.i.i, align 2, !tbaa !46
  %i.ho = zext i16 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %.01219.i.i.ptr.lcssa.i.i, i64 %i.ho
  %i.hq = zext i8 %i.hi to i64
  %i.hr = load ptr, ptr %i.hg, align 8, !tbaa !15
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 344
  %i.ht = load ptr, ptr %i.hs, align 8
  call void %i.ht(ptr noundef nonnull align 8 dereferenceable(44) %i.hg, ptr nonnull @.str.16, i64 4, ptr nonnull %i.hp, i64 %i.hm, i64 %i.hq) #16, !inline_history !472
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF15CFileStringTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.i.i.i, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit.i.i
  %i.hu = zext i8 %i.hi to i64
  %i.hv = load ptr, ptr %i.hg, align 8, !tbaa !15
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 336
  %i.hx = load ptr, ptr %i.hw, align 8
  call void %i.hx(ptr noundef nonnull align 8 dereferenceable(44) %i.hg, ptr nonnull @.str.16, i64 4, i64 %i.hu) #16, !inline_history !473
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF15CFileStringTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i

_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF15CFileStringTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF15CFileStringTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i, %bb.o
  %i.hy = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !15
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = call noundef zeroext i1 %i.ib(ptr noundef nonnull align 8 dereferenceable(96) %i.hy) #16, !inline_history !471
  br i1 %i.ic, label %.lr.ph.i.i9.i.i, label %_ZN12_GLOBAL__N_111XCOFFDumper15printFileAuxEntEPKN4llvm6object15XCOFFFileAuxEntE.exit.i

.lr.ph.i.i9.i.i:                                  ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF15CFileStringTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gi, i64 17
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !543 ; 4 uses
  %i.ig = icmp ugt i8 %i.if, -7
  br i1 %i.ig, label %switch.lookup65, label %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i

switch.lookup65:                                  ; preds = %.lr.ph.i.i9.i.i
  %i.ih = sext i8 %i.if to i64
  %i.ii = getelementptr [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.42, i64 %i.ih
  %switch.gep66 = getelementptr i8, ptr %i.ii, i64 48
  %switch.load67 = load ptr, ptr %switch.gep66, align 8 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %switch.load67, i64 2
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !40  ; 2 uses
  %i.il = icmp eq i8 %i.ik, 0
  br i1 %i.il, label %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i, label %bb.p

bb.p:                                             ; preds = %switch.lookup65
  %i.im = zext i8 %i.ik to i64
  %i.in = load i16, ptr %switch.load67, align 2, !tbaa !46
  %i.io = zext i16 %i.in to i64
  %i.ip = getelementptr inbounds nuw i8, ptr %switch.load67, i64 %i.io
  %i.iq = zext i8 %i.if to i64
  %i.ir = load ptr, ptr %i.id, align 8, !tbaa !15
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 344
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(44) %i.id, ptr nonnull @.str.143, i64 14, ptr nonnull %i.ip, i64 %i.im, i64 %i.iq) #16, !inline_history !474
  br label %_ZN12_GLOBAL__N_111XCOFFDumper15printFileAuxEntEPKN4llvm6object15XCOFFFileAuxEntE.exit.i

_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i: ; preds = %.lr.ph.i.i9.i.i, %switch.lookup65
  %i.iu = zext i8 %i.if to i64
  %i.iv = load ptr, ptr %i.id, align 8, !tbaa !15
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 336
  %i.ix = load ptr, ptr %i.iw, align 8
  call void %i.ix(ptr noundef nonnull align 8 dereferenceable(44) %i.id, ptr nonnull @.str.143, i64 14, i64 %i.iu) #16, !inline_history !475
  br label %_ZN12_GLOBAL__N_111XCOFFDumper15printFileAuxEntEPKN4llvm6object15XCOFFFileAuxEntE.exit.i

_ZN12_GLOBAL__N_111XCOFFDumper15printFileAuxEntEPKN4llvm6object15XCOFFFileAuxEntE.exit.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i, %bb.p, %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF15CFileStringTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i
  %i.iy = load ptr, ptr %i.gs, align 8, !tbaa !15
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 256
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(44) %i.gs) #16, !inline_history !476
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.q

bb.q:                                             ; preds = %_ZN12_GLOBAL__N_111XCOFFDumper15printFileAuxEntEPKN4llvm6object15XCOFFFileAuxEntE.exit.i, %bb.m
  %i.jb = add nuw nsw i32 %.07034.i, 1
  %exitcond40.not.i = icmp eq i32 %.07034.i, %i.fw
  br i1 %exitcond40.not.i, label %.loopexit.i, label %.preheader28.i, !llvm.loop !477

bb.r:                                             ; preds = %.preheader, %.critedge79.i
  %.07133.i = phi i32 [ %i.pi, %.critedge79.i ], [ 1, %.preheader ] ; 3 uses
  %i.jc = icmp eq i32 %.07133.i, %i.fw            ; 2 uses
  br i1 %i.jc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.jd = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !15
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jg = load ptr, ptr %i.jf, align 8
  %i.jh = call noundef zeroext i1 %i.jg(ptr noundef nonnull align 8 dereferenceable(96) %i.jd) #16, !inline_history !455
  br i1 %i.jh, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.0.copyload.i.i132.i = load i64, ptr %7, align 8, !tbaa !40
  %i.ji = call noundef i64 @_ZN4llvm6object15XCOFFObjectFile29getAdvancedSymbolEntryAddressEmj(i64 noundef %.sroa.0.0.copyload.i.i132.i, i32 noundef %.07133.i) #16 ; 11 uses
  %i.jj = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !15
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 64
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = call noundef zeroext i1 %i.jm(ptr noundef nonnull align 8 dereferenceable(96) %i.jj) #16, !inline_history !455
  %i.jo = load ptr, ptr %i.f, align 8, !tbaa !31  ; 2 uses
  br i1 %i.jn, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.jp = call noundef ptr @_ZNK4llvm6object15XCOFFObjectFile16getSymbolAuxTypeEm(ptr noundef nonnull align 8 dereferenceable(96) %i.jo, i64 noundef %i.ji) #16
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !538
  switch i8 %i.jq, label %bb.z [
    i8 -5, label %.critedge79.i
    i8 -2, label %bb.v
    i8 -1, label %bb.x
  ]

bb.v:                                             ; preds = %bb.u
  %.val80.i = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.jr = inttoptr i64 %i.ji to ptr               ; 4 uses
  call void @_ZNK4llvm6object15XCOFFObjectFile23checkSymbolEntryPointerEm(ptr noundef nonnull align 8 dereferenceable(96) %.val80.i, i64 noundef %i.ji) #16
  %i.js = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !15
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 248
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(44) %i.js, ptr nonnull @.str.145, i64 24) #16, !inline_history !478
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.jx = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.jy = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.jx, i64 noundef %i.ji) #16
  %i.jz = load ptr, ptr %i.jw, align 8, !tbaa !15
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(44) %i.jw, ptr nonnull @.str.14, i64 5, i32 noundef %i.jy) #16, !inline_history !479
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.sroa.01.0.copyload.i.i = load i32, ptr %i.kd, align 1, !tbaa !40
  %i.ke = call noundef i32 @llvm.bswap.i32(i32 %.sroa.01.0.copyload.i.i)
  %i.kf = zext i32 %i.ke to i64
  %i.kg = load ptr, ptr %i.kc, align 8, !tbaa !15
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 336
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(44) %i.kc, ptr nonnull @.str.146, i64 14, i64 %i.kf) #16, !inline_history !480
  %i.kj = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %.sroa.0.0.copyload.i133.i = load i64, ptr %i.jr, align 1, !tbaa !40
  %i.kk = call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i133.i)
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !15
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 336
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(44) %i.kj, ptr nonnull @.str.147, i64 16, i64 %i.kk) #16, !inline_history !481
  %i.ko = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  %.0.copyload.i.i.i.i134.i = load i32, ptr %i.kp, align 1
  %i.kq = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i134.i)
  %i.kr = load ptr, ptr %i.ko, align 8, !tbaa !15
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 56
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(44) %i.ko, ptr nonnull @.str.148, i64 23, i32 noundef %i.kq) #16, !inline_history !479
  %i.ku = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jr, i64 17
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !547 ; 4 uses
  %i.kx = icmp ugt i8 %i.kw, -7
  br i1 %i.kx, label %switch.lookup69, label %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i137.i

switch.lookup69:                                  ; preds = %bb.v
  %i.ky = sext i8 %i.kw to i64
  %i.kz = getelementptr [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.42, i64 %i.ky
  %switch.gep70 = getelementptr i8, ptr %i.kz, i64 48
  %switch.load71 = load ptr, ptr %switch.gep70, align 8 ; 3 uses
  %i.la = getelementptr inbounds nuw i8, ptr %switch.load71, i64 2
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !40  ; 2 uses
  %i.lc = icmp eq i8 %i.lb, 0
  br i1 %i.lc, label %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i137.i, label %bb.w

bb.w:                                             ; preds = %switch.lookup69
  %i.ld = zext i8 %i.lb to i64
  %i.le = load i16, ptr %switch.load71, align 2, !tbaa !46
  %i.lf = zext i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %switch.load71, i64 %i.lf
  %i.lh = zext i8 %i.kw to i64
  %i.li = load ptr, ptr %i.ku, align 8, !tbaa !15
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 344
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(44) %i.ku, ptr nonnull @.str.143, i64 14, ptr nonnull %i.lg, i64 %i.ld, i64 %i.lh) #16, !inline_history !482
  br label %_ZN12_GLOBAL__N_111XCOFFDumper19printFunctionAuxEntEPKN4llvm6object21XCOFFFunctionAuxEnt64E.exit.i

_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i137.i: ; preds = %bb.v, %switch.lookup69
  %i.ll = zext i8 %i.kw to i64
  %i.lm = load ptr, ptr %i.ku, align 8, !tbaa !15
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 336
  %i.lo = load ptr, ptr %i.ln, align 8
  call void %i.lo(ptr noundef nonnull align 8 dereferenceable(44) %i.ku, ptr nonnull @.str.143, i64 14, i64 %i.ll) #16, !inline_history !483
  br label %_ZN12_GLOBAL__N_111XCOFFDumper19printFunctionAuxEntEPKN4llvm6object21XCOFFFunctionAuxEnt64E.exit.i

_ZN12_GLOBAL__N_111XCOFFDumper19printFunctionAuxEntEPKN4llvm6object21XCOFFFunctionAuxEnt64E.exit.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i137.i, %bb.w
  %i.lp = load ptr, ptr %i.js, align 8, !tbaa !15
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 256
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(44) %i.js) #16, !inline_history !484
  br label %.critedge79.i

bb.x:                                             ; preds = %bb.u
  %.val81.i = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ls = inttoptr i64 %i.ji to ptr               ; 4 uses
  call void @_ZNK4llvm6object15XCOFFObjectFile23checkSymbolEntryPointerEm(ptr noundef nonnull align 8 dereferenceable(96) %.val81.i, i64 noundef %i.ji) #16
  %i.lt = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !15
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 248
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(44) %i.lt, ptr nonnull @.str.149, i64 25) #16, !inline_history !485
  %i.lx = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.ly = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.lz = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.ly, i64 noundef %i.ji) #16
  %i.ma = load ptr, ptr %i.lx, align 8, !tbaa !15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  %i.mc = load ptr, ptr %i.mb, align 8
  call void %i.mc(ptr noundef nonnull align 8 dereferenceable(44) %i.lx, ptr nonnull @.str.14, i64 5, i32 noundef %i.lz) #16, !inline_history !486
  %i.md = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %.sroa.01.0.copyload.i139.i = load i64, ptr %i.ls, align 1, !tbaa !40
  %i.me = call noundef i64 @llvm.bswap.i64(i64 %.sroa.01.0.copyload.i139.i)
  %i.mf = load ptr, ptr %i.md, align 8, !tbaa !15
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 336
  %i.mh = load ptr, ptr %i.mg, align 8
  call void %i.mh(ptr noundef nonnull align 8 dereferenceable(44) %i.md, ptr nonnull @.str.150, i64 22, i64 %i.me) #16, !inline_history !487
  %i.mi = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %.sroa.0.0.copyload.i140.i = load i32, ptr %i.mj, align 1, !tbaa !40
  %i.mk = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i140.i)
  %i.ml = zext i32 %i.mk to i64
  %i.mm = load ptr, ptr %i.mi, align 8, !tbaa !15
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 336
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(44) %i.mi, ptr nonnull @.str.146, i64 14, i64 %i.ml) #16, !inline_history !488
  %i.mp = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.ls, i64 12
  %.0.copyload.i.i.i.i141.i = load i32, ptr %i.mq, align 1
  %i.mr = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i141.i)
  %i.ms = load ptr, ptr %i.mp, align 8, !tbaa !15
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 56
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(44) %i.mp, ptr nonnull @.str.148, i64 23, i32 noundef %i.mr) #16, !inline_history !486
  %i.mv = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ls, i64 17
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !549 ; 4 uses
  %i.my = icmp ugt i8 %i.mx, -7
  br i1 %i.my, label %switch.lookup73, label %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i145.i

switch.lookup73:                                  ; preds = %bb.x
  %i.mz = sext i8 %i.mx to i64
  %i.na = getelementptr [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.42, i64 %i.mz
  %switch.gep74 = getelementptr i8, ptr %i.na, i64 48
  %switch.load75 = load ptr, ptr %switch.gep74, align 8 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %switch.load75, i64 2
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !40  ; 2 uses
  %i.nd = icmp eq i8 %i.nc, 0
  br i1 %i.nd, label %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i145.i, label %bb.y

bb.y:                                             ; preds = %switch.lookup73
  %i.ne = zext i8 %i.nc to i64
  %i.nf = load i16, ptr %switch.load75, align 2, !tbaa !46
  %i.ng = zext i16 %i.nf to i64
  %i.nh = getelementptr inbounds nuw i8, ptr %switch.load75, i64 %i.ng
  %i.ni = zext i8 %i.mx to i64
  %i.nj = load ptr, ptr %i.mv, align 8, !tbaa !15
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 344
  %i.nl = load ptr, ptr %i.nk, align 8
  call void %i.nl(ptr noundef nonnull align 8 dereferenceable(44) %i.mv, ptr nonnull @.str.143, i64 14, ptr nonnull %i.nh, i64 %i.ne, i64 %i.ni) #16, !inline_history !489
  br label %_ZN12_GLOBAL__N_111XCOFFDumper20printExceptionAuxEntEPKN4llvm6object20XCOFFExceptionAuxEntE.exit.i

_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i145.i: ; preds = %bb.x, %switch.lookup73
  %i.nm = zext i8 %i.mx to i64
  %i.nn = load ptr, ptr %i.mv, align 8, !tbaa !15
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 336
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(44) %i.mv, ptr nonnull @.str.143, i64 14, i64 %i.nm) #16, !inline_history !490
  br label %_ZN12_GLOBAL__N_111XCOFFDumper20printExceptionAuxEntEPKN4llvm6object20XCOFFExceptionAuxEntE.exit.i

_ZN12_GLOBAL__N_111XCOFFDumper20printExceptionAuxEntEPKN4llvm6object20XCOFFExceptionAuxEntE.exit.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i145.i, %bb.y
  %i.nq = load ptr, ptr %i.lt, align 8, !tbaa !15
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 256
  %i.ns = load ptr, ptr %i.nr, align 8
  call void %i.ns(ptr noundef nonnull align 8 dereferenceable(44) %i.lt) #16, !inline_history !491
  br label %.critedge79.i

bb.z:                                             ; preds = %bb.u
  %i.nt = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29
  call fastcc void @_ZL24printUnexpectedRawAuxEntRN4llvm13ScopedPrinterEm(ptr noundef nonnull align 8 dereferenceable(44) %i.nt, i64 noundef %i.ji)
  br label %.critedge79.i

bb.aa:                                            ; preds = %bb.t
  %i.nu = inttoptr i64 %i.ji to ptr               ; 4 uses
  call void @_ZNK4llvm6object15XCOFFObjectFile23checkSymbolEntryPointerEm(ptr noundef nonnull align 8 dereferenceable(96) %i.jo, i64 noundef %i.ji) #16
  %i.nv = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !15
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 248
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(44) %i.nv, ptr nonnull @.str.145, i64 24) #16, !inline_history !492
  %i.nz = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.oa = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.ob = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.oa, i64 noundef %i.ji) #16
  %i.oc = load ptr, ptr %i.nz, align 8, !tbaa !15
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 64
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(44) %i.nz, ptr nonnull @.str.14, i64 5, i32 noundef %i.ob) #16, !inline_history !493
  %i.of = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %.sroa.02.0.copyload.i.i = load i32, ptr %i.nu, align 1, !tbaa !40
  %i.og = call noundef i32 @llvm.bswap.i32(i32 %.sroa.02.0.copyload.i.i)
  %i.oh = zext i32 %i.og to i64
  %i.oi = load ptr, ptr %i.of, align 8, !tbaa !15
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 336
  %i.ok = load ptr, ptr %i.oj, align 8
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(44) %i.of, ptr nonnull @.str.150, i64 22, i64 %i.oh) #16, !inline_history !494
  %i.ol = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.nu, i64 4
  %.sroa.01.0.copyload.i150.i = load i32, ptr %i.om, align 1, !tbaa !40
  %i.on = call noundef i32 @llvm.bswap.i32(i32 %.sroa.01.0.copyload.i150.i)
  %i.oo = zext i32 %i.on to i64
  %i.op = load ptr, ptr %i.ol, align 8, !tbaa !15
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 336
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(44) %i.ol, ptr nonnull @.str.146, i64 14, i64 %i.oo) #16, !inline_history !494
  %i.os = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %.sroa.0.0.copyload.i151.i = load i32, ptr %i.ot, align 1, !tbaa !40
  %i.ou = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i151.i)
  %i.ov = zext i32 %i.ou to i64
  %i.ow = load ptr, ptr %i.os, align 8, !tbaa !15
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 336
  %i.oy = load ptr, ptr %i.ox, align 8
  call void %i.oy(ptr noundef nonnull align 8 dereferenceable(44) %i.os, ptr nonnull @.str.147, i64 16, i64 %i.ov) #16, !inline_history !494
  %i.oz = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  %.0.copyload.i.i.i.i152.i = load i32, ptr %i.pa, align 1
  %i.pb = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i152.i)
  %i.pc = load ptr, ptr %i.oz, align 8, !tbaa !15
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 56
  %i.pe = load ptr, ptr %i.pd, align 8
  call void %i.pe(ptr noundef nonnull align 8 dereferenceable(44) %i.oz, ptr nonnull @.str.148, i64 23, i32 noundef %i.pb) #16, !inline_history !493
  %i.pf = load ptr, ptr %i.nv, align 8, !tbaa !15
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 256
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(44) %i.nv) #16, !inline_history !495
  br label %.critedge79.i

.critedge79.i:                                    ; preds = %bb.aa, %bb.z, %_ZN12_GLOBAL__N_111XCOFFDumper20printExceptionAuxEntEPKN4llvm6object20XCOFFExceptionAuxEntE.exit.i, %_ZN12_GLOBAL__N_111XCOFFDumper19printFunctionAuxEntEPKN4llvm6object21XCOFFFunctionAuxEnt64E.exit.i, %bb.u
  %i.pi = add nuw nsw i32 %.07133.i, 1
  br i1 %i.jc, label %bb.ab, label %bb.r, !llvm.loop !496

bb.ab:                                            ; preds = %.critedge79.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNK4llvm6object14XCOFFSymbolRef19getXCOFFCsectAuxRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.115") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  %i.pj = load i8, ptr %i.r, align 8
  %i.pk = trunc i8 %i.pj to i1
  br i1 %i.pk, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.ac

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !550)
  %i.pl = load i64, ptr %12, align 8, !tbaa !47, !noalias !550
  %i.pm = inttoptr i64 %i.pl to ptr
  store ptr null, ptr %12, align 8, !tbaa !47, !noalias !550
  store ptr %i.pm, ptr %13, align 8, !tbaa !44, !alias.scope !550
  call void @_ZNK4llvm9ObjDumper19reportUniqueWarningENS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull align 8 dereferenceable(8) %13) #16
  %i.pn = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %_ZN4llvm5ErrorD2Ev.exit.i, label %_ZN4llvm5ErrorD2Ev.exit.sink.split.i

bb.ac:                                            ; preds = %bb.ab
  %.sroa.0.0.copyload.i9 = load ptr, ptr %12, align 8, !tbaa !552 ; 5 uses
  %.sroa.2.0.copyload.i11 = load ptr, ptr %.sroa.2.0..sroa_idx.i10, align 8, !tbaa !554 ; 3 uses
  %i.pp = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !15
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 248
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(44) %i.pp, ptr nonnull @.str.151, i64 21) #16, !inline_history !499
  %i.pt = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.pu = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %.not.i.i153.i = icmp eq ptr %.sroa.0.0.copyload.i9, null ; 2 uses
  %.in.i.i.i = select i1 %.not.i.i153.i, ptr %.sroa.2.0.copyload.i11, ptr %.sroa.0.0.copyload.i9 ; 5 uses
  %i.pv = ptrtoint ptr %.in.i.i.i to i64
  %i.pw = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.pu, i64 noundef %i.pv) #16
  %i.px = load ptr, ptr %i.pt, align 8, !tbaa !15
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 64
  %i.pz = load ptr, ptr %i.py, align 8
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(44) %i.pt, ptr nonnull @.str.14, i64 5, i32 noundef %i.pw) #16, !inline_history !500
  %i.qa = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.in.i.i.i, i64 10 ; 3 uses
  %i.qb = load i8, ptr %.in.i.i.i.i.i, align 1, !tbaa !40
  %i.qc = and i8 %i.qb, 7
  %i.qd = icmp eq i8 %i.qc, 2                     ; 2 uses
  %i.qe = select i1 %i.qd, ptr @.str.152, ptr @.str.153
  %i.qf = select i1 %i.qd, i64 26, i64 10
  br i1 %.not.i.i153.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.0.copyload.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.copyload.i9, align 1
  %i.qg = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i.i)
  %i.qh = zext i32 %i.qg to i64
  br label %_ZNK4llvm6object16XCOFFCsectAuxRef18getSectionOrLengthEv.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i11, i64 12
  %.0.copyload.i.i.i.i1.i.i.i = load i32, ptr %i.qi, align 1
  %.0.copyload.i.i.i1.i.i.i.i = load i32, ptr %.sroa.2.0.copyload.i11, align 1
  %i.qj = zext i32 %.0.copyload.i.i.i.i1.i.i.i to i64
  %i.qk = zext i32 %.0.copyload.i.i.i1.i.i.i.i to i64
  %i.ql = shl nuw i64 %i.qk, 32
  %i.qm = or disjoint i64 %i.ql, %i.qj
  %i.qn = call noundef i64 @llvm.bswap.i64(i64 %i.qm)
  br label %_ZNK4llvm6object16XCOFFCsectAuxRef18getSectionOrLengthEv.exit.i.i

_ZNK4llvm6object16XCOFFCsectAuxRef18getSectionOrLengthEv.exit.i.i: ; preds = %bb.ae, %bb.ad
  %i.qo = phi i64 [ %i.qh, %bb.ad ], [ %i.qn, %bb.ae ]
  %i.qp = load ptr, ptr %i.qa, align 8, !tbaa !15
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 80
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(44) %i.qa, ptr nonnull %i.qe, i64 %i.qf, i64 noundef %i.qo) #16, !inline_history !500
  %i.qs = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.in.i.i.i, i64 4
  %.0.copyload.i.i.i.i.i154.i = load i32, ptr %i.qt, align 1
  %i.qu = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i154.i)
  %i.qv = zext i32 %i.qu to i64
  %i.qw = load ptr, ptr %i.qs, align 8, !tbaa !15
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 336
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(44) %i.qs, ptr nonnull @.str.154, i64 18, i64 %i.qv) #16, !inline_history !501
  %i.qz = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.in.i.i.i, i64 8
  %.0.copyload.i.i.i.i6.i.i = load i16, ptr %i.ra, align 1
  %i.rb = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i6.i.i)
  %i.rc = zext i16 %i.rb to i64
  %i.rd = load ptr, ptr %i.qz, align 8, !tbaa !15
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 336
  %i.rf = load ptr, ptr %i.re, align 8
  call void %i.rf(ptr noundef nonnull align 8 dereferenceable(44) %i.qz, ptr nonnull @.str.155, i64 14, i64 %i.rc) #16, !inline_history !502
  %i.rg = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.rh = load i8, ptr %.in.i.i.i.i.i, align 1, !tbaa !40
  %i.ri = lshr i8 %i.rh, 3
  %i.rj = zext nneg i8 %i.ri to i16
  %i.rk = load ptr, ptr %i.rg, align 8, !tbaa !15
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 48
  %i.rm = load ptr, ptr %i.rl, align 8
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(44) %i.rg, ptr nonnull @.str.156, i64 19, i16 noundef zeroext %i.rj) #16, !inline_history !500
  %i.rn = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.ro = load i8, ptr %.in.i.i.i.i.i, align 1, !tbaa !40
  %i.rp = and i8 %i.ro, 7                         ; 4 uses
  %i.rq = icmp samesign ult i8 %i.rp, 4
  br i1 %i.rq, label %switch.lookup76, label %_ZNK4llvm11EnumStringsINS_5XCOFF10SymbolTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i

switch.lookup76:                                  ; preds = %_ZNK4llvm6object16XCOFFCsectAuxRef18getSectionOrLengthEv.exit.i.i
  %i.rr = zext nneg i8 %i.rp to i64
  %switch.gep77 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.40, i64 %i.rr
  %switch.load78 = load ptr, ptr %switch.gep77, align 8 ; 3 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %switch.load78, i64 2
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !40  ; 2 uses
  %i.ru = icmp eq i8 %i.rt, 0
  br i1 %i.ru, label %_ZNK4llvm11EnumStringsINS_5XCOFF10SymbolTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i, label %bb.af

bb.af:                                            ; preds = %switch.lookup76
  %i.rv = zext i8 %i.rt to i64
  %i.rw = load i16, ptr %switch.load78, align 2, !tbaa !46
  %i.rx = zext i16 %i.rw to i64
  %i.ry = getelementptr inbounds nuw i8, ptr %switch.load78, i64 %i.rx
  %i.rz = zext nneg i8 %i.rp to i64
  %i.sa = load ptr, ptr %i.rn, align 8, !tbaa !15
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 344
  %i.sc = load ptr, ptr %i.sb, align 8
  call void %i.sc(ptr noundef nonnull align 8 dereferenceable(44) %i.rn, ptr nonnull @.str.109, i64 10, ptr nonnull %i.ry, i64 %i.rv, i64 %i.rz) #16, !inline_history !503
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10SymbolTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF10SymbolTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i: ; preds = %_ZNK4llvm6object16XCOFFCsectAuxRef18getSectionOrLengthEv.exit.i.i, %switch.lookup76
  %i.sd = zext nneg i8 %i.rp to i64
  %i.se = load ptr, ptr %i.rn, align 8, !tbaa !15
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 336
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(44) %i.rn, ptr nonnull @.str.109, i64 10, i64 %i.sd) #16, !inline_history !504
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10SymbolTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i

_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10SymbolTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF10SymbolTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i, %bb.af
  %i.sh = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %.in.i13.i.i = getelementptr inbounds nuw i8, ptr %.in.i.i.i, i64 11
  %i.si = load i8, ptr %.in.i13.i.i, align 1, !tbaa !556 ; 5 uses
  %i.sj = icmp ult i8 %i.si, 23
  %switch.maskindex82 = zext nneg i8 %i.si to i32
  %switch.shifted83 = lshr i32 7847935, %switch.maskindex82
  %switch.lobit84 = trunc i32 %switch.shifted83 to i1
  %or.cond = select i1 %i.sj, i1 %switch.lobit84, i1 false
  br i1 %or.cond, label %switch.lookup81, label %_ZNK4llvm11EnumStringsINS_5XCOFF19StorageMappingClassELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i

switch.lookup81:                                  ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10SymbolTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i
  %i.sk = zext nneg i8 %i.si to i64
  %switch.gep85 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.41, i64 %i.sk
  %switch.load86 = load ptr, ptr %switch.gep85, align 8 ; 3 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %switch.load86, i64 2
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !40  ; 2 uses
  %i.sn = icmp eq i8 %i.sm, 0
  br i1 %i.sn, label %_ZNK4llvm11EnumStringsINS_5XCOFF19StorageMappingClassELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %switch.lookup81
  %i.so = zext i8 %i.sm to i64
  %i.sp = load i16, ptr %switch.load86, align 2, !tbaa !46
  %i.sq = zext i16 %i.sp to i64
  %i.sr = getelementptr inbounds nuw i8, ptr %switch.load86, i64 %i.sq
  %i.ss = zext nneg i8 %i.si to i64
  %i.st = load ptr, ptr %i.sh, align 8, !tbaa !15
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 344
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(44) %i.sh, ptr nonnull @.str.157, i64 19, ptr nonnull %i.sr, i64 %i.so, i64 %i.ss) #16, !inline_history !505
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF19StorageMappingClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i

_ZNK4llvm11EnumStringsINS_5XCOFF19StorageMappingClassELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF10SymbolTypeELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i, %switch.lookup81
  %i.sw = zext i8 %i.si to i64
  %i.sx = load ptr, ptr %i.sh, align 8, !tbaa !15
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 336
  %i.sz = load ptr, ptr %i.sy, align 8
  call void %i.sz(ptr noundef nonnull align 8 dereferenceable(44) %i.sh, ptr nonnull @.str.157, i64 19, i64 %i.sw) #16, !inline_history !506
  br label %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF19StorageMappingClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i

_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF19StorageMappingClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF19StorageMappingClassELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i.i, %bb.ag
  %i.ta = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !15
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = call noundef zeroext i1 %i.td(ptr noundef nonnull align 8 dereferenceable(96) %i.ta) #16, !inline_history !500
  %i.tf = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  br i1 %i.te, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF19StorageMappingClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !15
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 344
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(44) %i.tf, ptr nonnull @.str.143, i64 14, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL10SymAuxType, i64 56), i64 9, i64 251) #16, !inline_history !507
  br label %_ZN4llvm5ErrorD2Ev.exit.sink.split.i

bb.ai:                                            ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF19StorageMappingClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9, i64 12
  %.0.copyload.i.i.i.i24.i.i = load i32, ptr %i.tj, align 1
  %i.tk = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i24.i.i)
  %i.tl = zext i32 %i.tk to i64
  %i.tm = load ptr, ptr %i.tf, align 8, !tbaa !15
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 336
  %i.to = load ptr, ptr %i.tn, align 8
  call void %i.to(ptr noundef nonnull align 8 dereferenceable(44) %i.tf, ptr nonnull @.str.158, i64 13, i64 %i.tl) #16, !inline_history !501
  %i.tp = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i9, i64 16
  %.0.copyload.i.i.i.i25.i.i = load i16, ptr %i.tq, align 1
  %i.tr = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i.i25.i.i)
  %i.ts = zext i16 %i.tr to i64
  %i.tt = load ptr, ptr %i.tp, align 8, !tbaa !15
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 336
  %i.tv = load ptr, ptr %i.tu, align 8
  call void %i.tv(ptr noundef nonnull align 8 dereferenceable(44) %i.tp, ptr nonnull @.str.159, i64 11, i64 %i.ts) #16, !inline_history !502
  br label %_ZN4llvm5ErrorD2Ev.exit.sink.split.i

_ZN4llvm5ErrorD2Ev.exit.sink.split.i:             ; preds = %bb.ai, %bb.ah, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  %.sink155.i = phi ptr [ %i.pn, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i ], [ %i.pp, %bb.ah ], [ %i.pp, %bb.ai ] ; 2 uses
  %.sink154.i = phi i64 [ 8, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i ], [ 256, %bb.ah ], [ 256, %bb.ai ]
  %i.tw = load ptr, ptr %.sink155.i, align 8, !tbaa !15
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 %.sink154.i
  %i.ty = load ptr, ptr %i.tx, align 8
  call void %i.ty(ptr noundef nonnull align 8 dereferenceable(8) %.sink155.i) #16, !inline_history !455
  br label %_ZN4llvm5ErrorD2Ev.exit.i

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit.sink.split.i, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.tz = load i8, ptr %i.r, align 8
  %i.ua = trunc i8 %i.tz to i1
  br i1 %i.ua, label %bb.aj, label %_ZN4llvm8ExpectedINS_6object16XCOFFCsectAuxRefEED2Ev.exit.i

bb.aj:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit.i
  %i.ub = load ptr, ptr %12, align 8, !tbaa !47   ; 3 uses
  %.not.i.i157.i = icmp eq ptr %i.ub, null
  br i1 %.not.i.i157.i, label %_ZN4llvm8ExpectedINS_6object16XCOFFCsectAuxRefEED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i158.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i158.i: ; preds = %bb.aj
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !15
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8
  call void %i.ue(ptr noundef nonnull align 8 dereferenceable(8) %i.ub) #16, !inline_history !508
  br label %_ZN4llvm8ExpectedINS_6object16XCOFFCsectAuxRefEED2Ev.exit.i

_ZN4llvm8ExpectedINS_6object16XCOFFCsectAuxRefEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i158.i, %bb.aj, %_ZN4llvm5ErrorD2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %.loopexit.i

bb.ak:                                            ; preds = %bb.k
  call fastcc void @"_ZZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %11)
  %.sroa.0.0.copyload.i.i159.i = load i64, ptr %7, align 8, !tbaa !40
  %i.uf = call noundef i64 @_ZN4llvm6object15XCOFFObjectFile29getAdvancedSymbolEntryAddressEmj(i64 noundef %.sroa.0.0.copyload.i.i159.i, i32 noundef 1) #16 ; 3 uses
  %.val83.i = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ug = inttoptr i64 %i.uf to ptr               ; 3 uses
  call void @_ZNK4llvm6object15XCOFFObjectFile23checkSymbolEntryPointerEm(ptr noundef nonnull align 8 dereferenceable(96) %.val83.i, i64 noundef %i.uf) #16
  %i.uh = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !15
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 248
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dereferenceable(44) %i.uh, ptr nonnull @.str.164, i64 29) #16, !inline_history !509
  %i.ul = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.um = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.un = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.um, i64 noundef %i.uf) #16
  %i.uo = load ptr, ptr %i.ul, align 8, !tbaa !15
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 64
  %i.uq = load ptr, ptr %i.up, align 8
  call void %i.uq(ptr noundef nonnull align 8 dereferenceable(44) %i.ul, ptr nonnull @.str.14, i64 5, i32 noundef %i.un) #16, !inline_history !510
  %i.ur = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %.0.copyload.i.i.i.i160.i = load i32, ptr %i.ug, align 1
  %i.us = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i160.i)
  %i.ut = load ptr, ptr %i.ur, align 8, !tbaa !15
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 64
  %i.uv = load ptr, ptr %i.uu, align 8
  call void %i.uv(ptr noundef nonnull align 8 dereferenceable(44) %i.ur, ptr nonnull @.str.165, i64 13, i32 noundef %i.us) #16, !inline_history !510
  %i.uw = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %.0.copyload.i.i.i5.i.i = load i16, ptr %i.ux, align 1
  %i.uy = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i5.i.i)
  %i.uz = load ptr, ptr %i.uw, align 8, !tbaa !15
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 48
  %i.vb = load ptr, ptr %i.va, align 8
  call void %i.vb(ptr noundef nonnull align 8 dereferenceable(44) %i.uw, ptr nonnull @.str.166, i64 16, i16 noundef zeroext %i.uy) #16, !inline_history !510
  %i.vc = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ug, i64 6
  %.0.copyload.i.i.i6.i.i = load i16, ptr %i.vd, align 1
  %i.ve = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i6.i.i)
  %i.vf = load ptr, ptr %i.vc, align 8, !tbaa !15
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 48
  %i.vh = load ptr, ptr %i.vg, align 8
  call void %i.vh(ptr noundef nonnull align 8 dereferenceable(44) %i.vc, ptr nonnull @.str.167, i64 15, i16 noundef zeroext %i.ve) #16, !inline_history !510
  %i.vi = load ptr, ptr %i.uh, align 8, !tbaa !15
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 256
  %i.vk = load ptr, ptr %i.vj, align 8
  call void %i.vk(ptr noundef nonnull align 8 dereferenceable(44) %i.uh) #16, !inline_history !511
  br label %.loopexit.i

bb.al:                                            ; preds = %bb.k
  call fastcc void @"_ZZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %11)
  %.sroa.0.0.copyload.i.i161.i = load i64, ptr %7, align 8, !tbaa !40
  %i.vl = call noundef i64 @_ZN4llvm6object15XCOFFObjectFile29getAdvancedSymbolEntryAddressEmj(i64 noundef %.sroa.0.0.copyload.i.i161.i, i32 noundef 1) #16 ; 3 uses
  %i.vm = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !15
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 64
  %i.vp = load ptr, ptr %i.vo, align 8
  %i.vq = call noundef zeroext i1 %i.vp(ptr noundef nonnull align 8 dereferenceable(96) %i.vm) #16, !inline_history !455
  %.val84.i = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.vr = inttoptr i64 %i.vl to ptr               ; 4 uses
  call void @_ZNK4llvm6object15XCOFFObjectFile23checkSymbolEntryPointerEm(ptr noundef nonnull align 8 dereferenceable(96) %.val84.i, i64 noundef %i.vl) #16
  %i.vs = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 6 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !15
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 248
  %i.vv = load ptr, ptr %i.vu, align 8
  call void %i.vv(ptr noundef nonnull align 8 dereferenceable(44) %i.vs, ptr nonnull @.str.168, i64 30) #16, !inline_history !455
  %i.vw = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.vx = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.vy = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.vx, i64 noundef %i.vl) #16
  %i.vz = load ptr, ptr %i.vw, align 8, !tbaa !15
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 64
  %i.wb = load ptr, ptr %i.wa, align 8
  call void %i.wb(ptr noundef nonnull align 8 dereferenceable(44) %i.vw, ptr nonnull @.str.14, i64 5, i32 noundef %i.vy) #16, !inline_history !455
  %i.wc = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  br i1 %i.vq, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %.sroa.0.0.copyload.i162.i = load i64, ptr %i.vr, align 1, !tbaa !40
  %i.wd = call noundef i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i162.i)
  %i.we = load ptr, ptr %i.wc, align 8, !tbaa !15
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 336
  %i.wg = load ptr, ptr %i.wf, align 8
  call void %i.wg(ptr noundef nonnull align 8 dereferenceable(44) %i.wc, ptr nonnull @.str.169, i64 22, i64 %i.wd) #16, !inline_history !512
  %i.wh = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %.0.copyload.i.i.i.i163.i = load i64, ptr %i.wi, align 1
  %i.wj = call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i163.i)
  %i.wk = load ptr, ptr %i.wh, align 8, !tbaa !15
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 80
  %i.wm = load ptr, ptr %i.wl, align 8
  call void %i.wm(ptr noundef nonnull align 8 dereferenceable(44) %i.wh, ptr nonnull @.str.170, i64 20, i64 noundef %i.wj) #16, !inline_history !513
  %i.wn = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !15
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 64
  %i.wq = load ptr, ptr %i.wp, align 8
  %i.wr = call noundef zeroext i1 %i.wq(ptr noundef nonnull align 8 dereferenceable(96) %i.wn) #16, !inline_history !513
  br i1 %i.wr, label %bb.an, label %_ZN12_GLOBAL__N_111XCOFFDumper23printSectAuxEntForDWARFIN4llvm6object25XCOFFSectAuxEntForDWARF64EEEvPKT_.exit.i

bb.an:                                            ; preds = %bb.am
  %i.ws = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !15
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 344
  %i.wv = load ptr, ptr %i.wu, align 8
  call void %i.wv(ptr noundef nonnull align 8 dereferenceable(44) %i.ws, ptr nonnull @.str.143, i64 14, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL10SymAuxType, i64 65), i64 8, i64 250) #16, !inline_history !514
  br label %_ZN12_GLOBAL__N_111XCOFFDumper23printSectAuxEntForDWARFIN4llvm6object25XCOFFSectAuxEntForDWARF64EEEvPKT_.exit.i

_ZN12_GLOBAL__N_111XCOFFDumper23printSectAuxEntForDWARFIN4llvm6object25XCOFFSectAuxEntForDWARF64EEEvPKT_.exit.i: ; preds = %bb.an, %bb.am
  %i.ww = load ptr, ptr %i.vs, align 8, !tbaa !15
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 256
  %i.wy = load ptr, ptr %i.wx, align 8
  call void %i.wy(ptr noundef nonnull align 8 dereferenceable(44) %i.vs) #16, !inline_history !515
  br label %.loopexit.i

bb.ao:                                            ; preds = %bb.al
  %.sroa.0.0.copyload.i164.i = load i32, ptr %i.vr, align 1, !tbaa !40
  %i.wz = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i164.i)
  %i.xa = zext i32 %i.wz to i64
  %i.xb = load ptr, ptr %i.wc, align 8, !tbaa !15
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 336
  %i.xd = load ptr, ptr %i.xc, align 8
  call void %i.xd(ptr noundef nonnull align 8 dereferenceable(44) %i.wc, ptr nonnull @.str.169, i64 22, i64 %i.xa) #16, !inline_history !516
  %i.xe = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %.0.copyload.i.i.i.i165.i = load i32, ptr %i.xf, align 1
  %i.xg = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i165.i)
  %i.xh = load ptr, ptr %i.xe, align 8, !tbaa !15
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 64
  %i.xj = load ptr, ptr %i.xi, align 8
  call void %i.xj(ptr noundef nonnull align 8 dereferenceable(44) %i.xe, ptr nonnull @.str.170, i64 20, i32 noundef %i.xg) #16, !inline_history !517
  %i.xk = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !15
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 64
  %i.xn = load ptr, ptr %i.xm, align 8
  %i.xo = call noundef zeroext i1 %i.xn(ptr noundef nonnull align 8 dereferenceable(96) %i.xk) #16, !inline_history !517
  br i1 %i.xo, label %bb.ap, label %_ZN12_GLOBAL__N_111XCOFFDumper23printSectAuxEntForDWARFIN4llvm6object25XCOFFSectAuxEntForDWARF32EEEvPKT_.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.xp = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !15
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 344
  %i.xs = load ptr, ptr %i.xr, align 8
  call void %i.xs(ptr noundef nonnull align 8 dereferenceable(44) %i.xp, ptr nonnull @.str.143, i64 14, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZL10SymAuxType, i64 65), i64 8, i64 250) #16, !inline_history !518
  br label %_ZN12_GLOBAL__N_111XCOFFDumper23printSectAuxEntForDWARFIN4llvm6object25XCOFFSectAuxEntForDWARF32EEEvPKT_.exit.i

_ZN12_GLOBAL__N_111XCOFFDumper23printSectAuxEntForDWARFIN4llvm6object25XCOFFSectAuxEntForDWARF32EEEvPKT_.exit.i: ; preds = %bb.ap, %bb.ao
  %i.xt = load ptr, ptr %i.vs, align 8, !tbaa !15
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 256
  %i.xv = load ptr, ptr %i.xu, align 8
  call void %i.xv(ptr noundef nonnull align 8 dereferenceable(44) %i.vs) #16, !inline_history !519
  br label %.loopexit.i

bb.aq:                                            ; preds = %bb.k, %bb.k
  call fastcc void @"_ZZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefEENK3$_0clEv"(ptr noundef nonnull align 8 dereferenceable(24) %11)
  %.sroa.0.0.copyload.i.i166.i = load i64, ptr %7, align 8, !tbaa !40
  %i.xw = call noundef i64 @_ZN4llvm6object15XCOFFObjectFile29getAdvancedSymbolEntryAddressEmj(i64 noundef %.sroa.0.0.copyload.i.i166.i, i32 noundef 1) #16 ; 3 uses
  %i.xx = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29 ; 2 uses
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !15
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  %i.ya = load ptr, ptr %i.xz, align 8
  %i.yb = call noundef zeroext i1 %i.ya(ptr noundef nonnull align 8 dereferenceable(96) %i.xx) #16, !inline_history !455
  %.val86.i = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.yc = inttoptr i64 %i.xw to ptr               ; 4 uses
  call void @_ZNK4llvm6object15XCOFFObjectFile23checkSymbolEntryPointerEm(ptr noundef nonnull align 8 dereferenceable(96) %.val86.i, i64 noundef %i.xw) #16
  %i.yd = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 6 uses
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !15
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 248
  %i.yg = load ptr, ptr %i.yf, align 8
  call void %i.yg(ptr noundef nonnull align 8 dereferenceable(44) %i.yd, ptr nonnull @.str.171, i64 21) #16, !inline_history !455
  %i.yh = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.yi = load ptr, ptr %i.f, align 8, !tbaa !31, !nonnull !28, !align !29
  %i.yj = call noundef i32 @_ZNK4llvm6object15XCOFFObjectFile14getSymbolIndexEm(ptr noundef nonnull align 8 dereferenceable(96) %i.yi, i64 noundef %i.xw) #16
  %i.yk = load ptr, ptr %i.yh, align 8, !tbaa !15
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 64
  %i.ym = load ptr, ptr %i.yl, align 8
  call void %i.ym(ptr noundef nonnull align 8 dereferenceable(44) %i.yh, ptr nonnull @.str.14, i64 5, i32 noundef %i.yj) #16, !inline_history !455
  %i.yn = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  br i1 %i.yb, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %.sroa.0.0.copyload.i167.i = load i32, ptr %i.yc, align 1, !tbaa !40
  %i.yo = call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i167.i)
  %i.yp = zext i32 %i.yo to i64
  %i.yq = load ptr, ptr %i.yn, align 8, !tbaa !15
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 336
  %i.ys = load ptr, ptr %i.yr, align 8
  call void %i.ys(ptr noundef nonnull align 8 dereferenceable(44) %i.yn, ptr nonnull @.str.172, i64 10, i64 %i.yp) #16, !inline_history !520
  %i.yt = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yc, i64 17
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !558 ; 4 uses
  %i.yw = icmp ugt i8 %i.yv, -7
  br i1 %i.yw, label %switch.lookup88, label %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i170.i

switch.lookup88:                                  ; preds = %bb.ar
  %i.yx = sext i8 %i.yv to i64
  %i.yy = getelementptr [8 x i8], ptr @switch.table._ZN12_GLOBAL__N_111XCOFFDumper12printSymbolsEb.42, i64 %i.yx
  %switch.gep89 = getelementptr i8, ptr %i.yy, i64 48
  %switch.load90 = load ptr, ptr %switch.gep89, align 8 ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %switch.load90, i64 2
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !40  ; 2 uses
  %i.zb = icmp eq i8 %i.za, 0
  br i1 %i.zb, label %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i170.i, label %bb.as

bb.as:                                            ; preds = %switch.lookup88
  %i.zc = zext i8 %i.za to i64
  %i.zd = load i16, ptr %switch.load90, align 2, !tbaa !46
  %i.ze = zext i16 %i.zd to i64
  %i.zf = getelementptr inbounds nuw i8, ptr %switch.load90, i64 %i.ze
  %i.zg = zext i8 %i.yv to i64
  %i.zh = load ptr, ptr %i.yt, align 8, !tbaa !15
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 344
  %i.zj = load ptr, ptr %i.zi, align 8
  call void %i.zj(ptr noundef nonnull align 8 dereferenceable(44) %i.yt, ptr nonnull @.str.143, i64 14, ptr nonnull %i.zf, i64 %i.zc, i64 %i.zg) #16, !inline_history !521
  br label %_ZN12_GLOBAL__N_111XCOFFDumper16printBlockAuxEntEPKN4llvm6object18XCOFFBlockAuxEnt64E.exit.i

_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i170.i: ; preds = %bb.ar, %switch.lookup88
  %i.zk = zext i8 %i.yv to i64
  %i.zl = load ptr, ptr %i.yt, align 8, !tbaa !15
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 336
  %i.zn = load ptr, ptr %i.zm, align 8
  call void %i.zn(ptr noundef nonnull align 8 dereferenceable(44) %i.yt, ptr nonnull @.str.143, i64 14, i64 %i.zk) #16, !inline_history !522
  br label %_ZN12_GLOBAL__N_111XCOFFDumper16printBlockAuxEntEPKN4llvm6object18XCOFFBlockAuxEnt64E.exit.i

_ZN12_GLOBAL__N_111XCOFFDumper16printBlockAuxEntEPKN4llvm6object18XCOFFBlockAuxEnt64E.exit.i: ; preds = %_ZNK4llvm11EnumStringsINS_5XCOFF13SymbolAuxTypeELj1EE8toStringIhEENS_9StringRefET_j.exit.thread.i.i170.i, %bb.as
  %i.zo = load ptr, ptr %i.yd, align 8, !tbaa !15
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 256
  %i.zq = load ptr, ptr %i.zp, align 8
  call void %i.zq(ptr noundef nonnull align 8 dereferenceable(44) %i.yd) #16, !inline_history !523
  br label %.loopexit.i

bb.at:                                            ; preds = %bb.aq
  %i.zr = getelementptr inbounds nuw i8, ptr %i.yc, i64 2
  %.sroa.01.0.copyload.i172.i = load i16, ptr %i.zr, align 1, !tbaa !40
  %i.zs = call noundef i16 @llvm.bswap.i16(i16 %.sroa.01.0.copyload.i172.i)
  %i.zt = zext i16 %i.zs to i64
  %i.zu = load ptr, ptr %i.yn, align 8, !tbaa !15
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 336
  %i.zw = load ptr, ptr %i.zv, align 8
  call void %i.zw(ptr noundef nonnull align 8 dereferenceable(44) %i.yn, ptr nonnull @.str.173, i64 25, i64 %i.zt) #16, !inline_history !524
  %i.zx = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  %.sroa.0.0.copyload.i173.i = load i16, ptr %i.zy, align 1, !tbaa !40
  %i.zz = call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i173.i)
  %i.aaa = zext i16 %i.zz to i64
  %i.aab = load ptr, ptr %i.zx, align 8, !tbaa !15
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 336
  %i.aad = load ptr, ptr %i.aac, align 8
  call void %i.aad(ptr noundef nonnull align 8 dereferenceable(44) %i.zx, ptr nonnull @.str.174, i64 24, i64 %i.aaa) #16, !inline_history !524
  %i.aae = load ptr, ptr %i.yd, align 8, !tbaa !15
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 256
  %i.aag = load ptr, ptr %i.aaf, align 8
  call void %i.aag(ptr noundef nonnull align 8 dereferenceable(44) %i.yd) #16, !inline_history !525
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.k, %_ZL24printUnexpectedRawAuxEntRN4llvm13ScopedPrinterEm.exit
  %.035.i = phi i32 [ %i.abm, %_ZL24printUnexpectedRawAuxEntRN4llvm13ScopedPrinterEm.exit ], [ 1, %bb.k ] ; 3 uses
  %i.aah = load ptr, ptr %i.a, align 8, !tbaa !27, !nonnull !28, !align !29 ; 4 uses
  %.sroa.0.0.copyload.i.i174.i = load i64, ptr %7, align 8, !tbaa !40
  %i.aai = call noundef i64 @_ZN4llvm6object15XCOFFObjectFile29getAdvancedSymbolEntryAddressEmj(i64 noundef %.sroa.0.0.copyload.i.i174.i, i32 noundef %.035.i) #16
  %i.aaj = load ptr, ptr %i.aah, align 8, !tbaa !15
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 288
  %i.aal = load ptr, ptr %i.aak, align 8
  %i.aam = call noundef nonnull align 8 dereferenceable(48) ptr %i.aal(ptr noundef nonnull align 8 dereferenceable(44) %i.aah) #16, !inline_history !559 ; 3 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !52
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aam, i64 32 ; 3 uses
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !53 ; 2 uses
  %i.aar = ptrtoint ptr %i.aao to i64
  %i.aas = ptrtoint ptr %i.aaq to i64
  %i.aat = sub i64 %i.aar, %i.aas
  %i.aau = icmp ult i64 %i.aat, 38
  br i1 %i.aau, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.preheader.i
  %i.aav = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aam, ptr noundef nonnull @.str.141, i64 noundef 38) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.av:                                            ; preds = %.preheader.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.aaq, ptr noundef nonnull align 1 dereferenceable(38) @.str.141, i64 38, i1 false)
  %i.aaw = load ptr, ptr %i.aap, align 8, !tbaa !53
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 38
  store ptr %i.aax, ptr %i.aap, align 8, !tbaa !53
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.av, %bb.au
  %i.aay = load ptr, ptr %i.aah, align 8, !tbaa !15
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 288
  %i.aba = load ptr, ptr %i.aaz, align 8
  %i.abb = call noundef nonnull align 8 dereferenceable(48) ptr %i.aba(ptr noundef nonnull align 8 dereferenceable(44) %i.aah) #16, !inline_history !559
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.abc = inttoptr i64 %i.aai to ptr
  store ptr %i.abc, ptr %2, align 8, !tbaa !59, !alias.scope !560
  store i64 18, ptr %.sroa.26.0..sroa_idx.i.i.i, align 8, !tbaa !33, !alias.scope !560
  store i8 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !560
  store i32 0, ptr %i.t, align 8, !tbaa !91, !alias.scope !560
  store i32 18, ptr %i.u, align 4, !tbaa !92, !alias.scope !560
  store i8 4, ptr %i.v, align 8, !tbaa !93, !alias.scope !560
  store i8 0, ptr %i.w, align 1, !tbaa !94, !alias.scope !560
  store i8 0, ptr %i.x, align 2, !tbaa !95, !alias.scope !560
  %i.abd = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_14FormattedBytesE(ptr noundef nonnull align 8 dereferenceable(48) %i.abb, ptr noundef nonnull align 8 dereferenceable(43) %2) #16 ; 3 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 24
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !52
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abd, i64 32 ; 3 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !53 ; 2 uses
  %i.abi = icmp eq ptr %i.abf, %i.abh
  br i1 %i.abi, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.abj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.abd, ptr noundef nonnull @.str.50, i64 noundef 1) #16 ; 0 uses
  br label %_ZL24printUnexpectedRawAuxEntRN4llvm13ScopedPrinterEm.exit

bb.ax:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  store i8 10, ptr %i.abh, align 1
  %i.abk = load ptr, ptr %i.abg, align 8, !tbaa !53
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 1
  store ptr %i.abl, ptr %i.abg, align 8, !tbaa !53
  br label %_ZL24printUnexpectedRawAuxEntRN4llvm13ScopedPrinterEm.exit

_ZL24printUnexpectedRawAuxEntRN4llvm13ScopedPrinterEm.exit: ; preds = %bb.aw, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.abm = add nuw nsw i32 %.035.i, 1
  %exitcond41.not.i = icmp eq i32 %.035.i, %i.fw
  br i1 %exitcond41.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !528

.loopexit.i:                                      ; preds = %bb.q, %_ZL24printUnexpectedRawAuxEntRN4llvm13ScopedPrinterEm.exit, %bb.at, %_ZN12_GLOBAL__N_111XCOFFDumper16printBlockAuxEntEPKN4llvm6object18XCOFFBlockAuxEnt64E.exit.i, %_ZN12_GLOBAL__N_111XCOFFDumper23printSectAuxEntForDWARFIN4llvm6object25XCOFFSectAuxEntForDWARF32EEEvPKT_.exit.i, %_ZN12_GLOBAL__N_111XCOFFDumper23printSectAuxEntForDWARFIN4llvm6object25XCOFFSectAuxEntForDWARF64EEEvPKT_.exit.i, %bb.ak, %_ZN4llvm8ExpectedINS_6object16XCOFFCsectAuxRefEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %_ZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefE.exit

_ZN12_GLOBAL__N_111XCOFFDumper11printSymbolERKN4llvm6object9SymbolRefE.exit: ; preds = %_ZN4llvm13ScopedPrinter9printEnumIhNS_5XCOFF12StorageClassELj1EEEvNS_9StringRefET_NS_11EnumStringsIT0_XT1_EEE.exit.i, %.loopexit.i
  %i.abn = load ptr, ptr %i.ak, align 8, !tbaa !15
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 256
  %i.abp = load ptr, ptr %i.abo, align 8
  call void %i.abp(ptr noundef nonnull align 8 dereferenceable(44) %i.ak) #16, !inline_history !529
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.abq = load ptr, ptr %i.h, align 8, !tbaa !534 ; 2 uses
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !15
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 24
  %i.abt = load ptr, ptr %i.abs, align 8
  call void %i.abt(ptr noundef nonnull align 8 dereferenceable(48) %i.abq, ptr noundef nonnull align 8 dereferenceable(16) %15) #16, !inline_history !530
  %lhsv.i.i.i.i = load i64, ptr %15, align 8      ; 2 uses
  %.not.i.i.i.i.not = icmp eq i64 %lhsv.i.i.i.i, %.sroa.0.0.copyload.i4
  br i1 %.not.i.i.i.i.not, label %_ZN4llvm9ListScopeD2Ev.exit, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper12printSymbolsESt8optionalINS_16SymbolComparatorEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse noreturn nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_111XCOFFDumper19printDynamicSymbolsEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #6 align 2 {
bb.a:
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper19printDynamicSymbolsESt8optionalINS_16SymbolComparatorEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper19printProgramHeadersEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9ObjDumper19printSectionMappingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef zeroext i16 @_ZNK4llvm6object15XCOFFObjectFile8getMagicEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZNK4llvm6object15XCOFFObjectFile19getNumberOfSectionsEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm6object15XCOFFObjectFile12getTimeStampEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @gmtime(ptr noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm6object15XCOFFObjectFile22getSymbolTableOffset64Ev(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3
end_hunk_2
