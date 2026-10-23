Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinalgTransformOps?download=true
inline.NumInlined: 40314
inline.NumDeleted: 11533
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 45
begin_hunk_0
@_ZN4mlir6detail14TypeIDResolverINS_6tensor21ParallelInsertSliceOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.542 = private unnamed_addr constant [12 x i8] c"attribute '\00", align 1
@.str.543 = private unnamed_addr constant [47 x i8] c"' failed to satisfy constraint: bool attribute\00", align 1
@.str.544 = private unnamed_addr constant [56 x i8] c"transform.apply_patterns.linalg.data_layout_propagation\00", align 1
@.str.545 = private unnamed_addr constant [54 x i8] c"transform.apply_patterns.linalg.decompose_pack_unpack\00", align 1
@.str.546 = private unnamed_addr constant [46 x i8] c"transform.apply_patterns.linalg.decompose_pad\00", align 1
@.str.547 = private unnamed_addr constant [57 x i8] c"transform.apply_patterns.linalg.erase_unnecessary_inputs\00", align 1
@.str.548 = private unnamed_addr constant [54 x i8] c"transform.apply_patterns.linalg.extract_slice_sinking\00", align 1
@.str.549 = private unnamed_addr constant [51 x i8] c"transform.apply_patterns.linalg.fold_add_into_dest\00", align 1
@.str.550 = private unnamed_addr constant [58 x i8] c"transform.apply_patterns.tensor.fold_into_pack_and_unpack\00", align 1
@.str.551 = private unnamed_addr constant [60 x i8] c"transform.apply_patterns.linalg.fold_pack_unpack_into_empty\00", align 1
@.str.552 = private unnamed_addr constant [67 x i8] c"transform.apply_patterns.linalg.fold_unit_extent_dims_via_reshapes\00", align 1
@.str.553 = private unnamed_addr constant [65 x i8] c"transform.apply_patterns.linalg.fold_unit_extent_dims_via_slices\00", align 1
@.str.554 = private unnamed_addr constant [50 x i8] c"transform.apply_patterns.linalg.pad_vectorization\00", align 1
@.str.555 = private unnamed_addr constant [56 x i8] c"transform.apply_patterns.linalg.tiling_canonicalization\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_8UnitAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.556 = private unnamed_addr constant [49 x i8] c"' failed to satisfy constraint: string attribute\00", align 1
@.str.557 = private unnamed_addr constant [47 x i8] c"' failed to satisfy constraint: unit attribute\00", align 1
@.str.559 = private unnamed_addr constant [45 x i8] c"transform.structured.bufferize_to_allocation\00", align 1
@.str.560 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.561 = private unnamed_addr constant [57 x i8] c" must be TransformHandleTypeInterface instance, but got \00", align 1
@.str.562 = private unnamed_addr constant [20 x i8] c" must be , but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9transform12AnyValueTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9transform9AnyOpTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform28TransformHandleTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.563 = private unnamed_addr constant [96 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransformHandleTypeInterface]\00", align 1
@.str.564 = private unnamed_addr constant [94 x i8] c"' failed to satisfy constraint: 64-bit signless integer attribute whose value is non-negative\00", align 1
@.str.565 = private unnamed_addr constant [43 x i8] c"transform.structured.continuous_tile_sizes\00", align 1
@.str.566 = private unnamed_addr constant [63 x i8] c" must be transform any param type or any handle type, but got \00", align 1
@.str.567 = private unnamed_addr constant [68 x i8] c"expects a trailing functional type with one argument and one result\00", align 1
@.str.568 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_12FunctionTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.569 = private unnamed_addr constant [47 x i8] c"transform.structured.convert_conv2d_to_img2col\00", align 1
@.str.570 = private unnamed_addr constant [38 x i8] c"transform.structured.convert_to_loops\00", align 1
@.str.571 = private unnamed_addr constant [41 x i8] c"transform.structured.decompose_interface\00", align 1
@.str.572 = private unnamed_addr constant [31 x i8] c"transform.structured.decompose\00", align 1
@.str.573 = private unnamed_addr constant [43 x i8] c"transform.structured.decompose_winograd_op\00", align 1
@.str.574 = private unnamed_addr constant [45 x i8] c"transform.structured.eliminate_empty_tensors\00", align 1
@.str.575 = private unnamed_addr constant [41 x i8] c"transform.structured.flatten_elementwise\00", align 1
@.str.576 = private unnamed_addr constant [58 x i8] c"' failed to satisfy constraint: i64 dense array attribute\00", align 1
@.str.577 = private unnamed_addr constant [45 x i8] c"transform.structured.fuse_into_containing_op\00", align 1
@.str.578 = private unnamed_addr constant [28 x i8] c"trying to read an array of \00", align 1
@.str.579 = private unnamed_addr constant [11 x i8] c" but only \00", align 1
@.str.580 = private unnamed_addr constant [20 x i8] c" storage available.\00", align 1
@.str.581 = private unnamed_addr constant [50 x i8] c"reading sparse array with indexing above 8 bits: \00", align 1
@.str.582 = private unnamed_addr constant [36 x i8] c"reading a sparse array found index \00", align 1
@.str.583 = private unnamed_addr constant [26 x i8] c"transform.structured.fuse\00", align 1
@.str.584 = private unnamed_addr constant [75 x i8] c" must be variadic of transform any param type or any handle type, but got \00", align 1
@.str.585 = private unnamed_addr constant [69 x i8] c" must be variadic of TransformHandleTypeInterface instance, but got \00", align 1
@.str.586 = private unnamed_addr constant [32 x i8] c"transform.structured.generalize\00", align 1
@.str.587 = private unnamed_addr constant [55 x i8] c"transform.structured.hoist_pad.build_packing_loop_nest\00", align 1
@.str.588 = private unnamed_addr constant [66 x i8] c"' failed to satisfy constraint: 64-bit signless integer attribute\00", align 1
@.str.589 = private unnamed_addr constant [31 x i8] c"transform.structured.hoist_pad\00", align 1
@.str.590 = private unnamed_addr constant [55 x i8] c"transform.structured.hoist_redundant_vector_broadcasts\00", align 1
@.str.591 = private unnamed_addr constant [54 x i8] c"transform.structured.hoist_redundant_vector_transfers\00", align 1
@.str.592 = private unnamed_addr constant [42 x i8] c"transform.structured.insert_slice_to_copy\00", align 1
@.str.593 = private unnamed_addr constant [86 x i8] c"' failed to satisfy constraint: i64 dense array attribute whose value is non-negative\00", align 1
@.str.594 = private unnamed_addr constant [33 x i8] c"transform.structured.interchange\00", align 1
@.str.595 = private unnamed_addr constant [43 x i8] c"transform.structured.linalg_copy_to_memref\00", align 1
@.str.596 = private unnamed_addr constant [32 x i8] c"transform.structured.lower_pack\00", align 1
@.str.598 = private unnamed_addr constant [65 x i8] c" must be Transform IR handle to linalg.pack operations, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9transform13OperationTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.600 = private unnamed_addr constant [64 x i8] c" must be Transform IR handle to tensor.pad operations, but got \00", align 1
@.str.602 = private unnamed_addr constant [73 x i8] c" must be Transform IR handle to tensor.expand_shape operations, but got \00", align 1
@.str.604 = private unnamed_addr constant [70 x i8] c" must be Transform IR handle to linalg.transpose operations, but got \00", align 1
@.str.605 = private unnamed_addr constant [34 x i8] c"transform.structured.lower_unpack\00", align 1
@.str.607 = private unnamed_addr constant [67 x i8] c" must be Transform IR handle to linalg.unpack operations, but got \00", align 1
@.str.609 = private unnamed_addr constant [66 x i8] c" must be Transform IR handle to tensor.empty operations, but got \00", align 1
@.str.611 = private unnamed_addr constant [75 x i8] c" must be Transform IR handle to tensor.collapse_shape operations, but got \00", align 1
@.str.613 = private unnamed_addr constant [74 x i8] c" must be Transform IR handle to tensor.extract_slice operations, but got \00", align 1
@.str.614 = private unnamed_addr constant [65 x i8] c" must be Transform IR handle to linalg.copy operations, but got \00", align 1
@.str.615 = private unnamed_addr constant [45 x i8] c"transform.structured.gpu.map_copy_to_threads\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8TypeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.616 = private unnamed_addr constant [53 x i8] c"' failed to satisfy constraint: type array attribute\00", align 1
@.str.617 = private unnamed_addr constant [51 x i8] c"' failed to satisfy constraint: any type attribute\00", align 1
@.str.618 = private unnamed_addr constant [54 x i8] c"' failed to satisfy constraint: An interface to match\00", align 1
@.str.619 = private unnamed_addr constant [69 x i8] c"' failed to satisfy constraint: dictionary of named attribute values\00", align 1
@.str.620 = private unnamed_addr constant [55 x i8] c"' failed to satisfy constraint: string array attribute\00", align 1
@.str.621 = private unnamed_addr constant [27 x i8] c"transform.structured.match\00", align 1
@.str.622 = private unnamed_addr constant [37 x i8] c"transform.structured.multitile_sizes\00", align 1
@.str.623 = private unnamed_addr constant [82 x i8] c"' failed to satisfy constraint: i64 dense array attribute with exactly 3 elements\00", align 1
@.str.624 = private unnamed_addr constant [79 x i8] c"' failed to satisfy constraint: i64 dense array attribute with 0 or 3 elements\00", align 1
@.str.625 = private unnamed_addr constant [35 x i8] c"transform.structured.pack_greedily\00", align 1
@.str.626 = private unnamed_addr constant [26 x i8] c"transform.structured.pack\00", align 1
@.str.627 = private unnamed_addr constant [36 x i8] c"transform.structured.pack_transpose\00", align 1
@.str.628 = private unnamed_addr constant [63 x i8] c"' failed to satisfy constraint: 64-bit integer array attribute\00", align 1
@.str.629 = private unnamed_addr constant [48 x i8] c"' failed to satisfy constraint: array attribute\00", align 1
@.str.630 = private unnamed_addr constant [55 x i8] c"' failed to satisfy constraint: array of arrays of i64\00", align 1
@.str.631 = private unnamed_addr constant [25 x i8] c"transform.structured.pad\00", align 1
@.str.632 = private unnamed_addr constant [42 x i8] c"transform.structured.pad_tiling_interface\00", align 1
@.str.633 = private unnamed_addr constant [63 x i8] c"' failed to satisfy constraint: Device Mapping array attribute\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_26DeviceMappingAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_26DeviceMappingAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.634 = private unnamed_addr constant [83 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DeviceMappingAttrInterface]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_26DeviceMaskingAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_26DeviceMaskingAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.635 = private unnamed_addr constant [83 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DeviceMaskingAttrInterface]\00", align 1
@.str.636 = private unnamed_addr constant [62 x i8] c"' failed to satisfy constraint: 1-bit boolean array attribute\00", align 1
@.str.637 = private unnamed_addr constant [29 x i8] c"transform.structured.promote\00", align 1
@.str.638 = private unnamed_addr constant [36 x i8] c"transform.structured.promote_tensor\00", align 1
@.str.639 = private unnamed_addr constant [62 x i8] c" must be TransformValueHandleTypeInterface instance, but got \00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform33TransformValueHandleTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform33TransformValueHandleTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.640 = private unnamed_addr constant [101 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransformValueHandleTypeInterface]\00", align 1
@.str.641 = private unnamed_addr constant [29 x i8] c"transform.structured.replace\00", align 1
@.str.642 = private unnamed_addr constant [9 x i8] c"region #\00", align 1
@.str.643 = private unnamed_addr constant [4 x i8] c" ('\00", align 1
@.str.644 = private unnamed_addr constant [4 x i8] c"') \00", align 1
@.str.645 = private unnamed_addr constant [50 x i8] c"failed to verify constraint: region with 1 blocks\00", align 1
@.str.646 = private unnamed_addr constant [58 x i8] c"transform.structured.rewrite_in_destination_passing_style\00", align 1
@.str.647 = private unnamed_addr constant [31 x i8] c"transform.structured.scalarize\00", align 1
@.str.648 = private unnamed_addr constant [32 x i8] c"transform.structured.specialize\00", align 1
@.str.649 = private unnamed_addr constant [27 x i8] c"transform.structured.split\00", align 1
@.str.650 = private unnamed_addr constant [37 x i8] c"transform.structured.split_reduction\00", align 1
@.str.651 = private unnamed_addr constant [46 x i8] c"transform.structured.tile_reduction_using_for\00", align 1
@.str.652 = private unnamed_addr constant [49 x i8] c"transform.structured.tile_reduction_using_forall\00", align 1
@.str.653 = private unnamed_addr constant [57 x i8] c"' failed to satisfy constraint: i1 dense array attribute\00", align 1
@.str.654 = private unnamed_addr constant [36 x i8] c"transform.structured.tile_using_for\00", align 1
@.str.655 = private unnamed_addr constant [39 x i8] c"transform.structured.tile_using_forall\00", align 1
@.str.656 = private unnamed_addr constant [38 x i8] c"transform.structured.transpose_conv2d\00", align 1
@.str.657 = private unnamed_addr constant [101 x i8] c"' failed to satisfy constraint: Input to transpose when converting matmul ops to transposed variants\00", align 1
@.str.658 = private unnamed_addr constant [38 x i8] c"transform.structured.transpose_matmul\00", align 1
@.str.659 = private unnamed_addr constant [59 x i8] c"transform.structured.vectorize_children_and_apply_patterns\00", align 1
@.str.660 = private unnamed_addr constant [31 x i8] c"transform.structured.vectorize\00", align 1
@.str.661 = private unnamed_addr constant [79 x i8] c"' failed to satisfy constraint: allowed 32-bit signless integer cases: 0, 1, 2\00", align 1
@.str.662 = private unnamed_addr constant [37 x i8] c"transform.structured.winograd_conv2d\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9transform27TransformParamTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9transform27TransformParamTypeInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.665 = private unnamed_addr constant [95 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransformParamTypeInterface]\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.666 = private unnamed_addr constant [31 x i8] c"invalid kind of type specified\00", align 1
@.str.667 = private unnamed_addr constant [12 x i8] c": expected \00", align 1
@.str.668 = private unnamed_addr constant [13 x i8] c", but found \00", align 1
@.str.669 = private unnamed_addr constant [17 x i8] c"builtin.function\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_2ub19PoisonAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_2ub19PoisonAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.671 = private unnamed_addr constant [80 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ub::PoisonAttrInterface]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_22IndexingMapOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_22IndexingMapOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.672 = private unnamed_addr constant [79 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::IndexingMapOpInterface]\00", align 1
@.str.673 = private unnamed_addr constant [30 x i8] c"attempted to apply to this op\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_7OpTrait19IsIsolatedFromAboveIZNS_6TypeID3getIS3_EES4_vE5EmptyEEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.674 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::OpTrait::IsIsolatedFromAbove<Empty>]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6tensor14FromElementsOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6tensor10GenerateOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.676 = private unnamed_addr constant [23 x i8] c"expected integer value\00", align 1
@.str.677 = private unnamed_addr constant [24 x i8] c"integer value too large\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZTVN12_GLOBAL__N_120VectorizationPatternE = internal unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr null, ptr @_ZN4mlir14RewritePatternD2Ev, ptr @_ZN12_GLOBAL__N_120VectorizationPatternD0Ev, ptr @_ZNK12_GLOBAL__N_120VectorizationPattern15matchAndRewriteEPN4mlir9OperationERNS1_15PatternRewriterE, ptr @_ZN4mlir14RewritePattern6anchorEv] }, align 8
@.str.678 = private unnamed_addr constant [94 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = (anonymous namespace)::VectorizationPattern]\00", align 1
@.str.679 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVN4mlir6linalg30LinalgCopyVTRForwardingPatternE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.680 = private unnamed_addr constant [21 x i8] c"vector.transfer_read\00", align 1
@.str.681 = private unnamed_addr constant [95 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::linalg::LinalgCopyVTRForwardingPattern]\00", align 1
@_ZTVN4mlir6linalg30LinalgCopyVTWForwardingPatternE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.682 = private unnamed_addr constant [22 x i8] c"vector.transfer_write\00", align 1
@.str.683 = private unnamed_addr constant [95 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::linalg::LinalgCopyVTWForwardingPattern]\00", align 1
@_ZTVN4mlir6linalg24CopyVectorizationPatternE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.684 = private unnamed_addr constant [89 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::linalg::CopyVectorizationPattern]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6linalg16Conv2DNhwcHwcfOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6linalg16Conv2DNhwcFhwcOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6linalg24DepthwiseConv2DNhwcHwcOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6linalg16Conv2DNchwFchwOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6linalg17Conv2DNhwcFhwcQOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6linalg8MatmulOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6linalg13BatchMatmulOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_28ParallelCombiningOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.685 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ParallelCombiningOpInterface]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_6linalg25WinogradFilterTransformOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6linalg24WinogradInputTransformOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_6linalg25WinogradOutputTransformOpEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.686 = private unnamed_addr constant [10 x i8] c"expected \00", align 1
@.str.687 = private unnamed_addr constant [12 x i8] c", but got: \00", align 1
@.str.688 = private unnamed_addr constant [65 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::BoolAttr]\00", align 1
@.str.689 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.690 = private unnamed_addr constant [6 x i8] c"' op \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_15EmptyPropertiesEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.691 = private unnamed_addr constant [67 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::StringAttr]\00", align 1
@.str.692 = private unnamed_addr constant [65 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::UnitAttr]\00", align 1
@.str.693 = private unnamed_addr constant [48 x i8] c"number of operands and types do not match: got \00", align 1
@.str.694 = private unnamed_addr constant [15 x i8] c" operands and \00", align 1
@.str.695 = private unnamed_addr constant [7 x i8] c" types\00", align 1
@.str.696 = private unnamed_addr constant [68 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::IntegerAttr]\00", align 1
@.str.697 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int64_t>]\00", align 1
@.str.698 = private unnamed_addr constant [28 x i8] c"for `operandSegmentSizes`: \00", align 1
@.str.699 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<int32_t>]\00", align 1
@.str.700 = private unnamed_addr constant [36 x i8] c"invalid kind of attribute specified\00", align 1
@.str.701 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ArrayAttr]\00", align 1
@.str.702 = private unnamed_addr constant [65 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypeAttr]\00", align 1
@.str.703 = private unnamed_addr constant [90 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::MatchInterfaceEnumAttr]\00", align 1
@.str.704 = private unnamed_addr constant [71 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::DictionaryAttr]\00", align 1
@.str.705 = private unnamed_addr constant [89 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::detail::DenseArrayAttrImpl<bool>]\00", align 1
@.str.706 = private unnamed_addr constant [92 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::transform::TransposeMatmulInputAttr]\00", align 1
@.str.707 = private unnamed_addr constant [86 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::linalg::WinogradConv2DFmrAttr]\00", align 1
@switch.table._ZN4mlir9transform27stringifyMatchInterfaceEnumENS0_18MatchInterfaceEnumE = private unnamed_addr constant [3 x i8] c"\08\0F\11", align 8
@switch.table._ZN4mlir9transform27stringifyMatchInterfaceEnumENS0_18MatchInterfaceEnumE.558 = private unnamed_addr constant [3 x ptr] [ptr @.str.144, ptr @.str.145, ptr @.str.146], align 8

@_ZN4mlir9transform6detail54ApplyDataLayoutPropagationPatternsOpGenericAdaptorBaseC1ENS0_36ApplyDataLayoutPropagationPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail54ApplyDataLayoutPropagationPatternsOpGenericAdaptorBaseC2ENS0_36ApplyDataLayoutPropagationPatternsOpE
@_ZN4mlir9transform43ApplyDataLayoutPropagationPatternsOpAdaptorC1ENS0_36ApplyDataLayoutPropagationPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform43ApplyDataLayoutPropagationPatternsOpAdaptorC2ENS0_36ApplyDataLayoutPropagationPatternsOpE
@_ZN4mlir9transform6detail58ApplyDecomposeTensorPackUnpackPatternsOpGenericAdaptorBaseC1ENS0_40ApplyDecomposeTensorPackUnpackPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail58ApplyDecomposeTensorPackUnpackPatternsOpGenericAdaptorBaseC2ENS0_40ApplyDecomposeTensorPackUnpackPatternsOpE
@_ZN4mlir9transform47ApplyDecomposeTensorPackUnpackPatternsOpAdaptorC1ENS0_40ApplyDecomposeTensorPackUnpackPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform47ApplyDecomposeTensorPackUnpackPatternsOpAdaptorC2ENS0_40ApplyDecomposeTensorPackUnpackPatternsOpE
@_ZN4mlir9transform6detail51ApplyDecomposeTensorPadPatternsOpGenericAdaptorBaseC1ENS0_33ApplyDecomposeTensorPadPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail51ApplyDecomposeTensorPadPatternsOpGenericAdaptorBaseC2ENS0_33ApplyDecomposeTensorPadPatternsOpE
@_ZN4mlir9transform40ApplyDecomposeTensorPadPatternsOpAdaptorC1ENS0_33ApplyDecomposeTensorPadPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform40ApplyDecomposeTensorPadPatternsOpAdaptorC2ENS0_33ApplyDecomposeTensorPadPatternsOpE
@_ZN4mlir9transform6detail55ApplyEraseUnnecessaryInputsPatternsOpGenericAdaptorBaseC1ENS0_37ApplyEraseUnnecessaryInputsPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail55ApplyEraseUnnecessaryInputsPatternsOpGenericAdaptorBaseC2ENS0_37ApplyEraseUnnecessaryInputsPatternsOpE
@_ZN4mlir9transform44ApplyEraseUnnecessaryInputsPatternsOpAdaptorC1ENS0_37ApplyEraseUnnecessaryInputsPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform44ApplyEraseUnnecessaryInputsPatternsOpAdaptorC2ENS0_37ApplyEraseUnnecessaryInputsPatternsOpE
@_ZN4mlir9transform6detail52ApplyExtractSliceSinkingPatternsOpGenericAdaptorBaseC1ENS0_34ApplyExtractSliceSinkingPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail52ApplyExtractSliceSinkingPatternsOpGenericAdaptorBaseC2ENS0_34ApplyExtractSliceSinkingPatternsOpE
@_ZN4mlir9transform41ApplyExtractSliceSinkingPatternsOpAdaptorC1ENS0_34ApplyExtractSliceSinkingPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform41ApplyExtractSliceSinkingPatternsOpAdaptorC2ENS0_34ApplyExtractSliceSinkingPatternsOpE
@_ZN4mlir9transform6detail48ApplyFoldAddIntoDestPatternsOpGenericAdaptorBaseC1ENS0_30ApplyFoldAddIntoDestPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail48ApplyFoldAddIntoDestPatternsOpGenericAdaptorBaseC2ENS0_30ApplyFoldAddIntoDestPatternsOpE
@_ZN4mlir9transform37ApplyFoldAddIntoDestPatternsOpAdaptorC1ENS0_30ApplyFoldAddIntoDestPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform37ApplyFoldAddIntoDestPatternsOpAdaptorC2ENS0_30ApplyFoldAddIntoDestPatternsOpE
@_ZN4mlir9transform6detail54ApplyFoldIntoPackAndUnpackPatternsOpGenericAdaptorBaseC1ENS0_36ApplyFoldIntoPackAndUnpackPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail54ApplyFoldIntoPackAndUnpackPatternsOpGenericAdaptorBaseC2ENS0_36ApplyFoldIntoPackAndUnpackPatternsOpE
@_ZN4mlir9transform43ApplyFoldIntoPackAndUnpackPatternsOpAdaptorC1ENS0_36ApplyFoldIntoPackAndUnpackPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform43ApplyFoldIntoPackAndUnpackPatternsOpAdaptorC2ENS0_36ApplyFoldIntoPackAndUnpackPatternsOpE
@_ZN4mlir9transform6detail56ApplyFoldPackUnpackIntoEmptyPatternsOpGenericAdaptorBaseC1ENS0_38ApplyFoldPackUnpackIntoEmptyPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail56ApplyFoldPackUnpackIntoEmptyPatternsOpGenericAdaptorBaseC2ENS0_38ApplyFoldPackUnpackIntoEmptyPatternsOpE
@_ZN4mlir9transform45ApplyFoldPackUnpackIntoEmptyPatternsOpAdaptorC1ENS0_38ApplyFoldPackUnpackIntoEmptyPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform45ApplyFoldPackUnpackIntoEmptyPatternsOpAdaptorC2ENS0_38ApplyFoldPackUnpackIntoEmptyPatternsOpE
@_ZN4mlir9transform6detail62ApplyFoldUnitExtentDimsViaReshapesPatternsOpGenericAdaptorBaseC1ENS0_44ApplyFoldUnitExtentDimsViaReshapesPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail62ApplyFoldUnitExtentDimsViaReshapesPatternsOpGenericAdaptorBaseC2ENS0_44ApplyFoldUnitExtentDimsViaReshapesPatternsOpE
@_ZN4mlir9transform51ApplyFoldUnitExtentDimsViaReshapesPatternsOpAdaptorC1ENS0_44ApplyFoldUnitExtentDimsViaReshapesPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform51ApplyFoldUnitExtentDimsViaReshapesPatternsOpAdaptorC2ENS0_44ApplyFoldUnitExtentDimsViaReshapesPatternsOpE
@_ZN4mlir9transform6detail60ApplyFoldUnitExtentDimsViaSlicesPatternsOpGenericAdaptorBaseC1ENS0_42ApplyFoldUnitExtentDimsViaSlicesPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail60ApplyFoldUnitExtentDimsViaSlicesPatternsOpGenericAdaptorBaseC2ENS0_42ApplyFoldUnitExtentDimsViaSlicesPatternsOpE
@_ZN4mlir9transform49ApplyFoldUnitExtentDimsViaSlicesPatternsOpAdaptorC1ENS0_42ApplyFoldUnitExtentDimsViaSlicesPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform49ApplyFoldUnitExtentDimsViaSlicesPatternsOpAdaptorC2ENS0_42ApplyFoldUnitExtentDimsViaSlicesPatternsOpE
@_ZN4mlir9transform6detail49ApplyPadVectorizationPatternsOpGenericAdaptorBaseC1ENS0_31ApplyPadVectorizationPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail49ApplyPadVectorizationPatternsOpGenericAdaptorBaseC2ENS0_31ApplyPadVectorizationPatternsOpE
@_ZN4mlir9transform38ApplyPadVectorizationPatternsOpAdaptorC1ENS0_31ApplyPadVectorizationPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform38ApplyPadVectorizationPatternsOpAdaptorC2ENS0_31ApplyPadVectorizationPatternsOpE
@_ZN4mlir9transform6detail55ApplyTilingCanonicalizationPatternsOpGenericAdaptorBaseC1ENS0_37ApplyTilingCanonicalizationPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail55ApplyTilingCanonicalizationPatternsOpGenericAdaptorBaseC2ENS0_37ApplyTilingCanonicalizationPatternsOpE
@_ZN4mlir9transform44ApplyTilingCanonicalizationPatternsOpAdaptorC1ENS0_37ApplyTilingCanonicalizationPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform44ApplyTilingCanonicalizationPatternsOpAdaptorC2ENS0_37ApplyTilingCanonicalizationPatternsOpE
@_ZN4mlir9transform6detail41BufferizeToAllocationOpGenericAdaptorBaseC1ENS0_23BufferizeToAllocationOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail41BufferizeToAllocationOpGenericAdaptorBaseC2ENS0_23BufferizeToAllocationOpE
@_ZN4mlir9transform30BufferizeToAllocationOpAdaptorC1ENS0_23BufferizeToAllocationOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform30BufferizeToAllocationOpAdaptorC2ENS0_23BufferizeToAllocationOpE
@_ZN4mlir9transform6detail39ContinuousTileSizesOpGenericAdaptorBaseC1ENS0_21ContinuousTileSizesOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail39ContinuousTileSizesOpGenericAdaptorBaseC2ENS0_21ContinuousTileSizesOpE
@_ZN4mlir9transform28ContinuousTileSizesOpAdaptorC1ENS0_21ContinuousTileSizesOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform28ContinuousTileSizesOpAdaptorC2ENS0_21ContinuousTileSizesOpE
@_ZN4mlir9transform6detail42ConvertConv2DToImg2ColOpGenericAdaptorBaseC1ENS0_24ConvertConv2DToImg2ColOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail42ConvertConv2DToImg2ColOpGenericAdaptorBaseC2ENS0_24ConvertConv2DToImg2ColOpE
@_ZN4mlir9transform31ConvertConv2DToImg2ColOpAdaptorC1ENS0_24ConvertConv2DToImg2ColOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform31ConvertConv2DToImg2ColOpAdaptorC2ENS0_24ConvertConv2DToImg2ColOpE
@_ZN4mlir9transform6detail34ConvertToLoopsOpGenericAdaptorBaseC1ENS0_16ConvertToLoopsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail34ConvertToLoopsOpGenericAdaptorBaseC2ENS0_16ConvertToLoopsOpE
@_ZN4mlir9transform23ConvertToLoopsOpAdaptorC1ENS0_16ConvertToLoopsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform23ConvertToLoopsOpAdaptorC2ENS0_16ConvertToLoopsOpE
@_ZN4mlir9transform6detail38DecomposeInterfaceOpGenericAdaptorBaseC1ENS0_20DecomposeInterfaceOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail38DecomposeInterfaceOpGenericAdaptorBaseC2ENS0_20DecomposeInterfaceOpE
@_ZN4mlir9transform27DecomposeInterfaceOpAdaptorC1ENS0_20DecomposeInterfaceOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform27DecomposeInterfaceOpAdaptorC2ENS0_20DecomposeInterfaceOpE
@_ZN4mlir9transform6detail29DecomposeOpGenericAdaptorBaseC1ENS0_11DecomposeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail29DecomposeOpGenericAdaptorBaseC2ENS0_11DecomposeOpE
@_ZN4mlir9transform18DecomposeOpAdaptorC1ENS0_11DecomposeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform18DecomposeOpAdaptorC2ENS0_11DecomposeOpE
@_ZN4mlir9transform6detail37DecomposeWinogradOpGenericAdaptorBaseC1ENS0_19DecomposeWinogradOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail37DecomposeWinogradOpGenericAdaptorBaseC2ENS0_19DecomposeWinogradOpE
@_ZN4mlir9transform26DecomposeWinogradOpAdaptorC1ENS0_19DecomposeWinogradOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform26DecomposeWinogradOpAdaptorC2ENS0_19DecomposeWinogradOpE
@_ZN4mlir9transform6detail57EliminateLinalgOpAnchoredEmptyTensorsOpGenericAdaptorBaseC1ENS0_39EliminateLinalgOpAnchoredEmptyTensorsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail57EliminateLinalgOpAnchoredEmptyTensorsOpGenericAdaptorBaseC2ENS0_39EliminateLinalgOpAnchoredEmptyTensorsOpE
@_ZN4mlir9transform46EliminateLinalgOpAnchoredEmptyTensorsOpAdaptorC1ENS0_39EliminateLinalgOpAnchoredEmptyTensorsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform46EliminateLinalgOpAnchoredEmptyTensorsOpAdaptorC2ENS0_39EliminateLinalgOpAnchoredEmptyTensorsOpE
@_ZN4mlir9transform6detail44FlattenElementwiseLinalgOpGenericAdaptorBaseC1ENS0_26FlattenElementwiseLinalgOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail44FlattenElementwiseLinalgOpGenericAdaptorBaseC2ENS0_26FlattenElementwiseLinalgOpE
@_ZN4mlir9transform33FlattenElementwiseLinalgOpAdaptorC1ENS0_26FlattenElementwiseLinalgOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform33FlattenElementwiseLinalgOpAdaptorC2ENS0_26FlattenElementwiseLinalgOpE
@_ZN4mlir9transform6detail38FuseIntoContainingOpGenericAdaptorBaseC1ENS0_20FuseIntoContainingOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail38FuseIntoContainingOpGenericAdaptorBaseC2ENS0_20FuseIntoContainingOpE
@_ZN4mlir9transform27FuseIntoContainingOpAdaptorC1ENS0_20FuseIntoContainingOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform27FuseIntoContainingOpAdaptorC2ENS0_20FuseIntoContainingOpE
@_ZN4mlir9transform6detail24FuseOpGenericAdaptorBaseC1ENS0_6FuseOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail24FuseOpGenericAdaptorBaseC2ENS0_6FuseOpE
@_ZN4mlir9transform13FuseOpAdaptorC1ENS0_6FuseOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform13FuseOpAdaptorC2ENS0_6FuseOpE
@_ZN4mlir9transform6detail30GeneralizeOpGenericAdaptorBaseC1ENS0_12GeneralizeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail30GeneralizeOpGenericAdaptorBaseC2ENS0_12GeneralizeOpE
@_ZN4mlir9transform19GeneralizeOpAdaptorC1ENS0_12GeneralizeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform19GeneralizeOpAdaptorC2ENS0_12GeneralizeOpE
@_ZN4mlir9transform6detail48HoistPadBuildPackingLoopNestOpGenericAdaptorBaseC1ENS0_30HoistPadBuildPackingLoopNestOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail48HoistPadBuildPackingLoopNestOpGenericAdaptorBaseC2ENS0_30HoistPadBuildPackingLoopNestOpE
@_ZN4mlir9transform37HoistPadBuildPackingLoopNestOpAdaptorC1ENS0_30HoistPadBuildPackingLoopNestOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform37HoistPadBuildPackingLoopNestOpAdaptorC2ENS0_30HoistPadBuildPackingLoopNestOpE
@_ZN4mlir9transform6detail28HoistPadOpGenericAdaptorBaseC1ENS0_10HoistPadOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail28HoistPadOpGenericAdaptorBaseC2ENS0_10HoistPadOpE
@_ZN4mlir9transform17HoistPadOpAdaptorC1ENS0_10HoistPadOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform17HoistPadOpAdaptorC2ENS0_10HoistPadOpE
@_ZN4mlir9transform6detail50HoistRedundantVectorBroadcastsOpGenericAdaptorBaseC1ENS0_32HoistRedundantVectorBroadcastsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail50HoistRedundantVectorBroadcastsOpGenericAdaptorBaseC2ENS0_32HoistRedundantVectorBroadcastsOpE
@_ZN4mlir9transform39HoistRedundantVectorBroadcastsOpAdaptorC1ENS0_32HoistRedundantVectorBroadcastsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform39HoistRedundantVectorBroadcastsOpAdaptorC2ENS0_32HoistRedundantVectorBroadcastsOpE
@_ZN4mlir9transform6detail49HoistRedundantVectorTransfersOpGenericAdaptorBaseC1ENS0_31HoistRedundantVectorTransfersOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail49HoistRedundantVectorTransfersOpGenericAdaptorBaseC2ENS0_31HoistRedundantVectorTransfersOpE
@_ZN4mlir9transform38HoistRedundantVectorTransfersOpAdaptorC1ENS0_31HoistRedundantVectorTransfersOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform38HoistRedundantVectorTransfersOpAdaptorC2ENS0_31HoistRedundantVectorTransfersOpE
@_ZN4mlir9transform6detail37InsertSliceToCopyOpGenericAdaptorBaseC1ENS0_19InsertSliceToCopyOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail37InsertSliceToCopyOpGenericAdaptorBaseC2ENS0_19InsertSliceToCopyOpE
@_ZN4mlir9transform26InsertSliceToCopyOpAdaptorC1ENS0_19InsertSliceToCopyOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform26InsertSliceToCopyOpAdaptorC2ENS0_19InsertSliceToCopyOpE
@_ZN4mlir9transform6detail31InterchangeOpGenericAdaptorBaseC1ENS0_13InterchangeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail31InterchangeOpGenericAdaptorBaseC2ENS0_13InterchangeOpE
@_ZN4mlir9transform20InterchangeOpAdaptorC1ENS0_13InterchangeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform20InterchangeOpAdaptorC2ENS0_13InterchangeOpE
@_ZN4mlir9transform6detail38LinalgCopyToMemrefOpGenericAdaptorBaseC1ENS0_20LinalgCopyToMemrefOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail38LinalgCopyToMemrefOpGenericAdaptorBaseC2ENS0_20LinalgCopyToMemrefOpE
@_ZN4mlir9transform27LinalgCopyToMemrefOpAdaptorC1ENS0_20LinalgCopyToMemrefOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform27LinalgCopyToMemrefOpAdaptorC2ENS0_20LinalgCopyToMemrefOpE
@_ZN4mlir9transform6detail29LowerPackOpGenericAdaptorBaseC1ENS0_11LowerPackOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail29LowerPackOpGenericAdaptorBaseC2ENS0_11LowerPackOpE
@_ZN4mlir9transform18LowerPackOpAdaptorC1ENS0_11LowerPackOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform18LowerPackOpAdaptorC2ENS0_11LowerPackOpE
@_ZN4mlir9transform6detail31LowerUnPackOpGenericAdaptorBaseC1ENS0_13LowerUnPackOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail31LowerUnPackOpGenericAdaptorBaseC2ENS0_13LowerUnPackOpE
@_ZN4mlir9transform20LowerUnPackOpAdaptorC1ENS0_13LowerUnPackOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform20LowerUnPackOpAdaptorC2ENS0_13LowerUnPackOpE
@_ZN4mlir9transform6detail36MapCopyToThreadsOpGenericAdaptorBaseC1ENS0_18MapCopyToThreadsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail36MapCopyToThreadsOpGenericAdaptorBaseC2ENS0_18MapCopyToThreadsOpE
@_ZN4mlir9transform25MapCopyToThreadsOpAdaptorC1ENS0_18MapCopyToThreadsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform25MapCopyToThreadsOpAdaptorC2ENS0_18MapCopyToThreadsOpE
@_ZN4mlir9transform6detail25MatchOpGenericAdaptorBaseC1ENS0_7MatchOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail25MatchOpGenericAdaptorBaseC2ENS0_7MatchOpE
@_ZN4mlir9transform14MatchOpAdaptorC1ENS0_7MatchOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform14MatchOpAdaptorC2ENS0_7MatchOpE
@_ZN4mlir9transform6detail34MultiTileSizesOpGenericAdaptorBaseC1ENS0_16MultiTileSizesOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail34MultiTileSizesOpGenericAdaptorBaseC2ENS0_16MultiTileSizesOpE
@_ZN4mlir9transform23MultiTileSizesOpAdaptorC1ENS0_16MultiTileSizesOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform23MultiTileSizesOpAdaptorC2ENS0_16MultiTileSizesOpE
@_ZN4mlir9transform6detail32PackGreedilyOpGenericAdaptorBaseC1ENS0_14PackGreedilyOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail32PackGreedilyOpGenericAdaptorBaseC2ENS0_14PackGreedilyOpE
@_ZN4mlir9transform21PackGreedilyOpAdaptorC1ENS0_14PackGreedilyOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform21PackGreedilyOpAdaptorC2ENS0_14PackGreedilyOpE
@_ZN4mlir9transform6detail24PackOpGenericAdaptorBaseC1ENS0_6PackOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail24PackOpGenericAdaptorBaseC2ENS0_6PackOpE
@_ZN4mlir9transform13PackOpAdaptorC1ENS0_6PackOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform13PackOpAdaptorC2ENS0_6PackOpE
@_ZN4mlir9transform6detail33PackTransposeOpGenericAdaptorBaseC1ENS0_15PackTransposeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail33PackTransposeOpGenericAdaptorBaseC2ENS0_15PackTransposeOpE
@_ZN4mlir9transform22PackTransposeOpAdaptorC1ENS0_15PackTransposeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform22PackTransposeOpAdaptorC2ENS0_15PackTransposeOpE
@_ZN4mlir9transform6detail23PadOpGenericAdaptorBaseC1ENS0_5PadOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail23PadOpGenericAdaptorBaseC2ENS0_5PadOpE
@_ZN4mlir9transform12PadOpAdaptorC1ENS0_5PadOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform12PadOpAdaptorC2ENS0_5PadOpE
@_ZN4mlir9transform6detail38PadTilingInterfaceOpGenericAdaptorBaseC1ENS0_20PadTilingInterfaceOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail38PadTilingInterfaceOpGenericAdaptorBaseC2ENS0_20PadTilingInterfaceOpE
@_ZN4mlir9transform27PadTilingInterfaceOpAdaptorC1ENS0_20PadTilingInterfaceOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform27PadTilingInterfaceOpAdaptorC2ENS0_20PadTilingInterfaceOpE
@_ZN4mlir9transform6detail27PromoteOpGenericAdaptorBaseC1ENS0_9PromoteOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail27PromoteOpGenericAdaptorBaseC2ENS0_9PromoteOpE
@_ZN4mlir9transform16PromoteOpAdaptorC1ENS0_9PromoteOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform16PromoteOpAdaptorC2ENS0_9PromoteOpE
@_ZN4mlir9transform6detail33PromoteTensorOpGenericAdaptorBaseC1ENS0_15PromoteTensorOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail33PromoteTensorOpGenericAdaptorBaseC2ENS0_15PromoteTensorOpE
@_ZN4mlir9transform22PromoteTensorOpAdaptorC1ENS0_15PromoteTensorOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform22PromoteTensorOpAdaptorC2ENS0_15PromoteTensorOpE
@_ZN4mlir9transform6detail27ReplaceOpGenericAdaptorBaseC1ENS0_9ReplaceOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail27ReplaceOpGenericAdaptorBaseC2ENS0_9ReplaceOpE
@_ZN4mlir9transform16ReplaceOpAdaptorC1ENS0_9ReplaceOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform16ReplaceOpAdaptorC2ENS0_9ReplaceOpE
@_ZN4mlir9transform6detail52RewriteInDestinationPassingStyleOpGenericAdaptorBaseC1ENS0_34RewriteInDestinationPassingStyleOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail52RewriteInDestinationPassingStyleOpGenericAdaptorBaseC2ENS0_34RewriteInDestinationPassingStyleOpE
@_ZN4mlir9transform41RewriteInDestinationPassingStyleOpAdaptorC1ENS0_34RewriteInDestinationPassingStyleOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform41RewriteInDestinationPassingStyleOpAdaptorC2ENS0_34RewriteInDestinationPassingStyleOpE
@_ZN4mlir9transform6detail29ScalarizeOpGenericAdaptorBaseC1ENS0_11ScalarizeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail29ScalarizeOpGenericAdaptorBaseC2ENS0_11ScalarizeOpE
@_ZN4mlir9transform18ScalarizeOpAdaptorC1ENS0_11ScalarizeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform18ScalarizeOpAdaptorC2ENS0_11ScalarizeOpE
@_ZN4mlir9transform6detail30SpecializeOpGenericAdaptorBaseC1ENS0_12SpecializeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail30SpecializeOpGenericAdaptorBaseC2ENS0_12SpecializeOpE
@_ZN4mlir9transform19SpecializeOpAdaptorC1ENS0_12SpecializeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform19SpecializeOpAdaptorC2ENS0_12SpecializeOpE
@_ZN4mlir9transform6detail25SplitOpGenericAdaptorBaseC1ENS0_7SplitOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail25SplitOpGenericAdaptorBaseC2ENS0_7SplitOpE
@_ZN4mlir9transform14SplitOpAdaptorC1ENS0_7SplitOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform14SplitOpAdaptorC2ENS0_7SplitOpE
@_ZN4mlir9transform6detail34SplitReductionOpGenericAdaptorBaseC1ENS0_16SplitReductionOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail34SplitReductionOpGenericAdaptorBaseC2ENS0_16SplitReductionOpE
@_ZN4mlir9transform23SplitReductionOpAdaptorC1ENS0_16SplitReductionOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform23SplitReductionOpAdaptorC2ENS0_16SplitReductionOpE
@_ZN4mlir9transform6detail41TileReductionUsingForOpGenericAdaptorBaseC1ENS0_23TileReductionUsingForOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail41TileReductionUsingForOpGenericAdaptorBaseC2ENS0_23TileReductionUsingForOpE
@_ZN4mlir9transform30TileReductionUsingForOpAdaptorC1ENS0_23TileReductionUsingForOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform30TileReductionUsingForOpAdaptorC2ENS0_23TileReductionUsingForOpE
@_ZN4mlir9transform6detail44TileReductionUsingForallOpGenericAdaptorBaseC1ENS0_26TileReductionUsingForallOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail44TileReductionUsingForallOpGenericAdaptorBaseC2ENS0_26TileReductionUsingForallOpE
@_ZN4mlir9transform33TileReductionUsingForallOpAdaptorC1ENS0_26TileReductionUsingForallOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform33TileReductionUsingForallOpAdaptorC2ENS0_26TileReductionUsingForallOpE
@_ZN4mlir9transform6detail32TileUsingForOpGenericAdaptorBaseC1ENS0_14TileUsingForOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail32TileUsingForOpGenericAdaptorBaseC2ENS0_14TileUsingForOpE
@_ZN4mlir9transform21TileUsingForOpAdaptorC1ENS0_14TileUsingForOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform21TileUsingForOpAdaptorC2ENS0_14TileUsingForOpE
@_ZN4mlir9transform6detail35TileUsingForallOpGenericAdaptorBaseC1ENS0_17TileUsingForallOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail35TileUsingForallOpGenericAdaptorBaseC2ENS0_17TileUsingForallOpE
@_ZN4mlir9transform24TileUsingForallOpAdaptorC1ENS0_17TileUsingForallOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform24TileUsingForallOpAdaptorC2ENS0_17TileUsingForallOpE
@_ZN4mlir9transform6detail35TransposeConv2DOpGenericAdaptorBaseC1ENS0_17TransposeConv2DOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail35TransposeConv2DOpGenericAdaptorBaseC2ENS0_17TransposeConv2DOpE
@_ZN4mlir9transform24TransposeConv2DOpAdaptorC1ENS0_17TransposeConv2DOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform24TransposeConv2DOpAdaptorC2ENS0_17TransposeConv2DOpE
@_ZN4mlir9transform6detail35TransposeMatmulOpGenericAdaptorBaseC1ENS0_17TransposeMatmulOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail35TransposeMatmulOpGenericAdaptorBaseC2ENS0_17TransposeMatmulOpE
@_ZN4mlir9transform24TransposeMatmulOpAdaptorC1ENS0_17TransposeMatmulOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform24TransposeMatmulOpAdaptorC2ENS0_17TransposeMatmulOpE
@_ZN4mlir9transform6detail53VectorizeChildrenAndApplyPatternsOpGenericAdaptorBaseC1ENS0_35VectorizeChildrenAndApplyPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail53VectorizeChildrenAndApplyPatternsOpGenericAdaptorBaseC2ENS0_35VectorizeChildrenAndApplyPatternsOpE
@_ZN4mlir9transform42VectorizeChildrenAndApplyPatternsOpAdaptorC1ENS0_35VectorizeChildrenAndApplyPatternsOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform42VectorizeChildrenAndApplyPatternsOpAdaptorC2ENS0_35VectorizeChildrenAndApplyPatternsOpE
@_ZN4mlir9transform6detail29VectorizeOpGenericAdaptorBaseC1ENS0_11VectorizeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail29VectorizeOpGenericAdaptorBaseC2ENS0_11VectorizeOpE
@_ZN4mlir9transform18VectorizeOpAdaptorC1ENS0_11VectorizeOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform18VectorizeOpAdaptorC2ENS0_11VectorizeOpE
@_ZN4mlir9transform6detail34WinogradConv2DOpGenericAdaptorBaseC1ENS0_16WinogradConv2DOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform6detail34WinogradConv2DOpGenericAdaptorBaseC2ENS0_16WinogradConv2DOpE
@_ZN4mlir9transform23WinogradConv2DOpAdaptorC1ENS0_16WinogradConv2DOpE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4mlir9transform23WinogradConv2DOpAdaptorC2ENS0_16WinogradConv2DOpE

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform37ApplyEraseUnnecessaryInputsPatternsOp16populatePatternsERNS_17RewritePatternSetE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir6linalg38populateEraseUnnecessaryInputsPatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176) %1) #29
  ret void
}

declare void @_ZN4mlir6linalg38populateEraseUnnecessaryInputsPatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform40ApplyDecomposeTensorPackUnpackPatternsOp16populatePatternsERNS_17RewritePatternSetE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir6linalg35populateDecomposePackUnpackPatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176) %1) #29
  ret void
}

declare void @_ZN4mlir6linalg35populateDecomposePackUnpackPatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform33ApplyDecomposeTensorPadPatternsOp16populatePatternsERNS_17RewritePatternSetE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4mlir6linalg28populateDecomposePadPatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176) %1) #29
  ret void
}

declare void @_ZN4mlir6linalg28populateDecomposePadPatternsERNS_17RewritePatternSetE(ptr noundef nonnull align 8 dereferenceable(176)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir9transform44ApplyFoldUnitExtentDimsViaReshapesPatternsOp16populatePatternsERNS_17RewritePatternSetE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.mlir::linalg::ControlDropUnitDims", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  store i32 0, ptr %2, align 8, !tbaa !76
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFN4llvm11SmallVectorIjLj12EEEPN4mlir9OperationEENS3_6linalg19ControlDropUnitDims9controlFnMUlS5_E_EE9_M_invokeERKSt9_Any_dataOS5_, ptr %i.c, align 8, !tbaa !77
  store ptr @_ZNSt17_Function_handlerIFN4llvm11SmallVectorIjLj12EEEPN4mlir9OperationEENS3_6linalg19ControlDropUnitDims9controlFnMUlS5_E_EE10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFN4llvm9FailureOrIN4mlir5ValueEEERNS2_12RewriterBaseENS2_8LocationES3_NS0_8ArrayRefIlEENS8_INS0_11SmallVectorIlLj2EEEEERKNS2_6linalg19ControlDropUnitDimsEENSE_10collapseFnMUlS6_S7_S3_S9_SC_SG_E_EE9_M_invokeERKSt9_Any_dataS6_OS7_OS3_OS9_OSC_SG_, ptr %i.f, align 8, !tbaa !79
  store ptr @_ZNSt17_Function_handlerIFN4llvm9FailureOrIN4mlir5ValueEEERNS2_12RewriterBaseENS2_8LocationES3_NS0_8ArrayRefIlEENS8_INS0_11SmallVectorIlLj2EEEEERKNS2_6linalg19ControlDropUnitDimsEENSE_10collapseFnMUlS6_S7_S3_S9_SC_SG_E_EE10_M_managerERSt9_Any_dataRKSL_St18_Manager_operation, ptr %i.e, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i8 0, i64 16, i1 false)
  store ptr @_ZNSt17_Function_handlerIFN4llvm9FailureOrIN4mlir5ValueEEERNS2_12RewriterBaseENS2_8LocationES3_S3_NS0_8ArrayRefINS0_11SmallVectorIlLj2EEEEERKNS2_6linalg19ControlDropUnitDimsEENSD_8expandFnMUlS6_S7_S3_S3_SB_SF_E_EE9_M_invokeERKSt9_Any_dataS6_OS7_OS3_SO_OSB_SF_, ptr %i.i, align 8, !tbaa !80
  store ptr @_ZNSt17_Function_handlerIFN4llvm9FailureOrIN4mlir5ValueEEERNS2_12RewriterBaseENS2_8LocationES3_S3_NS0_8ArrayRefINS0_11SmallVectorIlLj2EEEEERKNS2_6linalg19ControlDropUnitDimsEENSD_8expandFnMUlS6_S7_S3_S3_SB_SF_E_EE10_M_managerERSt9_Any_dataRKSK_St18_Manager_operation, ptr %i.h, align 8, !tbaa !78
  call void @_ZN4mlir6linalg34populateFoldUnitExtentDimsPatternsERNS_17RewritePatternSetERNS0_19ControlDropUnitDimsE(ptr noundef nonnull align 8 dereferenceable(176) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #29
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !78   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3) #29, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !78   ; 2 uses
  %.not.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.m = call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #29, !inline_history !0 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2.i

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !78   ; 2 uses
  %.not.i3.i = icmp eq ptr %i.n, null
  br i1 %.not.i3.i, label %_ZN4mlir6linalg19ControlDropUnitDimsD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.o = call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 3) #29, !inline_history !0 ; 0 uses
  br label %_ZN4mlir6linalg19ControlDropUnitDimsD2Ev.exit

_ZN4mlir6linalg19ControlDropUnitDimsD2Ev.exit:    ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN4mlir9transform19DecomposeWinogradOp10applyToOneERNS0_17TransformRewriterEPNS_9OperationERNS0_21ApplyToEachResultListERNS0_14TransformStateE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %8, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i8 0, i64 48, i1 false), !noalias !3290
  store ptr %i.co, ptr %i.cn, align 8, !tbaa !109, !noalias !3290
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i32 0, ptr %i.cp, align 8, !tbaa !110, !noalias !3290
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 188
  store i32 0, ptr %i.cq, align 4, !tbaa !111, !noalias !3290
  %i.cr = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10DiagnosticlsERKN4llvm5TwineE(ptr noundef nonnull align 8 dereferenceable(192) %8, ptr noundef nonnull align 8 dereferenceable(34) %15) #29, !noalias !3290 ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  store ptr %i.cs, ptr %14, align 8, !tbaa !109, !alias.scope !3291
  %i.ct = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  store i32 0, ptr %i.ct, align 8, !tbaa !110, !alias.scope !3291
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 12
  store i32 1, ptr %i.cu, align 4, !tbaa !111, !alias.scope !3291
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 208 ; 3 uses
  store i8 0, ptr %i.cv, align 8, !alias.scope !3291
  %i.cw = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4llvm15SmallVectorImplIN4mlir10DiagnosticEE12emplace_backIJS2_EEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(209) %14, ptr noundef nonnull align 8 dereferenceable(192) %8) ; 0 uses
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29, !noalias !3290
  %i.cx = load ptr, ptr %14, align 8, !tbaa !109
  %i.cy = load i32, ptr %i.ct, align 8, !tbaa !110
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [192 x i8], ptr %i.cx, i64 %i.cz ; 3 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i32 3, ptr %7, align 8, !tbaa !146
  %i.dc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.143, ptr %i.dc, align 8, !tbaa !148
  %.sroa.2.0..sroa_idx.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 36, ptr %.sroa.2.0..sroa_idx.i.i.i.i25, align 8, !tbaa !150
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -168 ; 3 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !110 ; 2 uses
  %i.df = getelementptr inbounds i8, ptr %i.da, i64 -164
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !111
  %.not.i.i.i.i26 = icmp ult i32 %i.de, %i.dg
  br i1 %.not.i.i.i.i26, label %bb.k, label %bb.j, !prof !151

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir27DiagnosedSilenceableFailurelsIRA37_KcEEOS0_OT_.exit

bb.k:                                             ; preds = %bb.i
  %i.dh = zext i32 %i.de to i64
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !109
  %i.dj = getelementptr inbounds nuw [24 x i8], ptr %i.di, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.dk = load i32, ptr %i.dd, align 8, !tbaa !110
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.dd, align 8, !tbaa !110
  br label %_ZNO4mlir27DiagnosedSilenceableFailurelsIRA37_KcEEOS0_OT_.exit

_ZNO4mlir27DiagnosedSilenceableFailurelsIRA37_KcEEOS0_OT_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dm, ptr %0, align 8, !tbaa !109
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.dn, align 8, !tbaa !110
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.do, align 4, !tbaa !111
  %i.dp = load i32, ptr %i.ct, align 8, !tbaa !110
  %.not.i.i.i27 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.i27, label %_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28.thread, label %_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28

_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28.thread: ; preds = %_ZNO4mlir27DiagnosedSilenceableFailurelsIRA37_KcEEOS0_OT_.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dr = load i8, ptr %i.cv, align 8, !tbaa !152
  store i8 %i.dr, ptr %i.dq, align 8, !tbaa !152
  %i.ds = load ptr, ptr %14, align 8, !tbaa !109
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i37

_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28: ; preds = %_ZNO4mlir27DiagnosedSilenceableFailurelsIRA37_KcEEOS0_OT_.exit
  %i.dt = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIN4mlir10DiagnosticEEaSEOS3_(ptr noundef nonnull align 8 dereferenceable(209) %0, ptr noundef nonnull align 8 dereferenceable(209) %14) ; 0 uses
  %.pr73 = load i32, ptr %i.ct, align 8, !tbaa !110 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dv = load i8, ptr %i.cv, align 8, !tbaa !152
  store i8 %i.dv, ptr %i.du, align 8, !tbaa !152
  %i.dw = load ptr, ptr %14, align 8, !tbaa !109  ; 3 uses
  %.not4.i.i.i29 = icmp eq i32 %.pr73, 0
  br i1 %.not4.i.i.i29, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i37, label %.lr.ph.i.preheader.i.i30

.lr.ph.i.preheader.i.i30:                         ; preds = %_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28
  %i.dx = zext i32 %.pr73 to i64
  %.idx.i.i31 = mul nuw nsw i64 %i.dx, 192
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i.i31
  br label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %.lr.ph.i.i.i32, %.lr.ph.i.preheader.i.i30
  %.05.i.i.i33 = phi ptr [ %i.dz, %.lr.ph.i.i.i32 ], [ %i.dy, %.lr.ph.i.preheader.i.i30 ]
  %i.dz = getelementptr inbounds i8, ptr %.05.i.i.i33, i64 -192 ; 3 uses
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.dz) #29
  %.not.i.i.i34 = icmp eq ptr %i.dw, %i.dz
  br i1 %.not.i.i.i34, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i35, label %.lr.ph.i.i.i32, !llvm.loop !3

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i35: ; preds = %.lr.ph.i.i.i32
  %.pre.i.i36 = load ptr, ptr %14, align 8, !tbaa !109
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i37

_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i37: ; preds = %_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28.thread, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i35, %_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28
  %i.ea = phi ptr [ %.pre.i.i36, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.loopexit.i.i35 ], [ %i.dw, %_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28 ], [ %i.ds, %_ZN4mlir27DiagnosedSilenceableFailureC2EOS0_.exit28.thread ] ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.cs
  br i1 %i.eb, label %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit38, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i37
  call void @free(ptr noundef %i.ea) #29
  br label %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit38

_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit38: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir10DiagnosticELb0EE13destroy_rangeEPS2_S4_.exit.i.i37, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #29
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.0.0.copyload.i39 = load ptr, ptr %i.ec, align 8
  %i.ed = load ptr, ptr %0, align 8, !tbaa !109
  %i.ee = load i32, ptr %i.dn, align 8, !tbaa !110
  %i.ef = zext i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [192 x i8], ptr %i.ed, i64 %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -192
  %i.ei = call noundef nonnull align 8 dereferenceable(192) ptr @_ZN4mlir10Diagnostic10attachNoteESt8optionalINS_8LocationEE(ptr noundef nonnull align 8 dereferenceable(192) %i.eh, ptr %.sroa.0.0.copyload.i39, i8 1) #29 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  store i32 3, ptr %6, align 8, !tbaa !146
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.35, ptr %i.ek, align 8, !tbaa !148
  %.sroa.2.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 9, ptr %.sroa.2.0..sroa_idx.i.i40, align 8, !tbaa !150
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 3 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !110 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !111
  %.not.i.i41 = icmp ult i32 %i.em, %i.eo
  br i1 %.not.i.i41, label %bb.n, label %bb.m, !prof !151

bb.m:                                             ; preds = %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit38
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZN4mlir10DiagnosticlsILm10EEERS0_RAT__Kc.exit42

bb.n:                                             ; preds = %_ZN4mlir27DiagnosedSilenceableFailureD2Ev.exit38
  %i.ep = zext i32 %i.em to i64
  %i.eq = load ptr, ptr %i.ej, align 8, !tbaa !109
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.er, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.es = load i32, ptr %i.el, align 8, !tbaa !110
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.el, align 8, !tbaa !110
  br label %_ZN4mlir10DiagnosticlsILm10EEERS0_RAT__Kc.exit42

_ZN4mlir10DiagnosticlsILm10EEERS0_RAT__Kc.exit42: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %bb.r

bb.o:                                             ; preds = %"_ZN4llvm6detail14TypeSwitchBaseINS_10TypeSwitchIPN4mlir9OperationEbEES5_E4CaseIZNS3_9transform19DecomposeWinogradOp10applyToOneERNS9_17TransformRewriterES5_RNS9_21ApplyToEachResultListERNS9_14TransformStateEE3$_1EERS6_OT_.exit.thread"
  %.sroa.0.2.ph = extractvalue { ptr, i8 } %.pn, 0
  %i.eu = ptrtoint ptr %.sroa.0.2.ph to i64       ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !110 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !111
  %.not.i.i43 = icmp ult i32 %i.ew, %i.ey
  br i1 %.not.i.i43, label %bb.q, label %bb.p, !prof !151

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvm23SmallVectorTemplateBaseINS_12PointerUnionIJPN4mlir9OperationENS2_9AttributeENS2_5ValueEEEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(64) %4, i64 %i.eu)
  br label %_ZN4mlir9transform21ApplyToEachResultList9push_backEPNS_9OperationE.exit

bb.q:                                             ; preds = %bb.o
  %i.ez = zext i32 %i.ew to i64
  %i.fa = load ptr, ptr %4, align 8, !tbaa !109
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez
  store i64 %i.eu, ptr %i.fb, align 1
  %i.fc = load i32, ptr %i.ev, align 8, !tbaa !110
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr %i.ev, align 8, !tbaa !110
  br label %_ZN4mlir9transform21ApplyToEachResultList9push_backEPNS_9OperationE.exit

_ZN4mlir9transform21ApplyToEachResultList9push_backEPNS_9OperationE.exit: ; preds = %bb.p, %bb.q
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.fe, ptr %0, align 8, !tbaa !109, !alias.scope !3292
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ff, align 8, !tbaa !110, !alias.scope !3292
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.fg, align 4, !tbaa !111, !alias.scope !3292
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.fh, align 8, !tbaa !152, !alias.scope !3292
  br label %bb.r

bb.r:                                             ; preds = %_ZN4mlir10DiagnosticlsILm10EEERS0_RAT__Kc.exit42, %_ZN4mlir10DiagnosticlsILm10EEERS0_RAT__Kc.exit, %_ZN4mlir9transform21ApplyToEachResultList9push_backEPNS_9OperationE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN4mlir9transform27stringifyMatchInterfaceEnumENS0_18MatchInterfaceEnumE(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN4mlir9transform27stringifyMatchInterfaceEnumENS0_18MatchInterfaceEnumE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i32 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4mlir9transform27stringifyMatchInterfaceEnumENS0_18MatchInterfaceEnumE.558, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.5.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.147, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i64 0, 4294967299) i64 @_ZN4mlir9transform27symbolizeMatchInterfaceEnumEN4llvm9StringRefE(ptr nofree readonly captures(none) %0, i64 %1) local_unnamed_addr #8 {
bb.a:
  switch i64 %1, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir9transform18MatchInterfaceEnumEES5_E4CaseENS_13StringLiteralES5_.exit21 [
    i64 8, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i
    i64 15, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i8
    i64 17, label %_ZN4llvmneENS_9StringRefES0_.exit.i.i17
  ]

_ZN4llvmneENS_9StringRefES0_.exit.i.i:            ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = icmp ne i64 %i.a, 8092800770596825420
  %i.c = zext i1 %i.b to i32
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir9transform18MatchInterfaceEnumEES5_E4CaseENS_13StringLiteralES5_.exit21, label %.thread62

_ZN4llvmneENS_9StringRefES0_.exit.i.i8:           ; preds = %bb.a
  %i.d = load i64, ptr %0, align 1
  %i.e = xor i64 %i.d, 7946996741384726868
  %i.f = getelementptr i8, ptr %0, i64 7
  %i.g = load i64, ptr %i.f, align 1
  %i.h = xor i64 %i.g, 7305790113158886510
  %i.i = or i64 %i.e, %i.h
  %i.j = icmp ne i64 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %.not.i.i10 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i10, label %_ZN4llvm12StringSwitchISt8optionalIN4mlir9transform18MatchInterfaceEnumEES5_E4CaseENS_13StringLiteralES5_.exit21, label %.thread62

.thread62:                                        ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir9transform18MatchInterfaceEnumEES5_E4CaseENS_13StringLiteralES5_.exit21

_ZN4llvmneENS_9StringRefES0_.exit.i.i17:          ; preds = %bb.a
  %i.l = load i128, ptr %0, align 1
  %i.m = xor i128 %i.l, 132099302247173390995226717959933095756
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i128
  %i.q = xor i128 %i.p, 101
  %i.r = or i128 %i.m, %i.q
  %i.s = icmp ne i128 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %.not.i.i19 = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not.i.i19, i64 4294967298, i64 0
  br label %_ZN4llvm12StringSwitchISt8optionalIN4mlir9transform18MatchInterfaceEnumEES5_E4CaseENS_13StringLiteralES5_.exit21

_ZN4llvm12StringSwitchISt8optionalIN4mlir9transform18MatchInterfaceEnumEES5_E4CaseENS_13StringLiteralES5_.exit21: ; preds = %_ZN4llvmneENS_9StringRefES0_.exit.i.i17, %bb.a, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8, %.thread62, %_ZN4llvmneENS_9StringRefES0_.exit.i.i
  %.sroa.14.2 = phi i64 [ 0, %bb.a ], [ 4294967297, %_ZN4llvmneENS_9StringRefES0_.exit.i.i8 ], [ %i.u, %_ZN4llvmneENS_9StringRefES0_.exit.i.i17 ], [ 4294967296, %_ZN4llvmneENS_9StringRefES0_.exit.i.i ], [ 0, %.thread62 ]
  ret i64 %.sroa.14.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 0, 4294967299) i64 @_ZN4mlir9transform27symbolizeMatchInterfaceEnumEj(i32 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, 3
  %switch.idx.cast = zext i32 %0 to i64
  %switch.offset = or disjoint i64 %switch.idx.cast, 4294967296
  %.sroa.4.0 = select i1 %i.a, i64 %switch.offset, i64 0
  ret i64 %.sroa.4.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir9transform22MatchInterfaceEnumAttr7classofENS_9AttributeE(ptr %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %2 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %3 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %5 = alloca %"class.mlir::IntegerAttr", align 8 ; 6 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  %7 = alloca %"class.mlir::IntegerAttr", align 8 ; 7 uses
  %8 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !311
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !200
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  br i1 %i.c, label %bb.b, label %.critedge13

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %2, align 8
  %i.d = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  store ptr %i.d, ptr %1, align 8
  %i.e = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 32) #29
  br i1 %i.e, label %bb.c, label %.critedge13

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %3, align 8
  %i.f = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 32, ptr %i.g, align 8, !tbaa !313
  store i64 0, ptr %4, align 8, !tbaa !222
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !313
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %.split, label %_ZNK4llvm5APInt2eqERKS0_.exit

.split:                                           ; preds = %bb.c
  %i.k = load i64, ptr %i.f, align 8, !tbaa !222
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread47, label %bb.d

_ZNK4llvm5APInt2eqERKS0_.exit:                    ; preds = %bb.c
  %i.m = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 8 dereferenceable(12) %4) #33
  br i1 %i.m, label %.thread47, label %bb.d

bb.d:                                             ; preds = %.split, %_ZNK4llvm5APInt2eqERKS0_.exit
  store ptr %0, ptr %5, align 8
  %i.n = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 32, ptr %i.o, align 8, !tbaa !313
  store i64 1, ptr %6, align 8, !tbaa !222
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !313
  %i.r = icmp ult i32 %i.q, 65
  br i1 %i.r, label %.split26, label %_ZNK4llvm5APInt2eqERKS0_.exit20

.split26:                                         ; preds = %bb.d
  %i.s = load i64, ptr %i.n, align 8, !tbaa !222
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %.thread, label %bb.e

_ZNK4llvm5APInt2eqERKS0_.exit20:                  ; preds = %bb.d
  %i.u = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.n, ptr noundef nonnull align 8 dereferenceable(12) %6) #33
  br i1 %i.u, label %.thread, label %bb.e

bb.e:                                             ; preds = %.split26, %_ZNK4llvm5APInt2eqERKS0_.exit20
  store ptr %0, ptr %7, align 8
  %i.v = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 32, ptr %i.w, align 8, !tbaa !313
  store i64 2, ptr %8, align 8, !tbaa !222
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !313
  %i.z = icmp ult i32 %i.y, 65
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !222
  %i.ab = icmp eq i64 %i.aa, 2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.v, ptr noundef nonnull align 8 dereferenceable(12) %8) #33
  br label %bb.h

.thread:                                          ; preds = %.split26, %_ZNK4llvm5APInt2eqERKS0_.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ad = phi i1 [ %i.ab, %bb.f ], [ %i.ac, %bb.g ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %.pre = load i32, ptr %i.o, align 8, !tbaa !313
  %i.ae = icmp ugt i32 %.pre, 64
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %6, align 8, !tbaa !222   ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.af) #31
  br label %bb.k

.thread47:                                        ; preds = %.split, %_ZNK4llvm5APInt2eqERKS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %_ZN4llvm5APIntD2Ev.exit25

.critedge13:                                      ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.critedge15

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %.thread
  %i.ah = phi i1 [ true, %.thread ], [ %i.ad, %bb.j ], [ %i.ad, %bb.i ], [ %i.ad, %bb.h ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %.pre44 = load i32, ptr %i.g, align 8, !tbaa !313
  %i.ai = icmp ugt i32 %.pre44, 64
end_hunk_1
