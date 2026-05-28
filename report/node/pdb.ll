inline.NumInlined: 655
inline.NumDeleted: 478
begin_hunk_0
%"class.LIEF::pdb::types::Attribute::Iterator" = type { %"class.std::unique_ptr.161" }
%"class.std::unique_ptr.161" = type { %"struct.std::__uniq_ptr_data.162" }
%"struct.std::__uniq_ptr_data.162" = type { %"class.std::__uniq_ptr_impl.163" }
%"class.std::__uniq_ptr_impl.163" = type { %"class.std::tuple.164" }
%"class.std::tuple.164" = type { %"struct.std::_Tuple_impl.165" }
%"struct.std::_Tuple_impl.165" = type { %"struct.std::_Head_base.168" }
%"struct.std::_Head_base.168" = type { ptr }
%"class.LIEF::iterator_range.169" = type { %"class.LIEF::pdb::types::Method::Iterator", %"class.LIEF::pdb::types::Method::Iterator" }
%"class.LIEF::pdb::types::Method::Iterator" = type { %"class.std::unique_ptr.170" }
%"class.std::unique_ptr.170" = type { %"struct.std::__uniq_ptr_data.171" }
%"struct.std::__uniq_ptr_data.171" = type { %"class.std::__uniq_ptr_impl.172" }
%"class.std::__uniq_ptr_impl.172" = type { %"class.std::tuple.173" }
%"class.std::tuple.173" = type { %"struct.std::_Tuple_impl.174" }
%"struct.std::_Tuple_impl.174" = type { %"struct.std::_Head_base.177" }
%"struct.std::_Head_base.177" = type { ptr }
%"class.std::unique_ptr.186" = type { %"struct.std::__uniq_ptr_data.187" }
%"struct.std::__uniq_ptr_data.187" = type { %"class.std::__uniq_ptr_impl.188" }
%"class.std::__uniq_ptr_impl.188" = type { %"class.std::tuple.189" }
%"class.std::tuple.189" = type { %"struct.std::_Tuple_impl.190" }
%"struct.std::_Tuple_impl.190" = type { %"struct.std::_Head_base.193" }
%"struct.std::_Head_base.193" = type { ptr }
%"class.std::unique_ptr.202" = type { %"struct.std::__uniq_ptr_data.203" }
%"struct.std::__uniq_ptr_data.203" = type { %"class.std::__uniq_ptr_impl.204" }
%"class.std::__uniq_ptr_impl.204" = type { %"class.std::tuple.205" }
%"class.std::tuple.205" = type { %"struct.std::_Tuple_impl.206" }
%"struct.std::_Tuple_impl.206" = type { %"struct.std::_Head_base.209" }
%"struct.std::_Head_base.209" = type { ptr }
%"class.LIEF::optional.218" = type { %"class.LIEF::result.base.239", [7 x i8] }
%"class.LIEF::result.base.239" = type { %"class.tl::expected.base.238" }
%"class.tl::expected.base.238" = type { %"struct.tl::detail::expected_move_assign_base.base.233" }
%"struct.tl::detail::expected_move_assign_base.base.233" = type { %"struct.tl::detail::expected_copy_assign_base.base.232" }
%"struct.tl::detail::expected_copy_assign_base.base.232" = type { %"struct.tl::detail::expected_move_base.base.231" }
%"struct.tl::detail::expected_move_base.base.231" = type { %"struct.tl::detail::expected_copy_base.base.230" }
%"struct.tl::detail::expected_copy_base.base.230" = type { %"struct.tl::detail::expected_operations_base.base.229" }
%"struct.tl::detail::expected_operations_base.base.229" = type { %"struct.tl::detail::expected_storage_base.base.228" }
%"struct.tl::detail::expected_storage_base.base.228" = type <{ %union.anon.227, i8 }>
%union.anon.227 = type { %"struct.LIEF::pdb::BuildMetadata::build_info_t" }
%"struct.LIEF::pdb::BuildMetadata::build_info_t" = type { %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZN4LIEF3pdb9DebugInfoD0Ev = comdat any

$_ZNK4LIEF3pdb9DebugInfo6formatEv = comdat any

$_ZN3fmt3v1112format_facetISt6localeE2idE = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11 = internal global %"class.std::vector.98" zeroinitializer, align 8
@_ZGVZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11 = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@_ZTVN4LIEF3pdb4TypeE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb4TypeD0Ev] }, align 8
@_ZTVN4LIEF3pdb9DebugInfoE = hidden unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF9DebugInfoD2Ev, ptr @_ZN4LIEF3pdb9DebugInfoD0Ev, ptr @_ZNK4LIEF3pdb9DebugInfo6formatEv, ptr @_ZNK4LIEF3pdb9DebugInfo21find_function_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@_ZTVN4LIEF3pdb5types6SimpleE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types6SimpleD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types5ArrayE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types5ArrayD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types8BitFieldE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types8BitFieldD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types9ClassLikeE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types9ClassLikeD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types5ClassE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types5ClassD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types9StructureE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types9StructureD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types9InterfaceE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types9InterfaceD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types4EnumE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types4EnumD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types8FunctionE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types8FunctionD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types8ModifierE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types8ModifierD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types7PointerE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types7PointerD0Ev] }, align 8
@_ZTVN4LIEF3pdb5types5UnionE = hidden unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4LIEF3pdb4TypeD2Ev, ptr @_ZN4LIEF3pdb5types5UnionD0Ev] }, align 8
@_ZN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1112format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1112format_facetISt6localeE2idE), align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"LIEF\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1112format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1112format_facetISt6localeE2idE], section "llvm.metadata"

@_ZN4LIEF3pdb15CompilationUnitC1ESt10unique_ptrINS0_7details15CompilationUnitESt14default_deleteIS4_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb15CompilationUnitC2ESt10unique_ptrINS0_7details15CompilationUnitESt14default_deleteIS4_EE
@_ZN4LIEF3pdb15CompilationUnitD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb15CompilationUnitD2Ev
@_ZN4LIEF3pdb15CompilationUnit8IteratorC1ESt10unique_ptrINS0_7details17CompilationUnitItESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb15CompilationUnit8IteratorC2ESt10unique_ptrINS0_7details17CompilationUnitItESt14default_deleteIS5_EE
@_ZN4LIEF3pdb15CompilationUnit8IteratorC1ERKS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb15CompilationUnit8IteratorC2ERKS2_
@_ZN4LIEF3pdb15CompilationUnit8IteratorC1EOS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb15CompilationUnit8IteratorC2EOS2_
@_ZN4LIEF3pdb15CompilationUnit8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb15CompilationUnit8IteratorD2Ev
@_ZN4LIEF3pdb12PublicSymbolC1ESt10unique_ptrINS0_7details12PublicSymbolESt14default_deleteIS4_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb12PublicSymbolC2ESt10unique_ptrINS0_7details12PublicSymbolESt14default_deleteIS4_EE
@_ZN4LIEF3pdb12PublicSymbolD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb12PublicSymbolD2Ev
@_ZN4LIEF3pdb12PublicSymbol8IteratorC1ESt10unique_ptrINS0_7details14PublicSymbolItESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb12PublicSymbol8IteratorC2ESt10unique_ptrINS0_7details14PublicSymbolItESt14default_deleteIS5_EE
@_ZN4LIEF3pdb12PublicSymbol8IteratorC1ERKS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb12PublicSymbol8IteratorC2ERKS2_
@_ZN4LIEF3pdb12PublicSymbol8IteratorC1EOS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb12PublicSymbol8IteratorC2EOS2_
@_ZN4LIEF3pdb12PublicSymbol8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb12PublicSymbol8IteratorD2Ev
@_ZN4LIEF3pdb8FunctionC1ESt10unique_ptrINS0_7details8FunctionESt14default_deleteIS4_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb8FunctionC2ESt10unique_ptrINS0_7details8FunctionESt14default_deleteIS4_EE
@_ZN4LIEF3pdb8FunctionD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb8FunctionD2Ev
@_ZN4LIEF3pdb8Function8IteratorC1ESt10unique_ptrINS0_7details10FunctionItESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb8Function8IteratorC2ESt10unique_ptrINS0_7details10FunctionItESt14default_deleteIS5_EE
@_ZN4LIEF3pdb8Function8IteratorC1ERKS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb8Function8IteratorC2ERKS2_
@_ZN4LIEF3pdb8Function8IteratorC1EOS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb8Function8IteratorC2EOS2_
@_ZN4LIEF3pdb8Function8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb8Function8IteratorD2Ev
@_ZN4LIEF3pdb4TypeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb4TypeC1ESt10unique_ptrINS0_7details4TypeESt14default_deleteIS4_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb4TypeC2ESt10unique_ptrINS0_7details4TypeESt14default_deleteIS4_EE
@_ZN4LIEF3pdb4Type8IteratorC1ESt10unique_ptrINS0_7details6TypeItESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb4Type8IteratorC2ESt10unique_ptrINS0_7details6TypeItESt14default_deleteIS5_EE
@_ZN4LIEF3pdb4Type8IteratorC1ERKS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb4Type8IteratorC2ERKS2_
@_ZN4LIEF3pdb4Type8IteratorC1EOS2_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb4Type8IteratorC2EOS2_
@_ZN4LIEF3pdb4Type8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4Type8IteratorD2Ev
@_ZN4LIEF3pdb5types6SimpleD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types6SimpleD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types5ArrayD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types5ArrayD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types8BitFieldD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types8BitFieldD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types9ClassLikeD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types9ClassLikeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types5ClassD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types5ClassD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types9StructureD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types9StructureD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types9InterfaceD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types9InterfaceD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types4EnumD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types4EnumD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types8FunctionD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types8FunctionD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types8ModifierD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types8ModifierD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types7PointerD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types7PointerD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types5UnionD2Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types5UnionD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb4TypeD2Ev
@_ZN4LIEF3pdb5types9AttributeC1ESt10unique_ptrINS1_7details9AttributeESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb5types9AttributeC2ESt10unique_ptrINS1_7details9AttributeESt14default_deleteIS5_EE
@_ZN4LIEF3pdb5types9Attribute8IteratorC1ESt10unique_ptrINS1_7details11AttributeItESt14default_deleteIS6_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb5types9Attribute8IteratorC2ESt10unique_ptrINS1_7details11AttributeItESt14default_deleteIS6_EE
@_ZN4LIEF3pdb5types9Attribute8IteratorC1ERKS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb5types9Attribute8IteratorC2ERKS3_
@_ZN4LIEF3pdb5types9Attribute8IteratorC1EOS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb5types9Attribute8IteratorC2EOS3_
@_ZN4LIEF3pdb5types9Attribute8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb5types9Attribute8IteratorD2Ev
@_ZN4LIEF3pdb5types9AttributeD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb5types9AttributeD2Ev
@_ZN4LIEF3pdb5types6MethodC1ESt10unique_ptrINS1_7details6MethodESt14default_deleteIS5_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb5types6MethodC2ESt10unique_ptrINS1_7details6MethodESt14default_deleteIS5_EE
@_ZN4LIEF3pdb5types6Method8IteratorC1ESt10unique_ptrINS1_7details8MethodItESt14default_deleteIS6_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb5types6Method8IteratorC2ESt10unique_ptrINS1_7details8MethodItESt14default_deleteIS6_EE
@_ZN4LIEF3pdb5types6Method8IteratorC1ERKS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb5types6Method8IteratorC2ERKS3_
@_ZN4LIEF3pdb5types6Method8IteratorC1EOS3_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb5types6Method8IteratorC2EOS3_
@_ZN4LIEF3pdb5types6Method8IteratorD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb5types6Method8IteratorD2Ev
@_ZN4LIEF3pdb5types6MethodD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb5types6MethodD2Ev
@_ZN4LIEF3pdb13BuildMetadataC1ESt10unique_ptrINS0_7details13BuildMetadataESt14default_deleteIS4_EE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3pdb13BuildMetadataC2ESt10unique_ptrINS0_7details13BuildMetadataESt14default_deleteIS4_EE
@_ZN4LIEF3pdb13BuildMetadataD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN4LIEF3pdb13BuildMetadataD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb9DebugInfo17compilation_unitsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb9DebugInfo14public_symbolsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range.46") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb9DebugInfo5typesEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range.55") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb9DebugInfo9find_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.64") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF3pdb9DebugInfo3ageEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb9DebugInfo4guidB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb9DebugInfo9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb9DebugInfo18find_public_symbolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.72") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb9DebugInfo9from_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.80") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #11 ; 0 uses
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { i64, i8 } @_ZNK4LIEF3pdb9DebugInfo21find_function_addressERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nonnull readnone align 8 captures(none) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  ret { i64, i8 } { i64 2, i8 0 }
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF3pdb6is_pdbERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.2) #11 ; 0 uses
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF3pdb15CompilationUnitC2ESt10unique_ptrINS0_7details15CompilationUnitESt14default_deleteIS4_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb15CompilationUnitD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details15CompilationUnitESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details15CompilationUnitEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details15CompilationUnitEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details15CompilationUnitESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details15CompilationUnitESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details15CompilationUnitEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb15CompilationUnit11module_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb15CompilationUnit15object_filenameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden { ptr, ptr } @_ZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11Ev(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11 acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11, i8 0, i64 24, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr nonnull @_ZZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11, ptr nonnull @__dso_handle) #11 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK4LIEF3pdb15CompilationUnit7sourcesB5cxx11EvE5emptyB5cxx11, i64 8), align 8
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.f, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #12
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !20

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #12
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb15CompilationUnit9functionsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range.103") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb15CompilationUnit14build_metadataEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.112") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb15CompilationUnit8IteratorC2ESt10unique_ptrINS0_7details17CompilationUnitItESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb15CompilationUnit8IteratorC2ERKS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb15CompilationUnit8IteratorC2EOS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb15CompilationUnit8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details17CompilationUnitItESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details17CompilationUnitItEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details17CompilationUnitItEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details17CompilationUnitItESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details17CompilationUnitItESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details17CompilationUnitItEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF3pdbeqERKNS0_15CompilationUnit8IteratorES4_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3pdb15CompilationUnit8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3pdb15CompilationUnit8IteratormmEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb15CompilationUnit8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.120") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb15CompilationUnit9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF3pdb12PublicSymbolC2ESt10unique_ptrINS0_7details12PublicSymbolESt14default_deleteIS4_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb12PublicSymbolD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details12PublicSymbolESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details12PublicSymbolEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details12PublicSymbolEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details12PublicSymbolESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details12PublicSymbolESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details12PublicSymbolEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb12PublicSymbol8IteratorC2ESt10unique_ptrINS0_7details14PublicSymbolItESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb12PublicSymbol8IteratorC2ERKS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb12PublicSymbol8IteratorC2EOS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb12PublicSymbol8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details14PublicSymbolItESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details14PublicSymbolItEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details14PublicSymbolItEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details14PublicSymbolItESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details14PublicSymbolItESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details14PublicSymbolItEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF3pdbeqERKNS0_12PublicSymbol8IteratorES4_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3pdb12PublicSymbol8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb12PublicSymbol8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.72") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb12PublicSymbol4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb12PublicSymbol12section_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF3pdb12PublicSymbol3RVAEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb12PublicSymbol14demangled_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb12PublicSymbol9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF3pdb8FunctionC2ESt10unique_ptrINS0_7details8FunctionESt14default_deleteIS4_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb8FunctionD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details8FunctionESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details8FunctionEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details8FunctionEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details8FunctionESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details8FunctionESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details8FunctionEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb8Function8IteratorC2ESt10unique_ptrINS0_7details10FunctionItESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb8Function8IteratorC2ERKS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb8Function8IteratorC2EOS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb8Function8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details10FunctionItESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details10FunctionItEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details10FunctionItEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details10FunctionItESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details10FunctionItESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details10FunctionItEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF3pdbeqERKNS0_8Function8IteratorES4_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3pdb8Function8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb8Function8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.144") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb8Function4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF3pdb8Function3RVAEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF3pdb8Function9code_sizeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb8Function12section_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb8Function14debug_locationEv(ptr dead_on_unwind noalias writable sret(%"struct.LIEF::debug_location_t") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb8Function9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb4Type6createESt10unique_ptrINS0_7details4TypeESt14default_deleteIS4_EE(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.64") align 8 captures(none) initializes((0, 8)) %0, ptr noundef readnone captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK4LIEF3pdb4Type4kindEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb4TypeD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details4TypeESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details4TypeESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details4TypeESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb4TypeD0Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF3pdb4TypeC2ESt10unique_ptrINS0_7details4TypeESt14default_deleteIS4_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %1, align 8
  store i64 %i.b, ptr %i.a, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb4Type8IteratorC2ESt10unique_ptrINS0_7details6TypeItESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb4Type8IteratorC2ERKS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb4Type8IteratorC2EOS2_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb4Type8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details6TypeItESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details6TypeItEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details6TypeItEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details6TypeItESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details6TypeItESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details6TypeItEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF3pdbeqERKNS0_4Type8IteratorES4_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3pdb4Type8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb4Type8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.64") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types6SimpleD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types5ArrayD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types8BitFieldD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types9ClassLike10attributesEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range.160") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types9ClassLike7methodsEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::iterator_range.169") align 8 captures(none) initializes((0, 16)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !33
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types9ClassLike4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types9ClassLike11unique_nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF3pdb5types9ClassLike4sizeEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types9ClassLikeD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types5ClassD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types9StructureD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types9InterfaceD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types4EnumD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types8FunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types8Modifier15underlying_typeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.64") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types8ModifierD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types7Pointer15underlying_typeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.64") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types7PointerD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types5UnionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #2 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4LIEF3pdb4TypeE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4LIEF3pdb4TypeD2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i

_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 1) #12, !inline_history !27
  br label %_ZN4LIEF3pdb4TypeD2Ev.exit

_ZN4LIEF3pdb4TypeD2Ev.exit:                       ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details4TypeEEclEPS3_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF3pdb5types9AttributeC2ESt10unique_ptrINS1_7details9AttributeESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb5types9Attribute8IteratorC2ESt10unique_ptrINS1_7details11AttributeItESt14default_deleteIS6_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb5types9Attribute8IteratorC2ERKS3_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb5types9Attribute8IteratorC2EOS3_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types9Attribute8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb5types7details11AttributeItESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb5types7details11AttributeItEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb5types7details11AttributeItEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb5types7details11AttributeItESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb5types7details11AttributeItESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb5types7details11AttributeItEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF3pdb5typeseqERKNS1_9Attribute8IteratorES5_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3pdb5types9Attribute8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types9Attribute8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.186") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types9Attribute4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types9Attribute4typeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.64") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF3pdb5types9Attribute12field_offsetEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types9AttributeD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb5types7details9AttributeESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb5types7details9AttributeEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb5types7details9AttributeEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb5types7details9AttributeESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb5types7details9AttributeESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb5types7details9AttributeEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF3pdb5types6MethodC2ESt10unique_ptrINS1_7details6MethodESt14default_deleteIS5_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  store ptr null, ptr %1, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb5types6Method8IteratorC2ESt10unique_ptrINS1_7details8MethodItESt14default_deleteIS6_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb5types6Method8IteratorC2ERKS3_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb5types6Method8IteratorC2EOS3_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types6Method8IteratorD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb5types7details8MethodItESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb5types7details8MethodItEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb5types7details8MethodItEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb5types7details8MethodItESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb5types7details8MethodItESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb5types7details8MethodItEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN4LIEF3pdb5typeseqERKNS1_6Method8IteratorES5_(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3pdb5types6Method8IteratorppEv(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types6Method8IteratordeEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr.202") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb5types6Method4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb5types6MethodD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb5types7details6MethodESt14default_deleteIS4_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb5types7details6MethodEEclEPS4_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb5types7details6MethodEEclEPS4_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb5types7details6MethodESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb5types7details6MethodESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb5types7details6MethodEEclEPS4_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4LIEF3pdb13BuildMetadataC2ESt10unique_ptrINS0_7details13BuildMetadataESt14default_deleteIS4_EE(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr readnone captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3pdb13BuildMetadataD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4LIEF3pdb7details13BuildMetadataESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4LIEF3pdb7details13BuildMetadataEEclEPS3_.exit.i

_ZNKSt14default_deleteIN4LIEF3pdb7details13BuildMetadataEEclEPS3_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1) #12
  br label %_ZNSt10unique_ptrIN4LIEF3pdb7details13BuildMetadataESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3pdb7details13BuildMetadataESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN4LIEF3pdb7details13BuildMetadataEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF3pdb13BuildMetadata16frontend_versionEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK4LIEF3pdb13BuildMetadata15backend_versionEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb13BuildMetadata7versionB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb13BuildMetadata9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i8 @_ZNK4LIEF3pdb13BuildMetadata8languageEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i8 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i16 @_ZNK4LIEF3pdb13BuildMetadata10target_cpuEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i16 255
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb13BuildMetadata10build_infoEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.LIEF::optional.218") align 8 captures(none) initializes((0, 4), (160, 161)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store i32 2, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZNK4LIEF3pdb13BuildMetadata3envB5cxx11Ev(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::vector.98") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF3pdb9to_stringENS0_13BuildMetadata3CPUE(i16 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN4LIEF3pdb9to_stringENS0_13BuildMetadata4LANGE(i8 noundef zeroext %0) local_unnamed_addr #1 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind
declare void @_ZN4LIEF9DebugInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3pdb9DebugInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4LIEF9DebugInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK4LIEF3pdb9DebugInfo6formatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #9 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef) local_unnamed_addr #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !7}
!5 = distinct !{!5, !6, !"_ZN4LIEF10make_rangeINS_3pdb15CompilationUnit8IteratorEEENS_14iterator_rangeIT_EEOS5_S7_: argument 0"}
!6 = distinct !{!6, !"_ZN4LIEF10make_rangeINS_3pdb15CompilationUnit8IteratorEEENS_14iterator_rangeIT_EEOS5_S7_"}
!7 = distinct !{!7, !8, !"_ZN4LIEF19make_empty_iteratorINS_3pdb15CompilationUnitEEEDav: argument 0"}
!8 = distinct !{!8, !"_ZN4LIEF19make_empty_iteratorINS_3pdb15CompilationUnitEEEDav"}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_ZN4LIEF10make_rangeINS_3pdb12PublicSymbol8IteratorEEENS_14iterator_rangeIT_EEOS5_S7_: argument 0"}
!11 = distinct !{!11, !"_ZN4LIEF10make_rangeINS_3pdb12PublicSymbol8IteratorEEENS_14iterator_rangeIT_EEOS5_S7_"}
!12 = distinct !{!12, !13, !"_ZN4LIEF19make_empty_iteratorINS_3pdb12PublicSymbolEEEDav: argument 0"}
!13 = distinct !{!13, !"_ZN4LIEF19make_empty_iteratorINS_3pdb12PublicSymbolEEEDav"}
!14 = !{!15, !17}
!15 = distinct !{!15, !16, !"_ZN4LIEF10make_rangeINS_3pdb4Type8IteratorEEENS_14iterator_rangeIT_EEOS5_S7_: argument 0"}
!16 = distinct !{!16, !"_ZN4LIEF10make_rangeINS_3pdb4Type8IteratorEEENS_14iterator_rangeIT_EEOS5_S7_"}
!17 = distinct !{!17, !18, !"_ZN4LIEF19make_empty_iteratorINS_3pdb4TypeEEEDav: argument 0"}
!18 = distinct !{!18, !"_ZN4LIEF19make_empty_iteratorINS_3pdb4TypeEEEDav"}
!19 = !{!"branch_weights", i32 1, i32 1048575}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZN4LIEF10make_rangeINS_3pdb8Function8IteratorEEENS_14iterator_rangeIT_EEOS5_S7_: argument 0"}
!24 = distinct !{!24, !"_ZN4LIEF10make_rangeINS_3pdb8Function8IteratorEEENS_14iterator_rangeIT_EEOS5_S7_"}
!25 = distinct !{!25, !26, !"_ZN4LIEF19make_empty_iteratorINS_3pdb8FunctionEEEDav: argument 0"}
!26 = distinct !{!26, !"_ZN4LIEF19make_empty_iteratorINS_3pdb8FunctionEEEDav"}
!27 = !{ptr @_ZN4LIEF3pdb4TypeD2Ev}
!28 = !{!29, !31}
!29 = distinct !{!29, !30, !"_ZN4LIEF10make_rangeINS_3pdb5types9Attribute8IteratorEEENS_14iterator_rangeIT_EEOS6_S8_: argument 0"}
!30 = distinct !{!30, !"_ZN4LIEF10make_rangeINS_3pdb5types9Attribute8IteratorEEENS_14iterator_rangeIT_EEOS6_S8_"}
!31 = distinct !{!31, !32, !"_ZN4LIEF19make_empty_iteratorINS_3pdb5types9AttributeEEEDav: argument 0"}
!32 = distinct !{!32, !"_ZN4LIEF19make_empty_iteratorINS_3pdb5types9AttributeEEEDav"}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"_ZN4LIEF10make_rangeINS_3pdb5types6Method8IteratorEEENS_14iterator_rangeIT_EEOS6_S8_: argument 0"}
!35 = distinct !{!35, !"_ZN4LIEF10make_rangeINS_3pdb5types6Method8IteratorEEENS_14iterator_rangeIT_EEOS6_S8_"}
!36 = distinct !{!36, !37, !"_ZN4LIEF19make_empty_iteratorINS_3pdb5types6MethodEEEDav: argument 0"}
!37 = distinct !{!37, !"_ZN4LIEF19make_empty_iteratorINS_3pdb5types6MethodEEEDav"}
end_hunk_0
