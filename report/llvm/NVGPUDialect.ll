Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NVGPUDialect?download=true
inline.NumInlined: 22676
inline.NumDeleted: 7449
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumUnrolled: 57
begin_hunk_0
@.str.16 = private unnamed_addr constant [38 x i8] c"mmaShape must have exactly 3 elements\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"sparsity selector should be 0 or 1\00", align 1
@.str.18 = private unnamed_addr constant [85 x i8] c"expected nvgpu.ldmatrix srcMemref must have a memory space attribute of IntegerAttr(\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"nvgpu.ldmatrix works for 32b or lower\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"nvgpu.ldmatrix transpose works only at 16b granularity\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"results must be 2 dimensional vector\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"expected vector register shape[1] = \00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"expected vector register shape[0] and numTiles to match\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"Interleave options are not supported yet.\00", align 1
@.str.25 = private unnamed_addr constant [95 x i8] c"the tensor map descriptor has incorrect address space, it must be shared memory address space.\00", align 1
@.str.26 = private unnamed_addr constant [48 x i8] c"the tensor map descriptor must be static shaped\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"the tensor map descriptor must have dimensions between 1 and \00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" but it is \00", align 1
@.str.29 = private unnamed_addr constant [54 x i8] c"the tensormap descriptor must have last dimension of \00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c" bytes but it is \00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c" bytes\00", align 1
@.str.32 = private unnamed_addr constant [66 x i8] c"the element type of tensor map descriptor and memref must be same\00", align 1
@.str.33 = private unnamed_addr constant [92 x i8] c"the destination memref has incorrect address space, it must be shared memory address space.\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"the destination memref must be static shaped\00", align 1
@.str.35 = private unnamed_addr constant [66 x i8] c"the shape of tensor map descriptor and memref must have same rank\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"memref and tensor map shapes mismatch \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c" != \00", align 1
@.str.38 = private unnamed_addr constant [75 x i8] c"the bytes in the last dimension of the tensor map must be a multiple of 16\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"Maximum \00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c" coordinates are supported.\00", align 1
@.str.41 = private unnamed_addr constant [75 x i8] c"number of coordinates do not match with the rank of tensor descriptor map.\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"supports only \00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c" is supported for the time being\00", align 1
@constinit = private unnamed_addr constant [32 x i32] [i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 72, i32 80, i32 88, i32 96, i32 104, i32 112, i32 120, i32 128, i32 136, i32 144, i32 152, i32 160, i32 168, i32 176, i32 184, i32 192, i32 200, i32 208, i32 216, i32 224, i32 232, i32 240, i32 248, i32 256], align 4
@constinit.44 = private unnamed_addr constant [18 x i32] [i32 8, i32 16, i32 24, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 176, i32 192, i32 208, i32 224, i32 240, i32 256], align 4
@.str.45 = private unnamed_addr constant [88 x i8] c"supports non-transpose A (Row Major) and transpose B (Column Major) for the time being \00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"type of matrix C and matrix D must be the same\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"has matrices A, B, C and D, they must be 2 dimensional\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"2nd dim matrix-A (\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c")!= 1st dim matrix-B (\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c" )\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"1st dim matrix-A ( \00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c" )!= 1st dim matrix-C ( \00", align 1
@.str.53 = private unnamed_addr constant [20 x i8] c"2nd dim matrix-B ( \00", align 1
@.str.54 = private unnamed_addr constant [26 x i8] c" ) != 2nd dim matrix-C ( \00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c" += \00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c" * \00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c", it is not supported.\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"has input type \00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c" n is set to \00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c", it is not supported\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"hit a limitation: \00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c", it is not supported yet\00", align 1
@.str.63 = private unnamed_addr constant [54 x i8] c"hit a limitation: only f32 results for the time being\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"results [\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"][\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"] values. However, destination memref[\00", align 1
@.str.67 = private unnamed_addr constant [38 x i8] c"]  does not have same size as results\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"has type \00", align 1
@.str.69 = private unnamed_addr constant [105 x i8] c". It does not fit into warp-group level (wgmma) matrix multiplication instruction (or not supported yet)\00", align 1
@.str.70 = private unnamed_addr constant [62 x i8] c"has a limitation. non-approx or non-ftz is not supported yet.\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"has a limitation. \00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c" is not supported yet.\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"result type \00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c" must be narrower than operand type \00", align 1
@.str.75 = private unnamed_addr constant [47 x i8] c"input type must be 64/32/16 bitwidth, but got \00", align 1
@.str.76 = private unnamed_addr constant [66 x i8] c"expects RZ or RP rounding mode when result type is e8m0, but got \00", align 1
@.str.77 = private unnamed_addr constant [67 x i8] c"RS (stochastic) rounding is only supported for f32->f16/bf16, got \00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.79 = private unnamed_addr constant [49 x i8] c"random_bits operand is required with RS rounding\00", align 1
@.str.80 = private unnamed_addr constant [49 x i8] c"expects RN rounding mode for f64 input, but got \00", align 1
@.str.81 = private unnamed_addr constant [61 x i8] c"expects RN or RZ rounding mode for f32 to f16/bf16, but got \00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"expects RN rounding mode, but got \00", align 1
@.str.83 = private unnamed_addr constant [51 x i8] c"random_bits can only be used with RS rounding mode\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c" must be wider than operand type \00", align 1
@.str.85 = private unnamed_addr constant [53 x i8] c"result type must be 16, 32, or 64 bitwidth, but got \00", align 1
@.str.86 = private unnamed_addr constant [57 x i8] c"expects bf16 or f32 output type when input type is e8m0.\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"relu is not supported for bf16 destination\00", align 1
@.str.88 = private unnamed_addr constant [110 x i8] c"failed to parse TensorMapSwizzleAttr parameter 'value' which is to be a `::mlir::nvgpu::TensorMapSwizzleKind`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu24TensorMapSwizzleKindAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.89 = private unnamed_addr constant [110 x i8] c"failed to parse TensorMapL2PromoAttr parameter 'value' which is to be a `::mlir::nvgpu::TensorMapL2PromoKind`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu24TensorMapL2PromoKindAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.90 = private unnamed_addr constant [102 x i8] c"failed to parse TensorMapOOBAttr parameter 'value' which is to be a `::mlir::nvgpu::TensorMapOOBKind`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu20TensorMapOOBKindAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.91 = private unnamed_addr constant [116 x i8] c"failed to parse TensorMapInterleaveAttr parameter 'value' which is to be a `::mlir::nvgpu::TensorMapInterleaveKind`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu27TensorMapInterleaveKindAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.92 = private unnamed_addr constant [104 x i8] c"failed to parse RcpRoundingModeAttr parameter 'value' which is to be a `::mlir::nvgpu::RcpRoundingMode`\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu19RcpRoundingModeAttrEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.93 = private unnamed_addr constant [20 x i8] c"unknown attribute `\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"` in dialect `\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"approx\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"rn\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"rz\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"rp\00", align 1
@.str.101 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"interleave_16b\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"interleave_32b\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"l2promo_64b\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"l2promo_128b\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"l2promo_256b\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"nan\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"swizzle_32b\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"swizzle_64b\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"swizzle_128b\00", align 1
@.str.113 = private unnamed_addr constant [62 x i8] c"'nvgpu.device_async_copy' op requires attribute 'dstElements'\00", align 1
@.str.114 = private unnamed_addr constant [99 x i8] c"'nvgpu.device_async_copy' op attribute 'dstElements' failed to satisfy constraint: index attribute\00", align 1
@.str.116 = private unnamed_addr constant [42 x i8] c"expected DictionaryAttr to set properties\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"bypassL1\00", align 1
@.str.118 = private unnamed_addr constant [54 x i8] c"Invalid attribute `bypassL1` in property conversion: \00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"dstElements\00", align 1
@.str.120 = private unnamed_addr constant [57 x i8] c"Invalid attribute `dstElements` in property conversion: \00", align 1
@.str.121 = private unnamed_addr constant [20 x i8] c"operandSegmentSizes\00", align 1
@.str.122 = private unnamed_addr constant [22 x i8] c"operand_segment_sizes\00", align 1
@.str.123 = private unnamed_addr constant [46 x i8] c"size mismatch for operand/result_segment_size\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"Property conversion failed.\00", align 1
@.str.125 = private unnamed_addr constant [32 x i8] c"Failed to infer result type(s).\00", align 1
@.str.126 = private unnamed_addr constant [33 x i8] c"requires attribute 'dstElements'\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@.str.128 = private unnamed_addr constant [28 x i8] c"operand group starting at #\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c" requires 0 or 1 element, but found \00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c":\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu17DeviceAsyncCopyOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail35DeviceAsyncCopyOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu24DeviceAsyncCreateGroupOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.136 = private unnamed_addr constant [115 x i8] c"'nvgpu.device_async_wait' op attribute 'numGroups' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"numGroups\00", align 1
@.str.138 = private unnamed_addr constant [55 x i8] c"Invalid attribute `numGroups` in property conversion: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu17DeviceAsyncWaitOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail35DeviceAsyncWaitOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.141 = private unnamed_addr constant [5 x i8] c"relu\00", align 1
@.str.142 = private unnamed_addr constant [50 x i8] c"Invalid attribute `relu` in property conversion: \00", align 1
@.str.143 = private unnamed_addr constant [4 x i8] c"rnd\00", align 1
@.str.144 = private unnamed_addr constant [49 x i8] c"Invalid attribute `rnd` in property conversion: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6ExtfOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail24ExtfOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.145 = private unnamed_addr constant [50 x i8] c"'nvgpu.ldmatrix' op requires attribute 'numTiles'\00", align 1
@.str.146 = private unnamed_addr constant [51 x i8] c"'nvgpu.ldmatrix' op requires attribute 'transpose'\00", align 1
@.str.148 = private unnamed_addr constant [105 x i8] c"'nvgpu.ldmatrix' op attribute 'numTiles' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"numTiles\00", align 1
@.str.150 = private unnamed_addr constant [54 x i8] c"Invalid attribute `numTiles` in property conversion: \00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"transpose\00", align 1
@.str.152 = private unnamed_addr constant [55 x i8] c"Invalid attribute `transpose` in property conversion: \00", align 1
@.str.153 = private unnamed_addr constant [30 x i8] c"requires attribute 'numTiles'\00", align 1
@.str.154 = private unnamed_addr constant [31 x i8] c"requires attribute 'transpose'\00", align 1
@.str.155 = private unnamed_addr constant [63 x i8] c"failed to verify that srcMemref and res have same element type\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu10LdMatrixOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail28LdMatrixOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.157 = private unnamed_addr constant [10 x i8] c"predicate\00", align 1
@.str.158 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu24MBarrierArriveExpectTxOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu26MBarrierArriveNoCompleteOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu16MBarrierArriveOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu16MBarrierCreateOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu13MBarrierGetOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@__const._ZN4mlir5nvgpu14MBarrierInitOp27getODSOperandIndexAndLengthEj.isVariadic = private unnamed_addr constant [4 x i8] c"\00\00\00\01", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu14MBarrierInitOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu18MBarrierTestWaitOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu23MBarrierTryWaitParityOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.159 = private unnamed_addr constant [53 x i8] c"'nvgpu.mma.sp.sync' op requires attribute 'mmaShape'\00", align 1
@.str.160 = private unnamed_addr constant [105 x i8] c"'nvgpu.mma.sp.sync' op attribute 'mmaShape' failed to satisfy constraint: 64-bit integer array attribute\00", align 1
@.str.161 = private unnamed_addr constant [116 x i8] c"'nvgpu.mma.sp.sync' op attribute 'sparsitySelector' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"mmaShape\00", align 1
@.str.164 = private unnamed_addr constant [54 x i8] c"Invalid attribute `mmaShape` in property conversion: \00", align 1
@.str.165 = private unnamed_addr constant [17 x i8] c"sparsitySelector\00", align 1
@.str.166 = private unnamed_addr constant [62 x i8] c"Invalid attribute `sparsitySelector` in property conversion: \00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"tf32Enabled\00", align 1
@.str.168 = private unnamed_addr constant [57 x i8] c"Invalid attribute `tf32Enabled` in property conversion: \00", align 1
@.str.169 = private unnamed_addr constant [30 x i8] c"requires attribute 'mmaShape'\00", align 1
@.str.170 = private unnamed_addr constant [65 x i8] c"failed to verify that matrixA and matrixB have same element type\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"metadata\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu15MmaSparseSyncOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail33MmaSparseSyncOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.174 = private unnamed_addr constant [50 x i8] c"'nvgpu.mma.sync' op requires attribute 'mmaShape'\00", align 1
@.str.175 = private unnamed_addr constant [102 x i8] c"'nvgpu.mma.sync' op attribute 'mmaShape' failed to satisfy constraint: 64-bit integer array attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu9MmaSyncOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail27MmaSyncOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.180 = private unnamed_addr constant [52 x i8] c"Invalid attribute `approx` in property conversion: \00", align 1
@.str.181 = private unnamed_addr constant [4 x i8] c"ftz\00", align 1
@.str.182 = private unnamed_addr constant [49 x i8] c"Invalid attribute `ftz` in property conversion: \00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c"rounding\00", align 1
@.str.184 = private unnamed_addr constant [54 x i8] c"Invalid attribute `rounding` in property conversion: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu5RcpOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail23RcpOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.185 = private unnamed_addr constant [15 x i8] c"multicast_mask\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu14TmaAsyncLoadOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail32TmaAsyncLoadOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu15TmaAsyncStoreOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail33TmaAsyncStoreOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.186 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu21TmaCreateDescriptorOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu10TmaFenceOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu13TmaPrefetchOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.188 = private unnamed_addr constant [134 x i8] c"'nvgpu.truncf' op attribute 'sat' failed to satisfy constraint: Describes the saturation mode whose value is one of {none, satfinite}\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@.str.191 = private unnamed_addr constant [49 x i8] c"Invalid attribute `sat` in property conversion: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu8TruncfOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail26TruncfOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu29WarpgroupGenerateDescriptorOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu29WarpgroupMmaInitAccumulatorOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.192 = private unnamed_addr constant [111 x i8] c"'nvgpu.warpgroup.mma' op attribute 'waitGroup' failed to satisfy constraint: 64-bit signless integer attribute\00", align 1
@.str.195 = private unnamed_addr constant [11 x i8] c"transposeA\00", align 1
@.str.196 = private unnamed_addr constant [56 x i8] c"Invalid attribute `transposeA` in property conversion: \00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"transposeB\00", align 1
@.str.198 = private unnamed_addr constant [56 x i8] c"Invalid attribute `transposeB` in property conversion: \00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"waitGroup\00", align 1
@.str.200 = private unnamed_addr constant [55 x i8] c"Invalid attribute `waitGroup` in property conversion: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu14WarpgroupMmaOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu6detail32WarpgroupMmaOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu19WarpgroupMmaStoreOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu20DeviceAsyncTokenTypeEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.201 = private unnamed_addr constant [36 x i8] c"expected a parameter name in struct\00", align 1
@.str.202 = private unnamed_addr constant [39 x i8] c"struct is missing required parameter: \00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"memorySpace\00", align 1
@.str.204 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c"memorySpace = \00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"num_barriers = \00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c">\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu17MBarrierGroupTypeEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu17MBarrierTokenTypeEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.208 = private unnamed_addr constant [10 x i8] c"tensor = \00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"swizzle = \00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"l2promo = \00", align 1
@.str.211 = private unnamed_addr constant [7 x i8] c"oob = \00", align 1
@.str.212 = private unnamed_addr constant [14 x i8] c"interleave = \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu23TensorMapDescriptorTypeEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu29WarpgroupMatrixDescriptorTypeEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.213 = private unnamed_addr constant [14 x i8] c"fragmented = \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_5nvgpu24WarpgroupAccumulatorTypeEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.214 = private unnamed_addr constant [16 x i8] c"unknown  type `\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"nvgpu\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_3gpu16AddressSpaceAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.216 = private unnamed_addr constant [37 x i8] c"f64 is not supported for sparse mode\00", align 1
@.str.217 = private unnamed_addr constant [65 x i8] c"expected input data type (i4,i8,f16,bf16,tf32,f64) supported by \00", align 1
@.str.218 = private unnamed_addr constant [37 x i8] c"matrixA must be 2 dimensional vector\00", align 1
@.str.219 = private unnamed_addr constant [37 x i8] c"matrixB must be 2 dimensional vector\00", align 1
@.str.220 = private unnamed_addr constant [37 x i8] c"matrixC must be 2 dimensional vector\00", align 1
@.str.221 = private unnamed_addr constant [29 x i8] c" warp-wide matrix A elements\00", align 1
@.str.222 = private unnamed_addr constant [29 x i8] c" warp-wide matrix B elements\00", align 1
@.str.223 = private unnamed_addr constant [29 x i8] c" warp-wide matrix C elements\00", align 1
@.str.224 = private unnamed_addr constant [49 x i8] c"expected tf32 tensor cores only for F32 operands\00", align 1
@.str.225 = private unnamed_addr constant [33 x i8] c"expected matrix A to be shaped (\00", align 1
@.str.226 = private unnamed_addr constant [4 x i8] c" x \00", align 1
@.str.227 = private unnamed_addr constant [33 x i8] c"expected matrix B to be shaped (\00", align 1
@.str.228 = private unnamed_addr constant [33 x i8] c"expected matrix C to be shaped (\00", align 1
@.str.229 = private unnamed_addr constant [63 x i8] c"input and output must both be scalars or both be vectors, got \00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.231 = private unnamed_addr constant [41 x i8] c"input and output shapes must match, got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10VectorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.232 = private unnamed_addr constant [36 x i8] c"::mlir::nvgpu::TensorMapSwizzleKind\00", align 1
@.str.233 = private unnamed_addr constant [16 x i8] c" to be one of: \00", align 1
@.str.234 = private unnamed_addr constant [33 x i8] c"expected valid keyword or string\00", align 1
@.str.235 = private unnamed_addr constant [36 x i8] c"::mlir::nvgpu::TensorMapL2PromoKind\00", align 1
@.str.236 = private unnamed_addr constant [32 x i8] c"::mlir::nvgpu::TensorMapOOBKind\00", align 1
@.str.237 = private unnamed_addr constant [39 x i8] c"::mlir::nvgpu::TensorMapInterleaveKind\00", align 1
@.str.238 = private unnamed_addr constant [31 x i8] c"::mlir::nvgpu::RcpRoundingMode\00", align 1
@.str.239 = private unnamed_addr constant [8 x i8] c"swizzle\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"l2promo\00", align 1
@.str.241 = private unnamed_addr constant [4 x i8] c"oob\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"interleave\00", align 1
@.str.243 = private unnamed_addr constant [18 x i8] c"rcp_rounding_mode\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_8UnitAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.245 = private unnamed_addr constant [12 x i8] c"attribute '\00", align 1
@.str.246 = private unnamed_addr constant [47 x i8] c"' failed to satisfy constraint: unit attribute\00", align 1
@.str.247 = private unnamed_addr constant [48 x i8] c"' failed to satisfy constraint: index attribute\00", align 1
@.str.248 = private unnamed_addr constant [28 x i8] c"trying to read an array of \00", align 1
@.str.249 = private unnamed_addr constant [11 x i8] c" but only \00", align 1
@.str.250 = private unnamed_addr constant [20 x i8] c" storage available.\00", align 1
@.str.251 = private unnamed_addr constant [50 x i8] c"reading sparse array with indexing above 8 bits: \00", align 1
@.str.252 = private unnamed_addr constant [36 x i8] c"reading a sparse array found index \00", align 1
@.str.253 = private unnamed_addr constant [24 x i8] c"nvgpu.device_async_copy\00", align 1
@.str.254 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.255 = private unnamed_addr constant [55 x i8] c" must be memref of any non-token type values, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9TokenTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.256 = private unnamed_addr constant [67 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]\00", align 1
@.str.260 = private unnamed_addr constant [37 x i8] c" must be variadic of index, but got \00", align 1
@.str.261 = private unnamed_addr constant [25 x i8] c" must be index, but got \00", align 1
@.str.262 = private unnamed_addr constant [43 x i8] c" must be device async token type, but got \00", align 1
@.str.263 = private unnamed_addr constant [32 x i8] c"nvgpu.device_async_create_group\00", align 1
@.str.264 = private unnamed_addr constant [55 x i8] c" must be variadic of device async token type, but got \00", align 1
@.str.265 = private unnamed_addr constant [66 x i8] c"' failed to satisfy constraint: 32-bit signless integer attribute\00", align 1
@.str.266 = private unnamed_addr constant [24 x i8] c"nvgpu.device_async_wait\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4NVVM18FPRoundingModeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.267 = private unnamed_addr constant [47 x i8] c"' failed to satisfy constraint: bool attribute\00", align 1
@.str.268 = private unnamed_addr constant [57 x i8] c"' failed to satisfy constraint: NVVM FPRoundingMode kind\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"nvgpu.extf\00", align 1
@.str.270 = private unnamed_addr constant [69 x i8] c" must be floating-point or vector of floating-point values, but got \00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9FloatTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.271 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::FloatType]\00", align 1
@.str.272 = private unnamed_addr constant [15 x i8] c"nvgpu.ldmatrix\00", align 1
@.str.273 = private unnamed_addr constant [55 x i8] c" must be vector of any non-token type values, but got \00", align 1
@.str.274 = private unnamed_addr constant [32 x i8] c"nvgpu.mbarrier.arrive.expect_tx\00", align 1
@.str.275 = private unnamed_addr constant [41 x i8] c" must be mbarrier barrier type, but got \00", align 1
@.str.276 = private unnamed_addr constant [42 x i8] c" must be 1-bit signless integer, but got \00", align 1
@.str.277 = private unnamed_addr constant [33 x i8] c"nvgpu.mbarrier.arrive.nocomplete\00", align 1
@.str.278 = private unnamed_addr constant [20 x i8] c" must be , but got \00", align 1
@.str.279 = private unnamed_addr constant [22 x i8] c"nvgpu.mbarrier.arrive\00", align 1
@.str.280 = private unnamed_addr constant [22 x i8] c"nvgpu.mbarrier.create\00", align 1
@.str.281 = private unnamed_addr constant [19 x i8] c"nvgpu.mbarrier.get\00", align 1
@.str.282 = private unnamed_addr constant [70 x i8] c" must be 32-bit signless integer or 64-bit signless integer, but got \00", align 1
@.str.283 = private unnamed_addr constant [20 x i8] c"nvgpu.mbarrier.init\00", align 1
@.str.284 = private unnamed_addr constant [25 x i8] c"nvgpu.mbarrier.test.wait\00", align 1
@.str.285 = private unnamed_addr constant [31 x i8] c"nvgpu.mbarrier.try_wait.parity\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.286 = private unnamed_addr constant [63 x i8] c"' failed to satisfy constraint: 64-bit integer array attribute\00", align 1
@.str.287 = private unnamed_addr constant [18 x i8] c"nvgpu.mma.sp.sync\00", align 1
@.str.288 = private unnamed_addr constant [85 x i8] c" must be fixed-length vector of 16-bit signless integer values of length 2, but got \00", align 1
@.str.289 = private unnamed_addr constant [15 x i8] c"nvgpu.mma.sync\00", align 1
@.str.290 = private unnamed_addr constant [10 x i8] c"nvgpu.rcp\00", align 1
@.str.291 = private unnamed_addr constant [49 x i8] c" must be vector of 32-bit float values, but got \00", align 1
@.str.292 = private unnamed_addr constant [21 x i8] c"nvgpu.tma.async.load\00", align 1
@.str.293 = private unnamed_addr constant [40 x i8] c" must be TensorMap descriptor, but got \00", align 1
@.str.294 = private unnamed_addr constant [43 x i8] c" must be 16-bit signless integer, but got \00", align 1
@.str.295 = private unnamed_addr constant [22 x i8] c"nvgpu.tma.async.store\00", align 1
@.str.296 = private unnamed_addr constant [28 x i8] c"nvgpu.tma.create.descriptor\00", align 1
@.str.297 = private unnamed_addr constant [64 x i8] c" must be unranked.memref of any non-token type values, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_18UnrankedMemRefTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.298 = private unnamed_addr constant [27 x i8] c"nvgpu.tma.fence.descriptor\00", align 1
@.str.299 = private unnamed_addr constant [30 x i8] c"nvgpu.tma.prefetch.descriptor\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4NVVM18SaturationModeAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.300 = private unnamed_addr constant [102 x i8] c"' failed to satisfy constraint: Describes the saturation mode whose value is one of {none, satfinite}\00", align 1
@.str.301 = private unnamed_addr constant [13 x i8] c"nvgpu.truncf\00", align 1
@.str.302 = private unnamed_addr constant [43 x i8] c" must be 32-bit signless integer, but got \00", align 1
@.str.303 = private unnamed_addr constant [36 x i8] c"nvgpu.warpgroup.generate.descriptor\00", align 1
@.str.304 = private unnamed_addr constant [52 x i8] c" must be Warpgroup matrix descriptor type, but got \00", align 1
@.str.305 = private unnamed_addr constant [37 x i8] c"nvgpu.warpgroup.mma.init.accumulator\00", align 1
@.str.306 = private unnamed_addr constant [66 x i8] c"' failed to satisfy constraint: 64-bit signless integer attribute\00", align 1
@.str.307 = private unnamed_addr constant [20 x i8] c"nvgpu.warpgroup.mma\00", align 1
@.str.308 = private unnamed_addr constant [26 x i8] c"nvgpu.warpgroup.mma.store\00", align 1
@.str.309 = private unnamed_addr constant [23 x i8] c"expected valid keyword\00", align 1
@.str.310 = private unnamed_addr constant [89 x i8] c"failed to parse NVGPU_MBarrierGroup parameter 'memorySpace' which is to be a `Attribute`\00", align 1
@.str.312 = private unnamed_addr constant [89 x i8] c"failed to parse NVGPU_MBarrierGroup parameter 'num_barriers' which is to be a `unsigned`\00", align 1
@.str.313 = private unnamed_addr constant [45 x i8] c"duplicate or unknown struct parameter name: \00", align 1
@.str.314 = private unnamed_addr constant [23 x i8] c"expected integer value\00", align 1
@.str.315 = private unnamed_addr constant [24 x i8] c"integer value too large\00", align 1
@.str.317 = private unnamed_addr constant [91 x i8] c"failed to parse NVGPU_TensorMapDescriptor parameter 'tensor' which is to be a `MemRefType`\00", align 1
@.str.318 = private unnamed_addr constant [117 x i8] c"failed to parse NVGPU_TensorMapDescriptor parameter 'swizzle' which is to be a `::mlir::nvgpu::TensorMapSwizzleKind`\00", align 1
@.str.319 = private unnamed_addr constant [117 x i8] c"failed to parse NVGPU_TensorMapDescriptor parameter 'l2promo' which is to be a `::mlir::nvgpu::TensorMapL2PromoKind`\00", align 1
@.str.320 = private unnamed_addr constant [109 x i8] c"failed to parse NVGPU_TensorMapDescriptor parameter 'oob' which is to be a `::mlir::nvgpu::TensorMapOOBKind`\00", align 1
@.str.321 = private unnamed_addr constant [123 x i8] c"failed to parse NVGPU_TensorMapDescriptor parameter 'interleave' which is to be a `::mlir::nvgpu::TensorMapInterleaveKind`\00", align 1
@.str.322 = private unnamed_addr constant [97 x i8] c"failed to parse NVGPU_WarpgroupMatrixDescriptor parameter 'tensor' which is to be a `MemRefType`\00", align 1
@.str.324 = private unnamed_addr constant [96 x i8] c"failed to parse NVGPU_WarpgroupAccumulator parameter 'fragmented' which is to be a `VectorType`\00", align 1
@.str.325 = private unnamed_addr constant [19 x i8] c"device.async.token\00", align 1
@.str.326 = private unnamed_addr constant [15 x i8] c"mbarrier.group\00", align 1
@.str.327 = private unnamed_addr constant [15 x i8] c"mbarrier.token\00", align 1
@.str.328 = private unnamed_addr constant [21 x i8] c"tensormap.descriptor\00", align 1
@.str.329 = private unnamed_addr constant [21 x i8] c"warpgroup.descriptor\00", align 1
@.str.330 = private unnamed_addr constant [22 x i8] c"warpgroup.accumulator\00", align 1
@_ZZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance = linkonce_odr global %"struct.mlir::SideEffects::DefaultResource" zeroinitializer, comdat, align 8
@_ZGVZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance = linkonce_odr global i64 0, comdat, align 8
@_ZTVN4mlir11SideEffects15DefaultResourceE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZN4mlir11SideEffects8ResourceD2Ev, ptr @_ZN4mlir11SideEffects15DefaultResourceD0Ev, ptr @_ZNK4mlir11SideEffects15DefaultResource7getNameEv, ptr @_ZNK4mlir11SideEffects15DefaultResource9getParentEv, ptr @_ZNK4mlir11SideEffects8Resource13isAddressableEv] }, comdat, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_11SideEffects15DefaultResourceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_11SideEffects15DefaultResourceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.331 = private unnamed_addr constant [85 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::SideEffects::DefaultResource]\00", align 1
@.str.332 = private unnamed_addr constant [10 x i8] c"<Default>\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"nvvm\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_4NVVM11NVVMDialectEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.334 = private unnamed_addr constant [25 x i8] c"nvgpu.device.async.token\00", align 1
@_ZN4mlir5nvgpu20DeviceAsyncTokenType4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.334, i64 24 }, comdat, align 8
@.str.336 = private unnamed_addr constant [21 x i8] c"nvgpu.mbarrier.group\00", align 1
@_ZN4mlir5nvgpu17MBarrierGroupType4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.336, i64 20 }, comdat, align 8
@.str.338 = private unnamed_addr constant [21 x i8] c"nvgpu.mbarrier.token\00", align 1
@_ZN4mlir5nvgpu17MBarrierTokenType4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.338, i64 20 }, comdat, align 8
@.str.340 = private unnamed_addr constant [27 x i8] c"nvgpu.tensormap.descriptor\00", align 1
@_ZN4mlir5nvgpu23TensorMapDescriptorType4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.340, i64 26 }, comdat, align 8
@.str.342 = private unnamed_addr constant [27 x i8] c"nvgpu.warpgroup.descriptor\00", align 1
@_ZN4mlir5nvgpu29WarpgroupMatrixDescriptorType4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.342, i64 26 }, comdat, align 8
@.str.344 = private unnamed_addr constant [28 x i8] c"nvgpu.warpgroup.accumulator\00", align 1
@_ZN4mlir5nvgpu24WarpgroupAccumulatorType4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.344, i64 27 }, comdat, align 8
@.str.346 = private unnamed_addr constant [14 x i8] c"nvgpu.swizzle\00", align 1
@_ZN4mlir5nvgpu24TensorMapSwizzleKindAttr4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.346, i64 13 }, comdat, align 8
@.str.348 = private unnamed_addr constant [14 x i8] c"nvgpu.l2promo\00", align 1
@_ZN4mlir5nvgpu24TensorMapL2PromoKindAttr4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.348, i64 13 }, comdat, align 8
@.str.350 = private unnamed_addr constant [10 x i8] c"nvgpu.oob\00", align 1
@_ZN4mlir5nvgpu20TensorMapOOBKindAttr4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.350, i64 9 }, comdat, align 8
@.str.352 = private unnamed_addr constant [17 x i8] c"nvgpu.interleave\00", align 1
@_ZN4mlir5nvgpu27TensorMapInterleaveKindAttr4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.352, i64 16 }, comdat, align 8
@.str.354 = private unnamed_addr constant [24 x i8] c"nvgpu.rcp_rounding_mode\00", align 1
@_ZN4mlir5nvgpu19RcpRoundingModeAttr4nameE = linkonce_odr local_unnamed_addr constant { ptr, i64 } { ptr @.str.354, i64 23 }, comdat, align 8
@_ZTVN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEEE = linkonce_odr unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr null, ptr @_ZN4mlir13OperationName4ImplD2Ev, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEED0Ev, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE8foldHookEPNS_9OperationEN4llvm8ArrayRefINS_9AttributeEEERNS7_15SmallVectorImplINS_12OpFoldResultEEE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE27getCanonicalizationPatternsERNS_17RewritePatternSetEPNS_11MLIRContextE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE8hasTraitENS_6TypeIDE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE18getParseAssemblyFnEv, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE20populateDefaultAttrsERKNS_13OperationNameERNS_13NamedAttrListE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE13printAssemblyEPNS_9OperationERNS_12OpAsmPrinterEN4llvm9StringRefE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE16verifyInvariantsEPNS_9OperationE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE22verifyRegionInvariantsEPNS_9OperationE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE15getInherentAttrEPNS_9OperationEN4llvm9StringRefE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE15setInherentAttrEPNS_9OperationENS_10StringAttrENS_9AttributeE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE21populateInherentAttrsEPNS_9OperationERNS_13NamedAttrListE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE21getOpPropertyByteSizeEv, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE14initPropertiesENS_13OperationNameENS_11PropertyRefES6_, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE16deletePropertiesENS_11PropertyRefE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE25populateDefaultPropertiesENS_13OperationNameENS_11PropertyRefE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE21setPropertiesFromAttrENS_13OperationNameENS_11PropertyRefENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE19getPropertiesAsAttrEPNS_9OperationE, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE14copyPropertiesENS_11PropertyRefES5_, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE17comparePropertiesENS_11PropertyRefES5_, ptr @_ZN4mlir23RegisteredOperationName5ModelINS_5nvgpu17DeviceAsyncCopyOpEE14hashPropertiesENS_11PropertyRefE] }, comdat, align 8
@_ZZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_19BytecodeOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.356 = private unnamed_addr constant [76 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::BytecodeOpInterface]\00", align 1
@.str.357 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.358 = private unnamed_addr constant [23 x i8] c"' op inferred type(s) \00", align 1
@.str.359 = private unnamed_addr constant [52 x i8] c" are incompatible with return type(s) of operation \00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_20InferTypeOpInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
end_hunk_0
begin_hunk_1_@_ZN4mlir5nvgpu6ExtfOp5printERNS_12OpAsmPrinterE:bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !176
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.n, %bb.o
  %i.cp = load ptr, ptr %1, align 8, !tbaa !55
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef nonnull align 8 dereferenceable(48) ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !10 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !176 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !175
  %.not.i.i32 = icmp ult ptr %i.cu, %i.cw
  br i1 %.not.i.i32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.cx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cs, i8 noundef zeroext 32) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit33

bb.q:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store ptr %i.cy, ptr %i.ct, align 8, !tbaa !176
  store i8 32, ptr %i.cu, align 1, !tbaa !86
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit33

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit33: ; preds = %bb.p, %bb.q
  %i.cz = load ptr, ptr %0, align 8, !tbaa !89
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !93
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %.sroa.0.0.copyload.i.i.i.i35 = load ptr, ptr %i.dc, align 8, !tbaa !95
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i35, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.dd, align 8
  %i.de = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = load ptr, ptr %1, align 8, !tbaa !55
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.df) #29
  %i.dj = load ptr, ptr %1, align 8, !tbaa !55
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = call noundef nonnull align 8 dereferenceable(48) ptr %i.dl(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !10 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 32 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !176 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !175
  %.not.i.i36 = icmp ult ptr %i.do, %i.dq
  br i1 %.not.i.i36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit33
  %i.dr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.dm, i8 noundef zeroext 32) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit37

bb.s:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit33
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store ptr %i.ds, ptr %i.dn, align 8, !tbaa !176
  store i8 32, ptr %i.do, align 1, !tbaa !86
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit37

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit37: ; preds = %bb.r, %bb.s
  %i.dt = load ptr, ptr %1, align 8, !tbaa !55
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = call noundef nonnull align 8 dereferenceable(48) ptr %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !16 ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !175
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 32 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !176 ; 2 uses
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp ult i64 %i.ed, 2
  br i1 %i.ee, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit37
  %i.ef = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull @.str.131, i64 noundef 2) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.u:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit37
  store i16 28532, ptr %i.ea, align 1
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !176
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 2
  store ptr %i.eh, ptr %i.dz, align 8, !tbaa !176
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.t, %bb.u
  %i.ei = load ptr, ptr %1, align 8, !tbaa !55
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = call noundef nonnull align 8 dereferenceable(48) ptr %i.ek(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !10 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !176 ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !175
  %.not.i.i39 = icmp ult ptr %i.en, %i.ep
  br i1 %.not.i.i39, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.eq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.el, i8 noundef zeroext 32) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40

bb.w:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA3_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  store ptr %i.er, ptr %i.em, align 8, !tbaa !176
  store i8 32, ptr %i.en, align 1, !tbaa !86
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40: ; preds = %bb.v, %bb.w
  %i.es = load ptr, ptr %0, align 8, !tbaa !89
  %i.et = getelementptr inbounds i8, ptr %i.es, i64 -16
  %i.eu = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 noundef 0) #29
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.0.copyload.i.i.i.i.i41 = load i64, ptr %i.ev, align 8
  %i.ew = and i64 %.0.copyload.i.i.i.i.i41, -8
  %i.ex = inttoptr i64 %i.ew to ptr
  %i.ey = load ptr, ptr %1, align 8, !tbaa !55
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.ex) #29
  %i.fb = load ptr, ptr %3, align 8, !tbaa !120   ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.r
  br i1 %i.fc, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40
  call void @free(ptr noundef %i.fb) #29
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir5nvgpu6ExtfOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu6detail28LdMatrixOpGenericAdaptorBaseC2ENS0_10LdMatrixOpE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !234
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %i.m = load i32, ptr %i.g, align 4              ; 3 uses
  %i.n = and i32 %i.m, 8388607                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.n to i64
  %i.q = lshr i32 %i.m, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r
  %i.t = lshr i32 %i.m, 21
  %i.u = and i32 %i.t, 2040
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !248
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir5nvgpu6detail28LdMatrixOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !551

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !552
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir5nvgpu6detail28LdMatrixOpGenericAdaptorBase12getTransposeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::BoolAttr", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !125
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.b = call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4mlir5nvgpu6detail28LdMatrixOpGenericAdaptorBase11getNumTilesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !125
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.b = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp ult i32 %i.d, 65
  %i.f = load ptr, ptr %i.b, align 8
  %spec.select.i = select i1 %i.e, ptr %i.b, ptr %i.f
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !86
  %i.g = trunc i64 %.0.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu17LdMatrixOpAdaptorC2ENS0_10LdMatrixOpE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #29
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = load i32, ptr %i.a, align 4              ; 3 uses
  %i.v = and i32 %i.u, 8388607                    ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4mlir5nvgpu24LdMatrixOpGenericAdaptorINS_10ValueRangeEEC2INS0_10LdMatrixOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = lshr i32 %i.u, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.y, 1
  %i.z = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.z
  %i.ab = lshr i32 %i.u, 21
  %i.ac = and i32 %i.ab, 2040
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !248
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ah
  br label %_ZN4mlir5nvgpu24LdMatrixOpGenericAdaptorINS_10ValueRangeEEC2INS0_10LdMatrixOpEvEES2_T_.exit

_ZN4mlir5nvgpu24LdMatrixOpGenericAdaptorINS_10ValueRangeEEC2INS0_10LdMatrixOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.i, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5nvgpu17LdMatrixOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %7 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !98
  store ptr @.str.145, ptr %3, align 8, !tbaa !86
  store i8 3, ptr %i.e, align 8, !tbaa !99
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #29
  %i.g = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #29
  %i.h = load ptr, ptr %2, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !108, !range !109, !noundef !110
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 8, !tbaa !108
  br i1 %i.k, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.l) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !98
  store ptr @.str.146, ptr %5, align 8, !tbaa !86
  store i8 3, ptr %i.p, align 8, !tbaa !99
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #29
  %i.r = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #29
  %i.s = load ptr, ptr %4, align 8, !tbaa !107
  %.not.i8 = icmp eq ptr %i.s, null
  br i1 %.not.i8, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !108, !range !109, !noundef !110
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 8, !tbaa !108
  br i1 %i.v, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit9

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.w) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit9

_ZN4mlir18InFlightDiagnosticD2Ev.exit9:           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store ptr %i.c, ptr %7, align 8
  %i.x = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #29
  store ptr %i.x, ptr %6, align 8
  %i.y = call noundef zeroext i1 @_ZNK4mlir4Type17isSignlessIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 32) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br i1 %i.y, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 33
  store i8 1, ptr %i.aa, align 1, !tbaa !98
  store ptr @.str.148, ptr %9, align 8, !tbaa !86
  store i8 3, ptr %i.z, align 8, !tbaa !99
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %9) #29
  %i.ab = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #29
  %i.ac = load ptr, ptr %8, align 8, !tbaa !107
  %.not.i12 = icmp eq ptr %i.ac, null
  br i1 %.not.i12, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !108, !range !109, !noundef !110
  %i.af = trunc nuw i8 %i.ae to i1
  store i8 0, ptr %i.ad, align 8, !tbaa !108
  br i1 %i.af, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit13

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ag) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit13

_ZN4mlir18InFlightDiagnosticD2Ev.exit13:          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.p

bb.p:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit9, %_ZN4mlir18InFlightDiagnosticD2Ev.exit13, %bb.k, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.05.1 = phi i8 [ %i.g, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.r, %_ZN4mlir18InFlightDiagnosticD2Ev.exit9 ], [ %i.ab, %_ZN4mlir18InFlightDiagnosticD2Ev.exit13 ], [ 1, %bb.k ]
  ret i8 %.sroa.05.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir5nvgpu10LdMatrixOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !553

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
  %i.g = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !152
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !554
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu10LdMatrixOp17getIndicesMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !89     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir5nvgpu10LdMatrixOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !124

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir5nvgpu10LdMatrixOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir5nvgpu10LdMatrixOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %._crit_edge.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5nvgpu10LdMatrixOp21setPropertiesFromAttrERNS0_6detail28LdMatrixOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %9 = alloca %"class.mlir::DictionaryAttr", align 8 ; 5 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %11 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.a = load ptr, ptr %1, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %9, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #29, !inline_history !2
  %i.e = load ptr, ptr %10, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store i32 3, ptr %8, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.116, ptr %i.g, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !118
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !119

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !117
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pr = load ptr, ptr %10, align 8, !tbaa !107
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !108, !range !109, !noundef !110
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !108
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr nonnull @.str.149, i64 8) #29 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i12, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, i64 noundef %3) #29, !inline_history !2
  %i.z = load ptr, ptr %11, align 8, !tbaa !107
  %.not.i.i14 = icmp eq ptr %i.z, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  store i32 3, ptr %7, align 8, !tbaa !113
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.150, ptr %i.ab, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 53, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !118
  %.not.i.i.i.i.i16 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i16, label %bb.n, label %bb.m, !prof !119

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA54_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !120
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !117
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA54_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA54_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %.pr46 = load ptr, ptr %11, align 8, !tbaa !107
  %.not.i.i17 = icmp eq ptr %.pr46, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA54_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %i.u) #29
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !118
  %.not.i.i.i.i.i18 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i18, label %bb.q, label %bb.p, !prof !119

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !120
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !117
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  %.pr48 = load ptr, ptr %11, align 8, !tbaa !107
  %.not.i19 = icmp eq ptr %.pr48, null
  br i1 %.not.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

end_hunk_1
begin_hunk_2_@_ZN4mlir5nvgpu15TmaAsyncStoreOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE:bb.a
  call void @_ZN4mlir11SideEffects15DefaultResourceC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance), !inline_history !17
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance) #29, !inline_history !17
  br label %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit

_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit: ; preds = %_ZN4mlir11SideEffects6Effect4BaseINS_13MemoryEffects4ReadENS3_6EffectEE3getEv.exit, %bb.e, %bb.f
  store ptr @_ZZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance, ptr %i.e, align 8, !tbaa !289
  %i.ap = load i32, ptr %i.s, align 8, !tbaa !117 ; 2 uses
  %i.aq = load i32, ptr %i.t, align 4, !tbaa !118
  %.not.i17 = icmp ult i32 %i.ap, %i.aq
  br i1 %.not.i17, label %bb.h, label %bb.g, !prof !119

bb.g:                                             ; preds = %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit
  %i.ar = call noundef nonnull align 8 dereferenceable(37) ptr @_ZN4llvm23SmallVectorTemplateBaseIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEELb1EE18growAndEmplaceBackIJPNS4_4ReadEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_4ReadEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit

bb.h:                                             ; preds = %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit
  %i.as = zext i32 %i.ap to i64
  %i.at = load ptr, ptr %1, align 8, !tbaa !120
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.as ; 7 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !305
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !287
  %i.ax = load i32, ptr %i.c, align 4, !tbaa !90
  %i.ay = load i8, ptr %i.d, align 1, !tbaa !222, !range !109, !noundef !110
  store ptr %i.av, ptr %i.au, align 8, !tbaa !300
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr @_ZZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance, ptr %i.az, align 8, !tbaa !301
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = or i64 %i.bb, 2
  store i64 %i.bc, ptr %i.ba, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr null, ptr %i.bd, align 8, !tbaa !123
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  store i32 %i.ax, ptr %i.be, align 8, !tbaa !302
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  store i8 %i.ay, ptr %i.bf, align 4, !tbaa !303
  call void @_ZN4mlir11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEE24checkResourceAllowsValueEv(ptr noundef nonnull align 8 dereferenceable(37) %i.au)
  %i.bg = load i32, ptr %i.s, align 8, !tbaa !117
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.s, align 8, !tbaa !117
  br label %_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_4ReadEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit

_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_4ReadEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !583

._crit_edge26:                                    ; preds = %_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_5WriteEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit, %._crit_edge
  ret void

bb.i:                                             ; preds = %.lr.ph25, %_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_5WriteEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit
  %indvars.iv28 = phi i64 [ %i.ae, %.lr.ph25 ], [ %indvars.iv.next29, %_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_5WriteEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.bi = load atomic i8, ptr @_ZGVZN4mlir11SideEffects6Effect3getINS_13MemoryEffects5WriteEEEPT_vE8instance acquire, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.j, label %_ZN4mlir11SideEffects6Effect4BaseINS_13MemoryEffects5WriteENS3_6EffectEE3getEv.exit, !prof !75

bb.j:                                             ; preds = %bb.i
  %i.bk = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir11SideEffects6Effect3getINS_13MemoryEffects5WriteEEEPT_vE8instance) #29
  %.not.i.i18 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i18, label %_ZN4mlir11SideEffects6Effect4BaseINS_13MemoryEffects5WriteENS3_6EffectEE3getEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN4mlir13MemoryEffects5WriteC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4mlir11SideEffects6Effect3getINS_13MemoryEffects5WriteEEEPT_vE8instance)
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir11SideEffects6Effect3getINS_13MemoryEffects5WriteEEEPT_vE8instance) #29
  br label %_ZN4mlir11SideEffects6Effect4BaseINS_13MemoryEffects5WriteENS3_6EffectEE3getEv.exit

_ZN4mlir11SideEffects6Effect4BaseINS_13MemoryEffects5WriteENS3_6EffectEE3getEv.exit: ; preds = %bb.i, %bb.j, %bb.k
  store ptr @_ZZN4mlir11SideEffects6Effect3getINS_13MemoryEffects5WriteEEEPT_vE8instance, ptr %i.f, align 8, !tbaa !286
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  %i.bl = load ptr, ptr %0, align 8, !tbaa !89
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !93
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %indvars.iv28
  store ptr %i.bo, ptr %i.g, align 8, !tbaa !287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  store i32 0, ptr %i.h, align 4, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  store i8 1, ptr %i.i, align 1, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  %i.bp = load atomic i8, ptr @_ZGVZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance acquire, align 8
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.l, label %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit20, !prof !75

bb.l:                                             ; preds = %_ZN4mlir11SideEffects6Effect4BaseINS_13MemoryEffects5WriteENS3_6EffectEE3getEv.exit
  %i.br = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance) #29, !inline_history !17
  %.not.i19 = icmp eq i32 %i.br, 0
  br i1 %.not.i19, label %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit20, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4mlir11SideEffects15DefaultResourceC2Ev(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance), !inline_history !17
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance) #29, !inline_history !17
  br label %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit20

_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit20: ; preds = %_ZN4mlir11SideEffects6Effect4BaseINS_13MemoryEffects5WriteENS3_6EffectEE3getEv.exit, %bb.l, %bb.m
  store ptr @_ZZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance, ptr %i.j, align 8, !tbaa !289
  %i.bs = load i32, ptr %i.ac, align 8, !tbaa !117 ; 2 uses
  %i.bt = load i32, ptr %i.ad, align 4, !tbaa !118
  %.not.i21 = icmp ult i32 %i.bs, %i.bt
  br i1 %.not.i21, label %bb.o, label %bb.n, !prof !119

bb.n:                                             ; preds = %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit20
  %i.bu = call noundef nonnull align 8 dereferenceable(37) ptr @_ZN4llvm23SmallVectorTemplateBaseIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEELb1EE18growAndEmplaceBackIJPNS4_5WriteEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 0 uses
  br label %_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_5WriteEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit

bb.o:                                             ; preds = %_ZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEv.exit20
  %i.bv = zext i32 %i.bs to i64
  %i.bw = load ptr, ptr %1, align 8, !tbaa !120
  %i.bx = getelementptr inbounds nuw [40 x i8], ptr %i.bw, i64 %i.bv ; 7 uses
  %i.by = load ptr, ptr %i.f, align 8, !tbaa !286
  %i.bz = load ptr, ptr %i.g, align 8, !tbaa !287
  %i.ca = load i32, ptr %i.h, align 4, !tbaa !90
  %i.cb = load i8, ptr %i.i, align 1, !tbaa !222, !range !109, !noundef !110
  store ptr %i.by, ptr %i.bx, align 8, !tbaa !300
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr @_ZZN4mlir11SideEffects8Resource4BaseINS0_15DefaultResourceES1_E3getEvE8instance, ptr %i.cc, align 8, !tbaa !301
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = or i64 %i.ce, 2
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr null, ptr %i.cg, align 8, !tbaa !123
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i32 %i.ca, ptr %i.ch, align 8, !tbaa !302
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  store i8 %i.cb, ptr %i.ci, align 4, !tbaa !303
  call void @_ZN4mlir11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEE24checkResourceAllowsValueEv(ptr noundef nonnull align 8 dereferenceable(37) %i.bx)
  %i.cj = load i32, ptr %i.ac, align 8, !tbaa !117
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ac, align 8, !tbaa !117
  br label %_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_5WriteEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit

_ZN4llvm15SmallVectorImplIN4mlir11SideEffects14EffectInstanceINS1_13MemoryEffects6EffectEEEE12emplace_backIJPNS4_5WriteEPNS1_9OpOperandEibPNS2_15DefaultResourceEEEERS6_DpOT_.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next29 to i32
  %exitcond31.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond31.not, label %._crit_edge26, label %bb.i, !llvm.loop !584
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu6detail39TmaCreateDescriptorOpGenericAdaptorBaseC2ENS0_21TmaCreateDescriptorOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !234
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
  %i.t = load i32, ptr %i.s, align 8, !tbaa !248
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir5nvgpu6detail39TmaCreateDescriptorOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !585

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !586
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu28TmaCreateDescriptorOpAdaptorC2ENS0_21TmaCreateDescriptorOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #29
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !234
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607                    ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4mlir5nvgpu35TmaCreateDescriptorOpGenericAdaptorINS_10ValueRangeEEC2INS0_21TmaCreateDescriptorOpEvEES2_T_.exit, label %bb.c

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
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !248
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  br label %_ZN4mlir5nvgpu35TmaCreateDescriptorOpGenericAdaptorINS_10ValueRangeEEC2INS0_21TmaCreateDescriptorOpEvEES2_T_.exit

_ZN4mlir5nvgpu35TmaCreateDescriptorOpGenericAdaptorINS_10ValueRangeEEC2INS0_21TmaCreateDescriptorOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir5nvgpu28TmaCreateDescriptorOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir5nvgpu21TmaCreateDescriptorOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !587

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
  %i.g = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !152
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !588
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu21TmaCreateDescriptorOp23getBoxDimensionsMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !89     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir5nvgpu21TmaCreateDescriptorOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !124

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir5nvgpu21TmaCreateDescriptorOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir5nvgpu21TmaCreateDescriptorOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %._crit_edge.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5nvgpu21TmaCreateDescriptorOp21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !76
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, i64 noundef %3) #29, !inline_history !2
  %i.c = load ptr, ptr %5, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 3, ptr %4, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.116, ptr %i.e, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !118
  %.not.i.i.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !119

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !117
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.pr = load ptr, ptr %5, align 8, !tbaa !107
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !108, !range !109, !noundef !110
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !108
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir5nvgpu21TmaCreateDescriptorOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #8 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir5nvgpu21TmaCreateDescriptorOp21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.2072", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #29
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir5nvgpu21TmaCreateDescriptorOp15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir5nvgpu21TmaCreateDescriptorOp15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir5nvgpu21TmaCreateDescriptorOp21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir5nvgpu21TmaCreateDescriptorOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #8 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu21TmaCreateDescriptorOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3, i64 %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %3, ptr %6, align 8
  %i.a = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #29
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %4, i64 %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !117  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !118
  %.not = icmp ult i32 %i.d, %i.f
  br i1 %.not, label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = zext i32 %i.d to i64
  %i.h = add nuw nsw i64 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.i, i64 noundef %i.h, i64 noundef 8) #29
  %.pre8.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !117
  br label %_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit

_ZN4mlir14OperationState8addTypesEN4llvm8ArrayRefINS_4TypeEEE.exit: ; preds = %bb.a, %bb.b
  %.pre8.i.i = phi i32 [ %i.d, %bb.a ], [ %.pre8.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.k = zext i32 %.pre8.i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store ptr %2, ptr %i.l, align 1
  %.pre.i.i = load i32, ptr %i.c, align 8, !tbaa !117
  %i.m = add i32 %.pre.i.i, 1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5nvgpu21TmaCreateDescriptorOp6createERNS_9OpBuilderENS_8LocationENS_4TypeENS_5ValueENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3, i64 %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %7 = alloca %"struct.mlir::OperationState", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %7, ptr %1, ptr nonnull @.str.296, i64 27) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %3, ptr %6, align 8
  %i.a = ptrtoint ptr %6 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %i.a, i64 1) #29
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %7, i64 %4, i64 %5) #29
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !117  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 76
  %i.f = load i32, ptr %i.e, align 4, !tbaa !118
  %.not.i = icmp ult i32 %i.d, %i.f
  br i1 %.not.i, label %_ZN4mlir5nvgpu21TmaCreateDescriptorOp5buildERNS_9OpBuilderERNS_14OperationStateENS_4TypeENS_5ValueENS_10ValueRangeE.exit, label %bb.b

end_hunk_2
begin_hunk_3_@_ZN4mlir5nvgpu10TmaFenceOp5printERNS_12OpAsmPrinterE:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !176 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !175
  %.not.i.i12 = icmp ult ptr %i.ak, %i.am
  br i1 %.not.i.i12, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.an = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 noundef zeroext 32) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit13

bb.e:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !176
  store i8 32, ptr %i.ak, align 1, !tbaa !86
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit13

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit13: ; preds = %bb.d, %bb.e
  %i.ap = load ptr, ptr %1, align 8, !tbaa !55
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !12 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !175
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !176 ; 2 uses
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit13
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.135, i64 noundef 1) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.g:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit13
  store i8 58, ptr %i.aw, align 1
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !176
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  store ptr %i.ba, ptr %i.av, align 8, !tbaa !176
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.f, %bb.g
  %i.bb = load ptr, ptr %1, align 8, !tbaa !55
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef nonnull align 8 dereferenceable(48) ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !10 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !176 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !175
  %.not.i.i14 = icmp ult ptr %i.bg, %i.bi
  br i1 %.not.i.i14, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.be, i8 noundef zeroext 32) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15

bb.i:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !176
  store i8 32, ptr %i.bg, align 1, !tbaa !86
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15: ; preds = %bb.h, %bb.i
  %i.bl = load ptr, ptr %0, align 8, !tbaa !89
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !93
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.0.0.copyload.i.i.i.i17 = load ptr, ptr %i.bo, align 8, !tbaa !95
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i17, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bp, align 8
  %i.bq = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 3 uses
  %.not = icmp eq i64 %i.bq, 0
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.br, ptr %2, align 8
  %i.bs = load ptr, ptr %1, align 8, !tbaa !55
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.br) #29, !inline_history !25
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %1, align 8, !tbaa !55
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !25 ; 6 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !55
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef i64 %i.cd(ptr noundef nonnull align 8 dereferenceable(48) %i.ca) #29, !inline_history !26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !176
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !314
  %i.cj = ptrtoint ptr %i.cg to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = add i64 %i.ce, %i.cj
  %i.cm = sub i64 %i.cl, %i.ck
  call void @_ZNK4mlir5nvgpu23TensorMapDescriptorType5printERNS_10AsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(48) %i.ca) #29, !inline_history !26
  %i.cr = load ptr, ptr %i.cf, align 8, !tbaa !176
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !314
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = add i64 %i.cq, %i.ct
  %i.cw = sub i64 %i.cv, %i.cu
  %.not.i = icmp eq i64 %i.cm, %i.cw
  br i1 %.not.i, label %bb.l, label %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i18 = load ptr, ptr %2, align 8, !tbaa !127
  %i.cx = load ptr, ptr %1, align 8, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i18) #29, !inline_history !27
  br label %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit

_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit: ; preds = %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit15
  %i.da = load ptr, ptr %1, align 8, !tbaa !55
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.br) #29, !inline_history !24
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit
  %i.dd = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.r
  br i1 %i.de, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef %i.dd) #29
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu6detail31TmaPrefetchOpGenericAdaptorBaseC2ENS0_13TmaPrefetchOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !234
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
  %i.t = load i32, ptr %i.s, align 8, !tbaa !248
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.u
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir5nvgpu6detail31TmaPrefetchOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !590

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !591
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu20TmaPrefetchOpAdaptorC2ENS0_13TmaPrefetchOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #29
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !234
  %i.o = load i32, ptr %i.a, align 4              ; 3 uses
  %i.p = and i32 %i.o, 8388607                    ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %_ZN4mlir5nvgpu27TmaPrefetchOpGenericAdaptorINS_10ValueRangeEEC2INS0_13TmaPrefetchOpEvEES2_T_.exit, label %bb.c

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
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !248
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ac
  br label %_ZN4mlir5nvgpu27TmaPrefetchOpGenericAdaptorINS_10ValueRangeEEC2INS0_13TmaPrefetchOpEvEES2_T_.exit

_ZN4mlir5nvgpu27TmaPrefetchOpGenericAdaptorINS_10ValueRangeEEC2INS0_13TmaPrefetchOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ad, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.af, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir5nvgpu20TmaPrefetchOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir5nvgpu13TmaPrefetchOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !592

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
  %i.g = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !152
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !593
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu13TmaPrefetchOp19getPredicateMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !89     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir5nvgpu13TmaPrefetchOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !124

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir5nvgpu13TmaPrefetchOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir5nvgpu13TmaPrefetchOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %._crit_edge.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5nvgpu13TmaPrefetchOp21setPropertiesFromAttrERNS_15EmptyPropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readonly captures(none) %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %5 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !76
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %5, i64 noundef %3) #29, !inline_history !2
  %i.c = load ptr, ptr %5, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store i32 3, ptr %4, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.116, ptr %i.e, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !118
  %.not.i.i.i.i.i = icmp ult i32 %i.g, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !119

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.j = zext i32 %i.g to i64
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.m = load i32, ptr %i.f, align 8, !tbaa !117
  %i.n = add i32 %i.m, 1
  store i32 %i.n, ptr %i.f, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %.pr = load ptr, ptr %5, align 8, !tbaa !107
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %5) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !108, !range !109, !noundef !110
  %i.q = trunc nuw i8 %i.p to i1
  store i8 0, ptr %i.o, align 8, !tbaa !108
  br i1 %i.q, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.r) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.0.0 = phi i8 [ 0, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN4mlir5nvgpu13TmaPrefetchOp19getPropertiesAsAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #8 align 2 {
_ZN4llvm11SmallVectorIN4mlir14NamedAttributeELj3EED2Ev.exit:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZN4mlir5nvgpu13TmaPrefetchOp21computePropertiesHashERKNS_15EmptyPropertiesE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::array.2072", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = call noundef i64 @_ZN4llvm11xxh3_64bitsEPKhm(ptr noundef nonnull %1, i64 noundef 0) #29
  %i.b = xor i64 %i.a, -49064778989728563
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i8 } @_ZN4mlir5nvgpu13TmaPrefetchOp15getInherentAttrEPNS_11MLIRContextERKNS_15EmptyPropertiesEN4llvm9StringRefE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #8 align 2 {
bb.a:
  ret { ptr, i8 } { ptr undef, i8 0 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir5nvgpu13TmaPrefetchOp15setInherentAttrERNS_15EmptyPropertiesEN4llvm9StringRefENS_9AttributeE(ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %0, ptr nofree readnone captures(none) %1, i64 %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir5nvgpu13TmaPrefetchOp21populateInherentAttrsEPNS_11MLIRContextERKNS_15EmptyPropertiesERNS_13NamedAttrListE(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef nonnull readnone align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %2) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir5nvgpu13TmaPrefetchOp19verifyInherentAttrsENS_13OperationNameERNS_13NamedAttrListEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %1, ptr nofree readnone captures(none) %2, i64 %3) local_unnamed_addr #8 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu13TmaPrefetchOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueES6_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::Value", align 8       ; 2 uses
  %5 = alloca %"class.mlir::Value", align 8       ; 2 uses
  store ptr %2, ptr %4, align 8
  store ptr %3, ptr %5, align 8
  %i.a = ptrtoint ptr %4 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.a, i64 1) #29
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %5 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %1, i64 %i.b, i64 1) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @_ZN4mlir5nvgpu13TmaPrefetchOp6createERNS_9OpBuilderENS_8LocationENS_5ValueES5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %5 = alloca %"class.mlir::Value", align 8       ; 4 uses
  %6 = alloca %"struct.mlir::OperationState", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @_ZN4mlir14OperationStateC1ENS_8LocationEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(304) %6, ptr %1, ptr nonnull @.str.299, i64 29) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %4, align 8
  store ptr %3, ptr %5, align 8
  %i.a = ptrtoint ptr %4 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %i.a, i64 1) #29
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZN4mlir5nvgpu13TmaPrefetchOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueES6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %5 to i64
  call void @_ZN4mlir14OperationState11addOperandsENS_10ValueRangeE(ptr noundef nonnull align 8 dereferenceable(304) %6, i64 %i.b, i64 1) #29
  br label %_ZN4mlir5nvgpu13TmaPrefetchOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueES6_.exit

_ZN4mlir5nvgpu13TmaPrefetchOp5buildERNS_9OpBuilderERNS_14OperationStateENS_5ValueES6_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.c = call noundef ptr @_ZN4mlir9OpBuilder6createERKNS_14OperationStateE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(304) %6) #29 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !261
  %i.g = icmp eq ptr %i.f, @_ZN4mlir6detail14TypeIDResolverINS_5nvgpu13TmaPrefetchOpEvE2idE
  %spec.select.i.i = select i1 %i.g, ptr %i.c, ptr null
  call void @_ZN4mlir14OperationStateD1Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret ptr %spec.select.i.i
end_hunk_3
begin_hunk_4_@_ZN4mlir5nvgpu13TmaPrefetchOp5printERNS_12OpAsmPrinterE:bb.a
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit36

bb.s:                                             ; preds = %_ZN4mlir5nvgpu13TmaPrefetchOp12getPredicateEv.exit.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store ptr %i.dw, ptr %i.dr, align 8, !tbaa !176
  store i8 32, ptr %i.ds, align 1, !tbaa !86
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit36

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit36: ; preds = %bb.r, %bb.s
  %i.dx = load ptr, ptr %1, align 8, !tbaa !55
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef nonnull align 8 dereferenceable(48) ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !12 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !175
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !176 ; 2 uses
  %i.ef = icmp eq ptr %i.ec, %i.ee
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit36
  %i.eg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, ptr noundef nonnull @.str.135, i64 noundef 1) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38

bb.u:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit36
  store i8 58, ptr %i.ee, align 1
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !176
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.ei, ptr %i.ed, align 8, !tbaa !176
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38: ; preds = %bb.t, %bb.u
  %i.ej = load ptr, ptr %1, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef nonnull align 8 dereferenceable(48) ptr %i.el(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !10 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !176 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !175
  %.not.i.i39 = icmp ult ptr %i.eo, %i.eq
  br i1 %.not.i.i39, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38
  %i.er = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.em, i8 noundef zeroext 32) #29 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40

bb.w:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit38
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  store ptr %i.es, ptr %i.en, align 8, !tbaa !176
  store i8 32, ptr %i.eo, align 1, !tbaa !86
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40: ; preds = %bb.v, %bb.w
  %i.et = load ptr, ptr %0, align 8, !tbaa !89
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 72
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !93
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %.sroa.0.0.copyload.i.i.i.i42 = load ptr, ptr %i.ew, align 8, !tbaa !95
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i42, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.ex, align 8
  %i.ey = and i64 %.0.copyload.i.i.i.i.i.i, -8    ; 2 uses
  %i.ez = inttoptr i64 %i.ey to ptr               ; 3 uses
  %.not57 = icmp eq i64 %i.ey, 0
  br i1 %.not57, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.ez, ptr %2, align 8
  %i.fa = load ptr, ptr %1, align 8, !tbaa !55
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 96
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = call i8 %i.fc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.ez) #29, !inline_history !25
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ff = load ptr, ptr %1, align 8, !tbaa !55
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef nonnull align 8 dereferenceable(48) ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %1) #29, !inline_history !25 ; 6 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !55
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 80
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = call noundef i64 %i.fl(ptr noundef nonnull align 8 dereferenceable(48) %i.fi) #29, !inline_history !26
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !176
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !314
  %i.fr = ptrtoint ptr %i.fo to i64
  %i.fs = ptrtoint ptr %i.fq to i64
  %i.ft = add i64 %i.fm, %i.fr
  %i.fu = sub i64 %i.ft, %i.fs
  call void @_ZNK4mlir5nvgpu23TensorMapDescriptorType5printERNS_10AsmPrinterE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.fv = load ptr, ptr %i.fi, align 8, !tbaa !55
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 80
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = call noundef i64 %i.fx(ptr noundef nonnull align 8 dereferenceable(48) %i.fi) #29, !inline_history !26
  %i.fz = load ptr, ptr %i.fn, align 8, !tbaa !176
  %i.ga = load ptr, ptr %i.fp, align 8, !tbaa !314
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = add i64 %i.fy, %i.gb
  %i.ge = sub i64 %i.gd, %i.gc
  %.not.i = icmp eq i64 %i.fu, %i.ge
  br i1 %.not.i, label %bb.z, label %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit

bb.z:                                             ; preds = %bb.y
  %.sroa.0.0.copyload.i43 = load ptr, ptr %2, align 8, !tbaa !127
  %i.gf = load ptr, ptr %1, align 8, !tbaa !55
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gh = load ptr, ptr %i.gg, align 8
  call void %i.gh(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %.sroa.0.0.copyload.i43) #29, !inline_history !27
  br label %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit

_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit: ; preds = %bb.x, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40
  %i.gi = load ptr, ptr %1, align 8, !tbaa !55
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 56
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gk(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.ez) #29, !inline_history !24
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN4mlir10AsmPrinter23printStrippedAttrOrTypeINS_5nvgpu23TensorMapDescriptorTypeETnPNSt9enable_ifIXsr23detect_has_print_methodIT_EE5valueEvE4typeELPv0EEEvS5_.exit
  %i.gl = load ptr, ptr %4, align 8, !tbaa !120   ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.da
  br i1 %i.gm, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.gl) #29
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBaseC2ENS0_8TruncfOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17), (24, 48)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !80
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !234
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = load i32, ptr %i.g, align 4              ; 3 uses
  %i.n = and i32 %i.m, 8388607                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN4mlir9Operation10getRegionsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.n to i64
  %i.q = lshr i32 %i.m, 23
  %.lobit.i.i.i.i.i.i.i.i.i = and i32 %i.q, 1
  %i.r = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r
  %i.t = lshr i32 %i.m, 21
  %i.u = and i32 %i.t, 2040
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !248
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !594

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !595
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBase10getRndAttrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBase6getRndEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::NVVM::FPRoundingModeAttr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  store ptr %i.b, ptr %1, align 8
  %i.c = call noundef i32 @_ZNK4mlir4NVVM18FPRoundingModeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBase10getSatAttrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBase6getSatEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::NVVM::SaturationModeAttr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  store ptr %i.b, ptr %1, align 8
  %i.c = call noundef i32 @_ZNK4mlir4NVVM18SaturationModeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i32 %i.c
}

declare noundef i32 @_ZNK4mlir4NVVM18SaturationModeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBase11getReluAttrEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4mlir5nvgpu6detail26TruncfOpGenericAdaptorBase7getReluEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::BoolAttr", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !123
  store ptr %i.b, ptr %1, align 8
  %i.c = call noundef zeroext i1 @_ZNK4mlir8BoolAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu15TruncfOpAdaptorC2ENS0_8TruncfOpE(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 17), (24, 48)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !152
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #29
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !234
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i32, ptr %i.a, align 4              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.p, 16777215
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = lshr i32 %i.p, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i = and i32 %i.r, 1
  %i.s = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.u = load i32, ptr %i.a, align 4              ; 3 uses
  %i.v = and i32 %i.u, 8388607                    ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEEC2INS0_8TruncfOpEvEES2_T_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4mlir9Operation11getOperandsEv.exit
  %i.x = zext nneg i32 %i.v to i64
  %i.y = lshr i32 %i.u, 23
  %.lobit.i.i.i.i.i.i.i.i.i.i.i = and i32 %i.y, 1
  %i.z = zext nneg i32 %.lobit.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.z
  %i.ab = lshr i32 %i.u, 21
  %i.ac = and i32 %i.ab, 2040
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !248
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ah
  br label %_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEEC2INS0_8TruncfOpEvEES2_T_.exit

_ZN4mlir5nvgpu22TruncfOpGenericAdaptorINS_10ValueRangeEEC2INS0_8TruncfOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #29
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.i, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir5nvgpu15TruncfOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::NVVM::SaturationModeAttr", align 8 ; 6 uses
  %3 = alloca %"class.mlir::NVVM::SaturationModeAttr", align 8 ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.c, ptr %2, align 8
  %i.d = call noundef i32 @_ZNK4mlir4NVVM18SaturationModeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #29
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.critedge8, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.c, ptr %3, align 8
  %i.f = call noundef i32 @_ZNK4mlir4NVVM18SaturationModeAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #29
  %.not16 = icmp eq i32 %i.f, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br i1 %.not16, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !98
  store ptr @.str.188, ptr %5, align 8, !tbaa !86
  store i8 3, ptr %i.g, align 8, !tbaa !99
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #29
  %i.i = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #29
  %i.j = load ptr, ptr %4, align 8, !tbaa !107
  %.not.i10 = icmp eq ptr %i.j, null
  br i1 %.not.i10, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !tbaa !108, !range !109, !noundef !110
  %i.m = trunc nuw i8 %i.l to i1
  store i8 0, ptr %i.k, align 8, !tbaa !108
  br i1 %i.m, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.n) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit11

_ZN4mlir18InFlightDiagnosticD2Ev.exit11:          ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.h

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.h

.critedge8:                                       ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %.critedge, %.critedge8, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11
  %.sroa.04.0 = phi i8 [ %i.i, %_ZN4mlir18InFlightDiagnosticD2Ev.exit11 ], [ 1, %.critedge8 ], [ 1, %.critedge ], [ 1, %bb.c ]
  ret i8 %.sroa.04.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir5nvgpu8TruncfOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #7 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !596

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
  %i.g = load ptr, ptr %0, align 8, !tbaa !89     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !124

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !152
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !597
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir5nvgpu8TruncfOp20getRandomBitsMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !89     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir5nvgpu8TruncfOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !124

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !152
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir5nvgpu8TruncfOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir5nvgpu8TruncfOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %._crit_edge.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir5nvgpu8TruncfOp21setPropertiesFromAttrERNS0_6detail26TruncfOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %7 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %8 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %9 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %10 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %11 = alloca %"class.mlir::DictionaryAttr", align 8 ; 6 uses
  %12 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %13 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %14 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  %15 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.a = load ptr, ptr %1, align 8, !tbaa !83
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %11, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %12, i64 noundef %3) #29, !inline_history !2
  %i.e = load ptr, ptr %12, align 8, !tbaa !107
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store i32 3, ptr %10, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.116, ptr %i.g, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !115
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !117  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !118
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !119

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %10)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !120
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !117
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %.pr = load ptr, ptr %12, align 8, !tbaa !107
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %12) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !108, !range !109, !noundef !110
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !108
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #29
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  br label %bb.au

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr nonnull @.str.141, i64 4) #29 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = call noundef zeroext i1 @_ZN4mlir8BoolAttr7classofENS_9AttributeE(ptr nonnull %i.u) #29
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = ptrtoint ptr %i.u to i64
  store i64 %i.w, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %13, i64 noundef %3) #29, !inline_history !2
  %i.x = load ptr, ptr %13, align 8, !tbaa !107
  %.not.i.i20 = icmp eq ptr %i.x, null
  br i1 %.not.i.i20, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store i32 3, ptr %9, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.142, ptr %i.z, align 8, !tbaa !114
  %.sroa.2.0..sroa_idx.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 49, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i21, align 8, !tbaa !115
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 6 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !117 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 36 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !118
  %.not.i.i.i.i.i22 = icmp ult i32 %i.ab, %i.ad
  br i1 %.not.i.i.i.i.i22, label %bb.n, label %bb.m, !prof !119

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %9)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ae = zext i32 %i.ab to i64
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !120
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false)
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !117
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  %.pr74 = load ptr, ptr %13, align 8, !tbaa !107
  %.not.i.i23 = icmp eq ptr %.pr74, null
  br i1 %.not.i.i23, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA50_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr nonnull %i.u) #29
  %i.aj = load i32, ptr %i.aa, align 8, !tbaa !117 ; 2 uses
  %i.ak = load i32, ptr %i.ac, align 4, !tbaa !118
  %.not.i.i.i.i.i24 = icmp ult i32 %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i24, label %bb.q, label %bb.p, !prof !119

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.al = zext i32 %i.aj to i64
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !120
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.ao = load i32, ptr %i.aa, align 8, !tbaa !117
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.aa, align 8, !tbaa !117
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  %.pr76 = load ptr, ptr %13, align 8, !tbaa !107
  %.not.i25 = icmp eq ptr %.pr76, null
  br i1 %.not.i25, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %13) #29
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

end_hunk_4
