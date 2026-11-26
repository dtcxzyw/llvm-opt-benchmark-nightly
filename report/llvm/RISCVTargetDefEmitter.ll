Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RISCVTargetDefEmitter?download=true
inline.NumInlined: 1478
inline.NumDeleted: 699
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm13RISCVISAUtils16ExtensionVersionEESt10_Select1stISB_ENS9_19ExtensionComparatorESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESL_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm13RISCVISAUtils16ExtensionVersionEESt10_Select1stISB_ENS9_19ExtensionComparatorESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4llvm13RISCVISAUtils16ExtensionVersionEESt10_Select1stISB_ENS9_19ExtensionComparatorESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZN4llvmplERKNS_5TwineES2_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6RecordENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJRS4_EEESt4pairIPS9_bEOT_DpOT0_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6RecordENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_ = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6RecordENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj = comdat any

$_ZN4llvm12DenseMapBaseINS_8DenseMapIjPKNS_6RecordENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt5tupleIJjjPKNS_6RecordEEELb0EE18growAndEmplaceBackIJRjS8_RS4_EEERS5_DpOT_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefES2_ELb1EE15growAndPushBackERKS3_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_ = comdat any

$_ZN4llvm15format_providerIjvE6formatERKjRNS_11raw_ostreamENS_9StringRefE = comdat any

$_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIjEEEEvlS2_S3_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRS3_EEEEvlS2_S3_ = comdat any

$_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRjEEEEvlS2_S3_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL1X = internal global %"struct.llvm::TableGen::Emitter::Opt" zeroinitializer, align 1
@.str = private unnamed_addr constant [21 x i8] c"gen-riscv-target-def\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Generate the list of CPUs and extensions for RISC-V\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"RISCVExtension\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"GET_SUPPORTED_EXTENSIONS\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"#ifdef \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"#undef \00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"static const RISCVSupportedExtension Supported\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Experimental\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Extensions[] = {\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"{\22\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"\22, {\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"MajorVersion\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"MinorVersion\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"}},\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"#endif // \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"GET_IMPLIED_EXTENSIONS\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"\0Astatic constexpr ImpliedExtsEntry ImpliedExts[] = {\0A\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Implies\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"{ {\22\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"\22}, \22\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"\22},\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"GET_SUPPORTED_PROFILES\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"RISCVProfile\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"static constexpr RISCVProfile Supported\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Profiles[] = {\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"\22,\22\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"rv\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@_ZSt19piecewise_construct = linkonce_odr constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"#ifndef PROC\0A\00", align 1
@.str.40 = private unnamed_addr constant [60 x i8] c"#define PROC(ENUM, NAME, DEFAULT_MARCH, FAST_SCALAR_UNALIGN\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c", FAST_VECTOR_UNALIGN, MVENDORID, MARCHID, MIMPID)\0A\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"#endif\0A\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"RISCVProcessorModel\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"Features\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"PROC(\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c", {\22\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"\22}, {\22\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"DefaultMarch\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"MVendorID\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"MArchID\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"MImpID\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\22}, \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"\0A#undef PROC\0A\00", align 1
@.str.55 = private unnamed_addr constant [19 x i8] c"#ifndef TUNE_PROC\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"#define TUNE_PROC(ENUM, NAME)\0A\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"RISCVTuneProcessorModel\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"TUNE_PROC(\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"\22)\0A\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"\0A#undef TUNE_PROC\0A\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"RISCVExtensionBitmask\00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"GET_RISCVExtensionBitmaskTable_IMPL\00", align 1
@.str.66 = private unnamed_addr constant [57 x i8] c"static const RISCVExtensionBitmask ExtensionBitmask[]={\0A\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"GroupID\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"BitPos\00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"ULL\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c"},\0A\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"RISCVTuneFeature\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"PositiveDirectiveName\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c"NegativeDirectiveName\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"RISC-V tune feature positive directive '\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"' was already defined\00", align 1
@.str.77 = private unnamed_addr constant [24 x i8] c"Previously defined here\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"RISC-V tune feature negative directive '\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"GET_TUNE_FEATURES\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"TuneFeatureStrings\00", align 1
@.str.81 = private unnamed_addr constant [54 x i8] c"static constexpr RISCVTuneFeature TuneFeatures[] = {\0A\00", align 1
@.str.82 = private unnamed_addr constant [30 x i8] c"{{ {0}, {1}, {2} },\09// '{3}'\0A\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.84 = private unnamed_addr constant [68 x i8] c"static constexpr RISCVImpliedTuneFeature ImpliedTuneFeatures[] = {\0A\00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"{{ {0}, {1} }, // '{2}' -> '{3}'\0A\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"ProcessorModel\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"GET_CONFIGURABLE_TUNE_FEATURES\00", align 1
@.str.98 = private unnamed_addr constant [79 x i8] c"static constexpr RISCVConfigurableTuneFeatures ConfigurableTuneFeatures[] = {\0A\00", align 1
@.str.99 = private unnamed_addr constant [25 x i8] c"ConfigurableTuneFeatures\00", align 1
@.str.100 = private unnamed_addr constant [23 x i8] c"{{ {{ \22{0}\22 }, {1} },\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_RISCVTargetDefEmitter.cpp, ptr null }]

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL18emitRiscvTargetDefRKN4llvm12RecordKeeperERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #0 {
bb.a:
  %2 = alloca %"class.llvm::IfDefEmitter", align 8 ; 4 uses
  %3 = alloca %"class.llvm::StringRef", align 8   ; 6 uses
  %4 = alloca %"class.std::vector", align 8       ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.llvm::formatv_object.162", align 8 ; 14 uses
  %6 = alloca %"class.llvm::formatv_object.162", align 8 ; 14 uses
  %7 = alloca %"struct.std::pair.111", align 8    ; 7 uses
  %8 = alloca %"class.llvm::SmallVector.90", align 8 ; 10 uses
  %9 = alloca %"class.llvm::DenseMap", align 8    ; 7 uses
  %10 = alloca %"class.llvm::SmallVector.95", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %15 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %17 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %18 = alloca %"class.llvm::Twine", align 8      ; 4 uses
  %19 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %20 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  %23 = alloca %"class.std::vector", align 8      ; 7 uses
  %24 = alloca %"class.llvm::IfDefEmitter", align 8 ; 4 uses
  %25 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %26 = alloca %"class.llvm::StringRef", align 8  ; 6 uses
  %27 = alloca %"class.llvm::formatv_object", align 8 ; 20 uses
  %28 = alloca %"struct.std::pair.111", align 8   ; 8 uses
  %29 = alloca %"class.llvm::formatv_object.132", align 8 ; 20 uses
  %30 = alloca %"class.llvm::IfDefEmitter", align 8 ; 4 uses
  %31 = alloca %"class.std::vector", align 8      ; 9 uses
  %32 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %33 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %34 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %35 = alloca %"class.llvm::IfDefEmitter", align 8 ; 4 uses
  %36 = alloca %"class.llvm::IfDefEmitter", align 8 ; 6 uses
  %37 = alloca %"class.std::vector", align 8      ; 8 uses
  %38 = alloca %"class.llvm::IfDefEmitter", align 8 ; 8 uses
  %39 = alloca %"class.llvm::StringToOffsetTable", align 8 ; 33 uses
  %i.f = tail call { ptr, i64 } @_ZNK4llvm12RecordKeeper33getAllDerivedDefinitionsIfDefinedENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nonnull @.str.3, i64 14) #19 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 3 uses
  %.idx.i.i = shl nuw nsw i64 %i.h, 3             ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %.thread.i.i.i.i, label %_ZNSt12_Vector_baseIPKN4llvm6RecordESaIS3_EE11_M_allocateEm.exit.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr null, i64 %.idx.i.i
  br label %_ZNK4llvm8ArrayRefIPKNS_6RecordEEcvSt6vectorIS3_SaIS3_EEEv.exit.i

_ZNSt12_Vector_baseIPKN4llvm6RecordESaIS3_EE11_M_allocateEm.exit.i.i.i.i: ; preds = %bb.a
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx.i.i) #20, !noalias !164 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 1
  br i1 %.not.i.i, label %bb.c, label %bb.b, !prof !165

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIPKN4llvm6RecordESaIS3_EE11_M_allocateEm.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.g, i64 %.idx.i.i, i1 false), !noalias !164
  br label %_ZNK4llvm8ArrayRefIPKNS_6RecordEEcvSt6vectorIS3_SaIS3_EEEv.exit.i

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIPKN4llvm6RecordESaIS3_EE11_M_allocateEm.exit.i.i.i.i
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !12, !noalias !164
  store ptr %i.l, ptr %i.j, align 8, !tbaa !12, !noalias !164
  br label %_ZNK4llvm8ArrayRefIPKNS_6RecordEEcvSt6vectorIS3_SaIS3_EEEv.exit.i

_ZNK4llvm8ArrayRefIPKNS_6RecordEEcvSt6vectorIS3_SaIS3_EEEv.exit.i: ; preds = %bb.c, %bb.b, %.thread.i.i.i.i
  %.sroa.12.0.i = phi ptr [ %i.i, %.thread.i.i.i.i ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 10 uses
  %.sroa.013.0.i = phi ptr [ null, %.thread.i.i.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.b ] ; 78 uses
  %.not.i.i.i.i4.i = icmp eq ptr %.sroa.013.0.i, %.sroa.12.0.i
  %.pre.i = ptrtoint ptr %.sroa.12.0.i to i64     ; 2 uses
  br i1 %.not.i.i.i.i4.i, label %"_ZN4llvm4sortIRSt6vectorIPKNS_6RecordESaIS4_EEZL19emitRISCVExtensionsRKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit.thread34.i", label %bb.d

"_ZN4llvm4sortIRSt6vectorIPKNS_6RecordESaIS4_EEZL19emitRISCVExtensionsRKNS_12RecordKeeperERNS_11raw_ostreamEE3$_0EEvOT_T0_.exit.thread34.i": ; preds = %_ZNK4llvm8ArrayRefIPKNS_6RecordEEcvSt6vectorIS3_SaIS3_EEEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  call void @_ZN4llvm12IfDefEmitterC2ERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(41) %38, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull @.str.7, i64 24, i1 noundef zeroext false)
  call void @_ZN4llvm12IfDefEmitterD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %38) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  call void @_ZN4llvm12IfDefEmitterC2ERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(41) %36, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nonnull @.str.24, i64 22, i1 noundef zeroext false)
  br label %_ZL25emitImpliedExtensionTableN4llvm8ArrayRefIPKNS_6RecordEEERNS_11raw_ostreamE.exit.i

bb.d:                                             ; preds = %_ZNK4llvm8ArrayRefIPKNS_6RecordEEcvSt6vectorIS3_SaIS3_EEEv.exit.i
  %i.m = ptrtoint ptr %.sroa.013.0.i to i64       ; 4 uses
  %i.n = sub i64 %.pre.i, %i.m                    ; 2 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 3 uses
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = xor i64 %i.q, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_SK_T0_T1_"(ptr %.sroa.013.0.i, ptr %.sroa.12.0.i, i64 noundef %i.r)
  %i.s = icmp sgt i64 %i.n, 128
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i.i, label %.preheader.i14.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 128 ; 2 uses
  %.sroa.0.016.i.i.i.i.i.i.i = getelementptr i8, ptr %.sroa.013.0.i, i64 8 ; 16 uses
  %i.u = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.016.i.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.u, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.016.i.i.i.i.i.i.i)
  br label %.peel.next.i.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.v = load <2 x ptr>, ptr %.sroa.013.0.i, align 8, !tbaa !12
  %i.w = shufflevector <2 x ptr> %i.v, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.w, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i:                         ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.peel.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.019.i.ptr.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 16 ; 3 uses
  %i.x = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i.i, label %bb.f

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i.i.i
  %i.y = load ptr, ptr %.sroa.0.019.i.ptr.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.013.0.i, i64 16, i1 false)
  store ptr %i.y, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.1.i.i.i.i.i.i

bb.f:                                             ; preds = %.peel.next.i.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.i.i.i.i.i.i)
  br label %.peel.next.i.1.i.i.i.i.i.i

.peel.next.i.1.i.i.i.i.i.i:                       ; preds = %bb.f, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i.i
  %.sroa.0.019.i.ptr.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 24 ; 3 uses
  %i.z = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.1.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.z, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.peel.next.i.1.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.1.i.i.i.i.i.i)
  br label %.peel.next.i.2.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i.i.i.i.i.i: ; preds = %.peel.next.i.1.i.i.i.i.i.i
  %i.aa = load ptr, ptr %.sroa.0.019.i.ptr.1.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.013.0.i, i64 24, i1 false)
  store ptr %i.aa, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.2.i.i.i.i.i.i

.peel.next.i.2.i.i.i.i.i.i:                       ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.1.i.i.i.i.i.i, %bb.g
  %.sroa.0.019.i.ptr.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 32 ; 3 uses
  %i.ab = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.2.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.ab, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.peel.next.i.2.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.2.i.i.i.i.i.i)
  br label %.peel.next.i.3.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i.i.i.i.i.i: ; preds = %.peel.next.i.2.i.i.i.i.i.i
  %i.ac = load ptr, ptr %.sroa.0.019.i.ptr.2.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.013.0.i, i64 32, i1 false)
  store ptr %i.ac, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.3.i.i.i.i.i.i

.peel.next.i.3.i.i.i.i.i.i:                       ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.2.i.i.i.i.i.i, %bb.h
  %.sroa.0.019.i.ptr.3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 40 ; 3 uses
  %i.ad = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.3.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.ad, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %.peel.next.i.3.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.3.i.i.i.i.i.i)
  br label %.peel.next.i.4.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i.i.i.i.i.i: ; preds = %.peel.next.i.3.i.i.i.i.i.i
  %i.ae = load ptr, ptr %.sroa.0.019.i.ptr.3.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.013.0.i, i64 40, i1 false)
  store ptr %i.ae, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.4.i.i.i.i.i.i

.peel.next.i.4.i.i.i.i.i.i:                       ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.3.i.i.i.i.i.i, %bb.i
  %.sroa.0.019.i.ptr.4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 48 ; 3 uses
  %i.af = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.4.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.af, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.peel.next.i.4.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.4.i.i.i.i.i.i)
  br label %.peel.next.i.5.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i.i.i.i.i.i: ; preds = %.peel.next.i.4.i.i.i.i.i.i
  %i.ag = load ptr, ptr %.sroa.0.019.i.ptr.4.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.013.0.i, i64 48, i1 false)
  store ptr %i.ag, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.5.i.i.i.i.i.i

.peel.next.i.5.i.i.i.i.i.i:                       ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.4.i.i.i.i.i.i, %bb.j
  %.sroa.0.019.i.ptr.5.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 56 ; 3 uses
  %i.ah = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.5.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.peel.next.i.5.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.5.i.i.i.i.i.i)
  br label %.peel.next.i.6.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i.i.i.i.i.i: ; preds = %.peel.next.i.5.i.i.i.i.i.i
  %i.ai = load ptr, ptr %.sroa.0.019.i.ptr.5.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.013.0.i, i64 56, i1 false)
  store ptr %i.ai, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.6.i.i.i.i.i.i

.peel.next.i.6.i.i.i.i.i.i:                       ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.5.i.i.i.i.i.i, %bb.k
  %.sroa.0.019.i.ptr.6.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 64 ; 3 uses
  %i.aj = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.6.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.aj, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.6.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.peel.next.i.6.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.6.i.i.i.i.i.i)
  br label %.peel.next.i.7.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.6.i.i.i.i.i.i: ; preds = %.peel.next.i.6.i.i.i.i.i.i
  %i.ak = load ptr, ptr %.sroa.0.019.i.ptr.6.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.013.0.i, i64 64, i1 false)
  store ptr %i.ak, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.7.i.i.i.i.i.i

.peel.next.i.7.i.i.i.i.i.i:                       ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.6.i.i.i.i.i.i, %bb.l
  %.sroa.0.019.i.ptr.7.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 72 ; 3 uses
  %i.al = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.7.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.al, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.7.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.peel.next.i.7.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.7.i.i.i.i.i.i)
  br label %.peel.next.i.8.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.7.i.i.i.i.i.i: ; preds = %.peel.next.i.7.i.i.i.i.i.i
  %i.am = load ptr, ptr %.sroa.0.019.i.ptr.7.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.013.0.i, i64 72, i1 false)
  store ptr %i.am, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.8.i.i.i.i.i.i

.peel.next.i.8.i.i.i.i.i.i:                       ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.7.i.i.i.i.i.i, %bb.m
  %.sroa.0.019.i.ptr.8.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 80 ; 3 uses
  %i.an = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.8.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.an, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.8.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.peel.next.i.8.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.8.i.i.i.i.i.i)
  br label %.peel.next.i.9.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.8.i.i.i.i.i.i: ; preds = %.peel.next.i.8.i.i.i.i.i.i
  %i.ao = load ptr, ptr %.sroa.0.019.i.ptr.8.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.013.0.i, i64 80, i1 false)
  store ptr %i.ao, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.9.i.i.i.i.i.i

.peel.next.i.9.i.i.i.i.i.i:                       ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.8.i.i.i.i.i.i, %bb.n
  %.sroa.0.019.i.ptr.9.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 88 ; 3 uses
  %i.ap = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.9.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.ap, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.9.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %.peel.next.i.9.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.9.i.i.i.i.i.i)
  br label %.peel.next.i.10.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.9.i.i.i.i.i.i: ; preds = %.peel.next.i.9.i.i.i.i.i.i
  %i.aq = load ptr, ptr %.sroa.0.019.i.ptr.9.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.013.0.i, i64 88, i1 false)
  store ptr %i.aq, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.10.i.i.i.i.i.i

.peel.next.i.10.i.i.i.i.i.i:                      ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.9.i.i.i.i.i.i, %bb.o
  %.sroa.0.019.i.ptr.10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 96 ; 3 uses
  %i.ar = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.10.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.ar, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.10.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.peel.next.i.10.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.10.i.i.i.i.i.i)
  br label %.peel.next.i.11.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.10.i.i.i.i.i.i: ; preds = %.peel.next.i.10.i.i.i.i.i.i
  %i.as = load ptr, ptr %.sroa.0.019.i.ptr.10.i.i.i.i.i.i, align 8, !tbaa !12
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.0.016.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.013.0.i, i64 96, i1 false)
  store ptr %i.as, ptr %.sroa.013.0.i, align 8, !tbaa !12
  br label %.peel.next.i.11.i.i.i.i.i.i

.peel.next.i.11.i.i.i.i.i.i:                      ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.10.i.i.i.i.i.i, %bb.p
  %.sroa.0.019.i.ptr.11.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 104 ; 3 uses
  %i.at = tail call fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL19emitRISCVExtensionsRKN4llvm12RecordKeeperERNS2_11raw_ostreamEE3$_0EclINS_17__normal_iteratorIPPKNS2_6RecordESt6vectorISE_SaISE_EEEESJ_EEbT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.11.i.i.i.i.i.i, ptr %.sroa.013.0.i)
  br i1 %i.at, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.11.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.peel.next.i.11.i.i.i.i.i.i
  tail call fastcc void @"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZL19emitRISCVExtensionsRKNS2_12RecordKeeperERNS2_11raw_ostreamEE3$_0EEEvT_T0_"(ptr nonnull %.sroa.0.019.i.ptr.11.i.i.i.i.i.i)
  br label %.peel.next.i.12.i.i.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.11.i.i.i.i.i.i: ; preds = %.peel.next.i.11.i.i.i.i.i.i
  %i.au = load ptr, ptr %.sroa.0.019.i.ptr.11.i.i.i.i.i.i, align 8, !tbaa !12
end_hunk_0
