Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LanaiMemAluCombiner?download=true
inline.NumInlined: 494
inline.NumDeleted: 322
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.llvm::cl::opt" = type { %"class.llvm::cl::Option", %"class.llvm::cl::opt_storage", %"class.llvm::cl::parser", %"class.std::function" }
%"class.llvm::cl::Option" = type { ptr, i16, i16, i16, i16, %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::StringRef", %"class.llvm::SmallVector", %"class.llvm::SmallPtrSet" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage" = type { [8 x i8] }
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [1 x ptr] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.llvm::cl::opt_storage" = type { i8, [7 x i8], %"struct.llvm::cl::OptionValue" }
%"struct.llvm::cl::OptionValue" = type { %"struct.llvm::cl::OptionValueBase.base", [6 x i8] }
%"struct.llvm::cl::OptionValueBase.base" = type { %"class.llvm::cl::OptionValueCopy.base" }
%"class.llvm::cl::OptionValueCopy.base" = type <{ %"struct.llvm::cl::GenericOptionValue", i8, i8 }>
%"struct.llvm::cl::GenericOptionValue" = type { ptr }
%"class.llvm::cl::parser" = type { %"class.llvm::cl::basic_parser" }
%"class.llvm::cl::basic_parser" = type { %"class.llvm::cl::basic_parser_impl" }
%"class.llvm::cl::basic_parser_impl" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"struct.std::once_flag" = type { i32 }
%"struct.llvm::AnalysisSetKey" = type { [8 x i8] }
%class.anon = type { ptr, ptr }
%"class.std::reference_wrapper" = type { ptr }
%"class.llvm::PreservedAnalyses" = type { %"class.llvm::SmallPtrSet.5", %"class.llvm::SmallPtrSet.8" }
%"class.llvm::SmallPtrSet.5" = type { %"class.llvm::SmallPtrSetImpl.base.7", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.7" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSet.8" = type { %"class.llvm::SmallPtrSetImpl.base.10", [2 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.10" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.(anonymous namespace)::LanaiMemAluCombinerImpl" = type { ptr }
%"class.llvm::MachineOperand" = type { i32, %union.anon.164, ptr, %"union.llvm::MachineOperand::ContentsUnion" }
%union.anon.164 = type { i32 }
%"union.llvm::MachineOperand::ContentsUnion" = type { %"class.llvm::ArrayRef.165" }
%"class.llvm::ArrayRef.165" = type { ptr, i64 }

$_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev = comdat any

$_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv = comdat any

$_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv = comdat any

$_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE = comdat any

$_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv = comdat any

$_ZTVN4llvm2cl11OptionValueIbEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZZN4llvm5Lanai14splsIdempotentEjE5Table = internal unnamed_addr constant [6 x [2 x i32]] [[2 x i32] [i32 361, i32 361], [2 x i32] [i32 363, i32 363], [2 x i32] [i32 365, i32 365], [2 x i32] [i32 367, i32 367], [2 x i32] [i32 405, i32 405], [2 x i32] [i32 407, i32 407]], align 16
@_ZL21DisableMemAluCombiner = internal global %"class.llvm::cl::opt" zeroinitializer, align 8
@.str = private unnamed_addr constant [31 x i8] c"disable-lanai-mem-alu-combiner\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Do not combine ALU and memory operators\00", align 1
@__dso_handle = external hidden global i8
@_ZL43InitializeLanaiMemAluCombinerLegacyPassFlag = internal global %"struct.std::once_flag" zeroinitializer, align 4
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Lanai memory ALU combiner pass\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"lanai-mem-alu-combiner\00", align 1
@_ZN12_GLOBAL__N_125LanaiMemAluCombinerLegacy2IDE = internal global i8 0, align 1
@_ZTVN12_GLOBAL__N_125LanaiMemAluCombinerLegacyE = internal unnamed_addr constant { [24 x ptr] } { [24 x ptr] [ptr null, ptr null, ptr @_ZN4llvm4PassD2Ev, ptr @_ZN12_GLOBAL__N_125LanaiMemAluCombinerLegacyD0Ev, ptr @_ZNK12_GLOBAL__N_125LanaiMemAluCombinerLegacy11getPassNameEv, ptr @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE, ptr @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE, ptr @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE, ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE, ptr @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE, ptr @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv, ptr @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE, ptr @_ZN4llvm4Pass13releaseMemoryEv, ptr @_ZN4llvm4Pass18getAsImmutablePassEv, ptr @_ZN4llvm4Pass18getAsPMDataManagerEv, ptr @_ZNK4llvm4Pass14verifyAnalysisEv, ptr @_ZN4llvm4Pass17dumpPassStructureEj, ptr @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE, ptr @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE, ptr @_ZN12_GLOBAL__N_125LanaiMemAluCombinerLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE, ptr @_ZNK12_GLOBAL__N_125LanaiMemAluCombinerLegacy21getRequiredPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv, ptr @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv] }, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Lanai load / store optimization pass\00", align 1
@_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZSt15__once_callable = external thread_local local_unnamed_addr global ptr, align 8
@_ZSt11__once_call = external thread_local local_unnamed_addr global ptr, align 8
@_ZN4llvm11CFGAnalyses6SetKeyE = external global %"struct.llvm::AnalysisSetKey", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_LanaiMemAluCombiner.cpp, ptr null }]
@switch.table._ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl20runOnMachineFunctionERN4llvm15MachineFunctionE = private unnamed_addr constant [84 x i8] c"\00\00\FF\FF\FF\FF\04\04\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\05\05\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\17\FF\FF\FF\FF7\FF'\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\02\02\FF\FF\FF\FF\FF\FF\FF\06\06", align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZN4llvm5Lanai14splsIdempotentEj(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %.023 = phi i32 [ 6, %bb.a ], [ %.1, %bb.c ]    ; 3 uses
  %.01522 = phi i32 [ 0, %bb.a ], [ %.116, %bb.c ] ; 4 uses
  %i.a = sub nuw i32 %.023, %.01522
  %i.b = lshr i32 %i.a, 1
  %i.c = add i32 %i.b, %.01522                    ; 3 uses
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm5Lanai14splsIdempotentEjE5Table, i64 %i.d
  %i.f = load i32, ptr %i.e, align 8, !tbaa !9    ; 2 uses
  %i.g = icmp eq i32 %0, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp ult i32 %0, %i.f                    ; 2 uses
  %i.i = add nuw i32 %i.c, 1
  %.116 = select i1 %i.h, i32 %.01522, i32 %i.i   ; 3 uses
  %.1 = select i1 %i.h, i32 %i.c, i32 %.023       ; 3 uses
  %i.j = icmp ult i32 %.116, %.1
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.b, %bb.c
  %.015.lcssa = phi i32 [ %.01522, %bb.b ], [ %.116, %bb.c ]
  %.0.lcssa = phi i32 [ %.023, %bb.b ], [ %.1, %bb.c ]
  %i.k = icmp eq i32 %.015.lcssa, %.0.lcssa
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm5Lanai14splsIdempotentEjE5Table, i64 %i.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.019 = phi i32 [ %i.n, %bb.e ], [ -1, %bb.d ]
  ret i32 %.019
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #15, !inline_history !42 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.i) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #15
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm39initializeLanaiMemAluCombinerLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %class.anon, align 8                ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  store ptr @_ZL43initializeLanaiMemAluCombinerLegacyPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !46
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !22
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !22
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL43InitializeLanaiMemAluCombinerLegacyPassFlag, ptr noundef nonnull @__once_proxy) #15 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #16
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !22
  store ptr null, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL43initializeLanaiMemAluCombinerLegacyPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #4 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 9 uses
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !25
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 30, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !25
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 22, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN12_GLOBAL__N_125LanaiMemAluCombinerLegacy2IDE, ptr %i.c, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_125LanaiMemAluCombinerLegacyEEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !52
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm35createLanaiMemAluCombinerLegacyPassEv() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN12_GLOBAL__N_125LanaiMemAluCombinerLegacy2IDE, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTVN12_GLOBAL__N_125LanaiMemAluCombinerLegacyE, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm23LanaiMemAluCombinerPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind noalias writable sret(%"class.llvm::PreservedAnalyses") align 8 %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(72) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.(anonymous namespace)::LanaiMemAluCombinerImpl", align 8 ; 3 uses
  %5 = alloca %"class.llvm::PreservedAnalyses", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(1065) %2)
  br i1 %i.a, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::PreservedAnalyses") align 8 %5) #15
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !59
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = load i8, ptr %i.e, align 8, !tbaa !17, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !59   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.k, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i
  %.not17.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not17.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01218.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.l
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %bb.e
  %.01218.i.i.i.i.i = phi ptr [ %i.m, %bb.e ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %.01218.i.i.i.i.i, align 8, !tbaa !22
  %.not15.i.i.i.i.i = icmp eq ptr %i.n, @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE
  br i1 %.not15.i.i.i.i.i, label %.loopexit, label %bb.e

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i: ; preds = %bb.c
  %i.o = call noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull @_ZN4llvm17PreservedAnalyses14AllAnalysesKeyE) #15
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i, label %.loopexit

_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.thread.i.i: ; preds = %bb.e, %_ZNK4llvm17PreservedAnalyses15areAllPreservedEv.exit.i.i, %bb.d, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = load i8, ptr %i.p, align 8, !tbaa !17, !range !18, !noalias !60, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN4llvm23LanaiMemAluCombinerPass3runERNS_15MachineFunctionERNS_15AnalysisManagerIS1_JEEE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !17, !range !18, !noundef !19
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !20
  call void @free(ptr noundef %i.at) #15
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.h, %.loopexit
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.av = load i8, ptr %i.au, align 8, !tbaa !17, !range !18, !noundef !19
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN4llvm17PreservedAnalysesD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  %i.ax = load ptr, ptr %5, align 8, !tbaa !20
  call void @free(ptr noundef %i.ax) #15
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit

_ZN4llvm17PreservedAnalysesD2Ev.exit:             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %.critedge

.critedge:                                        ; preds = %.thread, %_ZN4llvm17PreservedAnalysesD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(1065) %1) unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %3 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %4 = alloca %"class.llvm::MachineOperand", align 8 ; 6 uses
  %5 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %6 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %7 = alloca %"class.llvm::MachineOperand", align 8 ; 7 uses
  %.sroa.03.i.i = alloca ptr, align 8             ; 10 uses
  %.sroa.060.i = alloca ptr, align 8              ; 9 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL21DisableMemAluCombiner, i64 120), align 8, !tbaa !39, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195, !nonnull !19, !align !40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(519272) %i.d) #15
  store ptr %i.h, ptr %0, align 8, !tbaa !198
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %.sroa.09.027 = load ptr, ptr %i.i, align 8, !tbaa !199 ; 2 uses
  %.not28 = icmp eq ptr %.sroa.09.027, %i.j
  br i1 %.not28, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl25combineMemAluInBasicBlockEPN4llvm17MachineBasicBlockE.exit
  %.sroa.09.030 = phi ptr [ %.sroa.09.027, %.lr.ph ], [ %.sroa.09.0, %_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl25combineMemAluInBasicBlockEPN4llvm17MachineBasicBlockE.exit ] ; 5 uses
  %.0829 = phi i1 [ false, %.lr.ph ], [ %.6.i, %_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl25combineMemAluInBasicBlockEPN4llvm17MachineBasicBlockE.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.060.i)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.030, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !204 ; 3 uses
  store ptr %i.aa, ptr %.sroa.060.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.030, i64 48 ; 4 uses
  %.not7597.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not7597.i, label %_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl25combineMemAluInBasicBlockEPN4llvm17MachineBasicBlockE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.09.030, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.09.030, i64 40 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.060.0..sroa.060.0..sroa.060.0..sroa.0.0.copyload.i.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.jz, %.loopexit.i ] ; 28 uses
  %.098.i = phi i1 [ false, %.lr.ph.i ], [ %.5.i, %.loopexit.i ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.060.0..sroa.060.0..sroa.060.0..sroa.0.0.copyload.i.i, i64 64 ; 6 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !205 ; 6 uses
  %i.ag = icmp ugt i64 %i.af, 7
  br i1 %i.ag, label %bb.e, label %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ah = and i64 %i.af, 7                        ; 2 uses
  switch i64 %i.ah, label %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.thread.i [
    i64 0, label %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread7.i.i
    i64 3, label %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.i.i
  ]

_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread7.i.i: ; preds = %bb.e
  %i.ai = inttoptr i64 %i.af to ptr
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !205
  br label %bb.f

_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.i.i: ; preds = %bb.e
  %i.aj = and i64 %i.af, -8
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !207
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.f, label %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.thread.i

bb.f:                                             ; preds = %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.i.i, %_ZNK4llvm12MachineInstr16hasOneMemOperandEv.exit.thread7.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.060.0..sroa.060.0..sroa.060.0..sroa.0.0.copyload.i.i, i64 52
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !220 ; 3 uses
  %i.ap = call fastcc noundef i32 @_ZN12_GLOBAL__N_112mergedOpcodeEjb(i32 noundef %i.ao, i1 noundef zeroext false)
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = icmp eq i64 %i.ah, 0
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = inttoptr i64 %i.af to ptr               ; 2 uses
  store ptr %i.as, ptr %i.ae, align 8, !tbaa !205
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.at = and i64 %i.af, -8
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.pre.i.i = load ptr, ptr %i.av, align 8, !tbaa !222
  br label %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i.i

_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i.i: ; preds = %bb.i, %bb.h
  %i.aw = phi ptr [ %i.as, %bb.h ], [ %.pre.i.i, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i16, ptr %i.ax, align 8, !tbaa !236
  %i.az = and i16 %i.ay, 4
  %.not.i.i = icmp eq i16 %i.az, 0
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.i, label %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.thread.i

_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.i: ; preds = %_ZNK4llvm12MachineInstr17memoperands_beginEv.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = and i16 %i.bb, 3840
  %.not9.i.i = icmp eq i16 %i.bc, 0
  br i1 %.not9.i.i, label %bb.j, label %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.thread.i

bb.j:                                             ; preds = %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.060.0..sroa.060.0..sroa.060.0..sroa.0.0.copyload.i.i, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !237 ; 8 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !205 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !205 ; 5 uses
  %i.bj = and i64 %.sroa.3.0.copyload.i, 192
  %i.bk = icmp ne i64 %i.bj, 0
  %.not.i = icmp eq i32 %i.bg, %i.bi
  %or.cond.i = or i1 %i.bk, %.not.i
  br i1 %or.cond.i, label %_ZN12_GLOBAL__N_121isNonVolatileMemoryOpERKN4llvm12MachineInstrE.exit.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 64 ; 4 uses
  %i.bn = and i32 %i.ao, 65535                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 68 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 80 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit53.i, %.preheader.i
  %i.br = phi i1 [ true, %.preheader.i ], [ false, %_ZN4llvm17MachineBasicBlock5eraseENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE.exit53.i ] ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  %.023.i.i.i.i = phi i32 [ 6, %bb.k ], [ %.1.i.i.i.i, %bb.m ] ; 3 uses
  %.01522.i.i.i.i = phi i32 [ 0, %bb.k ], [ %.116.i.i.i.i, %bb.m ] ; 4 uses
  %i.bs = sub nuw i32 %.023.i.i.i.i, %.01522.i.i.i.i
  %i.bt = lshr i32 %i.bs, 1
  %i.bu = add i32 %i.bt, %.01522.i.i.i.i          ; 3 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm5Lanai14splsIdempotentEjE5Table, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !9  ; 2 uses
  %i.by = icmp eq i32 %i.bx, %i.bn
  br i1 %i.by, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = icmp ugt i32 %i.bx, %i.bn               ; 2 uses
  %i.ca = add nuw i32 %i.bu, 1
  %.116.i.i.i.i = select i1 %i.bz, i32 %.01522.i.i.i.i, i32 %i.ca ; 3 uses
  %.1.i.i.i.i = select i1 %i.bz, i32 %i.bu, i32 %.023.i.i.i.i ; 3 uses
  %i.cb = icmp ult i32 %.116.i.i.i.i, %.1.i.i.i.i
  br i1 %i.cb, label %bb.l, label %bb.n, !llvm.loop !0

bb.n:                                             ; preds = %bb.m, %bb.l
  %.015.lcssa.i.i.i.i = phi i32 [ %.01522.i.i.i.i, %bb.l ], [ %.116.i.i.i.i, %bb.m ]
  %.0.lcssa.i.i.i.i = phi i32 [ %.023.i.i.i.i, %bb.l ], [ %.1.i.i.i.i, %bb.m ]
  %i.cc = icmp eq i32 %.015.lcssa.i.i.i.i, %.0.lcssa.i.i.i.i
  br i1 %i.cc, label %_ZN12_GLOBAL__N_16isSplsEt.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @_ZZN4llvm5Lanai14splsIdempotentEjE5Table, i64 %i.bv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !9
  %i.cg = icmp eq i32 %i.cf, %i.bn
  br label %_ZN12_GLOBAL__N_16isSplsEt.exit.i.i

_ZN12_GLOBAL__N_16isSplsEt.exit.i.i:              ; preds = %bb.o, %bb.n
  %.019.i.i.i.i = phi i1 [ %i.cg, %bb.o ], [ false, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i)
  store ptr %.sroa.060.0..sroa.060.0..sroa.060.0..sroa.0.0.copyload.i.i, ptr %.sroa.03.i.i, align 8
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN12_GLOBAL__N_16isSplsEt.exit.i.i
  %i.ch = load ptr, ptr %i.z, align 8, !tbaa !204
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN12_GLOBAL__N_16isSplsEt.exit.i.i
  %storemerge.i.i = phi ptr [ %i.ch, %bb.p ], [ %i.ab, %_ZN12_GLOBAL__N_16isSplsEt.exit.i.i ] ; 2 uses
  %.not1228.i.i = icmp eq ptr %.sroa.060.0..sroa.060.0..sroa.060.0..sroa.0.0.copyload.i.i, %storemerge.i.i
  br i1 %.not1228.i.i, label %_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl27findClosestSuitableAluInstrEPN4llvm17MachineBasicBlockERKNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.i.backedge
  %storemerge132429.i.i = phi ptr [ %storemerge13.i.i, %.lr.ph.i.i.backedge ], [ %.sroa.060.0..sroa.060.0..sroa.060.0..sroa.0.0.copyload.i.i, %bb.q ] ; 5 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %storemerge132429.i.i, align 8 ; 2 uses
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.ci = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.cj = inttoptr i64 %i.ci to ptr               ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i = load i64, ptr %i.cj, align 8
  %i.ck = and i64 %.0.copyload.i.i.i.i.i.i.i4.i.i.i.i, 4
  %.not.i5.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i5.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i: ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 44
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !238
  %i.cn = and i32 %i.cm, 4
  %.not45.i.i.i.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not45.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi ptr [ %i.cp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ], [ %i.cj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ]
  %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %.sroa.0.06.i.i.i.i.i, align 8
  %i.co = and i64 %.0.copyload.i.i.i.i.i.i1.i.i.i.i.i, -8
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 44
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !238
  %i.cs = and i32 %i.cr, 4
  %.not4.i.i.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not4.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, !llvm.loop !64

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.ct = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i, 4
  %.not.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i20.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i20.i.i: ; preds = %bb.s
  %i.cu = getelementptr inbounds nuw i8, ptr %storemerge132429.i.i, i64 44
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !238
  %i.cw = and i32 %i.cv, 8
  %.not34.i.i.i.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not34.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i21.i.i

_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i21.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i20.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i21.i.i
  %.sroa.0.05.i.i.i.i.i = phi ptr [ %i.cy, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i21.i.i ], [ %storemerge132429.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i20.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !204 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 44
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !238
  %i.db = and i32 %i.da, 8
  %.not3.i.i.i.i.i = icmp eq i32 %i.db, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, label %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i21.i.i, !llvm.loop !65

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i21.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i20.i.i, %bb.s
  %.sroa.0.1.i.i.i19.i.i = phi ptr [ %storemerge132429.i.i, %bb.s ], [ %storemerge132429.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i20.i.i ], [ %i.cy, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i21.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i19.i.i, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !204
  br label %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i

_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i: ; preds = %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i, %bb.r
  %storemerge13.i.i = phi ptr [ %i.dd, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i.i ], [ %i.cj, %bb.r ], [ %i.cj, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.preheader.i.i.i.i.i ], [ %i.cp, %_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_12MachineInstrELb1ELb1EvLb0EvEELb0ELb0EE5isEndEv.exit.i.i.i.i.i ] ; 11 uses
  %i.de = icmp eq ptr %storemerge13.i.i, %storemerge.i.i
  br i1 %i.de, label %_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl27findClosestSuitableAluInstrEPN4llvm17MachineBasicBlockERKNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEmmEv.exit.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %storemerge13.i.i, i64 52
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !220 ; 2 uses
  %.off.i.i.i = add i32 %i.dg, -14
  %switch.i.i.i = icmp ult i32 %.off.i.i.i, 5
  br i1 %switch.i.i.i, label %.lr.ph.i.i.backedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = getelementptr inbounds nuw i8, ptr %storemerge13.i.i, i64 40
  %i.di = load i24, ptr %i.dh, align 8            ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %storemerge13.i.i, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !237 ; 14 uses
  switch i24 %i.di, label %.critedge2.i.i..lr.ph.i.i_crit_edge.i [
    i24 3, label %bb.v
    i24 0, label %.lr.ph.i.i.backedge
  ]

bb.v:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 64
  %i.dn = load i32, ptr %i.dk, align 8
  %i.do = trunc i32 %i.dn to i8                   ; 2 uses
  %i.dp = load i32, ptr %i.bl, align 8            ; 2 uses
  %i.dq = trunc i32 %i.dp to i8
  %.not.i.i.i.i = icmp eq i8 %i.do, %i.dq
  br i1 %.not.i.i.i.i, label %bb.w, label %.critedge2.i.thread.i.i

bb.w:                                             ; preds = %bb.v
  switch i8 %i.do, label %.critedge2.i.thread.i.i [
    i8 0, label %_ZN12_GLOBAL__N_113isSameOperandERKN4llvm14MachineOperandES3_.exit.i.i.i
    i8 1, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.w
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !205 ; 2 uses
  %i.dt = load i64, ptr %i.bo, align 8, !tbaa !205
  %i.du = icmp eq i64 %i.ds, %i.dt
  br i1 %i.du, label %.thread.i.i.i, label %.critedge2.i.thread.i.i

_ZN12_GLOBAL__N_113isSameOperandERKN4llvm14MachineOperandES3_.exit.i.i.i: ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !205
  %i.dx = icmp eq i32 %i.dw, %i.bi
  br i1 %i.dx, label %bb.x, label %.critedge2.i.thread.i.i

bb.x:                                             ; preds = %_ZN12_GLOBAL__N_113isSameOperandERKN4llvm14MachineOperandES3_.exit.i.i.i
  %i.dy = load i32, ptr %i.dl, align 8
  %i.dz = and i32 %i.dy, 255
  %.not.i29.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i29.i.i.i, label %_ZN12_GLOBAL__N_113isSameOperandERKN4llvm14MachineOperandES3_.exit31.i.i.i, label %.critedge2.i.thread.i.i

.thread.i.i.i:                                    ; preds = %.split.i.i.i
  %i.ea = load i32, ptr %i.dl, align 8
  %i.eb = and i32 %i.ea, 255
  %.not.i297.i.i.i = icmp eq i32 %i.eb, 1
  br i1 %.not.i297.i.i.i, label %.split5.i.i.i, label %.critedge2.i.thread.i.i

.split5.i.i.i:                                    ; preds = %.thread.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !205
  %i.ee = icmp eq i64 %i.ds, %i.ed
  br i1 %i.ee, label %bb.y, label %.critedge2.i.thread.i.i

_ZN12_GLOBAL__N_113isSameOperandERKN4llvm14MachineOperandES3_.exit31.i.i.i: ; preds = %bb.x
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 36
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !205
  %i.eh = icmp eq i32 %i.bi, %i.eg
  br i1 %i.eh, label %bb.y, label %.critedge2.i.thread.i.i

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_113isSameOperandERKN4llvm14MachineOperandES3_.exit31.i.i.i, %.split5.i.i.i
  %i.ei = load i32, ptr %i.dm, align 8
  %trunc.i.i.i = trunc i32 %i.ei to i8
  switch i8 %trunc.i.i.i, label %.critedge2.i.thread.i.i [
    i8 1, label %bb.z
    i8 0, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y
  %.not26.i.i.i = icmp eq i32 %i.dg, 346
  br i1 %.not26.i.i.i, label %bb.aa, label %.critedge2.i.thread.i.i

bb.aa:                                            ; preds = %bb.z
  %i.ej = load i32, ptr %i.bm, align 8
  %trunc6.i.i.i = trunc i32 %i.ej to i8
  switch i8 %trunc6.i.i.i, label %.critedge2.i.thread.i.i [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.ek = load i32, ptr %i.bp, align 4, !tbaa !205
  %i.el = icmp eq i32 %i.ek, 7
  br i1 %i.el, label %_ZN12_GLOBAL__N_123LanaiMemAluCombinerImpl27findClosestSuitableAluInstrEPN4llvm17MachineBasicBlockERKNS1_26MachineInstrBundleIteratorINS1_12MachineInstrELb0EEEb.exit.i, label %.critedge2.i.thread.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.em = load i64, ptr %i.bq, align 8, !tbaa !205 ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dk, i64 80
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !205 ; 3 uses
  br i1 %i.en, label %bb.ad, label %._crit_edge.i.i.i

end_hunk_1
