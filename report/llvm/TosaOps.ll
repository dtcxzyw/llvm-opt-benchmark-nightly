Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TosaOps?download=true
inline.NumInlined: 86712
inline.NumDeleted: 28499
loop-unroll.NumCompletelyUnrolled: 97
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 120
begin_hunk_0
@.str.386 = private unnamed_addr constant [65 x i8] c"failed to verify 'scale_type': micro-scaling format scale number\00", align 1
@.str.387 = private unnamed_addr constant [59 x i8] c"failed to verify 'value_type': micro-scaling format number\00", align 1
@.str.388 = private unnamed_addr constant [101 x i8] c"failed to parse Tosa_BlockScaled parameter 'block_shape' which is to be a `::mlir::tosa::BlockShape`\00", align 1
@.str.389 = private unnamed_addr constant [88 x i8] c"failed to parse Tosa_BlockScaled parameter 'scale_type' which is to be a `::mlir::Type`\00", align 1
@.str.390 = private unnamed_addr constant [88 x i8] c"failed to parse Tosa_BlockScaled parameter 'value_type' which is to be a `::mlir::Type`\00", align 1
@.str.391 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.392 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.393 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa15BlockScaledTypeEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.394 = private unnamed_addr constant [67 x i8] c"failed to parse Tosa_Shape parameter 'rank' which is to be a `int`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa9shapeTypeEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.395 = private unnamed_addr constant [16 x i8] c"unknown  type `\00", align 1
@.str.396 = private unnamed_addr constant [42 x i8] c"expected DictionaryAttr to set properties\00", align 1
@.str.397 = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5AbsOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa5AddOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa10AddShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.398 = private unnamed_addr constant [57 x i8] c"'tosa.apply_scale' op requires attribute 'rounding_mode'\00", align 1
@.str.400 = private unnamed_addr constant [14 x i8] c"rounding_mode\00", align 1
@.str.401 = private unnamed_addr constant [59 x i8] c"Invalid attribute `rounding_mode` in property conversion: \00", align 1
@.str.402 = private unnamed_addr constant [28 x i8] c"Property conversion failed.\00", align 1
@.str.403 = private unnamed_addr constant [35 x i8] c"requires attribute 'rounding_mode'\00", align 1
@.str.404 = private unnamed_addr constant [74 x i8] c"expected key entry for rounding_mode in DictionaryAttr to set Properties.\00", align 1
@.str.405 = private unnamed_addr constant [14 x i8] c"unknown key '\00", align 1
@.str.406 = private unnamed_addr constant [37 x i8] c"' when parsing properties dictionary\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12ApplyScaleOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail30ApplyScaleOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.407 = private unnamed_addr constant [43 x i8] c"'tosa.argmax' op requires attribute 'axis'\00", align 1
@.str.408 = private unnamed_addr constant [98 x i8] c"'tosa.argmax' op attribute 'axis' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.410 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@.str.411 = private unnamed_addr constant [50 x i8] c"Invalid attribute `axis` in property conversion: \00", align 1
@.str.412 = private unnamed_addr constant [9 x i8] c"nan_mode\00", align 1
@.str.413 = private unnamed_addr constant [54 x i8] c"Invalid attribute `nan_mode` in property conversion: \00", align 1
@.str.414 = private unnamed_addr constant [26 x i8] c"requires attribute 'axis'\00", align 1
@.str.415 = private unnamed_addr constant [65 x i8] c"expected key entry for axis in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa8ArgMaxOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail26ArgMaxOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.417 = private unnamed_addr constant [60 x i8] c"'tosa.arithmetic_right_shift' op requires attribute 'round'\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"round\00", align 1
@.str.420 = private unnamed_addr constant [51 x i8] c"Invalid attribute `round` in property conversion: \00", align 1
@.str.421 = private unnamed_addr constant [27 x i8] c"requires attribute 'round'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa22ArithmeticRightShiftOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail40ArithmeticRightShiftOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.422 = private unnamed_addr constant [66 x i8] c"'tosa.assert_equal_shape' op requires attribute 'allow_broadcast'\00", align 1
@.str.424 = private unnamed_addr constant [16 x i8] c"allow_broadcast\00", align 1
@.str.425 = private unnamed_addr constant [61 x i8] c"Invalid attribute `allow_broadcast` in property conversion: \00", align 1
@.str.426 = private unnamed_addr constant [37 x i8] c"requires attribute 'allow_broadcast'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa18AssertEqualShapeOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail36AssertEqualShapeOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.427 = private unnamed_addr constant [60 x i8] c"'tosa.avg_pool2d_adaptive' op requires attribute 'acc_type'\00", align 1
@.str.428 = private unnamed_addr constant [182 x i8] c"'tosa.avg_pool2d_adaptive' op attribute 'acc_type' failed to satisfy constraint: type attribute of 32-bit signless integer or 48-bit signless integer or 16-bit float or 32-bit float\00", align 1
@.str.429 = private unnamed_addr constant [9 x i8] c"acc_type\00", align 1
@.str.430 = private unnamed_addr constant [54 x i8] c"Invalid attribute `acc_type` in property conversion: \00", align 1
@.str.431 = private unnamed_addr constant [30 x i8] c"requires attribute 'acc_type'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa19AvgPool2dAdaptiveOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail37AvgPool2dAdaptiveOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.432 = private unnamed_addr constant [51 x i8] c"'tosa.avg_pool2d' op requires attribute 'acc_type'\00", align 1
@.str.433 = private unnamed_addr constant [49 x i8] c"'tosa.avg_pool2d' op requires attribute 'kernel'\00", align 1
@.str.434 = private unnamed_addr constant [46 x i8] c"'tosa.avg_pool2d' op requires attribute 'pad'\00", align 1
@.str.435 = private unnamed_addr constant [49 x i8] c"'tosa.avg_pool2d' op requires attribute 'stride'\00", align 1
@.str.436 = private unnamed_addr constant [120 x i8] c"'tosa.avg_pool2d' op attribute 'kernel' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.437 = private unnamed_addr constant [120 x i8] c"'tosa.avg_pool2d' op attribute 'stride' failed to satisfy constraint: i64 dense array attribute with exactly 2 elements\00", align 1
@.str.438 = private unnamed_addr constant [117 x i8] c"'tosa.avg_pool2d' op attribute 'pad' failed to satisfy constraint: i64 dense array attribute with exactly 4 elements\00", align 1
@.str.439 = private unnamed_addr constant [173 x i8] c"'tosa.avg_pool2d' op attribute 'acc_type' failed to satisfy constraint: type attribute of 32-bit signless integer or 48-bit signless integer or 16-bit float or 32-bit float\00", align 1
@.str.440 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.441 = private unnamed_addr constant [52 x i8] c"Invalid attribute `kernel` in property conversion: \00", align 1
@.str.442 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@.str.443 = private unnamed_addr constant [49 x i8] c"Invalid attribute `pad` in property conversion: \00", align 1
@.str.444 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.445 = private unnamed_addr constant [52 x i8] c"Invalid attribute `stride` in property conversion: \00", align 1
@.str.446 = private unnamed_addr constant [28 x i8] c"requires attribute 'kernel'\00", align 1
@.str.447 = private unnamed_addr constant [25 x i8] c"requires attribute 'pad'\00", align 1
@.str.448 = private unnamed_addr constant [28 x i8] c"requires attribute 'stride'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11AvgPool2dOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail29AvgPool2dOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12BitwiseAndOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12BitwiseNotOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa11BitwiseOrOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa12BitwiseXorOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.449 = private unnamed_addr constant [65 x i8] c"'tosa.cast_from_block_scaled' op requires attribute 'block_size'\00", align 1
@.str.451 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.452 = private unnamed_addr constant [56 x i8] c"Invalid attribute `block_size` in property conversion: \00", align 1
@.str.453 = private unnamed_addr constant [32 x i8] c"requires attribute 'block_size'\00", align 1
@.str.454 = private unnamed_addr constant [71 x i8] c"expected key entry for block_size in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa21CastFromBlockScaledOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail39CastFromBlockScaledOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6CastOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.455 = private unnamed_addr constant [63 x i8] c"'tosa.cast_to_block_scaled' op requires attribute 'block_size'\00", align 1
@.str.457 = private unnamed_addr constant [12 x i8] c"output_data\00", align 1
@.str.458 = private unnamed_addr constant [13 x i8] c"output_scale\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4tosa19CastToBlockScaledOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6detail37CastToBlockScaledOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_4tosa6CeilOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.459 = private unnamed_addr constant [45 x i8] c"'tosa.clamp' op requires attribute 'max_val'\00", align 1
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
@__const._ZN4mlir4tosa20ReshapeBlockScaledOp27getODSOperandIndexAndLengthEj.isVariadic = private unnamed_addr constant [2 x i8] c"\01\00", align 1
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
@__const._ZN4mlir4tosa22RowGatherBlockScaledOp27getODSOperandIndexAndLengthEj.isVariadic = private unnamed_addr constant [3 x i8] c"\01\00\00", align 1
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
end_hunk_0
begin_hunk_1_@_ZN4mlir4tosa10IdentityOp5printERNS_12OpAsmPrinterE:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.as, ptr %5, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.at, align 8, !tbaa !96
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 2, ptr %i.au, align 4, !tbaa !93
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
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !2083
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !noalias !2083
  %i.cp = and i32 %i.co, 8388608
  %.not.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i, label %_ZN4mlir9Operation15getOperandTypesEv.exit, label %bb.o, !prof !182

bb.o:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 72
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !185, !noalias !2083
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 68
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !186, !noalias !2083
  %i.cu = zext i32 %i.ct to i64
  br label %_ZN4mlir9Operation15getOperandTypesEv.exit

_ZN4mlir9Operation15getOperandTypesEv.exit:       ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11, %bb.o
  %.sroa.0.0.i.i.i = phi ptr [ %i.cr, %bb.o ], [ null, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11 ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.cu, %bb.o ], [ 0, %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit11 ]
  store ptr %.sroa.0.0.i.i.i, ptr %3, align 8, !noalias !2083
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.4.0.i.i.i, ptr %i.cv, align 8, !noalias !2083
  call void @_ZNK4mlir12OperandRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange.1593") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !2083
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.cw = load ptr, ptr %0, align 8, !tbaa !90    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !2084
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !243, !noalias !2084 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 -16
  %i.db = zext i32 %i.cy to i64
  %.sroa.0.0.i.i12 = select i1 %i.cz, ptr null, ptr %i.da
  store ptr %.sroa.0.0.i.i12, ptr %2, align 8, !noalias !2084
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.db, ptr %i.dc, align 8, !noalias !2084
  call void @_ZNK4mlir11ResultRange8getTypesEv(ptr dead_on_unwind nonnull writable sret(%"class.mlir::ValueTypeRange") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !2084
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
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.c, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.d, %vector.body ]
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i8> %vec.ind, splat (i8 4)
  %3 = shl nsw <4 x i8> splat (i8 -1), %vec.ind
  %4 = shl nsw <4 x i8> splat (i8 -1), %step.add
  %5 = xor <4 x i8> %3, splat (i8 -1)
  %6 = xor <4 x i8> %4, splat (i8 -1)
  %i.a = zext nneg <4 x i8> %5 to <4 x i32>
  %i.b = zext nneg <4 x i8> %6 to <4 x i32>
  %i.c = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %i.d = add <4 x i32> %vec.phi17, %i.b           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.e = icmp eq i32 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !2085

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.d, %i.c
  %i.f = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.015.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.g = add i32 %2, -1
  %i.h = add i32 %2, -2
  %i.i = mul nsw i32 %.0.lcssa, %i.h
  %i.j = add i32 %i.i, %1
  %7 = and i32 %1, 255
  %.not17 = icmp eq i32 %7, 0
  %i.k = zext i32 %i.g to i64
  %i.l = shl nuw i64 %i.k, 32
  %.sroa.2.0.insert.shift = select i1 %.not17, i64 4294967296, i64 %i.l
  %.sroa.0.0.insert.ext = zext i32 %i.j to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader19, %.lr.ph
  %.015 = phi i32 [ %spec.select, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader19 ]
  %.015.a = phi i32 [ %10, %.lr.ph ], [ %.015.ph.a, %.lr.ph.preheader19 ] ; 2 uses
  %8 = trunc i32 %.015.a to i8
  %notmask = shl nsw i8 -1, %8
  %9 = xor i8 %notmask, -1
  %i.m = zext nneg i8 %9 to i32
  %spec.select = add nuw nsw i32 %.015, %i.m      ; 2 uses
  %10 = add nuw i32 %.015.a, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %10, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2086
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
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.c, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.d, %vector.body ]
  %vec.ind = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i8> %vec.ind, splat (i8 4)
  %2 = shl nsw <4 x i8> splat (i8 -1), %vec.ind
  %3 = shl nsw <4 x i8> splat (i8 -1), %step.add
  %4 = xor <4 x i8> %2, splat (i8 -1)
  %5 = xor <4 x i8> %3, splat (i8 -1)
  %i.a = zext nneg <4 x i8> %4 to <4 x i32>
  %i.b = zext nneg <4 x i8> %5 to <4 x i32>
  %i.c = add <4 x i32> %vec.phi, %i.a             ; 2 uses
  %i.d = add <4 x i32> %vec.phi16, %i.b           ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i8> %vec.ind, splat (i8 8)
  %i.e = icmp eq i32 %index.next, %n.vec
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !2087

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.d, %i.c
  %i.f = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %1, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  %.014.ph.a = phi i32 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.f, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !90     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !182

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !186
  br label %_ZN4mlir9Operation14getNumOperandsEv.exit

_ZN4mlir9Operation14getNumOperandsEv.exit:        ; preds = %._crit_edge, %bb.b
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %._crit_edge ] ; 2 uses
  %i.n = add i32 %i.m, -1
  %i.o = add i32 %i.m, -2
  %i.p = mul nsw i32 %i.o, %.0.lcssa
  %i.q = add i32 %i.p, %1
  %6 = and i32 %1, 255
  %.not16 = icmp eq i32 %6, 0
  %i.r = zext i32 %i.n to i64
  %i.s = shl nuw i64 %i.r, 32
  %.sroa.2.0.insert.shift = select i1 %.not16, i64 4294967296, i64 %i.s
  %.sroa.0.0.insert.ext = zext i32 %i.q to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi i32 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ]
  %.014.a = phi i32 [ %9, %.lr.ph ], [ %.014.ph.a, %.lr.ph.preheader18 ] ; 2 uses
  %7 = trunc i32 %.014.a to i8
  %notmask = shl nsw i8 -1, %7
  %8 = xor i8 %notmask, -1
  %i.t = zext nneg i8 %8 to i32
  %spec.select = add nuw nsw i32 %.014, %i.t      ; 2 uses
  %9 = add nuw i32 %.014.a, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %9, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2088
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir4tosa4IfOp19getInputListMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !90     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir4tosa4IfOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !182

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !186
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir4tosa4IfOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir4tosa4IfOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %._crit_edge.i ]
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
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

end_hunk_1
