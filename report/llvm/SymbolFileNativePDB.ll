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
%"struct.std::_Optional_payload.76" = type { %"struct.std::_Optional_payload_base.base.78", [3 x i8] }
%"struct.std::_Optional_payload_base.base.78" = type <{ %"union.std::_Optional_payload_base<unsigned int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned int>::_Storage" = type { i32 }
%"struct.std::_Optional_payload.706" = type { %"struct.std::_Optional_payload_base.base.708", [3 x i8] }
%"struct.std::_Optional_payload_base.base.708" = type <{ %"union.std::_Optional_payload_base<int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<int>::_Storage" = type { i32 }
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
  %.sroa.0455 = alloca %"struct.std::_Optional_payload.76", align 8 ; 19 uses
  %.sroa.0 = alloca %"struct.std::_Optional_payload.76", align 8 ; 13 uses
  %.sroa.0434 = alloca %"struct.std::_Optional_payload.706", align 8 ; 9 uses
  %.sroa.0428 = alloca %"struct.std::_Optional_payload.706", align 8 ; 8 uses
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
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.eg

bb.n:                                             ; preds = %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.by = load i16, ptr %11, align 8, !tbaa !391
  %i.bz = load i32, ptr %i.ay, align 4, !tbaa !1279
  store i16 %i.by, ptr %16, align 8, !tbaa !391
  %i.ca = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !1278
  %i.cb = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #24, !noalias !1285 ; 20 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 8 uses
  store i32 1, ptr %i.cc, align 8, !tbaa !16, !noalias !1290
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 12 ; 2 uses
  store i32 1, ptr %i.cd, align 4, !tbaa !18, !noalias !1290
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cb, align 8, !tbaa !19, !noalias !1290
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %16, align 8, !noalias !1290
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.ce, align 8, !noalias !1290
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false), !noalias !1290
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 40 ; 6 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 56 ; 2 uses
  store ptr %i.ch, ptr %i.cg, align 8, !tbaa !28, !noalias !1290
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 7 uses
  store i32 0, ptr %i.ci, align 8, !tbaa !30, !noalias !1290
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cb, i64 52 ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !31, !noalias !1290
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i8 0, i64 24, i1 false), !noalias !1290
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ap, i64 728
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1079 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ap, i64 720 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n
  %.0.copyload.i.i.i.i2.i.i.i.i.i = load i32, ptr %i.cl, align 4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.o ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.o ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i.i = load i32, ptr %i.cp, align 1
  %i.cq = icmp ult i32 %.0.copyload.i.i.i.i.i.i.i.i.i, %.0.copyload.i.i.i.i2.i.i.i.i.i ; 2 uses
  %.19.i.i.i = select i1 %i.cq, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.cq, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i77 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i77, label %_ZNSt8_Rb_treeIN4llvm8codeview9TypeIndexESt4pairIKS2_NS1_17InlineeSourceLineEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, label %bb.o, !llvm.loop !1291

_ZNSt8_Rb_treeIN4llvm8codeview9TypeIndexESt4pairIKS2_NS1_17InlineeSourceLineEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i: ; preds = %bb.o
  %i.cr = icmp eq ptr %.19.i.i.i, %i.co
  br i1 %i.cr, label %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit

_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit: ; preds = %_ZNSt8_Rb_treeIN4llvm8codeview9TypeIndexESt4pairIKS2_NS1_17InlineeSourceLineEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %.0.copyload.i.i.i.i2.i.i.i.i = load i32, ptr %i.cs, align 1
  %i.ct = icmp ult i32 %.0.copyload.i.i.i.i2.i.i.i.i.i, %.0.copyload.i.i.i.i2.i.i.i.i
  br i1 %i.ct, label %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1292 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 56
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !10 ; 9 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null   ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm8codeview17InlineeSourceLineC2ERKS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !23
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !23
  br label %_ZN4llvm8codeview17InlineeSourceLineC2ERKS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.dc = atomicrmw volatile add ptr %i.cy, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN4llvm8codeview17InlineeSourceLineC2ERKS1_.exit

_ZN4llvm8codeview17InlineeSourceLineC2ERKS1_.exit: ; preds = %bb.p, %bb.r, %bb.s
  %i.dd = load ptr, ptr %12, align 8, !tbaa !376
  %i.de = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN12lldb_private11CompileUnit15GetSupportFilesEv(ptr noundef nonnull align 8 dereferenceable(196) %i.dd) #23 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @_ZN12lldb_private8FileSpecC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.df = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %.0.copyload.i.i.i = load i32, ptr %i.df, align 1
  call void @_ZN12lldb_private4npdb19SymbolFileNativePDB12GetFileIndexERKNS0_18CompilandIndexItemEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.661") align 8 %18, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(784) %i.ap, i32 noundef %.0.copyload.i.i.i)
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 8
  %i.di = trunc i8 %i.dh to i1
  br i1 %i.di, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN4llvm8codeview17InlineeSourceLineC2ERKS1_.exit
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #23
  %i.dk = load atomic ptr, ptr %i.dj monotonic, align 8 ; 3 uses
  %.not.i.i78 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i78, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dl = call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.dk) #23
  %i.dm = and i64 %i.dl, 8388608
  %.not6.i.i79 = icmp eq i64 %i.dm, 0
  br i1 %.not6.i.i79, label %bb.v, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.u
  %i.dn = load i64, ptr %18, align 8, !tbaa !205, !noalias !1295 ; 2 uses
  %i.do = inttoptr i64 %i.dn to ptr
  store ptr null, ptr %18, align 8, !tbaa !205, !noalias !1295
  br label %.thread506

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.dp = load i64, ptr %18, align 8, !tbaa !205, !noalias !1295 ; 2 uses
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  store ptr null, ptr %18, align 8, !tbaa !205, !noalias !1295
  %i.dr = call noundef ptr @_ZN12lldb_private15GetLLDBErrorLogEv() #23 ; 2 uses
  %.not70 = icmp eq ptr %i.dr, null
  br i1 %.not70, label %bb.y, label %.thread506

.thread506:                                       ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, %bb.v
  %i.ds = phi ptr [ %i.dq, %bb.v ], [ %i.do, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ] ; 2 uses
  %i.dt = phi i64 [ %i.dp, %bb.v ], [ %i.dn, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %.058509 = phi ptr [ %i.dr, %bb.v ], [ %i.dk, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i ]
  %.not524 = icmp eq i64 %i.dt, 0
  br i1 %.not524, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.thread506
  store ptr %i.ds, ptr %19, align 8, !tbaa !172
  call void @_ZN12lldb_private3Log11FormatErrorIJEEEvN4llvm5ErrorENS2_9StringRefES4_PKcDpOT_(ptr noundef nonnull align 8 dereferenceable(104) %.058509, ptr nofree noundef nonnull align 8 dereferenceable(8) %19, ptr nonnull @.str.1, i64 98, ptr nonnull @__func__._ZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressE, i64 15, ptr noundef nonnull @.str.47)
  %i.du = load ptr, ptr %19, align 8, !tbaa !172  ; 3 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZN4llvm5ErrorD2Ev.exit86, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %i.du) #23, !inline_history !271
  br label %_ZN4llvm5ErrorD2Ev.exit86

bb.y:                                             ; preds = %.thread506, %bb.v
  %i.dz = phi ptr [ %i.ds, %.thread506 ], [ %i.dq, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.dz, ptr %5, align 8, !tbaa !172
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %i.ea = load ptr, ptr %5, align 8, !tbaa !172   ; 3 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %_ZN4llvm5ErrorD2Ev.exit85, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !19
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #23, !inline_history !226
  br label %_ZN4llvm5ErrorD2Ev.exit85

_ZN4llvm5ErrorD2Ev.exit85:                        ; preds = %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZN4llvm5ErrorD2Ev.exit86

bb.aa:                                            ; preds = %_ZN4llvm8codeview17InlineeSourceLineC2ERKS1_.exit
  %i.ef = load i32, ptr %18, align 8, !tbaa !23   ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %i.eh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK12lldb_private15SupportFileList18GetFileSpecAtIndexEm(ptr noundef nonnull align 8 dereferenceable(24) %i.de, i64 noundef %i.eg) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %i.eh, i64 24, i1 false), !tbaa.struct !554
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.0.copyload.i.i.i87 = load i32, ptr %i.ei, align 1 ; 3 uses
  %i.ej = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #24, !noalias !1298 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(30) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !554, !noalias !1298
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  store i32 %.0.copyload.i.i.i87, ptr %i.ek, align 8, !tbaa !642, !noalias !1298
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 28
  store i16 0, ptr %i.el, align 4, !tbaa !645, !noalias !1298
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0455)
  %.sroa.0455.4..sroa_idx687 = getelementptr inbounds nuw i8, ptr %.sroa.0455, i64 4
  store i8 0, ptr %.sroa.0455.4..sroa_idx687, align 4, !tbaa !1301
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %.sroa.0.4..sroa_idx684 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  store i8 0, ptr %.sroa.0.4..sroa_idx684, align 4, !tbaa !1301
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0434)
  %.sroa.0434.4..sroa_idx682 = getelementptr inbounds nuw i8, ptr %.sroa.0434, i64 4
  store i8 0, ptr %.sroa.0434.4..sroa_idx682, align 4, !tbaa !1303
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0428)
  %.sroa.0428.4..sroa_idx679 = getelementptr inbounds nuw i8, ptr %.sroa.0428, i64 4
  store i8 0, ptr %.sroa.0428.4..sroa_idx679, align 4, !tbaa !1303
  %i.em = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1305, !noalias !1306 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1309, !noalias !1306 ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.en to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  %i.et = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 2 uses
  store i8 0, ptr %i.et, align 8, !tbaa !1310, !alias.scope !1312
  %i.eu = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 2 uses
  store ptr %i.en, ptr %i.eu, align 8, !tbaa !185
  %.sroa.5325.56..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 2 uses
  store i64 %i.es, ptr %.sroa.5325.56..sroa_idx, align 8, !tbaa !186
  %i.ev = getelementptr inbounds nuw i8, ptr %20, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false), !alias.scope !1312
  %.not.i.i.i.i532 = icmp eq ptr %i.ep, %i.en
  br i1 %.not.i.i.i.i532, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.ew = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.ex = getelementptr inbounds nuw i8, ptr %20, i64 36 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %20, i64 40
  %i.ez = getelementptr inbounds nuw i8, ptr %20, i64 44 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cb, i64 72 ; 8 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 6 uses
  %.sroa.0455.4..sroa_idx688 = getelementptr inbounds nuw i8, ptr %.sroa.0455, i64 4
  %.sroa.0.4..sroa_idx685 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0455.4..sroa_idx689 = getelementptr inbounds nuw i8, ptr %.sroa.0455, i64 4
  %.sroa.0455.4..sroa_idx690 = getelementptr inbounds nuw i8, ptr %.sroa.0455, i64 4
  %.sroa.0.4..sroa_idx686 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0434.4..sroa_idx683 = getelementptr inbounds nuw i8, ptr %.sroa.0434, i64 4
  %.sroa.0428.4..sroa_idx680 = getelementptr inbounds nuw i8, ptr %.sroa.0428, i64 4
  %.sroa.0428.4..sroa_idx681 = getelementptr inbounds nuw i8, ptr %.sroa.0428, i64 4
  br label %bb.ad

_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit: ; preds = %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE9push_backERKS2_.exit, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.fe = load i32, ptr %i.ci, align 8, !tbaa !30 ; 3 uses
  %i.ff = icmp ugt i32 %i.fe, 1
  br i1 %i.ff, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit
  %i.fg = zext i32 %i.fe to i64
  %i.fh = load ptr, ptr %i.cg, align 8, !tbaa !28 ; 2 uses
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.fh, i64 %i.fg
  call void @_ZSt13__stable_sortIPN12lldb_private18AugmentedRangeDataIjjiEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_15RangeDataVectorIjjiLj0ESt4lessIiEE4SortEvEUlRKNS0_9RangeDataIjjiEESE_E_EEEvT_SH_T0_(ptr noundef %i.fh, ptr noundef nonnull %i.fi, ptr nonnull %i.ch)
  %.pr.i = load i32, ptr %i.ci, align 8, !tbaa !30
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit
  %i.fj = phi i32 [ %.pr.i, %bb.ab ], [ %i.fe, %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit ] ; 2 uses
  %.not.i.i89 = icmp eq i32 %i.fj, 0
  br i1 %.not.i.i89, label %_ZNSt12__shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE4SortEv.exit

_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE4SortEv.exit: ; preds = %bb.ac
  %i.fk = zext i32 %i.fj to i64
  %i.fl = call noundef i32 @_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE18ComputeUpperBoundsEmm(ptr noundef nonnull align 8 dereferenceable(17) %i.cg, i64 noundef 0, i64 noundef %i.fk) ; 0 uses
  %.pre = load i32, ptr %i.ci, align 8, !tbaa !30
  %i.fm = icmp eq i32 %.pre, 0
  br i1 %i.fm, label %_ZNSt12__shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.bl

bb.ad:                                            ; preds = %.lr.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit
  %.sroa.0.4..sroa.0.4..sroa.0.4.403 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.4..sroa.0.4..sroa.0.4.403575, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 4 uses
  %.sroa.0434.4..sroa.0434.4..sroa.0434.4.441 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0434.4..sroa.0434.4..sroa.0434.4.439, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 2 uses
  %.sroa.0455.4..sroa.0455.4..sroa.0455.4.468 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0455.4..sroa.0455.4..sroa.0455.4.466, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 6 uses
  %.060540 = phi i8 [ 1, %.lr.ph ], [ %.161, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 4 uses
  %.062539 = phi i8 [ 1, %.lr.ph ], [ %spec.select, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 4 uses
  %.0538 = phi i32 [ 0, %.lr.ph ], [ %.1494, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 9 uses
  %.0495537 = phi i32 [ 0, %.lr.ph ], [ %.1496, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 9 uses
  %.sroa.0451.0536 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0451.1, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 8 uses
  %.sroa.5.0535 = phi i1 [ false, %.lr.ph ], [ %.sroa.5.2, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 8 uses
  %.0497533 = phi i32 [ %i.ef, %.lr.ph ], [ %.3, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 8 uses
  %i.fn = call noundef zeroext i1 @_ZN4llvm8codeview24BinaryAnnotationIterator22ParseCurrentAnnotationEv(ptr noundef nonnull align 8 dereferenceable(88) %20) ; 0 uses
  %i.fo = load i32, ptr %i.ew, align 8, !tbaa !1315
  switch i32 %i.fo, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit" [
    i32 1, label %bb.ae
    i32 3, label %bb.ae
    i32 2, label %bb.ae
    i32 6, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit"
    i32 4, label %bb.ah
    i32 11, label %bb.ak
    i32 12, label %bb.an
    i32 5, label %bb.as
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad, %bb.ad
  %i.fp = load i32, ptr %i.ex, align 4, !tbaa !1318 ; 2 uses
  %i.fq = add i32 %i.fp, %.0538                   ; 3 uses
  %i.fr = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4.468 to i1
  br i1 %i.fr, label %bb.af, label %.sink.split.i

bb.af:                                            ; preds = %bb.ae
  %i.fs = trunc nuw i8 %.sroa.0.4..sroa.0.4..sroa.0.4.403 to i1
  br i1 %i.fs, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.459 = load i32, ptr %.sroa.0455, align 8, !tbaa !23
  %i.ft = add i32 %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.459, %i.fp
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.ae, %bb.ag
  %.sink8.i = phi i32 [ %i.ft, %bb.ag ], [ %i.fq, %bb.ae ]
  %.sink.i = phi ptr [ %.sroa.0, %bb.ag ], [ %.sroa.0455, %bb.ae ]
  %.sroa.0.0.insert.ext.i = zext i32 %.sink8.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sink.i, align 8
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"

"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit": ; preds = %bb.ad
  %i.fu = load i32, ptr %i.ez, align 4, !tbaa !1319
  %i.fv = add nsw i32 %i.fu, %.0495537            ; 2 uses
  %i.fw = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4.468 to i1
  %i.fx = trunc nuw i8 %.sroa.0434.4..sroa.0434.4..sroa.0434.4.441 to i1
  %or.cond = select i1 %i.fw, i1 %i.fx, i1 false
  %.sink.i91 = select i1 %or.cond, ptr %.sroa.0428, ptr %.sroa.0434
  %.sroa.0.0.insert.ext.i92 = zext i32 %i.fv to i64
  %.sroa.0.0.insert.insert.i93 = or disjoint i64 %.sroa.0.0.insert.ext.i92, 4294967296
  store i64 %.sroa.0.0.insert.insert.i93, ptr %.sink.i91, align 8
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"

bb.ah:                                            ; preds = %bb.ad
  %i.fy = load i32, ptr %i.ex, align 4, !tbaa !1318 ; 2 uses
  %i.fz = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4.468 to i1
  br i1 %i.fz, label %bb.ai, label %.sink.split.i94

bb.ai:                                            ; preds = %bb.ah
  %i.ga = trunc nuw i8 %.sroa.0.4..sroa.0.4..sroa.0.4.403 to i1
  br i1 %i.ga, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.460 = load i32, ptr %.sroa.0455, align 8, !tbaa !23
  %i.gb = add i32 %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.460, %i.fy
  br label %.sink.split.i94

.sink.split.i94:                                  ; preds = %bb.ah, %bb.aj
  %.sink8.i95 = phi i32 [ %i.gb, %bb.aj ], [ %.0538, %bb.ah ]
  %.sink.i96 = phi ptr [ %.sroa.0, %bb.aj ], [ %.sroa.0455, %bb.ah ]
  %.sroa.0.0.insert.ext.i97 = zext i32 %.sink8.i95 to i64
  %.sroa.0.0.insert.insert.i98 = or disjoint i64 %.sroa.0.0.insert.ext.i97, 4294967296
  store i64 %.sroa.0.0.insert.insert.i98, ptr %.sink.i96, align 8
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99"

"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99": ; preds = %bb.ai, %.sink.split.i94
  %i.gc = add i32 %i.fy, %.0538
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"

bb.ak:                                            ; preds = %bb.ad
  %i.gd = load i32, ptr %i.ex, align 4, !tbaa !1318 ; 2 uses
  %i.ge = add i32 %i.gd, %.0538                   ; 2 uses
  %i.gf = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4.468 to i1
  br i1 %i.gf, label %bb.al, label %.sink.split.i100

bb.al:                                            ; preds = %bb.ak
  %i.gg = trunc nuw i8 %.sroa.0.4..sroa.0.4..sroa.0.4.403 to i1
  br i1 %i.gg, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105", label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.461 = load i32, ptr %.sroa.0455, align 8, !tbaa !23
  %i.gh = add i32 %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.461, %i.gd
  br label %.sink.split.i100

.sink.split.i100:                                 ; preds = %bb.ak, %bb.am
  %.sink8.i101 = phi i32 [ %i.gh, %bb.am ], [ %i.ge, %bb.ak ]
  %.sink.i102 = phi ptr [ %.sroa.0, %bb.am ], [ %.sroa.0455, %bb.ak ]
  %.sroa.0.0.insert.ext.i103 = zext i32 %.sink8.i101 to i64
  %.sroa.0.0.insert.insert.i104 = or disjoint i64 %.sroa.0.0.insert.ext.i103, 4294967296
  store i64 %.sroa.0.0.insert.insert.i104, ptr %.sink.i102, align 8
  %.sroa.0455.4..sroa.0455.4..sroa.0455.4..sroa.0455.4.476.pre = load i8, ptr %.sroa.0455.4..sroa_idx689, align 4, !tbaa !1301
  %i.gi = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4..sroa.0455.4.476.pre to i1
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105"

"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105": ; preds = %bb.al, %.sink.split.i100
  %.sroa.0455.4..sroa.0455.4..sroa.0455.4.476 = phi i1 [ true, %bb.al ], [ %i.gi, %.sink.split.i100 ]
  %i.gj = load i32, ptr %i.ez, align 4, !tbaa !1319
  %i.gk = add nsw i32 %i.gj, %.0495537            ; 2 uses
  %i.gl = trunc nuw i8 %.sroa.0434.4..sroa.0434.4..sroa.0434.4.441 to i1
  %or.cond519 = select i1 %.sroa.0455.4..sroa.0455.4..sroa.0455.4.476, i1 %i.gl, i1 false
  %.sink.i106 = select i1 %or.cond519, ptr %.sroa.0428, ptr %.sroa.0434
  %.sroa.0.0.insert.ext.i107 = zext i32 %i.gk to i64
  %.sroa.0.0.insert.insert.i108 = or disjoint i64 %.sroa.0.0.insert.ext.i107, 4294967296
  store i64 %.sroa.0.0.insert.insert.i108, ptr %.sink.i106, align 8
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"

bb.an:                                            ; preds = %bb.ad
  %i.gm = load i32, ptr %i.ey, align 8, !tbaa !1320 ; 2 uses
  %i.gn = add i32 %i.gm, %.0538                   ; 3 uses
  %i.go = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4.468 to i1
  br i1 %i.go, label %bb.ao, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115"

bb.ao:                                            ; preds = %bb.an
  %i.gp = trunc nuw i8 %.sroa.0.4..sroa.0.4..sroa.0.4.403 to i1
  br i1 %i.gp, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115.thread", label %bb.ap

"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115.thread": ; preds = %bb.ao
  %i.gq = load i32, ptr %i.ex, align 4, !tbaa !1318
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.462 = load i32, ptr %.sroa.0455, align 8, !tbaa !23
  %i.gr = add i32 %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.462, %i.gm
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115"

"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115": ; preds = %bb.ap, %bb.an
  %.sink8.i111 = phi i32 [ %i.gr, %bb.ap ], [ %i.gn, %bb.an ]
  %.sink.i112 = phi ptr [ %.sroa.0, %bb.ap ], [ %.sroa.0455, %bb.an ]
  %.sroa.0.0.insert.ext.i113 = zext i32 %.sink8.i111 to i64
  %.sroa.0.0.insert.insert.i114 = or disjoint i64 %.sroa.0.0.insert.ext.i113, 4294967296
  store i64 %.sroa.0.0.insert.insert.i114, ptr %.sink.i112, align 8
  %.sroa.0455.4..sroa.0455.4..sroa.0455.4..sroa.0455.4.480.pre = load i8, ptr %.sroa.0455.4..sroa_idx688, align 4, !tbaa !1301
  %i.gs = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4..sroa.0455.4.480.pre to i1
  %i.gt = load i32, ptr %i.ex, align 4, !tbaa !1318 ; 2 uses
  br i1 %i.gs, label %bb.aq, label %.sink.split.i116

bb.aq:                                            ; preds = %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115.thread", %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115"
  %i.gu = phi i32 [ %i.gq, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115.thread" ], [ %i.gt, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115" ] ; 3 uses
  %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4.411 = load i8, ptr %.sroa.0.4..sroa_idx685, align 4, !tbaa !1301
  %i.gv = trunc nuw i8 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4.411 to i1
  br i1 %i.gv, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.463 = load i32, ptr %.sroa.0455, align 8, !tbaa !23
  %i.gw = add i32 %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.463, %i.gu
  br label %.sink.split.i116

.sink.split.i116:                                 ; preds = %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115", %bb.ar
  %i.gx = phi i32 [ %i.gu, %bb.ar ], [ %i.gt, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115" ]
  %.sink8.i117 = phi i32 [ %i.gw, %bb.ar ], [ %i.gn, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115" ]
  %.sink.i118 = phi ptr [ %.sroa.0, %bb.ar ], [ %.sroa.0455, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit115" ]
  %.sroa.0.0.insert.ext.i119 = zext i32 %.sink8.i117 to i64
  %.sroa.0.0.insert.insert.i120 = or disjoint i64 %.sroa.0.0.insert.ext.i119, 4294967296
  store i64 %.sroa.0.0.insert.insert.i120, ptr %.sink.i118, align 8
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121"

"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121": ; preds = %bb.aq, %.sink.split.i116
  %i.gy = phi i32 [ %i.gu, %bb.aq ], [ %i.gx, %.sink.split.i116 ]
  %i.gz = add i32 %i.gy, %i.gn
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"

bb.as:                                            ; preds = %bb.ad
  %i.ha = load i32, ptr %i.ex, align 4, !tbaa !1318 ; 2 uses
  %i.hb = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4.468 to i1
  br i1 %i.hb, label %bb.at, label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"

bb.at:                                            ; preds = %bb.as
  br label %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"

"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit": ; preds = %bb.at, %bb.as, %.sink.split.i, %bb.af, %bb.ad, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121", %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105", %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99", %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit"
  %.1498 = phi i32 [ %.0497533, %bb.ad ], [ %.0497533, %.sink.split.i ], [ %.0497533, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit" ], [ %.0497533, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99" ], [ %.0497533, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105" ], [ %.0497533, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121" ], [ %.0497533, %bb.af ], [ %.0497533, %bb.at ], [ %i.ha, %bb.as ] ; 2 uses
  %.sroa.5.1 = phi i1 [ %.sroa.5.0535, %bb.ad ], [ %.sroa.5.0535, %.sink.split.i ], [ %.sroa.5.0535, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit" ], [ %.sroa.5.0535, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99" ], [ %.sroa.5.0535, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105" ], [ %.sroa.5.0535, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121" ], [ %.sroa.5.0535, %bb.af ], [ true, %bb.at ], [ %.sroa.5.0535, %bb.as ] ; 2 uses
  %.sroa.0451.1 = phi i32 [ %.sroa.0451.0536, %bb.ad ], [ %.sroa.0451.0536, %.sink.split.i ], [ %.sroa.0451.0536, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit" ], [ %.sroa.0451.0536, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99" ], [ %.sroa.0451.0536, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105" ], [ %.sroa.0451.0536, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121" ], [ %.sroa.0451.0536, %bb.af ], [ %i.ha, %bb.at ], [ %.sroa.0451.0536, %bb.as ] ; 3 uses
  %.1496 = phi i32 [ %.0495537, %bb.ad ], [ %.0495537, %.sink.split.i ], [ %i.fv, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit" ], [ %.0495537, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99" ], [ %i.gk, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105" ], [ %.0495537, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121" ], [ %.0495537, %bb.af ], [ %.0495537, %bb.at ], [ %.0495537, %bb.as ]
  %.1494 = phi i32 [ %.0538, %bb.ad ], [ %i.fq, %.sink.split.i ], [ %.0538, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit" ], [ %i.gc, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99" ], [ %i.ge, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105" ], [ %i.gz, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121" ], [ %i.fq, %bb.af ], [ %.0538, %bb.at ], [ %.0538, %bb.as ]
  %.1 = phi i1 [ false, %bb.ad ], [ false, %.sink.split.i ], [ false, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_1clEi.exit" ], [ true, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit99" ], [ false, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit105" ], [ true, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit121" ], [ false, %bb.af ], [ false, %bb.at ], [ false, %bb.as ] ; 3 uses
  %.sroa.0455.4..sroa.0455.4..sroa.0455.4..sroa.0455.4. = load i8, ptr %.sroa.0455.4..sroa_idx690, align 4, !tbaa !1301 ; 2 uses
  %i.hc = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4..sroa.0455.4. to i1
  %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4. = load i8, ptr %.sroa.0.4..sroa_idx686, align 4 ; 2 uses
  %i.hd = trunc nuw i8 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4. to i1
  %or.cond520 = select i1 %i.hc, i1 %i.hd, i1 false
  %.sroa.0434.4..sroa.0434.4..sroa.0434.4..sroa.0434.4. = load i8, ptr %.sroa.0434.4..sroa_idx683, align 4 ; 2 uses
  %i.he = trunc nuw i8 %.sroa.0434.4..sroa.0434.4..sroa.0434.4..sroa.0434.4. to i1
  %or.cond521 = select i1 %or.cond520, i1 %i.he, i1 false
  br i1 %or.cond521, label %bb.au, label %bb.az

bb.au:                                            ; preds = %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0. = load i32, ptr %.sroa.0455, align 8, !tbaa !23 ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load i32, ptr %.sroa.0, align 8, !tbaa !23
  %i.hf = sub i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.
  %.sroa.0434.0..sroa.0434.0..sroa.0434.0..sroa.0434.0. = load i32, ptr %.sroa.0434, align 8, !tbaa !23
  %i.hg = add i32 %.sroa.0434.0..sroa.0434.0..sroa.0434.0..sroa.0434.0., %.0.copyload.i.i.i87
  store i32 %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0., ptr %21, align 4, !tbaa !1321
  store i32 %i.hf, ptr %i.fa, align 4, !tbaa !1323
  store i32 %i.hg, ptr %i.fb, align 4, !tbaa !1324
  %i.hh = load i32, ptr %i.ci, align 8, !tbaa !30 ; 2 uses
  %i.hi = load i32, ptr %i.cj, align 4, !tbaa !31
  %.not.i.i124 = icmp ult i32 %i.hh, %i.hi
  br i1 %.not.i.i124, label %bb.aw, label %bb.av, !prof !347

bb.av:                                            ; preds = %bb.au
  %i.hj = call noundef nonnull align 4 dereferenceable(16) ptr @_ZN4llvm23SmallVectorTemplateBaseIN12lldb_private18AugmentedRangeDataIjjiEELb1EE18growAndEmplaceBackIJRKNS1_9RangeDataIjjiEEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(17) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %21) ; 0 uses
  br label %_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE6AppendERKNS_9RangeDataIjjiEE.exit

bb.aw:                                            ; preds = %bb.au
  %i.hk = zext i32 %i.hh to i64
  %i.hl = load ptr, ptr %i.cg, align 8, !tbaa !28
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.hk ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hm, ptr noundef nonnull align 4 dereferenceable(12) %21, i64 12, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 12
  store i32 0, ptr %i.hn, align 4, !tbaa !1326
  %i.ho = load i32, ptr %i.ci, align 8, !tbaa !30
  %i.hp = add i32 %i.ho, 1
  store i32 %i.hp, ptr %i.ci, align 8, !tbaa !30
  br label %_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE6AppendERKNS_9RangeDataIjjiEE.exit

_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE6AppendERKNS_9RangeDataIjjiEE.exit: ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %spec.select522 = select i1 %.sroa.5.1, i32 %.sroa.0451.1, i32 %.1498
  %.sroa.0428.4..sroa.0428.4..sroa.0428.4..sroa.0428.4. = load i8, ptr %.sroa.0428.4..sroa_idx680, align 4, !tbaa !1303
  %i.hq = trunc nuw i8 %.sroa.0428.4..sroa.0428.4..sroa.0428.4..sroa.0428.4. to i1
  br i1 %i.hq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE6AppendERKNS_9RangeDataIjjiEE.exit
  %.sroa.0428.0..sroa.0428.0..sroa.0428.0..sroa.0428.0. = load i64, ptr %.sroa.0428, align 8 ; 2 uses
  store i64 %.sroa.0428.0..sroa.0428.0..sroa.0428.0..sroa.0428.0., ptr %.sroa.0434, align 8
  store i8 0, ptr %.sroa.0428.4..sroa_idx681, align 4, !tbaa !1303
  %i.hr = lshr i64 %.sroa.0428.0..sroa.0428.0..sroa.0428.0..sroa.0428.0., 32
  %i.hs = trunc i64 %i.hr to i8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE6AppendERKNS_9RangeDataIjjiEE.exit
  %.sroa.0434.4..sroa.0434.4..sroa.0434.4.439578 = phi i8 [ %i.hs, %bb.ax ], [ 1, %_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE6AppendERKNS_9RangeDataIjjiEE.exit ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.400 = load i64, ptr %.sroa.0, align 8
  %.sroa.0314.0.insert.insert = select i1 %.1, i64 0, i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.400 ; 2 uses
  store i64 %.sroa.0314.0.insert.insert, ptr %.sroa.0455, align 8
  %.sroa.0451.0.insert.ext = zext i32 %.sroa.0451.1 to i64
  store i64 %.sroa.0451.0.insert.ext, ptr %.sroa.0, align 8
  %i.ht = lshr i64 %.sroa.0314.0.insert.insert, 32
  %i.hu = trunc i64 %i.ht to i8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit"
  %.sroa.0434.4..sroa.0434.4..sroa.0434.4.439 = phi i8 [ %.sroa.0434.4..sroa.0434.4..sroa.0434.4.439578, %bb.ay ], [ %.sroa.0434.4..sroa.0434.4..sroa.0434.4..sroa.0434.4., %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit" ] ; 2 uses
  %.sroa.0455.4..sroa.0455.4..sroa.0455.4.466 = phi i8 [ %i.hu, %bb.ay ], [ %.sroa.0455.4..sroa.0455.4..sroa.0455.4..sroa.0455.4., %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit" ] ; 2 uses
  %.sroa.0.4..sroa.0.4..sroa.0.4.403575 = phi i8 [ 0, %bb.ay ], [ %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4., %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit" ]
  %.3 = phi i32 [ %spec.select522, %bb.ay ], [ %.1498, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit" ] ; 2 uses
  %.sroa.5.2 = phi i1 [ false, %bb.ay ], [ %.sroa.5.1, %"_ZZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressEENK3$_0clEj.exit" ]
  %i.hv = trunc nuw i8 %.sroa.0455.4..sroa.0455.4..sroa.0455.4.466 to i1
  %i.hw = trunc nuw i8 %.sroa.0434.4..sroa.0434.4..sroa.0434.4.439 to i1
  %or.cond523 = select i1 %i.hv, i1 %i.hw, i1 false
  br i1 %or.cond523, label %bb.ba, label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE9push_backERKS2_.exit

bb.ba:                                            ; preds = %bb.az
  %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.457 = load i32, ptr %.sroa.0455, align 8, !tbaa !23
  %i.hx = zext i32 %.sroa.0455.0..sroa.0455.0..sroa.0455.0..sroa.0455.0.457 to i64
  %i.hy = add i64 %i.ak, %i.hx                    ; 4 uses
  %.sroa.0434.0..sroa.0434.0..sroa.0434.0..sroa.0434.0.435 = load i32, ptr %.sroa.0434, align 8, !tbaa !23
  %i.hz = add i32 %.sroa.0434.0..sroa.0434.0..sroa.0434.0..sroa.0434.0.435, %.0.copyload.i.i.i87
  %i.ia = trunc i32 %.3 to i16                    ; 4 uses
  %i.ib = and i32 %i.hz, 134217727                ; 2 uses
  br i1 %.1, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.ic = or disjoint i32 %i.ib, -2147483648      ; 2 uses
  %i.id = load ptr, ptr %i.fc, align 8, !tbaa !1328 ; 8 uses
  %i.ie = load ptr, ptr %i.fd, align 8, !tbaa !1207
  %.not.i = icmp eq ptr %i.id, %i.ie
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.hy, ptr %i.id, align 8, !tbaa !186
  %.sroa.5305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  store i32 %i.ic, ptr %.sroa.5305.0..sroa_idx, align 8, !tbaa !22
  %.sroa.6308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  store i16 0, ptr %.sroa.6308.0..sroa_idx, align 4, !tbaa !658
  %.sroa.7311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.id, i64 14
  store i16 %i.ia, ptr %.sroa.7311.0..sroa_idx, align 2, !tbaa !658
  %i.if = load ptr, ptr %i.fc, align 8, !tbaa !1328
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store ptr %i.ig, ptr %i.fc, align 8, !tbaa !1328
  br label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE9push_backERKS2_.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ih = load ptr, ptr %i.ck, align 8, !tbaa !1204 ; 5 uses
  %i.ii = ptrtoint ptr %i.id to i64
  %i.ij = ptrtoint ptr %i.ih to i64               ; 2 uses
  %i.ik = sub i64 %i.ii, %i.ij                    ; 3 uses
  %i.il = icmp eq i64 %i.ik, 9223372036854775792
  br i1 %i.il, label %bb.be, label %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.be:                                            ; preds = %bb.bd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #26
  unreachable

_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bd
  %i.im = ashr exact i64 %i.ik, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.im, i64 1)
  %i.in = add nsw i64 %.sroa.speculated.i.i.i, %i.im ; 2 uses
  %i.io = icmp ult i64 %i.in, %i.im
  %i.ip = call i64 @llvm.umin.i64(i64 %i.in, i64 576460752303423487)
  %i.iq = select i1 %i.io, i64 576460752303423487, i64 %i.ip ; 3 uses
  %.not.i.i.i125 = icmp ne i64 %i.iq, 0
  call void @llvm.assume(i1 %.not.i.i.i125)
  %i.ir = shl nuw nsw i64 %i.iq, 4
  %i.is = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ir) #24 ; 5 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ik ; 4 uses
  store i64 %i.hy, ptr %i.it, align 8, !tbaa !186
  %.sroa.5305.0..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  store i32 %i.ic, ptr %.sroa.5305.0..sroa_idx306, align 8, !tbaa !22
  %.sroa.6308.0..sroa_idx309 = getelementptr inbounds nuw i8, ptr %i.it, i64 12
  store i16 0, ptr %.sroa.6308.0..sroa_idx309, align 4, !tbaa !658
  %.sroa.7311.0..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.it, i64 14
  store i16 %i.ia, ptr %.sroa.7311.0..sroa_idx312, align 2, !tbaa !658
  %.not10.i.i.i.i.i = icmp eq ptr %i.ih, %i.id
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i ], [ %i.is, %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i ], [ %i.ih, %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !1329, !alias.scope !1330
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.iu, %i.id
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1334

_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.is, %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.iv, %.lr.ph.i.i.i.i.i ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  %i.ix = load ptr, ptr %i.fd, align 8, !tbaa !1207
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = sub i64 %i.iy, %i.ij
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.iz) #25
  br label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.is, ptr %i.ck, align 8, !tbaa !1204
  store ptr %i.iw, ptr %i.fc, align 8, !tbaa !1328
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.is, i64 %i.iq
  store ptr %i.ja, ptr %i.fd, align 8, !tbaa !1207
  br label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE9push_backERKS2_.exit

bb.bg:                                            ; preds = %bb.ba
  %i.jb = zext nneg i8 %.062539 to i32
  %i.jc = shl nuw nsw i32 %i.jb, 27
  %i.jd = or disjoint i32 %i.ib, %i.jc
  %i.je = zext nneg i8 %.060540 to i32
  %i.jf = shl nuw nsw i32 %i.je, 29
  %i.jg = add nuw nsw i32 %i.jd, %i.jf            ; 2 uses
  %i.jh = load ptr, ptr %i.fc, align 8, !tbaa !1328 ; 8 uses
  %i.ji = load ptr, ptr %i.fd, align 8, !tbaa !1207
  %.not.i126 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i126, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i64 %i.hy, ptr %i.jh, align 8, !tbaa !186
  %.sroa.5296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store i32 %i.jg, ptr %.sroa.5296.0..sroa_idx, align 8, !tbaa !22
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 12
  store i16 0, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !658
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jh, i64 14
  store i16 %i.ia, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !658
  %i.jj = load ptr, ptr %i.fc, align 8, !tbaa !1328
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store ptr %i.jk, ptr %i.fc, align 8, !tbaa !1328
  br label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE9push_backERKS2_.exit

bb.bi:                                            ; preds = %bb.bg
  %i.jl = load ptr, ptr %i.ck, align 8, !tbaa !1204 ; 5 uses
  %i.jm = ptrtoint ptr %i.jh to i64
  %i.jn = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.jo = sub i64 %i.jm, %i.jn                    ; 3 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775792
  br i1 %i.jp, label %bb.bj, label %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i127

bb.bj:                                            ; preds = %bb.bi
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #26
  unreachable

_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i127: ; preds = %bb.bi
  %i.jq = ashr exact i64 %i.jo, 4                 ; 3 uses
  %.sroa.speculated.i.i.i128 = call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i.i128, %i.jq ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jq
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jr, i64 576460752303423487)
  %i.ju = select i1 %i.js, i64 576460752303423487, i64 %i.jt ; 3 uses
  %.not.i.i.i129 = icmp ne i64 %i.ju, 0
  call void @llvm.assume(i1 %.not.i.i.i129)
  %i.jv = shl nuw nsw i64 %i.ju, 4
  %i.jw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #24 ; 5 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jo ; 4 uses
  store i64 %i.hy, ptr %i.jx, align 8, !tbaa !186
  %.sroa.5296.0..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i32 %i.jg, ptr %.sroa.5296.0..sroa_idx297, align 8, !tbaa !22
  %.sroa.6.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i16 0, ptr %.sroa.6.0..sroa_idx299, align 4, !tbaa !658
  %.sroa.7.0..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.jx, i64 14
  store i16 %i.ia, ptr %.sroa.7.0..sroa_idx301, align 2, !tbaa !658
  %.not10.i.i.i.i.i130 = icmp eq ptr %i.jl, %i.jh
  br i1 %.not10.i.i.i.i.i130, label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i135, label %.lr.ph.i.i.i.i.i131

.lr.ph.i.i.i.i.i131:                              ; preds = %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i127, %.lr.ph.i.i.i.i.i131
  %.012.i.i.i.i.i132 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i131 ], [ %i.jw, %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i127 ] ; 2 uses
  %.0911.i.i.i.i.i133 = phi ptr [ %i.jy, %.lr.ph.i.i.i.i.i131 ], [ %i.jl, %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i127 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i132, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i133, i64 16, i1 false), !tbaa.struct !1329, !alias.scope !1335
  %i.jy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i133, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i132, i64 16 ; 2 uses
  %.not.i.i.i.i.i134 = icmp eq ptr %i.jy, %i.jh
  br i1 %.not.i.i.i.i.i134, label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i135, label %.lr.ph.i.i.i.i.i131, !llvm.loop !1334

_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i135: ; preds = %.lr.ph.i.i.i.i.i131, %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i127
  %.0.lcssa.i.i.i.i.i136 = phi ptr [ %i.jw, %_ZNKSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i127 ], [ %i.jz, %.lr.ph.i.i.i.i.i131 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i136, i64 16
  %.not.i23.i.i137 = icmp eq ptr %i.jl, null
  br i1 %.not.i23.i.i137, label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i138, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i135
  %i.kb = load ptr, ptr %i.fd, align 8, !tbaa !1207
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = sub i64 %i.kc, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jl, i64 noundef %i.kd) #25
  br label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i138

_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i138: ; preds = %bb.bk, %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i135
  store ptr %i.jw, ptr %i.ck, align 8, !tbaa !1204
  store ptr %i.ka, ptr %i.fc, align 8, !tbaa !1328
  %i.ke = getelementptr inbounds nuw [16 x i8], ptr %i.jw, i64 %i.ju
  store ptr %i.ke, ptr %i.fd, align 8, !tbaa !1207
  br label %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i138, %bb.bh, %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.bc, %bb.az
  %.163 = phi i8 [ %.062539, %bb.az ], [ %.062539, %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ 0, %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i138 ], [ %.062539, %bb.bc ], [ 0, %bb.bh ]
  %.161 = phi i8 [ %.060540, %bb.az ], [ %.060540, %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ 0, %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i138 ], [ %.060540, %bb.bc ], [ 0, %bb.bh ]
  %i.kf = call noundef zeroext i1 @_ZN4llvm8codeview24BinaryAnnotationIterator22ParseCurrentAnnotationEv(ptr noundef nonnull align 8 dereferenceable(88) %20)
  br i1 %i.kf, label %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit

_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit: ; preds = %_ZNSt6vectorIN12lldb_private9LineTable5EntryESaIS2_EE9push_backERKS2_.exit
  %spec.select = select i1 %.1, i8 1, i8 %.163
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.et, align 8, !tbaa !1310
  %.sroa.22.0.copyload.i.i.pre = load i64, ptr %.sroa.5325.56..sroa_idx, align 8, !tbaa !186
  %i.kg = icmp eq i64 %.sroa.22.0.copyload.i.i.pre, 0
  br i1 %i.kg, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit, label %bb.ad

bb.bl:                                            ; preds = %_ZN12lldb_private15RangeDataVectorIjjiLj0ESt4lessIiEE4SortEv.exit
  %i.kh = load ptr, ptr %i.cg, align 8
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !1321 ; 6 uses
  %i.kj = load i32, ptr %i.ca, align 4, !tbaa !1278
  %i.kk = call { ptr, i64 } @_ZNK4llvm3pdb20ModuleDebugStreamRef18readSymbolAtOffsetEj(ptr noundef nonnull align 8 dereferenceable(400) %i.aq, i32 noundef %i.kj) #23 ; 2 uses
  %i.kl = extractvalue { ptr, i64 } %i.kk, 1
  %i.km = icmp ult i64 %i.kl, 4
  br i1 %i.km, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit142.thread, label %_ZNK4llvm8codeview8CVRecordINS0_10SymbolKindEE4kindEv.exit142

end_hunk_1
begin_hunk_2_@_ZN12lldb_private4npdb19SymbolFileNativePDB15ParseInlineSiteENS0_17PdbCompilandSymIdENS_7AddressE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236, %_ZN4llvm5ErrorD2Ev.exit224
  %i.wb = load ptr, ptr %41, align 8, !tbaa !172  ; 3 uses
  %i.wc = icmp eq ptr %i.wb, null
  br i1 %i.wc, label %_ZN4llvm5ErrorD2Ev.exit237, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wd = load ptr, ptr %i.wb, align 8, !tbaa !19
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 8
  %i.wf = load ptr, ptr %i.we, align 8
  call void %i.wf(ptr noundef nonnull align 8 dereferenceable(8) %i.wb) #23, !inline_history !271
  br label %_ZN4llvm5ErrorD2Ev.exit237

_ZN4llvm5ErrorD2Ev.exit237:                       ; preds = %bb.dc, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  br label %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit214.thread

_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit214.thread: ; preds = %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit, %bb.cp, %_ZN4llvm5ErrorD2Ev.exit211, %_ZN4llvm5ErrorD2Ev.exit237, %_ZN4llvm5ErrorD2Ev.exit192
  %i.wg = load ptr, ptr %23, align 8, !tbaa !168
  %i.wh = call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #24, !noalias !1359 ; 5 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 8
  store i32 1, ptr %i.wi, align 8, !tbaa !16, !noalias !1364
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 12
  store i32 1, ptr %i.wj, align 4, !tbaa !18, !noalias !1364
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN12lldb_private18InlineFunctionInfoESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.wh, align 8, !tbaa !19, !noalias !1364
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wh, i64 16 ; 2 uses
  call void @_ZN12lldb_private18InlineFunctionInfoC1EPKcN4llvm9StringRefEPKNS_11DeclarationES7_(ptr noundef nonnull align 8 dereferenceable(104) %i.wk, ptr noundef %i.wg, ptr null, i64 0, ptr noundef nonnull %i.ej, ptr noundef %.sroa.0290.1) #23, !noalias !1364
  store ptr %i.wk, ptr %i.cf, align 8, !tbaa !1365
  %i.wl = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 2 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !10 ; 8 uses
  store ptr %i.wh, ptr %i.wl, align 8, !tbaa !10
  %.not.i.i.i.i239 = icmp eq ptr %i.wm, null
  br i1 %.not.i.i.i.i239, label %_ZNSt12__shared_ptrIN12lldb_private18InlineFunctionInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.de

bb.de:                                            ; preds = %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit214.thread
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8 ; 4 uses
  %i.wo = load atomic i64, ptr %i.wn acquire, align 8 ; 2 uses
  %i.wp = icmp eq i64 %i.wo, 4294967297
  %i.wq = trunc i64 %i.wo to i32                  ; 2 uses
  br i1 %i.wp, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.wn, align 8, !tbaa !16
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  store i32 0, ptr %i.wr, align 4, !tbaa !18
  %i.ws = load ptr, ptr %i.wm, align 8, !tbaa !19
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 16
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #23, !inline_history !1366
  %i.wv = load ptr, ptr %i.wm, align 8, !tbaa !19
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load ptr, ptr %i.ww, align 8
  call void %i.wx(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #23, !inline_history !1366
  br label %_ZNSt12__shared_ptrIN12lldb_private18InlineFunctionInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.dg:                                            ; preds = %bb.de
  %i.wy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i240 = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i.i.i240, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.wz = add nsw i32 %i.wq, -1
  store i32 %i.wz, ptr %i.wn, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.xa = atomicrmw volatile add ptr %i.wn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i.i.i = phi i32 [ %i.wq, %bb.dh ], [ %i.xa, %bb.di ]
  %i.xb = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.xb, label %bb.dj, label %_ZNSt12__shared_ptrIN12lldb_private18InlineFunctionInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.wm) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private18InlineFunctionInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private18InlineFunctionInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.dj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.df, %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit214.thread
  %i.xc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPSC_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i245 = extractvalue { ptr, i8 } %i.xc, 0 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i245, i64 8
  store ptr %i.ce, ptr %i.xd, align 8, !tbaa !412
  %i.xe = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i245, i64 16 ; 3 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !10 ; 2 uses
  %.not.i.i.i246 = icmp eq ptr %i.cb, %i.xf
  br i1 %.not.i.i.i246, label %_ZNSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEEaSERKS4_.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt12__shared_ptrIN12lldb_private18InlineFunctionInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.xg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i247 = icmp eq i8 %i.xg, 0
  br i1 %.not.i.i.i.i247, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.xh = load i32, ptr %i.cc, align 8, !tbaa !23
  %i.xi = add nsw i32 %i.xh, 1
  store i32 %i.xi, ptr %i.cc, align 8, !tbaa !23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.dm:                                            ; preds = %bb.dk
  %i.xj = atomicrmw volatile add ptr %i.cc, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.xe, align 8, !tbaa !10
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.dm, %bb.dl
  %i.xk = phi ptr [ %.pr.pre.i.i.i, %bb.dm ], [ %i.xf, %bb.dl ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.xk, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8 ; 4 uses
  %i.xm = load atomic i64, ptr %i.xl acquire, align 8 ; 2 uses
  %i.xn = icmp eq i64 %i.xm, 4294967297
  %i.xo = trunc i64 %i.xm to i32                  ; 2 uses
  br i1 %i.xn, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 0, ptr %i.xl, align 8, !tbaa !16
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xk, i64 12
  store i32 0, ptr %i.xp, align 4, !tbaa !18
  %i.xq = load ptr, ptr %i.xk, align 8, !tbaa !19
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 16
  %i.xs = load ptr, ptr %i.xr, align 8
  call void %i.xs(ptr noundef nonnull align 8 dereferenceable(16) %i.xk) #23, !inline_history !1367
  %i.xt = load ptr, ptr %i.xk, align 8, !tbaa !19
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 24
  %i.xv = load ptr, ptr %i.xu, align 8
  call void %i.xv(ptr noundef nonnull align 8 dereferenceable(16) %i.xk) #23, !inline_history !1367
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.dp:                                            ; preds = %bb.dn
  %i.xw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i9.i.i.i = icmp eq i8 %i.xw, 0
  br i1 %.not.i9.i.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xx = add nsw i32 %i.xo, -1
  store i32 %i.xx, ptr %i.xl, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248

bb.dr:                                            ; preds = %bb.dp
  %i.xy = atomicrmw volatile add ptr %i.xl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248: ; preds = %bb.dr, %bb.dq
  %.0.i.i.i.i.i249 = phi i32 [ %i.xo, %bb.dq ], [ %i.xy, %bb.dr ]
  %i.xz = icmp eq i32 %.0.i.i.i.i.i249, 1
  br i1 %i.xz, label %bb.ds, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !24

bb.ds:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xk) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i248, %bb.do, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.cb, ptr %i.xe, align 8, !tbaa !10
  br label %_ZNSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEEaSERKS4_.exit

_ZNSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEEaSERKS4_.exit: ; preds = %_ZNSt12__shared_ptrIN12lldb_private18InlineFunctionInfoELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ya = load i8, ptr %i.pf, align 8
  %i.yb = trunc i8 %i.ya to i1
  br i1 %i.yb, label %bb.dt, label %_ZN4llvm8ExpectedINS_8codeview8CVRecordINS1_12TypeLeafKindEEEED2Ev.exit

bb.dt:                                            ; preds = %_ZNSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEEaSERKS4_.exit
  %i.yc = load ptr, ptr %24, align 8, !tbaa !205  ; 3 uses
  %.not.i.i251 = icmp eq ptr %i.yc, null
  br i1 %.not.i.i251, label %_ZN4llvm8ExpectedINS_8codeview8CVRecordINS1_12TypeLeafKindEEEED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i: ; preds = %bb.dt
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !19
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8
  call void %i.yf(ptr noundef nonnull align 8 dereferenceable(8) %i.yc) #23, !inline_history !1368
  br label %_ZN4llvm8ExpectedINS_8codeview8CVRecordINS1_12TypeLeafKindEEEED2Ev.exit

_ZN4llvm8ExpectedINS_8codeview8CVRecordINS1_12TypeLeafKindEEEED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEEaSERKS4_.exit, %bb.dt, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  %i.yg = load ptr, ptr %23, align 8, !tbaa !168  ; 2 uses
  %i.yh = icmp eq ptr %i.yg, %i.oy
  br i1 %i.yh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %_ZN4llvm8ExpectedINS_8codeview8CVRecordINS1_12TypeLeafKindEEEED2Ev.exit
  %i.yi = load i64, ptr %i.oy, align 8, !tbaa !22
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yg, i64 noundef %i.yj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %_ZN4llvm8ExpectedINS_8codeview8CVRecordINS1_12TypeLeafKindEEEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %.not.i255 = icmp eq ptr %.sroa.0290.1, null
  br i1 %.not.i255, label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit260, label %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i256

_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0290.1, i64 noundef 32) #25
  br label %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit260

_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNKSt14default_deleteIN12lldb_private11DeclarationEEclEPS1_.exit.i256
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0428)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0434)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0455)
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef 32) #25
  br label %_ZN4llvm5ErrorD2Ev.exit86

_ZN4llvm5ErrorD2Ev.exit86:                        ; preds = %bb.x, %bb.w, %_ZN4llvm5ErrorD2Ev.exit85, %_ZNSt10unique_ptrIN12lldb_private11DeclarationESt14default_deleteIS1_EED2Ev.exit260
  %i.yk = load i8, ptr %i.dg, align 8
  %i.yl = trunc i8 %i.yk to i1
  br i1 %i.yl, label %bb.du, label %_ZN4llvm8ExpectedIjED2Ev.exit

bb.du:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit86
  %i.ym = load ptr, ptr %18, align 8, !tbaa !205  ; 3 uses
  %.not.i.i262 = icmp eq ptr %i.ym, null
  br i1 %.not.i.i262, label %_ZN4llvm8ExpectedIjED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i263

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i263: ; preds = %bb.du
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !19
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8
  call void %i.yp(ptr noundef nonnull align 8 dereferenceable(8) %i.ym) #23, !inline_history !1179
  br label %_ZN4llvm8ExpectedIjED2Ev.exit

_ZN4llvm8ExpectedIjED2Ev.exit:                    ; preds = %_ZN4llvm5ErrorD2Ev.exit86, %bb.du, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i263
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %_ZN4llvm8ExpectedIjED2Ev.exit
  %i.yq = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.yr = load atomic i64, ptr %i.yq acquire, align 8 ; 2 uses
  %i.ys = icmp eq i64 %i.yr, 4294967297
  %i.yt = trunc i64 %i.yr to i32                  ; 2 uses
  br i1 %i.ys, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %i.yq, align 8, !tbaa !16
  %i.yu = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.yu, align 4, !tbaa !18
  %i.yv = load ptr, ptr %i.cx, align 8, !tbaa !19
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.yx = load ptr, ptr %i.yw, align 8
  call void %i.yx(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23, !inline_history !1369
  %i.yy = load ptr, ptr %i.cx, align 8, !tbaa !19
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 24
  %i.za = load ptr, ptr %i.yz, align 8
  call void %i.za(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23, !inline_history !1369
  br label %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread

bb.dx:                                            ; preds = %bb.dv
  %i.zb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq i8 %i.zb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.zc = add nsw i32 %i.yt, -1
  store i32 %i.zc, ptr %i.yq, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.zd = atomicrmw volatile add ptr %i.yq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.dz, %bb.dy
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.yt, %bb.dy ], [ %i.zd, %bb.dz ]
  %i.ze = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ze, label %bb.ea, label %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread, !prof !24

bb.ea:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #23
  br label %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread

_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread: ; preds = %bb.ea, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.dw, %_ZN4llvm8ExpectedIjED2Ev.exit, %_ZNSt8_Rb_treeIN4llvm8codeview9TypeIndexESt4pairIKS2_NS1_17InlineeSourceLineEESt10_Select1stIS6_ESt4lessIS2_ESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS4_.exit.i.i, %bb.n, %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit
  %i.zf = load atomic i64, ptr %i.cc acquire, align 8 ; 2 uses
  %i.zg = icmp eq i64 %i.zf, 4294967297
  %i.zh = trunc i64 %i.zf to i32                  ; 2 uses
  br i1 %i.zg, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread
  store i32 0, ptr %i.cc, align 8, !tbaa !16
  store i32 0, ptr %i.cd, align 4, !tbaa !18
  %i.zi = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 16
  %i.zk = load ptr, ptr %i.zj, align 8
  call void %i.zk(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #23, !inline_history !423
  %i.zl = load ptr, ptr %i.cb, align 8, !tbaa !19
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 24
  %i.zn = load ptr, ptr %i.zm, align 8
  call void %i.zn(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #23, !inline_history !423
  br label %_ZNSt12__shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit269

bb.ec:                                            ; preds = %_ZNSt3mapIN4llvm8codeview9TypeIndexENS1_17InlineeSourceLineESt4lessIS2_ESaISt4pairIKS2_S3_EEE4findERS7_.exit.thread
  %i.zo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i266 = icmp eq i8 %i.zo, 0
  br i1 %.not.i.i.i266, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zp = add nsw i32 %i.zh, -1
  store i32 %i.zp, ptr %i.cc, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267

bb.ee:                                            ; preds = %bb.ec
  %i.zq = atomicrmw volatile add ptr %i.cc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267: ; preds = %bb.ee, %bb.ed
  %.0.i.i.i.i268 = phi i32 [ %i.zh, %bb.ed ], [ %i.zq, %bb.ee ]
  %i.zr = icmp eq i32 %.0.i.i.i.i268, 1
  br i1 %i.zr, label %bb.ef, label %_ZNSt12__shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit269, !prof !24

bb.ef:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit269

_ZNSt12__shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit269: ; preds = %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i267, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.eg

bb.eg:                                            ; preds = %_ZN4llvm5ErrorD2Ev.exit75, %_ZNSt12__shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit269
  %i.zs = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !1305 ; 3 uses
  %.not.i.i.i.i270 = icmp eq ptr %i.zt, null
  br i1 %.not.i.i.i.i270, label %_ZN4llvm8codeview13InlineSiteSymD2Ev.exit, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.zu = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !1370
  %i.zw = ptrtoint ptr %i.zv to i64
  %i.zx = ptrtoint ptr %i.zt to i64
  %i.zy = sub i64 %i.zw, %i.zx
  call void @_ZdlPvm(ptr noundef nonnull %i.zt, i64 noundef %i.zy) #25
  br label %_ZN4llvm8codeview13InlineSiteSymD2Ev.exit

_ZN4llvm8codeview13InlineSiteSymD2Ev.exit:        ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.zz = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !10 ; 8 uses
  %.not.i.i271 = icmp eq ptr %i.aaa, null
  br i1 %.not.i.i271, label %_ZNSt12__shared_ptrIN12lldb_private11CompileUnitELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ei

bb.ei:                                            ; preds = %_ZN4llvm8codeview13InlineSiteSymD2Ev.exit
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8 ; 4 uses
  %i.aac = load atomic i64, ptr %i.aab acquire, align 8 ; 2 uses
  %i.aad = icmp eq i64 %i.aac, 4294967297
  %i.aae = trunc i64 %i.aac to i32                ; 2 uses
  br i1 %i.aad, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i32 0, ptr %i.aab, align 8, !tbaa !16
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aaa, i64 12
  store i32 0, ptr %i.aaf, align 4, !tbaa !18
  %i.aag = load ptr, ptr %i.aaa, align 8, !tbaa !19
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 16
  %i.aai = load ptr, ptr %i.aah, align 8
  call void %i.aai(ptr noundef nonnull align 8 dereferenceable(16) %i.aaa) #23, !inline_history !425
  %i.aaj = load ptr, ptr %i.aaa, align 8, !tbaa !19
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 24
  %i.aal = load ptr, ptr %i.aak, align 8
  call void %i.aal(ptr noundef nonnull align 8 dereferenceable(16) %i.aaa) #23, !inline_history !425
  br label %_ZNSt12__shared_ptrIN12lldb_private11CompileUnitELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ek:                                            ; preds = %bb.ei
  %i.aam = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i272 = icmp eq i8 %i.aam, 0
  br i1 %.not.i.i.i272, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aan = add nsw i32 %i.aae, -1
  store i32 %i.aan, ptr %i.aab, align 8, !tbaa !23
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i273

bb.em:                                            ; preds = %bb.ek
  %i.aao = atomicrmw volatile add ptr %i.aab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i273

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i273: ; preds = %bb.em, %bb.el
  %.0.i.i.i.i274 = phi i32 [ %i.aae, %bb.el ], [ %i.aao, %bb.em ]
  %i.aap = icmp eq i32 %.0.i.i.i.i274, 1
  br i1 %i.aap, label %bb.en, label %_ZNSt12__shared_ptrIN12lldb_private11CompileUnitELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !24

bb.en:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i273
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aaa) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private11CompileUnitELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private11CompileUnitELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4llvm8codeview13InlineSiteSymD2Ev.exit, %bb.ej, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i273, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8containsERKm.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapImSt10shared_ptrIN12lldb_private4npdb19SymbolFileNativePDB10InlineSiteEENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E8containsERKm.exit: ; preds = %.lr.ph.i.i, %_ZNSt12__shared_ptrIN12lldb_private11CompileUnitELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8codeview18SymbolDeserializer13deserializeAsINS0_13InlineSiteSymEEENS_5ErrorENS0_8CVRecordINS0_10SymbolKindEEERT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(44) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::codeview::CVRecord", align 8 ; 5 uses
  %5 = alloca %"class.llvm::codeview::SymbolDeserializer", align 8 ; 10 uses
  store ptr %1, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN4llvm8codeview18SymbolDeserializerE, i64 16), ptr %5, align 8, !tbaa !19
end_hunk_2
