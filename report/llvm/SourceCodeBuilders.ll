Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SourceCodeBuilders?download=true
inline.NumInlined: 1160
inline.NumDeleted: 689
begin_hunk_0
%"struct.std::_Optional_payload.base.767" = type { %"struct.std::_Optional_payload_base.base.766" }
%"struct.std::_Optional_payload_base.base.766" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.61 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.61 = type { i64, [8 x i8] }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.clang::QualType" = type { %"class.llvm::PointerIntPair.3" }
%"class.llvm::PointerIntPair.3" = type { %"struct.llvm::detail::PunnedPointer.4" }
%"struct.llvm::detail::PunnedPointer.4" = type { [8 x i8] }
%"class.clang::TemplateName" = type { %"class.llvm::PointerUnion.54" }
%"class.llvm::PointerUnion.54" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.55" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.55" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.56" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.56" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.57" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.57" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.58" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.58" = type { %"class.llvm::pointer_union_detail::PointerUnionMembers.59" }
%"class.llvm::pointer_union_detail::PointerUnionMembers.59" = type { %"struct.llvm::detail::PunnedPointer.2" }
%"struct.llvm::detail::PunnedPointer.2" = type { [8 x i8] }
%"class.clang::ast_matchers::internal::CollectMatchesCallback" = type { %"class.clang::ast_matchers::MatchFinder::MatchCallback", %"class.llvm::SmallVector.755" }
%"class.clang::ast_matchers::MatchFinder::MatchCallback" = type { ptr }
%"class.clang::ast_matchers::MatchFinder" = type { %"struct.clang::ast_matchers::MatchFinder::MatchersByType", %"struct.clang::ast_matchers::MatchFinder::MatchFinderOptions", ptr }
%"struct.clang::ast_matchers::MatchFinder::MatchersByType" = type { %"class.std::vector.965", %"class.std::vector.970", %"class.std::vector.975", %"class.std::vector.980", %"class.std::vector.985", %"class.std::vector.990", %"class.std::vector.995", %"class.std::vector.1000", %"class.llvm::SmallPtrSet.1005" }
%"class.std::vector.965" = type { %"struct.std::_Vector_base.966" }
%"struct.std::_Vector_base.966" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::DynTypedMatcher, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::DynTypedMatcher, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::DynTypedMatcher, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::DynTypedMatcher, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::DynTypedMatcher, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::DynTypedMatcher, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::DynTypedMatcher, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::DynTypedMatcher, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.970" = type { %"struct.std::_Vector_base.971" }
%"struct.std::_Vector_base.971" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::QualType>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::QualType>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::QualType>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::QualType>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::QualType>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::QualType>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::QualType>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::QualType>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.975" = type { %"struct.std::_Vector_base.976" }
%"struct.std::_Vector_base.976" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifier>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifier>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifier>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifier>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifier>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifier>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifier>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifier>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.980" = type { %"struct.std::_Vector_base.981" }
%"struct.std::_Vector_base.981" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifierLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifierLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifierLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifierLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifierLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifierLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifierLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::NestedNameSpecifierLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.985" = type { %"struct.std::_Vector_base.986" }
%"struct.std::_Vector_base.986" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::TypeLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::TypeLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::TypeLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::TypeLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::TypeLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::TypeLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::TypeLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::TypeLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.990" = type { %"struct.std::_Vector_base.991" }
%"struct.std::_Vector_base.991" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::CXXCtorInitializer>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::CXXCtorInitializer>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::CXXCtorInitializer>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::CXXCtorInitializer>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::CXXCtorInitializer>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::CXXCtorInitializer>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::CXXCtorInitializer>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::CXXCtorInitializer>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.995" = type { %"struct.std::_Vector_base.996" }
%"struct.std::_Vector_base.996" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::TemplateArgumentLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::TemplateArgumentLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::TemplateArgumentLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::TemplateArgumentLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::TemplateArgumentLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::TemplateArgumentLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::TemplateArgumentLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::TemplateArgumentLoc>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.1000" = type { %"struct.std::_Vector_base.1001" }
%"struct.std::_Vector_base.1001" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::Attr>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::Attr>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::Attr>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::Attr>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::Attr>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::Attr>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<clang::ast_matchers::internal::Matcher<clang::Attr>, clang::ast_matchers::MatchFinder::MatchCallback *>, std::allocator<std::pair<clang::ast_matchers::internal::Matcher<clang::Attr>, clang::ast_matchers::MatchFinder::MatchCallback *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::SmallPtrSet.1005" = type { %"class.llvm::SmallPtrSetImpl.base.1007", [16 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.1007" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"struct.clang::ast_matchers::MatchFinder::MatchFinderOptions" = type { %"class.std::optional.1008", i8, i8, [6 x i8] }
%"class.std::optional.1008" = type { %"struct.std::_Optional_base.1009" }
%"struct.std::_Optional_base.1009" = type { %"struct.std::_Optional_payload.1011" }
%"struct.std::_Optional_payload.1011" = type { %"struct.std::_Optional_payload_base.base.1013", [7 x i8] }
%"struct.std::_Optional_payload_base.base.1013" = type <{ %"union.std::_Optional_payload_base<clang::ast_matchers::MatchFinder::MatchFinderOptions::Profiling>::_Storage", i8 }>
%"union.std::_Optional_payload_base<clang::ast_matchers::MatchFinder::MatchFinderOptions::Profiling>::_Storage" = type { %"struct.clang::ast_matchers::MatchFinder::MatchFinderOptions::Profiling" }
%"struct.clang::ast_matchers::MatchFinder::MatchFinderOptions::Profiling" = type { ptr }
%"class.clang::ast_matchers::internal::Matcher.48" = type { %"class.clang::ast_matchers::internal::DynTypedMatcher" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, clang::DynTypedNode>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, clang::DynTypedNode>>, std::less<void>>::_Alloc_node" = type { ptr }

$_ZNK5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0Matcher7matchesERKNS_4TypeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZNK5clang12ast_matchers8internal19DynMatcherInterface13TraversalKindEv = comdat any

$_ZNK5clang12ast_matchers8internal16MatcherInterfaceINS_8QualTypeEE10dynMatchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZN5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0MatcherD2Ev = comdat any

$_ZN5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0MatcherD0Ev = comdat any

$_ZNK5clang12ast_matchers8internal16MatcherInterfaceINS_4TypeEE10dynMatchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5clang12DynTypedNodeEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5clang12DynTypedNodeEESt10_Select1stISA_ESt4lessIvESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt13_Rb_tree_nodeISA_ESL_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNK5clang14ObjCObjectType12getInterfaceEv = comdat any

$_ZN5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEED2Ev = comdat any

$_ZN5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEED0Ev = comdat any

$_ZNK5clang12ast_matchers8internal16MatcherInterfaceINS_10RecordTypeEE10dynMatchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZNK5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZNK5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEE18matchesSpecializedERKNS_4TypeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZNK5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEE11matchesDeclEPKS5_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZNK5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEE18matchesSpecializedERKNS_8QualTypeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZN5clang12ast_matchers5matchINS0_8internal15BindableMatcherINS_4TypeEEEEEN4llvm11SmallVectorINS0_10BoundNodesELj1EEET_RKNS_12DynTypedNodeERNS_10ASTContextE = comdat any

$_ZN5clang12ast_matchers8internal22CollectMatchesCallbackD2Ev = comdat any

$_ZN5clang12ast_matchers8internal22CollectMatchesCallbackD0Ev = comdat any

$_ZN5clang12ast_matchers8internal22CollectMatchesCallback3runERKNS0_11MatchFinder11MatchResultE = comdat any

$_ZN5clang12ast_matchers11MatchFinder13MatchCallback24onStartOfTranslationUnitEv = comdat any

$_ZN5clang12ast_matchers11MatchFinder13MatchCallback22onEndOfTranslationUnitEv = comdat any

$_ZNK5clang12ast_matchers8internal22CollectMatchesCallback21getCheckTraversalKindEv = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers10BoundNodesELb0EE9push_backERKS3_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIN5clang12ast_matchers10BoundNodesELb0EE4growEm = comdat any

$_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEED2Ev = comdat any

$_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEED0Ev = comdat any

$_ZNK5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEE13TraversalKindEv = comdat any

$_ZNK5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE = comdat any

$_ZN4llvm15SmallVectorImplIN5clang12ast_matchers10BoundNodesEEaSEOS4_ = comdat any

$_ZTVN5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0MatcherE = comdat any

$_ZTVN5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEEE = comdat any

$_ZTVN5clang12ast_matchers8internal22CollectMatchesCallbackE = comdat any

$_ZTVN5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEEE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"::std::unique_ptr\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"::std::shared_ptr\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"::std::weak_ptr\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"::std::optional\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"::absl::optional\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"::llvm::Optional\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"absl::StatusOr\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"::llvm::Expected\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"*(\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"&(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@_ZTVN5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0MatcherE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0MatcherD2Ev, ptr @_ZN5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0MatcherD0Ev, ptr @_ZNK5clang12ast_matchers8internal16MatcherInterfaceINS_4TypeEE10dynMatchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE, ptr @_ZNK5clang12ast_matchers8internal19DynMatcherInterface13TraversalKindEv, ptr @_ZNK5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0Matcher7matchesERKNS_4TypeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE] }, comdat, align 8
@.str.21 = private unnamed_addr constant [4 x i8] c")->\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c").\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTVN5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEEE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEED2Ev, ptr @_ZN5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEED0Ev, ptr @_ZNK5clang12ast_matchers8internal16MatcherInterfaceINS_10RecordTypeEE10dynMatchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE, ptr @_ZNK5clang12ast_matchers8internal19DynMatcherInterface13TraversalKindEv, ptr @_ZNK5clang12ast_matchers8internal21HasDeclarationMatcherINS_10RecordTypeENS1_7MatcherINS_4DeclEEEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE] }, comdat, align 8
@_ZTVN5clang12ast_matchers8internal22CollectMatchesCallbackE = linkonce_odr unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN5clang12ast_matchers8internal22CollectMatchesCallbackD2Ev, ptr @_ZN5clang12ast_matchers8internal22CollectMatchesCallbackD0Ev, ptr @_ZN5clang12ast_matchers8internal22CollectMatchesCallback3runERKNS0_11MatchFinder11MatchResultE, ptr @_ZN5clang12ast_matchers11MatchFinder13MatchCallback24onStartOfTranslationUnitEv, ptr @_ZN5clang12ast_matchers11MatchFinder13MatchCallback22onEndOfTranslationUnitEv, ptr @_ZNK5clang12ast_matchers11MatchFinder13MatchCallback5getIDEv, ptr @_ZNK5clang12ast_matchers8internal22CollectMatchesCallback21getCheckTraversalKindEv] }, comdat, align 8
@_ZTVN5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEEE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEED2Ev, ptr @_ZN5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEED0Ev, ptr @_ZNK5clang12ast_matchers8internal16MatcherInterfaceINS_8QualTypeEE10dynMatchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE, ptr @_ZNK5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEE13TraversalKindEv, ptr @_ZNK5clang12ast_matchers8internal7MatcherINS_8QualTypeEE14TypeToQualTypeINS_4TypeEE7matchesERKS3_PNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE] }, comdat, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

declare noundef zeroext i1 @_ZNK5clang12ast_matchers8internal14ASTMatchFinder32isTraversalIgnoringImplicitNodesEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang12ast_matchers8internal43matcher_hasUnqualifiedDesugaredType0Matcher7matchesERKNS_4TypeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 16 dereferenceable(24) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %1) #13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.c = tail call i32 @_ZN5clang11ASTNodeKind11getFromNodeERKNS_4TypeE(ptr noundef nonnull align 16 dereferenceable(24) %i.b) #13, !noalias !85
  store i32 %i.c, ptr %4, align 8, !tbaa !13, !alias.scope !85
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !15, !alias.scope !85
  %i.e = call noundef zeroext i1 @_ZNK5clang12ast_matchers8internal15DynTypedMatcher7matchesERKNS_12DynTypedNodeEPNS1_14ASTMatchFinderEPNS1_21BoundNodesTreeBuilderE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %2, ptr noundef %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i1 %i.e
}

declare noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef ptr @_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE(ptr nofree noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #14 ; 7 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 511                        ; 2 uses
  %i.d = add nsw i16 %i.c, -119
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i16 %i.d, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i16 %i.c, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #14
  %i.j = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #14
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c, %.critedge
  %i.m = phi ptr [ %i.l, %.critedge ], [ %i.a, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  ret ptr %i.m
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZN5clang7tooling17mayEverNeedParensERKNS_4ExprE(ptr nofree noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %0) #14 ; 7 uses
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = and i16 %i.b, 511                        ; 2 uses
  %i.d = add nsw i16 %i.c, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.d, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i16 %i.c, 118
  %spec.select.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 48, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #14
  %i.j = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #14
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.critedge.i, label %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit

.critedge.i:                                      ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #14 ; 2 uses
  %.pre = load i16, ptr %i.l, align 8
  br label %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit

_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit: ; preds = %bb.a, %bb.b, %bb.c, %.critedge.i
  %i.m = phi i16 [ %.pre, %.critedge.i ], [ %i.b, %bb.c ], [ %i.b, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.l, %.critedge.i ], [ %i.a, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ]
  %i.o = and i16 %i.m, 511                        ; 2 uses
  %i.p = icmp eq i16 %i.o, 4
  br i1 %i.p, label %switch.edge, label %bb.d

bb.d:                                             ; preds = %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit
  %i.q = and i16 %i.m, 510
  switch i16 %i.q, label %bb.e [
    i16 122, label %switch.edge
    i16 132, label %switch.edge
  ]

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i16 %i.o, 93
  br i1 %.not, label %bb.f, label %switch.edge

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.n, align 8
  %i.s = lshr i32 %i.r, 25
  %i.t = and i32 %i.s, 63
  %i.u = add nsw i32 %i.t, -44
  %switch = icmp ult i32 %i.u, -3
  br label %switch.edge

switch.edge:                                      ; preds = %bb.e, %bb.f, %bb.d, %bb.d, %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit
  %.1 = phi i1 [ true, %bb.d ], [ true, %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit ], [ true, %bb.d ], [ %switch, %bb.f ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local noundef zeroext i1 @_ZN5clang7tooling28needParensAfterUnaryOperatorERKNS_4ExprE(ptr nofree noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %0) #14 ; 7 uses
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = and i16 %i.b, 511                        ; 2 uses
  %i.d = add nsw i16 %i.c, -119
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.d, -2
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !26
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i.i.i = icmp eq i16 %i.c, 118
  %spec.select.v.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 48, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.v.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !28   ; 2 uses
  %i.i = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #14
  %i.j = tail call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #14
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.critedge.i, label %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit

.critedge.i:                                      ; preds = %bb.c
  %i.l = tail call noundef ptr @_ZN5clang4Expr14IgnoreImplicitEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #14 ; 2 uses
  %.pre = load i16, ptr %i.l, align 8
  br label %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit

_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit: ; preds = %bb.a, %bb.b, %bb.c, %.critedge.i
  %i.m = phi i16 [ %.pre, %.critedge.i ], [ %i.b, %bb.c ], [ %i.b, %bb.a ], [ %i.b, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.l, %.critedge.i ], [ %i.a, %bb.c ], [ %i.a, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  %i.o = and i16 %i.m, 510
  switch i16 %i.o, label %bb.d [
    i16 122, label %switch.edge
    i16 132, label %switch.edge
  ]

bb.d:                                             ; preds = %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit
  %i.p = and i16 %i.m, 511
  %.not = icmp eq i16 %i.p, 93
  br i1 %.not, label %bb.e, label %switch.edge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !30
  %i.s = icmp eq i32 %i.r, 2
  br i1 %i.s, label %switch.lookup, label %switch.edge

switch.lookup:                                    ; preds = %bb.e
  %i.t = load i32, ptr %i.n, align 8
  %i.u = lshr i32 %i.t, 25
  %i.v = and i32 %i.u, 63
  %switch.cast = zext nneg i32 %i.v to i64
  %switch.downshift = lshr i64 -13606456393729, %switch.cast
  %switch.masked = trunc i64 %switch.downshift to i1
  br label %switch.edge

switch.edge:                                      ; preds = %switch.lookup, %bb.e, %bb.d, %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit, %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit
  %.1 = phi i1 [ true, %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit ], [ true, %_ZN5clang7tooling20reallyIgnoreImplicitERKNS_4ExprE.exit ], [ false, %bb.e ], [ %switch.masked, %switch.lookup ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5clang7tooling22isKnownPointerLikeTypeENS_8QualTypeERNS_10ASTContextE(i64 %0, ptr noundef nonnull align 8 dereferenceable(23904) %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.746", align 8 ; 7 uses
  %3 = alloca %"class.clang::DynTypedNode", align 8 ; 5 uses
  %4 = alloca %"class.clang::ast_matchers::internal::Matcher.121", align 8 ; 5 uses
  %5 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.954", align 8 ; 7 uses
  %6 = alloca %"class.clang::ast_matchers::internal::Matcher.60", align 8 ; 5 uses
  %7 = alloca %"class.clang::ast_matchers::internal::BindableMatcher.945", align 8 ; 5 uses
  %i.a = alloca [8 x ptr], align 16               ; 11 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 5 uses
  %10 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %11 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %13 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %14 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %.sroa.032 = alloca [16 x i8], align 8          ; 4 uses
  %.sroa.022 = alloca [16 x i8], align 8          ; 4 uses
  %15 = alloca %"class.clang::ast_matchers::internal::Matcher.219", align 8 ; 5 uses
  %16 = alloca %"class.clang::ast_matchers::internal::Matcher.106", align 8 ; 5 uses
  %17 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %18 = alloca %"class.llvm::SmallVector.755", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.022)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store ptr @.str.3, ptr %17, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 17, ptr %i.b, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13, !noalias !139
  store ptr @.str.4, ptr %8, align 8, !tbaa !137, !noalias !139
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 17, ptr %i.c, align 8, !tbaa !138, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13, !noalias !139
  store ptr @.str.5, ptr %9, align 8, !tbaa !137, !noalias !139
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 15, ptr %i.d, align 8, !tbaa !138, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13, !noalias !139
  store ptr @.str.6, ptr %10, align 8, !tbaa !137, !noalias !139
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 15, ptr %i.e, align 8, !tbaa !138, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13, !noalias !139
  store ptr @.str.7, ptr %11, align 8, !tbaa !137, !noalias !139
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 16, ptr %i.f, align 8, !tbaa !138, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13, !noalias !139
  store ptr @.str.8, ptr %12, align 8, !tbaa !137, !noalias !139
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 16, ptr %i.g, align 8, !tbaa !138, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13, !noalias !139
  store ptr @.str.9, ptr %13, align 8, !tbaa !137, !noalias !139
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 14, ptr %i.h, align 8, !tbaa !138, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13, !noalias !139
  store ptr @.str.10, ptr %14, align 8, !tbaa !137, !noalias !139
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 16, ptr %i.i, align 8, !tbaa !138, !noalias !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !140
  store ptr %17, ptr %i.a, align 16, !tbaa !142, !noalias !140
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %8, ptr %i.j, align 8, !tbaa !142, !noalias !140
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %9, ptr %i.k, align 16, !tbaa !142, !noalias !140
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %10, ptr %i.l, align 8, !tbaa !142, !noalias !140
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %11, ptr %i.m, align 16, !tbaa !142, !noalias !140
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %12, ptr %i.n, align 8, !tbaa !142, !noalias !140
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %13, ptr %i.o, align 16, !tbaa !142, !noalias !140
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %14, ptr %i.p, align 8, !tbaa !142, !noalias !140
  call void @_ZN5clang12ast_matchers8internal14hasAnyNameFuncEN4llvm8ArrayRefIPKNS2_9StringRefEEE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::Matcher.106") align 8 %16, ptr nonnull %i.a, i64 8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13, !noalias !139
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13, !noalias !139
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 148) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13, !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13, !noalias !143
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 12, i1 false), !noalias !143
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35, !noalias !145 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !35, !alias.scope !144, !noalias !143
  %.not.i.i.i.i.i2.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i2.i.i.i, label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = atomicrmw add ptr %i.t, i32 1 monotonic, align 4, !noalias !145 ; 0 uses
  br label %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i

_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i: ; preds = %bb.b, %bb.a
  call void @_ZNK5clang12ast_matchers8internal15DynTypedMatcher9dynCastToENS_11ASTNodeKindE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ast_matchers::internal::DynTypedMatcher") align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, i32 80) #13, !noalias !143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.022, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35, !noalias !143 ; 10 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null  ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i, label %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i

_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i: ; preds = %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = atomicrmw add ptr %i.x, i32 1 monotonic, align 4, !noalias !143 ; 0 uses
  %.pr.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !35, !noalias !143 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i32 1 acq_rel, align 4, !noalias !143
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.d, label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %.pr.i.i.i, align 8, !tbaa !37, !noalias !143
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !143
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %.pr.i.i.i) #13, !noalias !143, !inline_history !98
  br label %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i

_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i: ; preds = %bb.d, %bb.c, %_ZN5clang12ast_matchers8internal15BindableMatcherINS_4DeclEEC2ERKNS1_7MatcherIS3_EE.exit.i.i.i, %_ZN5clang12ast_matchers8internal18makeAllOfCompositeINS_13CXXRecordDeclEEENS1_15BindableMatcherIT_EEN4llvm8ArrayRefIPKNS1_7MatcherIS5_EEEE.exit.i.i
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !35, !noalias !143 ; 4 uses
  %.not.i.i.i.i3.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i3.i.i.i, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = atomicrmw sub ptr %i.ag, i32 1 acq_rel, align 4, !noalias !143
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.f, label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

bb.f:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !37, !noalias !143
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !143
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #13, !noalias !143, !inline_history !99
  br label %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit

_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit: ; preds = %_ZN5clang12ast_matchers8internal7MatcherINS_4DeclEED2Ev.exit.i.i.i, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13, !noalias !143
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13, !noalias !143
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang12ast_matchers8internal16VariadicFunctionINS1_15BindableMatcherINS_4DeclEEENS1_7MatcherINS_13CXXRecordDeclEEEXadL_ZNS1_25makeDynCastAllOfCompositeIS4_S7_EENS3_IT_EEN4llvm8ArrayRefIPKNS6_IT0_EEEEEEEclIJEEES5_RKS8_DpRKT_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.an = atomicrmw add ptr %i.am, i32 1 monotonic, align 4, !noalias !146 ; 0 uses
  br label %_ZN5clang12ast_matchers14hasDeclarationERKNS0_8internal7MatcherINS_4DeclEEE.exit
end_hunk_0
