Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/types_icp?download=true
inline.NumInlined: 15254
inline.NumDeleted: 8448
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.Eigen::symbolic::SymbolExpr" = type { i8 }
%"class.Eigen::symbolic::AddExpr" = type { [2 x i8] }
%"struct.Eigen::internal::all_t" = type { i8 }
%"class.g2o::RegisterTypeProxy" = type { %"class.std::__cxx11::basic_string", %"class.std::shared_ptr" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [9 x double] }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Inverse" = type { %"class.Eigen::CwiseBinaryOp.369" }
%"class.Eigen::CwiseBinaryOp.369" = type <{ ptr, %"class.Eigen::Product.375", [8 x i8] }>
%"class.Eigen::Product.375" = type { %"class.Eigen::Product.155", %"class.Eigen::Transpose" }
%"class.Eigen::Product.155" = type { ptr, ptr }
%"class.Eigen::Transpose" = type { ptr }
%"class.Eigen::Matrix.21" = type { %"class.Eigen::PlainObjectBase.22" }
%"class.Eigen::PlainObjectBase.22" = type { %"class.Eigen::DenseStorage.29" }
%"class.Eigen::DenseStorage.29" = type { %"struct.Eigen::internal::plain_array.30" }
%"struct.Eigen::internal::plain_array.30" = type { [3 x double] }
%"class.Eigen::PartialPivLU" = type <{ %"class.Eigen::Matrix.2249", %"class.Eigen::PermutationMatrix", %"class.Eigen::Transpositions", double, i8, i8, [6 x i8] }>
%"class.Eigen::Matrix.2249" = type { %"class.Eigen::PlainObjectBase.2250" }
%"class.Eigen::PlainObjectBase.2250" = type { %"class.Eigen::DenseStorage.2257" }
%"class.Eigen::DenseStorage.2257" = type { %"struct.Eigen::internal::plain_array.2258" }
%"struct.Eigen::internal::plain_array.2258" = type { [36 x double] }
%"class.Eigen::PermutationMatrix" = type { %"class.Eigen::Matrix.2260" }
%"class.Eigen::Matrix.2260" = type { %"class.Eigen::PlainObjectBase.2261" }
%"class.Eigen::PlainObjectBase.2261" = type { %"class.Eigen::DenseStorage.2268" }
%"class.Eigen::DenseStorage.2268" = type { %"struct.Eigen::internal::plain_array.2269" }
%"struct.Eigen::internal::plain_array.2269" = type { [6 x i32] }
%"class.Eigen::Transpositions" = type { %"class.Eigen::Matrix.2260" }
%"struct.Eigen::internal::evaluator.2581" = type { %"struct.Eigen::internal::binary_evaluator.2582" }
%"struct.Eigen::internal::binary_evaluator.2582" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Map<Eigen::Matrix<double, 6, 6, 0>>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, 6, 6, 0>>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 6, 6, 0>>>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Map<Eigen::Matrix<double, 6, 6, 0>>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, 6, 6, 0>>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 6, 6, 0>>>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.2585", %"struct.Eigen::internal::evaluator.2587" }
%"struct.Eigen::internal::evaluator.2585" = type { %"struct.Eigen::internal::evaluator.base.2116", [6 x i8] }
%"struct.Eigen::internal::evaluator.base.2116" = type { %"struct.Eigen::internal::mapbase_evaluator.base.2115" }
%"struct.Eigen::internal::mapbase_evaluator.base.2115" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.2587" = type { %"struct.Eigen::internal::evaluator.2588" }
%"struct.Eigen::internal::evaluator.2588" = type { %"struct.Eigen::internal::binary_evaluator.2589" }
%"struct.Eigen::internal::binary_evaluator.2589" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, 6, 6, 0>>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 6, 6, 0>>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_product_op<double>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_identity_op<double>, Eigen::Matrix<double, 6, 6, 0>>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<double>, const Eigen::Matrix<double, 6, 6, 0>>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.2592" }
%"struct.Eigen::internal::evaluator.2592" = type { %"struct.Eigen::internal::evaluator.base.2596", [7 x i8] }
%"struct.Eigen::internal::evaluator.base.2596" = type <{ %"struct.Eigen::internal::scalar_constant_op", i8 }>
%"struct.Eigen::internal::scalar_constant_op" = type { double }
%"struct.Eigen::internal::evaluator.2270" = type { %"struct.Eigen::internal::evaluator.2271" }
%"struct.Eigen::internal::evaluator.2271" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.2110" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.2110" = type { ptr }
%"class.Eigen::internal::generic_dense_assignment_kernel.2598" = type { ptr, ptr, ptr, ptr }
%"class.Eigen::Matrix.75" = type { %"class.Eigen::PlainObjectBase.76" }
%"class.Eigen::PlainObjectBase.76" = type { %"class.Eigen::DenseStorage.83" }
%"class.Eigen::DenseStorage.83" = type { %"struct.Eigen::internal::plain_array.84" }
%"struct.Eigen::internal::plain_array.84" = type { [6 x double] }
%"class.Eigen::LLT" = type { %"class.Eigen::Matrix.2249", double, i8, i32 }
%"class.Eigen::Matrix.560" = type { %"class.Eigen::PlainObjectBase.561" }
%"class.Eigen::PlainObjectBase.561" = type { %"class.Eigen::DenseStorage.568" }
%"class.Eigen::DenseStorage.568" = type { %"struct.Eigen::internal::plain_array.569" }
%"struct.Eigen::internal::plain_array.569" = type { [7 x double] }
%"class.Eigen::Transform" = type { %"class.Eigen::Matrix.85" }
%"class.Eigen::Matrix.85" = type { %"class.Eigen::PlainObjectBase.86" }
%"class.Eigen::PlainObjectBase.86" = type { %"class.Eigen::DenseStorage.93" }
%"class.Eigen::DenseStorage.93" = type { %"struct.Eigen::internal::plain_array.94" }
%"struct.Eigen::internal::plain_array.94" = type { [16 x double] }
%"class.Eigen::Product.3768" = type { %"class.Eigen::Product.3670", %"class.Eigen::Map.230" }
%"class.Eigen::Product.3670" = type { %"class.Eigen::Transpose.3677", ptr }
%"class.Eigen::Transpose.3677" = type { %"class.Eigen::Map.230" }
%"class.Eigen::Map.230" = type { %"class.Eigen::MapBase.base.240", [6 x i8] }
%"class.Eigen::MapBase.base.240" = type { %"class.Eigen::MapBase.base.239" }
%"class.Eigen::MapBase.base.239" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::add_assign_op" = type { i8 }
%"class.g2o::ceres::internal::FixedArray" = type { %"class.g2o::ceres::internal::FixedArray<double, 6>::Storage" }
%"class.g2o::ceres::internal::FixedArray<double, 6>::Storage" = type { %"class.g2o::ceres::internal::FixedArray<double, 6>::NonEmptyInlinedStorage", %"class.std::tuple.1671", ptr }
%"class.g2o::ceres::internal::FixedArray<double, 6>::NonEmptyInlinedStorage" = type { [48 x i8] }
%"class.std::tuple.1671" = type { %"struct.std::_Tuple_impl.1672" }
%"struct.std::_Tuple_impl.1672" = type { %"struct.std::_Head_base.1675" }
%"struct.std::_Head_base.1675" = type { i64 }
%"struct.Eigen::internal::evaluator.2125" = type { %"struct.Eigen::internal::product_evaluator.2126" }
%"struct.Eigen::internal::product_evaluator.2126" = type { %"class.Eigen::Transpose.1994", ptr, %"struct.Eigen::internal::evaluator.2028", %"struct.Eigen::internal::evaluator.388", i64 }
%"class.Eigen::Transpose.1994" = type { %"class.Eigen::Map.43" }
%"class.Eigen::Map.43" = type { %"class.Eigen::MapBase.base.53", [6 x i8] }
%"class.Eigen::MapBase.base.53" = type { %"class.Eigen::MapBase.base.52" }
%"class.Eigen::MapBase.base.52" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.2028" = type { %"struct.Eigen::internal::unary_evaluator.2029" }
%"struct.Eigen::internal::unary_evaluator.2029" = type { %"struct.Eigen::internal::evaluator.2032" }
%"struct.Eigen::internal::evaluator.2032" = type { %"struct.Eigen::internal::evaluator.base.2038", [6 x i8] }
%"struct.Eigen::internal::evaluator.base.2038" = type { %"struct.Eigen::internal::mapbase_evaluator.base.2037" }
%"struct.Eigen::internal::mapbase_evaluator.base.2037" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.388" = type { %"struct.Eigen::internal::evaluator.389" }
%"struct.Eigen::internal::evaluator.389" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.392" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.392" = type { ptr }
%"struct.Eigen::internal::evaluator.2106" = type { %"struct.Eigen::internal::evaluator.2107" }
%"struct.Eigen::internal::evaluator.2107" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.2110" }
%"class.Eigen::internal::generic_dense_assignment_kernel.2129" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::evaluator.2092" = type { %"struct.Eigen::internal::product_evaluator.2093" }
%"struct.Eigen::internal::product_evaluator.2093" = type { %"class.Eigen::Matrix.2096", %"class.Eigen::Map.43", %"struct.Eigen::internal::evaluator.2106", %"struct.Eigen::internal::evaluator.2033", i64 }
%"class.Eigen::Matrix.2096" = type { %"class.Eigen::PlainObjectBase.2097" }
%"class.Eigen::PlainObjectBase.2097" = type { %"class.Eigen::DenseStorage.2104" }
%"class.Eigen::DenseStorage.2104" = type { %"struct.Eigen::internal::plain_array.2105" }
%"struct.Eigen::internal::plain_array.2105" = type { [18 x double] }
%"struct.Eigen::internal::evaluator.2033" = type { %"struct.Eigen::internal::mapbase_evaluator.base.2037", [6 x i8] }
%"class.Eigen::Product.1987" = type { %"class.Eigen::Transpose.1994", ptr }
%"struct.Eigen::internal::evaluator.2181" = type { %"struct.Eigen::internal::unary_evaluator.2182" }
%"struct.Eigen::internal::unary_evaluator.2182" = type { %"struct.Eigen::internal::evaluator.2185" }
%"struct.Eigen::internal::evaluator.2185" = type { %"struct.Eigen::internal::evaluator.2186" }
%"struct.Eigen::internal::evaluator.2186" = type { %"struct.Eigen::internal::product_evaluator.2187" }
%"struct.Eigen::internal::product_evaluator.2187" = type { %"struct.Eigen::internal::evaluator.2106", [8 x i8], %"class.Eigen::Matrix.2096" }
%"struct.Eigen::internal::evaluator.2162" = type { %"struct.Eigen::internal::product_evaluator.2163" }
%"struct.Eigen::internal::product_evaluator.2163" = type { %"class.Eigen::Transpose.1994", %"class.Eigen::Matrix.2166", %"struct.Eigen::internal::evaluator.2028", %"struct.Eigen::internal::evaluator.2176", i64 }
%"class.Eigen::Matrix.2166" = type { %"class.Eigen::PlainObjectBase.2167" }
%"class.Eigen::PlainObjectBase.2167" = type { %"class.Eigen::DenseStorage.2174" }
%"class.Eigen::DenseStorage.2174" = type { %"struct.Eigen::internal::plain_array.2175" }
%"struct.Eigen::internal::plain_array.2175" = type { [18 x double] }
%"struct.Eigen::internal::evaluator.2176" = type { %"struct.Eigen::internal::evaluator.2177" }
%"struct.Eigen::internal::evaluator.2177" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.2110" }
%"struct.Eigen::internal::evaluator.2111" = type { %"struct.Eigen::internal::mapbase_evaluator.base.2115", [6 x i8] }
%"class.Eigen::internal::generic_dense_assignment_kernel.2180" = type { ptr, ptr, ptr, ptr }
%"class.Eigen::Ref" = type { %"class.Eigen::RefBase" }
%"class.Eigen::RefBase" = type { %"class.Eigen::MapBase.base.2323", [6 x i8], %"class.Eigen::Stride.2324" }
%"class.Eigen::MapBase.base.2323" = type { %"class.Eigen::MapBase.base.2322" }
%"class.Eigen::MapBase.base.2322" = type <{ ptr, [2 x i8] }>
%"class.Eigen::Stride.2324" = type <{ %"class.Eigen::internal::variable_if_dynamic", [8 x i8] }>
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"struct.Eigen::internal::evaluator.2451" = type { %"struct.Eigen::internal::product_evaluator.2452" }
%"struct.Eigen::internal::product_evaluator.2452" = type { %"class.Eigen::Block.2342", %"class.Eigen::Block.2390", %"struct.Eigen::internal::evaluator.2419", %"struct.Eigen::internal::evaluator.2455", i64 }
%"class.Eigen::Block.2342" = type { %"class.Eigen::BlockImpl.2343" }
%"class.Eigen::BlockImpl.2343" = type { %"class.Eigen::internal::BlockImpl_dense.2344" }
%"class.Eigen::internal::BlockImpl_dense.2344" = type { %"class.Eigen::MapBase.base.2354", %"class.Eigen::Block.2355", %"class.Eigen::internal::variable_if_dynamic", [8 x i8], i64 }
%"class.Eigen::MapBase.base.2354" = type { %"class.Eigen::MapBase.base.2353" }
%"class.Eigen::MapBase.base.2353" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::Block.2355" = type { %"class.Eigen::BlockImpl.2356" }
%"class.Eigen::BlockImpl.2356" = type { %"class.Eigen::internal::BlockImpl_dense.2357" }
%"class.Eigen::internal::BlockImpl_dense.2357" = type { %"class.Eigen::MapBase.base.2367", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.2367" = type { %"class.Eigen::MapBase.base.2366" }
%"class.Eigen::MapBase.base.2366" = type <{ ptr, [2 x i8] }>
%"class.Eigen::Block.2390" = type { %"class.Eigen::BlockImpl.2391" }
%"class.Eigen::BlockImpl.2391" = type { %"class.Eigen::internal::BlockImpl_dense.2392" }
%"class.Eigen::internal::BlockImpl_dense.2392" = type { %"class.Eigen::MapBase.2393", %"class.Eigen::Block.2370", [8 x i8], %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.2393" = type { %"class.Eigen::MapBase.2394" }
%"class.Eigen::MapBase.2394" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.2370" = type { %"class.Eigen::BlockImpl.2371" }
%"class.Eigen::BlockImpl.2371" = type { %"class.Eigen::internal::BlockImpl_dense.2372" }
%"class.Eigen::internal::BlockImpl_dense.2372" = type { %"class.Eigen::MapBase.base.2382", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.2382" = type { %"class.Eigen::MapBase.base.2381" }
%"class.Eigen::MapBase.base.2381" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.2419" = type { %"struct.Eigen::internal::block_evaluator.2420" }
%"struct.Eigen::internal::block_evaluator.2420" = type { %"struct.Eigen::internal::mapbase_evaluator.2421" }
%"struct.Eigen::internal::mapbase_evaluator.2421" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.2455" = type { %"struct.Eigen::internal::block_evaluator.base.2461", [7 x i8] }
%"struct.Eigen::internal::block_evaluator.base.2461" = type { %"struct.Eigen::internal::mapbase_evaluator.base.2460" }
%"struct.Eigen::internal::mapbase_evaluator.base.2460" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"struct.Eigen::internal::evaluator.2463" = type { %"struct.Eigen::internal::block_evaluator.2464" }
%"struct.Eigen::internal::block_evaluator.2464" = type { %"struct.Eigen::internal::mapbase_evaluator.2465" }
%"struct.Eigen::internal::mapbase_evaluator.2465" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel.2468" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::sub_assign_op" = type { i8 }
%"class.Eigen::Block.2403" = type { %"class.Eigen::BlockImpl.2404" }
%"class.Eigen::BlockImpl.2404" = type { %"class.Eigen::internal::BlockImpl_dense.2405" }
%"class.Eigen::internal::BlockImpl_dense.2405" = type { %"class.Eigen::MapBase.2406", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.2406" = type { %"class.Eigen::MapBase.2407" }
%"class.Eigen::MapBase.2407" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.2788" = type { %"struct.Eigen::internal::product_evaluator.2789" }
%"struct.Eigen::internal::product_evaluator.2789" = type { %"class.Eigen::Block.2699", %"class.Eigen::Transpose.2751", %"struct.Eigen::internal::evaluator.2792", %"struct.Eigen::internal::evaluator.2800", i64 }
%"class.Eigen::Block.2699" = type { %"class.Eigen::BlockImpl.2700" }
%"class.Eigen::BlockImpl.2700" = type { %"class.Eigen::internal::BlockImpl_dense.2701" }
%"class.Eigen::internal::BlockImpl_dense.2701" = type { %"class.Eigen::MapBase.2702", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.2702" = type { %"class.Eigen::MapBase.2703" }
%"class.Eigen::MapBase.2703" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Transpose.2751" = type { %"class.Eigen::Block.2733" }
%"class.Eigen::Block.2733" = type { %"class.Eigen::BlockImpl.2734" }
%"class.Eigen::BlockImpl.2734" = type { %"class.Eigen::internal::BlockImpl_dense.2735" }
%"class.Eigen::internal::BlockImpl_dense.2735" = type { %"class.Eigen::MapBase.2736", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.2736" = type { %"class.Eigen::MapBase.2737" }
%"class.Eigen::MapBase.2737" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"struct.Eigen::internal::evaluator.2792" = type { %"struct.Eigen::internal::block_evaluator.base.2798", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.2798" = type { %"struct.Eigen::internal::mapbase_evaluator.base.2797" }
%"struct.Eigen::internal::mapbase_evaluator.base.2797" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.2800" = type { %"struct.Eigen::internal::unary_evaluator.2801" }
%"struct.Eigen::internal::unary_evaluator.2801" = type { %"struct.Eigen::internal::evaluator.2771" }
%"struct.Eigen::internal::evaluator.2771" = type { %"struct.Eigen::internal::evaluator.base.2779", [6 x i8] }
%"struct.Eigen::internal::evaluator.base.2779" = type { %"struct.Eigen::internal::block_evaluator.base.2778" }
%"struct.Eigen::internal::block_evaluator.base.2778" = type { %"struct.Eigen::internal::mapbase_evaluator.base.2777" }
%"struct.Eigen::internal::mapbase_evaluator.base.2777" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.2804" = type { %"struct.Eigen::internal::block_evaluator.base.2810", [6 x i8] }
%"struct.Eigen::internal::block_evaluator.base.2810" = type { %"struct.Eigen::internal::mapbase_evaluator.base.2809" }
%"struct.Eigen::internal::mapbase_evaluator.base.2809" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.2812" = type { ptr, ptr, ptr, ptr }
%"class.Eigen::Block.2720" = type { %"class.Eigen::BlockImpl.2721" }
%"class.Eigen::BlockImpl.2721" = type { %"class.Eigen::internal::BlockImpl_dense.2722" }
%"class.Eigen::internal::BlockImpl_dense.2722" = type { %"class.Eigen::MapBase.base.2732", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.2732" = type { %"class.Eigen::MapBase.base.2731" }
%"class.Eigen::MapBase.base.2731" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"struct.Eigen::internal::evaluator.3775" = type { %"struct.Eigen::internal::product_evaluator.3776" }
%"struct.Eigen::internal::product_evaluator.3776" = type { %"class.Eigen::Matrix", %"class.Eigen::Map.230", %"struct.Eigen::internal::evaluator.388", %"struct.Eigen::internal::evaluator.3716", i64 }
%"struct.Eigen::internal::evaluator.3716" = type { %"struct.Eigen::internal::mapbase_evaluator.base.3720", [6 x i8] }
%"struct.Eigen::internal::mapbase_evaluator.base.3720" = type <{ ptr, [2 x i8] }>
%"struct.Eigen::internal::evaluator.3943" = type { %"struct.Eigen::internal::product_evaluator.3944" }
%"struct.Eigen::internal::product_evaluator.3944" = type { %"class.Eigen::Matrix", %"class.Eigen::Map.43", %"struct.Eigen::internal::evaluator.388", %"struct.Eigen::internal::evaluator.2033", i64 }
%"struct.Eigen::internal::evaluator.3947" = type { %"struct.Eigen::internal::mapbase_evaluator.base.3951", [6 x i8] }
%"struct.Eigen::internal::mapbase_evaluator.base.3951" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.3953" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::evaluator.3896" = type { %"struct.Eigen::internal::unary_evaluator.3897" }
%"struct.Eigen::internal::unary_evaluator.3897" = type { %"struct.Eigen::internal::evaluator.3900" }
%"struct.Eigen::internal::evaluator.3900" = type { %"struct.Eigen::internal::evaluator.3901" }
%"struct.Eigen::internal::evaluator.3901" = type { %"struct.Eigen::internal::product_evaluator.3902" }
%"struct.Eigen::internal::product_evaluator.3902" = type { %"struct.Eigen::internal::evaluator.388", %"class.Eigen::Matrix" }
%"struct.Eigen::internal::evaluator.3871" = type { %"struct.Eigen::internal::product_evaluator.3872" }
%"struct.Eigen::internal::product_evaluator.3872" = type { %"class.Eigen::Transpose.1994", %"class.Eigen::Matrix.3875", %"struct.Eigen::internal::evaluator.2028", %"struct.Eigen::internal::evaluator.3885", i64 }
%"class.Eigen::Matrix.3875" = type { %"class.Eigen::PlainObjectBase.3876" }
%"class.Eigen::PlainObjectBase.3876" = type { %"class.Eigen::DenseStorage.3883" }
%"class.Eigen::DenseStorage.3883" = type { %"struct.Eigen::internal::plain_array.3884" }
%"struct.Eigen::internal::plain_array.3884" = type { [9 x double] }
%"struct.Eigen::internal::evaluator.3885" = type { %"struct.Eigen::internal::evaluator.3886" }
%"struct.Eigen::internal::evaluator.3886" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.392" }
%"struct.Eigen::internal::evaluator.3889" = type { %"struct.Eigen::internal::mapbase_evaluator.base.3893", [6 x i8] }
%"struct.Eigen::internal::mapbase_evaluator.base.3893" = type <{ ptr, [2 x i8] }>
%"class.Eigen::internal::generic_dense_assignment_kernel.3895" = type { ptr, ptr, ptr, ptr }
%"class.g2o::ceres::internal::FixedArray.3986" = type { %"class.g2o::ceres::internal::FixedArray<double, 3>::Storage" }
%"class.g2o::ceres::internal::FixedArray<double, 3>::Storage" = type { %"class.g2o::ceres::internal::FixedArray<double, 3>::NonEmptyInlinedStorage", %"class.std::tuple.1671", ptr }
%"class.g2o::ceres::internal::FixedArray<double, 3>::NonEmptyInlinedStorage" = type { [24 x i8] }

$_ZN3g2o17RegisterTypeProxyINS_13Edge_V_V_GICPEEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN3g2o17RegisterTypeProxyINS_13Edge_V_V_GICPEED2Ev = comdat any

$_ZN3g2o13Edge_V_V_GICPD0Ev = comdat any

$_ZNK3g2o10HyperGraph4Edge11elementTypeEv = comdat any

$_ZN3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE6resizeEm = comdat any

$_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE16allVerticesFixedEv = comdat any

$_ZN3g2o13Edge_V_V_GICP12computeErrorEv = comdat any

$_ZNK3g2o8BaseEdgeILi3ENS_8EdgeGICPEE9errorDataEv = comdat any

$_ZN3g2o8BaseEdgeILi3ENS_8EdgeGICPEE9errorDataEv = comdat any

$_ZNK3g2o8BaseEdgeILi3ENS_8EdgeGICPEE15informationDataEv = comdat any

$_ZN3g2o8BaseEdgeILi3ENS_8EdgeGICPEE15informationDataEv = comdat any

$_ZNK3g2o8BaseEdgeILi3ENS_8EdgeGICPEE4chi2Ev = comdat any

$_ZN3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE22constructQuadraticFormEv = comdat any

$_ZN3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE16mapHessianMemoryEPdiib = comdat any

$_ZN3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE14linearizeOplusERNS_17JacobianWorkspaceE = comdat any

$_ZN3g2o8BaseEdgeILi3ENS_8EdgeGICPEE15initialEstimateERKSt3setIPNS_10HyperGraph6VertexESt4lessIS6_ESaIS6_EEPNS_16OptimizableGraph6VertexE = comdat any

$_ZN3g2o16OptimizableGraph4Edge23initialEstimatePossibleERKSt3setIPNS_10HyperGraph6VertexESt4lessIS5_ESaIS5_EEPNS0_6VertexE = comdat any

$_ZN3g2o16OptimizableGraph4Edge10createFromEv = comdat any

$_ZN3g2o16OptimizableGraph4Edge8createToEv = comdat any

$_ZN3g2o16OptimizableGraph4Edge12createVertexEi = comdat any

$_ZN3g2o8BaseEdgeILi3ENS_8EdgeGICPEE14setMeasurementERKS1_ = comdat any

$_ZNK3g2o8BaseEdgeILi3ENS_8EdgeGICPEE4rankEv = comdat any

$_ZThn40_N3g2o13Edge_V_V_GICPD1Ev = comdat any

$_ZThn40_N3g2o13Edge_V_V_GICPD0Ev = comdat any

$_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev = comdat any

$_ZN3g2o10VertexSCamD0Ev = comdat any

$_ZNK3g2o10HyperGraph6Vertex11elementTypeEv = comdat any

$_ZN3g2o16OptimizableGraph6Vertex5setIdEi = comdat any

$_ZNK3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE7hessianEii = comdat any

$_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE7hessianEii = comdat any

$_ZNK3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE18hessianDeterminantEv = comdat any

$_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE11hessianDataEv = comdat any

$_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE16mapHessianMemoryEPd = comdat any

$_ZNK3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE5copyBEPd = comdat any

$_ZNK3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE1bEi = comdat any

end_hunk_0
begin_hunk_1_@_ZNK3g2o13Edge_V_V_GICP5writeERSo:.preheader21
  ret i1 %i.bc
}

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o10VertexSCamC2Ev(ptr noundef nonnull align 16 dereferenceable(760) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN3g2o9VertexSE3C2Ev(ptr noundef nonnull align 16 dereferenceable(348) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10VertexSCamE, i64 16), ptr %0, align 16, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10VertexSCamE, i64 288), ptr %i.a, align 16, !tbaa !18
  ret void
}

declare void @_ZN3g2o9VertexSE3C2Ev(ptr noundef nonnull align 16 dereferenceable(348)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define void @_ZN3g2o12Edge_XYZ_VSCC2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  tail call void @_ZN3g2o16OptimizableGraph4EdgeC2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 3, ptr %i.c, align 8, !tbaa !166
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEEE, i64 16), ptr %0, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEEE, i64 264), ptr %i.b, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr null, ptr %i.e, align 8, !alias.scope !167
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr null, ptr %i.f, align 8, !alias.scope !170
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store ptr null, ptr %i.a, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !173  ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp ult i64 %i.p, 2
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 2, %i.p
  invoke void @_ZNSt6vectorIPN3g2o10HyperGraph6VertexESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.k, i64 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN3g2o14BaseBinaryEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_14VertexPointXYZENS_10VertexSCamEEC2Ev.exit unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.o, 16
  br i1 %.not.i.i, label %_ZN3g2o14BaseBinaryEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_14VertexPointXYZENS_10VertexSCamEEC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.s
  br i1 %.not.i.i.i.i, label %_ZN3g2o14BaseBinaryEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_14VertexPointXYZENS_10VertexSCamEEC2Ev.exit, label %_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.d
  store ptr %i.s, ptr %i.j, align 8, !tbaa !173
  br label %_ZN3g2o14BaseBinaryEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_14VertexPointXYZENS_10VertexSCamEEC2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(296) dereferenceable(384) %0) #27
  resume { ptr, i32 } %i.t

_ZN3g2o14BaseBinaryEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEENS_14VertexPointXYZENS_10VertexSCamEEC2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPPN3g2o10HyperGraph6VertexES3_EvT_S5_RSaIT0_E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.h, ptr %i.u, align 8, !tbaa !174
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.g, ptr %i.v, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-16, 232) (i8, ptr @_ZTVN3g2o12Edge_XYZ_VSCE, i64 16), ptr %0, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o12Edge_XYZ_VSCE, i64 264), ptr %i.b, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN3g2o12Edge_XYZ_VSC4readERSi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK3g2o12Edge_XYZ_VSC5writeERSo(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN3g2o10VertexSCam4readERSi(ptr nofree nonnull readnone align 16 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK3g2o10VertexSCam5writeERSo(ptr nofree nonnull readnone align 16 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o13Edge_V_V_GICPD0Ev(ptr noundef nonnull align 8 dereferenceable(752) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(752) dereferenceable(752) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 752) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10HyperGraph4Edge11elementTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(584) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE16allVerticesFixedEv(ptr noundef nonnull align 8 dereferenceable(584) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !102, !range !100, !noundef !101
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !102, !range !100, !noundef !101
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi3ENS_8EdgeGICPEJNS_9VertexSE3ES2_EE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o13Edge_V_V_GICP12computeErrorEv(ptr noundef nonnull align 8 dereferenceable(752) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %.sroa.0.i.i5 = alloca [4 x double], align 16   ; 7 uses
  %.sroa.0.i.i = alloca [4 x double], align 16    ; 6 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 10 uses
  %3 = alloca %"class.Eigen::Inverse", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  %i.i = load <2 x double>, ptr %i.h, align 8, !tbaa !17, !noalias !176 ; 3 uses
  store <2 x double> %i.i, ptr %.sroa.0.i.i, align 16, !tbaa !17, !noalias !176
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load double, ptr %i.j, align 8, !tbaa !29, !noalias !176
  %i.l = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.k, i64 0
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx85 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  store <2 x double> %i.l, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx85, align 16, !tbaa !29, !noalias !176
  %i.m = load <2 x double>, ptr %i.f, align 16, !tbaa !17, !noalias !176
  %i.n = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.o = fmul <2 x double> %i.n, %i.m
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 224 ; 2 uses
  %i.q = load <2 x double>, ptr %i.p, align 16, !tbaa !17, !noalias !176
  %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 8
  %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i = load <2 x double>, ptr %.sroa.0.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !noalias !176 ; 2 uses
  %i.r = shufflevector <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x double> %i.q, %i.r
  %i.t = fadd <2 x double> %i.o, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 256 ; 2 uses
  %i.v = load <2 x double>, ptr %i.u, align 16, !tbaa !17, !noalias !176
  %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 16
  %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i = load <2 x double>, ptr %.sroa.0.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !noalias !176 ; 4 uses
  %i.w = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x double> %i.v, %i.w
  %i.y = fadd <2 x double> %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.aa = load <2 x double>, ptr %i.z, align 16, !tbaa !17, !noalias !176
  %i.ab = shufflevector <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ac = fmul <2 x double> %i.aa, %i.ab
  %i.ad = fadd <2 x double> %i.ac, %i.y           ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 208 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 240 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  %4 = load double, ptr %i.ah, align 16, !tbaa !17, !noalias !176
  %i.ai = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 1
  %i.aj = fmul double %i.ai, %4
  %5 = load double, ptr %i.ae, align 16, !tbaa !17, !noalias !176
  %i.ak = extractelement <2 x double> %i.i, i64 0
  %i.al = fmul double %i.ak, %5
  %6 = load double, ptr %i.af, align 16, !tbaa !17, !noalias !176
  %i.am = extractelement <2 x double> %.sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i, i64 0
  %i.an = fmul double %i.am, %6
  %i.ao = fadd double %i.al, %i.an
  %7 = load double, ptr %i.ag, align 16, !tbaa !17, !noalias !176
  %i.ap = extractelement <2 x double> %.sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i, i64 0
  %i.aq = fmul double %i.ap, %7
  %i.ar = fadd double %i.ao, %i.aq
  %.sroa.4.16.vec.extract.i.i = fadd double %i.aj, %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !29, !noalias !181
  %.sroa.034.0.vec.insert = insertelement <2 x double> poison, double %i.at, i64 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 224 ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !29, !noalias !181
  %.sroa.034.8.vec.insert = insertelement <2 x double> %.sroa.034.0.vec.insert, double %i.av, i64 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 256 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !29, !noalias !181 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !29, !noalias !181
  %.sroa.1041.32.vec.insert = insertelement <2 x double> poison, double %i.az, i64 0
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !29, !noalias !181
  %.sroa.1041.40.vec.insert = insertelement <2 x double> %.sroa.1041.32.vec.insert, double %i.bb, i64 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !29, !noalias !181 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.bf = load double, ptr %i.be, align 8, !tbaa !29, !noalias !181
  %.sroa.1848.64.vec.insert = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 240 ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !29, !noalias !181
  %.sroa.1848.72.vec.insert = insertelement <2 x double> %.sroa.1848.64.vec.insert, double %i.bh, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !29, !noalias !181 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.bl = fneg <2 x double> %.sroa.034.8.vec.insert
  %i.bm = load double, ptr %i.bk, align 8, !tbaa !29, !noalias !181 ; 2 uses
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bp = fmul <2 x double> %i.bo, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.br = load double, ptr %i.bq, align 8, !tbaa !29, !noalias !181 ; 2 uses
  %i.bs = insertelement <2 x double> poison, double %i.br, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x double> %.sroa.1041.40.vec.insert, %i.bt
  %i.bv = fsub <2 x double> %i.bp, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !29, !noalias !181 ; 2 uses
  %i.by = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.bz = shufflevector <2 x double> %i.by, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ca = fmul <2 x double> %.sroa.1848.72.vec.insert, %i.bz
  %i.cb = fsub <2 x double> %i.bv, %i.ca
  %i.cc = fneg double %i.bj
  %i.cd = fmul double %i.bx, %i.cc
  %i.ce = fmul double %i.bd, %i.br
  %i.cf = fsub double %i.cd, %i.ce
  %i.cg = fmul double %i.ax, %i.bm
  %i.ch = fsub double %i.cf, %i.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i5)
  store <2 x double> %i.ad, ptr %.sroa.0.i.i5, align 16, !tbaa !17, !noalias !184
  %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx86 = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 16
  store double %.sroa.4.16.vec.extract.i.i, ptr %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx86, align 16, !tbaa !29, !noalias !184
  %.sroa.0.i.i5.24.i.i5.24.i.i5.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 24
  store double 1.000000e+00, ptr %.sroa.0.i.i5.24.i.i5.24.i.i5.24.i.24.i.24..sroa_idx, align 8, !tbaa !29, !noalias !184
  %i.ci = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = fmul <2 x double> %i.ci, %.sroa.034.8.vec.insert
  %.sroa.0.i.i5.8.i.i5.8.i.i5.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 8
  %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9 = load <2 x double>, ptr %.sroa.0.i.i5.8.i.i5.8.i.i5.8.i.8.i.8..sroa_idx, align 8, !noalias !184 ; 2 uses
  %i.ck = shufflevector <2 x double> %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %.sroa.1041.40.vec.insert, %i.ck
  %i.cm = fadd <2 x double> %i.cj, %i.cl
  %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i5, i64 16
  %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10 = load <2 x double>, ptr %.sroa.0.i.i5.16.i.i5.16.i.i5.16.i.16.i.16..sroa_idx, align 16, !noalias !184 ; 4 uses
  %i.cn = shufflevector <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x double> %.sroa.1848.72.vec.insert, %i.cn
  %i.cp = fadd <2 x double> %i.cm, %i.co
  %i.cq = shufflevector <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cr = fmul <2 x double> %i.cb, %i.cq
  %i.cs = fadd <2 x double> %i.cr, %i.cp
  %i.ct = extractelement <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, i64 1
  %i.cu = fmul double %i.ch, %i.ct
  %i.cv = extractelement <2 x double> %i.ad, i64 0
  %i.cw = fmul double %i.cv, %i.ax
  %i.cx = extractelement <2 x double> %.sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.i5.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i.i9, i64 0
  %i.cy = fmul double %i.bd, %i.cx
  %i.cz = fadd double %i.cw, %i.cy
  %i.da = extractelement <2 x double> %.sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.i5.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16..i.i10, i64 0
  %i.db = fmul double %i.bj, %i.da
  %i.dc = fadd double %i.cz, %i.db
  %.sroa.4.16.vec.extract.i.i11 = fadd double %i.cu, %i.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i5)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.de = load <2 x double>, ptr %i.g, align 8, !tbaa !17
  %i.df = fsub <2 x double> %i.cs, %i.de
  store <2 x double> %i.df, ptr %i.dd, align 8, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.di = load double, ptr %i.dh, align 8, !tbaa !29
  %i.dj = fsub double %.sroa.4.16.vec.extract.i.i11, %i.di
  store double %i.dj, ptr %i.dg, align 8, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !39, !range !100, !noundef !101
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.dn = load double, ptr %i.as, align 8, !tbaa !29, !noalias !189
  %.sroa.018.0.vec.insert = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.do = load double, ptr %i.au, align 8, !tbaa !29, !noalias !189
  %.sroa.018.8.vec.insert = insertelement <2 x double> %.sroa.018.0.vec.insert, double %i.do, i64 1 ; 3 uses
  %i.dp = load double, ptr %i.aw, align 8, !tbaa !29, !noalias !189 ; 3 uses
  %i.dq = load double, ptr %i.ay, align 8, !tbaa !29, !noalias !189
  %.sroa.10.32.vec.insert = insertelement <2 x double> poison, double %i.dq, i64 0
  %i.dr = load double, ptr %i.ba, align 8, !tbaa !29, !noalias !189
  %.sroa.10.40.vec.insert = insertelement <2 x double> %.sroa.10.32.vec.insert, double %i.dr, i64 1 ; 3 uses
  %i.ds = load double, ptr %i.bc, align 8, !tbaa !29, !noalias !189 ; 3 uses
  %i.dt = load double, ptr %i.be, align 8, !tbaa !29, !noalias !189
  %.sroa.18.64.vec.insert = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.du = load double, ptr %i.bg, align 8, !tbaa !29, !noalias !189
  %.sroa.18.72.vec.insert = insertelement <2 x double> %.sroa.18.64.vec.insert, double %i.du, i64 1 ; 3 uses
  %i.dv = load double, ptr %i.bi, align 8, !tbaa !29, !noalias !189 ; 3 uses
  %i.dw = load double, ptr %i.f, align 16, !tbaa !29, !noalias !192 ; 2 uses
  %i.dx = insertelement <2 x double> poison, double %i.dw, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x double> %.sroa.018.8.vec.insert, %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !29, !noalias !192 ; 2 uses
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %.sroa.10.40.vec.insert, %i.ed
  %i.ef = fadd <2 x double> %i.dz, %i.ee
  %i.eg = load double, ptr %i.ae, align 16, !tbaa !29, !noalias !192 ; 2 uses
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = fmul <2 x double> %.sroa.18.72.vec.insert, %i.ei
  %i.ek = fadd <2 x double> %i.ef, %i.ej
  %i.el = fmul double %i.dp, %i.dw
  %i.em = fmul double %i.ds, %i.eb
  %i.en = fmul double %i.dv, %i.eg
  %i.eo = fadd double %i.em, %i.en
  %i.ep = fadd double %i.el, %i.eo
  %i.eq = load double, ptr %i.p, align 16, !tbaa !29, !noalias !192 ; 2 uses
  %i.er = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.es = shufflevector <2 x double> %i.er, <2 x double> poison, <2 x i32> zeroinitializer
  %i.et = fmul <2 x double> %.sroa.018.8.vec.insert, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !29, !noalias !192 ; 2 uses
  %i.ew = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = fmul <2 x double> %.sroa.10.40.vec.insert, %i.ex
  %i.ez = fadd <2 x double> %i.et, %i.ey
  %i.fa = load double, ptr %i.af, align 16, !tbaa !29, !noalias !192 ; 2 uses
  %i.fb = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x double> %.sroa.18.72.vec.insert, %i.fc
  %i.fe = fadd <2 x double> %i.ez, %i.fd
  %i.ff = fmul double %i.dp, %i.eq
  %i.fg = fmul double %i.ds, %i.ev
  %i.fh = fmul double %i.dv, %i.fa
  %i.fi = fadd double %i.fg, %i.fh
  %i.fj = fadd double %i.ff, %i.fi
  %i.fk = load double, ptr %i.u, align 16, !tbaa !29, !noalias !192 ; 2 uses
  %i.fl = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x double> %.sroa.018.8.vec.insert, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !29, !noalias !192 ; 2 uses
  %i.fq = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.fr = shufflevector <2 x double> %i.fq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fs = fmul <2 x double> %.sroa.10.40.vec.insert, %i.fr
  %i.ft = fadd <2 x double> %i.fn, %i.fs
  %i.fu = load double, ptr %i.ag, align 16, !tbaa !29, !noalias !192 ; 2 uses
  %i.fv = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x double> %.sroa.18.72.vec.insert, %i.fw
  %i.fy = fadd <2 x double> %i.ft, %i.fx
  %i.fz = fmul double %i.dp, %i.fk
  %i.ga = fmul double %i.ds, %i.fp
  %i.gb = fmul double %i.dv, %i.fu
  %i.gc = fadd double %i.ga, %i.gb
  %i.gd = fadd double %i.fz, %i.gc
  store <2 x double> %i.ek, ptr %2, align 16, !tbaa !17
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.ep, ptr %i.ge, align 16, !tbaa !29
  %i.gf = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x double> %i.fe, ptr %i.gf, align 8, !tbaa !17
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.fj, ptr %i.gg, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x double> %i.fy, ptr %i.gh, align 16, !tbaa !17
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %i.gd, ptr %i.gi, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.gl = ptrtoint ptr %2 to i64
  store ptr %i.gj, ptr %3, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.gk, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.gl, ptr %.sroa.6.0..sroa_idx, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEENS_7InverseINS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS_7ProductINS9_IS3_S3_Li0EEENS_9TransposeIS8_EELi0EEEEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKSG_RKSI_(ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
end_hunk_1
begin_hunk_2_@_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE10discardTopEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !274
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -128
  store ptr %i.c, ptr %i.a, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEE9stackSizeEv(ptr noundef nonnull align 16 dereferenceable(344) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !274
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !211
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 7
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o10VertexSCam9oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(760) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o9VertexSE39oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1)
  tail call void @_ZN3g2o10VertexSCam6setAllEv(ptr noundef nonnull align 16 dereferenceable(760) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexSE315setToOriginImplEv(ptr noundef nonnull align 16 dereferenceable(348) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.a, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x double> zeroinitializer, ptr %i.b, align 16, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.c, align 16, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %i.e, align 16, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  store <2 x double> zeroinitializer, ptr %i.f, align 16, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %i.g, align 16, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexSE319setEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.560", align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !17
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !17
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !17
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.i = getelementptr i8, ptr %1, i64 48
  %i.j = load double, ptr %i.i, align 8, !tbaa !29
  store double %i.j, ptr %i.h, align 16, !tbaa !29
  call void @_ZN3g2o8internal12fromVectorQTERKN5Eigen6MatrixIdLi7ELi1ELi0ELi7ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.k, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !275
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexSE326setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(348) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Transform", align 16 ; 4 uses
  %3 = alloca %"class.Eigen::Matrix.75", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !17
  store <2 x double> %i.a, ptr %3, align 16, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !17
  store <2 x double> %i.d, ptr %i.b, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !17
  store <2 x double> %i.g, ptr %i.e, align 16, !tbaa !17
  call void @_ZN3g2o8internal13fromVectorMQTERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr dead_on_unwind nonnull writable sret(%"class.Eigen::Transform") align 16 %2, ptr noundef nonnull align 16 dereferenceable(48) %3)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.h, ptr noundef nonnull align 16 dereferenceable(128) %2, i64 128, i1 false), !tbaa.struct !275
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 true
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10VertexSCamD1Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %0, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !211 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !214
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !215
  br label %_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit

_ZN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(760) %i.a) #27, !inline_history !215
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10VertexSCamD0Ev(ptr noundef %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 16), ptr %i.a, align 16, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6EN5Eigen9TransformIdLi3ELi1ELi0EEEEE, i64 288), ptr %0, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !211 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o10VertexSCamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !214
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !215
  br label %_ZN3g2o10VertexSCamD0Ev.exit

_ZN3g2o10VertexSCamD0Ev.exit:                     ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(760) %i.a) #27, !inline_history !215
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(760) %i.a, i64 noundef 768) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o12Edge_XYZ_VSCD0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o16OptimizableGraph4EdgeD2Ev(ptr noundef nonnull align 8 dead_on_return(384) dereferenceable(384) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 384) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(368) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3g2o10HyperGraph4Edge6resizeEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE16allVerticesFixedEv(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 100
  %i.e = load i8, ptr %i.d, align 4, !tbaa !102, !range !100, !noundef !101
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 100
  %i.j = load i8, ptr %i.i, align 4, !tbaa !102, !range !100, !noundef !101
  %i.k = trunc nuw i8 %i.j to i1
  br label %_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit

_ZNK3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE18allVerticesFixedNsIJLm0ELm1EEEEbSt16integer_sequenceImJXspT_EEE.exit: ; preds = %bb.a, %bb.b
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o12Edge_XYZ_VSC12computeErrorEv(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.2 = alloca <2 x double>, align 16 ; 5 uses
  %.sroa.0.i = alloca [4 x double], align 16      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.g = load <2 x double>, ptr %i.f, align 1, !tbaa !17 ; 4 uses
  store <2 x double> %i.g, ptr %.sroa.0.i, align 16, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.i = load double, ptr %i.h, align 8, !tbaa !29
  %i.j = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.i, i64 0
  %.sroa.0.i.16.i.16.i.16..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  store <2 x double> %i.j, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx16, align 16, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.l = load <2 x double>, ptr %i.k, align 1, !tbaa !17
  %i.m = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.n = fmul <2 x double> %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  %i.p = load <2 x double>, ptr %i.o, align 1, !tbaa !17
  %.sroa.0.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 8
  %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i = load <2 x double>, ptr %.sroa.0.i.8.i.8.i.8..sroa_idx, align 8 ; 3 uses
  %i.q = shufflevector <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = fmul <2 x double> %i.p, %i.q
  %i.s = fadd <2 x double> %i.n, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  %i.u = load <2 x double>, ptr %i.t, align 1, !tbaa !17
  %.sroa.0.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16.53.i = load <2 x double>, ptr %.sroa.0.i.16.i.16.i.16..sroa_idx, align 16 ; 3 uses
  %i.v = shufflevector <2 x double> %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16.53.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = fmul <2 x double> %i.u, %i.v
  %i.x = fadd <2 x double> %i.s, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 520
  %i.z = load <2 x double>, ptr %i.y, align 1, !tbaa !17
  %i.aa = shufflevector <2 x double> %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16.53.i, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.ab = fmul <2 x double> %i.z, %i.aa
  %i.ac = fadd <2 x double> %i.ab, %i.x
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 464
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !29
  %i.af = extractelement <2 x double> %i.g, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29
  %i.ai = extractelement <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i, i64 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !29
  %i.al = extractelement <2 x double> %.sroa.0.i.16..sroa.0.i.16..sroa.0.i.16..sroa.0.16..sroa.0.16.53.i, i64 0 ; 2 uses
  %i.am = fmul double %i.al, %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 536
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.aq = load <2 x double>, ptr %i.ap, align 8, !tbaa !17
  %i.ar = fmul <2 x double> %i.m, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !17
  %i.au = fmul <2 x double> %i.q, %i.at
  %i.av = fadd <2 x double> %i.ar, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  %i.ax = load <2 x double>, ptr %i.aw, align 8, !tbaa !17
  %i.ay = fmul <2 x double> %i.v, %i.ax
  %i.az = fadd <2 x double> %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !17
  %i.bc = fmul <2 x double> %i.aa, %i.bb
  %i.bd = fadd <2 x double> %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  %i.bf = load double, ptr %i.be, align 8, !tbaa !29
  %i.bg = fmul double %i.af, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 392
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !29
  %i.bj = fmul double %i.ai, %i.bi
  %i.bk = fadd double %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !29
  %i.bn = fmul double %i.al, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 440
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !29
  %i.bq = fadd double %i.bn, %i.bp
  %i.br = fadd double %i.bk, %i.bq                ; 2 uses
  %i.bs = load double, ptr @_ZN3g2o10VertexSCam8baselineE, align 8, !tbaa !29
  %.sroa.039.8.vec.insert.i = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.bs, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.2)
  %i.bt = fsub <2 x double> %i.bd, %.sroa.039.8.vec.insert.i ; 4 uses
  store double %i.br, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.2, align 16, !tbaa !29
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.2, i64 8
  store ptr @_ZN3g2o10VertexSCam4KcamE, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.24.i.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !282
  %i.bu = load <2 x double>, ptr @_ZN3g2o10VertexSCam4KcamE, align 8, !tbaa !17
  %i.bv = extractelement <2 x double> %i.bt, i64 0
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.16..i.i.i.i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 24), align 8, !tbaa !17
  %i.bw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 48), align 8, !tbaa !17
  %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.16..sroa.2.i.i.i.i.i.16..sroa.2.i.i.i.i.16..sroa.2.i.i.i.i.16..sroa.2.i.i.i.16..sroa.2.i.i.i.16..sroa.2.i.i.16..sroa.2.i.i.16..sroa.2.i.16..sroa.2.i.16..sroa.2.16..sroa.2.16..sroa.2.24..i.i.i.i.i.i.i.i.i.i.i.i.i = load <2 x double>, ptr %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.2, align 16
  %i.bx = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 16), align 8, !tbaa !29
  %i.by = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 40), align 8, !tbaa !29
  %i.bz = load double, ptr getelementptr inbounds nuw (i8, ptr @_ZN3g2o10VertexSCam4KcamE, i64 64), align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.sroa.2)
  %foldExtExtBinop = fmul <2 x double> %i.bt, %i.bu
  %shift = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop8 = fmul <2 x double> %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.i.8..sroa.2.i.i.8..sroa.2.i.i.8..sroa.2.i.8..sroa.2.i.8..sroa.2.8..sroa.2.8..sroa.2.16..i.i.i.i.i.i.i.i.i.i.i.i.i, %shift
  %foldExtExtBinop10 = fadd <2 x double> %foldExtExtBinop, %foldExtExtBinop8
  %foldExtExtBinop12 = fmul <2 x double> %i.bw, %.sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.i.16..sroa.2.i.i.i.i.i.16..sroa.2.i.i.i.i.i.16..sroa.2.i.i.i.i.16..sroa.2.i.i.i.i.16..sroa.2.i.i.i.16..sroa.2.i.i.i.16..sroa.2.i.i.16..sroa.2.i.i.16..sroa.2.i.16..sroa.2.i.16..sroa.2.16..sroa.2.16..sroa.2.24..i.i.i.i.i.i.i.i.i.i.i.i.i
  %foldExtExtBinop14 = fadd <2 x double> %foldExtExtBinop10, %foldExtExtBinop12
  %i.ca = fmul double %i.bv, %i.bx
  %i.cb = fadd double %i.am, %i.ao
  %1 = shufflevector <2 x double> %i.g, <2 x double> %i.bt, <2 x i32> <i32 0, i32 3>
  %i.cc = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.cd = insertelement <2 x double> %i.cc, double %i.by, i64 1
  %i.ce = fmul <2 x double> %1, %i.cd
  %i.cf = insertelement <2 x double> %.sroa.0.i.8..sroa.0.i.8..sroa.0.i.8..sroa.0.8..sroa.0.8..i, double %i.br, i64 1
  %i.cg = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ch = insertelement <2 x double> %i.cg, double %i.bz, i64 1
  %i.ci = fmul <2 x double> %i.cf, %i.ch
  %i.cj = fadd <2 x double> %i.ce, %i.ci
  %i.ck = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.ca, i64 1
  %i.cm = fadd <2 x double> %i.cj, %i.cl
  %i.cn = shufflevector <2 x double> <double 1.000000e+00, double poison>, <2 x double> %foldExtExtBinop14, <2 x i32> <i32 0, i32 2>
  %i.co = fdiv <2 x double> %i.cn, %i.cm          ; 2 uses
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fmul <2 x double> %i.ac, %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ct = load <2 x double>, ptr %i.cr, align 8, !tbaa !17
  %i.cu = fsub <2 x double> %i.cq, %i.ct
  store <2 x double> %i.cu, ptr %i.cs, align 8, !tbaa !17
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !29
  %i.cy = extractelement <2 x double> %i.co, i64 1
  %i.cz = fsub double %i.cy, %i.cx
  store double %i.cz, ptr %i.cv, align 8, !tbaa !29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9errorDataEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE9errorDataEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE15informationDataEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE15informationDataEv(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef double @_ZNK3g2o8BaseEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEE4chi2Ev(ptr noundef nonnull align 8 dereferenceable(296) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load <2 x double>, ptr %i.b, align 8, !tbaa !17
  %i.d = load <2 x double>, ptr %i.a, align 8     ; 3 uses
  %i.e = shufflevector <2 x double> %i.d, <2 x double> poison, <2 x i32> zeroinitializer
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load <2 x double>, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.j = load <2 x double>, ptr %i.i, align 8     ; 5 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.h, %i.k
  %i.m = fadd <2 x double> %i.f, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !17
  %i.p = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.q = fmul <2 x double> %i.o, %i.p
  %i.r = fadd <2 x double> %i.q, %i.m
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = load double, ptr %i.s, align 8, !tbaa !29
  %i.u = extractelement <2 x double> %i.d, i64 0
  %i.v = fmul double %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.x = load double, ptr %i.w, align 8, !tbaa !29
  %i.y = extractelement <2 x double> %i.j, i64 0
  %i.z = fmul double %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !29
  %i.ac = extractelement <2 x double> %i.j, i64 1
  %i.ad = fmul double %i.ac, %i.ab
  %i.ae = fadd double %i.z, %i.ad
  %i.af = fadd double %i.v, %i.ae
  %i.ag = fmul <2 x double> %i.d, %i.r            ; 2 uses
  %shift = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.ag, %shift
  %i.ah = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ai = extractelement <2 x double> %i.j, i64 1
  %i.aj = fmul double %i.ai, %i.af
  %i.ak = fadd double %i.ah, %i.aj
  ret double %i.ak
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE22constructQuadraticFormEv(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::Product.3768", align 8 ; 6 uses
  %2 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %3 = alloca %"class.Eigen::Product.3670", align 8 ; 6 uses
  %4 = alloca %"class.Eigen::Product.3768", align 8 ; 6 uses
  %5 = alloca %"struct.Eigen::internal::add_assign_op", align 1 ; 3 uses
  %6 = alloca %"class.Eigen::Product.3670", align 8 ; 6 uses
  %7 = alloca %"class.Eigen::Matrix.21", align 8  ; 4 uses
  %8 = alloca %"class.Eigen::Matrix.21", align 16 ; 5 uses
  %9 = alloca %"class.Eigen::Matrix", align 16    ; 10 uses
  %10 = alloca %"class.Eigen::Matrix.21", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !197
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef double %i.e(ptr noundef nonnull align 8 dereferenceable(296) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !197  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.g, double noundef %i.f, ptr noundef nonnull align 8 dereferenceable(24) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !17 ; 2 uses
  %i.n = fneg <2 x double> %i.m
  %i.o = load <2 x double>, ptr %i.l, align 8     ; 2 uses
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x double> %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.s = load <2 x double>, ptr %i.r, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.u = load <2 x double>, ptr %i.t, align 8     ; 4 uses
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.s, %i.v
  %i.x = fsub <2 x double> %i.q, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !17 ; 2 uses
  %i.aa = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ab = fmul <2 x double> %i.z, %i.aa
  %i.ac = fsub <2 x double> %i.x, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !29
  %i.ag = extractelement <2 x double> %i.o, i64 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !29
  %i.aj = extractelement <2 x double> %i.u, i64 0
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.al = load double, ptr %i.ak, align 8, !tbaa !29 ; 2 uses
  %i.am = fneg double %i.al
  %i.an = extractelement <2 x double> %i.u, i64 1
  %i.ao = fmul double %i.an, %i.am
  %i.ap = fmul double %i.ai, %i.aj
  %i.aq = fsub double %i.ao, %i.ap
  %i.ar = fmul double %i.af, %i.ag
  %i.as = fsub double %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !29, !noalias !284 ; 3 uses
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ax = fmul <2 x double> %i.ac, %i.aw          ; 4 uses
  store <2 x double> %i.ax, ptr %8, align 16, !tbaa !17
  %i.ay = fmul double %i.au, %i.as                ; 4 uses
  store double %i.ay, ptr %i.ad, align 16, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.az = fmul <2 x double> %i.m, %i.aw
  store <2 x double> %i.az, ptr %9, align 16, !tbaa !17, !alias.scope !287
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bb = load <2 x double>, ptr %i.ae, align 8, !tbaa !17, !noalias !287
  %i.bc = fmul <2 x double> %i.aw, %i.bb
  store <2 x double> %i.bc, ptr %i.ba, align 16, !tbaa !17, !alias.scope !287
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bf = load <2 x double>, ptr %i.be, align 8, !tbaa !17, !noalias !287
  %i.bg = fmul <2 x double> %i.aw, %i.bf
  store <2 x double> %i.bg, ptr %i.bd, align 16, !tbaa !17, !alias.scope !287
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bi = fmul <2 x double> %i.aw, %i.z
  store <2 x double> %i.bi, ptr %i.bh, align 16, !tbaa !17, !alias.scope !287
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bk = fmul double %i.au, %i.al
  store double %i.bk, ptr %i.bj, align 16, !tbaa !29, !alias.scope !287
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 100
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !102, !range !100, !noundef !101
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN3g2o18BaseFixedSizedEdgeILi3EN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEEJNS_14VertexPointXYZENS_10VertexSCamEEE24constructQuadraticFormNsIJLm0ELm1EEEEvRKNS2_IdLi3ELi3ELi0ELi3ELi3EEERKS3_St16integer_sequenceImJXspT_EEE.exit, label %bb.c

end_hunk_2
