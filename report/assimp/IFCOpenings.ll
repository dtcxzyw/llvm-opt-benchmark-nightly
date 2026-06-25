inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.aiVector2t = type { double, double }
%"struct.std::piecewise_construct_t" = type { i8 }
%"struct.std::pair.3" = type { %class.aiVector2t, %class.aiVector2t }
%"class.std::set" = type { %"class.std::_Rb_tree.24" }
%"class.std::_Rb_tree.24" = type { %"struct.std::_Rb_tree<aiVector2t<double>, aiVector2t<double>, std::_Identity<aiVector2t<double>>, Assimp::IFC::XYSorter>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<aiVector2t<double>, aiVector2t<double>, std::_Identity<aiVector2t<double>>, Assimp::IFC::XYSorter>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.ClipperLib::Clipper" = type <{ ptr, %"class.std::vector.48", %"class.std::vector.48", %"class.std::vector.53", i32, [4 x i8], %"class.std::__cxx11::list", ptr, i8, [3 x i8], i32, i32, i8, i8, i8, i8, %"class.ClipperLib::ClipperBase" }>
%"class.std::vector.48" = type { %"struct.std::_Vector_base.49" }
%"struct.std::_Vector_base.49" = type { %"struct.std::_Vector_base<ClipperLib::Join *, std::allocator<ClipperLib::Join *>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::Join *, std::allocator<ClipperLib::Join *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::Join *, std::allocator<ClipperLib::Join *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::Join *, std::allocator<ClipperLib::Join *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.53" = type { %"struct.std::_Vector_base.54" }
%"struct.std::_Vector_base.54" = type { %"struct.std::_Vector_base<ClipperLib::IntersectNode *, std::allocator<ClipperLib::IntersectNode *>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::IntersectNode *, std::allocator<ClipperLib::IntersectNode *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::IntersectNode *, std::allocator<ClipperLib::IntersectNode *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::IntersectNode *, std::allocator<ClipperLib::IntersectNode *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<long long, std::allocator<long long>>::_List_impl" }
%"struct.std::__cxx11::_List_base<long long, std::allocator<long long>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"class.ClipperLib::ClipperBase" = type { ptr, %"class.__gnu_cxx::__normal_iterator.61", %"class.std::vector.62", i8, %"class.std::vector.67", i8, i8, %"class.std::vector.72", ptr, %"class.std::priority_queue" }
%"class.__gnu_cxx::__normal_iterator.61" = type { ptr }
%"class.std::vector.62" = type { %"struct.std::_Vector_base.63" }
%"struct.std::_Vector_base.63" = type { %"struct.std::_Vector_base<ClipperLib::LocalMinimum, std::allocator<ClipperLib::LocalMinimum>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::LocalMinimum, std::allocator<ClipperLib::LocalMinimum>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::LocalMinimum, std::allocator<ClipperLib::LocalMinimum>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::LocalMinimum, std::allocator<ClipperLib::LocalMinimum>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.67" = type { %"struct.std::_Vector_base.68" }
%"struct.std::_Vector_base.68" = type { %"struct.std::_Vector_base<ClipperLib::TEdge *, std::allocator<ClipperLib::TEdge *>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::TEdge *, std::allocator<ClipperLib::TEdge *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::TEdge *, std::allocator<ClipperLib::TEdge *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::TEdge *, std::allocator<ClipperLib::TEdge *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.72" = type { %"struct.std::_Vector_base.73" }
%"struct.std::_Vector_base.73" = type { %"struct.std::_Vector_base<ClipperLib::OutRec *, std::allocator<ClipperLib::OutRec *>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::OutRec *, std::allocator<ClipperLib::OutRec *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::OutRec *, std::allocator<ClipperLib::OutRec *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::OutRec *, std::allocator<ClipperLib::OutRec *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::priority_queue" = type <{ %"class.std::vector.77", [8 x i8] }>
%"class.std::vector.77" = type { %"struct.std::_Vector_base.78" }
%"struct.std::_Vector_base.78" = type { %"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl" }
%"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<long long, std::allocator<long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<ClipperLib::IntPoint, std::allocator<ClipperLib::IntPoint>>::_Vector_impl" }
%"struct.std::_Vector_base<ClipperLib::IntPoint, std::allocator<ClipperLib::IntPoint>>::_Vector_impl" = type { %"struct.std::_Vector_base<ClipperLib::IntPoint, std::allocator<ClipperLib::IntPoint>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ClipperLib::IntPoint, std::allocator<ClipperLib::IntPoint>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<aiVector2t<double>, std::allocator<aiVector2t<double>>>::_Vector_impl" }
%"struct.std::_Vector_base<aiVector2t<double>, std::allocator<aiVector2t<double>>>::_Vector_impl" = type { %"struct.std::_Vector_base<aiVector2t<double>, std::allocator<aiVector2t<double>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<aiVector2t<double>, std::allocator<aiVector2t<double>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.43" = type { %"struct.std::_Vector_base.44" }
%"struct.std::_Vector_base.44" = type { %"struct.std::_Vector_base<std::vector<ClipperLib::IntPoint>, std::allocator<std::vector<ClipperLib::IntPoint>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<ClipperLib::IntPoint>, std::allocator<std::vector<ClipperLib::IntPoint>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<ClipperLib::IntPoint>, std::allocator<std::vector<ClipperLib::IntPoint>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<ClipperLib::IntPoint>, std::allocator<std::vector<ClipperLib::IntPoint>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.86" = type { i8 }
%class.aiVector3t = type { double, double, double }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.171" = type { i8 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<aiVector2t<double>, std::pair<const aiVector2t<double>, unsigned long>, std::_Select1st<std::pair<const aiVector2t<double>, unsigned long>>, Assimp::IFC::XYSorter>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<aiVector2t<double>, std::pair<const aiVector2t<double>, unsigned long>, std::_Select1st<std::pair<const aiVector2t<double>, unsigned long>>, Assimp::IFC::XYSorter>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<aiVector2t<double>, aiVector2t<double>>, std::allocator<std::pair<aiVector2t<double>, aiVector2t<double>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<aiVector2t<double>, aiVector2t<double>>, std::allocator<std::pair<aiVector2t<double>, aiVector2t<double>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<aiVector2t<double>, aiVector2t<double>>, std::allocator<std::pair<aiVector2t<double>, aiVector2t<double>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<aiVector2t<double>, aiVector2t<double>>, std::allocator<std::pair<aiVector2t<double>, aiVector2t<double>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.aiMatrix4x4t = type { double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double }
%class.aiMatrix3x3t = type { double, double, double, double, double, double, double, double, double }
%"class.std::vector.91" = type { %"struct.std::_Vector_base.92" }
%"struct.std::_Vector_base.92" = type { %"struct.std::_Vector_base<std::vector<Assimp::IFC::TempOpening *>, std::allocator<std::vector<Assimp::IFC::TempOpening *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<Assimp::IFC::TempOpening *>, std::allocator<std::vector<Assimp::IFC::TempOpening *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<Assimp::IFC::TempOpening *>, std::allocator<std::vector<Assimp::IFC::TempOpening *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<Assimp::IFC::TempOpening *>, std::allocator<std::vector<Assimp::IFC::TempOpening *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<Assimp::IFC::ProjectedWindowContour, std::allocator<Assimp::IFC::ProjectedWindowContour>>::_Vector_impl" }
%"struct.std::_Vector_base<Assimp::IFC::ProjectedWindowContour, std::allocator<Assimp::IFC::ProjectedWindowContour>>::_Vector_impl" = type { %"struct.std::_Vector_base<Assimp::IFC::ProjectedWindowContour, std::allocator<Assimp::IFC::ProjectedWindowContour>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Assimp::IFC::ProjectedWindowContour, std::allocator<Assimp::IFC::ProjectedWindowContour>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.96" = type { %"struct.std::_Vector_base.97" }
%"struct.std::_Vector_base.97" = type { %"struct.std::_Vector_base<Assimp::IFC::TempOpening *, std::allocator<Assimp::IFC::TempOpening *>>::_Vector_impl" }
%"struct.std::_Vector_base<Assimp::IFC::TempOpening *, std::allocator<Assimp::IFC::TempOpening *>>::_Vector_impl" = type { %"struct.std::_Vector_base<Assimp::IFC::TempOpening *, std::allocator<Assimp::IFC::TempOpening *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Assimp::IFC::TempOpening *, std::allocator<Assimp::IFC::TempOpening *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator.101" = type { ptr }
%"class.std::vector.119" = type { %"struct.std::_Vector_base.120" }
%"struct.std::_Vector_base.120" = type { %"struct.std::_Vector_base<std::vector<aiVector2t<double>>, std::allocator<std::vector<aiVector2t<double>>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<aiVector2t<double>>, std::allocator<std::vector<aiVector2t<double>>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<aiVector2t<double>>, std::allocator<std::vector<aiVector2t<double>>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<aiVector2t<double>>, std::allocator<std::vector<aiVector2t<double>>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::vector.132" = type { %"struct.std::_Vector_base.133" }
%"struct.std::_Vector_base.133" = type { %"struct.std::_Vector_base<std::vector<p2t::Point *>, std::allocator<std::vector<p2t::Point *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<p2t::Point *>, std::allocator<std::vector<p2t::Point *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<p2t::Point *>, std::allocator<std::vector<p2t::Point *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<p2t::Point *>, std::allocator<std::vector<p2t::Point *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.137" = type { %"struct.std::_Vector_base.138" }
%"struct.std::_Vector_base.138" = type { %"struct.std::_Vector_base<p2t::Point *, std::allocator<p2t::Point *>>::_Vector_impl" }
%"struct.std::_Vector_base<p2t::Point *, std::allocator<p2t::Point *>>::_Vector_impl" = type { %"struct.std::_Vector_base<p2t::Point *, std::allocator<p2t::Point *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<p2t::Point *, std::allocator<p2t::Point *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.147" = type { %"struct.std::_Vector_base.148" }
%"struct.std::_Vector_base.148" = type { %"struct.std::_Vector_base<p2t::Triangle *, std::allocator<p2t::Triangle *>>::_Vector_impl" }
%"struct.std::_Vector_base<p2t::Triangle *, std::allocator<p2t::Triangle *>>::_Vector_impl" = type { %"struct.std::_Vector_base<p2t::Triangle *, std::allocator<p2t::Triangle *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<p2t::Triangle *, std::allocator<p2t::Triangle *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::pair<aiVector2t<double>, aiVector2t<double>>, std::allocator<std::pair<aiVector2t<double>, aiVector2t<double>>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::pair<aiVector2t<double>, aiVector2t<double>>, std::allocator<std::pair<aiVector2t<double>, aiVector2t<double>>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::pair<aiVector2t<double>, aiVector2t<double>>, std::allocator<std::pair<aiVector2t<double>, aiVector2t<double>>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::pair<aiVector2t<double>, aiVector2t<double>>, std::allocator<std::pair<aiVector2t<double>, aiVector2t<double>>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"class.std::deque.125" = type { %"class.std::_Deque_base.126" }
%"class.std::_Deque_base.126" = type { %"struct.std::_Deque_base<aiVector2t<double>, std::allocator<aiVector2t<double>>>::_Deque_impl" }
%"struct.std::_Deque_base<aiVector2t<double>, std::allocator<aiVector2t<double>>>::_Deque_impl" = type { %"struct.std::_Deque_base<aiVector2t<double>, std::allocator<aiVector2t<double>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<aiVector2t<double>, std::allocator<aiVector2t<double>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator.127", %"struct.std::_Deque_iterator.127" }
%"struct.std::_Deque_iterator.127" = type { ptr, ptr, ptr, ptr }
%"class.Assimp::Formatter::basic_formatter" = type { %"class.std::__cxx11::basic_ostringstream" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }

$_ZN6Assimp3IFC13fillRectangleERK10aiVector2tIdES4_RSt6vectorIS2_SaIS2_EE = comdat any

$_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev = comdat any

$_ZN10ClipperLib7ClipperD1Ev = comdat any

$_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EED2Ev = comdat any

$_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_dEEERS1_DpOT_ = comdat any

$_ZNSt3mapI10aiVector2tIdEmN6Assimp3IFC8XYSorterESaISt4pairIKS1_mEEED2Ev = comdat any

$_ZN12aiMatrix4x4tIdE7InverseEv = comdat any

$_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE12emplace_backIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEERS5_DpOT_ = comdat any

$_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EED2Ev = comdat any

$_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIS_IPN3p2t5PointESaIS2_EESaIS4_EED2Ev = comdat any

$_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E = comdat any

$_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb = comdat any

$_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt11_Deque_baseISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_initialize_mapEm = comdat any

$_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN6Assimp6Logger5errorIJPKcRA64_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA64_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev = comdat any

$_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_ = comdat any

$_ZN6Assimp6Logger5errorIJPKcRA60_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA60_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger5errorIJPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_ = comdat any

$_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb = comdat any

$_ZN6Assimp6Logger4warnIJPKcRA77_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA77_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS3_EESG_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_ = comdat any

$_ZNSt8_Rb_treeI10aiVector2tIdESt4pairIKS1_mESt10_Select1stIS4_EN6Assimp3IFC8XYSorterESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

$_ZSt8_DestroyIPN6Assimp3IFC22ProjectedWindowContourEEvT_S4_ = comdat any

$_ZN6Assimp3IFC22ProjectedWindowContourD2Ev = comdat any

$_ZN6Assimp6Logger4warnIJPKcRA27_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA27_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger12verboseDebugIJPKcRA29_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA29_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZNSt6vectorIPN6Assimp3IFC11TempOpeningESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag = comdat any

$_ZNSt6vectorI10aiVector2tIdESaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIbSaIbEEaSERKS1_ = comdat any

$_ZNSt6vectorIS_IPN6Assimp3IFC11TempOpeningESaIS3_EESaIS5_EE17_M_realloc_insertIJN9__gnu_cxx17__normal_iteratorIPS3_S5_EESC_EEEvNSA_IPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorIN6Assimp3IFC22ProjectedWindowContourESaIS2_EE17_M_realloc_insertIJRS_I10aiVector2tIdESaIS7_EERSt4pairIS7_S7_ERbEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZSt16__do_uninit_copyIPKN6Assimp3IFC22ProjectedWindowContourEPS2_ET0_T_S7_S6_ = comdat any

$_ZNSt6vectorIbSaIbEEC2ERKS1_ = comdat any

$_ZN6Assimp6Logger5debugIJPKcS3_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJEPKcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS7_S8_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger4infoIJPKcS3_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger4warnIJPKcS3_EEEvDpOT_ = comdat any

$_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE16_M_push_back_auxIJRKS3_EEEvDpOT_ = comdat any

$_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE17_M_reallocate_mapEmb = comdat any

$_ZN6Assimp6Logger4warnIJPKcRA61_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA61_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZSt8_DestroyIPSt6vectorI10aiVector2tIdESaIS2_EEEvT_S6_ = comdat any

$_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EED2Ev = comdat any

$_ZNSt11_Deque_baseI10aiVector2tIdESaIS1_EE17_M_initialize_mapEm = comdat any

$_ZNSt5dequeISt4pairI10aiVector2tIdES2_ESaIS3_EE8_M_eraseESt15_Deque_iteratorIS3_RS3_PS3_E = comdat any

$_ZSt24__copy_move_backward_ditILb1ESt4pairI10aiVector2tIdES2_ERS3_PS3_St15_Deque_iteratorIS3_S4_S5_EET3_S6_IT0_T1_T2_ESC_S8_ = comdat any

$_ZSt15__copy_move_ditILb1ESt4pairI10aiVector2tIdES2_ERS3_PS3_St15_Deque_iteratorIS3_S4_S5_EET3_S6_IT0_T1_T2_ESC_S8_ = comdat any

$_ZN6Assimp6Logger4warnIJPKcRA44_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA44_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZN6Assimp6Logger4warnIJPKcRA52_S2_EEEvDpOT_ = comdat any

$_ZN6Assimp6Logger13formatMessageIJERA52_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_ = comdat any

$_ZNSt6vectorIS_I10aiVector2tIdESaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZSt16__do_uninit_copyIPKSt6vectorI10aiVector2tIdESaIS2_EEPS4_ET0_T_S9_S8_ = comdat any
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC13fillRectangleERK10aiVector2tIdES4_RSt6vectorIS2_SaIS2_EE:bb.a
  br i1 %.not.i.i.i.i.i48, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49, label %.lr.ph.i.i.i.i.i45, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49: ; preds = %.lr.ph.i.i.i.i.i45, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41
  %.0.lcssa.i.i.i.i.i50 = phi ptr [ %i.cr, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i41 ], [ %i.cx, %.lr.ph.i.i.i.i.i45 ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i50, i64 16
  %.not.i34.i.i51 = icmp eq ptr %i.cg, null
  br i1 %.not.i34.i.i51, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.cj) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52: ; preds = %bb.q, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i49
  store ptr %i.cr, ptr %2, align 8
  store ptr %i.cy, ptr %i.b, align 8
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cz, ptr %i.d, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit53

_ZNSt6vectorI10aiVector2tIdESaIS1_EE12emplace_backIJRKdS6_EEERS1_DpOT_.exit53: ; preds = %bb.n, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKdS6_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i52
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC26ExtractVerticesFromClipperERKSt6vectorIN10ClipperLib8IntPointESaIS3_EERS1_I10aiVector2tIdESaIS9_EEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit

_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i
  %.val1230 = phi ptr [ %i.c, %bb.a ], [ %i.a, %_ZSt8_DestroyIP10aiVector2tIdES1_EvT_S3_RSaIT0_E.exit.i.i ]
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.d, %i.f
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE5clearEv.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit
  %i.h = phi ptr [ %.val1230, %.lr.ph ], [ %.val1229, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 8 uses
  %.sroa.022.027 = phi ptr [ %i.d, %.lr.ph ], [ %i.as, %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit ] ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.022.027, align 8
  %i.j = uitofp <2 x i64> %i.i to <2 x double>
  %i.k = fdiv <2 x double> %i.j, splat (double f0x41D6A09E66400000) ; 2 uses
  %i.l = fcmp ogt <2 x double> %i.k, splat (double 1.000000e+00)
  %i.m = select <2 x i1> %i.l, <2 x double> splat (double 1.000000e+00), <2 x double> %i.k ; 4 uses
  %.val11 = load ptr, ptr %1, align 8             ; 2 uses
  %.not10.not.i = icmp ne ptr %.val11, %i.h
  %or.cond.not = select i1 %2, i1 %.not10.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.preheader, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.n = extractelement <2 x double> %i.m, i64 0
  %i.o = extractelement <2 x double> %i.m, i64 1
  br label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 16 ; 2 uses
  %.not.not.i = icmp eq ptr %i.p, %i.h
  br i1 %.not.not.i, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %.sroa.06.011.i = phi ptr [ %i.p, %bb.c ], [ %.val11, %.lr.ph.i.preheader ] ; 3 uses
  %i.q = load double, ptr %.sroa.06.011.i, align 8
  %i.r = fsub double %i.q, %i.n                   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 8
  %i.t = load double, ptr %i.s, align 8
  %i.u = fsub double %i.t, %i.o                   ; 2 uses
  %i.v = fmul double %i.u, %i.u
  %i.w = tail call noundef double @llvm.fmuladd.f64(double %i.r, double %i.r, double %i.v)
  %i.x = fcmp olt double %i.w, f0x3EE4F8B580000000
  br i1 %i.x, label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit, label %bb.c

_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread: ; preds = %bb.c, %bb.b
  %i.y = load ptr, ptr %i.g, align 8
  %.not.i = icmp eq ptr %i.h, %i.y
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread
  store <2 x double> %i.m, ptr %i.h, align 8
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store ptr %i.aa, ptr %i.b, align 8
  br label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit

bb.e:                                             ; preds = %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit.thread
  %i.ab = load ptr, ptr %1, align 8               ; 5 uses
  %i.ac = ptrtoint ptr %i.h to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775792
  br i1 %i.af, label %bb.f, label %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ag = ashr exact i64 %i.ae, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 576460752303423487)
  %i.ak = select i1 %i.ai, i64 576460752303423487, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 4
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #25 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  store <2 x double> %i.m, ptr %i.an, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.ab, %i.h
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.am, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ab, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !55
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorI10aiVector2tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ae) #26
  br label %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.am, ptr %1, align 8
  store ptr %i.aq, ptr %i.b, align 8
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.ar, ptr %i.g, align 8
  br label %_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit

_ZN6Assimp3IFCL17IsDuplicateVertexERK10aiVector2tIdERKSt6vectorIS2_SaIS2_EE.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %.val1229 = phi ptr [ %i.aa, %bb.d ], [ %i.aq, %_ZNSt6vectorI10aiVector2tIdESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.h, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.022.027, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3IFC14GetBoundingBoxERKSt6vectorIN10ClipperLib8IntPointESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::pair.3") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not32 = icmp eq ptr %i.a, %i.c
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.d = phi <2 x double> [ splat (double 1.000000e+10), %bb.a ], [ %i.o, %.lr.ph ]
  %i.e = phi <2 x double> [ splat (double -1.000000e+10), %bb.a ], [ %i.q, %.lr.ph ]
  store <2 x double> %i.d, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %i.e, ptr %i.f, align 8
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.025.033 = phi ptr [ %i.r, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = phi <2 x double> [ %i.o, %.lr.ph ], [ splat (double 1.000000e+10), %bb.a ] ; 2 uses
  %i.h = phi <2 x double> [ %i.q, %.lr.ph ], [ splat (double -1.000000e+10), %bb.a ] ; 2 uses
  %i.i = load <2 x i64>, ptr %.sroa.025.033, align 8
  %i.j = uitofp <2 x i64> %i.i to <2 x double>
  %i.k = fdiv <2 x double> %i.j, splat (double f0x41D6A09E66400000) ; 2 uses
  %i.l = fcmp ogt <2 x double> %i.k, splat (double 1.000000e+00)
  %i.m = select <2 x i1> %i.l, <2 x double> splat (double 1.000000e+00), <2 x double> %i.k ; 4 uses
  %i.n = fcmp olt <2 x double> %i.m, %i.g
  %i.o = select <2 x i1> %i.n, <2 x double> %i.m, <2 x double> %i.g ; 2 uses
  %i.p = fcmp olt <2 x double> %i.h, %i.m
  %i.q = select <2 x i1> %i.p, <2 x double> %i.m, <2 x double> %i.h ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.025.033, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC20InsertWindowContoursERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERKS1_INS0_11TempOpeningESaIS7_EERNS0_8TempMeshE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"class.std::set", align 8          ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %.not314 = icmp eq ptr %i.c, %i.d
  br i1 %.not314, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 22 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  br label %bb.b

._crit_edge313:                                   ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph312, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit
  %i.o = phi ptr [ %i.d, %.lr.ph312 ], [ %i.ny, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit ]
  %.0310 = phi i64 [ 0, %.lr.ph312 ], [ %i.nw, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit ] ; 2 uses
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.o, i64 %.0310 ; 17 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  %i.r = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp eq i64 %i.x, 64
  br i1 %i.y, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i, label %bb.z

.lr.ph.i.i.i:                                     ; preds = %bb.t
  %i.z = load double, ptr %i.q, align 8           ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ab = load double, ptr %i.aa, align 8         ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.d ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ad = load double, ptr %i.ac, align 8         ; 2 uses
  %i.ae = fcmp oeq double %i.ad, %i.z
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.ag = load double, ptr %i.af, align 8
  %i.ah = fcmp olt double %i.ag, %i.ab
  %i.ai = fcmp olt double %i.ad, %i.z
  %.0.i.i.i.i = select i1 %i.ae, i1 %i.ah, i1 %i.ai ; 4 uses
  %.19.i.i.i = select i1 %.0.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %.0.i.i.i.i, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %bb.d, !llvm.loop !59

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %bb.d
  %i.aj = icmp eq ptr %.19.i.i.i, %i.e
  br i1 %i.aj, label %.critedge155, label %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i32 0, ptr %i.e, align 8
  store ptr null, ptr %i.f, align 8
  store ptr %i.e, ptr %i.g, align 8
  store ptr %i.e, ptr %i.h, align 8
  store i64 0, ptr %i.i, align 8
  %i.ak = load ptr, ptr %i.p, align 8
  %i.al = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %bb.e unwind label %bb.u       ; 2 uses

bb.e:                                             ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext true, ptr noundef nonnull %i.al, ptr noundef nonnull %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #27
  %i.an = load i64, ptr %i.i, align 8
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.i, align 8
  %.pre = load ptr, ptr %i.p, align 8             ; 5 uses
  %.02123.i.i.1.pre = load ptr, ptr %i.f, align 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre, i64 16 ; 4 uses
  %.not24.i.i.1 = icmp eq ptr %.02123.i.i.1.pre, null
  br i1 %.not24.i.i.1, label %._crit_edge.thread.i.i.1, label %.lr.ph.i.i222.1

.lr.ph.i.i222.1:                                  ; preds = %bb.e
  %i.aq = load double, ptr %i.ap, align 8         ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.as = load double, ptr %i.ar, align 8         ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i222.1
  %.02125.i.i.1 = phi ptr [ %.02123.i.i.1.pre, %.lr.ph.i.i222.1 ], [ %.021.i.i.1, %bb.f ] ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02125.i.i.1, i64 32
  %i.au = load double, ptr %i.at, align 8         ; 3 uses
  %i.av = fcmp oeq double %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.02125.i.i.1, i64 40
  %i.ax = load double, ptr %i.aw, align 8         ; 2 uses
  %i.ay = fcmp olt double %i.as, %i.ax
  %i.az = fcmp olt double %i.aq, %i.au
  %.0.i.i.i223.1 = select i1 %i.av, i1 %i.ay, i1 %i.az ; 2 uses
  %.in.v.i.i.1 = select i1 %.0.i.i.i223.1, i64 16, i64 24
  %.in.i.i.1 = getelementptr inbounds nuw i8, ptr %.02125.i.i.1, i64 %.in.v.i.i.1
  %.021.i.i.1 = load ptr, ptr %.in.i.i.1, align 8 ; 2 uses
  %.not.i.i224.1 = icmp eq ptr %.021.i.i.1, null
  br i1 %.not.i.i224.1, label %._crit_edge.i.i.1, label %bb.f, !llvm.loop !60

._crit_edge.i.i.1:                                ; preds = %bb.f
  br i1 %.0.i.i.i223.1, label %._crit_edge.thread.i.i.1, label %bb.h

._crit_edge.thread.i.i.1:                         ; preds = %._crit_edge.i.i.1, %bb.e
  %.020.lcssa30.i.i.1 = phi ptr [ %.02125.i.i.1, %._crit_edge.i.i.1 ], [ %i.e, %bb.e ] ; 4 uses
  %i.ba = load ptr, ptr %i.g, align 8
  %i.bb = icmp eq ptr %.020.lcssa30.i.i.1, %i.ba
  br i1 %i.bb, label %select.unfold.i.1, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i.1
  %i.bc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i.i.1) #23 ; 2 uses
  %.phi.trans.insert.i.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %.pre.i.1 = load double, ptr %.phi.trans.insert.i.1, align 8
  %.pre19.i.1 = load double, ptr %i.ap, align 8
  %.phi.trans.insert20.i.1 = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %.pre21.i.1 = load double, ptr %.phi.trans.insert20.i.1, align 8
  %.phi.trans.insert22.i.1 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre23.i.1 = load double, ptr %.phi.trans.insert22.i.1, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.1
  %i.bd = phi double [ %.pre23.i.1, %bb.g ], [ %i.as, %._crit_edge.i.i.1 ]
  %i.be = phi double [ %.pre21.i.1, %bb.g ], [ %i.ax, %._crit_edge.i.i.1 ]
  %i.bf = phi double [ %.pre19.i.1, %bb.g ], [ %i.aq, %._crit_edge.i.i.1 ] ; 2 uses
  %i.bg = phi double [ %.pre.i.1, %bb.g ], [ %i.au, %._crit_edge.i.i.1 ] ; 2 uses
  %.020.lcssa29.i.i.1 = phi ptr [ %.020.lcssa30.i.i.1, %bb.g ], [ %.02125.i.i.1, %._crit_edge.i.i.1 ]
  %i.bh = fcmp oeq double %i.bg, %i.bf
  %i.bi = fcmp olt double %i.be, %i.bd
  %i.bj = fcmp olt double %i.bg, %i.bf
  %.0.i5.i.i.1 = select i1 %i.bh, i1 %i.bi, i1 %i.bj
  br i1 %.0.i5.i.i.1, label %select.unfold.i.1, label %bb.j

select.unfold.i.1:                                ; preds = %bb.h, %._crit_edge.thread.i.i.1
  %.sroa.4.0.i.ph.i.1 = phi ptr [ %.020.lcssa30.i.i.1, %._crit_edge.thread.i.i.1 ], [ %.020.lcssa29.i.i.1, %bb.h ] ; 4 uses
  %i.bk = icmp eq ptr %.sroa.4.0.i.ph.i.1, %i.e
  br i1 %i.bk, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1, label %bb.i

bb.i:                                             ; preds = %select.unfold.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.1, i64 32
  %i.bm = load double, ptr %i.ap, align 8         ; 2 uses
  %i.bn = load double, ptr %i.bl, align 8         ; 2 uses
  %i.bo = fcmp oeq double %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %i.bq = load double, ptr %i.bp, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.1, i64 40
  %i.bs = load double, ptr %i.br, align 8
  %i.bt = fcmp olt double %i.bq, %i.bs
  %i.bu = fcmp olt double %i.bm, %i.bn
  %.0.i.i6.i.1 = select i1 %i.bo, i1 %i.bt, i1 %i.bu
  br label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1: ; preds = %bb.i, %select.unfold.i.1
  %i.bv = phi i1 [ %.0.i.i6.i.1, %bb.i ], [ true, %select.unfold.i.1 ]
  %i.bw = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc.1 unwind label %bb.u   ; 2 uses

.noexc.1:                                         ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bv, ptr noundef nonnull %i.bw, ptr noundef nonnull %.sroa.4.0.i.ph.i.1, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #27
  %i.by = load i64, ptr %i.i, align 8
  %i.bz = add i64 %i.by, 1
  store i64 %i.bz, ptr %i.i, align 8
  %.pre328 = load ptr, ptr %i.p, align 8
  %.02123.i.i.2.pre = load ptr, ptr %i.f, align 8
  br label %bb.j

bb.j:                                             ; preds = %.noexc.1, %bb.h
  %.02123.i.i.2 = phi ptr [ %.02123.i.i.2.pre, %.noexc.1 ], [ %.02123.i.i.1.pre, %bb.h ] ; 3 uses
  %i.ca = phi ptr [ %.pre328, %.noexc.1 ], [ %.pre, %bb.h ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 4 uses
  %.not24.i.i.2 = icmp eq ptr %.02123.i.i.2, null
  br i1 %.not24.i.i.2, label %._crit_edge.thread.i.i.2, label %.lr.ph.i.i222.2

.lr.ph.i.i222.2:                                  ; preds = %bb.j
  %i.cc = load double, ptr %i.cb, align 8         ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.ce = load double, ptr %i.cd, align 8         ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i222.2
  %.02125.i.i.2 = phi ptr [ %.02123.i.i.2, %.lr.ph.i.i222.2 ], [ %.021.i.i.2, %bb.k ] ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02125.i.i.2, i64 32
  %i.cg = load double, ptr %i.cf, align 8         ; 3 uses
  %i.ch = fcmp oeq double %i.cc, %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %.02125.i.i.2, i64 40
  %i.cj = load double, ptr %i.ci, align 8         ; 2 uses
  %i.ck = fcmp olt double %i.ce, %i.cj
  %i.cl = fcmp olt double %i.cc, %i.cg
  %.0.i.i.i223.2 = select i1 %i.ch, i1 %i.ck, i1 %i.cl ; 2 uses
  %.in.v.i.i.2 = select i1 %.0.i.i.i223.2, i64 16, i64 24
  %.in.i.i.2 = getelementptr inbounds nuw i8, ptr %.02125.i.i.2, i64 %.in.v.i.i.2
  %.021.i.i.2 = load ptr, ptr %.in.i.i.2, align 8 ; 2 uses
  %.not.i.i224.2 = icmp eq ptr %.021.i.i.2, null
  br i1 %.not.i.i224.2, label %._crit_edge.i.i.2, label %bb.k, !llvm.loop !60

._crit_edge.i.i.2:                                ; preds = %bb.k
  br i1 %.0.i.i.i223.2, label %._crit_edge.thread.i.i.2, label %bb.m

._crit_edge.thread.i.i.2:                         ; preds = %._crit_edge.i.i.2, %bb.j
  %.020.lcssa30.i.i.2 = phi ptr [ %.02125.i.i.2, %._crit_edge.i.i.2 ], [ %i.e, %bb.j ] ; 4 uses
  %i.cm = load ptr, ptr %i.g, align 8
  %i.cn = icmp eq ptr %.020.lcssa30.i.i.2, %i.cm
  br i1 %i.cn, label %select.unfold.i.2, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread.i.i.2
  %i.co = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i.i.2) #23 ; 2 uses
  %.phi.trans.insert.i.2 = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %.pre.i.2 = load double, ptr %.phi.trans.insert.i.2, align 8
  %.pre19.i.2 = load double, ptr %i.cb, align 8
  %.phi.trans.insert20.i.2 = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %.pre21.i.2 = load double, ptr %.phi.trans.insert20.i.2, align 8
  %.phi.trans.insert22.i.2 = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %.pre23.i.2 = load double, ptr %.phi.trans.insert22.i.2, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.2
  %i.cp = phi double [ %.pre23.i.2, %bb.l ], [ %i.ce, %._crit_edge.i.i.2 ]
  %i.cq = phi double [ %.pre21.i.2, %bb.l ], [ %i.cj, %._crit_edge.i.i.2 ]
  %i.cr = phi double [ %.pre19.i.2, %bb.l ], [ %i.cc, %._crit_edge.i.i.2 ] ; 2 uses
  %i.cs = phi double [ %.pre.i.2, %bb.l ], [ %i.cg, %._crit_edge.i.i.2 ] ; 2 uses
  %.020.lcssa29.i.i.2 = phi ptr [ %.020.lcssa30.i.i.2, %bb.l ], [ %.02125.i.i.2, %._crit_edge.i.i.2 ]
  %i.ct = fcmp oeq double %i.cs, %i.cr
  %i.cu = fcmp olt double %i.cq, %i.cp
  %i.cv = fcmp olt double %i.cs, %i.cr
  %.0.i5.i.i.2 = select i1 %i.ct, i1 %i.cu, i1 %i.cv
  br i1 %.0.i5.i.i.2, label %select.unfold.i.2, label %bb.o

select.unfold.i.2:                                ; preds = %bb.m, %._crit_edge.thread.i.i.2
  %.sroa.4.0.i.ph.i.2 = phi ptr [ %.020.lcssa30.i.i.2, %._crit_edge.thread.i.i.2 ], [ %.020.lcssa29.i.i.2, %bb.m ] ; 4 uses
  %i.cw = icmp eq ptr %.sroa.4.0.i.ph.i.2, %i.e
  br i1 %i.cw, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.2, label %bb.n

bb.n:                                             ; preds = %select.unfold.i.2
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.2, i64 32
  %i.cy = load double, ptr %i.cb, align 8         ; 2 uses
  %i.cz = load double, ptr %i.cx, align 8         ; 2 uses
  %i.da = fcmp oeq double %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.dc = load double, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.2, i64 40
  %i.de = load double, ptr %i.dd, align 8
  %i.df = fcmp olt double %i.dc, %i.de
  %i.dg = fcmp olt double %i.cy, %i.cz
  %.0.i.i6.i.2 = select i1 %i.da, i1 %i.df, i1 %i.dg
  br label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.2

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.2: ; preds = %bb.n, %select.unfold.i.2
  %i.dh = phi i1 [ %.0.i.i6.i.2, %bb.n ], [ true, %select.unfold.i.2 ]
  %i.di = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc.2 unwind label %bb.u   ; 2 uses

.noexc.2:                                         ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dh, ptr noundef nonnull %i.di, ptr noundef nonnull %.sroa.4.0.i.ph.i.2, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #27
  %i.dk = load i64, ptr %i.i, align 8
  %i.dl = add i64 %i.dk, 1
  store i64 %i.dl, ptr %i.i, align 8
  %.pre330 = load ptr, ptr %i.p, align 8
  %.02123.i.i.3.pre = load ptr, ptr %i.f, align 8
  br label %bb.o

bb.o:                                             ; preds = %.noexc.2, %bb.m
  %.02123.i.i.3 = phi ptr [ %.02123.i.i.3.pre, %.noexc.2 ], [ %.02123.i.i.2, %bb.m ] ; 3 uses
  %i.dm = phi ptr [ %.pre330, %.noexc.2 ], [ %i.ca, %bb.m ] ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 4 uses
  %.not24.i.i.3 = icmp eq ptr %.02123.i.i.3, null
  br i1 %.not24.i.i.3, label %._crit_edge.thread.i.i.3, label %.lr.ph.i.i222.3

.lr.ph.i.i222.3:                                  ; preds = %bb.o
  %i.do = load double, ptr %i.dn, align 8         ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.dq = load double, ptr %i.dp, align 8         ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i222.3
  %.02125.i.i.3 = phi ptr [ %.02123.i.i.3, %.lr.ph.i.i222.3 ], [ %.021.i.i.3, %bb.p ] ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.02125.i.i.3, i64 32
  %i.ds = load double, ptr %i.dr, align 8         ; 3 uses
  %i.dt = fcmp oeq double %i.do, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %.02125.i.i.3, i64 40
  %i.dv = load double, ptr %i.du, align 8         ; 2 uses
  %i.dw = fcmp olt double %i.dq, %i.dv
  %i.dx = fcmp olt double %i.do, %i.ds
  %.0.i.i.i223.3 = select i1 %i.dt, i1 %i.dw, i1 %i.dx ; 2 uses
  %.in.v.i.i.3 = select i1 %.0.i.i.i223.3, i64 16, i64 24
  %.in.i.i.3 = getelementptr inbounds nuw i8, ptr %.02125.i.i.3, i64 %.in.v.i.i.3
  %.021.i.i.3 = load ptr, ptr %.in.i.i.3, align 8 ; 2 uses
  %.not.i.i224.3 = icmp eq ptr %.021.i.i.3, null
  br i1 %.not.i.i224.3, label %._crit_edge.i.i.3, label %bb.p, !llvm.loop !60

._crit_edge.i.i.3:                                ; preds = %bb.p
  br i1 %.0.i.i.i223.3, label %._crit_edge.thread.i.i.3, label %bb.r

._crit_edge.thread.i.i.3:                         ; preds = %._crit_edge.i.i.3, %bb.o
  %.020.lcssa30.i.i.3 = phi ptr [ %.02125.i.i.3, %._crit_edge.i.i.3 ], [ %i.e, %bb.o ] ; 4 uses
  %i.dy = load ptr, ptr %i.g, align 8
  %i.dz = icmp eq ptr %.020.lcssa30.i.i.3, %i.dy
  br i1 %i.dz, label %select.unfold.i.3, label %bb.q

bb.q:                                             ; preds = %._crit_edge.thread.i.i.3
  %i.ea = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa30.i.i.3) #23 ; 2 uses
  %.phi.trans.insert.i.3 = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %.pre.i.3 = load double, ptr %.phi.trans.insert.i.3, align 8
  %.pre19.i.3 = load double, ptr %i.dn, align 8
  %.phi.trans.insert20.i.3 = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %.pre21.i.3 = load double, ptr %.phi.trans.insert20.i.3, align 8
  %.phi.trans.insert22.i.3 = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %.pre23.i.3 = load double, ptr %.phi.trans.insert22.i.3, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.3
  %i.eb = phi double [ %.pre23.i.3, %bb.q ], [ %i.dq, %._crit_edge.i.i.3 ]
  %i.ec = phi double [ %.pre21.i.3, %bb.q ], [ %i.dv, %._crit_edge.i.i.3 ]
  %i.ed = phi double [ %.pre19.i.3, %bb.q ], [ %i.do, %._crit_edge.i.i.3 ] ; 2 uses
  %i.ee = phi double [ %.pre.i.3, %bb.q ], [ %i.ds, %._crit_edge.i.i.3 ] ; 2 uses
  %.020.lcssa29.i.i.3 = phi ptr [ %.020.lcssa30.i.i.3, %bb.q ], [ %.02125.i.i.3, %._crit_edge.i.i.3 ]
  %i.ef = fcmp oeq double %i.ee, %i.ed
  %i.eg = fcmp olt double %i.ec, %i.eb
  %i.eh = fcmp olt double %i.ee, %i.ed
  %.0.i5.i.i.3 = select i1 %i.ef, i1 %i.eg, i1 %i.eh
  br i1 %.0.i5.i.i.3, label %select.unfold.i.3, label %bb.t

select.unfold.i.3:                                ; preds = %bb.r, %._crit_edge.thread.i.i.3
  %.sroa.4.0.i.ph.i.3 = phi ptr [ %.020.lcssa30.i.i.3, %._crit_edge.thread.i.i.3 ], [ %.020.lcssa29.i.i.3, %bb.r ] ; 4 uses
  %i.ei = icmp eq ptr %.sroa.4.0.i.ph.i.3, %i.e
  br i1 %i.ei, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.3, label %bb.s

bb.s:                                             ; preds = %select.unfold.i.3
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.3, i64 32
  %i.ek = load double, ptr %i.dn, align 8         ; 2 uses
  %i.el = load double, ptr %i.ej, align 8         ; 2 uses
  %i.em = fcmp oeq double %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.eo = load double, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.3, i64 40
  %i.eq = load double, ptr %i.ep, align 8
  %i.er = fcmp olt double %i.eo, %i.eq
  %i.es = fcmp olt double %i.ek, %i.el
  %.0.i.i6.i.3 = select i1 %i.em, i1 %i.er, i1 %i.es
  br label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.3

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.3: ; preds = %bb.s, %select.unfold.i.3
  %i.et = phi i1 [ %.0.i.i6.i.3, %bb.s ], [ true, %select.unfold.i.3 ]
  %i.eu = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %.noexc.3 unwind label %bb.u   ; 2 uses

.noexc.3:                                         ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.3
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i64 16, i1 false)
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.et, ptr noundef nonnull %i.eu, ptr noundef nonnull %.sroa.4.0.i.ph.i.3, ptr noundef nonnull align 8 dereferenceable(32) %i.e) #27
  %i.ew = load i64, ptr %i.i, align 8
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %i.i, align 8
  %.pre332 = load ptr, ptr %i.f, align 8
  br label %bb.t

bb.t:                                             ; preds = %.noexc.3, %bb.r
  %i.ey = phi ptr [ %.pre332, %.noexc.3 ], [ %.02123.i.i.3, %bb.r ] ; 7 uses
  %.not10.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not10.i.i.i, label %.critedge155, label %.lr.ph.i.i.i

bb.u:                                             ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.3, %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.2, %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i.1, %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE10_M_insert_IRKS1_NS8_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS1_EPSt18_Rb_tree_node_baseSG_OT_RT0_.exit.i
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  resume { ptr, i32 } %i.ez

_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit: ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fa = load double, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %i.fb = fcmp oeq double %i.z, %i.fa
  %.19.i.i.i.sroa.sel260.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel260.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel260.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.fc = load double, ptr %.19.i.i.i.sroa.sel260.v.sroa.sel.v.sroa.sel, align 8
  %i.fd = fcmp olt double %i.ab, %i.fc
  %i.fe = fcmp olt double %i.z, %i.fa
  %.0.i.i.i = select i1 %i.fb, i1 %i.fd, i1 %i.fe
  br i1 %.0.i.i.i, label %.critedge155, label %.lr.ph.i.i.i160

.lr.ph.i.i.i160:                                  ; preds = %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.fg = load double, ptr %i.ff, align 8         ; 8 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.fi = load double, ptr %i.fh, align 8         ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.lr.ph.i.i.i160
  %.012.i.i.i161 = phi ptr [ %i.ey, %.lr.ph.i.i.i160 ], [ %.1.i.i.i167, %bb.v ] ; 6 uses
  %.0811.i.i.i162 = phi ptr [ %i.e, %.lr.ph.i.i.i160 ], [ %.19.i.i.i164, %bb.v ] ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.012.i.i.i161, i64 32
  %i.fk = load double, ptr %i.fj, align 8         ; 2 uses
  %i.fl = fcmp oeq double %i.fk, %i.fg
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i161, i64 40
  %i.fn = load double, ptr %i.fm, align 8
  %i.fo = fcmp olt double %i.fn, %i.fi
  %i.fp = fcmp olt double %i.fk, %i.fg
  %.0.i.i.i.i163 = select i1 %i.fl, i1 %i.fo, i1 %i.fp ; 4 uses
  %.19.i.i.i164 = select i1 %.0.i.i.i.i163, ptr %.0811.i.i.i162, ptr %.012.i.i.i161 ; 2 uses
  %.1.in.v.i.i.i165 = select i1 %.0.i.i.i.i163, i64 24, i64 16
  %.1.in.i.i.i166 = getelementptr inbounds nuw i8, ptr %.012.i.i.i161, i64 %.1.in.v.i.i.i165
  %.1.i.i.i167 = load ptr, ptr %.1.in.i.i.i166, align 8 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %.1.i.i.i167, null
  br i1 %.not.i.i.i168, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i169, label %bb.v, !llvm.loop !59

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i169: ; preds = %bb.v
  %i.fq = icmp eq ptr %.19.i.i.i164, %i.e
  br i1 %i.fq, label %.critedge155, label %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit173

_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit173: ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i169
  %.19.i.i.i164.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i163, ptr %.0811.i.i.i162, ptr %.012.i.i.i161
  %.19.i.i.i164.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i164.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fr = load double, ptr %.19.i.i.i164.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %i.fs = fcmp oeq double %i.fg, %i.fr
  %.19.i.i.i164.sroa.sel263.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i163, ptr %.0811.i.i.i162, ptr %.012.i.i.i161
  %.19.i.i.i164.sroa.sel263.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i164.sroa.sel263.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.ft = load double, ptr %.19.i.i.i164.sroa.sel263.v.sroa.sel.v.sroa.sel, align 8
  %i.fu = fcmp olt double %i.fi, %i.ft
  %i.fv = fcmp olt double %i.fg, %i.fr
  %.0.i.i.i170 = select i1 %i.fs, i1 %i.fu, i1 %i.fv
  br i1 %.0.i.i.i170, label %.critedge155, label %.lr.ph.i.i.i175

.lr.ph.i.i.i175:                                  ; preds = %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit173, %.lr.ph.i.i.i175
  %.012.i.i.i176 = phi ptr [ %.1.i.i.i182, %.lr.ph.i.i.i175 ], [ %i.ey, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit173 ] ; 6 uses
  %.0811.i.i.i177 = phi ptr [ %.19.i.i.i179, %.lr.ph.i.i.i175 ], [ %i.e, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit173 ] ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.012.i.i.i176, i64 32
  %i.fx = load double, ptr %i.fw, align 8         ; 2 uses
  %i.fy = fcmp oeq double %i.fx, %i.z
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i.i.i176, i64 40
  %i.ga = load double, ptr %i.fz, align 8
  %i.gb = fcmp olt double %i.ga, %i.fi
  %i.gc = fcmp olt double %i.fx, %i.z
  %.0.i.i.i.i178 = select i1 %i.fy, i1 %i.gb, i1 %i.gc ; 4 uses
  %.19.i.i.i179 = select i1 %.0.i.i.i.i178, ptr %.0811.i.i.i177, ptr %.012.i.i.i176 ; 2 uses
  %.1.in.v.i.i.i180 = select i1 %.0.i.i.i.i178, i64 24, i64 16
  %.1.in.i.i.i181 = getelementptr inbounds nuw i8, ptr %.012.i.i.i176, i64 %.1.in.v.i.i.i180
  %.1.i.i.i182 = load ptr, ptr %.1.in.i.i.i181, align 8 ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %.1.i.i.i182, null
  br i1 %.not.i.i.i183, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i184, label %.lr.ph.i.i.i175, !llvm.loop !59

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i184: ; preds = %.lr.ph.i.i.i175
  %i.gd = icmp eq ptr %.19.i.i.i179, %i.e
  br i1 %i.gd, label %.critedge155, label %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit188

_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit188: ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i184
  %.19.i.i.i179.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i178, ptr %.0811.i.i.i177, ptr %.012.i.i.i176
  %.19.i.i.i179.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i179.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.ge = load double, ptr %.19.i.i.i179.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %i.gf = fcmp oeq double %i.z, %i.ge
  %.19.i.i.i179.sroa.sel266.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i178, ptr %.0811.i.i.i177, ptr %.012.i.i.i176
  %.19.i.i.i179.sroa.sel266.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i179.sroa.sel266.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.gg = load double, ptr %.19.i.i.i179.sroa.sel266.v.sroa.sel.v.sroa.sel, align 8
  %i.gh = fcmp olt double %i.fi, %i.gg
  %i.gi = fcmp olt double %i.z, %i.ge
  %.0.i.i.i185 = select i1 %i.gf, i1 %i.gh, i1 %i.gi
  br i1 %.0.i.i.i185, label %.critedge155, label %.lr.ph.i.i.i190

.lr.ph.i.i.i190:                                  ; preds = %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit188, %.lr.ph.i.i.i190
  %.012.i.i.i191 = phi ptr [ %.1.i.i.i197, %.lr.ph.i.i.i190 ], [ %i.ey, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit188 ] ; 6 uses
  %.0811.i.i.i192 = phi ptr [ %.19.i.i.i194, %.lr.ph.i.i.i190 ], [ %i.e, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit188 ] ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i191, i64 32
  %i.gk = load double, ptr %i.gj, align 8         ; 2 uses
  %i.gl = fcmp oeq double %i.gk, %i.fg
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i191, i64 40
  %i.gn = load double, ptr %i.gm, align 8
  %i.go = fcmp olt double %i.gn, %i.ab
  %i.gp = fcmp olt double %i.gk, %i.fg
  %.0.i.i.i.i193 = select i1 %i.gl, i1 %i.go, i1 %i.gp ; 4 uses
  %.19.i.i.i194 = select i1 %.0.i.i.i.i193, ptr %.0811.i.i.i192, ptr %.012.i.i.i191 ; 2 uses
  %.1.in.v.i.i.i195 = select i1 %.0.i.i.i.i193, i64 24, i64 16
  %.1.in.i.i.i196 = getelementptr inbounds nuw i8, ptr %.012.i.i.i191, i64 %.1.in.v.i.i.i195
  %.1.i.i.i197 = load ptr, ptr %.1.in.i.i.i196, align 8 ; 2 uses
  %.not.i.i.i198 = icmp eq ptr %.1.i.i.i197, null
  br i1 %.not.i.i.i198, label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i199, label %.lr.ph.i.i.i190, !llvm.loop !59

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i199: ; preds = %.lr.ph.i.i.i190
  %i.gq = icmp eq ptr %.19.i.i.i194, %i.e
  br i1 %i.gq, label %.critedge155, label %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit203

_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit203: ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i199
  %.19.i.i.i194.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i193, ptr %.0811.i.i.i192, ptr %.012.i.i.i191
  %.19.i.i.i194.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i194.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.gr = load double, ptr %.19.i.i.i194.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %i.gs = fcmp oeq double %i.fg, %i.gr
  %.19.i.i.i194.sroa.sel269.v.sroa.sel.v.sroa.sel.v = select i1 %.0.i.i.i.i193, ptr %.0811.i.i.i192, ptr %.012.i.i.i191
  %.19.i.i.i194.sroa.sel269.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i194.sroa.sel269.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.gt = load double, ptr %.19.i.i.i194.sroa.sel269.v.sroa.sel.v.sroa.sel, align 8
  %i.gu = fcmp olt double %i.ab, %i.gt
  %i.gv = fcmp olt double %i.fg, %i.gr
  %.0.i.i.i200 = select i1 %i.gs, i1 %i.gu, i1 %i.gv
  br i1 %.0.i.i.i200, label %.critedge155, label %bb.x

.critedge155:                                     ; preds = %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i199, %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i184, %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i169, %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, %bb.t, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit188, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit173, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit203
  invoke void @_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ey)
          to label %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %.critedge155
  %i.gw = landingpad { ptr, i32 }
          catch ptr null
  %i.gx = extractvalue { ptr, i32 } %i.gw, 0
  call void @__clang_call_terminate(ptr %i.gx) #28
  unreachable

_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit: ; preds = %.critedge155
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %.pre333 = load ptr, ptr %i.s, align 8          ; 2 uses
  %.pre334 = load ptr, ptr %i.p, align 8          ; 2 uses
  %.pre337 = ptrtoint ptr %.pre333 to i64
  %.pre338 = ptrtoint ptr %.pre334 to i64
  %.pre340 = sub i64 %.pre337, %.pre338
  %i.gy = icmp eq ptr %.pre333, %.pre334
  br label %bb.z

bb.x:                                             ; preds = %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EE4findERKS1_.exit203
  invoke void @_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull %i.ey)
          to label %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit204 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #28
  unreachable

_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit204: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit

bb.z:                                             ; preds = %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit, %bb.c
  %.pre-phi341 = phi i64 [ %.pre340, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit ], [ %i.x, %bb.c ] ; 2 uses
  %i.hb = phi i1 [ %i.gy, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit ], [ false, %bb.c ]
  %i.hc = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 3 uses
  %i.hd = load double, ptr %i.q, align 8
  %i.he = load double, ptr %i.hc, align 8
  %i.hf = fsub double %i.hd, %i.he                ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.hh = load double, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.p, i64 48 ; 3 uses
  %i.hj = load double, ptr %i.hi, align 8
  %i.hk = fsub double %i.hh, %i.hj                ; 2 uses
  %i.hl = fmul double %i.hk, %i.hk
  %i.hm = call noundef double @llvm.fmuladd.f64(double %i.hf, double %i.hf, double %i.hl)
  %sqrt.i = call noundef double @llvm.sqrt.f64(double %i.hm) ; 3 uses
  %i.hn = fdiv double %sqrt.i, 1.000000e+03       ; 8 uses
  %i.ho = ashr exact i64 %.pre-phi341, 4          ; 3 uses
  %i.hp = ashr exact i64 %.pre-phi341, 3
  br i1 %i.hb, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.hq = fmul double %sqrt.i, %sqrt.i
  %i.hr = fmul double %i.hq, f0x3FE6666666666666
  br label %bb.ab

._crit_edge:                                      ; preds = %.thread, %bb.z
  %i.hs = call noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
  br i1 %i.hs, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.ht = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.hu = call noundef ptr @_ZN6Assimp12LogFunctionsINS_11IFCImporterEE6PrefixEv()
  store ptr %i.hu, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger5errorIJPKcRA64_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ht, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(64) @.str)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit

bb.ab:                                            ; preds = %.lr.ph, %.thread
  %.0131309 = phi i64 [ -1, %.lr.ph ], [ %.2133281, %.thread ] ; 6 uses
  %.0134308 = phi i64 [ 0, %.lr.ph ], [ %i.nu, %.thread ]
  %.0135307 = phi i64 [ 0, %.lr.ph ], [ %i.nt, %.thread ]
  %.0136306 = phi i64 [ -1, %.lr.ph ], [ %.3139280, %.thread ] ; 3 uses
  %.sroa.0242.0305 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.0242.1, %.thread ]
  %.sroa.8.0304 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.8.2279, %.thread ] ; 2 uses
  %.0135307.fr = freeze i64 %.0135307             ; 8 uses
  %i.hv = load ptr, ptr %i.p, align 8
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hv, i64 %.0135307.fr ; 2 uses
  %i.hx = load double, ptr %i.hw, align 8         ; 2 uses
  %i.hy = load double, ptr %i.q, align 8          ; 2 uses
  %i.hz = fsub double %i.hx, %i.hy
  %i.ia = call double @llvm.fabs.f64(double %i.hz)
  %i.ib = fcmp olt double %i.ia, %i.hn
  br i1 %i.ib, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = load double, ptr %i.hc, align 8         ; 2 uses
  %i.id = fsub double %i.hx, %i.ic
  %i.ie = call double @llvm.fabs.f64(double %i.id)
  %i.if = fcmp olt double %i.ie, %i.hn
  br i1 %i.if, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ac, %bb.ad
  %.sroa.0242.1 = phi double [ %.sroa.0242.0305, %bb.ac ], [ %i.ic, %bb.ad ], [ %i.hy, %bb.ab ] ; 4 uses
  %.0125 = phi i1 [ false, %bb.ac ], [ true, %bb.ad ], [ true, %bb.ab ]
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.ih = load double, ptr %i.ig, align 8         ; 2 uses
  %i.ii = load double, ptr %i.hg, align 8         ; 2 uses
  %i.ij = fsub double %i.ih, %i.ii
  %i.ik = call double @llvm.fabs.f64(double %i.ij)
  %i.il = fcmp olt double %i.ik, %i.hn
  br i1 %i.il, label %.critedge157, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.im = load double, ptr %i.hi, align 8         ; 2 uses
  %i.in = fsub double %i.ih, %i.im
  %i.io = call double @llvm.fabs.f64(double %i.in)
  %i.ip = fcmp olt double %i.io, %i.hn            ; 2 uses
  %brmerge = or i1 %.0125, %i.ip
  %.mux = select i1 %i.ip, double %i.im, double %.sroa.8.0304
  br i1 %brmerge, label %.critedge157, label %.thread

.critedge157:                                     ; preds = %bb.af, %bb.ae
  %.sroa.8.1 = phi double [ %.mux, %bb.af ], [ %i.ii, %bb.ae ] ; 5 uses
  %.not = icmp eq i64 %.0131309, -1
  br i1 %.not, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %.critedge157
  %i.iq = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ir = load ptr, ptr %2, align 8
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = sub i64 %i.is, %i.it                    ; 2 uses
  %i.iv = sdiv exact i64 %i.iu, 24                ; 2 uses
  %i.iw = icmp ugt i64 %.0131309, %.0135307.fr
  %.neg = sub i64 %.0135307.fr, %.0131309
  %i.ix = select i1 %i.iw, i64 %i.ho, i64 0
  %i.iy = add i64 %i.ix, %.neg                    ; 2 uses
  br label %bb.ai

bb.ah:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_fEEERS1_DpOT_.exit
  %i.iz = load ptr, ptr %i.p, align 8
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %.0131309 ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8         ; 3 uses
  %i.jc = fcmp une double %.sroa.0242.1, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.je = load double, ptr %i.jd, align 8         ; 3 uses
  %i.jf = fcmp une double %.sroa.8.1, %i.je
  %i.jg = select i1 %i.jc, i1 true, i1 %i.jf
  br i1 %i.jg, label %bb.ao, label %bb.az

bb.ai:                                            ; preds = %bb.ag, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_fEEERS1_DpOT_.exit
  %i.jh = phi ptr [ %i.iq, %bb.ag ], [ %i.kp, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_fEEERS1_DpOT_.exit ] ; 7 uses
  %.0119303 = phi i64 [ 0, %bb.ag ], [ %i.ks, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_fEEERS1_DpOT_.exit ]
  %.0120302 = phi i64 [ %.0131309, %bb.ag ], [ %i.kr, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_fEEERS1_DpOT_.exit ] ; 2 uses
  %i.ji = load ptr, ptr %i.p, align 8
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %i.ji, i64 %.0120302 ; 2 uses
  %i.jk = load <2 x double>, ptr %i.jj, align 8   ; 3 uses
  %i.jl = extractelement <2 x double> %i.jk, i64 0
  %i.jm = fsub double %i.jl, %.sroa.0242.1        ; 2 uses
  %i.jn = extractelement <2 x double> %i.jk, i64 1
  %i.jo = fsub double %i.jn, %.sroa.8.1           ; 2 uses
  %i.jp = fmul double %i.jo, %i.jo
  %i.jq = call noundef double @llvm.fmuladd.f64(double %i.jm, double %i.jm, double %i.jp)
  %i.jr = fcmp ogt double %i.jq, %i.hr
  br i1 %i.jr, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_fEEERS1_DpOT_.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.js = load ptr, ptr %i.k, align 8
  %.not.i = icmp eq ptr %i.jh, %i.js
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store <2 x double> %i.jk, ptr %i.jh, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store double 0.000000e+00, ptr %i.jt, align 8
  %i.ju = load ptr, ptr %i.j, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 24 ; 2 uses
  store ptr %i.jv, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRKdS6_fEEERS1_DpOT_.exit

bb.al:                                            ; preds = %bb.aj
  %i.jw = load ptr, ptr %2, align 8               ; 5 uses
  %i.jx = ptrtoint ptr %i.jh to i64
  %i.jy = ptrtoint ptr %i.jw to i64
  %i.jz = sub i64 %i.jx, %i.jy                    ; 4 uses
  %i.ka = icmp eq i64 %i.jz, 9223372036854775800
  br i1 %i.ka, label %bb.am, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.al
  %i.kb = sdiv exact i64 %i.jz, 24                ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %i.kc = add nsw i64 %.sroa.speculated.i.i.i, %i.kb ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.kb
  %i.ke = call i64 @llvm.umin.i64(i64 %i.kc, i64 384307168202282325)
  %i.kf = select i1 %i.kd, i64 384307168202282325, i64 %i.ke ; 3 uses
  %.not.i.i.i207 = icmp ne i64 %i.kf, 0
  call void @llvm.assume(i1 %.not.i.i.i207)
  %i.kg = mul nuw nsw i64 %i.kf, 24
  %i.kh = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #25 ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.jz ; 2 uses
  %i.kj = load <2 x double>, ptr %i.jj, align 8
  store <2 x double> %i.kj, ptr %i.ki, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  store double 0.000000e+00, ptr %i.kk, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.jw, %i.jh
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.km, %.lr.ph.i.i.i.i.i ], [ %i.kh, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.kl, %.lr.ph.i.i.i.i.i ], [ %i.jw, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i, i64 24, i1 false), !alias.scope !61
  %i.kl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kl, %i.jh
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.kh, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.km, %.lr.ph.i.i.i.i.i ]
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKdS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.jz) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKdS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRKdS6_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.an, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.kh, ptr %2, align 8
  store ptr %i.kn, ptr %i.j, align 8
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %i.kh, i64 %i.kf
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC20InsertWindowContoursERKSt6vectorINS0_22ProjectedWindowContourESaIS2_EERKS1_INS0_11TempOpeningESaIS7_EERNS0_8TempMeshE:bb.a
bb.aq:                                            ; preds = %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ao, %bb.ap, %bb.aq
  %.sroa.0236.0 = phi double [ %.sroa.0242.1, %bb.ap ], [ %i.kx, %bb.aq ], [ %i.kt, %bb.ao ] ; 2 uses
  %i.lb = load double, ptr %i.hg, align 8         ; 2 uses
  %i.lc = fsub double %i.je, %i.lb
  %i.ld = call double @llvm.fabs.f64(double %i.lc)
  %i.le = fcmp olt double %i.ld, %i.hn
  br i1 %i.le, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.lf = load double, ptr %i.hi, align 8         ; 2 uses
  %i.lg = fsub double %i.je, %i.lf
  %i.lh = call double @llvm.fabs.f64(double %i.lg)
  %i.li = fcmp olt double %i.lh, %i.hn
  br i1 %i.li, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  br label %bb.au

bb.au:                                            ; preds = %bb.ar, %bb.as, %bb.at
  %.sroa.7.0 = phi double [ %.sroa.8.1, %bb.as ], [ %i.lf, %bb.at ], [ %i.lb, %bb.ar ] ; 2 uses
  %i.lj = load ptr, ptr %i.k, align 8
  %.not.i208 = icmp eq ptr %i.kp, %i.lj
  br i1 %.not.i208, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store double %.sroa.0236.0, ptr %i.kp, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  store double %.sroa.7.0, ptr %i.lk, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  store double 0.000000e+00, ptr %i.ll, align 8
  %i.lm = load ptr, ptr %i.j, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 24 ; 2 uses
  store ptr %i.ln, ptr %i.j, align 8
  %.pre335 = load ptr, ptr %2, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit

bb.aw:                                            ; preds = %bb.au
  %i.lo = load ptr, ptr %2, align 8               ; 5 uses
  %i.lp = ptrtoint ptr %i.kp to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq                    ; 4 uses
  %i.ls = icmp eq i64 %i.lr, 9223372036854775800
  br i1 %i.ls, label %bb.ax, label %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209

bb.ax:                                            ; preds = %bb.aw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209: ; preds = %bb.aw
  %i.lt = sdiv exact i64 %i.lr, 24                ; 3 uses
  %.sroa.speculated.i.i.i210 = call i64 @llvm.umax.i64(i64 %i.lt, i64 1)
  %i.lu = add nsw i64 %.sroa.speculated.i.i.i210, %i.lt ; 2 uses
  %i.lv = icmp ult i64 %i.lu, %i.lt
  %i.lw = call i64 @llvm.umin.i64(i64 %i.lu, i64 384307168202282325)
  %i.lx = select i1 %i.lv, i64 384307168202282325, i64 %i.lw ; 3 uses
  %.not.i.i.i211 = icmp ne i64 %i.lx, 0
  call void @llvm.assume(i1 %.not.i.i.i211)
  %i.ly = mul nuw nsw i64 %i.lx, 24
  %i.lz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ly) #25 ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lr ; 3 uses
  store double %.sroa.0236.0, ptr %i.ma, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store double %.sroa.7.0, ptr %i.mb, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store double 0.000000e+00, ptr %i.mc, align 8
  %.not10.i.i.i.i.i212 = icmp eq ptr %i.lo, %i.kp
  br i1 %.not10.i.i.i.i.i212, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217, label %.lr.ph.i.i.i.i.i213

.lr.ph.i.i.i.i.i213:                              ; preds = %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209, %.lr.ph.i.i.i.i.i213
  %.012.i.i.i.i.i214 = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i213 ], [ %i.lz, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209 ] ; 2 uses
  %.0911.i.i.i.i.i215 = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i213 ], [ %i.lo, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i214, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i215, i64 24, i1 false), !alias.scope !67
  %i.md = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i215, i64 24 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i214, i64 24 ; 2 uses
  %.not.i.i.i.i.i216 = icmp eq ptr %i.md, %i.kp
  br i1 %.not.i.i.i.i.i216, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217, label %.lr.ph.i.i.i.i.i213, !llvm.loop !65

_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217: ; preds = %.lr.ph.i.i.i.i.i213, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209
  %.0.lcssa.i.i.i.i.i218 = phi ptr [ %i.lz, %_ZNKSt6vectorI10aiVector3tIdESaIS1_EE12_M_check_lenEmPKc.exit.i.i209 ], [ %i.me, %.lr.ph.i.i.i.i.i213 ]
  %i.mf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i218, i64 24 ; 2 uses
  %.not.i35.i.i219 = icmp eq ptr %i.lo, null
  br i1 %.not.i35.i.i219, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.lr) #26
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.ay, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i217
  store ptr %i.lz, ptr %2, align 8
  store ptr %i.mf, ptr %i.j, align 8
  %i.mg = getelementptr inbounds nuw [24 x i8], ptr %i.lz, i64 %i.lx
  store ptr %i.mg, ptr %i.k, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit

bb.az:                                            ; preds = %bb.ah
  %i.mh = icmp eq i64 %i.iy, 1
  %.pre336 = load ptr, ptr %2, align 8            ; 4 uses
  br i1 %i.mh, label %bb.ba, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit

bb.ba:                                            ; preds = %bb.az
  %i.mi = getelementptr inbounds i8, ptr %.pre336, i64 %i.iu ; 3 uses
  %.not.i.i = icmp eq ptr %i.mi, %i.kp
  br i1 %.not.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit, label %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.ba
  store ptr %i.mi, ptr %i.j, align 8
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit: ; preds = %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.ba, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.av, %bb.az
  %i.mj = phi ptr [ %.pre336, %bb.az ], [ %.pre336, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %.pre336, %bb.ba ], [ %i.lz, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.pre335, %bb.av ]
  %i.mk = phi ptr [ %i.kp, %bb.az ], [ %i.mi, %_ZSt8_DestroyIP10aiVector3tIdES1_EvT_S3_RSaIT0_E.exit.i.i.i ], [ %i.kp, %bb.ba ], [ %i.mf, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE17_M_realloc_insertIJRdS5_fEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ln, %bb.av ]
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mj to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = sdiv exact i64 %i.mn, 24                ; 2 uses
  %.not150 = icmp eq i64 %i.mo, %i.iv
  br i1 %.not150, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit
  %i.mp = sub nsw i64 %i.mo, %i.iv                ; 2 uses
  %i.mq = trunc i64 %i.mp to i32                  ; 2 uses
  %i.mr = load ptr, ptr %i.m, align 8             ; 3 uses
  %i.ms = load ptr, ptr %i.n, align 8
  %.not.i.i221 = icmp eq ptr %i.mr, %i.ms
  br i1 %.not.i.i221, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.mq, ptr %i.mr, align 4
  %i.mt = load ptr, ptr %i.m, align 8
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 4
  store ptr %i.mu, ptr %i.m, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.bd:                                            ; preds = %bb.bb
  %i.mv = load ptr, ptr %i.l, align 8             ; 4 uses
  %i.mw = ptrtoint ptr %i.mr to i64
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = sub i64 %i.mw, %i.mx                    ; 6 uses
  %i.mz = icmp eq i64 %i.my, 9223372036854775804
  br i1 %i.mz, label %bb.be, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bd
  %i.na = ashr exact i64 %i.my, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.na, i64 1)
  %i.nb = add nsw i64 %.sroa.speculated.i.i.i.i, %i.na ; 2 uses
  %i.nc = icmp ult i64 %i.nb, %i.na
  %i.nd = call i64 @llvm.umin.i64(i64 %i.nb, i64 2305843009213693951)
  %i.ne = select i1 %i.nc, i64 2305843009213693951, i64 %i.nd ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ne, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.nf = shl nuw nsw i64 %i.ne, 2
  %i.ng = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nf) #25 ; 4 uses
  %i.nh = getelementptr inbounds i8, ptr %i.ng, i64 %i.my ; 2 uses
  store i32 %i.mq, ptr %i.nh, align 4
  %i.ni = icmp sgt i64 %i.my, 0
  br i1 %i.ni, label %bb.bf, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.bf:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ng, ptr align 4 %i.mv, i64 %i.my, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bf, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.my) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.bg, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ng, ptr %i.l, align 8
  store ptr %i.nj, ptr %i.m, align 8
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.ne
  store ptr %i.nk, ptr %i.n, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.bc, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %.idx = mul i64 %i.mp, -24                      ; 2 uses
  %i.nl = icmp slt i64 %.idx, -24
  br i1 %i.nl, label %.lr.ph.i.i.preheader, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.nm = load ptr, ptr %i.j, align 8, !noalias !71 ; 2 uses
  %i.nn = getelementptr inbounds i8, ptr %i.nm, i64 %.idx ; 2 uses
  %storemerge4.i.i = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.01.0.i = phi ptr [ %i.np, %.lr.ph.i.i ], [ %i.nm, %.lr.ph.i.i.preheader ]
  %.sroa.0.0.i = phi ptr [ %storemerge.i.i, %.lr.ph.i.i ], [ %storemerge4.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.no = phi ptr [ %.sroa.0.0.i, %.lr.ph.i.i ], [ %i.nn, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 -24 ; 4 uses
  %.sroa.0.0.copyload = load <3 x double>, ptr %i.np, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.np, ptr noundef nonnull align 8 dereferenceable(24) %i.no, i64 24, i1 false)
  store <3 x double> %.sroa.0.0.copyload, ptr %i.no, align 8
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24 ; 2 uses
  %i.nq = icmp ult ptr %storemerge.i.i, %i.np
  br i1 %i.nq, label %.lr.ph.i.i, label %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit, !llvm.loop !74

_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit: ; preds = %.lr.ph.i.i, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJRdS5_fEEERS1_DpOT_.exit
  %.not151 = icmp eq i64 %.0135307.fr, %.0136306
  br i1 %.not151, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit, label %.thread

.thread:                                          ; preds = %bb.af, %.critedge157, %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit
  %.2133281 = phi i64 [ %.0135307.fr, %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit ], [ %.0135307.fr, %.critedge157 ], [ %.0131309, %bb.af ]
  %.3139280 = phi i64 [ %.0136306, %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit ], [ %.0135307.fr, %.critedge157 ], [ %.0136306, %bb.af ]
  %.sroa.8.2279 = phi double [ %.sroa.8.1, %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit ], [ %.sroa.8.1, %.critedge157 ], [ %.sroa.8.0304, %bb.af ]
  %i.nr = add i64 %.0135307.fr, 1                 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, %i.ho
  %i.nt = select i1 %i.ns, i64 0, i64 %i.nr
  %i.nu = add i64 %.0134308, 1                    ; 2 uses
  %i.nv = icmp eq i64 %i.nu, %i.hp
  br i1 %i.nv, label %._crit_edge, label %bb.ab, !llvm.loop !75

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogErrorIJRA64_KcEEEvDpOT_.exit: ; preds = %_ZSt7reverseISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIP10aiVector3tIdESt6vectorIS4_SaIS4_EEEEEEvT_SB_.exit, %._crit_edge, %bb.aa, %_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit204, %bb.b
  %i.nw = add nuw i64 %.0310, 1                   ; 2 uses
  %i.nx = load ptr, ptr %i.b, align 8
  %i.ny = load ptr, ptr %0, align 8               ; 2 uses
  %i.nz = ptrtoint ptr %i.nx to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = sdiv exact i64 %i.ob, 104
  %i.od = icmp ult i64 %i.nw, %i.oc
  br i1 %i.od, label %bb.b, label %._crit_edge313, !llvm.loop !76
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3setI10aiVector2tIdEN6Assimp3IFC8XYSorterESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  invoke void @_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeI10aiVector2tIdES1_St9_IdentityIS1_EN6Assimp3IFC8XYSorterESaIS1_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3IFC19MergeWindowContoursERKSt6vectorI10aiVector2tIdESaIS3_EES7_RS1_IS1_IN10ClipperLib8IntPointESaIS9_EESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ClipperLib::Clipper", align 8 ; 20 uses
  %4 = alloca %"class.std::vector.10", align 8    ; 24 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #26
  br label %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIN10ClipperLib8IntPointESaIS2_EEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8
  br label %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit

_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt6vectorIN10ClipperLib8IntPointESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN10ClipperLib7ClipperC1Ei(ptr noundef nonnull align 8 dereferenceable(135) %3, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not70 = icmp eq ptr %i.k, %i.m
  br i1 %.not70, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit, %_ZNSt6vectorIS_IN10ClipperLib8IntPointESaIS1_EESaIS3_EE5clearEv.exit
  %i.p = invoke noundef zeroext i1 @_ZN10ClipperLib11OrientationERKSt6vectorINS_8IntPointESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.h unwind label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.au, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 6 uses
  %.sroa.060.071 = phi ptr [ %i.k, %.lr.ph ], [ %i.av, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit ] ; 3 uses
  %i.r = load double, ptr %.sroa.060.071, align 8
  %i.s = fmul double %i.r, f0x41D6A09E66400000
  %i.t = fptoui double %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.060.071, i64 8
  %i.v = load double, ptr %i.u, align 8
  %i.w = fmul double %i.v, f0x41D6A09E66400000
  %i.x = fptoui double %i.w to i64                ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8
  %.not.i = icmp eq ptr %i.q, %i.y
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.t, ptr %i.q, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.x, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.n, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  store ptr %i.ab, ptr %i.n, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %4, align 8               ; 5 uses
  %i.ad = ptrtoint ptr %i.q to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.f, label %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #24
          to label %.noexc unwind label %.loopexit.split-lp65

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #25
          to label %.noexc18 unwind label %.loopexit64 ; 5 uses

.noexc18:                                         ; preds = %_ZNKSt6vectorIN10ClipperLib8IntPointESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 2 uses
  store i64 %i.t, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.x, ptr %i.ap, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.ac, %i.q
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc18, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %i.an, %.noexc18 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.ac, %.noexc18 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !78
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.q
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !82

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc18
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %.noexc18 ], [ %i.ar, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i34.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.af) #26
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.an, ptr %4, align 8
  store ptr %i.as, ptr %i.n, align 8
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  store ptr %i.at, ptr %i.o, align 8
  br label %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit

_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE12emplace_backIJyyEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %i.au = phi ptr [ %i.as, %_ZNSt6vectorIN10ClipperLib8IntPointESaIS1_EE17_M_realloc_insertIJyyEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ab, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.060.071, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.av, %i.m
  br i1 %.not, label %._crit_edge, label %bb.c
end_hunk_2
