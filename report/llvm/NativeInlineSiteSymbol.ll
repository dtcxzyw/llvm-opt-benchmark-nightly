Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NativeInlineSiteSymbol?download=true
inline.NumInlined: 1339
inline.NumDeleted: 698
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.53 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.53 = type { i64, [8 x i8] }
%"class.llvm::Error" = type { ptr }
%class.anon.269 = type { i8 }
%"class.llvm::Expected" = type <{ %union.anon.54, i8, [7 x i8] }>
%union.anon.54 = type { %"class.std::reference_wrapper" }
%"class.std::reference_wrapper" = type { ptr }
%"class.llvm::codeview::CVRecord" = type { %"class.llvm::ArrayRef.188" }
%"class.llvm::ArrayRef.188" = type { ptr, i64 }
%"class.llvm::codeview::MemberFuncIdRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", %"class.llvm::StringRef" }
%"class.llvm::codeview::TypeRecord" = type { i16 }
%"class.llvm::codeview::TypeIndex" = type { %"struct.llvm::support::detail::packed_endian_specific_integral" }
%"struct.llvm::support::detail::packed_endian_specific_integral" = type { %struct.anon }
%struct.anon = type { [4 x i8] }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::codeview::FuncIdRecord" = type { %"class.llvm::codeview::TypeRecord", %"class.llvm::codeview::TypeIndex", %"class.llvm::codeview::TypeIndex", %"class.llvm::StringRef" }
%"struct.llvm::codeview::TypeDeserializer::MappingInfo" = type { %"class.llvm::BinaryByteStream", %"class.llvm::BinaryStreamReader", %"class.llvm::codeview::TypeRecordMapping" }
%"class.llvm::BinaryByteStream" = type { %"class.llvm::BinaryStream", i32, %"class.llvm::ArrayRef.188" }
%"class.llvm::BinaryStream" = type { ptr }
%"class.llvm::BinaryStreamReader" = type { ptr, %"class.llvm::BinaryStreamRef", i64 }
%"class.llvm::BinaryStreamRef" = type { %"class.llvm::BinaryStreamRefBase" }
%"class.llvm::BinaryStreamRefBase" = type { %"class.std::shared_ptr", ptr, i64, %"class.std::optional" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [7 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<unsigned long>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned long>::_Storage" = type { i64 }
%"class.llvm::codeview::TypeRecordMapping" = type { %"class.llvm::codeview::TypeVisitorCallbacks", %"class.std::optional.297", %"class.std::optional.297", %"class.llvm::codeview::CodeViewRecordIO" }
%"class.llvm::codeview::TypeVisitorCallbacks" = type { ptr }
%"class.std::optional.297" = type { %"struct.std::_Optional_base.298" }
%"struct.std::_Optional_base.298" = type { %"struct.std::_Optional_payload.300" }
%"struct.std::_Optional_payload.300" = type { %"struct.std::_Optional_payload_base.base.302", i8 }
%"struct.std::_Optional_payload_base.base.302" = type <{ %"union.std::_Optional_payload_base<llvm::codeview::TypeLeafKind>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::codeview::TypeLeafKind>::_Storage" = type { i16 }
%"class.llvm::codeview::CodeViewRecordIO" = type { %"class.llvm::SmallVector.305", ptr, ptr, ptr, i64 }
%"class.llvm::SmallVector.305" = type { %"class.llvm::SmallVectorImpl.306", %"struct.llvm::SmallVectorStorage.309" }
%"class.llvm::SmallVectorImpl.306" = type { %"class.llvm::SmallVectorTemplateBase.307" }
%"class.llvm::SmallVectorTemplateBase.307" = type { %"class.llvm::SmallVectorTemplateCommon.308" }
%"class.llvm::SmallVectorTemplateCommon.308" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.309" = type { [24 x i8] }
%"struct.llvm::codeview::BinaryAnnotationIterator" = type { %"class.std::optional.208", %"class.llvm::ArrayRef.188", %"class.llvm::ArrayRef.188" }
%"class.std::optional.208" = type { %"struct.std::_Optional_base.209" }
%"struct.std::_Optional_base.209" = type { %"struct.std::_Optional_payload.211" }
%"struct.std::_Optional_payload.211" = type { %"struct.std::_Optional_payload_base.base.213", [7 x i8] }
%"struct.std::_Optional_payload_base.base.213" = type <{ %"union.std::_Optional_payload_base<llvm::codeview::DecodedAnnotation>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::codeview::DecodedAnnotation>::_Storage" = type { %"struct.llvm::codeview::DecodedAnnotation" }
%"struct.llvm::codeview::DecodedAnnotation" = type { %"class.llvm::StringRef", %"class.llvm::ArrayRef.188", i32, i32, i32, i32 }
%"class.std::unique_ptr.216" = type { %"struct.std::__uniq_ptr_data.217" }
%"struct.std::__uniq_ptr_data.217" = type { %"class.std::__uniq_ptr_impl.218" }
%"class.std::__uniq_ptr_impl.218" = type { %"class.std::tuple.219" }
%"class.std::tuple.219" = type { %"struct.std::_Tuple_impl.220" }
%"struct.std::_Tuple_impl.220" = type { %"struct.std::_Head_base.223" }
%"struct.std::_Head_base.223" = type { ptr }
%"class.std::vector.255" = type { %"struct.std::_Vector_base.256" }
%"struct.std::_Vector_base.256" = type { %"struct.std::_Vector_base<llvm::pdb::NativeLineNumber, std::allocator<llvm::pdb::NativeLineNumber>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::pdb::NativeLineNumber, std::allocator<llvm::pdb::NativeLineNumber>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::pdb::NativeLineNumber, std::allocator<llvm::pdb::NativeLineNumber>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::pdb::NativeLineNumber, std::allocator<llvm::pdb::NativeLineNumber>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::VarStreamArray.230" = type { %"class.llvm::BinaryStreamRef", [4 x i8], i32 }
%"class.llvm::VarStreamArrayIterator.289" = type { %"class.llvm::codeview::DebugSubsectionRecord", %"class.llvm::BinaryStreamRef", [8 x i8], ptr, i32, i32, i8, ptr }
%"class.llvm::codeview::DebugSubsectionRecord" = type { i32, %"class.llvm::BinaryStreamRef" }
%"class.llvm::codeview::DebugInlineeLinesSubsectionRef" = type { %"class.llvm::codeview::DebugSubsectionRef.base", i32, %"class.llvm::VarStreamArray.291" }
%"class.llvm::codeview::DebugSubsectionRef.base" = type <{ ptr, i32 }>
%"class.llvm::VarStreamArray.291" = type { %"class.llvm::BinaryStreamRef", %"struct.llvm::VarStreamArrayExtractor", i32 }
%"struct.llvm::VarStreamArrayExtractor" = type { i8 }
%"class.llvm::VarStreamArrayIterator.292" = type { %"struct.llvm::codeview::InlineeSourceLine", %"class.llvm::BinaryStreamRef", %"struct.llvm::VarStreamArrayExtractor", ptr, i32, i32, i8, ptr }
%"struct.llvm::codeview::InlineeSourceLine" = type { ptr, %"class.llvm::FixedStreamArray" }
%"class.llvm::FixedStreamArray" = type { %"class.llvm::BinaryStreamRef" }
%"class.llvm::Expected.224" = type <{ %union.anon.225, i8, [7 x i8] }>
%union.anon.225 = type { %"class.llvm::pdb::ModuleDebugStreamRef" }
%"class.llvm::pdb::ModuleDebugStreamRef" = type { %"class.llvm::pdb::DbiModuleDescriptor", i32, %"class.std::shared_ptr.226", %"class.llvm::VarStreamArray.229", %"struct.llvm::BinarySubstreamRef", %"struct.llvm::BinarySubstreamRef", %"struct.llvm::BinarySubstreamRef", %"struct.llvm::BinarySubstreamRef", %"class.llvm::VarStreamArray.230" }
%"class.llvm::pdb::DbiModuleDescriptor" = type { %"class.llvm::StringRef", %"class.llvm::StringRef", ptr }
%"class.std::shared_ptr.226" = type { %"class.std::__shared_ptr.227" }
%"class.std::__shared_ptr.227" = type { ptr, %"class.std::__shared_count" }
%"class.llvm::VarStreamArray.229" = type { %"class.llvm::BinaryStreamRef", [4 x i8], i32 }
%"struct.llvm::BinarySubstreamRef" = type { i64, %"class.llvm::BinaryStreamRef" }
%"class.llvm::Expected.232" = type <{ %union.anon.233, i8, [7 x i8] }>
%union.anon.233 = type { %"class.llvm::codeview::DebugChecksumsSubsectionRef" }
%"class.llvm::codeview::DebugChecksumsSubsectionRef" = type { %"class.llvm::codeview::DebugSubsectionRef.base", %"class.llvm::VarStreamArray.234" }
%"class.llvm::VarStreamArray.234" = type { %"class.llvm::BinaryStreamRef", [4 x i8], i32 }
%"class.llvm::VarStreamArrayIterator" = type { %"struct.llvm::codeview::FileChecksumEntry", %"class.llvm::BinaryStreamRef", [8 x i8], ptr, i32, i32, i8, ptr }
%"struct.llvm::codeview::FileChecksumEntry" = type { i32, i8, %"class.llvm::ArrayRef.188" }
%"class.llvm::pdb::NativeLineNumber" = type <{ %"class.llvm::pdb::IPDBLineNumber", ptr, %"class.llvm::codeview::LineInfo", i32, i32, i32, i32, i32, i32, [4 x i8] }>
%"class.llvm::pdb::IPDBLineNumber" = type { ptr }
%"class.llvm::codeview::LineInfo" = type { i32 }
%"class.std::unique_ptr.247" = type { %"struct.std::__uniq_ptr_data.248" }
%"struct.std::__uniq_ptr_data.248" = type { %"class.std::__uniq_ptr_impl.249" }
%"class.std::__uniq_ptr_impl.249" = type { %"class.std::tuple.250" }
%"class.std::tuple.250" = type { %"struct.std::_Tuple_impl.251" }
%"struct.std::_Tuple_impl.251" = type { %"struct.std::_Head_base.254" }
%"struct.std::_Head_base.254" = type { ptr }
%"struct.llvm::pdb::Variant" = type { i32, %union.anon.268 }
%union.anon.268 = type { i64 }

$_ZN4llvm3pdb15dumpSymbolFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRNS_11raw_ostreamENS_9StringRefET_i = comdat any

$_ZN4llvm8codeview16TypeDeserializer13deserializeAsINS0_18MemberFuncIdRecordEEENS_5ErrorERNS0_8CVRecordINS0_12TypeLeafKindEEERT_ = comdat any

$_ZN4llvm8codeview16TypeDeserializer13deserializeAsINS0_12FuncIdRecordEEENS_5ErrorERNS0_8CVRecordINS0_12TypeLeafKindEEERT_ = comdat any

$_ZN4llvm3pdb15NativeRawSymbol10initializeEv = comdat any

$_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_ = comdat any

$_ZN4llvm9ErrorList4joinENS_5ErrorES1_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN4llvm8codeview24BinaryAnnotationIterator22ParseCurrentAnnotationEv = comdat any

$_ZN4llvm18BinaryStreamReaderD2Ev = comdat any

$_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEED2Ev = comdat any

$_ZN4llvm22VarStreamArrayIteratorINS_8codeview21DebugSubsectionRecordENS_23VarStreamArrayExtractorIS2_EEED2Ev = comdat any

$_ZN4llvm22VarStreamArrayIteratorINS_8codeview21DebugSubsectionRecordENS_23VarStreamArrayExtractorIS2_EEEC2ERKNS_14VarStreamArrayIS2_S4_EERKS4_jPb = comdat any

$_ZN4llvm23VarStreamArrayExtractorINS_8codeview21DebugSubsectionRecordEEclENS_15BinaryStreamRefERjRS2_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN4llvm18BinaryStreamReaderD0Ev = comdat any

$_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEEC2ERKNS_14VarStreamArrayIS2_S4_EERKS4_jPb = comdat any

$_ZN4llvm22VarStreamArrayIteratorINS_8codeview17InlineeSourceLineENS_23VarStreamArrayExtractorIS2_EEEpLEj = comdat any

$_ZN4llvm22VarStreamArrayIteratorINS_8codeview21DebugSubsectionRecordENS_23VarStreamArrayExtractorIS2_EEEpLEj = comdat any

$_ZN4llvm12BinaryStreamD2Ev = comdat any

$_ZN4llvm16BinaryByteStreamD0Ev = comdat any

$_ZNK4llvm16BinaryByteStream9getEndianEv = comdat any

$_ZN4llvm16BinaryByteStream9readBytesEmmRNS_8ArrayRefIhEE = comdat any

$_ZN4llvm16BinaryByteStream26readLongestContiguousChunkEmRNS_8ArrayRefIhEE = comdat any

$_ZN4llvm16BinaryByteStream9getLengthEv = comdat any

$_ZNK4llvm12BinaryStream8getFlagsEv = comdat any

$_ZN4llvm22VarStreamArrayIteratorINS_8codeview17FileChecksumEntryENS_23VarStreamArrayExtractorIS2_EEEC2ERKNS_14VarStreamArrayIS2_S4_EERKS4_jPb = comdat any

$_ZTVN4llvm18BinaryStreamReaderE = comdat any

$_ZTVN4llvm16BinaryByteStreamE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm3pdb22NativeInlineSiteSymbolE = unnamed_addr constant { [183 x ptr] } { [183 x ptr] [ptr null, ptr null, ptr @_ZN4llvm3pdb22NativeInlineSiteSymbolD1Ev, ptr @_ZN4llvm3pdb22NativeInlineSiteSymbolD0Ev, ptr @_ZNK4llvm3pdb22NativeInlineSiteSymbol4dumpERNS_11raw_ostreamEiNS0_16PdbSymbolIdFieldES4_, ptr @_ZNK4llvm3pdb15NativeRawSymbol12findChildrenENS0_11PDB_SymTypeE, ptr @_ZNK4llvm3pdb15NativeRawSymbol12findChildrenENS0_11PDB_SymTypeENS_9StringRefENS0_19PDB_NameSearchFlagsE, ptr @_ZNK4llvm3pdb15NativeRawSymbol18findChildrenByAddrENS0_11PDB_SymTypeENS_9StringRefENS0_19PDB_NameSearchFlagsEjj, ptr @_ZNK4llvm3pdb15NativeRawSymbol16findChildrenByVAENS0_11PDB_SymTypeENS_9StringRefENS0_19PDB_NameSearchFlagsEm, ptr @_ZNK4llvm3pdb15NativeRawSymbol17findChildrenByRVAENS0_11PDB_SymTypeENS_9StringRefENS0_19PDB_NameSearchFlagsEj, ptr @_ZNK4llvm3pdb15NativeRawSymbol22findInlineFramesByAddrEjj, ptr @_ZNK4llvm3pdb15NativeRawSymbol21findInlineFramesByRVAEj, ptr @_ZNK4llvm3pdb15NativeRawSymbol20findInlineFramesByVAEm, ptr @_ZNK4llvm3pdb15NativeRawSymbol16findInlineeLinesEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol22findInlineeLinesByAddrEjjj, ptr @_ZNK4llvm3pdb15NativeRawSymbol21findInlineeLinesByRVAEjj, ptr @_ZNK4llvm3pdb22NativeInlineSiteSymbol20findInlineeLinesByVAEmj, ptr @_ZNK4llvm3pdb15NativeRawSymbol12getDataBytesERNS_11SmallVectorIhLj32EEE, ptr @_ZNK4llvm3pdb15NativeRawSymbol17getBackEndVersionERNS0_11VersionInfoE, ptr @_ZNK4llvm3pdb15NativeRawSymbol9getAccessEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol16getAddressOffsetEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol17getAddressSectionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol6getAgeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol19getArrayIndexTypeIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol17getBaseDataOffsetEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getBaseDataSlotEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getBaseSymbolIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14getBuiltinTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14getBitPositionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol20getCallingConventionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol16getClassParentIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getCompilerNameB5cxx11Ev, ptr @_ZNK4llvm3pdb15NativeRawSymbol8getCountEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getCountLiveRangesEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getFrontEndVersionERNS0_11VersionInfoE, ptr @_ZNK4llvm3pdb15NativeRawSymbol11getLanguageEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getLexicalParentIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14getLibraryNameB5cxx11Ev, ptr @_ZNK4llvm3pdb15NativeRawSymbol30getLiveRangeStartAddressOffsetEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol31getLiveRangeStartAddressSectionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol39getLiveRangeStartRelativeVirtualAddressEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol29getLocalBasePointerRegisterIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getLowerBoundIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getMemorySpaceKindEv, ptr @_ZNK4llvm3pdb22NativeInlineSiteSymbol7getNameB5cxx11Ev, ptr @_ZNK4llvm3pdb15NativeRawSymbol33getNumberOfAcceleratorPointerTagsEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getNumberOfColumnsEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol20getNumberOfModifiersEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol26getNumberOfRegisterIndicesEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getNumberOfRowsEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol17getObjectFileNameB5cxx11Ev, ptr @_ZNK4llvm3pdb15NativeRawSymbol8getOemIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14getOemSymbolIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14getOffsetInUdtEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol11getPlatformEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol7getRankEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol13getRegisterIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getRegisterTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol25getRelativeVirtualAddressEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14getSamplerSlotEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol12getSignatureEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol12getSizeInUdtEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol7getSlotEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol17getSourceFileNameB5cxx11Ev, ptr @_ZNK4llvm3pdb15NativeRawSymbol20getSrcLineOnTypeDefnEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9getStrideEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol12getSubTypeIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getSymbolsFileNameB5cxx11Ev, ptr @_ZNK4llvm3pdb15NativeRawSymbol13getSymIndexIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getTargetOffsetEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol31getTargetRelativeVirtualAddressEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol23getTargetVirtualAddressEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol16getTargetSectionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14getTextureSlotEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol12getTimeStampEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol8getTokenEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9getTypeIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10getUavSlotEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getUndecoratedNameB5cxx11Ev, ptr @_ZNK4llvm3pdb15NativeRawSymbol20getUndecoratedNameExB5cxx11ENS0_16PDB_UndnameFlagsE, ptr @_ZNK4llvm3pdb15NativeRawSymbol19getUnmodifiedTypeIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getUpperBoundIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol8getValueEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol23getVirtualBaseDispIndexEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol20getVirtualBaseOffsetEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol23getVirtualBaseTableTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol22getVirtualTableShapeIdEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol11getDataKindEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9getSymTagEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol7getGuidEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9getOffsetEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol13getThisAdjustEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol27getVirtualBasePointerOffsetEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getLocationTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14getMachineTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getThunkOrdinalEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9getLengthEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getLiveRangeLengthEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol17getVirtualAddressEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10getUdtKindEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14hasConstructorEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol26hasCustomCallingConventionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol12hasFarReturnEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol6isCodeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol19isCompilerGeneratedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol11isConstTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol24isEditAndContinueEnabledEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10isFunctionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15getAddressTakenEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18getNoStackOrderingEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9hasAllocaEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol21hasAssignmentOperatorEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9hasCTypesEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15hasCastOperatorEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol12hasDebugInfoEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol5hasEHEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol6hasEHaEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15hasFramePointerEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9hasInlAsmEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18hasInlineAttributeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18hasInterruptReturnEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol11hasLongJumpEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14hasManagedCodeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14hasNestedTypesEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol20hasNoInlineAttributeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol20hasNoReturnAttributeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol25hasOptimizedCodeDebugInfoEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol21hasOverloadedOperatorEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol6hasSEHEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol17hasSecurityChecksEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10hasSetJumpEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol16hasStrictGSCheckEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol29isAcceleratorGroupSharedLocalEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol32isAcceleratorPointerTagLiveRangeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol25isAcceleratorStubFunctionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol12isAggregatedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol22isIntroVirtualFunctionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol8isCVTCILEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol24isConstructorVirtualBaseEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14isCxxReturnUdtEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol13isDataAlignedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10isHLSLDataEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14isHotpatchableEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol26isIndirectVirtualBaseClassEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14isInterfaceUdtEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol11isIntrinsicEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol6isLTCGEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol30isLocationControlFlowDependentEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15isMSILNetmoduleEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol16isMatrixRowMajorEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol13isManagedCodeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10isMSILCodeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol21isMultipleInheritanceEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol7isNakedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol8isNestedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15isOptimizedAwayEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol8isPackedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol27isPointerBasedOnSymbolValueEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol21isPointerToDataMemberEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol25isPointerToMemberFunctionEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol13isPureVirtualEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol17isRValueReferenceEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol8isRefUdtEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol11isReferenceEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol16isRestrictedTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol13isReturnValueEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol13isSafeBuffersEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol8isScopedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol5isSdlEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol19isSingleInheritanceEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10isSplittedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol8isStaticEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol17hasPrivateSymbolsEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol15isUnalignedTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol11isUnreachedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10isValueUdtEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9isVirtualEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol18isVirtualBaseClassEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol20isVirtualInheritanceEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol14isVolatileTypeEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol10wasInlinedEv, ptr @_ZNK4llvm3pdb15NativeRawSymbol9getUnusedB5cxx11Ev, ptr @_ZN4llvm3pdb15NativeRawSymbol10initializeEv] }, align 8
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@_ZN4llvm9ErrorList2IDE = external global i8, align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4llvm9ErrorListE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZN4llvm13ErrorInfoBase2IDE = external global i8, align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"CodeOffset\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"ChangeCodeOffsetBase\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ChangeCodeOffset\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"ChangeCodeLength\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"ChangeFile\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"ChangeLineEndDelta\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"ChangeRangeKind\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ChangeColumnStart\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"ChangeColumnEnd\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"ChangeLineOffset\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"ChangeColumnEndDelta\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"ChangeCodeOffsetAndLineOffset\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"ChangeCodeLengthAndCodeOffset\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN4llvm18BinaryStreamReaderE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4llvm18BinaryStreamReaderD2Ev, ptr @_ZN4llvm18BinaryStreamReaderD0Ev] }, comdat, align 8
@_ZTVN4llvm3pdb16NativeLineNumberE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c": \00", align 1
@_ZTVN4llvm16BinaryByteStreamE = linkonce_odr unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr null, ptr @_ZN4llvm12BinaryStreamD2Ev, ptr @_ZN4llvm16BinaryByteStreamD0Ev, ptr @_ZNK4llvm16BinaryByteStream9getEndianEv, ptr @_ZN4llvm16BinaryByteStream9readBytesEmmRNS_8ArrayRefIhEE, ptr @_ZN4llvm16BinaryByteStream26readLongestContiguousChunkEmRNS_8ArrayRefIhEE, ptr @_ZN4llvm16BinaryByteStream9getLengthEv, ptr @_ZNK4llvm12BinaryStream8getFlagsEv] }, comdat, align 8
@_ZTVN4llvm8codeview17TypeRecordMappingE = external unnamed_addr constant { [46 x ptr] }, align 8
@.str.22 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

@_ZN4llvm3pdb22NativeInlineSiteSymbolC1ERNS0_13NativeSessionEjRKNS_8codeview13InlineSiteSymEm = unnamed_addr alias void (ptr, ptr, i32, ptr, i64), ptr @_ZN4llvm3pdb22NativeInlineSiteSymbolC2ERNS0_13NativeSessionEjRKNS_8codeview13InlineSiteSymEm
@_ZN4llvm3pdb22NativeInlineSiteSymbolD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4llvm3pdb22NativeInlineSiteSymbolD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3pdb22NativeInlineSiteSymbolC2ERNS0_13NativeSessionEjRKNS_8codeview13InlineSiteSymEm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(832) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %3, i64 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4llvm3pdb15NativeRawSymbolC2ERNS0_13NativeSessionENS0_11PDB_SymTypeEj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(832) %1, i32 noundef 32, i32 noundef %2) #14
  store ptr getelementptr inbounds nuw inrange(-16, 1448) (i8, ptr @_ZTVN4llvm3pdb22NativeInlineSiteSymbolE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i16, ptr %3, align 8, !tbaa !10
  store i16 %i.b, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i, !prof !17

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #16
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i:    ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %i.o = phi ptr [ %i.n, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 6 uses
  store ptr %i.o, ptr %i.e, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.q, ptr %i.r, align 8, !tbaa !18
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.d, label %bb.e, !prof !20

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.s, i64 %i.w, i1 false)
  br label %_ZN4llvm8codeview13InlineSiteSymC2ERKS1_.exit

end_hunk_0
begin_hunk_1_@_ZN4llvm8codeview16TypeDeserializer13deserializeAsINS0_18MemberFuncIdRecordEEENS_5ErrorERNS0_8CVRecordINS0_12TypeLeafKindEEERT_:bb.a
  call void @_ZN4llvm8codeview17TypeRecordMapping12visitTypeEndERNS0_8CVRecordINS0_12TypeLeafKindEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit21, %_ZN4llvm5ErrorD2Ev.exit, %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 352) (i8, ptr @_ZTVN4llvm8codeview17TypeRecordMappingE, i64 16), ptr %i.j, align 8, !tbaa !8
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.u) #14
  br label %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i

_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i:  ; preds = %bb.c, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %i.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.y, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !103
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !104
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !104
  br label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !105
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.g ], [ %i.al, %bb.h ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.i, label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit, !prof !17

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !106
  br label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit

_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit: ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8codeview16TypeDeserializer13deserializeAsINS0_12FuncIdRecordEEENS_5ErrorERNS0_8CVRecordINS0_12TypeLeafKindEEERT_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.llvm::codeview::TypeDeserializer::MappingInfo", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = icmp ult i64 %i.b, 4
  %.pre = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  br i1 %i.c, label %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 2
  %.0.copyload.i.i.i.i = load i16, ptr %i.d, align 1
  br label %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit

_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i16 [ %.0.copyload.i.i.i.i, %bb.b ], [ 0, %bb.a ]
  store i16 %.0.i, ptr %2, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.e = add i64 %i.b, -4
  %i.f = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm16BinaryByteStreamE, i64 16), ptr %3, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !78
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.f, ptr %i.h, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.e, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  call void @_ZN4llvm18BinaryStreamReaderC1ERNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(184) %3) #14
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 352) (i8, ptr @_ZTVN4llvm8codeview17TypeRecordMappingE, i64 16), ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 106
  store i8 0, ptr %i.k, align 2, !tbaa !82
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 110
  store i8 0, ptr %i.l, align 2, !tbaa !82
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  store ptr %i.n, ptr %i.m, align 8, !tbaa !84
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i32 0, ptr %i.o, align 8, !tbaa !86
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 124
  store i32 2, ptr %i.p, align 4, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 152
  store ptr %i.i, ptr %i.q, align 8, !tbaa !88
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  call void @_ZN4llvm8codeview17TypeRecordMapping14visitTypeBeginERNS0_8CVRecordINS0_12TypeLeafKindEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  %i.s = load ptr, ptr %0, align 8, !tbaa !58
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %.critedge

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit
  call void @_ZN4llvm8codeview17TypeRecordMapping16visitKnownRecordERNS0_8CVRecordINS0_12TypeLeafKindEEERNS0_12FuncIdRecordE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %i.t = load ptr, ptr %0, align 8, !tbaa !58
  %.not25 = icmp eq ptr %i.t, null
  br i1 %.not25, label %_ZN4llvm5ErrorD2Ev.exit21, label %.critedge

_ZN4llvm5ErrorD2Ev.exit21:                        ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @_ZN4llvm8codeview17TypeRecordMapping12visitTypeEndERNS0_8CVRecordINS0_12TypeLeafKindEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1) #14
  br label %.critedge

.critedge:                                        ; preds = %_ZN4llvm5ErrorD2Ev.exit21, %_ZN4llvm5ErrorD2Ev.exit, %_ZNK4llvm8codeview8CVRecordINS0_12TypeLeafKindEE4kindEv.exit
  store ptr getelementptr inbounds nuw inrange(-16, 352) (i8, ptr @_ZTVN4llvm8codeview17TypeRecordMappingE, i64 16), ptr %i.j, align 8, !tbaa !8
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.u) #14
  br label %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i

_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i:  ; preds = %bb.c, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4llvm18BinaryStreamReaderE, i64 16), ptr %i.i, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !98   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.y, align 8, !tbaa !101
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !103
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !104
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !104
  br label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !105
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ab, %bb.g ], [ %i.al, %bb.h ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.am, label %bb.i, label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit, !prof !17

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #14, !inline_history !106
  br label %_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit

_ZN4llvm8codeview16TypeDeserializer11MappingInfoD2Ev.exit: ; preds = %_ZN4llvm8codeview17TypeRecordMappingD2Ev.exit.i, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0133.sroa.0 = alloca i64, align 8        ; 18 uses
  %.sroa.0113.sroa.0 = alloca i64, align 8        ; 13 uses
  %4 = alloca %"struct.llvm::codeview::BinaryAnnotationIterator", align 8 ; 12 uses
  store i32 0, ptr %2, align 4, !tbaa !105
  store i32 0, ptr %3, align 4, !tbaa !105
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0133.sroa.0)
  %.sroa.0133.4..sroa_idx237 = getelementptr inbounds nuw i8, ptr %.sroa.0133.sroa.0, i64 4
  store i8 0, ptr %.sroa.0133.4..sroa_idx237, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0113.sroa.0)
  %.sroa.0113.4..sroa_idx234 = getelementptr inbounds nuw i8, ptr %.sroa.0113.sroa.0, i64 4
  store i8 0, ptr %.sroa.0113.4..sroa_idx234, align 4, !tbaa !107
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16, !noalias !109 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !109 ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !112, !alias.scope !114
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.b, ptr %i.i, align 8, !tbaa !19
  %.sroa.559.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  store i64 %i.g, ptr %.sroa.559.56..sroa_idx, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !alias.scope !114
  %.not.i.i.i.i179 = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i.i179, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.0133.4..sroa_idx238 = getelementptr inbounds nuw i8, ptr %.sroa.0133.sroa.0, i64 4
  %.sroa.0133.4..sroa_idx239 = getelementptr inbounds nuw i8, ptr %.sroa.0133.sroa.0, i64 4
  %.sroa.0113.4..sroa_idx235 = getelementptr inbounds nuw i8, ptr %.sroa.0113.sroa.0, i64 4
  %.sroa.0133.4..sroa_idx240 = getelementptr inbounds nuw i8, ptr %.sroa.0133.sroa.0, i64 4
  %.sroa.0113.4..sroa_idx236 = getelementptr inbounds nuw i8, ptr %.sroa.0113.sroa.0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit
  %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117226, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 4 uses
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141224, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 6 uses
  %.sroa.0109.0 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0109.3, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %.sroa.0.0 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0.1, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %.0185 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %.sroa.7.0184 = phi i1 [ false, %.lr.ph ], [ %.sroa.7.5.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %.sroa.0106.0183 = phi i32 [ undef, %.lr.ph ], [ %.sroa.0106.1, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 12 uses
  %.sroa.5.0182 = phi i1 [ false, %.lr.ph ], [ %.sroa.5.3.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 12 uses
  %.sroa.8.0180 = phi i8 [ 0, %.lr.ph ], [ %.sroa.8.5.ph, %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit ] ; 11 uses
  %i.o = call noundef zeroext i1 @_ZN4llvm8codeview24BinaryAnnotationIterator22ParseCurrentAnnotationEv(ptr noundef nonnull align 8 dereferenceable(88) %4) ; 0 uses
  %i.p = load i32, ptr %i.k, align 8, !tbaa !117
  switch i32 %i.p, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" [
    i32 1, label %bb.c
    i32 3, label %bb.c
    i32 2, label %bb.c
    i32 4, label %bb.f
    i32 12, label %bb.i
    i32 6, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit"
    i32 11, label %bb.n
    i32 5, label %bb.q
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.q = load i32, ptr %i.l, align 4, !tbaa !121  ; 2 uses
  %i.r = add i32 %i.q, %.0185                     ; 3 uses
  %i.s = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.s, label %bb.d, label %.sink.split.i

bb.d:                                             ; preds = %bb.c
  %i.t = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 to i1
  br i1 %i.t, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.134 = load i32, ptr %.sroa.0133.sroa.0, align 8, !tbaa !105
  %i.u = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.134, %i.q
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c, %bb.e
  %.sink8.i = phi i32 [ %i.u, %bb.e ], [ %i.r, %bb.c ]
  %.sink.i = phi ptr [ %.sroa.0113.sroa.0, %bb.e ], [ %.sroa.0133.sroa.0, %bb.c ]
  %.sroa.0.0.insert.ext.i = zext i32 %.sink8.i to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4294967296
  store i64 %.sroa.0.0.insert.insert.i, ptr %.sink.i, align 8
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

bb.f:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.l, align 4, !tbaa !121
  %i.w = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.w, label %bb.g, label %.sink.split.i24

bb.g:                                             ; preds = %bb.f
  %i.x = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 to i1
  br i1 %i.x, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.135 = load i32, ptr %.sroa.0133.sroa.0, align 8, !tbaa !105
  %i.y = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.135, %i.v
  br label %.sink.split.i24

.sink.split.i24:                                  ; preds = %bb.f, %bb.h
  %.sink8.i25 = phi i32 [ %i.y, %bb.h ], [ %.0185, %bb.f ]
  %.sink.i26 = phi ptr [ %.sroa.0113.sroa.0, %bb.h ], [ %.sroa.0133.sroa.0, %bb.f ]
  %.sroa.0.0.insert.ext.i27 = zext i32 %.sink8.i25 to i64
  %.sroa.0.0.insert.insert.i28 = or disjoint i64 %.sroa.0.0.insert.ext.i27, 4294967296
  store i64 %.sroa.0.0.insert.insert.i28, ptr %.sink.i26, align 8
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

bb.i:                                             ; preds = %bb.b
  %i.z = load i32, ptr %i.n, align 8, !tbaa !122  ; 2 uses
  %i.aa = add i32 %i.z, %.0185                    ; 4 uses
  %i.ab = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.ab, label %bb.j, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35"

bb.j:                                             ; preds = %bb.i
  %i.ac = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 to i1
  br i1 %i.ac, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35.thread", label %bb.k

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35.thread": ; preds = %bb.j
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !121
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.136 = load i32, ptr %.sroa.0133.sroa.0, align 8, !tbaa !105
  %i.ae = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.136, %i.z
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35": ; preds = %bb.k, %bb.i
  %.sink8.i31 = phi i32 [ %i.ae, %bb.k ], [ %i.aa, %bb.i ]
  %.sink.i32 = phi ptr [ %.sroa.0113.sroa.0, %bb.k ], [ %.sroa.0133.sroa.0, %bb.i ]
  %.sroa.0.0.insert.ext.i33 = zext i32 %.sink8.i31 to i64
  %.sroa.0.0.insert.insert.i34 = or disjoint i64 %.sroa.0.0.insert.ext.i33, 4294967296
  store i64 %.sroa.0.0.insert.insert.i34, ptr %.sink.i32, align 8
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4.147.pre = load i8, ptr %.sroa.0133.4..sroa_idx239, align 4, !tbaa !107
  %i.af = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4.147.pre to i1
  %i.ag = load i32, ptr %i.l, align 4, !tbaa !121
  br i1 %i.af, label %bb.l, label %.sink.split.i36

bb.l:                                             ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35.thread", %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35"
  %i.ah = phi i32 [ %i.ad, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35.thread" ], [ %i.ag, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35" ]
  %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4.123 = load i8, ptr %.sroa.0113.4..sroa_idx235, align 4, !tbaa !107
  %i.ai = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4.123 to i1
  br i1 %i.ai, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.137 = load i32, ptr %.sroa.0133.sroa.0, align 8, !tbaa !105
  %i.aj = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.137, %i.ah
  br label %.sink.split.i36

.sink.split.i36:                                  ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35", %bb.m
  %.sink8.i37 = phi i32 [ %i.aj, %bb.m ], [ %i.aa, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35" ]
  %.sink.i38 = phi ptr [ %.sroa.0113.sroa.0, %bb.m ], [ %.sroa.0133.sroa.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit35" ]
  %.sroa.0.0.insert.ext.i39 = zext i32 %.sink8.i37 to i64
  %.sroa.0.0.insert.insert.i40 = or disjoint i64 %.sroa.0.0.insert.ext.i39, 4294967296
  store i64 %.sroa.0.0.insert.insert.i40, ptr %.sink.i38, align 8
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit": ; preds = %bb.b
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !123
  %i.al = load i32, ptr %2, align 4, !tbaa !105
  %i.am = add i32 %i.al, %i.ak                    ; 3 uses
  store i32 %i.am, ptr %2, align 4, !tbaa !105
  %i.an = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  %i.ao = trunc nuw i8 %.sroa.8.0180 to i1
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %i.ap, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else": ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit"
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

bb.n:                                             ; preds = %bb.b
  %i.aq = load i32, ptr %i.l, align 4, !tbaa !121 ; 2 uses
  %i.ar = add i32 %i.aq, %.0185                   ; 3 uses
  %i.as = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.as, label %bb.o, label %.sink.split.i43

bb.o:                                             ; preds = %bb.n
  %i.at = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117 to i1
  br i1 %i.at, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48", label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.138 = load i32, ptr %.sroa.0133.sroa.0, align 8, !tbaa !105
  %i.au = add i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0.138, %i.aq
  br label %.sink.split.i43

.sink.split.i43:                                  ; preds = %bb.n, %bb.p
  %.sink8.i44 = phi i32 [ %i.au, %bb.p ], [ %i.ar, %bb.n ]
  %.sink.i45 = phi ptr [ %.sroa.0113.sroa.0, %bb.p ], [ %.sroa.0133.sroa.0, %bb.n ]
  %.sroa.0.0.insert.ext.i46 = zext i32 %.sink8.i44 to i64
  %.sroa.0.0.insert.insert.i47 = or disjoint i64 %.sroa.0.0.insert.ext.i46, 4294967296
  store i64 %.sroa.0.0.insert.insert.i47, ptr %.sink.i45, align 8
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4.153.pre = load i8, ptr %.sroa.0133.4..sroa_idx238, align 4, !tbaa !107
  %i.av = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4.153.pre to i1
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48": ; preds = %bb.o, %.sink.split.i43
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4.153 = phi i1 [ true, %bb.o ], [ %i.av, %.sink.split.i43 ]
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !123
  %i.ax = load i32, ptr %2, align 4, !tbaa !105
  %i.ay = add i32 %i.ax, %i.aw                    ; 3 uses
  store i32 %i.ay, ptr %2, align 4, !tbaa !105
  %i.az = trunc nuw i8 %.sroa.8.0180 to i1
  %i.ba = select i1 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.153, i1 %i.az, i1 false
  br i1 %i.ba, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else": ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48"
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

bb.q:                                             ; preds = %bb.b
  %i.bb = load i32, ptr %i.l, align 4, !tbaa !121 ; 2 uses
  %i.bc = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141 to i1
  br i1 %i.bc, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  store i32 %i.bb, ptr %3, align 4, !tbaa !105
  br label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit": ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else", %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48", %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else", %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit", %bb.q, %bb.r, %.sink.split.i36, %bb.l, %.sink.split.i24, %bb.g, %.sink.split.i, %bb.d, %bb.b
  %.sroa.0109.1 = phi i32 [ %.sroa.0109.0, %bb.b ], [ %.sroa.0109.0, %bb.d ], [ %.sroa.0109.0, %.sink.split.i ], [ %.sroa.0109.0, %bb.g ], [ %.sroa.0109.0, %.sink.split.i24 ], [ %.sroa.0109.0, %bb.l ], [ %.sroa.0109.0, %.sink.split.i36 ], [ %.sroa.0109.0, %bb.r ], [ %.sroa.0109.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.0109.0, %bb.q ], [ %i.am, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %i.ay, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %.sroa.0109.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ] ; 4 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.b ], [ %.sroa.0.0, %bb.d ], [ %.sroa.0.0, %.sink.split.i ], [ %.sroa.0.0, %bb.g ], [ %.sroa.0.0, %.sink.split.i24 ], [ %.sroa.0.0, %bb.l ], [ %.sroa.0.0, %.sink.split.i36 ], [ %.sroa.0.0, %bb.r ], [ %i.am, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.0.0, %bb.q ], [ %.sroa.0.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.0.0, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %i.ay, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ] ; 2 uses
  %.sroa.8.1 = phi i8 [ %.sroa.8.0180, %bb.b ], [ %.sroa.8.0180, %bb.d ], [ %.sroa.8.0180, %.sink.split.i ], [ %.sroa.8.0180, %bb.g ], [ %.sroa.8.0180, %.sink.split.i24 ], [ %.sroa.8.0180, %bb.l ], [ %.sroa.8.0180, %.sink.split.i36 ], [ %.sroa.8.0180, %bb.r ], [ 1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.8.0180, %bb.q ], [ 1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ 1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ 1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ] ; 2 uses
  %.sroa.5.1 = phi i1 [ %.sroa.5.0182, %bb.b ], [ %.sroa.5.0182, %bb.d ], [ %.sroa.5.0182, %.sink.split.i ], [ %.sroa.5.0182, %bb.g ], [ %.sroa.5.0182, %.sink.split.i24 ], [ %.sroa.5.0182, %bb.l ], [ %.sroa.5.0182, %.sink.split.i36 ], [ %.sroa.5.0182, %bb.r ], [ %.sroa.5.0182, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ true, %bb.q ], [ %.sroa.5.0182, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.5.0182, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %.sroa.5.0182, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ] ; 3 uses
  %.sroa.0106.1 = phi i32 [ %.sroa.0106.0183, %bb.b ], [ %.sroa.0106.0183, %bb.d ], [ %.sroa.0106.0183, %.sink.split.i ], [ %.sroa.0106.0183, %bb.g ], [ %.sroa.0106.0183, %.sink.split.i24 ], [ %.sroa.0106.0183, %bb.l ], [ %.sroa.0106.0183, %.sink.split.i36 ], [ %.sroa.0106.0183, %bb.r ], [ %.sroa.0106.0183, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %i.bb, %bb.q ], [ %.sroa.0106.0183, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.0106.0183, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %.sroa.0106.0183, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ] ; 3 uses
  %.sroa.7.1 = phi i1 [ %.sroa.7.0184, %bb.b ], [ %.sroa.7.0184, %bb.d ], [ %.sroa.7.0184, %.sink.split.i ], [ %.sroa.7.0184, %bb.g ], [ %.sroa.7.0184, %.sink.split.i24 ], [ %.sroa.7.0184, %bb.l ], [ %.sroa.7.0184, %.sink.split.i36 ], [ %.sroa.7.0184, %bb.r ], [ true, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.sroa.7.0184, %bb.q ], [ %.sroa.7.0184, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %.sroa.7.0184, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ true, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ] ; 3 uses
  %.1 = phi i32 [ %.0185, %bb.b ], [ %i.r, %bb.d ], [ %i.r, %.sink.split.i ], [ %.0185, %bb.g ], [ %.0185, %.sink.split.i24 ], [ %i.aa, %bb.l ], [ %i.aa, %.sink.split.i36 ], [ %.0185, %bb.r ], [ %.0185, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit" ], [ %.0185, %bb.q ], [ %.0185, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_1clEi.exit.else" ], [ %i.ar, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48.else" ], [ %i.ar, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit48" ]
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4. = load i8, ptr %.sroa.0133.4..sroa_idx240, align 4, !tbaa !107 ; 2 uses
  %i.bd = trunc nuw i8 %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4. to i1
  %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4. = load i8, ptr %.sroa.0113.4..sroa_idx236, align 4 ; 2 uses
  %i.be = trunc nuw i8 %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4. to i1
  %or.cond = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.s, label %bb.x

bb.s:                                             ; preds = %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"
  %i.bf = trunc nuw i8 %.sroa.8.1 to i1
  br i1 %i.bf, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0. = load i32, ptr %.sroa.0133.sroa.0, align 8
  %.not.i = icmp ule i32 %.sroa.0133.0..sroa.0133.0..sroa.0133.0..sroa.0133.0., %1
  %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0. = load i32, ptr %.sroa.0113.sroa.0, align 8
  %i.bg = icmp ult i32 %1, %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0.
  %or.cond174 = select i1 %.not.i, i1 %i.bg, i1 false
  br i1 %or.cond174, label %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_3clEv.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %.sroa.5.1, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %.sroa.0106.1, ptr %3, align 4, !tbaa !105
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %spec.select = select i1 %.sroa.7.1, i32 %.sroa.0.1, i32 %.sroa.0109.1
  %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0.114 = load i64, ptr %.sroa.0113.sroa.0, align 8 ; 2 uses
  store i64 %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0.114, ptr %.sroa.0133.sroa.0, align 8
  %.sroa.0106.0.insert.ext = zext i32 %.sroa.0106.1 to i64
  store i64 %.sroa.0106.0.insert.ext, ptr %.sroa.0113.sroa.0, align 8
  %i.bh = lshr i64 %.sroa.0113.0..sroa.0113.0..sroa.0113.0..sroa.0113.0.114, 32
  %i.bi = trunc i64 %i.bh to i8
  br label %bb.x

"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_3clEv.exit": ; preds = %bb.t
  store i32 %.sroa.0109.1, ptr %2, align 4, !tbaa !105
  br label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit

bb.x:                                             ; preds = %bb.w, %bb.s, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit"
  %.sroa.0113.4..sroa.0113.4..sroa.0113.4.117226 = phi i8 [ 0, %bb.w ], [ 1, %bb.s ], [ %.sroa.0113.4..sroa.0113.4..sroa.0113.4..sroa.0113.4., %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ]
  %.sroa.0133.4..sroa.0133.4..sroa.0133.4.141224 = phi i8 [ %i.bi, %bb.w ], [ 1, %bb.s ], [ %.sroa.0133.4..sroa.0133.4..sroa.0133.4..sroa.0133.4., %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ]
  %.sroa.0109.3 = phi i32 [ %spec.select, %bb.w ], [ %.sroa.0109.1, %bb.s ], [ %.sroa.0109.1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ]
  %.sroa.8.5.ph = phi i8 [ 1, %bb.w ], [ 0, %bb.s ], [ %.sroa.8.1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ]
  %.sroa.5.3.ph = phi i1 [ false, %bb.w ], [ %.sroa.5.1, %bb.s ], [ %.sroa.5.1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ]
  %.sroa.7.5.ph = phi i1 [ false, %bb.w ], [ %.sroa.7.1, %bb.s ], [ %.sroa.7.1, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_0clEj.exit" ]
  %i.bj = call noundef zeroext i1 @_ZN4llvm8codeview24BinaryAnnotationIterator22ParseCurrentAnnotationEv(ptr noundef nonnull align 8 dereferenceable(88) %4)
  br i1 %i.bj, label %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit

_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit: ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !124
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.h, align 8, !tbaa !112
  %.sroa.22.0.copyload.i.i.pre = load i64, ptr %.sroa.559.56..sroa_idx, align 8, !tbaa !70
  %i.bk = icmp eq i64 %.sroa.22.0.copyload.i.i.pre, 0
  br i1 %i.bk, label %_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit, label %bb.b

_ZNK4llvm20iterator_facade_baseINS_8codeview24BinaryAnnotationIteratorESt20forward_iterator_tagNS1_17DecodedAnnotationElPS4_RS4_EneERKS2_.exit: ; preds = %_ZN4llvm8codeview24BinaryAnnotationIteratorppEv.exit, %bb.x, %bb.a, %"_ZZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_ENK3$_3clEv.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0113.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0133.sroa.0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm3pdb22NativeInlineSiteSymbol20findInlineeLinesByVAEmj(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.216") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::vector.255", align 8   ; 8 uses
  %5 = alloca %"class.llvm::Error", align 8       ; 3 uses
  %6 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %7 = alloca %class.anon.269, align 1            ; 3 uses
  %8 = alloca %"class.llvm::VarStreamArray.230", align 16 ; 8 uses
  %9 = alloca %"class.llvm::VarStreamArrayIterator.289", align 8 ; 12 uses
  %10 = alloca %"class.llvm::VarStreamArrayIterator.289", align 8 ; 11 uses
  %11 = alloca %"class.llvm::codeview::DebugInlineeLinesSubsectionRef", align 8 ; 9 uses
  %12 = alloca %"class.llvm::BinaryStreamReader", align 8 ; 8 uses
  %13 = alloca %"class.llvm::BinaryStreamRef", align 8 ; 5 uses
  %14 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %15 = alloca %"class.llvm::BinaryStreamReader", align 8 ; 9 uses
  %16 = alloca %"class.llvm::VarStreamArrayIterator.292", align 8 ; 12 uses
  %17 = alloca %"class.llvm::VarStreamArrayIterator.292", align 8 ; 13 uses
  %18 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %19 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %20 = alloca %class.anon.269, align 1           ; 3 uses
  %21 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %22 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %23 = alloca %class.anon.269, align 1           ; 3 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %24 = alloca %"class.llvm::Expected.224", align 8 ; 13 uses
  %25 = alloca %"class.llvm::Expected.232", align 8 ; 11 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %26 = alloca %"class.llvm::VarStreamArrayIterator", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %27 = alloca %"class.llvm::pdb::NativeLineNumber", align 8 ; 5 uses
  %28 = alloca %"class.std::unique_ptr.247", align 8 ; 4 uses
  %29 = alloca [1 x %"class.llvm::pdb::NativeLineNumber"], align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.h = call noundef zeroext i1 @_ZNK4llvm3pdb13NativeSession16moduleIndexForVAEmRt(ptr noundef nonnull align 8 dereferenceable(832) %i.g, i64 noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %i.a) #14
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !125
  br label %bb.cn

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #14
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.j = load i16, ptr %i.a, align 2, !tbaa !128
  %i.k = zext i16 %i.j to i32
  call void @_ZNK4llvm3pdb13NativeSession20getModuleDebugStreamEj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.224") align 8 %24, ptr noundef nonnull align 8 dereferenceable(832) %i.i, i32 noundef %i.k) #14
  %i.l = getelementptr inbounds nuw i8, ptr %24, i64 400 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.e

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.c
  %i.o = load i64, ptr %24, align 8, !tbaa !53, !noalias !130
  %i.p = inttoptr i64 %i.o to ptr
  store ptr null, ptr %24, align 8, !tbaa !53, !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  store ptr %i.p, ptr %22, align 8, !tbaa !58
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %21, ptr nofree noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 1 dereferenceable(1) %23)
  %i.q = load ptr, ptr %22, align 8, !tbaa !58    ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #14, !inline_history !60
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #14
  store ptr null, ptr %0, align 8, !tbaa !125
  br label %bb.ck

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #14
  call void @_ZNK4llvm3pdb20ModuleDebugStreamRef23findChecksumsSubsectionEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.232") align 8 %25, ptr noundef nonnull align 8 dereferenceable(400) %24) #14
  %i.v = getelementptr inbounds nuw i8, ptr %25, i64 72 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = trunc i8 %i.w to i1
  br i1 %i.x, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11, label %bb.g

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11: ; preds = %bb.e
  %i.y = load i64, ptr %25, align 8, !tbaa !53, !noalias !133
  %i.z = inttoptr i64 %i.y to ptr
  store ptr null, ptr %25, align 8, !tbaa !53, !noalias !133
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  store ptr %i.z, ptr %19, align 8, !tbaa !58
  call void @_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %18, ptr nofree noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 1 dereferenceable(1) %20)
  %i.aa = load ptr, ptr %19, align 8, !tbaa !58   ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5ErrorD2Ev.exit14, label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #14, !inline_history !60
  br label %_ZN4llvm5ErrorD2Ev.exit14

_ZN4llvm5ErrorD2Ev.exit14:                        ; preds = %bb.f, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #14
  store ptr null, ptr %0, align 8, !tbaa !125
  br label %bb.cb

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31
  %i.ah = sub i64 %2, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  call void @_ZNK4llvm3pdb22NativeInlineSiteSymbol13getLineOffsetEjRjS2_(ptr noundef nonnull align 8 dereferenceable(80) %1, i32 noundef %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.05.0.copyload = load i32, ptr %i.aj, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14, !noalias !136
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.ak = getelementptr inbounds nuw i8, ptr %24, i64 344
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %24, i64 352
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !98, !noalias !142 ; 2 uses
  %i.ao = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !143, !noalias !142
  store <2 x ptr> %i.ao, ptr %8, align 16, !tbaa !143, !alias.scope !139, !noalias !136
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNK4llvm3pdb20ModuleDebugStreamRef19getSubsectionsArrayEv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  %i.aq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21, !noalias !142
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !105, !noalias !142
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.ap, align 4, !tbaa !105, !noalias !142
  br label %_ZNK4llvm3pdb20ModuleDebugStreamRef19getSubsectionsArrayEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.at = atomicrmw volatile add ptr %i.ap, i32 1 acq_rel, align 4, !noalias !142 ; 0 uses
  br label %_ZNK4llvm3pdb20ModuleDebugStreamRef19getSubsectionsArrayEv.exit.i

_ZNK4llvm3pdb20ModuleDebugStreamRef19getSubsectionsArrayEv.exit.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.av, i64 32, i1 false), !noalias !136
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.ax = getelementptr inbounds nuw i8, ptr %24, i64 396
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !142 ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !alias.scope !139, !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14, !noalias !136
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @_ZN4llvm22VarStreamArrayIteratorINS_8codeview21DebugSubsectionRecordENS_23VarStreamArrayExtractorIS2_EEEC2ERKNS_14VarStreamArrayIS2_S4_EERKS4_jPb(ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 1 dereferenceable(1) %i.az, i32 noundef %i.ay, ptr noundef null), !noalias !136
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14, !noalias !136
  call void @_ZN4llvm8codeview21DebugSubsectionRecordC1Ev(ptr noundef nonnull align 8 dereferenceable(144) %10) #14, !noalias !136
  %i.ba = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  store i8 0, ptr %i.bb, align 8, !tbaa !144, !alias.scope !146, !noalias !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i8 0, i64 32, i1 false), !alias.scope !146, !noalias !136
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr null, ptr %i.bd, align 8, !tbaa !149, !alias.scope !146, !noalias !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bc, i8 0, i64 17, i1 false), !alias.scope !146, !noalias !136
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 88
  %i.bk = getelementptr inbounds nuw i8, ptr %10, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 96
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 68
end_hunk_1
