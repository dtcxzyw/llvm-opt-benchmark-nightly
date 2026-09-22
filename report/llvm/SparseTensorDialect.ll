Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SparseTensorDialect?download=true
inline.NumInlined: 37170
inline.NumDeleted: 12811
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 56
begin_hunk_0
@.str.62 = private unnamed_addr constant [46 x i8] c"expected n_out_of_m to be the last level type\00", align 1
@.str.63 = private unnamed_addr constant [54 x i8] c"expected all dense lvlTypes before a n_out_of_m level\00", align 1
@.str.64 = private unnamed_addr constant [50 x i8] c"expected 1xm block structure for n_out_of_m level\00", align 1
@.str.65 = private unnamed_addr constant [59 x i8] c"expected only one blocked level with the same coefficients\00", align 1
@.str.66 = private unnamed_addr constant [80 x i8] c"expected coeffiencts of Affine expressions to be equal to m of n_out_of_m level\00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"expected a non-empty array for lvlTypes\00", align 1
@.str.68 = private unnamed_addr constant [52 x i8] c"level-rank mismatch between dimToLvl and lvlTypes: \00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c" != \00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"failed to infer lvlToDim from dimToLvl\00", align 1
@.str.71 = private unnamed_addr constant [47 x i8] c"expected lvlToDim to be an inverse of dimToLvl\00", align 1
@.str.72 = private unnamed_addr constant [34 x i8] c"unexpected dimToLvl mapping from \00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c" to \00", align 1
@.str.74 = private unnamed_addr constant [57 x i8] c"dimension-rank mismatch between dimSlices and dimToLvl: \00", align 1
@.str.75 = private unnamed_addr constant [56 x i8] c"dimSlices expected dimension-rank to match level-rank: \00", align 1
@.str.76 = private unnamed_addr constant [34 x i8] c"expected non-scalar sparse tensor\00", align 1
@.str.77 = private unnamed_addr constant [60 x i8] c"dimension-rank mismatch between encoding and tensor shape: \00", align 1
@.str.78 = private unnamed_addr constant [51 x i8] c"explicit value type mismatch between encoding and \00", align 1
@.str.79 = private unnamed_addr constant [22 x i8] c"tensor element type: \00", align 1
@.str.80 = private unnamed_addr constant [51 x i8] c"implicit value type mismatch between encoding and \00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"implicit value must be zero\00", align 1
@.str.82 = private unnamed_addr constant [45 x i8] c"output values and return value type mismatch\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"output levels and return levels type mismatch\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"unexpected conversion mismatch in rank\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"cannot convert to a sparse tensor slice\00", align 1
@.str.86 = private unnamed_addr constant [45 x i8] c"unexpected conversion mismatch in dimension \00", align 1
@.str.87 = private unnamed_addr constant [39 x i8] c"Coordinate rank mismatch with encoding\00", align 1
@.str.88 = private unnamed_addr constant [56 x i8] c"Level index exceeds the rank of the input sparse tensor\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"Level rank mismatch between source/dest tensors\00", align 1
@.str.90 = private unnamed_addr constant [48 x i8] c"Level type mismatch between source/dest tensors\00", align 1
@.str.91 = private unnamed_addr constant [51 x i8] c"Crd/Pos width mismatch between source/dest tensors\00", align 1
@.str.92 = private unnamed_addr constant [50 x i8] c"Element type mismatch between source/dest tensors\00", align 1
@.str.93 = private unnamed_addr constant [48 x i8] c"Level size mismatch between source/dest tensors\00", align 1
@.str.94 = private unnamed_addr constant [33 x i8] c"requested level is out of bounds\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"unexpected type for positions\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"unexpected type for coordinates\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"expected sparse tensor with a COO region\00", align 1
@.str.98 = private unnamed_addr constant [37 x i8] c"unexpected mismatch in element types\00", align 1
@.str.99 = private unnamed_addr constant [33 x i8] c"requested dimension out of bound\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"overlap\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.102 = private unnamed_addr constant [74 x i8] c"left=identity requires first argument to have the same type as the output\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.104 = private unnamed_addr constant [76 x i8] c"right=identity requires second argument to have the same type as the output\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"present\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.107 = private unnamed_addr constant [43 x i8] c"absent region cannot yield linalg argument\00", align 1
@.str.108 = private unnamed_addr constant [50 x i8] c"absent region cannot yield locally computed value\00", align 1
@.str.109 = private unnamed_addr constant [42 x i8] c"Need at least two tensors to concatenate.\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"Concat-dimension is out of bounds for dimension-rank ({0} >= {1})\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"Input tensor ${0} has dynamic shape\00", align 1
@.str.112 = private unnamed_addr constant [85 x i8] c"Input tensor ${0} has a different rank (rank={1}) from the output tensor (rank={2}).\00", align 1
@.str.113 = private unnamed_addr constant [125 x i8] c"The concatenation dimension of the output tensor should be the sum of all the concatenation dimensions of the input tensors.\00", align 1
@.str.114 = private unnamed_addr constant [67 x i8] c"All dimensions (expect for the concatenating one) should be equal.\00", align 1
@.str.115 = private unnamed_addr constant [26 x i8] c"n must be not less than 1\00", align 1
@.str.116 = private unnamed_addr constant [32 x i8] c"incorrect number of coordinates\00", align 1
@.str.117 = private unnamed_addr constant [56 x i8] c"Level traverse order does not match tensor's level rank\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"Unmatched number of arguments in the block\00", align 1
@.str.119 = private unnamed_addr constant [49 x i8] c"Mismatch in number of init arguments and results\00", align 1
@.str.120 = private unnamed_addr constant [48 x i8] c"Mismatch in types of init arguments and results\00", align 1
@.str.121 = private unnamed_addr constant [46 x i8] c"Mismatch in types of yield values and results\00", align 1
@.str.122 = private unnamed_addr constant [47 x i8] c"Expecting Index type for argument at index {0}\00", align 1
@.str.123 = private unnamed_addr constant [87 x i8] c"Unmatched element type between input tensor and block argument, expected:{0}, got: {1}\00", align 1
@.str.124 = private unnamed_addr constant [33 x i8] c"Expected COO sparse tensors only\00", align 1
@.str.125 = private unnamed_addr constant [51 x i8] c"Unmatched dim2lvl map between input and result COO\00", align 1
@.str.126 = private unnamed_addr constant [54 x i8] c"Unmatched storage format between input and result COO\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"Expected rank(perm_map) > 1, got {0}\00", align 1
@.str.130 = private unnamed_addr constant [36 x i8] c"Expected a permutation map, got {0}\00", align 1
@.str.131 = private unnamed_addr constant [52 x i8] c"Expected dimension(xy) >= n * (rank(perm_map) + ny)\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"Expected dimension(y) >= n\00", align 1
@.str.133 = private unnamed_addr constant [43 x i8] c"expected smaller level low than level high\00", align 1
@.str.134 = private unnamed_addr constant [67 x i8] c"parent iterator should be specified iff level lower bound equals 0\00", align 1
@.str.135 = private unnamed_addr constant [67 x i8] c"mismatch in parent iterator encoding and iteration space encoding.\00", align 1
@.str.136 = private unnamed_addr constant [87 x i8] c"parent iterator should be used to extract an iteration space from a consecutive level.\00", align 1
@.str.137 = private unnamed_addr constant [51 x i8] c"mismatch in tensor encoding and iterator encoding.\00", align 1
@.str.138 = private unnamed_addr constant [49 x i8] c"must use last-level iterator to extract values. \00", align 1
@.str.139 = private unnamed_addr constant [43 x i8] c"expected only one iterator/iteration space\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c" at(\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c" iter_args\00", align 1
@.str.145 = private unnamed_addr constant [46 x i8] c"mismatch in iterator and iteration space type\00", align 1
@.str.146 = private unnamed_addr constant [58 x i8] c"mismatch in number of basic block args and defined values\00", align 1
@.str.147 = private unnamed_addr constant [47 x i8] c"number mismatch between iter args and results.\00", align 1
@.str.148 = private unnamed_addr constant [24 x i8] c"types mismatch between \00", align 1
@.str.149 = private unnamed_addr constant [34 x i8] c"th iter operand and defined value\00", align 1
@.str.150 = private unnamed_addr constant [37 x i8] c"th iter region arg and defined value\00", align 1
@.str.151 = private unnamed_addr constant [33 x i8] c"th yield value and defined value\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"operandSegmentSizes\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"case\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"cases\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c" : (\00", align 1
@.str.157 = private unnamed_addr constant [6 x i8] c"case \00", align 1
@.str.158 = private unnamed_addr constant [50 x i8] c"number mismatch between iter args and results on \00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"th region\00", align 1
@.str.160 = private unnamed_addr constant [38 x i8] c"th iter operand and defined value on \00", align 1
@.str.161 = private unnamed_addr constant [41 x i8] c"th iter region arg and defined value on \00", align 1
@.str.162 = private unnamed_addr constant [37 x i8] c"th yield value and defined value on \00", align 1
@.str.163 = private unnamed_addr constant [27 x i8] c"contains duplicated cases.\00", align 1
@.str.164 = private unnamed_addr constant [70 x i8] c"'sparse_tensor.extract_iteration_space' op requires attribute 'hiLvl'\00", align 1
@.str.165 = private unnamed_addr constant [70 x i8] c"'sparse_tensor.extract_iteration_space' op requires attribute 'loLvl'\00", align 1
@.str.166 = private unnamed_addr constant [107 x i8] c"'sparse_tensor.extract_iteration_space' op attribute 'loLvl' failed to satisfy constraint: level attribute\00", align 1
@.str.167 = private unnamed_addr constant [107 x i8] c"'sparse_tensor.extract_iteration_space' op attribute 'hiLvl' failed to satisfy constraint: level attribute\00", align 1
@.str.168 = private unnamed_addr constant [42 x i8] c"expected DictionaryAttr to set properties\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"hiLvl\00", align 1
@.str.170 = private unnamed_addr constant [51 x i8] c"Invalid attribute `hiLvl` in property conversion: \00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"loLvl\00", align 1
@.str.172 = private unnamed_addr constant [51 x i8] c"Invalid attribute `loLvl` in property conversion: \00", align 1
@.str.173 = private unnamed_addr constant [28 x i8] c"Property conversion failed.\00", align 1
@.str.174 = private unnamed_addr constant [32 x i8] c"Failed to infer result type(s).\00", align 1
@.str.175 = private unnamed_addr constant [27 x i8] c"requires attribute 'hiLvl'\00", align 1
@.str.176 = private unnamed_addr constant [27 x i8] c"requires attribute 'loLvl'\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"operand\00", align 1
@.str.178 = private unnamed_addr constant [28 x i8] c"operand group starting at #\00", align 1
@.str.179 = private unnamed_addr constant [37 x i8] c" requires 0 or 1 element, but found \00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.182 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.183 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor18ExtractIterSpaceOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail36ExtractIterSpaceOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.184 = private unnamed_addr constant [65 x i8] c"failed to verify that result type matches element type of tensor\00", align 1
@.str.185 = private unnamed_addr constant [70 x i8] c"'tensor' must be sparse tensor of any non-token type values, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor12ExtractValOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.186 = private unnamed_addr constant [60 x i8] c"'sparse_tensor.iterate' op requires attribute 'crdUsedLvls'\00", align 1
@.str.187 = private unnamed_addr constant [100 x i8] c"'sparse_tensor.iterate' op attribute 'crdUsedLvls' failed to satisfy constraint: LevelSet attribute\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"crdUsedLvls\00", align 1
@.str.189 = private unnamed_addr constant [57 x i8] c"Invalid attribute `crdUsedLvls` in property conversion: \00", align 1
@.str.190 = private unnamed_addr constant [33 x i8] c"requires attribute 'crdUsedLvls'\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"region\00", align 1
@.str.192 = private unnamed_addr constant [72 x i8] c"expected key entry for crdUsedLvls in DictionaryAttr to set Properties.\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"unknown key '\00", align 1
@.str.194 = private unnamed_addr constant [37 x i8] c"' when parsing properties dictionary\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor9IterateOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail27IterateOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@__const._ZN4mlir13sparse_tensor10AssembleOp27getODSOperandIndexAndLengthEj.isVariadic = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@.str.195 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.196 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor10AssembleOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.199 = private unnamed_addr constant [14 x i8] c"left_identity\00", align 1
@.str.200 = private unnamed_addr constant [59 x i8] c"Invalid attribute `left_identity` in property conversion: \00", align 1
@.str.201 = private unnamed_addr constant [15 x i8] c"right_identity\00", align 1
@.str.202 = private unnamed_addr constant [60 x i8] c"Invalid attribute `right_identity` in property conversion: \00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"identity\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor8BinaryOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail26BinaryOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.207 = private unnamed_addr constant [56 x i8] c"'sparse_tensor.coiterate' op requires attribute 'cases'\00", align 1
@.str.208 = private unnamed_addr constant [62 x i8] c"'sparse_tensor.coiterate' op requires attribute 'crdUsedLvls'\00", align 1
@.str.209 = private unnamed_addr constant [102 x i8] c"'sparse_tensor.coiterate' op attribute 'crdUsedLvls' failed to satisfy constraint: LevelSet attribute\00", align 1
@.str.210 = private unnamed_addr constant [103 x i8] c"'sparse_tensor.coiterate' op attribute 'cases' failed to satisfy constraint: I64BitSet array attribute\00", align 1
@.str.211 = private unnamed_addr constant [51 x i8] c"Invalid attribute `cases` in property conversion: \00", align 1
@.str.212 = private unnamed_addr constant [22 x i8] c"operand_segment_sizes\00", align 1
@.str.213 = private unnamed_addr constant [46 x i8] c"size mismatch for operand/result_segment_size\00", align 1
@.str.214 = private unnamed_addr constant [27 x i8] c"requires attribute 'cases'\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"caseRegions\00", align 1
@.str.216 = private unnamed_addr constant [66 x i8] c"expected key entry for cases in DictionaryAttr to set Properties.\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor11CoIterateOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail29CoIterateOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@__const._ZN4mlir13sparse_tensor10CompressOp27getODSOperandIndexAndLengthEj.isVariadic = private unnamed_addr constant [6 x i8] c"\00\00\00\00\00\01", align 1
@.str.217 = private unnamed_addr constant [61 x i8] c"failed to verify that all of {tensor, result} have same type\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.219 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.220 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor10CompressOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.221 = private unnamed_addr constant [62 x i8] c"'sparse_tensor.concatenate' op requires attribute 'dimension'\00", align 1
@.str.222 = private unnamed_addr constant [103 x i8] c"'sparse_tensor.concatenate' op attribute 'dimension' failed to satisfy constraint: dimension attribute\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"dimension\00", align 1
@.str.224 = private unnamed_addr constant [55 x i8] c"Invalid attribute `dimension` in property conversion: \00", align 1
@.str.225 = private unnamed_addr constant [31 x i8] c"requires attribute 'dimension'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor13ConcatenateOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail31ConcatenateOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor9ConvertOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.226 = private unnamed_addr constant [64 x i8] c"'sparse_tensor.crd_translate' op requires attribute 'direction'\00", align 1
@.str.227 = private unnamed_addr constant [62 x i8] c"'sparse_tensor.crd_translate' op requires attribute 'encoder'\00", align 1
@.str.230 = private unnamed_addr constant [10 x i8] c"direction\00", align 1
@.str.231 = private unnamed_addr constant [55 x i8] c"Invalid attribute `direction` in property conversion: \00", align 1
@.str.232 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.233 = private unnamed_addr constant [53 x i8] c"Invalid attribute `encoder` in property conversion: \00", align 1
@.str.234 = private unnamed_addr constant [31 x i8] c"requires attribute 'direction'\00", align 1
@.str.235 = private unnamed_addr constant [29 x i8] c"requires attribute 'encoder'\00", align 1
@.str.236 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor14CrdTranslateOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail32CrdTranslateOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.237 = private unnamed_addr constant [11 x i8] c"ret_levels\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"ret_values\00", align 1
@.str.239 = private unnamed_addr constant [9 x i8] c"lvl_lens\00", align 1
@.str.240 = private unnamed_addr constant [8 x i8] c"val_len\00", align 1
@__const._ZN4mlir13sparse_tensor13DisassembleOp27getODSOperandIndexAndLengthEj.isVariadic = private unnamed_addr constant [3 x i8] c"\00\01\00", align 1
@__const._ZN4mlir13sparse_tensor13DisassembleOp26getODSResultIndexAndLengthEj.isVariadic = private unnamed_addr constant [4 x i8] c"\01\00\01\00", align 1
@.str.241 = private unnamed_addr constant [9 x i8] c"out_lvls\00", align 1
@.str.242 = private unnamed_addr constant [9 x i8] c"out_vals\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor13DisassembleOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.243 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.244 = private unnamed_addr constant [7 x i8] c"filled\00", align 1
@.str.245 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.246 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor8ExpandOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.248 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@.str.249 = private unnamed_addr constant [51 x i8] c"Invalid attribute `order` in property conversion: \00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c"do\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor9ForeachOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail27ForeachOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.253 = private unnamed_addr constant [76 x i8] c"'sparse_tensor.storage_specifier.get' op requires attribute 'specifierKind'\00", align 1
@.str.255 = private unnamed_addr constant [105 x i8] c"'sparse_tensor.storage_specifier.get' op attribute 'level' failed to satisfy constraint: level attribute\00", align 1
@.str.256 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.257 = private unnamed_addr constant [51 x i8] c"Invalid attribute `level` in property conversion: \00", align 1
@.str.258 = private unnamed_addr constant [14 x i8] c"specifierKind\00", align 1
@.str.259 = private unnamed_addr constant [59 x i8] c"Invalid attribute `specifierKind` in property conversion: \00", align 1
@.str.260 = private unnamed_addr constant [35 x i8] c"requires attribute 'specifierKind'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor21GetStorageSpecifierOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail39GetStorageSpecifierOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor19HasRuntimeLibraryOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.262 = private unnamed_addr constant [11 x i8] c"hasInserts\00", align 1
@.str.263 = private unnamed_addr constant [56 x i8] c"Invalid attribute `hasInserts` in property conversion: \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6LoadOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail24LoadOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor5LvlOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor5NewOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor17NumberOfEntriesOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor5OutOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor7PrintOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.265 = private unnamed_addr constant [10 x i8] c"outBuffer\00", align 1
@.str.266 = private unnamed_addr constant [8 x i8] c"newSize\00", align 1
@__const._ZN4mlir13sparse_tensor10PushBackOp27getODSOperandIndexAndLengthEj.isVariadic = private unnamed_addr constant [4 x i8] c"\00\00\00\01", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"inbounds\00", align 1
@.str.268 = private unnamed_addr constant [54 x i8] c"Invalid attribute `inbounds` in property conversion: \00", align 1
@.str.269 = private unnamed_addr constant [66 x i8] c"failed to verify that value type matches element type of inBuffer\00", align 1
@.str.270 = private unnamed_addr constant [66 x i8] c"failed to verify that all of {inBuffer, outBuffer} have same type\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor10PushBackOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail28PushBackOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor8ReduceOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor16ReinterpretMapOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.271 = private unnamed_addr constant [62 x i8] c"'sparse_tensor.reorder_coo' op requires attribute 'algorithm'\00", align 1
@.str.273 = private unnamed_addr constant [10 x i8] c"algorithm\00", align 1
@.str.274 = private unnamed_addr constant [55 x i8] c"Invalid attribute `algorithm` in property conversion: \00", align 1
@.str.275 = private unnamed_addr constant [31 x i8] c"requires attribute 'algorithm'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor12ReorderCOOOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail30ReorderCOOOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor8SelectOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.276 = private unnamed_addr constant [76 x i8] c"'sparse_tensor.storage_specifier.set' op requires attribute 'specifierKind'\00", align 1
@.str.278 = private unnamed_addr constant [105 x i8] c"'sparse_tensor.storage_specifier.set' op attribute 'level' failed to satisfy constraint: level attribute\00", align 1
@.str.279 = private unnamed_addr constant [64 x i8] c"failed to verify that all of {result, specifier} have same type\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor21SetStorageSpecifierOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail39SetStorageSpecifierOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.281 = private unnamed_addr constant [55 x i8] c"'sparse_tensor.sort' op requires attribute 'algorithm'\00", align 1
@.str.282 = private unnamed_addr constant [54 x i8] c"'sparse_tensor.sort' op requires attribute 'perm_map'\00", align 1
@.str.284 = private unnamed_addr constant [85 x i8] c"'sparse_tensor.sort' op attribute 'ny' failed to satisfy constraint: index attribute\00", align 1
@__const._ZN4mlir13sparse_tensor6SortOp27getODSOperandIndexAndLengthEj.isVariadic = private unnamed_addr constant [3 x i8] c"\00\00\01", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.287 = private unnamed_addr constant [48 x i8] c"Invalid attribute `ny` in property conversion: \00", align 1
@.str.288 = private unnamed_addr constant [9 x i8] c"perm_map\00", align 1
@.str.289 = private unnamed_addr constant [54 x i8] c"Invalid attribute `perm_map` in property conversion: \00", align 1
@.str.290 = private unnamed_addr constant [30 x i8] c"requires attribute 'perm_map'\00", align 1
@.str.291 = private unnamed_addr constant [8 x i8] c"jointly\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6SortOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail24SortOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.292 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor22StorageSpecifierInitOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor21ToCoordinatesBufferOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.293 = private unnamed_addr constant [58 x i8] c"'sparse_tensor.coordinates' op requires attribute 'level'\00", align 1
@.str.294 = private unnamed_addr constant [95 x i8] c"'sparse_tensor.coordinates' op attribute 'level' failed to satisfy constraint: level attribute\00", align 1
@.str.295 = private unnamed_addr constant [27 x i8] c"requires attribute 'level'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor15ToCoordinatesOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail33ToCoordinatesOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.296 = private unnamed_addr constant [56 x i8] c"'sparse_tensor.positions' op requires attribute 'level'\00", align 1
@.str.297 = private unnamed_addr constant [93 x i8] c"'sparse_tensor.positions' op attribute 'level' failed to satisfy constraint: level attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor13ToPositionsOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail31ToPositionsOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.298 = private unnamed_addr constant [57 x i8] c"'sparse_tensor.slice.offset' op requires attribute 'dim'\00", align 1
@.str.299 = private unnamed_addr constant [94 x i8] c"'sparse_tensor.slice.offset' op attribute 'dim' failed to satisfy constraint: index attribute\00", align 1
@.str.300 = private unnamed_addr constant [4 x i8] c"dim\00", align 1
@.str.301 = private unnamed_addr constant [49 x i8] c"Invalid attribute `dim` in property conversion: \00", align 1
@.str.302 = private unnamed_addr constant [25 x i8] c"requires attribute 'dim'\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor15ToSliceOffsetOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail33ToSliceOffsetOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@.str.303 = private unnamed_addr constant [57 x i8] c"'sparse_tensor.slice.stride' op requires attribute 'dim'\00", align 1
@.str.304 = private unnamed_addr constant [94 x i8] c"'sparse_tensor.slice.stride' op attribute 'dim' failed to satisfy constraint: index attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor15ToSliceStrideOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor6detail33ToSliceStrideOpGenericAdaptorBase10PropertiesEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor10ToValuesOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor7UnaryOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor7YieldOpEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor19SparseTensorDialectEvE2idE = global %"class.mlir::SelfOwningTypeID" undef, align 8
@_ZTVN4mlir13sparse_tensor19SparseTensorDialectE = unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr null, ptr @_ZN4mlir13sparse_tensor19SparseTensorDialectD1Ev, ptr @_ZN4mlir13sparse_tensor19SparseTensorDialectD0Ev, ptr @_ZNK4mlir7Dialect27getCanonicalizationPatternsERNS_17RewritePatternSetE, ptr @_ZN4mlir13sparse_tensor19SparseTensorDialect19materializeConstantERNS_9OpBuilderENS_9AttributeENS_4TypeENS_8LocationE, ptr @_ZNK4mlir13sparse_tensor19SparseTensorDialect14parseAttributeERNS_16DialectAsmParserENS_4TypeE, ptr @_ZNK4mlir13sparse_tensor19SparseTensorDialect14printAttributeENS_9AttributeERNS_17DialectAsmPrinterE, ptr @_ZNK4mlir13sparse_tensor19SparseTensorDialect9parseTypeERNS_16DialectAsmParserE, ptr @_ZNK4mlir13sparse_tensor19SparseTensorDialect9printTypeENS_4TypeERNS_17DialectAsmPrinterE, ptr @_ZNK4mlir7Dialect21getParseOperationHookEN4llvm9StringRefE, ptr @_ZNK4mlir7Dialect19getOperationPrinterEPNS_9OperationE, ptr @_ZN4mlir7Dialect24verifyRegionArgAttributeEPNS_9OperationEjjNS_14NamedAttributeE, ptr @_ZN4mlir7Dialect27verifyRegionResultAttributeEPNS_9OperationEjjNS_14NamedAttributeE, ptr @_ZN4mlir7Dialect24verifyOperationAttributeEPNS_9OperationENS_14NamedAttributeE, ptr @_ZN4mlir7Dialect27getRegisteredInterfaceForOpENS_6TypeIDENS_13OperationNameE] }, align 8
@.str.307 = private unnamed_addr constant [10 x i8] c"expected \00", align 1
@.str.308 = private unnamed_addr constant [44 x i8] c"::mlir::sparse_tensor::StorageSpecifierKind\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c" to be one of: \00", align 1
@.str.310 = private unnamed_addr constant [33 x i8] c"expected valid keyword or string\00", align 1
@.str.311 = private unnamed_addr constant [44 x i8] c"::mlir::sparse_tensor::SparseTensorSortKind\00", align 1
@.str.312 = private unnamed_addr constant [45 x i8] c"::mlir::sparse_tensor::CrdTransDirectionKind\00", align 1
@.str.313 = private unnamed_addr constant [6 x i8] c"slice\00", align 1
@.str.314 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.315 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.316 = private unnamed_addr constant [26 x i8] c"SparseTensorSortAlgorithm\00", align 1
@.str.317 = private unnamed_addr constant [18 x i8] c"CrdTransDirection\00", align 1
@.str.319 = private unnamed_addr constant [18 x i8] c"storage_specifier\00", align 1
@.str.320 = private unnamed_addr constant [11 x i8] c"iter_space\00", align 1
@.str.321 = private unnamed_addr constant [9 x i8] c"iterator\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_25MemRefLayoutAttrInterfaceEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.322 = private unnamed_addr constant [82 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::MemRefLayoutAttrInterface]\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.327 = private unnamed_addr constant [56 x i8] c"expect positive value or ? for slice offset/size/stride\00", align 1
@.str.328 = private unnamed_addr constant [24 x i8] c"integer value too large\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_9FloatAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@_ZN4mlir6detail14TypeIDResolverINS_7complex10NumberAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.329 = private unnamed_addr constant [6 x i8] c"undef\00", align 1
@.str.330 = private unnamed_addr constant [6 x i8] c"dense\00", align 1
@.str.331 = private unnamed_addr constant [6 x i8] c"batch\00", align 1
@.str.332 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.333 = private unnamed_addr constant [10 x i8] c"singleton\00", align 1
@.str.334 = private unnamed_addr constant [17 x i8] c"loose_compressed\00", align 1
@.str.335 = private unnamed_addr constant [11 x i8] c"structured\00", align 1
@.str.336 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.339 = private unnamed_addr constant [10 x i8] c"nonunique\00", align 1
@.str.340 = private unnamed_addr constant [11 x i8] c"nonordered\00", align 1
@.str.341 = private unnamed_addr constant [4 x i8] c"soa\00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_9TypedAttrEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.342 = private unnamed_addr constant [66 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::TypedAttr]\00", align 1
@_ZN4llvm11APFloatBase18semPPCDoubleDoubleE = external global %"struct.llvm::fltSemantics", align 4
@.str.343 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_16RankedTensorTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.344 = private unnamed_addr constant [41 x i8] c"the sparse-tensor must have static shape\00", align 1
@.str.345 = private unnamed_addr constant [50 x i8] c"the sparse-tensor must have an encoding attribute\00", align 1
@.str.346 = private unnamed_addr constant [50 x i8] c"input/output trailing COO level-ranks don't match\00", align 1
@.str.347 = private unnamed_addr constant [51 x i8] c"inconsistent number of fields between input/output\00", align 1
@.str.348 = private unnamed_addr constant [39 x i8] c"input/output element-types don't match\00", align 1
@.str.349 = private unnamed_addr constant [56 x i8] c"redundant level argument for querying value memory size\00", align 1
@.str.350 = private unnamed_addr constant [41 x i8] c"requested slice data on non-slice tensor\00", align 1
@.str.351 = private unnamed_addr constant [23 x i8] c"missing level argument\00", align 1
@.str.352 = private unnamed_addr constant [52 x i8] c"requested position memory size on a singleton level\00", align 1
@.str.357 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.362 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.363 = private unnamed_addr constant [18 x i8] c"{0} got {1} < {2}\00", align 1
@.str.364 = private unnamed_addr constant [49 x i8] c"expect larger level upper bound than lower bound\00", align 1
@.str.365 = private unnamed_addr constant [23 x i8] c"expected integer value\00", align 1
@.str.366 = private unnamed_addr constant [38 x i8] c"sparse_tensor.extract_iteration_space\00", align 1
@.str.367 = private unnamed_addr constant [57 x i8] c"mismatch in number of sparse iterators and sparse spaces\00", align 1
@.str.368 = private unnamed_addr constant [10 x i8] c"iter_args\00", align 1
@.str.369 = private unnamed_addr constant [73 x i8] c"mismatch in number of iteration space operands and iteration space types\00", align 1
@.str.370 = private unnamed_addr constant [68 x i8] c"expected sparse_tensor.iter_space type for iteration space operands\00", align 1
@.str.371 = private unnamed_addr constant [60 x i8] c"mismatch in number of iteration arguments and return values\00", align 1
@.str.372 = private unnamed_addr constant [13 x i8] c"expected '('\00", align 1
@.str.373 = private unnamed_addr constant [48 x i8] c"number of operands and types do not match: got \00", align 1
@.str.374 = private unnamed_addr constant [15 x i8] c" operands and \00", align 1
@.str.375 = private unnamed_addr constant [7 x i8] c" types\00", align 1
@.str.376 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.377 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.378 = private unnamed_addr constant [33 x i8] c"parsed more value than expected.\00", align 1
@.str.379 = private unnamed_addr constant [49 x i8] c"expecting SSA value or \22_\22 for level coordinates\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.380 = private unnamed_addr constant [12 x i8] c"attribute '\00", align 1
@.str.381 = private unnamed_addr constant [48 x i8] c"' failed to satisfy constraint: level attribute\00", align 1
@_ZN4mlir6detail14TypeIDResolverIvvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.382 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.383 = private unnamed_addr constant [62 x i8] c" must be sparse tensor of any non-token type values, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9TokenTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.384 = private unnamed_addr constant [35 x i8] c" must be sparse iterator, but got \00", align 1
@.str.385 = private unnamed_addr constant [42 x i8] c" must be sparse iteration space, but got \00", align 1
@.str.386 = private unnamed_addr constant [28 x i8] c"sparse_tensor.extract_value\00", align 1
@.str.387 = private unnamed_addr constant [38 x i8] c" must be any non-token type, but got \00", align 1
@_ZZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr local_unnamed_addr global %"class.mlir::TypeID" zeroinitializer, comdat, align 8
@_ZGVZN4mlir6detail14TypeIDResolverINS_10ShapedTypeEvE13resolveTypeIDEvE2id = linkonce_odr global i64 0, comdat, align 8
@.str.388 = private unnamed_addr constant [67 x i8] c"StringRef llvm::getTypeName() [DesiredTypeName = mlir::ShapedType]\00", align 1
@.str.389 = private unnamed_addr constant [51 x i8] c"' failed to satisfy constraint: LevelSet attribute\00", align 1
@.str.390 = private unnamed_addr constant [22 x i8] c"sparse_tensor.iterate\00", align 1
@.str.391 = private unnamed_addr constant [50 x i8] c" must be variadic of any non-token type, but got \00", align 1
@.str.392 = private unnamed_addr constant [9 x i8] c"region #\00", align 1
@.str.393 = private unnamed_addr constant [4 x i8] c" ('\00", align 1
@.str.394 = private unnamed_addr constant [4 x i8] c"') \00", align 1
@.str.395 = private unnamed_addr constant [50 x i8] c"failed to verify constraint: region with 1 blocks\00", align 1
@.str.396 = private unnamed_addr constant [23 x i8] c"sparse_tensor.assemble\00", align 1
@.str.397 = private unnamed_addr constant [81 x i8] c" must be variadic of ranked tensor of signless integer or index values, but got \00", align 1
@.str.398 = private unnamed_addr constant [62 x i8] c" must be ranked tensor of any non-token type values, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_8UnitAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.399 = private unnamed_addr constant [47 x i8] c"' failed to satisfy constraint: unit attribute\00", align 1
@.str.400 = private unnamed_addr constant [21 x i8] c"sparse_tensor.binary\00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_9ArrayAttrEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.401 = private unnamed_addr constant [58 x i8] c"' failed to satisfy constraint: I64BitSet array attribute\00", align 1
@.str.402 = private unnamed_addr constant [28 x i8] c"trying to read an array of \00", align 1
@.str.403 = private unnamed_addr constant [11 x i8] c" but only \00", align 1
@.str.404 = private unnamed_addr constant [20 x i8] c" storage available.\00", align 1
@.str.405 = private unnamed_addr constant [50 x i8] c"reading sparse array with indexing above 8 bits: \00", align 1
@.str.406 = private unnamed_addr constant [36 x i8] c"reading a sparse array found index \00", align 1
@.str.407 = private unnamed_addr constant [24 x i8] c"sparse_tensor.coiterate\00", align 1
@.str.408 = private unnamed_addr constant [54 x i8] c" must be variadic of sparse iteration space, but got \00", align 1
@.str.409 = private unnamed_addr constant [23 x i8] c"sparse_tensor.compress\00", align 1
@.str.410 = private unnamed_addr constant [73 x i8] c" must be strided memref of any non-token type values of rank 1, but got \00", align 1
@_ZN4mlir6detail14TypeIDResolverINS_10MemRefTypeEvE2idE = external global %"class.mlir::SelfOwningTypeID", align 8
@.str.411 = private unnamed_addr constant [70 x i8] c" must be 1D strided memref of 1-bit signless integer values, but got \00", align 1
@.str.412 = private unnamed_addr constant [53 x i8] c" must be 1D strided memref of index values, but got \00", align 1
@.str.413 = private unnamed_addr constant [25 x i8] c" must be index, but got \00", align 1
end_hunk_0
begin_hunk_1_@_ZN4mlir7Dialect25declarePromisedInterfacesINS_13bufferization23BufferizableOpInterfaceEJNS_13sparse_tensor13ConcatenateOpENS4_9ConvertOpENS4_6LoadOpENS4_5NewOpENS4_17NumberOfEntriesOpENS4_10AssembleOpENS4_13DisassembleOpENS4_21ToCoordinatesBufferOpENS4_15ToCoordinatesOpENS4_13ToPositionsOpENS4_10ToValuesOpEEEEvv:bb.a

bb.m:                                             ; preds = %bb.l
  %i.an = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.568, i64 49), i64 44) #30
  store ptr %i.an, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor10AssembleOpEEEvv.exit

_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor10AssembleOpEEEvv.exit: ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor17NumberOfEntriesOpEEEvv.exit, %bb.l, %bb.m
  %.sroa.01.0.copyload.i.i.i.i9 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !76
  store i64 ptrtoint (ptr @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor10AssembleOpEvE2idE to i64), ptr %6, align 8, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i9 to i64
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !76
  %i.aq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir6TypeIDES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %6), !noalias !1421 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.ar = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.n, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13DisassembleOpEEEvv.exit, !prof !333

bb.n:                                             ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor10AssembleOpEEEvv.exit
  %i.at = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i12 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.i.i12, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13DisassembleOpEEEvv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.568, i64 49), i64 44) #30
  store ptr %i.au, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13DisassembleOpEEEvv.exit

_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13DisassembleOpEEEvv.exit: ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor10AssembleOpEEEvv.exit, %bb.n, %bb.o
  %.sroa.01.0.copyload.i.i.i.i11 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !76
  store i64 ptrtoint (ptr @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor13DisassembleOpEvE2idE to i64), ptr %5, align 8, !tbaa !76
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i11 to i64
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !76
  %i.ax = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir6TypeIDES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %5), !noalias !1422 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ay = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.p, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor21ToCoordinatesBufferOpEEEvv.exit, !prof !333

bb.p:                                             ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13DisassembleOpEEEvv.exit
  %i.ba = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i14 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i14, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor21ToCoordinatesBufferOpEEEvv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.568, i64 49), i64 44) #30
  store ptr %i.bb, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor21ToCoordinatesBufferOpEEEvv.exit

_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor21ToCoordinatesBufferOpEEEvv.exit: ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13DisassembleOpEEEvv.exit, %bb.p, %bb.q
  %.sroa.01.0.copyload.i.i.i.i13 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !76
  store i64 ptrtoint (ptr @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor21ToCoordinatesBufferOpEvE2idE to i64), ptr %4, align 8, !tbaa !76
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bd = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i13 to i64
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !76
  %i.be = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir6TypeIDES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %4), !noalias !1423 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.bf = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor15ToCoordinatesOpEEEvv.exit, !prof !333

bb.r:                                             ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor21ToCoordinatesBufferOpEEEvv.exit
  %i.bh = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i16 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i.i.i16, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor15ToCoordinatesOpEEEvv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.568, i64 49), i64 44) #30
  store ptr %i.bi, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor15ToCoordinatesOpEEEvv.exit

_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor15ToCoordinatesOpEEEvv.exit: ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor21ToCoordinatesBufferOpEEEvv.exit, %bb.r, %bb.s
  %.sroa.01.0.copyload.i.i.i.i15 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !76
  store i64 ptrtoint (ptr @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor15ToCoordinatesOpEvE2idE to i64), ptr %3, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i15 to i64
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !76
  %i.bl = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir6TypeIDES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1424 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.bm = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %bb.t, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13ToPositionsOpEEEvv.exit, !prof !333

bb.t:                                             ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor15ToCoordinatesOpEEEvv.exit
  %i.bo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i18 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i.i18, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13ToPositionsOpEEEvv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.568, i64 49), i64 44) #30
  store ptr %i.bp, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13ToPositionsOpEEEvv.exit

_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13ToPositionsOpEEEvv.exit: ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor15ToCoordinatesOpEEEvv.exit, %bb.t, %bb.u
  %.sroa.01.0.copyload.i.i.i.i17 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !76
  store i64 ptrtoint (ptr @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor13ToPositionsOpEvE2idE to i64), ptr %2, align 8, !tbaa !76
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i17 to i64
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !76
  %i.bs = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir6TypeIDES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %2), !noalias !1425 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.bt = load atomic i8, ptr @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id acquire, align 8
  %i.bu = icmp eq i8 %i.bt, 0
  br i1 %i.bu, label %bb.v, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor10ToValuesOpEEEvv.exit, !prof !333

bb.v:                                             ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13ToPositionsOpEEEvv.exit
  %i.bv = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  %.not.i.i.i.i20 = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i.i20, label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor10ToValuesOpEEEvv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = call ptr @_ZN4mlir6detail22FallbackTypeIDResolver22registerImplicitTypeIDEN4llvm9StringRefE(ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.568, i64 49), i64 44) #30
  store ptr %i.bw, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id) #30
  br label %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor10ToValuesOpEEEvv.exit

_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor10ToValuesOpEEEvv.exit: ; preds = %_ZN4mlir7Dialect24declarePromisedInterfaceINS_13bufferization23BufferizableOpInterfaceENS_13sparse_tensor13ToPositionsOpEEEvv.exit, %bb.v, %bb.w
  %.sroa.01.0.copyload.i.i.i.i19 = load ptr, ptr @_ZZN4mlir6detail14TypeIDResolverINS_13bufferization23BufferizableOpInterfaceEvE13resolveTypeIDEvE2id, align 8, !tbaa !76
  store i64 ptrtoint (ptr @_ZN4mlir6detail14TypeIDResolverINS_13sparse_tensor10ToValuesOpEvE2idE to i64), ptr %1, align 8, !tbaa !76
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = ptrtoint ptr %.sroa.01.0.copyload.i.i.i.i19 to i64
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !76
  %i.bz = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIN4mlir6TypeIDES4_ENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E24lookupOrInsertIntoBucketIS5_JEEES2_IPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1), !noalias !1426 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor6detail36ExtractIterSpaceOpGenericAdaptorBaseC2ENS0_18ExtractIterSpaceOpE(ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !344
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
  %i.y = load i32, ptr %i.x, align 8, !tbaa !345
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %i.z
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.aa, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #30
  ret void
}

declare void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor6detail36ExtractIterSpaceOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !1427

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1428
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor25ExtractIterSpaceOpAdaptorC2ENS0_18ExtractIterSpaceOpE(ptr noundef nonnull align 8 dereferenceable(72) initializes((0, 17), (24, 40)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !273

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !327
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #30
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !280
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !344
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
  br i1 %i.w, label %_ZN4mlir13sparse_tensor32ExtractIterSpaceOpGenericAdaptorINS_10ValueRangeEEC2INS0_18ExtractIterSpaceOpEvEES2_T_.exit, label %bb.c

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
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !345
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.ah
  br label %_ZN4mlir13sparse_tensor32ExtractIterSpaceOpGenericAdaptorINS_10ValueRangeEEC2INS0_18ExtractIterSpaceOpEvEES2_T_.exit

_ZN4mlir13sparse_tensor32ExtractIterSpaceOpGenericAdaptorINS_10ValueRangeEEC2INS0_18ExtractIterSpaceOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.i, ptr %i.ak, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir13sparse_tensor25ExtractIterSpaceOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %6 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %7 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %10 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !175
  store ptr @.str.164, ptr %3, align 8, !tbaa !139
  store i8 3, ptr %i.e, align 8, !tbaa !174
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #30
  %i.g = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #30
  %i.h = load ptr, ptr %2, align 8, !tbaa !108
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !120, !range !121, !noundef !122
  %i.k = trunc nuw i8 %i.j to i1
  store i8 0, ptr %i.i, align 8, !tbaa !120
  br i1 %i.k, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.l) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.u

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.q, align 1, !tbaa !175
  store ptr @.str.165, ptr %5, align 8, !tbaa !139
  store i8 3, ptr %i.p, align 8, !tbaa !174
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %4, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %5) #30
  %i.r = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #30
  %i.s = load ptr, ptr %4, align 8, !tbaa !108
  %.not.i12 = icmp eq ptr %i.s, null
  br i1 %.not.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %4) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !120, !range !121, !noundef !122
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 8, !tbaa !120
  br i1 %i.v, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit13

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.w) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit13

_ZN4mlir18InFlightDiagnosticD2Ev.exit13:          ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.u

bb.k:                                             ; preds = %bb.f
  %i.x = inttoptr i64 %i.n to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.x, ptr %6, align 8
  %i.y = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #30
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !231
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !76
  %.not = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.ac, align 1, !tbaa !175
  store ptr @.str.166, ptr %8, align 8, !tbaa !139
  store i8 3, ptr %i.ab, align 8, !tbaa !174
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %7, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %8) #30
  %i.ad = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #30
  %i.ae = load ptr, ptr %7, align 8, !tbaa !108
  %.not.i15 = icmp eq ptr %i.ae, null
  br i1 %.not.i15, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %7) #30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !120, !range !121, !noundef !122
  %i.ah = trunc nuw i8 %i.ag to i1
  store i8 0, ptr %i.af, align 8, !tbaa !120
  br i1 %i.ah, label %bb.o, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit16

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.ai) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit16

_ZN4mlir18InFlightDiagnosticD2Ev.exit16:          ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.u

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store ptr %i.c, ptr %9, align 8
  %i.aj = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #30
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !231
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i19 = load ptr, ptr %i.al, align 8, !tbaa !76
  %.not27 = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i19, @_ZN4mlir6detail14TypeIDResolverINS_9IndexTypeEvE2idE
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %.not27, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.am = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.an, align 1, !tbaa !175
  store ptr @.str.167, ptr %11, align 8, !tbaa !139
  store i8 3, ptr %i.am, align 8, !tbaa !174
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %11) #30
  %i.ao = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #30
  %i.ap = load ptr, ptr %10, align 8, !tbaa !108
  %.not.i20 = icmp eq ptr %i.ap, null
  br i1 %.not.i20, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !120, !range !121, !noundef !122
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.aq, align 8, !tbaa !120
  br i1 %i.as, label %bb.t, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit21

bb.t:                                             ; preds = %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.at) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit21

_ZN4mlir18InFlightDiagnosticD2Ev.exit21:          ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.u

bb.u:                                             ; preds = %_ZN4mlir18InFlightDiagnosticD2Ev.exit13, %_ZN4mlir18InFlightDiagnosticD2Ev.exit16, %_ZN4mlir18InFlightDiagnosticD2Ev.exit21, %bb.p, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.07.1 = phi i8 [ %i.g, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.r, %_ZN4mlir18InFlightDiagnosticD2Ev.exit13 ], [ %i.ad, %_ZN4mlir18InFlightDiagnosticD2Ev.exit16 ], [ %i.ao, %_ZN4mlir18InFlightDiagnosticD2Ev.exit21 ], [ 1, %bb.p ]
  ret i8 %.sroa.07.1
}

declare void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind writable sret(%"class.mlir::InFlightDiagnostic") align 8, ptr, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !1429

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
  %i.g = load ptr, ptr %0, align 8, !tbaa !332    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !273

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !327
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1430
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp20getParentIterMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !332    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !273

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !327
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir13sparse_tensor18ExtractIterSpaceOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir13sparse_tensor18ExtractIterSpaceOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %._crit_edge.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #30
  ret void
}

declare void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, i32 noundef, ptr, i64) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir13sparse_tensor18ExtractIterSpaceOp21setPropertiesFromAttrERNS0_6detail36ExtractIterSpaceOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !221
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %9, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %10, i64 noundef %3) #30, !inline_history !0
  %i.e = load ptr, ptr %10, align 8, !tbaa !108
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store i32 3, ptr %8, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.168, ptr %i.g, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !118

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %8)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !116
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %.pr = load ptr, ptr %10, align 8, !tbaa !108
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %10) #30
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !120, !range !121, !noundef !122
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !120
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.ah

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr nonnull @.str.169, i64 5) #30 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !221
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i12 = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i12, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %11, i64 noundef %3) #30, !inline_history !0
  %i.z = load ptr, ptr %11, align 8, !tbaa !108
  %.not.i.i14 = icmp eq ptr %i.z, null
  br i1 %.not.i.i14, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  store i32 3, ptr %7, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.170, ptr %i.ab, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx.i.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 50, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i15, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %.not.i.i.i.i.i16 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i16, label %bb.n, label %bb.m, !prof !118

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %7)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !116
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %.pr49 = load ptr, ptr %11, align 8, !tbaa !108
  %.not.i.i17 = icmp eq ptr %.pr49, null
  br i1 %.not.i.i17, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %i.u) #30
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !117
  %.not.i.i.i.i.i18 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i18, label %bb.q, label %bb.p, !prof !118

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !116
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.pr51 = load ptr, ptr %11, align 8, !tbaa !108
  %.not.i19 = icmp eq ptr %.pr51, null
  br i1 %.not.i19, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %11) #30
end_hunk_1
begin_hunk_2_@_ZN4mlir13sparse_tensor12ExtractValOp5printERNS_12OpAsmPrinterE:bb.a
  store i8 32, ptr %i.ca, align 1, !tbaa !139
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit29

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit29: ; preds = %bb.j, %bb.k
  %i.cf = load ptr, ptr %1, align 8, !tbaa !166
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(16) %1) #30, !inline_history !31 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !181
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 32 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !182 ; 2 uses
  %i.cn = icmp eq ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit29
  %i.co = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ci, ptr noundef nonnull @.str.182, i64 noundef 1) #30 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

bb.m:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit29
  store i8 58, ptr %i.cm, align 1
  %i.cp = load ptr, ptr %i.cl, align 8, !tbaa !182
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.cq, ptr %i.cl, align 8, !tbaa !182
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit: ; preds = %bb.l, %bb.m
  %i.cr = load ptr, ptr %1, align 8, !tbaa !166
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = call noundef nonnull align 8 dereferenceable(48) ptr %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %1) #30, !inline_history !36 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !182 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !181
  %.not.i.i31 = icmp ult ptr %i.cw, %i.cy
  br i1 %.not.i.i31, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.cz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.cu, i8 noundef zeroext 32) #30 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32

bb.o:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.da, ptr %i.cv, align 8, !tbaa !182
  store i8 32, ptr %i.cw, align 1, !tbaa !139
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32: ; preds = %bb.n, %bb.o
  %i.db = load ptr, ptr %0, align 8, !tbaa !332
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !326
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.sroa.0.0.copyload.i.i.i.i34 = load ptr, ptr %i.de, align 8, !tbaa !329
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i34, i64 8
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.df, align 8
  %i.dg = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load ptr, ptr %1, align 8, !tbaa !166
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.dh) #30
  %i.dl = load ptr, ptr %1, align 8, !tbaa !166
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = call noundef nonnull align 8 dereferenceable(48) ptr %i.dn(ptr noundef nonnull align 8 dereferenceable(16) %1) #30, !inline_history !31 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !181
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 32 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !182 ; 2 uses
  %i.dt = icmp eq ptr %i.dq, %i.ds
  br i1 %i.dt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32
  %i.du = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.do, ptr noundef nonnull @.str.27, i64 noundef 1) #30 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36

bb.q:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit32
  store i8 44, ptr %i.ds, align 1
  %i.dv = load ptr, ptr %i.dr, align 8, !tbaa !182
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1
  store ptr %i.dw, ptr %i.dr, align 8, !tbaa !182
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36: ; preds = %bb.p, %bb.q
  %i.dx = load ptr, ptr %1, align 8, !tbaa !166
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call noundef nonnull align 8 dereferenceable(48) ptr %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %1) #30, !inline_history !36 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !182 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !181
  %.not.i.i37 = icmp ult ptr %i.ec, %i.ee
  br i1 %.not.i.i37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36
  %i.ef = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ea, i8 noundef zeroext 32) #30 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38

bb.s:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit36
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  store ptr %i.eg, ptr %i.eb, align 8, !tbaa !182
  store i8 32, ptr %i.ec, align 1, !tbaa !139
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38: ; preds = %bb.r, %bb.s
  %i.eh = load ptr, ptr %0, align 8, !tbaa !332
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 72
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !326
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %.sroa.0.0.copyload.i.i.i.i40 = load ptr, ptr %i.ek, align 8, !tbaa !329
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i40, i64 8
  %.0.copyload.i.i.i.i.i.i41 = load i64, ptr %i.el, align 8
  %i.em = and i64 %.0.copyload.i.i.i.i.i.i41, -8
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = load ptr, ptr %1, align 8, !tbaa !166
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 56
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.en) #30, !inline_history !34
  %i.er = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.bh
  br i1 %i.es, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38
  call void @free(ptr noundef %i.er) #30
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit38, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4mlir13sparse_tensor12ExtractValOp10getEffectsERN4llvm15SmallVectorImplINS_11SideEffects14EffectInstanceINS_13MemoryEffects6EffectEEEEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor6detail27IterateOpGenericAdaptorBaseC2ENS0_9IterateOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !344
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
  %i.z = load i32, ptr %i.y, align 8, !tbaa !345
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor6detail27IterateOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !1445

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1446
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor6detail27IterateOpGenericAdaptorBase14getCrdUsedLvlsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !tbaa !154
  store ptr %.sroa.0.0.copyload.i.i, ptr %1, align 8
  %i.b = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK4mlir11IntegerAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #30 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !315
  %i.e = icmp ult i32 %i.d, 65
  %i.f = load ptr, ptr %i.b, align 8
  %spec.select.i = select i1 %i.e, ptr %i.b, ptr %i.f
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !139
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret i64 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor16IterateOpAdaptorC2ENS0_9IterateOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !273

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !327
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #30
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !280
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !344
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
  br i1 %i.x, label %_ZN4mlir13sparse_tensor23IterateOpGenericAdaptorINS_10ValueRangeEEC2INS0_9IterateOpEvEES2_T_.exit, label %bb.c

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
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !345
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ai
  br label %_ZN4mlir13sparse_tensor23IterateOpGenericAdaptorINS_10ValueRangeEEC2INS0_9IterateOpEvEES2_T_.exit

_ZN4mlir13sparse_tensor23IterateOpGenericAdaptorINS_10ValueRangeEEC2INS0_9IterateOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.al, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i8 @_ZN4mlir13sparse_tensor16IterateOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %3 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %4 = alloca %"class.mlir::Type", align 8        ; 4 uses
  %5 = alloca %"class.mlir::IntegerAttr", align 8 ; 4 uses
  %6 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 8 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 33
  store i8 1, ptr %i.e, align 1, !tbaa !175
  store ptr @.str.186, ptr %3, align 8, !tbaa !139
  store i8 3, ptr %i.d, align 8, !tbaa !174
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %2, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %3) #30
  %i.f = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #30
  %i.g = load ptr, ptr %2, align 8, !tbaa !108
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %2) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !120, !range !121, !noundef !122
  %i.j = trunc nuw i8 %i.i to i1
  store i8 0, ptr %i.h, align 8, !tbaa !120
  br i1 %i.j, label %bb.e, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.k) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.l = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store ptr %i.l, ptr %5, align 8
  %i.m = call ptr @_ZNK4mlir11IntegerAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #30
  store ptr %i.m, ptr %4, align 8
  %i.n = call noundef zeroext i1 @_ZNK4mlir4Type9isIntegerEj(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 64) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br i1 %i.n, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.p, align 1, !tbaa !175
  store ptr @.str.187, ptr %7, align 8, !tbaa !139
  store i8 3, ptr %i.o, align 8, !tbaa !174
  call void @_ZN4mlir9emitErrorENS_8LocationERKN4llvm5TwineE(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %6, ptr %1, ptr noundef nonnull align 8 dereferenceable(34) %7) #30
  %i.q = call i8 @_ZNK4mlir18InFlightDiagnosticcvN4llvm13LogicalResultEEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #30
  %i.r = load ptr, ptr %6, align 8, !tbaa !108
  %.not.i6 = icmp eq ptr %i.r, null
  br i1 %.not.i6, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %6) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !tbaa !120, !range !121, !noundef !122
  %i.u = trunc nuw i8 %i.t to i1
  store i8 0, ptr %i.s, align 8, !tbaa !120
  br i1 %i.u, label %bb.j, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.v) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit7

_ZN4mlir18InFlightDiagnosticD2Ev.exit7:           ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit7, %_ZN4mlir18InFlightDiagnosticD2Ev.exit
  %.sroa.03.0 = phi i8 [ %i.f, %_ZN4mlir18InFlightDiagnosticD2Ev.exit ], [ %i.q, %_ZN4mlir18InFlightDiagnosticD2Ev.exit7 ], [ 1, %bb.f ]
  ret i8 %.sroa.03.0
}

declare noundef zeroext i1 @_ZNK4mlir4Type9isIntegerEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor9IterateOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !1447

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
  %i.g = load ptr, ptr %0, align 8, !tbaa !332    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !273

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !327
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1448
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor9IterateOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
._crit_edge:
  %i.a = load ptr, ptr %0, align 8, !tbaa !332
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !295  ; 2 uses
  %i.d = mul i32 %i.c, %1
  %.sroa.2.0.insert.ext = zext i32 %i.c to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir13sparse_tensor9IterateOp21setPropertiesFromAttrERNS0_6detail27IterateOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !221
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #30, !inline_history !0
  %i.e = load ptr, ptr %8, align 8, !tbaa !108
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i32 3, ptr %6, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.168, ptr %i.g, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !118

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !116
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.pr = load ptr, ptr %8, align 8, !tbaa !108
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #30
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !120, !range !121, !noundef !122
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !120
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.188, i64 11) #30 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !221
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i5 = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i5, @_ZN4mlir6detail14TypeIDResolverINS_11IntegerAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #30, !inline_history !0
  %i.z = load ptr, ptr %9, align 8, !tbaa !108
  %.not.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i32 3, ptr %5, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.189, ptr %i.ab, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 56, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %.not.i.i.i.i.i9 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i9, label %bb.n, label %bb.m, !prof !118

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !116
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.pr21 = load ptr, ptr %9, align 8, !tbaa !108
  %.not.i.i10 = icmp eq ptr %.pr21, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.u) #30
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !117
  %.not.i.i.i.i.i11 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i11, label %bb.q, label %bb.p, !prof !118

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !116
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  %.pr23 = load ptr, ptr %9, align 8, !tbaa !108
  %.not.i12 = icmp eq ptr %.pr23, null
  br i1 %.not.i12, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.r

bb.r:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %9) #30
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread: ; preds = %bb.k, %_ZNO4mlir18InFlightDiagnosticlsIRA57_KcEEOS0_OT_.exit, %bb.r, %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 200 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !120, !range !121, !noundef !122
  %i.au = trunc nuw i8 %i.at to i1
  store i8 0, ptr %i.as, align 8, !tbaa !120
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.av) #30
  br label %bb.t
end_hunk_2
begin_hunk_3_@_ZN4mlir13sparse_tensor8ExpandOp5printERNS_12OpAsmPrinterE:bb.a
_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40: ; preds = %bb.n, %bb.o
  %i.de = load ptr, ptr %0, align 8, !tbaa !332
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -16
  %i.dg = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 noundef 0) #30
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.dh, align 8
  %i.di = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load ptr, ptr %1, align 8, !tbaa !166
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.dj) #30
  %i.dn = load ptr, ptr %1, align 8, !tbaa !166
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef nonnull align 8 dereferenceable(48) ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(16) %1) #30, !inline_history !31 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !181
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 32 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !182 ; 2 uses
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40
  %i.dw = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dq, ptr noundef nonnull @.str.27, i64 noundef 1) #30 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit43

bb.q:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit40
  store i8 44, ptr %i.du, align 1
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !182
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 1
  store ptr %i.dy, ptr %i.dt, align 8, !tbaa !182
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit43

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit43: ; preds = %bb.p, %bb.q
  %i.dz = load ptr, ptr %1, align 8, !tbaa !166
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call noundef nonnull align 8 dereferenceable(48) ptr %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %1) #30, !inline_history !36 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !182 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !181
  %.not.i.i44 = icmp ult ptr %i.ee, %i.eg
  br i1 %.not.i.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit43
  %i.eh = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.ec, i8 noundef zeroext 32) #30 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit45

bb.s:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit43
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  store ptr %i.ei, ptr %i.ed, align 8, !tbaa !182
  store i8 32, ptr %i.ee, align 1, !tbaa !139
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit45

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit45: ; preds = %bb.r, %bb.s
  %i.ej = load ptr, ptr %0, align 8, !tbaa !332
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -16
  %i.el = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, i64 noundef 1) #30
  %i.em = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 noundef 0) #30
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %.0.copyload.i.i.i.i.i.i46 = load i64, ptr %i.en, align 8
  %i.eo = and i64 %.0.copyload.i.i.i.i.i.i46, -8
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load ptr, ptr %1, align 8, !tbaa !166
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.ep) #30
  %i.et = load ptr, ptr %1, align 8, !tbaa !166
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call noundef nonnull align 8 dereferenceable(48) ptr %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #30, !inline_history !31 ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !181
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 32 ; 3 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !182 ; 2 uses
  %i.fb = icmp eq ptr %i.ey, %i.fa
  br i1 %i.fb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit45
  %i.fc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr noundef nonnull @.str.27, i64 noundef 1) #30 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit49

bb.u:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit45
  store i8 44, ptr %i.fa, align 1
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !182
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store ptr %i.fe, ptr %i.ez, align 8, !tbaa !182
  br label %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit49

_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit49: ; preds = %bb.t, %bb.u
  %i.ff = load ptr, ptr %1, align 8, !tbaa !166
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = call noundef nonnull align 8 dereferenceable(48) ptr %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %1) #30, !inline_history !36 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 32 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !182 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !181
  %.not.i.i50 = icmp ult ptr %i.fk, %i.fm
  br i1 %.not.i.i50, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit49
  %i.fn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, i8 noundef zeroext 32) #30 ; 0 uses
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit51

bb.w:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEA2_cTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS5_RNS_4TypeEEE5valuentsr3std14is_convertibleIS5_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS5_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS5_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS4_bfdEE5valueES4_E4typeELPS2_0EvEERT_SL_RKS4_.exit49
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  store ptr %i.fo, ptr %i.fj, align 8, !tbaa !182
  store i8 32, ptr %i.fk, align 1, !tbaa !139
  br label %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit51

_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit51: ; preds = %bb.v, %bb.w
  %i.fp = load ptr, ptr %0, align 8, !tbaa !332
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 -16
  %i.fr = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, i64 noundef 2) #30
  %i.fs = call noundef ptr @_ZN4mlir6detail12OpResultImpl21getNextResultAtOffsetEl(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, i64 noundef 0) #30
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %.0.copyload.i.i.i.i.i.i52 = load i64, ptr %i.ft, align 8
  %i.fu = and i64 %.0.copyload.i.i.i.i.i.i52, -8
  %i.fv = inttoptr i64 %i.fu to ptr
  %i.fw = load ptr, ptr %1, align 8, !tbaa !166
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %i.fv) #30
  %i.fz = load ptr, ptr %3, align 8, !tbaa !119   ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.r
  br i1 %i.ga, label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit51
  call void @free(ptr noundef %i.fz) #30
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_9StringRefELj2EED2Ev.exit: ; preds = %_ZN4mlirlsINS_12OpAsmPrinterEcTnPNSt9enable_ifIXaaaaaaaaaantsr3std14is_convertibleIRT0_RNS_5ValueEEE5valuentsr3std14is_convertibleIS4_RNS_4TypeEEE5valuentsr3std14is_convertibleIS4_RNS_9AttributeEEE5valuentsr3std14is_convertibleIS4_NS_10ValueRangeEEE5valuentsr3std14is_convertibleIS4_RN4llvm7APFloatEEE5valuentsr4llvm9is_one_ofIS3_bfdEE5valueES3_E4typeELPc0EvEERT_SK_RKS3_.exit51, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor6detail27ForeachOpGenericAdaptorBaseC2ENS0_9ForeachOpE(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1 = load ptr, ptr %i.c, align 8, !tbaa !280
  %i.d = ptrtoint ptr %.sroa.0.0.copyload.i1 to i64
  store i64 %i.d, ptr %i.b, align 8, !tbaa !280
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !344
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
  %i.z = load i32, ptr %i.y, align 8, !tbaa !345
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa
  br label %_ZN4mlir9Operation10getRegionsEv.exit

_ZN4mlir9Operation10getRegionsEv.exit:            ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.q, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr %.sroa.0.0.i, i64 %.sroa.4.0.i) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor6detail27ForeachOpGenericAdaptorBase27getODSOperandIndexAndLengthEjj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(48) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !1541

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1542
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i8 } @_ZN4mlir13sparse_tensor6detail27ForeachOpGenericAdaptorBase8getOrderEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.mlir::AffineMapAttr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125  ; 2 uses
  store ptr %i.b, ptr %1, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.01.0 = phi ptr [ %i.c, %bb.b ], [ undef, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.2.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare ptr @_ZNK4mlir13AffineMapAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor16ForeachOpAdaptorC2ENS0_9ForeachOpE(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 17), (24, 32)) %0, ptr %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.mlir::ValueRange", align 16 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 8388608
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4mlir9Operation11getOperandsEv.exit, label %bb.b, !prof !273

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !326
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.g = load i32, ptr %i.f, align 4, !tbaa !327
  %i.h = zext i32 %i.g to i64
  br label %_ZN4mlir9Operation11getOperandsEv.exit

_ZN4mlir9Operation11getOperandsEv.exit:           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  %.sroa.4.0.i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  call void @_ZN4mlir10ValueRangeC1ENS_12OperandRangeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %.sroa.0.0.i.i, i64 %.sroa.4.0.i.i) #30
  %i.i = load <2 x i64>, ptr %2, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.j, align 8
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.0.copyload.i1.i.i = load ptr, ptr %i.l, align 8, !tbaa !280
  %i.m = ptrtoint ptr %.sroa.0.0.copyload.i1.i.i to i64
  store i64 %i.m, ptr %i.k, align 8, !tbaa !280
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.n, align 8, !tbaa !344
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
  br i1 %i.x, label %_ZN4mlir13sparse_tensor23ForeachOpGenericAdaptorINS_10ValueRangeEEC2INS0_9ForeachOpEvEES2_T_.exit, label %bb.c

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
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !345
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.af, i64 %i.ai
  br label %_ZN4mlir13sparse_tensor23ForeachOpGenericAdaptorINS_10ValueRangeEEC2INS0_9ForeachOpEvEES2_T_.exit

_ZN4mlir13sparse_tensor23ForeachOpGenericAdaptorINS_10ValueRangeEEC2INS0_9ForeachOpEvEES2_T_.exit: ; preds = %_ZN4mlir9Operation11getOperandsEv.exit, %bb.c
  %.sroa.0.0.i.i.i = phi ptr [ %i.aj, %bb.c ], [ null, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %.sroa.4.0.i.i.i = phi i64 [ %i.y, %bb.c ], [ 0, %_ZN4mlir9Operation11getOperandsEv.exit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @_ZN4mlir11RegionRangeC1EN4llvm15MutableArrayRefINS_6RegionEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i) #30
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x i64> %i.i, ptr %i.al, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i8 @_ZN4mlir13sparse_tensor16ForeachOpAdaptor6verifyENS_8LocationE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #5 align 2 {
bb.a:
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor9ForeachOp27getODSOperandIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
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
  br i1 %i.e, label %middle.block, label %vector.body, !llvm.loop !1543

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
  %i.g = load ptr, ptr %0, align 8, !tbaa !332    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 8388608
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4mlir9Operation14getNumOperandsEv.exit, label %bb.b, !prof !273

bb.b:                                             ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 68
  %i.l = load i32, ptr %i.k, align 4, !tbaa !327
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1544
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4mlir13sparse_tensor9ForeachOp18getInitArgsMutableEv(ptr dead_on_unwind noalias writable sret(%"class.mlir::MutableOperandRange") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
._crit_edge.i:
  %i.a = load ptr, ptr %1, align 8, !tbaa !332    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.c = load i32, ptr %i.b, align 4
  %i.d = and i32 %i.c, 8388608
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4mlir13sparse_tensor9ForeachOp27getODSOperandIndexAndLengthEj.exit, label %bb.a, !prof !273

bb.a:                                             ; preds = %._crit_edge.i
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !327
  %i.g = add i32 %i.f, -1
  br label %_ZN4mlir13sparse_tensor9ForeachOp27getODSOperandIndexAndLengthEj.exit

_ZN4mlir13sparse_tensor9ForeachOp27getODSOperandIndexAndLengthEj.exit: ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i32 [ %i.g, %bb.a ], [ -1, %._crit_edge.i ]
  tail call void @_ZN4mlir19MutableOperandRangeC1EPNS_9OperationEjjN4llvm8ArrayRefISt4pairIjNS_14NamedAttributeEEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef %i.h, ptr null, i64 0) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @_ZN4mlir13sparse_tensor9ForeachOp26getODSResultIndexAndLengthEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
._crit_edge:
  %i.a = load ptr, ptr %0, align 8, !tbaa !332
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !295  ; 2 uses
  %i.d = mul i32 %i.c, %1
  %.sroa.2.0.insert.ext = zext i32 %i.c to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.d to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i8 0, 2) i8 @_ZN4mlir13sparse_tensor9ForeachOp21setPropertiesFromAttrERNS0_6detail27ForeachOpGenericAdaptorBase10PropertiesENS_9AttributeEN4llvm12function_refIFNS_18InFlightDiagnosticEvEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr %1, ptr nofree readonly captures(none) %2, i64 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 5 uses
  %5 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %6 = alloca %"class.mlir::DiagnosticArgument", align 8 ; 7 uses
  %7 = alloca %"class.mlir::DictionaryAttr", align 8 ; 4 uses
  %8 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 11 uses
  %9 = alloca %"class.mlir::InFlightDiagnostic", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !221
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, @_ZN4mlir6detail14TypeIDResolverINS_14DictionaryAttrEvE2idE
  %spec.select.i.i = select i1 %i.c, ptr %1, ptr null ; 2 uses
  store ptr %spec.select.i.i, ptr %7, align 8
  %i.d = icmp eq ptr %spec.select.i.i, null
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %8, i64 noundef %3) #30, !inline_history !0
  %i.e = load ptr, ptr %8, align 8, !tbaa !108
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store i32 3, ptr %6, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.168, ptr %i.g, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 41, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !114
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !116  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !117
  %.not.i.i.i.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d, !prof !118

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %6)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = zext i32 %i.i to i64
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  %i.o = load i32, ptr %i.h, align 8, !tbaa !116
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr %i.h, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %.pr = load ptr, ptr %8, align 8, !tbaa !108
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  call void @_ZN4mlir18InFlightDiagnostic6reportEv(ptr noundef nonnull align 8 dereferenceable(208) %8) #30
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread

_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread: ; preds = %bb.b, %bb.f, %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 200 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !120, !range !121, !noundef !122
  %i.s = trunc nuw i8 %i.r to i1
  store i8 0, ptr %i.q, align 8, !tbaa !120
  br i1 %i.s, label %bb.g, label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

bb.g:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @_ZN4mlir10DiagnosticD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(200) %i.t) #30
  br label %_ZN4mlir18InFlightDiagnosticD2Ev.exit

_ZN4mlir18InFlightDiagnosticD2Ev.exit:            ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA42_KcEEOS0_OT_.exit.thread, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.u

bb.h:                                             ; preds = %bb.a
  %i.u = call ptr @_ZNK4mlir14DictionaryAttr3getEN4llvm9StringRefE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr nonnull @.str.248, i64 5) #30 ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !221
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %.sroa.0.0.copyload.i.i.i.i.i.i5 = load ptr, ptr %i.w, align 8, !tbaa !76
  %i.x = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i5, @_ZN4mlir6detail14TypeIDResolverINS_13AffineMapAttrEvE2idE
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = ptrtoint ptr %i.u to i64
  store i64 %i.y, ptr %0, align 8
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void %2(ptr dead_on_unwind nonnull writable sret(%"class.mlir::InFlightDiagnostic") align 8 %9, i64 noundef %3) #30, !inline_history !0
  %i.z = load ptr, ptr %9, align 8, !tbaa !108
  %.not.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i7, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  store i32 3, ptr %5, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.249, ptr %i.ab, align 8, !tbaa !113
  %.sroa.2.0..sroa_idx.i.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 50, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i8, align 8, !tbaa !114
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 6 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 36 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !117
  %.not.i.i.i.i.i9 = icmp ult i32 %i.ad, %i.af
  br i1 %.not.i.i.i.i.i9, label %bb.n, label %bb.m, !prof !118

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %5)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = zext i32 %i.ad to i64
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.aj = load i32, ptr %i.ac, align 8, !tbaa !116
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit

_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %.pr21 = load ptr, ptr %9, align 8, !tbaa !108
  %.not.i.i10 = icmp eq ptr %.pr21, null
  br i1 %.not.i.i10, label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNO4mlir18InFlightDiagnosticlsIRA51_KcEEOS0_OT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4mlir18DiagnosticArgumentC1ENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr nonnull %i.u) #30
  %i.al = load i32, ptr %i.ac, align 8, !tbaa !116 ; 2 uses
  %i.am = load i32, ptr %i.ae, align 4, !tbaa !117
  %.not.i.i.i.i.i11 = icmp ult i32 %i.al, %i.am
  br i1 %.not.i.i.i.i.i11, label %bb.q, label %bb.p, !prof !118

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm23SmallVectorTemplateBaseIN4mlir18DiagnosticArgumentELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %4)
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit

bb.q:                                             ; preds = %bb.o
  %i.an = zext i32 %i.al to i64
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !119
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.aq = load i32, ptr %i.ac, align 8, !tbaa !116
  %i.ar = add i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ac, align 8, !tbaa !116
  br label %_ZNO4mlir18InFlightDiagnosticlsIRNS_9AttributeEEEOS0_OT_.exit
end_hunk_3
