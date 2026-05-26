inline.NumInlined: 808
inline.NumDeleted: 554
begin_hunk_0
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }
%"class.llvh::FoldingSet" = type { %"class.llvh::FoldingSetImpl" }
%"class.llvh::FoldingSetImpl" = type { %"class.llvh::FoldingSetBase" }
%"class.llvh::FoldingSetBase" = type { ptr, ptr, i32, i32 }
%"class.llvh::FoldingSet.10" = type { %"class.llvh::FoldingSetImpl.11" }
%"class.llvh::FoldingSetImpl.11" = type { %"class.llvh::FoldingSetBase" }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::pair<unsigned long, hermes::parser::JSONString *const *>, std::pair<const std::pair<unsigned long, hermes::parser::JSONString *const *>, hermes::parser::JSONHiddenClass *>, std::_Select1st<std::pair<const std::pair<unsigned long, hermes::parser::JSONString *const *>, hermes::parser::JSONHiddenClass *>>, hermes::parser::JSONFactory::LessHiddenClassKey>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::pair<unsigned long, hermes::parser::JSONString *const *>, std::pair<const std::pair<unsigned long, hermes::parser::JSONString *const *>, hermes::parser::JSONHiddenClass *>, std::_Select1st<std::pair<const std::pair<unsigned long, hermes::parser::JSONString *const *>, hermes::parser::JSONHiddenClass *>>, hermes::parser::JSONFactory::LessHiddenClassKey>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.hermes::parser::JSONParser" = type { ptr, %"class.hermes::parser::JSLexer", ptr }
%"class.hermes::parser::JSLexer" = type { ptr, ptr, i32, %"class.std::unique_ptr.2", ptr, ptr, i8, i8, i8, i8, [4 x i8], %"class.hermes::parser::Token", %"class.llvh::SMLoc", ptr, ptr, ptr, i8, %"class.llvh::SmallString", %"class.llvh::SmallString", [46 x ptr], %"class.llvh::StringRef", %"class.llvh::StringRef", %"class.std::vector.15", %"class.std::vector.20" }
%"class.hermes::parser::Token" = type <{ i32, [4 x i8], %"class.llvh::SMRange", double, ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.llvh::SMRange" = type { %"class.llvh::SMLoc", %"class.llvh::SMLoc" }
%"class.llvh::SMLoc" = type { ptr }
%"class.llvh::SmallString" = type { %"class.llvh::SmallVector" }
%"class.llvh::SmallVector" = type { %"class.llvh::SmallVectorImpl", %"struct.llvh::SmallVectorStorage" }
%"class.llvh::SmallVectorImpl" = type { %"class.llvh::SmallVectorTemplateBase" }
%"class.llvh::SmallVectorTemplateBase" = type { %"class.llvh::SmallVectorTemplateCommon" }
%"class.llvh::SmallVectorTemplateCommon" = type { %"class.llvh::SmallVectorBase" }
%"class.llvh::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvh::SmallVectorStorage" = type { [256 x %"struct.llvh::AlignedCharArrayUnion"] }
%"struct.llvh::AlignedCharArrayUnion" = type { %"struct.llvh::AlignedCharArray" }
%"struct.llvh::AlignedCharArray" = type { [1 x i8] }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<hermes::parser::StoredComment, std::allocator<hermes::parser::StoredComment>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::parser::StoredComment, std::allocator<hermes::parser::StoredComment>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::parser::StoredComment, std::allocator<hermes::parser::StoredComment>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::parser::StoredComment, std::allocator<hermes::parser::StoredComment>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<hermes::parser::StoredToken, std::allocator<hermes::parser::StoredToken>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::parser::StoredToken, std::allocator<hermes::parser::StoredToken>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::parser::StoredToken, std::allocator<hermes::parser::StoredToken>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::parser::StoredToken, std::allocator<hermes::parser::StoredToken>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvh::Twine" = type <{ %"union.llvh::Twine::Child", %"union.llvh::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvh::Twine::Child" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.36" = type { %"struct.std::_Vector_base.37" }
%"struct.std::_Vector_base.37" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.62" = type { %"struct.std::_Vector_base.63" }
%"struct.std::_Vector_base.63" = type { %"struct.std::_Vector_base<llvh::Optional<hermes::parser::JSONSharedValue>, std::allocator<llvh::Optional<hermes::parser::JSONSharedValue>>>::_Vector_impl" }
%"struct.std::_Vector_base<llvh::Optional<hermes::parser::JSONSharedValue>, std::allocator<llvh::Optional<hermes::parser::JSONSharedValue>>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvh::Optional<hermes::parser::JSONSharedValue>, std::allocator<llvh::Optional<hermes::parser::JSONSharedValue>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvh::Optional<hermes::parser::JSONSharedValue>, std::allocator<llvh::Optional<hermes::parser::JSONSharedValue>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.75" = type { %"struct.std::_Vector_base.76" }
%"struct.std::_Vector_base.76" = type { %"struct.std::_Vector_base<std::vector<hermes::SourceMap::Segment>, std::allocator<std::vector<hermes::SourceMap::Segment>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<hermes::SourceMap::Segment>, std::allocator<std::vector<hermes::SourceMap::Segment>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<hermes::SourceMap::Segment>, std::allocator<std::vector<hermes::SourceMap::Segment>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<hermes::SourceMap::Segment>, std::allocator<std::vector<hermes::SourceMap::Segment>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.80" = type { %"struct.std::_Vector_base.81" }
%"struct.std::_Vector_base.81" = type { %"struct.std::_Vector_base<hermes::SourceMap::Segment, std::allocator<hermes::SourceMap::Segment>>::_Vector_impl" }
%"struct.std::_Vector_base<hermes::SourceMap::Segment, std::allocator<hermes::SourceMap::Segment>>::_Vector_impl" = type { %"struct.std::_Vector_base<hermes::SourceMap::Segment, std::allocator<hermes::SourceMap::Segment>>::_Vector_impl_data" }
%"struct.std::_Vector_base<hermes::SourceMap::Segment, std::allocator<hermes::SourceMap::Segment>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.hermes::SourceMapParser::State" = type { i32, i32, i32, i32, i32 }
%"class.llvh::Optional.85" = type { %"struct.llvh::optional_detail::OptionalStorage.86" }
%"struct.llvh::optional_detail::OptionalStorage.86" = type { %"struct.llvh::AlignedCharArrayUnion.87", i8, [3 x i8] }
%"struct.llvh::AlignedCharArrayUnion.87" = type { %"struct.llvh::AlignedCharArray.88" }
%"struct.llvh::AlignedCharArray.88" = type { [28 x i8] }

$_ZSt11make_uniqueIN6hermes9SourceMapEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EES9_IS9_INS1_7SegmentESaISC_EESaISE_EES9_IN4llvh8OptionalINS0_6parser15JSONSharedValueEEESaISL_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_ = comdat any

$_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeISt4pairImPKPN6hermes6parser10JSONStringEES0_IKS7_PNS2_15JSONHiddenClassEESt10_Select1stISB_ENS2_11JSONFactory18LessHiddenClassKeyESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN6hermes28BacktrackingBumpPtrAllocatorD2Ev = comdat any

$_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@.str = private unnamed_addr constant [29 x i8] c"Expected a source map object\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Source map does not contain a version field\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Source map version != 3\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"sourceRoot\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"sources\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"'sources' key missing from source map\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"x_facebook_sources\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Source filename #\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c" not found or not string\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"mappings\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"'mappings' key missing from source map\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"Failed to parse source map mappings\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c",;\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes15SourceMapParser5parseEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerE(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef readonly byval(%"class.llvh::MemoryBufferRef") align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(464) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::unique_ptr.102", align 8 ; 5 uses
  %4 = alloca %"class.hermes::parser::JSONFactory", align 8 ; 9 uses
  %5 = alloca %"class.hermes::parser::JSONParser", align 8 ; 13 uses
  %6 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %7 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 22 uses
  %11 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %12 = alloca %"class.std::vector.36", align 8   ; 11 uses
  %13 = alloca %"class.std::vector.62", align 8   ; 11 uses
  %14 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %19 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %20 = alloca %"class.std::vector.75", align 8   ; 9 uses
  %21 = alloca %"class.llvh::Twine", align 8      ; 6 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16, !noalias !7 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 8 uses
  store i32 1, ptr %i.d, align 8, !tbaa !12, !noalias !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  store i32 1, ptr %i.e, align 4, !tbaa !15, !noalias !14
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6hermes28BacktrackingBumpPtrAllocatorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.c, align 8, !tbaa !16, !noalias !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16, !noalias !14 ; 6 uses
  store i32 0, ptr %i.g, align 8, !tbaa !18, !noalias !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !28, !noalias !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.j, ptr %i.i, align 8, !tbaa !29, !noalias !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !noalias !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.g, ptr %i.l, align 8, !tbaa !30, !noalias !14
  %i.m = tail call noalias noundef nonnull dereferenceable(262144) ptr @_Znwm(i64 noundef 262144) #16, !noalias !37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(262144) %i.m, i8 0, i64 262144, i1 false), !noalias !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #16, !noalias !14 ; 3 uses
  %i.q = ptrtoint ptr %i.m to i64
  store i64 %i.q, ptr %i.p, align 8, !tbaa !40, !noalias !14
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.p, ptr %i.f, align 8, !tbaa !42, !noalias !14
  store ptr %i.r, ptr %i.n, align 8, !tbaa !43, !noalias !14
  store ptr %i.r, ptr %i.o, align 8, !tbaa !44, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @_ZN6hermes6parser11JSONFactoryC1ERNS_28BacktrackingBumpPtrAllocatorEPNS_11StringTableE(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef null) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4llvh12MemoryBuffer12getMemBufferENS_15MemoryBufferRefEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.102") align 8 %3, ptr noundef nonnull byval(%"class.llvh::MemoryBufferRef") align 8 %1, i1 noundef zeroext true) #17
  call void @_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryESt10unique_ptrIN4llvh12MemoryBufferESt14default_deleteIS6_EERNS_18SourceErrorManagerEb(ptr noundef nonnull align 8 dereferenceable(1176) %5, ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(464) %2, i1 noundef zeroext false) #17
  %i.s = load ptr, ptr %3, align 8, !tbaa !45     ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerEbb.exit, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i: ; preds = %bb.a
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.s) #17, !inline_history !47
  br label %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerEbb.exit

_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerEbb.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.w = call { i64, i8 } @_ZN6hermes6parser10JSONParser5parseEv(ptr noundef nonnull align 8 dereferenceable(1176) %5) #17 ; 2 uses
  %i.x = extractvalue { i64, i8 } %i.w, 1
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerEbb.exit
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bx

bb.c:                                             ; preds = %_ZN6hermes6parser10JSONParserC2ERNS0_11JSONFactoryEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerEbb.exit
  %i.z = extractvalue { i64, i8 } %i.w, 0         ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !51    ; 7 uses
  %i.ab = inttoptr i64 %i.z to ptr                ; 3 uses
  %.not.i = icmp eq i64 %i.z, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !54
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 1, ptr %i.af, align 1, !tbaa !57
  store ptr @.str, ptr %6, align 8, !tbaa !60
  store i8 3, ptr %i.ae, align 8, !tbaa !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %2, i32 noundef 0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(18) %6, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bx

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.ai = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr nonnull @.str.1, i64 7) ; 2 uses
  %i.aj = extractvalue { i64, i8 } %i.ai, 1
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.al = extractvalue { i64, i8 } %i.ai, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65 ; 3 uses
  %.not.i65 = icmp eq ptr %i.ao, null
  br i1 %.not.i65, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.aq = icmp eq i32 %i.ap, 3
  br i1 %i.aq, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONObjectENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 17
  store i8 1, ptr %i.as, align 1, !tbaa !57
  store ptr @.str.2, ptr %7, align 8, !tbaa !60
  store i8 3, ptr %i.ar, align 8, !tbaa !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %2, i32 noundef 0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(18) %7, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bx

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !67
  %i.av = fptoui double %i.au to i64
  %.not = icmp eq i64 %i.av, 3
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.ax, align 1, !tbaa !57
  store ptr @.str.3, ptr %8, align 8, !tbaa !60
  store i8 3, ptr %i.aw, align 8, !tbaa !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %2, i32 noundef 0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(18) %8, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bx

bb.h:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONNumberENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.ay, ptr %9, align 8, !tbaa !72
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store i64 0, ptr %i.az, align 8, !tbaa !74
  store i8 0, ptr %i.ay, align 8, !tbaa !60
  %i.ba = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.bb = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr nonnull @.str.4, i64 10) ; 2 uses
  %i.bc = extractvalue { i64, i8 } %i.bb, 1
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit68, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit68: ; preds = %bb.h
  %i.be = extractvalue { i64, i8 } %i.bb, 0
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65 ; 3 uses
  %.not.i69 = icmp eq ptr %i.bg, null
  br i1 %.not.i69, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !54
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !76 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51, !noalias !85 ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i71, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.bm, ptr %10, align 8, !tbaa !72, !alias.scope !85
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.bn, align 8, !tbaa !74, !alias.scope !85
  store i8 0, ptr %i.bm, align 8, !tbaa !60, !alias.scope !85
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

bb.k:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !86, !noalias !85 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store ptr %i.bq, ptr %10, align 8, !tbaa !72, !alias.scope !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !85
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !87, !noalias !85
  %i.br = icmp ugt i64 %i.bp, 15
  br i1 %i.br, label %bb.l, label %._crit_edge.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bs = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #17 ; 2 uses
  store ptr %i.bs, ptr %10, align 8, !tbaa !88, !alias.scope !85
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !87, !noalias !85
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !60, !alias.scope !85
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.l, %bb.k
  %i.bu = phi ptr [ %i.bs, %bb.l ], [ %i.bq, %bb.k ] ; 2 uses
  switch i64 %i.bp, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bv = load i8, ptr %i.bl, align 1, !tbaa !60
  store i8 %i.bv, ptr %i.bu, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr nonnull align 1 %i.bl, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i: ; preds = %bb.n, %bb.m, %._crit_edge.i.i.i.i
  %i.bw = load i64, ptr %i.b, align 8, !tbaa !87, !noalias !85 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !74, !alias.scope !85
  %i.by = load ptr, ptr %10, align 8, !tbaa !88, !alias.scope !85
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  store i8 0, ptr %i.bz, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !85
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i
  %i.ca = load ptr, ptr %9, align 8, !tbaa !88    ; 6 uses
  %i.cb = icmp eq ptr %i.ca, %i.ay
  %i.cc = load ptr, ptr %10, align 8, !tbaa !88   ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd                ; 2 uses
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.ce, label %bb.o, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit
  br i1 %i.ce, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !74 ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  switch i64 %i.cg, label %bb.q [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.ci = load i8, ptr %i.cc, align 1, !tbaa !60
  store i8 %i.ci, ptr %i.ca, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.cc, i64 %i.cg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.q, %bb.p, %bb.o
  %i.cj = load i64, ptr %i.cf, align 8, !tbaa !74 ; 2 uses
  store i64 %i.cj, ptr %i.az, align 8, !tbaa !74
  %i.ck = load ptr, ptr %9, align 8, !tbaa !88
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 0, ptr %i.cl, align 1, !tbaa !60
  %.pre.i = load ptr, ptr %10, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cc, ptr %9, align 8, !tbaa !88
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cn = load <2 x i64>, ptr %i.cm, align 8, !tbaa !60
  store <2 x i64> %i.cn, ptr %i.az, align 8, !tbaa !60
  br label %bb.s

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.co = load i64, ptr %i.ay, align 8, !tbaa !60
  store ptr %i.cc, ptr %9, align 8, !tbaa !88
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cq = load <2 x i64>, ptr %i.cp, align 8, !tbaa !60
  store <2 x i64> %i.cq, ptr %i.az, align 8, !tbaa !60
  %.not.i72 = icmp eq ptr %i.ca, null
  br i1 %.not.i72, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.ca, ptr %10, align 8, !tbaa !88
  store i64 %i.co, ptr %i.cd, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.cd, ptr %10, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.r, %bb.s
  %i.cr = phi ptr [ %i.ca, %bb.r ], [ %i.cd, %bb.s ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !74
  store i8 0, ptr %i.cr, align 1, !tbaa !60
  %i.ct = load ptr, ptr %10, align 8, !tbaa !88   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !60
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread: ; preds = %bb.h, %bb.i, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.cz = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.cy, ptr nonnull @.str.5, i64 7) ; 2 uses
  %i.da = extractvalue { i64, i8 } %i.cz, 1
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit74, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit74.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit74: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread
  %i.dc = extractvalue { i64, i8 } %i.cz, 0
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !65 ; 4 uses
  %.not.i75 = icmp eq ptr %i.de, null
  br i1 %.not.i75, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit74.thread, label %bb.t

bb.t:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit74
  %i.df = load i32, ptr %i.de, align 4, !tbaa !54
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit74.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit74.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit.thread, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit74, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 17
  store i8 1, ptr %i.di, align 1, !tbaa !57
  store ptr @.str.6, ptr %11, align 8, !tbaa !60
  store i8 3, ptr %i.dh, align 8, !tbaa !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %2, i32 noundef 0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(18) %11, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bw

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit: ; preds = %bb.t
  %i.dj = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.dk = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.dj, ptr nonnull @.str.7, i64 18) ; 2 uses
  %i.dl = extractvalue { i64, i8 } %i.dk, 1
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit78, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit78: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit
  %i.dn = extractvalue { i64, i8 } %i.dk, 0
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !65 ; 4 uses
  %.not.i79 = icmp eq ptr %i.dp, null
  br i1 %.not.i79, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit78
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !54
  %i.dr = icmp eq i32 %i.dq, 1
  br i1 %i.dr, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81: ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !89
  %i.du = trunc i64 %i.dt to i32
  br label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81.thread

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81.thread: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit, %bb.u, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit78, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81
  %.not62.not = phi i1 [ true, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81 ], [ false, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit78 ], [ false, %bb.u ], [ false, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ]
  %i.dv = phi ptr [ %i.dp, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81 ], [ null, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit78 ], [ null, %bb.u ], [ null, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ]
  %i.dw = phi i32 [ %i.du, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81 ], [ 0, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit78 ], [ 0, %bb.u ], [ 0, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !89 ; 8 uses
  %i.dz = icmp ugt i64 %i.dy, 288230376151711743
  br i1 %i.dz, label %bb.v, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

bb.v:                                             ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81.thread
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #19
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser9JSONArrayENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit81.thread
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.eb = shl nuw nsw i64 %i.dy, 5
  %i.ec = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #16 ; 5 uses
  store ptr %i.ec, ptr %12, align 8, !tbaa !91
  %i.ed = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.dy
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !94
  %xtraiter = and i64 %i.dy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.prol ], [ %i.ec, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.prol ], [ %i.dy, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.ef, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !72
  %i.eg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.eg, align 8, !tbaa !74
  store i8 0, ptr %i.ef, align 8, !tbaa !60
  %i.eh = add i64 %.057.i.i.i.i.i.prol, -1        ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !95

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa325.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.ei, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.ec, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.ei, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.dy, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.eh, %.lr.ph.i.i.i.i.i.prol ]
  %i.ej = icmp ult i64 %i.dy, 4
  br i1 %i.ej, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.ek, ptr %.08.i.i.i.i.i, align 8, !tbaa !72
  %i.el = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.el, align 8, !tbaa !74
  store i8 0, ptr %i.ek, align 8, !tbaa !60
  %i.em = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.en, ptr %i.em, align 8, !tbaa !72
  %i.eo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.eo, align 8, !tbaa !74
  store i8 0, ptr %i.en, align 8, !tbaa !60
  %i.ep = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.eq, ptr %i.ep, align 8, !tbaa !72
  %i.er = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.er, align 8, !tbaa !74
  store i8 0, ptr %i.eq, align 8, !tbaa !60
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.et = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.et, ptr %i.es, align 8, !tbaa !72
  %i.eu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.eu, align 8, !tbaa !74
  store i8 0, ptr %i.et, align 8, !tbaa !60
  %i.ev = add i64 %.057.i.i.i.i.i, -4             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !97

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %.lcssa325 = phi ptr [ %.lcssa325.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ew, %.lr.ph.i.i.i.i.i ]
  %i.ex = ptrtoint ptr %i.ec to i64
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.loopexit, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %i.ey = phi i64 [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %i.ex, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.loopexit ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa325, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.loopexit ] ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ea, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.ez = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %.not.i.i.i.i82 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i.i.i82, label %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit

_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit
  %i.fa = zext i32 %i.dw to i64                   ; 5 uses
  %i.fb = shl nuw nsw i64 %i.fa, 5
  %i.fc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #16 ; 4 uses
  store ptr %i.fc, ptr %13, align 8, !tbaa !100
  %i.fd = getelementptr inbounds nuw [32 x i8], ptr %i.fc, i64 %i.fa
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.fd, ptr %i.fe, align 8, !tbaa !103
  %xtraiter326 = and i64 %i.fa, 7                 ; 2 uses
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %.lr.ph.i.i.i.i.i83.prol.loopexit, label %.lr.ph.i.i.i.i.i83.prol

.lr.ph.i.i.i.i.i83.prol:                          ; preds = %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i83.prol
  %.08.i.i.i.i.i84.prol = phi ptr [ %i.fh, %.lr.ph.i.i.i.i.i83.prol ], [ %i.fc, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i ] ; 2 uses
  %.057.i.i.i.i.i85.prol = phi i64 [ %i.fg, %.lr.ph.i.i.i.i.i83.prol ], [ %i.fa, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter328 = phi i64 [ %prol.iter328.next, %.lr.ph.i.i.i.i.i83.prol ], [ 0, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84.prol, i64 24
  store i8 0, ptr %i.ff, align 8, !tbaa !104
  %i.fg = add nsw i64 %.057.i.i.i.i.i85.prol, -1  ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84.prol, i64 32 ; 3 uses
  %prol.iter328.next = add i64 %prol.iter328, 1   ; 2 uses
  %prol.iter328.cmp.not = icmp eq i64 %prol.iter328.next, %xtraiter326
  br i1 %prol.iter328.cmp.not, label %.lr.ph.i.i.i.i.i83.prol.loopexit, label %.lr.ph.i.i.i.i.i83.prol, !llvm.loop !109

.lr.ph.i.i.i.i.i83.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i83.prol, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa324.unr = phi ptr [ poison, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.fh, %.lr.ph.i.i.i.i.i83.prol ]
  %.08.i.i.i.i.i84.unr = phi ptr [ %i.fc, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.fh, %.lr.ph.i.i.i.i.i83.prol ]
  %.057.i.i.i.i.i85.unr = phi i64 [ %i.fa, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.fg, %.lr.ph.i.i.i.i.i83.prol ]
  %i.fi = icmp ult i32 %i.dw, 8
  br i1 %i.fi, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit, label %.lr.ph.i.i.i.i.i83

.lr.ph.i.i.i.i.i83:                               ; preds = %.lr.ph.i.i.i.i.i83.prol.loopexit, %.lr.ph.i.i.i.i.i83
  %.08.i.i.i.i.i84 = phi ptr [ %i.fs, %.lr.ph.i.i.i.i.i83 ], [ %.08.i.i.i.i.i84.unr, %.lr.ph.i.i.i.i.i83.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.i85 = phi i64 [ %i.fr, %.lr.ph.i.i.i.i.i83 ], [ %.057.i.i.i.i.i85.unr, %.lr.ph.i.i.i.i.i83.prol.loopexit ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 24
  store i8 0, ptr %i.fj, align 8, !tbaa !104
  %i.fk = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 56
  store i8 0, ptr %i.fk, align 8, !tbaa !104
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 88
  store i8 0, ptr %i.fl, align 8, !tbaa !104
  %i.fm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 120
  store i8 0, ptr %i.fm, align 8, !tbaa !104
  %i.fn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 152
  store i8 0, ptr %i.fn, align 8, !tbaa !104
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 184
  store i8 0, ptr %i.fo, align 8, !tbaa !104
  %i.fp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 216
  store i8 0, ptr %i.fp, align 8, !tbaa !104
  %i.fq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 248
  store i8 0, ptr %i.fq, align 8, !tbaa !104
  %i.fr = add nsw i64 %.057.i.i.i.i.i85, -8       ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i84, i64 256 ; 2 uses
  %.not.i.i.i.i.i86.7 = icmp eq i64 %i.fr, 0
  br i1 %.not.i.i.i.i.i86.7, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit, label %.lr.ph.i.i.i.i.i83, !llvm.loop !110

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit: ; preds = %.lr.ph.i.i.i.i.i83.prol.loopexit, %.lr.ph.i.i.i.i.i83, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i87 = phi ptr [ null, %_ZNSt12_Vector_baseIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa324.unr, %.lr.ph.i.i.i.i.i83.prol.loopexit ], [ %i.fs, %.lr.ph.i.i.i.i.i83 ]
  store ptr %.0.lcssa.i.i.i.i.i87, ptr %i.ez, align 8, !tbaa !111
  %i.ft = ptrtoint ptr %.0.lcssa.i.i.i.i.i to i64
  %i.fu = sub i64 %i.ft, %i.ey                    ; 2 uses
  %i.fv = and i64 %i.fu, 137438953440
  %.not64215.not = icmp eq i64 %i.fv, 0
  br i1 %.not64215.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit
  %i.fw = lshr exact i64 %i.fu, 5
  %i.fx = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 13 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.gb = zext i32 %i.dw to i64
  %wide.trip.count = and i64 %i.fw, 4294967295
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122 ] ; 9 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %indvars.iv
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !65 ; 3 uses
  %.not.i88 = icmp eq ptr %i.gd, null
  br i1 %.not.i88, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !54
  %i.gf = icmp eq i32 %i.ge, 2
  br i1 %i.gf, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit, label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.gg = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  %i.gh = icmp samesign ult i64 %indvars.iv, 10
  br i1 %i.gh, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.ae
  %.02230.i.i = phi i32 [ %i.go, %bb.ae ], [ %i.gg, %bb.y ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.gp, %bb.ae ], [ 1, %bb.y ] ; 4 uses
  %i.gi = icmp ult i32 %.02230.i.i, 100
  br i1 %i.gi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.gj = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.aa:                                            ; preds = %.lr.ph.i.i
  %i.gk = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.gk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gl = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ac:                                            ; preds = %bb.aa
  %i.gm = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.gm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gn = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.go = udiv i32 %.02230.i.i, 10000
  %i.gp = add i32 %.02329.i.i, 4                  ; 2 uses
  %i.gq = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.gq, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !115

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.ae, %bb.ad, %bb.ab, %bb.z, %bb.y
  %.0.i.i = phi i32 [ %i.gn, %bb.ad ], [ %i.gj, %bb.z ], [ %i.gl, %bb.ab ], [ 1, %bb.y ], [ %i.gp, %bb.ae ]
  %i.gr = zext i32 %.0.i.i to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  store ptr %i.gs, ptr %17, align 8, !tbaa !72, !alias.scope !112
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef %i.gr, i8 noundef signext 0) #17
  %i.gt = load ptr, ptr %17, align 8, !tbaa !88, !alias.scope !112 ; 4 uses
  %i.gu = icmp samesign ugt i64 %indvars.iv, 99
  br i1 %i.gu, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.gv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !74, !alias.scope !112
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = add i32 %i.gx, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.hb, %.lr.ph.i2.i ], [ %i.gg, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.hm, %.lr.ph.i2.i ], [ %i.gy, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.gz = urem i32 %.020.i.i, 100
  %i.ha = shl nuw nsw i32 %i.gz, 1
  %i.hb = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.hc = zext nneg i32 %i.ha to i64
  %i.hd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.hc ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !60, !noalias !112
  %i.hg = zext i32 %.01819.i.i to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hg
  store i8 %i.hf, ptr %i.hh, align 1, !tbaa !60
  %i.hi = load i8, ptr %i.hd, align 2, !tbaa !60, !noalias !112
  %i.hj = add i32 %.01819.i.i, -1
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hk
  store i8 %i.hi, ptr %i.hl, align 1, !tbaa !60
  %i.hm = add i32 %.01819.i.i, -2
  %i.hn = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.hn, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !116

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.gg, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i ], [ %i.hb, %.lr.ph.i2.i ] ; 3 uses
  %i.ho = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ho, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i.i
  %i.hp = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.hq ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !60, !noalias !112
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gt, i64 1
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !60
  %i.hv = load i8, ptr %i.hr, align 2, !tbaa !60, !noalias !112
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.hw = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.hx = or disjoint i8 %i.hw, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.af, %bb.ag
  %storemerge.i.i = phi i8 [ %i.hx, %bb.ag ], [ %i.hv, %bb.af ]
  store i8 %storemerge.i.i, ptr %i.gt, align 1, !tbaa !60
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.hy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 17) #17, !noalias !117 ; 6 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 5 uses
  store ptr %i.hz, ptr %16, align 8, !tbaa !72, !alias.scope !117
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !88 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 5 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

bb.ah:                                            ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !74 ; 3 uses
  %i.if = icmp ult i64 %i.ie, 16
  call void @llvm.assume(i1 %i.if)
  %i.ig = add nuw nsw i64 %i.ie, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hz, ptr noundef nonnull align 8 dereferenceable(1) %i.ib, i64 %i.ig, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZNSt7__cxx119to_stringEj.exit
  store ptr %i.ia, ptr %16, align 8, !tbaa !88, !alias.scope !117
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !60
  store i64 %i.ih, ptr %i.hz, align 8, !tbaa !60, !alias.scope !117
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.pre.i91 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !74
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  %i.ii = phi i64 [ %i.ie, %bb.ah ], [ %.pre.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 %i.ii, ptr %i.ik, align 8, !tbaa !74, !alias.scope !117
  store ptr %i.ib, ptr %i.hy, align 8, !tbaa !88
  store i64 0, ptr %i.ij, align 8, !tbaa !74
  store i8 0, ptr %i.ib, align 8, !tbaa !60
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !74, !noalias !120
  %i.im = add i64 %i.il, -4611686018427387880
  %i.in = icmp ult i64 %i.im, 24
  br i1 %i.in, label %bb.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.ai:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #19, !noalias !120
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.io = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.9, i64 noundef 24) #17, !noalias !120 ; 6 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  store ptr %i.ip, ptr %15, align 8, !tbaa !72, !alias.scope !120
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !88 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 5 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %bb.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !74 ; 3 uses
  %i.iv = icmp ult i64 %i.iu, 16
  call void @llvm.assume(i1 %i.iv)
  %i.iw = add nuw nsw i64 %i.iu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ip, ptr noundef nonnull align 8 dereferenceable(1) %i.ir, i64 %i.iw, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.iq, ptr %15, align 8, !tbaa !88, !alias.scope !120
  %i.ix = load i64, ptr %i.ir, align 8, !tbaa !60
  store i64 %i.ix, ptr %i.ip, align 8, !tbaa !60, !alias.scope !120
  %.phi.trans.insert.i93 = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %.pre.i94 = load i64, ptr %.phi.trans.insert.i93, align 8, !tbaa !74
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  %i.iy = phi i64 [ %i.iu, %bb.aj ], [ %.pre.i94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92 ]
  %i.iz = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.ja = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.iy, ptr %i.ja, align 8, !tbaa !74, !alias.scope !120
  store ptr %i.ir, ptr %i.io, align 8, !tbaa !88
  store i64 0, ptr %i.iz, align 8, !tbaa !74
  store i8 0, ptr %i.ir, align 8, !tbaa !60
  %i.jb = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i8 4, ptr %i.jb, align 8, !tbaa !61
  %i.jc = getelementptr inbounds nuw i8, ptr %14, i64 17
  store i8 1, ptr %i.jc, align 1, !tbaa !57
  store ptr %15, ptr %14, align 8, !tbaa !60
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %2, i32 noundef 0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(18) %14, i32 noundef 0) #17
  %i.jd = load ptr, ptr %15, align 8, !tbaa !88   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.ip
  br i1 %i.je, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.jf = load i64, ptr %i.ip, align 8, !tbaa !60
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97
end_hunk_0
begin_hunk_1_@_ZN6hermes15SourceMapParser5parseEN4llvh15MemoryBufferRefERNS_18SourceErrorManagerE:bb.a

bb.ar:                                            ; preds = %bb.aq
  %i.kq = add nsw i32 %i.kh, -1
  store i32 %i.kq, ptr %i.ke, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.aq
  %i.kr = atomicrmw volatile add ptr %i.ke, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kh, %bb.ar ], [ %i.kr, %bb.as ]
  %i.ks = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ks, label %bb.at, label %_ZNSt12__shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !135

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.kd) #17
  br label %_ZNSt12__shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %_ZNSt10shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorEEC2IS1_vEERKS_IT_E.exit
  store ptr %i.c, ptr %i.kc, align 8, !tbaa !133
  store i8 1, ptr %i.jy, align 8, !tbaa !104
  br label %_ZNSt12__shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.au, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.ap, %bb.an, %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringEKNS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.kt = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !76 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !51, !noalias !142 ; 3 uses
  %.not.i.i109 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i109, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt12__shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  store ptr %i.fz, ptr %18, align 8, !tbaa !72, !alias.scope !142
  store i64 0, ptr %i.ga, align 8, !tbaa !74, !alias.scope !142
  store i8 0, ptr %i.fz, align 8, !tbaa !60, !alias.scope !142
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit112

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIKN6hermes28BacktrackingBumpPtrAllocatorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !86, !noalias !142 ; 4 uses
  store ptr %i.fz, ptr %18, align 8, !tbaa !72, !alias.scope !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17, !noalias !142
  store i64 %i.kx, ptr %i.a, align 8, !tbaa !87, !noalias !142
  %i.ky = icmp ugt i64 %i.kx, 15
  br i1 %i.ky, label %bb.ax, label %._crit_edge.i.i.i.i110

bb.ax:                                            ; preds = %bb.aw
  %i.kz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.kz, ptr %18, align 8, !tbaa !88, !alias.scope !142
  %i.la = load i64, ptr %i.a, align 8, !tbaa !87, !noalias !142
  store i64 %i.la, ptr %i.fz, align 8, !tbaa !60, !alias.scope !142
  br label %._crit_edge.i.i.i.i110

._crit_edge.i.i.i.i110:                           ; preds = %bb.ax, %bb.aw
  %i.lb = phi ptr [ %i.kz, %bb.ax ], [ %i.fz, %bb.aw ] ; 2 uses
  switch i64 %i.kx, label %bb.az [
    i64 1, label %bb.ay
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i111
  ]

bb.ay:                                            ; preds = %._crit_edge.i.i.i.i110
  %i.lc = load i8, ptr %i.kv, align 1, !tbaa !60
  store i8 %i.lc, ptr %i.lb, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i111

bb.az:                                            ; preds = %._crit_edge.i.i.i.i110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr nonnull align 1 %i.kv, i64 %i.kx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i111: ; preds = %bb.az, %bb.ay, %._crit_edge.i.i.i.i110
  %i.ld = load i64, ptr %i.a, align 8, !tbaa !87, !noalias !142 ; 2 uses
  store i64 %i.ld, ptr %i.ga, align 8, !tbaa !74, !alias.scope !142
  %i.le = load ptr, ptr %18, align 8, !tbaa !88, !alias.scope !142
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.ld
  store i8 0, ptr %i.lf, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17, !noalias !142
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit112

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit112: ; preds = %bb.av, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i111
  %i.lg = load ptr, ptr %12, align 8, !tbaa !91
  %i.lh = getelementptr inbounds nuw [32 x i8], ptr %i.lg, i64 %indvars.iv ; 9 uses
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !88 ; 6 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 16 ; 4 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  %i.ll = load ptr, ptr %18, align 8, !tbaa !88   ; 6 uses
  %i.lm = icmp eq ptr %i.ll, %i.fz                ; 2 uses
  %.pre225 = load i64, ptr %i.ga, align 8, !tbaa !74 ; 5 uses
  br i1 %i.lk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i118: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit112
  br i1 %i.lm, label %bb.ba, label %.thread.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i113: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit112
  br i1 %i.lm, label %bb.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i114

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i113, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i118
  %i.ln = icmp ult i64 %.pre225, 16
  call void @llvm.assume(i1 %i.ln)
  %.not21.i = icmp eq ptr %18, %i.lh
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120, label %bb.bb, !prof !135

bb.bb:                                            ; preds = %bb.ba
  switch i64 %.pre225, label %bb.bd [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116
    i64 1, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.lo = load i8, ptr %i.ll, align 1, !tbaa !60
  store i8 %i.lo, ptr %i.li, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.li, ptr align 1 %i.ll, i64 %.pre225, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116: ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.lp = load i64, ptr %i.ga, align 8, !tbaa !74 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 %i.lp, ptr %i.lq, align 8, !tbaa !74
  %i.lr = load ptr, ptr %i.lh, align 8, !tbaa !88
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.lp
  store i8 0, ptr %i.ls, align 1, !tbaa !60
  %.pre.i117 = load ptr, ptr %18, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120

.thread.i119:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i118
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store ptr %i.ll, ptr %i.lh, align 8, !tbaa !88
  store i64 %.pre225, ptr %i.lt, align 8, !tbaa !74
  %i.lu = load i64, ptr %i.fz, align 8, !tbaa !60
  store i64 %i.lu, ptr %i.lj, align 8, !tbaa !60
  br label %bb.bf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i114: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i113
  %i.lv = load i64, ptr %i.lj, align 8, !tbaa !60
  store ptr %i.ll, ptr %i.lh, align 8, !tbaa !88
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i64 %.pre225, ptr %i.lw, align 8, !tbaa !74
  %i.lx = load i64, ptr %i.fz, align 8, !tbaa !60
  store i64 %i.lx, ptr %i.lj, align 8, !tbaa !60
  %.not.i115 = icmp eq ptr %i.li, null
  br i1 %.not.i115, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i114
  store ptr %i.li, ptr %18, align 8, !tbaa !88
  store i64 %i.lv, ptr %i.fz, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i114, %.thread.i119
  store ptr %i.fz, ptr %18, align 8, !tbaa !88
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120: ; preds = %bb.ba, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116, %bb.be, %bb.bf
  %i.ly = phi ptr [ %i.li, %bb.be ], [ %i.fz, %bb.bf ], [ %i.ll, %bb.ba ], [ %.pre.i117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i116 ]
  store i64 0, ptr %i.ga, align 8, !tbaa !74
  store i8 0, ptr %i.ly, align 1, !tbaa !60
  %i.lz = load ptr, ptr %18, align 8, !tbaa !88   ; 2 uses
  %i.ma = icmp eq ptr %i.lz, %i.fz
  br i1 %i.ma, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120
  %i.mb = load i64, ptr %i.fz, align 8, !tbaa !60
  %i.mc = add i64 %i.mb, 1
  call void @_ZdlPvm(ptr noundef %i.lz, i64 noundef %i.mc) #18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit120, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.w, !llvm.loop !143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bm

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i122, %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EEC2EmRKS6_.exit
  %i.md = load ptr, ptr %i.ag, align 8, !tbaa !62
  %i.me = call { i64, i8 } @_ZN6hermes6parser15JSONHiddenClass4findEN4llvh9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr nonnull @.str.10, i64 8) ; 2 uses
  %i.mf = extractvalue { i64, i8 } %i.me, 1
  %i.mg = trunc nuw i8 %i.mf to i1
  br i1 %i.mg, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125: ; preds = %.critedge
  %i.mh = extractvalue { i64, i8 } %i.me, 0
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.mh
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !65 ; 3 uses
  %.not.i126 = icmp eq ptr %i.mj, null
  br i1 %.not.i126, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125.thread, label %bb.bg

bb.bg:                                            ; preds = %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !54
  %i.ml = icmp eq i32 %i.mk, 2
  br i1 %i.ml, label %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit128, label %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125.thread

_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125.thread: ; preds = %.critedge, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #17
  %i.mm = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %19, i64 17
  store i8 1, ptr %i.mn, align 1, !tbaa !57
  store ptr @.str.11, ptr %19, align 8, !tbaa !60
  store i8 3, ptr %i.mm, align 8, !tbaa !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %2, i32 noundef 0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(18) %19, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #17
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bm

_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit128: ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !76 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %i.mp, align 8, !tbaa !144
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.mp, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !87
  %i.mq = call noundef zeroext i1 @_ZN6hermes15SourceMapParser13parseMappingsEN4llvh9StringRefERSt6vectorIS3_INS_9SourceMap7SegmentESaIS5_EESaIS7_EE(ptr %.sroa.02.0.copyload, i64 %.sroa.2.0.copyload, ptr noundef nonnull align 8 dereferenceable(24) %20)
  br i1 %i.mq, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.mr = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ms = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 1, ptr %i.ms, align 1, !tbaa !57
  store ptr @.str.12, ptr %21, align 8, !tbaa !60
  store i8 3, ptr %i.mr, align 8, !tbaa !61
  call void @_ZN6hermes18SourceErrorManager7messageENS0_8DiagKindEN4llvh5SMLocERKNS2_5TwineENS_9SubsystemE(ptr noundef nonnull align 8 dereferenceable(464) %2, i32 noundef 0, ptr %i.aa, ptr noundef nonnull align 8 dereferenceable(18) %21, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #17
  store ptr null, ptr %0, align 8, !tbaa !48
  br label %bb.bj

bb.bi:                                            ; preds = %_ZN4llvh16dyn_cast_or_nullIN6hermes6parser10JSONStringENS2_9JSONValueEEENS_10cast_rettyIT_PT0_E8ret_typeES8_.exit128
  call void @_ZSt11make_uniqueIN6hermes9SourceMapEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EES9_IS9_INS1_7SegmentESaISC_EESaISE_EES9_IN4llvh8OptionalINS0_6parser15JSONSharedValueEEESaISL_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %20, ptr noundef nonnull align 8 dereferenceable(24) %13)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.mt = load ptr, ptr %20, align 8, !tbaa !145  ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !148 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.mt, %i.mv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bj, %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.nc, %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i ], [ %i.mt, %bb.bj ] ; 3 uses
  %i.mw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !149 ; 3 uses
  %.not.i.i.i.i.i.i.i129 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i.i.i.i.i129, label %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !152
  %i.mz = ptrtoint ptr %i.my to i64
  %i.na = ptrtoint ptr %i.mw to i64
  %i.nb = sub i64 %i.mz, %i.na
  call void @_ZdlPvm(ptr noundef nonnull %i.mw, i64 noundef %i.nb) #18
  br label %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i: ; preds = %bb.bk, %.lr.ph.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i130 = icmp eq ptr %i.nc, %i.mv
  br i1 %.not.i.i.i130, label %_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !153

_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %20, align 8, !tbaa !145
  br label %_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exit.i

_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exitthread-pre-split.i, %bb.bj
  %i.nd = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exitthread-pre-split.i ], [ %i.mt, %bb.bj ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.nd, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EED2Ev.exit, label %bb.bl

bb.bl:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exit.i
  %i.ne = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !154
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.nd to i64
  %i.ni = sub i64 %i.ng, %i.nh
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.ni) #18
  br label %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EED2Ev.exit

_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIN6hermes9SourceMap7SegmentESaIS3_EEEvT_S7_.exit.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #17
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i102, %_ZNK6hermes6parser10JSONObject3getEN4llvh9StringRefE.exit125.thread, %_ZNSt6vectorIS_IN6hermes9SourceMap7SegmentESaIS2_EESaIS4_EED2Ev.exit
  %i.nj = load ptr, ptr %13, align 8, !tbaa !100  ; 3 uses
  %i.nk = load ptr, ptr %i.ez, align 8, !tbaa !111 ; 2 uses
  %.not4.i.i.i131 = icmp eq ptr %i.nj, %i.nk
  br i1 %.not4.i.i.i131, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i132

.lr.ph.i.i.i132:                                  ; preds = %bb.bm, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.05.i.i.i133 = phi ptr [ %i.of, %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i ], [ %i.nj, %bb.bm ] ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.05.i.i.i133, i64 24
  %i.nm = load i8, ptr %i.nl, align 8, !tbaa !104, !range !123, !noundef !124
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %bb.bn, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.bn:                                            ; preds = %.lr.ph.i.i.i132
  %i.no = getelementptr inbounds nuw i8, ptr %.05.i.i.i133, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !133 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.np, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8 ; 4 uses
  %i.nr = load atomic i64, ptr %i.nq acquire, align 8 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 4294967297
  %i.nt = trunc i64 %i.nr to i32                  ; 2 uses
  br i1 %i.ns, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.nq, align 8, !tbaa !12
  %i.nu = getelementptr inbounds nuw i8, ptr %i.np, i64 12
  store i32 0, ptr %i.nu, align 4, !tbaa !15
  %i.nv = load ptr, ptr %i.np, align 8, !tbaa !16
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  %i.nx = load ptr, ptr %i.nw, align 8
  call void %i.nx(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #17, !inline_history !155
  %i.ny = load ptr, ptr %i.np, align 8, !tbaa !16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.oa = load ptr, ptr %i.nz, align 8
  call void %i.oa(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #17, !inline_history !155
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ob, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.oc = add nsw i32 %i.nt, -1
  store i32 %i.oc, ptr %i.nq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.od = atomicrmw volatile add ptr %i.nq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bs, %bb.br
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.nt, %bb.br ], [ %i.od, %bb.bs ]
  %i.oe = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.oe, label %bb.bt, label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i, !prof !135

bb.bt:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.np) #17
  br label %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i: ; preds = %bb.bt, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.bp, %bb.bn, %.lr.ph.i.i.i132
  %i.of = getelementptr inbounds nuw i8, ptr %.05.i.i.i133, i64 32 ; 2 uses
  %.not.i.i.i134 = icmp eq ptr %i.of, %i.nk
  br i1 %.not.i.i.i134, label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i132, !llvm.loop !156

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvPT_.exit.i.i.i
  %.pr.i135 = load ptr, ptr %13, align 8, !tbaa !100
  br label %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i

_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i, %bb.bm
  %i.og = phi ptr [ %.pr.i135, %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exitthread-pre-split.i ], [ %i.nj, %bb.bm ] ; 3 uses
  %.not.i.i1.i136 = icmp eq ptr %i.og, null
  br i1 %.not.i.i1.i136, label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i
  %i.oh = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !103
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.og to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.ol) #18
  br label %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit

_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEEEvT_S7_.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  %i.om = load ptr, ptr %12, align 8, !tbaa !91   ; 3 uses
  %i.on = load ptr, ptr %i.ea, align 8, !tbaa !99 ; 2 uses
  %.not4.i.i.i137 = icmp eq ptr %i.om, %i.on
  br i1 %.not4.i.i.i137, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i138

.lr.ph.i.i.i138:                                  ; preds = %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i139 = phi ptr [ %i.ot, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.om, %_ZNSt6vectorIN4llvh8OptionalIN6hermes6parser15JSONSharedValueEEESaIS5_EED2Ev.exit ] ; 3 uses
  %i.oo = load ptr, ptr %.05.i.i.i139, align 8, !tbaa !88 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.05.i.i.i139, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i138
  %i.or = load i64, ptr %i.op, align 8, !tbaa !60
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #18
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.05.i.i.i139, i64 32 ; 2 uses
  %.not.i.i.i140 = icmp eq ptr %i.ot, %i.on
  br i1 %.not.i.i.i140, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i138, !llvm.loop !157
end_hunk_1
