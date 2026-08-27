Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SymbolFileNativePDB?download=true
inline.NumInlined: 10419
inline.NumDeleted: 4285
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0
%"class.std::shared_ptr.462" = type { %"class.std::__shared_ptr.463" }
%"class.std::__shared_ptr.463" = type { ptr, %"class.std::__shared_count" }
%"struct.lldb_private::npdb::PdbTypeSymId" = type { %"class.llvm::codeview::TypeIndex", i8 }
%"class.lldb_private::Mangled" = type { %"class.lldb_private::ConstString", %"class.lldb_private::ConstString", %"class.std::unique_ptr.405" }
%"class.std::unique_ptr.405" = type { %"struct.std::__uniq_ptr_data.406" }
%"struct.std::__uniq_ptr_data.406" = type { %"class.std::__uniq_ptr_impl.407" }
%"class.std::__uniq_ptr_impl.407" = type { %"class.std::tuple.408" }
%"class.std::tuple.408" = type { %"struct.std::_Tuple_impl.409" }
%"struct.std::_Tuple_impl.409" = type { %"struct.std::_Head_base.412" }
%"struct.std::_Head_base.412" = type { ptr }
%"class.lldb_private::AddressRange" = type { %"class.lldb_private::Address", i64 }
%"class.std::optional.465" = type { %"struct.std::_Optional_base.466" }
%"struct.std::_Optional_base.466" = type { %"struct.std::_Optional_payload.468" }
%"struct.std::_Optional_payload.468" = type { %"struct.std::_Optional_payload_base.base.470", [7 x i8] }
%"struct.std::_Optional_payload_base.base.470" = type <{ %"union.std::_Optional_payload_base<llvm::StringRef>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::StringRef>::_Storage" = type { %"class.llvm::StringRef" }
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.478" }
%"class.llvm::SmallVector.478" = type { %"class.llvm::SmallVectorImpl.479", %"struct.llvm::SmallVectorStorage.482" }
%"class.llvm::SmallVectorImpl.479" = type { %"class.llvm::SmallVectorTemplateBase.480" }
%"class.llvm::SmallVectorTemplateBase.480" = type { %"class.llvm::SmallVectorTemplateCommon.481" }
%"class.llvm::SmallVectorTemplateCommon.481" = type { %"class.llvm::SmallVectorBase.85" }
%"class.llvm::SmallVectorBase.85" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.482" = type { [64 x i8] }
%"class.llvm::Expected.483" = type <{ %union.anon.484, i8, [7 x i8] }>
%union.anon.484 = type { %"class.llvm::SmallString" }
%"class.std::shared_ptr.380" = type { %"class.std::__shared_ptr.381" }
%"class.std::__shared_ptr.381" = type { ptr, %"class.std::__shared_count" }
%"class.lldb_private::Declaration" = type <{ %"class.lldb_private::FileSpec", i32, i16, [2 x i8] }>
%"class.llvm::Expected.514" = type <{ %union.anon.515, i8, [7 x i8] }>
%union.anon.515 = type { i64 }
%"class.llvm::Expected.528" = type <{ %union.anon.529, i8, [7 x i8] }>
%union.anon.529 = type { %"class.std::unique_ptr.272", [24 x i8] }
%"class.std::unique_ptr.272" = type { %"struct.std::__uniq_ptr_data.273" }
%"struct.std::__uniq_ptr_data.273" = type { %"class.std::__uniq_ptr_impl.274" }
%"class.std::__uniq_ptr_impl.274" = type { %"class.std::tuple.275" }
%"class.std::tuple.275" = type { %"struct.std::_Tuple_impl.276" }
%"struct.std::_Tuple_impl.276" = type { %"struct.std::_Head_base.279" }
%"struct.std::_Head_base.279" = type { ptr }
%"class.llvm::ms_demangle::Demangler" = type { ptr, i8, %"class.llvm::ms_demangle::ArenaAllocator", %"struct.llvm::ms_demangle::BackrefContext" }
%"class.llvm::ms_demangle::ArenaAllocator" = type { ptr }
%"struct.llvm::ms_demangle::BackrefContext" = type { [10 x ptr], i64, [10 x ptr], i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%class.anon.1593 = type { ptr }
%class.anon.1037 = type { ptr }
%"class.llvm::codeview::StringIdRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::StringRef" }
%"class.llvm::Expected.1041" = type <{ %union.anon.1042, i8, [7 x i8] }>
%union.anon.1042 = type { %"class.std::reference_wrapper" }
%"class.std::reference_wrapper" = type { ptr }
%"class.llvm::Expected.683" = type <{ %union.anon.684, i8, [7 x i8] }>
%union.anon.684 = type { %"class.llvm::StringRef" }
%"class.std::tuple.1389" = type { %"struct.std::_Tuple_impl.1390" }
%"struct.std::_Tuple_impl.1390" = type { %"struct.std::_Tuple_impl.1391", %"struct.std::_Head_base.1303" }
%"struct.std::_Tuple_impl.1391" = type { %"struct.std::_Head_base.1392" }
%"struct.std::_Head_base.1392" = type { %"class.llvm::support::detail::FormatFunctor.1393" }
%"class.llvm::support::detail::FormatFunctor.1393" = type { ptr }
%"class.llvm::formatv_object.1388" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.1389", %"struct.std::array.1298" }
%"class.lldb_private::CompilerType" = type { %"class.std::weak_ptr.309", ptr }
%"class.std::weak_ptr.309" = type { %"class.std::__weak_ptr.310" }
%"class.std::__weak_ptr.310" = type { ptr, %"class.std::__weak_count" }
%"class.llvm::codeview::ArgListRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.std::vector.532" }
%"class.std::vector.532" = type { %"struct.std::_Vector_base.533" }
%"struct.std::_Vector_base.533" = type { %"struct.std::_Vector_base<llvm::codeview::TypeIndex, std::allocator<llvm::codeview::TypeIndex>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::codeview::TypeIndex, std::allocator<llvm::codeview::TypeIndex>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::codeview::TypeIndex, std::allocator<llvm::codeview::TypeIndex>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::codeview::TypeIndex, std::allocator<llvm::codeview::TypeIndex>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.llvm::codeview::TypeDeserializer::MappingInfo" = type { %"class.llvm::BinaryByteStream", %"class.llvm::BinaryStreamReader", %"class.llvm::codeview::TypeRecordMapping" }
%"class.llvm::BinaryByteStream" = type { %"class.llvm::BinaryStream", i32, %"class.llvm::ArrayRef.313" }
%"class.llvm::BinaryStream" = type { ptr }
%"class.llvm::BinaryStreamReader" = type { ptr, %"class.llvm::BinaryStreamRef", i64 }
%"class.llvm::BinaryStreamRef" = type { %"class.llvm::BinaryStreamRefBase" }
%"class.llvm::BinaryStreamRefBase" = type { %"class.std::shared_ptr.284", ptr, i64, %"class.std::optional.202" }
%"class.std::shared_ptr.284" = type { %"class.std::__shared_ptr.285" }
%"class.std::__shared_ptr.285" = type { ptr, %"class.std::__shared_count" }
%"class.std::optional.202" = type { %"struct.std::_Optional_base.203" }
%"struct.std::_Optional_base.203" = type { %"struct.std::_Optional_payload.205" }
%"struct.std::_Optional_payload.205" = type { %"struct.std::_Optional_payload_base.base.207", [7 x i8] }
%"struct.std::_Optional_payload_base.base.207" = type <{ %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"class.llvm::codeview::TypeRecordMapping" = type { %"class.llvm::codeview::TypeVisitorCallbacks", %"class.std::optional.1394", %"class.std::optional.1394", %"class.llvm::codeview::CodeViewRecordIO" }
%"class.std::optional.1394" = type { %"struct.std::_Optional_base.1395" }
%"struct.std::_Optional_base.1395" = type { %"struct.std::_Optional_payload.1397" }
%"struct.std::_Optional_payload.1397" = type { %"struct.std::_Optional_payload_base.base.1399", i8 }
%"struct.std::_Optional_payload_base.base.1399" = type <{ %"union.std::_Optional_payload_base<llvm::codeview::TypeLeafKind>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::codeview::TypeLeafKind>::_Storage" = type { i16 }
%"class.llvm::codeview::CodeViewRecordIO" = type { %"class.llvm::SmallVector.1322", ptr, ptr, ptr, i64 }
%"class.llvm::SmallVector.1322" = type { %"class.llvm::SmallVectorImpl.1323", %"struct.llvm::SmallVectorStorage.1326" }
%"class.llvm::SmallVectorImpl.1323" = type { %"class.llvm::SmallVectorTemplateBase.1324" }
%"class.llvm::SmallVectorTemplateBase.1324" = type { %"class.llvm::SmallVectorTemplateCommon.1325" }
%"class.llvm::SmallVectorTemplateCommon.1325" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.1326" = type { [24 x i8] }
%"class.std::tuple.1403" = type { %"struct.std::_Tuple_impl.1404" }
%"struct.std::_Tuple_impl.1404" = type { %"struct.std::_Tuple_impl.1405", %"struct.std::_Head_base.1303" }
%"struct.std::_Tuple_impl.1405" = type { %"struct.std::_Head_base.1406" }
%"struct.std::_Head_base.1406" = type { %"class.llvm::support::detail::FormatFunctor.1407" }
%"class.llvm::support::detail::FormatFunctor.1407" = type { ptr }
%"class.llvm::formatv_object.1402" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.1403", %"struct.std::array.1298" }
%"class.llvm::codeview::ModifierRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", i16 }
%"class.llvm::codeview::PointerRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", i32, %"class.std::optional.520" }
%"class.std::optional.520" = type { %"struct.std::_Optional_base.521" }
%"struct.std::_Optional_base.521" = type { %"struct.std::_Optional_payload.523" }
%"struct.std::_Optional_payload.523" = type { %"struct.std::_Optional_payload_base.base.525", i8 }
%"struct.std::_Optional_payload_base.base.525" = type <{ %"union.std::_Optional_payload_base<llvm::codeview::MemberPointerInfo>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::codeview::MemberPointerInfo>::_Storage" = type { %"class.llvm::codeview::MemberPointerInfo" }
%"class.llvm::codeview::MemberPointerInfo" = type { %"class.llvm::codeview::TypeIndex", i16 }
%"class.llvm::codeview::EnumRecord" = type <{ %"class.llvm::codeview::TagRecord", %"class.llvm::codeview::TypeIndex", [4 x i8] }>
%"struct.llvm::codeview::UnionRecord" = type { %"class.llvm::codeview::TagRecord", i64 }
%"class.llvm::codeview::ArrayRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", i64, %"class.llvm::StringRef" }
%"class.llvm::codeview::ProcedureRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", i8, i8, i16, %"class.llvm::codeview::TypeIndex" }
%"class.llvm::codeview::MemberFunctionRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", i8, i8, i16, %"class.llvm::codeview::TypeIndex", i32 }
%"class.std::optional.538" = type { %"struct.std::_Optional_base.539" }
%"struct.std::_Optional_base.539" = type { %"struct.std::_Optional_payload.541" }
%"struct.std::_Optional_payload.541" = type { %"struct.std::_Optional_payload_base.542" }
%"struct.std::_Optional_payload_base.542" = type { %"union.std::_Optional_payload_base<lldb_private::npdb::PdbTypeSymId>::_Storage", i8 }
%"union.std::_Optional_payload_base<lldb_private::npdb::PdbTypeSymId>::_Storage" = type { %"struct.lldb_private::npdb::PdbTypeSymId" }
%"class.llvm::Expected.544" = type <{ %union.anon.545, i8, [7 x i8] }>
%union.anon.545 = type { %"class.std::unique_ptr.272" }
%"class.std::shared_ptr.550" = type { %"class.std::__shared_ptr.551" }
%"class.std::__shared_ptr.551" = type { ptr, %"class.std::__shared_count" }
%"class.lldb_private::DWARFExpression" = type <{ %"class.lldb_private::DataExtractor", i32, [4 x i8] }>
%"class.lldb_private::DataExtractor" = type { ptr, ptr, ptr, i32, i32, %"class.std::shared_ptr.570" }
%"class.std::shared_ptr.570" = type { %"class.std::__shared_ptr.571" }
%"class.std::__shared_ptr.571" = type { ptr, %"class.std::__shared_count" }
%"struct.lldb_private::npdb::PdbGlobalSymId" = type <{ i32, i8, [3 x i8] }>
%"class.llvm::codeview::DataSym" = type <{ %"class.llvm::codeview::SymbolRecord", %"class.llvm::codeview::TypeIndex", [2 x i8], i32, i16, [2 x i8], %"class.llvm::StringRef", i32, [4 x i8] }>
%"class.llvm::codeview::ThreadLocalDataSym" = type <{ %"class.llvm::codeview::SymbolRecord", %"class.llvm::codeview::TypeIndex", [2 x i8], i32, i16, [2 x i8], %"class.llvm::StringRef", i32, [4 x i8] }>
%"class.std::shared_ptr.561" = type { %"class.std::__shared_ptr.562" }
%"class.std::__shared_ptr.562" = type { ptr, %"class.std::__shared_count" }
%"class.lldb_private::RangeVector.564" = type { %"class.llvm::SmallVector.565" }
%"class.llvm::SmallVector.565" = type { %"class.llvm::SmallVectorImpl.566" }
%"class.llvm::SmallVectorImpl.566" = type { %"class.llvm::SmallVectorTemplateBase.567" }
%"class.llvm::SmallVectorTemplateBase.567" = type { %"class.llvm::SmallVectorTemplateCommon.568" }
%"class.llvm::SmallVectorTemplateCommon.568" = type { %"class.llvm::SmallVectorBase" }
%"class.lldb_private::DWARFExpressionList" = type { %"class.lldb_private::RangeDataVector.426", %"class.std::weak_ptr.42", ptr, i64 }
%"class.lldb_private::RangeDataVector.426" = type <{ %"class.llvm::SmallVector.427", [8 x i8] }>
%"class.llvm::SmallVector.427" = type { %"class.llvm::SmallVectorImpl.428" }
%"class.llvm::SmallVectorImpl.428" = type { %"class.llvm::SmallVectorTemplateBase.429" }
%"class.llvm::SmallVectorTemplateBase.429" = type { %"class.llvm::SmallVectorTemplateCommon.430" }
%"class.llvm::SmallVectorTemplateCommon.430" = type { %"class.llvm::SmallVectorBase" }
%"class.std::weak_ptr.42" = type { %"class.std::__weak_ptr.43" }
%"class.std::__weak_ptr.43" = type { ptr, %"class.std::__weak_count" }
%"class.llvm::codeview::ConstantSym" = type <{ %"class.llvm::codeview::SymbolRecord", %"class.llvm::codeview::TypeIndex", [2 x i8], %"class.llvm::APSInt", %"class.llvm::StringRef", i32, [4 x i8] }>
%"class.llvm::APSInt" = type { %"class.llvm::APInt.base", i8, [3 x i8] }
%"class.llvm::APInt.base" = type <{ %union.anon.573, i32 }>
%union.anon.573 = type { i64 }
%"class.llvm::Expected.574" = type <{ %union.anon.575, i8, [7 x i8] }>
%union.anon.575 = type { %"class.std::unique_ptr.272", [48 x i8] }
%"class.std::tuple.1439" = type { %"struct.std::_Tuple_impl.1440" }
%"struct.std::_Tuple_impl.1440" = type { %"struct.std::_Tuple_impl.1441", %"struct.std::_Head_base.1303" }
%"struct.std::_Tuple_impl.1441" = type { %"struct.std::_Head_base.1442" }
%"struct.std::_Head_base.1442" = type { %"class.llvm::support::detail::FormatFunctor.1443" }
%"class.llvm::support::detail::FormatFunctor.1443" = type { ptr }
%"class.llvm::formatv_object.1438" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.1439", %"struct.std::array.1298" }
%"class.std::shared_ptr.599" = type { %"class.std::__shared_ptr.600" }
%"class.std::__shared_ptr.600" = type { ptr, %"class.std::__shared_count" }
%"class.llvm::FixedStreamArrayIterator" = type <{ %"class.llvm::FixedStreamArray", i32, [4 x i8] }>
%"class.llvm::FixedStreamArray" = type { %"class.llvm::BinaryStreamRef" }
%"class.lldb_private::Symbol" = type <{ %"class.lldb_private::SymbolContextScope", i32, i16, i16, %"class.lldb_private::Mangled", %"class.lldb_private::AddressRange", i32, [4 x i8] }>
%"class.lldb_private::SymbolContextScope" = type { ptr }
%"class.llvm::VarStreamArrayIterator" = type { %"class.llvm::codeview::CVRecord", %"class.llvm::BinaryStreamRef", [8 x i8], ptr, i32, i32, i8, ptr }
%"class.std::vector.633" = type { %"struct.std::_Vector_base.634" }
%"struct.std::_Vector_base.634" = type { %"struct.std::_Vector_base<lldb_private::npdb::SymbolAndUid, std::allocator<lldb_private::npdb::SymbolAndUid>>::_Vector_impl" }
%"struct.std::_Vector_base<lldb_private::npdb::SymbolAndUid, std::allocator<lldb_private::npdb::SymbolAndUid>>::_Vector_impl" = type { %"struct.std::_Vector_base<lldb_private::npdb::SymbolAndUid, std::allocator<lldb_private::npdb::SymbolAndUid>>::_Vector_impl_data" }
%"struct.std::_Vector_base<lldb_private::npdb::SymbolAndUid, std::allocator<lldb_private::npdb::SymbolAndUid>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.lldb_private::AugmentedRangeData" = type { %"struct.lldb_private::RangeData.base", i64 }
%"struct.lldb_private::RangeData.base" = type { %"struct.lldb_private::Range.base", %"struct.std::pair.666" }
%"struct.lldb_private::Range.base" = type <{ i64, i32 }>
%"struct.std::pair.666" = type { i32, i32 }
%"class.std::set" = type { %"class.std::_Rb_tree.647" }
%"class.std::_Rb_tree.647" = type { %"struct.std::_Rb_tree<lldb_private::LineTable::Entry, lldb_private::LineTable::Entry, std::_Identity<lldb_private::LineTable::Entry>, lldb_private::npdb::SymbolFileNativePDB::LineTableEntryComparator>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<lldb_private::LineTable::Entry, lldb_private::LineTable::Entry, std::_Identity<lldb_private::LineTable::Entry>, lldb_private::npdb::SymbolFileNativePDB::LineTableEntryComparator>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.llvm::VarStreamArray.318" = type { %"class.llvm::BinaryStreamRef", [4 x i8], i32 }
%"class.llvm::VarStreamArrayIterator.652" = type { %"class.llvm::codeview::DebugSubsectionRecord", %"class.llvm::BinaryStreamRef", [8 x i8], ptr, i32, i32, i8, ptr }
%"class.llvm::codeview::DebugSubsectionRecord" = type { i32, %"class.llvm::BinaryStreamRef" }
%"class.llvm::codeview::DebugLinesSubsectionRef" = type { %"class.llvm::codeview::DebugSubsectionRef.base", ptr, %"class.llvm::VarStreamArray.654" }
%"class.llvm::codeview::DebugSubsectionRef.base" = type <{ ptr, i32 }>
%"class.llvm::VarStreamArray.654" = type <{ %"class.llvm::BinaryStreamRef", %"class.llvm::codeview::LineColumnExtractor", i32, [4 x i8] }>
%"class.llvm::codeview::LineColumnExtractor" = type { ptr }
%"class.llvm::VarStreamArrayIterator.657" = type { %"struct.llvm::codeview::LineColumnEntry", %"class.llvm::BinaryStreamRef", %"class.llvm::codeview::LineColumnExtractor", ptr, i32, i32, i8, ptr }
%"struct.llvm::codeview::LineColumnEntry" = type { %"struct.llvm::support::detail::packed_endian_specific_integral", %"class.llvm::FixedStreamArray.659", %"class.llvm::FixedStreamArray.660" }
%"class.llvm::FixedStreamArray.659" = type { %"class.llvm::BinaryStreamRef" }
%"class.llvm::FixedStreamArray.660" = type { %"class.llvm::BinaryStreamRef" }
%"class.llvm::Expected.661" = type <{ %union.anon.662, i8, [7 x i8] }>
%union.anon.662 = type { %"class.std::unique_ptr.272" }
%"struct.lldb_private::RangeData.664" = type { %"struct.lldb_private::Range.base", %"struct.std::pair.666", [4 x i8] }
%"class.llvm::FixedStreamArrayIterator.668" = type <{ %"class.llvm::FixedStreamArray.659", i32, [4 x i8] }>
%class.anon.674 = type { ptr, ptr, ptr }
%"class.std::vector.675" = type { %"struct.std::_Vector_base.676" }
%"struct.std::_Vector_base.676" = type { %"struct.std::_Vector_base<lldb_private::LineTable::Sequence, std::allocator<lldb_private::LineTable::Sequence>>::_Vector_impl" }
%"struct.std::_Vector_base<lldb_private::LineTable::Sequence, std::allocator<lldb_private::LineTable::Sequence>>::_Vector_impl" = type { %"struct.std::_Vector_base<lldb_private::LineTable::Sequence, std::allocator<lldb_private::LineTable::Sequence>>::_Vector_impl_data" }
%"struct.std::_Vector_base<lldb_private::LineTable::Sequence, std::allocator<lldb_private::LineTable::Sequence>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::VarStreamArrayIterator.681" = type { %"struct.llvm::codeview::FileChecksumEntry", %"class.llvm::BinaryStreamRef", [8 x i8], ptr, i32, i32, i8, ptr }
%"struct.llvm::codeview::FileChecksumEntry" = type { i32, i8, %"class.llvm::ArrayRef.313" }
%"class.llvm::VarStreamArray.317" = type { %"class.llvm::BinaryStreamRef", [4 x i8], i32 }
%"class.llvm::codeview::InlineSiteSym" = type <{ %"class.llvm::codeview::SymbolRecord", [2 x i8], i32, i32, %"class.llvm::codeview::TypeIndex", %"class.std::vector.688", i32, [4 x i8] }>
%"class.std::vector.688" = type { %"struct.std::_Vector_base.689" }
%"struct.std::_Vector_base.689" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.llvm::codeview::BinaryAnnotationIterator" = type { %"class.std::optional.716", %"class.llvm::ArrayRef.313", %"class.llvm::ArrayRef.313" }
%"class.std::optional.716" = type { %"struct.std::_Optional_base.717" }
%"struct.std::_Optional_base.717" = type { %"struct.std::_Optional_payload.719" }
%"struct.std::_Optional_payload.719" = type { %"struct.std::_Optional_payload_base.base.721", [7 x i8] }
%"struct.std::_Optional_payload_base.base.721" = type <{ %"union.std::_Optional_payload_base<llvm::codeview::DecodedAnnotation>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::codeview::DecodedAnnotation>::_Storage" = type { %"struct.llvm::codeview::DecodedAnnotation" }
%"struct.llvm::codeview::DecodedAnnotation" = type { %"class.llvm::StringRef", %"class.llvm::ArrayRef.313", i32, i32, i32, i32 }
%"struct.lldb_private::RangeData" = type { %"struct.lldb_private::Range.460", i32 }
%"struct.lldb_private::Range.460" = type { i32, i32 }
%"class.llvm::Expected.724" = type <{ %union.anon.725, i8, [7 x i8] }>
%union.anon.725 = type { %"class.llvm::codeview::CVRecord.531" }
%"class.llvm::codeview::MemberFuncIdRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", %"class.llvm::StringRef" }
%"class.std::allocator.87" = type { i8 }
%"class.llvm::codeview::FuncIdRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", %"class.llvm::StringRef" }
%class.anon.1544 = type { i8 }
%"class.std::set.727" = type { %"class.std::_Rb_tree.728" }
%"class.std::_Rb_tree.728" = type { %"struct.std::_Rb_tree<unsigned long, unsigned long, std::_Identity<unsigned long>, std::less<unsigned long>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned long, unsigned long, std::_Identity<unsigned long>, std::less<unsigned long>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%class.anon.732 = type { ptr, ptr }
%"class.llvm::codeview::ProcRefSym" = type <{ %"class.llvm::codeview::SymbolRecord", [2 x i8], i32, i32, i16, [2 x i8], %"class.llvm::StringRef", i32, [4 x i8] }>
%"class.std::map.885" = type { %"class.std::_Rb_tree.886" }
%"class.std::_Rb_tree.886" = type { %"struct.std::_Rb_tree<std::pair<unsigned short, unsigned int>, std::pair<const std::pair<unsigned short, unsigned int>, unsigned int>, std::_Select1st<std::pair<const std::pair<unsigned short, unsigned int>, unsigned int>>, std::less<std::pair<unsigned short, unsigned int>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::pair<unsigned short, unsigned int>, std::pair<const std::pair<unsigned short, unsigned int>, unsigned int>, std::_Select1st<std::pair<const std::pair<unsigned short, unsigned int>, unsigned int>>, std::less<std::pair<unsigned short, unsigned int>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.llvm::pdb::GSIHashIterator" = type { %"class.llvm::iterator_adaptor_base" }
%"class.llvm::iterator_adaptor_base" = type { %"class.llvm::FixedStreamArrayIterator.892" }
%"class.llvm::FixedStreamArrayIterator.892" = type <{ %"class.llvm::FixedStreamArray.619", i32, [4 x i8] }>
%"class.llvm::FixedStreamArray.619" = type { %"class.llvm::BinaryStreamRef" }
%"struct.std::pair.914" = type { i16, i32 }
%"class.std::vector.289" = type { %"struct.std::_Vector_base.290" }
%"struct.std::_Vector_base.290" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.lldb_private::CompilerDeclContext" = type { ptr, ptr }
%"class.std::set.924" = type { %"class.std::_Rb_tree.925" }
%"class.std::_Rb_tree.925" = type { %"struct.std::_Rb_tree<unsigned int, unsigned int, std::_Identity<unsigned int>, std::less<unsigned int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned int, unsigned int, std::_Identity<unsigned int>, std::less<unsigned int>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%class.anon.930 = type { ptr, ptr, ptr, ptr, ptr }
%"class.lldb_private::SymbolContext" = type { %"class.std::shared_ptr.630", %"class.std::shared_ptr.193", ptr, ptr, ptr, %"struct.lldb_private::LineEntry", ptr, ptr }
%"class.std::shared_ptr.630" = type { %"class.std::__shared_ptr.631" }
%"class.std::__shared_ptr.631" = type { ptr, %"class.std::__shared_count" }
%"struct.lldb_private::LineEntry" = type <{ %"class.lldb_private::AddressRange", i8, [7 x i8], %"class.lldb_private::NonNullSharedPtr.379", %"class.lldb_private::NonNullSharedPtr.379", i32, i16, i8, i8 }>
%"class.lldb_private::NonNullSharedPtr.379" = type { %"class.std::shared_ptr.380" }
%"class.std::vector.939" = type { %"struct.std::_Vector_base.940" }
%"struct.std::_Vector_base.940" = type { %"struct.std::_Vector_base<lldb_private::CompilerContext, std::allocator<lldb_private::CompilerContext>>::_Vector_impl" }
%"struct.std::_Vector_base<lldb_private::CompilerContext, std::allocator<lldb_private::CompilerContext>>::_Vector_impl" = type { %"struct.std::_Vector_base<lldb_private::CompilerContext, std::allocator<lldb_private::CompilerContext>>::_Vector_impl_data" }
%"struct.std::_Vector_base<lldb_private::CompilerContext, std::allocator<lldb_private::CompilerContext>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional.1000" = type { %"struct.std::_Optional_base.1001" }
%"struct.std::_Optional_base.1001" = type { %"struct.std::_Optional_payload.1003" }
%"struct.std::_Optional_payload.1003" = type { %"struct.std::_Optional_payload.base.1012", [7 x i8] }
%"struct.std::_Optional_payload.base.1012" = type { %"struct.std::_Optional_payload_base.base.1011" }
%"struct.std::_Optional_payload_base.base.1011" = type <{ %"union.std::_Optional_payload_base<lldb_private::Type::ParsedName>::_Storage", i8 }>
%"union.std::_Optional_payload_base<lldb_private::Type::ParsedName>::_Storage" = type { %"struct.lldb_private::Type::ParsedName" }
%"struct.lldb_private::Type::ParsedName" = type { i32, %"class.llvm::SmallVector.1006", %"class.llvm::StringRef" }
%"class.llvm::SmallVector.1006" = type { %"class.llvm::SmallVectorImpl.1007", %"struct.llvm::SmallVectorStorage.1010" }
%"class.llvm::SmallVectorImpl.1007" = type { %"class.llvm::SmallVectorTemplateBase.1008" }
%"class.llvm::SmallVectorTemplateBase.1008" = type { %"class.llvm::SmallVectorTemplateCommon.1009" }
%"class.llvm::SmallVectorTemplateCommon.1009" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.1010" = type { [48 x i8] }
%"class.llvm::codeview::UDTSym" = type <{ %"class.llvm::codeview::SymbolRecord", %"class.llvm::codeview::TypeIndex", [2 x i8], %"class.llvm::StringRef", i32, [4 x i8] }>
%"struct.lldb_private::npdb::VariableInfo" = type <{ %"class.llvm::StringRef", %"class.llvm::codeview::TypeIndex", [4 x i8], %"class.lldb_private::DWARFExpressionList", i8, [7 x i8] }>
%"class.std::shared_ptr.399" = type { %"class.std::__shared_ptr.400" }
%"class.std::__shared_ptr.400" = type { ptr, %"class.std::__shared_count" }
%"class.std::optional.966" = type { %"struct.std::_Optional_base.967" }
%"struct.std::_Optional_base.967" = type { %"struct.std::_Optional_payload.969" }
%"struct.std::_Optional_payload.969" = type { %"struct.std::_Optional_payload.base.978", [7 x i8] }
%"struct.std::_Optional_payload.base.978" = type { %"struct.std::_Optional_payload_base.base.977" }
%"struct.std::_Optional_payload_base.base.977" = type <{ %"union.std::_Optional_payload_base<lldb_private::SymbolFile::ArrayInfo>::_Storage", i8 }>
%"union.std::_Optional_payload_base<lldb_private::SymbolFile::ArrayInfo>::_Storage" = type { %"struct.lldb_private::SymbolFile::ArrayInfo" }
%"struct.lldb_private::SymbolFile::ArrayInfo" = type { i64, %"class.llvm::SmallVector.972", i32, i32 }
%"class.llvm::SmallVector.972" = type { %"class.llvm::SmallVectorImpl.973", %"struct.llvm::SmallVectorStorage.976" }
%"class.llvm::SmallVectorImpl.973" = type { %"class.llvm::SmallVectorTemplateBase.974" }
%"class.llvm::SmallVectorTemplateBase.974" = type { %"class.llvm::SmallVectorTemplateCommon.975" }
%"class.llvm::SmallVectorTemplateCommon.975" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.976" = type { [16 x i8] }
%"class.lldb_private::CompilerType::TypeSystemSPWrapper" = type { %"class.std::shared_ptr.304" }
%"class.llvm::formatv_object.1582" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.1583", %"struct.std::array.1239" }
%"class.std::tuple.1583" = type { %"struct.std::_Tuple_impl.1584" }
%"struct.std::_Tuple_impl.1584" = type { %"struct.std::_Head_base.1585" }
%"struct.std::_Head_base.1585" = type { %"class.llvm::support::detail::FormatFunctor.1586" }
%"class.llvm::support::detail::FormatFunctor.1586" = type { i16 }
%"class.llvm::VarStreamArrayIterator.1031" = type { %"class.llvm::codeview::CVRecord.531", %"class.llvm::BinaryStreamRef", [8 x i8], ptr, i32, i32, i8, ptr }
%"class.llvm::codeview::UdtSourceLineRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", i32 }
%"struct.lldb_private::npdb::SymbolFileNativePDB::UdtDeclaration" = type { %"class.llvm::codeview::TypeIndex", i8, i32 }
%"class.llvm::codeview::UdtModSourceLineRecord" = type <{ %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", [2 x i8], i32, i16, [2 x i8] }>
%"class.lldb_private::XcodeSDK" = type { %"class.std::__cxx11::basic_string", %"class.lldb_private::FileSpec" }
%"class.llvm::SmallSet" = type { %"class.llvm::SmallVector.1044", %"class.std::set.1049" }
%"class.llvm::SmallVector.1044" = type { %"class.llvm::SmallVectorImpl.1045", %"struct.llvm::SmallVectorStorage.1048" }
%"class.llvm::SmallVectorImpl.1045" = type { %"class.llvm::SmallVectorTemplateBase.1046" }
%"class.llvm::SmallVectorTemplateBase.1046" = type { %"class.llvm::SmallVectorTemplateCommon.1047" }
%"class.llvm::SmallVectorTemplateCommon.1047" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.1048" = type { [16 x i8] }
%"class.std::set.1049" = type { %"class.std::_Rb_tree.1050" }
%"class.std::_Rb_tree.1050" = type { %"struct.std::_Rb_tree<lldb::LanguageType, lldb::LanguageType, std::_Identity<lldb::LanguageType>, std::less<lldb::LanguageType>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<lldb::LanguageType, lldb::LanguageType, std::_Identity<lldb::LanguageType>, std::less<lldb::LanguageType>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::pair.1257" = type { %"class.llvm::SmallSetIterator", i8, [7 x i8] }
%"class.llvm::SmallSetIterator" = type <{ %union.anon.1260, i8, [7 x i8] }>
%union.anon.1260 = type { %"struct.std::_Rb_tree_const_iterator.1261" }
%"struct.std::_Rb_tree_const_iterator.1261" = type { ptr }
%"class.lldb_private::Status" = type { %"class.llvm::Error", %"class.std::__cxx11::basic_string" }
%"class.llvm::Expected.1056" = type <{ %union.anon.1057, i8, [7 x i8] }>
%union.anon.1057 = type { %"class.lldb_private::SymbolContext" }
%"class.std::vector.433" = type { %"struct.std::_Vector_base.434" }
%"struct.std::_Vector_base.434" = type { %"struct.std::_Vector_base<std::unique_ptr<lldb_private::CallEdge>, std::allocator<std::unique_ptr<lldb_private::CallEdge>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<lldb_private::CallEdge>, std::allocator<std::unique_ptr<lldb_private::CallEdge>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<lldb_private::CallEdge>, std::allocator<std::unique_ptr<lldb_private::CallEdge>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<lldb_private::CallEdge>, std::allocator<std::unique_ptr<lldb_private::CallEdge>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr.1059" = type { %"class.std::__shared_ptr.1060" }
%"class.std::__shared_ptr.1060" = type { ptr, %"class.std::__shared_count" }
%"class.lldb_private::ModuleList" = type { %"class.std::vector.1063", %"class.std::recursive_mutex", ptr }
%"class.std::vector.1063" = type { %"struct.std::_Vector_base.1064" }
%"struct.std::_Vector_base.1064" = type { %"struct.std::_Vector_base<std::shared_ptr<lldb_private::Module>, std::allocator<std::shared_ptr<lldb_private::Module>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<lldb_private::Module>, std::allocator<std::shared_ptr<lldb_private::Module>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<lldb_private::Module>, std::allocator<std::shared_ptr<lldb_private::Module>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<lldb_private::Module>, std::allocator<std::shared_ptr<lldb_private::Module>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::recursive_mutex" = type { %"class.std::__recursive_mutex_base" }
%"class.std::__recursive_mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.lldb_private::ModuleSpecList" = type { %"class.std::vector.1068", %"class.std::recursive_mutex" }
%"class.std::vector.1068" = type { %"struct.std::_Vector_base.1069" }
%"struct.std::_Vector_base.1069" = type { %"struct.std::_Vector_base<lldb_private::ModuleSpec, std::allocator<lldb_private::ModuleSpec>>::_Vector_impl" }
%"struct.std::_Vector_base<lldb_private::ModuleSpec, std::allocator<lldb_private::ModuleSpec>>::_Vector_impl" = type { %"struct.std::_Vector_base<lldb_private::ModuleSpec, std::allocator<lldb_private::ModuleSpec>>::_Vector_impl_data" }
%"struct.std::_Vector_base<lldb_private::ModuleSpec, std::allocator<lldb_private::ModuleSpec>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::SmallVector.1172" = type { %"class.llvm::SmallVectorImpl.1173", %"struct.llvm::SmallVectorStorage.1176" }
%"class.llvm::SmallVectorImpl.1173" = type { %"class.llvm::SmallVectorTemplateBase.1174" }
%"class.llvm::SmallVectorTemplateBase.1174" = type { %"class.llvm::SmallVectorTemplateCommon.1175" }
%"class.llvm::SmallVectorTemplateCommon.1175" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.1176" = type { [32 x i8] }
%"class.llvm::formatv_object" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.1236", %"struct.std::array.1239" }
%"class.std::tuple.1236" = type { %"struct.std::_Tuple_impl.1237" }
%"struct.std::_Tuple_impl.1237" = type { %"struct.std::_Head_base.1238" }
%"struct.std::_Head_base.1238" = type { %"class.llvm::support::detail::FormatFunctor" }
%"class.llvm::DenseMap.23" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.31" = type { ptr, ptr, i32, i32 }
%"class.lldb_private::SupportFileList" = type { %"class.std::vector.383" }
%"class.std::vector.383" = type { %"struct.std::_Vector_base.384" }
%"struct.std::_Vector_base.384" = type { %"struct.std::_Vector_base<std::shared_ptr<lldb_private::SupportFile>, std::allocator<std::shared_ptr<lldb_private::SupportFile>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<lldb_private::SupportFile>, std::allocator<std::shared_ptr<lldb_private::SupportFile>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<lldb_private::SupportFile>, std::allocator<std::shared_ptr<lldb_private::SupportFile>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<lldb_private::SupportFile>, std::allocator<std::shared_ptr<lldb_private::SupportFile>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::formatv_object.1408" = type { %"class.llvm::formatv_object_base.base", %"class.std::tuple.1409", %"struct.std::array.1239" }
%"class.std::tuple.1409" = type { %"struct.std::_Tuple_impl.1410" }
%"struct.std::_Tuple_impl.1410" = type { %"struct.std::_Head_base.1411" }
%"struct.std::_Head_base.1411" = type { %"class.llvm::support::detail::FormatFunctor.1412" }
%"class.llvm::support::detail::FormatFunctor.1412" = type { i32 }
%"class.llvm::DenseMap.29" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.25" = type { ptr, ptr, i32, i32 }
%"class.llvm::DenseMap.27" = type { ptr, ptr, i32, i32 }
%"class.llvm::Expected.1460" = type <{ %union.anon.1461, i8, [7 x i8] }>
%union.anon.1461 = type { %"class.llvm::codeview::CVRecord" }
%"struct.lldb_private::AugmentedRangeData.1371" = type { %"struct.lldb_private::RangeData", i32 }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1554" = type { %class.anon.1553 }
%class.anon.1553 = type { ptr, ptr }
%"struct.lldb_private::UniqueCStringMap<unsigned int>::Entry" = type <{ %"class.lldb_private::ConstString", i32, [4 x i8] }>
%"class.llvm::DenseMap.35" = type { ptr, ptr, i32, i32 }

$_ZN4llvm8DenseMapImSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS6_EEED2Ev = comdat any

$_ZN4llvm8DenseMapImSt10shared_ptrIN12lldb_private4TypeEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEED2Ev = comdat any

$_ZN4llvm8DenseMapImSt10shared_ptrIN12lldb_private11CompileUnitEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEED2Ev = comdat any

$_ZN4llvm8DenseMapImSt10shared_ptrIN12lldb_private8FunctionEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEED2Ev = comdat any

$_ZN4llvm8DenseMapImSt10shared_ptrIN12lldb_private5BlockEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEED2Ev = comdat any

$_ZN4llvm8DenseMapImSt10shared_ptrIN12lldb_private8VariableEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS4_EEED2Ev = comdat any

$_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev = comdat any

$_ZN12lldb_private16SymbolFileCommonD2Ev = comdat any

$_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_ = comdat any

$_ZN12lldb_private3Log6FormatIJN4llvm9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvS3_S3_PKcDpOT_ = comdat any

$_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN4llvm12consumeErrorENS_5ErrorE = comdat any

$_ZN12lldb_private3Log11FormatErrorIJEEEvN4llvm5ErrorENS2_9StringRefES4_PKcDpOT_ = comdat any

$_ZNSt12__shared_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN4llvm8ExpectedISt10shared_ptrIN12lldb_private10TypeSystemEEED2Ev = comdat any

$_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_8BlockSymEEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_ = comdat any

$_ZN12lldb_private6Module11ReportErrorIJRtRjRmmS4_EEEvPKcDpOT_ = comdat any

$_ZNSt12__shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_7ProcSymEEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_ = comdat any

$_ZN12lldb_private3Log11FormatErrorIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN4llvm5ErrorENS9_9StringRefESB_PKcDpOT_ = comdat any

$_ZN4llvm8codeview16TypeDeserializer13deserializeAsINS0_13ArgListRecordEEENS_5ErrorERNS0_8CVRecordINS0_12TypeLeafKindEEERT_ = comdat any

$_ZN12lldb_private3Log11FormatErrorIJRN4llvm8codeview9TypeIndexEEEEvNS2_5ErrorENS2_9StringRefES7_PKcDpOT_ = comdat any
end_hunk_0
begin_hunk_1_@_ZN12lldb_private11CompileUnit12SetLineTableEPNS_9LineTableE
declare void @_ZN12lldb_private11CompileUnit12SetLineTableEPNS_9LineTableE(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private4npdb19SymbolFileNativePDB16ParseDebugMacrosERNS_11CompileUnitE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm8codeview29DebugStringTableSubsectionRef9getStringEj(ptr dead_on_unwind writable sret(%"class.llvm::Expected.683") align 8, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private4npdb19SymbolFileNativePDB17ParseSupportFilesERNS_11CompileUnitERNS_15SupportFileListE(ptr noundef nonnull align 8 dereferenceable(568) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(196) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.lldb_private::npdb::PdbSymUid", align 8 ; 5 uses
  %4 = alloca %"class.lldb_private::FileSpec", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0) #23 ; 2 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #26
  unreachable

_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !895
  store i64 %i.g, ptr %3, align 8, !tbaa !458
  %i.h = call noundef zeroext i8 @_ZNK12lldb_private4npdb9PdbSymUid4kindEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.i = icmp eq i8 %i.h, 0
  call void @_ZN12lldb_private12_lldb_assertEbPKcS1_S1_jRSt9once_flag(i1 noundef zeroext %i.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @__FUNCTION__._ZN12lldb_private4npdb19SymbolFileNativePDB17ParseSupportFilesERNS_11CompileUnitERNS_15SupportFileListE, ptr noundef nonnull @.str.7, i32 noundef 1654, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN12lldb_private4npdb19SymbolFileNativePDB17ParseSupportFilesERNS_11CompileUnitERNS_15SupportFileListEE10_once_flag) #23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = call i16 @_ZNK12lldb_private4npdb9PdbSymUid11asCompilandEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23
  %i.n = call noundef ptr @_ZN12lldb_private4npdb16CompileUnitIndex12GetCompilandEt(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i16 noundef zeroext %i.m) #23 ; 3 uses
  %i.o = icmp ne ptr %i.n, null
  call void @_ZN12lldb_private12_lldb_assertEbPKcS1_S1_jRSt9once_flag(i1 noundef zeroext %i.o, ptr noundef nonnull @.str.11, ptr noundef nonnull @__FUNCTION__._ZN12lldb_private4npdb19SymbolFileNativePDB17ParseSupportFilesERNS_11CompileUnitERNS_15SupportFileListE, ptr noundef nonnull @.str.7, i32 noundef 1657, ptr noundef nonnull align 4 dereferenceable(4) @_ZZN12lldb_private4npdb19SymbolFileNativePDB17ParseSupportFilesERNS_11CompileUnitERNS_15SupportFileListEE10_once_flag_0) #23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 496
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !974  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 504
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !974  ; 2 uses
  %.not18 = icmp eq ptr %i.q, %i.s
  br i1 %.not18, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread16, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.t = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #23 ; 0 uses
  ret i1 true

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread16
  %.sroa.011.019 = phi ptr [ %i.w, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread16 ], [ %i.q, %_ZNSt10lock_guardISt15recursive_mutexEC2ERS0_.exit ] ; 3 uses
  %.sroa.08.0.copyload = load ptr, ptr %.sroa.011.019, align 8, !tbaa !185 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !186 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread16, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %.lr.ph
  %lhsc = load i8, ptr %.sroa.08.0.copyload, align 1
  %lhsc.fr = freeze i8 %lhsc
  %i.u = icmp eq i8 %lhsc.fr, 47
  %spec.select = select i1 %i.u, i32 1, i32 3
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread16

_ZNK4llvm9StringRef11starts_withES0_.exit.thread16: ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit, %.lr.ph
  %i.v = phi i32 [ 3, %.lr.ph ], [ %spec.select, %_ZNK4llvm9StringRef11starts_withES0_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @_ZN12lldb_private8FileSpecC1EN4llvm9StringRefENS1_3sys4path5StyleE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %.sroa.08.0.copyload, i64 %.sroa.5.0.copyload, i32 noundef %i.v) #23
  call void @_ZN12lldb_private15SupportFileList6AppendERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.w, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private15SupportFileList6AppendERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.380", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1263)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #24, !noalias !1266 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 1, ptr %i.c, align 8, !tbaa !16, !noalias !1263
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 1, ptr %i.d, align 4, !tbaa !18, !noalias !1263
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private11SupportFileESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.b, align 8, !tbaa !19, !noalias !1263
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN12lldb_private11SupportFileE, i64 16), ptr %i.e, align 8, !tbaa !19, !noalias !1263
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !554, !noalias !1263
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr @_ZN12lldb_private8Checksum10g_sentinelE, align 1, !noalias !1263
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN12lldb_private8Checksum10g_sentinelE, i64 8), align 1, !noalias !1263
  tail call void @_ZN12lldb_private8ChecksumC1EN4llvm3MD59MD5ResultE(ptr noundef nonnull align 1 dereferenceable(16) %i.g, i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i.i.i) #23, !noalias !1263
  store ptr %i.b, ptr %i.a, align 8, !tbaa !10, !alias.scope !1263
  store ptr %i.e, ptr %2, align 8, !tbaa !559, !alias.scope !1263
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1269 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1272
  %.not.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i.i, label %_ZN12lldb_private15SupportFileList6AppendEOSt10shared_ptrINS_11SupportFileEE.exit, label %_ZN12lldb_private15SupportFileList6AppendEOSt10shared_ptrINS_11SupportFileEE.exit.thread

_ZN12lldb_private15SupportFileList6AppendEOSt10shared_ptrINS_11SupportFileEE.exit.thread: ; preds = %bb.a
  store ptr %i.e, ptr %i.i, align 8, !tbaa !1076
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.b, ptr %i.l, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.m, ptr %i.h, align 8, !tbaa !1269
  br label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZN12lldb_private15SupportFileList6AppendEOSt10shared_ptrINS_11SupportFileEE.exit: ; preds = %bb.a
  call void @_ZNSt6vectorISt10shared_ptrIN12lldb_private11SupportFileEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10  ; 8 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN12lldb_private15SupportFileList6AppendEOSt10shared_ptrINS_11SupportFileEE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.n, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !18
  %i.s = load ptr, ptr %.pre, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #23, !inline_history !571
  %i.v = load ptr, ptr %.pre, align 8, !tbaa !19
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #23, !inline_history !571
  br label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i2 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.e ], [ %i.aa, %bb.f ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.g, label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11SupportFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN12lldb_private15SupportFileList6AppendEOSt10shared_ptrINS_11SupportFileEE.exit.thread, %_ZN12lldb_private15SupportFileList6AppendEOSt10shared_ptrINS_11SupportFileEE.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private4npdb19SymbolFileNativePDB20ParseImportedModulesERKNS_13SymbolContextERSt6vectorINS_12SourceModuleESaIS6_EE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #2 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressE(ptr noundef nonnull align 8 dereferenceable(568) %0, i64 %1, ptr nofree noundef align 8 dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.lldb_private::npdb::PdbSymUid", align 8 ; 4 uses
  %4 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %6 = alloca %class.anon.1154, align 1           ; 3 uses
  %7 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %8 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %9 = alloca %class.anon.1154, align 1           ; 3 uses
  %10 = alloca %"class.lldb_private::npdb::PdbSymUid", align 8 ; 4 uses
  %11 = alloca %"struct.lldb_private::npdb::PdbCompilandSymId", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %12 = alloca %"class.std::shared_ptr.368", align 8 ; 5 uses
  %13 = alloca %"class.llvm::codeview::InlineSiteSym", align 8 ; 10 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 10 uses
  %15 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %16 = alloca %"struct.lldb_private::npdb::PdbCompilandSymId", align 8 ; 7 uses
  %17 = alloca %"class.lldb_private::FileSpec", align 8 ; 5 uses
  %18 = alloca %"class.llvm::Expected.661", align 8 ; 10 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %.sroa.0455 = alloca i64, align 8               ; 19 uses
  %.sroa.0 = alloca i64, align 8                  ; 13 uses
  %.sroa.0434 = alloca i64, align 8               ; 9 uses
  %.sroa.0428 = alloca i64, align 8               ; 8 uses
  %20 = alloca %"struct.llvm::codeview::BinaryAnnotationIterator", align 8 ; 12 uses
  %21 = alloca %"struct.lldb_private::RangeData", align 4 ; 7 uses
  %22 = alloca %"class.lldb_private::Address", align 8 ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %24 = alloca %"class.llvm::Expected.724", align 8 ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %29 = alloca %"class.llvm::codeview::MemberFuncIdRecord", align 8 ; 7 uses
  %30 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %34 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %36 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %37 = alloca %"class.std::allocator.87", align 1 ; 3 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %40 = alloca %"class.llvm::codeview::FuncIdRecord", align 8 ; 7 uses
  %41 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %45 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %47 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  %48 = alloca %"class.std::allocator.87", align 1 ; 3 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %50 = alloca %"class.llvm::StringRef", align 8  ; 5 uses
  store i64 %1, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZN12lldb_private4npdb9PdbSymUidC1ERKNS0_17PdbCompilandSymIdE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11) #23
  %i.c = load i64, ptr %10, align 8, !tbaa !458   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  store i64 %i.c, ptr %i.a, align 8, !tbaa !186
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115, !noalias !1273
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116, !noalias !1273 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.i = load i32, ptr %i.h, align 4, !tbaa !114, !noalias !1273 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add i32 %i.i, -1                         ; 2 uses
  %i.l = mul i64 %i.c, -4658895280553007687       ; 2 uses
  %i.m = lshr i64 %i.l, 31
  %i.n = xor i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.k, %i.o                       ; 3 uses
  %i.q = zext i32 %i.p to i64                     ; 2 uses
  %i.r = lshr i64 %i.q, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !23
  %i.u = and i32 %i.p, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i.i, label %.loopexit, !prof !345

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ad, %bb.c ], [ %i.q, %bb.b ]
  %.017.i.i = phi i32 [ %i.ac, %bb.c ], [ %i.p, %bb.b ]
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !186
  %i.aa = icmp eq i64 %i.c, %i.z
  br i1 %i.aa, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8containsERKm.exit, label %bb.c, !prof !347

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ab = add nuw i32 %.017.i.i, 1
  %i.ac = and i32 %i.ab, %i.k                     ; 3 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !23
  %i.ah = and i32 %i.ac, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i.i, label %.loopexit, !prof !346

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %i.ak = call noundef i64 @_ZNK12lldb_private7Address14GetFileAddressEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #23 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load i16, ptr %11, align 8, !tbaa !391
  %i.ap = call noundef ptr @_ZN12lldb_private4npdb16CompileUnitIndex12GetCompilandEt(ptr noundef nonnull align 8 dereferenceable(32) %i.an, i16 noundef zeroext %i.ao) #23 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1278
  %i.at = call { ptr, i64 } @_ZNK4llvm3pdb20ModuleDebugStreamRef18readSymbolAtOffsetEj(ptr noundef nonnull align 8 dereferenceable(400) %i.aq, i32 noundef %i.as) #23 ; 2 uses
  %i.au = extractvalue { ptr, i64 } %i.at, 0      ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.at, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN12lldb_private4npdb19SymbolFileNativePDB22GetOrCreateCompileUnitERKNS0_18CompilandIndexItemE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.368") align 8 %12, ptr noundef nonnull align 8 dereferenceable(568) %0, ptr noundef nonnull align 8 dereferenceable(784) %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.aw = icmp ult i64 %i.av, 4
  br i1 %i.aw, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.ax, align 1
  br label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit

_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit: ; preds = %.loopexit, %bb.d
  %.0.i = phi i16 [ %.0.copyload.i.i.i.i, %bb.d ], [ 0, %.loopexit ]
  store i16 %.0.i, ptr %13, align 8, !tbaa !386
  %i.ay = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %i.ay, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_13InlineSiteSymEEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %14, ptr %i.au, i64 %i.av, ptr noundef nonnull align 8 dereferenceable(44) %13)
  %i.az = load ptr, ptr %14, align 8, !tbaa !172
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.n, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #23
  %i.bb = load atomic ptr, ptr %i.ba monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.bb) #23
  %i.bd = and i64 %i.bc, 8388608
  %.not6.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not6.i.i, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.be = load ptr, ptr %14, align 8, !tbaa !172
  store ptr null, ptr %14, align 8, !tbaa !172
  br label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bf = load ptr, ptr %14, align 8, !tbaa !172  ; 2 uses
  store ptr null, ptr %14, align 8, !tbaa !172
  %i.bg = call noundef ptr @_ZN12lldb_private15GetLLDBErrorLogEv() #23 ; 2 uses
  %.not68 = icmp eq ptr %i.bg, null
  br i1 %.not68, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %.057504 = phi ptr [ %i.bb, %.thread ], [ %i.bg, %bb.g ]
  %i.bh = phi ptr [ %i.be, %.thread ], [ %i.bf, %bb.g ] ; 2 uses
  %.not529 = icmp eq ptr %i.bh, null
  br i1 %.not529, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bh, ptr %15, align 8, !tbaa !172
  call void @_ZN12lldb_private3Log11FormatErrorIJEEEvN4llvm5ErrorENS2_9StringRefES4_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.057504, ptr nofree noundef nonnull align 8 dereferenceable(8) %15, ptr nonnull @.str.1, i64 98, ptr nonnull @__func__._ZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressE, i64 15, ptr noundef nonnull @.str.46)
  %i.bi = load ptr, ptr %15, align 8, !tbaa !172  ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4llvm5ErrorD2Ev.exit74, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi) #23, !inline_history !271
  br label %_ZN4llvm5ErrorD2Ev.exit74

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.bn = phi ptr [ null, %bb.h ], [ %i.bf, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %i.bn, ptr %8, align 8, !tbaa !172
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %7, ptr nofree noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
  %i.bo = load ptr, ptr %8, align 8, !tbaa !172   ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN4llvm5ErrorD2Ev.exit73, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #23, !inline_history !226
  br label %_ZN4llvm5ErrorD2Ev.exit73

_ZN4llvm5ErrorD2Ev.exit73:                        ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZN4llvm5ErrorD2Ev.exit74

_ZN4llvm5ErrorD2Ev.exit74:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit73, %bb.i, %bb.j
  %i.bt = load ptr, ptr %14, align 8, !tbaa !172  ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_ZN4llvm5ErrorD2Ev.exit75, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit74
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt) #23, !inline_history !271
  br label %_ZN4llvm5ErrorD2Ev.exit75

_ZN4llvm5ErrorD2Ev.exit75:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit74, %bb.m
end_hunk_1
