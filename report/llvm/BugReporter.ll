Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BugReporter?download=true
inline.NumInlined: 7606
inline.NumDeleted: 4207
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.clang::ento::UnsignedMaxEntryPointTranslationUnitStatistic" = type { %"class.clang::ento::UnsignedMaxEPStat", %"class.llvm::TrackingStatistic" }
%"class.clang::ento::UnsignedMaxEPStat" = type <{ %"class.clang::ento::EntryPointStat", i32, [4 x i8] }>
%"class.clang::ento::EntryPointStat" = type { %"class.llvm::StringLiteral" }
%"class.llvm::StringLiteral" = type { %"class.llvm::StringRef" }
%"class.llvm::StringRef" = type { ptr, i64 }
%"class.llvm::TrackingStatistic" = type <{ ptr, ptr, ptr, %"struct.std::atomic", %"struct.std::atomic.0", [7 x i8] }>
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i64 }
%"struct.std::atomic.0" = type { %"struct.std::__atomic_base.1" }
%"struct.std::__atomic_base.1" = type { i8 }
%"class.clang::ento::CounterEntryPointTranslationUnitStat" = type { %"class.clang::ento::CounterEPStat", %"class.llvm::TrackingStatistic" }
%"class.clang::ento::CounterEPStat" = type <{ %"class.clang::ento::EntryPointStat", i32, [4 x i8] }>
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.llvm::FoldingSetBase::FoldingSetInfo" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.clang::ento::EnvironmentEntry" = type { %"struct.std::pair.965" }
%"struct.std::pair.965" = type { ptr, ptr }
%"class.clang::ento::SVal" = type <{ ptr, i8, [7 x i8] }>
%"class.llvm::Twine" = type <{ %"union.llvm::Twine::Child", %"union.llvm::Twine::Child", i8, i8, [6 x i8] }>
%"union.llvm::Twine::Child" = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%"class.clang::ento::PathDiagnosticLocation" = type <{ i32, [4 x i8], ptr, ptr, ptr, %"class.clang::FullSourceLoc", %"class.clang::ento::PathDiagnosticRange", [4 x i8] }>
%"class.clang::FullSourceLoc" = type { %"class.clang::SourceLocation", ptr }
%"class.clang::SourceLocation" = type { i32 }
%"class.clang::ento::PathDiagnosticRange" = type <{ %"class.clang::SourceRange", i8, [3 x i8] }>
%"class.clang::SourceRange" = type { %"class.clang::SourceLocation", %"class.clang::SourceLocation" }
%"class.llvm::FoldingSetNodeID" = type { %"class.llvm::SmallVector.97" }
%"class.llvm::SmallVector.97" = type { %"class.llvm::SmallVectorImpl.98", %"struct.llvm::SmallVectorStorage.101" }
%"class.llvm::SmallVectorImpl.98" = type { %"class.llvm::SmallVectorTemplateBase.99" }
%"class.llvm::SmallVectorTemplateBase.99" = type { %"class.llvm::SmallVectorTemplateCommon.100" }
%"class.llvm::SmallVectorTemplateCommon.100" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { ptr, i32, i32 }
%"struct.llvm::SmallVectorStorage.101" = type { [128 x i8] }
%"struct.std::pair.125" = type <{ ptr, i32, [4 x i8] }>
%"struct.std::pair.120" = type <{ ptr, i32, [4 x i8] }>
%class.anon.1584 = type { i8 }
%class.anon.1574 = type { i8 }
%"class.clang::ento::PathPieces" = type { %"class.std::__cxx11::list" }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<std::shared_ptr<clang::ento::PathDiagnosticPiece>, std::allocator<std::shared_ptr<clang::ento::PathDiagnosticPiece>>>::_List_impl" }
%"struct.std::__cxx11::_List_base<std::shared_ptr<clang::ento::PathDiagnosticPiece>, std::allocator<std::shared_ptr<clang::ento::PathDiagnosticPiece>>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%class.anon = type { ptr, ptr }
%"class.llvm::SmallVector.858" = type { %"class.llvm::SmallVectorImpl.848", %"struct.llvm::SmallVectorStorage.859" }
%"class.llvm::SmallVectorImpl.848" = type { %"class.llvm::SmallVectorTemplateBase.849" }
%"class.llvm::SmallVectorTemplateBase.849" = type { %"class.llvm::SmallVectorTemplateCommon.850" }
%"class.llvm::SmallVectorTemplateCommon.850" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.859" = type { [80 x i8] }
%"class.std::unique_ptr.750" = type { %"struct.std::__uniq_ptr_data.751" }
%"struct.std::__uniq_ptr_data.751" = type { %"class.std::__uniq_ptr_impl.752" }
%"class.std::__uniq_ptr_impl.752" = type { %"class.std::tuple.753" }
%"class.std::tuple.753" = type { %"struct.std::_Tuple_impl.754" }
%"struct.std::_Tuple_impl.754" = type { %"struct.std::_Head_base.757" }
%"struct.std::_Head_base.757" = type { ptr }
%"class.llvm::ArrayRef.873" = type { ptr, i64 }
%"class.std::unique_ptr.894" = type { %"struct.std::__uniq_ptr_data.895" }
%"struct.std::__uniq_ptr_data.895" = type { %"class.std::__uniq_ptr_impl.896" }
%"class.std::__uniq_ptr_impl.896" = type { %"class.std::tuple.897" }
%"class.std::tuple.897" = type { %"struct.std::_Tuple_impl.898" }
%"struct.std::_Tuple_impl.898" = type { %"struct.std::_Head_base.901" }
%"struct.std::_Head_base.901" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.clang::FixItHint" = type <{ %"class.clang::CharSourceRange", %"class.clang::CharSourceRange", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%"class.clang::CharSourceRange" = type <{ %"class.clang::SourceRange", i8, [3 x i8] }>
%"class.std::unique_ptr.793" = type { %"struct.std::__uniq_ptr_data.794" }
%"struct.std::__uniq_ptr_data.794" = type { %"class.std::__uniq_ptr_impl.795" }
%"class.std::__uniq_ptr_impl.795" = type { %"class.std::tuple.796" }
%"class.std::tuple.796" = type { %"struct.std::_Tuple_impl.797" }
%"struct.std::_Tuple_impl.797" = type { %"struct.std::_Head_base.800" }
%"struct.std::_Head_base.800" = type { ptr }
%"class.(anonymous namespace)::PathDiagnosticConstruct" = type { ptr, ptr, %"class.llvm::DenseMap.1208", ptr, %"class.llvm::SmallVector.1210", %"class.std::unique_ptr.793" }
%"class.llvm::DenseMap.1208" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.1210" = type { %"class.llvm::SmallVectorImpl.1211", %"struct.llvm::SmallVectorStorage.1214" }
%"class.llvm::SmallVectorImpl.1211" = type { %"class.llvm::SmallVectorTemplateBase.1212" }
%"class.llvm::SmallVectorTemplateBase.1212" = type { %"class.llvm::SmallVectorTemplateCommon.1213" }
%"class.llvm::SmallVectorTemplateCommon.1213" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.1214" = type { [96 x i8] }
%"class.std::set.1216" = type { %"class.std::_Rb_tree.1217" }
%"class.std::_Rb_tree.1217" = type { %"struct.std::_Rb_tree<llvm::FoldingSetNodeID, llvm::FoldingSetNodeID, std::_Identity<llvm::FoldingSetNodeID>, std::less<llvm::FoldingSetNodeID>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<llvm::FoldingSetNodeID, llvm::FoldingSetNodeID, std::_Identity<llvm::FoldingSetNodeID>, std::less<llvm::FoldingSetNodeID>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.llvm::DenseSet.1227" = type { %"class.llvm::detail::DenseSetImpl.1228" }
%"class.llvm::detail::DenseSetImpl.1228" = type { %"class.llvm::DenseMap.1229" }
%"class.llvm::DenseMap.1229" = type { ptr, ptr, i32, i32 }
%"struct.std::pair.1189" = type { %"class.llvm::SmallSetIterator", i8, [7 x i8] }
%"class.llvm::SmallSetIterator" = type <{ %union.anon.1192, i8, [7 x i8] }>
%union.anon.1192 = type { %"struct.std::_Rb_tree_const_iterator" }
%"struct.std::_Rb_tree_const_iterator" = type { ptr }
%"struct.std::pair.1194" = type { ptr, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple.92" }
%"class.std::tuple.92" = type { %"struct.std::_Tuple_impl.93" }
%"struct.std::_Tuple_impl.93" = type { %"struct.std::_Head_base.96" }
%"struct.std::_Head_base.96" = type { ptr }
%"class.clang::ProgramPoint" = type { ptr, %"class.llvm::PointerIntPair", %"class.llvm::PointerIntPair.2", %"class.llvm::PointerIntPair.4", %"class.clang::CFGBlock::ElementRefImpl" }
%"class.llvm::PointerIntPair" = type { %"struct.llvm::detail::PunnedPointer" }
%"struct.llvm::detail::PunnedPointer" = type { [8 x i8] }
%"class.llvm::PointerIntPair.2" = type { %"struct.llvm::detail::PunnedPointer.3" }
%"struct.llvm::detail::PunnedPointer.3" = type { [8 x i8] }
%"class.llvm::PointerIntPair.4" = type { %"struct.llvm::detail::PunnedPointer.5" }
%"struct.llvm::detail::PunnedPointer.5" = type { [8 x i8] }
%"class.clang::CFGBlock::ElementRefImpl" = type { ptr, i64 }
%"class.llvm::IntrusiveRefCntPtr" = type { ptr }
%"class.llvm::SmallVector.1038" = type { %"class.llvm::SmallVectorImpl.1039", %"struct.llvm::SmallVectorStorage.1042" }
%"class.llvm::SmallVectorImpl.1039" = type { %"class.llvm::SmallVectorTemplateBase.1040" }
%"class.llvm::SmallVectorTemplateBase.1040" = type { %"class.llvm::SmallVectorTemplateCommon.1041" }
%"class.llvm::SmallVectorTemplateCommon.1041" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.1042" = type { [256 x i8] }
%"class.llvm::DenseMap.1043" = type { ptr, ptr, i32, i32 }
%"class.std::unique_ptr.1017" = type { %"struct.std::__uniq_ptr_data.1018" }
%"struct.std::__uniq_ptr_data.1018" = type { %"class.std::__uniq_ptr_impl.1019" }
%"class.std::__uniq_ptr_impl.1019" = type { %"class.std::tuple.1020" }
%"class.std::tuple.1020" = type { %"struct.std::_Tuple_impl.1021" }
%"struct.std::_Tuple_impl.1021" = type { %"struct.std::_Head_base.1024" }
%"struct.std::_Head_base.1024" = type { ptr }
%"class.llvm::SmallPtrSet.1046" = type { %"class.llvm::SmallPtrSetImpl.base.82", [32 x ptr] }
%"class.llvm::SmallPtrSetImpl.base.82" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ ptr, i32, i32, i8 }>
%"class.std::queue" = type { %"class.std::deque.1053" }
%"class.std::deque.1053" = type { %"class.std::_Deque_base.1054" }
%"class.std::_Deque_base.1054" = type { %"struct.std::_Deque_base<const clang::ento::ExplodedNode *, std::allocator<const clang::ento::ExplodedNode *>>::_Deque_impl" }
%"struct.std::_Deque_base<const clang::ento::ExplodedNode *, std::allocator<const clang::ento::ExplodedNode *>>::_Deque_impl" = type { %"struct.std::_Deque_base<const clang::ento::ExplodedNode *, std::allocator<const clang::ento::ExplodedNode *>>::_Deque_impl_data" }
%"struct.std::_Deque_base<const clang::ento::ExplodedNode *, std::allocator<const clang::ento::ExplodedNode *>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.1058", %"struct.std::_Deque_iterator.1058" }
%"struct.std::_Deque_iterator.1058" = type { ptr, ptr, ptr, ptr }
%"struct.std::pair.1063" = type <{ ptr, i32, [4 x i8] }>
%"class.clang::ento::Z3CrosscheckOracle" = type <{ ptr, i32, [4 x i8] }>
%"class.(anonymous namespace)::BugPathGetter" = type { %"class.std::unique_ptr.1017", %"class.llvm::DenseMap.851", %"class.llvm::SmallVector.1025", %"class.(anonymous namespace)::BugPathInfo" }
%"class.llvm::DenseMap.851" = type { ptr, ptr, i32, i32 }
%"class.llvm::SmallVector.1025" = type { %"class.llvm::SmallVectorImpl.1026", %"struct.llvm::SmallVectorStorage.1029" }
%"class.llvm::SmallVectorImpl.1026" = type { %"class.llvm::SmallVectorTemplateBase.1027" }
%"class.llvm::SmallVectorTemplateBase.1027" = type { %"class.llvm::SmallVectorTemplateCommon.1028" }
%"class.llvm::SmallVectorTemplateCommon.1028" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.1029" = type { [512 x i8] }
%"class.(anonymous namespace)::BugPathInfo" = type { %"class.std::unique_ptr.1017", ptr, ptr }
%"class.clang::ento::BugReporterContext" = type { ptr, ptr }
%"class.std::unique_ptr.1030" = type { %"struct.std::__uniq_ptr_data.1031" }
%"struct.std::__uniq_ptr_data.1031" = type { %"class.std::__uniq_ptr_impl.1032" }
%"class.std::__uniq_ptr_impl.1032" = type { %"class.std::tuple.1033" }
%"class.std::tuple.1033" = type { %"struct.std::_Tuple_impl.1034" }
%"struct.std::_Tuple_impl.1034" = type { %"struct.std::_Head_base.1037" }
%"struct.std::_Head_base.1037" = type { ptr }
%"struct.clang::ento::Z3CrosscheckVisitor::Z3Result" = type { %"class.std::optional.912", i32, i32 }
%"class.std::optional.912" = type { %"struct.std::_Optional_base.913" }
%"struct.std::_Optional_base.913" = type { %"struct.std::_Optional_payload.915" }
%"struct.std::_Optional_payload.915" = type { %"struct.std::_Optional_payload_base.916" }
%"struct.std::_Optional_payload_base.916" = type { %"union.std::_Optional_payload_base<bool>::_Storage", i8 }
%"union.std::_Optional_payload_base<bool>::_Storage" = type { %"struct.std::_Optional_payload_base<bool>::_Empty_byte" }
%"struct.std::_Optional_payload_base<bool>::_Empty_byte" = type { i8 }
%"class.std::optional.758" = type { %"struct.std::_Optional_base.759" }
%"struct.std::_Optional_base.759" = type { %"struct.std::_Optional_payload.761" }
%"struct.std::_Optional_payload.761" = type { %"struct.std::_Optional_payload.base.781", [7 x i8] }
%"struct.std::_Optional_payload.base.781" = type { %"struct.std::_Optional_payload_base.base.780" }
%"struct.std::_Optional_payload_base.base.780" = type <{ %"union.std::_Optional_payload_base<(anonymous namespace)::PathDiagnosticBuilder>::_Storage", i8 }>
%"union.std::_Optional_payload_base<(anonymous namespace)::PathDiagnosticBuilder>::_Storage" = type { %"class.(anonymous namespace)::PathDiagnosticBuilder" }
%"class.(anonymous namespace)::PathDiagnosticBuilder" = type { %"class.clang::ento::BugReporterContext", %"class.std::unique_ptr.764", ptr, ptr, %"class.std::unique_ptr.772" }
%"class.std::unique_ptr.764" = type { %"struct.std::__uniq_ptr_data.765" }
%"struct.std::__uniq_ptr_data.765" = type { %"class.std::__uniq_ptr_impl.766" }
%"class.std::__uniq_ptr_impl.766" = type { %"class.std::tuple.767" }
%"class.std::tuple.767" = type { %"struct.std::_Tuple_impl.768" }
%"struct.std::_Tuple_impl.768" = type { %"struct.std::_Head_base.771" }
%"struct.std::_Head_base.771" = type { ptr }
%"class.std::unique_ptr.772" = type { %"struct.std::__uniq_ptr_data.773" }
%"struct.std::__uniq_ptr_data.773" = type { %"class.std::__uniq_ptr_impl.774" }
%"class.std::__uniq_ptr_impl.774" = type { %"class.std::tuple.775" }
%"class.std::tuple.775" = type { %"struct.std::_Tuple_impl.776" }
%"struct.std::_Tuple_impl.776" = type { %"struct.std::_Head_base.779" }
%"struct.std::_Head_base.779" = type { ptr }
%"class.std::unique_ptr.803" = type { %"struct.std::__uniq_ptr_data.804" }
%"struct.std::__uniq_ptr_data.804" = type { %"class.std::__uniq_ptr_impl.805" }
%"class.std::__uniq_ptr_impl.805" = type { %"class.std::tuple.806" }
%"class.std::tuple.806" = type { %"struct.std::_Tuple_impl.807" }
%"struct.std::_Tuple_impl.807" = type { %"struct.std::_Head_base.810" }
%"struct.std::_Head_base.810" = type { ptr }
%"class.llvm::SmallVector.853" = type { %"class.llvm::SmallVectorImpl.854", %"struct.llvm::SmallVectorStorage.857" }
%"class.llvm::SmallVectorImpl.854" = type { %"class.llvm::SmallVectorTemplateBase.855" }
%"class.llvm::SmallVectorTemplateBase.855" = type { %"class.llvm::SmallVectorTemplateCommon.856" }
%"class.llvm::SmallVectorTemplateCommon.856" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.857" = type { [240 x i8] }
%"struct.(anonymous namespace)::FRIEC_WLItem" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.886" = type { %"struct.std::__uniq_ptr_data.887" }
%"struct.std::__uniq_ptr_data.887" = type { %"class.std::__uniq_ptr_impl.888" }
%"class.std::__uniq_ptr_impl.888" = type { %"class.std::tuple.889" }
%"class.std::tuple.889" = type { %"struct.std::_Tuple_impl.890" }
%"struct.std::_Tuple_impl.890" = type { %"struct.std::_Head_base.893" }
%"struct.std::_Head_base.893" = type { ptr }
%"class.llvm::SmallString.1556" = type { %"class.llvm::SmallVector.1557" }
%"class.llvm::SmallVector.1557" = type { %"class.llvm::SmallVectorImpl.952", %"struct.llvm::SmallVectorStorage.1558" }
%"class.llvm::SmallVectorImpl.952" = type { %"class.llvm::SmallVectorTemplateBase.953" }
%"class.llvm::SmallVectorTemplateBase.953" = type { %"class.llvm::SmallVectorTemplateCommon.954" }
%"class.llvm::SmallVectorTemplateCommon.954" = type { %"class.llvm::SmallVectorBase.955" }
%"class.llvm::SmallVectorBase.955" = type { ptr, i64, i64 }
%"struct.llvm::SmallVectorStorage.1558" = type { [200 x i8] }
%"class.llvm::raw_svector_ostream" = type { %"class.llvm::raw_pwrite_stream", ptr }
%"class.llvm::raw_pwrite_stream" = type { %"class.llvm::raw_ostream" }
%"class.llvm::raw_ostream" = type { ptr, i32, ptr, ptr, ptr, i8, i32 }
%"class.llvm::ArrayRef.784" = type { ptr, i64 }
%"class.llvm::ArrayRef" = type { ptr, i64 }
%"class.llvm::ArrayRef.926" = type { ptr, i64 }
%"class.llvm::SmallString" = type { %"class.llvm::SmallVector.951" }
%"class.llvm::SmallVector.951" = type { %"class.llvm::SmallVectorImpl.952", %"struct.llvm::SmallVectorStorage.956" }
%"struct.llvm::SmallVectorStorage.956" = type { [136 x i8] }
%"class.llvm::SmallVector.67" = type { %"class.llvm::SmallVectorImpl.68", %"struct.llvm::SmallVectorStorage.71" }
%"class.llvm::SmallVectorImpl.68" = type { %"class.llvm::SmallVectorTemplateBase.69" }
%"class.llvm::SmallVectorTemplateBase.69" = type { %"class.llvm::SmallVectorTemplateCommon.70" }
%"class.llvm::SmallVectorTemplateCommon.70" = type { %"class.llvm::SmallVectorBase" }
%"struct.llvm::SmallVectorStorage.71" = type { [64 x i8] }
%"class.llvm::DenseMap.1141" = type { ptr, ptr, i32, i32 }
%"class.clang::ento::PathDiagnosticLocationPair" = type { %"class.clang::ento::PathDiagnosticLocation", %"class.clang::ento::PathDiagnosticLocation" }
%"class.llvm::raw_string_ostream" = type { %"class.llvm::raw_ostream", ptr }
%"class.llvm::APSInt" = type { %"class.llvm::APInt.base", i8, [3 x i8] }
%"class.llvm::APInt.base" = type <{ %union.anon.1370, i32 }>
%union.anon.1370 = type { i64 }
%"class.std::shared_ptr.1341" = type { %"class.std::__shared_ptr.1342" }
%"class.std::__shared_ptr.1342" = type { ptr, %"class.std::__shared_count" }
%"class.std::optional.1246" = type { %"struct.std::_Optional_base.1247" }
%"struct.std::_Optional_base.1247" = type { %"struct.std::_Optional_payload.1249" }
%"struct.std::_Optional_payload.1249" = type { %"struct.std::_Optional_payload_base.base.1251", [7 x i8] }
%"struct.std::_Optional_payload_base.base.1251" = type <{ %"union.std::_Optional_payload_base<clang::CallEnter>::_Storage", i8 }>
%"union.std::_Optional_payload_base<clang::CallEnter>::_Storage" = type { %"class.clang::CallEnter" }
%"class.clang::CallEnter" = type { %"class.clang::ProgramPoint" }
%"class.std::optional.1307" = type { %"struct.std::_Optional_base.1308" }
%"struct.std::_Optional_base.1308" = type { %"struct.std::_Optional_payload.1310" }
%"struct.std::_Optional_payload.1310" = type { %"struct.std::_Optional_payload_base.base.1312", [7 x i8] }
%"struct.std::_Optional_payload_base.base.1312" = type <{ %"union.std::_Optional_payload_base<clang::CallExitEnd>::_Storage", i8 }>
%"union.std::_Optional_payload_base<clang::CallExitEnd>::_Storage" = type { %"class.clang::CallExitEnd" }
%"class.clang::CallExitEnd" = type { %"class.clang::ProgramPoint" }
%"class.std::shared_ptr.1315" = type { %"class.std::__shared_ptr.1316" }
%"class.std::__shared_ptr.1316" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.923" = type { %"class.std::__shared_ptr.924" }
%"class.std::__shared_ptr.924" = type { ptr, %"class.std::__shared_count" }
%"class.llvm::SmallVector.1523" = type { %"class.llvm::SmallVectorImpl.1524", %"struct.llvm::SmallVectorStorage.1527" }
%"class.llvm::SmallVectorImpl.1524" = type { %"class.llvm::SmallVectorTemplateBase.1525" }
end_hunk_0
begin_hunk_1_@_ZN5clang4ento22PathSensitiveBugReport18markNotInterestingEPKNS0_7SymExprE:bb.a
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !313
  call void @_ZN5clang4ento22PathSensitiveBugReport18markNotInterestingEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %i.by), !inline_history !333
  br label %_ZN5clang4ento22PathSensitiveBugReport18markNotInterestingEPKNS0_9MemRegionE.exit

_ZN5clang4ento22PathSensitiveBugReport18markNotInterestingEPKNS0_9MemRegionE.exit: ; preds = %bb.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit, %bb.e, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento22PathSensitiveBugReport18markNotInterestingEPKNS0_9MemRegionE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %class.anon.1584, align 1           ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull ptr @_ZNK5clang4ento9MemRegion13getBaseRegionEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !334, !noalias !343
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !340, !noalias !343 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.g = load i32, ptr %i.f, align 4, !tbaa !341, !noalias !343 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.i, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !329
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit, !prof !330

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.ac, %bb.d ], [ %i.p, %bb.c ]
  %.017.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.o, %bb.c ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !342
  %i.z = icmp eq ptr %i.a, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6doFindIS6_EEPSD_RKT_.exit.i, label %bb.d, !prof !227

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.i                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !329
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit, !prof !332

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6doFindIS6_EEPSD_RKT_.exit.i: ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %i.x, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit: ; preds = %bb.d, %bb.b, %bb.c, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E6doFindIS6_EEPSD_RKT_.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !306
  %.not6 = icmp eq i32 %i.ak, 10
  br i1 %.not6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !313
  call void @_ZN5clang4ento22PathSensitiveBugReport18markNotInterestingEPKNS0_7SymExprE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %i.am)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E5eraseERKS6_.exit, %bb.e, %bb.a
  ret void
}

declare noundef nonnull ptr @_ZNK5clang4ento9MemRegion13getBaseRegionEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento22PathSensitiveBugReport15markInterestingENS0_4SValENS0_11bugreporter12TrackingKindE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr %1, i8 %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"struct.std::pair.125", align 8    ; 5 uses
  %5 = alloca %"class.clang::ento::SVal", align 8 ; 4 uses
  store ptr %1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %2, ptr %i.a, align 8
  %i.b = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %5) #29 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_9MemRegionENS0_11bugreporter12TrackingKindE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef nonnull ptr @_ZNK5clang4ento9MemRegion13getBaseRegionEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #29, !inline_history !297 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %i.c, ptr %4, align 8, !tbaa !298
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %3, ptr %i.e, align 8, !tbaa !300
  %i.f = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E24lookupOrInsertIntoBucketIS6_JS8_EEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.e), !noalias !348, !inline_history !297 ; 2 uses
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i8 } %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.g = trunc nuw i8 %.fca.1.extract.i.i.i.i to i1
  %i.h = icmp ne i32 %3, 0
  %or.cond.not.i.i = or i1 %i.h, %i.g
  br i1 %or.cond.not.i.i, label %_ZL26insertToInterestingnessMapIPKN5clang4ento9MemRegionEEvRN4llvm8DenseMapIT_NS1_11bugreporter12TrackingKindENS5_12DenseMapInfoIS7_vEENS5_6detail12DenseMapPairIS7_S9_EEEES7_S9_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i8 } %i.f, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i, i64 8
  store i32 0, ptr %i.i, align 4, !tbaa !289
  br label %_ZL26insertToInterestingnessMapIPKN5clang4ento9MemRegionEEvRN4llvm8DenseMapIT_NS1_11bugreporter12TrackingKindENS5_12DenseMapInfoIS7_vEENS5_6detail12DenseMapPairIS7_S9_EEEES7_S9_.exit.i

_ZL26insertToInterestingnessMapIPKN5clang4ento9MemRegionEEvRN4llvm8DenseMapIT_NS1_11bugreporter12TrackingKindENS5_12DenseMapInfoIS7_vEENS5_6detail12DenseMapPairIS7_S9_EEEES7_S9_.exit.i: ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !306
  %.not10.i = icmp eq i32 %i.k, 10
  br i1 %.not10.i, label %bb.d, label %_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_9MemRegionENS0_11bugreporter12TrackingKindE.exit

bb.d:                                             ; preds = %_ZL26insertToInterestingnessMapIPKN5clang4ento9MemRegionEEvRN4llvm8DenseMapIT_NS1_11bugreporter12TrackingKindENS5_12DenseMapInfoIS7_vEENS5_6detail12DenseMapPairIS7_S9_EEEES7_S9_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !313
  call void @_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_7SymExprENS0_11bugreporter12TrackingKindE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %i.m, i32 noundef %3), !inline_history !297
  br label %_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_9MemRegionENS0_11bugreporter12TrackingKindE.exit

_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_9MemRegionENS0_11bugreporter12TrackingKindE.exit: ; preds = %bb.a, %_ZL26insertToInterestingnessMapIPKN5clang4ento9MemRegionEEvRN4llvm8DenseMapIT_NS1_11bugreporter12TrackingKindENS5_12DenseMapInfoIS7_vEENS5_6detail12DenseMapPairIS7_S9_EEEES7_S9_.exit.i, %bb.d
  %i.n = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %5, i1 noundef zeroext false) #29
  call void @_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_7SymExprENS0_11bugreporter12TrackingKindE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %i.n, i32 noundef %3)
  ret void
}

declare noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #5

declare noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN4llvm15SmallPtrSetImplIPKN5clang10StackFrameEE6insertES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load i8, ptr %i.b, align 8, !tbaa !217, !range !128, !noalias !353, !noundef !129
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !214, !noalias !353 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 564 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !216, !noalias !353 ; 4 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i ; 2 uses
  %.not22.i.i = icmp eq i32 %i.g, 0
  br i1 %.not22.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.critedge.i.i
  %.023.i.i = phi ptr [ %i.k, %.critedge.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %.023.i.i, align 8, !tbaa !10, !noalias !353
  %.not15.i.i = icmp eq ptr %i.j, %1
  br i1 %.not15.i.i, label %_ZN4llvm15SmallPtrSetImplIPKN5clang10StackFrameEE6insertES4_.exit, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, %i.i
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.m = load i32, ptr %i.l, align 8, !tbaa !215, !noalias !353
  %i.n = icmp ult i32 %i.g, %i.m
  br i1 %i.n, label %bb.d, label %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.o = add nuw i32 %i.g, 1
  store i32 %i.o, ptr %i.f, align 4, !tbaa !216, !noalias !353
  store ptr %1, ptr %i.i, align 8, !tbaa !10, !noalias !353
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang10StackFrameEE6insertES4_.exit

_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %._crit_edge.i.i, %bb.b
  %i.p = tail call { ptr, i8 } @_ZN4llvm19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(17) %i.a, ptr noundef nonnull %1) #29, !noalias !353 ; 0 uses
  br label %_ZN4llvm15SmallPtrSetImplIPKN5clang10StackFrameEE6insertES4_.exit

_ZN4llvm15SmallPtrSetImplIPKN5clang10StackFrameEE6insertES4_.exit: ; preds = %.lr.ph.i.i, %_ZN4llvm19SmallPtrSetImplBase10insert_impEPKv.exit.i, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindENS0_4SValE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1000) %0, ptr %1, i8 %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.clang::ento::SVal", align 8 ; 4 uses
  %.sroa.05 = alloca i64, align 8                 ; 5 uses
  %.sroa.0 = alloca i64, align 8                  ; 5 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  %i.b = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %3) #29
  %i.c = call i64 @_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_9MemRegionE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %i.b) ; 3 uses
  store i64 %i.c, ptr %.sroa.05, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.d = call noundef ptr @_ZNK5clang4ento4SVal11getAsSymbolEb(ptr noundef nonnull align 8 dereferenceable(9) %3, i1 noundef zeroext false) #29 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !321, !noalias !356 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !327, !noalias !356 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.j = load i32, ptr %i.i, align 4, !tbaa !328, !noalias !356 ; 4 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.j, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.l, %i.q                       ; 3 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 5
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !329, !noalias !365
  %i.w = and i32 %i.r, 31
  %i.x = lshr i32 %i.v, %i.w
  %i.y = trunc i32 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !330

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %i.z = phi i64 [ %i.af, %bb.d ], [ %i.s, %bb.c ]
  %.017.i.i.i.i = phi i32 [ %i.ae, %bb.d ], [ %i.r, %bb.c ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !331, !noalias !365
  %i.ac = icmp eq ptr %i.d, %i.ab
  br i1 %i.ac, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i, label %bb.d, !prof !227

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = add nuw i32 %.017.i.i.i.i, 1
  %i.ae = and i32 %i.ad, %i.l                     ; 3 uses
  %i.af = zext i32 %i.ae to i64                   ; 2 uses
  %i.ag = lshr i64 %i.af, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !329, !noalias !365
  %i.aj = and i32 %i.ae, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !332

.loopexit.i.i.i:                                  ; preds = %bb.d, %bb.c, %bb.b
  %i.am = zext i32 %i.j to i64                    ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.am
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.j to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i ], [ %i.am, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.aa, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i ], [ %i.an, %.loopexit.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.pre-phi.i
  %i.ap = icmp eq ptr %.lcssa.sink.i.i.i, %i.ao
  br i1 %i.ap, label %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !289
  %i.as = zext i32 %i.ar to i64
  %i.at = or disjoint i64 %i.as, 4294967296
  br label %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit

_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit: ; preds = %bb.a, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i, %bb.e
  %.sroa.2.1.i = phi i64 [ 0, %bb.a ], [ %i.at, %bb.e ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i ] ; 2 uses
  store i64 %.sroa.2.1.i, ptr %.sroa.0, align 8
  %.not = icmp samesign ult i64 %i.c, 4294967296
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit
  %i.au = and i64 %.sroa.2.1.i, 4294967296
  %.not10 = icmp eq i64 %i.au, 0
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = and i64 %i.c, 4294967295
  %i.aw = icmp eq i64 %i.av, 0
  %. = select i1 %i.aw, ptr %.sroa.05, ptr %.sroa.0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit
  %.sroa.0.0.in = phi ptr [ %., %bb.g ], [ %.sroa.05, %bb.f ], [ %.sroa.0, %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit ]
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  ret i64 %.sroa.0.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_9MemRegionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull ptr @_ZNK5clang4ento9MemRegion13getBaseRegionEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #29 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !334, !noalias !366 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !340, !noalias !366 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.g = load i32, ptr %i.f, align 4, !tbaa !341, !noalias !366 ; 4 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.i, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %i.p, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !329, !noalias !375
  %i.t = and i32 %i.o, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !330

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.w = phi i64 [ %i.ac, %bb.d ], [ %i.p, %bb.c ]
  %.017.i.i.i = phi i32 [ %i.ab, %bb.d ], [ %i.o, %bb.c ]
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !342, !noalias !375
  %i.z = icmp eq ptr %i.a, %i.y
  br i1 %i.z, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit, label %bb.d, !prof !227

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = add nuw i32 %.017.i.i.i, 1
  %i.ab = and i32 %i.aa, %i.i                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !329, !noalias !375
  %i.ag = and i32 %i.ab, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i.i.i, label %.loopexit.i.i, !prof !332

.loopexit.i.i:                                    ; preds = %bb.d, %bb.c, %bb.b
  %i.aj = zext i32 %i.g to i64                    ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.aj
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre = zext i32 %i.g to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit ], [ %i.aj, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.x, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit ], [ %i.ak, %.loopexit.i.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.pre-phi
  %.not16 = icmp eq ptr %.lcssa.sink.i.i, %i.al
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.an = load i32, ptr %i.am, align 4, !tbaa !289
  br label %.critedge

bb.f:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento9MemRegionENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !306
  %.not17 = icmp eq i32 %i.ap, 10
  br i1 %.not17, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !313 ; 3 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !321, !noalias !376 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !327, !noalias !376 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 524
end_hunk_1
begin_hunk_2_@_ZL32generateEmptyDiagnosticForReportPKN5clang4ento22PathSensitiveBugReportERKNS_13SourceManagerEPKNS_4DeclE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !tbaa !23
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.aa = load ptr, ptr %1, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1000) %1) #29
  %i.ad = load ptr, ptr %1, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef ptr %i.af(ptr noundef nonnull align 8 dereferenceable(1000) %1) #29
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 488
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !151 ; 2 uses
  %i.aj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32, !noalias !1824 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aj, i8 0, i64 32, i1 false), !noalias !1824
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !221, !noalias !1824
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.ak, ptr %i.am, align 16, !tbaa !222, !noalias !1824
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 0, ptr %i.an, align 8, !tbaa !223, !noalias !1824
  %.not48.i = icmp eq ptr %i.ai, null
  br i1 %.not48.i, label %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5clang4ento7BugType14getCheckerNameEv.exit, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i
  %.049.i = phi ptr [ %i.cp, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i ], [ %i.ai, %_ZNK5clang4ento7BugType14getCheckerNameEv.exit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.049.i, i64 64 ; 4 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !826, !noalias !1829 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  %i.ar = trunc i64 %i.ap to i1
  %spec.select.i.i.i.i.i = or i1 %i.aq, %i.ar
  br i1 %spec.select.i.i.i.i.i, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.thread.i, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i

_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i: ; preds = %.lr.ph.i
  %i.as = call noundef ptr @_ZNK5clang4ento12ExplodedNode9NodeGroup5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #29, !noalias !1829
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !828, !noalias !1829
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.thread.i, label %bb.d

_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.thread.i: ; preds = %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i, %.lr.ph.i
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.049.i, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !25, !noalias !1829
  %i.av = and i64 %.sroa.3.0.copyload.i.i, -8
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !200, !noalias !1829
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !231, !noalias !1829
  call fastcc void @_ZL42populateExecutedLinesWithFunctionSignaturePKN5clang4DeclERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1829
  br label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i

bb.d:                                             ; preds = %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.049.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !1830
  %i.bc = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.049.i, i64 24 ; 3 uses
  %.0.copyload.i.i.i5.i.i.i.i.i = load i64, ptr %i.bd, align 8, !noalias !1830
  %i.be = trunc i64 %.0.copyload.i.i.i5.i.i.i.i.i to i32
  %i.bf = shl i32 %i.bc, 3
  %i.bg = and i32 %i.bf, 48
  %i.bh = shl i32 %i.be, 1
  %i.bi = and i32 %i.bh, 12
  %i.bj = or disjoint i32 %i.bi, %i.bg
  %i.bk = getelementptr inbounds nuw i8, ptr %.049.i, i64 16
  %.0.copyload.i.i.i6.i.i.i.i.i = load i64, ptr %i.bk, align 8, !noalias !1830 ; 2 uses
  %i.bl = trunc i64 %.0.copyload.i.i.i6.i.i.i.i.i to i32
  %i.bm = and i32 %i.bl, 3
  %i.bn = or disjoint i32 %i.bj, %i.bm
  %i.bo = icmp eq i32 %i.bn, 15
  br i1 %i.bo, label %bb.e, label %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.bp = and i64 %.0.copyload.i.i.i6.i.i.i.i.i, -4
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !200, !noalias !1829
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !231, !noalias !1829
  call fastcc void @_ZL42populateExecutedLinesWithFunctionSignaturePKN5clang4DeclERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef %i.bu, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1829
  br label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i

_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit.i: ; preds = %bb.d
  %i.bv = call noundef ptr @_ZNK5clang4ento12ExplodedNode21getStmtForDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(88) %.049.i) #29, !noalias !1829 ; 3 uses
  %.not24.i = icmp eq ptr %i.bv, null
  br i1 %.not24.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit.i
  call fastcc void @_ZL29populateExecutedLinesWithStmtPKN5clang4StmtERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef nonnull %i.bv, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1829
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %i.bd, align 8, !tbaa !25, !noalias !1829
  %i.bw = and i64 %.sroa.3.0.copyload.i.i.i, -8
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !200, !noalias !1829
  %i.ca = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280) %i.bz) #29, !noalias !1829
  %i.cb = call noundef ptr @_ZNK5clang9ParentMap9getParentEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull %i.bv) #29, !noalias !1829 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = load i16, ptr %i.cb, align 8, !noalias !1829
  %i.cd = and i16 %i.cc, 511                      ; 2 uses
  %i.ce = icmp eq i16 %i.cd, 144
  br i1 %i.ce, label %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i

_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i: ; preds = %bb.g
  call fastcc void @_ZL29populateExecutedLinesWithStmtPKN5clang4StmtERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef nonnull %i.cb, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1829
  %.sroa.3.0.copyload.i.i27.i = load i64, ptr %i.bd, align 8, !tbaa !25, !noalias !1829
  %i.cf = and i64 %.sroa.3.0.copyload.i.i27.i, -8
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !200, !noalias !1829
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280) %i.ci) #29, !noalias !1829
  %i.ck = call noundef ptr @_ZNK5clang9ParentMap9getParentEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull %i.cb) #29, !noalias !1829 ; 3 uses
  %.not.i.i28.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i28.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i

_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i
  %.pre.i = load i16, ptr %i.ck, align 8, !noalias !1829
  %.pre50.i = and i16 %.pre.i, 511
  br label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i

_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i, %bb.g
  %.pre-phi.i = phi i16 [ %.pre50.i, %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i ], [ %i.cd, %bb.g ]
  %.03547.i = phi ptr [ %i.ck, %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread._ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit_crit_edge.i ], [ %i.cb, %bb.g ]
  switch i16 %.pre-phi.i, label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i [
    i16 138, label %bb.h
    i16 137, label %bb.h
    i16 2, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i, %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i, %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i
  call fastcc void @_ZL29populateExecutedLinesWithStmtPKN5clang4StmtERKNS_13SourceManagerERSt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEES9_IS7_ESaISt4pairIKS7_SC_EEE(ptr noundef %.03547.i, ptr noundef nonnull align 8 dereferenceable(776) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.aj), !noalias !1829
  br label %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i

_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i: ; preds = %bb.h, %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.i, %_ZN4llvm16dyn_cast_or_nullIN5clang10ReturnStmtEKNS1_4StmtEEEDaPT0_.exit.thread.i, %bb.f, %_ZNKR5clang4ento12ExplodedNode13getLocationAsINS_9CallEnterEEESt8optionalIT_Ev.exit.i, %bb.e, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.thread.i
  %i.cl = load i64, ptr %i.ao, align 8, !tbaa !826, !noalias !1829 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 0
  %i.cn = trunc i64 %i.cl to i1
  %spec.select.i.i.i.i31.i = or i1 %i.cm, %i.cn
  br i1 %spec.select.i.i.i.i31.i, label %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i

_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i: ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i
  %i.co = call noundef ptr @_ZNK5clang4ento12ExplodedNode9NodeGroup5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #29, !noalias !1829
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !828, !noalias !1829 ; 2 uses
  %.not.i = icmp eq ptr %i.cp, null
  br i1 %.not.i, label %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit, label %.lr.ph.i, !llvm.loop !1835

_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit: ; preds = %_ZN4llvm15isa_and_nonnullIJN5clang10SwitchCaseENS1_9LabelStmtEEPKNS1_4StmtEEEbRKT0_.exit.thread.i, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit32.i, %_ZNK5clang4ento7BugType14getCheckerNameEv.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.cq = call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #32, !noalias !1836 ; 2 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !112, !noalias !1836
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.r, ptr %.sroa.427.0..sroa_idx, align 8, !tbaa !113, !noalias !1836
  store ptr %i.v, ptr %5, align 8, !tbaa !112, !noalias !1836
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %.sroa.425.0..sroa_idx, align 8, !tbaa !113, !noalias !1836
  store ptr %i.x, ptr %6, align 8, !tbaa !112, !noalias !1836
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.z, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !113, !noalias !1836
  %i.cr = ptrtoint ptr %i.aj to i64
  store i64 %i.cr, ptr %7, align 8, !tbaa !1133, !noalias !1836
  call void @_ZN5clang4ento14PathDiagnosticC1EN4llvm9StringRefEPKNS_4DeclES3_S3_S3_S3_NS0_22PathDiagnosticLocationES6_S6_St10unique_ptrISt3mapINS_6FileIDESt3setIjSt4lessIjESaIjEESC_ISA_ESaISt4pairIKSA_SF_EEESt14default_deleteISL_EE(ptr noundef nonnull align 8 dereferenceable(480) %i.cq, ptr %.sroa.0.1.i, i64 %.sroa.3.1.i, ptr noundef %i.j, ptr %i.l, i64 %i.n, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %4, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %5, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %8, ptr noundef %i.ag, ptr noundef %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %7) #29, !noalias !1836
  store ptr %i.cq, ptr %0, align 8, !tbaa !1021, !alias.scope !1836
  %i.cs = load ptr, ptr %7, align 8, !tbaa !1133, !noalias !1836 ; 4 uses
  %.not.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEESt14default_deleteISD_EED2Ev.exit, label %_ZNKSt14default_deleteISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEEEclEPSD_.exit.i.i

_ZNKSt14default_deleteISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEEEclEPSD_.exit.i.i: ; preds = %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !220, !noalias !1836
  call void @_ZNSt8_Rb_treeIN5clang6FileIDESt4pairIKS1_St3setIjSt4lessIjESaIjEEESt10_Select1stIS9_ES5_IS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, ptr noundef %i.cu), !noalias !1836
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef 48) #30, !noalias !1836
  br label %_ZNSt10unique_ptrISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEESt14default_deleteISD_EED2Ev.exit

_ZNSt10unique_ptrISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEESt14default_deleteISD_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteISt3mapIN5clang6FileIDESt3setIjSt4lessIjESaIjEES4_IS2_ESaISt4pairIKS2_S7_EEEEclEPSD_.exit.i.i, %_ZL17findExecutedLinesRKN5clang13SourceManagerEPKNS_4ento12ExplodedNodeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  ret void
}

declare void @_ZN5clang4ento18BugReporterVisitor17getDefaultEndPathERKNS0_18BugReporterContextEPKNS0_12ExplodedNodeERKNS0_22PathSensitiveBugReportE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_121PathDiagnosticBuilder30generatePathDiagnosticsForNodeERNS_23PathDiagnosticConstructERN5clang4ento22PathDiagnosticLocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(60) %2) unnamed_addr #3 align 2 {
bb.a:
  %.sroa.8508 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.9527 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %.sroa.8477 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.9494 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %3 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %4 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %5 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %6 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %.sroa.891.i.i = alloca [32 x i8], align 4      ; 7 uses
  %.sroa.996.i.i = alloca [21 x i8], align 4      ; 7 uses
  %.sroa.10101.i.i = alloca [7 x i8], align 1     ; 7 uses
  %.sroa.8.i.i = alloca [32 x i8], align 4        ; 7 uses
  %.sroa.9.i.i = alloca [21 x i8], align 4        ; 7 uses
  %.sroa.10.i.i = alloca [7 x i8], align 1        ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.llvm::raw_string_ostream", align 8 ; 21 uses
  %9 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 16 uses
  %10 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %11 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 16 uses
  %12 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %13 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 16 uses
  %14 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %15 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 16 uses
  %16 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %17 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %18 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %.sroa.072.i.i = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %19 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 8 uses
  %.sroa.14.i.i = alloca <{ %"class.clang::ento::PathDiagnosticRange", [4 x i8] }>, align 8 ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.llvm::raw_string_ostream", align 8 ; 25 uses
  %22 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 14 uses
  %23 = alloca %"class.clang::FullSourceLoc", align 8 ; 5 uses
  %24 = alloca %"class.clang::FullSourceLoc", align 8 ; 5 uses
  %25 = alloca %"class.llvm::APSInt", align 8     ; 7 uses
  %26 = alloca %"class.clang::FullSourceLoc", align 8 ; 5 uses
  %27 = alloca %"class.clang::ento::PathDiagnosticLocationPair", align 8 ; 5 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %30 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %31 = alloca %"class.clang::FullSourceLoc", align 8 ; 5 uses
  %32 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 13 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %35 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.llvm::raw_string_ostream", align 8 ; 15 uses
  %38 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %39 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %41 = alloca %"class.llvm::raw_string_ostream", align 8 ; 12 uses
  %42 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %43 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %44 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %45 = alloca %"class.std::shared_ptr.1341", align 16 ; 7 uses
  %46 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %47 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.llvm::raw_string_ostream", align 8 ; 14 uses
  %50 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %51 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %52 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 6 uses
  %53 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %54 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %55 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %56 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %57 = alloca %"class.std::shared_ptr.1341", align 16 ; 7 uses
  %.sroa.8440 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.9461 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %.sroa.8404 = alloca [28 x i8], align 4         ; 2 uses
  %.sroa.9422 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %.sroa.8375 = alloca [28 x i8], align 4         ; 3 uses
  %.sroa.9 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %.sroa.22 = alloca %"class.clang::CFGBlock::ElementRefImpl", align 8 ; 5 uses
  %58 = alloca %"class.std::optional.1246", align 8 ; 10 uses
  %59 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %60 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %61 = alloca %"class.std::optional.1307", align 8 ; 11 uses
  %62 = alloca %"class.std::shared_ptr.1315", align 8 ; 8 uses
  %63 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 14 uses
  %64 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 13 uses
  %65 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %66 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %67 = alloca %"class.llvm::StringRef", align 8  ; 8 uses
  %68 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  %69 = alloca %"class.std::shared_ptr.923", align 16 ; 8 uses
  %70 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 2 uses
  %71 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  %72 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.22)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 23 uses
  %.val120 = load ptr, ptr %i.d, align 8, !tbaa !1350 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val120, i64 8
  %.sroa.0336.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !10 ; 17 uses
  %.sroa.7339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val120, i64 16
  %.sroa.7339.0.copyload = load i64, ptr %.sroa.7339.0..sroa_idx, align 8, !tbaa !25 ; 8 uses
  %.sroa.13344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val120, i64 24
  %.sroa.13344.0.copyload = load i64, ptr %.sroa.13344.0..sroa_idx, align 8, !tbaa !25 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val120, i64 32
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.val120, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx, i64 16, i1 false), !tbaa.struct !1839
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1320, !nonnull !129, !align !278
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !983, !nonnull !129, !align !278 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #29, !inline_history !1840 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #29
  %i.n = trunc i64 %.sroa.18.0.copyload to i32
  %i.o = trunc i64 %.sroa.13344.0.copyload to i32
  %i.p = shl i32 %i.n, 3
  %i.q = and i32 %i.p, 48                         ; 2 uses
  %i.r = shl i32 %i.o, 1
  %i.s = and i32 %i.r, 12                         ; 2 uses
  %i.t = trunc i64 %.sroa.7339.0.copyload to i32  ; 2 uses
  %i.u = and i32 %i.t, 3
  %i.v = or disjoint i32 %i.s, %i.u
  %i.w = or disjoint i32 %i.v, %i.q               ; 3 uses
  %i.x = icmp eq i32 %i.w, 15
  br i1 %i.x, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  store ptr %.sroa.0336.0.copyload, ptr %58, align 8
  %.sroa.7339.0..sroa_idx340 = getelementptr inbounds nuw i8, ptr %58, i64 8
  store i64 %.sroa.7339.0.copyload, ptr %.sroa.7339.0..sroa_idx340, align 8
  %.sroa.13344.0..sroa_idx345 = getelementptr inbounds nuw i8, ptr %58, i64 16
  store i64 %.sroa.13344.0.copyload, ptr %.sroa.13344.0..sroa_idx345, align 8
  %.sroa.18.0..sroa_idx349 = getelementptr inbounds nuw i8, ptr %58, i64 24
  store i64 %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx349, align 8
  %.sroa.22.0..sroa_idx353 = getelementptr inbounds nuw i8, ptr %58, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx353, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22, i64 16, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %58, i64 48
  store i8 1, ptr %i.y, align 8, !tbaa !1841, !alias.scope !1843
  %.val124 = load ptr, ptr %1, align 8, !tbaa !1341 ; 2 uses
  %i.z = load ptr, ptr %.val124, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %.val124) #29, !inline_history !1846
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.c, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = and i64 %.sroa.7339.0.copyload, -4
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !200
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !231 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(33) %i.aj) #29
  br i1 %i.an, label %bb.d, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val137 = load ptr, ptr %i.ao, align 8, !tbaa !1021 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val137, i64 352
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %.val137, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit

bb.f:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.val137, i64 344
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !109
  %i.au = zext i32 %i.aq to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit: ; preds = %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.ar, %bb.e ], [ %i.ax, %bb.f ] ; 2 uses
  call void @_ZN5clang4ento22PathDiagnosticLocation11createBeginEPKNS_4DeclERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %59, ptr noundef nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(776) %i.m) #29
  %i.ay = load i64, ptr %59, align 8              ; 2 uses
  %.sroa.5356.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %59, i64 8
  %.sroa.5356.0.copyload358 = load ptr, ptr %.sroa.5356.0..sroa_idx357, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %59, i64 16
  %.sroa.6.0.copyload362 = load ptr, ptr %.sroa.6.0..sroa_idx361, align 8 ; 2 uses
  %.sroa.6365.0..sroa_idx366 = getelementptr inbounds nuw i8, ptr %59, i64 24
  %.sroa.6365.0.copyload367 = load ptr, ptr %.sroa.6365.0..sroa_idx366, align 8 ; 3 uses
  %.sroa.7370.0..sroa_idx371 = getelementptr inbounds nuw i8, ptr %59, i64 32
  %.sroa.7370.0.copyload372 = load i32, ptr %.sroa.7370.0..sroa_idx371, align 8 ; 3 uses
  %.sroa.8375.0..sroa_idx376 = getelementptr inbounds nuw i8, ptr %59, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8375, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8375.0..sroa_idx376, i64 28, i1 false)
  %.not27.i = icmp eq ptr %.sroa.6365.0.copyload367, null
  %i.az = icmp eq i32 %.sroa.7370.0.copyload372, 0
  %or.cond31.i = select i1 %.not27.i, i1 true, i1 %i.az
  br i1 %or.cond31.i, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !279
  %.not28.i = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i8.i = load i32, ptr %i.bc, align 8
  %.not29.i = icmp eq i32 %.sroa.0.0.copyload.i8.i, 0
  %or.cond32.i = select i1 %.not28.i, i1 true, i1 %.not29.i
  br i1 %or.cond32.i, label %.sink.split.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp ne ptr %.sroa.5356.0.copyload358, null
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %.sroa.5356.0.copyload358, %i.be
  %or.cond.i = select i1 %.not.i, i1 %i.bf, i1 false
  br i1 %or.cond.i, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.h
  %i.bg = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !1847 ; 8 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 1, ptr %i.bh, align 8, !tbaa !1067, !noalias !1852
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 1, ptr %i.bi, align 4, !tbaa !1069, !noalias !1852
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bg, align 8, !tbaa !8, !noalias !1852
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.bj, i32 noundef 0, i32 noundef 1) #29, !noalias !1852
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.bj, align 8, !tbaa !8, !noalias !1852
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false), !noalias !1852
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !1852
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 152
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  %i.bn = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !1852 ; 9 uses
  store i64 %i.ay, ptr %i.bn, align 8, !noalias !1852
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %.sroa.5356.0.copyload358, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1852
  %.sroa.5379.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store ptr %.sroa.6.0.copyload362, ptr %.sroa.5379.0..sroa_idx, align 8, !noalias !1852
  %.sroa.6380.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  store ptr %.sroa.6365.0.copyload367, ptr %.sroa.6380.0..sroa_idx, align 8, !noalias !1852
  %.sroa.7381.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store i32 %.sroa.7370.0.copyload372, ptr %.sroa.7381.0..sroa_idx, align 8, !noalias !1852
  %.sroa.8382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8382.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8375, i64 28, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9, i64 64, i1 false), !noalias !1852
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 128 ; 2 uses
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !1392, !noalias !1852
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !1395, !noalias !1852
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !1396, !noalias !1852
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.bp = load ptr, ptr %.0.i.i, align 8, !tbaa !1050
  %i.bq = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.bj, ptr %i.br, align 8, !tbaa !1058
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.bg, ptr %i.bs, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef %i.bp) #29
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !1066
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !1066
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.g
  store i64 %i.ay, ptr %2, align 8
  %.sroa.5356.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.5356.0.copyload358, ptr %.sroa.5356.0..sroa_idx359, align 8
  %.sroa.6.0..sroa_idx363 = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_2
begin_hunk_3_@_ZNK12_GLOBAL__N_121PathDiagnosticBuilder30generatePathDiagnosticsForNodeERNS_23PathDiagnosticConstructERN5clang4ento22PathDiagnosticLocationE:bb.a
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit155

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit155: ; preds = %bb.j, %bb.k
  %.0.i.i154 = phi ptr [ %i.cb, %bb.j ], [ %i.ch, %bb.k ]
  %i.ci = load ptr, ptr %.0.i.i154, align 8, !tbaa !1050
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1058
  br label %bb.n

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit158: ; preds = %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit
  %i.cl = and i64 %.sroa.13344.0.copyload, -8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !200
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !231
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bx, i64 320
  %i.cs = call noundef ptr @_ZN5clang4ento23PathDiagnosticCallPiece9constructERNS0_10PathPiecesEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef %i.cq) #29 ; 2 uses
  %.val134 = load ptr, ptr %i.bw, align 8, !tbaa !1021 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val134, i64 352
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i159 = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i159, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit158
  %i.cv = getelementptr inbounds nuw i8, ptr %.val134, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit158
  %i.cw = getelementptr inbounds nuw i8, ptr %.val134, i64 344
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !109
  %i.cy = zext i32 %i.cu to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161: ; preds = %bb.l, %bb.m
  %.0.i.i160 = phi ptr [ %i.cv, %bb.l ], [ %i.db, %bb.m ]
  %.val142 = load ptr, ptr %i.d, align 8, !tbaa !1350
  %i.dc = getelementptr i8, ptr %.val142, i64 24
  %.val142.val = load i64, ptr %i.dc, align 8, !tbaa !25
  %i.dd = and i64 %.val142.val, -8
  %i.de = inttoptr i64 %i.dd to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.0.i.i160, ptr %i.c, align 8, !tbaa !1064
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dg = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento10PathPiecesEPKNS2_10StackFrameENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.dg, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.di = getelementptr inbounds nuw i8, ptr %i.cs, i64 376
  %i.dj = and i64 %.sroa.7339.0.copyload, -4
  %i.dk = inttoptr i64 %i.dj to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.di, ptr %i.b, align 8, !tbaa !1064
  %i.dl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento10PathPiecesEPKNS2_10StackFrameENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i163 = extractvalue { ptr, i8 } %i.dl, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i163, i64 8
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.n:                                             ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit155
  %.0100 = phi ptr [ %i.ck, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit155 ], [ %i.cs, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit161 ] ; 3 uses
  call void @_ZN5clang4ento23PathDiagnosticCallPiece9setCalleeERKNS_9CallEnterERKNS_13SourceManagerE(ptr noundef nonnull align 8 dereferenceable(400) %.0100, ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull align 8 dereferenceable(776) %i.m) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #29
  %i.dn = load ptr, ptr %.0100, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %60, ptr noundef nonnull align 8 dereferenceable(400) %.0100) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef nonnull align 8 dereferenceable(60) %60, i64 60, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #29
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !111 ; 2 uses
  %.not.i164 = icmp eq i32 %i.dr, 0
  br i1 %.not.i164, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !111
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  br label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.q:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #29
  %i.dt = icmp eq i32 %i.w, 17
  br i1 %i.dt, label %bb.r, label %bb.ak

bb.r:                                             ; preds = %bb.q
  store ptr %.sroa.0336.0.copyload, ptr %61, align 8
  %.sroa.7339.0..sroa_idx342 = getelementptr inbounds nuw i8, ptr %61, i64 8
  store i64 %.sroa.7339.0.copyload, ptr %.sroa.7339.0..sroa_idx342, align 8
  %.sroa.13344.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %61, i64 16
  store i64 %.sroa.13344.0.copyload, ptr %.sroa.13344.0..sroa_idx347, align 8
  %.sroa.18.0..sroa_idx351 = getelementptr inbounds nuw i8, ptr %61, i64 24
  store i64 %.sroa.18.0.copyload, ptr %.sroa.18.0..sroa_idx351, align 8
  %.sroa.22.0..sroa_idx354 = getelementptr inbounds nuw i8, ptr %61, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22.0..sroa_idx354, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22, i64 16, i1 false)
  %i.du = getelementptr inbounds nuw i8, ptr %61, i64 48
  store i8 1, ptr %i.du, align 8, !tbaa !1853, !alias.scope !1855
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #29
  call void @_ZN5clang4ento23PathDiagnosticCallPiece9constructERKNS_11CallExitEndERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1315") align 8 %62, ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull align 8 dereferenceable(776) %i.m) #29
  %i.dv = load ptr, ptr %62, align 8, !tbaa !1858
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 376
  %i.dx = load ptr, ptr %61, align 8, !tbaa !1860
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dw, ptr %i.a, align 8, !tbaa !1064
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento10PathPiecesEPKNS2_10StackFrameENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E24lookupOrInsertIntoBucketIRKS6_JEEESt4pairIPSE_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.dy, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.fca.0.extract.i.i169 = extractvalue { ptr, i8 } %i.dz, 0
  %i.ea = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i169, i64 8
  store ptr %i.dx, ptr %i.ea, align 8, !tbaa !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val123 = load ptr, ptr %1, align 8, !tbaa !1341 ; 2 uses
  %i.eb = load ptr, ptr %.val123, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = call noundef i32 %i.ed(ptr noundef nonnull align 8 dereferenceable(32) %.val123) #29, !inline_history !1846
  %i.ef = icmp sgt i32 %i.ee, 1
  br i1 %i.ef, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val133 = load ptr, ptr %i.eg, align 8, !tbaa !1021 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val133, i64 352
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i170 = icmp eq i32 %i.ei, 0
  br i1 %.not.i.i.i170, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %.val133, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172

bb.u:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %.val133, i64 344
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !109
  %i.em = zext i32 %i.ei to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.em
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172: ; preds = %bb.t, %bb.u
  %.0.i.i171 = phi ptr [ %i.ej, %bb.t ], [ %i.ep, %bb.u ] ; 2 uses
  %i.eq = load ptr, ptr %62, align 8, !tbaa !1858 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 312
  %i.es = load i64, ptr %i.er, align 8
  %.sroa.2408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 320 ; 2 uses
  %i.et = load <2 x ptr>, ptr %.sroa.2408.0..sroa_idx, align 8
  %.sroa.2408.0.copyload = load ptr, ptr %.sroa.2408.0..sroa_idx, align 8 ; 2 uses
  %.sroa.4409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 336
  %.sroa.4409.0.copyload = load ptr, ptr %.sroa.4409.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 344
  %.sroa.5410.0.copyload = load i32, ptr %.sroa.5410.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8404, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6411.0..sroa_idx, i64 28, i1 false)
  %.not27.i173 = icmp eq ptr %.sroa.4409.0.copyload, null
  %i.eu = icmp eq i32 %.sroa.5410.0.copyload, 0
  %or.cond31.i175 = select i1 %.not27.i173, i1 true, i1 %i.eu
  br i1 %or.cond31.i175, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184, label %bb.v

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !279
  %.not28.i176 = icmp eq ptr %i.ew, null
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.0.0.copyload.i8.i177 = load i32, ptr %i.ex, align 8
  %.not29.i178 = icmp eq i32 %.sroa.0.0.copyload.i8.i177, 0
  %or.cond32.i179 = select i1 %.not28.i176, i1 true, i1 %.not29.i178
  br i1 %or.cond32.i179, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not.i180 = icmp ne ptr %.sroa.2408.0.copyload, null
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = icmp eq ptr %.sroa.2408.0.copyload, %i.ez
  %or.cond.i181 = select i1 %.not.i180, i1 %i.fa, i1 false
  br i1 %or.cond.i181, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182: ; preds = %bb.w
  %i.fb = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !1861 ; 8 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store i32 1, ptr %i.fc, align 8, !tbaa !1067, !noalias !1866
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  store i32 1, ptr %i.fd, align 4, !tbaa !1069, !noalias !1866
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fb, align 8, !tbaa !8, !noalias !1866
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.fe, i32 noundef 0, i32 noundef 1) #29, !noalias !1866
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.fe, align 8, !tbaa !8, !noalias !1866
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i8 0, i64 24, i1 false), !noalias !1866
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9422)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9422, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !1866
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 152
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fb, i64 160
  %i.fi = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !1866 ; 8 uses
  store i64 %i.es, ptr %i.fi, align 8, !noalias !1866
  %.sroa.4413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store <2 x ptr> %i.et, ptr %.sroa.4413.0..sroa_idx, align 8, !noalias !1866
  %.sroa.6415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  store ptr %.sroa.4409.0.copyload, ptr %.sroa.6415.0..sroa_idx, align 8, !noalias !1866
  %.sroa.7416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 32
  store i32 %.sroa.5410.0.copyload, ptr %.sroa.7416.0..sroa_idx, align 8, !noalias !1866
  %.sroa.8417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8417.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8404, i64 28, i1 false)
  %.sroa.9418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9418.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9422, i64 64, i1 false), !noalias !1866
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 128 ; 2 uses
  store ptr %i.fi, ptr %i.ff, align 8, !tbaa !1392, !noalias !1866
  store ptr %i.fj, ptr %i.fg, align 8, !tbaa !1395, !noalias !1866
  store ptr %i.fj, ptr %i.fh, align 8, !tbaa !1396, !noalias !1866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9422)
  %i.fk = load ptr, ptr %.0.i.i171, align 8, !tbaa !1050
  %i.fl = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store ptr %i.fe, ptr %i.fm, align 8, !tbaa !1058
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store ptr %i.fb, ptr %i.fn, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, ptr noundef %i.fk) #29
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i171, i64 16 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !1066
  %i.fq = add i64 %i.fp, 1
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !1066
  br label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184

_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184: ; preds = %bb.v, %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i182, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit172, %bb.w
  %.sroa.5.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.5.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx, i8 0, i64 28, i1 false)
  %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx.i.sroa_idx, i8 0, i64 17, i1 false)
  store i32 1, ptr %2, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.0..sroa_idx.i, i8 0, i64 3, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit184, %bb.r
  %i.fr = load ptr, ptr %62, align 8, !tbaa !1858 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %.val132 = load ptr, ptr %i.fs, align 8, !tbaa !1021 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val132, i64 352
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i185 = icmp eq i32 %i.fu, 0
  br i1 %.not.i.i.i185, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %.val132, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.z:                                             ; preds = %bb.x
  %i.fw = getelementptr inbounds nuw i8, ptr %.val132, i64 344
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !109
  %i.fy = zext i32 %i.fu to i64
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 -8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !1064
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %bb.y
  %.0.i.i186 = phi ptr [ %i.fv, %bb.y ], [ %i.gb, %bb.z ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1065
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  %i.ge = load ptr, ptr %.0.i.i186, align 8, !tbaa !1050
  %i.gf = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr %i.fr, ptr %i.gg, align 8, !tbaa !1058
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store ptr %i.gd, ptr %i.gh, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef %i.ge) #29
  %i.gi = getelementptr inbounds nuw i8, ptr %.0.i.i186, i64 16 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !1066
  %i.gk = add i64 %i.gj, 1
  store i64 %i.gk, ptr %i.gi, align 8, !tbaa !1066
  %i.gl = load ptr, ptr %i.fs, align 8, !tbaa !1021 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fr, i64 376 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 344 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 352 ; 3 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !111 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 356
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !150
  %.not.i.i190 = icmp ult i32 %i.gp, %i.gr
  br i1 %.not.i.i190, label %bb.ab, label %bb.aa, !prof !227

bb.aa:                                            ; preds = %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseIPN5clang4ento10PathPiecesELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull %i.gm)
  br label %_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit

bb.ab:                                            ; preds = %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.gs = zext i32 %i.gp to i64
  %i.gt = load ptr, ptr %i.gn, align 8, !tbaa !109
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gs
  store ptr %i.gm, ptr %i.gu, align 1
  %i.gv = load i32, ptr %i.go, align 8, !tbaa !111
  %i.gw = add i32 %i.gv, 1
  store i32 %i.gw, ptr %i.go, align 8, !tbaa !111
  br label %_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit

_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit: ; preds = %bb.aa, %bb.ab
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.val119 = load ptr, ptr %i.d, align 8, !tbaa !1350 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !111 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !150
  %.not.i191 = icmp ult i32 %i.gz, %i.hb
  br i1 %.not.i191, label %bb.ad, label %bb.ac, !prof !227

bb.ac:                                            ; preds = %_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE15growAndPushBackES9_(ptr noundef nonnull align 8 dereferenceable(16) %i.gx, ptr %i.fr, ptr %.val119)
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit

bb.ad:                                            ; preds = %_ZN5clang4ento14PathDiagnostic14pushActivePathEPNS0_10PathPiecesE.exit
  %i.hc = zext i32 %i.gz to i64
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !109
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hc ; 2 uses
  store ptr %i.fr, ptr %i.he, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %.val119, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.hf = load i32, ptr %i.gy, align 8, !tbaa !111
  %i.hg = add i32 %i.hf, 1
  store i32 %i.hg, ptr %i.gy, align 8, !tbaa !111
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit: ; preds = %bb.ac, %bb.ad
  %i.hh = load ptr, ptr %i.gc, align 8, !tbaa !1065 ; 8 uses
  %.not.i.i192 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i192, label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 4 uses
  %i.hj = load atomic i64, ptr %i.hi acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.hi, align 8, !tbaa !1067
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %i.hm, align 4, !tbaa !1069
  %i.hn = load ptr, ptr %i.hh, align 8, !tbaa !8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8
  call void %i.hp(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #29, !inline_history !1867
  %i.hq = load ptr, ptr %i.hh, align 8, !tbaa !8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #29, !inline_history !1867
  br label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ht = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i193 = icmp eq i8 %i.ht, 0
  br i1 %.not.i.i.i193, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hu = add nsw i32 %i.hl, -1
  store i32 %i.hu, ptr %i.hi, align 8, !tbaa !329
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194

bb.ai:                                            ; preds = %bb.ag
  %i.hv = atomicrmw volatile add ptr %i.hi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i195 = phi i32 [ %i.hl, %bb.ah ], [ %i.hv, %bb.ai ]
  %i.hw = icmp eq i32 %.0.i.i.i.i195, 1
  br i1 %i.hw, label %bb.aj, label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !228

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hh) #29
  br label %_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento23PathDiagnosticCallPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang4ento23PathDiagnosticCallPieceEPKNS3_12ExplodedNodeEELb1EE9push_backES9_.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i194, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  br label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.ak:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #29
  %i.hx = and i32 %i.t, 2
  %i.hy = add nuw nsw i32 %i.hx, -6
  %i.hz = add nsw i32 %i.hy, %i.s
  %i.ia = add nsw i32 %i.hz, %i.q
  %i.ib = icmp ult i32 %i.ia, 8
  br i1 %i.ib, label %bb.al, label %_ZNK5clang12ProgramPoint5getAsINS_8PostStmtEEESt8optionalIT_Ev.exit

bb.al:                                            ; preds = %bb.ak
  %.val122 = load ptr, ptr %1, align 8, !tbaa !1341 ; 2 uses
  %i.ic = load ptr, ptr %.val122, align 8, !tbaa !8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = tail call noundef i32 %i.ie(ptr noundef nonnull align 8 dereferenceable(32) %.val122) #29, !inline_history !1846
  %i.ig = icmp sgt i32 %i.if, 1
  br i1 %i.ig, label %bb.am, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ih = load i16, ptr %.sroa.0336.0.copyload, align 8
  %i.ii = and i16 %i.ih, 511
  %i.ij = icmp eq i16 %i.ii, 159
  br i1 %i.ij, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #29
  %.val141 = load ptr, ptr %i.d, align 8, !tbaa !1350
  %i.ik = getelementptr i8, ptr %.val141, i64 24
  %.val141.val = load i64, ptr %i.ik, align 8, !tbaa !25
  %i.il = and i64 %.val141.val, -8                ; 2 uses
  %i.im = tail call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0336.0.copyload) #31
  %.not.i200 = icmp eq i32 %i.im, 0               ; 2 uses
  %i.in = select i1 %.not.i200, i32 1, i32 2
  store i32 %i.in, ptr %63, align 8, !tbaa !824
  %i.io = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.ip = select i1 %.not.i200, ptr null, ptr %.sroa.0336.0.copyload
  store ptr %i.ip, ptr %i.io, align 8, !tbaa !832
  %i.iq = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  store ptr null, ptr %i.iq, align 8, !tbaa !833
  %i.ir = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.ir, align 8, !tbaa !279
  %i.is = getelementptr inbounds nuw i8, ptr %63, i64 32 ; 2 uses
  %i.it = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %63, i32 0, i64 %i.il) #29 ; 2 uses
  %i.iu = extractvalue { i32, ptr } %i.it, 0
  store i32 %i.iu, ptr %i.is, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %63, i64 40
  %i.iw = extractvalue { i32, ptr } %i.it, 1
  store ptr %i.iw, ptr %i.iv, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %63, i64 48
  %i.iy = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %63, i64 %i.il) #29 ; 2 uses
  %.fca.0.extract.i = extractvalue { i64, i8 } %i.iy, 0
  %.fca.1.extract.i = extractvalue { i64, i8 } %i.iy, 1
  store i64 %.fca.0.extract.i, ptr %i.ix, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %63, i64 56
  store i8 %.fca.1.extract.i, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val131 = load ptr, ptr %i.iz, align 8, !tbaa !1021 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val131, i64 352
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i201 = icmp eq i32 %i.jb, 0
  br i1 %.not.i.i.i201, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jc = getelementptr inbounds nuw i8, ptr %.val131, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203

bb.ap:                                            ; preds = %bb.an
  %i.jd = getelementptr inbounds nuw i8, ptr %.val131, i64 344
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !109
  %i.jf = zext i32 %i.jb to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jf
  %i.jh = getelementptr inbounds i8, ptr %i.jg, i64 -8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203: ; preds = %bb.ao, %bb.ap
  %.0.i.i202 = phi ptr [ %i.jc, %bb.ao ], [ %i.ji, %bb.ap ] ; 2 uses
  %i.jj = load i64, ptr %63, align 8              ; 2 uses
  %.sroa.2444.0.copyload = load ptr, ptr %i.io, align 8 ; 4 uses
  %.sroa.3445.0.copyload = load ptr, ptr %i.iq, align 8 ; 2 uses
  %.sroa.4446.0.copyload = load ptr, ptr %i.ir, align 8 ; 3 uses
  %.sroa.5447.0.copyload = load i32, ptr %i.is, align 8 ; 3 uses
  %.sroa.6448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %63, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8440, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6448.0..sroa_idx, i64 28, i1 false)
  %.not27.i204 = icmp eq ptr %.sroa.4446.0.copyload, null
  %i.jk = icmp eq i32 %.sroa.5447.0.copyload, 0
  %or.cond31.i206 = select i1 %.not27.i204, i1 true, i1 %i.jk
  br i1 %or.cond31.i206, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit215, label %bb.aq

bb.aq:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !279
  %.not28.i207 = icmp eq ptr %i.jm, null
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i8.i208 = load i32, ptr %i.jn, align 8
  %.not29.i209 = icmp eq i32 %.sroa.0.0.copyload.i8.i208, 0
  %or.cond32.i210 = select i1 %.not28.i207, i1 true, i1 %.not29.i209
  br i1 %or.cond32.i210, label %.sink.split.i214, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.i211 = icmp ne ptr %.sroa.2444.0.copyload, null
  %i.jo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8
  %i.jq = icmp eq ptr %.sroa.2444.0.copyload, %i.jp
  %or.cond.i212 = select i1 %.not.i211, i1 %i.jq, i1 false
  br i1 %or.cond.i212, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit215, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i213

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i213: ; preds = %bb.ar
  %i.jr = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !1868 ; 8 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store i32 1, ptr %i.js, align 8, !tbaa !1067, !noalias !1873
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 12
  store i32 1, ptr %i.jt, align 4, !tbaa !1069, !noalias !1873
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.jr, align 8, !tbaa !8, !noalias !1873
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.ju, i32 noundef 0, i32 noundef 1) #29, !noalias !1873
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.ju, align 8, !tbaa !8, !noalias !1873
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jv, i8 0, i64 24, i1 false), !noalias !1873
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9461)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9461, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !1873
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 152
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 160
  %i.jy = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !1873 ; 9 uses
  store i64 %i.jj, ptr %i.jy, align 8, !noalias !1873
  %.sroa.4450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store ptr %.sroa.2444.0.copyload, ptr %.sroa.4450.0..sroa_idx, align 8, !noalias !1873
  %.sroa.5451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store ptr %.sroa.3445.0.copyload, ptr %.sroa.5451.0..sroa_idx, align 8, !noalias !1873
  %.sroa.6452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  store ptr %.sroa.4446.0.copyload, ptr %.sroa.6452.0..sroa_idx, align 8, !noalias !1873
  %.sroa.7453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 32
  store i32 %.sroa.5447.0.copyload, ptr %.sroa.7453.0..sroa_idx, align 8, !noalias !1873
  %.sroa.8454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8454.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8440, i64 28, i1 false)
  %.sroa.9455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jy, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9461, i64 64, i1 false), !noalias !1873
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 128 ; 2 uses
  store ptr %i.jy, ptr %i.jv, align 8, !tbaa !1392, !noalias !1873
  store ptr %i.jz, ptr %i.jw, align 8, !tbaa !1395, !noalias !1873
  store ptr %i.jz, ptr %i.jx, align 8, !tbaa !1396, !noalias !1873
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9461)
  %i.ka = load ptr, ptr %.0.i.i202, align 8, !tbaa !1050
  %i.kb = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store ptr %i.ju, ptr %i.kc, align 8, !tbaa !1058
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store ptr %i.jr, ptr %i.kd, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.kb, ptr noundef %i.ka) #29
  %i.ke = getelementptr inbounds nuw i8, ptr %.0.i.i202, i64 16 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !1066
  %i.kg = add i64 %i.kf, 1
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !1066
  br label %.sink.split.i214

.sink.split.i214:                                 ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i213, %bb.aq
  store i64 %i.jj, ptr %2, align 8
  %.sroa.5420.0..sroa_idx423 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.2444.0.copyload, ptr %.sroa.5420.0..sroa_idx423, align 8
  %.sroa.6425.0..sroa_idx428 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.3445.0.copyload, ptr %.sroa.6425.0..sroa_idx428, align 8
  store ptr %.sroa.4446.0.copyload, ptr %i.jl, align 8
  store i32 %.sroa.5447.0.copyload, ptr %i.jn, align 8
  %.sroa.8440.0..sroa_idx442 = getelementptr inbounds nuw i8, ptr %2, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.8440.0..sroa_idx442, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.8440, i64 24, i1 false)
  br label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit215

_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit215: ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit203, %bb.ar, %.sink.split.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #29
  br label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

_ZNK5clang12ProgramPoint5getAsINS_8PostStmtEEESt8optionalIT_Ev.exit: ; preds = %bb.ak
  %i.kh = icmp eq i32 %i.w, 0
  br i1 %i.kh, label %bb.as, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.as:                                            ; preds = %_ZNK5clang12ProgramPoint5getAsINS_8PostStmtEEESt8optionalIT_Ev.exit
  %.val145 = load ptr, ptr %1, align 8, !tbaa !1341 ; 4 uses
  %i.ki = load ptr, ptr %.val145, align 8, !tbaa !8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 40
  %i.kk = load ptr, ptr %i.kj, align 8
  %i.kl = tail call noundef i32 %i.kk(ptr noundef nonnull align 8 dereferenceable(32) %.val145) #29, !inline_history !1874
  %i.km = icmp eq i32 %i.kl, 1
  br i1 %i.km, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit

_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit: ; preds = %bb.as
  %i.kn = load ptr, ptr %.val145, align 8, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 40
  %i.kp = load ptr, ptr %i.ko, align 8
  %i.kq = tail call noundef i32 %i.kp(ptr noundef nonnull align 8 dereferenceable(32) %.val145) #29, !inline_history !1874
  %i.kr = icmp eq i32 %i.kq, 3
  br i1 %i.kr, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread, label %bb.ey

_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread: ; preds = %bb.as, %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.ks = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 2 uses
  %i.kt = load ptr, ptr %i.f, align 8, !tbaa !1320, !nonnull !129, !align !278
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !983, !nonnull !129, !align !278 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load ptr, ptr %i.kx, align 8
  %i.kz = tail call noundef nonnull align 8 dereferenceable(776) ptr %i.ky(ptr noundef nonnull align 8 dereferenceable(8) %i.kv) #29, !inline_history !1875
  %i.la = and i64 %.sroa.7339.0.copyload, -4
  %i.lb = inttoptr i64 %i.la to ptr               ; 7 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 32
  %.0.copyload.i.i.i.i.i96.i = load i64, ptr %i.lc, align 8
  %i.ld = and i64 %.0.copyload.i.i.i.i.i96.i, -8  ; 2 uses
  %i.le = inttoptr i64 %i.ld to ptr               ; 9 uses
  %.not.i220 = icmp eq i64 %i.ld, 0
  br i1 %.not.i220, label %_ZNK12_GLOBAL__N_121PathDiagnosticBuilder31generateMinimalDiagForBlockEdgeERNS_23PathDiagnosticConstructEN5clang9BlockEdgeE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread
  %.val94.i = load ptr, ptr %i.d, align 8, !tbaa !1350
  %i.lf = getelementptr i8, ptr %.val94.i, i64 24
  %.val94.val.i = load i64, ptr %i.lf, align 8, !tbaa !25
  %i.lg = and i64 %.val94.val.i, -8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #29
  call void @_ZN5clang4ento22PathDiagnosticLocation11createBeginEPKNS_4StmtERKNS_13SourceManagerEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %32, ptr noundef nonnull %i.le, ptr noundef nonnull align 8 dereferenceable(776) %i.kz, i64 %i.lg) #29
  %i.lh = load i16, ptr %i.le, align 8
  %i.li = and i16 %i.lh, 511
  switch i16 %i.li, label %bb.ex [
    i16 251, label %bb.au
    i16 249, label %bb.au
    i16 136, label %bb.ba
    i16 248, label %bb.bx
    i16 247, label %bb.bx
    i16 133, label %bb.ca
    i16 132, label %bb.ca
    i16 122, label %bb.cn
    i16 253, label %bb.dp
    i16 1, label %bb.ea
    i16 252, label %bb.ea
    i16 250, label %bb.en
  ]

bb.au:                                            ; preds = %bb.at, %bb.at
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !1350
  %i.lj = call noundef ptr @_ZNK5clang4ento12ExplodedNode25getNextStmtForDiagnosticsEv(ptr noundef nonnull align 8 dereferenceable(88) %.val.i) #29 ; 2 uses
  %.not76.i = icmp eq ptr %i.lj, null
  br i1 %.not76.i, label %bb.ex, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.val87.i = load ptr, ptr %i.lk, align 8, !tbaa !1021 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.val87.i, i64 352
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.lm, 0
  br i1 %.not.i.i.i.i, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ln = getelementptr inbounds nuw i8, ptr %.val87.i, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.lo = getelementptr inbounds nuw i8, ptr %.val87.i, i64 344
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !109
  %i.lq = zext i32 %i.lm to i64
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lq
  %i.ls = getelementptr inbounds i8, ptr %i.lr, i64 -8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i = phi ptr [ %i.ln, %bb.aw ], [ %i.lt, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #29, !noalias !1876
  %i.lu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.lu, ptr %28, align 8, !tbaa !20, !noalias !1876
  %i.lv = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 0, ptr %i.lv, align 8, !tbaa !23, !noalias !1876
  store i8 0, ptr %i.lu, align 8, !tbaa !25, !noalias !1876
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #29, !noalias !1876
  %i.lw = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i32 0, ptr %i.lw, align 8, !tbaa !1533, !noalias !1876
  %i.lx = getelementptr inbounds nuw i8, ptr %29, i64 40
  store i8 0, ptr %i.lx, align 8, !tbaa !1537, !noalias !1876
  %i.ly = getelementptr inbounds nuw i8, ptr %29, i64 44
  store i32 1, ptr %i.ly, align 4, !tbaa !1538, !noalias !1876
  %i.lz = getelementptr inbounds nuw i8, ptr %29, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lz, i8 0, i64 24, i1 false), !noalias !1876
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %29, align 8, !tbaa !8, !noalias !1876
  %i.ma = getelementptr inbounds nuw i8, ptr %29, i64 48
  store ptr %28, ptr %i.ma, align 8, !tbaa !985, !noalias !1876
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %29, ptr noundef null, i64 noundef 0, i32 noundef 0) #29, !noalias !1876
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #29, !noalias !1876
  %.val.i.i = load ptr, ptr %i.d, align 8, !tbaa !1350, !noalias !1876
  %i.mb = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load i64, ptr %i.mb, align 8, !tbaa !25, !noalias !1876
  %i.mc = and i64 %.val.val.i.i, -8
  %i.md = inttoptr i64 %i.mc to ptr
  call fastcc void @_ZL24getEnclosingStmtLocationPKN5clang4StmtEPKNS_10StackFrameEb(ptr dead_on_unwind noalias writable align 8 %30, ptr noundef nonnull %i.lj, ptr noundef %i.md, i1 noundef zeroext false), !noalias !1876
  %i.me = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !1541, !noalias !1876
  %i.mg = getelementptr inbounds nuw i8, ptr %29, i64 32 ; 3 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !1542, !noalias !1876 ; 2 uses
  %i.mi = ptrtoint ptr %i.mf to i64
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = sub i64 %i.mi, %i.mj
  %i.ml = icmp ult i64 %i.mk, 22
  br i1 %i.ml, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i
  %i.mm = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str.40, i64 noundef 22) #29, !noalias !1876
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.az:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.mh, ptr noundef nonnull align 1 dereferenceable(22) @.str.40, i64 22, i1 false), !noalias !1876
  %i.mn = load ptr, ptr %i.mg, align 8, !tbaa !1542, !noalias !1876
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 22
  store ptr %i.mo, ptr %i.mg, align 8, !tbaa !1542, !noalias !1876
  br label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i223 = phi ptr [ %i.mm, %bb.ay ], [ %29, %bb.az ]
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #29, !noalias !1876
  %i.mp = getelementptr inbounds nuw i8, ptr %30, i64 32
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.mp, align 8, !noalias !1876
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 40
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !noalias !1876
  store i32 %.sroa.0.0.copyload.i.i.i, ptr %31, align 8, !noalias !1876
  %i.mq = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.mq, align 8, !noalias !1876
  %i.mr = call noundef i32 @_ZNK5clang13FullSourceLoc22getExpansionLineNumberEPb(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef null) #29, !noalias !1876
  %i.ms = zext i32 %i.mr to i64
  %i.mt = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i223, i64 noundef %i.ms) #29, !noalias !1876 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #29, !noalias !1876
  %i.mu = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !1879 ; 8 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  store i32 1, ptr %i.mv, align 8, !tbaa !1067, !noalias !1884
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  store i32 1, ptr %i.mw, align 4, !tbaa !1069, !noalias !1884
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.mu, align 8, !tbaa !8, !noalias !1884
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 16 ; 3 uses
  %i.my = load ptr, ptr %28, align 8, !tbaa !92, !noalias !1884
  %i.mz = load i64, ptr %i.lv, align 8, !tbaa !23, !noalias !1884
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.mx, ptr %i.my, i64 %i.mz, i32 noundef 0, i32 noundef 1) #29, !noalias !1884
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.mx, align 8, !tbaa !8, !noalias !1884
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.na, i8 0, i64 24, i1 false), !noalias !1884
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %27, ptr noundef nonnull readonly align 8 dereferenceable(64) %32, i64 64, i1 false), !noalias !1884
  %i.nb = getelementptr inbounds nuw i8, ptr %27, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.nb, ptr noundef nonnull align 8 dereferenceable(64) %30, i64 64, i1 false), !noalias !1884
end_hunk_3
begin_hunk_4_@_ZNK12_GLOBAL__N_121PathDiagnosticBuilder30generatePathDiagnosticsForNodeERNS_23PathDiagnosticConstructERN5clang4ento22PathDiagnosticLocationE:bb.a
  %i.anc = getelementptr inbounds nuw i8, ptr %i.ana, i64 24
  store ptr %i.amp, ptr %i.anc, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ana, ptr noundef %i.amz) #29
  %i.and = getelementptr inbounds nuw i8, ptr %.0.i.i223.i, i64 16 ; 2 uses
  %i.ane = load i64, ptr %i.and, align 8, !tbaa !1066
  %i.anf = add i64 %i.ane, 1
  store i64 %i.anf, ptr %i.and, align 8, !tbaa !1066
  br label %bb.ew

bb.ew:                                            ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit234.i, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit221.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #29
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit218.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit186.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173.i, %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit167.i, %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit112.i, %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #29
  br label %_ZNK12_GLOBAL__N_121PathDiagnosticBuilder31generateMinimalDiagForBlockEdgeERNS_23PathDiagnosticConstructEN5clang9BlockEdgeE.exit

_ZNK12_GLOBAL__N_121PathDiagnosticBuilder31generateMinimalDiagForBlockEdgeERNS_23PathDiagnosticConstructEN5clang9BlockEdgeE.exit: ; preds = %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit.thread, %bb.ex
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  br label %bb.ey

bb.ey:                                            ; preds = %_ZNK12_GLOBAL__N_121PathDiagnosticBuilder31generateMinimalDiagForBlockEdgeERNS_23PathDiagnosticConstructEN5clang9BlockEdgeE.exit, %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit
  %.val121 = load ptr, ptr %1, align 8, !tbaa !1341 ; 2 uses
  %i.ang = load ptr, ptr %.val121, align 8, !tbaa !8
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ang, i64 40
  %i.ani = load ptr, ptr %i.anh, align 8
  %i.anj = call noundef i32 %i.ani(ptr noundef nonnull align 8 dereferenceable(32) %.val121) #29, !inline_history !1846
  %i.ank = icmp sgt i32 %i.anj, 1
  br i1 %i.ank, label %bb.ez, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit

bb.ez:                                            ; preds = %bb.ey
  %i.anl = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 40
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !1969 ; 8 uses
  %.not = icmp eq ptr %i.anm, null
  br i1 %.not, label %bb.fz, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #29
  %.val140 = load ptr, ptr %i.d, align 8, !tbaa !1350
  %i.ann = getelementptr i8, ptr %.val140, i64 24
  %.val140.val = load i64, ptr %i.ann, align 8, !tbaa !25
  %i.ano = and i64 %.val140.val, -8               ; 2 uses
  %i.anp = call i32 @_ZNK5clang4Stmt11getBeginLocEv(ptr noundef nonnull align 8 dereferenceable(8) %i.anm) #31
  %.not.i224 = icmp eq i32 %i.anp, 0              ; 2 uses
  %i.anq = select i1 %.not.i224, i32 1, i32 2
  store i32 %i.anq, ptr %64, align 8, !tbaa !824
  %i.anr = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.ans = select i1 %.not.i224, ptr null, ptr %i.anm
  store ptr %i.ans, ptr %i.anr, align 8, !tbaa !832
  %i.ant = getelementptr inbounds nuw i8, ptr %64, i64 16
  store ptr null, ptr %i.ant, align 8, !tbaa !833
  %i.anu = getelementptr inbounds nuw i8, ptr %64, i64 24
  store ptr %i.m, ptr %i.anu, align 8, !tbaa !279
  %i.anv = getelementptr inbounds nuw i8, ptr %64, i64 32
  %i.anw = call { i32, ptr } @_ZNK5clang4ento22PathDiagnosticLocation11genLocationENS_14SourceLocationEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %64, i32 0, i64 %i.ano) #29 ; 2 uses
  %i.anx = extractvalue { i32, ptr } %i.anw, 0
  store i32 %i.anx, ptr %i.anv, align 8
  %i.any = getelementptr inbounds nuw i8, ptr %64, i64 40
  %i.anz = extractvalue { i32, ptr } %i.anw, 1
  store ptr %i.anz, ptr %i.any, align 8
  %i.aoa = getelementptr inbounds nuw i8, ptr %64, i64 48
  %i.aob = call { i64, i8 } @_ZNK5clang4ento22PathDiagnosticLocation8genRangeEN4llvm12PointerUnionIJPKNS_10StackFrameEPNS_19AnalysisDeclContextEEEE(ptr noundef nonnull align 8 dereferenceable(60) %64, i64 %i.ano) #29 ; 2 uses
  %.fca.0.extract.i225 = extractvalue { i64, i8 } %i.aob, 0
  %.fca.1.extract.i226 = extractvalue { i64, i8 } %i.aob, 1
  store i64 %.fca.0.extract.i225, ptr %i.aoa, align 8
  %.sroa.2.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %64, i64 56
  store i8 %.fca.1.extract.i226, ptr %.sroa.2.0..sroa_idx.i227, align 8
  %i.aoc = load i16, ptr %i.anm, align 8          ; 2 uses
  %i.aod = and i16 %i.aoc, 511
  switch i16 %i.aod, label %bb.ff [
    i16 252, label %bb.fb
    i16 1, label %bb.fc
    i16 159, label %bb.fd
    i16 261, label %bb.fe
  ]

bb.fb:                                            ; preds = %bb.fa
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anm, i64 40
  %i.aof = load ptr, ptr %i.aoe, align 8, !tbaa !35
  br label %bb.ff

bb.fc:                                            ; preds = %bb.fa
  %i.aog = lshr i16 %i.aoc, 9
  %.lobit.i.i.i = and i16 %i.aog, 1
  %i.aoh = zext nneg i16 %.lobit.i.i.i to i64
  %i.aoi = getelementptr inbounds nuw [8 x i8], ptr %i.anm, i64 %i.aoh
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 24
  %i.aok = load ptr, ptr %i.aoj, align 8, !tbaa !35
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fa
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anm, i64 24
  %i.aom = load ptr, ptr %i.aol, align 8, !tbaa !35
  br label %bb.ff

bb.fe:                                            ; preds = %bb.fa
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anm, i64 64
  %i.aoo = load ptr, ptr %i.aon, align 8, !tbaa !35
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fa, %bb.fc, %bb.fe, %bb.fd, %bb.fb
  %.3 = phi ptr [ %i.aof, %bb.fb ], [ %i.aok, %bb.fc ], [ %i.aom, %bb.fd ], [ %i.aoo, %bb.fe ], [ null, %bb.fa ] ; 3 uses
  %i.aop = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #32, !noalias !1970 ; 10 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  store i32 1, ptr %i.aoq, align 8, !tbaa !1067, !noalias !1975
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aop, i64 12
  store i32 1, ptr %i.aor, align 4, !tbaa !1069, !noalias !1975
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento24PathDiagnosticEventPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aop, align 8, !tbaa !8, !noalias !1975
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aop, i64 16 ; 6 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2EN4llvm9StringRefENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(194) %i.aos, ptr nonnull align 1 dereferenceable(37) @.str.30, i64 36, i32 noundef 1, i32 noundef 1) #29, !noalias !1975
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento23PathDiagnosticSpotPieceE, i64 16), ptr %i.aos, align 8, !tbaa !8, !noalias !1975
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aop, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aot, ptr noundef nonnull align 8 dereferenceable(64) %64, i64 64, i1 false), !noalias !1975
  %i.aou = load i32, ptr %i.aot, align 8, !tbaa !824, !noalias !1975
  switch i32 %i.aou, label %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit [
    i32 2, label %bb.fg
    i32 0, label %bb.fg
    i32 3, label %bb.fg
  ]

bb.fg:                                            ; preds = %bb.ff, %bb.ff, %bb.ff
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aop, i64 192
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aov, align 8, !noalias !1975
  call void @_ZN5clang4ento19PathDiagnosticPiece8addRangeENS_11SourceRangeE(ptr noundef nonnull align 8 dereferenceable(194) %i.aos, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i), !noalias !1975
  br label %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit

_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit: ; preds = %bb.ff, %bb.fg
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticEventPieceE, i64 16), ptr %i.aos, align 8, !tbaa !8, !noalias !1975
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aop, i64 208
  store i16 257, ptr %i.aow, align 8
  %i.aox = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %.val130 = load ptr, ptr %i.aox, align 8, !tbaa !1021 ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.val130, i64 352
  %i.aoz = load i32, ptr %i.aoy, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i233 = icmp eq i32 %i.aoz, 0
  br i1 %.not.i.i.i233, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit
  %i.apa = getelementptr inbounds nuw i8, ptr %.val130, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235

bb.fi:                                            ; preds = %_ZSt11make_sharedIN5clang4ento24PathDiagnosticEventPieceEJRNS1_22PathDiagnosticLocationERA37_KcEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESA_E4typeEEDpOT0_.exit
  %i.apb = getelementptr inbounds nuw i8, ptr %.val130, i64 344
  %i.apc = load ptr, ptr %i.apb, align 8, !tbaa !109
  %i.apd = zext i32 %i.aoz to i64
  %i.ape = getelementptr inbounds nuw [8 x i8], ptr %i.apc, i64 %i.apd
  %i.apf = getelementptr inbounds i8, ptr %i.ape, i64 -8
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235: ; preds = %bb.fh, %bb.fi
  %.0.i.i234 = phi ptr [ %i.apa, %bb.fh ], [ %i.apg, %bb.fi ] ; 2 uses
  %i.aph = load ptr, ptr getelementptr inbounds nuw inrange(-32, 32) (i8, ptr @_ZTVN5clang4ento24PathDiagnosticEventPieceE, i64 32), align 8
  call void %i.aph(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %65, ptr noundef nonnull align 8 dereferenceable(192) %i.aos) #29
  %i.api = load i64, ptr %65, align 8             ; 2 uses
  %.sroa.5457.0..sroa_idx458 = getelementptr inbounds nuw i8, ptr %65, i64 8
  %.sroa.5457.0.copyload459 = load ptr, ptr %.sroa.5457.0..sroa_idx458, align 8 ; 4 uses
  %.sroa.6462.0..sroa_idx463 = getelementptr inbounds nuw i8, ptr %65, i64 16
  %.sroa.6462.0.copyload464 = load ptr, ptr %.sroa.6462.0..sroa_idx463, align 8 ; 2 uses
  %.sroa.6467.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %65, i64 24
  %.sroa.6467.0.copyload469 = load ptr, ptr %.sroa.6467.0..sroa_idx468, align 8 ; 3 uses
  %.sroa.7472.0..sroa_idx473 = getelementptr inbounds nuw i8, ptr %65, i64 32
  %.sroa.7472.0.copyload474 = load i32, ptr %.sroa.7472.0..sroa_idx473, align 8 ; 3 uses
  %.sroa.8477.0..sroa_idx478 = getelementptr inbounds nuw i8, ptr %65, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8477, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8477.0..sroa_idx478, i64 28, i1 false)
  %.not27.i236 = icmp eq ptr %.sroa.6467.0.copyload469, null
  %i.apj = icmp eq i32 %.sroa.7472.0.copyload474, 0
  %or.cond31.i238 = select i1 %.not27.i236, i1 true, i1 %i.apj
  br i1 %or.cond31.i238, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247, label %bb.fj

bb.fj:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235
  %i.apk = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !279
  %.not28.i239 = icmp eq ptr %i.apl, null
  %i.apm = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i8.i240 = load i32, ptr %i.apm, align 8
  %.not29.i241 = icmp eq i32 %.sroa.0.0.copyload.i8.i240, 0
  %or.cond32.i242 = select i1 %.not28.i239, i1 true, i1 %.not29.i241
  br i1 %or.cond32.i242, label %.sink.split.i246, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %.not.i243 = icmp ne ptr %.sroa.5457.0.copyload459, null
  %i.apn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.apo = load ptr, ptr %i.apn, align 8
  %i.app = icmp eq ptr %.sroa.5457.0.copyload459, %i.apo
  %or.cond.i244 = select i1 %.not.i243, i1 %i.app, i1 false
  br i1 %or.cond.i244, label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i245

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i245: ; preds = %bb.fk
  %i.apq = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !1976 ; 8 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  store i32 1, ptr %i.apr, align 8, !tbaa !1067, !noalias !1981
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apq, i64 12
  store i32 1, ptr %i.aps, align 4, !tbaa !1069, !noalias !1981
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.apq, align 8, !tbaa !8, !noalias !1981
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apq, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.apt, i32 noundef 0, i32 noundef 1) #29, !noalias !1981
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.apt, align 8, !tbaa !8, !noalias !1981
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apq, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.apu, i8 0, i64 24, i1 false), !noalias !1981
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9494)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9494, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !1981
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apq, i64 152
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apq, i64 160
  %i.apx = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !1981 ; 9 uses
  store i64 %i.api, ptr %i.apx, align 8, !noalias !1981
  %.sroa.4481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apx, i64 8
  store ptr %.sroa.5457.0.copyload459, ptr %.sroa.4481.0..sroa_idx, align 8, !noalias !1981
  %.sroa.5482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apx, i64 16
  store ptr %.sroa.6462.0.copyload464, ptr %.sroa.5482.0..sroa_idx, align 8, !noalias !1981
  %.sroa.6483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apx, i64 24
  store ptr %.sroa.6467.0.copyload469, ptr %.sroa.6483.0..sroa_idx, align 8, !noalias !1981
  %.sroa.7484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apx, i64 32
  store i32 %.sroa.7472.0.copyload474, ptr %.sroa.7484.0..sroa_idx, align 8, !noalias !1981
  %.sroa.8485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apx, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8485.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8477, i64 28, i1 false)
  %.sroa.9486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.apx, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9486.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9494, i64 64, i1 false), !noalias !1981
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apx, i64 128 ; 2 uses
  store ptr %i.apx, ptr %i.apu, align 8, !tbaa !1392, !noalias !1981
  store ptr %i.apy, ptr %i.apv, align 8, !tbaa !1395, !noalias !1981
  store ptr %i.apy, ptr %i.apw, align 8, !tbaa !1396, !noalias !1981
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9494)
  %i.apz = load ptr, ptr %.0.i.i234, align 8, !tbaa !1050
  %i.aqa = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 16
  store ptr %i.apt, ptr %i.aqb, align 8, !tbaa !1058
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 24
  store ptr %i.apq, ptr %i.aqc, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aqa, ptr noundef %i.apz) #29
  %i.aqd = getelementptr inbounds nuw i8, ptr %.0.i.i234, i64 16 ; 2 uses
  %i.aqe = load i64, ptr %i.aqd, align 8, !tbaa !1066
  %i.aqf = add i64 %i.aqe, 1
  store i64 %i.aqf, ptr %i.aqd, align 8, !tbaa !1066
  br label %.sink.split.i246

.sink.split.i246:                                 ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i245, %bb.fj
  store i64 %i.api, ptr %2, align 8
  %.sroa.5457.0..sroa_idx460 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.5457.0.copyload459, ptr %.sroa.5457.0..sroa_idx460, align 8
  %.sroa.6462.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.6462.0.copyload464, ptr %.sroa.6462.0..sroa_idx465, align 8
  store ptr %.sroa.6467.0.copyload469, ptr %i.apk, align 8
  store i32 %.sroa.7472.0.copyload474, ptr %i.apm, align 8
  %.sroa.8477.0..sroa_idx479 = getelementptr inbounds nuw i8, ptr %2, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.8477.0..sroa_idx479, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.8477, i64 24, i1 false)
  br label %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247

_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247: ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit235, %bb.fk, %.sink.split.i246
  %.val144 = load ptr, ptr %1, align 8, !tbaa !1341 ; 4 uses
  %i.aqg = load ptr, ptr %.val144, align 8, !tbaa !8
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 40
  %i.aqi = load ptr, ptr %i.aqh, align 8
  %i.aqj = call noundef i32 %i.aqi(ptr noundef nonnull align 8 dereferenceable(32) %.val144) #29, !inline_history !1874
  %i.aqk = icmp eq i32 %i.aqj, 1
  br i1 %i.aqk, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248.thread, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248

_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248: ; preds = %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247
  %i.aql = load ptr, ptr %.val144, align 8, !tbaa !8
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 40
  %i.aqn = load ptr, ptr %i.aqm, align 8
  %i.aqo = call noundef i32 %i.aqn(ptr noundef nonnull align 8 dereferenceable(32) %.val144) #29, !inline_history !1874
  %i.aqp = icmp eq i32 %i.aqo, 3
  br i1 %i.aqp, label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248.thread, label %bb.fl

bb.fl:                                            ; preds = %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248
  %.val129 = load ptr, ptr %i.aox, align 8, !tbaa !1021 ; 3 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %.val129, i64 352
  %i.aqr = load i32, ptr %i.aqq, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i249 = icmp eq i32 %i.aqr, 0
  br i1 %.not.i.i.i249, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aqs = getelementptr inbounds nuw i8, ptr %.val129, i64 320
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit256

bb.fn:                                            ; preds = %bb.fl
  %i.aqt = getelementptr inbounds nuw i8, ptr %.val129, i64 344
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !109
  %i.aqv = zext i32 %i.aqr to i64
  %i.aqw = getelementptr inbounds nuw [8 x i8], ptr %i.aqu, i64 %i.aqv
  %i.aqx = getelementptr inbounds i8, ptr %i.aqw, i64 -8
  %i.aqy = load ptr, ptr %i.aqx, align 8, !tbaa !1064
  br label %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit256

_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit256: ; preds = %bb.fn, %bb.fm
  %.0.i.i250 = phi ptr [ %i.aqs, %bb.fm ], [ %i.aqy, %bb.fn ] ; 2 uses
  %i.aqz = load ptr, ptr %.0.i.i250, align 8, !tbaa !1050
  %i.ara = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 16
  store ptr %i.aos, ptr %i.arb, align 8, !tbaa !1058
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ara, i64 24
  store ptr %i.aop, ptr %i.arc, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ara, ptr noundef %i.aqz) #29
  %i.ard = getelementptr inbounds nuw i8, ptr %.0.i.i250, i64 16 ; 2 uses
  %i.are = load i64, ptr %i.ard, align 8, !tbaa !1066
  %i.arf = add i64 %i.are, 1
  store i64 %i.arf, ptr %i.ard, align 8, !tbaa !1066
  br label %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248.thread

_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248.thread: ; preds = %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247, %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit256, %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248
  %.sroa.7.0 = phi ptr [ %i.aop, %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248 ], [ null, %_ZNSt12__shared_ptrIN5clang4ento19PathDiagnosticPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit256 ], [ %i.aop, %_ZL13addEdgeToPathRN5clang4ento10PathPiecesERNS0_22PathDiagnosticLocationES3_.exit247 ] ; 8 uses
  %.not.i.i257 = icmp eq ptr %.3, null
  br i1 %.not.i.i257, label %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit.thread, label %bb.fo

bb.fo:                                            ; preds = %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248.thread
  %i.arg = load i16, ptr %.3, align 8
  %i.arh = and i16 %i.arg, 511
  %i.ari = icmp eq i16 %i.arh, 258
  br i1 %i.ari, label %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit, label %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit: ; preds = %bb.fo
  %.val128 = load ptr, ptr %i.aox, align 8, !tbaa !1021 ; 3 uses
  %i.arj = getelementptr inbounds nuw i8, ptr %.val128, i64 352
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !111 ; 2 uses
  %.not.i.i.i259 = icmp eq i32 %i.ark, 0
  br i1 %.not.i.i.i259, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit
  %i.arl = getelementptr inbounds nuw i8, ptr %.val128, i64 320
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit261

bb.fq:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit
  %i.arm = getelementptr inbounds nuw i8, ptr %.val128, i64 344
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !109
  %i.aro = zext i32 %i.ark to i64
  %i.arp = getelementptr inbounds nuw [8 x i8], ptr %i.arn, i64 %i.aro
  %i.arq = getelementptr inbounds i8, ptr %i.arp, i64 -8
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !1064
  br label %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit261

_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit261: ; preds = %bb.fp, %bb.fq
  %.0.i.i260 = phi ptr [ %i.arl, %bb.fp ], [ %i.arr, %bb.fq ] ; 2 uses
  call void @_ZN5clang4ento22PathDiagnosticLocation14createEndBraceEPKNS_12CompoundStmtERKNS_13SourceManagerE(ptr dead_on_unwind nonnull writable sret(%"class.clang::ento::PathDiagnosticLocation") align 8 %66, ptr noundef nonnull %.3, ptr noundef nonnull align 8 dereferenceable(776) %i.m) #29
  %i.ars = load i64, ptr %66, align 8             ; 2 uses
  %.sroa.5488.0..sroa_idx489 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %.sroa.5488.0.copyload490 = load ptr, ptr %.sroa.5488.0..sroa_idx489, align 8 ; 4 uses
  %.sroa.6493.0..sroa_idx494 = getelementptr inbounds nuw i8, ptr %66, i64 16
  %.sroa.6493.0.copyload495 = load ptr, ptr %.sroa.6493.0..sroa_idx494, align 8 ; 2 uses
  %.sroa.6498.0..sroa_idx499 = getelementptr inbounds nuw i8, ptr %66, i64 24
  %.sroa.6498.0.copyload500 = load ptr, ptr %.sroa.6498.0..sroa_idx499, align 8 ; 3 uses
  %.sroa.7503.0..sroa_idx504 = getelementptr inbounds nuw i8, ptr %66, i64 32
  %.sroa.7503.0.copyload505 = load i32, ptr %.sroa.7503.0..sroa_idx504, align 8 ; 3 uses
  %.sroa.8508.0..sroa_idx509 = getelementptr inbounds nuw i8, ptr %66, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8508, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8508.0..sroa_idx509, i64 28, i1 false)
  %.not27.i262 = icmp eq ptr %.sroa.6498.0.copyload500, null
  %i.art = icmp eq i32 %.sroa.7503.0.copyload505, 0
  %or.cond31.i264 = select i1 %.not27.i262, i1 true, i1 %i.art
  br i1 %or.cond31.i264, label %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit.thread, label %bb.fr

bb.fr:                                            ; preds = %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit261
  %i.aru = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.arv = load ptr, ptr %i.aru, align 8, !tbaa !279
  %.not28.i265 = icmp eq ptr %i.arv, null
  %i.arw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i8.i266 = load i32, ptr %i.arw, align 8
  %.not29.i267 = icmp eq i32 %.sroa.0.0.copyload.i8.i266, 0
  %or.cond32.i268 = select i1 %.not28.i265, i1 true, i1 %.not29.i267
  br i1 %or.cond32.i268, label %.sink.split.i272, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %.not.i269 = icmp ne ptr %.sroa.5488.0.copyload490, null
  %i.arx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ary = load ptr, ptr %i.arx, align 8
  %i.arz = icmp eq ptr %.sroa.5488.0.copyload490, %i.ary
  %or.cond.i270 = select i1 %.not.i269, i1 %i.arz, i1 false
  br i1 %or.cond.i270, label %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit.thread, label %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i271

_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i271: ; preds = %bb.fs
  %i.asa = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !1982 ; 8 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 8
  store i32 1, ptr %i.asb, align 8, !tbaa !1067, !noalias !1987
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asa, i64 12
  store i32 1, ptr %i.asc, align 4, !tbaa !1069, !noalias !1987
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5clang4ento30PathDiagnosticControlFlowPieceESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.asa, align 8, !tbaa !8, !noalias !1987
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asa, i64 16 ; 3 uses
  call void @_ZN5clang4ento19PathDiagnosticPieceC2ENS1_4KindENS1_11DisplayHintE(ptr noundef nonnull align 8 dereferenceable(152) %i.asd, i32 noundef 0, i32 noundef 1) #29, !noalias !1987
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN5clang4ento30PathDiagnosticControlFlowPieceE, i64 16), ptr %i.asd, align 8, !tbaa !8, !noalias !1987
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asa, i64 144 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ase, i8 0, i64 24, i1 false), !noalias !1987
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9527)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9527, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !noalias !1987
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asa, i64 152
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asa, i64 160
  %i.ash = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32, !noalias !1987 ; 9 uses
  store i64 %i.ars, ptr %i.ash, align 8, !noalias !1987
  %.sroa.4512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 8
  store ptr %.sroa.5488.0.copyload490, ptr %.sroa.4512.0..sroa_idx, align 8, !noalias !1987
  %.sroa.5513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 16
  store ptr %.sroa.6493.0.copyload495, ptr %.sroa.5513.0..sroa_idx, align 8, !noalias !1987
  %.sroa.6514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 24
  store ptr %.sroa.6498.0.copyload500, ptr %.sroa.6514.0..sroa_idx, align 8, !noalias !1987
  %.sroa.7515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 32
  store i32 %.sroa.7503.0.copyload505, ptr %.sroa.7515.0..sroa_idx, align 8, !noalias !1987
  %.sroa.8516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8516.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8508, i64 28, i1 false)
  %.sroa.9517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ash, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9527, i64 64, i1 false), !noalias !1987
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 128 ; 2 uses
  store ptr %i.ash, ptr %i.ase, align 8, !tbaa !1392, !noalias !1987
  store ptr %i.asi, ptr %i.asf, align 8, !tbaa !1395, !noalias !1987
  store ptr %i.asi, ptr %i.asg, align 8, !tbaa !1396, !noalias !1987
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9527)
  %i.asj = load ptr, ptr %.0.i.i260, align 8, !tbaa !1050
  %i.ask = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 3 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 16
  store ptr %i.asd, ptr %i.asl, align 8, !tbaa !1058
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ask, i64 24
  store ptr %i.asa, ptr %i.asm, align 8, !tbaa !1065
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ask, ptr noundef %i.asj) #29
  %i.asn = getelementptr inbounds nuw i8, ptr %.0.i.i260, i64 16 ; 2 uses
  %i.aso = load i64, ptr %i.asn, align 8, !tbaa !1066
  %i.asp = add i64 %i.aso, 1
  store i64 %i.asp, ptr %i.asn, align 8, !tbaa !1066
  br label %.sink.split.i272

.sink.split.i272:                                 ; preds = %_ZNSt12__shared_ptrIN5clang4ento30PathDiagnosticControlFlowPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i271, %bb.fr
  store i64 %i.ars, ptr %2, align 8
  %.sroa.5488.0..sroa_idx491 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.5488.0.copyload490, ptr %.sroa.5488.0..sroa_idx491, align 8
  %.sroa.6493.0..sroa_idx496 = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sroa.6493.0.copyload495, ptr %.sroa.6493.0..sroa_idx496, align 8
  store ptr %.sroa.6498.0.copyload500, ptr %i.aru, align 8
  store i32 %.sroa.7503.0.copyload505, ptr %i.arw, align 8
  %.sroa.8508.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %2, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.8508.0..sroa_idx510, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.8508, i64 24, i1 false)
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit.thread

_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit.thread: ; preds = %.sink.split.i272, %bb.fs, %_ZN12_GLOBAL__N_123PathDiagnosticConstruct13getActivePathEv.exit261, %_ZNK12_GLOBAL__N_123PathDiagnosticConstruct21shouldAddControlNotesEv.exit248.thread, %bb.fo
  %.not.i.i274 = icmp eq ptr %.sroa.7.0, null
  br i1 %.not.i.i274, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit.thread
  %i.asq = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 8 ; 4 uses
  %i.asr = load atomic i64, ptr %i.asq acquire, align 8 ; 2 uses
  %i.ass = icmp eq i64 %i.asr, 4294967297
  %i.ast = trunc i64 %i.asr to i32                ; 2 uses
  br i1 %i.ass, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  store i32 0, ptr %i.asq, align 8, !tbaa !1067
  %i.asu = getelementptr inbounds nuw i8, ptr %.sroa.7.0, i64 12
  store i32 0, ptr %i.asu, align 4, !tbaa !1069
  %i.asv = load ptr, ptr %.sroa.7.0, align 8, !tbaa !8
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asv, i64 16
  %i.asx = load ptr, ptr %i.asw, align 8
  call void %i.asx(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0) #29, !inline_history !1988
  %i.asy = load ptr, ptr %.sroa.7.0, align 8, !tbaa !8
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 24
  %i.ata = load ptr, ptr %i.asz, align 8
  call void %i.ata(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0) #29, !inline_history !1988
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.fv:                                            ; preds = %bb.ft
  %i.atb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i275 = icmp eq i8 %i.atb, 0
  br i1 %.not.i.i.i275, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.atc = add nsw i32 %i.ast, -1
  store i32 %i.atc, ptr %i.asq, align 8, !tbaa !329
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i276

bb.fx:                                            ; preds = %bb.fv
  %i.atd = atomicrmw volatile add ptr %i.asq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i276

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i276: ; preds = %bb.fx, %bb.fw
  %.0.i.i.i.i277 = phi i32 [ %i.ast, %bb.fw ], [ %i.atd, %bb.fx ]
  %i.ate = icmp eq i32 %.0.i.i.i.i277, 1
  br i1 %i.ate, label %bb.fy, label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !228

bb.fy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i276
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0) #29
  br label %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12CompoundStmtEKNS1_4StmtEEEDaPT0_.exit.thread, %bb.fu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i276, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #29
  br label %bb.fz

bb.fz:                                            ; preds = %_ZNSt12__shared_ptrIN5clang4ento24PathDiagnosticEventPieceELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ez
  %.val148 = load ptr, ptr %i.d, align 8, !tbaa !1350
  %i.atf = getelementptr i8, ptr %.val148, i64 24
  %.val148.val = load i64, ptr %i.atf, align 8, !tbaa !25
  %i.atg = and i64 %.val148.val, -8
  %i.ath = inttoptr i64 %i.atg to ptr
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 8
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !200
  %i.atk = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280) %i.atj) #29 ; 5 uses
  %i.atl = getelementptr inbounds nuw i8, ptr %.sroa.0336.0.copyload, i64 32
  %.0.copyload.i.i.i.i.i278 = load i64, ptr %i.atl, align 8
  %i.atm = and i64 %.0.copyload.i.i.i.i.i278, -8  ; 2 uses
  %i.atn = inttoptr i64 %i.atm to ptr             ; 12 uses
  %.not113 = icmp eq i64 %i.atm, 0
  br i1 %.not113, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %.val149 = load i16, ptr %i.atn, align 8
  %i.ato = and i16 %.val149, 511
  switch i16 %i.ato, label %_ZNK5clang12ProgramPoint5getAsINS_9BlockEdgeEEESt8optionalIT_Ev.exit [
    i16 252, label %bb.gb
    i16 1, label %bb.gb
    i16 159, label %bb.gb
    i16 261, label %bb.gb
    i16 248, label %bb.ha
    i16 247, label %bb.ha
    i16 251, label %bb.ha
  ]

bb.gb:                                            ; preds = %bb.ga, %bb.ga, %bb.ga, %bb.ga
  %i.atp = call noundef ptr @_ZNK5clang8CFGBlock22getTerminatorConditionEb(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0336.0.copyload, i1 noundef zeroext true) #29 ; 4 uses
  %.not.i.i.i279 = icmp eq ptr %i.atp, null
  br i1 %.not.i.i.i279, label %_ZL22getTerminatorConditionPKN5clang8CFGBlockE.exit, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.atq = load i16, ptr %i.atp, align 8
  %i.atr = and i16 %i.atq, 511
  %i.ats = icmp eq i16 %i.atr, 159
  br i1 %i.ats, label %bb.gd, label %_ZL22getTerminatorConditionPKN5clang8CFGBlockE.exit

bb.gd:                                            ; preds = %bb.gc
  %i.att = getelementptr inbounds nuw i8, ptr %i.atp, i64 8
  %i.atu = load ptr, ptr %i.att, align 8, !tbaa !35
  br label %_ZL22getTerminatorConditionPKN5clang8CFGBlockE.exit

_ZL22getTerminatorConditionPKN5clang8CFGBlockE.exit: ; preds = %bb.gb, %bb.gc, %bb.gd
  %i.atv = phi ptr [ %i.atu, %bb.gd ], [ %i.atp, %bb.gc ], [ null, %bb.gb ] ; 4 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !1350 ; 2 uses
  %.not32.i = icmp eq ptr %.val, null
  br i1 %.not32.i, label %_ZL17getStmtBeforeCondRKN5clang9ParentMapEPKNS_4StmtEPKNS_4ento12ExplodedNodeE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL22getTerminatorConditionPKN5clang8CFGBlockE.exit, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i
  %.0933.i = phi ptr [ %i.aur, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i ], [ %.val, %_ZL22getTerminatorConditionPKN5clang8CFGBlockE.exit ] ; 5 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %.0933.i, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.atw, align 8, !tbaa !10 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0933.i, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx.i280 = getelementptr inbounds nuw i8, ptr %.0933.i, i64 24
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i280, align 8, !tbaa !25
  %.sroa.6.0..sroa_idx.i281 = getelementptr inbounds nuw i8, ptr %.0933.i, i64 32
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i281, align 8, !tbaa !25
  %i.atx = trunc i64 %.sroa.6.0.copyload.i to i32
  %i.aty = trunc i64 %.sroa.5.0.copyload.i to i32
  %i.atz = shl i32 %i.atx, 3
  %i.aua = and i32 %i.atz, 48
  %i.aub = shl i32 %i.aty, 1
  %i.auc = and i32 %i.aub, 12
  %i.aud = trunc i64 %.sroa.4.0.copyload.i to i32
  %i.aue = and i32 %i.aud, 3
  %i.auf = add nsw i32 %i.aue, -3
  %i.aug = add nsw i32 %i.auf, %i.auc
  %i.auh = add nsw i32 %i.aug, %i.aua
  %i.aui = icmp ult i32 %i.auh, 11
  br i1 %i.aui, label %bb.ge, label %_ZNK5clang12ProgramPoint5getAsINS_9StmtPointEEESt8optionalIT_Ev.exit.i

bb.ge:                                            ; preds = %.lr.ph.i
  %.not8.i.i = icmp ne ptr %.sroa.0.0.copyload.i, null ; 2 uses
  %i.auj = icmp ne ptr %.sroa.0.0.copyload.i, %i.atv
  %or.cond.not9.i.i = and i1 %i.auj, %.not8.i.i
  br i1 %or.cond.not9.i.i, label %.lr.ph.i.i, label %_ZL17isContainedByStmtRKN5clang9ParentMapEPKNS_4StmtES5_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.ge, %.lr.ph.i.i
  %.010.i.i = phi ptr [ %i.auk, %.lr.ph.i.i ], [ %.sroa.0.0.copyload.i, %bb.ge ]
  %i.auk = call noundef ptr @_ZNK5clang9ParentMap9getParentEPNS_4StmtE(ptr noundef nonnull align 8 dereferenceable(8) %i.atk, ptr noundef nonnull %.010.i.i) #29 ; 3 uses
  %.not.i.i283 = icmp ne ptr %i.auk, null         ; 2 uses
  %i.aul = icmp ne ptr %i.auk, %i.atv
  %or.cond.not.i.i = and i1 %i.aul, %.not.i.i283
  br i1 %or.cond.not.i.i, label %.lr.ph.i.i, label %_ZL17isContainedByStmtRKN5clang9ParentMapEPKNS_4StmtES5_.exit.i, !llvm.loop !1989

_ZL17isContainedByStmtRKN5clang9ParentMapEPKNS_4StmtES5_.exit.i: ; preds = %.lr.ph.i.i, %bb.ge
  %.not.lcssa.i.i = phi i1 [ %.not8.i.i, %bb.ge ], [ %.not.i.i283, %.lr.ph.i.i ]
  br i1 %.not.lcssa.i.i, label %_ZNK5clang12ProgramPoint5getAsINS_9StmtPointEEESt8optionalIT_Ev.exit.i, label %_ZL17getStmtBeforeCondRKN5clang9ParentMapEPKNS_4StmtEPKNS_4ento12ExplodedNodeE.exit

_ZNK5clang12ProgramPoint5getAsINS_9StmtPointEEESt8optionalIT_Ev.exit.i: ; preds = %_ZL17isContainedByStmtRKN5clang9ParentMapEPKNS_4StmtES5_.exit.i, %.lr.ph.i
  %i.aum = getelementptr inbounds nuw i8, ptr %.0933.i, i64 64 ; 2 uses
  %i.aun = load i64, ptr %i.aum, align 8, !tbaa !826 ; 2 uses
  %i.auo = icmp eq i64 %i.aun, 0
  %i.aup = trunc i64 %i.aun to i1
  %spec.select.i.i.i.i.i = or i1 %i.auo, %i.aup
  br i1 %spec.select.i.i.i.i.i, label %_ZL17getStmtBeforeCondRKN5clang9ParentMapEPKNS_4StmtEPKNS_4ento12ExplodedNodeE.exit, label %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i

_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i: ; preds = %_ZNK5clang12ProgramPoint5getAsINS_9StmtPointEEESt8optionalIT_Ev.exit.i
  %i.auq = call noundef ptr @_ZNK5clang4ento12ExplodedNode9NodeGroup5beginEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aum) #29
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !828 ; 2 uses
  %.not.i282 = icmp eq ptr %i.aur, null
  br i1 %.not.i282, label %_ZL17getStmtBeforeCondRKN5clang9ParentMapEPKNS_4StmtEPKNS_4ento12ExplodedNodeE.exit, label %.lr.ph.i

_ZL17getStmtBeforeCondRKN5clang9ParentMapEPKNS_4StmtEPKNS_4ento12ExplodedNodeE.exit: ; preds = %_ZL17isContainedByStmtRKN5clang9ParentMapEPKNS_4StmtES5_.exit.i, %_ZNK5clang12ProgramPoint5getAsINS_9StmtPointEEESt8optionalIT_Ev.exit.i, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i, %_ZL22getTerminatorConditionPKN5clang8CFGBlockE.exit
  %.4.i = phi ptr [ null, %_ZL22getTerminatorConditionPKN5clang8CFGBlockE.exit ], [ null, %_ZNK5clang4ento12ExplodedNode12getFirstPredEv.exit.i ], [ %.sroa.0.0.copyload.i, %_ZL17isContainedByStmtRKN5clang9ParentMapEPKNS_4StmtES5_.exit.i ], [ null, %_ZNK5clang12ProgramPoint5getAsINS_9StmtPointEEESt8optionalIT_Ev.exit.i ] ; 11 uses
  %i.aus = load i16, ptr %i.atn, align 8          ; 3 uses
  %i.aut = and i16 %i.aus, 511
  switch i16 %i.aut, label %_ZL12isInLoopBodyRKN5clang9ParentMapEPKNS_4StmtES5_.exit.thread [
    i16 261, label %bb.gf
    i16 252, label %bb.gi
    i16 159, label %bb.gk
    i16 1, label %bb.gl
  ]

bb.gf:                                            ; preds = %_ZL17getStmtBeforeCondRKN5clang9ParentMapEPKNS_4StmtEPKNS_4ento12ExplodedNodeE.exit
  %i.auu = getelementptr inbounds nuw i8, ptr %i.atn, i64 48
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !35 ; 2 uses
  %.not8.i.i284 = icmp ne ptr %.4.i, null         ; 4 uses
  %i.auw = icmp ne ptr %.4.i, %i.auv
end_hunk_4
