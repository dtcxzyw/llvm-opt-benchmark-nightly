Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ResourceScriptParser?download=true
inline.NumInlined: 4270
inline.NumDeleted: 2149
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::Expected" = type <{ %union.anon.9, i8, [7 x i8] }>
%union.anon.9 = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.11" }
%"struct.std::_Head_base.11" = type { ptr }
%"class.llvm::Expected.32" = type <{ %union.anon.33, i8, [7 x i8] }>
%union.anon.33 = type { %"class.llvm::SmallVector.34" }
%"class.llvm::SmallVector.34" = type { %"class.llvm::SmallVectorImpl.35", %"struct.llvm::SmallVectorStorage.38" }
%"class.llvm::SmallVectorImpl.35" = type { %"class.llvm::SmallVectorTemplateBase.36" }
%"class.llvm::SmallVectorTemplateBase.36" = type { %"class.llvm::SmallVectorTemplateCommon.37" }
%"class.llvm::SmallVectorTemplateCommon.37" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.38" = type { [64 x i8] }
%"class.llvm::Expected.20" = type <{ %union.anon.21, i8, [7 x i8] }>
%union.anon.21 = type { %"class.std::unique_ptr.12", [16 x i8] }
%"class.std::unique_ptr.12" = type { %"struct.std::__uniq_ptr_data.13" }
%"struct.std::__uniq_ptr_data.13" = type { %"class.std::__uniq_ptr_impl.14" }
%"class.std::__uniq_ptr_impl.14" = type { %"class.std::tuple.15" }
%"class.std::tuple.15" = type { %"struct.std::_Tuple_impl.16" }
%"struct.std::_Tuple_impl.16" = type { %"struct.std::_Head_base.19" }
%"struct.std::_Head_base.19" = type { ptr }
%"class.llvm::rc::IntOrString" = type <{ %"union.llvm::rc::IntOrString::Data", i8, [7 x i8] }>
%"union.llvm::rc::IntOrString::Data" = type { %"class.llvm::StringRef" }
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.llvm::Expected.26" = type { %union.anon.27, i8, [7 x i8] }
%union.anon.27 = type <{ %"class.std::unique_ptr.12", [8 x i8] }>
%"class.llvm::Expected.44" = type <{ %union.anon.45, i8, [7 x i8] }>
%union.anon.45 = type { %"class.llvm::rc::OptionalStmtList" }
%"class.llvm::rc::OptionalStmtList" = type { %"class.llvm::rc::OptionalStmt.base", %"class.std::vector.46" }
%"class.llvm::rc::OptionalStmt.base" = type { %"class.llvm::rc::RCResource.base" }
%"class.llvm::rc::RCResource.base" = type <{ ptr, %"class.llvm::rc::IntOrString", i16 }>
%"class.std::vector.46" = type { %"struct.std::_Vector_base.47" }
%"struct.std::_Vector_base.47" = type { %"struct.std::_Vector_base<std::unique_ptr<llvm::rc::OptionalStmt>, std::allocator<std::unique_ptr<llvm::rc::OptionalStmt>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<llvm::rc::OptionalStmt>, std::allocator<std::unique_ptr<llvm::rc::OptionalStmt>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<llvm::rc::OptionalStmt>, std::allocator<std::unique_ptr<llvm::rc::OptionalStmt>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<llvm::rc::OptionalStmt>, std::allocator<std::unique_ptr<llvm::rc::OptionalStmt>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.271" = type { %"struct.std::_Vector_base.272" }
%"struct.std::_Vector_base.272" = type { %"struct.std::_Vector_base<llvm::StringRef, std::allocator<llvm::StringRef>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::StringRef, std::allocator<llvm::StringRef>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::StringRef, std::allocator<llvm::StringRef>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::StringRef, std::allocator<llvm::StringRef>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::Expected.41" = type <{ %union.anon.42, i8, [7 x i8] }>
%union.anon.42 = type { %"class.std::unique_ptr.12" }
%"class.llvm::Expected.29" = type <{ %union.anon.30, i8, [7 x i8] }>
%union.anon.30 = type { %"class.llvm::StringRef" }
%"class.llvm::Expected.100" = type <{ %union.anon.101, i8, [7 x i8] }>
%union.anon.101 = type { %"class.llvm::rc::Control" }
%"class.llvm::rc::Control" = type { %"class.llvm::StringRef", %"class.llvm::rc::IntOrString", i32, i32, i32, i32, i32, %"class.std::optional", %"class.std::optional.102", %"class.std::optional.102", [4 x i8], %"class.llvm::rc::IntOrString" }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload_base.base", [3 x i8] }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<llvm::rc::IntWithNotMask>::_Storage", i8 }>
%"union.std::_Optional_payload_base<llvm::rc::IntWithNotMask>::_Storage" = type { %"class.llvm::rc::IntWithNotMask" }
%"class.llvm::rc::IntWithNotMask" = type { %"class.llvm::rc::RCInt", i32 }
%"class.llvm::rc::RCInt" = type <{ i32, i8, [3 x i8] }>
%"class.std::optional.102" = type { %"struct.std::_Optional_base.103" }
%"struct.std::_Optional_base.103" = type { %"struct.std::_Optional_payload.105" }
%"struct.std::_Optional_payload.105" = type { %"struct.std::_Optional_payload_base.base.107", [3 x i8] }
%"struct.std::_Optional_payload_base.base.107" = type <{ %"union.std::_Optional_payload_base<unsigned int>::_Storage", i8 }>
%"union.std::_Optional_payload_base<unsigned int>::_Storage" = type { i32 }
%"class.llvm::Expected.191" = type <{ %union.anon.192, i8, [7 x i8] }>
%union.anon.192 = type { %"class.llvm::rc::MenuDefinitionList" }
%"class.llvm::rc::MenuDefinitionList" = type { %"class.llvm::rc::MenuDefinition", %"class.std::vector.193" }
%"class.llvm::rc::MenuDefinition" = type { ptr }
%"class.std::vector.193" = type { %"struct.std::_Vector_base.194" }
%"struct.std::_Vector_base.194" = type { %"struct.std::_Vector_base<std::unique_ptr<llvm::rc::MenuDefinition>, std::allocator<std::unique_ptr<llvm::rc::MenuDefinition>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<llvm::rc::MenuDefinition>, std::allocator<std::unique_ptr<llvm::rc::MenuDefinition>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<llvm::rc::MenuDefinition>, std::allocator<std::unique_ptr<llvm::rc::MenuDefinition>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<llvm::rc::MenuDefinition>, std::allocator<std::unique_ptr<llvm::rc::MenuDefinition>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.llvm::Expected.129" = type <{ %union.anon.130, i8, [7 x i8] }>
%union.anon.130 = type { %"class.llvm::rc::VersionInfoResource::VersionInfoFixed" }
%"class.llvm::rc::VersionInfoResource::VersionInfoFixed" = type { [8 x %"class.llvm::SmallVector.131"], %"class.llvm::SmallVector.136" }
%"class.llvm::SmallVector.131" = type { %"class.llvm::SmallVectorImpl.132", %"struct.llvm::SmallVectorStorage.135" }
%"class.llvm::SmallVectorImpl.132" = type { %"class.llvm::SmallVectorTemplateBase.133" }
%"class.llvm::SmallVectorTemplateBase.133" = type { %"class.llvm::SmallVectorTemplateCommon.134" }
%"class.llvm::SmallVectorTemplateCommon.134" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.135" = type { [16 x i8] }
%"class.llvm::SmallVector.136" = type { %"class.llvm::SmallVectorImpl.137", %"struct.llvm::SmallVectorStorage.141" }
%"class.llvm::SmallVectorImpl.137" = type { %"class.llvm::SmallVectorTemplateBase.138" }
%"class.llvm::SmallVectorTemplateBase.138" = type { %"class.llvm::SmallVectorTemplateCommon.139" }
%"class.llvm::SmallVectorTemplateCommon.139" = type { %"class.llvm::SmallVectorBase.140" }
%"class.llvm::SmallVectorBase.140" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.141" = type { [8 x i8] }
%"class.llvm::Expected.143" = type <{ %union.anon.144, i8, [7 x i8] }>
%union.anon.144 = type { %"class.std::unique_ptr.145" }
%"class.std::unique_ptr.145" = type { %"struct.std::__uniq_ptr_data.146" }
%"struct.std::__uniq_ptr_data.146" = type { %"class.std::__uniq_ptr_impl.147" }
%"class.std::__uniq_ptr_impl.147" = type { %"class.std::tuple.148" }
%"class.std::tuple.148" = type { %"struct.std::_Tuple_impl.149" }
%"struct.std::_Tuple_impl.149" = type { %"struct.std::_Head_base.152" }
%"struct.std::_Head_base.152" = type { ptr }
%"class.llvm::Expected.23" = type <{ %union.anon.24, i8, [7 x i8] }>
%union.anon.24 = type { %"class.std::unique_ptr.12" }
%"class.llvm::RCToken" = type { i32, %"class.llvm::StringRef" }
%"class.llvm::Error" = type { ptr }
%class.anon.384 = type { i8 }
%"class.llvm::Expected.52" = type <{ %union.anon.53, i8, [7 x i8] }>
%union.anon.53 = type { %"class.std::unique_ptr.54" }
%"class.std::unique_ptr.54" = type { %"struct.std::__uniq_ptr_data.55" }
%"struct.std::__uniq_ptr_data.55" = type { %"class.std::__uniq_ptr_impl.56" }
%"class.std::__uniq_ptr_impl.56" = type { %"class.std::tuple.57" }
%"class.std::tuple.57" = type { %"struct.std::_Tuple_impl.58" }
%"struct.std::_Tuple_impl.58" = type { %"struct.std::_Head_base.61" }
%"struct.std::_Head_base.61" = type { ptr }
%"class.llvm::Expected.281" = type <{ %union.anon.282, i8, [7 x i8] }>
%union.anon.282 = type { %"class.std::unique_ptr.283" }
%"class.std::unique_ptr.283" = type { %"struct.std::__uniq_ptr_data.284" }
%"struct.std::__uniq_ptr_data.284" = type { %"class.std::__uniq_ptr_impl.285" }
%"class.std::__uniq_ptr_impl.285" = type { %"class.std::tuple.286" }
%"class.std::tuple.286" = type { %"struct.std::_Tuple_impl.287" }
%"struct.std::_Tuple_impl.287" = type { %"struct.std::_Head_base.290" }
%"struct.std::_Head_base.290" = type { ptr }
%"class.llvm::BitVector" = type <{ %"class.llvm::SmallVector.292", i32, [4 x i8] }>
%"class.llvm::SmallVector.292" = type { %"class.llvm::SmallVectorImpl.293", %"struct.llvm::SmallVectorStorage.296" }
%"class.llvm::SmallVectorImpl.293" = type { %"class.llvm::SmallVectorTemplateBase.294" }
%"class.llvm::SmallVectorTemplateBase.294" = type { %"class.llvm::SmallVectorTemplateCommon.295" }
%"class.llvm::SmallVectorTemplateCommon.295" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.296" = type { [48 x i8] }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }

$_ZNK4llvm2rc11IntOrString11equalsLowerEPKc = comdat any

$_ZN4llvm8ExpectedISt10unique_ptrINS_2rc10RCResourceESt14default_deleteIS3_EEEaSEOS7_ = comdat any

$_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_ = comdat any

$_ZN4llvm9BitVector9push_backEb = comdat any

$_ZN4llvm2rc19VersionInfoResource16VersionInfoFixedD2Ev = comdat any

$_ZN4llvm2rc8RCParser11ParserErrorD2Ev = comdat any

$_ZN4llvm2rc8RCParser11ParserErrorD0Ev = comdat any

$_ZNK4llvm2rc8RCParser11ParserError3logERNS_11raw_ostreamE = comdat any

$_ZNK4llvm13ErrorInfoBase7messageB5cxx11Ev = comdat any

$_ZNK4llvm2rc8RCParser11ParserError18convertToErrorCodeEv = comdat any

$_ZNK4llvm9ErrorInfoINS_2rc8RCParser11ParserErrorENS_13ErrorInfoBaseEE14dynamicClassIDEv = comdat any

$_ZNK4llvm9ErrorInfoINS_2rc8RCParser11ParserErrorENS_13ErrorInfoBaseEE3isAEPKv = comdat any

$_ZN4llvm12handleErrorsIJZNS_12consumeErrorENS_5ErrorEEUlRKNS_13ErrorInfoBaseEE_EEES1_S1_DpOT_ = comdat any

$_ZN4llvm9ErrorList4joinENS_5ErrorES1_ = comdat any

$_ZNSt6vectorISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorISt4pairIjS_IN4llvm9StringRefESaIS2_EEESaIS5_EE17_M_realloc_insertIJRjRS4_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZN4llvm15SmallVectorImplIjEaSEOS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseINS_2rc5RCIntELb1EE15growAndPushBackES2_ = comdat any

$_ZN4llvm15SmallVectorImplINS_2rc5RCIntEEaSEOS3_ = comdat any

$_ZN4llvm6detail9join_implIPKNS_9StringRefEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_SB_S2_St20forward_iterator_tag = comdat any

$_ZN4llvm2rc19VersionInfoResource16VersionInfoFixedC2EOS2_ = comdat any

$_ZN4llvm15SmallVectorImplIbEaSEOS1_ = comdat any

$_ZN4llvm15SmallVectorImplImEaSEOS1_ = comdat any

$_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj = comdat any

$_ZTVN4llvm2rc8RCParser11ParserErrorE = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden local_unnamed_addr global ptr @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZTVN4llvm2rc8RCParser11ParserErrorE = linkonce_odr unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr null, ptr @_ZN4llvm2rc8RCParser11ParserErrorD2Ev, ptr @_ZN4llvm2rc8RCParser11ParserErrorD0Ev, ptr @_ZNK4llvm2rc8RCParser11ParserError3logERNS_11raw_ostreamE, ptr @_ZNK4llvm13ErrorInfoBase7messageB5cxx11Ev, ptr @_ZNK4llvm2rc8RCParser11ParserError18convertToErrorCodeEv, ptr @_ZNK4llvm9ErrorInfoINS_2rc8RCParser11ParserErrorENS_13ErrorInfoBaseEE14dynamicClassIDEv, ptr @_ZNK4llvm9ErrorInfoINS_2rc8RCParser11ParserErrorENS_13ErrorInfoBaseEE3isAEPKv, ptr @_ZN4llvm13ErrorInfoBase6anchorEv] }, comdat, align 8
@.str = private unnamed_addr constant [30 x i8] c"Error parsing file: expected \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c", got \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"<EOF>\00", align 1
@_ZN4llvm2rc8RCParser11ParserError2IDE = global i8 0, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"LANGUAGE\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"STRINGTABLE\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ACCELERATORS\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"BITMAP\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CURSOR\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DIALOG\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"DIALOGEX\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HTML\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ICON\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"MENU\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"MENUEX\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"RCDATA\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"VERSIONINFO\00", align 1
@_ZZN4llvm2rc8RCParser13parseIntExpr3EvE8ErrorMsg = internal constant [25 x i8] c"'-', '~', integer or '('\00", align 16
@.str.16 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"int or string\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"int or identifier\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Int\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"Identifier\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"LineComment\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"StartComment\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"'{'\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"'}'\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"','\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"'+'\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"'-'\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"'*'\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"'/'\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"'|'\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"'&'\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"'~'\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"'('\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"')'\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"PRELOAD\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"LOADONCALL\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"FIXED\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"MOVEABLE\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"DISCARDABLE\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"PURE\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"IMPURE\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"SHARED\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"NONSHARED\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"CHARACTERISTICS\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"CAPTION\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"CLASS\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"EXSTYLE\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"FONT\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"STYLE\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"optional statement type, BEGIN or '{'\00", align 1
@_ZN4llvm2rc20AcceleratorsResource11Accelerator10OptionsStrE = external global [6 x %"class.llvm::StringRef"], align 16
@_ZN4llvm2rc20AcceleratorsResource11Accelerator12OptionsFlagsE = external global [6 x i32], align 16
@.str.60 = private unnamed_addr constant [23 x i8] c"filename, '{' or BEGIN\00", align 1
@_ZN4llvm2rc7Control13SupportedCtlsE = external global %"class.llvm::StringMap", align 8
@.str.61 = private unnamed_addr constant [25 x i8] c"control type, END or '}'\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"CONTROL\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"MENUITEM\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"POPUP\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"MENUITEM, POPUP, END or '}'\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"SEPARATOR\00", align 1
@.str.67 = private unnamed_addr constant [20 x i8] c"SEPARATOR or string\00", align 1
@_ZN4llvm2rc14MenuDefinition10OptionsStrE = external global [6 x %"class.llvm::StringRef"], align 16
@_ZN4llvm2rc14MenuDefinition12OptionsFlagsE = external global [6 x i32], align 16
@.str.68 = private unnamed_addr constant [6 x i8] c"BLOCK\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"VALUE\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"BLOCK or VALUE\00", align 1
@.str.71 = private unnamed_addr constant [33 x i8] c"fixed VERSIONINFO statement type\00", align 1
@.str.72 = private unnamed_addr constant [44 x i8] c"yet unread fixed VERSIONINFO statement type\00", align 1
@_ZN4llvm9ErrorList2IDE = external global i8, align 1
@.str.77 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4llvm9ErrorListE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZN4llvm13ErrorInfoBase2IDE = external global i8, align 1
@_ZTVN4llvm2rc16OptionalStmtListE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc18MenuDefinitionListE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.80 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN4llvm2rc20AcceleratorsResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc14CursorResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc14DialogResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc19UserDefinedResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc19VersionInfoResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc16VersionInfoBlockE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm2rc14BitmapResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc12IconResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc12HTMLResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc12MenuResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc14MenuExResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc13MenuSeparatorE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm2rc9PopupItemE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm2rc8MenuItemE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm2rc10MenuExItemE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm2rc11PopupExItemE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4llvm2rc19StringTableResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc16VersionInfoValueE = external unnamed_addr constant { [6 x ptr] }, align 8
@_ZTVN4llvm2rc16LanguageResourceE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc19CharacteristicsStmtE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc11VersionStmtE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc11CaptionStmtE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc9ClassStmtE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc8FontStmtE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc9StyleStmtE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc11ExStyleStmtE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm2rc8MenuStmtE = external unnamed_addr constant { [10 x ptr] }, align 8
@_ZTVN4llvm18raw_string_ostreamE = external unnamed_addr constant { [15 x ptr] }, align 8

@_ZN4llvm2rc8RCParser11ParserErrorC1ERKNS_5TwineEN9__gnu_cxx17__normal_iteratorIPNS_7RCTokenESt6vectorIS8_SaIS8_EEEESD_ = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN4llvm2rc8RCParser11ParserErrorC2ERKNS_5TwineEN9__gnu_cxx17__normal_iteratorIPNS_7RCTokenESt6vectorIS8_SaIS8_EEEESD_
@_ZN4llvm2rc8RCParserC1ESt6vectorINS_7RCTokenESaIS3_EE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4llvm2rc8RCParserC2ESt6vectorINS_7RCTokenESaIS3_EE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2rc8RCParser11ParserErrorC2ERKNS_5TwineEN9__gnu_cxx17__normal_iteratorIPNS_7RCTokenESt6vectorIS8_SaIS8_EEEESD_(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(34) %1, ptr %2, ptr nofree readnone captures(address) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm2rc8RCParser11ParserErrorE, i64 16), ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.d, align 8, !tbaa !27
  store i8 0, ptr %i.c, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(34) %1) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.e = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str, i64 noundef 29) #19, !noalias !159 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !24, !alias.scope !159
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %6, align 8, !tbaa !29, !alias.scope !159
  %i.n = load i64, ptr %i.h, align 8, !tbaa !28
  store i64 %i.n, ptr %i.f, align 8, !tbaa !28, !alias.scope !159
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.o, ptr %i.q, align 8, !tbaa !27, !alias.scope !159
  store ptr %i.h, ptr %i.e, align 8, !tbaa !29
  store i64 0, ptr %i.p, align 8, !tbaa !27
  store i8 0, ptr %i.h, align 8, !tbaa !28
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.r = add i64 %i.o, -4611686018427387898
  %i.s = icmp ult i64 %i.r, 6
  br i1 %i.s, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.c:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #20, !noalias !160
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.t = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1, i64 noundef 6) #19, !noalias !160 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.u, ptr %5, align 8, !tbaa !24, !alias.scope !160
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !29   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.v, ptr %5, align 8, !tbaa !29, !alias.scope !160
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !28
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !28, !alias.scope !160
  %.phi.trans.insert.i3 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.pre.i4 = load i64, ptr %.phi.trans.insert.i3, align 8, !tbaa !27
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  %i.ad = phi i64 [ %i.z, %bb.d ], [ %.pre.i4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2 ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !27, !alias.scope !160
  store ptr %i.w, ptr %i.t, align 8, !tbaa !29
  store i64 0, ptr %i.ae, align 8, !tbaa !27
  store i8 0, ptr %i.w, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.ag = icmp eq ptr %2, %3
  br i1 %i.ag, label %._crit_edge.i.i.i.thread, label %bb.e

._crit_edge.i.i.i.thread:                         ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm2rc8RCParser12readFilenameEv:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit: ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #19
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.b, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread: ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.pre119 = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.h = icmp eq ptr %.pre, %.pre119
  br i1 %i.h, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit7

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit7: ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread
  %i.i = tail call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #19
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %bb.b, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit7._ZN4llvm5ErrorD2Ev.exit_crit_edge

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit7._ZN4llvm5ErrorD2Ev.exit_crit_edge: ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit7
  %.pre125 = load i64, ptr %i.a, align 8, !noalias !791
  %i.k = inttoptr i64 %.pre125 to ptr
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit7._ZN4llvm5ErrorD2Ev.exit_crit_edge, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread
  %i.l = phi ptr [ %i.k, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit7._ZN4llvm5ErrorD2Ev.exit_crit_edge ], [ %.pre, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !59
  store ptr @.str.17, ptr %2, align 8, !tbaa !28
  store i8 3, ptr %i.m, align 8, !tbaa !60
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22, !noalias !792 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !32, !noalias !792
  call void @_ZN4llvm2rc8RCParser11ParserErrorC1ERKNS_5TwineEN9__gnu_cxx17__normal_iteratorIPNS_7RCTokenESt6vectorIS8_SaIS8_EEEESD_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr %i.l, ptr %.sroa.0.0.copyload.i.i.i) #19, !noalias !792
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.p, align 8
  store ptr %i.o, ptr %0, align 8, !tbaa !38, !alias.scope !793
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.j

bb.b:                                             ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit7, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.u = tail call { ptr, i64 } @_ZNK4llvm7RCToken5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #19 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  store ptr %i.v, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.x = extractvalue { ptr, i64 } %i.u, 1
  store i64 %i.x, ptr %i.w, align 8
  %i.y = tail call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #19
  %.not = icmp eq i32 %i.y, 2
  br i1 %.not, label %.preheader, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.thread

.preheader:                                       ; preds = %bb.b
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.thread, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.lr.ph

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.lr.ph: ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 33
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 33
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.2.0..sroa_idx.i.i.i38 = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 33
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.2.0..sroa_idx.i.i.i53 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8: ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.lr.ph, %_ZN4llvmplERKNS_5TwineES2_.exit70
  %i.aq = phi ptr [ %i.z, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.lr.ph ], [ %i.cd, %_ZN4llvmplERKNS_5TwineES2_.exit70 ]
  %i.ar = call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #19
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.c, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.thread

bb.c:                                             ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr %i.au, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.av = call { ptr, i64 } @_ZNK4llvm7RCToken5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.at) #19 ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.av, 0
  store ptr %i.aw, ptr %4, align 8
  %i.ax = extractvalue { ptr, i64 } %i.av, 1
  store i64 %i.ax, ptr %i.ac, align 8
  %i.ay = call noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.18, i64 1) #19 ; 2 uses
  br i1 %i.ay, label %bb.d, label %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit

bb.d:                                             ; preds = %bb.c
  %i.az = load i64, ptr %i.w, align 8, !tbaa !64  ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0
  %.sroa.speculated4.i.i = zext i1 %i.ba to i64   ; 2 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !794
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.speculated4.i.i
  %i.bd = sub i64 %i.az, %.sroa.speculated4.i.i
  store ptr %i.bc, ptr %3, align 8, !tbaa !75
  store i64 %i.bd, ptr %i.w, align 8, !tbaa !30
  br label %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit

_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit: ; preds = %bb.c, %bb.d
  %i.be = call noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.18, i64 1) #19
  br i1 %i.be, label %bb.e, label %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit10

bb.e:                                             ; preds = %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit
  %i.bf = load i64, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  %i.bg = icmp ne i64 %i.bf, 0
  %.sroa.speculated4.i.i9 = zext i1 %i.bg to i64  ; 2 uses
  %i.bh = load ptr, ptr %4, align 8, !tbaa !794
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.speculated4.i.i9
  %i.bj = sub i64 %i.bf, %.sroa.speculated4.i.i9
  store ptr %i.bi, ptr %4, align 8, !tbaa !75
  store i64 %i.bj, ptr %i.ac, align 8, !tbaa !30
  br label %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit10

_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit10: ; preds = %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit, %bb.e
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !64  ; 5 uses
  %.not.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i, label %_ZN4llvm9StringRef12consume_backES0_.exit, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i

_ZNK4llvm9StringRef11starts_withES0_.exit.i:      ; preds = %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit10
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !794 ; 3 uses
  %lhsc = load i8, ptr %.pre.i, align 1
  %i.bl = icmp eq i8 %lhsc, 34
  br i1 %i.bl, label %bb.f, label %_ZN4llvm9StringRef12consume_backES0_.exit

bb.f:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  %i.bn = add i64 %i.bk, -1                       ; 3 uses
  store ptr %i.bm, ptr %3, align 8, !tbaa !75
  store i64 %i.bn, ptr %i.w, align 8, !tbaa !30
  %.not.i.i11 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i11, label %_ZN4llvm9StringRef12consume_backES0_.exit, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i

_ZNK4llvm9StringRef9ends_withES0_.exit.i:         ; preds = %bb.f
  %i.bo = getelementptr i8, ptr %.pre.i, i64 %i.bk
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -1
  %lhsc94 = load i8, ptr %i.bp, align 1
  %i.bq = icmp eq i8 %lhsc94, 34
  br i1 %i.bq, label %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i, label %_ZN4llvm9StringRef12consume_backES0_.exit

_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i:  ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i
  %i.br = add i64 %i.bk, -2                       ; 2 uses
  store i64 %i.br, ptr %i.w, align 8, !tbaa !30
  br label %_ZN4llvm9StringRef12consume_backES0_.exit

_ZN4llvm9StringRef12consume_backES0_.exit:        ; preds = %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit10, %_ZNK4llvm9StringRef11starts_withES0_.exit.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i, %_ZNK4llvm9StringRef9ends_withES0_.exit.i, %bb.f
  %.sroa.22.0.copyload = phi i64 [ 0, %_ZN4llvm9StringRef25consume_front_insensitiveES0_.exit10 ], [ %i.bk, %_ZNK4llvm9StringRef11starts_withES0_.exit.i ], [ %i.br, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i ], [ %i.bn, %_ZNK4llvm9StringRef9ends_withES0_.exit.i ], [ 0, %bb.f ]
  %i.bs = load i64, ptr %i.ac, align 8, !tbaa !64 ; 5 uses
  %.not.i.i13 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i13, label %_ZN4llvm9StringRef12consume_backES0_.exit23, label %_ZNK4llvm9StringRef11starts_withES0_.exit.i15

_ZNK4llvm9StringRef11starts_withES0_.exit.i15:    ; preds = %_ZN4llvm9StringRef12consume_backES0_.exit
  %.pre.i14 = load ptr, ptr %4, align 8, !tbaa !794 ; 3 uses
  %lhsc95 = load i8, ptr %.pre.i14, align 1
  %i.bt = icmp eq i8 %lhsc95, 34
  br i1 %i.bt, label %bb.g, label %_ZN4llvm9StringRef12consume_backES0_.exit23

bb.g:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.i15
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre.i14, i64 1
  %i.bv = add i64 %i.bs, -1                       ; 3 uses
  store ptr %i.bu, ptr %4, align 8, !tbaa !75
  store i64 %i.bv, ptr %i.ac, align 8, !tbaa !30
  %.not.i.i19 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i19, label %_ZN4llvm9StringRef12consume_backES0_.exit23, label %_ZNK4llvm9StringRef9ends_withES0_.exit.i20

_ZNK4llvm9StringRef9ends_withES0_.exit.i20:       ; preds = %bb.g
  %i.bw = getelementptr i8, ptr %.pre.i14, i64 %i.bs
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -1
  %lhsc96 = load i8, ptr %i.bx, align 1
  %i.by = icmp eq i8 %lhsc96, 34
  br i1 %i.by, label %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i22, label %_ZN4llvm9StringRef12consume_backES0_.exit23

_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i22: ; preds = %_ZNK4llvm9StringRef9ends_withES0_.exit.i20
  %i.bz = add i64 %i.bs, -2                       ; 2 uses
  store i64 %i.bz, ptr %i.ac, align 8, !tbaa !30
  br label %_ZN4llvm9StringRef12consume_backES0_.exit23

_ZN4llvm9StringRef12consume_backES0_.exit23:      ; preds = %_ZN4llvm9StringRef12consume_backES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.i15, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i22, %_ZNK4llvm9StringRef9ends_withES0_.exit.i20, %bb.g
  %.sroa.2.0.copyload = phi i64 [ 0, %_ZN4llvm9StringRef12consume_backES0_.exit ], [ %i.bs, %_ZNK4llvm9StringRef11starts_withES0_.exit.i15 ], [ %i.bz, %_ZNK4llvm9StringRef9ends_withES0_.exit.thread.i22 ], [ %i.bv, %_ZNK4llvm9StringRef9ends_withES0_.exit.i20 ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm9StringRef12consume_backES0_.exit23
  store ptr @.str.19, ptr %8, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit70

bb.i:                                             ; preds = %_ZN4llvm9StringRef12consume_backES0_.exit23
  store ptr @.str.18, ptr %8, align 8, !alias.scope !795
  store ptr @.str.19, ptr %i.ae, align 8, !alias.scope !795
  br label %_ZN4llvmplERKNS_5TwineES2_.exit70

_ZN4llvmplERKNS_5TwineES2_.exit70:                ; preds = %bb.h, %bb.i
  %.014.i.i28 = phi i8 [ 3, %bb.h ], [ 2, %bb.i ]
  %.sroa.05.0.i.i29 = phi ptr [ @.str.19, %bb.h ], [ %8, %bb.i ]
  %storemerge = phi i8 [ 1, %bb.h ], [ 3, %bb.i ]
  store i8 3, ptr %i.af, align 8, !tbaa !796
  store i8 %storemerge, ptr %i.ag, align 1, !tbaa !796
  %.sroa.01.0.copyload = load ptr, ptr %3, align 8, !tbaa !75
  store ptr %.sroa.05.0.i.i29, ptr %7, align 8, !alias.scope !797
  store ptr %.sroa.01.0.copyload, ptr %i.aj, align 8, !alias.scope !797
  store i64 %.sroa.22.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i38, align 8, !tbaa !28, !alias.scope !797
  store i8 %.014.i.i28, ptr %i.ah, align 8, !tbaa !60, !alias.scope !797
  store i8 5, ptr %i.ai, align 1, !tbaa !59, !alias.scope !797
  %.sroa.0.0.copyload = load ptr, ptr %4, align 8, !tbaa !75
  store ptr %7, ptr %6, align 8, !alias.scope !798
  store ptr %.sroa.0.0.copyload, ptr %i.am, align 8, !alias.scope !798
  store i64 %.sroa.2.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i.i53, align 8, !tbaa !28, !alias.scope !798
  store i8 2, ptr %i.ak, align 8, !tbaa !60, !alias.scope !798
  store i8 5, ptr %i.al, align 1, !tbaa !59, !alias.scope !798
  store ptr %6, ptr %5, align 8, !alias.scope !799
  store ptr @.str.19, ptr %i.ap, align 8, !alias.scope !799
  store i8 2, ptr %i.an, align 8, !tbaa !60, !alias.scope !799
  store i8 3, ptr %i.ao, align 1, !tbaa !59, !alias.scope !799
  %i.ca = call { ptr, i64 } @_ZN4llvm11StringSaver4saveERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(34) %5) #19 ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0
  %i.cc = extractvalue { ptr, i64 } %i.ca, 1
  store ptr %i.cb, ptr %3, align 8, !tbaa !75
  store i64 %i.cc, ptr %i.w, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.cd = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.thread, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8, !llvm.loop !790

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.thread: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit70, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8, %.preheader, %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = and i8 %i.ch, -2
  store i8 %i.ci, ptr %i.cg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit8.thread, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

declare { ptr, i64 } @_ZN4llvm11StringSaver4saveERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2rc8RCParser14readIdentifierEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.29") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit: ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #19
  %i.g = icmp eq i32 %i.f, 3
  br i1 %i.g, label %bb.b, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit._ZN4llvm5ErrorD2Ev.exit_crit_edge

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit._ZN4llvm5ErrorD2Ev.exit_crit_edge: ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit
  %.pre = load i64, ptr %i.a, align 8, !noalias !808
  %i.h = inttoptr i64 %.pre to ptr
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit._ZN4llvm5ErrorD2Ev.exit_crit_edge, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit._ZN4llvm5ErrorD2Ev.exit_crit_edge ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !59
  store ptr @.str.21, ptr %2, align 8, !tbaa !28
  store i8 3, ptr %i.j, align 8, !tbaa !60
  %i.l = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22, !noalias !809 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !32, !noalias !809
  call void @_ZN4llvm2rc8RCParser11ParserErrorC1ERKNS_5TwineEN9__gnu_cxx17__normal_iteratorIPNS_7RCTokenESt6vectorIS8_SaIS8_EEEESD_(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr %i.i, ptr %.sroa.0.0.copyload.i.i.i) #19, !noalias !809
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i8, ptr %i.m, align 8
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %i.m, align 8
  store ptr %i.l, ptr %0, align 8, !tbaa !38, !alias.scope !810
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.c

bb.b:                                             ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.q, ptr %i.a, align 8, !tbaa !62
  %i.r = tail call { ptr, i64 } @_ZNK4llvm7RCToken5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #19 ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8
  %i.w = and i8 %i.v, -2
  store i8 %i.w, ptr %i.u, align 8
  store ptr %i.s, ptr %0, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN4llvm5ErrorD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm2rc8RCParser15readIntOrStringEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.20") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit: ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #19
  %i.g = icmp eq i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread: ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit
  %.pre = load ptr, ptr %i.a, align 8             ; 3 uses
  %.pre4 = load ptr, ptr %i.b, align 8, !tbaa !32
  %i.h = icmp eq ptr %.pre, %.pre4
  br i1 %i.h, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit1

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit1: ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread
  %i.i = tail call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %.pre) #19
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.b, label %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit1._ZN4llvm5ErrorD2Ev.exit_crit_edge

_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit1._ZN4llvm5ErrorD2Ev.exit_crit_edge: ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit1
  %.pre5 = load i64, ptr %i.a, align 8, !noalias !819
  %i.k = inttoptr i64 %.pre5 to ptr
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit1._ZN4llvm5ErrorD2Ev.exit_crit_edge, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread
  %i.l = phi ptr [ %i.k, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit1._ZN4llvm5ErrorD2Ev.exit_crit_edge ], [ %.pre, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit.thread ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 33
  store i8 1, ptr %i.n, align 1, !tbaa !59
  store ptr @.str.22, ptr %2, align 8, !tbaa !28
  store i8 3, ptr %i.m, align 8, !tbaa !60
  %i.o = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #22, !noalias !820 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !32, !noalias !820
  call void @_ZN4llvm2rc8RCParser11ParserErrorC1ERKNS_5TwineEN9__gnu_cxx17__normal_iteratorIPNS_7RCTokenESt6vectorIS8_SaIS8_EEEESD_(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(34) %2, ptr %i.l, ptr %.sroa.0.0.copyload.i.i.i) #19, !noalias !820
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8
  %i.r = or i8 %i.q, 1
  store i8 %i.r, ptr %i.p, align 8
  store ptr %i.o, ptr %0, align 8, !tbaa !38, !alias.scope !821
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.e

bb.b:                                             ; preds = %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit1, %_ZNK4llvm2rc8RCParser15isNextTokenKindENS_7RCToken4KindE.exit
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !62   ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.t, ptr %i.a, align 8, !tbaa !62
  %i.u = tail call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #19
  %i.v = icmp eq i32 %i.u, 1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = tail call noundef i32 @_ZNK4llvm7RCToken8intValueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #19
  %i.x = tail call noundef zeroext i1 @_ZNK4llvm7RCToken9isLongIntEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #19
  %.sroa.0.0.insert.ext = zext i32 %i.w to i64
  %.sroa.0.4.insert.shift = select i1 %i.x, i64 4294967296, i64 0
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.shift, %.sroa.0.0.insert.ext
  %i.y = inttoptr i64 %.sroa.0.4.insert.insert to ptr
  br label %_ZN4llvm2rc11IntOrStringC2ERKNS_7RCTokenE.exit

bb.d:                                             ; preds = %bb.b
  %i.z = tail call { ptr, i64 } @_ZNK4llvm7RCToken5valueEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #19 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  br label %_ZN4llvm2rc11IntOrStringC2ERKNS_7RCTokenE.exit

_ZN4llvm2rc11IntOrStringC2ERKNS_7RCTokenE.exit:   ; preds = %bb.c, %bb.d
  %.sroa.0.0 = phi ptr [ %i.y, %bb.c ], [ %i.aa, %bb.d ]
  %.sroa.6.0 = phi i64 [ undef, %bb.c ], [ %i.ab, %bb.d ]
  %i.ac = tail call noundef i32 @_ZNK4llvm7RCToken4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %i.s) #19
  %i.ad = icmp eq i32 %i.ac, 1
  %i.ae = zext i1 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = and i8 %i.ag, -2
  store i8 %i.ah, ptr %i.af, align 8
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !28
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.ae, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !55
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm2rc11IntOrStringC2ERKNS_7RCTokenE.exit, %_ZN4llvm5ErrorD2Ev.exit
end_hunk_1
