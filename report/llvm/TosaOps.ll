Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TosaOps?download=true
inline.NumInlined: 86712
inline.NumDeleted: 28499
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 120
begin_hunk_0
@.str.460 = private unnamed_addr constant [45 x i8] c"'tosa.clamp' op requires attribute 'min_val'\00", align 1
@.str.461 = private unnamed_addr constant [123 x i8] c"'tosa.clamp' op attribute 'min_val' failed to satisfy constraint: arbitrary integer attribute or arbitrary float attribute\00", align 1
@.str.462 = private unnamed_addr constant [123 x i8] c"'tosa.clamp' op attribute 'max_val' failed to satisfy constraint: arbitrary integer attribute or arbitrary float attribute\00", align 1
@.str.464 = private unnamed_addr constant [8 x i8] c"max_val\00", align 1
@.str.466 = private unnamed_addr constant [8 x i8] c"min_val\00", align 1
@.str.468 = private unnamed_addr constant [29 x i8] c"requires attribute 'max_val'\00", align 1
@.str.469 = private unnamed_addr constant [29 x i8] c"requires attribute 'min_val'\00", align 1
@.str.470 = private unnamed_addr constant [68 x i8] c"expected key entry for min_val in DictionaryAttr to set Properties.\00", align 1
@.str.471 = private unnamed_addr constant [68 x i8] c"expected key entry for max_val in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7ClampOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail25ClampOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5ClzOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.472 = private unnamed_addr constant [43 x i8] c"'tosa.concat' op requires attribute 'axis'\00", align 1
@.str.473 = private unnamed_addr constant [98 x i8] c"'tosa.concat' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.474 = private unnamed_addr constant [32 x i8] c"Failed to infer result type(s).\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8ConcatOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail26ConcatOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa13ConcatShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.475 = private unnamed_addr constant [44 x i8] c"'tosa.const' op requires attribute 'values'\00", align 1
@.str.477 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.478 = private unnamed_addr constant [52 x i8] c"Invalid attribute `values` in property conversion: \00", align 1
@.str.479 = private unnamed_addr constant [28 x i8] c"requires attribute 'values'\00", align 1
@.str.480 = private unnamed_addr constant [62 x i8] c"failed to verify that all of {values, output} have same shape\00", align 1
@.str.481 = private unnamed_addr constant [67 x i8] c"expected key entry for values in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7ConstOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail25ConstOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.482 = private unnamed_addr constant [50 x i8] c"'tosa.const_shape' op requires attribute 'values'\00", align 1
@.str.483 = private unnamed_addr constant [96 x i8] c"'tosa.const_shape' op attribute 'values' failed to satisfy constraint: index elements attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12ConstShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail30ConstShapeOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.484 = private unnamed_addr constant [62 x i8] c"'tosa.conv2d_block_scaled' op requires attribute 'block_size'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa19Conv2DBlockScaledOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail37Conv2DBlockScaledOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.486 = private unnamed_addr constant [47 x i8] c"'tosa.conv2d' op requires attribute 'acc_type'\00", align 1
@.str.487 = private unnamed_addr constant [47 x i8] c"'tosa.conv2d' op requires attribute 'dilation'\00", align 1
@.str.488 = private unnamed_addr constant [42 x i8] c"'tosa.conv2d' op requires attribute 'pad'\00", align 1
@.str.489 = private unnamed_addr constant [45 x i8] c"'tosa.conv2d' op requires attribute 'stride'\00", align 1
@.str.490 = private unnamed_addr constant [113 x i8] c"'tosa.conv2d' op attribute 'pad' failed to satisfy constraint: i64 dense array attribute with exactly 4 elements\00", align 1
@.str.491 = private unnamed_addr constant [116 x i8] c"'tosa.conv2d' op attribute 'stride' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.492 = private unnamed_addr constant [118 x i8] c"'tosa.conv2d' op attribute 'dilation' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.493 = private unnamed_addr constant [169 x i8] c"'tosa.conv2d' op attribute 'acc_type' failed to satisfy constraint: type attribute of 32-bit signless integer or 48-bit signless integer or 16-bit float or 32-bit float\00", align 1
@.str.495 = private unnamed_addr constant [9 x i8] c"dilation\00", align 1
@.str.496 = private unnamed_addr constant [54 x i8] c"Invalid attribute `dilation` in property conversion: \00", align 1
@.str.497 = private unnamed_addr constant [12 x i8] c"local_bound\00", align 1
@.str.498 = private unnamed_addr constant [57 x i8] c"Invalid attribute `local_bound` in property conversion: \00", align 1
@.str.499 = private unnamed_addr constant [30 x i8] c"requires attribute 'dilation'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8Conv2DOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail26Conv2DOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.500 = private unnamed_addr constant [47 x i8] c"'tosa.conv3d' op requires attribute 'acc_type'\00", align 1
@.str.501 = private unnamed_addr constant [47 x i8] c"'tosa.conv3d' op requires attribute 'dilation'\00", align 1
@.str.502 = private unnamed_addr constant [42 x i8] c"'tosa.conv3d' op requires attribute 'pad'\00", align 1
@.str.503 = private unnamed_addr constant [45 x i8] c"'tosa.conv3d' op requires attribute 'stride'\00", align 1
@.str.504 = private unnamed_addr constant [113 x i8] c"'tosa.conv3d' op attribute 'pad' failed to satisfy constraint: i64 dense array attribute with exactly 6 elements\00", align 1
@.str.505 = private unnamed_addr constant [116 x i8] c"'tosa.conv3d' op attribute 'stride' failed to satisfy constraint: i64 dense array attribute with exactly 3 elements\00", align 1
@.str.506 = private unnamed_addr constant [118 x i8] c"'tosa.conv3d' op attribute 'dilation' failed to satisfy constraint: i64 dense array attribute with exactly 3 elements\00", align 1
@.str.507 = private unnamed_addr constant [169 x i8] c"'tosa.conv3d' op attribute 'acc_type' failed to satisfy constraint: type attribute of 32-bit signless integer or 48-bit signless integer or 16-bit float or 32-bit float\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8Conv3DOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail26Conv3DOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5CosOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.509 = private unnamed_addr constant [50 x i8] c"'tosa.custom' op requires attribute 'domain_name'\00", align 1
@.str.510 = private unnamed_addr constant [59 x i8] c"'tosa.custom' op requires attribute 'implementation_attrs'\00", align 1
@.str.511 = private unnamed_addr constant [52 x i8] c"'tosa.custom' op requires attribute 'operator_name'\00", align 1
@.str.515 = private unnamed_addr constant [12 x i8] c"domain_name\00", align 1
@.str.516 = private unnamed_addr constant [57 x i8] c"Invalid attribute `domain_name` in property conversion: \00", align 1
@.str.517 = private unnamed_addr constant [21 x i8] c"implementation_attrs\00", align 1
@.str.518 = private unnamed_addr constant [66 x i8] c"Invalid attribute `implementation_attrs` in property conversion: \00", align 1
@.str.519 = private unnamed_addr constant [14 x i8] c"operator_name\00", align 1
@.str.520 = private unnamed_addr constant [59 x i8] c"Invalid attribute `operator_name` in property conversion: \00", align 1
@.str.521 = private unnamed_addr constant [33 x i8] c"requires attribute 'domain_name'\00", align 1
@.str.522 = private unnamed_addr constant [42 x i8] c"requires attribute 'implementation_attrs'\00", align 1
@.str.523 = private unnamed_addr constant [35 x i8] c"requires attribute 'operator_name'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8CustomOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail26CustomOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.524 = private unnamed_addr constant [57 x i8] c"'tosa.depthwise_conv2d' op requires attribute 'acc_type'\00", align 1
@.str.525 = private unnamed_addr constant [57 x i8] c"'tosa.depthwise_conv2d' op requires attribute 'dilation'\00", align 1
@.str.526 = private unnamed_addr constant [52 x i8] c"'tosa.depthwise_conv2d' op requires attribute 'pad'\00", align 1
@.str.527 = private unnamed_addr constant [55 x i8] c"'tosa.depthwise_conv2d' op requires attribute 'stride'\00", align 1
@.str.528 = private unnamed_addr constant [123 x i8] c"'tosa.depthwise_conv2d' op attribute 'pad' failed to satisfy constraint: i64 dense array attribute with exactly 4 elements\00", align 1
@.str.529 = private unnamed_addr constant [126 x i8] c"'tosa.depthwise_conv2d' op attribute 'stride' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.530 = private unnamed_addr constant [128 x i8] c"'tosa.depthwise_conv2d' op attribute 'dilation' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.531 = private unnamed_addr constant [179 x i8] c"'tosa.depthwise_conv2d' op attribute 'acc_type' failed to satisfy constraint: type attribute of 32-bit signless integer or 48-bit signless integer or 16-bit float or 32-bit float\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa17DepthwiseConv2DOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail35DepthwiseConv2DOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.533 = private unnamed_addr constant [40 x i8] c"'tosa.dim' op requires attribute 'axis'\00", align 1
@.str.534 = private unnamed_addr constant [95 x i8] c"'tosa.dim' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5DimOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail23DimOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa14DivCeilShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa15DivFloorShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7EqualOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5ErfOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11Exp2ShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5ExpOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.535 = private unnamed_addr constant [45 x i8] c"'tosa.fft2d' op requires attribute 'inverse'\00", align 1
@.str.538 = private unnamed_addr constant [12 x i8] c"output_real\00", align 1
@.str.539 = private unnamed_addr constant [12 x i8] c"output_imag\00", align 1
@.str.540 = private unnamed_addr constant [8 x i8] c"inverse\00", align 1
@.str.541 = private unnamed_addr constant [53 x i8] c"Invalid attribute `inverse` in property conversion: \00", align 1
@.str.542 = private unnamed_addr constant [29 x i8] c"requires attribute 'inverse'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7FFT2dOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail25FFT2dOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7FloorOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8GatherOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa14GreaterEqualOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9GreaterOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa10IdentityOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.543 = private unnamed_addr constant [11 x i8] c"then_graph\00", align 1
@.str.544 = private unnamed_addr constant [11 x i8] c"else_graph\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa4IfOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8IntDivOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa15Log2CeilShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa16Log2FloorShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5LogOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12LogicalAndOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa18LogicalLeftShiftOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12LogicalNotOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11LogicalOrOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa19LogicalRightShiftOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12LogicalXorOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8MatMulOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9MatMulTOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.545 = private unnamed_addr constant [64 x i8] c"'tosa.matmul_t_block_scaled' op requires attribute 'block_size'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa20MatmulTBlockScaledOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail38MatmulTBlockScaledOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa19MaxPool2dAdaptiveOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail37MaxPool2dAdaptiveOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.548 = private unnamed_addr constant [49 x i8] c"'tosa.max_pool2d' op requires attribute 'kernel'\00", align 1
@.str.549 = private unnamed_addr constant [46 x i8] c"'tosa.max_pool2d' op requires attribute 'pad'\00", align 1
@.str.550 = private unnamed_addr constant [49 x i8] c"'tosa.max_pool2d' op requires attribute 'stride'\00", align 1
@.str.551 = private unnamed_addr constant [120 x i8] c"'tosa.max_pool2d' op attribute 'kernel' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.552 = private unnamed_addr constant [120 x i8] c"'tosa.max_pool2d' op attribute 'stride' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.553 = private unnamed_addr constant [117 x i8] c"'tosa.max_pool2d' op attribute 'pad' failed to satisfy constraint: i64 dense array attribute with exactly 4 elements\00", align 1
@.str.555 = private unnamed_addr constant [67 x i8] c"expected key entry for kernel in DictionaryAttr to set Properties.\00", align 1
@.str.556 = private unnamed_addr constant [67 x i8] c"expected key entry for stride in DictionaryAttr to set Properties.\00", align 1
@.str.557 = private unnamed_addr constant [64 x i8] c"expected key entry for pad in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11MaxPool2dOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail29MaxPool2dOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa10MaxShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9MaximumOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail27MaximumOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa10MinShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9MinimumOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail27MinimumOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa10ModShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5MulOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa10MulShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8NegateOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5PadOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5PowOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8RFFT2dOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail26RFFT2dOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12ReciprocalOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.561 = private unnamed_addr constant [47 x i8] c"'tosa.reduce_all' op requires attribute 'axis'\00", align 1
@.str.562 = private unnamed_addr constant [102 x i8] c"'tosa.reduce_all' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11ReduceAllOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail29ReduceAllOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.563 = private unnamed_addr constant [47 x i8] c"'tosa.reduce_any' op requires attribute 'axis'\00", align 1
@.str.564 = private unnamed_addr constant [102 x i8] c"'tosa.reduce_any' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11ReduceAnyOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail29ReduceAnyOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.565 = private unnamed_addr constant [47 x i8] c"'tosa.reduce_max' op requires attribute 'axis'\00", align 1
@.str.566 = private unnamed_addr constant [102 x i8] c"'tosa.reduce_max' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11ReduceMaxOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail29ReduceMaxOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.568 = private unnamed_addr constant [47 x i8] c"'tosa.reduce_min' op requires attribute 'axis'\00", align 1
@.str.569 = private unnamed_addr constant [102 x i8] c"'tosa.reduce_min' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11ReduceMinOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail29ReduceMinOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.571 = private unnamed_addr constant [51 x i8] c"'tosa.reduce_product' op requires attribute 'axis'\00", align 1
@.str.572 = private unnamed_addr constant [106 x i8] c"'tosa.reduce_product' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa15ReduceProductOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail33ReduceProductOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.573 = private unnamed_addr constant [47 x i8] c"'tosa.reduce_sum' op requires attribute 'axis'\00", align 1
@.str.574 = private unnamed_addr constant [102 x i8] c"'tosa.reduce_sum' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11ReduceSumOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail29ReduceSumOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.575 = private unnamed_addr constant [54 x i8] c"'tosa.rescale' op requires attribute 'input_unsigned'\00", align 1
@.str.576 = private unnamed_addr constant [55 x i8] c"'tosa.rescale' op requires attribute 'output_unsigned'\00", align 1
@.str.577 = private unnamed_addr constant [51 x i8] c"'tosa.rescale' op requires attribute 'per_channel'\00", align 1
@.str.578 = private unnamed_addr constant [53 x i8] c"'tosa.rescale' op requires attribute 'rounding_mode'\00", align 1
@.str.579 = private unnamed_addr constant [47 x i8] c"'tosa.rescale' op requires attribute 'scale32'\00", align 1
@.str.585 = private unnamed_addr constant [15 x i8] c"input_unsigned\00", align 1
@.str.586 = private unnamed_addr constant [60 x i8] c"Invalid attribute `input_unsigned` in property conversion: \00", align 1
@.str.587 = private unnamed_addr constant [16 x i8] c"output_unsigned\00", align 1
@.str.588 = private unnamed_addr constant [61 x i8] c"Invalid attribute `output_unsigned` in property conversion: \00", align 1
@.str.589 = private unnamed_addr constant [12 x i8] c"per_channel\00", align 1
@.str.590 = private unnamed_addr constant [57 x i8] c"Invalid attribute `per_channel` in property conversion: \00", align 1
@.str.591 = private unnamed_addr constant [8 x i8] c"scale32\00", align 1
@.str.592 = private unnamed_addr constant [53 x i8] c"Invalid attribute `scale32` in property conversion: \00", align 1
@.str.593 = private unnamed_addr constant [36 x i8] c"requires attribute 'input_unsigned'\00", align 1
@.str.594 = private unnamed_addr constant [37 x i8] c"requires attribute 'output_unsigned'\00", align 1
@.str.595 = private unnamed_addr constant [33 x i8] c"requires attribute 'per_channel'\00", align 1
@.str.596 = private unnamed_addr constant [29 x i8] c"requires attribute 'scale32'\00", align 1
@.str.597 = private unnamed_addr constant [68 x i8] c"expected key entry for scale32 in DictionaryAttr to set Properties.\00", align 1
@.str.598 = private unnamed_addr constant [72 x i8] c"expected key entry for per_channel in DictionaryAttr to set Properties.\00", align 1
@.str.599 = private unnamed_addr constant [75 x i8] c"expected key entry for input_unsigned in DictionaryAttr to set Properties.\00", align 1
@.str.600 = private unnamed_addr constant [76 x i8] c"expected key entry for output_unsigned in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9RescaleOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail27RescaleOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.601 = private unnamed_addr constant [63 x i8] c"'tosa.reshape_block_scaled' op requires attribute 'block_size'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa20ReshapeBlockScaledOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail38ReshapeBlockScaledOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9ReshapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.603 = private unnamed_addr constant [43 x i8] c"'tosa.resize' op requires attribute 'mode'\00", align 1
@.str.605 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.606 = private unnamed_addr constant [50 x i8] c"Invalid attribute `mode` in property conversion: \00", align 1
@.str.607 = private unnamed_addr constant [26 x i8] c"requires attribute 'mode'\00", align 1
@.str.608 = private unnamed_addr constant [65 x i8] c"expected key entry for mode in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8ResizeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail26ResizeOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.609 = private unnamed_addr constant [44 x i8] c"'tosa.reverse' op requires attribute 'axis'\00", align 1
@.str.610 = private unnamed_addr constant [99 x i8] c"'tosa.reverse' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9ReverseOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail27ReverseOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.611 = private unnamed_addr constant [66 x i8] c"'tosa.row_gather_block_scaled' op requires attribute 'block_size'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa22RowGatherBlockScaledOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail40RowGatherBlockScaledOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11RowGatherOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7RsqrtOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9ScatterOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8SelectOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9SigmoidOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5SinOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7SliceOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12SliceShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5SubOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa10SubShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7TableOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6TanhOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6TileOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.613 = private unnamed_addr constant [57 x i8] c"'tosa.transpose_conv2d' op requires attribute 'acc_type'\00", align 1
@.str.614 = private unnamed_addr constant [56 x i8] c"'tosa.transpose_conv2d' op requires attribute 'out_pad'\00", align 1
@.str.615 = private unnamed_addr constant [55 x i8] c"'tosa.transpose_conv2d' op requires attribute 'stride'\00", align 1
@.str.616 = private unnamed_addr constant [127 x i8] c"'tosa.transpose_conv2d' op attribute 'out_pad' failed to satisfy constraint: i64 dense array attribute with exactly 4 elements\00", align 1
@.str.617 = private unnamed_addr constant [126 x i8] c"'tosa.transpose_conv2d' op attribute 'stride' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.618 = private unnamed_addr constant [179 x i8] c"'tosa.transpose_conv2d' op attribute 'acc_type' failed to satisfy constraint: type attribute of 32-bit signless integer or 48-bit signless integer or 16-bit float or 32-bit float\00", align 1
@.str.620 = private unnamed_addr constant [8 x i8] c"out_pad\00", align 1
@.str.621 = private unnamed_addr constant [53 x i8] c"Invalid attribute `out_pad` in property conversion: \00", align 1
@.str.622 = private unnamed_addr constant [29 x i8] c"requires attribute 'out_pad'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa17TransposeConv2DOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail35TransposeConv2DOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.623 = private unnamed_addr constant [47 x i8] c"'tosa.transpose' op requires attribute 'perms'\00", align 1
@.str.625 = private unnamed_addr constant [6 x i8] c"perms\00", align 1
@.str.626 = private unnamed_addr constant [51 x i8] c"Invalid attribute `perms` in property conversion: \00", align 1
@.str.627 = private unnamed_addr constant [27 x i8] c"requires attribute 'perms'\00", align 1
@.str.628 = private unnamed_addr constant [69 x i8] c"failed to verify that all of {input1, output} have same element type\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11TransposeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail29TransposeOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.629 = private unnamed_addr constant [49 x i8] c"'tosa.variable' op requires attribute 'sym_name'\00", align 1
@.str.630 = private unnamed_addr constant [45 x i8] c"'tosa.variable' op requires attribute 'type'\00", align 1
@.str.631 = private unnamed_addr constant [50 x i8] c"'tosa.variable' op requires attribute 'var_shape'\00", align 1
@.str.633 = private unnamed_addr constant [96 x i8] c"'tosa.variable' op attribute 'var_shape' failed to satisfy constraint: index elements attribute\00", align 1
@.str.636 = private unnamed_addr constant [14 x i8] c"initial_value\00", align 1
@.str.638 = private unnamed_addr constant [9 x i8] c"sym_name\00", align 1
@.str.639 = private unnamed_addr constant [54 x i8] c"Invalid attribute `sym_name` in property conversion: \00", align 1
@.str.640 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.641 = private unnamed_addr constant [50 x i8] c"Invalid attribute `type` in property conversion: \00", align 1
@.str.642 = private unnamed_addr constant [10 x i8] c"var_shape\00", align 1
@.str.643 = private unnamed_addr constant [55 x i8] c"Invalid attribute `var_shape` in property conversion: \00", align 1
@.str.644 = private unnamed_addr constant [30 x i8] c"requires attribute 'sym_name'\00", align 1
@.str.645 = private unnamed_addr constant [26 x i8] c"requires attribute 'type'\00", align 1
@.str.646 = private unnamed_addr constant [31 x i8] c"requires attribute 'var_shape'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa10VariableOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail28VariableOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.647 = private unnamed_addr constant [50 x i8] c"'tosa.variable_read' op requires attribute 'name'\00", align 1
@.str.649 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.650 = private unnamed_addr constant [50 x i8] c"Invalid attribute `name` in property conversion: \00", align 1
@.str.651 = private unnamed_addr constant [26 x i8] c"requires attribute 'name'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa14VariableReadOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail32VariableReadOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.652 = private unnamed_addr constant [51 x i8] c"'tosa.variable_write' op requires attribute 'name'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa15VariableWriteOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail33VariableWriteOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.654 = private unnamed_addr constant [11 x i8] c"cond_graph\00", align 1
@.str.655 = private unnamed_addr constant [11 x i8] c"body_graph\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7WhileOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa7YieldOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.656 = private unnamed_addr constant [5 x i8] c"tosa\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_12ElementsAttrEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.657 = private unnamed_addr constant [69 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ElementsAttr]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.661 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr]\00", align 1
@.str.662 = private unnamed_addr constant [21 x i8] c"expected ranked type\00", align 1
@.str.663 = private unnamed_addr constant [21 x i8] c"expected shaped type\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.664 = private unnamed_addr constant [67 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]\00", align 1
@.str.665 = private unnamed_addr constant [3 x i8] c" {\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.666 = private unnamed_addr constant [42 x i8] c"expect all kernel values to be >= 1, got \00", align 1
@.str.667 = private unnamed_addr constant [83 x i8] c"expected left/right padding to be less than the width of the kernel, got pad_left=\00", align 1
@.str.668 = private unnamed_addr constant [13 x i8] c", pad_right=\00", align 1
@.str.669 = private unnamed_addr constant [12 x i8] c", kernel_x=\00", align 1
@.str.670 = private unnamed_addr constant [83 x i8] c"expected top/bottom padding to be less than the height of the kernel, got pad_top=\00", align 1
@.str.671 = private unnamed_addr constant [14 x i8] c", pad_bottom=\00", align 1
@.str.672 = private unnamed_addr constant [12 x i8] c", kernel_y=\00", align 1
@.str.673 = private unnamed_addr constant [11 x i8] c" - kernel_\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_5quant20UniformQuantizedTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_5quant20UniformQuantizedTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.674 = private unnamed_addr constant [84 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::quant::UniformQuantizedType]\00", align 1
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@.str.675 = private unnamed_addr constant [28 x i8] c" to be a power of two, got \00", align 1
@.str.676 = private unnamed_addr constant [8 x i8] c" shape \00", align 1
@.str.677 = private unnamed_addr constant [39 x i8] c" to be compatible with inferred shape \00", align 1
@.str.678 = private unnamed_addr constant [25 x i8] c"expect shaped tensor for\00", align 1
@.str.679 = private unnamed_addr constant [6 x i8] c", got\00", align 1
@.str.680 = private unnamed_addr constant [8 x i8] c"expect \00", align 1
@.str.681 = private unnamed_addr constant [33 x i8] c" to have same element type, got \00", align 1
@.str.682 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.683 = private unnamed_addr constant [62 x i8] c"ElementsAttr does not provide iteration facilities for type `\00", align 1
@.str.684 = private unnamed_addr constant [19 x i8] c"`, see attribute: \00", align 1
@.str.685 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@_ZZN4mlir6detail14TypeIDResolverIN4llvm7APFloatEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverIN4llvm7APFloatEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.686 = private unnamed_addr constant [64 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = llvm::APFloat]\00", align 1
@_ZZN4mlir6detail14TypeIDResolverIN4llvm5APIntEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverIN4llvm5APIntEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.687 = private unnamed_addr constant [62 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = llvm::APInt]\00", align 1
@.str.689 = private unnamed_addr constant [15 x i8] c"_zp of 0, got \00", align 1
@.str.690 = private unnamed_addr constant [38 x i8] c"_zp of 0 or 32768 for unsigned int16 \00", align 1
@.str.691 = private unnamed_addr constant [5 x i8] c" > -\00", align 1
@.str.692 = private unnamed_addr constant [12 x i8] c", but got: \00", align 1
@.str.693 = private unnamed_addr constant [54 x i8] c"_zp to both be integer of the same bitwidth, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.694 = private unnamed_addr constant [34 x i8] c"require same number of values in \00", align 1
@.str.695 = private unnamed_addr constant [31 x i8] c"require same element type for \00", align 1
@.str.696 = private unnamed_addr constant [25 x i8] c"require same shapes for \00", align 1
@.str.697 = private unnamed_addr constant [23 x i8] c"expected valid keyword\00", align 1
@.str.699 = private unnamed_addr constant [93 x i8] c"failed to parse Tosa_UnaryOpQuantizationAttr parameter 'input_zp' which is to be a `int64_t`\00", align 1
@.str.701 = private unnamed_addr constant [94 x i8] c"failed to parse Tosa_UnaryOpQuantizationAttr parameter 'output_zp' which is to be a `int64_t`\00", align 1
@.str.702 = private unnamed_addr constant [45 x i8] c"duplicate or unknown struct parameter name: \00", align 1
@.str.703 = private unnamed_addr constant [23 x i8] c"expected integer value\00", align 1
@.str.704 = private unnamed_addr constant [24 x i8] c"integer value too large\00", align 1
@.str.705 = private unnamed_addr constant [92 x i8] c"failed to parse Tosa_ConvOpQuantizationAttr parameter 'input_zp' which is to be a `int64_t`\00", align 1
@.str.707 = private unnamed_addr constant [93 x i8] c"failed to parse Tosa_ConvOpQuantizationAttr parameter 'weight_zp' which is to be a `int64_t`\00", align 1
@.str.708 = private unnamed_addr constant [90 x i8] c"failed to parse Tosa_MatMulOpQuantizationAttr parameter 'a_zp' which is to be a `int64_t`\00", align 1
@.str.709 = private unnamed_addr constant [90 x i8] c"failed to parse Tosa_MatMulOpQuantizationAttr parameter 'b_zp' which is to be a `int64_t`\00", align 1
@.str.710 = private unnamed_addr constant [91 x i8] c"failed to parse Tosa_PadOpQuantizationAttr parameter 'input_zp' which is to be a `int64_t`\00", align 1
@.str.711 = private unnamed_addr constant [22 x i8] c"::mlir::tosa::Profile\00", align 1
@.str.712 = private unnamed_addr constant [16 x i8] c" to be one of: \00", align 1
@.str.713 = private unnamed_addr constant [33 x i8] c"expected valid keyword or string\00", align 1
@.str.714 = private unnamed_addr constant [24 x i8] c"::mlir::tosa::Extension\00", align 1
@.str.715 = private unnamed_addr constant [20 x i8] c"::mlir::tosa::Level\00", align 1
@.str.716 = private unnamed_addr constant [35 x i8] c"::mlir::tosa::SpecificationVersion\00", align 1
@.str.717 = private unnamed_addr constant [25 x i8] c"::mlir::tosa::ResizeMode\00", align 1
@.str.718 = private unnamed_addr constant [33 x i8] c"::mlir::tosa::NanPropagationMode\00", align 1
@.str.719 = private unnamed_addr constant [27 x i8] c"::mlir::tosa::RoundingMode\00", align 1
@.str.720 = private unnamed_addr constant [24 x i8] c"::mlir::tosa::BlockSize\00", align 1
@.str.721 = private unnamed_addr constant [25 x i8] c"::mlir::tosa::BlockShape\00", align 1
@.str.722 = private unnamed_addr constant [12 x i8] c"unary_quant\00", align 1
@.str.723 = private unnamed_addr constant [11 x i8] c"conv_quant\00", align 1
@.str.724 = private unnamed_addr constant [13 x i8] c"matmul_quant\00", align 1
@.str.725 = private unnamed_addr constant [10 x i8] c"pad_quant\00", align 1
@.str.726 = private unnamed_addr constant [5 x i8] c"prof\00", align 1
@.str.727 = private unnamed_addr constant [4 x i8] c"ext\00", align 1
@.str.728 = private unnamed_addr constant [11 x i8] c"target_env\00", align 1
@.str.729 = private unnamed_addr constant [12 x i8] c"resize_mode\00", align 1
@.str.730 = private unnamed_addr constant [12 x i8] c"block_shape\00", align 1
@.str.732 = private unnamed_addr constant [39 x i8] c"scale value must be non-negative, got \00", align 1
@.str.733 = private unnamed_addr constant [23 x i8] c"parsed attribute type \00", align 1
@.str.734 = private unnamed_addr constant [37 x i8] c" does not match expected scale type \00", align 1
@.str.735 = private unnamed_addr constant [7 x i8] c"mxint8\00", align 1
@.str.736 = private unnamed_addr constant [13 x i8] c"block_scaled\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.737 = private unnamed_addr constant [9 x i8] c"tosa.abs\00", align 1
@.str.738 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.739 = private unnamed_addr constant [59 x i8] c" must be tosa-conformant tensor of number values, but got \00", align 1
@.str.740 = private unnamed_addr constant [9 x i8] c"tosa.add\00", align 1
@.str.741 = private unnamed_addr constant [15 x i8] c"tosa.add_shape\00", align 1
@.str.742 = private unnamed_addr constant [65 x i8] c" must be Shape with static rank and Index element type, but got \00", align 1
@.str.743 = private unnamed_addr constant [12 x i8] c"attribute '\00", align 1
@.str.744 = private unnamed_addr constant [57 x i8] c"' failed to satisfy constraint: Supported rounding modes\00", align 1
@.str.745 = private unnamed_addr constant [17 x i8] c"tosa.apply_scale\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.746 = private unnamed_addr constant [41 x i8] c" must be signless-integer-like, but got \00", align 1
@.str.747 = private unnamed_addr constant [47 x i8] c" must be signless-integer-8-bit-like, but got \00", align 1
@.str.748 = private unnamed_addr constant [66 x i8] c"' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.749 = private unnamed_addr constant [69 x i8] c"' failed to satisfy constraint: Supported NaN propagation strategies\00", align 1
@.str.750 = private unnamed_addr constant [12 x i8] c"tosa.argmax\00", align 1
@.str.751 = private unnamed_addr constant [61 x i8] c" must be tosa-conformant tensor of at least rank 1, but got \00", align 1
@.str.752 = private unnamed_addr constant [47 x i8] c"' failed to satisfy constraint: bool attribute\00", align 1
@.str.753 = private unnamed_addr constant [28 x i8] c"tosa.arithmetic_right_shift\00", align 1
@.str.754 = private unnamed_addr constant [24 x i8] c"tosa.assert_equal_shape\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_8TypeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.755 = private unnamed_addr constant [133 x i8] c"' failed to satisfy constraint: type attribute of 32-bit signless integer or 48-bit signless integer or 16-bit float or 32-bit float\00", align 1
@.str.756 = private unnamed_addr constant [78 x i8] c"Failed to create input zero point tensor for quantized AVG_POOL2D_ADAPTIVE op\00", align 1
@.str.757 = private unnamed_addr constant [79 x i8] c"Failed to create output zero point tensor for quantized AVG_POOL2D_ADAPTIVE op\00", align 1
@.str.758 = private unnamed_addr constant [25 x i8] c"tosa.avg_pool2d_adaptive\00", align 1
@.str.759 = private unnamed_addr constant [46 x i8] c" must be 4-d tosa-conformant tensor, but got \00", align 1
@.str.760 = private unnamed_addr constant [214 x i8] c" must be tosa-conformant unranked tensor of unsigned integer or signless integer or floating-point values or tosa-conformant scalar tensor of unsigned integer or signless integer or floating-point values, but got \00", align 1
@.str.761 = private unnamed_addr constant [45 x i8] c" must be Tosa shape type of rank 2, but got \00", align 1
@.str.762 = private unnamed_addr constant [45 x i8] c" must be Tosa shape type of rank 4, but got \00", align 1
@.str.763 = private unnamed_addr constant [82 x i8] c"' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.764 = private unnamed_addr constant [82 x i8] c"' failed to satisfy constraint: i64 dense array attribute with exactly 4 elements\00", align 1
@.str.765 = private unnamed_addr constant [69 x i8] c"Failed to create input zero point tensor for quantized AVG_POOL2D op\00", align 1
@.str.766 = private unnamed_addr constant [70 x i8] c"Failed to create output zero point tensor for quantized AVG_POOL2D op\00", align 1
@.str.767 = private unnamed_addr constant [16 x i8] c"tosa.avg_pool2d\00", align 1
@.str.768 = private unnamed_addr constant [17 x i8] c"tosa.bitwise_and\00", align 1
@.str.769 = private unnamed_addr constant [17 x i8] c"tosa.bitwise_not\00", align 1
@.str.770 = private unnamed_addr constant [16 x i8] c"tosa.bitwise_or\00", align 1
@.str.771 = private unnamed_addr constant [17 x i8] c"tosa.bitwise_xor\00", align 1
@.str.772 = private unnamed_addr constant [72 x i8] c"' failed to satisfy constraint: Block size for the block_scaled formats\00", align 1
@.str.773 = private unnamed_addr constant [28 x i8] c"tosa.cast_from_block_scaled\00", align 1
@.str.774 = private unnamed_addr constant [10 x i8] c"tosa.cast\00", align 1
@.str.775 = private unnamed_addr constant [26 x i8] c"tosa.cast_to_block_scaled\00", align 1
@.str.776 = private unnamed_addr constant [10 x i8] c"tosa.ceil\00", align 1
@.str.777 = private unnamed_addr constant [89 x i8] c"' failed to satisfy constraint: arbitrary integer attribute or arbitrary float attribute\00", align 1
@.str.778 = private unnamed_addr constant [11 x i8] c"tosa.clamp\00", align 1
@.str.779 = private unnamed_addr constant [9 x i8] c"tosa.clz\00", align 1
end_hunk_0
begin_hunk_1_@_ZN4mlir4tosa10IdentityOp5printERNS_12OpAsmPrinterE:bb.a
  store ptr %i.aw, ptr %4, align 8
  %i.ax = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %i.ba = load ptr, ptr %5, align 8, !tbaa !92
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !96
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %1, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.ay, i64 %i.az, ptr %i.ba, i64 %i.bc) #28
  %i.bg = load ptr, ptr %1, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !3 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !164 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !163
  %.not.i.i8 = icmp ult ptr %i.bl, %i.bn
  br i1 %.not.i.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OperandRangeETnPNSt9enable_ifIXaasr3std14is_convertibleIRT_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RNS_5ValueEEE5valueES3_E4typeELPS1_0EEERNS_12OpAsmPrinterESD_RKS3_.exit
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i8 noundef zeroext 32) #28 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OperandRangeETnPNSt9enable_ifIXaasr3std14is_convertibleIRT_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RNS_5ValueEEE5valueES3_E4typeELPS1_0EEERNS_12OpAsmPrinterESD_RKS3_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !164
  store i8 32, ptr %i.bl, align 1, !tbaa !165
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9: ; preds = %bb.i, %bb.j
  %i.bq = load ptr, ptr %1, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(48) ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !5 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !163
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !164 ; 2 uses
  %i.by = icmp eq ptr %i.bv, %i.bx
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull @.str.391, i64 noundef 1) #28 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.l:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9
  store i8 58, ptr %i.bx, align 1
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !164
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !164
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.k, %bb.l
  %i.cc = load ptr, ptr %1, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call noundef nonnull align 8 dereferenceable(48) ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !3 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !164 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !163
  %.not.i.i10 = icmp ult ptr %i.ch, %i.cj
  br i1 %.not.i.i10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, i8 noundef zeroext 32) #28 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11

bb.n:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !164
  store i8 32, ptr %i.ch, align 1, !tbaa !165
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cm = load ptr, ptr %0, align 8, !tbaa !90    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2085
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !noalias !2085
  %i.cp = and i32 %i.co, 8388608
  %.not.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation15getOperandTypesEv.exit, label %bb.o, !prof !182

bb.o:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !185, !noalias !2085
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 68
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !186, !noalias !2085
  %i.cu = zext i32 %i.ct to i64
  br label %_ZN4mlir9Operation15getOperandTypesEv.exit

_ZN4mlir9Operation15getOperandTypesEv.exit:       ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11, %bb.o
  %.sroa.0.0.i.i.i = phi ptr [ %i.cr, %bb.o ], [ null, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11 ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.cu, %bb.o ], [ 0, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11 ]
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !2085
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.i.i.i, ptr %i.cv, align 8, !noalias !2085
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange.1593") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2085
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cw = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !2086
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !243, !noalias !2086 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.db = zext i32 %i.cy to i64
  %.sroa.0.0.i.i12 = select i1 %i.cz, ptr null, ptr %i.da
  store ptr %.sroa.0.0.i.i12, ptr %2, align 8, !noalias !2086
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !noalias !2086
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !2086
  call void @_ZN4mlir10AsmPrinter19printFunctionalTypeINS_14ValueTypeRangeINS_12OperandRangeEEENS2_INS_11ResultRangeEEEEEvOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dd = load ptr, ptr %5, align 8, !tbaa !92    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.as
  br i1 %i.de, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit
  call void @free(ptr noundef %i.dd) #28
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir4tosa10IdentityOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa6detail22IfOpGenericAdaptorBaseC2ENS0_4IfOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !452
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %i.h = and i32 %i.g, 8388607                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.l = lshr i32 %i.g, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.l, 1
  %i.m = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m
  %i.o = lshr i32 %i.g, 21
  %i.p = and i32 %i.o, 2040
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !113
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir4tosa6detail22IfOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi18, splat (i32 1)
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi18, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !2087

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01114.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = icmp eq i32 %1, 1
  %5 = select i1 %4, i32 %i.e, i32 1
  %i.i = zext i32 %5 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %i.l, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader19 ] ; 2 uses
  %6 = icmp eq i32 %.01114, 1
  %i.k = zext i1 %6 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %i.l = add nuw i32 %.01114, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2088
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa11IfOpAdaptorC2ENS0_4IfOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !186
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #28
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !452
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607                    ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4mlir4tosa18IfOpGenericAdaptorINS_10ValueRangeEEC2INS0_4IfOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.r = zext nneg i32 %i.p to i64
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = lshr i32 %i.o, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.t, 1
  %i.u = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.u
  %i.w = lshr i32 %i.o, 21
  %i.x = and i32 %i.w, 2040
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !113
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  br label %_ZN4mlir4tosa18IfOpGenericAdaptorINS_10ValueRangeEEC2INS0_4IfOpEvEES2_T_.exit

_ZN4mlir4tosa18IfOpGenericAdaptorINS_10ValueRangeEEC2INS0_4IfOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir4tosa11IfOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir4tosa4IfOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi17, splat (i32 1)
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !2089

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01013.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !186
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = icmp eq i32 %1, 1
  %4 = select i1 %3, i32 %i.l, i32 1
  %i.p = zext i32 %4 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %i.s, %.lr.ph ], [ %.01013.ph, %.lr.ph.preheader18 ] ; 2 uses
  %5 = icmp eq i32 %.01013, 1
  %i.r = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %i.s = add nuw i32 %.01013, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.s, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2090
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa4IfOp19getInputListMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
.lr.ph.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir4tosa4IfOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !182

bb.a:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !186
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir4tosa4IfOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir4tosa4IfOp27getODSOperandIndexAndLengthEj.exit: ; preds = %.lr.ph.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %.lr.ph.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir4tosa4IfOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
._crit_edge:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !243  ; 2 uses
  %i.d = mul i32 %i.c, %1
  %.sroa.2.0.insert.ext = zext i32 %i.c to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4tosa4IfOp21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !86
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, i64 noundef %3) #28, !inline_history !29
  %i.c = load ptr, ptr %5, align 8, !tbaa !145
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store i32 3, ptr %4, align 8, !tbaa !148
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.396, ptr %i.e, align 8, !tbaa !149
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !95
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !96   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !93
  %.not.i.i.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !150

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !96
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pr = load ptr, ptr %5, align 8, !tbaa !145
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #28
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !151, !range !152, !noundef !153
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !151
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir4tosa4IfOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #5 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir4tosa4IfOp21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.9646", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #28
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir4tosa4IfOp15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #5 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir4tosa4IfOp15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir4tosa4IfOp21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir4tosa4IfOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #5 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa4IfOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_5ValueENS_10ValueRangeE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %2, i64 %3, ptr %4, ptr nofree noundef readonly byval(%"class.mlir::ValueRange") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %4, ptr %6, align 8
  %i.a = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #28
  %.sroa.0.0.copyload = load i64, ptr %5, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) #28
  %i.b = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #28 ; 0 uses
  %i.c = call noundef ptr @_ZN4mlir14OperationState9addRegionEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #28 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add i64 %3, %i.g                         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.j = load i32, ptr %i.i, align 4, !tbaa !93
  %i.k = zext i32 %i.j to i64
  %i.l = icmp ugt i64 %i.h, %i.k
  br i1 %i.l, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef 8) #28
  %.pre.i.i = load i32, ptr %i.e, align 8, !tbaa !96 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre-phi.i.i = phi i64 [ %i.g, %bb.a ], [ %.pre28.i.i, %bb.b ]
  %i.n = phi i32 [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !92
end_hunk_1
begin_hunk_2_@_ZN4mlir4tosa9RescaleOp27setPropertiesFromParsedAttrERNS0_6detail27RescaleOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE:bb.a

bb.cf:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  %i.jn = getelementptr inbounds nuw i8, ptr %.0254, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.jn, %i.ha
  br i1 %.not, label %.thread250, label %.lr.ph

bb.cg:                                            ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %.thread250

.thread250:                                       ; preds = %bb.cf, %bb.bt, %bb.cg, %.thread238, %.thread234, %.thread228, %.thread218, %.thread
  %.sroa.051.13 = phi i8 [ 0, %.thread ], [ %i.jh, %bb.cg ], [ 0, %.thread238 ], [ 0, %.thread234 ], [ 0, %.thread228 ], [ 0, %.thread218 ], [ 1, %bb.bt ], [ 1, %bb.cf ]
  %i.jo = load i32, ptr %i.ac, align 4, !tbaa !463 ; 2 uses
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.ch

bb.ch:                                            ; preds = %.thread250
  %i.jq = load ptr, ptr %19, align 8, !tbaa !461
  %i.jr = zext i32 %i.jo to i64                   ; 2 uses
  %i.js = shl nuw nsw i64 %i.jr, 3
  %i.jt = add nuw nsw i64 %i.jr, 31
  %i.ju = lshr i64 %i.jt, 3
  %i.jv = and i64 %i.ju, 1073741820
  %i.jw = add nuw nsw i64 %i.jv, %i.js
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jq, i64 noundef %i.jw, i64 noundef 8) #28
  br label %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %.thread250, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.051.14 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %.sroa.051.13, %_ZN4llvm6detail12DenseSetImplIN4mlir10StringAttrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  ret i8 %.sroa.051.14
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(208) ptr @_ZNO4mlir18InFlightDiagnosticlsIRA76_KcEEOS0_OT_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 1 dereferenceable(76) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNR4mlir18InFlightDiagnostic6appendIJRA76_KcEEERS0_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(76) %1) #28
  store i32 3, ptr %2, align 8, !tbaa !148
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !149
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.c, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !95
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !93
  %.not.i.i.i.i = icmp ult i32 %i.f, %i.h
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c, !prof !150

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %_ZN4mlir10Diagnostic6appendIRA76_KcEERS0_OT_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = zext i32 %i.f to i64
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.l = load i32, ptr %i.e, align 8, !tbaa !96
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.e, align 8, !tbaa !96
  br label %_ZN4mlir10Diagnostic6appendIRA76_KcEERS0_OT_.exit.i

_ZN4mlir10Diagnostic6appendIRA76_KcEERS0_OT_.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %_ZNR4mlir18InFlightDiagnostic6appendIJRA76_KcEEERS0_DpOT_.exit

_ZNR4mlir18InFlightDiagnostic6appendIJRA76_KcEEERS0_DpOT_.exit: ; preds = %bb.a, %_ZN4mlir10Diagnostic6appendIRA76_KcEERS0_OT_.exit.i
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir4tosa9RescaleOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i8 @_ZN4mlir4tosa9RescaleOp25inferReturnTypeComponentsEPNS_11MLIRContextESt8optionalINS_8LocationEENS_15ValueShapeRangeENS_14DictionaryAttrENS_11PropertyRefENS_11RegionRangeERN4llvm15SmallVectorImplINS_20ShapedTypeComponentsEEE(ptr nofree noundef readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 %2, ptr nofree noundef readonly byval(%"class.mlir::ValueShapeRange") align 8 captures(none) %3, ptr %4, ptr nofree readnone captures(none) %5, ptr nofree readonly captures(address_is_null) %6, ptr nofree noundef readonly byval(%"class.mlir::RegionRange") align 8 captures(none) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.mlir::tosa::RescaleOpAdaptor", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.a = load <2 x i64>, ptr %3, align 8
  %i.b = load <2 x i64>, ptr %7, align 8
  %.not.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x ptr>, ptr %6, align 8
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.d = load <2 x ptr>, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.12.0.copyload.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.12.0.i.i = phi ptr [ %.sroa.12.0.copyload.i.i, %bb.b ], [ null, %bb.a ]
  %i.e = phi <2 x ptr> [ %i.c, %bb.b ], [ splat (ptr null), %bb.a ]
  %i.f = phi <2 x ptr> [ %i.d, %bb.b ], [ splat (ptr null), %bb.a ]
  store ptr %4, ptr %9, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i8 0, ptr %i.g, align 8, !tbaa !452
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24
  store <2 x ptr> %i.e, ptr %i.h, align 8
  %.sroa.8.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  store <2 x ptr> %i.f, ptr %.sroa.8.0..sroa_idx9.i.i, align 8
  %.sroa.12.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %9, i64 56
  store ptr %.sroa.12.0.i.i, ptr %.sroa.12.0..sroa_idx13.i.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 64
  store <2 x i64> %i.b, ptr %i.i, align 8
  %.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i.i.i, label %_ZN4mlir4tosa16RescaleOpAdaptorCI2NS0_23RescaleOpGenericAdaptorINS_10ValueRangeEEEES3_NS_14DictionaryAttrENS_11PropertyRefENS_11RegionRangeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.k = call noundef ptr @_ZNK4mlir9Attribute10getContextEv(ptr noundef nonnull align 8 dereferenceable(96) %9) #28
  store i8 0, ptr %i.g, align 8, !tbaa !452
  call void @_ZN4mlir13OperationNameC1EN4llvm9StringRefEPNS_11MLIRContextE(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr nonnull align 1 dereferenceable(13) @.str.864, i64 12, ptr noundef %i.k) #28
  store i8 1, ptr %i.g, align 8, !tbaa !452
  br label %_ZN4mlir4tosa16RescaleOpAdaptorCI2NS0_23RescaleOpGenericAdaptorINS_10ValueRangeEEEES3_NS_14DictionaryAttrENS_11PropertyRefENS_11RegionRangeE.exit

_ZN4mlir4tosa16RescaleOpAdaptorCI2NS0_23RescaleOpGenericAdaptorINS_10ValueRangeEEEES3_NS_14DictionaryAttrENS_11PropertyRefENS_11RegionRangeE.exit: ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 80
  store <2 x i64> %i.a, ptr %i.l, align 8
  %i.m = call i8 @_ZN4mlir4tosa9RescaleOp25inferReturnTypeComponentsEPNS_11MLIRContextESt8optionalINS_8LocationEENS0_16RescaleOpAdaptorERN4llvm15SmallVectorImplINS_20ShapedTypeComponentsEEE(ptr poison, ptr poison, i8 poison, ptr noundef nonnull byval(%"class.mlir::tosa::RescaleOpAdaptor") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  ret i8 %i.m
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa6detail38ReshapeBlockScaledOpGenericAdaptorBaseC2ENS0_20ReshapeBlockScaledOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !452
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.f, align 8
  %i.n = load i32, ptr %i.g, align 4              ; 3 uses
  %i.o = and i32 %i.n, 8388607                    ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %i.o to i64
  %i.r = lshr i32 %i.n, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.s
  %i.u = lshr i32 %i.n, 21
  %i.v = and i32 %i.u, 2040
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !113
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir4tosa6detail38ReshapeBlockScaledOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi17, zeroinitializer
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !2517

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.015.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -1
  %i.f = add i32 %2, -2
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = select i1 %.not, i32 %i.e, i32 1
  %i.i = zext i32 %4 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %6, %.lr.ph ], [ %.015.ph.a, %.lr.ph.preheader19 ] ; 2 uses
  %5 = icmp eq i32 %.01114, 0
  %i.k = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %6 = add nuw i32 %.01114, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %6, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2518
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa27ReshapeBlockScaledOpAdaptorC2ENS0_20ReshapeBlockScaledOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !186
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #28
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !452
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %i.a, align 4              ; 3 uses
  %i.w = and i32 %i.v, 8388607                    ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4mlir4tosa34ReshapeBlockScaledOpGenericAdaptorINS_10ValueRangeEEC2INS0_20ReshapeBlockScaledOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.y = zext nneg i32 %i.w to i64
  %i.z = lshr i32 %i.v, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.aa
  %i.ac = lshr i32 %i.v, 21
  %i.ad = and i32 %i.ac, 2040
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !113
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ai
  br label %_ZN4mlir4tosa34ReshapeBlockScaledOpGenericAdaptorINS_10ValueRangeEEC2INS0_20ReshapeBlockScaledOpEvEES2_T_.exit

_ZN4mlir4tosa34ReshapeBlockScaledOpGenericAdaptorINS_10ValueRangeEEC2INS0_20ReshapeBlockScaledOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.al, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4tosa27ReshapeBlockScaledOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !137
  store ptr @.str.601, ptr %3, align 8, !tbaa !165
  store i8 3, ptr %i.d, align 8, !tbaa !136
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #28
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  %i.g = load ptr, ptr %2, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !151, !range !152, !noundef !153
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !151
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.03.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir4tosa20ReshapeBlockScaledOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi16, zeroinitializer
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi16, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !2519

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.014.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !186
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -1
  %i.m = add i32 %i.k, -2
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = select i1 %.not, i32 %i.l, i32 1
  %i.p = zext i32 %3 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %5, %.lr.ph ], [ %.014.ph.a, %.lr.ph.preheader18 ] ; 2 uses
  %4 = icmp eq i32 %.01013, 0
  %i.r = zext i1 %4 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %5 = add nuw i32 %.01013, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %5, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2520
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa20ReshapeBlockScaledOp15getInputMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir4tosa20ReshapeBlockScaledOp27getODSOperandIndexAndLengthEj.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !186
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir4tosa20ReshapeBlockScaledOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir4tosa20ReshapeBlockScaledOp27getODSOperandIndexAndLengthEj.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.h, ptr null, i64 0) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir4tosa20ReshapeBlockScaledOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
._crit_edge:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !243  ; 2 uses
  %i.d = mul i32 %i.c, %1
  %.sroa.2.0.insert.ext = zext i32 %i.c to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4tosa20ReshapeBlockScaledOp21setPropertiesFromAttrERNS0_6detail38ReshapeBlockScaledOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.a = load ptr, ptr %1, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #28, !inline_history !29
  %i.e = load ptr, ptr %8, align 8, !tbaa !145
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 3, ptr %6, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.396, ptr %i.g, align 8, !tbaa !149
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !93
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !150

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !96
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.pr = load ptr, ptr %8, align 8, !tbaa !145
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #28
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !151, !range !152, !noundef !153
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !151
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.451, i64 10) #28 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i5 = load ptr, ptr %i.w, align 8, !tbaa !86
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i5, @_ZN4mlir6detail14TypeIDResolverINS_4tosa13BlockSizeAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #28, !inline_history !29
  %i.z = load ptr, ptr %9, align 8, !tbaa !145
  %.not.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 3, ptr %5, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.452, ptr %i.ab, align 8, !tbaa !149
  %.sroa.2.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 55, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !93
  %.not.i.i.i.i.i9 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i9, label %bb.n, label %bb.m, !prof !150

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pr21 = load ptr, ptr %9, align 8, !tbaa !145
  %.not.i.i10 = icmp eq ptr %.pr21, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.u) #28
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !93
  %.not.i.i.i.i.i11 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i11, label %bb.q, label %bb.p, !prof !150

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
end_hunk_2
begin_hunk_3_@_ZN4mlir4tosa20ReshapeBlockScaledOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail38ReshapeBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ugt i64 %i.aq, %i.at
  br i1 %i.au, label %bb.e, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull %i.av, i64 noundef %i.aq, i64 noundef 8) #28
  %.pre8.pre.i.i = load i32, ptr %i.an, align 8, !tbaa !96
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %.pre8.i.i = phi i32 [ %i.ao, %bb.d ], [ %.pre8.pre.i.i, %bb.e ] ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.aw = load ptr, ptr %i.am, align 8, !tbaa !92
  %i.ax = zext i32 %.pre8.i.i to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 8 %i.aj, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.an, align 8, !tbaa !96
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.f
  %i.az = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.f ]
  %i.ba = add i32 %i.az, %i.ak
  store i32 %i.ba, ptr %i.an, align 8, !tbaa !96
  %i.bb = load ptr, ptr %8, align 8, !tbaa !92    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.w
  br i1 %i.bc, label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit
  call void @free(ptr noundef %i.bb) #28
  br label %_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit

_ZN4llvm11SmallVectorIN4mlir4TypeELj2EED2Ev.exit: ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void

bb.h:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.474, i1 noundef zeroext true) #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4tosa20ReshapeBlockScaledOp6createERNS_9OpBuilderENS_8LocationENS_10ValueRangeERKNS0_6detail38ReshapeBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.2643") align 8 captures(none) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.867, i64 25) #28
  call void @_ZN4mlir4tosa20ReshapeBlockScaledOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail38ReshapeBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2643") align 8 %5)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4tosa20ReshapeBlockScaledOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4tosa20ReshapeBlockScaledOp6createERNS_20ImplicitLocOpBuilderENS_10ValueRangeERKNS0_6detail38ReshapeBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %7 = alloca %"class.llvm::ArrayRef.2643", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %4, ptr %7, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %5, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.867, i64 25) #28
  call void @_ZN4mlir4tosa20ReshapeBlockScaledOp5buildERNS_9OpBuilderERNS_14OperationStateENS_10ValueRangeERKNS0_6detail38ReshapeBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2643") align 8 %7)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_4tosa20ReshapeBlockScaledOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4tosa20ReshapeBlockScaledOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.5462, align 8           ; 4 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !137
  store ptr @.str.453, ptr %3, align 8, !tbaa !165
  store i8 3, ptr %i.j, align 8, !tbaa !136
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #28
  %i.l = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  %i.m = load ptr, ptr %2, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !151, !range !152, !noundef !153
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !151
  br i1 %i.p, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.q) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.thread101

bb.f:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.h to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %i.a, ptr %1, align 8, !tbaa !482
  %i.s = ptrtoint ptr %1 to i64
  %i.t = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_TosaOps8N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull readonly %i.r, ptr nonnull @.str.451, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_TosaOps8PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %.thread101

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !90     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 8388608
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %.lr.ph.preheader, label %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit, !prof !182

_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.ad = add i32 %i.aa, -1                       ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.not116 = icmp eq i32 %i.ad, 0
  br i1 %.not116, label %.lr.ph.i.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g, %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit
  %.sroa.0.0.i.i.i.i145 = phi ptr [ %i.ac, %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit ], [ null, %bb.g ]
  %i.af = phi i64 [ %i.ae, %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit ], [ 4294967295, %bb.g ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.486.0117 = phi i64 [ %i.ao, %bb.h ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %indvars133 = trunc i64 %.sroa.486.0117 to i32
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i145, i64 %.sroa.486.0117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !188
  %i.ai = load ptr, ptr %0, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_TosaOps19PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ai, ptr %i.al, ptr nonnull @.str.397, i64 7, i32 noundef %indvars133)
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %.thread101

bb.h:                                             ; preds = %.lr.ph
  %i.ao = add nuw nsw i64 %.sroa.486.0117, 1      ; 3 uses
  %.not = icmp eq i64 %i.ao, %i.af
  br i1 %.not, label %.lr.ph.i.i, label %.lr.ph

.lr.ph.i.i:                                       ; preds = %bb.h
  %indvars = trunc i64 %i.ao to i32               ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre136 = load i32, ptr %.phi.trans.insert, align 4
  %.pre138 = and i32 %.pre136, 8388608
  %.not.i.i.i41 = icmp eq i32 %.pre138, 0
  br i1 %.not.i.i.i41, label %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit46, label %.lr.ph.i.i.thread, !prof !495

.lr.ph.i.i.thread:                                ; preds = %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit, %.lr.ph.i.i
  %.034.lcssa149 = phi i32 [ %indvars, %.lr.ph.i.i ], [ 0, %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit ]
  %i.ap = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.v, %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !186
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !185
  %i.au = add i32 %i.ar, -2
  br label %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit46

_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit46: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.thread
  %.034.lcssa150 = phi i32 [ %.034.lcssa149, %.lr.ph.i.i.thread ], [ %indvars, %.lr.ph.i.i ]
  %4 = phi i32 [ %i.au, %.lr.ph.i.i.thread ], [ -2, %.lr.ph.i.i ] ; 2 uses
  %i.av = phi ptr [ %i.at, %.lr.ph.i.i.thread ], [ null, %.lr.ph.i.i ]
  %5 = add i32 %4, 1
  %.sroa.0.0.insert.ext.i.i = zext i32 %5 to i64  ; 2 uses
  %.narrow.i = add i32 %4, 2
  %6 = zext i32 %.narrow.i to i64
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.sroa.0.0.insert.ext.i.i
  %i.ax = sub nsw i64 %6, %.sroa.0.0.insert.ext.i.i
  br label %.lr.ph122

.lr.ph122:                                        ; preds = %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit46, %bb.i
  %.236121 = phi i32 [ %.034.lcssa150, %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit46 ], [ %i.bg, %bb.i ] ; 2 uses
  %.sroa.474.0120 = phi i64 [ 0, %_ZN4mlir4tosa20ReshapeBlockScaledOp14getODSOperandsEj.exit46 ], [ %i.bh, %bb.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [32 x i8], ptr %i.aw, i64 %.sroa.474.0120
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.0.0.copyload.i.i.i51 = load ptr, ptr %i.az, align 8, !tbaa !188
  %i.ba = load ptr, ptr %0, align 8, !tbaa !90
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i51, i64 8
  %.0.copyload.i.i.i.i.i52 = load i64, ptr %i.bb, align 8
  %i.bc = and i64 %.0.copyload.i.i.i.i.i52, -8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = call fastcc i8 @_ZL41__mlir_ods_local_type_constraint_TosaOps2PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ba, ptr %i.bd, ptr nonnull @.str.397, i64 7, i32 noundef %.236121)
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.i, label %.thread101

bb.i:                                             ; preds = %.lr.ph122
  %i.bg = add i32 %.236121, 1
  %i.bh = add nuw nsw i64 %.sroa.474.0120, 1      ; 2 uses
  %.not111 = icmp eq i64 %i.bh, %i.ax
  br i1 %.not111, label %._crit_edge, label %.lr.ph122

._crit_edge:                                      ; preds = %bb.i
  %7 = load ptr, ptr %0, align 8, !tbaa !90       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !243 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %7, i64 -16
  %i.bl = zext i32 %i.bj to i64
  %.not112123 = icmp eq i32 %i.bj, 0
  br i1 %.not112123, label %.thread101, label %.lr.ph127

.lr.ph127:                                        ; preds = %._crit_edge, %bb.j
  %.sroa.4.0124 = phi i64 [ %i.bt, %bb.j ], [ 0, %._crit_edge ] ; 3 uses
  %indvars135 = trunc i64 %.sroa.4.0124 to i32
  %i.bm = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 noundef %.sroa.4.0124) #28
  %i.bn = load ptr, ptr %0, align 8, !tbaa !90
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.0.copyload.i.i.i.i.i60 = load i64, ptr %i.bo, align 8
  %i.bp = and i64 %.0.copyload.i.i.i.i.i60, -8
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_TosaOps19PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bn, ptr %i.bq, ptr nonnull @.str.152, i64 6, i32 noundef %indvars135)
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.j, label %.thread101

bb.j:                                             ; preds = %.lr.ph127
  %i.bt = add nuw nsw i64 %.sroa.4.0124, 1        ; 2 uses
  %.not112 = icmp eq i64 %i.bt, %i.bl
  br i1 %.not112, label %.thread101, label %.lr.ph127

.thread101:                                       ; preds = %.lr.ph, %.lr.ph122, %bb.j, %.lr.ph127, %._crit_edge, %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.032.10 = phi i8 [ %i.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %bb.f ], [ 0, %.lr.ph122 ], [ 1, %._crit_edge ], [ 0, %.lr.ph127 ], [ 1, %bb.j ], [ 0, %.lr.ph ]
  ret i8 %.sroa.032.10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4tosa20ReshapeBlockScaledOp16verifyInvariantsEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i8 @_ZN4mlir4tosa20ReshapeBlockScaledOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i8 @_ZN4mlir4tosa20ReshapeBlockScaledOp6verifyEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.02.0 = phi i8 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i8 %.sroa.02.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4tosa20ReshapeBlockScaledOp5parseERNS_11OpAsmParserERNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector.2592", align 8 ; 9 uses
  %3 = alloca %"class.llvm::ArrayRef.2604", align 8 ; 6 uses
  %4 = alloca %"class.llvm::SMLoc", align 8       ; 5 uses
  %5 = alloca %class.anon.4786, align 8           ; 7 uses
  %6 = alloca %"class.mlir::FunctionType", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !96
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.c, align 4, !tbaa !93
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.d = load ptr, ptr %0, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  %i.h = load ptr, ptr %0, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 752
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call i8 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0, i1 noundef zeroext true, i32 noundef -1) #28
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.m = load ptr, ptr %0, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  store ptr %i.p, ptr %4, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 520
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call i8 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.q) #28
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.010.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr %0, ptr %5, align 8, !tbaa !167
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.x, align 8, !tbaa !442
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %i.y, align 8, !tbaa !473
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload, i64 96
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !456
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8
  %i.aa = call ptr @_ZNK4mlir13NamedAttrList3getENS_10StringAttrE(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr %.sroa.0.0.copyload.i.i.i) #28 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = ptrtoint ptr %5 to i64
  %i.ac = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_TosaOps8N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull %i.aa, ptr nonnull @.str.451, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZNS1_4tosa20ReshapeBlockScaledOp5parseERNS1_11OpAsmParserERNS1_14OperationStateEE3$_0EES2_l", i64 %i.ab)
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %.critedge

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ae = load ptr, ptr %0, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call i8 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %0) #28
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr null, ptr %6, align 8, !tbaa !156
  %i.aj = call i8 @_ZN4mlir9AsmParser9parseTypeINS_12FunctionTypeEEEN4llvm11ParseResultERT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.al = call { ptr, i64 } @_ZNK4mlir12FunctionType9getInputsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28 ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  store ptr %i.am, ptr %3, align 8, !tbaa !437
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.an, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !95
  %i.ao = call { ptr, i64 } @_ZNK4mlir12FunctionType10getResultsEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28 ; 2 uses
  %i.ap = extractvalue { ptr, i64 } %i.ao, 0
  %i.aq = extractvalue { ptr, i64 } %i.ao, 1      ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !96 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = add nsw i64 %i.aq, %i.au                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !93
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp ugt i64 %i.av, %i.ay
  br i1 %i.az, label %bb.i, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull %i.ba, i64 noundef %i.av, i64 noundef 8) #28
  %.pre8.pre.i.i = load i32, ptr %i.as, align 8, !tbaa !96
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre8.i.i = phi i32 [ %i.at, %bb.h ], [ %.pre8.pre.i.i, %bb.i ] ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i.i, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !92
  %i.bc = zext i32 %.pre8.i.i to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 8 %i.ap, i64 %.idx.i, i1 false)
  %.pre.i.i = load i32, ptr %i.as, align 8, !tbaa !96
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %bb.j
  %i.be = phi i32 [ %.pre8.i.i, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ], [ %.pre.i.i, %bb.j ]
  %i.bf = trunc i64 %i.aq to i32
  %i.bg = add i32 %i.be, %i.bf
  store i32 %i.bg, ptr %i.as, align 8, !tbaa !96
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bi = call i8 @_ZN4mlir11OpAsmParser15resolveOperandsIRN4llvm11SmallVectorINS0_17UnresolvedOperandELj4EEERNS2_8ArrayRefINS_4TypeEEEvEENS2_11ParseResultEOT_OT0_NS2_5SMLocERNS2_15SmallVectorImplINS_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.bh)
  br label %bb.k

bb.k:                                             ; preds = %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, %bb.g
  %.sroa.034.0 = phi i8 [ %i.bi, %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.l

.critedge:                                        ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.a, %.critedge, %bb.k
  %.sroa.034.2 = phi i8 [ %.sroa.034.0, %bb.k ], [ 0, %.critedge ], [ 0, %bb.a ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bj = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.a
end_hunk_3
begin_hunk_4_@_ZN4mlir4tosa9ReverseOp5printERNS_12OpAsmPrinterE:bb.a
  %i.av = load ptr, ptr %0, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aw = call ptr @_ZN4mlir9Operation17getAttrDictionaryEv(ptr noundef nonnull align 8 dereferenceable(64) %i.av) #28
  store ptr %i.aw, ptr %4, align 8
  %i.ax = call { ptr, i64 } @_ZNK4mlir14DictionaryAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0
  %i.az = extractvalue { ptr, i64 } %i.ax, 1
  %i.ba = load ptr, ptr %5, align 8, !tbaa !92
  %i.bb = load i32, ptr %i.at, align 8, !tbaa !96
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %1, align 8, !tbaa !63
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 200
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.ay, i64 %i.az, ptr %i.ba, i64 %i.bc) #28
  %i.bg = load ptr, ptr %1, align 8, !tbaa !63
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !3 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !164 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !163
  %.not.i.i8 = icmp ult ptr %i.bl, %i.bn
  br i1 %.not.i.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OperandRangeETnPNSt9enable_ifIXaasr3std14is_convertibleIRT_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RNS_5ValueEEE5valueES3_E4typeELPS1_0EEERNS_12OpAsmPrinterESD_RKS3_.exit
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, i8 noundef zeroext 32) #28 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OperandRangeETnPNSt9enable_ifIXaasr3std14is_convertibleIRT_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RNS_5ValueEEE5valueES3_E4typeELPS1_0EEERNS_12OpAsmPrinterESD_RKS3_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !164
  store i8 32, ptr %i.bl, align 1, !tbaa !165
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9: ; preds = %bb.i, %bb.j
  %i.bq = load ptr, ptr %1, align 8, !tbaa !63
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef nonnull align 8 dereferenceable(48) ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !5 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !163
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 32 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !164 ; 2 uses
  %i.by = icmp eq ptr %i.bv, %i.bx
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull @.str.391, i64 noundef 1) #28 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.l:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit9
  store i8 58, ptr %i.bx, align 1
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !164
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !164
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.k, %bb.l
  %i.cc = load ptr, ptr %1, align 8, !tbaa !63
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call noundef nonnull align 8 dereferenceable(48) ptr %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %1) #28, !inline_history !3 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !164 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !163
  %.not.i.i10 = icmp ult ptr %i.ch, %i.cj
  br i1 %.not.i.i10, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, i8 noundef zeroext 32) #28 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11

bb.n:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.cl, ptr %i.cg, align 8, !tbaa !164
  store i8 32, ptr %i.ch, align 1, !tbaa !165
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.cm = load ptr, ptr %0, align 8, !tbaa !90    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2567
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !noalias !2567
  %i.cp = and i32 %i.co, 8388608
  %.not.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation15getOperandTypesEv.exit, label %bb.o, !prof !182

bb.o:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !185, !noalias !2567
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 68
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !186, !noalias !2567
  %i.cu = zext i32 %i.ct to i64
  br label %_ZN4mlir9Operation15getOperandTypesEv.exit

_ZN4mlir9Operation15getOperandTypesEv.exit:       ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11, %bb.o
  %.sroa.0.0.i.i.i = phi ptr [ %i.cr, %bb.o ], [ null, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11 ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.cu, %bb.o ], [ 0, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11 ]
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !2567
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.i.i.i, ptr %i.cv, align 8, !noalias !2567
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange.1593") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2567
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cw = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !2568
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !243, !noalias !2568 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.db = zext i32 %i.cy to i64
  %.sroa.0.0.i.i12 = select i1 %i.cz, ptr null, ptr %i.da
  store ptr %.sroa.0.0.i.i12, ptr %2, align 8, !noalias !2568
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !noalias !2568
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !2568
  call void @_ZN4mlir10AsmPrinter19printFunctionalTypeINS_14ValueTypeRangeINS_12OperandRangeEEENS2_INS_11ResultRangeEEEEEvOT_OT0_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dd = load ptr, ptr %5, align 8, !tbaa !92    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.as
  br i1 %i.de, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit
  call void @free(ptr noundef %i.dd) #28
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlir9Operation15getOperandTypesEv.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir4tosa9ReverseOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa6detail40RowGatherBlockScaledOpGenericAdaptorBaseC2ENS0_22RowGatherBlockScaledOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !452
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.h, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = lshr i32 %i.h, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.j, 1
  %i.k = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.f, align 8
  %i.n = load i32, ptr %i.g, align 4              ; 3 uses
  %i.o = and i32 %i.n, 8388607                    ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %i.o to i64
  %i.r = lshr i32 %i.n, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.s
  %i.u = lshr i32 %i.n, 21
  %i.v = and i32 %i.u, 2040
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !113
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir4tosa6detail40RowGatherBlockScaledOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %3 = icmp eq <4 x i32> %vec.phi17, zeroinitializer
  %i.a = zext <4 x i1> %3 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi17, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !2569

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.015.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = add i32 %2, -2
  %i.f = add i32 %2, -3
  %i.g = mul nsw i32 %.0.lcssa, %i.f
  %i.h = add i32 %i.g, %1
  %4 = select i1 %.not, i32 %i.e, i32 1
  %i.i = zext i32 %4 to i64
  %i.j = shl nuw i64 %i.i, 32
  %.sroa.0.0.insert.ext = zext i32 %i.h to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.j, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.01114 = phi i32 [ %6, %.lr.ph ], [ %.015.ph.a, %.lr.ph.preheader19 ] ; 2 uses
  %5 = icmp eq i32 %.01114, 0
  %i.k = zext i1 %5 to i32
  %spec.select = add nuw nsw i32 %.015, %i.k      ; 2 uses
  %6 = add nuw i32 %.01114, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %6, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2570
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa29RowGatherBlockScaledOpAdaptorC2ENS0_22RowGatherBlockScaledOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !185
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !186
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #28
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !121
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !452
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8
  store i64 %i.u, ptr %i.o, align 8
  %i.v = load i32, ptr %i.a, align 4              ; 3 uses
  %i.w = and i32 %i.v, 8388607                    ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4mlir4tosa36RowGatherBlockScaledOpGenericAdaptorINS_10ValueRangeEEC2INS0_22RowGatherBlockScaledOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.y = zext nneg i32 %i.w to i64
  %i.z = lshr i32 %i.v, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.z, 1
  %i.aa = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.aa
  %i.ac = lshr i32 %i.v, 21
  %i.ad = and i32 %i.ac, 2040
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !113
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ai
  br label %_ZN4mlir4tosa36RowGatherBlockScaledOpGenericAdaptorINS_10ValueRangeEEC2INS0_22RowGatherBlockScaledOpEvEES2_T_.exit

_ZN4mlir4tosa36RowGatherBlockScaledOpGenericAdaptorINS_10ValueRangeEEC2INS0_22RowGatherBlockScaledOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.al, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4tosa29RowGatherBlockScaledOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !137
  store ptr @.str.611, ptr %3, align 8, !tbaa !165
  store i8 3, ptr %i.d, align 8, !tbaa !136
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #28
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  %i.g = load ptr, ptr %2, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !151, !range !152, !noundef !153
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !151
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.03.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir4tosa22RowGatherBlockScaledOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i32 %1, -8                         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.b, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %2 = icmp eq <4 x i32> %vec.phi16, zeroinitializer
  %i.a = zext <4 x i1> %2 to <4 x i32>
  %i.b = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.phi16, splat (i32 8)
  %i.c = icmp eq i32 %index.next, %n.vec
  br i1 %i.c, label %middle.block, label %vector.body, !llvm.loop !2571

middle.block:                                     ; preds = %vector.body
  %i.d = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.b) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.014.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.e = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 8388608
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %._crit_edge
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.j = load i32, ptr %i.i, align 4, !tbaa !186
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.l = add i32 %i.k, -2
  %i.m = add i32 %i.k, -3
  %i.n = mul nsw i32 %i.m, %.0.lcssa
  %i.o = add i32 %i.n, %1
  %3 = select i1 %.not, i32 %i.l, i32 1
  %i.p = zext i32 %3 to i64
  %i.q = shl nuw i64 %i.p, 32
  %.sroa.0.0.insert.ext = zext i32 %i.o to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %i.q, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.01013 = phi i32 [ %5, %.lr.ph ], [ %.014.ph.a, %.lr.ph.preheader18 ] ; 2 uses
  %4 = icmp eq i32 %.01013, 0
  %i.r = zext i1 %4 to i32
  %spec.select = add nuw nsw i32 %.014, %i.r      ; 2 uses
  %5 = add nuw i32 %.01013, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %5, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2572
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa22RowGatherBlockScaledOp16getValuesMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir4tosa22RowGatherBlockScaledOp27getODSOperandIndexAndLengthEj.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !186
  %i.g = add i32 %i.f, -2
  br label %_ZN4mlir4tosa22RowGatherBlockScaledOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir4tosa22RowGatherBlockScaledOp27getODSOperandIndexAndLengthEj.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ -2, %bb.a ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef %i.h, ptr null, i64 0) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir4tosa22RowGatherBlockScaledOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
._crit_edge:
  %i.a = load ptr, ptr %0, align 8, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !243  ; 2 uses
  %i.d = mul i32 %i.c, %1
  %.sroa.2.0.insert.ext = zext i32 %i.c to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir4tosa22RowGatherBlockScaledOp21setPropertiesFromAttrERNS0_6detail40RowGatherBlockScaledOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.a = load ptr, ptr %1, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #28, !inline_history !29
  %i.e = load ptr, ptr %8, align 8, !tbaa !145
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store i32 3, ptr %6, align 8, !tbaa !148
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.396, ptr %i.g, align 8, !tbaa !149
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !93
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !150

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !96
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.pr = load ptr, ptr %8, align 8, !tbaa !145
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #28
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !151, !range !152, !noundef !153
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !151
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.451, i64 10) #28 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !127
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i5 = load ptr, ptr %i.w, align 8, !tbaa !86
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i5, @_ZN4mlir6detail14TypeIDResolverINS_4tosa13BlockSizeAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #28, !inline_history !29
  %i.z = load ptr, ptr %9, align 8, !tbaa !145
  %.not.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 3, ptr %5, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.452, ptr %i.ab, align 8, !tbaa !149
  %.sroa.2.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 55, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !93
  %.not.i.i.i.i.i9 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i9, label %bb.n, label %bb.m, !prof !150

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pr21 = load ptr, ptr %9, align 8, !tbaa !145
  %.not.i.i10 = icmp eq ptr %.pr21, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA56_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.u) #28
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !96 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !93
  %.not.i.i.i.i.i11 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i11, label %bb.q, label %bb.p, !prof !150

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !92
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
end_hunk_4
begin_hunk_5_@_ZN4mlir4tosa22RowGatherBlockScaledOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail40RowGatherBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE:bb.a
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !95 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 192
  store i64 0, ptr %i.g, align 8
  %.idx.i.i = shl nuw nsw i64 %.sroa.2.0.copyload, 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !96   ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = add nsw i64 %.sroa.2.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.m = load i32, ptr %i.l, align 4, !tbaa !93
  %i.n = zext i32 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.b, label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(88) %i.f, ptr noundef nonnull %i.p, i64 noundef %i.k, i64 noundef 16) #28
  %.pre8.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !96
  br label %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i

_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i: ; preds = %bb.b, %bb.a
  %.pre8.i.i.i.i = phi i32 [ %i.i, %bb.a ], [ %.pre8.pre.i.i.i.i, %bb.b ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !92
  %i.r = zext i32 %.pre8.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 8 %.sroa.0.0.copyload, i64 %.idx.i.i, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.h, align 8, !tbaa !96
  br label %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit

_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i, %bb.c
  %i.t = phi i32 [ %.pre8.i.i.i.i, %_ZN4llvm15SmallVectorImplIN4mlir14NamedAttributeEE7reserveEm.exit.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ]
  %i.u = trunc i64 %.sroa.2.0.copyload to i32
  %i.v = add i32 %i.t, %i.u
  store i32 %i.v, ptr %i.h, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !96   ; 2 uses
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = add i64 %3, %i.z                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !93
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.d, label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

bb.d:                                             ; preds = %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #28
  %.pre.i.i = load i32, ptr %i.x, align 8, !tbaa !96 ; 2 uses
  %.pre28.i.i = zext i32 %.pre.i.i to i64
  br label %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i: ; preds = %bb.d, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit
  %.pre-phi.i.i = phi i64 [ %i.z, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre28.i.i, %bb.d ]
  %i.ag = phi i32 [ %i.y, %_ZN4mlir14OperationState13addAttributesEN4llvm8ArrayRefINS_14NamedAttributeEEE.exit ], [ %.pre.i.i, %bb.d ]
  %.not8.i.i.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !92
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %.sroa.2.09.i.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader.i.i ] ; 2 uses
  %i.aj = call ptr @_ZN4mlir9TypeRange20dereference_iteratorEN4llvm12PointerUnionIJPKNS_5ValueEPKNS_4TypeEPNS_9OpOperandEPNS_6detail12OpResultImplEPKNS1_8RepeatedIS6_EEPKNSE_IS3_EEEEEl(i64 %2, i64 noundef %.sroa.2.09.i.i.i.i.i.i) #28
  %i.ak = ptrtoint ptr %i.aj to i64
  store i64 %i.ak, ptr %.010.i.i.i.i.i.i, align 8, !tbaa !157
  %i.al = add nuw nsw i64 %.sroa.2.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, %3
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !38

_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre27.i.i = load i32, ptr %i.x, align 8, !tbaa !96
  br label %_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit

_ZN4mlir14OperationState8addTypesIRNS_9TypeRangeEEENSt9enable_ifIXntsr3std14is_convertibleIT_N4llvm8ArrayRefINS_4TypeEEEEE5valueEvE4typeEOS5_.exit: ; preds = %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i
  %i.an = phi i32 [ %.pre27.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir4TypeELb1EE18uninitialized_copyINS_6detail27indexed_accessor_range_baseINS1_9TypeRangeENS_12PointerUnionIJPKNS1_5ValueEPKS2_PNS1_9OpOperandEPNS1_6detail12OpResultImplEPKNS_8RepeatedIS2_EEPKNSJ_IS9_EEEEES2_S2_S2_E8iteratorEPS2_EEvT_SU_T0_.exit.loopexit.i.i ], [ %i.ag, %_ZN4llvm15SmallVectorImplIN4mlir4TypeEE7reserveEm.exit.i.i ]
  %i.ao = trunc i64 %3 to i32
  %i.ap = add i32 %i.an, %i.ao
  store i32 %i.ap, ptr %i.x, align 8, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4tosa22RowGatherBlockScaledOp6createERNS_9OpBuilderENS_8LocationENS_9TypeRangeENS_10ValueRangeERKNS0_6detail40RowGatherBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.2643") align 8 captures(none) %7) local_unnamed_addr #0 align 2 {
bb.a:
  %8 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %8, ptr %1, ptr nonnull @.str.872, i64 28) #28
  call void @_ZN4mlir4tosa22RowGatherBlockScaledOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail40RowGatherBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %8, i64 %2, i64 %3, i64 %4, i64 %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2643") align 8 %7)
  %i.a = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %8) #28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.e = icmp eq ptr %i.d, @_ZN4mlir6detail14TypeIDResolverINS_4tosa22RowGatherBlockScaledOpEvE2idE
  %spec.select.i.i = select i1 %i.e, ptr %i.a, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret ptr %spec.select.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir4tosa22RowGatherBlockScaledOp6createERNS_20ImplicitLocOpBuilderENS_9TypeRangeENS_10ValueRangeERKNS0_6detail40RowGatherBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef.2643") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %.sroa.0.0.copyload.i, ptr nonnull @.str.872, i64 28) #28
  call void @_ZN4mlir4tosa22RowGatherBlockScaledOp5buildERNS_9OpBuilderERNS_14OperationStateENS_9TypeRangeENS_10ValueRangeERKNS0_6detail40RowGatherBlockScaledOpGenericAdaptorBase10PropertiesEN4llvm8ArrayRefINS_14NamedAttributeEEE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull byval(%"class.llvm::ArrayRef.2643") align 8 %6)
  %i.b = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %7) #28 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !128
  %i.f = icmp eq ptr %i.e, @_ZN4mlir6detail14TypeIDResolverINS_4tosa22RowGatherBlockScaledOpEvE2idE
  %spec.select.i.i.i = select i1 %i.f, ptr %i.b, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret ptr %spec.select.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir4tosa22RowGatherBlockScaledOp20verifyInvariantsImplEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %class.anon.5462, align 8           ; 4 uses
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not.i.i = icmp ugt i32 %i.c, 16777215
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = lshr i32 %i.c, 23
  %.lobit.i.i.i.i.i.i.i.i = and i32 %i.e, 1
  %i.f = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.f
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.k, align 1, !tbaa !137
  store ptr @.str.453, ptr %3, align 8, !tbaa !165
  store i8 3, ptr %i.j, align 8, !tbaa !136
  call void @_ZN4mlir7OpState11emitOpErrorERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(34) %3) #28
  %i.l = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  %i.m = load ptr, ptr %2, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !151, !range !152, !noundef !153
  %i.p = trunc nuw i8 %i.o to i1
  store i8 0, ptr %i.n, align 8, !tbaa !151
  br i1 %i.p, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.q) #28
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.thread149

bb.f:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.h to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr %i.a, ptr %1, align 8, !tbaa !482
  %i.s = ptrtoint ptr %1 to i64
  %i.t = call fastcc i8 @_ZL41__mlir_ods_local_attr_constraint_TosaOps8N4mlir9AttributeEN4llvm9StringRefENS1_12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nonnull readonly %i.r, ptr nonnull @.str.451, i64 10, ptr nonnull @"_ZN4llvm12function_refIFN4mlir18InFlightDiagnosticEvEE11callback_fnIZL41__mlir_ods_local_attr_constraint_TosaOps8PNS1_9OperationENS1_9AttributeENS_9StringRefEE3$_0EES2_l", i64 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.g, label %.thread149

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %0, align 8, !tbaa !90     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 8388608
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %.lr.ph.preheader, label %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit, !prof !182

_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 68
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !186
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !185
  %i.ad = add i32 %i.aa, -2                       ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.not167 = icmp eq i32 %i.ad, 0
  br i1 %.not167, label %.lr.ph.i.i.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit
  %.sroa.0.0.i.i.i.i209 = phi ptr [ %i.ac, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit ], [ null, %bb.g ]
  %i.af = phi i64 [ %i.ae, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit ], [ 4294967294, %bb.g ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.sroa.4129.0168 = phi i64 [ %i.ao, %bb.h ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %indvars191 = trunc i64 %.sroa.4129.0168 to i32
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i209, i64 %.sroa.4129.0168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ah, align 8, !tbaa !188
  %i.ai = load ptr, ptr %0, align 8, !tbaa !90
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.aj, align 8
  %i.ak = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.ai, ptr %i.al, ptr nonnull @.str.397, i64 7, i32 noundef %indvars191)
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %.thread149

bb.h:                                             ; preds = %.lr.ph
  %i.ao = add nuw nsw i64 %.sroa.4129.0168, 1     ; 3 uses
  %.not = icmp eq i64 %i.ao, %i.af
  br i1 %.not, label %.lr.ph.i.i, label %.lr.ph

.lr.ph.i.i:                                       ; preds = %bb.h
  %indvars = trunc i64 %i.ao to i32               ; 2 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %.pre194 = load i32, ptr %.phi.trans.insert, align 4
  %.pre199 = and i32 %.pre194, 8388608
  %.not.i.i.i52 = icmp eq i32 %.pre199, 0
  br i1 %.not.i.i.i52, label %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit57, label %.lr.ph.i.i.thread, !prof !495

.lr.ph.i.i.thread:                                ; preds = %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit, %.lr.ph.i.i
  %.043.lcssa215 = phi i32 [ %indvars, %.lr.ph.i.i ], [ 0, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit ]
  %i.ap = phi ptr [ %.pre, %.lr.ph.i.i ], [ %i.v, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !186
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !185
  %i.au = add i32 %i.ar, -3
  br label %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit57

_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit57: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.thread
  %.043.lcssa216 = phi i32 [ %.043.lcssa215, %.lr.ph.i.i.thread ], [ %indvars, %.lr.ph.i.i ]
  %4 = phi i32 [ %i.au, %.lr.ph.i.i.thread ], [ -3, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i53 = phi ptr [ %i.at, %.lr.ph.i.i.thread ], [ null, %.lr.ph.i.i ]
  %5 = add i32 %4, 1
  %.sroa.0.0.insert.ext.i.i = zext i32 %5 to i64  ; 2 uses
  %.narrow.i = add i32 %4, 2
  %6 = zext i32 %.narrow.i to i64
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i53, i64 %.sroa.0.0.insert.ext.i.i
  %i.aw = sub nsw i64 %6, %.sroa.0.0.insert.ext.i.i
  br label %.lr.ph173

.lr.ph.i.i64.preheader.loopexit:                  ; preds = %bb.i
  %.pre195 = load ptr, ptr %0, align 8, !tbaa !90 ; 3 uses
  %.phi.trans.insert196 = getelementptr inbounds nuw i8, ptr %.pre195, i64 44
  %.pre197 = load i32, ptr %.phi.trans.insert196, align 4
  %.pre200 = and i32 %.pre197, 8388608
  %.not.i.i.i69 = icmp eq i32 %.pre200, 0
  br i1 %.not.i.i.i69, label %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit77, label %bb.j, !prof !182

.lr.ph173:                                        ; preds = %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit57, %bb.i
  %.245172 = phi i32 [ %.043.lcssa216, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit57 ], [ %i.bf, %bb.i ] ; 2 uses
  %.sroa.4117.0171 = phi i64 [ 0, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit57 ], [ %i.bg, %bb.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %.sroa.4117.0171
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.0.0.copyload.i.i.i62 = load ptr, ptr %i.ay, align 8, !tbaa !188
  %i.az = load ptr, ptr %0, align 8, !tbaa !90
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i62, i64 8
  %.0.copyload.i.i.i.i.i63 = load i64, ptr %i.ba, align 8
  %i.bb = and i64 %.0.copyload.i.i.i.i.i63, -8
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_TosaOps22PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.az, ptr %i.bc, ptr nonnull @.str.397, i64 7, i32 noundef %.245172)
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.i, label %.thread149

bb.i:                                             ; preds = %.lr.ph173
  %i.bf = add i32 %.245172, 1                     ; 2 uses
  %i.bg = add nuw nsw i64 %.sroa.4117.0171, 1     ; 2 uses
  %.not159.a = icmp eq i64 %i.bg, %i.aw
  br i1 %.not159.a, label %.lr.ph.i.i64.preheader.loopexit, label %.lr.ph173

bb.j:                                             ; preds = %.lr.ph.i.i64.preheader.loopexit
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre195, i64 68
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre195, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !185
  %i.bl = add i32 %i.bi, -3
  br label %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit77

_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit77: ; preds = %.lr.ph.i.i64.preheader.loopexit, %bb.j
  %7 = phi i32 [ %i.bl, %bb.j ], [ -3, %.lr.ph.i.i64.preheader.loopexit ] ; 2 uses
  %.sroa.0.0.i.i.i.i72 = phi ptr [ %i.bk, %bb.j ], [ null, %.lr.ph.i.i64.preheader.loopexit ]
  %8 = add i32 %7, 2
  %.sroa.0.0.insert.ext.i.i71 = zext i32 %8 to i64 ; 2 uses
  %.narrow.i72 = add i32 %7, 3
  %9 = zext i32 %.narrow.i72 to i64
  %10 = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.i.i.i.i72, i64 %.sroa.0.0.insert.ext.i.i71
  %11 = sub nsw i64 %9, %.sroa.0.0.insert.ext.i.i71
  br label %.lr.ph178

.lr.ph178:                                        ; preds = %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit77, %bb.k
  %.447177 = phi i32 [ %i.bf, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit77 ], [ %i.bu, %bb.k ] ; 2 uses
  %.sroa.4105.0176 = phi i64 [ 0, %_ZN4mlir4tosa22RowGatherBlockScaledOp14getODSOperandsEj.exit77 ], [ %i.bv, %bb.k ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.sroa.4105.0176
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %.sroa.0.0.copyload.i.i.i82 = load ptr, ptr %i.bn, align 8, !tbaa !188
  %i.bo = load ptr, ptr %0, align 8, !tbaa !90
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i82, i64 8
  %.0.copyload.i.i.i.i.i83 = load i64, ptr %i.bp, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i83, -8
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_TosaOps31PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.bo, ptr %i.br, ptr nonnull @.str.397, i64 7, i32 noundef %.447177)
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.k, label %.thread149

bb.k:                                             ; preds = %.lr.ph178
  %i.bu = add i32 %.447177, 1
  %i.bv = add nuw nsw i64 %.sroa.4105.0176, 1     ; 2 uses
  %.not160.a = icmp eq i64 %i.bv, %11
  br i1 %.not160.a, label %._crit_edge, label %.lr.ph178

._crit_edge:                                      ; preds = %bb.k
  %12 = load ptr, ptr %0, align 8, !tbaa !90      ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !243 ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %12, i64 -16
  %i.bz = zext i32 %i.bx to i64
  %.not161179 = icmp eq i32 %i.bx, 0
  br i1 %.not161179, label %.thread149, label %.lr.ph183

.lr.ph183:                                        ; preds = %._crit_edge, %bb.l
  %.sroa.4.0180 = phi i64 [ %i.ch, %bb.l ], [ 0, %._crit_edge ] ; 3 uses
  %indvars193 = trunc i64 %.sroa.4.0180 to i32
  %i.ca = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 noundef %.sroa.4.0180) #28
  %i.cb = load ptr, ptr %0, align 8, !tbaa !90
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.0.copyload.i.i.i.i.i91 = load i64, ptr %i.cc, align 8
  %i.cd = and i64 %.0.copyload.i.i.i.i.i91, -8
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = call fastcc i8 @_ZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %i.cb, ptr %i.ce, ptr nonnull @.str.152, i64 6, i32 noundef %indvars193)
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.l, label %.thread149

bb.l:                                             ; preds = %.lr.ph183
  %i.ch = add nuw nsw i64 %.sroa.4.0180, 1        ; 2 uses
  %.not161 = icmp eq i64 %i.ch, %i.bz
  br i1 %.not161, label %.thread149, label %.lr.ph183

.thread149:                                       ; preds = %.lr.ph, %.lr.ph173, %.lr.ph178, %bb.l, %.lr.ph183, %._crit_edge, %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.041.14 = phi i8 [ %i.l, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 0, %.lr.ph173 ], [ 0, %.lr.ph183 ], [ 1, %._crit_edge ], [ 0, %bb.f ], [ 0, %.lr.ph178 ], [ 1, %bb.l ], [ 0, %.lr.ph ]
  ret i8 %.sroa.041.14
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i8 @_ZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEj(ptr noundef %0, ptr %1, ptr %2, i64 %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 6 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::Type", align 8        ; 18 uses
  %10 = alloca %"class.mlir::quant::QuantizedType", align 8 ; 5 uses
  %11 = alloca %"class.mlir::quant::QuantizedType", align 8 ; 5 uses
  %12 = alloca %"class.mlir::quant::QuantizedType", align 8 ; 5 uses
  %13 = alloca %"class.mlir::quant::QuantizedType", align 8 ; 5 uses
  %14 = alloca %"class.mlir::quant::QuantizedType", align 8 ; 5 uses
  %15 = alloca %"class.mlir::Type", align 8       ; 5 uses
  %16 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %17 = alloca %"class.mlir::RankedTensorType", align 8 ; 6 uses
  %18 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %19 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %20 = alloca %"class.mlir::ShapedType", align 8 ; 7 uses
  %21 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 15 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  store ptr %1, ptr %15, align 8
  %i.a = load ptr, ptr %1, align 8, !tbaa !124
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_18UnrankedTensorTypeEvE2idE
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  br i1 %i.c, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i8 @_ZN4mlir4tosa27verifyBlockScaledTensorTypeENS_4TypeEb(ptr nonnull %1, i1 noundef zeroext false)
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !124    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, !prof !85

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #28
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.664, i64 49), i64 16) #28
  store ptr %i.k, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id) #28
  br label %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i

_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id, align 8, !tbaa !86 ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !92   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  br label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.017.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.o, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.01116.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.p = lshr i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 3 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.p ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !86
  %i.r = icmp ult ptr %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = xor i64 %i.p, -1
  %i.u = add nsw i64 %.017.i.i.i.i.i.i.i.i.i.i.i.i, %i.t
  %.112.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.r, ptr %i.s, ptr %.01116.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.r, i64 %i.u, i64 %i.p ; 2 uses
  %i.v = icmp sgt i64 %.1.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i
  %.pre-phi.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %i.o, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %_ZN4mlir6detail9InterfaceINS_10ShapedTypeENS_4TypeENS0_25ShapedTypeInterfaceTraitsES3_NS_9TypeTrait9TraitBaseEE14getInterfaceIDEv.exit.i.i.i.i.i.i.i.i ], [ %.112.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__advanceIPKSt4pairIN4mlir6TypeIDEPvElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.pre-phi.i.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.w
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i
  %i.x = load ptr, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !128
  %i.y = icmp eq ptr %i.x, %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.y, label %bb.g, label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.011.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !130
  br label %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit

_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit: ; preds = %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %i.ab = phi ptr [ null, %_ZN4llvm11lower_boundIRKNS_11SmallVectorISt4pairIN4mlir6TypeIDEPvELj3EEERS4_ZNKS3_6detail12InterfaceMap6lookupES4_EUlRKT_S4_E_EEDaOSD_OT0_T1_.exit.i.i.i.i.i.i.i.i.i ], [ %i.aa, %bb.g ], [ null, %bb.f ]
  store ptr %1, ptr %16, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.ab, ptr %i.ac, align 8
  %i.ad = call ptr @_ZNK4mlir10ShapedType14getElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %i.ad, ptr %9, align 8
  %i.ae = call noundef zeroext i1 @_ZNK4mlir4Type17isUnsignedIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  br i1 %i.ae, label %"_ZZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEjENK3$_1clES2_.exit.thread", label %bb.h

bb.h:                                             ; preds = %_ZN4llvm4castIN4mlir10ShapedTypeENS1_4TypeEEEDcRT0_.exit
  %i.af = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #28
  br i1 %i.af, label %"_ZZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEjENK3$_1clES2_.exit.thread", label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i = load ptr, ptr %9, align 8, !tbaa !157
  %i.ag = call noundef zeroext i1 @_ZN4mlir5quant13QuantizedType7classofENS_4TypeE(ptr %.sroa.0.0.copyload.i.i) #28
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %9, align 8, !tbaa !157
  store ptr %.sroa.0.0.copyload.i1.i, ptr %10, align 8
  %i.ah = call noundef i32 @_ZNK4mlir5quant13QuantizedType27getStorageTypeIntegralWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  %i.ai = icmp eq i32 %i.ah, 8
  br i1 %i.ai, label %"_ZZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEjENK3$_1clES2_.exit.thread", label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %9, align 8, !tbaa !157
  %i.aj = call noundef zeroext i1 @_ZN4mlir5quant13QuantizedType7classofENS_4TypeE(ptr %.sroa.0.0.copyload.i2.i) #28
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i3.i = load ptr, ptr %9, align 8, !tbaa !157
  store ptr %.sroa.0.0.copyload.i3.i, ptr %11, align 8
  %i.ak = call noundef i32 @_ZNK4mlir5quant13QuantizedType27getStorageTypeIntegralWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #28
  %i.al = icmp eq i32 %i.ak, 4
  br i1 %i.al, label %"_ZZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEjENK3$_1clES2_.exit.thread", label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0.copyload.i4.i = load ptr, ptr %9, align 8, !tbaa !157
  %i.am = call noundef zeroext i1 @_ZN4mlir5quant13QuantizedType7classofENS_4TypeE(ptr %.sroa.0.0.copyload.i4.i) #28
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i5.i = load ptr, ptr %9, align 8, !tbaa !157
  store ptr %.sroa.0.0.copyload.i5.i, ptr %12, align 8
  %i.an = call noundef i32 @_ZNK4mlir5quant13QuantizedType27getStorageTypeIntegralWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #28
  %i.ao = icmp eq i32 %i.an, 8
  br i1 %i.ao, label %"_ZZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEjENK3$_1clES2_.exit.thread", label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload.i6.i = load ptr, ptr %9, align 8, !tbaa !157
  %i.ap = call noundef zeroext i1 @_ZN4mlir5quant13QuantizedType7classofENS_4TypeE(ptr %.sroa.0.0.copyload.i6.i) #28
  br i1 %i.ap, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i7.i = load ptr, ptr %9, align 8, !tbaa !157
  store ptr %.sroa.0.0.copyload.i7.i, ptr %13, align 8
  %i.aq = call noundef i32 @_ZNK4mlir5quant13QuantizedType27getStorageTypeIntegralWidthEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #28
  %i.ar = icmp eq i32 %i.aq, 16
  br i1 %i.ar, label %"_ZZL42__mlir_ods_local_type_constraint_TosaOps30PN4mlir9OperationENS_4TypeEN4llvm9StringRefEjENK3$_1clES2_.exit.thread", label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0.copyload.i8.i = load ptr, ptr %9, align 8, !tbaa !157
  %i.as = call noundef zeroext i1 @_ZN4mlir5quant13QuantizedType7classofENS_4TypeE(ptr %.sroa.0.0.copyload.i8.i) #28
  br i1 %i.as, label %bb.r, label %bb.s

end_hunk_5
