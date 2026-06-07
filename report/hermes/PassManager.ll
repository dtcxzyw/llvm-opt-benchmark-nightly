inline.NumInlined: 478
inline.NumDeleted: 337
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.llvh::StringRef" = type { ptr, i64 }
%"class.llvh::SmallVector.43" = type { %"class.llvh::SmallVectorImpl.44", %"struct.llvh::SmallVectorStorage.47" }
%"class.llvh::SmallVectorImpl.44" = type { %"class.llvh::SmallVectorTemplateBase.45" }
%"class.llvh::SmallVectorTemplateBase.45" = type { %"class.llvh::SmallVectorTemplateCommon.46" }
%"class.llvh::SmallVectorTemplateCommon.46" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage.47" = type { [32 x %"struct.llvh::AlignedCharArrayUnion.48"] }
%"struct.llvh::AlignedCharArrayUnion.48" = type { %"struct.llvh::AlignedCharArray.49" }
%"struct.llvh::AlignedCharArray.49" = type { [1 x i8] }

$_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_ = comdat any

$_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [20 x i8] c"Unhandled pass type\00", align 1
@_ZTVN6hermes12_GLOBAL__N_110DumpModuleE = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes12_GLOBAL__N_110DumpModuleD2Ev, ptr @_ZN6hermes12_GLOBAL__N_110DumpModuleD0Ev, ptr @_ZN6hermes12_GLOBAL__N_110DumpModule11runOnModuleEPNS_6ModuleE] }, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"*** BEFORE Module pass\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"*** AFTER Module pass\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@_ZTVN6hermes12_GLOBAL__N_112DumpFunctionE = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr null, ptr @_ZN6hermes12_GLOBAL__N_112DumpFunctionD2Ev, ptr @_ZN6hermes12_GLOBAL__N_112DumpFunctionD0Ev, ptr @_ZN6hermes12_GLOBAL__N_112DumpFunction13runOnFunctionEPNS_8FunctionE] }, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"*** BEFORE Function pass\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"*** AFTER Function pass\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6hermes11PassManagerC1ERKNS_22CodeGenerationSettingsE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN6hermes11PassManagerC2ERKNS_22CodeGenerationSettingsE
@_ZN6hermes11PassManagerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN6hermes11PassManagerD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6hermes11PassManagerC2ERKNS_22CodeGenerationSettingsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(392) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11PassManagerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !14 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.e) #14, !inline_history !18
  br label %_ZSt8_DestroyISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !19

_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #15
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EEEvT_S7_.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11PassManager12makeDumpPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !14     ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = icmp ne i32 %i.c, 1
  %.not20 = icmp eq ptr %i.a, null                ; 2 uses
  %.not = or i1 %.not20, %i.d
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN6hermes10ModulePassESt14default_deleteIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ne i32 %i.c, 0
  %.not6 = or i1 %.not20, %i.e
  br i1 %.not6, label %bb.c, label %_ZNSt10unique_ptrIN6hermes10ModulePassESt14default_deleteIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNSt10unique_ptrIN6hermes10ModulePassESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %bb.a
  %.sink35 = phi i32 [ 1, %bb.a ], [ 0, %bb.b ]
  %.sink30 = phi ptr [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12_GLOBAL__N_110DumpModuleE, i64 16), %bb.a ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12_GLOBAL__N_112DumpFunctionE, i64 16), %bb.b ]
  store ptr null, ptr %2, align 8, !tbaa !14
  %i.f = load ptr, ptr %1, align 8, !tbaa !28, !nonnull !33, !align !34
  %i.g = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4dbgsEv() #14
  %i.h = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17, !noalias !33 ; 8 uses
  %i.i = ptrtoint ptr %i.a to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.0.copyload.i.i.i9 = load ptr, ptr %i.j, align 8, !tbaa !35, !noalias !33
  %.sroa.2.0..sroa_idx.i.i.i10 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.2.0.copyload.i.i.i11 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i10, align 8, !tbaa !36, !noalias !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %.sink35, ptr %i.k, align 8, !tbaa !22, !noalias !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i9, ptr %i.l, align 8, !tbaa !35, !noalias !33
  %.sroa.2.0..sroa_idx.i.i.i.i12 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i11, ptr %.sroa.2.0..sroa_idx.i.i.i.i12, align 8, !tbaa !36, !noalias !33
  store ptr %.sink30, ptr %i.h, align 8, !tbaa !16, !noalias !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.f, ptr %i.m, align 8, !tbaa !7, !noalias !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.g, ptr %i.n, align 8, !tbaa !37, !noalias !33
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i64 %i.i, ptr %i.o, align 8, !tbaa !39, !noalias !33
  store ptr %i.h, ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4dbgsEv() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noreturn
declare void @_ZN6hermes12hermes_fatalEPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11PassManager7addPassESt10unique_ptrINS_4PassESt14default_deleteIS2_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %3 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28, !nonnull !33, !align !34 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %.val2 = load ptr, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 24
  %.val3 = load i64, ptr %i.g, align 8
  %i.h = load i8, ptr %i.d, align 8, !tbaa !42, !range !50, !noundef !33
  %i.i = trunc nuw i8 %i.h to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  br i1 %i.i, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.c

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.val2, ptr %3, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.val3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.l = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !28, !nonnull !33, !align !34 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.o = load ptr, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %.val = load ptr, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val1 = load i64, ptr %i.q, align 8
  %i.r = load i8, ptr %i.n, align 8, !tbaa !42, !range !50, !noundef !33
  %i.s = trunc nuw i8 %i.r to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  br i1 %i.s, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit4.thread, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit4

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit4.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.c

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit4: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  store ptr %.val, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.val1, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.v = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %i.v, label %bb.c, label %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit8

bb.c:                                             ; preds = %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit4.thread, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit4, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit
  %i.w = load i64, ptr %1, align 8, !tbaa !14     ; 3 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  store ptr null, ptr %1, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !22, !noalias !51 ; 2 uses
  %i.aa = icmp ne i32 %i.z, 1
  %.not20.i = icmp eq i64 %i.w, 0                 ; 2 uses
  %.not.i = or i1 %.not20.i, %i.aa
  br i1 %.not.i, label %bb.d, label %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp ne i32 %i.z, 0
  %.not6.i = or i1 %.not20.i, %i.ab
  br i1 %.not6.i, label %bb.e, label %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str) #16, !noalias !51
  unreachable

_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %bb.c
  %.sink35.i = phi i32 [ 1, %bb.c ], [ 0, %bb.d ]
  %.sink30.i = phi ptr [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12_GLOBAL__N_110DumpModuleE, i64 16), %bb.c ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12_GLOBAL__N_112DumpFunctionE, i64 16), %bb.d ]
  %i.ac = load ptr, ptr %0, align 8, !tbaa !28, !noalias !51, !nonnull !33, !align !34
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4dbgsEv() #14, !noalias !51
  %i.ae = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #17, !noalias !51 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.0.0.copyload.i.i.i9.i = load ptr, ptr %i.af, align 8, !tbaa !35, !noalias !51
  %.sroa.2.0..sroa_idx.i.i.i10.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.2.0.copyload.i.i.i11.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i10.i, align 8, !tbaa !36, !noalias !51
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %.sink35.i, ptr %i.ag, align 8, !tbaa !22, !noalias !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i9.i, ptr %i.ah, align 8, !tbaa !35, !noalias !51
  %.sroa.2.0..sroa_idx.i.i.i.i12.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 %.sroa.2.0.copyload.i.i.i11.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i12.i, align 8, !tbaa !36, !noalias !51
  store ptr %.sink30.i, ptr %i.ae, align 8, !tbaa !16, !noalias !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.ac, ptr %i.ai, align 8, !tbaa !7, !noalias !51
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !37, !noalias !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 %i.w, ptr %i.ak, align 8, !tbaa !39, !noalias !51
  %i.al = load ptr, ptr %1, align 8, !tbaa !14    ; 3 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit8, label %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.al) #14, !inline_history !54
  br label %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit8: ; preds = %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6hermes4PassEEclEPS1_.exit.i.i.i.i, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !13 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %.not.i9 = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i9, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit8
  %i.at = load i64, ptr %1, align 8, !tbaa !14
  store i64 %i.at, ptr %i.aq, align 8, !tbaa !14
  store ptr null, ptr %1, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.ap, align 8, !tbaa !13
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN6hermes4PassESt14default_deleteIS1_EED2Ev.exit8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr %i.aq, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN6hermes4PassESt14default_deleteIS2_EESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11PassManager3runEPNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %.not1011 = icmp eq ptr %i.d, %i.f
  br i1 %.not1011, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.sroa.07.012 = phi ptr [ %i.l, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.07.012, align 8, !tbaa !14 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %1) #14 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 8 ; 2 uses
  %.not10 = icmp eq ptr %i.l, %i.f
  br i1 %.not10, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes11PassManager3runEPNS_6ModuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallVector.43", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 32, ptr %i.c, align 4, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !100  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !100  ; 2 uses
  %.not4148 = icmp eq ptr %i.e, %i.g
  br i1 %.not4148, label %_ZN4llvh11SmallVectorIN6hermes5TimerELj32EED2Ev.exit, label %.lr.ph50

.lr.ph50:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  br label %bb.c

_ZNSt10unique_ptrIN6hermes10TimerGroupESt14default_deleteIS1_EED2Ev.exit: ; preds = %.loopexit
  %.pre = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  %i.j = icmp eq ptr %.pre, %i.a
  br i1 %i.j, label %_ZN4llvh11SmallVectorIN6hermes5TimerELj32EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6hermes10TimerGroupESt14default_deleteIS1_EED2Ev.exit
  call void @free(ptr noundef %.pre) #14
  br label %_ZN4llvh11SmallVectorIN6hermes5TimerELj32EED2Ev.exit

_ZN4llvh11SmallVectorIN6hermes5TimerELj32EED2Ev.exit: ; preds = %bb.a, %_ZNSt10unique_ptrIN6hermes10TimerGroupESt14default_deleteIS1_EED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void

bb.c:                                             ; preds = %.lr.ph50, %.loopexit
  %.sroa.032.049 = phi ptr [ %i.e, %.lr.ph50 ], [ %i.aa, %.loopexit ] ; 2 uses
  %i.k = load ptr, ptr %.sroa.032.049, align 8, !tbaa !14 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = icmp ne i32 %i.m, 0
  %.not42 = icmp eq ptr %i.k, null
  %.not = or i1 %.not42, %i.n
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.026.045 = load ptr, ptr %i.h, align 8, !tbaa !104 ; 2 uses
  %.not4346 = icmp eq ptr %.sroa.026.045, %i.i
  br i1 %.not4346, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.f
  %.sroa.026.047 = phi ptr [ %.sroa.026.0, %bb.f ], [ %.sroa.026.045, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.026.047, i64 248
  %i.p = load i32, ptr %i.o, align 8, !tbaa !55
  %.not44 = icmp eq i32 %i.p, 0
  br i1 %.not44, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull %.sroa.026.047) #14 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.026.047, i64 8
  %.sroa.026.0 = load ptr, ptr %i.u, align 8, !tbaa !104 ; 2 uses
  %.not43 = icmp eq ptr %.sroa.026.0, %i.i
  br i1 %.not43, label %.loopexit, label %.lr.ph

.critedge:                                        ; preds = %bb.c
  %i.v = icmp eq i32 %i.m, 1
  %spec.select.i25 = select i1 %i.v, ptr %i.k, ptr null ; 2 uses
  %.not23.not = icmp eq ptr %spec.select.i25, null
  br i1 %.not23.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef %1) #14 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %spec.select.i25) ]
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.049, i64 8 ; 2 uses
  %.not41 = icmp eq ptr %i.aa, %i.g
  br i1 %.not41, label %_ZNSt10unique_ptrIN6hermes10TimerGroupESt14default_deleteIS1_EED2Ev.exit, label %bb.c
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = select i1 %.not.i.i, i32 %i.g, i32 4     ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36
  %i.j = tail call i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #14
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.h, -1                         ; 2 uses
  %i.m = and i32 %i.l, %i.k
  br label %bb.c

bb.c:                                             ; preds = %bb.i, %bb.b
  %.044 = phi i32 [ 1, %bb.b ], [ %i.y, %bb.i ]   ; 2 uses
  %.042 = phi i32 [ %i.m, %bb.b ], [ %i.aa, %bb.i ] ; 2 uses
  %.039 = phi ptr [ null, %bb.b ], [ %spec.select, %bb.i ] ; 4 uses
  %i.n = zext i32 %.042 to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.n ; 9 uses
  %.sroa.010.0.copyload = load ptr, ptr %1, align 8, !tbaa !35 ; 3 uses
  %.sroa.211.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36 ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !35 ; 3 uses
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.29.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !36 ; 2 uses
  %magicptr.i = ptrtoint ptr %.sroa.08.0.copyload to i64
  switch i64 %magicptr.i, label %bb.e [
    i64 -1, label %bb.d
    i64 -2, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50, !prof !105

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %.sroa.211.0.copyload, %.sroa.29.0.copyload
  br i1 %i.q, label %bb.f, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50, !prof !106

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.sroa.211.0.copyload, 0
  br i1 %i.r, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.010.0.copyload, ptr %.sroa.08.0.copyload, i64 %.sroa.211.0.copyload)
  %i.s = icmp eq i32 %bcmp.i, 0
  br i1 %i.s, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50, !prof !105

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit: ; preds = %bb.c
  %i.t = icmp eq ptr %.sroa.010.0.copyload, inttoptr (i64 -2 to ptr)
  br i1 %i.t, label %.thread, label %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50, !prof !105

_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50: ; preds = %bb.e, %bb.g, %bb.d, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit
  %i.u = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %.sroa.08.0.copyload, i64 %.sroa.29.0.copyload, ptr nonnull inttoptr (i64 -1 to ptr), i64 0)
  br i1 %i.u, label %bb.h, label %bb.i, !prof !107

bb.h:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50
  %.not = icmp eq ptr %.039, null
  %i.v = select i1 %.not, ptr %i.o, ptr %.039
  br label %.thread

bb.i:                                             ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit.thread50
  %.sroa.02.0.copyload = load ptr, ptr %i.o, align 8, !tbaa !35
  %.sroa.23.0.copyload = load i64, ptr %.sroa.29.0..sroa_idx, align 8, !tbaa !36
  %i.w = tail call noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, ptr nonnull inttoptr (i64 -2 to ptr), i64 0)
  %i.x = icmp eq ptr %.039, null
  %or.cond.not = select i1 %i.w, i1 %i.x, i1 false
  %spec.select = select i1 %or.cond.not, ptr %i.o, ptr %.039
  %i.y = add i32 %.044, 1
  %i.z = add i32 %.042, %.044
  %i.aa = and i32 %i.z, %i.l
  br label %bb.c, !llvm.loop !108

.thread:                                          ; preds = %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit, %bb.d, %bb.g, %bb.f, %bb.a, %bb.h
  %.sink = phi ptr [ %i.v, %bb.h ], [ null, %bb.a ], [ %i.o, %bb.f ], [ %i.o, %bb.g ], [ %i.o, %bb.d ], [ %i.o, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ true, %bb.f ], [ true, %bb.g ], [ true, %bb.d ], [ true, %_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_.exit ]
  store ptr %.sink, ptr %2, align 8, !tbaa !109
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapInfoINS_9StringRefEE7isEqualES1_S1_(ptr %0, i64 %1, ptr %2, i64 %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %magicptr = ptrtoint ptr %2 to i64
  switch i64 %magicptr, label %bb.d [
    i64 -1, label %bb.b
    i64 -2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %0, inttoptr (i64 -1 to ptr)
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, inttoptr (i64 -2 to ptr)
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.d:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, %3
  br i1 %i.c, label %bb.e, label %_ZNK4llvh9StringRef6equalsES0_.exit

bb.e:                                             ; preds = %bb.d
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %1)
  %i.e = icmp eq i32 %bcmp, 0
  br label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ %i.a, %bb.b ], [ %i.b, %bb.c ], [ false, %bb.d ], [ %i.e, %bb.f ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @_ZN4llvh10hash_valueENS_9StringRefE(ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6hermes12_GLOBAL__N_110DumpModuleD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12_GLOBAL__N_110DumpModuleE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes10ModulePassESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes10ModulePassEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6hermes10ModulePassEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #14, !inline_history !113
  br label %_ZNSt10unique_ptrIN6hermes10ModulePassESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes10ModulePassESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6hermes10ModulePassEEclEPS1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6hermes12_GLOBAL__N_110DumpModuleD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12_GLOBAL__N_110DumpModuleE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !111  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6hermes12_GLOBAL__N_110DumpModuleD2Ev.exit, label %_ZNKSt14default_deleteIN6hermes10ModulePassEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6hermes10ModulePassEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #14, !inline_history !114
  br label %_ZN6hermes12_GLOBAL__N_110DumpModuleD2Ev.exit

_ZN6hermes12_GLOBAL__N_110DumpModuleD2Ev.exit:    ; preds = %bb.a, %_ZNKSt14default_deleteIN6hermes10ModulePassEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN6hermes12_GLOBAL__N_110DumpModule11runOnModuleEPNS_6ModuleE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115, !nonnull !33, !align !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call fastcc void @_ZNK6hermes12_GLOBAL__N_110DumpModule13dumpIfEnabledEPNS_6ModuleERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr nonnull @.str.3, i64 22)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef %1) #14
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !115, !nonnull !33, !align !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  tail call fastcc void @_ZNK6hermes12_GLOBAL__N_110DumpModule13dumpIfEnabledEPNS_6ModuleERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr nonnull @.str.4, i64 21)
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK6hermes12_GLOBAL__N_110DumpModule13dumpIfEnabledEPNS_6ModuleERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %2, ptr %3, i64 %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !111  ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 24
  %.val12 = load i64, ptr %i.f, align 8
  %i.g = load i8, ptr %2, align 8, !tbaa !42, !range !50, !noundef !33
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  br i1 %i.h, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.b

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val12, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.k = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %i.k, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124, !nonnull !33, !align !34 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !125
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !128  ; 2 uses
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.m, ptr noundef nonnull @.str.5, i64 noundef 1) #14 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i8 10, ptr %i.q, align 1
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !128
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %.pre, %bb.c ], [ %i.u, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.s, %bb.c ], [ %i.m, %bb.d ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !125
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.v to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ugt i64 %4, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %3, i64 noundef %4) #14 ; 2 uses
  %.phi.trans.insert29 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.pre30 = load ptr, ptr %.phi.trans.insert29, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %3, i64 %4, i1 false)
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %4 ; 2 uses
  store ptr %i.af, ptr %i.y, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.e, %bb.f, %bb.g
  %i.ag = phi ptr [ %.pre30, %bb.e ], [ %i.af, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.ad, %bb.e ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %bb.f ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !125
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.pre32 = load ptr, ptr %.phi.trans.insert31, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit16

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i8 32, ptr %i.ag, align 1
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !128
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.an, ptr %i.al, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit16

_ZN4llvh11raw_ostreamlsEPKc.exit16:               ; preds = %bb.h, %bb.i
  %i.ao = phi ptr [ %.pre32, %bb.h ], [ %i.an, %bb.i ] ; 3 uses
  %.0.i.i15 = phi ptr [ %i.ak, %bb.h ], [ %.0.i, %bb.i ] ; 5 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !111 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aq, align 8, !tbaa !35 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !125
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i15, i64 24 ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.ao to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp ugt i64 %.sroa.2.0.copyload.i, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit16
  %i.ay = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i15, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i) #14 ; 2 uses
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit19

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit16
  %.not.i17 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i17, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit19, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !128
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %.sroa.2.0.copyload.i ; 2 uses
  store ptr %i.ba, ptr %i.at, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit19

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit19:    ; preds = %bb.j, %bb.k, %bb.l
  %i.bb = phi ptr [ %.pre34, %bb.j ], [ %i.ba, %bb.l ], [ %i.ao, %bb.k ] ; 2 uses
  %.0.i18 = phi ptr [ %i.ay, %bb.j ], [ %.0.i.i15, %bb.l ], [ %.0.i.i15, %bb.k ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i18, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !125
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ult i64 %i.bg, 2
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit19
  %i.bi = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i18, ptr noundef nonnull @.str.7, i64 noundef 2) #14 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit22

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit19
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i18, i64 24 ; 2 uses
  store i16 2570, ptr %i.bb, align 1
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !128
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit22

_ZN4llvh11raw_ostreamlsEPKc.exit22:               ; preds = %bb.m, %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !115, !nonnull !33, !align !34
  %i.bo = getelementptr i8, ptr %i.bn, i64 320
  %.val13 = load i32, ptr %i.bo, align 8
  %i.bp = icmp ult i32 %.val13, 2
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit22
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !124, !nonnull !33, !align !34
  call void @_ZNK6hermes6Module4dumpERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1033) %1, ptr noundef nonnull align 8 dereferenceable(36) %i.bq) #14
  br label %.loopexit

bb.p:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit22
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.023.026 = load ptr, ptr %i.br, align 8, !tbaa !104 ; 2 uses
  %.not27 = icmp eq ptr %.sroa.023.026, %i.bs
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.sroa.023.028 = phi ptr [ %.sroa.023.0, %bb.q ], [ %.sroa.023.026, %bb.p ] ; 3 uses
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !115, !nonnull !33, !align !34
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 320 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = icmp ult i32 %i.bv, 2
  br i1 %i.bw, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit

_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit: ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 176
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.bx, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.by = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %i.by, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread, label %bb.q

_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread: ; preds = %.lr.ph, %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !124, !nonnull !33, !align !34
  call void @_ZNK6hermes8Function4dumpERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(304) %.sroa.023.028, ptr noundef nonnull align 8 dereferenceable(36) %i.bz) #14
  br label %bb.q

bb.q:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread, %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 8
  %.sroa.023.0 = load ptr, ptr %i.ca, align 8, !tbaa !104 ; 2 uses
  %.not = icmp eq ptr %.sroa.023.0, %i.bs
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.q, %bb.p, %bb.o, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit
  ret void
}

declare void @_ZNK6hermes6Module4dumpERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1033), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare void @_ZNK6hermes8Function4dumpERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6hermes12_GLOBAL__N_112DumpFunctionD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12_GLOBAL__N_112DumpFunctionE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6hermes12FunctionPassESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6hermes12FunctionPassEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6hermes12FunctionPassEEclEPS1_.exit.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #14, !inline_history !132
  br label %_ZNSt10unique_ptrIN6hermes12FunctionPassESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6hermes12FunctionPassESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6hermes12FunctionPassEEclEPS1_.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6hermes12_GLOBAL__N_112DumpFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %0) unnamed_addr #8 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6hermes12_GLOBAL__N_112DumpFunctionE, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN6hermes12_GLOBAL__N_112DumpFunctionD2Ev.exit, label %_ZNKSt14default_deleteIN6hermes12FunctionPassEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6hermes12FunctionPassEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %i.b) #14, !inline_history !133
  br label %_ZN6hermes12_GLOBAL__N_112DumpFunctionD2Ev.exit

_ZN6hermes12_GLOBAL__N_112DumpFunctionD2Ev.exit:  ; preds = %bb.a, %_ZNKSt14default_deleteIN6hermes12FunctionPassEEclEPS1_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN6hermes12_GLOBAL__N_112DumpFunction13runOnFunctionEPNS_8FunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134, !nonnull !33, !align !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call fastcc void @_ZNK6hermes12_GLOBAL__N_112DumpFunction13dumpIfEnabledEPNS_8FunctionERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %i.c, ptr nonnull @.str.8, i64 24)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !130  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef %1) #14
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !134, !nonnull !33, !align !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  tail call fastcc void @_ZNK6hermes12_GLOBAL__N_112DumpFunction13dumpIfEnabledEPNS_8FunctionERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr nonnull @.str.9, i64 23)
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK6hermes12_GLOBAL__N_112DumpFunction13dumpIfEnabledEPNS_8FunctionERKNS_35CodeGenerationSettings_DumpSettingsEN4llvh9StringRefE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(152) %2, ptr %3, i64 %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %.val = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.d, i64 24
  %.val8 = load i64, ptr %i.f, align 8
  %i.g = load i8, ptr %2, align 8, !tbaa !42, !range !50, !noundef !33
  %i.h = trunc nuw i8 %i.g to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  br i1 %i.h, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread, label %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.b

_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.val8, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.k = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %i.k, label %bb.b, label %bb.o

bb.b:                                             ; preds = %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit.thread, %_ZN6hermes12_GLOBAL__N_110shouldDumpERKNS_35CodeGenerationSettings_DumpSettingsERKNS_4PassE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134, !nonnull !33, !align !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 320 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp ult i32 %i.o, 2
  br i1 %i.p, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit

_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.q, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.r = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS2_EENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br i1 %i.r, label %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread, label %bb.o

_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread: ; preds = %bb.b, %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !143, !nonnull !33, !align !34 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !125
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !128  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread
  %i.z = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.t, ptr noundef nonnull @.str.5, i64 noundef 1) #14 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %_ZN6hermes12_GLOBAL__N_118shouldDumpFunctionERKNS_22CodeGenerationSettingsEPNS_8FunctionE.exit.thread
  store i8 10, ptr %i.x, align 1
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !128
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %i.ac = phi ptr [ %.pre, %bb.c ], [ %i.ab, %bb.d ] ; 3 uses
  %.0.i.i = phi ptr [ %i.z, %bb.c ], [ %i.t, %bb.d ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !125
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %4, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ak = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %3, i64 noundef %4) #14 ; 2 uses
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %4, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %3, i64 %4, i1 false)
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !128
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %4 ; 2 uses
  store ptr %i.am, ptr %i.af, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.e, %bb.f, %bb.g
  %i.an = phi ptr [ %.pre19, %bb.e ], [ %i.am, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.ak, %bb.e ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %bb.f ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !125
  %i.aq = icmp eq ptr %i.ap, %i.an
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i, ptr noundef nonnull @.str.6, i64 noundef 1) #14 ; 2 uses
  %.phi.trans.insert20 = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.pre21 = load ptr, ptr %.phi.trans.insert20, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store i8 32, ptr %i.an, align 1
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !128
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1 ; 2 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit11

_ZN4llvh11raw_ostreamlsEPKc.exit11:               ; preds = %bb.h, %bb.i
  %i.av = phi ptr [ %.pre21, %bb.h ], [ %i.au, %bb.i ] ; 3 uses
  %.0.i.i10 = phi ptr [ %i.ar, %bb.h ], [ %.0.i, %bb.i ] ; 5 uses
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !130 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !36 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !125
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i10, i64 24 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.av to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp ugt i64 %.sroa.2.0.copyload.i, %i.bd
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %i.bf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i10, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.2.0.copyload.i) #14 ; 2 uses
  %.phi.trans.insert22 = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit11
  %.not.i12 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i12, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i1 false)
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.sroa.2.0.copyload.i ; 2 uses
  store ptr %i.bh, ptr %i.ba, align 8, !tbaa !128
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit14:    ; preds = %bb.j, %bb.k, %bb.l
  %i.bi = phi ptr [ %.pre23, %bb.j ], [ %i.bh, %bb.l ], [ %i.av, %bb.k ] ; 2 uses
  %.0.i13 = phi ptr [ %i.bf, %bb.j ], [ %.0.i.i10, %bb.l ], [ %.0.i.i10, %bb.k ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !125
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bi to i64
  %i.bn = sub i64 %i.bl, %i.bm
end_hunk_0
