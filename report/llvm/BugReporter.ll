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
  %.sroa.05.sroa.0 = alloca i64, align 8          ; 5 uses
  %.sroa.0.sroa.0 = alloca i64, align 8           ; 5 uses
  store ptr %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.sroa.0)
  %i.b = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %3) #29
  %i.c = call i64 @_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_9MemRegionE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %i.b) ; 3 uses
  store i64 %i.c, ptr %.sroa.05.sroa.0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
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
  store i64 %.sroa.2.1.i, ptr %.sroa.0.sroa.0, align 8
  %.not = icmp samesign ult i64 %i.c, 4294967296
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit
  %i.au = and i64 %.sroa.2.1.i, 4294967296
  %.not10 = icmp eq i64 %i.au, 0
  br i1 %.not10, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = and i64 %i.c, 4294967295
  %i.aw = icmp eq i64 %i.av, 0
  %. = select i1 %i.aw, ptr %.sroa.05.sroa.0, ptr %.sroa.0.sroa.0
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit
  %.sroa.0.0.in = phi ptr [ %., %bb.g ], [ %.sroa.05.sroa.0, %bb.f ], [ %.sroa.0.sroa.0, %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit ]
  %.sroa.0.0 = load i64, ptr %.sroa.0.0.in, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.sroa.0)
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
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !328, !noalias !376 ; 4 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.loopexit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = add i32 %i.ax, -1                       ; 2 uses
  %i.ba = ptrtoint ptr %i.ar to i64
  %i.bb = mul i64 %i.ba, -4658895280553007687     ; 2 uses
  %i.bc = lshr i64 %i.bb, 31
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = trunc i64 %i.bd to i32
  %i.bf = and i32 %i.az, %i.be                    ; 3 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %i.bh = lshr i64 %i.bg, 5
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !329, !noalias !385
  %i.bk = and i32 %i.bf, 31
  %i.bl = lshr i32 %i.bj, %i.bk
  %i.bm = trunc i32 %i.bl to i1
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !330

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %bb.j
  %i.bn = phi i64 [ %i.bt, %bb.j ], [ %i.bg, %bb.i ]
  %.017.i.i.i.i = phi i32 [ %i.bs, %bb.j ], [ %i.bf, %bb.i ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.bn ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !331, !noalias !385
  %i.bq = icmp eq ptr %i.ar, %i.bp
  br i1 %i.bq, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i, label %bb.j, !prof !227

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.br = add nuw i32 %.017.i.i.i.i, 1
  %i.bs = and i32 %i.br, %i.az                    ; 3 uses
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = lshr i64 %i.bt, 5
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !329, !noalias !385
  %i.bx = and i32 %i.bs, 31
  %i.by = lshr i32 %i.bw, %i.bx
  %i.bz = trunc i32 %i.by to i1
  br i1 %i.bz, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i, !prof !332

.loopexit.i.i.i:                                  ; preds = %bb.j, %bb.i, %bb.h
  %i.ca = zext i32 %i.ax to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %i.ca
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i
  %.pre.i = zext i32 %i.ax to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i, %.loopexit.i.i.i
  %.pre-phi.i = phi i64 [ %.pre.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i ], [ %i.ca, %.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i = phi ptr [ %i.bo, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.loopexit.i ], [ %i.cb, %.loopexit.i.i.i ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.at, i64 %.pre-phi.i
  %i.cd = icmp eq ptr %.lcssa.sink.i.i.i, %i.cc
  br i1 %i.cd, label %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !289
  %i.cg = zext i32 %i.cf to i64
  %i.ch = or disjoint i64 %i.cg, 4294967296
  br label %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit

_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit: ; preds = %bb.g, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i, %bb.k
  %.sroa.2.1.i = phi i64 [ 0, %bb.g ], [ %i.ch, %bb.k ], [ 0, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIPKN5clang4ento7SymExprENS3_11bugreporter12TrackingKindENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E4findES6_.exit.i ] ; 2 uses
  %.sroa.014.0.extract.trunc = trunc i64 %.sroa.2.1.i to i32
  %.sroa.3.0.extract.shift = and i64 %.sroa.2.1.i, -4294967296
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit, %bb.f, %bb.a
  %.sroa.014.1 = phi i32 [ undef, %bb.a ], [ %i.an, %bb.e ], [ %.sroa.014.0.extract.trunc, %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit ], [ undef, %bb.f ]
  %.sroa.3.1 = phi i64 [ 0, %bb.a ], [ 4294967296, %bb.e ], [ %.sroa.3.0.extract.shift, %_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE.exit ], [ 0, %bb.f ]
  %.sroa.014.0.insert.ext = zext i32 %.sroa.014.1 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.3.1, %.sroa.014.0.insert.ext
  ret i64 %.sroa.014.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 8589934592) i64 @_ZNK5clang4ento22PathSensitiveBugReport22getInterestingnessKindEPKNS0_7SymExprE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !321, !noalias !386 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !327, !noalias !386 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 524
  %i.f = load i32, ptr %i.e, align 4, !tbaa !328, !noalias !386 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = ptrtoint ptr %1 to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 5
end_hunk_1
