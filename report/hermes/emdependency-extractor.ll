inline.NumInlined: 812
inline.NumDeleted: 599
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr.41" = type { %"struct.std::__uniq_ptr_data.42" }
%"struct.std::__uniq_ptr_data.42" = type { %"class.std::__uniq_ptr_impl.43" }
%"class.std::__uniq_ptr_impl.43" = type { %"class.std::tuple.44" }
%"class.std::tuple.44" = type { %"struct.std::_Tuple_impl.45" }
%"struct.std::_Tuple_impl.45" = type { %"struct.std::_Head_base.48" }
%"struct.std::_Head_base.48" = type { ptr }
%"class.hermes::parser::JSParser" = type { %"class.std::shared_ptr.84" }
%"class.std::shared_ptr.84" = type { %"class.std::__shared_ptr.85" }
%"class.std::__shared_ptr.85" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::vector.89" = type { %"struct.std::_Vector_base.90" }
%"struct.std::_Vector_base.90" = type { %"struct.std::_Vector_base<hermes::Dependency, std::allocator<hermes::Dependency>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::Dependency, std::allocator<hermes::Dependency>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::Dependency, std::allocator<hermes::Dependency>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::Dependency, std::allocator<hermes::Dependency>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::raw_string_ostream" = type { %"class.llvh::raw_ostream.base", ptr }
%"class.llvh::raw_ostream.base" = type <{ ptr, ptr, ptr, ptr, i32 }>
%"class.hermes::JSONEmitter" = type { %"class.llvh::SmallVector", ptr, i8, i32 }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [8 x %"struct.llvh::AlignedCharArrayUnion.94"] }
%"struct.llvh::AlignedCharArrayUnion.94" = type { %"struct.llvh::AlignedCharArray.95" }
%"struct.llvh::AlignedCharArray.95" = type { [5 x i8] }
%"struct.hermes::CodeGenerationSettings" = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [6 x i8], %"struct.hermes::CodeGenerationSettings_DumpSettings", %"struct.hermes::CodeGenerationSettings_DumpSettings", %"class.llvh::SmallDenseSet" }
%"struct.hermes::CodeGenerationSettings_DumpSettings" = type { i8, [7 x i8], %"class.llvh::SmallDenseSet", %"class.llvh::SmallDenseSet" }
%"class.llvh::SmallDenseSet" = type { %"class.llvh::detail::DenseSetImpl" }
%"class.llvh::detail::DenseSetImpl" = type { %"class.llvh::SmallDenseMap" }
%"class.llvh::SmallDenseMap" = type { i32, i32, %"struct.llvh::AlignedCharArrayUnion" }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [64 x i8] }
%"class.std::unique_ptr.21" = type { %"struct.std::__uniq_ptr_data.22" }
%"struct.std::__uniq_ptr_data.22" = type { %"class.std::__uniq_ptr_impl.23" }
%"class.std::__uniq_ptr_impl.23" = type { %"class.std::tuple.24" }
%"class.std::tuple.24" = type { %"struct.std::_Tuple_impl.25" }
%"struct.std::_Tuple_impl.25" = type { %"struct.std::_Head_base.28" }
%"struct.std::_Head_base.28" = type { ptr }
%"class.std::vector.29" = type { %"struct.std::_Vector_base.30" }
%"struct.std::_Vector_base.30" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::StringRef" = type { ptr, i64 }
%"struct.llvh::SmallDenseMap<llvh::StringRef, llvh::detail::DenseSetEmpty, 4, llvh::DenseMapInfo<StringRef>, llvh::detail::DenseSetPair<llvh::StringRef>>::LargeRep" = type { ptr, i32 }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZSt10_ConstructIN6hermes7ContextEJEEvPT_DpOT0_ = comdat any

$_ZN6hermes7ContextC2ENS_22CodeGenerationSettingsENS_20OptimizationSettingsESt10unique_ptrIN4llvh8DenseMapINS4_9StringRefENS5_IS6_S6_NS4_12DenseMapInfoIS6_EENS4_6detail12DenseMapPairIS6_S6_EEEES8_NSA_IS6_SC_EEEESt14default_deleteISE_EESt6vectorIjSaIjEE = comdat any

$_ZN4llvh13SmallDenseMapINS_9StringRefENS_6detail13DenseSetEmptyELj4ENS_12DenseMapInfoIS1_EENS2_12DenseSetPairIS1_EEE4swapERS8_ = comdat any

$_ZN6hermes7ContextD2Ev = comdat any

$_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev = comdat any

$_ZN6hermes18SourceErrorManagerD2Ev = comdat any

$_ZN4llvh9SourceMgrD2Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeISt4pairIPN6hermes12UniqueStringES3_ES0_IKS4_NS1_14CompiledRegExpEESt10_Select1stIS7_ESt4lessIS4_ESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E = comdat any

$_ZN4llvh23SmallVectorTemplateBaseISt10unique_ptrIN6hermes6parser19PreParsedBufferInfoESt14default_deleteIS4_EELb0EE13destroy_rangeEPS7_S9_ = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@.str = private unnamed_addr constant [37 x i8] c"Input source must be zero-terminated\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to parse JS source\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@_ZZ4mainE4src1 = internal constant [16 x i8] c"require('foo');\00", align 16
@_ZTVN4llvh18raw_string_ostreamE = external unnamed_addr constant { [13 x ptr] }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"ESM\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Require\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Async\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"Resource\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"PrefetchedResource\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"GraphQL\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr dso_local constant [16 x i8] zeroinitializer, comdat, align 8
@switch.table.hermesExtractDependencies = private unnamed_addr constant [7 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @hermesExtractDependencies(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.41", align 8 ; 6 uses
  %3 = alloca %"class.std::unique_ptr.41", align 8 ; 3 uses
  %4 = alloca %"class.hermes::parser::JSParser", align 8 ; 5 uses
  %5 = alloca %"class.std::vector.89", align 8    ; 8 uses
  %6 = alloca %"class.llvh::raw_string_ostream", align 8 ; 8 uses
  %7 = alloca %"class.hermes::JSONEmitter", align 8 ; 18 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #13, !noalias !8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.b, i8 0, i64 48, i1 false), !noalias !8
  store ptr %i.b, ptr %i.a, align 8, !tbaa !11, !noalias !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 0, ptr %i.c, align 8, !tbaa !15, !noalias !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.e, ptr %i.d, align 8, !tbaa !11, !noalias !8
  %i.f = tail call noalias noundef nonnull dereferenceable(672) ptr @_Znwm(i64 noundef 672) #13, !noalias !18 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 5 uses
  store i32 1, ptr %i.g, align 8, !tbaa !23, !noalias !25
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  store i32 1, ptr %i.h, align 4, !tbaa !26, !noalias !25
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes7ContextESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.f, align 8, !tbaa !27, !noalias !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  tail call void @_ZSt10_ConstructIN6hermes7ContextEJEEvPT_DpOT0_(ptr noundef nonnull %i.i), !noalias !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 199
  store i8 1, ptr %i.j, align 1, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 204
  store i32 1, ptr %i.k, align 4, !tbaa !93
  %8 = add i64 %1, -1                             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %8
  %i.m = load i8, ptr %i.l, align 1, !tbaa !94
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.c, align 8, !tbaa !15
  %i.o = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.n, ptr noundef nonnull @.str, i64 noundef 36) #14 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN4llvh12MemoryBuffer12getMemBufferENS_9StringRefES1_b(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.41") align 8 %2, ptr nonnull %0, i64 %8, ptr nonnull @.str.1, i64 0, i1 noundef zeroext true) #14
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95, !nonnull !96, !align !97
  %i.r = load i64, ptr %2, align 8, !tbaa !98
  store i64 %i.r, ptr %3, align 8, !tbaa !98
  store ptr null, ptr %2, align 8, !tbaa !98
  %i.s = call noundef i32 @_ZN6hermes18SourceErrorManager18addNewSourceBufferESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(464) %i.q, ptr noundef nonnull %3) #14
  %i.t = load ptr, ptr %3, align 8, !tbaa !98     ; 3 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i: ; preds = %bb.c
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #14, !inline_history !100
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN6hermes6parser8JSParserC1ERNS_7ContextEjNS0_10ParserPassE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(656) %i.i, i32 noundef %i.s, i32 noundef 2) #14
  %i.x = call { i64, i8 } @_ZN6hermes6parser8JSParser5parseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #14 ; 2 uses
  %i.y = extractvalue { i64, i8 } %i.x, 1
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !15
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull @.str.2, i64 noundef 25) #14 ; 0 uses
  br label %bb.h

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit
  %i.ac = extractvalue { i64, i8 } %i.x, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ad = inttoptr i64 %i.ac to ptr
  call void @_ZN6hermes19extractDependenciesERNS_7ContextEPNS_6ESTree4NodeE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.89") align 8 %5, ptr noundef nonnull align 8 dereferenceable(656) %i.i, ptr noundef %i.ad) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 1, ptr %i.ae, align 8, !tbaa !101
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvh18raw_string_ostreamE, i64 16), ptr %6, align 8, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.d, ptr %i.ag, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.ah, ptr %7, align 8, !tbaa !106
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.ai, align 8, !tbaa !108
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 8, ptr %i.aj, align 4, !tbaa !109
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %6, ptr %i.ak, align 8, !tbaa !110
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 64
  store i8 0, ptr %i.al, align 8, !tbaa !112
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 68
  store i32 0, ptr %i.am, align 4, !tbaa !119
  call void @_ZN6hermes11JSONEmitter9openArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %7) #14
  %i.an = load ptr, ptr %5, align 8, !tbaa !120   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !120 ; 2 uses
  %.not3839 = icmp eq ptr %i.an, %i.ap
  br i1 %.not3839, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  call void @_ZN6hermes11JSONEmitter10closeArrayEv(ptr noundef nonnull align 8 dereferenceable(72) %7) #14
  %i.aq = load ptr, ptr %7, align 8, !tbaa !106   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.ah
  br i1 %i.ar, label %_ZN6hermes11JSONEmitterD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.aq) #14
  br label %_ZN6hermes11JSONEmitterD2Ev.exit

_ZN6hermes11JSONEmitterD2Ev.exit:                 ; preds = %._crit_edge, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @_ZN4llvh18raw_string_ostreamD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.as = load ptr, ptr %5, align 8, !tbaa !122   ; 3 uses
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !124 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6hermes11JSONEmitterD2Ev.exit, %_ZSt8_DestroyIN6hermes10DependencyEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.az, %_ZSt8_DestroyIN6hermes10DependencyEEvPT_.exit.i.i.i ], [ %i.as, %_ZN6hermes11JSONEmitterD2Ev.exit ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !125 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZSt8_DestroyIN6hermes10DependencyEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !94
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #15
  br label %_ZSt8_DestroyIN6hermes10DependencyEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6hermes10DependencyEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.az, %i.at
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !126

_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6hermes10DependencyEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !122
  br label %_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exit.i

_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exit.i: ; preds = %_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exitthread-pre-split.i, %_ZN6hermes11JSONEmitterD2Ev.exit
  %i.ba = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exitthread-pre-split.i ], [ %i.as, %_ZN6hermes11JSONEmitterD2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !128
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #15
  br label %_ZNSt6vectorIN6hermes10DependencyESaIS1_EED2Ev.exit

_ZNSt6vectorIN6hermes10DependencyESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6hermes10DependencyEEvT_S3_.exit.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.h

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.018.040 = phi ptr [ %i.bn, %.lr.ph ], [ %i.an, %bb.e ] ; 4 uses
  call void @_ZN6hermes11JSONEmitter8openDictEv(ptr noundef nonnull align 8 dereferenceable(72) %7) #14
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr nonnull @.str.3, i64 4) #14
  %i.bg = load ptr, ptr %.sroa.018.040, align 8, !tbaa !125
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.018.040, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !15
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr %i.bg, i64 %i.bi) #14
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.018.040, i64 32
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !129
  %i.bl = zext nneg i32 %i.bk to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.hermesExtractDependencies, i64 %i.bl
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  call void @_ZN6hermes11JSONEmitter7emitKeyEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr nonnull @.str.4, i64 4) #14
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #16
  call void @_ZN6hermes11JSONEmitter9emitValueEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr nonnull %switch.load, i64 %i.bm) #14
  call void @_ZN6hermes11JSONEmitter9closeDictEv(ptr noundef nonnull align 8 dereferenceable(72) %7) #14
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.018.040, i64 40 ; 2 uses
  %.not38 = icmp eq ptr %i.bn, %i.ap
  br i1 %.not38, label %._crit_edge, label %.lr.ph

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes10DependencyESaIS1_EED2Ev.exit, %bb.d
  call void @_ZN6hermes6parser8JSParserD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %i.bo = load ptr, ptr %2, align 8, !tbaa !98    ; 3 uses
  %.not.i11 = icmp eq ptr %i.bo, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i12: ; preds = %bb.h
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #14, !inline_history !100
  br label %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit13: ; preds = %bb.h, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS1_EED2Ev.exit13
  %i.bs = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.g, align 8, !tbaa !23
  store i32 0, ptr %i.h, align 4, !tbaa !26
  %i.bv = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #14, !inline_history !132
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #14, !inline_history !132
  br label %_ZNSt10unique_ptrI12DependenciesSt14default_deleteIS0_EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i14 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i14, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = add nsw i32 %i.bu, -1
  store i32 %i.cc, ptr %i.g, align 8, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.cd = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bu, %bb.l ], [ %i.cd, %bb.m ]
  %i.ce = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ce, label %bb.n, label %_ZNSt10unique_ptrI12DependenciesSt14default_deleteIS0_EED2Ev.exit, !prof !133

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
end_hunk_0
